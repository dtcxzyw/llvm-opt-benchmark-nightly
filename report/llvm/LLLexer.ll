Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LLLexer?download=true
inline.NumInlined: 1627
inline.NumDeleted: 191
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
@.str.295 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.296 = private unnamed_addr constant [5 x i8] c"pinf\00", align 1
@.str.298 = private unnamed_addr constant [6 x i8] c"nnorm\00", align 1
@.str.300 = private unnamed_addr constant [5 x i8] c"nsub\00", align 1
@.str.303 = private unnamed_addr constant [6 x i8] c"nzero\00", align 1
@.str.305 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.306 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str.308 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.309 = private unnamed_addr constant [11 x i8] c"exactmatch\00", align 1
@.str.310 = private unnamed_addr constant [8 x i8] c"largest\00", align 1
@.str.311 = private unnamed_addr constant [14 x i8] c"nodeduplicate\00", align 1
@.str.312 = private unnamed_addr constant [9 x i8] c"samesize\00", align 1
@.str.313 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.315 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@.str.333 = private unnamed_addr constant [5 x i8] c"xchg\00", align 1
@.str.335 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.337 = private unnamed_addr constant [5 x i8] c"umax\00", align 1
@.str.341 = private unnamed_addr constant [9 x i8] c"fmaximum\00", align 1
@.str.343 = private unnamed_addr constant [12 x i8] c"fmaximumnum\00", align 1
@.str.345 = private unnamed_addr constant [10 x i8] c"uinc_wrap\00", align 1
@.str.348 = private unnamed_addr constant [9 x i8] c"usub_sat\00", align 1
@.str.349 = private unnamed_addr constant [6 x i8] c"splat\00", align 1
@.str.350 = private unnamed_addr constant [7 x i8] c"vscale\00", align 1
@.str.351 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.352 = private unnamed_addr constant [13 x i8] c"blockaddress\00", align 1
@.str.353 = private unnamed_addr constant [21 x i8] c"dso_local_equivalent\00", align 1
@.str.354 = private unnamed_addr constant [7 x i8] c"no_cfi\00", align 1
@.str.355 = private unnamed_addr constant [8 x i8] c"ptrauth\00", align 1
@.str.356 = private unnamed_addr constant [9 x i8] c"distinct\00", align 1
@.str.357 = private unnamed_addr constant [13 x i8] c"uselistorder\00", align 1
@.str.358 = private unnamed_addr constant [12 x i8] c"personality\00", align 1
@.str.359 = private unnamed_addr constant [8 x i8] c"cleanup\00", align 1
@.str.360 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@.str.361 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.362 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.364 = private unnamed_addr constant [3 x i8] c"gv\00", align 1
@.str.365 = private unnamed_addr constant [5 x i8] c"guid\00", align 1
@.str.367 = private unnamed_addr constant [10 x i8] c"summaries\00", align 1
@.str.368 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.369 = private unnamed_addr constant [11 x i8] c"blockcount\00", align 1
@.str.370 = private unnamed_addr constant [8 x i8] c"linkage\00", align 1
@.str.371 = private unnamed_addr constant [11 x i8] c"visibility\00", align 1
@.str.372 = private unnamed_addr constant [20 x i8] c"notEligibleToImport\00", align 1
@.str.373 = private unnamed_addr constant [5 x i8] c"live\00", align 1
@.str.374 = private unnamed_addr constant [9 x i8] c"dsoLocal\00", align 1
@.str.375 = private unnamed_addr constant [12 x i8] c"canAutoHide\00", align 1
@.str.376 = private unnamed_addr constant [11 x i8] c"importType\00", align 1
@.str.378 = private unnamed_addr constant [12 x i8] c"declaration\00", align 1
@.str.379 = private unnamed_addr constant [20 x i8] c"noRenameOnPromotion\00", align 1
@.str.380 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.381 = private unnamed_addr constant [6 x i8] c"insts\00", align 1
@.str.382 = private unnamed_addr constant [10 x i8] c"funcFlags\00", align 1
@.str.383 = private unnamed_addr constant [9 x i8] c"readNone\00", align 1
@.str.385 = private unnamed_addr constant [10 x i8] c"noRecurse\00", align 1
@.str.386 = private unnamed_addr constant [19 x i8] c"returnDoesNotAlias\00", align 1
@.str.387 = private unnamed_addr constant [9 x i8] c"noInline\00", align 1
@.str.388 = private unnamed_addr constant [13 x i8] c"alwaysInline\00", align 1
@.str.389 = private unnamed_addr constant [9 x i8] c"noUnwind\00", align 1
@.str.391 = private unnamed_addr constant [15 x i8] c"hasUnknownCall\00", align 1
@.str.392 = private unnamed_addr constant [18 x i8] c"mustBeUnreachable\00", align 1
@.str.393 = private unnamed_addr constant [6 x i8] c"calls\00", align 1
@.str.394 = private unnamed_addr constant [7 x i8] c"callee\00", align 1
@.str.396 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@.str.397 = private unnamed_addr constant [8 x i8] c"hotness\00", align 1
@.str.399 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.400 = private unnamed_addr constant [6 x i8] c"relbf\00", align 1
@.str.401 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.402 = private unnamed_addr constant [12 x i8] c"vTableFuncs\00", align 1
@.str.403 = private unnamed_addr constant [9 x i8] c"virtFunc\00", align 1
@.str.404 = private unnamed_addr constant [8 x i8] c"aliasee\00", align 1
@.str.405 = private unnamed_addr constant [5 x i8] c"refs\00", align 1
@.str.406 = private unnamed_addr constant [11 x i8] c"typeIdInfo\00", align 1
@.str.407 = private unnamed_addr constant [10 x i8] c"typeTests\00", align 1
@.str.408 = private unnamed_addr constant [21 x i8] c"typeTestAssumeVCalls\00", align 1
@.str.409 = private unnamed_addr constant [22 x i8] c"typeCheckedLoadVCalls\00", align 1
@.str.410 = private unnamed_addr constant [26 x i8] c"typeTestAssumeConstVCalls\00", align 1
@.str.411 = private unnamed_addr constant [27 x i8] c"typeCheckedLoadConstVCalls\00", align 1
@.str.412 = private unnamed_addr constant [8 x i8] c"vFuncId\00", align 1
@.str.413 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.414 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.415 = private unnamed_addr constant [7 x i8] c"typeid\00", align 1
@.str.416 = private unnamed_addr constant [23 x i8] c"typeidCompatibleVTable\00", align 1
@.str.417 = private unnamed_addr constant [8 x i8] c"summary\00", align 1
@.str.418 = private unnamed_addr constant [12 x i8] c"typeTestRes\00", align 1
@.str.419 = private unnamed_addr constant [5 x i8] c"kind\00", align 1
@.str.420 = private unnamed_addr constant [6 x i8] c"unsat\00", align 1
@.str.421 = private unnamed_addr constant [10 x i8] c"byteArray\00", align 1
@.str.422 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.424 = private unnamed_addr constant [8 x i8] c"allOnes\00", align 1
@.str.425 = private unnamed_addr constant [15 x i8] c"sizeM1BitWidth\00", align 1
@.str.426 = private unnamed_addr constant [10 x i8] c"alignLog2\00", align 1
@.str.427 = private unnamed_addr constant [7 x i8] c"sizeM1\00", align 1
@.str.428 = private unnamed_addr constant [8 x i8] c"bitMask\00", align 1
@.str.429 = private unnamed_addr constant [11 x i8] c"inlineBits\00", align 1
@.str.430 = private unnamed_addr constant [17 x i8] c"vcall_visibility\00", align 1
@.str.431 = private unnamed_addr constant [15 x i8] c"wpdResolutions\00", align 1
@.str.432 = private unnamed_addr constant [7 x i8] c"wpdRes\00", align 1
@.str.433 = private unnamed_addr constant [6 x i8] c"indir\00", align 1
@.str.434 = private unnamed_addr constant [11 x i8] c"singleImpl\00", align 1
@.str.435 = private unnamed_addr constant [13 x i8] c"branchFunnel\00", align 1
@.str.436 = private unnamed_addr constant [15 x i8] c"singleImplName\00", align 1
@.str.437 = private unnamed_addr constant [9 x i8] c"resByArg\00", align 1
@.str.438 = private unnamed_addr constant [6 x i8] c"byArg\00", align 1
@.str.439 = private unnamed_addr constant [14 x i8] c"uniformRetVal\00", align 1
@.str.440 = private unnamed_addr constant [13 x i8] c"uniqueRetVal\00", align 1
@.str.441 = private unnamed_addr constant [17 x i8] c"virtualConstProp\00", align 1
@.str.442 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.444 = private unnamed_addr constant [4 x i8] c"bit\00", align 1
@.str.445 = private unnamed_addr constant [9 x i8] c"varFlags\00", align 1
@.str.446 = private unnamed_addr constant [10 x i8] c"callsites\00", align 1
@.str.447 = private unnamed_addr constant [7 x i8] c"clones\00", align 1
@.str.448 = private unnamed_addr constant [9 x i8] c"stackIds\00", align 1
@.str.449 = private unnamed_addr constant [7 x i8] c"allocs\00", align 1
@.str.450 = private unnamed_addr constant [9 x i8] c"versions\00", align 1
@.str.451 = private unnamed_addr constant [8 x i8] c"memProf\00", align 1
@.str.453 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.455 = private unnamed_addr constant [7 x i8] c"bfloat\00", align 1
@.str.456 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.457 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.458 = private unnamed_addr constant [9 x i8] c"x86_fp80\00", align 1
@.str.459 = private unnamed_addr constant [6 x i8] c"fp128\00", align 1
@.str.460 = private unnamed_addr constant [10 x i8] c"ppc_fp128\00", align 1
@.str.461 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.462 = private unnamed_addr constant [9 x i8] c"metadata\00", align 1
@.str.463 = private unnamed_addr constant [8 x i8] c"x86_amx\00", align 1
@.str.464 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.465 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@.str.466 = private unnamed_addr constant [5 x i8] c"fneg\00", align 1
@.str.467 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.468 = private unnamed_addr constant [5 x i8] c"fadd\00", align 1
@.str.469 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.470 = private unnamed_addr constant [5 x i8] c"fsub\00", align 1
@.str.471 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.472 = private unnamed_addr constant [5 x i8] c"fmul\00", align 1
@.str.479 = private unnamed_addr constant [4 x i8] c"shl\00", align 1
@.str.480 = private unnamed_addr constant [5 x i8] c"lshr\00", align 1
@.str.482 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.483 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.484 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.485 = private unnamed_addr constant [5 x i8] c"icmp\00", align 1
@.str.487 = private unnamed_addr constant [4 x i8] c"phi\00", align 1
@.str.488 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.489 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@.str.490 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@.str.492 = private unnamed_addr constant [8 x i8] c"fptrunc\00", align 1
@.str.493 = private unnamed_addr constant [6 x i8] c"fpext\00", align 1
@.str.494 = private unnamed_addr constant [7 x i8] c"uitofp\00", align 1
@.str.498 = private unnamed_addr constant [9 x i8] c"inttoptr\00", align 1
@.str.499 = private unnamed_addr constant [10 x i8] c"ptrtoaddr\00", align 1
@.str.500 = private unnamed_addr constant [9 x i8] c"ptrtoint\00", align 1
@.str.501 = private unnamed_addr constant [8 x i8] c"bitcast\00", align 1
@.str.502 = private unnamed_addr constant [14 x i8] c"addrspacecast\00", align 1
@.str.503 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.505 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.506 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.507 = private unnamed_addr constant [11 x i8] c"indirectbr\00", align 1
@.str.508 = private unnamed_addr constant [7 x i8] c"invoke\00", align 1
@.str.510 = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@.str.511 = private unnamed_addr constant [7 x i8] c"callbr\00", align 1
@.str.513 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.514 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.515 = private unnamed_addr constant [8 x i8] c"cmpxchg\00", align 1
@.str.516 = private unnamed_addr constant [10 x i8] c"atomicrmw\00", align 1
@.str.517 = private unnamed_addr constant [6 x i8] c"fence\00", align 1
@.str.518 = private unnamed_addr constant [14 x i8] c"getelementptr\00", align 1
@.str.519 = private unnamed_addr constant [15 x i8] c"extractelement\00", align 1
@.str.520 = private unnamed_addr constant [14 x i8] c"insertelement\00", align 1
@.str.522 = private unnamed_addr constant [13 x i8] c"extractvalue\00", align 1
@.str.523 = private unnamed_addr constant [12 x i8] c"insertvalue\00", align 1
@.str.524 = private unnamed_addr constant [11 x i8] c"landingpad\00", align 1
@.str.526 = private unnamed_addr constant [9 x i8] c"catchret\00", align 1
@.str.527 = private unnamed_addr constant [12 x i8] c"catchswitch\00", align 1
@.str.528 = private unnamed_addr constant [9 x i8] c"catchpad\00", align 1
@.str.529 = private unnamed_addr constant [11 x i8] c"cleanuppad\00", align 1
@.str.530 = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@.str.542 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.543 = private unnamed_addr constant [12 x i8] c"dbg_declare\00", align 1
@.str.544 = private unnamed_addr constant [11 x i8] c"dbg_assign\00", align 1
@.str.545 = private unnamed_addr constant [7 x i8] c"assign\00", align 1
@.str.546 = private unnamed_addr constant [10 x i8] c"dbg_label\00", align 1
@.str.547 = private unnamed_addr constant [18 x i8] c"dbg_declare_value\00", align 1
@.str.548 = private unnamed_addr constant [14 x i8] c"declare_value\00", align 1
@.str.553 = private unnamed_addr constant [10 x i8] c"FullDebug\00", align 1
@.str.554 = private unnamed_addr constant [15 x i8] c"LineTablesOnly\00", align 1
@.str.555 = private unnamed_addr constant [20 x i8] c"DebugDirectivesOnly\00", align 1
@.str.556 = private unnamed_addr constant [4 x i8] c"GNU\00", align 1
@.str.557 = private unnamed_addr constant [6 x i8] c"Apple\00", align 1
@.str.558 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.559 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.560 = private unnamed_addr constant [7 x i8] c"Binary\00", align 1
@.str.561 = private unnamed_addr constant [8 x i8] c"Decimal\00", align 1
@.str.562 = private unnamed_addr constant [9 x i8] c"Rational\00", align 1
@.str.563 = private unnamed_addr constant [49 x i8] c"hexadecimal constant too large for half (16-bit)\00", align 1
@.str.564 = private unnamed_addr constant [51 x i8] c"hexadecimal constant too large for bfloat (16-bit)\00", align 1
@.str.565 = private unnamed_addr constant [8 x i8] c"-nan(0)\00", align 1
@.str.566 = private unnamed_addr constant [7 x i8] c"nan(0)\00", align 1
@.str.567 = private unnamed_addr constant [21 x i8] c"unclosed nan literal\00", align 1
@.str.569 = private unnamed_addr constant [35 x i8] c"bad payload format for nan literal\00", align 1
@_ZZN4llvm13hexDigitValueEcE3LUT = linkonce_odr local_unnamed_addr constant [256 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], comdat, align 16
@_ZN4llvm11APFloatBase13semIEEEdoubleE = external global %"struct.llvm::fltSemantics", align 4

