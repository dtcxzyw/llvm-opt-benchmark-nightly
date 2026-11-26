Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/gflags_reporting?download=true
inline.NumInlined: 549
inline.NumDeleted: 184
begin_hunk_0

$_ZN6google20InternalStringPrintfEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcP13__va_list_tag = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN6google12StringPrintfB5cxx11EPKcz = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZN6google19CommandLineFlagInfoD2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

@_ZN3fLB10FLAGS_helpE = global i8 0, align 1, !guid !12
@_ZN3fLBL6o_helpE = internal global %"class.google::FlagRegisterer" zeroinitializer, align 1, !guid !13
@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1, !guid !14
@.str.1 = private unnamed_addr constant [60 x i8] c"show help on all flags [tip: all flags can have two dashes]\00", align 1, !guid !15
@.str.2 = private unnamed_addr constant [75 x i8] c"/opt-bench/work/velox/velox/build/_deps/gflags-src/src/gflags_reporting.cc\00", align 1, !guid !16
@_ZN3fLBL12FLAGS_nohelpE = internal global i8 0, align 1, !guid !17
@_ZN3fLB14FLAGS_helpfullE = global i8 0, align 1, !guid !18
@_ZN3fLBL10o_helpfullE = internal global %"class.google::FlagRegisterer" zeroinitializer, align 1, !guid !19
@.str.4 = private unnamed_addr constant [9 x i8] c"helpfull\00", align 1, !guid !20
@.str.5 = private unnamed_addr constant [40 x i8] c"show help on all flags -- same as -help\00", align 1, !guid !21
@_ZN3fLBL16FLAGS_nohelpfullE = internal global i8 0, align 1, !guid !22
@_ZN3fLB15FLAGS_helpshortE = global i8 0, align 1, !guid !23
@_ZN3fLBL11o_helpshortE = internal global %"class.google::FlagRegisterer" zeroinitializer, align 1, !guid !24
@.str.7 = private unnamed_addr constant [10 x i8] c"helpshort\00", align 1, !guid !25
@.str.8 = private unnamed_addr constant [51 x i8] c"show help on only the main module for this program\00", align 1, !guid !26
@_ZN3fLBL17FLAGS_nohelpshortE = internal global i8 0, align 1, !guid !27
@_ZN3fLSL14FLAGS_nohelponB5cxx11E = internal global ptr null, align 8, !guid !28
@_ZN3fLSL8s_helponE = internal global [2 x %union.anon] zeroinitializer, align 16, !guid !29
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !guid !30
@_ZN3fLSL8o_helponE = internal global %"class.google::FlagRegisterer" zeroinitializer, align 1, !guid !31
@.str.12 = private unnamed_addr constant [7 x i8] c"helpon\00", align 1, !guid !32
@.str.13 = private unnamed_addr constant [50 x i8] c"show help on the modules named by this flag value\00", align 1, !guid !33
@_ZN3fLSL8d_helponE = internal global %"class.fLS::StringFlagDestructor" zeroinitializer, align 8, !guid !34
@__dso_handle = external hidden global i8
@_ZN3fLS12FLAGS_helponB5cxx11E = local_unnamed_addr global ptr null, align 8, !guid !35
@_ZN3fLSL17FLAGS_nohelpmatchB5cxx11E = internal global ptr null, align 8, !guid !36
@_ZN3fLSL11s_helpmatchE = internal global [2 x %union.anon.1] zeroinitializer, align 16, !guid !37
@_ZN3fLSL11o_helpmatchE = internal global %"class.google::FlagRegisterer" zeroinitializer, align 1, !guid !38
@.str.18 = private unnamed_addr constant [10 x i8] c"helpmatch\00", align 1, !guid !39
@.str.19 = private unnamed_addr constant [62 x i8] c"show help on modules whose name contains the specified substr\00", align 1, !guid !40
@_ZN3fLSL11d_helpmatchE = internal global %"class.fLS::StringFlagDestructor" zeroinitializer, align 8, !guid !41
@_ZN3fLS15FLAGS_helpmatchB5cxx11E = local_unnamed_addr global ptr null, align 8, !guid !42
@_ZN3fLB17FLAGS_helppackageE = global i8 0, align 1, !guid !43
@_ZN3fLBL13o_helppackageE = internal global %"class.google::FlagRegisterer" zeroinitializer, align 1, !guid !44
@.str.23 = private unnamed_addr constant [12 x i8] c"helppackage\00", align 1, !guid !45
@.str.24 = private unnamed_addr constant [45 x i8] c"show help on all modules in the main package\00", align 1, !guid !46
@_ZN3fLBL19FLAGS_nohelppackageE = internal global i8 0, align 1, !guid !47
@_ZN3fLB13FLAGS_helpxmlE = global i8 0, align 1, !guid !48
@_ZN3fLBL9o_helpxmlE = internal global %"class.google::FlagRegisterer" zeroinitializer, align 1, !guid !49
@.str.26 = private unnamed_addr constant [8 x i8] c"helpxml\00", align 1, !guid !50
@.str.27 = private unnamed_addr constant [31 x i8] c"produce an xml version of help\00", align 1, !guid !51
@_ZN3fLBL15FLAGS_nohelpxmlE = internal global i8 0, align 1, !guid !52
@_ZN3fLB13FLAGS_versionE = global i8 0, align 1, !guid !53
@_ZN3fLBL9o_versionE = internal global %"class.google::FlagRegisterer" zeroinitializer, align 1, !guid !54
@.str.29 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !guid !55
@.str.30 = private unnamed_addr constant [37 x i8] c"show version and build info and exit\00", align 1, !guid !56
@_ZN3fLBL15FLAGS_noversionE = internal global i8 0, align 1, !guid !57
@.str.31 = private unnamed_addr constant [13 x i8] c"    -%s (%s)\00", align 1, !guid !58
@.str.32 = private unnamed_addr constant [8 x i8] c"\0A      \00", align 1, !guid !59
@.str.33 = private unnamed_addr constant [7 x i8] c"type: \00", align 1, !guid !60
@.str.34 = private unnamed_addr constant [8 x i8] c"default\00", align 1, !guid !61
@.str.35 = private unnamed_addr constant [10 x i8] c"currently\00", align 1, !guid !62
@.str.36 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !guid !63
@_ZN6google15gflags_exitfuncE = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [2 x i8] c".\00", align 1, !guid !64
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.38 = private unnamed_addr constant [34 x i8] c"Multiple packages contain a file=\00", align 1, !guid !65
@.str.39 = private unnamed_addr constant [35 x i8] c"Unable to find a package for file=\00", align 1, !guid !66
@.str.40 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1, !guid !67
@.str.41 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1, !guid !68
@.str.42 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1, !guid !69
@.str.43 = private unnamed_addr constant [2 x i8] c" \00", align 1, !guid !70
@.str.44 = private unnamed_addr constant [7 x i8] c"string\00", align 1, !guid !71
@.str.45 = private unnamed_addr constant [9 x i8] c"%s: \22%s\22\00", align 1, !guid !72
@.str.46 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !guid !73
@.str.47 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1, !guid !74
@stdout = external local_unnamed_addr global ptr, align 8
@.str.48 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1, !guid !75
@_ZN6google17kStrippedFlagHelpE = external constant [0 x i8], align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1, !guid !76
@.str.50 = private unnamed_addr constant [19 x i8] c"\0A  Flags from %s:\0A\00", align 1, !guid !77
@.str.52 = private unnamed_addr constant [34 x i8] c"\0A  No modules matched: use -help\0A\00", align 1, !guid !78
@.str.53 = private unnamed_addr constant [7 x i8] c"-main.\00", align 1, !guid !79
@.str.54 = private unnamed_addr constant [7 x i8] c"_main.\00", align 1, !guid !80
@.str.55 = private unnamed_addr constant [29 x i8] c"basic_string::_M_replace_aux\00", align 1, !guid !81
@.str.57 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1, !guid !82
@.str.59 = private unnamed_addr constant [23 x i8] c"<?xml version=\221.0\22?>\0A\00", align 1, !guid !83
@.str.60 = private unnamed_addr constant [12 x i8] c"<AllFlags>\0A\00", align 1, !guid !84
@.str.61 = private unnamed_addr constant [23 x i8] c"<program>%s</program>\0A\00", align 1, !guid !85
@.str.62 = private unnamed_addr constant [19 x i8] c"<usage>%s</usage>\0A\00", align 1, !guid !86
@.str.63 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !guid !87
@.str.64 = private unnamed_addr constant [13 x i8] c"</AllFlags>\0A\00", align 1, !guid !88
@.str.66 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1, !guid !89
@.str.68 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1, !guid !90
@.str.69 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1, !guid !91
@.str.70 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1, !guid !92
@.str.71 = private unnamed_addr constant [7 x i8] c"<flag>\00", align 1, !guid !93
@.str.72 = private unnamed_addr constant [5 x i8] c"file\00", align 1, !guid !94
@.str.73 = private unnamed_addr constant [5 x i8] c"name\00", align 1, !guid !95
@.str.74 = private unnamed_addr constant [8 x i8] c"meaning\00", align 1, !guid !96
@.str.75 = private unnamed_addr constant [8 x i8] c"current\00", align 1, !guid !97
@.str.76 = private unnamed_addr constant [5 x i8] c"type\00", align 1, !guid !98
@.str.77 = private unnamed_addr constant [8 x i8] c"</flag>\00", align 1, !guid !99
@.str.78 = private unnamed_addr constant [12 x i8] c"<%s>%s</%s>\00", align 1, !guid !100
@.str.79 = private unnamed_addr constant [15 x i8] c"%s version %s\0A\00", align 1, !guid !101
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_gflags_reporting.cc, ptr null }], !guid !102

