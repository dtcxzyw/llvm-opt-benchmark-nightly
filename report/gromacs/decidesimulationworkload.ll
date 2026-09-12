Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/decidesimulationworkload?download=true
inline.NumInlined: 132
inline.NumDeleted: 94
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.gmx::EnumerationArray" = type { [7 x %"class.std::__cxx11::basic_string"] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.gmx::SimulationWorkload" = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%"class.gmx::LogEntryWriter" = type { %"struct.gmx::LogEntry" }
%"struct.gmx::LogEntry" = type <{ %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%"class.gmx::StepWorkload" = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

$_ZN3gmx16EnumerationArrayINS_14MtsForceGroupsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_7EED2Ev = comdat any

@_ZN3gmxL18mtsForceGroupNamesB5cxx11E = internal global %"struct.gmx::EnumerationArray" zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"longrange-nonbonded\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"nonbonded\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"awh\00", align 1
@__dso_handle = external hidden global i8
@.str.7 = private unnamed_addr constant [27 x i8] c"GMX_GPU_DISABLE_BUFFER_OPS\00", align 1
@.str.8 = private unnamed_addr constant [86 x i8] c"The 'GPU buffer ops' disabled by the GMX_GPU_DISABLE_BUFFER_OPS environment variable.\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"!haveSeparatePmeRank\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"Can not have separate PME rank(s) without PME.\00", align 1
@"__PRETTY_FUNCTION__._ZZN3gmx24createSimulationWorkloadERKNS_8MDLoggerERK10t_inputrecbbbRKNS_23DevelopmentFeatureFlagsEbbbbb10PmeRunModebbbbbENK3$_0clEv" = private unnamed_addr constant [249 x i8] c"auto gmx::createSimulationWorkload(const gmx::MDLogger &, const t_inputrec &, const bool, const bool, const bool, const DevelopmentFeatureFlags &, bool, bool, bool, bool, bool, PmeRunMode, bool, bool, bool, bool, bool)::(lambda)::operator()() const\00", align 1
@.str.11 = private unnamed_addr constant [88 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/taskassignment/decidesimulationworkload.cpp\00", align 1
@.str.14 = private unnamed_addr constant [97 x i8] c"simulationWorkload.useGpuXBufferOpsWhenAllowed && simulationWorkload.useGpuFBufferOpsWhenAllowed\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"Offload features enabled require X/F buffer ops\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_decidesimulationworkload.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx16EnumerationArrayINS_14MtsForceGroupsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_7EED2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !14
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !14
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.q = load i64, ptr %i.o, align 8, !tbaa !14
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %i.w = load i64, ptr %i.u, align 8, !tbaa !14
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !13   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !14
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !13 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !14
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5
  %i.ak = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5
  %i.an = load i64, ptr %i.al, align 8, !tbaa !14
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx24createSimulationWorkloadERKNS_8MDLoggerERK10t_inputrecbbbRKNS_23DevelopmentFeatureFlagsEbbbbb10PmeRunModebbbbb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.gmx::SimulationWorkload") align 1 captures(none) initializes((0, 29)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(888) %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(3) %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i1 noundef zeroext %10, i1 noundef zeroext %11, i32 noundef %12, i1 noundef zeroext %13, i1 noundef zeroext %14, i1 noundef zeroext %15, i1 noundef zeroext %16, i1 noundef zeroext %17) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %18 = alloca %"class.gmx::LogEntryWriter", align 8 ; 11 uses
  %i.a = zext i1 %3 to i8
  %i.b = zext i1 %7 to i8
  %i.c = zext i1 %8 to i8
  %i.d = zext i1 %9 to i8
  %i.e = zext i1 %10 to i8
  %i.f = zext i1 %11 to i8
  %i.g = zext i1 %13 to i8
  %i.h = zext i1 %14 to i8
  %i.i = zext i1 %15 to i8
  %i.j = zext i1 %17 to i8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.k, i8 0, i64 15, i1 false)
  %i.l = xor i1 %5, true                          ; 2 uses
  %i.m = zext i1 %i.l to i8
  store i8 %i.m, ptr %0, align 1, !tbaa !133
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !range !17
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond69 = select i1 %i.l, i1 %i.p, i1 false
  br i1 %or.cond69, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !134
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !135
  %19 = trunc i64 %i.t to i8
  %20 = lshr i8 %19, 1
  %i.u = and i8 %20, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = phi i8 [ %i.u, %bb.b ], [ 0, %bb.a ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.v, ptr %i.w, align 1, !tbaa !136
  %i.x = tail call noundef zeroext i1 @_Z17inputrecNeedMutotPK10t_inputrec(ptr noundef nonnull %2)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.z = zext i1 %i.x to i8
  store i8 %i.z, ptr %i.y, align 1, !tbaa !137
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.a, ptr %i.aa, align 1, !tbaa !138
  %i.ab = xor i1 %10, true
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = zext i1 %i.ab to i8
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.e, ptr %i.ae, align 1, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.f, ptr %i.af, align 1, !tbaa !22
  %i.ag = xor i1 %11, true
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ai = zext i1 %i.ag to i8
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !23
  br i1 %11, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 424
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !139 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !147
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 220
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !148
  %i.aq = fcmp une float %i.ap, 0.000000e+00
  %i.ar = zext i1 %i.aq to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.as = phi i8 [ 0, %bb.d ], [ 0, %bb.c ], [ %i.ar, %bb.e ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.as, ptr %i.at, align 1, !tbaa !149
  %i.au = icmp eq i32 %12, 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.aw = zext i1 %i.au to i8
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !27
  %i.ax = icmp eq i32 %12, 2
  %i.ay = and i32 %12, -2
  %i.az = icmp eq i32 %i.ay, 2                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bb = zext i1 %i.az to i8
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !28
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bd = zext i1 %i.ax to i8
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !150
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.g, ptr %i.be, align 1, !tbaa !151
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.h, ptr %i.bf, align 1, !tbaa !152
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.b, ptr %i.bg, align 1, !tbaa !153
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.c, ptr %i.bh, align 1, !tbaa !29
  %i.bi = xor i1 %15, true
  %i.bj = and i1 %8, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bl = zext i1 %i.bj to i8
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !154
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.i, ptr %i.bm, align 1, !tbaa !30
  %i.bn = icmp eq i32 %12, 0
  %brmerge.not = and i1 %9, %i.bn
  br i1 %brmerge.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx24createSimulationWorkloadERKNS_8MDLoggerERK10t_inputrecbbbRKNS_23DevelopmentFeatureFlagsEbbbbb10PmeRunModebbbbbENK3$_0clEv", ptr noundef nonnull @.str.11, i32 noundef 122) #13
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.d, ptr %i.bo, align 1, !tbaa !155
  %or.cond = and i1 %9, %16
  %spec.select = and i1 %i.az, %or.cond           ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.bq = zext i1 %spec.select to i8              ; 2 uses
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !31
  %i.br = xor i1 %9, %spec.select
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.bt = zext i1 %i.br to i8
  store i8 %i.bt, ptr %i.bs, align 1, !tbaa !156
  %i.bu = select i1 %15, i8 1, i8 %i.bq           ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !157
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.j, ptr %i.bw, align 1, !tbaa !158
  %i.bx = tail call noundef zeroext i1 @_Z28haveEwaldSurfaceContributionRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %2)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.bz = zext i1 %i.bx to i8
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !32
  %i.ca = load i8, ptr %i.n, align 8, !tbaa !159, !range !17, !noundef !126
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !127
  %i.cc = trunc nuw i8 %i.bu to i1
  %i.cd = or i1 %14, %i.cc
  %i.ce = tail call ptr @getenv(ptr noundef nonnull @.str.7) #14
  %.not59 = icmp eq ptr %i.ce, null
  br i1 %.not59, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = load ptr, ptr %1, align 8, !tbaa !162   ; 3 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  %i.ch = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  store ptr %i.ci, ptr %18, align 8, !tbaa !128
  %i.cj = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.cj, align 8, !tbaa !129
  %i.ck = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i8 1, ptr %i.ck, align 8, !tbaa !165
  %i.cl = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull @.str.8)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cm = load ptr, ptr %i.cf, align 8, !tbaa !167
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull align 8 dereferenceable(40) %i.cl)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit unwind label %bb.l, !inline_history !132

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit: ; preds = %bb.k
  %i.cp = load ptr, ptr %18, align 8, !tbaa !13   ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.ci
  br i1 %i.cq, label %_ZN3gmx14LogEntryWriterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit
  %i.cr = load i64, ptr %i.ci, align 8, !tbaa !14
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #12
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit

