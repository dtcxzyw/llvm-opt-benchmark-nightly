Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3LinkLevel?download=true
inline.NumInlined: 1751
inline.NumDeleted: 522
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
@.str.367 = private unnamed_addr constant [5 x i8] c"LENN\00", align 1
@.str.368 = private unnamed_addr constant [7 x i8] c"LOGNOT\00", align 1
@.str.369 = private unnamed_addr constant [13 x i8] c"MOSTSETBITP1\00", align 1
@.str.370 = private unnamed_addr constant [5 x i8] c"NTOI\00", align 1
@.str.371 = private unnamed_addr constant [7 x i8] c"NEGATE\00", align 1
@.str.372 = private unnamed_addr constant [8 x i8] c"NEGATED\00", align 1
@.str.373 = private unnamed_addr constant [4 x i8] c"NOT\00", align 1
@.str.374 = private unnamed_addr constant [10 x i8] c"NULLCHECK\00", align 1
@.str.375 = private unnamed_addr constant [7 x i8] c"ONEHOT\00", align 1
@.str.376 = private unnamed_addr constant [8 x i8] c"ONEHOT0\00", align 1
@.str.377 = private unnamed_addr constant [8 x i8] c"POSTDEC\00", align 1
@.str.378 = private unnamed_addr constant [8 x i8] c"POSTINC\00", align 1
@.str.379 = private unnamed_addr constant [7 x i8] c"PREDEC\00", align 1
@.str.380 = private unnamed_addr constant [7 x i8] c"PREINC\00", align 1
@.str.381 = private unnamed_addr constant [11 x i8] c"RTOIROUNDS\00", align 1
@.str.382 = private unnamed_addr constant [6 x i8] c"RTOIS\00", align 1
@.str.383 = private unnamed_addr constant [11 x i8] c"REALTOBITS\00", align 1
@.str.384 = private unnamed_addr constant [7 x i8] c"REDAND\00", align 1
@.str.385 = private unnamed_addr constant [6 x i8] c"REDOR\00", align 1
@.str.386 = private unnamed_addr constant [7 x i8] c"REDXOR\00", align 1
@.str.387 = private unnamed_addr constant [13 x i8] c"RESIZELVALUE\00", align 1
@.str.388 = private unnamed_addr constant [7 x i8] c"SIGNED\00", align 1
@.str.389 = private unnamed_addr constant [11 x i8] c"TIMEIMPORT\00", align 1
@.str.390 = private unnamed_addr constant [9 x i8] c"TOLOWERN\00", align 1
@.str.391 = private unnamed_addr constant [10 x i8] c"TOSTRINGN\00", align 1
@.str.392 = private unnamed_addr constant [9 x i8] c"TOUPPERN\00", align 1
@.str.393 = private unnamed_addr constant [9 x i8] c"UNSIGNED\00", align 1
@.str.394 = private unnamed_addr constant [6 x i8] c"ACOSD\00", align 1
@.str.395 = private unnamed_addr constant [7 x i8] c"ACOSHD\00", align 1
@.str.396 = private unnamed_addr constant [6 x i8] c"ASIND\00", align 1
@.str.397 = private unnamed_addr constant [7 x i8] c"ASINHD\00", align 1
@.str.398 = private unnamed_addr constant [6 x i8] c"ATAND\00", align 1
@.str.399 = private unnamed_addr constant [7 x i8] c"ATANHD\00", align 1
@.str.400 = private unnamed_addr constant [6 x i8] c"CEILD\00", align 1
@.str.401 = private unnamed_addr constant [5 x i8] c"COSD\00", align 1
@.str.402 = private unnamed_addr constant [6 x i8] c"COSHD\00", align 1
@.str.403 = private unnamed_addr constant [5 x i8] c"EXPD\00", align 1
@.str.404 = private unnamed_addr constant [7 x i8] c"FLOORD\00", align 1
@.str.405 = private unnamed_addr constant [7 x i8] c"LOG10D\00", align 1
@.str.406 = private unnamed_addr constant [5 x i8] c"LOGD\00", align 1
@.str.407 = private unnamed_addr constant [5 x i8] c"SIND\00", align 1
@.str.408 = private unnamed_addr constant [6 x i8] c"SINHD\00", align 1
@.str.409 = private unnamed_addr constant [6 x i8] c"SQRTD\00", align 1
@.str.410 = private unnamed_addr constant [5 x i8] c"TAND\00", align 1
@.str.411 = private unnamed_addr constant [6 x i8] c"TANHD\00", align 1
@.str.412 = private unnamed_addr constant [7 x i8] c"VARREF\00", align 1
@.str.413 = private unnamed_addr constant [8 x i8] c"VARXREF\00", align 1
@.str.414 = private unnamed_addr constant [5 x i8] c"FUNC\00", align 1
@.str.415 = private unnamed_addr constant [4 x i8] c"LET\00", align 1
@.str.416 = private unnamed_addr constant [9 x i8] c"PROPERTY\00", align 1
@.str.417 = private unnamed_addr constant [9 x i8] c"SEQUENCE\00", align 1
@.str.418 = private unnamed_addr constant [5 x i8] c"TASK\00", align 1
@.str.419 = private unnamed_addr constant [6 x i8] c"CFILE\00", align 1
@.str.420 = private unnamed_addr constant [6 x i8] c"VFILE\00", align 1
@.str.421 = private unnamed_addr constant [11 x i8] c"COVERCROSS\00", align 1
@.str.422 = private unnamed_addr constant [11 x i8] c"COVERPOINT\00", align 1
@.str.423 = private unnamed_addr constant [9 x i8] c"GENBLOCK\00", align 1
@.str.424 = private unnamed_addr constant [8 x i8] c"GENCASE\00", align 1
@.str.425 = private unnamed_addr constant [7 x i8] c"GENFOR\00", align 1
@.str.426 = private unnamed_addr constant [6 x i8] c"GENIF\00", align 1
@.str.427 = private unnamed_addr constant [6 x i8] c"CLASS\00", align 1
@.str.428 = private unnamed_addr constant [13 x i8] c"CLASSPACKAGE\00", align 1
@.str.429 = private unnamed_addr constant [6 x i8] c"IFACE\00", align 1
@.str.430 = private unnamed_addr constant [7 x i8] c"MODULE\00", align 1
@.str.431 = private unnamed_addr constant [15 x i8] c"NOTFOUNDMODULE\00", align 1
@.str.432 = private unnamed_addr constant [8 x i8] c"PACKAGE\00", align 1
@.str.433 = private unnamed_addr constant [10 x i8] c"PRIMITIVE\00", align 1
@.str.434 = private unnamed_addr constant [7 x i8] c"ALWAYS\00", align 1
@.str.435 = private unnamed_addr constant [15 x i8] c"ALWAYSOBSERVED\00", align 1
@.str.436 = private unnamed_addr constant [11 x i8] c"ALWAYSPOST\00", align 1
@.str.437 = private unnamed_addr constant [16 x i8] c"ALWAYSPOSTPONED\00", align 1
@.str.438 = private unnamed_addr constant [10 x i8] c"ALWAYSPRE\00", align 1
@.str.439 = private unnamed_addr constant [15 x i8] c"ALWAYSREACTIVE\00", align 1
@.str.440 = private unnamed_addr constant [6 x i8] c"FINAL\00", align 1
@.str.441 = private unnamed_addr constant [8 x i8] c"INITIAL\00", align 1
@.str.442 = private unnamed_addr constant [17 x i8] c"INITIALAUTOMATIC\00", align 1
@.str.443 = private unnamed_addr constant [14 x i8] c"INITIALSTATIC\00", align 1
@.str.444 = private unnamed_addr constant [13 x i8] c"BRACKETRANGE\00", align 1
@.str.445 = private unnamed_addr constant [6 x i8] c"RANGE\00", align 1
@.str.446 = private unnamed_addr constant [13 x i8] c"UNSIZEDRANGE\00", align 1
@.str.447 = private unnamed_addr constant [14 x i8] c"WILDCARDRANGE\00", align 1
@.str.448 = private unnamed_addr constant [10 x i8] c"ASSERTCTL\00", align 1
@.str.449 = private unnamed_addr constant [6 x i8] c"BREAK\00", align 1
@.str.450 = private unnamed_addr constant [7 x i8] c"CAWAIT\00", align 1
@.str.451 = private unnamed_addr constant [8 x i8] c"CRETURN\00", align 1
@.str.452 = private unnamed_addr constant [6 x i8] c"CSTMT\00", align 1
@.str.453 = private unnamed_addr constant [10 x i8] c"CSTMTUSER\00", align 1
@.str.454 = private unnamed_addr constant [5 x i8] c"CASE\00", align 1
@.str.455 = private unnamed_addr constant [8 x i8] c"COMMENT\00", align 1
@.str.456 = private unnamed_addr constant [15 x i8] c"CONSTRAINTEXPR\00", align 1
@.str.457 = private unnamed_addr constant [17 x i8] c"CONSTRAINTUNIQUE\00", align 1
@.str.458 = private unnamed_addr constant [9 x i8] c"CONTINUE\00", align 1
@.str.459 = private unnamed_addr constant [9 x i8] c"COVERINC\00", align 1
@.str.460 = private unnamed_addr constant [12 x i8] c"COVERTOGGLE\00", align 1
@.str.461 = private unnamed_addr constant [9 x i8] c"DEASSIGN\00", align 1
@.str.462 = private unnamed_addr constant [6 x i8] c"DELAY\00", align 1
@.str.463 = private unnamed_addr constant [8 x i8] c"DISABLE\00", align 1
@.str.464 = private unnamed_addr constant [12 x i8] c"DISABLEFORK\00", align 1
@.str.465 = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@.str.466 = private unnamed_addr constant [8 x i8] c"DUMPCTL\00", align 1
@.str.467 = private unnamed_addr constant [13 x i8] c"EVENTCONTROL\00", align 1
@.str.468 = private unnamed_addr constant [10 x i8] c"EXECGRAPH\00", align 1
@.str.469 = private unnamed_addr constant [7 x i8] c"FCLOSE\00", align 1
@.str.470 = private unnamed_addr constant [7 x i8] c"FFLUSH\00", align 1
@.str.471 = private unnamed_addr constant [7 x i8] c"FINISH\00", align 1
@.str.472 = private unnamed_addr constant [11 x i8] c"FINISHFORK\00", align 1
@.str.473 = private unnamed_addr constant [10 x i8] c"FIREEVENT\00", align 1
@.str.474 = private unnamed_addr constant [21 x i8] c"INITIALAUTOMATICSTMT\00", align 1
@.str.475 = private unnamed_addr constant [18 x i8] c"INITIALSTATICSTMT\00", align 1
@.str.476 = private unnamed_addr constant [10 x i8] c"JUMPBLOCK\00", align 1
@.str.477 = private unnamed_addr constant [7 x i8] c"JUMPGO\00", align 1
@.str.478 = private unnamed_addr constant [5 x i8] c"LOOP\00", align 1
@.str.479 = private unnamed_addr constant [9 x i8] c"LOOPTEST\00", align 1
@.str.480 = private unnamed_addr constant [11 x i8] c"MONITOROFF\00", align 1
@.str.481 = private unnamed_addr constant [12 x i8] c"PEXPRCLAUSE\00", align 1
@.str.482 = private unnamed_addr constant [15 x i8] c"PRINTTIMESCALE\00", align 1
@.str.483 = private unnamed_addr constant [8 x i8] c"RSBREAK\00", align 1
@.str.484 = private unnamed_addr constant [7 x i8] c"RSPROD\00", align 1
@.str.485 = private unnamed_addr constant [11 x i8] c"RSPRODITEM\00", align 1
@.str.486 = private unnamed_addr constant [11 x i8] c"RSPRODLIST\00", align 1
@.str.487 = private unnamed_addr constant [9 x i8] c"RSRETURN\00", align 1
@.str.488 = private unnamed_addr constant [7 x i8] c"RSRULE\00", align 1
@.str.489 = private unnamed_addr constant [9 x i8] c"RANDCASE\00", align 1
@.str.490 = private unnamed_addr constant [13 x i8] c"RANDSEQUENCE\00", align 1
@.str.491 = private unnamed_addr constant [8 x i8] c"RELEASE\00", align 1
@.str.492 = private unnamed_addr constant [7 x i8] c"REPEAT\00", align 1
@.str.493 = private unnamed_addr constant [7 x i8] c"RETURN\00", align 1
@.str.494 = private unnamed_addr constant [8 x i8] c"SFORMAT\00", align 1
@.str.495 = private unnamed_addr constant [10 x i8] c"SETUPHOLD\00", align 1
@.str.496 = private unnamed_addr constant [17 x i8] c"SPLITPLACEHOLDER\00", align 1
@.str.497 = private unnamed_addr constant [12 x i8] c"STACKTRACET\00", align 1
@.str.498 = private unnamed_addr constant [9 x i8] c"STMTEXPR\00", align 1
@.str.499 = private unnamed_addr constant [11 x i8] c"STMTPRAGMA\00", align 1
@.str.500 = private unnamed_addr constant [5 x i8] c"STOP\00", align 1
@.str.501 = private unnamed_addr constant [8 x i8] c"SYSTEMT\00", align 1
@.str.502 = private unnamed_addr constant [11 x i8] c"TIMEFORMAT\00", align 1
@.str.503 = private unnamed_addr constant [10 x i8] c"TRACEDECL\00", align 1
@.str.504 = private unnamed_addr constant [9 x i8] c"TRACEINC\00", align 1
@.str.505 = private unnamed_addr constant [15 x i8] c"TRACEPOPPREFIX\00", align 1
@.str.506 = private unnamed_addr constant [16 x i8] c"TRACEPUSHPREFIX\00", align 1
@.str.507 = private unnamed_addr constant [5 x i8] c"WAIT\00", align 1
@.str.508 = private unnamed_addr constant [9 x i8] c"WAITFORK\00", align 1
@.str.509 = private unnamed_addr constant [7 x i8] c"ASSIGN\00", align 1
@.str.510 = private unnamed_addr constant [15 x i8] c"ASSIGNCOMPOUND\00", align 1
@.str.511 = private unnamed_addr constant [11 x i8] c"ASSIGNCONT\00", align 1
@.str.512 = private unnamed_addr constant [10 x i8] c"ASSIGNDLY\00", align 1
@.str.513 = private unnamed_addr constant [12 x i8] c"ASSIGNFORCE\00", align 1
@.str.514 = private unnamed_addr constant [8 x i8] c"ASSIGNW\00", align 1
@.str.515 = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.516 = private unnamed_addr constant [5 x i8] c"FORK\00", align 1
@.str.517 = private unnamed_addr constant [7 x i8] c"ASSERT\00", align 1
@.str.518 = private unnamed_addr constant [16 x i8] c"ASSERTINTRINSIC\00", align 1
@.str.519 = private unnamed_addr constant [6 x i8] c"COVER\00", align 1
@.str.520 = private unnamed_addr constant [9 x i8] c"RESTRICT\00", align 1
@.str.521 = private unnamed_addr constant [18 x i8] c"CONSTRAINTFOREACH\00", align 1
@.str.522 = private unnamed_addr constant [8 x i8] c"FOREACH\00", align 1
@.str.523 = private unnamed_addr constant [13 x i8] c"CONSTRAINTIF\00", align 1
@.str.524 = private unnamed_addr constant [3 x i8] c"IF\00", align 1
@.str.525 = private unnamed_addr constant [8 x i8] c"READMEM\00", align 1
@.str.526 = private unnamed_addr constant [9 x i8] c"WRITEMEM\00", align 1
@.str.527 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@.str.528 = private unnamed_addr constant [12 x i8] c"MT_DISABLED\00", section "llvm.metadata"
@.str.529 = private unnamed_addr constant [56 x i8] c"/opt-bench/work/verilator/verilator/src/V3LinkLevel.cpp\00", section "llvm.metadata"
@.str.530 = private unnamed_addr constant [9 x i8] c"EXCLUDES\00", section "llvm.metadata"
@.str.531 = private unnamed_addr constant [8 x i8] c"MT_SAFE\00", section "llvm.metadata"
@.str.532 = private unnamed_addr constant [5 x i8] c"PURE\00", section "llvm.metadata"
@.str.533 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/verilator/verilator/src/V3Global.h\00", section "llvm.metadata"
@.str.534 = private unnamed_addr constant [10 x i8] c"MT_STABLE\00", section "llvm.metadata"
@.str.535 = private unnamed_addr constant [57 x i8] c"/opt-bench/work/verilator/verilator/src/V3AstNodeOther.h\00", section "llvm.metadata"
@.str.536 = private unnamed_addr constant [48 x i8] c"/opt-bench/work/verilator/verilator/src/V3Ast.h\00", section "llvm.metadata"
@.str.537 = private unnamed_addr constant [53 x i8] c"/opt-bench/work/verilator/verilator/src/V3FileLine.h\00", section "llvm.metadata"
@.str.538 = private unnamed_addr constant [8 x i8] c"RELEASE\00", section "llvm.metadata"
@.str.539 = private unnamed_addr constant [8 x i8] c"ACQUIRE\00", section "llvm.metadata"
@.str.540 = private unnamed_addr constant [9 x i8] c"REQUIRES\00", section "llvm.metadata"
@.str.541 = private unnamed_addr constant [57 x i8] c"/opt-bench/work/verilator/verilator/src/V3AstNodeDType.h\00", section "llvm.metadata"
@.str.542 = private unnamed_addr constant [52 x i8] c"/opt-bench/work/verilator/verilator/src/V3Options.h\00", section "llvm.metadata"
@.str.543 = private unnamed_addr constant [52 x i8] c"/opt-bench/work/verilator/verilator/src/V3AstAttr.h\00", section "llvm.metadata"
@.str.544 = private unnamed_addr constant [69 x i8] c"/opt-bench/work/verilator/verilator/build/src/V3Ast__gen_type_enum.h\00", section "llvm.metadata"
@llvm.global.annotations = appending global [93 x { ptr, ptr, ptr, i32, ptr }] [{ ptr, ptr, ptr, i32, ptr } { ptr @_ZN11V3LinkLevel14modSortByLevelEv, ptr @.str.528, ptr @.str.529, i32 39, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN11V3LinkLevel14modSortByLevelEv, ptr @.str.530, ptr @.str.529, i32 39, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZL5debugv, ptr @.str.531, ptr @.str.529, i32 28, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7V3Error7lineStrB5cxx11EPKci, ptr @.str.532, ptr @.str.27, i32 634, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK8V3Global5rootpEv, ptr @.str.531, ptr @.str.533, i32 162, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK10AstNetlist8modulespEv, ptr @.str.534, ptr @.str.535, i32 1472, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK13AstNodeModule5isTopEv, ptr @.str.531, ptr @.str.535, i32 360, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7AstNode2isI17AstNotFoundModule13AstNodeModuleEEbPKT0_, ptr @.str.531, ptr @.str.536, i32 1020, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_, ptr @.str.532, ptr @.str.536, i32 1055, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK7AstNode5nextpEv, ptr @.str.534, ptr @.str.536, i32 540, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK7AstNode8filelineEv, ptr @.str.531, ptr @.str.536, i32 625, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK8FileLine9warnIsOffE11V3ErrorCode, ptr @.str.531, ptr @.str.537, i32 385, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, ptr @.str.538, ptr @.str.536, i32 815, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode, ptr @.str.539, ptr @.str.27, i32 666, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7V3Error10v3errorStrB5cxx11Ev, ptr @.str.540, ptr @.str.27, i32 669, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK7AstNode8warnMoreB5cxx11Ev, ptr @.str.540, ptr @.str.536, i32 822, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7V3Error1sEv, ptr @.str.531, ptr @.str.27, i32 550, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN14V3ErrorGuarded15warnContextNoneB5cxx11Ev, ptr @.str.540, ptr @.str.27, i32 537, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7V3Error18warnAdditionalInfoB5cxx11Ev, ptr @.str.531, ptr @.str.27, i32 657, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @"_ZZN11V3LinkLevel14modSortByLevelEvENK3$_0clB5cxx11EPK7AstNodeSt6vectorIP13AstNodeModuleSaIS6_EE", ptr @.str.540, ptr @.str.529, i32 59, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN11V3LinkLevel11timescalingERKSt6vectorIP13AstNodeModuleSaIS2_EE, ptr @.str.528, ptr @.str.529, i32 91, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN11V3LinkLevel11timescalingERKSt6vectorIP13AstNodeModuleSaIS2_EE, ptr @.str.530, ptr @.str.529, i32 91, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, ptr @.str.538, ptr @.str.536, i32 816, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci, ptr @.str.539, ptr @.str.27, i32 667, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK13AstNodeModule6stmtspEv, ptr @.str.534, ptr @.str.535, i32 340, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7AstNode4castI9AstPragmaS_EEPT_PT0_, ptr @.str.531, ptr @.str.536, i32 1031, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK7AstNode18warnContextPrimaryB5cxx11Ev, ptr @.str.540, ptr @.str.536, i32 818, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK7AstNode9warnOtherB5cxx11Ev, ptr @.str.540, ptr @.str.536, i32 823, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN11V3LinkLevel7wrapTopEP10AstNetlist, ptr @.str.528, ptr @.str.529, i32 162, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN11V3LinkLevel7wrapTopEP10AstNetlist, ptr @.str.530, ptr @.str.529, i32 162, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN11V3LinkLevel11wrapTopCellEP10AstNetlist, ptr @.str.528, ptr @.str.529, i32 210, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN11V3LinkLevel11wrapTopCellEP10AstNetlist, ptr @.str.530, ptr @.str.529, i32 210, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7AstNode2isI10AstPackage13AstNodeModuleEEbPKT0_, ptr @.str.531, ptr @.str.536, i32 1020, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7AstNode4castI6AstVarS_EEPT_PT0_, ptr @.str.531, ptr @.str.536, i32 1031, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK6AstVar4isIOEv, ptr @.str.531, ptr @.str.535, i32 2318, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK6AstVar4nameB5cxx11Ev, ptr @.str.534, ptr @.str.535, i32 2307, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK6AstVar9subDTypepEv, ptr @.str.534, ptr @.str.535, i32 2353, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7AstNode2isI16AstIfaceRefDType12AstNodeDTypeEEbPKT0_, ptr @.str.531, ptr @.str.536, i32 1020, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7AstNode2asI16AstIfaceRefDType12AstNodeDTypeEEPKT_PKT0_, ptr @.str.532, ptr @.str.536, i32 1067, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_, ptr @.str.531, ptr @.str.536, i32 1020, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7AstNode2asI19AstUnpackArrayDType12AstNodeDTypeEEPKT_PKT0_, ptr @.str.532, ptr @.str.536, i32 1067, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK17AstNodeArrayDType9subDTypepEv, ptr @.str.534, ptr @.str.541, i32 223, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK6AstVar5isRefEv, ptr @.str.531, ptr @.str.535, i32 2464, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK6AstVar10isConstRefEv, ptr @.str.531, ptr @.str.535, i32 2463, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK9V3Options7systemCEv, ptr @.str.531, ptr @.str.542, i32 502, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK6AstVar10isWritableEv, ptr @.str.531, ptr @.str.535, i32 2465, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7AstNode2asI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_, ptr @.str.532, ptr @.str.536, i32 1055, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK7AstNode6dtypepEv, ptr @.str.534, ptr @.str.536, i32 556, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK19AstUnpackArrayDType6rangepEv, ptr @.str.534, ptr @.str.541, i32 1454, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN11V3LinkLevel10nonWrapTopEP10AstNetlist, ptr @.str.528, ptr @.str.529, i32 420, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN11V3LinkLevel10nonWrapTopEP10AstNetlist, ptr @.str.530, ptr @.str.529, i32 420, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK9V3Options10debugLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @.str.531, ptr @.str.542, i32 474, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK9V3Options13debugSrcLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @.str.531, ptr @.str.542, i32 475, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK9V3Options9availableEv, ptr @.str.531, ptr @.str.542, i32 490, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7AstNode15unsafePrivateAsI13AstNodeModuleS_EEPT_PT0_, ptr @.str.532, ptr @.str.536, i32 1081, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK7AstNode4op1pEv, ptr @.str.534, ptr @.str.536, i32 552, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK13AstNodeModule5levelEv, ptr @.str.531, ptr @.str.535, i32 358, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN14V3ErrorGuarded10v3errorStrB5cxx11Ev, ptr @.str.540, ptr @.str.27, i32 485, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK8FileLine8warnMoreB5cxx11Ev, ptr @.str.540, ptr @.str.537, i32 436, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN14V3ErrorGuarded14errorContextedEb, ptr @.str.540, ptr @.str.27, i32 503, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZL17dumpTreeJsonLevelv, ptr @.str.531, ptr @.str.529, i32 28, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZL13dumpTreeLevelv, ptr @.str.531, ptr @.str.529, i32 28, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK9V3Options9dumpLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @.str.531, ptr @.str.542, i32 476, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK9V3Options12dumpSrcLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @.str.531, ptr @.str.542, i32 477, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK7AstNode4op2pEv, ptr @.str.534, ptr @.str.536, i32 553, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK8FileLine18warnContextPrimaryB5cxx11Ev, ptr @.str.540, ptr @.str.537, i32 442, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK8FileLine17warnContextParentB5cxx11Ev, ptr @.str.540, ptr @.str.537, i32 484, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK8FileLine9warnOtherB5cxx11Ev, ptr @.str.540, ptr @.str.537, i32 439, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN6VNTypeC2ENS_2enE, ptr @.str.531, ptr @.str.536, i32 118, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK10VDirectioncvNS_2enEEv, ptr @.str.531, ptr @.str.543, i32 1307, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK9V3Options8lintOnlyEv, ptr @.str.531, ptr @.str.542, i32 608, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZeqRK8VVarTypeNS_2enE, ptr @.str.531, ptr @.str.543, i32 2155, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK6AstVar7varTypeEv, ptr @.str.531, ptr @.str.535, i32 2312, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK6AstVar11childDTypepEv, ptr @.str.534, ptr @.str.535, i32 2303, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7AstNode15unsafePrivateAsI12AstNodeDTypeS_EEPT_PT0_, ptr @.str.532, ptr @.str.536, i32 1081, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK17AstNodeArrayDType11childDTypepEv, ptr @.str.534, ptr @.str.541, i32 204, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK10VDirection5isRefEv, ptr @.str.531, ptr @.str.543, i32 1326, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK10VDirection10isConstRefEv, ptr @.str.531, ptr @.str.543, i32 1327, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7AstNode10prettyNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @.str.532, ptr @.str.536, i32 610, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK10VDirection10isWritableEv, ptr @.str.531, ptr @.str.543, i32 1325, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN8VVarTypeC2ENS_2enE, ptr @.str.531, ptr @.str.543, i32 2081, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN8VVarTypeC2Ev, ptr @.str.531, ptr @.str.543, i32 2079, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7AstNode15unsafePrivateAsI8AstRangeS_EEPT_PT0_, ptr @.str.532, ptr @.str.536, i32 1081, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZeqRK6VNTypeNS_2enE, ptr @.str.532, ptr @.str.536, i32 127, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK7AstNode4typeEv, ptr @.str.531, ptr @.str.536, i32 538, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK7AstNode8typeNameEv, ptr @.str.531, ptr @.str.536, i32 539, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK6VNTypecvNS_2enEEv, ptr @.str.531, ptr @.str.536, i32 119, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK6VNType5asciiEv, ptr @.str.531, ptr @.str.544, i32 565, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK7AstNode4op4pEv, ptr @.str.534, ptr @.str.536, i32 555, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZNK7AstNode4op3pEv, ptr @.str.534, ptr @.str.536, i32 554, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7AstNode15unsafePrivateAsI16AstIfaceRefDType12AstNodeDTypeEEPKT_PKT0_, ptr @.str.532, ptr @.str.536, i32 1090, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7AstNode15unsafePrivateAsI19AstUnpackArrayDType12AstNodeDTypeEEPKT_PKT0_, ptr @.str.532, ptr @.str.536, i32 1090, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @_ZN7AstNode15unsafePrivateAsI19AstUnpackArrayDType12AstNodeDTypeEEPT_PT0_, ptr @.str.532, ptr @.str.536, i32 1081, ptr null }], section "llvm.metadata"

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11V3LinkLevel14modSortByLevelEv() #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::vector", align 8       ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::vector", align 8      ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = tail call noundef i32 @_ZL5debugv()
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.q, !prof !18

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull @.str.1, i32 noundef 42)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = load ptr, ptr %1, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !25
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.e, i64 noundef %i.g)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.2, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.j = load ptr, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98
  %i.m = load i64, ptr %i.k, align 8, !tbaa !26
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !25   ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !26
  %.not = icmp eq i8 %i.t, 10
  %i.u = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i100: ; preds = %bb.e
  %i.x = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.x)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.e
  %i.y = load i64, ptr %i.v, align 8, !tbaa !26
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #24
  %.pre = load ptr, ptr %2, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  %i.aa = phi ptr [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i100 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !26
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.not, label %bb.l, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 10)
          to label %bb.l unwind label %bb.g       ; 0 uses

