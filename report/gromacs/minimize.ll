Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/minimize?download=true
inline.NumInlined: 1769
inline.NumDeleted: 812
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 45
begin_hunk_0
@.str.119 = private unnamed_addr constant [31 x i8] c"Allocating Hessian memory...\0A\0A\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"full_matrix\00", align 1
@.str.121 = private unnamed_addr constant [51 x i8] c"starting normal mode calculation '%s'\0A%ld steps.\0A\0A\00", align 1
@.str.122 = private unnamed_addr constant [21 x i8] c"Maximum force:%12.5e\00", align 1
@.str.123 = private unnamed_addr constant [164 x i8] c"The force is probably not small enough to ensure that you are at a minimum.\0ABe aware that negative eigenvalues may occur\0Awhen the resulting matrix is diagonalized.\00", align 1
@.str.124 = private unnamed_addr constant [29 x i8] c"\0DFinished step %d out of %td\00", align 1
@.str.125 = private unnamed_addr constant [22 x i8] c"\0A\0AWriting Hessian...\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_minimize.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !9
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.d, ptr %i.a, align 8, !tbaa !13
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !15
  %i.g = load i64, ptr %i.a, align 8, !tbaa !13
  store i64 %i.g, ptr %i.b, align 8, !tbaa !17
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.i, ptr %i.h, align 1, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !18
  %i.l = load ptr, ptr %0, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx16EnumerationArrayINS_14MtsForceGroupsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELS1_7EED2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !17
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !17
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.q = load i64, ptr %i.o, align 8, !tbaa !17
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %i.w = load i64, ptr %i.u, align 8, !tbaa !17
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !17
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !15 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !17
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5
  %i.ak = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5
  %i.an = load i64, ptr %i.al, align 8, !tbaa !17
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #33
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx15LegacySimulator5do_cgEv(ptr nofree noundef nonnull readonly align 8 dereferenceable(297) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca double, align 8                   ; 8 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca [3 x float], align 4              ; 9 uses
  %i.f = alloca [3 x [3 x float]], align 16       ; 8 uses
  %i.g = alloca [3 x [3 x float]], align 16       ; 8 uses
  %1 = alloca %"class.gmx::LogEntryWriter", align 8 ; 12 uses
  %2 = alloca %struct.em_state, align 8           ; 14 uses
  %3 = alloca %struct.em_state, align 8           ; 10 uses
  %4 = alloca %struct.em_state, align 8           ; 10 uses
  %5 = alloca %struct.em_state, align 8           ; 10 uses
  %6 = alloca %"class.gmx::ObservablesReducer", align 8 ; 11 uses
  %7 = alloca %"class.gmx::EnergyOutput", align 8 ; 11 uses
  %8 = alloca %"class.(anonymous namespace)::EnergyEvaluator", align 8 ; 23 uses
  %i.h = alloca [3 x [3 x float]], align 16       ; 5 uses
  %9 = alloca %"struct.gmx::PTCouplingArrays", align 8 ; 2 uses
  %i.i = alloca double, align 8                   ; 16 uses
  %10 = alloca %"class.gmx::ArrayRefWithPadding.430", align 8 ; 4 uses
  %i.j = alloca double, align 8                   ; 12 uses
  %i.k = alloca double, align 8                   ; 12 uses
  %11 = alloca %"class.gmx::ArrayRefWithPadding.430", align 8 ; 4 uses
  %i.l = alloca [3 x [3 x float]], align 16       ; 5 uses
  %12 = alloca %"struct.gmx::PTCouplingArrays", align 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 18 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62, !nonnull !66, !align !67
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !68
  %i.t = icmp ne i32 %i.s, 0                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 25 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 516
  %i.x = load i32, ptr %i.w, align 4, !tbaa !79   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !177
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !178 ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !180, !nonnull !66, !align !67
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !181 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.ah, ptr %1, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 1, ptr %i.aj, align 8, !tbaa !184
  %i.ak = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.9, i64 noundef 223)
          to label %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit unwind label %bb.b ; 0 uses

_ZN3gmx14LogEntryWriter10appendTextEPKc.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !187
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit unwind label %bb.b, !inline_history !189

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit: ; preds = %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit
  %i.ao = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ah
  br i1 %i.ap, label %_ZN3gmx14LogEntryWriterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit
  %i.aq = load i64, ptr %i.ah, align 8, !tbaa !17
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #32
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit

_ZN3gmx14LogEntryWriterD2Ev.exit:                 ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.c

bb.b:                                             ; preds = %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ah
  br i1 %i.au, label %_ZN3gmx14LogEntryWriterD2Ev.exit367, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i365

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i365: ; preds = %bb.b
  %i.av = load i64, ptr %i.ah, align 8, !tbaa !17
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #32
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit367

_ZN3gmx14LogEntryWriterD2Ev.exit367:              ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i365
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.gz

bb.c:                                             ; preds = %bb.a, %_ZN3gmx14LogEntryWriterD2Ev.exit
  br i1 %i.t, label %.loopexit577, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !190
  call void @_ZN7t_state8addEntryE10StateEntry(ptr noundef nonnull align 8 dereferenceable(840) %i.ay, i32 noundef 10)
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !190 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 496
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !191 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 520
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bc, align 8, !tbaa !191 ; 2 uses
  %.not565643 = icmp eq ptr %i.bb, %.sroa.0.0.copyload.i
  br i1 %.not565643, label %.loopexit577, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %.sroa.0.0.copyload.i741 = ptrtoaddr ptr %.sroa.0.0.copyload.i to i64
  %i.bd = ptrtoaddr ptr %i.bb to i64
  %i.be = add i64 %.sroa.0.0.copyload.i741, -12
  %i.bf = sub i64 %i.be, %i.bd
  %.fr = freeze i64 %i.bf                         ; 2 uses
  %i.bg = urem i64 %.fr, 12
  %i.bh = sub nuw i64 %.fr, %i.bg
  %i.bi = add i64 %i.bh, 12
  call void @llvm.memset.p0.i64(ptr align 4 %i.bb, i8 0, i64 %i.bi, i1 false)
  br label %.loopexit577

