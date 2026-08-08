inline.NumInlined: 2862
inline.NumDeleted: 1464
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !11689
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #52
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !11770

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #52
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #54 ; 5 uses
  switch i64 %1, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !11689
  store i8 %i.t, ptr %i.s, align 1, !tbaa !11689
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.i, %bb.h
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %3, align 1, !tbaa !11689
  store i8 %i.x, ptr %i.w, align 1, !tbaa !11689
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !11689
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !11689
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !11689
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.af) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !11690
  store i64 %.0, ptr %i.h, align 8, !tbaa !11689
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #22

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #22

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #23

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.b = icmp slt i32 %0, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11687 ; 4 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !11690  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b
  %i.i = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.g, align 8, !tbaa !11689
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.c, label %.thread

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.d, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !11690
  br label %.thread

.thread:                                          ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.m = phi ptr [ %.pre.i, %bb.c ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d
  store i8 45, ptr %i.n, align 1, !tbaa !11689
  store i64 %i.e, ptr %i.c, align 8, !tbaa !11687
  %i.o = load ptr, ptr %1, align 8, !tbaa !11690
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.e
  store i8 0, ptr %i.p, align 1, !tbaa !11689
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i

bb.d:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i32 %0, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.thread.i.i.i, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i, !prof !11923

._crit_edge.thread.i.i.i:                         ; preds = %bb.d
  %i.q = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !11712
  br label %bb.f

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i: ; preds = %.thread, %bb.d
  %i.r = tail call i32 @llvm.abs.i32(i32 %0, i1 false)
  %i.s = zext i32 %i.r to i64                     ; 4 uses
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 true)
  %i.u = sub nuw nsw i64 64, %i.t
  %i.v = mul nuw nsw i64 %i.u, 39
  %i.w = lshr i64 %i.v, 7                         ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11884
  %i.z = icmp ule i64 %i.y, %i.s
  %i.aa = zext i1 %i.z to i64
  %i.ab = add nuw nsw i64 %i.w, %i.aa             ; 5 uses
  %i.ac = icmp samesign ugt i64 %i.ab, 2
  br i1 %i.ac, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i2.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i ], [ %i.s, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i ] ; 2 uses
  %.014.i1.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i ], [ %i.ab, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i ]
  %i.ad = add i64 %.014.i1.i.i.i, -2              ; 4 uses
  %i.ae = udiv i64 %.0.i2.i.i.i, 100              ; 2 uses
  %i.af = urem i64 %.0.i2.i.i.i, 100
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !11712
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ad
  store i16 %i.ah, ptr %i.ai, align 1
  %i.aj = icmp ugt i64 %i.ad, 2
  br i1 %i.aj, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !11924

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i
  %.014.i.lcssa.i.i.i = phi i64 [ %i.ab, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i ], [ %i.ad, %.lr.ph.i.i.i ]
  %.0.i.lcssa.i.i.i = phi i64 [ %i.s, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i ], [ %i.ae, %.lr.ph.i.i.i ]
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !11712 ; 3 uses
  %i.am = icmp eq i64 %.014.i.lcssa.i.i.i, 2
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  store i16 %i.al, ptr %i.a, align 16
  %i.an = trunc i16 %i.al to i8
  br label %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i, %._crit_edge.thread.i.i.i
  %i.ao = phi i16 [ %i.q, %._crit_edge.thread.i.i.i ], [ %i.al, %._crit_edge.i.i.i ]
  %.0.i.i712.i.i.i = phi i64 [ 1, %._crit_edge.thread.i.i.i ], [ %i.ab, %._crit_edge.i.i.i ]
  %i.ap = lshr i16 %i.ao, 8
  %i.aq = trunc nuw i16 %i.ap to i8               ; 2 uses
  store i8 %i.aq, ptr %i.a, align 16, !tbaa !11689
  br label %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit

_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit: ; preds = %bb.e, %bb.f
  %i.ar = phi i8 [ %i.an, %bb.e ], [ %i.aq, %bb.f ]
  %.0.i.i711.i.i.i = phi i64 [ %i.ab, %bb.e ], [ %.0.i.i712.i.i.i, %bb.f ] ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !11687 ; 5 uses
  %i.au = sub i64 9223372036854775807, %i.at
  %i.av = icmp ult i64 %i.au, %.0.i.i711.i.i.i
  br i1 %i.av, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.g:                                             ; preds = %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #52
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZN5folly16to_ascii_decimalILm20EEEmRAT__cm.exit
  %i.aw = add i64 %i.at, %.0.i.i711.i.i.i         ; 3 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !11690 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ba = icmp ult i64 %i.at, 16
  tail call void @llvm.assume(i1 %i.ba)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.bb = load i64, ptr %i.ay, align 8, !tbaa !11689
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bc = phi i64 [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.aw, %i.bc
  br i1 %.not.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %.0.i.i711.i.i.i, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.at ; 2 uses
  %cond.i.i = icmp eq i64 %.0.i.i711.i.i.i, 1
  br i1 %cond.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 %i.ar, ptr %i.bd, align 1, !tbaa !11689
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr nonnull align 16 %i.a, i64 %.0.i.i711.i.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.at, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %.0.i.i711.i.i.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.h, %bb.j, %bb.k, %bb.l
  store i64 %i.aw, ptr %i.as, align 8, !tbaa !11687
  %i.be = load ptr, ptr %1, align 8, !tbaa !11690
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw
  store i8 0, ptr %i.bf, align 1, !tbaa !11689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11690  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b                   ; 2 uses
  %i.d = load i64, ptr %i.b, align 8
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !11770

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #52
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #54 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11687 ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  switch i64 %i.n, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i8, ptr %i.a, align 1, !tbaa !11689
  store i8 %i.o, ptr %i.k, align 1, !tbaa !11689
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.a, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.p = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.q = load i64, ptr %i.b, align 8, !tbaa !11689
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.r) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4
  store ptr %i.k, ptr %0, align 8, !tbaa !11690
  store i64 %.0, ptr %i.b, align 8, !tbaa !11689
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #26

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly24throwSystemErrorExplicitIJRiRA53_KcEEEviDpOT_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(53) %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::system_error", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN5folly23makeSystemErrorExplicitIJRiRA53_KcEEESt12system_erroriDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::system_error") align 8 %3, i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(53) %2)
  invoke void @_ZN5folly15throw_exceptionISt12system_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt12system_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 32) #40 ; 2 uses
  tail call void @_ZNSt12system_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0) #40
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12system_error, ptr nonnull @_ZNSt12system_errorD1Ev) #52
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly23makeSystemErrorExplicitIJRiRA53_KcEEESt12system_erroriDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::system_error") align 8 %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(53) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.folly::basic_fbstring", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11925)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 23 ; 5 uses
  store i8 23, ptr %i.b, align 1, !tbaa !11689, !alias.scope !11925
  store i8 0, ptr %4, align 8, !tbaa !11689, !alias.scope !11925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !11925
  store ptr %4, ptr %i.a, align 8, !tbaa !11928, !noalias !11925
  %i.c = load i32, ptr %2, align 4, !tbaa !11630, !noalias !11925 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5folly6detail15reserveInTargetIiA53_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i, label %bb.b, !prof !11770

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = sub nuw nsw i64 64, %i.f
  %i.h = mul nuw nsw i64 %i.g, 39
  %i.i = lshr i64 %i.h, 7                         ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11884, !noalias !11925
  %i.l = icmp ule i64 %i.k, %i.e
  %i.m = zext i1 %i.l to i64
  %i.n = add nuw nsw i64 %i.i, %i.m
  br label %_ZN5folly6detail15reserveInTargetIiA53_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i

_ZN5folly6detail15reserveInTargetIiA53_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.b ], [ 1, %bb.a ]
  %.lobit.i.i.i.i.i = lshr i32 %i.c, 31
  %narrow.i.i.i = add nuw nsw i32 %.lobit.i.i.i.i.i, 53
  %i.o = zext nneg i32 %narrow.i.i.i to i64
  %i.p = add nuw nsw i64 %.0.i.i.i.i.i.i.i.i, %i.o
  invoke void @_ZN5folly13fbstring_coreIcE7reserveEmb(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.p, i1 noundef zeroext false)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZN5folly6detail15reserveInTargetIiA53_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJiA53_cPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvDpRKT_(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(53) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZN5folly6detail15reserveInTargetIiA53_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !11925
  %i.r = load i8, ptr %i.b, align 1, !tbaa !11689, !alias.scope !11925
  %i.s = icmp ult i8 %i.r, 64
  br i1 %i.s, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.d, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4 ], [ %i.q, %bb.d ], [ %i.q, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !11925
  %i.t = load ptr, ptr %4, align 8, !tbaa !11689
  %i.u = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.v = icmp ult i8 %i.u, 64
  %i.w = select i1 %i.v, ptr %4, ptr %i.t
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #53
  invoke void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, ptr nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.w)
          to label %_ZN5folly23makeSystemErrorExplicitEiPKc.exit unwind label %bb.g

_ZN5folly23makeSystemErrorExplicitEiPKc.exit:     ; preds = %bb.e
  %i.y = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.z = icmp ult i8 %i.y, 64
  br i1 %i.z, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly23makeSystemErrorExplicitEiPKc.exit
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit: ; preds = %_ZN5folly23makeSystemErrorExplicitEiPKc.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void

bb.g:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.ac = icmp ult i8 %i.ab, 64
  br i1 %i.ac, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %common.resume
}

; Function Attrs: nounwind
declare void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12system_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #40
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12system_error, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !11930
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, ptr %2, ptr noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %i.a = load ptr, ptr %2, align 8, !tbaa !15, !noalias !11933
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !noalias !11933
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1), !call_target !11936, !inline_history !11944
  %i.d = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.8, i64 noundef 2)
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !11684, !alias.scope !11945
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !11690 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11687 ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.f, ptr %5, align 8, !tbaa !11690, !alias.scope !11945
  %i.m = load i64, ptr %i.g, align 8, !tbaa !11689
  store i64 %i.m, ptr %i.e, align 8, !tbaa !11689, !alias.scope !11945
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !11687
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.n = phi i64 [ %i.j, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.n, ptr %i.p, align 8, !tbaa !11687, !alias.scope !11945
  store ptr %i.g, ptr %i.d, align 8, !tbaa !11690
  store i64 0, ptr %i.o, align 8, !tbaa !11687
  store i8 0, ptr %i.g, align 8, !tbaa !11689
  call void @llvm.experimental.noalias.scope.decl(metadata !11948)
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #40, !noalias !11948
  %i.r = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %3, i64 noundef %i.q)
          to label %.noexc10 unwind label %bb.h   ; 6 uses

.noexc10:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !11684, !alias.scope !11948
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !11690 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

bb.d:                                             ; preds = %.noexc10
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11687 ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %.noexc10
  store ptr %i.t, ptr %4, align 8, !tbaa !11690, !alias.scope !11948
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !11689
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !11689, !alias.scope !11948
  %.phi.trans.insert.i8 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.pre.i9 = load i64, ptr %.phi.trans.insert.i8, align 8, !tbaa !11687
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.d
  %i.ab = phi i64 [ %i.x, %bb.d ], [ %.pre.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ab, ptr %i.ad, align 8, !tbaa !11687, !alias.scope !11948
  store ptr %i.u, ptr %i.r, align 8, !tbaa !11690
  store i64 0, ptr %i.ac, align 8, !tbaa !11687
  store i8 0, ptr %i.u, align 8, !tbaa !11689
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %4, align 8, !tbaa !11690 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.s
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.f
  %i.ag = load i64, ptr %i.s, align 8, !tbaa !11689
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
end_hunk_0
begin_hunk_1_@_ZN5folly12smartReallocEPvmmm:bb.a

_ZN5folly13checkedMallocEm.exit:                  ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr align 1 %0, i64 %1, i1 false)
  tail call void @free(ptr noundef %0) #40
  br label %_ZN5folly14checkedReallocEPvm.exit

bb.d:                                             ; preds = %bb.a
  %i.e = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #58 ; 2 uses
  %.not.i13 = icmp eq ptr %i.e, null
  br i1 %.not.i13, label %bb.e, label %_ZN5folly14checkedReallocEPvm.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #10
  unreachable

_ZN5folly14checkedReallocEPvm.exit:               ; preds = %bb.d, %_ZN5folly13checkedMallocEm.exit
  %.0 = phi ptr [ %i.d, %_ZN5folly13checkedMallocEm.exit ], [ %i.e, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #32

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #33

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.b = load i8, ptr %i.a, align 1, !tbaa !11689
  %i.c = icmp slt i8 %i.b, -64
  %i.d = load ptr, ptr %0, align 8, !tbaa !11689  ; 2 uses
  br i1 %i.c, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %i.f = atomicrmw sub ptr %i.e, i64 1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split: ; preds = %bb.b, %bb.a
  %.sink = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]
  tail call void @free(ptr noundef %.sink) #40
  br label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit: ; preds = %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly13fbstring_coreIcE7unshareEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11951
  %i.d = and i64 %i.c, 4611686018427387903
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.d)
  store i64 %.sroa.speculated, ptr %i.a, align 8, !tbaa !11884
  %i.e = call noundef ptr @_ZN5folly13fbstring_coreIcE10RefCounted6createEPm(ptr noundef nonnull %i.a)
  %i.f = load ptr, ptr %0, align 8, !tbaa !11689
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !11689
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.f, i64 %i.j, i1 false)
  %i.k = load ptr, ptr %0, align 8, !tbaa !11689
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.m = atomicrmw sub ptr %i.l, i64 1 acq_rel, align 8
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.b, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef nonnull %i.l) #40
  br label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit: ; preds = %bb.a, %bb.b
  store ptr %i.i, ptr %0, align 8, !tbaa !11689
  %i.o = load i64, ptr %i.a, align 8, !tbaa !11884
  %i.p = or i64 %i.o, 4611686018427387904
  store i64 %i.p, ptr %i.b, align 8, !tbaa !11951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly13fbstring_coreIcE10RefCounted10reallocateEPcmmPm(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::length_error", align 8 ; 5 uses
  %5 = alloca %"class.std::length_error", align 8 ; 5 uses
  %i.a = load i64, ptr %3, align 8, !tbaa !11884
  %i.b = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.a, i64 1) ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.c, label %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit, label %bb.d, !prof !11770

_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.9)
  invoke void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %4) #10
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit
  unreachable

bb.c:                                             ; preds = %_ZN5folly11checked_addImQsr3stdE13is_integral_vIT_EEEbPS1_S1_S1_.exit
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.e = extractvalue { i64, i1 } %i.b, 0
  %i.f = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.e, i64 8) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  %i.h = extractvalue { i64, i1 } %i.f, 0         ; 5 uses
  br i1 %i.g, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  call void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.9)
  invoke void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %5) #10
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_ZN5folly14goodMallocSizeEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = load atomic i8, ptr @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E monotonic, align 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %.split.i, !prof !11770

.split.i:                                         ; preds = %bb.i
  %i.l = icmp sgt i8 %i.k, 0
  br i1 %i.l, label %bb.j, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.i
  %i.m = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #56
  br i1 %i.m, label %bb.j, label %_ZN5folly14goodMallocSizeEm.exit