bb.g:                                             ; preds = %bb.b, %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105: ; preds = %bb.i
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !26
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105 ], [ %i.ai, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.p

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

bb.k:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.aq = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.k
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !26
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108, %bb.j
  %.pn47 = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108 ], [ %i.ap, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.p

bb.l:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %4, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !25
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.av, i64 noundef %i.ax)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit111 unwind label %bb.o ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit111: ; preds = %bb.m
  %i.az = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit111
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !26
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

bb.o:                                             ; preds = %bb.m
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115: ; preds = %bb.o
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !26
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115, %bb.n
  %.pn49 = phi { ptr, i32 } [ %i.be, %bb.n ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i115 ], [ %i.bf, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %bb.g
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ %i.ag, %bb.g ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #23
  br label %bb.ek

bb.q:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.bl = load ptr, ptr @v3Global, align 8, !tbaa !91
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !101 ; 2 uses
  %.not52398 = icmp eq ptr %i.bn, null
  br i1 %.not52398, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE9push_backERKS1_.exit154
  %27 = ptrtoint ptr %.sroa.12.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.q
  %.sroa.18.0.lcssa = phi ptr [ null, %bb.q ], [ %.sroa.18.2, %._crit_edge.loopexit ] ; 11 uses
  %.sroa.12.0.lcssa = phi i64 [ 0, %bb.q ], [ %27, %._crit_edge.loopexit ]
  %.sroa.0314.0.lcssa = phi ptr [ null, %bb.q ], [ %.sroa.0314.2, %._crit_edge.loopexit ] ; 15 uses
  %i.bx = ptrtoint ptr %.sroa.0314.0.lcssa to i64 ; 6 uses
  %i.by = sub i64 %.sroa.12.0.lcssa, %i.bx        ; 7 uses
  %i.bz = icmp ugt i64 %i.by, 8
  br i1 %i.bz, label %bb.ba, label %bb.cf

.loopexit:                                        ; preds = %bb.s, %_ZNKSt6vectorIP13AstNodeModuleSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIP13AstNodeModuleSaIS1_EE12_M_check_lenEmPKc.exit.i.i146
  %.sroa.18.1.ph = phi ptr [ %.sroa.18.0399, %bb.s ], [ %.sroa.12.0400, %_ZNKSt6vectorIP13AstNodeModuleSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.18.2, %_ZNKSt6vectorIP13AstNodeModuleSaIS1_EE12_M_check_lenEmPKc.exit.i.i146 ]
  %.sroa.0314.1.ph = phi ptr [ %.sroa.0314.0401, %bb.s ], [ %.sroa.0314.0401, %_ZNKSt6vectorIP13AstNodeModuleSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0314.2, %_ZNKSt6vectorIP13AstNodeModuleSaIS1_EE12_M_check_lenEmPKc.exit.i.i146 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

.loopexit.split-lp:                               ; preds = %bb.aq, %bb.av, %bb.az, %.noexc157, %.noexc159, %.noexc161, %.noexc160, %.noexc158
  %.sroa.18.1.ph338 = phi ptr [ %.sroa.12.0400, %bb.aq ], [ %.sroa.18.2, %bb.az ], [ %.sroa.18.2, %.noexc157 ], [ %.sroa.18.2, %.noexc158 ], [ %.sroa.18.2, %.noexc159 ], [ %.sroa.18.2, %.noexc160 ], [ %.sroa.18.2, %.noexc161 ], [ %.sroa.18.2, %bb.av ]
  %.sroa.0314.1.ph339 = phi ptr [ %.sroa.0314.0401, %bb.aq ], [ %.sroa.0314.2, %bb.az ], [ %.sroa.0314.2, %.noexc157 ], [ %.sroa.0314.2, %.noexc158 ], [ %.sroa.0314.2, %.noexc159 ], [ %.sroa.0314.2, %.noexc160 ], [ %.sroa.0314.2, %.noexc161 ], [ %.sroa.0314.2, %bb.av ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit:   ; preds = %bb.ay, %.lr.ph
  %.pre455460 = phi ptr [ null, %.lr.ph ], [ %.pre455461, %bb.ay ] ; 4 uses
  %i.ca = phi ptr [ null, %.lr.ph ], [ %i.fs, %bb.ay ] ; 3 uses
  %i.cb = phi ptr [ null, %.lr.ph ], [ %i.ft, %bb.ay ] ; 4 uses
  %storemerge402 = phi ptr [ %i.bn, %.lr.ph ], [ %i.fv, %bb.ay ] ; 8 uses
  %.sroa.0314.0401 = phi ptr [ null, %.lr.ph ], [ %.sroa.0314.2, %bb.ay ] ; 11 uses
  %.sroa.12.0400 = phi ptr [ null, %.lr.ph ], [ %.sroa.12.1, %bb.ay ] ; 8 uses
  %.sroa.18.0399 = phi ptr [ null, %.lr.ph ], [ %.sroa.18.2, %bb.ay ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %storemerge402, i64 284
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !106
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %bb.r, label %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE9push_backERKS1_.exit

bb.r:                                             ; preds = %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %storemerge402, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.cf, align 8, !tbaa !107
  %i.cg = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 388
  br i1 %i.cg, label %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE9push_backERKS1_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = invoke noundef i32 @_ZL5debugv()
          to label %bb.t unwind label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.ci = icmp sgt i32 %i.ch, 8
  br i1 %i.ci, label %bb.u, label %bb.an, !prof !18

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118 unwind label %bb.ac ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull @.str.1, i32 noundef 51)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118
  %i.ck = load ptr, ptr %7, align 8, !tbaa !24
  %i.cl = load i64, ptr %i.bo, align 8, !tbaa !25
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.ck, i64 noundef %i.cl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119 unwind label %bb.ae ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119: ; preds = %bb.w
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull @.str.3, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit120 unwind label %bb.ae ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit120: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull %storemerge402)
          to label %bb.x unwind label %bb.ae      ; 0 uses

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit120
  %i.cp = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.bp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.x
  %i.cr = load i64, ptr %i.bp, align 8, !tbaa !26
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.y unwind label %bb.af

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.z unwind label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.ct = load i64, ptr %i.bq, align 8, !tbaa !25 ; 2 uses
  %i.cu = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.ct
  %i.cw = getelementptr i8, ptr %i.cv, i64 -1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !26
  %.not89 = icmp eq i8 %i.cx, 10
  %i.cy = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.br
  br i1 %i.cz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i125: ; preds = %bb.z
  %i.da = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.da)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.z
  %i.db = load i64, ptr %i.br, align 8, !tbaa !26
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #24
  %.pre453 = load ptr, ptr %8, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  %i.dd = phi ptr [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i125 ], [ %.pre453, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.de = icmp eq ptr %i.dd, %i.bs
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  %i.df = load i64, ptr %i.bs, align 8, !tbaa !26
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %.not89, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %i.dh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 10)
          to label %bb.ah unwind label %bb.ac     ; 0 uses

bb.ab:                                            ; preds = %bb.u
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ac:                                            ; preds = %bb.v, %bb.aa
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit118
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

bb.ae:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119, %bb.w, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit120
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = load ptr, ptr %7, align 8, !tbaa !24    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.bp
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.ae
  %i.do = load i64, ptr %i.bp, align 8, !tbaa !26
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %bb.ad
  %.pn85 = phi { ptr, i32 } [ %i.dk, %bb.ad ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %i.dl, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.al

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

bb.ag:                                            ; preds = %bb.y
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.ds = load ptr, ptr %8, align 8, !tbaa !24    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.bs
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %bb.ag
  %i.du = load i64, ptr %i.bs, align 8, !tbaa !26
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133, %bb.af
  %.pn87 = phi { ptr, i32 } [ %i.dq, %bb.af ], [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133 ], [ %i.dr, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.al

bb.ah:                                            ; preds = %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(112) %6)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dw = load ptr, ptr %10, align 8, !tbaa !24
  %i.dx = load i64, ptr %i.bt, align 8, !tbaa !25
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.dw, i64 noundef %i.dx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit136 unwind label %bb.ak ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit136: ; preds = %bb.ai
  %i.dz = load ptr, ptr %10, align 8, !tbaa !24   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.bu
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit136
  %i.eb = load i64, ptr %i.bu, align 8, !tbaa !26
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

bb.ak:                                            ; preds = %bb.ai
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = load ptr, ptr %10, align 8, !tbaa !24   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.bu
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %bb.ak
  %i.eh = load i64, ptr %i.bu, align 8, !tbaa !26
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140, %bb.aj
  %.pn90 = phi { ptr, i32 } [ %i.ed, %bb.aj ], [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140 ], [ %i.ee, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %bb.ac
  %.pn90.pn = phi { ptr, i32 } [ %.pn90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ], [ %i.dj, %bb.ac ], [ %.pn87, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ %.pn85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %6) #23
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ab
  %.pn90.pn.pn = phi { ptr, i32 } [ %.pn90.pn, %bb.al ], [ %i.di, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ei

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %bb.t
  %.not.i143 = icmp eq ptr %.sroa.12.0400, %.sroa.18.0399
  br i1 %.not.i143, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store ptr %storemerge402, ptr %.sroa.12.0400, align 8, !tbaa !109
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.12.0400, i64 8
  br label %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE9push_backERKS1_.exit

bb.ap:                                            ; preds = %bb.an
  %i.ek = ptrtoint ptr %.sroa.12.0400 to i64
  %i.el = ptrtoint ptr %.sroa.0314.0401 to i64
  %i.em = sub i64 %i.ek, %i.el                    ; 6 uses
  %i.en = icmp eq i64 %i.em, 9223372036854775800
  br i1 %i.en, label %bb.aq, label %_ZNKSt6vectorIP13AstNodeModuleSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.527) #25
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.aq
  unreachable

_ZNKSt6vectorIP13AstNodeModuleSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ap
  %i.eo = ashr exact i64 %i.em, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.eo, i64 1)
  %i.ep = add nsw i64 %.sroa.speculated.i.i.i, %i.eo ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.eo
  %i.er = call i64 @llvm.umin.i64(i64 %i.ep, i64 1152921504606846975)
  %i.es = select i1 %i.eq, i64 1152921504606846975, i64 %i.er ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.es, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.et = shl nuw nsw i64 %i.es, 3
  %i.eu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #26
          to label %.noexc144 unwind label %.loopexit ; 4 uses

.noexc144:                                        ; preds = %_ZNKSt6vectorIP13AstNodeModuleSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 %i.em ; 2 uses
  store ptr %storemerge402, ptr %i.ev, align 8, !tbaa !109
  %i.ew = icmp sgt i64 %i.em, 0
  br i1 %i.ew, label %bb.ar, label %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.ar:                                            ; preds = %.noexc144
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eu, ptr align 8 %.sroa.0314.0401, i64 %i.em, i1 false)
  br label %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP13AstNodeModuleSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.ar, %.noexc144
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0314.0401, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0314.0401, i64 noundef %i.em) #24
  %.pre454.pre = load ptr, ptr %i.bv, align 8, !tbaa !245
  %.pre455.pre = load ptr, ptr %i.bw, align 8, !tbaa !246
  br label %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP13AstNodeModuleSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.as, %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %.pre455 = phi ptr [ %.pre455.pre, %bb.as ], [ %.pre455460, %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i ] ; 2 uses
  %.pre454 = phi ptr [ %.pre454.pre, %bb.as ], [ %i.cb, %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i ]
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.es
  br label %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP13AstNodeModuleSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ao, %bb.r, %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit
  %.pre455462 = phi ptr [ %.pre455460, %bb.r ], [ %.pre455460, %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit ], [ %.pre455, %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.pre455460, %bb.ao ]
  %i.ez = phi ptr [ %i.ca, %bb.r ], [ %i.ca, %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit ], [ %.pre455, %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ca, %bb.ao ] ; 3 uses
  %i.fa = phi ptr [ %i.cb, %bb.r ], [ %i.cb, %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit ], [ %.pre454, %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.cb, %bb.ao ] ; 3 uses
  %.sroa.18.2 = phi ptr [ %.sroa.18.0399, %bb.r ], [ %.sroa.18.0399, %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit ], [ %i.ey, %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.18.0399, %bb.ao ] ; 10 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0400, %bb.r ], [ %.sroa.12.0400, %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit ], [ %i.ex, %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ej, %bb.ao ] ; 2 uses
  %.sroa.0314.2 = phi ptr [ %.sroa.0314.0401, %bb.r ], [ %.sroa.0314.0401, %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit ], [ %i.eu, %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0314.0401, %bb.ao ] ; 10 uses
  %.not.i145 = icmp eq ptr %i.fa, %i.ez
  br i1 %.not.i145, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE9push_backERKS1_.exit
  store ptr %storemerge402, ptr %i.fa, align 8, !tbaa !109
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  store ptr %i.fb, ptr %i.bv, align 8, !tbaa !245
  br label %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE9push_backERKS1_.exit154