declare void @_ZN6google14FlagRegistererC1IbEEPKcS3_S3_PT_S5_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZN6google14FlagRegistererC1INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKcS9_S9_PT_SB_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3fLS20StringFlagDestructorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !135 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !111
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = load i64, ptr %i.j, align 8, !tbaa !111
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6google15DescribeOneFlagB5cxx11ERKNS_19CommandLineFlagInfoE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 !guid !144 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !113
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !114
  store i8 0, ptr %i.b, align 8, !tbaa !111
  %i.d = load ptr, ptr %1, align 8, !tbaa !110
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !110
  invoke void (ptr, ptr, ...) @_ZN6google13SStringPrintfEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull %2, ptr noundef nonnull @.str.31, ptr noundef %i.d, ptr noundef %i.f)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !110
  %i.h = load i64, ptr %i.c, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !113
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i64 0, ptr %i.j, align 8, !tbaa !114
  store i8 0, ptr %i.i, align 8, !tbaa !111
  %i.k = trunc i64 %i.h to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !115
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.aq, %bb.b
  %i.n = phi i32 [ 0, %bb.b ], [ 6, %bb.aq ]      ; 4 uses
  %.047 = phi ptr [ %i.g, %bb.b ], [ %.249, %bb.aq ] ; 18 uses
  %.045 = phi i32 [ %i.k, %bb.b ], [ %.2, %bb.aq ] ; 2 uses
  %i.o = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.047, i32 noundef 10) #23 ; 2 uses
  %cond = icmp eq ptr %i.o, null
  br i1 %cond, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i32 %i.n, %.045                  ; 5 uses
  %i.q = icmp slt i32 %i.p, 80
  br i1 %i.q, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.r = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.047) #22 ; 6 uses
  %i.s = load i64, ptr %i.j, align 8, !tbaa !114  ; 5 uses
  %i.t = sub i64 9223372036854775807, %i.s
  %i.u = icmp ult i64 %i.t, %i.r
  br i1 %i.u, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.e
  %i.v = add i64 %i.s, %i.r                       ; 5 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !110    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.y = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.y)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.z = load i64, ptr %i.i, align 8, !tbaa !111
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.aa = phi i64 [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.v, %i.aa
  br i1 %.not.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not8.i.i.i, label %.loopexit218.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.r, 1
  br i1 %cond.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load i8, ptr %.047, align 1, !tbaa !111
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !111
  br label %.loopexit218.sink.split

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr nonnull align 1 %.047, i64 %i.r, i1 false)
  br label %.loopexit218.sink.split

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.s, i64 noundef 0, ptr noundef nonnull %.047, i64 noundef %i.r)
          to label %.loopexit218.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

