Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeArena?download=true
inline.NumInlined: 845
inline.NumDeleted: 470
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE6rehashEv:bb.a
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 0, ptr %i.x, align 8, !tbaa !57
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !62 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !64
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #23
  br label %_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EED2Ev.exit: ; preds = %bb.e, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread
  %i.ag = phi i64 [ %i.f, %.lr.ph ], [ %i.ba, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread ] ; 3 uses
  %.01116 = phi i64 [ 0, %.lr.ph ], [ %i.bb, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread ] ; 3 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !157
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.ah, i64 %.01116 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !57, !range !24, !noundef !25 ; 2 uses
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = load i8, ptr %i.g, align 8, !tbaa !57, !range !24, !noundef !25
  %i.an = icmp eq i8 %i.ak, %i.am                 ; 2 uses
  %brmerge.not.i.i = and i1 %i.an, %i.al
  br i1 %brmerge.not.i.i, label %bb.g, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !63 ; 3 uses
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !63
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.h, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread14

bb.h:                                             ; preds = %bb.g
  %i.as = icmp eq i64 %i.ap, 0
  br i1 %i.as, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, label %.split

.split:                                           ; preds = %bb.h
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.au = load ptr, ptr %i.ai, align 8, !tbaa !62
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.au, ptr %i.at, i64 %i.ap)
  %i.av = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.av, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread14

_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit: ; preds = %bb.f
  br i1 %i.an, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread, label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread14

_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread14: ; preds = %bb.g, %.split, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit
  %i.aw = invoke noundef ptr @_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE13insert_unsafeERKS9_(ptr noundef nonnull align 8 dereferenceable(66) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.ai)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread14
  %i.ax = load ptr, ptr %0, align 8, !tbaa !157
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %.01116
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %i.ay) #21
  %.pre = load i64, ptr %i.a, align 8, !tbaa !156
  br label %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread

bb.j:                                             ; preds = %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread14
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.az