bb.au:                                            ; preds = %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE9push_backERKS1_.exit
  %i.fc = load ptr, ptr %5, align 8, !tbaa !247   ; 4 uses
  %i.fd = ptrtoint ptr %i.ez to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 6 uses
  %i.fg = icmp eq i64 %i.ff, 9223372036854775800
  br i1 %i.fg, label %bb.av, label %_ZNKSt6vectorIP13AstNodeModuleSaIS1_EE12_M_check_lenEmPKc.exit.i.i146

bb.av:                                            ; preds = %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.527) #25
          to label %.noexc152 unwind label %.loopexit.split-lp

.noexc152:                                        ; preds = %bb.av
  unreachable

_ZNKSt6vectorIP13AstNodeModuleSaIS1_EE12_M_check_lenEmPKc.exit.i.i146: ; preds = %bb.au
  %i.fh = ashr exact i64 %i.ff, 3                 ; 3 uses
  %.sroa.speculated.i.i.i147 = call i64 @llvm.umax.i64(i64 %i.fh, i64 1)
  %i.fi = add nsw i64 %.sroa.speculated.i.i.i147, %i.fh ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.fh
  %i.fk = call i64 @llvm.umin.i64(i64 %i.fi, i64 1152921504606846975)
  %i.fl = select i1 %i.fj, i64 1152921504606846975, i64 %i.fk ; 3 uses
  %.not.i.i.i148 = icmp ne i64 %i.fl, 0
  call void @llvm.assume(i1 %.not.i.i.i148)
  %i.fm = shl nuw nsw i64 %i.fl, 3
  %i.fn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #26
          to label %.noexc153 unwind label %.loopexit ; 4 uses