bb.j:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %.split.i
  %i.n = tail call i64 @nallocx(i64 noundef %i.h, i32 noundef 0) #40 ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  %i.o = select i1 %.not.i, i64 %i.h, i64 %i.n
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %bb.h, %.split.i, %_ZN5folly10canNallocxEv.exit.i, %bb.j
  %.0.i13 = phi i64 [ 0, %bb.h ], [ %i.o, %bb.j ], [ %i.h, %_ZN5folly10canNallocxEv.exit.i ], [ %i.h, %.split.i ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %0, i64 -8
  %i.q = add i64 %1, 9
  %i.r = add i64 %2, 9
  %i.s = tail call noalias noundef nonnull ptr @_ZN5folly12smartReallocEPvmmm(ptr noundef nonnull %i.p, i64 noundef %i.q, i64 noundef %i.r, i64 noundef %.0.i13)
  %i.t = add i64 %.0.i13, -9
  store i64 %i.t, ptr %3, align 8, !tbaa !11884
  ret ptr %i.s

bb.k:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJiA53_cPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvDpRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(53) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !11928  ; 3 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !11630  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  tail call void @_ZN5folly13fbstring_coreIcE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 noundef signext 45)
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i, !prof !11923

._crit_edge.thread.i.i.i.i:                       ; preds = %bb.b
  %i.e = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !11712
  br label %bb.d

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i: ; preds = %bb.b, %.thread.i
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = sub nuw nsw i64 64, %i.h
  %i.j = mul nuw nsw i64 %i.i, 39
  %i.k = lshr i64 %i.j, 7                         ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11884
  %i.n = icmp ule i64 %i.m, %i.g
  %i.o = zext i1 %i.n to i64
  %i.p = add nuw nsw i64 %i.k, %i.o               ; 5 uses
  %i.q = icmp samesign ugt i64 %i.p, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.i2.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i ], [ %i.g, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ] ; 2 uses
  %.014.i1.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i ], [ %i.p, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ]
  %i.r = add i64 %.014.i1.i.i.i.i, -2             ; 4 uses
  %i.s = udiv i64 %.0.i2.i.i.i.i, 100             ; 2 uses
  %i.t = urem i64 %.0.i2.i.i.i.i, 100
  %i.u = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !11712
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  store i16 %i.v, ptr %i.w, align 1
  %i.x = icmp ugt i64 %i.r, 2
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !11924

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i
  %.014.i.lcssa.i.i.i.i = phi i64 [ %i.p, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i ]
  %.0.i.lcssa.i.i.i.i = phi i64 [ %i.g, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i.i
  %i.z = load i16, ptr %i.y, align 2, !tbaa !11712 ; 2 uses
  %i.aa = icmp eq i64 %.014.i.lcssa.i.i.i.i, 2
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  store i16 %i.z, ptr %i.a, align 16
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i, %._crit_edge.thread.i.i.i.i
  %i.ab = phi i16 [ %i.e, %._crit_edge.thread.i.i.i.i ], [ %i.z, %._crit_edge.i.i.i.i ]
  %.0.i.i712.i.i.i.i = phi i64 [ 1, %._crit_edge.thread.i.i.i.i ], [ %i.p, %._crit_edge.i.i.i.i ]
  %i.ac = lshr i16 %i.ab, 8
  %i.ad = trunc nuw i16 %i.ac to i8
  store i8 %i.ad, ptr %i.a, align 16, !tbaa !11689
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit

_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i711.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ %.0.i.i712.i.i.i.i, %bb.d ]
  %i.ae = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, i64 noundef %.0.i.i711.i.i.i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.af = call noundef i64 @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE12traitsLengthEPKc(ptr noundef nonnull align 1 dereferenceable(53) %1)
  %i.ag = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 1 dereferenceable(53) %1, i64 noundef %i.af) ; 0 uses
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.o, label %bb.b, !prof !11770

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11689 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !11689 ; 4 uses
  %i.e = zext i8 %i.d to i64
  %i.f = sub nsw i64 23, %i.e                     ; 4 uses
  %i.g = icmp ult i8 %i.d, 24
  %i.h = select i1 %i.g, i64 %i.f, i64 %i.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !11689  ; 2 uses
  %i.j = icmp ult i8 %i.d, 64
  %i.k = select i1 %i.j, ptr %0, ptr %i.i         ; 3 uses
  %i.l = and i8 %i.d, -64                         ; 2 uses
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = add i64 %i.f, %2                         ; 5 uses
  %i.o = icmp ugt i64 %i.n, 23
  br i1 %i.o, label %bb.e, label %bb.d, !prof !11956

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nuw nsw i64 %i.n to i8
  %i.q = sub nuw nsw i8 23, %i.p
  store i8 %i.q, ptr %i.c, align 1, !tbaa !11689
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  store i8 0, ptr %i.r, align 1, !tbaa !11689
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  br label %_ZN5folly13fbstring_coreIcE12expandNoinitEmbb.exit

bb.e:                                             ; preds = %bb.c
  %i.t = tail call i64 @llvm.umax.i64(i64 %i.n, i64 46)
  tail call void @_ZN5folly13fbstring_coreIcE12reserveSmallEmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.t, i1 noundef zeroext false)
  br label %.noexc

bb.f:                                             ; preds = %bb.b
  %i.u = add i64 %i.b, %2                         ; 4 uses
  %cond.i = icmp eq i8 %i.l, 64
  br i1 %cond.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.w = load atomic i64, ptr %i.v acquire, align 8
  %i.x = icmp ugt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr %i.a, align 8, !tbaa !11689
  br label %_ZNK5folly13fbstring_coreIcE8capacityEv.exit.i

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !11951
  %i.ab = and i64 %i.aa, 4611686018427387903
  br label %_ZNK5folly13fbstring_coreIcE8capacityEv.exit.i

_ZNK5folly13fbstring_coreIcE8capacityEv.exit.i:   ; preds = %bb.i, %bb.h
  %.0.i.i = phi i64 [ %i.ab, %bb.i ], [ %i.y, %bb.h ]
  %i.ac = icmp ugt i64 %i.u, %.0.i.i
  br i1 %i.ac, label %bb.j, label %.noexc, !prof !11770

bb.j:                                             ; preds = %_ZNK5folly13fbstring_coreIcE8capacityEv.exit.i
  %i.ad = load i8, ptr %i.c, align 1, !tbaa !11689
  %i.ae = and i8 %i.ad, -64
  switch i8 %i.ae, label %bb.m [
    i8 0, label %_ZNK5folly13fbstring_coreIcE8capacityEv.exit15.i
    i8 64, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %0, align 8, !tbaa !11689
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8
  %i.ai = icmp ugt i64 %i.ah, 1
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !11689
  br label %_ZNK5folly13fbstring_coreIcE8capacityEv.exit15.i

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !11951
  %i.am = and i64 %i.al, 4611686018427387903
  br label %_ZNK5folly13fbstring_coreIcE8capacityEv.exit15.i

_ZNK5folly13fbstring_coreIcE8capacityEv.exit15.i: ; preds = %bb.m, %bb.l, %bb.j
  %.0.i14.i = phi i64 [ %i.am, %bb.m ], [ %i.aj, %bb.l ], [ 23, %bb.j ]
  %i.an = mul i64 %.0.i14.i, 3
  %i.ao = lshr i64 %i.an, 1
  %i.ap = add nuw i64 %i.ao, 1
  %i.aq = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ap)
  tail call void @_ZN5folly13fbstring_coreIcE7reserveEmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aq, i1 noundef zeroext false)
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNK5folly13fbstring_coreIcE8capacityEv.exit15.i, %_ZNK5folly13fbstring_coreIcE8capacityEv.exit.i
  %.0..0.18.i = phi i64 [ %i.n, %bb.e ], [ %i.u, %_ZNK5folly13fbstring_coreIcE8capacityEv.exit.i ], [ %i.u, %_ZNK5folly13fbstring_coreIcE8capacityEv.exit15.i ] ; 2 uses
  %.0.i = phi i64 [ %i.f, %bb.e ], [ %i.b, %_ZNK5folly13fbstring_coreIcE8capacityEv.exit.i ], [ %i.b, %_ZNK5folly13fbstring_coreIcE8capacityEv.exit15.i ]
  store i64 %.0..0.18.i, ptr %i.a, align 8, !tbaa !11689
  %i.ar = load ptr, ptr %0, align 8, !tbaa !11689
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.0..0.18.i
  store i8 0, ptr %i.as, align 1, !tbaa !11689
  %i.at = load ptr, ptr %0, align 8, !tbaa !11689
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.0.i
  br label %_ZN5folly13fbstring_coreIcE12expandNoinitEmbb.exit

_ZN5folly13fbstring_coreIcE12expandNoinitEmbb.exit: ; preds = %.noexc, %bb.d
  %.011.i = phi ptr [ %i.au, %.noexc ], [ %i.s, %bb.d ] ; 2 uses
  %i.av = icmp ule ptr %i.k, %1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %.not32 = icmp ugt ptr %i.aw, %1
  %or.cond = select i1 %i.av, i1 %.not32, i1 false, !prof !11957
  br i1 %or.cond, label %bb.n, label %.critedge, !prof !11957

bb.n:                                             ; preds = %_ZN5folly13fbstring_coreIcE12expandNoinitEmbb.exit
  %i.ax = load ptr, ptr %0, align 8, !tbaa !11689
  %i.ay = load i8, ptr %i.c, align 1, !tbaa !11689
  %i.az = icmp ult i8 %i.ay, 64
  %i.ba = select i1 %i.az, ptr %0, ptr %i.ax
  %i.bb = ptrtoint ptr %1 to i64
  %i.bc = ptrtoint ptr %i.k to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.011.i, ptr align 1 %i.be, i64 %2, i1 false)
  br label %bb.o

.critedge:                                        ; preds = %_ZN5folly13fbstring_coreIcE12expandNoinitEmbb.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.011.i, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly13fbstring_coreIcE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 noundef signext %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !11689 ; 2 uses
  %i.c = and i8 %i.b, -64                         ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@"_ZZN5folly17AsyncServerSocket4bindEtRKSt3mapINS_15SocketOptionKeyENS_17SocketOptionValueESt4lessIS2_ESaISt4pairIKS2_S3_EEEENK3$_1clEP8addrinfo":bb.a
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #49
  unreachable

bb.ag:                                            ; preds = %bb.h
  unreachable
}

declare noundef zeroext i16 @_ZNK5folly13SocketAddress7getPortEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) local_unnamed_addr #7

declare void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #42

declare i32 @_ZN5folly6netops6socketEiii(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly16throwSystemErrorIJRiRA48_KciRA9_S2_PS2_EEEvDpOT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__errno_location() #53
  %i.b = load i32, ptr %i.a, align 4, !tbaa !11630
  tail call void @_ZN5folly24throwSystemErrorExplicitIJRiRA48_KciRA9_S2_PS2_EEEviDpOT_(i32 noundef %i.b, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #52
  unreachable
}

declare noundef i32 @_ZN5folly13SocketAddress11getPortFromEPK8sockaddr(ptr noundef) local_unnamed_addr #11

declare noundef ptr @_ZN5folly13SocketAddress17getFamilyNameFromEPK8sockaddrPKc(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google17MakeCheckOpStringIN5folly13NetworkSocketES2_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) local_unnamed_addr #27 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::base::CheckOpMessageBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !12301  ; 2 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.34, i64 noundef 21)
          to label %.noexc unwind label %bb.d     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4, !tbaa !11758
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.c)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.35, i64 noundef 1)
          to label %_ZN6google22MakeCheckOpValueStringIN5folly13NetworkSocketEEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIN5folly13NetworkSocketEEEvPSoRKT_.exit: ; preds = %.noexc4
  %i.f = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIN5folly13NetworkSocketEEEvPSoRKT_.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.34, i64 noundef 21)
          to label %.noexc6 unwind label %bb.d    ; 0 uses

.noexc6:                                          ; preds = %bb.b
  %i.h = load i32, ptr %1, align 4, !tbaa !11758
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %i.h)
          to label %.noexc7 unwind label %bb.d

.noexc7:                                          ; preds = %.noexc6
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.35, i64 noundef 1)
          to label %_ZN6google22MakeCheckOpValueStringIN5folly13NetworkSocketEEEvPSoRKT_.exit9 unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIN5folly13NetworkSocketEEEvPSoRKT_.exit9: ; preds = %.noexc7
  %i.k = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIN5folly13NetworkSocketEEEvPSoRKT_.exit9
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret ptr %i.k

bb.d:                                             ; preds = %.noexc7, %.noexc6, %bb.b, %.noexc4, %.noexc, %bb.a, %_ZN6google22MakeCheckOpValueStringIN5folly13NetworkSocketEEEvPSoRKT_.exit9, %_ZN6google22MakeCheckOpValueStringIN5folly13NetworkSocketEEEvPSoRKT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.l
}