.loopexit577:                                     ; preds = %.lr.ph.preheader, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN7t_stateC1Ev(ptr noundef nonnull align 8 dereferenceable(840) %2)
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 840 ; 3 uses
  invoke void @_ZN3gmx12ForceBuffersC1Ev(ptr noundef nonnull align 8 dereferenceable(137) %i.bj)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %.loopexit577
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 984
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 988 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 992 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 996 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZN7t_stateC1Ev(ptr noundef nonnull align 8 dereferenceable(840) %3)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 840 ; 3 uses
  invoke void @_ZN3gmx12ForceBuffersC1Ev(ptr noundef nonnull align 8 dereferenceable(137) %i.bo)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 984
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN7t_stateC1Ev(ptr noundef nonnull align 8 dereferenceable(840) %4)
          to label %bb.h unwind label %bb.w

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 840 ; 3 uses
  invoke void @_ZN3gmx12ForceBuffersC1Ev(ptr noundef nonnull align 8 dereferenceable(137) %i.bq)
          to label %bb.i unwind label %bb.x

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 984
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZN7t_stateC1Ev(ptr noundef nonnull align 8 dereferenceable(840) %5)
          to label %bb.j unwind label %bb.y

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 840 ; 3 uses
  invoke void @_ZN3gmx12ForceBuffersC1Ev(ptr noundef nonnull align 8 dereferenceable(137) %i.bs)
          to label %bb.k unwind label %bb.z

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 984
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !192
  invoke void @_ZN3gmx25ObservablesReducerBuilder5buildEv(ptr dead_on_unwind nonnull writable sret(%"class.gmx::ObservablesReducer") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k
  %i.bw = load ptr, ptr %i.m, align 8, !tbaa !193
  %i.bx = load ptr, ptr %i.ab, align 8, !tbaa !180, !nonnull !66, !align !67
  %i.by = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.bz = load ptr, ptr %i.u, align 8, !tbaa !78
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !194
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 7 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !195
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !196
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 7 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !190
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 9 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !197, !nonnull !66, !align !67
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !198
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !199
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !200
  %i.cq = load ptr, ptr %i.y, align 8, !tbaa !177
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !201
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 7 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !202
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !203
  invoke fastcc void @_ZL7init_emP8_IO_FILERKN3gmx8MDLoggerEPKcPK9t_commrecPK10t_inputrecRKNS1_18MDModulesNotifiersEPNS1_10ImdSessionEP6pull_tP7t_stateRK10gmx_mtop_tP8em_stateP14gmx_localtop_tP6t_nrnbP10t_forcerecPNS1_7MDAtomsEPP15gmx_global_statPNS1_19VirtualSitesHandlerEPNS1_11ConstraintsERKNS1_21MdrunScheduleWorkloadEPP13gmx_shellfc_t(ptr noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(40) %i.bx, ptr noundef nonnull @.str.8, ptr noundef %i.by, ptr noundef %i.bz, ptr noundef nonnull align 1 %i.cb, ptr noundef %i.cd, ptr noundef %i.cf, ptr noundef %i.ch, ptr noundef nonnull align 8 dereferenceable(768) %i.cj, ptr noundef nonnull %2, ptr noundef %i.cl, ptr noundef %i.cn, ptr noundef %i.cp, ptr noundef %i.cq, ptr noundef %i.b, ptr noundef %i.cs, ptr noundef %i.cu, ptr noundef nonnull align 1 dereferenceable(58) %i.cw, ptr noundef null)
          to label %bb.m unwind label %bb.ab

end_hunk_0
begin_hunk_1_@_ZN3gmx15LegacySimulator5do_cgEv:bb.a
  %i.gi = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !243
  store <2 x ptr> %i.gi, ptr %i.gh, align 8, !tbaa !243
  %i.gj = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !246
  store ptr %i.gl, ptr %i.gj, align 8, !tbaa !247
  %i.gm = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.gn = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !243
  store <2 x ptr> %i.gn, ptr %i.gm, align 8, !tbaa !243
  %i.go = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.gp = load ptr, ptr %i.b, align 8, !tbaa !248
  store ptr %i.gp, ptr %i.go, align 8, !tbaa !249
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 112
  store ptr %6, ptr %i.gq, align 8, !tbaa !250
  %i.gr = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.gs = load <2 x ptr>, ptr %i.cr, align 8, !tbaa !243
  %i.gt = call <4 x ptr> @llvm.masked.load.v4p0.p0(ptr nonnull align 8 %i.y, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x ptr> poison), !tbaa !243
  %i.gu = shufflevector <4 x ptr> %i.gt, <4 x ptr> poison, <2 x i32> <i32 0, i32 3>
  %i.gv = shufflevector <2 x ptr> %i.gs, <2 x ptr> %i.gu, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x ptr> %i.gv, ptr %i.gr, align 8, !tbaa !243
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.gx = load ptr, ptr %i.cv, align 8, !tbaa !203
  store ptr %i.gx, ptr %i.gw, align 8, !tbaa !251
  %i.gy = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !252
  store ptr %i.ha, ptr %i.gy, align 8, !tbaa !253
  %i.hb = getelementptr inbounds nuw i8, ptr %8, i64 168
  store i32 -1, ptr %i.hb, align 8, !tbaa !254
  %i.hc = getelementptr inbounds nuw i8, ptr %8, i64 176 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hc, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN12_GLOBAL__N_115EnergyEvaluator3runEP8em_statePfPA3_fS5_lbl(ptr noundef nonnull align 8 dereferenceable(200) %8, ptr noundef nonnull %2, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.g, i64 noundef -1, i1 noundef zeroext true, i64 noundef 0)
          to label %bb.ai unwind label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN3gmx18ObservablesReducer19markAsReadyToReduceEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.aj unwind label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.t, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.h, i8 0, i64 36, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.he = load float, ptr %i.hd, align 8, !tbaa !255
  %i.hf = load ptr, ptr %i.gz, align 8, !tbaa !252
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %9, i8 0, i64 72, i1 false)
  %i.hg = load ptr, ptr %i.ct, align 8, !tbaa !202
  invoke void @_ZN3gmx12EnergyOutput19addDataAtEnergyStepEbbdfPK14gmx_enerdata_tPK8t_lambdaPA3_KfNS_16PTCouplingArraysEiS9_S9_PK14gmx_ekindata_tPS7_PKNS_11ConstraintsE(ptr noundef nonnull align 8 dereferenceable(392) %7, i1 noundef zeroext false, i1 noundef zeroext false, double noundef 0.000000e+00, float noundef %i.he, ptr noundef %i.hf, ptr noundef null, ptr noundef nonnull %i.h, ptr noundef nonnull byval(%"struct.gmx::PTCouplingArrays") align 8 %9, i32 noundef 0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef null, ptr noundef nonnull %i.e, ptr noundef %i.hg)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.hh = load ptr, ptr %i.m, align 8, !tbaa !193
  invoke void @_ZN3gmx12EnergyOutput11printHeaderEP8_IO_FILEld(ptr noundef %i.hh, i64 noundef 0, double noundef 0.000000e+00)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.hi = invoke noundef ptr @_Z17mdoutf_get_fp_eneP10gmx_mdoutf(ptr noundef %i.do)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.hj = load ptr, ptr %i.m, align 8, !tbaa !193
  %i.hk = load ptr, ptr %i.co, align 8, !tbaa !200
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 464
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !287
  invoke void @_ZN3gmx12EnergyOutput21printStepToEnergyFileEP9ener_filebbbP8_IO_FILEldP8t_fcdataPNS_3AwhE(ptr noundef nonnull align 8 dereferenceable(392) %7, ptr noundef %i.hi, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %i.hj, i64 noundef 0, double noundef 0.000000e+00, ptr noundef %i.hm, ptr noundef null)
          to label %bb.ar unwind label %bb.ap

bb.ao:                                            ; preds = %bb.gl, %bb.gm, %bb.gf, %bb.ge, %bb.gb, %bb.fy, %bb.fw, %bb.fu, %bb.ai, %bb.ah
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.ap:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  br label %bb.gp

bb.aq:                                            ; preds = %bb.aj
  %i.hp = load ptr, ptr %i.u, align 8, !tbaa !78
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 500
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !289
  %i.hs = load float, ptr %i.bl, align 4, !tbaa !290
  %i.ht = fdiv float %i.hr, %i.hs
  br label %bb.as

bb.ar:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  %i.hu = load ptr, ptr %i.u, align 8, !tbaa !78
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 500
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !289
  %i.hx = load float, ptr %i.bl, align 4, !tbaa !290
  %i.hy = fdiv float %i.hw, %i.hx
  %i.hz = load ptr, ptr %i.cg, align 8, !tbaa !190
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !321
  %i.ib = sitofp i32 %i.ia to double
  %i.ic = call double @sqrt(double noundef %i.ib) #23 ; 2 uses
  %i.id = load ptr, ptr @stderr, align 8, !tbaa !236
  %i.ie = load float, ptr %i.bm, align 8, !tbaa !322
  %i.if = fpext float %i.ie to double
  %i.ig = load i32, ptr %i.bn, align 4, !tbaa !323
  %i.ih = add nsw i32 %i.ig, 1
  %i.ii = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.id, ptr noundef nonnull @.str.10, double noundef %i.if, i32 noundef %i.ih) #34 ; 0 uses
  %i.ij = load ptr, ptr @stderr, align 8, !tbaa !236
  %i.ik = load float, ptr %i.bl, align 4, !tbaa !290
  %i.il = fpext float %i.ik to double
  %i.im = fdiv double %i.il, %i.ic
  %i.in = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ij, ptr noundef nonnull @.str.11, double noundef %i.im) #34 ; 0 uses
  %i.io = load ptr, ptr @stderr, align 8, !tbaa !236
  %fputc = call i32 @fputc(i32 10, ptr %i.io)     ; 0 uses
  %i.ip = load ptr, ptr %i.m, align 8, !tbaa !193
  %i.iq = load float, ptr %i.bm, align 8, !tbaa !322
  %i.ir = fpext float %i.iq to double
  %i.is = load i32, ptr %i.bn, align 4, !tbaa !323
  %i.it = add nsw i32 %i.is, 1
  %i.iu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ip, ptr noundef nonnull @.str.10, double noundef %i.ir, i32 noundef %i.it) #23 ; 0 uses
  %i.iv = load ptr, ptr %i.m, align 8, !tbaa !193
  %i.iw = load float, ptr %i.bl, align 4, !tbaa !290
  %i.ix = fpext float %i.iw to double
  %i.iy = fdiv double %i.ix, %i.ic
  %i.iz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iv, ptr noundef nonnull @.str.11, double noundef %i.iy) #23 ; 0 uses
  %i.ja = load ptr, ptr %i.m, align 8, !tbaa !193
  %fputc323 = call i32 @fputc(i32 10, ptr %i.ja)  ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.jb = phi float [ %i.hy, %bb.ar ], [ %i.ht, %bb.aq ]
  %i.jc = icmp slt i32 %i.ev, 0
  %i.jd = getelementptr inbounds nuw i8, ptr %i.aa, i64 640 ; 5 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.aa, i64 520 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.aa, i64 528 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.jj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.not331 = icmp eq i32 %i.x, 0
  %i.jl = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  br label %.outer

