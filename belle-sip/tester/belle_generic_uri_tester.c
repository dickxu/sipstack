/*
	belle-sip - SIP (RFC3261) library.
    Copyright (C) 2013  Belledonne Communications SARL, Grenoble, France

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include "belle-sip/belle-sip.h"
#include "belle_sip_tester.h"
#include <stdio.h>
#include "CUnit/Basic.h"


static void test_basic_uri() {
	belle_generic_uri_t* source_uri = belle_generic_uri_parse("http://www.linphone.org/index.html");
	char* source_uri_raw = belle_sip_object_to_string(source_uri);
	belle_generic_uri_t* first_uri = belle_generic_uri_parse(source_uri_raw);
	belle_generic_uri_t* uri=BELLE_GENERIC_URI(belle_sip_object_clone(BELLE_SIP_OBJECT(first_uri)));
	belle_sip_free(source_uri_raw);
	belle_sip_object_unref(source_uri);
	belle_sip_object_unref(first_uri);

	CU_ASSERT_STRING_EQUAL(belle_generic_uri_get_scheme(uri),"http");
	CU_ASSERT_STRING_EQUAL(belle_generic_uri_get_host(uri),"www.linphone.org");
	CU_ASSERT_STRING_EQUAL(belle_generic_uri_get_path(uri),"/index.html");

	belle_sip_object_unref(uri);

	source_uri = belle_generic_uri_parse("http://www.linphone.org/");
	CU_ASSERT_STRING_EQUAL(belle_generic_uri_get_path(source_uri),"/");
	belle_sip_object_unref(source_uri);

	source_uri = belle_generic_uri_parse("http://www.linphone.org/a/b/c");
	CU_ASSERT_STRING_EQUAL(belle_generic_uri_get_path(source_uri),"/a/b/c");
	CU_ASSERT_STRING_EQUAL("http://www.linphone.org/a/b/c",source_uri_raw = belle_sip_object_to_string(source_uri));
	belle_sip_free(source_uri_raw);
	belle_sip_object_unref(source_uri);


}
static void test_complex_uri() {

	belle_generic_uri_t* source_uri = belle_generic_uri_parse("ftp://toto:secret@ftp.linphone.fr:1234/url?sa=t&rct=j&url=http%3A%2F%2Ftranslate.google.fr");
	char* source_uri_raw = belle_generic_uri_to_string(source_uri);
	belle_generic_uri_t* first_uri = belle_generic_uri_parse(source_uri_raw);
	belle_generic_uri_t* uri=BELLE_GENERIC_URI(belle_sip_object_clone(BELLE_SIP_OBJECT(first_uri)));
	belle_sip_free(source_uri_raw);
	belle_sip_object_unref(source_uri);
	belle_sip_object_unref(first_uri);

	CU_ASSERT_STRING_EQUAL(belle_generic_uri_get_scheme(uri),"ftp");
	CU_ASSERT_STRING_EQUAL(belle_generic_uri_get_host(uri),"ftp.linphone.fr");
	CU_ASSERT_STRING_EQUAL(belle_generic_uri_get_user(uri),"toto");
	CU_ASSERT_STRING_EQUAL(belle_generic_uri_get_user_password(uri),"secret");
	CU_ASSERT_STRING_EQUAL(belle_generic_uri_get_host(uri),"ftp.linphone.fr");
	CU_ASSERT_STRING_EQUAL(belle_generic_uri_get_path(uri),"/url");
	CU_ASSERT_EQUAL(belle_generic_uri_get_port(uri),1234);
	CU_ASSERT_STRING_EQUAL(belle_generic_uri_get_query(uri),"sa=t&rct=j&url=http://translate.google.fr");

	belle_sip_object_unref(uri);
}

static void test_abs_path() {
	belle_generic_uri_t* source_uri = belle_generic_uri_parse("/index.html");
	char* source_uri_raw = belle_sip_object_to_string(source_uri);
	belle_generic_uri_t* first_uri = belle_generic_uri_parse(source_uri_raw);
	belle_generic_uri_t* uri=BELLE_GENERIC_URI(belle_sip_object_clone(BELLE_SIP_OBJECT(first_uri)));
	belle_sip_free(source_uri_raw);
	belle_sip_object_unref(source_uri);
	belle_sip_object_unref(first_uri);

	CU_ASSERT_PTR_NULL(belle_generic_uri_get_scheme(uri));
	CU_ASSERT_PTR_NULL(belle_generic_uri_get_host(uri));
	CU_ASSERT_STRING_EQUAL(belle_generic_uri_get_path(uri),"/index.html");

}


static test_t tests[] = {
	{ "Simple uri", test_basic_uri },
	{ "Complex uri", test_complex_uri },
	{ "abs path", test_abs_path }
};

test_suite_t generic_uri_test_suite = {
	"Generic uri",
	NULL,
	NULL,
	sizeof(tests) / sizeof(tests[0]),
	tests
};