declare void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #11

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly24throwSystemErrorExplicitIJRiRA48_KciRA9_S2_PS2_EEEviDpOT_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::system_error", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @_ZN5folly23makeSystemErrorExplicitIJRiRA48_KciRA9_S2_PS2_EEESt12system_erroriDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::system_error") align 8 %6, i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  invoke void @_ZN5folly15throw_exceptionISt12system_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly23makeSystemErrorExplicitIJRiRA48_KciRA9_S2_PS2_EEESt12system_erroriDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::system_error") align 8 %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %"class.folly::basic_fbstring", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12304)
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 23 ; 5 uses
  store i8 23, ptr %i.b, align 1, !tbaa !11689, !alias.scope !12304
  store i8 0, ptr %7, align 8, !tbaa !11689, !alias.scope !12304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !12304
  store ptr %7, ptr %i.a, align 8, !tbaa !11928, !noalias !12304
  invoke void @_ZN5folly11toAppendFitIJiA48_ciA9_cPKcPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSH_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSG_(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !12304
  %i.d = load i8, ptr %i.b, align 1, !tbaa !11689, !alias.scope !12304
  %i.e = icmp ult i8 %i.d, 64
  br i1 %i.e, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #40
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %bb.c, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit7
  %common.resume.op = phi { ptr, i32 } [ %i.m, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit7 ], [ %i.c, %bb.c ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !12304
  %i.f = load ptr, ptr %7, align 8, !tbaa !11689
  %i.g = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.h = icmp ult i8 %i.g, 64
  %i.i = select i1 %i.h, ptr %7, ptr %i.f
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #53
  invoke void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, ptr nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.i)
          to label %_ZN5folly23makeSystemErrorExplicitEiPKc.exit unwind label %bb.f

_ZN5folly23makeSystemErrorExplicitEiPKc.exit:     ; preds = %bb.d
  %i.k = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.l = icmp ult i8 %i.k, 64
  br i1 %i.l, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly23makeSystemErrorExplicitEiPKc.exit
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #40
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit: ; preds = %_ZN5folly23makeSystemErrorExplicitEiPKc.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  ret void

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.o = icmp ult i8 %i.n, 64
  br i1 %i.o, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit7, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #40
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit7

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit7: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly11toAppendFitIJiA48_ciA9_cPKcPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSH_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSG_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %5, align 8, !tbaa !11928
  %i.b = load i32, ptr %0, align 4, !tbaa !11630  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN5folly19estimateSpaceNeededIiEENSt9enable_ifIXaaaaaa13is_integral_vIT_E11is_signed_vIS2_EgestS2_Li4EltstS2_Li16EEmE4typeES2_.exit.i.i, label %bb.b, !prof !11770

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @llvm.abs.i32(i32 %i.b, i1 false)
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = sub nuw nsw i64 64, %i.e
  %i.g = mul nuw nsw i64 %i.f, 39
  %i.h = lshr i64 %i.g, 7                         ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11884
  %i.k = icmp ule i64 %i.j, %i.d
  %i.l = zext i1 %i.k to i64
  %i.m = add nuw nsw i64 %i.h, %i.l
  br label %_ZN5folly19estimateSpaceNeededIiEENSt9enable_ifIXaaaaaa13is_integral_vIT_E11is_signed_vIS2_EgestS2_Li4EltstS2_Li16EEmE4typeES2_.exit.i.i

_ZN5folly19estimateSpaceNeededIiEENSt9enable_ifIXaaaaaa13is_integral_vIT_E11is_signed_vIS2_EgestS2_Li4EltstS2_Li16EEmE4typeES2_.exit.i.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i = phi i64 [ %i.m, %bb.b ], [ 1, %bb.a ]
  %i.n = load i32, ptr %2, align 4, !tbaa !11630  ; 3 uses
  %.not.i.i.i.i15.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i15.i.i, label %_ZN5folly19estimateSpaceNeededIiEENSt9enable_ifIXaaaaaa13is_integral_vIT_E11is_signed_vIS2_EgestS2_Li4EltstS2_Li16EEmE4typeES2_.exit18.i.i, label %bb.c, !prof !11770

bb.c:                                             ; preds = %_ZN5folly19estimateSpaceNeededIiEENSt9enable_ifIXaaaaaa13is_integral_vIT_E11is_signed_vIS2_EgestS2_Li4EltstS2_Li16EEmE4typeES2_.exit.i.i
  %i.o = tail call i32 @llvm.abs.i32(i32 %i.n, i1 false)
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = sub nuw nsw i64 64, %i.q
  %i.s = mul nuw nsw i64 %i.r, 39
  %i.t = lshr i64 %i.s, 7                         ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11884
  %i.w = icmp ule i64 %i.v, %i.p
  %i.x = zext i1 %i.w to i64
  %i.y = add nuw nsw i64 %i.t, %i.x
  br label %_ZN5folly19estimateSpaceNeededIiEENSt9enable_ifIXaaaaaa13is_integral_vIT_E11is_signed_vIS2_EgestS2_Li4EltstS2_Li16EEmE4typeES2_.exit18.i.i

_ZN5folly19estimateSpaceNeededIiEENSt9enable_ifIXaaaaaa13is_integral_vIT_E11is_signed_vIS2_EgestS2_Li4EltstS2_Li16EEmE4typeES2_.exit18.i.i: ; preds = %bb.c, %_ZN5folly19estimateSpaceNeededIiEENSt9enable_ifIXaaaaaa13is_integral_vIT_E11is_signed_vIS2_EgestS2_Li4EltstS2_Li16EEmE4typeES2_.exit.i.i
  %.0.i.i.i.i16.i.i = phi i64 [ %i.y, %bb.c ], [ 1, %_ZN5folly19estimateSpaceNeededIiEENSt9enable_ifIXaaaaaa13is_integral_vIT_E11is_signed_vIS2_EgestS2_Li4EltstS2_Li16EEmE4typeES2_.exit.i.i ]
  %i.z = load ptr, ptr %4, align 8, !tbaa !11954  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail15reserveInTargetIiA48_cJiA9_cPKcPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5folly19estimateSpaceNeededIiEENSt9enable_ifIXaaaaaa13is_integral_vIT_E11is_signed_vIS2_EgestS2_Li4EltstS2_Li16EEmE4typeES2_.exit18.i.i
  %i.aa = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #59
  br label %_ZN5folly6detail15reserveInTargetIiA48_cJiA9_cPKcPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit

_ZN5folly6detail15reserveInTargetIiA48_cJiA9_cPKcPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit: ; preds = %_ZN5folly19estimateSpaceNeededIiEENSt9enable_ifIXaaaaaa13is_integral_vIT_E11is_signed_vIS2_EgestS2_Li4EltstS2_Li16EEmE4typeES2_.exit18.i.i, %bb.d
  %i.ab = phi i64 [ %i.aa, %bb.d ], [ 0, %_ZN5folly19estimateSpaceNeededIiEENSt9enable_ifIXaaaaaa13is_integral_vIT_E11is_signed_vIS2_EgestS2_Li4EltstS2_Li16EEmE4typeES2_.exit18.i.i ]
  %.lobit.i17.i.i = lshr i32 %i.n, 31
  %i.ac = zext nneg i32 %.lobit.i17.i.i to i64
  %.lobit.i.i.i = lshr i32 %i.b, 31
  %narrow.i = add nuw nsw i32 %.lobit.i.i.i, 57
  %i.ad = zext nneg i32 %narrow.i to i64
  %i.ae = add nuw nsw i64 %.0.i.i.i.i.i.i, %i.ad
  %i.af = add nuw nsw i64 %i.ae, %i.ac
  %i.ag = add nuw nsw i64 %i.af, %.0.i.i.i.i16.i.i
  %i.ah = add i64 %i.ag, %i.ab
  tail call void @_ZN5folly13fbstring_coreIcE7reserveEmb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ah, i1 noundef zeroext false)
  tail call void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4ELm5EEEE4callIJiA48_ciA9_cPKcPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvDpRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3ELm4ELm5EEEE4callIJiA48_ciA9_cPKcPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvDpRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(48) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = alloca [20 x i8], align 16               ; 6 uses
  %i.c = load ptr, ptr %5, align 8, !tbaa !11928  ; 7 uses
  %i.d = load i32, ptr %0, align 4, !tbaa !11630  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  tail call void @_ZN5folly13fbstring_coreIcE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 noundef signext 45)
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i, !prof !11923

._crit_edge.thread.i.i.i.i:                       ; preds = %bb.b
  %i.f = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !11712
  br label %bb.d

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i: ; preds = %bb.b, %.thread.i
  %i.g = tail call i32 @llvm.abs.i32(i32 %i.d, i1 false)
  %i.h = zext i32 %i.g to i64                     ; 4 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = sub nuw nsw i64 64, %i.i
  %i.k = mul nuw nsw i64 %i.j, 39
  %i.l = lshr i64 %i.k, 7                         ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11884
  %i.o = icmp ule i64 %i.n, %i.h
  %i.p = zext i1 %i.o to i64
  %i.q = add nuw nsw i64 %i.l, %i.p               ; 5 uses
  %i.r = icmp samesign ugt i64 %i.q, 2
  br i1 %i.r, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.i2.i.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i.i ], [ %i.h, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ] ; 2 uses
  %.014.i1.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i ], [ %i.q, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ]
  %i.s = add i64 %.014.i1.i.i.i.i, -2             ; 4 uses
  %i.t = udiv i64 %.0.i2.i.i.i.i, 100             ; 2 uses
  %i.u = urem i64 %.0.i2.i.i.i.i, 100
  %i.v = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !11712
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.s
  store i16 %i.w, ptr %i.x, align 1
  %i.y = icmp ugt i64 %i.s, 2
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !11924

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i
  %.014.i.lcssa.i.i.i.i = phi i64 [ %i.q, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i ]
  %.0.i.lcssa.i.i.i.i = phi i64 [ %i.h, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ], [ %i.t, %.lr.ph.i.i.i.i ]
  %i.z = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i.i
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !11712 ; 2 uses
  %i.ab = icmp eq i64 %.014.i.lcssa.i.i.i.i, 2
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  store i16 %i.aa, ptr %i.b, align 16
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i, %._crit_edge.thread.i.i.i.i
  %i.ac = phi i16 [ %i.f, %._crit_edge.thread.i.i.i.i ], [ %i.aa, %._crit_edge.i.i.i.i ]
  %.0.i.i712.i.i.i.i = phi i64 [ 1, %._crit_edge.thread.i.i.i.i ], [ %i.q, %._crit_edge.i.i.i.i ]
  %i.ad = lshr i16 %i.ac, 8
  %i.ae = trunc nuw i16 %i.ad to i8
  store i8 %i.ae, ptr %i.b, align 16, !tbaa !11689
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit

_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i711.i.i.i.i = phi i64 [ %i.q, %bb.c ], [ %.0.i.i712.i.i.i.i, %bb.d ]
  %i.af = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, i64 noundef %.0.i.i711.i.i.i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  %i.ag = call noundef i64 @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE12traitsLengthEPKc(ptr noundef nonnull align 1 dereferenceable(48) %1)
  %i.ah = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(48) %1, i64 noundef %i.ag) ; 0 uses
  %i.ai = load i32, ptr %2, align 4, !tbaa !11630 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %.thread.i29, label %bb.e

.thread.i29:                                      ; preds = %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit
  call void @_ZN5folly13fbstring_coreIcE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 noundef signext 45)
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i19

bb.e:                                             ; preds = %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit
  %.not.i.i.i.i.i.i18 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i18, label %._crit_edge.thread.i.i.i.i28, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i19, !prof !11923

._crit_edge.thread.i.i.i.i28:                     ; preds = %bb.e
  %i.ak = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !11712
  br label %bb.g

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i19: ; preds = %bb.e, %.thread.i29
  %i.al = call i32 @llvm.abs.i32(i32 %i.ai, i1 false)
  %i.am = zext i32 %i.al to i64                   ; 4 uses
  %i.an = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.am, i1 true)
  %i.ao = sub nuw nsw i64 64, %i.an
  %i.ap = mul nuw nsw i64 %i.ao, 39
  %i.aq = lshr i64 %i.ap, 7                       ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11884
  %i.at = icmp ule i64 %i.as, %i.am
  %i.au = zext i1 %i.at to i64
  %i.av = add nuw nsw i64 %i.aq, %i.au            ; 5 uses
  %i.aw = icmp samesign ugt i64 %i.av, 2
  br i1 %i.aw, label %.lr.ph.i.i.i.i25, label %._crit_edge.i.i.i.i20

.lr.ph.i.i.i.i25:                                 ; preds = %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i19, %.lr.ph.i.i.i.i25
  %.0.i2.i.i.i.i26 = phi i64 [ %i.ay, %.lr.ph.i.i.i.i25 ], [ %i.am, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i19 ] ; 2 uses
  %.014.i1.i.i.i.i27 = phi i64 [ %i.ax, %.lr.ph.i.i.i.i25 ], [ %i.av, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i19 ]
  %i.ax = add i64 %.014.i1.i.i.i.i27, -2          ; 4 uses
  %i.ay = udiv i64 %.0.i2.i.i.i.i26, 100          ; 2 uses
  %i.az = urem i64 %.0.i2.i.i.i.i26, 100
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !11712
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  store i16 %i.bb, ptr %i.bc, align 1
  %i.bd = icmp ugt i64 %i.ax, 2
  br i1 %i.bd, label %.lr.ph.i.i.i.i25, label %._crit_edge.i.i.i.i20, !llvm.loop !11924

._crit_edge.i.i.i.i20:                            ; preds = %.lr.ph.i.i.i.i25, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i19
  %.014.i.lcssa.i.i.i.i21 = phi i64 [ %i.av, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i19 ], [ %i.ax, %.lr.ph.i.i.i.i25 ]
  %.0.i.lcssa.i.i.i.i22 = phi i64 [ %i.am, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i19 ], [ %i.ay, %.lr.ph.i.i.i.i25 ]
  %i.be = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i.i22
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !11712 ; 2 uses
  %i.bg = icmp eq i64 %.014.i.lcssa.i.i.i.i21, 2
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i20
  store i16 %i.bf, ptr %i.a, align 16
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit30

bb.g:                                             ; preds = %._crit_edge.i.i.i.i20, %._crit_edge.thread.i.i.i.i28
  %i.bh = phi i16 [ %i.ak, %._crit_edge.thread.i.i.i.i28 ], [ %i.bf, %._crit_edge.i.i.i.i20 ]
  %.0.i.i712.i.i.i.i23 = phi i64 [ 1, %._crit_edge.thread.i.i.i.i28 ], [ %i.av, %._crit_edge.i.i.i.i20 ]
  %i.bi = lshr i16 %i.bh, 8
  %i.bj = trunc nuw i16 %i.bi to i8
  store i8 %i.bj, ptr %i.a, align 16, !tbaa !11689
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit30

_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit30: ; preds = %bb.f, %bb.g
  %.0.i.i711.i.i.i.i24 = phi i64 [ %i.av, %bb.f ], [ %.0.i.i712.i.i.i.i23, %bb.g ]
  %i.bk = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, i64 noundef %.0.i.i711.i.i.i.i24) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.bl = call noundef i64 @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE12traitsLengthEPKc(ptr noundef nonnull align 1 dereferenceable(9) %3)
  %i.bm = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 1 dereferenceable(9) %3, i64 noundef %i.bl) ; 0 uses
  %i.bn = load ptr, ptr %4, align 8, !tbaa !11954 ; 3 uses
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S9_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESB_PSC_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit30
  %i.bo = call noundef i64 @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE12traitsLengthEPKc(ptr noundef nonnull %i.bn)
  %i.bp = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.bn, i64 noundef %i.bo) ; 0 uses
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S9_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESB_PSC_.exit

_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEPKcEENSt9enable_ifIXaasr3std14is_convertibleIT0_S9_EE5valuesr12IsSomeStringIT_EE5valueEvE4typeESB_PSC_.exit: ; preds = %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit30, %bb.h
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google17MakeCheckOpStringIiiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) local_unnamed_addr #27 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::base::CheckOpMessageBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !12301
  %i.b = load i32, ptr %0, align 4, !tbaa !11630
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.b)
          to label %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit: ; preds = %bb.a
  %i.d = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit
  %i.e = load i32, ptr %1, align 4, !tbaa !11630
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %i.e)
          to label %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit4 unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit4: ; preds = %bb.b
  %i.g = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit4
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  ret ptr %i.g

bb.d:                                             ; preds = %bb.b, %bb.a, %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit4, %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17AsyncServerSocket18setEnableReuseAddrEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) initializes((318, 319)) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.b = zext i1 %1 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 318
  store i8 %i.b, ptr %i.c, align 2, !tbaa !12260
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11693 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11693 ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = zext i1 %1 to i32
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.011.014 = phi ptr [ %i.e, %.lr.ph ], [ %i.t, %bb.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.011.014, i64 176
  %i.k = load i32, ptr %i.j, align 4, !tbaa !11758 ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i32 %i.i, ptr %i.a, align 4, !tbaa !11630
  %i.m = call noundef i32 @_ZN5folly6netops10setsockoptENS_13NetworkSocketEiiPKvj(i32 %i.k, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef 4)
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @__errno_location() #53
  %i.o = load i32, ptr %i.n, align 4, !tbaa !11630 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str.30, i32 noundef 639, i32 noundef 2)
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.66, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 noundef %i.o)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @_ZN5folly24throwSystemErrorExplicitEiPKc(i32 noundef %i.o, ptr noundef nonnull @.str.67) #52
  unreachable