.noexc153:                                        ; preds = %_ZNKSt6vectorIP13AstNodeModuleSaIS1_EE12_M_check_lenEmPKc.exit.i.i146
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 %i.ff ; 2 uses
  store ptr %storemerge402, ptr %i.fo, align 8, !tbaa !109
  %i.fp = icmp sgt i64 %i.ff, 0
  br i1 %i.fp, label %bb.aw, label %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i149

bb.aw:                                            ; preds = %.noexc153
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fn, ptr align 8 %i.fc, i64 %i.ff, i1 false)
  br label %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i149

_ZNSt6vectorIP13AstNodeModuleSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i149: ; preds = %bb.aw, %.noexc153
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %.not.i17.i.i150 = icmp eq ptr %i.fc, null
  br i1 %.not.i17.i.i150, label %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i151, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i149
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.ff) #24
  br label %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i151

_ZNSt6vectorIP13AstNodeModuleSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i151: ; preds = %bb.ax, %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i149
  store ptr %i.fn, ptr %5, align 8, !tbaa !247
  store ptr %i.fq, ptr %i.bv, align 8, !tbaa !245
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fl ; 3 uses
  store ptr %i.fr, ptr %i.bw, align 8, !tbaa !246
  br label %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE9push_backERKS1_.exit154

_ZNSt6vectorIP13AstNodeModuleSaIS1_EE9push_backERKS1_.exit154: ; preds = %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i151, %bb.at
  %.pre455461 = phi ptr [ %i.fr, %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i151 ], [ %.pre455462, %bb.at ]
  %i.fs = phi ptr [ %i.fr, %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i151 ], [ %i.ez, %bb.at ]
  %i.ft = phi ptr [ %i.fq, %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i151 ], [ %i.fb, %bb.at ]
  %i.fu = getelementptr inbounds nuw i8, ptr %storemerge402, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !111 ; 5 uses
  %cond = icmp eq ptr %i.fv, null
  br i1 %cond, label %._crit_edge.loopexit, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIP13AstNodeModuleSaIS1_EE9push_backERKS1_.exit154
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 64
  %.sroa.0.0.copyload.i.i.i156 = load i16, ptr %i.fw, align 8, !tbaa !107
  %i.fx = add i16 %.sroa.0.0.copyload.i.i.i156, -391
  %spec.select.i.i = icmp ult i16 %i.fx, -7
  br i1 %spec.select.i.i, label %bb.az, label %_ZN7AstNode2asI13AstNodeModuleS_EEPT_PT0_.exit, !prof !18

