Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/gennorm2?download=true
inline.NumInlined: 109
inline.NumDeleted: 70
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UOption = type { ptr, ptr, ptr, ptr, i8, i8, i8 }
%"class.icu_78::IcuToolErrorCode" = type { %"class.icu_78::ErrorCode.base", ptr }
%"class.icu_78::ErrorCode.base" = type <{ ptr, i32 }>
%"class.icu_78::LocalPointer" = type { %"class.icu_78::LocalPointerBase" }
%"class.icu_78::LocalPointerBase" = type { ptr }
%"class.icu_78::CharString" = type { %"class.icu_78::MaybeStackArray", i32, [4 x i8] }
%"class.icu_78::MaybeStackArray" = type <{ ptr, i32, i8, [40 x i8], [3 x i8] }>
%"class.icu_78::StringPiece" = type <{ ptr, i32, [4 x i8] }>
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.1 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.1 = type { i64, [8 x i8] }
%"class.icu_78::UnicodeString" = type { %"class.icu_78::Replaceable", %"union.icu_78::UnicodeString::StackBufferOrFields" }
%"class.icu_78::Replaceable" = type { %"class.icu_78::UObject" }
%"class.icu_78::UObject" = type { ptr }
%"union.icu_78::UnicodeString::StackBufferOrFields" = type { %struct.anon.0, [32 x i8] }
%struct.anon.0 = type { i16, i32, i32, ptr }
%"class.icu_78::ConstChar16Ptr" = type { ptr }

$_ZN6icu_7810CharStringD2Ev = comdat any

$_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEED2Ev = comdat any