bb.g:                                             ; preds = %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  resume { ptr, i32 } %i.s

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.011.014, i64 200 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.g
  br i1 %i.u, label %._crit_edge, label %bb.b
}

declare void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #11

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly24throwSystemErrorExplicitEiPKc(i32 noundef %0, ptr noundef %1) local_unnamed_addr #38 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::system_error", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #53
  call void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 %0, ptr nonnull align 8 dereferenceable(8) %i.a, ptr noundef %1)
  invoke void @_ZN5folly15throw_exceptionISt12system_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5folly17AsyncServerSocket13setIPFreebindEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(408) initializes((319, 320)) %0, i1 noundef zeroext %1) local_unnamed_addr #43 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 319
  store i8 %i.a, ptr %i.b, align 1, !tbaa !12264
  ret void
}

declare noundef i32 @_ZN5folly6netops6listenENS_13NetworkSocketEi(i32, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly16throwSystemErrorIJRiRA40_KcEEEvDpOT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(40) %1) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__errno_location() #53
  %i.b = load i32, ptr %i.a, align 4, !tbaa !11630
  tail call void @_ZN5folly24throwSystemErrorExplicitIJRiRA40_KcEEEviDpOT_(i32 noundef %i.b, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(40) %1) #52
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly24throwSystemErrorExplicitIJRiRA40_KcEEEviDpOT_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(40) %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::system_error", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN5folly23makeSystemErrorExplicitIJRiRA40_KcEEESt12system_erroriDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::system_error") align 8 %3, i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(40) %2)
  invoke void @_ZN5folly15throw_exceptionISt12system_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly23makeSystemErrorExplicitIJRiRA40_KcEEESt12system_erroriDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::system_error") align 8 %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(40) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.folly::basic_fbstring", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12307)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 23 ; 5 uses
  store i8 23, ptr %i.b, align 1, !tbaa !11689, !alias.scope !12307
  store i8 0, ptr %4, align 8, !tbaa !11689, !alias.scope !12307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !12307
  store ptr %4, ptr %i.a, align 8, !tbaa !11928, !noalias !12307
  %i.c = load i32, ptr %2, align 4, !tbaa !11630, !noalias !12307 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5folly6detail15reserveInTargetIiA40_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i, label %bb.b, !prof !11770

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = sub nuw nsw i64 64, %i.f
  %i.h = mul nuw nsw i64 %i.g, 39
  %i.i = lshr i64 %i.h, 7                         ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11884, !noalias !12307
  %i.l = icmp ule i64 %i.k, %i.e
  %i.m = zext i1 %i.l to i64
  %i.n = add nuw nsw i64 %i.i, %i.m
  br label %_ZN5folly6detail15reserveInTargetIiA40_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i

_ZN5folly6detail15reserveInTargetIiA40_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.b ], [ 1, %bb.a ]
  %.lobit.i.i.i.i.i = lshr i32 %i.c, 31
  %i.o = or disjoint i32 %.lobit.i.i.i.i.i, 40
  %i.p = zext nneg i32 %i.o to i64
  %i.q = add nuw nsw i64 %.0.i.i.i.i.i.i.i.i, %i.p
  invoke void @_ZN5folly13fbstring_coreIcE7reserveEmb(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.q, i1 noundef zeroext false)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZN5folly6detail15reserveInTargetIiA40_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJiA40_cPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvDpRKT_(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZN5folly6detail15reserveInTargetIiA40_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !12307
  %i.s = load i8, ptr %i.b, align 1, !tbaa !11689, !alias.scope !12307
  %i.t = icmp ult i8 %i.s, 64
  br i1 %i.t, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.d, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4 ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !12307
  %i.u = load ptr, ptr %4, align 8, !tbaa !11689
  %i.v = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.w = icmp ult i8 %i.v, 64
  %i.x = select i1 %i.w, ptr %4, ptr %i.u
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #53
  invoke void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, ptr nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.x)
          to label %_ZN5folly23makeSystemErrorExplicitEiPKc.exit unwind label %bb.g

_ZN5folly23makeSystemErrorExplicitEiPKc.exit:     ; preds = %bb.e
  %i.z = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.aa = icmp ult i8 %i.z, 64
  br i1 %i.aa, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly23makeSystemErrorExplicitEiPKc.exit
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit: ; preds = %_ZN5folly23makeSystemErrorExplicitEiPKc.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.ad = icmp ult i8 %i.ac, 64
  br i1 %i.ad, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJiA40_cPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvDpRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !11928  ; 3 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !11630  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  tail call void @_ZN5folly13fbstring_coreIcE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 noundef signext 45)
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i, !prof !11923

._crit_edge.thread.i.i.i.i:                       ; preds = %bb.b
  %i.e = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !11712
  br label %bb.d

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i: ; preds = %bb.b, %.thread.i
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = sub nuw nsw i64 64, %i.h
  %i.j = mul nuw nsw i64 %i.i, 39
  %i.k = lshr i64 %i.j, 7                         ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11884
  %i.n = icmp ule i64 %i.m, %i.g
  %i.o = zext i1 %i.n to i64
  %i.p = add nuw nsw i64 %i.k, %i.o               ; 5 uses
  %i.q = icmp samesign ugt i64 %i.p, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.i2.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i ], [ %i.g, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ] ; 2 uses
  %.014.i1.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i ], [ %i.p, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ]
  %i.r = add i64 %.014.i1.i.i.i.i, -2             ; 4 uses
  %i.s = udiv i64 %.0.i2.i.i.i.i, 100             ; 2 uses
  %i.t = urem i64 %.0.i2.i.i.i.i, 100
  %i.u = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !11712
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  store i16 %i.v, ptr %i.w, align 1
  %i.x = icmp ugt i64 %i.r, 2
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !11924

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i
  %.014.i.lcssa.i.i.i.i = phi i64 [ %i.p, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i ]
  %.0.i.lcssa.i.i.i.i = phi i64 [ %i.g, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i.i
  %i.z = load i16, ptr %i.y, align 2, !tbaa !11712 ; 2 uses
  %i.aa = icmp eq i64 %.014.i.lcssa.i.i.i.i, 2
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  store i16 %i.z, ptr %i.a, align 16
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i, %._crit_edge.thread.i.i.i.i
  %i.ab = phi i16 [ %i.e, %._crit_edge.thread.i.i.i.i ], [ %i.z, %._crit_edge.i.i.i.i ]
  %.0.i.i712.i.i.i.i = phi i64 [ 1, %._crit_edge.thread.i.i.i.i ], [ %i.p, %._crit_edge.i.i.i.i ]
  %i.ac = lshr i16 %i.ab, 8
  %i.ad = trunc nuw i16 %i.ac to i8
  store i8 %i.ad, ptr %i.a, align 16, !tbaa !11689
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit

_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i711.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ %.0.i.i712.i.i.i.i, %bb.d ]
  %i.ae = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, i64 noundef %.0.i.i711.i.i.i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.af = call noundef i64 @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE12traitsLengthEPKc(ptr noundef nonnull align 1 dereferenceable(40) %1)
  %i.ag = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 1 dereferenceable(40) %1, i64 noundef %i.af) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly17AsyncServerSocket12getAddressesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.398") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(408) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %3 = alloca %"class.std::allocator.400", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11693 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11693 ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.critedge, !prof !11770

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str.30, i32 noundef 675)
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.69, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #49
  unreachable

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #49
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.b to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 200
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZNSt6vectorIN5folly13SocketAddressESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !11693 ; 2 uses
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !11693 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge
  %i.p = load ptr, ptr %0, align 8, !tbaa !12310
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %.critedge
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.sroa.018.021 = phi ptr [ %i.r, %bb.e ], [ %i.p, %.lr.ph.preheader ] ; 2 uses
  %.sroa.015.020 = phi ptr [ %i.s, %bb.e ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.015.020, i64 176
  %.sroa.0.0.copyload = load i32, ptr %i.q, align 8, !tbaa !11630
  invoke void @_ZN5folly13SocketAddress19setFromLocalAddressENS_13NetworkSocketE(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.018.021, i32 %.sroa.0.0.copyload)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.018.021, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.015.020, i64 200 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.n
  br i1 %i.t, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5folly13SocketAddressESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #40
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5folly13SocketAddressESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.folly::SocketAddress::IPAddr", align 4 ; 5 uses
  %i.a = icmp ugt i64 %1, 230584300921369395
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIN5folly13SocketAddressESaIS1_EE17_S_check_init_lenEmRKS2_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #52
  unreachable

_ZNSt6vectorIN5folly13SocketAddressESaIS1_EE17_S_check_init_lenEmRKS2_.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN5folly13SocketAddressESaIS1_EEC2EmRKS2_.exit.thread, label %.lr.ph.i.i.i.i

_ZNSt12_Vector_baseIN5folly13SocketAddressESaIS1_EEC2EmRKS2_.exit.thread: ; preds = %_ZNSt6vectorIN5folly13SocketAddressESaIS1_EE17_S_check_init_lenEmRKS2_.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN5folly13SocketAddressESaIS1_EE17_S_check_init_lenEmRKS2_.exit
  %i.c = mul nuw nsw i64 %1, 40
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #54 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !12312
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !12314
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !12315
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.k, %bb.d ] ; 5 uses
  %.01013.i.i.i.i = phi i64 [ %1, %.lr.ph.i.i.i.i ], [ %i.j, %bb.d ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.014.i.i.i.i, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZN5folly9IPAddressC1Ev(ptr noundef nonnull align 4 dereferenceable(26) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 0, ptr %i.h, align 4, !tbaa !11709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.014.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !11711
  %i.i = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  store i8 0, ptr %i.i, align 8, !tbaa !11713
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  %i.j = add nsw i64 %.01013.i.i.i.i, -1          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.c, !llvm.loop !12316

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #40 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5folly13SocketAddressEEvT_S3_(ptr noundef nonnull %i.d, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #52
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #49
end_hunk_2
begin_hunk_3_@_ZN5folly32EventBaseAtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEENS2_14RemoteAcceptor8ConsumerEEC2EOS7_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.ah

bb.n:                                             ; preds = %bb.d
  invoke void @_ZN5folly16throwSystemErrorIJRiRA53_KcEEEvDpOT_(ptr noundef nonnull align 4 dereferenceable(4) %i.s, ptr noundef nonnull align 1 dereferenceable(53) @.str.75) #52
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %.pr = load i32, ptr %i.d, align 16, !tbaa !11906
  %i.ae = icmp eq i32 %.pr, -1
  br i1 %i.ae, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.af = call i32 @pipe(ptr noundef nonnull %i.e) #40
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN5folly16throwSystemErrorIJRiRA50_KcEEEvDpOT_(ptr noundef nonnull align 4 dereferenceable(4) %i.s, ptr noundef nonnull align 1 dereferenceable(50) @.str.76) #52
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.v:                                             ; preds = %bb.r
  %i.ah = load i32, ptr %i.e, align 4, !tbaa !11630
  %i.ai = invoke i32 (i32, i32, ...) @fcntl(i32 noundef %i.ah, i32 noundef 4, i32 noundef 2048)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  %.not15 = icmp eq i32 %i.ai, 0
  br i1 %.not15, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN5folly16throwSystemErrorIJRiRA80_KcEEEvDpOT_(ptr noundef nonnull align 4 dereferenceable(4) %i.s, ptr noundef nonnull align 1 dereferenceable(80) @.str.77) #52
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.ae, %bb.ac, %bb.x, %bb.v
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  %i.al = call ptr @__cxa_begin_catch(ptr %i.ak) #40 ; 0 uses
  %i.am = load i32, ptr %i.e, align 4, !tbaa !11630
  %i.an = invoke i32 @close(i32 noundef %i.am)
          to label %bb.aa unwind label %bb.ag     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !11630
  %i.ap = invoke i32 @close(i32 noundef %i.ao)
          to label %bb.ab unwind label %bb.ag     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_rethrow() #52
          to label %bb.al unwind label %bb.ag

bb.ac:                                            ; preds = %bb.w
  %i.aq = load i32, ptr %i.f, align 8, !tbaa !11630
  %i.ar = invoke i32 (i32, i32, ...) @fcntl(i32 noundef %i.aq, i32 noundef 4, i32 noundef 2049)
          to label %bb.ad unwind label %bb.z

bb.ad:                                            ; preds = %bb.ac
  %.not16 = icmp eq i32 %i.ar, 0
  br i1 %.not16, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5folly16throwSystemErrorIJRiRA81_KcEEEvDpOT_(ptr noundef nonnull align 4 dereferenceable(4) %i.s, ptr noundef nonnull align 1 dereferenceable(81) @.str.78) #52
          to label %bb.af unwind label %bb.z

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ah unwind label %bb.ak

.thread:                                          ; preds = %bb.c, %bb.ad, %bb.q
  ret void

bb.ah:                                            ; preds = %bb.m, %bb.p, %bb.ag, %bb.u
  %.pn17 = phi { ptr, i32 } [ %i.ag, %bb.u ], [ %i.as, %bb.ag ], [ %.pn, %bb.m ], [ %i.ad, %bb.p ]
  call void @_ZN5folly23AtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEEED2Ev(ptr noundef nonnull align 64 dead_on_return(156) dereferenceable(156) %i.j) #40
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.j
  %.pn17.pn = phi { ptr, i32 } [ %.pn17, %bb.ah ], [ %i.aa, %bb.j ]
  call void @_ZN5folly12EventHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.c) #40
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.i
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.ai ], [ %i.z, %bb.i ]
  call void @_ZN5folly9EventBase12LoopCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #40
  resume { ptr, i32 } %.pn17.pn.pn

bb.ak:                                            ; preds = %bb.ag
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #49
  unreachable

bb.al:                                            ; preds = %bb.ab
  unreachable
}