.outer:                                           ; preds = %.thread549, %bb.as
  %.0492.ph = phi ptr [ %.1493.ph, %.thread549 ], [ %2, %bb.as ] ; 28 uses
  %.0485.ph = phi ptr [ %.4489.ph, %.thread549 ], [ %3, %bb.as ] ; 4 uses
  %.0478.ph = phi ptr [ %.4482.ph, %.thread549 ], [ %4, %bb.as ] ; 3 uses
  %.0475.ph = phi ptr [ %.4.ph, %.thread549 ], [ %5, %bb.as ] ; 8 uses
  %.0295.ph = phi float [ %.2297501.ph, %.thread549 ], [ %i.jb, %bb.as ]
  %.0283.ph = phi float [ %.3286.ph, %.thread549 ], [ 0.000000e+00, %bb.as ]
  %.0277.ph = phi i8 [ %.1278.ph, %.thread549 ], [ 0, %bb.as ] ; 5 uses
  %.0270.ph = phi i8 [ %.2272.ph, %.thread549 ], [ 0, %bb.as ] ; 4 uses
  %.0264.ph = phi i8 [ %.2266.ph, %.thread549 ], [ 0, %bb.as ] ; 4 uses
  %.0257.ph = phi i32 [ %.3260.ph, %.thread549 ], [ 0, %bb.as ] ; 4 uses
  %.0249.ph = phi i32 [ %i.aku, %.thread549 ], [ 0, %bb.as ] ; 7 uses
  %i.jm = icmp sgt i32 %.0249.ph, %i.ev
  %i.jn = trunc nuw i8 %.0277.ph to i1
  %or.cond10.not = select i1 %i.jm, i1 true, i1 %i.jn
  %.old8 = trunc nuw i8 %.0277.ph to i1
  %i.jo = getelementptr inbounds nuw i8, ptr %.0492.ph, i64 496
  %i.jp = getelementptr inbounds nuw i8, ptr %.0492.ph, i64 920
  br label %bb.at

bb.at:                                            ; preds = %.outer, %.thread524
  %.0295 = phi float [ %.1296, %.thread524 ], [ %.0295.ph, %.outer ] ; 2 uses
  %.0283 = phi float [ 0.000000e+00, %.thread524 ], [ %.0283.ph, %.outer ] ; 4 uses
  br i1 %i.jc, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %or.cond10.not, label %.critedge, label %bb.aw

bb.av:                                            ; preds = %bb.at
  br i1 %.old8, label %.critedge, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.jq = load ptr, ptr %i.jo, align 8, !tbaa !324 ; 3 uses
  %i.jr = load ptr, ptr %i.jp, align 8, !tbaa !325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #23
  store double 0.000000e+00, ptr %i.i, align 8, !tbaa !326
  %i.js = load i32, ptr %i.jd, align 8, !tbaa !327 ; 2 uses
  %i.jt = icmp sgt i32 %i.js, 0
  br i1 %i.jt, label %.lr.ph648, label %._crit_edge

.lr.ph648:                                        ; preds = %bb.aw
  %i.ju = load ptr, ptr %i.je, align 8, !tbaa !328 ; 2 uses
  %i.jv = load ptr, ptr %i.jf, align 8, !tbaa !328
  %i.jw = icmp eq ptr %i.ju, %i.jv
  %i.jx = load ptr, ptr %i.u, align 8, !tbaa !78
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 840
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !329
  %wide.trip.count = zext nneg i32 %i.js to i64
  br label %bb.ax

._crit_edge:                                      ; preds = %bb.bi, %bb.aw
  %i.ka = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !62, !nonnull !66, !align !67
  invoke void @_ZNK3gmx7MpiComm9sumReduceEmPd(ptr noundef nonnull align 8 dereferenceable(24) %i.kc, i64 noundef 1, ptr noundef nonnull %i.i)
          to label %bb.bj unwind label %bb.bm

bb.ax:                                            ; preds = %.lr.ph648, %bb.bi
  %indvars.iv = phi i64 [ 0, %.lr.ph648 ], [ %indvars.iv.next, %bb.bi ] ; 4 uses
  %.0224646 = phi i32 [ 0, %.lr.ph648 ], [ %.1225, %bb.bi ]
  br i1 %i.jw, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kd = getelementptr inbounds nuw [2 x i8], ptr %i.ju, i64 %indvars.iv
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !330
  %i.kf = zext i16 %i.ke to i32
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.1225 = phi i32 [ %.0224646, %bb.ax ], [ %i.kf, %bb.ay ] ; 2 uses
  %i.kg = zext nneg i32 %.1225 to i64
  %i.kh = getelementptr inbounds nuw [12 x i8], ptr %i.jz, i64 %i.kg ; 3 uses
  %.promoted = load double, ptr %i.i, align 8     ; 2 uses
  %i.ki = getelementptr inbounds nuw [12 x i8], ptr %i.jq, i64 %indvars.iv ; 7 uses
  %i.kj = getelementptr inbounds nuw [12 x i8], ptr %i.jr, i64 %indvars.iv ; 4 uses
  %i.kk = load i32, ptr %i.kh, align 4, !tbaa !332
  %.not351 = icmp eq i32 %i.kk, 0
  br i1 %.not351, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.kl = load float, ptr %i.kj, align 4, !tbaa !333
  %i.km = load float, ptr %i.ki, align 4, !tbaa !333
  %i.kn = call float @llvm.fmuladd.f32(float %.0283, float %i.km, float %i.kl) ; 2 uses
  store float %i.kn, ptr %i.ki, align 4, !tbaa !333
  %i.ko = load float, ptr %i.kj, align 4, !tbaa !333
  %i.kp = fmul float %i.kn, %i.ko
  %i.kq = fpext float %i.kp to double
  %i.kr = fsub double %.promoted, %i.kq           ; 2 uses
  store double %i.kr, ptr %i.i, align 8, !tbaa !326
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  store float 0.000000e+00, ptr %i.ki, align 4, !tbaa !333
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.ks = phi double [ %i.kr, %bb.ba ], [ %.promoted, %bb.bb ] ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !332
  %.not351.1 = icmp eq i32 %i.ku, 0
  br i1 %.not351.1, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  store float 0.000000e+00, ptr %i.kv, align 4, !tbaa !333
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kj, i64 4 ; 2 uses
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !333
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ki, i64 4 ; 2 uses
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !333
  %i.la = call float @llvm.fmuladd.f32(float %.0283, float %i.kz, float %i.kx) ; 2 uses
  store float %i.la, ptr %i.ky, align 4, !tbaa !333
  %i.lb = load float, ptr %i.kw, align 4, !tbaa !333
  %i.lc = fmul float %i.la, %i.lb
  %i.ld = fpext float %i.lc to double
  %i.le = fsub double %i.ks, %i.ld                ; 2 uses
  store double %i.le, ptr %i.i, align 8, !tbaa !326
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.lf = phi double [ %i.le, %bb.be ], [ %i.ks, %bb.bd ]
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !332
  %.not351.2 = icmp eq i32 %i.lh, 0
  br i1 %.not351.2, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.li = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store float 0.000000e+00, ptr %i.li, align 4, !tbaa !333
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 2 uses
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !333
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !333
  %i.ln = call float @llvm.fmuladd.f32(float %.0283, float %i.lm, float %i.lk) ; 2 uses
  store float %i.ln, ptr %i.ll, align 4, !tbaa !333
  %i.lo = load float, ptr %i.lj, align 4, !tbaa !333
  %i.lp = fmul float %i.ln, %i.lo
  %i.lq = fpext float %i.lp to double
  %i.lr = fsub double %i.lf, %i.lq
  store double %i.lr, ptr %i.i, align 8, !tbaa !326
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ax, !llvm.loop !334

