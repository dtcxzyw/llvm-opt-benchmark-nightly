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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !8    ; 2 uses
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8    ; 2 uses
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
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8    ; 2 uses
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !8    ; 2 uses
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
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !8  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !14
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5
  %i.ak = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
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
  store i8 %i.m, ptr %0, align 1, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !range !18
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond69 = select i1 %i.l, i1 %i.p, i1 false
  br i1 %or.cond69, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !21
  %i.u = trunc i64 %i.t to i8
  %i.v = lshr i8 %i.u, 1
  %i.w = and i8 %i.v, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.x = phi i8 [ %i.w, %bb.b ], [ 0, %bb.a ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.x, ptr %i.y, align 1, !tbaa !23
  %i.z = tail call noundef zeroext i1 @_Z17inputrecNeedMutotPK10t_inputrec(ptr noundef nonnull %2)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ab = zext i1 %i.z to i8
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.a, ptr %i.ac, align 1, !tbaa !25
  %i.ad = xor i1 %10, true
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = zext i1 %i.ad to i8
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.e, ptr %i.ag, align 1, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.f, ptr %i.ah, align 1, !tbaa !28
  %i.ai = xor i1 %11, true
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ak = zext i1 %i.ai to i8
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !29
  br i1 %11, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 424
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !30 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 220
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !42
  %i.as = fcmp une float %i.ar, 0.000000e+00
  %i.at = zext i1 %i.as to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.au = phi i8 [ 0, %bb.d ], [ 0, %bb.c ], [ %i.at, %bb.e ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.au, ptr %i.av, align 1, !tbaa !43
  %i.aw = icmp eq i32 %12, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ay = zext i1 %i.aw to i8
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !44
  %i.az = icmp eq i32 %12, 2
  %i.ba = and i32 %12, -2
  %i.bb = icmp eq i32 %i.ba, 2                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bd = zext i1 %i.bb to i8
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !45
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bf = zext i1 %i.az to i8
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !46
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.g, ptr %i.bg, align 1, !tbaa !47
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.h, ptr %i.bh, align 1, !tbaa !48
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.b, ptr %i.bi, align 1, !tbaa !49
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.c, ptr %i.bj, align 1, !tbaa !50
  %i.bk = xor i1 %15, true
  %i.bl = and i1 %8, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bn = zext i1 %i.bl to i8
  store i8 %i.bn, ptr %i.bm, align 1, !tbaa !51
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.i, ptr %i.bo, align 1, !tbaa !52
  %i.bp = icmp eq i32 %12, 0
  %brmerge.not = and i1 %9, %i.bp
  br i1 %brmerge.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx24createSimulationWorkloadERKNS_8MDLoggerERK10t_inputrecbbbRKNS_23DevelopmentFeatureFlagsEbbbbb10PmeRunModebbbbbENK3$_0clEv", ptr noundef nonnull @.str.11, i32 noundef 122) #13
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.d, ptr %i.bq, align 1, !tbaa !53
  %or.cond = and i1 %9, %16
  %spec.select = and i1 %i.bb, %or.cond           ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.bs = zext i1 %spec.select to i8              ; 2 uses
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !54
  %i.bt = xor i1 %9, %spec.select
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.bv = zext i1 %i.bt to i8
  store i8 %i.bv, ptr %i.bu, align 1, !tbaa !55
  %i.bw = select i1 %15, i8 1, i8 %i.bs           ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !56
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.j, ptr %i.by, align 1, !tbaa !57
  %i.bz = tail call noundef zeroext i1 @_Z28haveEwaldSurfaceContributionRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %2)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.cb = zext i1 %i.bz to i8
  store i8 %i.cb, ptr %i.ca, align 1, !tbaa !58
  %i.cc = load i8, ptr %i.n, align 8, !tbaa !59, !range !18, !noundef !153
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !154
  %i.ce = trunc nuw i8 %i.bw to i1
  %i.cf = or i1 %14, %i.ce
  %i.cg = tail call ptr @getenv(ptr noundef nonnull @.str.7) #14
  %.not59 = icmp eq ptr %i.cg, null
  br i1 %.not59, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = load ptr, ptr %1, align 8, !tbaa !155   ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #14
  %i.cj = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i8 0, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  store ptr %i.ck, ptr %18, align 8, !tbaa !158
  %i.cl = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.cl, align 8, !tbaa !159
  %i.cm = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i8 1, ptr %i.cm, align 8, !tbaa !160
  %i.cn = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull @.str.8)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !163
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull align 8 dereferenceable(40) %i.cn)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit unwind label %bb.l, !inline_history !165

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit: ; preds = %bb.k
  %i.cr = load ptr, ptr %18, align 8, !tbaa !8    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ck
  br i1 %i.cs, label %_ZN3gmx14LogEntryWriterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit
  %i.ct = load i64, ptr %i.ck, align 8, !tbaa !14
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #12
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit

_ZN3gmx14LogEntryWriterD2Ev.exit:                 ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = load ptr, ptr %18, align 8, !tbaa !8    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ck
  br i1 %i.cx, label %_ZN3gmx14LogEntryWriterD2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60: ; preds = %bb.l
  %i.cy = load i64, ptr %i.ck, align 8, !tbaa !14
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #12
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit62

_ZN3gmx14LogEntryWriterD2Ev.exit62:               ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #14
  resume { ptr, i32 } %i.cv

bb.m:                                             ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit, %bb.i, %bb.h
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 0, ptr %i.da, align 1, !tbaa !166
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 0, ptr %i.db, align 1, !tbaa !167
  br i1 %i.cf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx24createSimulationWorkloadERKNS_8MDLoggerERK10t_inputrecbbbRKNS_23DevelopmentFeatureFlagsEbbbbb10PmeRunModebbbbbENK3$_0clEv", ptr noundef nonnull @.str.11, i32 noundef 160) #13
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %i.dc, align 1, !tbaa !168
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 0, ptr %i.dd, align 1, !tbaa !169
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170
  %i.c = tail call noundef zeroext i1 @_ZNK3gmx14ForceProviders16hasForceProviderEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br i1 %i.c, label %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.e = load i8, ptr %i.d, align 8, !tbaa !276, !range !18, !noundef !153
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_Z19pull_have_potentialRK6pull_t(ptr noundef nonnull align 1 %2)
  br i1 %i.g, label %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.i = load i8, ptr %i.h, align 8, !tbaa !277, !range !18, !noundef !153
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.l = load i8, ptr %i.k, align 8, !tbaa !278, !range !18, !noundef !153
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = icmp ne ptr %3, null
  %or.cond.i = or i1 %i.n, %i.m
  br i1 %or.cond.i, label %_ZN3gmxL17haveSpecialForcesERK10t_inputrecRKNS_14ForceProvidersEPK6pull_tPK9gmx_edsam.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.p = load i8, ptr %i.o, align 8, !tbaa !279, !range !18, !noundef !153
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
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !284
  %.not53 = icmp eq i32 %i.ai, 0
  br i1 %.not53, label %.thread48, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !29, !range !18, !noundef !153
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 7
  %i.am = load i8, ptr %i.al, align 1, !tbaa !28, !range !18, !noundef !153
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
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !26, !range !18, !noundef !153
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %.thread50, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.av = load i8, ptr %i.au, align 1, !tbaa !44, !range !18, !noundef !153
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %.thread50, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 25
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !58, !range !18, !noundef !153
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
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !50, !range !18, !noundef !153
  %i.bi = zext nneg i8 %i.bh to i16
  %i.bj = shl nuw nsw i16 %i.bi, 8
  br label %bb.q