; Function Attrs: nounwind
declare i32 @eventfd(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly16throwSystemErrorIJRiRA50_KcEEEvDpOT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(50) %1) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__errno_location() #53
  %i.b = load i32, ptr %i.a, align 4, !tbaa !11630
  tail call void @_ZN5folly24throwSystemErrorExplicitIJRiRA50_KcEEEviDpOT_(i32 noundef %i.b, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(50) %1) #52
  unreachable
}

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #11

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly16throwSystemErrorIJRiRA80_KcEEEvDpOT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(80) %1) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__errno_location() #53
  %i.b = load i32, ptr %i.a, align 4, !tbaa !11630
  tail call void @_ZN5folly24throwSystemErrorExplicitIJRiRA80_KcEEEviDpOT_(i32 noundef %i.b, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(80) %1) #52
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly16throwSystemErrorIJRiRA81_KcEEEvDpOT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(81) %1) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__errno_location() #53
  %i.b = load i32, ptr %i.a, align 4, !tbaa !11630
  tail call void @_ZN5folly24throwSystemErrorExplicitIJRiRA81_KcEEEviDpOT_(i32 noundef %i.b, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(81) %1) #52
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly24throwSystemErrorExplicitIJRiRA50_KcEEEviDpOT_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(50) %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::system_error", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN5folly23makeSystemErrorExplicitIJRiRA50_KcEEESt12system_erroriDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::system_error") align 8 %3, i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(50) %2)
  invoke void @_ZN5folly15throw_exceptionISt12system_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly23makeSystemErrorExplicitIJRiRA50_KcEEESt12system_erroriDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::system_error") align 8 %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(50) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.folly::basic_fbstring", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12325)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 23 ; 5 uses
  store i8 23, ptr %i.b, align 1, !tbaa !11689, !alias.scope !12325
  store i8 0, ptr %4, align 8, !tbaa !11689, !alias.scope !12325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !12325
  store ptr %4, ptr %i.a, align 8, !tbaa !11928, !noalias !12325
  %i.c = load i32, ptr %2, align 4, !tbaa !11630, !noalias !12325 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5folly6detail15reserveInTargetIiA50_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i, label %bb.b, !prof !11770

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = sub nuw nsw i64 64, %i.f
  %i.h = mul nuw nsw i64 %i.g, 39
  %i.i = lshr i64 %i.h, 7                         ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11884, !noalias !12325
  %i.l = icmp ule i64 %i.k, %i.e
  %i.m = zext i1 %i.l to i64
  %i.n = add nuw nsw i64 %i.i, %i.m
  br label %_ZN5folly6detail15reserveInTargetIiA50_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i

_ZN5folly6detail15reserveInTargetIiA50_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.b ], [ 1, %bb.a ]
  %.lobit.i.i.i.i.i = lshr i32 %i.c, 31
  %i.o = or disjoint i32 %.lobit.i.i.i.i.i, 50
  %i.p = zext nneg i32 %i.o to i64
  %i.q = add nuw nsw i64 %.0.i.i.i.i.i.i.i.i, %i.p
  invoke void @_ZN5folly13fbstring_coreIcE7reserveEmb(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.q, i1 noundef zeroext false)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZN5folly6detail15reserveInTargetIiA50_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJiA50_cPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvDpRKT_(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(50) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZN5folly6detail15reserveInTargetIiA50_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !12325
  %i.s = load i8, ptr %i.b, align 1, !tbaa !11689, !alias.scope !12325
  %i.t = icmp ult i8 %i.s, 64
  br i1 %i.t, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.d, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4 ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !12325
  %i.u = load ptr, ptr %4, align 8, !tbaa !11689
  %i.v = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.w = icmp ult i8 %i.v, 64
  %i.x = select i1 %i.w, ptr %4, ptr %i.u
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #53
  invoke void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, ptr nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.x)
          to label %_ZN5folly23makeSystemErrorExplicitEiPKc.exit unwind label %bb.g

_ZN5folly23makeSystemErrorExplicitEiPKc.exit:     ; preds = %bb.e
  %i.z = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.aa = icmp ult i8 %i.z, 64
  br i1 %i.aa, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly23makeSystemErrorExplicitEiPKc.exit
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit: ; preds = %_ZN5folly23makeSystemErrorExplicitEiPKc.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.ad = icmp ult i8 %i.ac, 64
  br i1 %i.ad, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJiA50_cPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvDpRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(50) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !11928  ; 3 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !11630  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  tail call void @_ZN5folly13fbstring_coreIcE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 noundef signext 45)
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i, !prof !11923

._crit_edge.thread.i.i.i.i:                       ; preds = %bb.b
  %i.e = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !11712
  br label %bb.d

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i: ; preds = %bb.b, %.thread.i
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = sub nuw nsw i64 64, %i.h
  %i.j = mul nuw nsw i64 %i.i, 39
  %i.k = lshr i64 %i.j, 7                         ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11884
  %i.n = icmp ule i64 %i.m, %i.g
  %i.o = zext i1 %i.n to i64
  %i.p = add nuw nsw i64 %i.k, %i.o               ; 5 uses
  %i.q = icmp samesign ugt i64 %i.p, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.i2.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i ], [ %i.g, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ] ; 2 uses
  %.014.i1.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i ], [ %i.p, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ]
  %i.r = add i64 %.014.i1.i.i.i.i, -2             ; 4 uses
  %i.s = udiv i64 %.0.i2.i.i.i.i, 100             ; 2 uses
  %i.t = urem i64 %.0.i2.i.i.i.i, 100
  %i.u = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !11712
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  store i16 %i.v, ptr %i.w, align 1
  %i.x = icmp ugt i64 %i.r, 2
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !11924

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i
  %.014.i.lcssa.i.i.i.i = phi i64 [ %i.p, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i ]
  %.0.i.lcssa.i.i.i.i = phi i64 [ %i.g, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i.i
  %i.z = load i16, ptr %i.y, align 2, !tbaa !11712 ; 2 uses
  %i.aa = icmp eq i64 %.014.i.lcssa.i.i.i.i, 2
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  store i16 %i.z, ptr %i.a, align 16
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i, %._crit_edge.thread.i.i.i.i
  %i.ab = phi i16 [ %i.e, %._crit_edge.thread.i.i.i.i ], [ %i.z, %._crit_edge.i.i.i.i ]
  %.0.i.i712.i.i.i.i = phi i64 [ 1, %._crit_edge.thread.i.i.i.i ], [ %i.p, %._crit_edge.i.i.i.i ]
  %i.ac = lshr i16 %i.ab, 8
  %i.ad = trunc nuw i16 %i.ac to i8
  store i8 %i.ad, ptr %i.a, align 16, !tbaa !11689
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit

_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i711.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ %.0.i.i712.i.i.i.i, %bb.d ]
  %i.ae = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, i64 noundef %.0.i.i711.i.i.i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.af = call noundef i64 @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE12traitsLengthEPKc(ptr noundef nonnull align 1 dereferenceable(50) %1)
  %i.ag = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 1 dereferenceable(50) %1, i64 noundef %i.af) ; 0 uses
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly24throwSystemErrorExplicitIJRiRA80_KcEEEviDpOT_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(80) %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::system_error", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN5folly23makeSystemErrorExplicitIJRiRA80_KcEEESt12system_erroriDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::system_error") align 8 %3, i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(80) %2)
  invoke void @_ZN5folly15throw_exceptionISt12system_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly23makeSystemErrorExplicitIJRiRA80_KcEEESt12system_erroriDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::system_error") align 8 %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(80) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.folly::basic_fbstring", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12328)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 23 ; 5 uses
  store i8 23, ptr %i.b, align 1, !tbaa !11689, !alias.scope !12328
  store i8 0, ptr %4, align 8, !tbaa !11689, !alias.scope !12328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !12328
  store ptr %4, ptr %i.a, align 8, !tbaa !11928, !noalias !12328
  %i.c = load i32, ptr %2, align 4, !tbaa !11630, !noalias !12328 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5folly6detail15reserveInTargetIiA80_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i, label %bb.b, !prof !11770

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = sub nuw nsw i64 64, %i.f
  %i.h = mul nuw nsw i64 %i.g, 39
  %i.i = lshr i64 %i.h, 7                         ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11884, !noalias !12328
  %i.l = icmp ule i64 %i.k, %i.e
  %i.m = zext i1 %i.l to i64
  %i.n = add nuw nsw i64 %i.i, %i.m
  br label %_ZN5folly6detail15reserveInTargetIiA80_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i

_ZN5folly6detail15reserveInTargetIiA80_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.b ], [ 1, %bb.a ]
  %.lobit.i.i.i.i.i = lshr i32 %i.c, 31
  %i.o = or disjoint i32 %.lobit.i.i.i.i.i, 80
  %i.p = zext nneg i32 %i.o to i64
  %i.q = add nuw nsw i64 %.0.i.i.i.i.i.i.i.i, %i.p
  invoke void @_ZN5folly13fbstring_coreIcE7reserveEmb(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.q, i1 noundef zeroext false)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZN5folly6detail15reserveInTargetIiA80_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJiA80_cPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvDpRKT_(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZN5folly6detail15reserveInTargetIiA80_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !12328
  %i.s = load i8, ptr %i.b, align 1, !tbaa !11689, !alias.scope !12328
  %i.t = icmp ult i8 %i.s, 64
  br i1 %i.t, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.d, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4 ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !12328
  %i.u = load ptr, ptr %4, align 8, !tbaa !11689
  %i.v = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.w = icmp ult i8 %i.v, 64
  %i.x = select i1 %i.w, ptr %4, ptr %i.u
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #53
  invoke void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, ptr nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.x)
          to label %_ZN5folly23makeSystemErrorExplicitEiPKc.exit unwind label %bb.g

_ZN5folly23makeSystemErrorExplicitEiPKc.exit:     ; preds = %bb.e
  %i.z = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.aa = icmp ult i8 %i.z, 64
  br i1 %i.aa, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly23makeSystemErrorExplicitEiPKc.exit
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit: ; preds = %_ZN5folly23makeSystemErrorExplicitEiPKc.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.ad = icmp ult i8 %i.ac, 64
  br i1 %i.ad, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJiA80_cPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvDpRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !11928  ; 3 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !11630  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  tail call void @_ZN5folly13fbstring_coreIcE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 noundef signext 45)
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i, !prof !11923

._crit_edge.thread.i.i.i.i:                       ; preds = %bb.b
  %i.e = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !11712
  br label %bb.d

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i: ; preds = %bb.b, %.thread.i
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = sub nuw nsw i64 64, %i.h
  %i.j = mul nuw nsw i64 %i.i, 39
  %i.k = lshr i64 %i.j, 7                         ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11884
  %i.n = icmp ule i64 %i.m, %i.g
  %i.o = zext i1 %i.n to i64
  %i.p = add nuw nsw i64 %i.k, %i.o               ; 5 uses
  %i.q = icmp samesign ugt i64 %i.p, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.i2.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i ], [ %i.g, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ] ; 2 uses
  %.014.i1.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i ], [ %i.p, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ]
  %i.r = add i64 %.014.i1.i.i.i.i, -2             ; 4 uses
  %i.s = udiv i64 %.0.i2.i.i.i.i, 100             ; 2 uses
  %i.t = urem i64 %.0.i2.i.i.i.i, 100
  %i.u = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !11712
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  store i16 %i.v, ptr %i.w, align 1
  %i.x = icmp ugt i64 %i.r, 2
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !11924

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i
  %.014.i.lcssa.i.i.i.i = phi i64 [ %i.p, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i ]
  %.0.i.lcssa.i.i.i.i = phi i64 [ %i.g, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i.i
  %i.z = load i16, ptr %i.y, align 2, !tbaa !11712 ; 2 uses
  %i.aa = icmp eq i64 %.014.i.lcssa.i.i.i.i, 2
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  store i16 %i.z, ptr %i.a, align 16
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i, %._crit_edge.thread.i.i.i.i
  %i.ab = phi i16 [ %i.e, %._crit_edge.thread.i.i.i.i ], [ %i.z, %._crit_edge.i.i.i.i ]
  %.0.i.i712.i.i.i.i = phi i64 [ 1, %._crit_edge.thread.i.i.i.i ], [ %i.p, %._crit_edge.i.i.i.i ]
  %i.ac = lshr i16 %i.ab, 8
  %i.ad = trunc nuw i16 %i.ac to i8
  store i8 %i.ad, ptr %i.a, align 16, !tbaa !11689
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit

_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i711.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ %.0.i.i712.i.i.i.i, %bb.d ]
  %i.ae = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, i64 noundef %.0.i.i711.i.i.i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.af = call noundef i64 @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE12traitsLengthEPKc(ptr noundef nonnull align 1 dereferenceable(80) %1)
  %i.ag = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 1 dereferenceable(80) %1, i64 noundef %i.af) ; 0 uses
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly24throwSystemErrorExplicitIJRiRA81_KcEEEviDpOT_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(81) %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::system_error", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN5folly23makeSystemErrorExplicitIJRiRA81_KcEEESt12system_erroriDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::system_error") align 8 %3, i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(81) %2)
  invoke void @_ZN5folly15throw_exceptionISt12system_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly23makeSystemErrorExplicitIJRiRA81_KcEEESt12system_erroriDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::system_error") align 8 %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(81) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.folly::basic_fbstring", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12331)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 23 ; 5 uses
  store i8 23, ptr %i.b, align 1, !tbaa !11689, !alias.scope !12331
  store i8 0, ptr %4, align 8, !tbaa !11689, !alias.scope !12331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !12331
  store ptr %4, ptr %i.a, align 8, !tbaa !11928, !noalias !12331
  %i.c = load i32, ptr %2, align 4, !tbaa !11630, !noalias !12331 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5folly6detail15reserveInTargetIiA81_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i, label %bb.b, !prof !11770

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = sub nuw nsw i64 64, %i.f
  %i.h = mul nuw nsw i64 %i.g, 39
  %i.i = lshr i64 %i.h, 7                         ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11884, !noalias !12331
  %i.l = icmp ule i64 %i.k, %i.e
  %i.m = zext i1 %i.l to i64
  %i.n = add nuw nsw i64 %i.i, %i.m
  br label %_ZN5folly6detail15reserveInTargetIiA81_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i

_ZN5folly6detail15reserveInTargetIiA81_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.b ], [ 1, %bb.a ]
  %.lobit.i.i.i.i.i = lshr i32 %i.c, 31
  %narrow.i.i.i = add nuw nsw i32 %.lobit.i.i.i.i.i, 81
  %i.o = zext nneg i32 %narrow.i.i.i to i64
  %i.p = add nuw nsw i64 %.0.i.i.i.i.i.i.i.i, %i.o
  invoke void @_ZN5folly13fbstring_coreIcE7reserveEmb(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.p, i1 noundef zeroext false)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZN5folly6detail15reserveInTargetIiA81_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJiA81_cPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvDpRKT_(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(81) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZN5folly6detail15reserveInTargetIiA81_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !12331
  %i.r = load i8, ptr %i.b, align 1, !tbaa !11689, !alias.scope !12331
  %i.s = icmp ult i8 %i.r, 64
  br i1 %i.s, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.d, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4 ], [ %i.q, %bb.d ], [ %i.q, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !12331
  %i.t = load ptr, ptr %4, align 8, !tbaa !11689
  %i.u = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.v = icmp ult i8 %i.u, 64
  %i.w = select i1 %i.v, ptr %4, ptr %i.t
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #53
  invoke void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, ptr nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.w)
          to label %_ZN5folly23makeSystemErrorExplicitEiPKc.exit unwind label %bb.g

_ZN5folly23makeSystemErrorExplicitEiPKc.exit:     ; preds = %bb.e
  %i.y = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.z = icmp ult i8 %i.y, 64
  br i1 %i.z, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly23makeSystemErrorExplicitEiPKc.exit
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit: ; preds = %_ZN5folly23makeSystemErrorExplicitEiPKc.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void

bb.g:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.ac = icmp ult i8 %i.ab, 64
  br i1 %i.ac, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJiA81_cPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvDpRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !11928  ; 3 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !11630  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  tail call void @_ZN5folly13fbstring_coreIcE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 noundef signext 45)
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i, !prof !11923