bb.az:                                            ; preds = %bb.ay
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 64
  %i.fz = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.41, i32 noundef 1063)
          to label %.noexc157 unwind label %.loopexit.split-lp ; 0 uses

.noexc157:                                        ; preds = %bb.az
  %i.ga = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc158 unwind label %.loopexit.split-lp ; 2 uses

.noexc158:                                        ; preds = %.noexc157
  %i.gb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef nonnull @.str.42, i64 noundef 55)
          to label %.noexc159 unwind label %.loopexit.split-lp ; 0 uses

.noexc159:                                        ; preds = %.noexc158
  %.sroa.0.0.copyload.i.i5.i = load i16, ptr %i.fy, align 8, !tbaa !107
  %i.gc = zext i16 %.sroa.0.0.copyload.i.i5.i to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.gc
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !112
  %i.gf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef %i.ge)
          to label %.noexc160 unwind label %.loopexit.split-lp ; 2 uses

.noexc160:                                        ; preds = %.noexc159
  %i.gg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gf, ptr noundef nonnull @.str.35, i64 noundef 1)
          to label %.noexc161 unwind label %.loopexit.split-lp ; 0 uses

.noexc161:                                        ; preds = %.noexc160
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.fv, ptr noundef nonnull align 8 dereferenceable(112) %i.gf) #25
          to label %.noexc162 unwind label %.loopexit.split-lp