bb.q:                                             ; preds = %.thread50, %bb.p, %bb.o
  %i.bk = phi i8 [ %i.bf, %bb.o ], [ %i.bf, %bb.p ], [ %i.ba, %.thread50 ]
  %.sroa.029.sroa.11.0.insert.ext = phi i64 [ 4294967296, %bb.o ], [ 0, %bb.p ], [ 4294967296, %.thread50 ]
  %.sroa.19.9.insert.ext = phi i16 [ 256, %bb.o ], [ %i.bj, %bb.p ], [ 256, %.thread50 ]
  %.sroa.19.9.insert.insert = or disjoint i16 %.sroa.19.9.insert.ext, %.sroa.19.8.insert.ext
  %6 = insertelement <4 x i8> poison, i8 %.sroa.029.sroa.3.0.lcssa, i64 0
  %7 = insertelement <4 x i8> %6, i8 %i.ao, i64 1
  %8 = insertelement <4 x i8> %7, i8 %i.bk, i64 2
  %9 = insertelement <4 x i8> %8, i8 %.sroa.029.sroa.6.0.lcssa, i64 3
  %10 = zext <4 x i8> %9 to <4 x i64>
  %.sroa.029.sroa.9.0.insert.shift = select i1 %i.r, i64 16777216, i64 0
  %11 = shl nuw nsw <4 x i64> %10, <i64 8, i64 56, i64 40, i64 16>
  %12 = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %11)
  %.sroa.029.sroa.6.0.insert.mask = or i64 %12, %.sroa.029.sroa.9.0.insert.shift
  %.sroa.029.sroa.3.0.insert.mask.masked = or disjoint i64 %.sroa.029.sroa.11.0.insert.ext, %.sroa.029.sroa.14.0.insert.ext
  %.sroa.029.sroa.0.0.insert.mask = or i64 %.sroa.029.sroa.6.0.insert.mask, %.sroa.029.sroa.3.0.insert.mask.masked
  %.sroa.029.sroa.0.0.insert.insert = or disjoint i64 %.sroa.029.sroa.0.0.insert.mask, %.sroa.029.sroa.0.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i16 } poison, i64 %.sroa.029.sroa.0.0.insert.insert, 0
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
  %i.c = load i32, ptr %i.b, align 8, !tbaa !309
  %i.d = sext i32 %i.c to i64
  %i.e = srem i64 %4, %i.d
  %i.f = icmp eq i64 %i.e, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ true, %bb.a ], [ %i.f, %bb.b ]  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i16 0, ptr %i.h, align 1
  %i.i = trunc i32 %1 to i8                       ; 3 uses
  %i.j = lshr i8 %i.i, 2                          ; 2 uses
  %i.k = lshr i32 %1, 8                           ; 2 uses
  %i.l = trunc i32 %i.k to i8
  %i.m = lshr i32 %1, 9
  %i.n = trunc i32 %i.m to i8
  %i.o = and i32 %1, 128
  %i.p = icmp ne i32 %i.o, 0                      ; 2 uses
  %i.q = lshr i32 %1, 11                          ; 2 uses
  %i.r = trunc i32 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = lshr i8 %i.i, 4
  %i.u = and i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 1, !tbaa !312
  %i.v = and i32 %1, 64
  %.not = icmp ne i32 %i.v, 0
  %i.w = load i8, ptr %6, align 1, !range !18
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond40 = select i1 %.not, i1 %i.x, i1 false
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !18
  %i.aa = trunc nuw i8 %i.z to i1
  %.not33 = xor i1 %i.aa, true
  %i.ab = or i1 %i.g, %.not33
  %i.ac = zext i1 %i.g to i8                      ; 3 uses
  %i.ad = zext i1 %i.p to i8
  %narrow = select i1 %or.cond40, i1 %i.ab, i1 false
  %i.ae = zext i1 %narrow to i8
  %i.af = insertelement <8 x i8> poison, i8 %i.i, i64 0
  %i.ag = insertelement <8 x i8> %i.af, i8 %i.j, i64 1
  %i.ah = insertelement <8 x i8> %i.ag, i8 %i.ac, i64 2
  %i.ai = insertelement <8 x i8> %i.ah, i8 %i.l, i64 3
  %i.aj = insertelement <8 x i8> %i.ai, i8 %i.n, i64 4
  %i.ak = insertelement <8 x i8> %i.aj, i8 %i.ad, i64 5
  %i.al = insertelement <8 x i8> %i.ak, i8 %i.r, i64 6
  %i.am = insertelement <8 x i8> %i.al, i8 %i.ae, i64 7
  %i.an = and <8 x i8> %i.am, <i8 1, i8 1, i8 -1, i8 1, i8 1, i8 -1, i8 1, i8 -1>
  %i.ao = and i8 %i.j, 1
  store <8 x i8> %i.an, ptr %0, align 1, !tbaa !314
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.aq = lshr i32 %1, 10
  %i.ar = trunc i32 %i.aq to i8
  %i.as = and i8 %i.ar, 1
  store i8 %i.as, ptr %i.ap, align 1, !tbaa !315
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.au = load i8, ptr %i.at, align 1, !tbaa !166, !range !18, !noundef !153
  %i.av = xor i8 %i.ao, 1                         ; 3 uses
  %i.aw = and i8 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !316
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 15
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !167, !range !18, !noundef !153
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = trunc i32 %i.k to i1                    ; 2 uses
  %i.bc = xor i1 %i.bb, true
  %i.bd = and i1 %i.bc, %i.ba                     ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bf = zext i1 %i.bd to i8                     ; 2 uses
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !317
  %or.cond = select i1 %i.g, i1 %i.bd, i1 false
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 10
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !45, !range !18 ; 3 uses
  br i1 %or.cond, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %6, i64 20
  %.pre38 = load i8, ptr %.phi.trans.insert37, align 1, !range !18
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bk = load i8, ptr %i.bj, align 1, !range !18 ; 2 uses
  %i.bl = trunc nuw i8 %i.bk to i1
  %not. = xor i1 %i.bi, true
  %i.bm = select i1 %not., i1 true, i1 %i.bl
  br i1 %i.bm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 22
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !54, !range !18, !noundef !153
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d, %bb.e
  %i.bp = phi i8 [ %.pre38, %._crit_edge ], [ 0, %bb.d ], [ %i.bk, %bb.e ] ; 2 uses
  %i.bq = phi i8 [ %i.bh, %._crit_edge ], [ 1, %bb.d ], [ %i.bh, %bb.e ]
  %i.br = phi i8 [ 0, %._crit_edge ], [ 1, %bb.d ], [ %i.bo, %bb.e ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !318
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 19
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !52, !range !18, !noundef !153 ; 2 uses
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = and i8 %i.bu, %i.av
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !319
  %i.by = select i1 %i.bv, i8 %i.bf, i8 0         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !320
  %i.ca = trunc nuw i8 %i.bq to i1
  %i.cb = trunc nuw i8 %i.bp to i1
  %i.cc = xor i1 %i.cb, true
  %i.cd = select i1 %i.ca, i1 %i.cc, i1 false
  %i.ce = select i1 %i.cd, i8 %i.ac, i8 0         ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !321
  %i.cg = and i8 %i.bp, %i.ac
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !322
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 26
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !154, !range !18, !noundef !153
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = trunc i32 %i.q to i1
  %i.cm = and i1 %i.cl, %i.ck
  %or.cond8 = and i1 %i.g, %i.cm
  %or.cond8.not = xor i1 %or.cond8, true
  %or.cond35 = or i1 %i.bb, %or.cond8.not
  br i1 %or.cond35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 5
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !27, !range !18, !noundef !153
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = xor i8 %i.ce, 1
  %spec.select = select i1 %i.cp, i8 0, i8 %i.cq
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.cr = phi i8 [ 0, %bb.f ], [ 0, %bb.g ], [ %spec.select, %bb.h ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !323
  %i.ct = trunc nuw i8 %i.by to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cv = load i8, ptr %i.cu, align 1, !range !18
  %i.cw = trunc nuw i8 %i.cv to i1
  %i.cx = xor i1 %i.cw, true
  %i.cy = select i1 %i.ct, i1 %i.cx, i1 false
  %i.cz = select i1 %i.cy, i8 %i.av, i8 0
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !324
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
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 16), ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 19, ptr %i.a, align 8, !tbaa !325
  %i.b = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.b, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !8
  %i.c = load i64, ptr %i.a, align 8, !tbaa !325  ; 3 uses
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 16), align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.b, ptr noundef nonnull align 1 dereferenceable(19) @.str, i64 19, i1 false)
  store i64 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 8), align 8, !tbaa !159
  %i.d = load ptr, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c
  store i8 0, ptr %i.e, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 32), align 8, !tbaa !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 48), ptr noundef nonnull align 1 dereferenceable(9) @.str.1, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 40), align 8, !tbaa !159
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 57), align 1, !tbaa !14
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 80), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 64), align 8, !tbaa !158
  store i32 1919508848, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 80), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 72), align 8, !tbaa !159
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 84), align 4, !tbaa !14
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 96), align 8, !tbaa !158
  store i64 7809649004360788324, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 112), align 8
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 104), align 8, !tbaa !159
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 120), align 8, !tbaa !14
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 128), align 8, !tbaa !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 144), ptr noundef nonnull align 1 dereferenceable(5) @.str.4, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 136), align 8, !tbaa !159
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 149), align 1, !tbaa !14
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 176), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 160), align 8, !tbaa !158
  store i32 1819047280, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 176), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 168), align 8, !tbaa !159
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 180), align 4, !tbaa !14
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 208), ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 192), align 8, !tbaa !158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 208), ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  store i64 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmxL18mtsForceGroupNamesB5cxx11E, i64 200), align 8, !tbaa !159
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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !13, i64 8, !6, i64 16}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTSN3gmx18SimulationWorkloadE", !17, i64 0, !17, i64 1, !17, i64 2, !17, i64 3, !17, i64 4, !17, i64 5, !17, i64 6, !17, i64 7, !17, i64 8, !17, i64 9, !17, i64 10, !17, i64 11, !17, i64 12, !17, i64 13, !17, i64 14, !17, i64 15, !17, i64 16, !17, i64 17, !17, i64 18, !17, i64 19, !17, i64 20, !17, i64 21, !17, i64 22, !17, i64 23, !17, i64 24, !17, i64 25, !17, i64 26, !17, i64 27, !17, i64 28}
!17 = !{!"bool", !6, i64 0}
!18 = !{i8 0, i8 2}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTSN3gmx8MtsLevelE", !12, i64 0}
!21 = !{!22, !13, i64 0}
!22 = !{!"_ZTSSt12_Base_bitsetILm1EE", !13, i64 0}
!23 = !{!16, !17, i64 1}
!24 = !{!16, !17, i64 2}
!25 = !{!16, !17, i64 3}
!26 = !{!16, !17, i64 4}
!27 = !{!16, !17, i64 5}
!28 = !{!16, !17, i64 7}
!29 = !{!16, !17, i64 6}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTS8t_lambda", !12, i64 0}
!32 = !{!33, !5, i64 36}
!33 = !{!"_ZTS8t_lambda", !5, i64 0, !34, i64 8, !5, i64 16, !34, i64 24, !35, i64 32, !5, i64 36, !36, i64 40, !5, i64 208, !5, i64 212, !5, i64 216, !37, i64 220, !5, i64 224, !37, i64 228, !37, i64 232, !37, i64 236, !17, i64 240, !38, i64 244, !37, i64 248, !37, i64 252, !37, i64 256, !39, i64 260, !40, i64 268, !41, i64 272, !5, i64 276, !34, i64 280}
!34 = !{!"double", !6, i64 0}
!35 = !{!"_ZTS21FreeEnergyPrintEnergy", !6, i64 0}
!36 = !{!"_ZTSN3gmx16EnumerationArrayI34FreeEnergyPerturbationCouplingTypeSt6vectorIdSaIdEELS1_7EEE", !6, i64 0}
!37 = !{!"float", !6, i64 0}
!38 = !{!"_ZTS12SoftcoreType", !6, i64 0}
!39 = !{!"_ZTSN3gmx16EnumerationArrayI34FreeEnergyPerturbationCouplingTypebLS1_7EEE", !6, i64 0}
!40 = !{!"_ZTS16SeparateDhdlFile", !6, i64 0}
!41 = !{!"_ZTS25DhDlDerivativeCalculation", !6, i64 0}
!42 = !{!33, !37, i64 220}
!43 = !{!16, !17, i64 8}
!44 = !{!16, !17, i64 9}
!45 = !{!16, !17, i64 10}
!46 = !{!16, !17, i64 11}
!47 = !{!16, !17, i64 12}
!48 = !{!16, !17, i64 13}
!49 = !{!16, !17, i64 16}
!50 = !{!16, !17, i64 17}
!51 = !{!16, !17, i64 18}
!52 = !{!16, !17, i64 19}
!53 = !{!16, !17, i64 20}
!54 = !{!16, !17, i64 22}
!55 = !{!16, !17, i64 21}
!56 = !{!16, !17, i64 23}
!57 = !{!16, !17, i64 24}
!58 = !{!16, !17, i64 25}
!59 = !{!60, !17, i64 96}
!60 = !{!"_ZTS10t_inputrec", !5, i64 0, !61, i64 4, !13, i64 8, !5, i64 16, !13, i64 24, !5, i64 32, !62, i64 36, !5, i64 40, !5, i64 44, !63, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !34, i64 80, !34, i64 88, !17, i64 96, !64, i64 104, !37, i64 128, !37, i64 132, !37, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !37, i64 156, !37, i64 160, !68, i64 164, !37, i64 168, !69, i64 172, !70, i64 176, !17, i64 180, !17, i64 181, !71, i64 184, !37, i64 188, !72, i64 192, !5, i64 196, !17, i64 200, !73, i64 204, !77, i64 296, !77, i64 320, !5, i64 344, !37, i64 348, !37, i64 352, !37, i64 356, !37, i64 360, !82, i64 364, !83, i64 368, !37, i64 372, !37, i64 376, !37, i64 380, !37, i64 384, !17, i64 388, !84, i64 392, !83, i64 396, !37, i64 400, !37, i64 404, !85, i64 408, !37, i64 412, !37, i64 416, !86, i64 420, !87, i64 424, !17, i64 432, !93, i64 440, !17, i64 448, !100, i64 456, !107, i64 464, !37, i64 468, !108, i64 472, !17, i64 476, !5, i64 480, !37, i64 484, !37, i64 488, !37, i64 492, !5, i64 496, !37, i64 500, !37, i64 504, !5, i64 508, !37, i64 512, !5, i64 516, !5, i64 520, !109, i64 524, !5, i64 528, !37, i64 532, !5, i64 536, !17, i64 540, !37, i64 544, !13, i64 552, !5, i64 560, !110, i64 564, !37, i64 568, !6, i64 572, !6, i64 580, !37, i64 588, !17, i64 592, !111, i64 600, !17, i64 608, !118, i64 616, !17, i64 624, !125, i64 632, !132, i64 640, !133, i64 648, !17, i64 656, !140, i64 664, !37, i64 672, !6, i64 676, !5, i64 712, !5, i64 716, !5, i64 720, !5, i64 724, !37, i64 728, !37, i64 732, !37, i64 736, !37, i64 740, !141, i64 744, !17, i64 864, !17, i64 865, !17, i64 866, !17, i64 867, !146, i64 872, !147, i64 880}
!61 = !{!"_ZTS20IntegrationAlgorithm", !6, i64 0}
!62 = !{!"_ZTS12CutoffScheme", !6, i64 0}
!63 = !{!"_ZTS19ComRemovalAlgorithm", !6, i64 0}
!64 = !{!"_ZTSSt6vectorIN3gmx8MtsLevelESaIS1_EE", !65, i64 0}
!65 = !{!"_ZTSSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE", !66, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE12_Vector_implE", !67, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!68 = !{!"_ZTS13EwaldGeometry", !6, i64 0}
!69 = !{!"_ZTS12LongRangeVdW", !6, i64 0}
!70 = !{!"_ZTS7PbcType", !6, i64 0}
!71 = !{!"_ZTS26EnsembleTemperatureSetting", !6, i64 0}
!72 = !{!"_ZTS19TemperatureCoupling", !6, i64 0}
!73 = !{!"_ZTS23PressureCouplingOptions", !74, i64 0, !75, i64 4, !5, i64 8, !37, i64 12, !6, i64 16, !6, i64 52, !76, i64 88}
!74 = !{!"_ZTS16PressureCoupling", !6, i64 0}
!75 = !{!"_ZTS20PressureCouplingType", !6, i64 0}
!76 = !{!"_ZTS15RefCoordScaling", !6, i64 0}
!77 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !78, i64 0}
!78 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !79, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !80, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!81 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !12, i64 0}
!82 = !{!"_ZTS22CoulombInteractionType", !6, i64 0}
!83 = !{!"_ZTS20InteractionModifiers", !6, i64 0}
!84 = !{!"_ZTS15VanDerWaalsType", !6, i64 0}
!85 = !{!"_ZTS24DispersionCorrectionType", !6, i64 0}
!86 = !{!"_ZTS26FreeEnergyPerturbationType", !6, i64 0}
!87 = !{!"_ZTSSt10unique_ptrI8t_lambdaSt14default_deleteIS0_EE", !88, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_dataI8t_lambdaSt14default_deleteIS0_ELb1ELb1EE", !89, i64 0}
!89 = !{!"_ZTSSt15__uniq_ptr_implI8t_lambdaSt14default_deleteIS0_EE", !90, i64 0}
!90 = !{!"_ZTSSt5tupleIJP8t_lambdaSt14default_deleteIS0_EEE", !91, i64 0}
!91 = !{!"_ZTSSt11_Tuple_implILm0EJP8t_lambdaSt14default_deleteIS0_EEE", !92, i64 0}
!92 = !{!"_ZTSSt10_Head_baseILm0EP8t_lambdaLb0EE", !31, i64 0}
!93 = !{!"_ZTSSt10unique_ptrI9t_simtempSt14default_deleteIS0_EE", !94, i64 0}
!94 = !{!"_ZTSSt15__uniq_ptr_dataI9t_simtempSt14default_deleteIS0_ELb1ELb1EE", !95, i64 0}
!95 = !{!"_ZTSSt15__uniq_ptr_implI9t_simtempSt14default_deleteIS0_EE", !96, i64 0}
!96 = !{!"_ZTSSt5tupleIJP9t_simtempSt14default_deleteIS0_EEE", !97, i64 0}
!97 = !{!"_ZTSSt11_Tuple_implILm0EJP9t_simtempSt14default_deleteIS0_EEE", !98, i64 0}
!98 = !{!"_ZTSSt10_Head_baseILm0EP9t_simtempLb0EE", !99, i64 0}
!99 = !{!"p1 _ZTS9t_simtemp", !12, i64 0}
!100 = !{!"_ZTSSt10unique_ptrI10t_expandedSt14default_deleteIS0_EE", !101, i64 0}
!101 = !{!"_ZTSSt15__uniq_ptr_dataI10t_expandedSt14default_deleteIS0_ELb1ELb1EE", !102, i64 0}
!102 = !{!"_ZTSSt15__uniq_ptr_implI10t_expandedSt14default_deleteIS0_EE", !103, i64 0}
!103 = !{!"_ZTSSt5tupleIJP10t_expandedSt14default_deleteIS0_EEE", !104, i64 0}
!104 = !{!"_ZTSSt11_Tuple_implILm0EJP10t_expandedSt14default_deleteIS0_EEE", !105, i64 0}
!105 = !{!"_ZTSSt10_Head_baseILm0EP10t_expandedLb0EE", !106, i64 0}
!106 = !{!"p1 _ZTS10t_expanded", !12, i64 0}
!107 = !{!"_ZTS27DistanceRestraintRefinement", !6, i64 0}
!108 = !{!"_ZTS26DistanceRestraintWeighting", !6, i64 0}
!109 = !{!"_ZTS19ConstraintAlgorithm", !6, i64 0}
!110 = !{!"_ZTS8WallType", !6, i64 0}
!111 = !{!"_ZTSSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EE", !112, i64 0}
!112 = !{!"_ZTSSt15__uniq_ptr_dataI13pull_params_tSt14default_deleteIS0_ELb1ELb1EE", !113, i64 0}
!113 = !{!"_ZTSSt15__uniq_ptr_implI13pull_params_tSt14default_deleteIS0_EE", !114, i64 0}
!114 = !{!"_ZTSSt5tupleIJP13pull_params_tSt14default_deleteIS0_EEE", !115, i64 0}
!115 = !{!"_ZTSSt11_Tuple_implILm0EJP13pull_params_tSt14default_deleteIS0_EEE", !116, i64 0}
!116 = !{!"_ZTSSt10_Head_baseILm0EP13pull_params_tLb0EE", !117, i64 0}
!117 = !{!"p1 _ZTS13pull_params_t", !12, i64 0}
!118 = !{!"_ZTSSt10unique_ptrIN3gmx9AwhParamsESt14default_deleteIS1_EE", !119, i64 0}
!119 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx9AwhParamsESt14default_deleteIS1_ELb1ELb1EE", !120, i64 0}
!120 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx9AwhParamsESt14default_deleteIS1_EE", !121, i64 0}
!121 = !{!"_ZTSSt5tupleIJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !122, i64 0}
!122 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !123, i64 0}
!123 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx9AwhParamsELb0EE", !124, i64 0}
!124 = !{!"p1 _ZTSN3gmx9AwhParamsE", !12, i64 0}
!125 = !{!"_ZTSSt10unique_ptrI5t_rotSt14default_deleteIS0_EE", !126, i64 0}
!126 = !{!"_ZTSSt15__uniq_ptr_dataI5t_rotSt14default_deleteIS0_ELb1ELb1EE", !127, i64 0}
!127 = !{!"_ZTSSt15__uniq_ptr_implI5t_rotSt14default_deleteIS0_EE", !128, i64 0}
!128 = !{!"_ZTSSt5tupleIJP5t_rotSt14default_deleteIS0_EEE", !129, i64 0}
!129 = !{!"_ZTSSt11_Tuple_implILm0EJP5t_rotSt14default_deleteIS0_EEE", !130, i64 0}
!130 = !{!"_ZTSSt10_Head_baseILm0EP5t_rotLb0EE", !131, i64 0}
!131 = !{!"p1 _ZTS5t_rot", !12, i64 0}
!132 = !{!"_ZTS8SwapType", !6, i64 0}
!133 = !{!"_ZTSSt10unique_ptrI12t_swapcoordsSt14default_deleteIS0_EE", !134, i64 0}
!134 = !{!"_ZTSSt15__uniq_ptr_dataI12t_swapcoordsSt14default_deleteIS0_ELb1ELb1EE", !135, i64 0}
!135 = !{!"_ZTSSt15__uniq_ptr_implI12t_swapcoordsSt14default_deleteIS0_EE", !136, i64 0}
!136 = !{!"_ZTSSt5tupleIJP12t_swapcoordsSt14default_deleteIS0_EEE", !137, i64 0}
!137 = !{!"_ZTSSt11_Tuple_implILm0EJP12t_swapcoordsSt14default_deleteIS0_EEE", !138, i64 0}
!138 = !{!"_ZTSSt10_Head_baseILm0EP12t_swapcoordsLb0EE", !139, i64 0}
!139 = !{!"p1 _ZTS12t_swapcoords", !12, i64 0}
!140 = !{!"p1 _ZTS5t_IMD", !12, i64 0}
!141 = !{!"_ZTS9t_grpopts", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !142, i64 16, !142, i64 24, !12, i64 32, !143, i64 40, !144, i64 48, !144, i64 56, !142, i64 64, !77, i64 72, !143, i64 96, !143, i64 104, !5, i64 112}
!142 = !{!"p1 float", !12, i64 0}
!143 = !{!"p1 int", !12, i64 0}
!144 = !{!"p2 float", !145, i64 0}
!145 = !{!"any p2 pointer", !12, i64 0}
!146 = !{!"p1 _ZTSN3gmx18KeyValueTreeObjectE", !12, i64 0}
!147 = !{!"_ZTSSt10unique_ptrIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !148, i64 0}
!148 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_ELb1ELb1EE", !149, i64 0}
!149 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !150, i64 0}
!150 = !{!"_ZTSSt5tupleIJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !151, i64 0}
!151 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !152, i64 0}
!152 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx18KeyValueTreeObjectELb0EE", !146, i64 0}
!153 = !{}
!154 = !{!16, !17, i64 26}
!155 = !{!156, !157, i64 0}
!156 = !{!"_ZTSN3gmx14LogLevelHelperE", !157, i64 0}
!157 = !{!"p1 _ZTSN3gmx10ILogTargetE", !12, i64 0}
!158 = !{!10, !11, i64 0}
!159 = !{!9, !13, i64 8}
!160 = !{!161, !17, i64 32}
!161 = !{!"_ZTSN3gmx14LogEntryWriterE", !162, i64 0}
!162 = !{!"_ZTSN3gmx8LogEntryE", !9, i64 0, !17, i64 32}
!163 = !{!164, !164, i64 0}
!164 = !{!"vtable pointer", !7, i64 0}
!165 = distinct !{null}
!166 = !{!16, !17, i64 14}
!167 = !{!16, !17, i64 15}
!168 = !{!16, !17, i64 27}
!169 = !{!16, !17, i64 28}
!170 = !{!171, !264, i64 512}
!171 = !{!"_ZTS10t_forcerec", !172, i64 0, !70, i64 8, !17, i64 12, !76, i64 16, !77, i64 24, !77, i64 48, !17, i64 72, !17, i64 73, !179, i64 76, !180, i64 80, !83, i64 84, !83, i64 88, !37, i64 92, !181, i64 96, !181, i64 112, !181, i64 128, !182, i64 144, !37, i64 152, !189, i64 160, !86, i64 168, !196, i64 176, !201, i64 200, !77, i64 224, !205, i64 248, !212, i64 256, !5, i64 264, !219, i64 272, !5, i64 296, !5, i64 300, !224, i64 304, !229, i64 328, !69, i64 336, !5, i64 340, !17, i64 344, !230, i64 352, !230, i64 376, !143, i64 400, !37, i64 408, !5, i64 412, !234, i64 416, !37, i64 424, !5, i64 428, !5, i64 432, !5, i64 436, !5, i64 440, !37, i64 444, !37, i64 448, !37, i64 452, !37, i64 456, !238, i64 464, !245, i64 472, !250, i64 496, !257, i64 504, !264, i64 512, !265, i64 520, !266, i64 528, !267, i64 536, !274, i64 544, !275, i64 568}
!172 = !{!"_ZTSSt10unique_ptrI19interaction_const_tSt14default_deleteIS0_EE", !173, i64 0}
!173 = !{!"_ZTSSt15__uniq_ptr_dataI19interaction_const_tSt14default_deleteIS0_ELb1ELb1EE", !174, i64 0}
!174 = !{!"_ZTSSt15__uniq_ptr_implI19interaction_const_tSt14default_deleteIS0_EE", !175, i64 0}
!175 = !{!"_ZTSSt5tupleIJP19interaction_const_tSt14default_deleteIS0_EEE", !176, i64 0}
!176 = !{!"_ZTSSt11_Tuple_implILm0EJP19interaction_const_tSt14default_deleteIS0_EEE", !177, i64 0}
!177 = !{!"_ZTSSt10_Head_baseILm0EP19interaction_const_tLb0EE", !178, i64 0}
!178 = !{!"p1 _ZTS19interaction_const_t", !12, i64 0}
!179 = !{!"_ZTS16NbkernelElecType", !6, i64 0}
!180 = !{!"_ZTS15NbkernelVdwType", !6, i64 0}
!181 = !{!"_ZTSSt5arrayIdLm2EE", !6, i64 0}
!182 = !{!"_ZTSSt10unique_ptrI20DispersionCorrectionSt14default_deleteIS0_EE", !183, i64 0}
!183 = !{!"_ZTSSt15__uniq_ptr_dataI20DispersionCorrectionSt14default_deleteIS0_ELb1ELb1EE", !184, i64 0}
!184 = !{!"_ZTSSt15__uniq_ptr_implI20DispersionCorrectionSt14default_deleteIS0_EE", !185, i64 0}
!185 = !{!"_ZTSSt5tupleIJP20DispersionCorrectionSt14default_deleteIS0_EEE", !186, i64 0}
!186 = !{!"_ZTSSt11_Tuple_implILm0EJP20DispersionCorrectionSt14default_deleteIS0_EEE", !187, i64 0}
!187 = !{!"_ZTSSt10_Head_baseILm0EP20DispersionCorrectionLb0EE", !188, i64 0}
!188 = !{!"p1 _ZTS20DispersionCorrection", !12, i64 0}
!189 = !{!"_ZTSSt10unique_ptrI12t_forcetableSt14default_deleteIS0_EE", !190, i64 0}
!190 = !{!"_ZTSSt15__uniq_ptr_dataI12t_forcetableSt14default_deleteIS0_ELb1ELb1EE", !191, i64 0}
!191 = !{!"_ZTSSt15__uniq_ptr_implI12t_forcetableSt14default_deleteIS0_EE", !192, i64 0}
!192 = !{!"_ZTSSt5tupleIJP12t_forcetableSt14default_deleteIS0_EEE", !193, i64 0}
!193 = !{!"_ZTSSt11_Tuple_implILm0EJP12t_forcetableSt14default_deleteIS0_EEE", !194, i64 0}
!194 = !{!"_ZTSSt10_Head_baseILm0EP12t_forcetableLb0EE", !195, i64 0}
end_hunk_0