bb.bj:                                            ; preds = %._crit_edge
  %i.ls = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.lt = load ptr, ptr %i.u, align 8, !tbaa !78
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 744
  invoke fastcc void @_ZL14get_f_norm_maxPK9t_commrecPK9t_grpoptsP9t_mdatomsPKN3gmx11BasicVectorIfEEPfSC_Pi(ptr noundef %i.ls, ptr noundef nonnull %i.lu, ptr noundef nonnull %i.aa, ptr noundef %i.jq, ptr noundef nonnull %i.d, ptr noundef null, ptr noundef null)
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.lv = fcmp ugt float %.0295, 0.000000e+00
  br i1 %i.lv, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lw = load ptr, ptr %i.u, align 8, !tbaa !78
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 500
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !289
  %i.lz = load float, ptr %i.d, align 4, !tbaa !333
  %i.ma = fdiv float %i.ly, %i.lz
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bj, %._crit_edge
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %.1296 = phi float [ %i.ma, %bb.bl ], [ %.0295, %bb.bk ] ; 3 uses
  %i.mc = load double, ptr %i.i, align 8, !tbaa !326
  %i.md = fcmp ogt double %i.mc, 0.000000e+00
  br i1 %i.md, label %.thread524, label %bb.bo

.thread524:                                       ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #23
  br label %bb.at, !llvm.loop !336

bb.bo:                                            ; preds = %bb.bn
  %i.me = getelementptr inbounds nuw i8, ptr %.0492.ph, i64 496 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.0492.ph, i64 840 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.0492.ph, i64 920 ; 2 uses
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !326
  %i.mh = getelementptr inbounds nuw i8, ptr %.0492.ph, i64 416
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !324
  %i.mj = load i32, ptr %i.jd, align 8, !tbaa !327 ; 2 uses
  %i.mk = icmp sgt i32 %i.mj, 0
  br i1 %i.mk, label %.preheader571.preheader, label %bb.bp

.preheader571.preheader:                          ; preds = %bb.bo
  %wide.trip.count751 = zext nneg i32 %i.mj to i64
  br label %.preheader571

.preheader571:                                    ; preds = %.preheader571.preheader, %.preheader571
  %indvars.iv748 = phi i64 [ 0, %.preheader571.preheader ], [ %indvars.iv.next749, %.preheader571 ] ; 3 uses
  %.lcssa652653 = phi double [ 0.000000e+00, %.preheader571.preheader ], [ %i.nm, %.preheader571 ]
  %i.ml = getelementptr inbounds nuw [12 x i8], ptr %i.mi, i64 %indvars.iv748 ; 2 uses
  %i.mm = getelementptr inbounds nuw [12 x i8], ptr %i.jq, i64 %indvars.iv748 ; 2 uses
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !333
  %i.mo = fpext float %i.mn to double
  %i.mp = load <2 x float>, ptr %i.ml, align 4, !tbaa !333
  %i.mq = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mp) ; 3 uses
  %i.mr = fcmp ole <2 x float> %i.mq, splat (float 1.000000e+00) ; 2 uses
  %i.ms = extractelement <2 x i1> %i.mr, i64 0
  %i.mt = extractelement <2 x float> %i.mq, i64 0
  %i.mu = fpext float %i.mt to double
  %.0226 = select i1 %i.ms, double 1.000000e+00, double %i.mu
  %i.mv = fdiv double %i.mo, %.0226               ; 2 uses
  %i.mw = call double @llvm.fmuladd.f64(double %i.mv, double %i.mv, double %.lcssa652653)
  %i.mx = extractelement <2 x i1> %i.mr, i64 1
  %i.my = extractelement <2 x float> %i.mq, i64 1
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %i.na = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.nb = load float, ptr %i.na, align 4, !tbaa !333
  %i.nc = call noundef float @llvm.fabs.f32(float %i.nb) ; 2 uses
  %.inv.2 = fcmp ole float %i.nc, 1.000000e+00
  %.0226568.2 = select i1 %.inv.2, float 1.000000e+00, float %i.nc
  %.0226568.1 = select i1 %i.mx, float 1.000000e+00, float %i.my
  %i.nd = insertelement <2 x float> poison, float %.0226568.1, i64 0
  %i.ne = insertelement <2 x float> %i.nd, float %.0226568.2, i64 1
  %i.nf = fpext <2 x float> %i.ne to <2 x double>
  %i.ng = load <2 x float>, ptr %i.mz, align 4, !tbaa !333
  %i.nh = fpext <2 x float> %i.ng to <2 x double>
  %i.ni = fdiv <2 x double> %i.nh, %i.nf          ; 2 uses
  %i.nj = extractelement <2 x double> %i.ni, i64 0 ; 2 uses
  %i.nk = call double @llvm.fmuladd.f64(double %i.nj, double %i.nj, double %i.mw)
  %i.nl = extractelement <2 x double> %i.ni, i64 1 ; 2 uses
  %i.nm = call double @llvm.fmuladd.f64(double %i.nl, double %i.nl, double %i.nk) ; 2 uses
  %indvars.iv.next749 = add nuw nsw i64 %indvars.iv748, 1 ; 2 uses
  %exitcond752.not = icmp eq i64 %indvars.iv.next749, %wide.trip.count751
  br i1 %exitcond752.not, label %._crit_edge655, label %.preheader571, !llvm.loop !337

._crit_edge655:                                   ; preds = %.preheader571
  store double %i.nm, ptr %i.c, align 8, !tbaa !326
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge655, %bb.bo
  %i.nn = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !62, !nonnull !66, !align !67
  invoke void @_ZNK3gmx7MpiComm9sumReduceEmPd(ptr noundef nonnull align 8 dereferenceable(24) %i.np, i64 noundef 1, ptr noundef nonnull %i.c)
          to label %bb.br unwind label %bb.bq

bb.bq:                                            ; preds = %.noexc375, %bb.bx, %bb.ca, %bb.bz, %bb.by, %_Z11do_per_stepll.exit374, %bb.bp
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.br:                                            ; preds = %bb.bp
  %i.nr = load double, ptr %i.c, align 8, !tbaa !326
  %i.ns = load ptr, ptr %i.ci, align 8, !tbaa !197, !nonnull !66, !align !67 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 176
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !338
  %i.nv = mul nsw i32 %i.nu, 3
  %i.nw = sitofp i32 %i.nv to double
  %i.nx = fdiv double %i.nr, %i.nw
  %i.ny = call double @sqrt(double noundef %i.nx) #23
  %i.nz = fdiv double f0x3E80000000000000, %i.ny  ; 2 uses
  store double %i.nz, ptr %i.c, align 8, !tbaa !326
  %i.oa = fpext float %.1296 to double            ; 3 uses
  %i.ob = fcmp ogt double %i.nz, %i.oa
  br i1 %i.ob, label %.critedge.sink.split, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.oc = zext nneg i32 %.0249.ph to i64          ; 12 uses
  %i.od = load ptr, ptr %i.u, align 8, !tbaa !78  ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 56
  %i.of = load i32, ptr %i.oe, align 8, !tbaa !390 ; 2 uses
  %.not.i = icmp eq i32 %i.of, 0
  br i1 %.not.i, label %_Z11do_per_stepll.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.og = sext i32 %i.of to i64
  %i.oh = srem i64 %i.oc, %i.og
  %i.oi = icmp eq i64 %i.oh, 0
  br label %_Z11do_per_stepll.exit

_Z11do_per_stepll.exit:                           ; preds = %bb.bs, %bb.bt
  %.0.i = phi i1 [ %i.oi, %bb.bt ], [ false, %bb.bs ]
  %i.oj = getelementptr inbounds nuw i8, ptr %i.od, i64 64
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !391 ; 2 uses
  %.not.i372 = icmp eq i32 %i.ok, 0
  br i1 %.not.i372, label %_Z11do_per_stepll.exit374, label %bb.bu

bb.bu:                                            ; preds = %_Z11do_per_stepll.exit
  %i.ol = sext i32 %i.ok to i64
  %i.om = srem i64 %i.oc, %i.ol
  %i.on = icmp eq i64 %i.om, 0
  br label %_Z11do_per_stepll.exit374

_Z11do_per_stepll.exit374:                        ; preds = %_Z11do_per_stepll.exit, %bb.bu
  %.0.i373 = phi i1 [ %i.on, %bb.bu ], [ false, %_Z11do_per_stepll.exit ]
  %i.oo = load ptr, ptr %i.m, align 8, !tbaa !193
  %i.op = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.oq = load ptr, ptr %i.cg, align 8, !tbaa !190
  %i.or = load ptr, ptr %i.jg, align 8, !tbaa !392
  invoke fastcc void @_ZL13write_em_trajP8_IO_FILEPK9t_commrecP10gmx_mdoutfbbPKcRK10gmx_mtop_tPK10t_inputreclP8em_stateP7t_stateP18ObservablesHistory(ptr noundef %i.oo, ptr noundef %i.op, ptr noundef %i.do, i1 noundef zeroext %.0.i, i1 noundef zeroext %.0.i373, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(768) %i.ns, ptr noundef nonnull %i.od, i64 noundef %i.oc, ptr noundef nonnull %.0492.ph, ptr noundef %i.oq, ptr noundef %i.or)
          to label %bb.bv unwind label %bb.bq