bb.l:                                             ; preds = %bb.c
  %magicptr = ptrtoint ptr %i.o to i64
  %i.ae = ptrtoint ptr %.047 to i64
  %i.af = sub i64 %magicptr, %i.ae                ; 3 uses
  %i.ag = sub nuw nsw i32 80, %i.n
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = icmp slt i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.m, label %.lr.ph

bb.m:                                             ; preds = %bb.l
  %sext = shl i64 %i.af, 32                       ; 3 uses
  %i.aj = ashr exact i64 %sext, 32                ; 4 uses
  %i.ak = load i64, ptr %i.j, align 8, !tbaa !114 ; 5 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.m
  %i.an = add i64 %i.ak, %i.aj                    ; 3 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !110   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.i
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.aq = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.aq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ar = load i64, ptr %i.i, align 8, !tbaa !111
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = phi i64 [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.an, %i.as
  br i1 %.not.i.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %sext, 0
  br i1 %.not8.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ak ; 2 uses
  %cond.i.i = icmp eq i64 %sext, 4294967296
  br i1 %cond.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.au = load i8, ptr %.047, align 1, !tbaa !111
  store i8 %i.au, ptr %i.at, align 1, !tbaa !111
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %.047, i64 %i.aj, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ak, i64 noundef 0, ptr noundef nonnull %.047, i64 noundef %i.aj)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.r
  store i64 %i.an, ptr %i.j, align 8, !tbaa !114
  %i.av = load ptr, ptr %0, align 8, !tbaa !110
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.an
  store i8 0, ptr %i.aw, align 1, !tbaa !111
  %i.ax = trunc i64 %i.af to i32
  %i.ay = add nsw i32 %i.ax, 1                    ; 2 uses
  %i.az = sext i32 %i.ay to i64
  br label %bb.ao