.noexc162:                                        ; preds = %.noexc161
  unreachable

bb.ba:                                            ; preds = %._crit_edge
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0314.0.lcssa, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !109 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 88 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !113
  %i.gl = invoke noundef zeroext i1 @_ZNK8FileLine9warnIsOffE11V3ErrorCode(ptr noundef nonnull align 8 dereferenceable(48) %i.gk, i8 85)
          to label %bb.bb unwind label %bb.br

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.gl, label %bb.cf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gm = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 85)
          to label %bb.bd unwind label %bb.bs     ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.gn = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.go = icmp eq i8 %i.gn, 0
  br i1 %i.go, label %bb.be, label %bb.bi, !prof !114

bb.be:                                            ; preds = %bb.bd
  %i.gp = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #23
  %.not.i.i = icmp eq i32 %i.gp, 0
  br i1 %.not.i.i, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.gq = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #23 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #23
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #23
  br label %.thread327

bb.bi:                                            ; preds = %bb.bg, %bb.be, %bb.bd
  %i.gs = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.26, ptr nonnull @.str.27, i32 481, ptr null) ; 2 uses
  %i.gt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gs, ptr noundef nonnull @.str.4, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164 unwind label %bb.bs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164: ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.gu = load ptr, ptr %i.gj, align 8, !tbaa !113, !noalias !248
  invoke void @_ZNK8FileLine8warnMoreB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %i.gu)
          to label %_ZNK7AstNode8warnMoreB5cxx11Ev.exit unwind label %bb.bt