bb.bv:                                            ; preds = %_Z11do_per_stepll.exit374
  %i.os = getelementptr inbounds nuw i8, ptr %.0492.ph, i64 984 ; 2 uses
  %i.ot = load float, ptr %i.os, align 8, !tbaa !393
  %i.ou = getelementptr inbounds nuw i8, ptr %.0485.ph, i64 984 ; 2 uses
  store float %i.ot, ptr %i.ou, align 8, !tbaa !393
  %i.ov = fadd float %.1296, 0.000000e+00         ; 2 uses
  %i.ow = load ptr, ptr %i.n, align 8, !tbaa !19  ; 3 uses
  %i.ox = getelementptr i8, ptr %i.ow, i64 16     ; 2 uses
  %.val357 = load ptr, ptr %i.ox, align 8, !tbaa !394 ; 3 uses
  %.not566 = icmp eq ptr %.val357, null
  br i1 %.not566, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.oy = getelementptr inbounds nuw i8, ptr %.0492.ph, i64 784
  %i.oz = load i32, ptr %i.oy, align 8, !tbaa !395
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw i8, ptr %.val357, i64 960
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !396
  %i.pd = icmp sgt i64 %i.pc, %i.pa
  br i1 %i.pd, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.pe = load ptr, ptr %i.m, align 8, !tbaa !193
  %i.pf = load ptr, ptr %i.ab, align 8, !tbaa !180, !nonnull !66, !align !67
  %i.pg = load ptr, ptr %i.ci, align 8, !tbaa !197, !nonnull !66, !align !67
  %i.ph = load ptr, ptr %i.u, align 8, !tbaa !78
  %i.pi = load ptr, ptr %i.ca, align 8, !tbaa !194
  %i.pj = load ptr, ptr %i.cc, align 8, !tbaa !195
  %i.pk = load ptr, ptr %i.ce, align 8, !tbaa !196
  %i.pl = load ptr, ptr %i.ck, align 8, !tbaa !198
  %i.pm = load ptr, ptr %i.y, align 8, !tbaa !177
  %i.pn = load ptr, ptr %i.co, align 8, !tbaa !200
  %i.po = load ptr, ptr %i.cr, align 8, !tbaa !201
  %i.pp = load ptr, ptr %i.ct, align 8, !tbaa !202
  %i.pq = load ptr, ptr %i.cm, align 8, !tbaa !199
  %i.pr = load ptr, ptr %i.dk, align 8, !tbaa !208
  invoke void @_ZN3gmx19dd_partition_systemEP8_IO_FILERKNS_8MDLoggerElP12gmx_domdec_tbP7t_stateRK10gmx_mtop_tRK10t_inputrecRKNS_18MDModulesNotifiersEPNS_10ImdSessionEP6pull_tS8_PNS_12ForceBuffersEPNS_7MDAtomsEP14gmx_localtop_tP10t_forcerecPNS_19VirtualSitesHandlerEPNS_11ConstraintsEP6t_nrnbP13gmx_wallcycleb(ptr noundef %i.pe, ptr noundef nonnull align 8 dereferenceable(40) %i.pf, i64 noundef %i.oc, ptr noundef nonnull %.val357, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(768) %i.pg, ptr noundef nonnull align 8 dereferenceable(888) %i.ph, ptr noundef nonnull align 1 %i.pi, ptr noundef %i.pj, ptr noundef %i.pk, ptr noundef nonnull %.0492.ph, ptr noundef nonnull %i.mf, ptr noundef %i.pm, ptr noundef %i.pl, ptr noundef %i.pn, ptr noundef %i.po, ptr noundef %i.pp, ptr noundef %i.pq, ptr noundef %i.pr, i1 noundef zeroext false)
          to label %.noexc375 unwind label %bb.bq

.noexc375:                                        ; preds = %bb.bx
  %i.ps = load ptr, ptr %i.ox, align 8, !tbaa !394
end_hunk_1
begin_hunk_2_@_ZN3gmx15LegacySimulator5do_cgEv:bb.a
  %i.xq = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 8
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !62, !nonnull !66, !align !67
  invoke void @_ZNK3gmx7MpiComm9sumReduceEmPd(ptr noundef nonnull align 8 dereferenceable(24) %i.xs, i64 noundef 1, ptr noundef nonnull %i.k)
          to label %bb.cu unwind label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.xt = load ptr, ptr @debug, align 8, !tbaa !236 ; 2 uses
  %.not327 = icmp eq ptr %i.xt, null
  br i1 %.not327, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.xu = getelementptr inbounds nuw i8, ptr %.1486, i64 984
  %i.xv = load float, ptr %i.xu, align 8, !tbaa !393
  %i.xw = fpext float %i.xv to double
  %i.xx = getelementptr inbounds nuw i8, ptr %.1479, i64 984
  %i.xy = load float, ptr %i.xx, align 8, !tbaa !393
  %i.xz = fpext float %i.xy to double
  %i.ya = getelementptr inbounds nuw i8, ptr %.1476, i64 984
  %i.yb = load float, ptr %i.ya, align 8, !tbaa !393
  %i.yc = fpext float %i.yb to double
  %i.yd = load double, ptr %i.k, align 8, !tbaa !326
  %i.ye = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.xt, ptr noundef nonnull @.str.13, double noundef %i.xw, double noundef %i.xz, double noundef %i.yc, double noundef %i.yd) #23 ; 0 uses
  br label %bb.cx

bb.cw:                                            ; preds = %bb.ct
  %i.yf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cx:                                            ; preds = %bb.cv, %bb.cu
  %i.yg = getelementptr inbounds nuw i8, ptr %.1479, i64 984
  %i.yh = load float, ptr %i.yg, align 8, !tbaa !393 ; 4 uses
  %i.yi = load double, ptr %i.k, align 8, !tbaa !326 ; 3 uses
  %i.yj = fcmp ogt double %i.yi, 0.000000e+00
  br i1 %i.yj, label %bb.cy, label %.thread

.thread:                                          ; preds = %bb.cx
  store double %i.yi, ptr %i.i, align 8, !tbaa !326
  %i.yk = add nuw nsw i32 %.0248, 1
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store double %i.yi, ptr %i.j, align 8, !tbaa !326
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.1486, i64 984
  %.pre776.a = load float, ptr %.phi.trans.insert, align 8, !tbaa !393 ; 3 uses
  %i.yl = add nuw nsw i32 %.0248, 1               ; 2 uses
  %i.ym = fcmp ogt float %i.yh, %.pre776.a
  br i1 %i.ym, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %.thread, %bb.cy
  %i.yn = phi i32 [ %i.yk, %.thread ], [ %i.yl, %bb.cy ]
  %.1290853 = phi float [ %.0289, %.thread ], [ %.1292, %bb.cy ]
  %.1294851 = phi float [ %.1292, %.thread ], [ %.0293, %bb.cy ]
  %.2477847 = phi ptr [ %.1476, %.thread ], [ %.1479, %bb.cy ] ; 3 uses
  %.2480845 = phi ptr [ %.1486, %.thread ], [ %.1476, %bb.cy ] ; 2 uses
  %.2487842 = phi ptr [ %.1479, %.thread ], [ %.1486, %bb.cy ] ; 2 uses
  %i.yo = phi float [ %i.yh, %.thread ], [ %.pre776.a, %bb.cy ]
  %i.yp = getelementptr inbounds nuw i8, ptr %.2477847, i64 984
  %i.yq = load float, ptr %i.yp, align 8, !tbaa !393
  %i.yr = fcmp ogt float %i.yh, %i.yq
  %i.ys = icmp samesign ult i32 %.0248, 19
  %or.cond13 = select i1 %i.yr, i1 %i.ys, i1 false
  br i1 %or.cond13, label %.backedge, label %.critedge3

bb.da:                                            ; preds = %bb.cy
  %.old12 = icmp samesign ult i32 %.0248, 19
  br i1 %.old12, label %.backedge, label %.critedge3