$_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZN6icu_789beVerboseE = dso_local local_unnamed_addr global i8 0, align 1
@_ZN6icu_7813haveCopyrightE = dso_local local_unnamed_addr global i8 1, align 1
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN6icu_78L7optionsE = internal global [10 x %struct.UOption] [%struct.UOption { ptr @.str.20, ptr null, ptr null, ptr null, i8 104, i8 0, i8 0 }, %struct.UOption { ptr @.str.20, ptr null, ptr null, ptr null, i8 63, i8 0, i8 0 }, %struct.UOption { ptr @.str.21, ptr null, ptr null, ptr null, i8 118, i8 0, i8 0 }, %struct.UOption { ptr @.str.22, ptr null, ptr null, ptr null, i8 99, i8 0, i8 0 }, %struct.UOption { ptr @.str.23, ptr null, ptr null, ptr null, i8 115, i8 1, i8 0 }, %struct.UOption { ptr @.str.24, ptr null, ptr null, ptr null, i8 111, i8 1, i8 0 }, %struct.UOption { ptr @.str.25, ptr null, ptr null, ptr null, i8 117, i8 1, i8 0 }, %struct.UOption { ptr @.str.26, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0 }, %struct.UOption { ptr @.str.27, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0 }, %struct.UOption { ptr @.str.28, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0 }], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"error in command line argument \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [650 x i8] c"Usage: %s [-options] infiles+ -o outputfilename\0A\0AReads the infiles with normalization data and\0Acreates a binary file, or a C source file (--csource), with the data,\0Aor writes a data file with the combined data (--combined).\0ASee https://unicode-org.github.io/icu/userguide/transforms/normalization#data-file-syntax\0A\0AAlternate usage: %s [-options] a.txt b.txt minus p.txt q.txt -o outputfilename\0A\0AComputes the difference of (a, b) minus (p, q) and writes the diff data\0Ain input-file syntax to the outputfilename.\0AIt is then possible to build (p, q, diff) to get the same data as (a, b).\0A(Useful for computing minimal incremental mapping data files.)\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [204 x i8] c"Options:\0A\09-h or -? or --help  this usage text\0A\09-v or --verbose     verbose output\0A\09-c or --copyright   include a copyright notice\0A\09-u or --unicode     Unicode version, followed by the version like 5.2.0\0A\00", align 1
@.str.4 = private unnamed_addr constant [292 x i8] c"\09-s or --sourcedir   source directory, followed by the path\0A\09-o or --output      output filename\0A\09      --csource     writes a C source file with initializers\0A\09      --combined    writes a .txt file (input-file syntax) with the\0A\09                    combined data from all of the input files\0A\00", align 1
@.str.5 = private unnamed_addr constant [330 x i8] c"\09      --fast        optimize the data for fast normalization,\0A\09                    which might increase its size  (Writes fully decomposed\0A\09                    regular mappings instead of delta mappings.\0A\09                    You should measure the runtime speed to make sure that\0A\09                    this is a good trade-off.)\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"gennorm2/main()\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"gennorm2: processing %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"gennorm2 error: only one 'minus' can be specified\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"gennorm2 error: unable to open %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"gennorm2/parseFile()\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Unicode\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"gennorm2 error: parsing code point range from %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [64 x i8] c"gennorm2 error: value or mapping for surrogate code points: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"gennorm2 error: parsing ccc from %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"gennorm2 error: parsing remove-mapping %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"gennorm2 error: parsing mapping string from %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [69 x i8] c"gennorm2 error: round-trip mapping for more than 1 code point on %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"gennorm2 error: unrecognized data line %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sourcedir\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"unicode\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"csource\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"combined\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@_ZTVN6icu_7816IcuToolErrorCodeE = external constant { [5 x ptr] }, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::IcuToolErrorCode", align 8 ; 10 uses
  %3 = alloca %"class.icu_78::LocalPointer", align 8 ; 7 uses
  %4 = alloca %"class.icu_78::LocalPointer", align 8 ; 7 uses
  %5 = alloca %"class.icu_78::LocalPointer", align 8 ; 10 uses
  %6 = alloca %"class.icu_78::CharString", align 8 ; 18 uses
  %7 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %8 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %9 = alloca %"class.std::basic_ifstream", align 8 ; 9 uses
  store ptr @.str, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_78L7optionsE, i64 168), align 8, !tbaa !43
  %i.a = tail call i32 @u_parseArgs(i32 noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef nonnull @_ZN6icu_78L7optionsE) ; 3 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.d = sub nsw i32 0, %i.a
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.1, ptr noundef %i.g) #15 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_78L7optionsE, i64 234), align 2, !tbaa !44
  %.not = icmp eq i8 %i.i, 0
  %spec.select = select i1 %.not, i32 -1, i32 %i.a ; 3 uses
  %i.j = icmp slt i32 %spec.select, 2
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_78L7optionsE, i64 34), align 2
  %i.l = icmp ne i8 %i.k, 0
  %or.cond = select i1 %i.j, i1 true, i1 %i.l
  %i.m = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_78L7optionsE, i64 74), align 2
  %i.n = icmp ne i8 %i.m, 0
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.n
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.p = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.2, ptr noundef %i.p, ptr noundef %i.p) #15 ; 0 uses
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite72 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 203, i64 1, ptr %i.r) #16 ; 0 uses
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite73 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 291, i64 1, ptr %i.s) #16 ; 0 uses
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite74 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 329, i64 1, ptr %i.t) #16 ; 0 uses
  %.052.lobit = lshr i32 %spec.select, 31
  br label %bb.bv

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_78L7optionsE, i64 114), align 2, !tbaa !44
  store i8 %i.u, ptr @_ZN6icu_789beVerboseE, align 1, !tbaa !14
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_78L7optionsE, i64 154), align 2, !tbaa !44
  store i8 %i.v, ptr @_ZN6icu_7813haveCopyrightE, align 1, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  store i32 0, ptr %i.w, align 8, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7816IcuToolErrorCodeE, i64 16), ptr %2, align 8, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @.str.6, ptr %i.x, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.y = invoke noalias noundef nonnull dereferenceable(872) ptr @_Znwm(i64 noundef 872) #18
          to label %bb.f unwind label %bb.j       ; 6 uses

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6icu_7822Normalizer2DataBuilderC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(868) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.w)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  store ptr %i.y, ptr %3, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr null, ptr %5, align 8, !tbaa !24
  invoke void @_ZNK6icu_789ErrorCode13assertSuccessEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_78L7optionsE, i64 274), align 2, !tbaa !44
  %.not56 = icmp eq i8 %i.z, 0
  br i1 %.not56, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_78L7optionsE, i64 248), align 8, !tbaa !43
  invoke void @_ZN6icu_7822Normalizer2DataBuilder17setUnicodeVersionEPKc(ptr noundef nonnull align 8 dereferenceable(868) %i.y, ptr noundef %i.aa)
          to label %bb.m unwind label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.k:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 872) #19
  br label %bb.bu