._crit_edge.thread.i.i.i.i:                       ; preds = %bb.b
  %i.e = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !11712
  br label %bb.d

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i: ; preds = %bb.b, %.thread.i
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = sub nuw nsw i64 64, %i.h
  %i.j = mul nuw nsw i64 %i.i, 39
  %i.k = lshr i64 %i.j, 7                         ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11884
  %i.n = icmp ule i64 %i.m, %i.g
  %i.o = zext i1 %i.n to i64
  %i.p = add nuw nsw i64 %i.k, %i.o               ; 5 uses
  %i.q = icmp samesign ugt i64 %i.p, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.i2.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i ], [ %i.g, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ] ; 2 uses
  %.014.i1.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i ], [ %i.p, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ]
  %i.r = add i64 %.014.i1.i.i.i.i, -2             ; 4 uses
  %i.s = udiv i64 %.0.i2.i.i.i.i, 100             ; 2 uses
  %i.t = urem i64 %.0.i2.i.i.i.i, 100
  %i.u = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !11712
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  store i16 %i.v, ptr %i.w, align 1
  %i.x = icmp ugt i64 %i.r, 2
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !11924

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i
  %.014.i.lcssa.i.i.i.i = phi i64 [ %i.p, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i ]
  %.0.i.lcssa.i.i.i.i = phi i64 [ %i.g, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i.i
  %i.z = load i16, ptr %i.y, align 2, !tbaa !11712 ; 2 uses
  %i.aa = icmp eq i64 %.014.i.lcssa.i.i.i.i, 2
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  store i16 %i.z, ptr %i.a, align 16
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i, %._crit_edge.thread.i.i.i.i
  %i.ab = phi i16 [ %i.e, %._crit_edge.thread.i.i.i.i ], [ %i.z, %._crit_edge.i.i.i.i ]
  %.0.i.i712.i.i.i.i = phi i64 [ 1, %._crit_edge.thread.i.i.i.i ], [ %i.p, %._crit_edge.i.i.i.i ]
  %i.ac = lshr i16 %i.ab, 8
  %i.ad = trunc nuw i16 %i.ac to i8
  store i8 %i.ad, ptr %i.a, align 16, !tbaa !11689
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit

_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i711.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ %.0.i.i712.i.i.i.i, %bb.d ]
  %i.ae = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, i64 noundef %.0.i.i711.i.i.i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.af = call noundef i64 @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE12traitsLengthEPKc(ptr noundef nonnull align 1 dereferenceable(81) %1)
  %i.ag = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 1 dereferenceable(81) %1, i64 noundef %i.af) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !11872
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11807 ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = load i32, ptr %1, align 4, !tbaa !11630  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !11630
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !11630
  %i.k = icmp eq i32 %i.e, %i.j
  br i1 %i.k, label %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit, label %.lr.ph, !llvm.loop !12334

.lr.ph:                                           ; preds = %.preheader.i, %bb.c
  %.016.i35 = phi ptr [ %i.l, %bb.c ], [ %i.d, %.preheader.i ] ; 2 uses
  %i.l = load ptr, ptr %.016.i35, align 8, !tbaa !11807 ; 4 uses
  %.not14.i = icmp eq ptr %i.l, null
  br i1 %.not14.i, label %.critedge, label %bb.c, !llvm.loop !12334

_ZNSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit: ; preds = %bb.c, %.preheader.i
  %i.m = phi ptr [ %i.d, %.preheader.i ], [ %i.l, %bb.c ]
  %.01115.i.lcssa = phi ptr [ %i.c, %.preheader.i ], [ %.016.i35, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11804 ; 2 uses
  %i.p = zext i32 %i.e to i64
  %i.q = urem i64 %i.p, %i.o                      ; 2 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !11805 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.q
  %.pre40 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !11806
  br label %_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit

bb.d:                                             ; preds = %bb.a
  %i.r = load i32, ptr %1, align 4, !tbaa !11630  ; 3 uses
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11804 ; 4 uses
  %i.v = urem i64 %i.s, %i.u                      ; 5 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !11805  ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11806 ; 7 uses
  %.not.i24 = icmp eq ptr %i.y, null
  br i1 %.not.i24, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !11807 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !11630
  %i.ac = icmp eq i32 %i.r, %i.ab
  br i1 %i.ac, label %_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread, label %.lr.ph.i

_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v ; 2 uses
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !11807 ; 2 uses
  %.not18.i2656 = icmp eq ptr %i.ae, null
  br i1 %.not18.i2656, label %._crit_edge.i.i, label %bb.i

bb.f:                                             ; preds = %bb.g
  %i.af = icmp eq i32 %i.r, %i.ai
  br i1 %i.af, label %_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit, label %.lr.ph.i, !llvm.loop !11808

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.020.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %i.ag = load ptr, ptr %.020.i, align 8, !tbaa !11807 ; 4 uses
  %.not18.i = icmp eq ptr %i.ag, null
  br i1 %.not18.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !11630 ; 2 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = urem i64 %i.aj, %i.u
  %.not19.i = icmp eq i64 %i.ak, %i.v
  br i1 %.not19.i, label %bb.f, label %..loopexit_crit_edge21.i, !llvm.loop !11808

..loopexit_crit_edge21.i:                         ; preds = %bb.g
  br label %.critedge, !llvm.loop !11808

_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit: ; preds = %bb.f, %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit
  %i.al = phi i64 [ %i.o, %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.u, %bb.f ] ; 2 uses
  %i.am = phi ptr [ %.pre40, %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.y, %bb.f ] ; 3 uses
  %i.an = phi ptr [ %.pre, %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.w, %bb.f ] ; 3 uses
  %.120 = phi ptr [ %i.m, %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.ag, %bb.f ] ; 6 uses
  %.018 = phi i64 [ %i.q, %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.v, %bb.f ] ; 3 uses
  %.016 = phi ptr [ %.01115.i.lcssa, %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %.020.i, %bb.f ] ; 7 uses
  %i.ao = icmp eq ptr %.016, %i.am
  %i.ap = load ptr, ptr %.120, align 8, !tbaa !11807 ; 3 uses
  %.not18.i26 = icmp eq ptr %i.ap, null           ; 2 uses
  br i1 %i.ao, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.018 ; 2 uses
  br i1 %.not18.i26, label %._crit_edge.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread, %bb.h
  %i.ar = phi i64 [ %i.u, %_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.al, %bb.h ]
  %i.as = phi ptr [ %i.y, %_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.am, %bb.h ] ; 2 uses
  %i.at = phi ptr [ %i.w, %_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.an, %bb.h ]
  %.1205870 = phi ptr [ %i.z, %_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.120, %bb.h ] ; 2 uses
  %.0185969 = phi i64 [ %i.v, %_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.018, %bb.h ]
  %.0166167 = phi ptr [ %i.y, %_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.016, %bb.h ] ; 2 uses
  %i.au = phi ptr [ %i.ad, %_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.aq, %bb.h ]
  %i.av = phi ptr [ %i.ae, %_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.ap, %bb.h ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !11630
  %i.ay = zext i32 %i.ax to i64
  %i.az = urem i64 %i.ay, %i.ar                   ; 2 uses
  %.not9.i.i = icmp eq i64 %i.az, %.0185969
  br i1 %.not9.i.i, label %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.az
  store ptr %i.as, ptr %i.ba, align 8, !tbaa !11806
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread, %bb.j, %bb.h
  %i.bb = phi ptr [ %i.y, %_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.as, %bb.j ], [ %i.am, %bb.h ]
  %.1205871 = phi ptr [ %i.z, %_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.1205870, %bb.j ], [ %.120, %bb.h ]
  %.0166168 = phi ptr [ %i.y, %_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %.0166167, %bb.j ], [ %.016, %bb.h ]
  %i.bc = phi ptr [ %i.ad, %_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.au, %bb.j ], [ %i.aq, %bb.h ]
  %i.bd = phi ptr [ null, %_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit.thread ], [ %i.av, %bb.j ], [ null, %bb.h ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.bb
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !12087
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  store ptr null, ptr %i.bc, align 8, !tbaa !11806
  br label %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit.i

bb.m:                                             ; preds = %_ZNKSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeEmRS1_m.exit
  br i1 %.not18.i26, label %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_3
begin_hunk_4_@_ZN5folly17AsyncServerSocket20removeAcceptCallbackEPNS0_14AcceptCallbackEPNS_9EventBaseE:bb.a
_ZNSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit.i.i.i.i: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.v
  %i.cv = load ptr, ptr %.sroa.044.072, align 8, !tbaa !11807 ; 2 uses
  store ptr %i.cv, ptr %.0.i.i.i.i, align 8, !tbaa !11807
  %i.cw = load ptr, ptr %i.aw, align 8, !tbaa !11794 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt13unordered_mapIjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS3_EESt4hashIjESt8equal_toIjESaISt4pairIKjS5_EEE5eraseENSt8__detail14_Node_iteratorISC_Lb0ELb0EEE.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.044.072, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !11777
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #51
  br label %_ZNSt13unordered_mapIjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS3_EESt4hashIjESt8equal_toIjESaISt4pairIKjS5_EEE5eraseENSt8__detail14_Node_iteratorISC_Lb0ELb0EEE.exit

_ZNSt13unordered_mapIjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS3_EESt4hashIjESt8equal_toIjESaISt4pairIKjS5_EEE5eraseENSt8__detail14_Node_iteratorISC_Lb0ELb0EEE.exit: ; preds = %_ZNSt10_HashtableIjSt4pairIKjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS5_EEESaIS8_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit.i.i.i.i, %bb.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.044.072, i64 noundef 40) #51
  %i.dc = load i64, ptr %i.ac, align 8, !tbaa !11872
  %i.dd = add i64 %i.dc, -1
  store i64 %i.dd, ptr %i.ac, align 8, !tbaa !11872
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge71
  %i.de = load ptr, ptr %.sroa.044.072, align 8, !tbaa !11807
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNSt13unordered_mapIjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS3_EESt4hashIjESt8equal_toIjESaISt4pairIKjS5_EEE5eraseENSt8__detail14_Node_iteratorISC_Lb0ELb0EEE.exit
  %.sroa.044.1 = phi ptr [ %i.cv, %_ZNSt13unordered_mapIjSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS3_EESt4hashIjESt8equal_toIjESaISt4pairIKjS5_EEE5eraseENSt8__detail14_Node_iteratorISC_Lb0ELb0EEE.exit ], [ %i.de, %bb.ad ] ; 2 uses
  %i.df = icmp eq ptr %.sroa.044.1, null
  br i1 %i.df, label %._crit_edge75.loopexit, label %bb.k, !llvm.loop !12341

bb.af:                                            ; preds = %_ZNSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit
  %i.dg = add i32 %i.at, -1
  br label %.sink.split

bb.ag:                                            ; preds = %_ZNSt6vectorIN5folly17AsyncServerSocket12CallbackInfoESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit
  %i.dh = zext i32 %i.at to i64
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !11794
  %i.dj = ptrtoint ptr %i.ar to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = sdiv exact i64 %i.dl, 24
  %.not29 = icmp ugt i64 %i.dm, %i.dh
  br i1 %.not29, label %bb.ah, label %.sink.split

.sink.split:                                      ; preds = %bb.ag, %bb.af
  %.sink = phi i32 [ %i.dg, %bb.af ], [ 0, %bb.ag ]
  store i32 %.sink, ptr %i.as, align 8, !tbaa !12063
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %bb.ag
  %.not30 = icmp eq ptr %.sroa.5.0.copyload, null
  br i1 %.not30, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr %.sroa.06.0.copyload, ptr %3, align 16, !tbaa !11786
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !11788
  store ptr @"_ZN5folly6detail8function5call_IZNS_17AsyncServerSocket14RemoteAcceptor4stopEPNS_9EventBaseEPNS3_14AcceptCallbackEE3$_0Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE", ptr %i.dn, align 16, !tbaa !11867
  store ptr @_ZN5folly6detail8function20DispatchSmallTrivial5exec_ILm16EEEmNS1_2OpEPNS1_4DataES6_, ptr %i.do, align 8, !tbaa !11869
  call void @_ZN5folly9EventBase20runInEventBaseThreadENS_8FunctionIFvvEEE(ptr noundef nonnull align 16 dereferenceable(632) %.sroa.4.0.copyload, ptr noundef nonnull align 16 %3) #40
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !11869 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i, label %_ZN5folly17AsyncServerSocket14RemoteAcceptor4stopEPNS_9EventBaseEPNS0_14AcceptCallbackE.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dq = call noundef i64 %i.dp(i32 noundef 1, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef null) #40, !inline_history !12236 ; 0 uses
  br label %_ZN5folly17AsyncServerSocket14RemoteAcceptor4stopEPNS_9EventBaseEPNS0_14AcceptCallbackE.exit

_ZN5folly17AsyncServerSocket14RemoteAcceptor4stopEPNS_9EventBaseEPNS0_14AcceptCallbackE.exit: ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  %i.dr = load ptr, ptr %1, align 8, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 48
  %i.dt = load ptr, ptr %i.ds, align 8
  tail call void %i.dt(ptr noundef nonnull align 8 dereferenceable(8) %1) #40, !call_target !11610
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN5folly17AsyncServerSocket14RemoteAcceptor4stopEPNS_9EventBaseEPNS0_14AcceptCallbackE.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dv = load i8, ptr %i.du, align 8, !tbaa !11775, !range !11614, !noundef !147
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !11871
  %i.dy = load ptr, ptr %i.c, align 8, !tbaa !11871
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !11693 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !11693 ; 2 uses
  %i.ee = icmp eq ptr %i.eb, %i.ed
  br i1 %i.ee, label %.loopexit, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.an, %.lr.ph78
  %.sroa.032.076 = phi ptr [ %i.ef, %.lr.ph78 ], [ %i.eb, %bb.an ] ; 2 uses
  call void @_ZN5folly12EventHandler17unregisterHandlerEv(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.032.076)
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.032.076, i64 200 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.ed
  br i1 %i.eg, label %.loopexit, label %.lr.ph78

.loopexit:                                        ; preds = %.lr.ph78, %bb.an, %bb.am, %bb.al
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17AsyncServerSocket14pauseAcceptingEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) initializes((80, 81)) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.a, align 8, !tbaa !11775
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11693 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11693 ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12234 ; 2 uses
  %.not5 = icmp eq ptr %i.h, null
  br i1 %.not5, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.06.09 = phi ptr [ %i.i, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  tail call void @_ZN5folly12EventHandler17unregisterHandlerEv(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.06.09)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.09, i64 200 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.e
  br i1 %i.j, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZN5folly12AsyncTimeout13cancelTimeoutEv(ptr noundef nonnull align 8 dereferenceable(184) %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

declare void @_ZN5folly12AsyncTimeout13cancelTimeoutEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #11

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly16throwSystemErrorIJRiRA35_KcEEEvDpOT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(35) %1) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__errno_location() #53
  %i.b = load i32, ptr %i.a, align 4, !tbaa !11630
  tail call void @_ZN5folly24throwSystemErrorExplicitIJRiRA35_KcEEEviDpOT_(i32 noundef %i.b, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(35) %1) #52
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly24throwSystemErrorExplicitIJRiRA35_KcEEEviDpOT_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(35) %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::system_error", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN5folly23makeSystemErrorExplicitIJRiRA35_KcEEESt12system_erroriDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::system_error") align 8 %3, i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(35) %2)
  invoke void @_ZN5folly15throw_exceptionISt12system_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly23makeSystemErrorExplicitIJRiRA35_KcEEESt12system_erroriDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::system_error") align 8 %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(35) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.folly::basic_fbstring", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12342)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 23 ; 5 uses
  store i8 23, ptr %i.b, align 1, !tbaa !11689, !alias.scope !12342
  store i8 0, ptr %4, align 8, !tbaa !11689, !alias.scope !12342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !12342
  store ptr %4, ptr %i.a, align 8, !tbaa !11928, !noalias !12342
  %i.c = load i32, ptr %2, align 4, !tbaa !11630, !noalias !12342 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5folly6detail15reserveInTargetIiA35_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i, label %bb.b, !prof !11770

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = sub nuw nsw i64 64, %i.f
  %i.h = mul nuw nsw i64 %i.g, 39
  %i.i = lshr i64 %i.h, 7                         ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11884, !noalias !12342
  %i.l = icmp ule i64 %i.k, %i.e
  %i.m = zext i1 %i.l to i64
  %i.n = add nuw nsw i64 %i.i, %i.m
  br label %_ZN5folly6detail15reserveInTargetIiA35_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i