.backedge:                                        ; preds = %bb.da, %bb.cz
  %i.yt = phi i32 [ %i.yl, %bb.da ], [ %i.yn, %bb.cz ]
  %.1290852 = phi float [ %.1292, %bb.da ], [ %.1290853, %bb.cz ]
  %.1294850 = phi float [ %.0293, %bb.da ], [ %.1294851, %bb.cz ]
  %.2477848 = phi ptr [ %.1479, %bb.da ], [ %.2477847, %bb.cz ]
  %.2480844 = phi ptr [ %.1476, %bb.da ], [ %.2480845, %bb.cz ]
  %.2487841 = phi ptr [ %.1486, %bb.da ], [ %.2487842, %bb.cz ]
  %.pre774 = load double, ptr %i.j, align 8
  br label %bb.cj, !llvm.loop !495

.critedge3:                                       ; preds = %bb.cz, %bb.da
  %.2477849 = phi ptr [ %.2477847, %bb.cz ], [ %.1479, %bb.da ] ; 4 uses
  %.2480846 = phi ptr [ %.2480845, %bb.cz ], [ %.1476, %bb.da ] ; 3 uses
  %.2487843 = phi ptr [ %.2487842, %bb.cz ], [ %.1486, %bb.da ] ; 3 uses
  %i.yu = phi float [ %i.yo, %bb.cz ], [ %.pre776.a, %bb.da ] ; 3 uses
  %i.yv = load float, ptr %i.os, align 8, !tbaa !393 ; 2 uses
  %i.yw = fsub float %i.yh, %i.yv
  %i.yx = call noundef float @llvm.fabs.f32(float %i.yw)
  %i.yy = call noundef float @llvm.fabs.f32(float %i.yv)
  %i.yz = fmul float %i.yy, f0x34000000
  %i.za = fcmp olt float %i.yx, %i.yz
  %i.zb = icmp samesign ugt i32 %.0248, 18
  %or.cond5 = select i1 %i.za, i1 true, i1 %i.zb
  br i1 %or.cond5, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.critedge3
  %i.zc = fcmp oeq float %.0283, 0.000000e+00
  br i1 %i.zc, label %bb.fr, label %.thread549

bb.dc:                                            ; preds = %.critedge3
  %i.zd = getelementptr inbounds nuw i8, ptr %.2477849, i64 984
  %i.ze = load float, ptr %i.zd, align 8, !tbaa !393 ; 3 uses
  %i.zf = fcmp olt float %i.ze, %i.yu
  %i.zg = load ptr, ptr @debug, align 8, !tbaa !236 ; 3 uses
  %.not329 = icmp eq ptr %i.zg, null              ; 2 uses
  br i1 %i.zf, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  br i1 %.not329, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.zh = fpext float %i.ze to double
  %i.zi = fpext float %i.yu to double
  %i.zj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.zg, ptr noundef nonnull @.str.14, double noundef %i.zh, double noundef %i.zi) #23 ; 0 uses
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.zk = load double, ptr %i.j, align 8, !tbaa !326
  br label %bb.dk

bb.dg:                                            ; preds = %bb.dc
  br i1 %.not329, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.zl = fpext float %i.yu to double
  %i.zm = fpext float %i.ze to double
  %i.zn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.zg, ptr noundef nonnull @.str.15, double noundef %i.zl, double noundef %i.zm) #23 ; 0 uses
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.zo = load double, ptr %i.i, align 8, !tbaa !326
  br label %bb.dk

bb.dj:                                            ; preds = %bb.cg
  %i.zp = fpext float %i.sy to double
  %i.zq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.tg, ptr noundef nonnull @.str.16, double noundef %i.zp) #23 ; 0 uses
  %.pre778 = load double, ptr %i.j, align 8, !tbaa !326
  br label %bb.dk

bb.dk:                                            ; preds = %bb.cg, %bb.dj, %bb.df, %bb.di
  %.sink = phi double [ %i.zk, %bb.df ], [ %i.zo, %bb.di ], [ %.pre778, %bb.dj ], [ %.pre777.a, %bb.cg ] ; 2 uses
  %.2297502 = phi float [ %.2297, %bb.df ], [ %.2297, %bb.di ], [ %.2297500, %bb.dj ], [ %.2297500, %bb.cg ]
  %.3488 = phi ptr [ %.2487843, %bb.df ], [ %.2480846, %bb.di ], [ %.0485.ph, %bb.dj ], [ %.0485.ph, %bb.cg ]
  %.3481 = phi ptr [ %.2477849, %bb.df ], [ %.2487843, %bb.di ], [ %.0475.ph, %bb.dj ], [ %.0475.ph, %bb.cg ] ; 10 uses
  %.3 = phi ptr [ %.2480846, %bb.df ], [ %.2477849, %bb.di ], [ %.0478.ph, %bb.dj ], [ %.0478.ph, %bb.cg ]
  %.2259 = phi i32 [ %i.vj, %bb.df ], [ %i.vj, %bb.di ], [ %i.qj, %bb.dj ], [ %i.qj, %bb.cg ]
  store double %.sink, ptr %i.k, align 8, !tbaa !326
  br i1 %.not331, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.zr = srem i32 %.0249.ph, %i.x
  %i.zs = icmp eq i32 %i.zr, 0
  br i1 %i.zs, label %bb.ex, label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.zt = load ptr, ptr %i.n, align 8, !tbaa !19  ; 3 uses
  %i.zu = load ptr, ptr %i.u, align 8, !tbaa !78  ; 2 uses
  %i.zv = load ptr, ptr %i.ci, align 8, !tbaa !197, !nonnull !66, !align !67 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.zw = getelementptr i8, ptr %i.zt, i64 16
  %.val.i = load ptr, ptr %i.zw, align 8, !tbaa !394 ; 2 uses
  %.not37.i = icmp eq ptr %.val.i, null
  br i1 %.not37.i, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.zx = getelementptr inbounds nuw i8, ptr %.0492.ph, i64 784
  %i.zy = load i32, ptr %i.zx, align 8, !tbaa !395 ; 2 uses
  %i.zz = sext i32 %i.zy to i64
  %i.aaa = getelementptr inbounds nuw i8, ptr %.val.i, i64 960
  %i.aab = load i64, ptr %i.aaa, align 8, !tbaa !396
  %i.aac = icmp eq i64 %i.aab, %i.zz
  br i1 %i.aac, label %bb.do, label %bb.ec

bb.do:                                            ; preds = %bb.dn
  %i.aad = getelementptr inbounds nuw i8, ptr %.3481, i64 784
  %i.aae = load i32, ptr %i.aad, align 8, !tbaa !395
  %i.aaf = icmp eq i32 %i.zy, %i.aae
  br i1 %i.aaf, label %bb.dp, label %bb.ec