.lr.ph:                                           ; preds = %bb.l, %bb.d
  %i.ba = sub nuw nsw i32 79, %i.n                ; 2 uses
  %i.bb = tail call ptr @__ctype_b_loc() #24      ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !146
  %i.bd = zext nneg i32 %i.ba to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv265 = phi i32 [ %i.ba, %.lr.ph ], [ %indvars.iv.next266, %bb.u ] ; 2 uses
  %indvars.iv = phi i64 [ %i.bd, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 11 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.047, i64 %indvars.iv
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !111
  %i.bg = sext i8 %i.bf to i64
  %i.bh = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !148
  %i.bj = and i16 %i.bi, 8192
  %.not69 = icmp eq i16 %i.bj, 0
  br i1 %.not69, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bk = icmp sgt i64 %indvars.iv, 1
  %indvars.iv.next266 = add i32 %indvars.iv265, -1
  br i1 %i.bk, label %bb.t, label %.critedge, !llvm.loop !136

.critedge:                                        ; preds = %bb.u
  %i.bl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.047) #22 ; 6 uses
  %i.bm = load i64, ptr %i.j, align 8, !tbaa !114 ; 5 uses
  %i.bn = sub i64 9223372036854775807, %i.bm
  %i.bo = icmp ult i64 %i.bn, %i.bl
  br i1 %i.bo, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i96

.invoke:                                          ; preds = %bb.m, %.critedge, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i96: ; preds = %.critedge
  %i.bp = add i64 %i.bm, %i.bl                    ; 5 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !110   ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.i
  br i1 %i.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i102: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i96
  %i.bs = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i97: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i96
  %i.bt = load i64, ptr %i.i, align 8, !tbaa !111
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i98: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i102
  %i.bu = phi i64 [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i97 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i102 ]
  %.not.i.i.i99 = icmp ugt i64 %i.bp, %i.bu
  br i1 %.not.i.i.i99, label %bb.z, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i98
  %.not8.i.i.i100 = icmp eq i64 %i.bl, 0
  br i1 %.not8.i.i.i100, label %.loopexit218.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bm ; 2 uses
  %cond.i.i.i101 = icmp eq i64 %i.bl, 1
  br i1 %cond.i.i.i101, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bw = load i8, ptr %.047, align 1, !tbaa !111
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !111
  br label %.loopexit218.sink.split

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr nonnull align 1 %.047, i64 %i.bl, i1 false)
  br label %.loopexit218.sink.split

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i98
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bm, i64 noundef 0, ptr noundef nonnull %.047, i64 noundef %i.bl)
          to label %.loopexit218.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.r, %bb.ap, %.invoke, %bb.z, %bb.j, %bb.bj
  %lpad.loopexit.split-lp344 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.aa:                                            ; preds = %bb.t
  %i.bx = trunc nuw nsw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.l, ptr %3, align 8, !tbaa !113
  %i.by = icmp samesign ugt i64 %indvars.iv, 15
  br i1 %i.by, label %bb.ab, label %._crit_edge.i.i106