bb.l:                                             ; preds = %bb.i, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.m:                                             ; preds = %bb.i, %bb.h
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_78L7optionsE, i64 394), align 2, !tbaa !44
  %.not57 = icmp eq i8 %i.ae, 0
  br i1 %.not57, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 432
  store i32 1, ptr %i.af, align 8, !tbaa !62
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_78L7optionsE, i64 168), align 8, !tbaa !43
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef %i.ag)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ah = load ptr, ptr %7, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 13 ; 2 uses
  store ptr %i.ak, ptr %6, align 8, !tbaa !28
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 40, ptr %i.al, align 8, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i8 0, ptr %i.am, align 4, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  store i32 0, ptr %i.an, align 8, !tbaa !65
  store i8 0, ptr %i.ak, align 1, !tbaa !14
  %i.ao = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef %i.ah, i32 noundef %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %i.w)
          to label %_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev(ptr noundef nonnull align 8 dead_on_return(53) dereferenceable(60) %6) #17
  br label %.body

_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit: ; preds = %bb.p
  %i.aq = load i32, ptr %i.an, align 8, !tbaa !65 ; 4 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %bb.r, label %.lr.ph

bb.r:                                             ; preds = %_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit
  %i.as = load ptr, ptr %6, align 8, !tbaa !28
  %i.at = zext nneg i32 %i.aq to i64
  %i.au = getelementptr i8, ptr %i.as, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14
  %.not58 = icmp eq i8 %i.aw, 47
  br i1 %.not58, label %.lr.ph, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %6, i8 noundef signext 47, ptr noundef nonnull align 4 dereferenceable(4) %i.w)
          to label %bb.t unwind label %bb.v       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ay = load i32, ptr %i.an, align 8, !tbaa !65
  br label %.lr.ph

bb.u:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.s
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.lr.ph:                                           ; preds = %_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit, %bb.r, %bb.t
  %.039 = phi i32 [ %i.ay, %bb.t ], [ %i.aq, %_ZN6icu_7810CharStringC2ENS_11StringPieceER10UErrorCode.exit ], [ %i.aq, %bb.r ]
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %wide.trip.count = zext nneg i32 %spec.select to i64
  br label %bb.w

._crit_edge:                                      ; preds = %bb.be
  %i.bc = trunc nuw i8 %.1 to i1                  ; 2 uses
  br i1 %i.bc, label %bb.bg, label %bb.bi

bb.w:                                             ; preds = %.lr.ph, %bb.be
  %10 = phi ptr [ null, %.lr.ph ], [ %13, %bb.be ] ; 2 uses
  %11 = phi ptr [ null, %.lr.ph ], [ %14, %bb.be ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.be ] ; 2 uses
  %.03896 = phi i8 [ 0, %.lr.ph ], [ %.1, %bb.be ] ; 2 uses
  %.04095 = phi ptr [ %i.y, %.lr.ph ], [ %.141, %bb.be ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !13
  %i.bf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, ptr noundef %i.be) ; 0 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !13 ; 2 uses
  %i.bh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(6) @.str.8) #20
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.x, label %bb.at

bb.x:                                             ; preds = %bb.w
  %i.bj = trunc nuw i8 %.03896 to i1
  br i1 %i.bj, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !12
  %fwrite = call i64 @fwrite(ptr nonnull @.str.9, i64 50, i64 1, ptr %i.bk) #16 ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

bb.z:                                             ; preds = %bb.au, %bb.at, %bb.ao, %_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit75, %_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit, %bb.aa
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.aa:                                            ; preds = %bb.x
  %i.bm = invoke noalias noundef nonnull dereferenceable(872) ptr @_Znwm(i64 noundef 872) #18
          to label %bb.ab unwind label %bb.z      ; 6 uses

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN6icu_7822Normalizer2DataBuilderC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(868) %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %i.w)
          to label %bb.ac unwind label %bb.ap

bb.ac:                                            ; preds = %bb.ab
  %i.bn = load i32, ptr %i.w, align 8, !tbaa !66
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bp = icmp eq ptr %11, null
  br i1 %i.bp, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN6icu_7822Normalizer2DataBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(868) dereferenceable(868) %11) #17
  call void @_ZdlPvm(ptr noundef nonnull %11, i64 noundef 872) #19
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  store ptr %i.bm, ptr %4, align 8, !tbaa !24
  br label %_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