bb.dp:                                            ; preds = %bb.do, %bb.dm
  %i.aag = load ptr, ptr %i.mg, align 8, !tbaa !325 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %.3481, i64 920
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !325 ; 2 uses
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !326
  %i.aaj = load i32, ptr %i.jd, align 8, !tbaa !327 ; 2 uses
  %i.aak = icmp sgt i32 %i.aaj, 0
  br i1 %i.aak, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.dp
  %i.aal = load ptr, ptr %i.je, align 8, !tbaa !328 ; 2 uses
  %i.aam = load ptr, ptr %i.jf, align 8, !tbaa !328
  %i.aan = icmp eq ptr %i.aal, %i.aam
  %i.aao = getelementptr inbounds nuw i8, ptr %i.zu, i64 840
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !496 ; 4 uses
  %wide.trip.count57.i = zext nneg i32 %i.aaj to i64 ; 2 uses
  br i1 %i.aan, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.aap, align 4, !tbaa !332
  %.not.us.i = icmp eq i32 %.pre.i, 0
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 4
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.dv, %.lr.ph.split.us.preheader.i
  %indvars.iv54.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next55.i, %bb.dv ] ; 3 uses
  %.lcssa4142.us.i = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader.i ], [ %i.abs, %bb.dv ] ; 2 uses
  %i.aas = getelementptr inbounds nuw [12 x i8], ptr %i.aai, i64 %indvars.iv54.i ; 3 uses
  %i.aat = getelementptr inbounds nuw [12 x i8], ptr %i.aag, i64 %indvars.iv54.i ; 3 uses
  br i1 %.not.us.i, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %.lr.ph.split.us.i
  %i.aau = load float, ptr %i.aas, align 4, !tbaa !333 ; 2 uses
  %i.aav = load float, ptr %i.aat, align 4, !tbaa !333
  %i.aaw = fsub float %i.aau, %i.aav
  %i.aax = fmul float %i.aau, %i.aaw
  %i.aay = fpext float %i.aax to double
  %i.aaz = fadd double %.lcssa4142.us.i, %i.aay
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %.lr.ph.split.us.i
  %i.aba = phi double [ %.lcssa4142.us.i, %.lr.ph.split.us.i ], [ %i.aaz, %bb.dq ] ; 2 uses
  %13 = load i32, ptr %i.aaq, align 4, !tbaa !332
  %.not.us.1.i = icmp eq i32 %13, 0
  br i1 %.not.us.1.i, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aas, i64 4
  %i.abc = load float, ptr %i.abb, align 4, !tbaa !333 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aat, i64 4
  %i.abe = load float, ptr %i.abd, align 4, !tbaa !333
  %i.abf = fsub float %i.abc, %i.abe
  %i.abg = fmul float %i.abc, %i.abf
  %i.abh = fpext float %i.abg to double
  %i.abi = fadd double %i.aba, %i.abh
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.abj = phi double [ %i.aba, %bb.dr ], [ %i.abi, %bb.ds ] ; 2 uses
  %14 = load i32, ptr %i.aar, align 4, !tbaa !332
  %.not.us.2.i = icmp eq i32 %14, 0
  br i1 %.not.us.2.i, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aas, i64 8
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !333 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  %i.abn = load float, ptr %i.abm, align 4, !tbaa !333
  %i.abo = fsub float %i.abl, %i.abn
  %i.abp = fmul float %i.abl, %i.abo
  %i.abq = fpext float %i.abp to double
  %i.abr = fadd double %i.abj, %i.abq
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.abs = phi double [ %i.abj, %bb.dt ], [ %i.abr, %bb.du ] ; 2 uses
  store double %i.abs, ptr %i.a, align 8
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, %wide.trip.count57.i
  br i1 %exitcond58.not.i, label %.loopexit.i, label %.lr.ph.split.us.i, !llvm.loop !497

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.eb
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.eb ], [ 0, %.lr.ph.i ] ; 4 uses
  %.lcssa4142.i = phi double [ %i.adc, %bb.eb ], [ 0.000000e+00, %.lr.ph.i ] ; 2 uses
  %i.abt = getelementptr inbounds nuw [2 x i8], ptr %i.aal, i64 %indvars.iv.i
  %i.abu = load i16, ptr %i.abt, align 2, !tbaa !330
  %i.abv = zext i16 %i.abu to i64
  %i.abw = getelementptr inbounds nuw [12 x i8], ptr %i.aap, i64 %i.abv ; 3 uses
  %i.abx = getelementptr inbounds nuw [12 x i8], ptr %i.aai, i64 %indvars.iv.i ; 3 uses
  %i.aby = getelementptr inbounds nuw [12 x i8], ptr %i.aag, i64 %indvars.iv.i ; 3 uses
  %i.abz = load i32, ptr %i.abw, align 4, !tbaa !332
  %.not.i384 = icmp eq i32 %i.abz, 0
  br i1 %.not.i384, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %.lr.ph.split.i
  %i.aca = load float, ptr %i.abx, align 4, !tbaa !333 ; 2 uses
  %i.acb = load float, ptr %i.aby, align 4, !tbaa !333
  %i.acc = fsub float %i.aca, %i.acb
  %i.acd = fmul float %i.aca, %i.acc
  %i.ace = fpext float %i.acd to double
  %i.acf = fadd double %.lcssa4142.i, %i.ace
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %.lr.ph.split.i
  %i.acg = phi double [ %.lcssa4142.i, %.lr.ph.split.i ], [ %i.acf, %bb.dw ] ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abw, i64 4
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !332
  %.not.1.i = icmp eq i32 %i.aci, 0
  br i1 %.not.1.i, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.acj = getelementptr inbounds nuw i8, ptr %i.abx, i64 4
  %i.ack = load float, ptr %i.acj, align 4, !tbaa !333 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.aby, i64 4
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !333
  %i.acn = fsub float %i.ack, %i.acm
  %i.aco = fmul float %i.ack, %i.acn
  %i.acp = fpext float %i.aco to double
  %i.acq = fadd double %i.acg, %i.acp
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.acr = phi double [ %i.acg, %bb.dx ], [ %i.acq, %bb.dy ] ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  %i.act = load i32, ptr %i.acs, align 4, !tbaa !332
  %.not.2.i = icmp eq i32 %i.act, 0
  br i1 %.not.2.i, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.acu = getelementptr inbounds nuw i8, ptr %i.abx, i64 8
  %i.acv = load float, ptr %i.acu, align 4, !tbaa !333 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.aby, i64 8
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !333
  %i.acy = fsub float %i.acv, %i.acx
  %i.acz = fmul float %i.acv, %i.acy
  %i.ada = fpext float %i.acz to double
  %i.adb = fadd double %i.acr, %i.ada
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.adc = phi double [ %i.acr, %bb.dz ], [ %i.adb, %bb.ea ] ; 2 uses
  store double %i.adc, ptr %i.a, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count57.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.split.i, !llvm.loop !497

bb.ec:                                            ; preds = %bb.do, %bb.dn
  %i.add = load ptr, ptr @debug, align 8, !tbaa !236 ; 2 uses
  %.not.i.i = icmp eq ptr %i.add, null
  br i1 %.not.i.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ade = call i64 @fwrite(ptr nonnull @.str.89, i64 22, i64 1, ptr nonnull %i.add) ; 0 uses
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %i.adf = load ptr, ptr %i.mg, align 8, !tbaa !325
  %i.adg = getelementptr inbounds nuw i8, ptr %.3481, i64 920
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !325 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.zv, i64 176 ; 2 uses
  %i.adj = load i32, ptr %i.adi, align 8, !tbaa !338 ; 3 uses
  %i.adk = sext i32 %i.adj to i64                 ; 2 uses
  %i.adl = icmp slt i32 %i.adj, 0
  br i1 %i.adl, label %.noexc.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i

.noexc.i.i:                                       ; preds = %bb.ee
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #31
          to label %.noexc385 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc385:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i: ; preds = %bb.ee
  %.not.i.i.i.i.i.i = icmp eq i32 %i.adj, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EEC2EmRKS2_RKS3_.exit.i.i, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EEC2EmRKS3_.exit.i.i.i

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EEC2EmRKS3_.exit.i.i.i: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i
  %i.adm = mul nuw nsw i64 %i.adk, 12             ; 2 uses
  %i.adn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adm) #35
          to label %.noexc386 unwind label %.loopexit.split-lp.loopexit ; 3 uses

.noexc386:                                        ; preds = %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EEC2EmRKS3_.exit.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.adn, i8 0, i64 %i.adm, i1 false)
  %i.ado = getelementptr inbounds nuw [12 x i8], ptr %i.adn, i64 %i.adk
  %i.adp = ptrtoint ptr %i.ado to i64
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EEC2EmRKS2_RKS3_.exit.i.i

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EEC2EmRKS2_RKS3_.exit.i.i: ; preds = %.noexc386, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i
  %.sroa.069.0.i.i = phi ptr [ null, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i ], [ %i.adn, %.noexc386 ] ; 10 uses
  %.sroa.14.0.i.i = phi i64 [ 0, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i ], [ %i.adp, %.noexc386 ] ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %.0492.ph, i64 792
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !498 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.0492.ph, i64 800
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !499 ; 2 uses
  %.not8082.i.i = icmp eq ptr %i.adr, %i.adt
  br i1 %.not8082.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.eg, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EEC2EmRKS2_RKS3_.exit.i.i
  %i.adu = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !62, !nonnull !66, !align !67
  %i.adw = load i32, ptr %i.adi, align 8, !tbaa !338
  %i.adx = mul nsw i32 %i.adw, 3
  %i.ady = sext i32 %i.adx to i64
  invoke void @_ZNK3gmx7MpiComm9sumReduceEmPf(ptr noundef nonnull align 8 dereferenceable(24) %i.adv, i64 noundef %i.ady, ptr noundef %.sroa.069.0.i.i)
          to label %bb.eh unwind label %bb.ep

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EEC2EmRKS2_RKS3_.exit.i.i, %bb.eg
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.eg ], [ 0, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EEC2EmRKS2_RKS3_.exit.i.i ] ; 2 uses
  %.sroa.062.083.i.i = phi ptr [ %i.aee, %bb.eg ], [ %i.adr, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EEC2EmRKS2_RKS3_.exit.i.i ] ; 2 uses
  %i.adz = load i32, ptr %.sroa.062.083.i.i, align 4, !tbaa !332 ; 2 uses
  %i.aea = icmp sgt i32 %i.adz, -1
  br i1 %i.aea, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %.lr.ph.i.i
  %i.aeb = getelementptr inbounds nuw [12 x i8], ptr %i.adf, i64 %indvars.iv.i.i
  %i.aec = zext nneg i32 %i.adz to i64
  %i.aed = getelementptr inbounds nuw [12 x i8], ptr %.sroa.069.0.i.i, i64 %i.aec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aed, ptr noundef nonnull align 4 dereferenceable(12) %i.aeb, i64 12, i1 false), !tbaa.struct !500
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.aee = getelementptr inbounds nuw i8, ptr %.sroa.062.083.i.i, i64 4 ; 2 uses
  %.not80.i.i = icmp eq ptr %i.aee, %i.adt
  br i1 %.not80.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.eh:                                            ; preds = %._crit_edge.i.i
  %i.aef = getelementptr inbounds nuw i8, ptr %.3481, i64 792
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !498 ; 3 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %.3481, i64 800
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !499 ; 3 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.zv, i64 520
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !501 ; 2 uses
  %.not8187.i.i = icmp eq ptr %i.aeg, %i.aei
  br i1 %.not8187.i.i, label %._crit_edge94.i.i, label %.lr.ph93.i.i