_ZN5folly6detail15reserveInTargetIiA35_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.b ], [ 1, %bb.a ]
  %.lobit.i.i.i.i.i = lshr i32 %i.c, 31
  %narrow.i.i.i = add nuw nsw i32 %.lobit.i.i.i.i.i, 35
  %i.o = zext nneg i32 %narrow.i.i.i to i64
  %i.p = add nuw nsw i64 %.0.i.i.i.i.i.i.i.i, %i.o
  invoke void @_ZN5folly13fbstring_coreIcE7reserveEmb(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.p, i1 noundef zeroext false)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZN5folly6detail15reserveInTargetIiA35_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJiA35_cPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvDpRKT_(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(35) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZN5folly6detail15reserveInTargetIiA35_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !12342
  %i.r = load i8, ptr %i.b, align 1, !tbaa !11689, !alias.scope !12342
  %i.s = icmp ult i8 %i.r, 64
  br i1 %i.s, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.d, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4 ], [ %i.q, %bb.d ], [ %i.q, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !12342
  %i.t = load ptr, ptr %4, align 8, !tbaa !11689
  %i.u = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.v = icmp ult i8 %i.u, 64
  %i.w = select i1 %i.v, ptr %4, ptr %i.t
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #53
  invoke void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, ptr nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.w)
          to label %_ZN5folly23makeSystemErrorExplicitEiPKc.exit unwind label %bb.g

_ZN5folly23makeSystemErrorExplicitEiPKc.exit:     ; preds = %bb.e
  %i.y = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.z = icmp ult i8 %i.y, 64
  br i1 %i.z, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly23makeSystemErrorExplicitEiPKc.exit
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit: ; preds = %_ZN5folly23makeSystemErrorExplicitEiPKc.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void

bb.g:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.ac = icmp ult i8 %i.ab, 64
  br i1 %i.ac, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJiA35_cPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvDpRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(35) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !11928  ; 3 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !11630  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  tail call void @_ZN5folly13fbstring_coreIcE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 noundef signext 45)
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i, !prof !11923

._crit_edge.thread.i.i.i.i:                       ; preds = %bb.b
  %i.e = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !11712
  br label %bb.d

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i: ; preds = %bb.b, %.thread.i
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = sub nuw nsw i64 64, %i.h
  %i.j = mul nuw nsw i64 %i.i, 39
  %i.k = lshr i64 %i.j, 7                         ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11884
  %i.n = icmp ule i64 %i.m, %i.g
  %i.o = zext i1 %i.n to i64
  %i.p = add nuw nsw i64 %i.k, %i.o               ; 5 uses
  %i.q = icmp samesign ugt i64 %i.p, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.i2.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i ], [ %i.g, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ] ; 2 uses
  %.014.i1.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i ], [ %i.p, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ]
  %i.r = add i64 %.014.i1.i.i.i.i, -2             ; 4 uses
  %i.s = udiv i64 %.0.i2.i.i.i.i, 100             ; 2 uses
  %i.t = urem i64 %.0.i2.i.i.i.i, 100
  %i.u = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !11712
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  store i16 %i.v, ptr %i.w, align 1
  %i.x = icmp ugt i64 %i.r, 2
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !11924

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i
  %.014.i.lcssa.i.i.i.i = phi i64 [ %i.p, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i ]
  %.0.i.lcssa.i.i.i.i = phi i64 [ %i.g, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i.i
  %i.z = load i16, ptr %i.y, align 2, !tbaa !11712 ; 2 uses
  %i.aa = icmp eq i64 %.014.i.lcssa.i.i.i.i, 2
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  store i16 %i.z, ptr %i.a, align 16
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i, %._crit_edge.thread.i.i.i.i
  %i.ab = phi i16 [ %i.e, %._crit_edge.thread.i.i.i.i ], [ %i.z, %._crit_edge.i.i.i.i ]
  %.0.i.i712.i.i.i.i = phi i64 [ 1, %._crit_edge.thread.i.i.i.i ], [ %i.p, %._crit_edge.i.i.i.i ]
  %i.ac = lshr i16 %i.ab, 8
  %i.ad = trunc nuw i16 %i.ac to i8
  store i8 %i.ad, ptr %i.a, align 16, !tbaa !11689
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit

_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i711.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ %.0.i.i712.i.i.i.i, %bb.d ]
  %i.ae = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, i64 noundef %.0.i.i711.i.i.i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.af = call noundef i64 @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE12traitsLengthEPKc(ptr noundef nonnull align 1 dereferenceable(35) %1)
  %i.ag = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 1 dereferenceable(35) %1, i64 noundef %i.af) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17AsyncServerSocket13setTosReflectEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  br i1 %1, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11693 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11693 ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.j
  %.sroa.024.027 = phi ptr [ %i.y, %bb.j ], [ %i.c, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.024.027, i64 176 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !11758 ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.j, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i32 1, ptr %i.a, align 4, !tbaa !11630
  %i.j = call noundef i32 @_ZN5folly6netops10setsockoptENS_13NetworkSocketEiiPKvj(i32 %i.h, i32 noundef 6, i32 noundef 27, ptr noundef nonnull %i.a, i32 noundef 4)
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @_ZZN5folly17AsyncServerSocket13setTosReflectEbE8vlocal__, align 8, !tbaa !11771 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.split, label %bb.e

.split:                                           ; preds = %bb.d
  %i.n = call noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5folly17AsyncServerSocket13setTosReflectEbE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str.30, i32 noundef 10)
  br i1 %i.n, label %bb.f, label %.critedge19

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.l, align 4, !tbaa !11630
  %i.p = icmp sgt i32 %i.o, 9
  br i1 %i.p, label %bb.f, label %.critedge19

bb.f:                                             ; preds = %.split, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str.30, i32 noundef 917)
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.g unwind label %bb.h       ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.84, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @.str.34, i64 noundef 21)
          to label %.noexc unwind label %bb.h     ; 0 uses

.noexc:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.t = load i32, ptr %i.g, align 4, !tbaa !11758
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 noundef %i.t)
          to label %.noexc20 unwind label %bb.h

.noexc20:                                         ; preds = %.noexc
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.35, i64 noundef 1)
          to label %.critedge unwind label %bb.h  ; 0 uses

.critedge:                                        ; preds = %.noexc20
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %.critedge19

.critedge19:                                      ; preds = %.split, %bb.e, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.j

bb.h:                                             ; preds = %.noexc20, %.noexc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.g, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  resume { ptr, i32 } %i.w

bb.i:                                             ; preds = %bb.c
  %i.x = tail call ptr @__errno_location() #53
  call void @_ZN5folly16throwSystemErrorIJRiRA29_KcEEEvDpOT_(ptr noundef nonnull align 4 dereferenceable(4) %i.x, ptr noundef nonnull align 1 dereferenceable(29) @.str.85) #52
  unreachable

bb.j:                                             ; preds = %.lr.ph, %.critedge19
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.024.027, i64 200 ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.e
  br i1 %i.z, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.b, %bb.a
  %.sink = phi i8 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.j ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 %.sink, ptr %i.aa, align 8, !tbaa !11883
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly16throwSystemErrorIJRiRA29_KcEEEvDpOT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(29) %1) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__errno_location() #53
  %i.b = load i32, ptr %i.a, align 4, !tbaa !11630
  tail call void @_ZN5folly24throwSystemErrorExplicitIJRiRA29_KcEEEviDpOT_(i32 noundef %i.b, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(29) %1) #52
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly24throwSystemErrorExplicitIJRiRA29_KcEEEviDpOT_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(29) %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::system_error", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN5folly23makeSystemErrorExplicitIJRiRA29_KcEEESt12system_erroriDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::system_error") align 8 %3, i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(29) %2)
  invoke void @_ZN5folly15throw_exceptionISt12system_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly23makeSystemErrorExplicitIJRiRA29_KcEEESt12system_erroriDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::system_error") align 8 %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(29) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.folly::basic_fbstring", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12345)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 23 ; 5 uses
  store i8 23, ptr %i.b, align 1, !tbaa !11689, !alias.scope !12345
  store i8 0, ptr %4, align 8, !tbaa !11689, !alias.scope !12345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !12345
  store ptr %4, ptr %i.a, align 8, !tbaa !11928, !noalias !12345
  %i.c = load i32, ptr %2, align 4, !tbaa !11630, !noalias !12345 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5folly6detail15reserveInTargetIiA29_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i, label %bb.b, !prof !11770

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = sub nuw nsw i64 64, %i.f
  %i.h = mul nuw nsw i64 %i.g, 39
  %i.i = lshr i64 %i.h, 7                         ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11884, !noalias !12345
  %i.l = icmp ule i64 %i.k, %i.e
  %i.m = zext i1 %i.l to i64
  %i.n = add nuw nsw i64 %i.i, %i.m
  br label %_ZN5folly6detail15reserveInTargetIiA29_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i

_ZN5folly6detail15reserveInTargetIiA29_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.b ], [ 1, %bb.a ]
  %.lobit.i.i.i.i.i = lshr i32 %i.c, 31
  %narrow.i.i.i = add nuw nsw i32 %.lobit.i.i.i.i.i, 29
  %i.o = zext nneg i32 %narrow.i.i.i to i64
  %i.p = add nuw nsw i64 %.0.i.i.i.i.i.i.i.i, %i.o
  invoke void @_ZN5folly13fbstring_coreIcE7reserveEmb(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.p, i1 noundef zeroext false)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZN5folly6detail15reserveInTargetIiA29_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJiA29_cPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvDpRKT_(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(29) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZN5folly6detail15reserveInTargetIiA29_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !12345
  %i.r = load i8, ptr %i.b, align 1, !tbaa !11689, !alias.scope !12345
  %i.s = icmp ult i8 %i.r, 64
  br i1 %i.s, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.d, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4 ], [ %i.q, %bb.d ], [ %i.q, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !12345
  %i.t = load ptr, ptr %4, align 8, !tbaa !11689
  %i.u = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.v = icmp ult i8 %i.u, 64
  %i.w = select i1 %i.v, ptr %4, ptr %i.t
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #53
  invoke void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, ptr nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.w)
          to label %_ZN5folly23makeSystemErrorExplicitEiPKc.exit unwind label %bb.g

_ZN5folly23makeSystemErrorExplicitEiPKc.exit:     ; preds = %bb.e
  %i.y = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.z = icmp ult i8 %i.y, 64
  br i1 %i.z, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly23makeSystemErrorExplicitEiPKc.exit
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit: ; preds = %_ZN5folly23makeSystemErrorExplicitEiPKc.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void

bb.g:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.ac = icmp ult i8 %i.ab, 64
  br i1 %i.ac, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJiA29_cPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvDpRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !11928  ; 3 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !11630  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  tail call void @_ZN5folly13fbstring_coreIcE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 noundef signext 45)
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i, !prof !11923

._crit_edge.thread.i.i.i.i:                       ; preds = %bb.b
  %i.e = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !11712
  br label %bb.d

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i: ; preds = %bb.b, %.thread.i
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = sub nuw nsw i64 64, %i.h
  %i.j = mul nuw nsw i64 %i.i, 39
  %i.k = lshr i64 %i.j, 7                         ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11884
  %i.n = icmp ule i64 %i.m, %i.g
  %i.o = zext i1 %i.n to i64
  %i.p = add nuw nsw i64 %i.k, %i.o               ; 5 uses
  %i.q = icmp samesign ugt i64 %i.p, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.i2.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i ], [ %i.g, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ] ; 2 uses
  %.014.i1.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i ], [ %i.p, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ]
  %i.r = add i64 %.014.i1.i.i.i.i, -2             ; 4 uses
  %i.s = udiv i64 %.0.i2.i.i.i.i, 100             ; 2 uses
  %i.t = urem i64 %.0.i2.i.i.i.i, 100
  %i.u = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !11712
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  store i16 %i.v, ptr %i.w, align 1
  %i.x = icmp ugt i64 %i.r, 2
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !11924

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i
  %.014.i.lcssa.i.i.i.i = phi i64 [ %i.p, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i ]
  %.0.i.lcssa.i.i.i.i = phi i64 [ %i.g, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i.i
  %i.z = load i16, ptr %i.y, align 2, !tbaa !11712 ; 2 uses
  %i.aa = icmp eq i64 %.014.i.lcssa.i.i.i.i, 2
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  store i16 %i.z, ptr %i.a, align 16
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i, %._crit_edge.thread.i.i.i.i
  %i.ab = phi i16 [ %i.e, %._crit_edge.thread.i.i.i.i ], [ %i.z, %._crit_edge.i.i.i.i ]
  %.0.i.i712.i.i.i.i = phi i64 [ 1, %._crit_edge.thread.i.i.i.i ], [ %i.p, %._crit_edge.i.i.i.i ]
  %i.ac = lshr i16 %i.ab, 8
  %i.ad = trunc nuw i16 %i.ac to i8
  store i8 %i.ad, ptr %i.a, align 16, !tbaa !11689
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit

_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i711.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ %.0.i.i712.i.i.i.i, %bb.d ]
  %i.ae = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, i64 noundef %.0.i.i711.i.i.i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.af = call noundef i64 @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE12traitsLengthEPKc(ptr noundef nonnull align 1 dereferenceable(29) %1)
  %i.ag = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 1 dereferenceable(29) %1, i64 noundef %i.af) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17AsyncServerSocket14setListenerTosEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(408) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !11630
  %i.b = icmp eq i32 %1, 0
  br i1 %i.b, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11693 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11693 ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.critedge20
  %.pre = load i32, ptr %i.a, align 4, !tbaa !11630
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.critedge20
  %.sroa.026.029 = phi ptr [ %i.ai, %.critedge20 ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.026.029, i64 176 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !11758 ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %.critedge20, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.026.029, i64 192
  %i.l = load i16, ptr %i.k, align 8, !tbaa !12240
  %i.m = icmp eq i16 %i.l, 2                      ; 2 uses
  %i.n = select i1 %i.m, i32 0, i32 41
  %i.o = select i1 %i.m, i32 1, i32 67
  %i.p = call noundef i32 @_ZN5folly6netops10setsockoptENS_13NetworkSocketEiiPKvj(i32 %i.i, i32 noundef %i.n, i32 noundef %i.o, ptr noundef nonnull %i.a, i32 noundef 4)
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @_ZZN5folly17AsyncServerSocket14setListenerTosEjE8vlocal__, align 8, !tbaa !11771 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.split, label %bb.e

.split:                                           ; preds = %bb.d
  %i.t = call noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5folly17AsyncServerSocket14setListenerTosEjE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str.30, i32 noundef 10)
  br i1 %i.t, label %bb.f, label %.critedge20

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.r, align 4, !tbaa !11630
  %i.v = icmp sgt i32 %i.u, 9
  br i1 %i.v, label %bb.f, label %.critedge20