_ZN3gmx14LogEntryWriterD2Ev.exit:                 ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = load ptr, ptr %18, align 8, !tbaa !13   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.ci
  br i1 %i.cv, label %_ZN3gmx14LogEntryWriterD2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60: ; preds = %bb.l
  %i.cw = load i64, ptr %i.ci, align 8, !tbaa !14
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #12
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit62

_ZN3gmx14LogEntryWriterD2Ev.exit62:               ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  resume { ptr, i32 } %i.ct

bb.m:                                             ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit, %bb.i, %bb.h
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 0, ptr %i.cy, align 1, !tbaa !130
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 0, ptr %i.cz, align 1, !tbaa !131
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx24createSimulationWorkloadERKNS_8MDLoggerERK10t_inputrecbbbRKNS_23DevelopmentFeatureFlagsEbbbbb10PmeRunModebbbbbENK3$_0clEv", ptr noundef nonnull @.str.11, i32 noundef 160) #13
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %i.da, align 1, !tbaa !168
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.db, align 1, !tbaa !169
  ret void
}

declare noundef zeroext i1 @_Z17inputrecNeedMutotPK10t_inputrec(ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_Z28haveEwaldSurfaceContributionRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888)) local_unnamed_addr #4

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define { i64, i16 } @_ZN3gmx27setupDomainLifetimeWorkloadERK10t_inputrecRK10t_forcerecPK6pull_tPK9gmx_edsamRK9t_mdatomsRKNS_18SimulationWorkloadE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(584) %1, ptr noundef %2, ptr nofree noundef readnone captures(address_is_null) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %4, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(29) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275
  %i.c = tail call noundef zeroext i1 @_ZNK3gmx14ForceProviders16hasForceProviderEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.c, label %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.e = load i8, ptr %i.d, align 8, !tbaa !276, !range !17, !noundef !126
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_Z19pull_have_potentialRK6pull_t(ptr noundef nonnull align 1 %2)
  br i1 %i.g, label %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.i = load i8, ptr %i.h, align 8, !tbaa !277, !range !17, !noundef !126
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.l = load i8, ptr %i.k, align 8, !tbaa !278, !range !17, !noundef !126
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = icmp ne ptr %3, null
  %or.cond.i = or i1 %i.n, %i.m
  br i1 %or.cond.i, label %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.p = load i8, ptr %i.o, align 8, !tbaa !279, !range !17, !noundef !126
  %i.q = trunc nuw i8 %i.p to i1
  br label %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit

_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.f
  %i.r = phi i1 [ %i.q, %bb.f ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.a ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !280  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !280  ; 2 uses
  %.not5154 = icmp eq ptr %i.t, %i.v
  br i1 %.not5154, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 464
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit
  %.sroa.029.sroa.3.0.lcssa = phi i8 [ 0, %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit ], [ %.sroa.029.sroa.3.1, %bb.g ] ; 3 uses
  %.sroa.029.sroa.6.0.lcssa = phi i8 [ 0, %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit ], [ %spec.select, %bb.g ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !281  ; 2 uses
  %.not52 = icmp eq ptr %i.y, null
  br i1 %.not52, label %bb.i, label %bb.h

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.026.057 = phi ptr [ %i.t, %.lr.ph ], [ %i.ac, %bb.g ] ; 3 uses
  %.sroa.029.sroa.6.056 = phi i8 [ 0, %.lr.ph ], [ %spec.select, %bb.g ]
  %.sroa.029.sroa.3.055 = phi i8 [ 0, %.lr.ph ], [ %.sroa.029.sroa.3.1, %bb.g ]
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !282
  %i.aa = tail call noundef zeroext i1 @_ZNK12ListedForces19haveCpuListedForcesERK8t_fcdata(ptr noundef nonnull align 8 dereferenceable(2880) %.sroa.026.057, ptr noundef nonnull align 1 %i.z)
  %spec.select = select i1 %i.aa, i8 1, i8 %.sroa.029.sroa.6.056 ; 2 uses
  %i.ab = tail call noundef zeroext i1 @_ZNK12ListedForces14haveCpuBondedsEv(ptr noundef nonnull align 8 dereferenceable(2880) %.sroa.026.057)
  %.sroa.029.sroa.3.1 = select i1 %i.ab, i8 1, i8 %.sroa.029.sroa.3.055 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.026.057, i64 2880 ; 2 uses
  %.not51 = icmp eq ptr %i.ac, %i.v
  br i1 %.not51, label %._crit_edge, label %bb.g

bb.h:                                             ; preds = %._crit_edge
  %i.ad = tail call noundef zeroext i1 @_ZNK3gmx15ListedForcesGpu16haveInteractionsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  %i.ae = zext i1 %i.ad to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.sroa.029.sroa.0.0.insert.ext = phi i64 [ 0, %._crit_edge ], [ %i.ae, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !283
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %.thread48, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !307
  %.not53 = icmp eq i32 %i.ai, 0
  br i1 %.not53, label %.thread48, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !23, !range !17, !noundef !126
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 7
  %i.am = load i8, ptr %i.al, align 1, !tbaa !22, !range !17, !noundef !126
  %i.an = zext nneg i8 %i.am to i16
  br label %.thread48

.thread48:                                        ; preds = %bb.i, %bb.j, %bb.k
  %i.ao = phi i8 [ %i.ak, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ] ; 4 uses
  %.sroa.029.sroa.14.0.insert.ext = phi i64 [ 281474976710656, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ]
  %.sroa.19.8.insert.ext = phi i16 [ %i.an, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ]
  %i.ap = or i8 %i.ao, %.sroa.029.sroa.6.0.lcssa
  %i.aq = icmp ne i8 %i.ap, 0
  %or.cond5 = select i1 %i.r, i1 true, i1 %i.aq
  br i1 %or.cond5, label %.thread50, label %bb.l

bb.l:                                             ; preds = %.thread48
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !20, !range !17, !noundef !126
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %.thread50, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.av = load i8, ptr %i.au, align 1, !tbaa !27, !range !17, !noundef !126
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %.thread50, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 25
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !32, !range !17, !noundef !126
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %.thread50, label %bb.o

.thread50:                                        ; preds = %bb.n, %bb.m, %bb.l, %.thread48
  %i.ba = or i8 %i.ao, %.sroa.029.sroa.3.0.lcssa
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !308
  %i.bd = icmp sgt i32 %i.bc, 0
  %i.be = trunc nuw i8 %.sroa.029.sroa.3.0.lcssa to i1
  %i.bf = select i1 %i.be, i8 1, i8 %i.ao         ; 2 uses
  br i1 %i.bd, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !29, !range !17, !noundef !126
  %i.bi = zext nneg i8 %i.bh to i16
  %i.bj = shl nuw nsw i16 %i.bi, 8
  br label %bb.q

bb.q:                                             ; preds = %.thread50, %bb.p, %bb.o
  %i.bk = phi i8 [ %i.bf, %bb.o ], [ %i.bf, %bb.p ], [ %i.ba, %.thread50 ]
  %.sroa.029.sroa.11.0.insert.ext = phi i64 [ 4294967296, %bb.o ], [ 0, %bb.p ], [ 4294967296, %.thread50 ]
  %.sroa.19.9.insert.ext = phi i16 [ 256, %bb.o ], [ %i.bj, %bb.p ], [ 256, %.thread50 ]
  %.sroa.19.9.insert.insert = or disjoint i16 %.sroa.19.9.insert.ext, %.sroa.19.8.insert.ext
  %i.bl = insertelement <4 x i8> poison, i8 %.sroa.029.sroa.3.0.lcssa, i64 0
  %i.bm = insertelement <4 x i8> %i.bl, i8 %i.ao, i64 1
  %i.bn = insertelement <4 x i8> %i.bm, i8 %i.bk, i64 2
  %i.bo = insertelement <4 x i8> %i.bn, i8 %.sroa.029.sroa.6.0.lcssa, i64 3
  %i.bp = zext <4 x i8> %i.bo to <4 x i64>
  %.sroa.029.sroa.9.0.insert.shift = select i1 %i.r, i64 16777216, i64 0
  %i.bq = shl nuw nsw <4 x i64> %i.bp, <i64 8, i64 56, i64 40, i64 16>
  %i.br = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.bq)
  %op.rdx = or i64 %i.br, %.sroa.029.sroa.9.0.insert.shift
  %op.rdx61 = or disjoint i64 %.sroa.029.sroa.11.0.insert.ext, %.sroa.029.sroa.14.0.insert.ext
  %op.rdx62 = or i64 %op.rdx, %op.rdx61
  %op.rdx63 = or disjoint i64 %op.rdx62, %.sroa.029.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i16 } poison, i64 %op.rdx63, 0
  %.fca.1.insert = insertvalue { i64, i16 } %.fca.0.insert, i16 %.sroa.19.9.insert.insert, 1
  ret { i64, i16 } %.fca.1.insert
}