_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit.thread: ; preds = %bb.h, %.split, %bb.i, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit
  %i.ba = phi i64 [ %i.ag, %bb.h ], [ %i.ag, %.split ], [ %.pre, %bb.i ], [ %i.ag, %_ZNKSt8equal_toISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclERKS7_SA_.exit ] ; 3 uses
  %i.bb = add nuw i64 %.01116, 1                  ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  br i1 %i.bc, label %bb.f, label %._crit_edge, !llvm.loop !213
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EEC2ERKS9_m(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i8 0, ptr %i.f, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.g = load i8, ptr %i.e, align 8, !tbaa !57, !range !24, !noundef !25
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !60
  %i.j = load ptr, ptr %1, align 8, !tbaa !62     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !63   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 %i.l, ptr %i.b, align 8, !tbaa !154
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %i.d, align 8, !tbaa !62
  %i.o = load i64, ptr %i.b, align 8, !tbaa !154
  store i64 %i.o, ptr %i.i, align 8, !tbaa !64
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i.i.i.i, %bb.b
  %i.p = phi ptr [ %i.n, %.noexc.i.i.i.i.i.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !64
  store i8 %i.q, ptr %i.p, align 1, !tbaa !64
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.r = load i64, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.r, ptr %i.s, align 8, !tbaa !63
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  store i8 1, ptr %i.f, align 8, !tbaa !57
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit: ; preds = %bb.a, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4fillEPS9_mRKS9_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit
  %i.v = mul i64 %2, 40
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #24
          to label %.lr.ph.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 11 uses

.lr.ph.i:                                         ; preds = %bb.e
  store ptr %i.w, ptr %0, align 8, !tbaa !157
  store i64 %2, ptr %i.c, align 8, !tbaa !156
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.e, align 8, !tbaa !57, !range !24, !noundef !25
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %.lr.ph.i.split, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.preheader

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.preheader: ; preds = %.lr.ph.i
  %xtraiter = and i64 %2, 7                       ; 3 uses
  %i.aa = icmp ult i64 %2, 8
  br i1 %i.aa, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.epil.preheader, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.preheader.new

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.preheader.new: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.preheader
  %unroll_iter = and i64 %2, -8
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.preheader.new
  %.05.i.us = phi i64 [ 0, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.preheader.new ], [ %i.ar, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us ] ; 9 uses
  %niter = phi i64 [ 0, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.preheader.new ], [ %niter.next.7, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us ]
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.05.i.us
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i8 0, ptr %i.ac, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.05.i.us
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store i8 0, ptr %i.ae, align 8, !tbaa !57
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.05.i.us
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  store i8 0, ptr %i.ag, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.05.i.us
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 152
  store i8 0, ptr %i.ai, align 8, !tbaa !57
  %i.aj = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.05.i.us
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 192
  store i8 0, ptr %i.ak, align 8, !tbaa !57
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.05.i.us
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 232
  store i8 0, ptr %i.am, align 8, !tbaa !57
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.05.i.us
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 272
  store i8 0, ptr %i.ao, align 8, !tbaa !57
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.05.i.us
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 312
  store i8 0, ptr %i.aq, align 8, !tbaa !57
  %i.ar = add nuw i64 %.05.i.us, 8                ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4fillEPS9_mRKS9_.exit.loopexit14.unr-lcssa, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us, !llvm.loop !215

.lr.ph.i.splitthread-pre-split:                   ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i
  %.pr = load i8, ptr %i.e, align 8, !tbaa !57
  br label %.lr.ph.i.split

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %.lr.ph.i.splitthread-pre-split
  %3 = phi i8 [ %.pr, %.lr.ph.i.splitthread-pre-split ], [ 1, %.lr.ph.i ]
  %.05.i = phi i64 [ %i.bh, %.lr.ph.i.splitthread-pre-split ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.05.i ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 2 uses
  store i8 0, ptr %i.at, align 8, !tbaa !57
  %i.au = trunc nuw i8 %3 to i1
  br i1 %i.au, label %bb.f, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i

bb.f:                                             ; preds = %.lr.ph.i.split
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store ptr %i.av, ptr %i.as, align 8, !tbaa !60
  %i.aw = load ptr, ptr %1, align 8, !tbaa !62    ; 2 uses
  %i.ax = load i64, ptr %i.x, align 8, !tbaa !63  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !154
  %i.ay = icmp ugt i64 %i.ax, 15
  br i1 %i.ay, label %.noexc.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.f
  %i.az = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  store ptr %i.az, ptr %i.as, align 8, !tbaa !62
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !154
  store i64 %i.ba, ptr %i.av, align 8, !tbaa !64
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc, %bb.f
  %i.bb = phi ptr [ %i.az, %.noexc ], [ %i.av, %bb.f ] ; 2 uses
  switch i64 %i.ax, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.bc = load i8, ptr %i.aw, align 1, !tbaa !64
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !64
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.aw, i64 %i.ax, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !154 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !63
  %i.bf = load ptr, ptr %i.as, align 8, !tbaa !62
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store i8 0, ptr %i.bg, align 1, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.at, align 8, !tbaa !57
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i.i, %.lr.ph.i.split
  %i.bh = add nuw i64 %.05.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bh, %2
  br i1 %exitcond.not.i, label %_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4fillEPS9_mRKS9_.exit, label %.lr.ph.i.splitthread-pre-split, !llvm.loop !216

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i.i.i.i.i.i.i.i, %bb.e
  %lpad.loopexit.split-lp13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.d) #21
  resume { ptr, i32 } %lpad.loopexit.split-lp13

_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4fillEPS9_mRKS9_.exit.loopexit14.unr-lcssa: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4fillEPS9_mRKS9_.exit, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.epil.preheader

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.epil.preheader: ; preds = %_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4fillEPS9_mRKS9_.exit.loopexit14.unr-lcssa, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.preheader
  %.05.i.us.epil.init = phi i64 [ 0, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.preheader ], [ %i.ar, %_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4fillEPS9_mRKS9_.exit.loopexit14.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod15)
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.epil

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.epil: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.epil, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.epil.preheader
  %.05.i.us.epil = phi i64 [ %i.bk, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.epil ], [ %.05.i.us.epil.init, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.epil ], [ 0, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.epil.preheader ]
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.w, i64 %.05.i.us.epil
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store i8 0, ptr %i.bj, align 8, !tbaa !57
  %i.bk = add nuw i64 %.05.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4fillEPS9_mRKS9_.exit, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.epil, !llvm.loop !217

_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4fillEPS9_mRKS9_.exit: ; preds = %_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE4fillEPS9_mRKS9_.exit.loopexit14.unr-lcssa, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.us.epil, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !157    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !156  ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE7destroyEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i
  %.04.i.i = phi i64 [ %i.m, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %.04.i.i ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !57, !range !24, !noundef !25
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  store i8 0, ptr %i.e, align 8, !tbaa !57
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.i, align 8, !tbaa !64
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.m = add nuw i64 %.04.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.c
  br i1 %exitcond.not.i.i, label %_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyEPS9_m.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyEPS9_m.exit.loopexit.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !157
  br label %_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE7destroyEv.exit

_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE7destroyEv.exit: ; preds = %bb.b, %_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyEPS9_m.exit.loopexit.i
  %i.n = phi ptr [ %.pre.i, %_ZN4Luau6detail16ItemInterfaceSetISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7destroyEPS9_m.exit.loopexit.i ], [ %i.a, %bb.b ]
  tail call void @_ZdlPv(ptr noundef %i.n) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(66) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_ZN4Luau6detail14DenseHashTableISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES9_S9_NS0_16ItemInterfaceSetIS9_EESt4hashIS9_ESt8equal_toIS9_EE7destroyEv.exit, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !57, !range !24, !noundef !25
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.o, align 8, !tbaa !57
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !62   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.v = load i64, ptr %i.t, align 8, !tbaa !64
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #23
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.e, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !57, !range !24, !noundef !25
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !24
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !62     ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h
  %i.j = load ptr, ptr %1, align 8, !tbaa !62     ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.l = icmp eq ptr %i.j, %i.k                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.l, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !63   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !158

bb.d:                                             ; preds = %bb.c
  switch i64 %i.n, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.j, align 1, !tbaa !64
  store i8 %i.p, ptr %i.g, align 1, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.q = load i64, ptr %i.m, align 8, !tbaa !63   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !63
  %i.s = load ptr, ptr %0, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !64
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %0, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !63
  store i64 %i.w, ptr %i.u, align 8, !tbaa !63
  %i.x = load i64, ptr %i.k, align 8, !tbaa !64
  store i64 %i.x, ptr %i.h, align 8, !tbaa !64
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.y = load i64, ptr %i.h, align 8, !tbaa !64
  store ptr %i.j, ptr %0, align 8, !tbaa !62
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !63
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !64
  store i64 %i.ac, ptr %i.h, align 8, !tbaa !64
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.g, ptr %1, align 8, !tbaa !62
  store i64 %i.y, ptr %i.k, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %1, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.ad = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.g, %bb.g ], [ %i.k, %bb.h ], [ %i.j, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !63
end_hunk_0