bb.f:                                             ; preds = %.split, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str.30, i32 noundef 945)
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.86, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  %i.y = load i32, ptr %i.a, align 4, !tbaa !11630
  %i.z = zext i32 %i.y to i64
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef %i.z)
          to label %_ZNSolsEj.exit unwind label %bb.h ; 3 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.87, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.h ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %_ZNSolsEj.exit
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.34, i64 noundef 21)
          to label %.noexc unwind label %bb.h     ; 0 uses

.noexc:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.ad = load i32, ptr %i.h, align 8, !tbaa !11758
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i32 noundef %i.ad)
          to label %.noexc22 unwind label %bb.h

.noexc22:                                         ; preds = %.noexc
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.35, i64 noundef 1)
          to label %.critedge unwind label %bb.h  ; 0 uses

.critedge:                                        ; preds = %.noexc22
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %.critedge20

bb.h:                                             ; preds = %.noexc22, %.noexc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21, %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.g, %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.ag

bb.i:                                             ; preds = %bb.c
  %i.ah = tail call ptr @__errno_location() #53
  call void @_ZN5folly16throwSystemErrorIJRiRA29_KcEEEvDpOT_(ptr noundef nonnull align 4 dereferenceable(4) %i.ah, ptr noundef nonnull align 1 dereferenceable(29) @.str.88) #52
  unreachable

.critedge20:                                      ; preds = %.critedge, %bb.e, %.split, %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.026.029, i64 200 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.f
  br i1 %i.aj, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit, %bb.a
  %.sink = phi i32 [ 0, %bb.a ], [ %.pre, %._crit_edge.loopexit ], [ %1, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 %.sink, ptr %i.ak, align 4, !tbaa !12070
  ret void
}

declare void @_ZN5folly21validateSocketOptionsERKSt3mapINS_15SocketOptionKeyENS_17SocketOptionValueESt4lessIS1_ESaISt4pairIKS1_S2_EEEtNS1_8ApplyPosE(ptr dead_on_unwind writable sret(%"class.std::map") align 8, ptr noundef nonnull align 8 dereferenceable(48), i16 noundef zeroext, i32 noundef) local_unnamed_addr #11

declare noundef i32 @_ZNK5folly15SocketOptionKey5applyENS_13NetworkSocketERKNS_17SocketOptionValueE(ptr noundef nonnull align 4 dereferenceable(12), i32, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5follylsERSoRKNS_17SocketOptionValueE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #11

declare void @_ZN5folly8errnoStrB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIN5folly15SocketOptionKeyENS0_17SocketOptionValueESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12246
  invoke void @_ZNSt8_Rb_treeIN5folly15SocketOptionKeyESt4pairIKS1_NS0_17SocketOptionValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN5folly15SocketOptionKeyESt4pairIKS1_NS0_17SocketOptionValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #49
  unreachable

_ZNSt8_Rb_treeIN5folly15SocketOptionKeyESt4pairIKS1_NS0_17SocketOptionValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

declare noundef i32 @_ZN5folly6netops23set_socket_non_blockingENS_13NetworkSocketE(i32) local_unnamed_addr #11

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly16throwSystemErrorIJRiRA42_KcEEEvDpOT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(42) %1) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__errno_location() #53
  %i.b = load i32, ptr %i.a, align 4, !tbaa !11630
  tail call void @_ZN5folly24throwSystemErrorExplicitIJRiRA42_KcEEEviDpOT_(i32 noundef %i.b, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(42) %1) #52
  unreachable
}

declare noundef i32 @_ZN5folly6netops24set_socket_close_on_execENS_13NetworkSocketE(i32) local_unnamed_addr #11

declare noundef i32 @_ZN5folly6detail10tfo_enableENS_13NetworkSocketEm(i32, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #44

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN5folly15SocketOptionKeyESt4pairIKS1_NS0_17SocketOptionValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIN5folly15SocketOptionKeyESt4pairIKS1_NS0_17SocketOptionValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIN5folly15SocketOptionKeyESt4pairIKS1_NS0_17SocketOptionValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12348
  tail call void @_ZNSt8_Rb_treeIN5folly15SocketOptionKeyESt4pairIKS1_NS0_17SocketOptionValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12349 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 80
  %i.f = load i8, ptr %i.e, align 8, !tbaa !12350
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %_ZNSt8_Rb_treeIN5folly15SocketOptionKeyESt4pairIKS1_NS0_17SocketOptionValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11690 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.07, i64 64 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt8_Rb_treeIN5folly15SocketOptionKeyESt4pairIKS1_NS0_17SocketOptionValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8, !tbaa !11689
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #51
  br label %_ZNSt8_Rb_treeIN5folly15SocketOptionKeyESt4pairIKS1_NS0_17SocketOptionValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeIN5folly15SocketOptionKeyESt4pairIKS1_NS0_17SocketOptionValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %bb.b, %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 88) #51
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12351

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIN5folly15SocketOptionKeyESt4pairIKS1_NS0_17SocketOptionValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr void @_ZN5folly24throwSystemErrorExplicitIJRiRA42_KcEEEviDpOT_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(42) %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::system_error", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @_ZN5folly23makeSystemErrorExplicitIJRiRA42_KcEEESt12system_erroriDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::system_error") align 8 %3, i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(42) %2)
  invoke void @_ZN5folly15throw_exceptionISt12system_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12system_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly23makeSystemErrorExplicitIJRiRA42_KcEEESt12system_erroriDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::system_error") align 8 %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(42) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"class.folly::basic_fbstring", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12352)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 23 ; 5 uses
  store i8 23, ptr %i.b, align 1, !tbaa !11689, !alias.scope !12352
  store i8 0, ptr %4, align 8, !tbaa !11689, !alias.scope !12352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !12352
  store ptr %4, ptr %i.a, align 8, !tbaa !11928, !noalias !12352
  %i.c = load i32, ptr %2, align 4, !tbaa !11630, !noalias !12352 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5folly6detail15reserveInTargetIiA42_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i, label %bb.b, !prof !11770

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = sub nuw nsw i64 64, %i.f
  %i.h = mul nuw nsw i64 %i.g, 39
  %i.i = lshr i64 %i.h, 7                         ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !11884, !noalias !12352
  %i.l = icmp ule i64 %i.k, %i.e
  %i.m = zext i1 %i.l to i64
  %i.n = add nuw nsw i64 %i.i, %i.m
  br label %_ZN5folly6detail15reserveInTargetIiA42_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i

_ZN5folly6detail15reserveInTargetIiA42_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.b ], [ 1, %bb.a ]
  %.lobit.i.i.i.i.i = lshr i32 %i.c, 31
  %i.o = or disjoint i32 %.lobit.i.i.i.i.i, 42
  %i.p = zext nneg i32 %i.o to i64
  %i.q = add nuw nsw i64 %.0.i.i.i.i.i.i.i.i, %i.p
  invoke void @_ZN5folly13fbstring_coreIcE7reserveEmb(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.q, i1 noundef zeroext false)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZN5folly6detail15reserveInTargetIiA42_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i
  invoke void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJiA42_cPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvDpRKT_(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(42) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZN5folly6detail15reserveInTargetIiA42_cJPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvRKT_RKT0_DpRKT1_.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !12352
  %i.s = load i8, ptr %i.b, align 1, !tbaa !11689, !alias.scope !12352
  %i.t = icmp ult i8 %i.s, 64
  br i1 %i.t, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.d, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4 ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !12352
  %i.u = load ptr, ptr %4, align 8, !tbaa !11689
  %i.v = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.w = icmp ult i8 %i.v, 64
  %i.x = select i1 %i.w, ptr %4, ptr %i.u
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #53
  invoke void @_ZNSt12system_errorC2ESt10error_codePKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, ptr nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.x)
          to label %_ZN5folly23makeSystemErrorExplicitEiPKc.exit unwind label %bb.g

_ZN5folly23makeSystemErrorExplicitEiPKc.exit:     ; preds = %bb.e
  %i.z = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.aa = icmp ult i8 %i.z, 64
  br i1 %i.aa, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly23makeSystemErrorExplicitEiPKc.exit
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit: ; preds = %_ZN5folly23makeSystemErrorExplicitEiPKc.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  ret void

bb.g:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load i8, ptr %i.b, align 1, !tbaa !11689
  %i.ad = icmp ult i8 %i.ac, 64
  br i1 %i.ad, label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #40
  br label %_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4

_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEED2Ev.exit4: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJiA42_cPNS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEEEEvDpRKT_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(42) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !11928  ; 3 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !11630  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  tail call void @_ZN5folly13fbstring_coreIcE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 noundef signext 45)
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i, !prof !11923

._crit_edge.thread.i.i.i.i:                       ; preds = %bb.b
  %i.e = load i16, ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, align 2, !tbaa !11712
  br label %bb.d

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i: ; preds = %bb.b, %.thread.i
  %i.f = tail call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = sub nuw nsw i64 64, %i.h
  %i.j = mul nuw nsw i64 %i.i, 39
  %i.k = lshr i64 %i.j, 7                         ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11884
  %i.n = icmp ule i64 %i.m, %i.g
  %i.o = zext i1 %i.n to i64
  %i.p = add nuw nsw i64 %i.k, %i.o               ; 5 uses
  %i.q = icmp samesign ugt i64 %i.p, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.i2.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i ], [ %i.g, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ] ; 2 uses
  %.014.i1.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i ], [ %i.p, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ]
  %i.r = add i64 %.014.i1.i.i.i.i, -2             ; 4 uses
  %i.s = udiv i64 %.0.i2.i.i.i.i, 100             ; 2 uses
  %i.t = urem i64 %.0.i2.i.i.i.i, 100
  %i.u = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !11712
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  store i16 %i.v, ptr %i.w, align 1
  %i.x = icmp ugt i64 %i.r, 2
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !11924

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i
  %.014.i.lcssa.i.i.i.i = phi i64 [ %i.p, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i ]
  %.0.i.lcssa.i.i.i.i = phi i64 [ %i.g, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i ]
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.0.i.lcssa.i.i.i.i
  %i.z = load i16, ptr %i.y, align 2, !tbaa !11712 ; 2 uses
  %i.aa = icmp eq i64 %.014.i.lcssa.i.i.i.i, 2
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  store i16 %i.z, ptr %i.a, align 16
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i, %._crit_edge.thread.i.i.i.i
  %i.ab = phi i16 [ %i.e, %._crit_edge.thread.i.i.i.i ], [ %i.z, %._crit_edge.i.i.i.i ]
  %.0.i.i712.i.i.i.i = phi i64 [ 1, %._crit_edge.thread.i.i.i.i ], [ %i.p, %._crit_edge.i.i.i.i ]
  %i.ac = lshr i16 %i.ab, 8
  %i.ad = trunc nuw i16 %i.ac to i8
  store i8 %i.ad, ptr %i.a, align 16, !tbaa !11689
  br label %_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit

_ZN5folly8toAppendINS_14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEEEiEENSt9enable_ifIXaaaaaa13is_integral_vIT0_E11is_signed_vIS9_Esr12IsSomeStringIT_EE5valuegestS9_Li4EEvE4typeES9_PSA_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i711.i.i.i.i = phi i64 [ %i.p, %bb.c ], [ %.0.i.i712.i.i.i.i, %bb.d ]
  %i.ae = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, i64 noundef %.0.i.i711.i.i.i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.af = call noundef i64 @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE12traitsLengthEPKc(ptr noundef nonnull align 1 dereferenceable(42) %1)
  %i.ag = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5folly14basic_fbstringIcSt11char_traitsIcESaIcENS_13fbstring_coreIcEEE6appendEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 1 dereferenceable(42) %1, i64 noundef %i.af) ; 0 uses
  ret void
}

declare i32 @accept4(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

declare void @_ZN5folly13SocketAddress15setFromSockaddrEPK8sockaddrj(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef) local_unnamed_addr #11

declare noundef i32 @_ZN5folly6netops10getsockoptENS_13NetworkSocketEiiPvPj(i32, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #31

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17AsyncServerSocket12enterBackoffEv(ptr noundef nonnull align 8 dereferenceable(408) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %2 = alloca %"class.std::shared_ptr.33", align 8 ; 7 uses
  %3 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12234 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #54
          to label %bb.c unwind label %bb.e       ; 6 uses

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(408) %0)
          to label %.noexc unwind label %bb.f, !inline_history !12355

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN5folly12AsyncTimeoutC2EPNS_9EventBaseE(ptr noundef nonnull align 8 dereferenceable(192) %i.d, ptr noundef %i.h)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.noexc
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17AsyncServerSocket14BackoffTimeoutE, i64 16), ptr %i.d, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr %0, ptr %i.i, align 8, !tbaa !12356
  store ptr %i.d, ptr %i.a, align 8, !tbaa !12234
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc
  br label %bb.g

bb.f:                                             ; preds = %.noexc, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 192) #51
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.j, %bb.e ] ; 3 uses
  %.07 = extractvalue { ptr, i32 } %.pn, 1
  %i.l = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #40
  %i.m = icmp eq i32 %.07, %i.l
  br i1 %i.m, label %bb.h, label %bb.af

bb.h:                                             ; preds = %bb.g
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %.0) #40 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull @.str.30, i32 noundef 1349, i32 noundef 2)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.j unwind label %bb.m       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.114, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.115, i64 noundef 44)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11834 ; 3 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #40, !call_target !12360
  br label %bb.o

bb.l:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.j, %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %1) #40
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn15 = phi { ptr, i32 } [ %i.x, %bb.m ], [ %i.w, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  invoke void @__cxa_end_catch()
          to label %bb.af unwind label %bb.ag

bb.o:                                             ; preds = %bb.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24
  call void @__cxa_end_catch()
  br label %bb.ae

bb.p:                                             ; preds = %bb.d, %bb.a
  %i.y = phi ptr [ %i.d, %bb.d ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.33") align 8 %2)
  %i.z = invoke noundef zeroext i1 @_ZN5folly12AsyncTimeout15scheduleTimeoutEjOSt10shared_ptrINS_14RequestContextEE(ptr noundef nonnull align 8 dereferenceable(184) %i.y, i32 noundef 1000, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !11764 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5folly14RequestContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ac, align 8, !tbaa !11967
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !11969
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #40, !call_target !3525, !inline_history !12011
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
end_hunk_4