bb.ag:                                            ; preds = %bb.ac
  call void @_ZN6icu_7822Normalizer2DataBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(868) dereferenceable(868) %i.bm) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 872) #19
  br label %_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit: ; preds = %bb.ag, %bb.af
  %12 = phi ptr [ %10, %bb.ag ], [ %i.bm, %bb.af ] ; 8 uses
  %i.bq = invoke noalias noundef nonnull dereferenceable(872) ptr @_Znwm(i64 noundef 872) #18
          to label %bb.ah unwind label %bb.z      ; 5 uses

bb.ah:                                            ; preds = %_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit
  invoke void @_ZN6icu_7822Normalizer2DataBuilderC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(868) %i.bq, ptr noundef nonnull align 4 dereferenceable(4) %i.w)
          to label %bb.ai unwind label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  %i.br = load i32, ptr %i.w, align 8, !tbaa !66
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bt = load ptr, ptr %5, align 8, !tbaa !24    ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN6icu_7822Normalizer2DataBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(868) dereferenceable(868) %i.bt) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 872) #19
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  store ptr %i.bq, ptr %5, align 8, !tbaa !24
  br label %_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit75

bb.am:                                            ; preds = %bb.ai
  call void @_ZN6icu_7822Normalizer2DataBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(868) dereferenceable(868) %i.bq) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 872) #19
  br label %_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit75

_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit75: ; preds = %bb.am, %bb.al
  invoke void @_ZNK6icu_789ErrorCode13assertSuccessEv(ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %bb.an unwind label %bb.z

bb.an:                                            ; preds = %_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit75
  %i.bv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_78L7optionsE, i64 274), align 2, !tbaa !44
  %.not63 = icmp eq i8 %i.bv, 0
  br i1 %.not63, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_78L7optionsE, i64 248), align 8, !tbaa !43
  invoke void @_ZN6icu_7822Normalizer2DataBuilder17setUnicodeVersionEPKc(ptr noundef nonnull align 8 dereferenceable(868) %12, ptr noundef %i.bw)
          to label %bb.ar unwind label %bb.z

bb.ap:                                            ; preds = %bb.ab
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 872) #19
  br label %bb.bs

bb.aq:                                            ; preds = %bb.ah
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 872) #19
  br label %bb.bs

bb.ar:                                            ; preds = %bb.ao, %bb.an
  %i.bz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_78L7optionsE, i64 394), align 2, !tbaa !44
  %.not71 = icmp eq i8 %i.bz, 0
  br i1 %.not71, label %bb.be, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 432
  store i32 1, ptr %i.ca, align 8, !tbaa !62
  br label %bb.be

bb.at:                                            ; preds = %bb.w
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull %i.bg)
          to label %bb.au unwind label %bb.z

bb.au:                                            ; preds = %bb.at
  %i.cb = load ptr, ptr %8, align 8
  %i.cc = load i32, ptr %i.bb, align 8
  %i.cd = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef %i.cb, i32 noundef %i.cc, ptr noundef nonnull align 4 dereferenceable(4) %i.w)
          to label %bb.av unwind label %bb.z      ; 0 uses

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.ce = load ptr, ptr %6, align 8, !tbaa !28
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %9, ptr noundef %i.ce, i32 noundef 8)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.cf = load ptr, ptr %9, align 8, !tbaa !19
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %9, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !39
  %i.cl = and i32 %i.ck, 5
  %.not78 = icmp eq i32 %i.cl, 0
  br i1 %.not78, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.cn = load ptr, ptr %6, align 8, !tbaa !28
  %i.co = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cm, ptr noundef nonnull @.str.10, ptr noundef %i.cn) #15 ; 0 uses
  call void @exit(i32 noundef 4) #21
  unreachable

bb.ay:                                            ; preds = %bb.av
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.az:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %9) #17
  br label %bb.bf