bb.ab:                                            ; preds = %bb.aa
  %i.bz = add nuw nsw i64 %indvars.iv, 1
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #26
          to label %._crit_edge.i.i106.thread unwind label %bb.an ; 2 uses

._crit_edge.i.i106.thread:                        ; preds = %bb.ab
  store ptr %i.ca, ptr %3, align 8, !tbaa !110
  store i64 %indvars.iv, ptr %i.l, align 8, !tbaa !111
  br label %bb.ad

._crit_edge.i.i106:                               ; preds = %bb.aa
  %cond210 = icmp eq i64 %indvars.iv, 1
  br i1 %cond210, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i106
  %i.cb = load i8, ptr %.047, align 1, !tbaa !111
  store i8 %i.cb, ptr %i.l, align 8, !tbaa !111
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i.i106.thread, %._crit_edge.i.i106
  %i.cc = phi ptr [ %i.ca, %._crit_edge.i.i106.thread ], [ %i.l, %._crit_edge.i.i106 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr nonnull align 1 %.047, i64 %indvars.iv, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cd = phi ptr [ %i.cc, %bb.ad ], [ %i.l, %bb.ac ]
  store i64 %indvars.iv, ptr %i.m, align 8, !tbaa !114
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv
  store i8 0, ptr %i.ce, align 1, !tbaa !111
  %i.cf = load ptr, ptr %3, align 8, !tbaa !110   ; 3 uses
  %i.cg = load i64, ptr %i.m, align 8, !tbaa !114 ; 6 uses
  %i.ch = load i64, ptr %i.j, align 8, !tbaa !114 ; 5 uses
  %i.ci = sub i64 9223372036854775807, %i.ch
  %i.cj = icmp ult i64 %i.ci, %i.cg
  br i1 %i.cj, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25
          to label %.noexc111 unwind label %.loopexit.split-lp214.loopexit.split-lp.loopexit.split-lp

.noexc111:                                        ; preds = %bb.af
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ae
  %i.ck = add i64 %i.ch, %i.cg                    ; 3 uses
  %i.cl = load ptr, ptr %0, align 8, !tbaa !110   ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.i
  br i1 %i.cm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cn = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.cn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.co = load i64, ptr %i.i, align 8, !tbaa !111
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.cp = phi i64 [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.ck, %i.cp
  br i1 %.not.i.i.i.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not8.i.i.i.i, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ch ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.cg, 1
  br i1 %cond.i.i.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cr = load i8, ptr %i.cf, align 1, !tbaa !111
  store i8 %i.cr, ptr %i.cq, align 1, !tbaa !111
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr align 1 %i.cf, i64 %i.cg, i1 false)
  br label %bb.al

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ch, i64 noundef 0, ptr noundef %i.cf, i64 noundef %i.cg)
          to label %bb.al unwind label %.loopexit.split-lp214.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.ak
  store i64 %i.ck, ptr %i.j, align 8, !tbaa !114
  %i.cs = load ptr, ptr %0, align 8, !tbaa !110
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ck
  store i8 0, ptr %i.ct, align 1, !tbaa !111
  %i.cu = load ptr, ptr %3, align 8, !tbaa !110   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.l
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.al
  %i.cw = load i64, ptr %i.l, align 8, !tbaa !111
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.cy = add nsw i32 %i.n, %i.bx
  store i32 %i.cy, ptr %i.a, align 4, !tbaa !115
  %i.cz = load ptr, ptr %i.bb, align 8, !tbaa !146
  %i.da = zext i32 %indvars.iv265 to i64
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %bb.am ], [ %i.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.047, i64 %indvars.iv268
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !111
  %i.dd = sext i8 %i.dc to i64
  %i.de = getelementptr inbounds [2 x i8], ptr %i.cz, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 2, !tbaa !148
  %i.dg = and i16 %i.df, 8192
  %.not71 = icmp eq i16 %i.dg, 0
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1
  br i1 %.not71, label %.loopexit, label %bb.am, !llvm.loop !137

bb.an:                                            ; preds = %bb.ab
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

.loopexit.split-lp214.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ak, %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %3, align 8, !tbaa !110   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.l
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %.loopexit.split-lp214.loopexit.split-lp.loopexit.split-lp
  %i.dk = load i64, ptr %i.l, align 8, !tbaa !111
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %.loopexit.split-lp214.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113, %bb.an
  %.pn = phi { ptr, i32 } [ %i.dh, %bb.an ], [ %lpad.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp214.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.am
  %i.dm = trunc nuw i64 %indvars.iv268 to i32
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit, %bb.s
  %.pn243 = phi i64 [ %i.az, %bb.s ], [ %indvars.iv268, %.loopexit ]
  %.pn211 = phi i32 [ %i.ay, %bb.s ], [ %i.dm, %.loopexit ]
  %.249 = getelementptr inbounds i8, ptr %.047, i64 %.pn243 ; 2 uses
  %.2 = sub nsw i32 %.045, %.pn211
  %10 = load i8, ptr %.249, align 1, !tbaa !111
  %i.dn = icmp eq i8 %10, 0
  br i1 %i.dn, label %.loopexit218, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  invoke void (ptr, ptr, ...) @_ZN6google13StringAppendFEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.32)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap
  store i32 6, ptr %i.a, align 4, !tbaa !115
  br label %bb.c

.loopexit218.sink.split:                          ; preds = %bb.y, %bb.x, %bb.v, %bb.z, %bb.j, %bb.f, %bb.h, %bb.i
  %.sink = phi i64 [ %i.v, %bb.j ], [ %i.v, %bb.i ], [ %i.v, %bb.h ], [ %i.v, %bb.f ], [ %i.bp, %bb.z ], [ %i.bp, %bb.v ], [ %i.bp, %bb.x ], [ %i.bp, %bb.y ] ; 2 uses
  %.lcssa321.sink = phi i32 [ %i.p, %bb.j ], [ %i.p, %bb.i ], [ %i.p, %bb.h ], [ %i.p, %bb.f ], [ 80, %bb.z ], [ 80, %bb.v ], [ 80, %bb.x ], [ 80, %bb.y ]
  store i64 %.sink, ptr %i.j, align 8, !tbaa !114
  %i.do = load ptr, ptr %0, align 8, !tbaa !110
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sink
  store i8 0, ptr %i.dp, align 1, !tbaa !111
  store i32 %.lcssa321.sink, ptr %i.a, align 4, !tbaa !115
  br label %.loopexit218

.loopexit218:                                     ; preds = %bb.ao, %.loopexit218.sink.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 14 uses
  store ptr %i.dq, ptr %5, align 8, !tbaa !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.dq, ptr noundef nonnull align 1 dereferenceable(6) @.str.33, i64 6, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 6, ptr %i.dr, align 8, !tbaa !114
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i8 0, ptr %i.ds, align 2, !tbaa !111
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !110, !noalias !149 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !114, !noalias !149 ; 7 uses
  %i.dx = icmp ugt i64 %i.dw, 9223372036854775801
  br i1 %i.dx, label %bb.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i126

bb.ar:                                            ; preds = %.loopexit218
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #25
          to label %.noexc132 unwind label %bb.bd, !noalias !149

.noexc132:                                        ; preds = %bb.ar
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i126: ; preds = %.loopexit218
  %i.dy = add nuw nsw i64 %i.dw, 6                ; 2 uses
  %.not.i.i.i.i127 = icmp samesign ugt i64 %i.dw, 9
  br i1 %.not.i.i.i.i127, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i126
  %.not8.i.i.i.i128 = icmp eq i64 %i.dw, 0
  br i1 %.not8.i.i.i.i128, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 22 ; 2 uses
  %cond.i.i.i.i129 = icmp eq i64 %i.dw, 1
  br i1 %cond.i.i.i.i129, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ea = load i8, ptr %i.du, align 1, !tbaa !111, !noalias !149
  store i8 %i.ea, ptr %i.dz, align 2, !tbaa !111, !noalias !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.av:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.dz, ptr align 1 %i.du, i64 %i.dw, i1 false), !noalias !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i126
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 6, i64 noundef 0, ptr noundef %i.du, i64 noundef %i.dw)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i_crit_edge unwind label %bb.bd, !noalias !149

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i_crit_edge: ; preds = %bb.aw
  %.pre271 = load ptr, ptr %5, align 8, !tbaa !110, !noalias !149
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i_crit_edge, %bb.av, %bb.au, %bb.as
  %i.eb = phi ptr [ %.pre271, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i_crit_edge ], [ %i.dq, %bb.av ], [ %i.dq, %bb.au ], [ %i.dq, %bb.as ]
  store i64 %i.dy, ptr %i.dr, align 8, !tbaa !114, !noalias !149
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dy
  store i8 0, ptr %i.ec, align 1, !tbaa !111, !noalias !149
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ed, ptr %4, align 8, !tbaa !113, !alias.scope !149
  %i.ee = load ptr, ptr %5, align 8, !tbaa !110, !noalias !149 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.dq
  br i1 %i.ef, label %bb.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.eg = load i64, ptr %i.dr, align 8, !tbaa !114, !noalias !149 ; 3 uses
  %i.eh = icmp ult i64 %i.eg, 16
  call void @llvm.assume(i1 %i.eh)
  %i.ei = add nuw nsw i64 %i.eg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ed, ptr noundef nonnull align 8 dereferenceable(1) %i.dq, i64 %i.ei, i1 false)
  br label %bb.ay

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.ee, ptr %4, align 8, !tbaa !110, !alias.scope !149
  %i.ej = load i64, ptr %i.dq, align 8, !tbaa !111, !noalias !149
  store i64 %i.ej, ptr %i.ed, align 8, !tbaa !111, !alias.scope !149
  %.pre.i = load i64, ptr %i.dr, align 8, !tbaa !114, !noalias !149
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %bb.ax
  %i.ek = phi i64 [ %i.eg, %bb.ax ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ]
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !114, !alias.scope !149
  store ptr %i.dq, ptr %5, align 8, !tbaa !110, !noalias !149
  store i64 0, ptr %i.dr, align 8, !tbaa !114, !noalias !149
  store i8 0, ptr %i.dq, align 8, !tbaa !111, !noalias !149
  invoke fastcc void @_ZN6googleL9AddStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_Pi(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %0, ptr noundef %i.a)
          to label %bb.az unwind label %bb.be