_ZNK7AstNode8warnMoreB5cxx11Ev.exit:              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164
  %i.gv = load ptr, ptr %11, align 8, !tbaa !24
  %i.gw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !25
  %i.gy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gs, ptr noundef %i.gv, i64 noundef %i.gx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit167 unwind label %bb.bu ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit167: ; preds = %_ZNK7AstNode8warnMoreB5cxx11Ev.exit
  %i.gz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef nonnull @.str.5, i64 noundef 78)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit169 unwind label %bb.bu ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit169: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit167
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.ha = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.hb = icmp eq i8 %i.ha, 0
  br i1 %i.hb, label %bb.bj, label %bb.bn, !prof !114

bb.bj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit169
  %i.hc = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #23
  %.not.i170 = icmp eq i32 %i.hc, 0
  br i1 %.not.i170, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hd = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #23 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #23
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #23
  br label %.body171

bb.bn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit169, %bb.bj, %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.hf = call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 200), ptr nonnull @.str.26, ptr nonnull @.str.27, i32 468, ptr null)
  store i8 1, ptr %i.hf, align 8, !tbaa !140, !noalias !249
  %i.hg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.hg, ptr %12, align 8, !tbaa !141, !alias.scope !249
  %i.hh = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.hh, align 8, !tbaa !25, !alias.scope !249
  store i8 0, ptr %i.hg, align 8, !tbaa !26, !alias.scope !249
  %i.hi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gy, ptr noundef nonnull %i.hg, i64 noundef 0)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit174 unwind label %bb.bv

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit174: ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.hj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.hj, ptr %13, align 8, !tbaa !141, !alias.scope !250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !250
  store i64 22, ptr %i.a, align 8, !tbaa !142, !noalias !250
  %i.hk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.bo unwind label %bb.bw     ; 2 uses

bb.bo:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit174
  store ptr %i.hk, ptr %13, align 8, !tbaa !24, !alias.scope !250
  %i.hl = load i64, ptr %i.a, align 8, !tbaa !142, !noalias !250 ; 3 uses
  store i64 %i.hl, ptr %i.hj, align 8, !tbaa !26, !alias.scope !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.hk, ptr noundef nonnull align 1 dereferenceable(22) @.str.28, i64 22, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %i.hl, ptr %i.hm, align 8, !tbaa !25, !alias.scope !250
  %i.hn = load ptr, ptr %13, align 8, !tbaa !24, !alias.scope !250
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hl
  store i8 0, ptr %i.ho, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !250
  %i.hp = load ptr, ptr %13, align 8, !tbaa !24
  %i.hq = load i64, ptr %i.hm, align 8, !tbaa !25
  %i.hr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hi, ptr noundef %i.hp, i64 noundef %i.hq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit177 unwind label %bb.bx

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit177: ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %28 = icmp ugt i64 %i.by, 9223372036854775800
  br i1 %28, label %.noexc.i.i, label %_ZNSt15__new_allocatorIP13AstNodeModuleE8allocateEmPKv.exit.i.i.i.i, !prof !18

.noexc.i.i:                                       ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit177
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc178 unwind label %bb.by

.noexc178:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIP13AstNodeModuleE8allocateEmPKv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit177
  %i.hs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #26
          to label %.noexc179 unwind label %bb.by ; 6 uses

.noexc179:                                        ; preds = %_ZNSt15__new_allocatorIP13AstNodeModuleE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.hs, ptr %15, align 8, !tbaa !247
  %i.ht = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %i.hs, ptr %i.ht, align 8, !tbaa !245
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.by ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !246
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hs, ptr nonnull align 8 %.sroa.0314.0.lcssa, i64 %i.by, i1 false)
  store ptr %i.hu, ptr %i.ht, align 8, !tbaa !245
  invoke void @"_ZZN11V3LinkLevel14modSortByLevelEvENK3$_0clB5cxx11EPK7AstNodeSt6vectorIP13AstNodeModuleSaIS6_EE"(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nonnull align 1 poison, ptr noundef nonnull %i.gi, ptr noundef nonnull align 8 %15)
          to label %bb.bp unwind label %bb.bz

bb.bp:                                            ; preds = %.noexc179
  %i.hw = load ptr, ptr %14, align 8, !tbaa !24
  %i.hx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !25
  %i.hz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hr, ptr noundef %i.hw, i64 noundef %i.hy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit181 unwind label %bb.ca

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit181: ; preds = %bb.bp
  invoke void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.gi, ptr noundef nonnull align 8 dereferenceable(112) %i.hz)
          to label %bb.bq unwind label %bb.ca

bb.bq:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit181
  %i.ia = load ptr, ptr %14, align 8, !tbaa !24   ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNSt6vectorIP13AstNodeModuleSaIS1_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %bb.bq
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !26
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ie) #24
  br label %_ZNSt6vectorIP13AstNodeModuleSaIS1_EED2Ev.exit