@_ZN4llvm7LLLexerC1ENS_9StringRefERNS_9SourceMgrERNS_12SMDiagnosticERNS_11LLVMContextE = unnamed_addr alias void (ptr, ptr, i64, ptr, ptr, ptr), ptr @_ZN4llvm7LLLexerC2ENS_9StringRefERNS_9SourceMgrERNS_12SMDiagnosticERNS_11LLVMContextE

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(169) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SMDiagnostic", align 8 ; 15 uses
  %5 = alloca %"class.llvm::ArrayRef", align 8    ; 2 uses
  %6 = alloca %"class.llvm::ArrayRef.4", align 8  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !72
  %i.c = icmp slt i32 %3, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35, !nonnull !36, !align !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @_ZNK4llvm9SourceMgr10GetMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SMDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr %1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(34) %2, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.4") align 8 %6) #15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73, !nonnull !36, !align !37
  %i.h = call noundef nonnull align 8 dereferenceable(360) ptr @_ZN4llvm12SMDiagnosticaSEOS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.g, ptr noundef nonnull align 8 dereferenceable(360) %4) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.l = load i32, ptr %i.k, align 8, !tbaa !40   ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %i.m = zext i32 %i.l to i64
  %.idx.i.i = mul nuw nsw i64 %i.m, 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm7SMFixItD2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.o, %_ZN4llvm7SMFixItD2Ev.exit.i.i.i ], [ %i.n, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !41   ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN4llvm7SMFixItD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !42
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #16
  br label %_ZN4llvm7SMFixItD2Ev.exit.i.i.i

_ZN4llvm7SMFixItD2Ev.exit.i.i.i:                  ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.not.i.i.i = icmp eq ptr %i.j, %i.o
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i: ; preds = %_ZN4llvm7SMFixItD2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !39
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i, %bb.b
  %i.v = phi ptr [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i
  call void @free(ptr noundef %i.v) #15
  br label %_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i: ; preds = %bb.c, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !46   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #16
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i:      ; preds = %bb.d, %_ZN4llvm11SmallVectorINS_7SMFixItELj4EED2Ev.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !41 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !42
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !41 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !42
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !41 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN4llvm12SMDiagnosticD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !42
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #16
  br label %_ZN4llvm12SMDiagnosticD2Ev.exit

_ZN4llvm12SMDiagnosticD2Ev.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  store i32 %3, ptr %i.a, align 8, !tbaa !72
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4llvm12SMDiagnosticD2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZNK4llvm9SourceMgr10GetMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEE(ptr dead_on_unwind writable sret(%"class.llvm::SMDiagnostic") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr, i32 noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef byval(%"class.llvm::ArrayRef") align 8, ptr noundef byval(%"class.llvm::ArrayRef.4") align 8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(360) ptr @_ZN4llvm12SMDiagnosticaSEOS0_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !41   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !41   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.h = icmp eq ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !48   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !49

bb.c:                                             ; preds = %bb.b
  switch i64 %i.j, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.f, align 1, !tbaa !42
  store i8 %i.l, ptr %i.c, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %i.f, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.m = load i64, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !48
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !42
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.a, align 8, !tbaa !41
end_hunk_0
begin_hunk_1_@_ZN4llvm7LLLexer10ReadStringENS_5lltok4KindE:bb.a

bb.e:                                             ; preds = %bb.d
  %i.af = icmp ult ptr %.037.i, %i.y
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.037.i, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !42
  %i.ai = icmp eq i8 %i.ah, 92
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 92, ptr %.03036.i, align 1, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %.037.i, i64 2
  br label %bb.n

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ak = icmp ult ptr %.037.i, %i.z
  br i1 %i.ak, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.037.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !42  ; 2 uses
  %i.an = zext i8 %i.am to i32
  %i.ao = tail call i32 @isxdigit(i32 noundef %i.an) #17
  %.not33.i = icmp eq i32 %i.ao, 0
  br i1 %.not33.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.037.i, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !42  ; 2 uses
  %i.ar = zext i8 %i.aq to i32
  %i.as = tail call i32 @isxdigit(i32 noundef %i.ar) #17
  %.not34.i = icmp eq i32 %i.as, 0
  br i1 %.not34.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = zext i8 %i.am to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !56
  %i.aw = trunc i16 %i.av to i8
  %i.ax = shl i8 %i.aw, 4
  %i.ay = zext i8 %i.aq to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !56
  %i.bb = trunc i16 %i.ba to i8
  %i.bc = add i8 %i.ax, %i.bb
  store i8 %i.bc, ptr %.03036.i, align 1, !tbaa !42
  %i.bd = getelementptr inbounds nuw i8, ptr %.037.i, i64 3
  br label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.037.i, i64 1
  store i8 92, ptr %.03036.i, align 1, !tbaa !42
  br label %bb.n

bb.m:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %.037.i, i64 1
  store i8 %i.ad, ptr %.03036.i, align 1, !tbaa !42
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.g
  %.1.i = phi ptr [ %i.aj, %bb.g ], [ %i.bd, %bb.k ], [ %i.be, %bb.l ], [ %i.bf, %bb.m ] ; 2 uses
  %.131.i = getelementptr inbounds nuw i8, ptr %.03036.i, i64 1 ; 2 uses
  %.not.i8 = icmp eq ptr %.1.i, %i.x
  br i1 %.not.i8, label %._crit_edge.i, label %bb.d, !llvm.loop !7

bb.o:                                             ; preds = %_ZN4llvm7LLLexer11getNextCharEv.exit.thread10, %bb.c, %._crit_edge.i
  %.1.ph = phi i32 [ %1, %._crit_edge.i ], [ %1, %bb.c ], [ 1, %_ZN4llvm7LLLexer11getNextCharEv.exit.thread10 ]
  ret i32 %.1.ph
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4llvm7LLLexer9LexUIntIDENS_5lltok4KindE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(169) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !42
  %i.c = add i8 %i.b, -48
  %isdigit = icmp ult i8 %i.c, 10
  br i1 %isdigit, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a, %.preheader
  %.pn = phi ptr [ %storemerge, %.preheader ], [ %i.a, %bb.a ] ; 3 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 3 uses
  store ptr %storemerge, ptr %0, align 8, !tbaa !67
  %i.d = load i8, ptr %storemerge, align 1, !tbaa !42
  %i.e = add i8 %i.d, -48
  %isdigit5 = icmp ult i8 %i.e, 10
  br i1 %isdigit5, label %.preheader, label %bb.b, !llvm.loop !6

bb.b:                                             ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 4 uses
  %.not17.i = icmp eq ptr %i.g, %.pn
  br i1 %.not17.i, label %_ZN4llvm7LLLexer6atoullEPKcS2_.exit.thread, label %.critedge.i

bb.c:                                             ; preds = %.critedge.i
  %.not.i = icmp eq ptr %.01418.i, %.pn
  br i1 %.not.i, label %_ZN4llvm7LLLexer6atoullEPKcS2_.exit, label %.critedge.i, !llvm.loop !1

.critedge.i:                                      ; preds = %bb.b, %bb.c
  %.01219.i = phi i64 [ %i.l, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.01418.i.pn = phi ptr [ %.01418.i, %bb.c ], [ %i.g, %bb.b ]
  %.01418.i = getelementptr inbounds nuw i8, ptr %.01418.i.pn, i64 1 ; 3 uses
  %i.h = mul i64 %.01219.i, 10
  %i.i = load i8, ptr %.01418.i, align 1, !tbaa !42
  %i.j = sext i8 %i.i to i64
  %i.k = add i64 %i.h, -48
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %.not15.i = icmp ult i64 %i.l, %.01219.i
  br i1 %.not15.i, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !52
  store ptr @.str, ptr %2, align 8, !tbaa !42
  store i8 3, ptr %i.m, align 8, !tbaa !53
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(34) %2, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %_ZN4llvm7LLLexer6atoullEPKcS2_.exit.thread

_ZN4llvm7LLLexer6atoullEPKcS2_.exit:              ; preds = %bb.c
  %i.o = trunc i64 %i.l to i32                    ; 2 uses
  %.not = icmp ult i64 %i.l, 4294967296
  br i1 %.not, label %_ZN4llvm7LLLexer6atoullEPKcS2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm7LLLexer6atoullEPKcS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.q, align 1, !tbaa !52
  store ptr @.str.6, ptr %3, align 8, !tbaa !42
  store i8 3, ptr %i.p, align 8, !tbaa !53
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN4llvm7LLLexer6atoullEPKcS2_.exit.thread

_ZN4llvm7LLLexer6atoullEPKcS2_.exit.thread:       ; preds = %bb.b, %bb.d, %bb.e, %_ZN4llvm7LLLexer6atoullEPKcS2_.exit
  %i.r = phi i32 [ %i.o, %_ZN4llvm7LLLexer6atoullEPKcS2_.exit ], [ %i.o, %bb.e ], [ 0, %bb.d ], [ 0, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.r, ptr %i.s, align 8, !tbaa !61
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN4llvm7LLLexer6atoullEPKcS2_.exit.thread
  %.0 = phi i32 [ %1, %_ZN4llvm7LLLexer6atoullEPKcS2_.exit.thread ], [ 1, %bb.a ]
  ret i32 %.0
}

declare noundef ptr @_ZN4llvm11IntegerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm8ByteType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type9getVoidTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type9getHalfTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type11getBFloatTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type10getFloatTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type11getDoubleTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type13getX86_FP80TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type10getFP128TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type14getPPC_FP128TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type10getLabelTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type13getMetadataTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type12getX86_AMXTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm4Type10getTokenTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isxdigit(i32 noundef) local_unnamed_addr #6

declare void @_ZN4llvm5APIntC1EjNS_9StringRefEh(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, ptr, i64, i8 noundef zeroext) unnamed_addr #2

declare void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 1, 559) i32 @_ZN4llvm7LLLexer5Lex0xEv(ptr noundef nonnull align 8 dereferenceable(169) initializes((0, 8)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::APFloat", align 8     ; 5 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %i.a = alloca [2 x i64], align 16               ; 10 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 3 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 3 uses
  %9 = alloca %"class.llvm::APInt", align 8       ; 3 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 20 uses
  %.ptr86 = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 4 uses
  store ptr %.ptr86, ptr %0, align 8, !tbaa !67
  %i.d = load i8, ptr %.ptr86, align 1, !tbaa !42 ; 3 uses
  %i.e = add i8 %i.d, -75
  %or.cond = icmp ult i8 %i.e, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.d, label %bb.d [
    i8 72, label %bb.c
    i8 82, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.a
  %.ptr87 = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  store ptr %.ptr87, ptr %0, align 8, !tbaa !67
  %i.f = load i8, ptr %.ptr86, align 1, !tbaa !42
  %i.g = sext i8 %i.f to i32
  %.pre = load i8, ptr %.ptr87, align 1, !tbaa !42
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi i8 [ %.pre, %bb.c ], [ %i.d, %bb.b ]
  %.promoted.idx = phi i64 [ 3, %bb.c ], [ 2, %bb.b ]
  %.0 = phi i32 [ %i.g, %bb.c ], [ 74, %bb.b ]    ; 2 uses
  %i.i = zext i8 %i.h to i32
  %i.j = tail call i32 @isxdigit(i32 noundef %i.i) #17
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.k, ptr %0, align 8, !tbaa !67
  br label %bb.al

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.idx = phi i64 [ %.add, %.lr.ph ], [ %.promoted.idx, %bb.d ]
  %.add = add nuw nsw i64 %.idx, 1                ; 10 uses
  %.ptr85 = getelementptr inbounds nuw i8, ptr %i.c, i64 %.add ; 2 uses
  store ptr %.ptr85, ptr %0, align 8, !tbaa !67
  %i.l = load i8, ptr %.ptr85, align 1, !tbaa !42 ; 2 uses
  %i.m = zext i8 %i.l to i32
  %i.n = tail call i32 @isxdigit(i32 noundef %i.m) #17
  %.not11 = icmp eq i32 %i.n, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph, !llvm.loop !92

._crit_edge:                                      ; preds = %.lr.ph
  %.ptr85.le = getelementptr inbounds nuw i8, ptr %i.c, i64 %.add ; 7 uses
  %i.o = icmp eq i8 %i.l, 46
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.p = tail call noundef i32 @_ZN4llvm7LLLexer11LexFloatStrEv(ptr noundef nonnull align 8 dereferenceable(169) %0)
  br label %bb.al

bb.g:                                             ; preds = %._crit_edge
  %i.q = icmp eq i32 %.0, 74
  br i1 %i.q, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %.not17.i = icmp samesign eq i64 %.add, 2
  br i1 %.not17.i, label %_ZN4llvm7LLLexer11HexIntToValEPKcS2_.exit.a, label %.critedge.i

bb.i:                                             ; preds = %.critedge.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01418.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.r, %.ptr85.le
  br i1 %.not.i, label %_ZN4llvm7LLLexer11HexIntToValEPKcS2_.exit.a, label %.critedge.i, !llvm.loop !2

.critedge.i:                                      ; preds = %bb.h, %bb.i
  %.01219.i = phi i64 [ %i.z, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %.01418.i = phi ptr [ %i.r, %bb.i ], [ %.ptr86, %bb.h ] ; 2 uses
  %i.s = shl i64 %.01219.i, 4
  %i.t = load i8, ptr %.01418.i, align 1, !tbaa !42
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !56
  %i.x = sext i16 %i.w to i64
  %i.y = and i64 %i.x, 4294967295
  %i.z = add i64 %i.y, %i.s                       ; 3 uses
  %.not15.i = icmp ult i64 %i.z, %.01219.i
  br i1 %.not15.i, label %bb.j, label %bb.i

bb.j:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.ab, align 1, !tbaa !52
  store ptr @.str, ptr %4, align 8, !tbaa !42
  store i8 3, ptr %i.aa, align 8, !tbaa !53
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(34) %4, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN4llvm7LLLexer11HexIntToValEPKcS2_.exit.a

_ZN4llvm7LLLexer11HexIntToValEPKcS2_.exit.a:      ; preds = %bb.i, %bb.h, %bb.j
  %.2.i = phi i64 [ 0, %bb.j ], [ 0, %bb.h ], [ %i.z, %bb.i ]
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 64, ptr %12, align 8, !tbaa !63
  store i64 %.2.i, ptr %6, align 8, !tbaa !42
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEdoubleE, ptr noundef nonnull align 8 dereferenceable(12) %6) #15
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ad = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %5) #15 ; 0 uses
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #15
  %i.ae = load i32, ptr %12, align 8, !tbaa !63
  %i.af = icmp ugt i32 %i.ae, 64
  br i1 %i.af, label %bb.k, label %_ZN4llvm5APIntD2Ev.exit

bb.k:                                             ; preds = %_ZN4llvm7LLLexer11HexIntToValEPKcS2_.exit.a
  %i.ag = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN4llvm5APIntD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.ag) #16
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm7LLLexer11HexIntToValEPKcS2_.exit.a, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.al

bb.m:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  switch i32 %.0, label %bb.n [
    i32 75, label %bb.o
    i32 76, label %bb.s
    i32 77, label %bb.v
    i32 72, label %bb.y
    i32 82, label %bb.ae
  ]

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !57
  %.not.i12 = icmp samesign eq i64 %.add, 3
  br i1 %.not.i12, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %bb.o
  %.021.lcssa.i = phi ptr [ %i.ai, %bb.o ], [ %i.aq, %.lr.ph.i ], [ %i.az, %.lr.ph.i.1 ], [ %i.bi, %.lr.ph.i.2 ], [ %i.br, %.lr.ph.i.3 ] ; 2 uses
  store i64 0, ptr %i.a, align 16, !tbaa !57
  %.not31.i = icmp eq ptr %.021.lcssa.i, %.ptr85.le
  br i1 %.not31.i, label %_ZN4llvm7LLLexer16FP80HexToIntPairEPKcS2_Pm.exit, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !42
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !56
  %i.ao = sext i16 %i.an to i64
  %i.ap = and i64 %i.ao, 4294967295               ; 2 uses
  store i64 %i.ap, ptr %i.aj, align 8, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %.not110 = icmp samesign eq i64 %.add, 4
  br i1 %.not110, label %._crit_edge.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.ar = shl nuw nsw i64 %i.ap, 4
  %i.as = load i8, ptr %i.aq, align 1, !tbaa !42
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !56
  %i.aw = sext i16 %i.av to i64
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = add nuw nsw i64 %i.ax, %i.ar            ; 2 uses
  store i64 %i.ay, ptr %i.aj, align 8, !tbaa !57
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 5 ; 2 uses
  %.not111 = icmp samesign eq i64 %.add, 5
  br i1 %.not111, label %._crit_edge.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.ba = shl nuw nsw i64 %i.ay, 4
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !42
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !56
  %i.bf = sext i16 %i.be to i64
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = add nuw nsw i64 %i.bg, %i.ba            ; 2 uses
  store i64 %i.bh, ptr %i.aj, align 8, !tbaa !57
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 2 uses
  %.not112 = icmp samesign eq i64 %.add, 6
  br i1 %.not112, label %._crit_edge.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.bj = shl nuw nsw i64 %i.bh, 4
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !42
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !56
  %i.bo = sext i16 %i.bn to i64
  %i.bp = and i64 %i.bo, 4294967295
  %i.bq = add nuw nsw i64 %i.bp, %i.bj
  store i64 %i.bq, ptr %i.aj, align 8, !tbaa !57
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  br label %._crit_edge.i

._crit_edge28.i:                                  ; preds = %.lr.ph27.i
  br i1 %i.ce, label %bb.p, label %_ZN4llvm7LLLexer16FP80HexToIntPairEPKcS2_Pm.exit

.lr.ph27.i:                                       ; preds = %._crit_edge.i, %.lr.ph27.i
  %i.bs = phi i64 [ %i.ca, %.lr.ph27.i ], [ 0, %._crit_edge.i ]
  %.025.i = phi i32 [ %i.cb, %.lr.ph27.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %.124.i = phi ptr [ %i.cc, %.lr.ph27.i ], [ %.021.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.bt = shl i64 %i.bs, 4
  %i.bu = load i8, ptr %.124.i, align 1, !tbaa !42
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr @_ZZN4llvm13hexDigitValueEcE3LUT, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !56
  %i.by = sext i16 %i.bx to i64
  %i.bz = and i64 %i.by, 4294967295
  %i.ca = add i64 %i.bz, %i.bt                    ; 2 uses
  store i64 %i.ca, ptr %i.a, align 16, !tbaa !57
  %i.cb = add nuw nsw i32 %.025.i, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.124.i, i64 1 ; 2 uses
  %i.cd = icmp samesign ult i32 %.025.i, 15
  %i.ce = icmp ne ptr %i.cc, %.ptr85.le           ; 2 uses
  %i.cf = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %i.cf, label %.lr.ph27.i, label %._crit_edge28.i, !llvm.loop !3

bb.p:                                             ; preds = %._crit_edge28.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.ch, align 1, !tbaa !52
  store ptr @.str.1, ptr %3, align 8, !tbaa !42
  store i8 3, ptr %i.cg, align 8, !tbaa !53
  call void @_ZN4llvm7LLLexer5ErrorENS_5SMLocERKNS_5TwineENS0_13ErrorPriorityE(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(34) %3, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN4llvm7LLLexer16FP80HexToIntPairEPKcS2_Pm.exit

_ZN4llvm7LLLexer16FP80HexToIntPairEPKcS2_Pm.exit: ; preds = %._crit_edge.i, %._crit_edge28.i, %bb.p
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %7, i32 noundef 80, ptr nonnull %i.a, i64 2) #15
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !63
  %i.cl = icmp ult i32 %i.ck, 65
  br i1 %i.cl, label %_ZN4llvm5APIntD2Ev.exit13, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm7LLLexer16FP80HexToIntPairEPKcS2_Pm.exit
  %i.cm = load ptr, ptr %i.ci, align 8, !tbaa !42 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_ZN4llvm5APIntD2Ev.exit13, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.cm) #16
  br label %_ZN4llvm5APIntD2Ev.exit13

_ZN4llvm5APIntD2Ev.exit13:                        ; preds = %bb.r, %bb.q, %_ZN4llvm7LLLexer16FP80HexToIntPairEPKcS2_Pm.exit
  %i.co = load i64, ptr %7, align 8
  store i64 %i.co, ptr %i.ci, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !63
  store i32 %i.cq, ptr %i.cj, align 8, !tbaa !63
  br label %bb.ak

bb.s:                                             ; preds = %bb.m
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  call void @_ZN4llvm7LLLexer12HexToIntPairEPKcS2_Pm(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr noundef nonnull %i.cr, ptr noundef nonnull %.ptr85.le, ptr noundef nonnull %i.a)
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %8, i32 noundef 128, ptr nonnull %i.a, i64 2) #15
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !63
  %i.cv = icmp ult i32 %i.cu, 65
  br i1 %i.cv, label %_ZN4llvm5APIntD2Ev.exit15, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !42 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %_ZN4llvm5APIntD2Ev.exit15, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.cw) #16
  br label %_ZN4llvm5APIntD2Ev.exit15

_ZN4llvm5APIntD2Ev.exit15:                        ; preds = %bb.u, %bb.t, %bb.s
  %i.cy = load i64, ptr %8, align 8
  store i64 %i.cy, ptr %i.cs, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !63
  store i32 %i.da, ptr %i.ct, align 8, !tbaa !63
  br label %bb.ak

bb.v:                                             ; preds = %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  call void @_ZN4llvm7LLLexer12HexToIntPairEPKcS2_Pm(ptr noundef nonnull align 8 dereferenceable(169) %0, ptr noundef nonnull %i.db, ptr noundef nonnull %.ptr85.le, ptr noundef nonnull %i.a)
  call void @_ZN4llvm5APIntC1EjNS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 128, ptr nonnull %i.a, i64 2) #15
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !63
  %i.df = icmp ult i32 %i.de, 65
  br i1 %i.df, label %_ZN4llvm5APIntD2Ev.exit17, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !42 ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZN4llvm5APIntD2Ev.exit17, label %bb.x
end_hunk_1
begin_hunk_2_@_ZN4llvm15SmallVectorImplINS_7SMFixItEEaSEOS2_:bb.a
_ZSt10_ConstructIN4llvm7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.v
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !48
  %i.ep = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !48
  store ptr %i.eg, ptr %i.ed, align 8, !tbaa !41
  store i64 0, ptr %i.en, align 8, !tbaa !48
  store i8 0, ptr %i.eg, align 8, !tbaa !42
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 48 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i = icmp eq ptr %i.eq, %i.dy
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.loopexit, label %.lr.ph.i.i.i.i.i71, !llvm.loop !8

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.loopexit: ; preds = %_ZSt10_ConstructIN4llvm7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre84 = load ptr, ptr %1, align 8, !tbaa !39
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.loopexit, %_ZSt4moveIPN4llvm7SMFixItES2_ET0_T_S4_S3_.exit70
  %i.es = phi ptr [ %.pre84, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.loopexit ], [ %i.dv, %_ZSt4moveIPN4llvm7SMFixItES2_ET0_T_S4_S3_.exit70 ] ; 2 uses
  store i32 %i.y, ptr %i.aa, align 8, !tbaa !40
  %i.et = load i32, ptr %i.x, align 8, !tbaa !40  ; 2 uses
  %.not4.i.i72 = icmp eq i32 %i.et, 0
  br i1 %.not4.i.i72, label %_ZN4llvm15SmallVectorImplINS_7SMFixItEE5clearEv.exit82, label %.lr.ph.i.preheader.i73

.lr.ph.i.preheader.i73:                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit
  %i.eu = zext i32 %i.et to i64
  %.idx.i74 = mul nuw nsw i64 %i.eu, 48
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 %.idx.i74
  br label %.lr.ph.i.i75

.lr.ph.i.i75:                                     ; preds = %_ZN4llvm7SMFixItD2Ev.exit.i.i78, %.lr.ph.i.preheader.i73
  %.05.i.i76 = phi ptr [ %i.ew, %_ZN4llvm7SMFixItD2Ev.exit.i.i78 ], [ %i.ev, %.lr.ph.i.preheader.i73 ] ; 3 uses
  %i.ew = getelementptr inbounds i8, ptr %.05.i.i76, i64 -48 ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %.05.i.i76, i64 -32
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !41 ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %.05.i.i76, i64 -16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZN4llvm7SMFixItD2Ev.exit.i.i78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77: ; preds = %.lr.ph.i.i75
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !42
  %i.fc = add i64 %i.fb, 1
  tail call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #16
  br label %_ZN4llvm7SMFixItD2Ev.exit.i.i78

_ZN4llvm7SMFixItD2Ev.exit.i.i78:                  ; preds = %.lr.ph.i.i75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i77
  %.not.i.i79 = icmp eq ptr %i.es, %i.ew
  br i1 %.not.i.i79, label %_ZN4llvm15SmallVectorImplINS_7SMFixItEE5clearEv.exit82, label %.lr.ph.i.i75, !llvm.loop !0

_ZN4llvm15SmallVectorImplINS_7SMFixItEE5clearEv.exit82: ; preds = %_ZN4llvm7SMFixItD2Ev.exit.i.i78, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit
  store i32 0, ptr %i.x, align 8, !tbaa !40
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_7SMFixItEE5clearEv.exit, %_ZN4llvm15SmallVectorImplINS_7SMFixItEE5clearEv.exit82, %bb.a, %_ZN4llvm15SmallVectorImplINS_7SMFixItEE12assignRemoteEOS2_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 48, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #15 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !39     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = mul nuw nsw i64 %i.g, 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE19moveElementsForGrowEPS1_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt10_ConstructIN4llvm7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.x, %_ZSt10_ConstructIN4llvm7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 5 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructIN4llvm7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !71
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !60
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 32 ; 5 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !48   ; 2 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %i.r = add nuw nsw i64 %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.r, i1 false)
  br label %_ZSt10_ConstructIN4llvm7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.l, ptr %i.i, align 8, !tbaa !41
  %i.s = load i64, ptr %i.m, align 8, !tbaa !42
  store i64 %i.s, ptr %i.k, align 8, !tbaa !42
  br label %_ZSt10_ConstructIN4llvm7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !48
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  store i64 %i.u, ptr %i.v, align 8, !tbaa !48
  store ptr %i.m, ptr %i.j, align 8, !tbaa !41
  store i64 0, ptr %i.t, align 8, !tbaa !48
  store i8 0, ptr %i.m, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !8

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i: ; preds = %_ZSt10_ConstructIN4llvm7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !39  ; 3 uses
  %.pre3.i = load i32, ptr %i.e, align 8, !tbaa !40 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE19moveElementsForGrowEPS1_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i
  %i.y = zext i32 %.pre3.i to i64
  %.idx2.i = mul nuw nsw i64 %i.y, 48
  %i.z = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm7SMFixItD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.aa, %_ZN4llvm7SMFixItD2Ev.exit.i.i ], [ %i.z, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %.05.i.i, i64 -48 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.05.i.i, i64 -32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.05.i.i, i64 -16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN4llvm7SMFixItD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !42
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #16
  br label %_ZN4llvm7SMFixItD2Ev.exit.i.i

_ZN4llvm7SMFixItD2Ev.exit.i.i:                    ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i = icmp eq ptr %.pre.i, %i.aa
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE19moveElementsForGrowEPS1_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE19moveElementsForGrowEPS1_.exit.loopexit: ; preds = %_ZN4llvm7SMFixItD2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !39
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE19moveElementsForGrowEPS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE19moveElementsForGrowEPS1_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE19moveElementsForGrowEPS1_.exit.loopexit, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i
  %i.ah = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE19moveElementsForGrowEPS1_.exit.loopexit ], [ %i.d, %bb.a ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i ] ; 2 uses
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !57
  %i.aj = icmp eq ptr %i.ah, %i.b
  br i1 %i.aj, label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE21takeAllocationForGrowEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE19moveElementsForGrowEPS1_.exit
  call void @free(ptr noundef %i.ah) #15
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE21takeAllocationForGrowEPS1_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE21takeAllocationForGrowEPS1_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SMFixItELb0EE19moveElementsForGrowEPS1_.exit, %bb.c
  store ptr %i.c, ptr %0, align 8, !tbaa !39
  %i.ak = trunc i64 %i.ai to i32
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4llvm6detail9IEEEFloatC1Ed(ptr noundef nonnull align 8 dereferenceable(24), double noundef) unnamed_addr #2