bb.ba:                                            ; preds = %bb.aw
  invoke void @_ZN6icu_7822Normalizer2DataBuilder19setOverrideHandlingENS0_16OverrideHandlingE(ptr noundef nonnull align 8 dereferenceable(868) %.04095, i32 noundef 2)
          to label %bb.bb unwind label %bb.az

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN6icu_789parseFileERSt14basic_ifstreamIcSt11char_traitsIcEERNS_22Normalizer2DataBuilderE(ptr noundef nonnull align 8 dereferenceable(256) %9, ptr noundef nonnull align 8 dereferenceable(868) %.04095)
          to label %bb.bc unwind label %bb.az

bb.bc:                                            ; preds = %bb.bb
  %i.cr = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString8truncateEi(ptr noundef nonnull align 8 dereferenceable(60) %6, i32 noundef %.039)
          to label %bb.bd unwind label %bb.az     ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.be

bb.be:                                            ; preds = %bb.ar, %bb.as, %bb.bd
  %13 = phi ptr [ %10, %bb.bd ], [ %12, %bb.as ], [ %12, %bb.ar ] ; 2 uses
  %14 = phi ptr [ %11, %bb.bd ], [ %12, %bb.as ], [ %12, %bb.ar ]
  %.141 = phi ptr [ %.04095, %bb.bd ], [ %12, %bb.as ], [ %12, %bb.ar ] ; 4 uses
  %.1 = phi i8 [ %.03896, %bb.bd ], [ 1, %bb.as ], [ 1, %bb.ar ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.w, !llvm.loop !41

bb.bf:                                            ; preds = %bb.az, %bb.ay
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.az ], [ %i.cp, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.bs

bb.bg:                                            ; preds = %._crit_edge
  %i.cs = load ptr, ptr %3, align 8, !tbaa !24
  %i.ct = load ptr, ptr %5, align 8, !tbaa !24
  invoke void @_ZN6icu_7822Normalizer2DataBuilder11computeDiffERKS0_S2_RS0_(ptr noundef nonnull align 8 dereferenceable(868) %i.cs, ptr noundef nonnull align 8 dereferenceable(868) %13, ptr noundef nonnull align 8 dereferenceable(868) %i.ct)
          to label %15 unwind label %bb.bh

15:                                               ; preds = %bb.bg
  %16 = load ptr, ptr %5, align 8, !tbaa !24
  br label %.invoke

bb.bh:                                            ; preds = %.invoke, %bb.bl, %bb.bk, %bb.bg
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bi:                                            ; preds = %._crit_edge
  %i.cv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_78L7optionsE, i64 354), align 2, !tbaa !44
  %.not60 = icmp eq i8 %i.cv, 0
  br i1 %.not60, label %bb.bj, label %.invoke

.invoke:                                          ; preds = %bb.bi, %15
  %i.cw = phi ptr [ %16, %15 ], [ %.141, %bb.bi ]
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_78L7optionsE, i64 208), align 16, !tbaa !43
  invoke void @_ZNK6icu_7822Normalizer2DataBuilder13writeDataFileEPKcb(ptr noundef nonnull align 8 dereferenceable(868) %i.cw, ptr noundef %i.cx, i1 noundef zeroext %i.bc)
          to label %bb.bm unwind label %bb.bh

bb.bj:                                            ; preds = %bb.bi
  %i.cy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_78L7optionsE, i64 314), align 2, !tbaa !44
  %.not61 = icmp eq i8 %i.cy, 0
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6icu_78L7optionsE, i64 208), align 16, !tbaa !43 ; 2 uses
  br i1 %.not61, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN6icu_7822Normalizer2DataBuilder16writeCSourceFileEPKc(ptr noundef nonnull align 8 dereferenceable(868) %.141, ptr noundef %i.cz)
          to label %bb.bm unwind label %bb.bh

bb.bl:                                            ; preds = %bb.bj
  invoke void @_ZN6icu_7822Normalizer2DataBuilder15writeBinaryFileEPKc(ptr noundef nonnull align 8 dereferenceable(868) %.141, ptr noundef %i.cz)
          to label %bb.bm unwind label %bb.bh

bb.bm:                                            ; preds = %.invoke, %bb.bl, %bb.bk
  %i.da = load i32, ptr %i.w, align 8, !tbaa !17
  %i.db = load i8, ptr %i.am, align 4, !tbaa !29
  %.not.i.i.i = icmp eq i8 %i.db, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dc = load ptr, ptr %6, align 8, !tbaa !28
  invoke void @uprv_free_78(ptr noundef %i.dc)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #22
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.df = load ptr, ptr %5, align 8, !tbaa !24    ; 3 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit
  call void @_ZN6icu_7822Normalizer2DataBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(868) dereferenceable(868) %i.df) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef 872) #19
  br label %_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEED2Ev.exit