_ZNSt6vectorIP13AstNodeModuleSaIS1_EED2Ev.exit:   ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef %i.by) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.if = load ptr, ptr %13, align 8, !tbaa !24   ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.hj
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %_ZNSt6vectorIP13AstNodeModuleSaIS1_EED2Ev.exit
  %i.ih = load i64, ptr %i.hj, align 8, !tbaa !26
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %_ZNSt6vectorIP13AstNodeModuleSaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.ij = load ptr, ptr %12, align 8, !tbaa !24   ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.hg
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188
  %i.il = load i64, ptr %i.hg, align 8, !tbaa !26
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.in = load ptr, ptr %11, align 8, !tbaa !24   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !26
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ir) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.cf

bb.br:                                            ; preds = %bb.ba
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %.thread327

bb.bs:                                            ; preds = %bb.bi, %bb.bc
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %.thread327

bb.bt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit164
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

bb.bu:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit167, %_ZNK7AstNode8warnMoreB5cxx11Ev.exit
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.bv:                                            ; preds = %bb.bn
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.bw:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit174
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

bb.bx:                                            ; preds = %bb.bo
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.by:                                            ; preds = %_ZNSt15__new_allocatorIP13AstNodeModuleE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP13AstNodeModuleSaIS1_EED2Ev.exit199

bb.bz:                                            ; preds = %.noexc179
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bp, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit181
  %i.jb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jc = load ptr, ptr %14, align 8, !tbaa !24   ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %bb.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %bb.ca
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !26
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #24
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
  %.pn53 = phi { ptr, i32 } [ %i.ja, %bb.bz ], [ %i.jb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195 ], [ %i.jb, %bb.ca ]
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef %i.by) #24
  br label %_ZNSt6vectorIP13AstNodeModuleSaIS1_EED2Ev.exit199

_ZNSt6vectorIP13AstNodeModuleSaIS1_EED2Ev.exit199: ; preds = %bb.cb, %bb.by
  %.pn53.pn = phi { ptr, i32 } [ %i.iz, %bb.by ], [ %.pn53, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIP13AstNodeModuleSaIS1_EED2Ev.exit199, %bb.bx
  %.pn53.pn.pn = phi { ptr, i32 } [ %.pn53.pn, %_ZNSt6vectorIP13AstNodeModuleSaIS1_EED2Ev.exit199 ], [ %i.iy, %bb.bx ] ; 2 uses
  %i.jh = load ptr, ptr %13, align 8, !tbaa !24   ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.hj
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200: ; preds = %bb.cc
  %i.jj = load i64, ptr %i.hj, align 8, !tbaa !26
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200, %bb.bw
  %.pn53.pn.pn.pn = phi { ptr, i32 } [ %i.ix, %bb.bw ], [ %.pn53.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200 ], [ %.pn53.pn.pn, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %bb.bv
  %.pn53.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %i.iw, %bb.bv ] ; 2 uses
  %i.jl = load ptr, ptr %12, align 8, !tbaa !24   ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.hg
  br i1 %i.jm, label %.body171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203: ; preds = %bb.cd
  %i.jn = load i64, ptr %i.hg, align 8, !tbaa !26
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jo) #24
  br label %.body171

.body171:                                         ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203, %bb.bm
  %.pn53.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.he, %bb.bm ], [ %.pn53.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203 ], [ %.pn53.pn.pn.pn.pn, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.ce

bb.ce:                                            ; preds = %.body171, %bb.bu
  %.pn53.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn53.pn.pn.pn.pn.pn, %.body171 ], [ %i.iv, %bb.bu ] ; 2 uses
  %i.jp = load ptr, ptr %11, align 8, !tbaa !24   ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %bb.ce
  %i.js = load i64, ptr %i.jq, align 8, !tbaa !26
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.jt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206, %bb.bt
  %.pn53.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.iu, %bb.bt ], [ %.pn53.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206 ], [ %.pn53.pn.pn.pn.pn.pn.pn, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %.thread327

bb.cf:                                            ; preds = %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %._crit_edge
  invoke void @_ZN11V3LinkLevel11timescalingERKSt6vectorIP13AstNodeModuleSaIS2_EE(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.cg unwind label %bb.co

bb.cg:                                            ; preds = %bb.cf
  %i.ju = load ptr, ptr %5, align 8, !tbaa !143   ; 5 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !143 ; 4 uses
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterI8CmpLevelEEEvT_SD_T0_(ptr %i.ju, ptr %i.jw)
          to label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEE8CmpLevelEvT_SA_T0_.exit unwind label %bb.co

_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEE8CmpLevelEvT_SA_T0_.exit: ; preds = %bb.cg
  %i.jx = invoke noundef i32 @_ZL5debugv()
          to label %bb.ch unwind label %bb.co

bb.ch:                                            ; preds = %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEE8CmpLevelEvT_SA_T0_.exit
  %i.jy = icmp sgt i32 %i.jx, 8
  br i1 %i.jy, label %bb.ci, label %bb.db, !prof !18

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %16)
          to label %bb.cj unwind label %bb.cp

bb.cj:                                            ; preds = %bb.ci
  %i.jz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211 unwind label %bb.cq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211: ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull @.str.1, i32 noundef 83)
          to label %bb.ck unwind label %bb.cr

bb.ck:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211
  %i.ka = load ptr, ptr %17, align 8, !tbaa !24
  %i.kb = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !25
  %i.kd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %i.ka, i64 noundef %i.kc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit213 unwind label %bb.cs

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit213: ; preds = %bb.ck
  %i.ke = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kd, ptr noundef nonnull @.str.6, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215 unwind label %bb.cs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit213
  %i.kf = load ptr, ptr %17, align 8, !tbaa !24   ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.kh = icmp eq ptr %i.kf, %i.kg
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215
  %i.ki = load i64, ptr %i.kg, align 8, !tbaa !26
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.kj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(112) %16)
          to label %bb.cl unwind label %bb.ct

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(112) %16)
          to label %bb.cm unwind label %bb.cu

bb.cm:                                            ; preds = %bb.cl
  %i.kk = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !25 ; 2 uses
  %i.km = load ptr, ptr %18, align 8, !tbaa !24   ; 2 uses
  %i.kn = getelementptr i8, ptr %i.km, i64 %i.kl
  %i.ko = getelementptr i8, ptr %i.kn, i64 -1
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !26
  %.not68 = icmp eq i8 %i.kp, 10
  %i.kq = load ptr, ptr %19, align 8, !tbaa !24   ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ks = icmp eq ptr %i.kq, %i.kr
  br i1 %i.ks, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i220, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i220: ; preds = %bb.cm
  %i.kt = icmp ult i64 %i.kl, 16
  call void @llvm.assume(i1 %i.kt)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %bb.cm
  %i.ku = load i64, ptr %i.kr, align 8, !tbaa !26
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.kv) #24
  %.pre456 = load ptr, ptr %18, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219
  %i.kw = phi ptr [ %i.km, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i220 ], [ %.pre456, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.kx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ky = icmp eq ptr %i.kw, %i.kx
  br i1 %i.ky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %i.kz = load i64, ptr %i.kx, align 8, !tbaa !26
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.la) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br i1 %.not68, label %bb.cv, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  %i.lb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %16, i8 noundef signext 10)
          to label %bb.cv unwind label %bb.cq     ; 0 uses

bb.co:                                            ; preds = %bb.df, %bb.cg, %._crit_edge413, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit241, %bb.de, %bb.dd, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPP13AstNodeModuleSt6vectorIS3_SaIS3_EEEE8CmpLevelEvT_SA_T0_.exit, %bb.cf
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ei

bb.cp:                                            ; preds = %bb.ci
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cq:                                            ; preds = %bb.cj, %bb.cn
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cr:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit211
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

bb.cs:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit213, %bb.ck
  %i.lg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lh = load ptr, ptr %17, align 8, !tbaa !24   ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %bb.cs
  %i.lk = load i64, ptr %i.li, align 8, !tbaa !26
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.ll) #24
end_hunk_0
