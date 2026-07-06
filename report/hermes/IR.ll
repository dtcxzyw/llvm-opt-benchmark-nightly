inline.NumInlined: 3701
inline.NumDeleted: 2010
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN6hermes11Instruction11insertAfterEPS0_:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !247
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.e = icmp eq ptr %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %..i = select i1 %i.e, ptr %i.c, ptr %1
  %i.g = getelementptr inbounds nuw i8, ptr %..i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68   ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !68
  store ptr %i.i, ptr %0, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.j, align 8, !tbaa !68
  store ptr %0, ptr %i.h, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes11Instruction10moveBeforeEPS0_(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68   ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(132) %0, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !247
  %i.i = load ptr, ptr %1, align 8, !tbaa !69     ; 2 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !68
  store ptr %i.i, ptr %0, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %0, ptr %i.j, align 8, !tbaa !68
  store ptr %0, ptr %1, align 8, !tbaa !69
  store ptr %i.h, ptr %i.b, align 8, !tbaa !247
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes10BasicBlock6removeEPNS_11InstructionE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !69     ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(132) %1, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes10BasicBlock5eraseEPNS_11InstructionE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !69     ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(132) %1, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN6hermes5Value7destroyEPS0_(ptr noundef nonnull %i.e), !inline_history !262
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6hermes11Instruction16removeFromParentEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(132) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(132) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6hermes11Instruction10setOperandEPNS_5ValueEj.exit, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68   ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %i.h, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(132) %0, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6hermes5Value7destroyEPS0_(ptr noundef nonnull %i.i), !inline_history !262
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6hermes11Instruction10setOperandEPNS_5ValueEj.exit
  %i.j = phi i32 [ %i.b, %.lr.ph ], [ %i.aq, %_ZN6hermes11Instruction10setOperandEPNS_5ValueEj.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN6hermes11Instruction10setOperandEPNS_5ValueEj.exit ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !76   ; 6 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN6hermes11Instruction10setOperandEPNS_5ValueEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !21   ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74   ; 3 uses
  %i.v = zext i32 %.sroa.22.0.copyload.i to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.v
  store ptr %i.u, ptr %i.w, align 8, !tbaa !74
  %i.x = add i32 %i.q, -1                         ; 4 uses
  store i32 %i.x, ptr %i.p, align 8, !tbaa !21
  %.not.i.i = icmp eq i32 %i.x, %.sroa.22.0.copyload.i
  br i1 %.not.i.i, label %_ZN6hermes5Value9removeUseESt4pairIPS0_jE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.z = load i32, ptr %i.y, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19 ; 4 uses
  %wide.trip.count.i.i = zext nneg i32 %i.z to i64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !76
  %i.ad = icmp eq ptr %i.ac, %i.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = icmp eq i32 %i.af, %i.x
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %.loopexit.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %.lr.ph.i
  %indvars.iv.i19.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i ], [ 0, %.lr.ph.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i19.i, 1 ; 3 uses
  %exitcond.not.i.i = icmp ne i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i)
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !76
  %i.ak = icmp eq ptr %i.aj, %i.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load i32, ptr %i.al, align 8
  %i.an = icmp eq i32 %i.am, %i.x
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %i.ao, label %.loopexit.i.i, label %.lr.ph.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i, %.lr.ph.i.i
  %.lcssa18.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.ai, %.lr.ph.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa18.i, i64 8
  store ptr %i.l, ptr %.lcssa18.i, align 8, !tbaa !76
  store i32 %.sroa.22.0.copyload.i, ptr %i.ap, align 8, !tbaa !79
  br label %_ZN6hermes5Value9removeUseESt4pairIPS0_jE.exit.i

_ZN6hermes5Value9removeUseESt4pairIPS0_jE.exit.i: ; preds = %.loopexit.i.i, %bb.c
  store ptr null, ptr %i.k, align 8, !tbaa !76
  store i32 0, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !79
  %.pre = load i32, ptr %i.a, align 8, !tbaa !21
  br label %_ZN6hermes11Instruction10setOperandEPNS_5ValueEj.exit

_ZN6hermes11Instruction10setOperandEPNS_5ValueEj.exit: ; preds = %bb.b, %_ZN6hermes5Value9removeUseESt4pairIPS0_jE.exit.i
  %i.aq = phi i32 [ %i.j, %bb.b ], [ %.pre, %_ZN6hermes5Value9removeUseESt4pairIPS0_jE.exit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp samesign ult i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %bb.b, label %._crit_edge, !llvm.loop !263
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes8Function24eraseFromParentNoDestroyEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(304) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %.not12 = icmp eq ptr %i.c, %i.b
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN6hermes5Value18replaceAllUsesWithEPS0_.exit
  %i.d = phi ptr [ %i.az, %_ZN6hermes5Value18replaceAllUsesWithEPS0_.exit ], [ %i.c, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %.not4.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i, label %_ZN6hermes5Value18replaceAllUsesWithEPS0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %_ZN6hermes11Instruction23replaceFirstOperandWithEPNS_5ValueES2_.exit.i, %.lr.ph.i
  %i.j = phi i32 [ %i.g, %.lr.ph.i ], [ %1, %_ZN6hermes11Instruction23replaceFirstOperandWithEPNS_5ValueES2_.exit.i ] ; 3 uses
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr [8 x i8], ptr %i.i, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i.i, label %_ZN6hermes11Instruction23replaceFirstOperandWithEPNS_5ValueES2_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  %wide.trip.count.i.i = zext nneg i32 %i.p to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.i.i ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !76   ; 4 uses
  %i.v = icmp eq ptr %i.e, %i.u
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !21   ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !74 ; 3 uses
  %i.ae = zext i32 %.sroa.22.0.copyload.i to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ae
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !74
  %i.ag = add i32 %i.z, -1                        ; 4 uses
  store i32 %i.ag, ptr %i.y, align 8, !tbaa !21
  %.not.i.i = icmp eq i32 %i.ag, %.sroa.22.0.copyload.i
  br i1 %.not.i.i, label %_ZN6hermes5Value9removeUseESt4pairIPS0_jE.exit.i, label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19 ; 4 uses
  %wide.trip.count.i.i3 = zext nneg i32 %i.ai to i64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !76
  %i.am = icmp eq ptr %i.al, %i.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = icmp eq i32 %i.ao, %i.ag
  %i.aq = select i1 %i.am, i1 %i.ap, i1 false
  br i1 %i.aq, label %.loopexit.i.i, label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.lr.ph.i.i2, %.lr.ph.i4
  %indvars.iv.i19.i = phi i64 [ %indvars.iv.next.i.i5, %.lr.ph.i4 ], [ 0, %.lr.ph.i.i2 ]
  %indvars.iv.next.i.i5 = add nuw nsw i64 %indvars.iv.i19.i, 1 ; 3 uses
  %exitcond.not.i.i6 = icmp ne i64 %indvars.iv.next.i.i5, %wide.trip.count.i.i3
  tail call void @llvm.assume(i1 %exitcond.not.i.i6)
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.next.i.i5 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !76
  %i.at = icmp eq ptr %i.as, %i.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp eq i32 %i.av, %i.ag
  %i.ax = select i1 %i.at, i1 %i.aw, i1 false
  br i1 %i.ax, label %.loopexit.i.i, label %.lr.ph.i4

.loopexit.i.i:                                    ; preds = %.lr.ph.i4, %.lr.ph.i.i2
  %.lcssa18.i = phi ptr [ %i.ak, %.lr.ph.i.i2 ], [ %i.ar, %.lr.ph.i4 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.lcssa18.i, i64 8
  store ptr %i.u, ptr %.lcssa18.i, align 8, !tbaa !76
  store i32 %.sroa.22.0.copyload.i, ptr %i.ay, align 8, !tbaa !79
  br label %_ZN6hermes5Value9removeUseESt4pairIPS0_jE.exit.i

_ZN6hermes5Value9removeUseESt4pairIPS0_jE.exit.i: ; preds = %.loopexit.i.i, %bb.d
  store ptr null, ptr %i.t, align 8, !tbaa !76
  store i32 0, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !79
  %.pre.i.pre = load i32, ptr %i.f, align 8, !tbaa !21
  br label %_ZN6hermes11Instruction23replaceFirstOperandWithEPNS_5ValueES2_.exit.i

bb.e:                                             ; preds = %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN6hermes11Instruction23replaceFirstOperandWithEPNS_5ValueES2_.exit.i, label %bb.c, !llvm.loop !82

_ZN6hermes11Instruction23replaceFirstOperandWithEPNS_5ValueES2_.exit.i: ; preds = %bb.e, %_ZN6hermes5Value9removeUseESt4pairIPS0_jE.exit.i, %bb.b
  %1 = phi i32 [ %.pre.i.pre, %_ZN6hermes5Value9removeUseESt4pairIPS0_jE.exit.i ], [ %i.j, %bb.b ], [ %i.j, %bb.e ] ; 2 uses
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN6hermes5Value18replaceAllUsesWithEPS0_.exit, label %bb.b, !llvm.loop !83

_ZN6hermes5Value18replaceAllUsesWithEPS0_.exit:   ; preds = %_ZN6hermes11Instruction23replaceFirstOperandWithEPNS_5ValueES2_.exit.i, %.lr.ph
  tail call void @_ZN6hermes10BasicBlock15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.d)
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %.not = icmp eq ptr %i.az, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !264

._crit_edge:                                      ; preds = %_ZN6hermes5Value18replaceAllUsesWithEPS0_.exit, %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !68 ; 2 uses
  %i.bc = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !69
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes10BasicBlock15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %.not17 = icmp eq ptr %i.c, %i.b
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN6hermes11Instruction15eraseFromParentEv.exit
  %i.d = phi ptr [ %i.cr, %_ZN6hermes11Instruction15eraseFromParentEv.exit ], [ %i.c, %bb.a ] ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %.not4.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i, label %_ZN6hermes5Value18replaceAllUsesWithEPS0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  br label %bb.b

bb.b:                                             ; preds = %_ZN6hermes11Instruction23replaceFirstOperandWithEPNS_5ValueES2_.exit.i, %.lr.ph.i
  %i.j = phi i32 [ %i.g, %.lr.ph.i ], [ %1, %_ZN6hermes11Instruction23replaceFirstOperandWithEPNS_5ValueES2_.exit.i ] ; 3 uses
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr [8 x i8], ptr %i.i, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i.i, label %_ZN6hermes11Instruction23replaceFirstOperandWithEPNS_5ValueES2_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  %wide.trip.count.i.i = zext nneg i32 %i.p to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.i.i ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !76   ; 4 uses
  %i.v = icmp eq ptr %i.e, %i.u
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !21   ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !74 ; 3 uses
  %i.ae = zext i32 %.sroa.22.0.copyload.i to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ae
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !74
  %i.ag = add i32 %i.z, -1                        ; 4 uses
  store i32 %i.ag, ptr %i.y, align 8, !tbaa !21
  %.not.i.i = icmp eq i32 %i.ag, %.sroa.22.0.copyload.i
  br i1 %.not.i.i, label %_ZN6hermes5Value9removeUseESt4pairIPS0_jE.exit.i, label %.lr.ph.i.i7

.lr.ph.i.i7:                                      ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19 ; 4 uses
  %wide.trip.count.i.i8 = zext nneg i32 %i.ai to i64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !76
  %i.am = icmp eq ptr %i.al, %i.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = icmp eq i32 %i.ao, %i.ag
  %i.aq = select i1 %i.am, i1 %i.ap, i1 false
  br i1 %i.aq, label %.loopexit.i.i, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.lr.ph.i.i7, %.lr.ph.i9
  %indvars.iv.i19.i = phi i64 [ %indvars.iv.next.i.i10, %.lr.ph.i9 ], [ 0, %.lr.ph.i.i7 ]
  %indvars.iv.next.i.i10 = add nuw nsw i64 %indvars.iv.i19.i, 1 ; 3 uses
  %exitcond.not.i.i11 = icmp ne i64 %indvars.iv.next.i.i10, %wide.trip.count.i.i8
  tail call void @llvm.assume(i1 %exitcond.not.i.i11)
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.next.i.i10 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !76
  %i.at = icmp eq ptr %i.as, %i.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp eq i32 %i.av, %i.ag
  %i.ax = select i1 %i.at, i1 %i.aw, i1 false
  br i1 %i.ax, label %.loopexit.i.i, label %.lr.ph.i9

.loopexit.i.i:                                    ; preds = %.lr.ph.i9, %.lr.ph.i.i7
  %.lcssa18.i = phi ptr [ %i.ak, %.lr.ph.i.i7 ], [ %i.ar, %.lr.ph.i9 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.lcssa18.i, i64 8
  store ptr %i.u, ptr %.lcssa18.i, align 8, !tbaa !76
  store i32 %.sroa.22.0.copyload.i, ptr %i.ay, align 8, !tbaa !79
  br label %_ZN6hermes5Value9removeUseESt4pairIPS0_jE.exit.i

_ZN6hermes5Value9removeUseESt4pairIPS0_jE.exit.i: ; preds = %.loopexit.i.i, %bb.d
  store ptr null, ptr %i.t, align 8, !tbaa !76
  store i32 0, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !79
  %.pre.i.pre = load i32, ptr %i.f, align 8, !tbaa !21
  br label %_ZN6hermes11Instruction23replaceFirstOperandWithEPNS_5ValueES2_.exit.i

bb.e:                                             ; preds = %bb.c
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN6hermes11Instruction23replaceFirstOperandWithEPNS_5ValueES2_.exit.i, label %bb.c, !llvm.loop !82

_ZN6hermes11Instruction23replaceFirstOperandWithEPNS_5ValueES2_.exit.i: ; preds = %bb.e, %_ZN6hermes5Value9removeUseESt4pairIPS0_jE.exit.i, %bb.b
  %1 = phi i32 [ %.pre.i.pre, %_ZN6hermes5Value9removeUseESt4pairIPS0_jE.exit.i ], [ %i.j, %bb.b ], [ %i.j, %bb.e ] ; 2 uses
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %_ZN6hermes5Value18replaceAllUsesWithEPS0_.exit, label %bb.b, !llvm.loop !83

_ZN6hermes5Value18replaceAllUsesWithEPS0_.exit:   ; preds = %_ZN6hermes11Instruction23replaceFirstOperandWithEPNS_5ValueES2_.exit.i, %.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !21 ; 2 uses
  %.not.i2 = icmp eq i32 %i.ba, 0
  br i1 %.not.i2, label %_ZN6hermes11Instruction15eraseFromParentEv.exit, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %_ZN6hermes5Value18replaceAllUsesWithEPS0_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes11Instruction10setOperandEPNS_5ValueEj.exit.i, %.lr.ph.i3
  %i.bd = phi i32 [ %i.ba, %.lr.ph.i3 ], [ %i.ck, %_ZN6hermes11Instruction10setOperandEPNS_5ValueEj.exit.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i3 ], [ %indvars.iv.next.i, %_ZN6hermes11Instruction10setOperandEPNS_5ValueEj.exit.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %indvars.iv.i ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !76 ; 6 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN6hermes11Instruction10setOperandEPNS_5ValueEj.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %.sroa.22.0.copyload.i.i = load i32, ptr %.sroa.22.0..sroa_idx.i.i, align 8 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !19 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !21 ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !74 ; 3 uses
  %i.bp = zext i32 %.sroa.22.0.copyload.i.i to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bp
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !74
  %i.br = add i32 %i.bk, -1                       ; 4 uses
  store i32 %i.br, ptr %i.bj, align 8, !tbaa !21
  %.not.i.i.i = icmp eq i32 %i.br, %.sroa.22.0.copyload.i.i
  br i1 %.not.i.i.i, label %_ZN6hermes5Value9removeUseESt4pairIPS0_jE.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !21
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !19 ; 4 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.bt to i64
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !76
  %i.bx = icmp eq ptr %i.bw, %i.bf
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = icmp eq i32 %i.bz, %i.br
  %i.cb = select i1 %i.bx, i1 %i.ca, i1 false
  br i1 %i.cb, label %.loopexit.i.i.i, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i4
  %indvars.iv.i19.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i4 ], [ 0, %.lr.ph.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i19.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %indvars.iv.next.i.i.i ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !76
  %i.ce = icmp eq ptr %i.cd, %i.bf
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = icmp eq i32 %i.cg, %i.br
  %i.ci = select i1 %i.ce, i1 %i.ch, i1 false
  br i1 %i.ci, label %.loopexit.i.i.i, label %.lr.ph.i.i4

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i4, %.lr.ph.i.i.i
  %.lcssa18.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i ], [ %i.cc, %.lr.ph.i.i4 ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.lcssa18.i.i, i64 8
  store ptr %i.bf, ptr %.lcssa18.i.i, align 8, !tbaa !76
  store i32 %.sroa.22.0.copyload.i.i, ptr %i.cj, align 8, !tbaa !79
  br label %_ZN6hermes5Value9removeUseESt4pairIPS0_jE.exit.i.i

_ZN6hermes5Value9removeUseESt4pairIPS0_jE.exit.i.i: ; preds = %.loopexit.i.i.i, %bb.g
  store ptr null, ptr %i.be, align 8, !tbaa !76
  store i32 0, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !79
  %.pre.i5 = load i32, ptr %i.az, align 8, !tbaa !21
  br label %_ZN6hermes11Instruction10setOperandEPNS_5ValueEj.exit.i

_ZN6hermes11Instruction10setOperandEPNS_5ValueEj.exit.i: ; preds = %_ZN6hermes5Value9removeUseESt4pairIPS0_jE.exit.i.i, %bb.f
  %i.ck = phi i32 [ %i.bd, %bb.f ], [ %.pre.i5, %_ZN6hermes5Value9removeUseESt4pairIPS0_jE.exit.i.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cl = zext i32 %i.ck to i64
  %i.cm = icmp samesign ult i64 %indvars.iv.next.i, %i.cl
  br i1 %i.cm, label %bb.f, label %_ZN6hermes11Instruction15eraseFromParentEv.exit, !llvm.loop !263

_ZN6hermes11Instruction15eraseFromParentEv.exit:  ; preds = %_ZN6hermes11Instruction10setOperandEPNS_5ValueEj.exit.i, %_ZN6hermes5Value18replaceAllUsesWithEPS0_.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !68 ; 2 uses
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !69  ; 2 uses
  store ptr %i.cp, ptr %i.co, align 8, !tbaa !69
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.co, ptr %i.cq, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(132) %i.d, i8 0, i64 16, i1 false)
  tail call void @_ZN6hermes5Value7destroyEPS0_(ptr noundef nonnull %i.e), !inline_history !262
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %.not = icmp eq ptr %i.cr, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !265

._crit_edge:                                      ; preds = %_ZN6hermes11Instruction15eraseFromParentEv.exit, %bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !68 ; 2 uses
  %i.cu = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !69
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 16, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6hermes5Value7destroyEPS0_(ptr noundef nonnull %i.cw), !inline_history !266
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_ZN6hermes11Instruction7getNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(132) %0) local_unnamed_addr #2 align 2 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7
  %switch.tableidx = add nsw i8 %i.b, -4          ; 2 uses
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6hermes11Instruction7getNameEv, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = zext nneg i8 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6hermes11Instruction7getNameEv.5, i64 %i.d
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %switch.load2, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %switch.ext, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes11Instruction20getDerivedSideEffectEv(ptr noundef nonnull align 8 dereferenceable(132) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7
  switch i8 %i.b, label %bb.b [
    i8 4, label %bb.i
    i8 107, label %bb.c
    i8 7, label %bb.c
    i8 8, label %bb.c
    i8 9, label %bb.c
    i8 106, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 105, label %bb.d
    i8 18, label %bb.i
    i8 19, label %bb.i
    i8 20, label %bb.i
    i8 21, label %bb.i
    i8 22, label %bb.d
    i8 23, label %bb.c
    i8 24, label %bb.c
    i8 25, label %bb.c
    i8 26, label %bb.e
    i8 27, label %bb.c
    i8 28, label %bb.c
    i8 29, label %bb.i
    i8 30, label %bb.f
    i8 31, label %bb.c
    i8 33, label %bb.c
    i8 34, label %bb.g
    i8 36, label %bb.i
    i8 37, label %bb.i
    i8 40, label %bb.i
    i8 41, label %bb.i
    i8 43, label %bb.i
    i8 44, label %bb.i
    i8 46, label %bb.i
    i8 47, label %bb.i
    i8 49, label %bb.d
    i8 50, label %bb.f
    i8 51, label %bb.f
    i8 52, label %bb.c
    i8 53, label %bb.c
    i8 54, label %bb.c
    i8 55, label %bb.c
    i8 56, label %bb.i
    i8 57, label %bb.c
    i8 58, label %bb.i
    i8 59, label %bb.c
    i8 60, label %bb.i
    i8 61, label %bb.c
    i8 62, label %bb.i
    i8 63, label %bb.i
    i8 64, label %bb.i
    i8 65, label %bb.i
    i8 66, label %bb.f
    i8 67, label %bb.d
    i8 68, label %bb.i
    i8 70, label %bb.c
    i8 71, label %bb.c
    i8 72, label %bb.c
    i8 73, label %bb.c
    i8 104, label %bb.i
    i8 77, label %bb.c
    i8 78, label %bb.c
    i8 79, label %bb.i
    i8 80, label %bb.c
end_hunk_0