_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEED2Ev.exit: ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.dh = load ptr, ptr %4, align 8, !tbaa !24    ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEED2Ev.exit76, label %bb.bq

bb.bq:                                            ; preds = %_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEED2Ev.exit
  call void @_ZN6icu_7822Normalizer2DataBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(868) dereferenceable(868) %i.dh) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef 872) #19
  br label %_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEED2Ev.exit76

_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEED2Ev.exit76: ; preds = %_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEED2Ev.exit, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.dj = load ptr, ptr %3, align 8, !tbaa !24    ; 3 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEED2Ev.exit77, label %bb.br

bb.br:                                            ; preds = %_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEED2Ev.exit76
  call void @_ZN6icu_7822Normalizer2DataBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(868) dereferenceable(868) %i.dj) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 872) #19
  br label %_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEED2Ev.exit77

_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEED2Ev.exit77: ; preds = %_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEED2Ev.exit76, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZN6icu_7816IcuToolErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.bv

bb.bs:                                            ; preds = %bb.bh, %bb.bf, %bb.aq, %bb.ap, %bb.z, %bb.v
  %.pn64.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.v ], [ %i.cu, %bb.bh ], [ %i.bl, %bb.z ], [ %i.by, %bb.aq ], [ %i.bx, %bb.ap ], [ %.pn, %bb.bf ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %6) #17
  br label %.body

.body:                                            ; preds = %bb.u, %bb.q, %bb.bs
  %.pn64.pn.pn.pn = phi { ptr, i32 } [ %.pn64.pn.pn, %bb.bs ], [ %i.az, %bb.u ], [ %i.ap, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.bt

bb.bt:                                            ; preds = %.body, %bb.l
  %.pn64.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn64.pn.pn.pn, %.body ], [ %i.ad, %bb.l ]
  call void @_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #17
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.k, %bb.j
  %.pn64.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn64.pn.pn.pn.pn, %bb.bt ], [ %i.ab, %bb.j ], [ %i.ac, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @_ZN6icu_7816IcuToolErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn64.pn.pn.pn.pn.pn

bb.bv:                                            ; preds = %_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEED2Ev.exit77, %bb.d
  %.051 = phi i32 [ %.052.lobit, %bb.d ], [ %i.da, %_ZN6icu_7812LocalPointerINS_22Normalizer2DataBuilderEED2Ev.exit77 ]
  ret i32 %.051
}

declare i32 @u_parseArgs(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6icu_7822Normalizer2DataBuilderC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(868), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNK6icu_789ErrorCode13assertSuccessEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #1

declare void @_ZN6icu_7822Normalizer2DataBuilder17setUnicodeVersionEPKc(ptr noundef nonnull align 8 dereferenceable(868), ptr noundef) local_unnamed_addr #1

declare void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), i8 noundef signext, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #8 align 2

declare void @_ZN6icu_7822Normalizer2DataBuilder19setOverrideHandlingENS0_16OverrideHandlingE(ptr noundef nonnull align 8 dereferenceable(868), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6icu_789parseFileERSt14basic_ifstreamIcSt11char_traitsIcEERNS_22Normalizer2DataBuilderE(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(868) %1) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::IcuToolErrorCode", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca [31 x i16], align 16              ; 5 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7816IcuToolErrorCodeE, i64 16), ptr %2, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @.str.11, ptr %i.g, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !75
  store i8 0, ptr %i.h, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.j = load ptr, ptr %0, align 8, !tbaa !19
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !83   ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i122, label %._crit_edge123, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

._crit_edge123:                                   ; preds = %.backedge, %bb.a
  invoke void @_ZSt16__throw_bad_castv() #23
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %._crit_edge123
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a, %.backedge
  %i.p = phi ptr [ %i.do, %.backedge ], [ %i.o, %bb.a ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load i8, ptr %i.q, align 8, !tbaa !88
  %.not.i1.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i1.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 67
  %i.t = load i8, ptr %i.s, align 1, !tbaa !14
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

end_hunk_0
