/** \file
 *  This OBJC source file was generated by $ANTLR version ${project.version} ${buildNumber}
 *
 *     -  From the grammar source file : LangDumpDecl.g
 *     -                            On : 2011-05-06 17:39:09
 *     -           for the tree parser : LangDumpDeclTreeParser
 *
 * Editing it, at least manually, is not wise.
 *
 * ObjC language generator and runtime by Alan Condit, acondit|hereisanat|ipns|dotgoeshere|com.
 *
 *
*/
// $ANTLR ${project.version} ${buildNumber} LangDumpDecl.g 2011-05-06 17:39:09


/* -----------------------------------------
 * Include the ANTLR3 generated header file.
 */
#import "LangDumpDecl.h"
/* ----------------------------------------- */


/* ============================================================================= */
/* =============================================================================
 * Start of recognizer
 */

#pragma mark Bitsets
static ANTLRBitSet *FOLLOW_DECL_in_decl45;
static const unsigned long long FOLLOW_DECL_in_decl45_data[] = { 0x0000000000000004LL};
static ANTLRBitSet *FOLLOW_type_in_decl47;
static const unsigned long long FOLLOW_type_in_decl47_data[] = { 0x0000000000000040LL};
static ANTLRBitSet *FOLLOW_declarator_in_decl49;
static const unsigned long long FOLLOW_declarator_in_decl49_data[] = { 0x0000000000000008LL};
static ANTLRBitSet *FOLLOW_INTTYPE_in_type81;
static const unsigned long long FOLLOW_INTTYPE_in_type81_data[] = { 0x0000000000000002LL};
static ANTLRBitSet *FOLLOW_ID_in_declarator95;
static const unsigned long long FOLLOW_ID_in_declarator95_data[] = { 0x0000000000000002LL};


#pragma mark Dynamic Global Scopes

#pragma mark Dynamic Rule Scopes

#pragma mark Rule Return Scopes start
@implementation LangDumpDecl_declarator_return /* returnScope */
 /* start of synthesize -- OBJC-Line 1837 */
+ (LangDumpDecl_declarator_return *)newLangDumpDecl_declarator_return
{
    return [[[LangDumpDecl_declarator_return alloc] init] retain];
}

- (id) init
{
    self = [super init];
    return self;
}



@end /* end of returnScope implementation */


//#pragma mark Rule return scopes start
//

#pragma mark Rule return scopes start

@implementation LangDumpDecl  // line 637

/* ObjC start of ruleAttributeScope */
#pragma mark Dynamic Rule Scopes
/* ObjC end of ruleAttributeScope */
#pragma mark global Attribute Scopes
/* ObjC start globalAttributeScope */
/* ObjC end globalAttributeScope */
/* ObjC start actions.(actionScope).synthesize */
/* ObjC end actions.(actionScope).synthesize */
/* ObjC start synthesize() */
/* ObjC end synthesize() */

+ (void) initialize
{
    #pragma mark Bitsets
    FOLLOW_DECL_in_decl45 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_DECL_in_decl45_data Count:(NSUInteger)1] retain];
    FOLLOW_type_in_decl47 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_type_in_decl47_data Count:(NSUInteger)1] retain];
    FOLLOW_declarator_in_decl49 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_declarator_in_decl49_data Count:(NSUInteger)1] retain];
    FOLLOW_INTTYPE_in_type81 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_INTTYPE_in_type81_data Count:(NSUInteger)1] retain];
    FOLLOW_ID_in_declarator95 = [[ANTLRBitSet newANTLRBitSetWithBits:(const unsigned long long *)FOLLOW_ID_in_declarator95_data Count:(NSUInteger)1] retain];

    [ANTLRBaseRecognizer setTokenNames:[[AMutableArray arrayWithObjects:@"<invalid>", @"<EOR>", @"<DOWN>", @"<UP>", 
 @"DECL", @"FLOATTYPE", @"ID", @"INT", @"INTTYPE", @"WS", @"';'", nil] retain]];
    [ANTLRBaseRecognizer setGrammarFileName:@"LangDumpDecl.g"];
}