.lr.ph93.i.i:                                     ; preds = %bb.eh
  %i.ael = getelementptr inbounds nuw i8, ptr %i.zv, i64 528
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !503
  %i.aen = icmp eq ptr %i.aek, %i.aem
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.zu, i64 840 ; 2 uses
  %.fr.i.i = freeze i1 %i.aen
  br i1 %.fr.i.i, label %.lr.ph93.split.us.i.i, label %.lr.ph93.split.i.i

.lr.ph93.split.us.i.i:                            ; preds = %.lr.ph93.i.i, %.loopexit.us.i.i
  %indvars.iv106.i.i = phi i64 [ %indvars.iv.next107.i.i, %.loopexit.us.i.i ], [ 0, %.lr.ph93.i.i ] ; 2 uses
  %.04190.us.i.i = phi double [ %.3.us.i.i, %.loopexit.us.i.i ], [ 0.000000e+00, %.lr.ph93.i.i ] ; 3 uses
  %.sroa.0.088.us.i.i = phi ptr [ %i.afw, %.loopexit.us.i.i ], [ %i.aeg, %.lr.ph93.i.i ] ; 2 uses
  %i.aep = load i32, ptr %.sroa.0.088.us.i.i, align 4, !tbaa !332 ; 2 uses
  %i.aeq = icmp sgt i32 %i.aep, -1
  br i1 %i.aeq, label %bb.ei, label %.loopexit.us.i.i

bb.ei:                                            ; preds = %.lr.ph93.split.us.i.i
  %i.aer = load ptr, ptr %i.aeo, align 8, !tbaa !496 ; 3 uses
  %i.aes = getelementptr inbounds nuw [12 x i8], ptr %i.adh, i64 %indvars.iv106.i.i ; 3 uses
  %i.aet = zext nneg i32 %i.aep to i64
  %i.aeu = getelementptr inbounds nuw [12 x i8], ptr %.sroa.069.0.i.i, i64 %i.aet ; 3 uses
  %i.aev = load i32, ptr %i.aer, align 4, !tbaa !332
  %.not49.us.i.i = icmp eq i32 %i.aev, 0
  br i1 %.not49.us.i.i, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.aew = load float, ptr %i.aes, align 4, !tbaa !333 ; 2 uses
  %i.aex = load float, ptr %i.aeu, align 4, !tbaa !333
  %i.aey = fsub float %i.aew, %i.aex
  %i.aez = fmul float %i.aew, %i.aey
  %i.afa = fpext float %i.aez to double
  %i.afb = fadd double %.04190.us.i.i, %i.afa
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.243.us.i.i = phi double [ %.04190.us.i.i, %bb.ei ], [ %i.afb, %bb.ej ] ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aer, i64 4
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !332
  %.not49.us.1.i.i = icmp eq i32 %i.afd, 0
  br i1 %.not49.us.1.i.i, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aes, i64 4
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !333 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aeu, i64 4
  %i.afh = load float, ptr %i.afg, align 4, !tbaa !333
  %i.afi = fsub float %i.aff, %i.afh
  %i.afj = fmul float %i.aff, %i.afi
  %i.afk = fpext float %i.afj to double
  %i.afl = fadd double %.243.us.i.i, %i.afk
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %.243.us.1.i.i = phi double [ %.243.us.i.i, %bb.ek ], [ %i.afl, %bb.el ] ; 2 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.aer, i64 8
  %i.afn = load i32, ptr %i.afm, align 4, !tbaa !332
  %.not49.us.2.i.i = icmp eq i32 %i.afn, 0
  br i1 %.not49.us.2.i.i, label %bb.en, label %.loopexit.us.i.i

bb.en:                                            ; preds = %bb.em
  %i.afo = getelementptr inbounds nuw i8, ptr %i.aes, i64 8
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !333 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.aeu, i64 8
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !333
  %i.afs = fsub float %i.afp, %i.afr
  %i.aft = fmul float %i.afp, %i.afs
  %i.afu = fpext float %i.aft to double
  %i.afv = fadd double %.243.us.1.i.i, %i.afu
  br label %.loopexit.us.i.i

.loopexit.us.i.i:                                 ; preds = %bb.en, %bb.em, %.lr.ph93.split.us.i.i
  %.3.us.i.i = phi double [ %.04190.us.i.i, %.lr.ph93.split.us.i.i ], [ %.243.us.1.i.i, %bb.em ], [ %i.afv, %bb.en ] ; 2 uses
  %indvars.iv.next107.i.i = add nuw nsw i64 %indvars.iv106.i.i, 1
  %i.afw = getelementptr inbounds nuw i8, ptr %.sroa.0.088.us.i.i, i64 4 ; 2 uses
  %.not81.us.i.i = icmp eq ptr %i.afw, %i.aei
  br i1 %.not81.us.i.i, label %._crit_edge94.i.i, label %.lr.ph93.split.us.i.i

._crit_edge94.i.i:                                ; preds = %.loopexit.i.i, %.loopexit.us.i.i, %bb.eh
  %.041.lcssa.i.i = phi double [ 0.000000e+00, %bb.eh ], [ %.3.us.i.i, %.loopexit.us.i.i ], [ %.3.i.i, %.loopexit.i.i ]
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.069.0.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZL15reorder_partsumPK9t_commrecPK9t_grpoptsRK10gmx_mtop_tPK8em_stateSA_.exit.i, label %bb.eo

bb.eo:                                            ; preds = %._crit_edge94.i.i
  %i.afx = ptrtoint ptr %.sroa.069.0.i.i to i64
  %i.afy = sub i64 %.sroa.14.0.i.i, %i.afx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.069.0.i.i, i64 noundef %i.afy) #32
  br label %_ZL15reorder_partsumPK9t_commrecPK9t_grpoptsRK10gmx_mtop_tPK8em_stateSA_.exit.i

bb.ep:                                            ; preds = %._crit_edge.i.i
  %i.afz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i56.i.i = icmp eq ptr %.sroa.069.0.i.i, null
  br i1 %.not.i.i.i56.i.i, label %.body, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.aga = ptrtoint ptr %.sroa.069.0.i.i to i64
  %i.agb = sub i64 %.sroa.14.0.i.i, %i.aga
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.069.0.i.i, i64 noundef %i.agb) #32
  br label %.body

.lr.ph93.split.i.i:                               ; preds = %.lr.ph93.i.i, %.loopexit.i.i
  %indvars.iv100.i.i = phi i64 [ %indvars.iv.next101.i.i, %.loopexit.i.i ], [ 0, %.lr.ph93.i.i ] ; 3 uses
  %.04190.i.i = phi double [ %.3.i.i, %.loopexit.i.i ], [ 0.000000e+00, %.lr.ph93.i.i ] ; 3 uses
  %.sroa.0.088.i.i = phi ptr [ %i.ahn, %.loopexit.i.i ], [ %i.aeg, %.lr.ph93.i.i ] ; 2 uses
  %i.agc = load i32, ptr %.sroa.0.088.i.i, align 4, !tbaa !332 ; 2 uses
  %i.agd = icmp sgt i32 %i.agc, -1
end_hunk_2