bb.az:                                            ; preds = %bb.ay
  %i.em = load ptr, ptr %4, align 8, !tbaa !110   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ed
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.az
  %i.eo = load i64, ptr %i.ed, align 8, !tbaa !111
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  %i.eq = load ptr, ptr %5, align 8, !tbaa !110   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.dq
  br i1 %i.er, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.es = load i64, ptr %i.dq, align 8, !tbaa !111
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.eu, ptr %7, align 8, !tbaa !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.eu, ptr noundef nonnull align 1 dereferenceable(7) @.str.34, i64 7, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 7, ptr %i.ev, align 8, !tbaa !114
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 23
  store i8 0, ptr %i.ew, align 1, !tbaa !111
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !150
  %i.fa = load ptr, ptr %i.dt, align 8, !tbaa !110, !noalias !150
  %i.fb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fa, ptr noundef nonnull dereferenceable(7) @.str.44) #23, !noalias !150
  %i.fc = icmp eq i32 %i.fb, 0
  %.str.45..str.46.i = select i1 %i.fc, ptr @.str.45, ptr @.str.46
  invoke void (ptr, ptr, ...) @_ZN6google12StringPrintfB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %.str.45..str.46.i, ptr noundef nonnull %i.eu, ptr noundef %i.ez)
          to label %_ZN6googleL26PrintStringFlagsWithQuotesERKNS_19CommandLineFlagInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit unwind label %bb.bf

_ZN6googleL26PrintStringFlagsWithQuotesERKNS_19CommandLineFlagInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i138
  invoke fastcc void @_ZN6googleL9AddStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_Pi(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %0, ptr noundef %i.a)
          to label %bb.ba unwind label %bb.bg

bb.ba:                                            ; preds = %_ZN6googleL26PrintStringFlagsWithQuotesERKNS_19CommandLineFlagInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit
  %i.fd = load ptr, ptr %6, align 8, !tbaa !110   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %bb.ba
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !111
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  %i.fi = load ptr, ptr %7, align 8, !tbaa !110   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.eu
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.fk = load i64, ptr %i.eu, align 8, !tbaa !111
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 193
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !152, !range !118, !noundef !119
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.bj, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.fp, ptr %9, align 8, !tbaa !113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.fp, ptr noundef nonnull align 1 dereferenceable(9) @.str.35, i64 9, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 9, ptr %i.fq, align 8, !tbaa !114
end_hunk_0