+ (LangDumpDecl *)newLangDumpDecl:(id<ANTLRTreeNodeStream>)aStream
{
    return [[LangDumpDecl alloc] initWithStream:aStream];


}

- (id) initWithStream:(id<ANTLRTreeNodeStream>)aStream
{
    self = [super initWithStream:aStream State:[[ANTLRRecognizerSharedState newANTLRRecognizerSharedStateWithRuleLen:3+1] retain]];
    if ( self != nil ) {


        /* start of actions-actionScope-init */
        /* start of init */
    }
    return self;
}

- (void) dealloc
{
    [super dealloc];
}

/* ObjC start members */
/* ObjC end members */
/* ObjC start actions.(actionScope).methods */
/* ObjC end actions.(actionScope).methods */
/* ObjC start methods() */
/* ObjC end methods() */
/* ObjC start rules */
/*
 * $ANTLR start decl
 * LangDumpDecl.g:8:1: decl : ^( DECL type declarator ) ;
 */
- (void) decl
{
    /* my ruleScopeSetUp */
    /* Terence's stuff */

    @try {
         LangDumpDecl_declarator_return * declarator1 = nil ;
         

        // LangDumpDecl.g:8:6: ( ^( DECL type declarator ) ) // ruleBlockSingleAlt
        // LangDumpDecl.g:8:8: ^( DECL type declarator ) // alt
        {
        [self match:input TokenType:DECL Follow:FOLLOW_DECL_in_decl45]; 

            [self match:input TokenType:DOWN Follow:nil]; 
            /* ruleRef */
            [self pushFollow:FOLLOW_type_in_decl47];
            [self type];

            [self popFollow];



            /* ruleRef */
            [self pushFollow:FOLLOW_declarator_in_decl49];
            declarator1 = [self declarator];

            [self popFollow];



            [self match:input TokenType:UP Follow:nil]; 


         NSLog(@"int %@", (declarator1!=nil?[[input getTokenStream] toStringFromStart:[[input getTreeAdaptor] getTokenStartIndex:[declarator1 getStart]]ToEnd:[[input getTreeAdaptor] getTokenStopIndex:[declarator1 getStart]]]:0));


        }

        // token+rule list labels

    }
    @catch (ANTLRRecognitionException *re) {
        [self reportError:re];
        [self recover:input Exception:re];
    }

    @finally {
        /* Terence's stuff */

    }
    return ;
}
/* $ANTLR end decl */

/*
 * $ANTLR start type
 * LangDumpDecl.g:13:1: type : INTTYPE ;
 */
- (void) type
{
    /* my ruleScopeSetUp */
    /* Terence's stuff */

    @try {
        // LangDumpDecl.g:13:6: ( INTTYPE ) // ruleBlockSingleAlt
        // LangDumpDecl.g:13:8: INTTYPE // alt
        {
        [self match:input TokenType:INTTYPE Follow:FOLLOW_INTTYPE_in_type81]; 

        }

        // token+rule list labels

    }
    @catch (ANTLRRecognitionException *re) {
        [self reportError:re];
        [self recover:input Exception:re];
    }

    @finally {
        /* Terence's stuff */

    }
    return ;
}
/* $ANTLR end type */

/*
 * $ANTLR start declarator
 * LangDumpDecl.g:15:1: declarator : ID ;
 */
- (LangDumpDecl_declarator_return *) declarator
{
    /* my ruleScopeSetUp */
    /* Terence's stuff */

    LangDumpDecl_declarator_return * retval = [LangDumpDecl_declarator_return newLangDumpDecl_declarator_return];
    [retval setStart:[input LT:1]];


    @try {
        // LangDumpDecl.g:16:6: ( ID ) // ruleBlockSingleAlt
        // LangDumpDecl.g:16:8: ID // alt
        {
        [self match:input TokenType:ID Follow:FOLLOW_ID_in_declarator95]; 

        }

        // token+rule list labels

    }
    @catch (ANTLRRecognitionException *re) {
        [self reportError:re];
        [self recover:input Exception:re];
    }

    @finally {
        /* Terence's stuff */

    }
    return retval;
}
/* $ANTLR end declarator */
/* ObjC end rules */

@end /* end of LangDumpDecl implementation line 692 */