declare noundef zeroext i1 @_ZNK12ListedForces19haveCpuListedForcesERK8t_fcdata(ptr noundef nonnull align 8 dereferenceable(2880), ptr noundef nonnull align 1) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK12ListedForces14haveCpuBondedsEv(ptr noundef nonnull align 8 dereferenceable(2880)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK3gmx15ListedForcesGpu16haveInteractionsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gmx17setupStepWorkloadEiNS_8ArrayRefIKNS_8MtsLevelEEElRKNS_22DomainLifetimeWorkloadERKNS_18SimulationWorkloadE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.gmx::StepWorkload") align 1 captures(none) initializes((0, 19)) %0, i32 noundef %1, ptr nofree readonly captures(address) %2, ptr nofree readnone captures(address) %3, i64 noundef %4, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(10) %5, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(29) %6) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %2, %3
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !311
  %i.d = sext i32 %i.c to i64
  %i.e = srem i64 %4, %i.d
  %i.f = icmp eq i64 %i.e, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ true, %bb.a ], [ %i.f, %bb.b ]  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i16 0, ptr %i.h, align 1
  %i.i = trunc i32 %1 to i8                       ; 3 uses
  %7 = lshr i8 %i.i, 2                            ; 2 uses
  %i.j = lshr i32 %1, 8                           ; 2 uses
  %i.k = trunc i32 %i.j to i8
  %i.l = lshr i32 %1, 9
  %i.m = trunc i32 %i.l to i8
  %i.n = and i32 %1, 128
  %i.o = icmp ne i32 %i.n, 0                      ; 2 uses
  %i.p = lshr i32 %1, 11                          ; 2 uses
  %i.q = trunc i32 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = lshr i8 %i.i, 4
  %i.s = and i8 %8, 1
  store i8 %i.s, ptr %i.r, align 1, !tbaa !313
  %i.t = and i32 %1, 64
  %.not = icmp ne i32 %i.t, 0
  %i.u = load i8, ptr %6, align 1, !range !17
  %i.v = trunc nuw i8 %i.u to i1
  %or.cond40 = select i1 %.not, i1 %i.v, i1 false
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.x = load i8, ptr %i.w, align 1, !range !17
  %i.y = trunc nuw i8 %i.x to i1
  %.not33 = xor i1 %i.y, true
  %i.z = or i1 %i.g, %.not33
  %i.aa = zext i1 %i.g to i8                      ; 3 uses
  %i.ab = zext i1 %i.o to i8
  %narrow = select i1 %or.cond40, i1 %i.z, i1 false
  %i.ac = zext i1 %narrow to i8
  %i.ad = insertelement <8 x i8> poison, i8 %i.i, i64 0
  %i.ae = insertelement <8 x i8> %i.ad, i8 %7, i64 1
  %i.af = insertelement <8 x i8> %i.ae, i8 %i.aa, i64 2
  %i.ag = insertelement <8 x i8> %i.af, i8 %i.k, i64 3
  %i.ah = insertelement <8 x i8> %i.ag, i8 %i.m, i64 4
  %i.ai = insertelement <8 x i8> %i.ah, i8 %i.ab, i64 5
  %i.aj = insertelement <8 x i8> %i.ai, i8 %i.q, i64 6
  %i.ak = insertelement <8 x i8> %i.aj, i8 %i.ac, i64 7
  %i.al = and <8 x i8> %i.ak, <i8 1, i8 1, i8 -1, i8 1, i8 1, i8 -1, i8 1, i8 -1>
  %i.am = and i8 %7, 1
  store <8 x i8> %i.al, ptr %0, align 1, !tbaa !314
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ao = lshr i32 %1, 10
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = and i8 %i.ap, 1
  store i8 %i.aq, ptr %i.an, align 1, !tbaa !315
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !130, !range !17, !noundef !126
  %i.at = xor i8 %i.am, 1                         ; 3 uses
  %i.au = and i8 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.au, ptr %i.av, align 1, !tbaa !316
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 15
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !131, !range !17, !noundef !126
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = trunc i32 %i.j to i1                    ; 2 uses
  %i.ba = xor i1 %i.az, true
  %i.bb = and i1 %i.ba, %i.ay                     ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bd = zext i1 %i.bb to i8                     ; 2 uses
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !317
  %or.cond = select i1 %i.g, i1 %i.bb, i1 false
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !28, !range !17 ; 3 uses
  br i1 %or.cond, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %6, i64 20
  %.pre38 = load i8, ptr %.phi.trans.insert37, align 1, !range !17
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bg = trunc nuw i8 %i.bf to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bi = load i8, ptr %i.bh, align 1, !range !17 ; 2 uses
  %i.bj = trunc nuw i8 %i.bi to i1
  %not. = xor i1 %i.bg, true
  %i.bk = select i1 %not., i1 true, i1 %i.bj
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 22
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !31, !range !17, !noundef !126
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d, %bb.e
  %i.bn = phi i8 [ %.pre38, %._crit_edge ], [ 0, %bb.d ], [ %i.bi, %bb.e ] ; 2 uses
  %i.bo = phi i8 [ %i.bf, %._crit_edge ], [ 1, %bb.d ], [ %i.bf, %bb.e ]
  %i.bp = phi i8 [ 0, %._crit_edge ], [ 1, %bb.d ], [ %i.bm, %bb.e ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !318
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 19
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !30, !range !17, !noundef !126 ; 2 uses
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = and i8 %i.bs, %i.at
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !319
  %i.bw = select i1 %i.bt, i8 %i.bd, i8 0         ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !320
  %i.by = trunc nuw i8 %i.bo to i1
  %i.bz = trunc nuw i8 %i.bn to i1
  %i.ca = xor i1 %i.bz, true
  %i.cb = select i1 %i.by, i1 %i.ca, i1 false
  %i.cc = select i1 %i.cb, i8 %i.aa, i8 0         ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !321
  %i.ce = and i8 %i.bn, %i.aa
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !322
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 26
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !127, !range !17, !noundef !126
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = trunc i32 %i.p to i1
  %i.ck = and i1 %i.cj, %i.ci
  %or.cond8 = and i1 %i.g, %i.ck
  %or.cond8.not = xor i1 %or.cond8, true
  %or.cond35 = or i1 %i.az, %or.cond8.not
  br i1 %or.cond35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 5
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !21, !range !17, !noundef !126
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = xor i8 %i.cc, 1
  %spec.select = select i1 %i.cn, i8 0, i8 %i.co
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.cp = phi i8 [ 0, %bb.f ], [ 0, %bb.g ], [ %spec.select, %bb.h ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !323
  %i.cr = trunc nuw i8 %i.bw to i1
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ct = load i8, ptr %i.cs, align 1, !range !17
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = xor i1 %i.cu, true
  %i.cw = select i1 %i.cr, i1 %i.cv, i1 false
  %i.cx = select i1 %i.cw, i8 %i.at, i8 0
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !324
  ret void
}

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare noundef zeroext i1 @_ZNK3gmx14ForceProviders16hasForceProviderEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef zeroext i1 @_Z19pull_have_potentialRK6pull_t(ptr noundef nonnull align 1) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_decidesimulationworkload.cpp() #10 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 16), ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 19, ptr %i.a, align 8, !tbaa !325
  %i.b = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.b, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !13
  %i.c = load i64, ptr %i.a, align 8, !tbaa !325  ; 3 uses
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 16), align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.b, ptr noundef nonnull align 1 dereferenceable(19) @.str, i64 19, i1 false)
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 8), align 8, !tbaa !129
  %i.d = load ptr, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  store i8 0, ptr %i.e, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 32), align 8, !tbaa !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 48), ptr noundef nonnull align 1 dereferenceable(9) @.str.1, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 40), align 8, !tbaa !129
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 57), align 1, !tbaa !14
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 80), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 64), align 8, !tbaa !128
  store i32 1919508848, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 80), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 72), align 8, !tbaa !129
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 84), align 4, !tbaa !14
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 96), align 8, !tbaa !128
  store i64 7809649004360788324, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 112), align 8
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 104), align 8, !tbaa !129
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 120), align 8, !tbaa !14
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 128), align 8, !tbaa !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 144), ptr noundef nonnull align 1 dereferenceable(5) @.str.4, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 136), align 8, !tbaa !129
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 149), align 1, !tbaa !14
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 160), align 8, !tbaa !128
  store i32 1819047280, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 176), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 168), align 8, !tbaa !129
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 180), align 4, !tbaa !14
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 208), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 192), align 8, !tbaa !128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 208), ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  store i64 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 200), align 8, !tbaa !129
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 211), align 1, !tbaa !14
  %i.f = call i32 @__cxa_atexit(ptr nonnull @_ZN3gmx16EnumerationArrayINS_14MtsForceGroupsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_7EED2Ev, ptr nonnull @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, ptr nonnull @__dso_handle) #14 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #11

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !11, i64 8, !4, i64 16}
end_hunk_0