declare void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24)) unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

declare noundef ptr @_ZN4llvm11PointerType3getERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

declare void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

declare void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29), ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !43}
!1 = distinct !{!1, !43}
!2 = distinct !{!2, !43}
!3 = distinct !{!3, !43}
!4 = distinct !{!4, !43}
!5 = distinct !{!5, !43}
!6 = distinct !{!6, !43}
!7 = distinct !{!7, !43}
!8 = distinct !{!8, !43}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"any pointer", !13, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!"long", !13, i64 0}
!20 = !{!"_ZTSN4llvm9StringRefE", !18, i64 0, !19, i64 8}
!21 = !{!"_ZTSN4llvm7LLLexer13ErrorPriorityE", !13, i64 0}
!22 = !{!"p1 _ZTSN4llvm12SMDiagnosticE", !17, i64 0}
!23 = !{!"_ZTSN4llvm7LLLexer9ErrorInfoE", !21, i64 0, !22, i64 8}
!24 = !{!"p1 _ZTSN4llvm9SourceMgrE", !17, i64 0}
!25 = !{!"p1 _ZTSN4llvm11LLVMContextE", !17, i64 0}
!26 = !{!"_ZTSN4llvm5lltok4KindE", !13, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !19, i64 8, !13, i64 16}
!29 = !{!"p1 _ZTSN4llvm4TypeE", !17, i64 0}
!30 = !{!"_ZTSN4llvm7APFloatE", !13, i64 0}
!31 = !{!"_ZTSN4llvm5APIntE", !13, i64 0, !14, i64 8}
!32 = !{!"bool", !13, i64 0}
!33 = !{!"_ZTSN4llvm6APSIntE", !31, i64 0, !32, i64 12}
!34 = !{!"_ZTSN4llvm7LLLexerE", !18, i64 0, !20, i64 8, !18, i64 24, !23, i64 32, !24, i64 48, !25, i64 56, !18, i64 64, !26, i64 72, !28, i64 80, !14, i64 112, !29, i64 120, !30, i64 128, !33, i64 152, !32, i64 168}
!35 = !{!34, !24, i64 48}
!36 = !{}
!37 = !{i64 8}
!38 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !17, i64 0, !14, i64 8, !14, i64 12}
!39 = !{!38, !17, i64 0}
!40 = !{!38, !14, i64 8}
!41 = !{!28, !18, i64 0}
!42 = !{!13, !13, i64 0}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"p1 _ZTSSt4pairIjjE", !17, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseISt4pairIjjESaIS1_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!45, !44, i64 0}
!47 = !{!45, !44, i64 16}
!48 = !{!28, !19, i64 8}
!49 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!50 = !{!"_ZTSN4llvm5Twine8NodeKindE", !13, i64 0}
!51 = !{!"_ZTSN4llvm5TwineE", !13, i64 0, !13, i64 16, !50, i64 32, !50, i64 33}
!52 = !{!51, !50, i64 33}
!53 = !{!51, !50, i64 32}
!54 = !{!34, !18, i64 64}
!55 = !{!"short", !13, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!19, !19, i64 0}
!58 = !{!18, !18, i64 0}
!59 = !{!34, !18, i64 24}
!60 = !{!27, !18, i64 0}
!61 = !{!34, !14, i64 112}
!62 = !{!34, !29, i64 120}
!63 = !{!31, !14, i64 8}
!64 = !{!33, !32, i64 12}
!65 = !{!34, !32, i64 168}
!66 = !{!20, !18, i64 0}
!67 = !{!34, !18, i64 0}
!68 = !{!20, !19, i64 8}
!69 = !{i8 0, i8 2}
!70 = !{!38, !14, i64 12}
!71 = !{i64 0, i64 8, !58, i64 8, i64 8, !58}
!72 = !{!34, !21, i64 32}
!73 = !{!34, !22, i64 40}
!74 = !{!44, !44, i64 0}
!75 = distinct !{!75, !43}
!76 = !{!23, !21, i64 0}
!77 = !{!22, !22, i64 0}
!78 = !{!24, !24, i64 0}
!79 = !{!25, !25, i64 0}
!80 = distinct !{!80, !43}
!81 = distinct !{!81, !43}
!82 = distinct !{null, null, null, null, null, null}
!83 = distinct !{!83, !43}
!84 = !{!34, !25, i64 56}
!85 = distinct !{!85, !43}
!86 = distinct !{!86, !43}
!87 = distinct !{!87, !43}
!88 = distinct !{!88, !43}
!89 = distinct !{!89, !43}
!90 = distinct !{!90, !43}
!91 = distinct !{!91, !43}
!92 = distinct !{!92, !43}
!93 = distinct !{!93, !43}
!94 = distinct !{!94, !43}
!95 = distinct !{!95, !43}
!96 = distinct !{!96, !43}
!97 = distinct !{!97, !43}
!98 = distinct !{!98, !43}
!99 = !{!14, !14, i64 0}
end_hunk_2
