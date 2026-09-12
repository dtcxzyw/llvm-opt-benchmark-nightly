Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ShrinkWrapping?download=true
inline.NumInlined: 8136
inline.NumDeleted: 3649
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4llvm4bolt16ReachingDefOrUseILb0EE11isReachedByEtNS0_12ExprIteratorE:bb.a
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.h
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !123
  %i.aj = and i64 %i.ai, %i.k
  %.not15.not.not = icmp ne i64 %i.aj, 0          ; 6 uses
  %i.ak = icmp eq ptr %i.ag, %i.b
  br i1 %i.ak, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm9BitVectorC2Ejb.exit
  call void @free(ptr noundef nonnull %i.ag) #31
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %_ZN4llvm9BitVectorC2Ejb.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.not15.not.not, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm9BitVectorD2Ev.exit
  %i.al = add nuw i32 %.sroa.5.020, 1             ; 3 uses
  %i.am = load i32, ptr %i.l, align 8, !tbaa !124 ; 2 uses
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = lshr i32 %i.al, 6                       ; 4 uses
  %i.ap = add i32 %i.am, -1                       ; 2 uses
  %i.aq = lshr i32 %i.ap, 6                       ; 4 uses
  %.not42.i.i.i = icmp samesign ugt i32 %i.ao, %i.aq
  br i1 %.not42.i.i.i, label %._crit_edge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.ar = load ptr, ptr %.sroa.010.0.copyload, align 8, !tbaa !67 ; 2 uses
  %i.as = and i32 %i.al, 63                       ; 2 uses
  %i.at = sub nuw nsw i32 64, %i.as
  %.not.i.i6 = icmp eq i32 %i.as, 0
  %i.au = zext nneg i32 %i.at to i64
  %i.av = lshr i64 -1, %i.au
  %i.aw = xor i64 %i.av, -1
  %i.ax = and i32 %i.ap, 63
  %i.ay = xor i32 %i.ax, 63
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = lshr i64 -1, %i.az                      ; 2 uses
  %i.bb = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.bc = zext nneg i32 %i.aq to i64
  %i.bd = add nuw nsw i32 %i.aq, 1
  %wide.trip.count.i.i.i = zext nneg i32 %i.bd to i64 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.bb
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !123
  %i.bg = select i1 %.not.i.i6, i64 -1, i64 %i.aw
  %i.bh = icmp eq i32 %i.ao, %i.aq
  %i.bi = select i1 %i.bh, i64 %i.ba, i64 -1
  %spec.select44.peel.i.i.i = and i64 %i.bi, %i.bg
  %.230.peel.i.i.i = and i64 %spec.select44.peel.i.i.i, %i.bf ; 2 uses
  %.not37.peel.i.i.i = icmp eq i64 %.230.peel.i.i.i, 0
  br i1 %.not37.peel.i.i.i, label %bb.f, label %_ZN4llvm4bolt12ExprIteratorppEv.exit

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.peel.i.i.i = add nuw nsw i64 %i.bb, 1 ; 2 uses
  %exitcond.peel.not.i.i.i = icmp eq i64 %indvars.iv.next.peel.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.peel.not.i.i.i, label %._crit_edge, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %bb.f, %bb.g
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.g ], [ %indvars.iv.next.peel.i.i.i, %bb.f ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i.i.i
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !123
  %i.bl = icmp eq i64 %indvars.iv.i.i.i, %i.bc
  %i.bm = select i1 %i.bl, i64 %i.ba, i64 -1
  %.230.i.i.i = and i64 %i.bm, %i.bk              ; 2 uses
  %.not37.i.i.i = icmp eq i64 %.230.i.i.i, 0
  br i1 %.not37.i.i.i, label %bb.g, label %.loopexit48.i.i.i

.loopexit48.i.i.i:                                ; preds = %.peel.next.i.i.i
  %.pre.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  br label %_ZN4llvm4bolt12ExprIteratorppEv.exit

bb.g:                                             ; preds = %.peel.next.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge, label %.peel.next.i.i.i, !llvm.loop !1

_ZN4llvm4bolt12ExprIteratorppEv.exit:             ; preds = %.lr.ph.i.i.i, %.loopexit48.i.i.i
  %.pre-phi.i.i.i = phi i32 [ %.pre.i.i.i, %.loopexit48.i.i.i ], [ %i.ao, %.lr.ph.i.i.i ]
  %.230.lcssa.i.i.i = phi i64 [ %.230.i.i.i, %.loopexit48.i.i.i ], [ %.230.peel.i.i.i, %.lr.ph.i.i.i ]
  %i.bn = shl nuw i32 %.pre-phi.i.i.i, 6
  %i.bo = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i, i1 true)
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = or disjoint i32 %i.bn, %i.bp            ; 2 uses
  %.not.not = icmp eq i32 %i.bq, -1
  br i1 %.not.not, label %._crit_edge, label %bb.b, !llvm.loop !831

._crit_edge:                                      ; preds = %bb.f, %bb.e, %bb.d, %_ZN4llvm9BitVectorD2Ev.exit, %_ZN4llvm4bolt12ExprIteratorppEv.exit, %bb.g, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ false, %bb.g ], [ %.not15.not.not, %_ZN4llvm4bolt12ExprIteratorppEv.exit ], [ %.not15.not.not, %_ZN4llvm9BitVectorD2Ev.exit ], [ %.not15.not.not, %bb.d ], [ %.not15.not.not, %bb.e ], [ %.not15.not.not, %bb.f ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt19CalleeSavedAnalysis13getSavesByRegEt(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.102") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(296) %1, i16 noundef zeroext %2) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125, !nonnull !64, !align !99 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1240
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1248
  %i.f = load i32, ptr %i.e, align 8, !tbaa !121  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not23 = icmp eq i32 %i.f, 0
  br i1 %.not23, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge27:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph26, %._crit_edge
  %i.n = phi ptr [ null, %.lr.ph26 ], [ %i.t, %._crit_edge ] ; 2 uses
  %i.o = phi ptr [ null, %.lr.ph26 ], [ %i.u, %._crit_edge ] ; 2 uses
  %.promoted = phi ptr [ null, %.lr.ph26 ], [ %.lcssa19, %._crit_edge ] ; 2 uses
  %.sroa.015.024 = phi ptr [ %i.d, %.lr.ph26 ], [ %i.v, %._crit_edge ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.015.024, align 8, !tbaa !127 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !129  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !129  ; 2 uses
  %.not1821 = icmp eq ptr %i.q, %i.s
  br i1 %.not1821, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit, %bb.b
  %i.t = phi ptr [ %i.n, %bb.b ], [ %i.ck, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit ]
  %i.u = phi ptr [ %i.o, %bb.b ], [ %i.cl, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit ]
  %.lcssa19 = phi ptr [ %.promoted, %bb.b ], [ %i.cm, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  store ptr %.lcssa19, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.015.024, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.h
  br i1 %.not, label %._crit_edge27, label %bb.b

.lr.ph:                                           ; preds = %bb.b, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit
  %i.w = phi ptr [ %i.ck, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit ], [ %i.n, %bb.b ] ; 4 uses
  %i.x = phi ptr [ %i.cl, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit ], [ %i.o, %bb.b ] ; 4 uses
  %.sroa.011.022 = phi ptr [ %i.cn, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit ], [ %i.q, %bb.b ] ; 6 uses
  %i.y = phi ptr [ %i.cm, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit ], [ %.promoted, %bb.b ] ; 7 uses
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !100, !nonnull !64, !align !99
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1568
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !189 ; 2 uses
  %i.ac = load i8, ptr %i.k, align 8, !tbaa !190, !range !63, !noundef !64
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %._crit_edge.i.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %.lr.ph
  %.0.pre.i.i = load i32, ptr %i.j, align 4, !tbaa !191
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit.i

bb.c:                                             ; preds = %.lr.ph
  %i.ae = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.ab, ptr nonnull @.str.27, i64 12) ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.ae to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.j, align 4
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit.i

_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit.i: ; preds = %bb.c, %._crit_edge.i.i
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.ae, %bb.c ] ; 3 uses
  %i.af = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.ab, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.011.022, i32 noundef %.0.i.i) #31, !noalias !834
  br i1 %i.af, label %bb.d, label %_ZN4llvm4bolt19CalleeSavedAnalysis11getSavedRegERKNS_6MCInstE.exit

bb.d:                                             ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.011.022, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !121, !noalias !834 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.ah, -1         ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.011.022, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !67, !noalias !834 ; 4 uses
  %i.ak = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !234, !noalias !834
  %i.an = icmp eq i8 %i.am, 6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !834
  %i.aq = icmp eq ptr %i.ap, null
  %i.ar = select i1 %i.an, i1 %i.aq, i1 false
  br i1 %i.ar, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.d, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.ak, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.as = icmp sgt i64 %indvars.iv.i.i.i, 0
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !234, !noalias !834
  %i.av = icmp eq i8 %i.au, 6
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !834
  %i.ay = icmp eq ptr %i.ax, null
  %i.az = select i1 %i.av, i1 %i.ay, i1 false
  br i1 %i.az, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.ba = trunc nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.d ], [ %i.ba, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.ah, %.01318.i.i.i.lcssa.i.i.i
  %i.bb = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.bb, %i.ah
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.ah to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !235, !noalias !834 ; 2 uses
  %i.bg = lshr i64 %i.bf, 56
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.bh
  br i1 %.not.i3.i.i.i, label %.loopexit.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ %i.bc, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv.next.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !235, !noalias !834 ; 2 uses
  %i.bl = lshr i64 %i.bk, 56
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %.not.i.i.i.i = icmp eq i32 %.0.i.i, %i.bm
  br i1 %.not.i.i.i.i, label %.loopexit.i, label %.critedge.i.i.i.i

.loopexit.i:                                      ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.bf, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.bk, %.critedge.i.i.i.i ]
  %i.bn = shl i64 %.lcssa.i.i.i, 8
  %i.bo = ashr exact i64 %i.bn, 8
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !191
  %i.bs = trunc i32 %i.br to i16
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis11getSavedRegERKNS_6MCInstE.exit

_ZN4llvm4bolt19CalleeSavedAnalysis11getSavedRegERKNS_6MCInstE.exit: ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit.i, %.loopexit.i
  %.0.i = phi i16 [ %i.bs, %.loopexit.i ], [ 0, %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit.i ]
  %i.bt = icmp eq i16 %.0.i, %2
  br i1 %i.bt, label %bb.e, label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit

bb.e:                                             ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis11getSavedRegERKNS_6MCInstE.exit
  %.not.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.sroa.011.022, ptr %i.x, align 8, !tbaa !129
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.bu, ptr %i.l, align 8, !tbaa !236
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.bv = ptrtoint ptr %i.w to i64
  %i.bw = ptrtoint ptr %i.y to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 6 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.h, label %_ZNKSt6vectorIPN4llvm6MCInstESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.y, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #32
  unreachable

_ZNKSt6vectorIPN4llvm6MCInstESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bz = ashr exact i64 %i.bx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 1152921504606846975)
  %i.cd = select i1 %i.cb, i64 1152921504606846975, i64 %i.cc ; 3 uses
  %.not.i.i.i.i9 = icmp ne i64 %i.cd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i9)
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #33 ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bx ; 2 uses
  store ptr %.sroa.011.022, ptr %i.cg, align 8, !tbaa !129
  %i.ch = icmp sgt i64 %i.bx, 0
  br i1 %i.ch, label %bb.i, label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN4llvm6MCInstESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr align 8 %i.y, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN4llvm6MCInstESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.bx) #34
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ci, ptr %i.l, align 8, !tbaa !236
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd ; 2 uses
  store ptr %i.cj, ptr %i.m, align 8, !tbaa !237
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.f, %_ZN4llvm4bolt19CalleeSavedAnalysis11getSavedRegERKNS_6MCInstE.exit
  %i.ck = phi ptr [ %i.cj, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.w, %bb.f ], [ %i.w, %_ZN4llvm4bolt19CalleeSavedAnalysis11getSavedRegERKNS_6MCInstE.exit ] ; 2 uses
  %i.cl = phi ptr [ %i.ci, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.bu, %bb.f ], [ %i.x, %_ZN4llvm4bolt19CalleeSavedAnalysis11getSavedRegERKNS_6MCInstE.exit ] ; 2 uses
  %i.cm = phi ptr [ %i.cf, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.y, %bb.f ], [ %i.y, %_ZN4llvm4bolt19CalleeSavedAnalysis11getSavedRegERKNS_6MCInstE.exit ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.011.022, i64 128 ; 2 uses
  %.not18 = icmp eq ptr %i.cn, %i.s
  br i1 %.not18, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i16 @_ZN4llvm4bolt19CalleeSavedAnalysis11getSavedRegERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100, !nonnull !64, !align !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i8, ptr %i.f, align 8, !tbaa !190, !range !63, !noundef !64
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 4, !tbaa !191
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.27, i64 12) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 4
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit

_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %.0.i) #31, !noalias !837
  br i1 %i.j, label %bb.c, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsIiEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.c:                                             ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !121, !noalias !837 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.l, -1            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67, !noalias !837 ; 4 uses
  %i.o = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !234, !noalias !837
  %i.r = icmp eq i8 %i.q, 6
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !837
  %i.u = icmp eq ptr %i.t, null
  %i.v = select i1 %i.r, i1 %i.u, i1 false
  br i1 %i.v, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.c, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.w = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv.next.i.i ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !234, !noalias !837
  %i.z = icmp eq i8 %i.y, 6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !837
  %i.ac = icmp eq ptr %i.ab, null
  %i.ad = select i1 %i.z, i1 %i.ac, i1 false
  br i1 %i.ad, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ae = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.c
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.c ], [ %i.ae, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.l, %.01318.i.i.i.lcssa.i.i
  %i.af = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.af, %i.l
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.l to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !235, !noalias !837 ; 2 uses
  %i.ak = lshr i64 %i.aj, 56
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.al
  br i1 %.not.i3.i.i, label %.loopexit, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.ag, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !235, !noalias !837 ; 2 uses
  %i.ap = lshr i64 %i.ao, 56
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.aq
  br i1 %.not.i.i.i, label %.loopexit, label %.critedge.i.i.i

.loopexit:                                        ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.aj, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.ao, %.critedge.i.i.i ]
  %i.ar = shl i64 %.lcssa.i.i, 8
  %i.as = ashr exact i64 %i.ar, 8
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !191
  %i.aw = trunc i32 %i.av to i16
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsIiEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsIiEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit, %.loopexit
  %.0 = phi i16 [ %i.aw, %.loopexit ], [ 0, %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit ]
  ret i16 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt19CalleeSavedAnalysis16getRestoresByRegEt(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.102") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(296) %1, i16 noundef zeroext %2) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125, !nonnull !64, !align !99 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1240
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1248
  %i.f = load i32, ptr %i.e, align 8, !tbaa !121  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not23 = icmp eq i32 %i.f, 0
  br i1 %.not23, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge27:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph26, %._crit_edge
  %i.n = phi ptr [ null, %.lr.ph26 ], [ %i.t, %._crit_edge ] ; 2 uses
  %i.o = phi ptr [ null, %.lr.ph26 ], [ %i.u, %._crit_edge ] ; 2 uses
  %.promoted = phi ptr [ null, %.lr.ph26 ], [ %.lcssa19, %._crit_edge ] ; 2 uses
  %.sroa.015.024 = phi ptr [ %i.d, %.lr.ph26 ], [ %i.v, %._crit_edge ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.015.024, align 8, !tbaa !127 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !129  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !129  ; 2 uses
  %.not1821 = icmp eq ptr %i.q, %i.s
  br i1 %.not1821, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit, %bb.b
  %i.t = phi ptr [ %i.n, %bb.b ], [ %i.ck, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit ]
  %i.u = phi ptr [ %i.o, %bb.b ], [ %i.cl, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit ]
  %.lcssa19 = phi ptr [ %.promoted, %bb.b ], [ %i.cm, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit ] ; 2 uses
  store ptr %.lcssa19, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.015.024, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.h
  br i1 %.not, label %._crit_edge27, label %bb.b

.lr.ph:                                           ; preds = %bb.b, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit
  %i.w = phi ptr [ %i.ck, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit ], [ %i.n, %bb.b ] ; 4 uses
  %i.x = phi ptr [ %i.cl, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit ], [ %i.o, %bb.b ] ; 4 uses
  %.sroa.011.022 = phi ptr [ %i.cn, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit ], [ %i.q, %bb.b ] ; 6 uses
  %i.y = phi ptr [ %i.cm, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit ], [ %.promoted, %bb.b ] ; 7 uses
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !100, !nonnull !64, !align !99
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1568
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !189 ; 2 uses
  %i.ac = load i8, ptr %i.k, align 8, !tbaa !190, !range !63, !noundef !64
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %._crit_edge.i.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %.lr.ph
  %.0.pre.i.i = load i32, ptr %i.j, align 4, !tbaa !191
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit.i

bb.c:                                             ; preds = %.lr.ph
  %i.ae = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.ab, ptr nonnull @.str.28, i64 15) ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.ae to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.j, align 4
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit.i

_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit.i: ; preds = %bb.c, %._crit_edge.i.i
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.ae, %bb.c ] ; 3 uses
  %i.af = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.ab, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.011.022, i32 noundef %.0.i.i) #31, !noalias !840
  br i1 %i.af, label %bb.d, label %_ZN4llvm4bolt19CalleeSavedAnalysis14getRestoredRegERKNS_6MCInstE.exit

bb.d:                                             ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.011.022, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !121, !noalias !840 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.ah, -1         ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.011.022, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !67, !noalias !840 ; 4 uses
  %i.ak = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !234, !noalias !840
  %i.an = icmp eq i8 %i.am, 6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !840
  %i.aq = icmp eq ptr %i.ap, null
  %i.ar = select i1 %i.an, i1 %i.aq, i1 false
  br i1 %i.ar, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.d, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.ak, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.as = icmp sgt i64 %indvars.iv.i.i.i, 0
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !tbaa !234, !noalias !840
  %i.av = icmp eq i8 %i.au, 6
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !840
  %i.ay = icmp eq ptr %i.ax, null
  %i.az = select i1 %i.av, i1 %i.ay, i1 false
  br i1 %i.az, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.ba = trunc nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.d ], [ %i.ba, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.ah, %.01318.i.i.i.lcssa.i.i.i
  %i.bb = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.bb, %i.ah
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.ah to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !235, !noalias !840 ; 2 uses
  %i.bg = lshr i64 %i.bf, 56
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.bh
  br i1 %.not.i3.i.i.i, label %.loopexit.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ %i.bc, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv.next.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !235, !noalias !840 ; 2 uses
  %i.bl = lshr i64 %i.bk, 56
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %.not.i.i.i.i = icmp eq i32 %.0.i.i, %i.bm
  br i1 %.not.i.i.i.i, label %.loopexit.i, label %.critedge.i.i.i.i

.loopexit.i:                                      ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.bf, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.bk, %.critedge.i.i.i.i ]
  %i.bn = shl i64 %.lcssa.i.i.i, 8
  %i.bo = ashr exact i64 %i.bn, 8
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !191
  %i.bs = trunc i32 %i.br to i16
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis14getRestoredRegERKNS_6MCInstE.exit

_ZN4llvm4bolt19CalleeSavedAnalysis14getRestoredRegERKNS_6MCInstE.exit: ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit.i, %.loopexit.i
  %.0.i = phi i16 [ %i.bs, %.loopexit.i ], [ 0, %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit.i ]
  %i.bt = icmp eq i16 %.0.i, %2
  br i1 %i.bt, label %bb.e, label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit

bb.e:                                             ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis14getRestoredRegERKNS_6MCInstE.exit
  %.not.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.sroa.011.022, ptr %i.x, align 8, !tbaa !129
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.bu, ptr %i.l, align 8, !tbaa !236
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.bv = ptrtoint ptr %i.w to i64
  %i.bw = ptrtoint ptr %i.y to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 6 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.h, label %_ZNKSt6vectorIPN4llvm6MCInstESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.y, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #32
  unreachable

_ZNKSt6vectorIPN4llvm6MCInstESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.bz = ashr exact i64 %i.bx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 1152921504606846975)
  %i.cd = select i1 %i.cb, i64 1152921504606846975, i64 %i.cc ; 3 uses
  %.not.i.i.i.i9 = icmp ne i64 %i.cd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i9)
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #33 ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bx ; 2 uses
  store ptr %.sroa.011.022, ptr %i.cg, align 8, !tbaa !129
  %i.ch = icmp sgt i64 %i.bx, 0
  br i1 %i.ch, label %bb.i, label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN4llvm6MCInstESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr align 8 %i.y, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN4llvm6MCInstESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.bx) #34
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ci, ptr %i.l, align 8, !tbaa !236
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd ; 2 uses
  store ptr %i.cj, ptr %i.m, align 8, !tbaa !237
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.f, %_ZN4llvm4bolt19CalleeSavedAnalysis14getRestoredRegERKNS_6MCInstE.exit
  %i.ck = phi ptr [ %i.cj, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.w, %bb.f ], [ %i.w, %_ZN4llvm4bolt19CalleeSavedAnalysis14getRestoredRegERKNS_6MCInstE.exit ] ; 2 uses
  %i.cl = phi ptr [ %i.ci, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.bu, %bb.f ], [ %i.x, %_ZN4llvm4bolt19CalleeSavedAnalysis14getRestoredRegERKNS_6MCInstE.exit ] ; 2 uses
  %i.cm = phi ptr [ %i.cf, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.y, %bb.f ], [ %i.y, %_ZN4llvm4bolt19CalleeSavedAnalysis14getRestoredRegERKNS_6MCInstE.exit ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.011.022, i64 128 ; 2 uses
  %.not18 = icmp eq ptr %i.cn, %i.s
  br i1 %.not18, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i16 @_ZN4llvm4bolt19CalleeSavedAnalysis14getRestoredRegERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100, !nonnull !64, !align !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i8, ptr %i.f, align 8, !tbaa !190, !range !63, !noundef !64
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 4, !tbaa !191
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.28, i64 15) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 4
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit

_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %.0.i) #31, !noalias !843
  br i1 %i.j, label %bb.c, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsIiEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.c:                                             ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !121, !noalias !843 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.l, -1            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67, !noalias !843 ; 4 uses
  %i.o = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !234, !noalias !843
  %i.r = icmp eq i8 %i.q, 6
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !843
  %i.u = icmp eq ptr %i.t, null
  %i.v = select i1 %i.r, i1 %i.u, i1 false
  br i1 %i.v, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.c, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.w = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv.next.i.i ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !234, !noalias !843
  %i.z = icmp eq i8 %i.y, 6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !843
  %i.ac = icmp eq ptr %i.ab, null
  %i.ad = select i1 %i.z, i1 %i.ac, i1 false
  br i1 %i.ad, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ae = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.c
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.c ], [ %i.ae, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.l, %.01318.i.i.i.lcssa.i.i
  %i.af = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.af, %i.l
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.l to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !235, !noalias !843 ; 2 uses
  %i.ak = lshr i64 %i.aj, 56
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.al
  br i1 %.not.i3.i.i, label %.loopexit, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.ag, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !235, !noalias !843 ; 2 uses
  %i.ap = lshr i64 %i.ao, 56
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.aq
  br i1 %.not.i.i.i, label %.loopexit, label %.critedge.i.i.i

.loopexit:                                        ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.aj, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.ao, %.critedge.i.i.i ]
  %i.ar = shl i64 %.lcssa.i.i, 8
  %i.as = ashr exact i64 %i.ar, 8
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !191
  %i.aw = trunc i32 %i.av to i16
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsIiEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsIiEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit, %.loopexit
  %.0 = phi i16 [ %i.aw, %.loopexit ], [ 0, %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit ]
  ret i16 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt19CalleeSavedAnalysisD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(296) dereferenceable(296) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125, !nonnull !64, !align !99 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1240
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1248
  %i.f = load i32, ptr %i.e, align 8, !tbaa !121  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not28 = icmp eq i32 %i.f, 0
  br i1 %.not28, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.h

._crit_edge32:                                    ; preds = %._crit_edge, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !161  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4llvm4bolt15FrameIndexEntryESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !844
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #34
  br label %_ZNSt6vectorIPKN4llvm4bolt15FrameIndexEntryESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN4llvm4bolt15FrameIndexEntryESaIS4_EED2Ev.exit: ; preds = %._crit_edge32, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !161  ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIPKN4llvm4bolt15FrameIndexEntryESaIS4_EED2Ev.exit9, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPKN4llvm4bolt15FrameIndexEntryESaIS4_EED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !844
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #34
  br label %_ZNSt6vectorIPKN4llvm4bolt15FrameIndexEntryESaIS4_EED2Ev.exit9

_ZNSt6vectorIPKN4llvm4bolt15FrameIndexEntryESaIS4_EED2Ev.exit9: ; preds = %_ZNSt6vectorIPKN4llvm4bolt15FrameIndexEntryESaIS4_EED2Ev.exit, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !187 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPKN4llvm4bolt15FrameIndexEntryESaIS4_EED2Ev.exit9
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !238
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIPKN4llvm4bolt15FrameIndexEntryESaIS4_EED2Ev.exit9, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !67 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  tail call void @free(ptr noundef %i.aj) #31
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !214 ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm9BitVectorD2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !239
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #34
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !67 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN4llvm9BitVectorD2Ev.exit12, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  tail call void @free(ptr noundef %i.au) #31
  br label %_ZN4llvm9BitVectorD2Ev.exit12

_ZN4llvm9BitVectorD2Ev.exit12:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.g
  ret void

bb.h:                                             ; preds = %.lr.ph31, %._crit_edge
  %.sroa.022.029 = phi ptr [ %i.d, %.lr.ph31 ], [ %i.bb, %._crit_edge ] ; 2 uses
  %i.ax = load ptr, ptr %.sroa.022.029, align 8, !tbaa !127 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !129 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !129 ; 2 uses
  %.not2526 = icmp eq ptr %i.ay, %i.ba
  br i1 %.not2526, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit, %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.022.029, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bb, %i.h
  br i1 %.not, label %._crit_edge32, label %bb.h

.lr.ph:                                           ; preds = %bb.h, %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit
  %.sroa.018.027 = phi ptr [ %i.bq, %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit ], [ %i.ay, %bb.h ] ; 3 uses
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !100, !nonnull !64, !align !99
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1568
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !189 ; 2 uses
  %i.bf = load i8, ptr %i.k, align 8, !tbaa !190, !range !63, !noundef !64
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %._crit_edge.i, label %bb.i

._crit_edge.i:                                    ; preds = %.lr.ph
  %.0.pre.i = load i32, ptr %i.j, align 4, !tbaa !191
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit

bb.i:                                             ; preds = %.lr.ph
  %i.bh = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.be, ptr nonnull @.str.27, i64 12) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.bh to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.j, align 4
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit

_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit: ; preds = %._crit_edge.i, %bb.i
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.bh, %bb.i ]
  %i.bi = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder16removeAnnotationERNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.be, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.018.027, i32 noundef %.0.i) #31 ; 0 uses
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !100, !nonnull !64, !align !99
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1568
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !189 ; 2 uses
  %i.bm = load i8, ptr %i.m, align 8, !tbaa !190, !range !63, !noundef !64
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %._crit_edge.i16, label %bb.j

._crit_edge.i16:                                  ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit
end_hunk_0
begin_hunk_1_@_ZN4llvm4bolt19StackLayoutModifier21classifyStackAccessesEv:bb.a
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !102
  %i.bl = call noundef zeroext i1 @_ZNK4llvm11MCInstrDesc15hasDefOfPhysRegERKNS_6MCInstENS_10MCRegisterERKNS_14MCRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(128) %i.aq, i32 %i.bh, ptr noundef nonnull align 8 dereferenceable(240) %i.bk) #31
  br i1 %i.bl, label %bb.d, label %_ZN4llvm4bolt19StackLayoutModifier31checkFramePointerInitializationERNS_6MCInstE.exit

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !286, !noalias !932 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !287, !noalias !932 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.as, i64 116
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !288, !noalias !932 ; 4 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %.loopexit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bt = add i32 %i.br, -1                       ; 2 uses
  %i.bu = ptrtoint ptr %i.aq to i64
  %i.bv = mul i64 %i.bu, -4658895280553007687     ; 2 uses
  %i.bw = lshr i64 %i.bv, 31
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = trunc i64 %i.bx to i32
  %i.bz = and i32 %i.bt, %i.by                    ; 3 uses
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = lshr i64 %i.ca, 5
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !191, !noalias !933
  %i.ce = and i32 %i.bz, 31
  %i.cf = lshr i32 %i.cd, %i.ce
  %i.cg = trunc i32 %i.cf to i1
  br i1 %i.cg, label %.lr.ph.i.i.i.i91, label %.loopexit.i.i.i, !prof !289

.lr.ph.i.i.i.i91:                                 ; preds = %bb.e, %bb.f
  %i.ch = phi i64 [ %i.cn, %bb.f ], [ %i.ca, %bb.e ]
  %.017.i.i.i.i = phi i32 [ %i.cm, %bb.f ], [ %i.bz, %bb.e ]
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.ch ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !129, !noalias !933
  %i.ck = icmp eq ptr %i.aq, %i.cj
  br i1 %i.ck, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit.i, label %bb.f, !prof !210

bb.f:                                             ; preds = %.lr.ph.i.i.i.i91
  %i.cl = add nuw i32 %.017.i.i.i.i, 1
  %i.cm = and i32 %i.cl, %i.bt                    ; 3 uses
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = lshr i64 %i.cn, 5
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !191, !noalias !933
  %i.cr = and i32 %i.cm, 31
  %i.cs = lshr i32 %i.cq, %i.cr
  %i.ct = trunc i32 %i.cs to i1
  br i1 %i.ct, label %.lr.ph.i.i.i.i91, label %.loopexit.i.i.i, !prof !290

.loopexit.i.i.i:                                  ; preds = %bb.f, %bb.e, %bb.d
  %i.cu = zext i32 %i.br to i64                   ; 2 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.cu
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i91
  %.pre.i92 = zext i32 %i.br to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i89 = phi i64 [ %.pre.i92, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit.i ], [ %i.cu, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.ci, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit.i ], [ %i.cv, %.loopexit.i.i.i ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.pre-phi.i89
  %i.cx = icmp eq ptr %.lcssa.sink.i.i.i, %i.cw
  br i1 %i.cx, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %.sroa.0.0.copyload.i90 = load i8, ptr %i.cy, align 8, !tbaa !294, !noalias !934
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 16
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !235, !noalias !934 ; 7 uses
  %i.cz = icmp eq i8 %.sroa.0.0.copyload.i90, 0
  br i1 %i.cz, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.da = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.db = load i64, ptr %i.da, align 8, !tbaa !296, !noalias !935
  %.not.not.i.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.not.i.i.i.i.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.dc = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %i.dc, %bb.i ], [ %.sroa.06.0.i.i.i.i.i, %bb.k ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !157, !noalias !935 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !127, !noalias !935
  %i.df = icmp eq ptr %.sroa.21.0.copyload.i, %i.de
  br i1 %i.df, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i.i, label %bb.j, !llvm.loop !7

bb.l:                                             ; preds = %bb.h
  %i.dg = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.dh = ptrtoint ptr %.sroa.21.0.copyload.i to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !297, !noalias !935 ; 2 uses
  %i.dk = urem i64 %i.dh, %i.dj                   ; 2 uses
  %i.dl = load ptr, ptr %i.dg, align 8, !tbaa !298, !noalias !935
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dk
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !160, !noalias !935 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !157, !noalias !935 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !127, !noalias !935
  %i.dr = icmp eq ptr %.sroa.21.0.copyload.i, %i.dq
  br i1 %i.dr, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.o
  %i.ds = icmp eq ptr %.sroa.21.0.copyload.i, %i.dv
  br i1 %i.ds, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !8

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.m, %bb.n
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.dt, %bb.n ], [ %i.do, %bb.m ]
  %i.dt = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !157, !noalias !935 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not18.i.i.i.i.i.i.i, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !127, !noalias !935 ; 2 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = urem i64 %i.dw, %i.dj
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.dx, %i.dk
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.n, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.o
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit, !llvm.loop !8

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i.i: ; preds = %bb.n, %bb.k, %bb.m
  %.sroa.06.1.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.k ], [ %i.do, %bb.m ], [ %i.dt, %bb.n ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 16
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit

bb.p:                                             ; preds = %bb.g
  %i.dz = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !319, !noalias !936, !nonnull !64, !align !99
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1568
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !189, !noalias !936 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.ef = load i8, ptr %i.ee, align 4, !tbaa !190, !range !63, !noalias !936, !noundef !64
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %._crit_edge.i.i172, label %bb.q

._crit_edge.i.i172:                               ; preds = %bb.p
  %.0.pre.i.i173 = load i32, ptr %i.ed, align 8, !tbaa !191, !noalias !936
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i

bb.q:                                             ; preds = %bb.p
  %i.eh = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.ec, ptr nonnull @.str.47, i64 20), !noalias !936 ; 2 uses
  %.sroa.0.0.insert.ext.i.i151 = zext i32 %i.eh to i64
  %.sroa.0.0.insert.insert.i.i152 = or disjoint i64 %.sroa.0.0.insert.ext.i.i151, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i152, ptr %i.ed, align 8, !noalias !936
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i

_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i: ; preds = %bb.q, %._crit_edge.i.i172
  %.0.i.i153 = phi i32 [ %.0.pre.i.i173, %._crit_edge.i.i172 ], [ %i.eh, %bb.q ] ; 3 uses
  %i.ei = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.ec, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.21.0.copyload.i, i32 noundef %.0.i.i153) #31, !noalias !937
  br i1 %i.ei, label %bb.r, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit

bb.r:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.21.0.copyload.i, i64 24
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !121, !noalias !937 ; 4 uses
  %.01317.i.i.i.i.i.i155 = add i32 %i.ek, -1      ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.21.0.copyload.i, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !67, !noalias !937 ; 4 uses
  %i.en = zext nneg i32 %.01317.i.i.i.i.i.i155 to i64 ; 2 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %i.en ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !234, !noalias !937
  %i.eq = icmp eq i8 %i.ep, 6
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !noalias !937
  %i.et = icmp eq ptr %i.es, null
  %i.eu = select i1 %i.eq, i1 %i.et, i1 false
  br i1 %i.eu, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i160, label %.backedge.i.i.i.i.i.i156

.backedge.i.i.i.i.i.i156:                         ; preds = %bb.r, %.backedge.i.i.i.i.i.i156
  %indvars.iv.i.i.i157 = phi i64 [ %indvars.iv.next.i.i.i158, %.backedge.i.i.i.i.i.i156 ], [ %i.en, %bb.r ] ; 2 uses
  %indvars.iv.next.i.i.i158 = add nsw i64 %indvars.iv.i.i.i157, -1 ; 3 uses
  %i.ev = icmp sgt i64 %indvars.iv.i.i.i157, 0
  call void @llvm.assume(i1 %i.ev)
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %indvars.iv.next.i.i.i158 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 8, !tbaa !234, !noalias !937
  %i.ey = icmp eq i8 %i.ex, 6
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !noalias !937
  %i.fb = icmp eq ptr %i.fa, null
  %i.fc = select i1 %i.ey, i1 %i.fb, i1 false
  br i1 %i.fc, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i159, label %.backedge.i.i.i.i.i.i156

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i159: ; preds = %.backedge.i.i.i.i.i.i156
  %i.fd = trunc nsw i64 %indvars.iv.next.i.i.i158 to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i160

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i160: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i159, %bb.r
  %.01318.i.i.i.lcssa.i.i.i161 = phi i32 [ %.01317.i.i.i.i.i.i155, %bb.r ], [ %i.fd, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i159 ] ; 2 uses
  %.not.i.not.i.i.i.i162 = icmp ne i32 %i.ek, %.01318.i.i.i.lcssa.i.i.i161
  %i.fe = add nuw i32 %.01318.i.i.i.lcssa.i.i.i161, 1 ; 2 uses
  %.not1324.i.i.i.i163 = icmp ult i32 %i.fe, %i.ek
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i162)
  call void @llvm.assume(i1 %.not1324.i.i.i.i163)
  %i.ff = zext i32 %i.fe to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i164 = zext i32 %i.ek to i64
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !235, !noalias !937 ; 2 uses
  %i.fj = lshr i64 %i.fi, 56
  %i.fk = trunc nuw nsw i64 %i.fj to i32
  %.not.i3.i.i.i165 = icmp eq i32 %.0.i.i153, %i.fk
  br i1 %.not.i3.i.i.i165, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i.i, label %.critedge.i.i.i.i166

.critedge.i.i.i.i166:                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i160, %.critedge.i.i.i.i166
  %indvars.iv.i4.i.i.i167 = phi i64 [ %indvars.iv.next.i.i.i.i168, %.critedge.i.i.i.i166 ], [ %i.ff, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i160 ]
  %indvars.iv.next.i.i.i.i168 = add nuw nsw i64 %indvars.iv.i4.i.i.i167, 1 ; 3 uses
  %exitcond.not.i.i.i.i169 = icmp ne i64 %indvars.iv.next.i.i.i.i168, %wide.trip.count.i.i.i.i164
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i169)
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %indvars.iv.next.i.i.i.i168
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !235, !noalias !937 ; 2 uses
  %i.fo = lshr i64 %i.fn, 56
  %i.fp = trunc nuw nsw i64 %i.fo to i32
  %.not.i.i.i.i170 = icmp eq i32 %.0.i.i153, %i.fp
  br i1 %.not.i.i.i.i170, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i.i, label %.critedge.i.i.i.i166

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i.i: ; preds = %.critedge.i.i.i.i166, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i160
  %.lcssa.i.i.i171 = phi i64 [ %i.fi, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i160 ], [ %i.fn, %.critedge.i.i.i.i166 ]
  %i.fq = shl i64 %.lcssa.i.i.i171, 8
  %i.fr = ashr exact i64 %i.fq, 8
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.j, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i.i, %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i, %bb.l, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i.i
  %.sroa.0183.0 = phi ptr [ inttoptr (i64 34 to ptr), %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i ], [ inttoptr (i64 34 to ptr), %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i ], [ %i.dy, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i.i ], [ inttoptr (i64 34 to ptr), %..loopexit_crit_edge21.i.i.i.i.i.i.i ], [ inttoptr (i64 34 to ptr), %bb.j ], [ inttoptr (i64 34 to ptr), %bb.l ], [ %i.ft, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i.i ], [ inttoptr (i64 34 to ptr), %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.fu = load i32, ptr %.sroa.0183.0, align 4, !tbaa !284 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0183.0, i64 4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !285 ; 2 uses
  %i.fx = add i32 %i.fw, 2147483647
  %or.cond.i = icmp ult i32 %i.fx, -2
  br i1 %or.cond.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit
  %i.fy = load ptr, ptr %i.n, align 8, !tbaa !266, !nonnull !64, !align !99
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 1568
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !189 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !55
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 752
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = call noundef zeroext i16 %i.gd(ptr noundef nonnull align 8 dereferenceable(536) %i.ga) #31, !inline_history !931
  %i.gf = sext i32 %i.fw to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit
  %.sroa.035.0.i = phi i16 [ %i.ge, %bb.s ], [ 0, %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit ]
  %.sroa.637.0.i = phi i64 [ %i.gf, %bb.s ], [ 0, %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit ]
  %i.gg = add i32 %i.fu, 2147483647
  %or.cond3.i = icmp ult i32 %i.gg, -2
  br i1 %or.cond3.i, label %bb.u, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.t
  %.pre.i = sext i32 %i.fu to i64
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gh = load ptr, ptr %i.n, align 8, !tbaa !266, !nonnull !64, !align !99
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1568
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !189 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !55
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 744
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = call noundef zeroext i16 %i.gm(ptr noundef nonnull align 8 dereferenceable(536) %i.gj) #31, !inline_history !931
  %i.go = sext i32 %i.fu to i64                   ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.go, %bb.u ]
  %.sroa.025.0.i = phi i16 [ 0, %._crit_edge.i ], [ %i.gn, %bb.u ]
  %.sroa.626.0.i = phi i64 [ 0, %._crit_edge.i ], [ %i.go, %bb.u ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.gp = load ptr, ptr %i.n, align 8, !tbaa !266, !nonnull !64, !align !99
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1568
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !189 ; 2 uses
  store i16 %.sroa.035.0.i, ptr %1, align 8
  store i64 %.sroa.637.0.i, ptr %.sroa.637.0..sroa_idx.i, align 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !55
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 728
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = call noundef zeroext i1 %i.gu(ptr noundef nonnull align 8 dereferenceable(536) %i.gr, ptr noundef nonnull align 8 dereferenceable(128) %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i16 %.sroa.025.0.i, i64 %.sroa.626.0.i, ptr noundef nonnull byval(%"struct.std::pair.776") align 8 %1) #31, !inline_history !931
  %i.gw = load i64, ptr %i.b, align 8
  %.not.i = icmp ne i64 %i.gw, %.pre-phi.i
  %or.cond47.not.i = select i1 %i.gv, i1 %.not.i, i1 false
  br i1 %or.cond47.not.i, label %bb.w, label %_ZN4llvm4bolt19StackLayoutModifier15blacklistRegionEll.exit.i

bb.w:                                             ; preds = %bb.v
  %i.gx = load ptr, ptr %i.p, align 8, !tbaa !244 ; 2 uses
  %.not10.i.i.i.i71 = icmp eq ptr %i.gx, null
  br i1 %.not10.i.i.i.i71, label %.critedge.i82, label %.lr.ph.i.i.i.i72

.lr.ph.i.i.i.i72:                                 ; preds = %bb.w, %.lr.ph.i.i.i.i72
  %.012.i.i.i.i73 = phi ptr [ %.1.i.i.i.i78, %.lr.ph.i.i.i.i72 ], [ %i.gx, %bb.w ] ; 3 uses
  %.0811.i.i.i.i74 = phi ptr [ %.19.i.i.i.i75, %.lr.ph.i.i.i.i72 ], [ %i.q, %bb.w ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i73, i64 32
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !123
  %i.ha = icmp slt i64 %i.gz, 0                   ; 2 uses
  %.19.i.i.i.i75 = select i1 %i.ha, ptr %.0811.i.i.i.i74, ptr %.012.i.i.i.i73 ; 6 uses
  %.1.in.v.i.i.i.i76 = select i1 %i.ha, i64 24, i64 16
  %.1.in.i.i.i.i77 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i73, i64 %.1.in.v.i.i.i.i76
  %.1.i.i.i.i78 = load ptr, ptr %.1.in.i.i.i.i77, align 8, !tbaa !245 ; 2 uses
  %.not.i.i.i.i79 = icmp eq ptr %.1.i.i.i.i78, null
  br i1 %.not.i.i.i.i79, label %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEE11lower_boundERS3_.exit.i80, label %.lr.ph.i.i.i.i72, !llvm.loop !6

_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEE11lower_boundERS3_.exit.i80: ; preds = %.lr.ph.i.i.i.i72
  %i.hb = icmp eq ptr %.19.i.i.i.i75, %i.q
  br i1 %i.hb, label %.critedge.i82, label %bb.x

bb.x:                                             ; preds = %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEE11lower_boundERS3_.exit.i80
  %i.hc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i75, i64 32
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !123
  %i.he = icmp sgt i64 %i.hd, 0
  br i1 %i.he, label %.critedge.i82, label %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEEixERS3_.exit88

.critedge.i82:                                    ; preds = %bb.x, %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEE11lower_boundERS3_.exit.i80, %bb.w
  %.08.lcssa.i.i.i14.i83 = phi ptr [ %.19.i.i.i.i75, %bb.x ], [ %.19.i.i.i.i75, %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEE11lower_boundERS3_.exit.i80 ], [ %i.q, %bb.w ]
  %i.hf = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #33 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, i8 0, i64 16, i1 false)
  %i.hh = call { ptr, ptr } @_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr %.08.lcssa.i.i.i14.i83, ptr noundef nonnull align 8 dereferenceable(8) %i.hg) ; 2 uses
  %i.hi = extractvalue { ptr, ptr } %i.hh, 0      ; 2 uses
  %i.hj = extractvalue { ptr, ptr } %i.hh, 1      ; 4 uses
  %.not.i.i84 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i84, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.critedge.i82
  %.not.i.i.i4.i85 = icmp ne ptr %i.hi, null
  %i.hk = icmp eq ptr %i.hj, %i.q
  %or.cond.i.i.i.i86 = select i1 %.not.i.i.i4.i85, i1 true, i1 %i.hk
  br i1 %or.cond.i.i.i.i86, label %.thread.i.i87, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %i.hm = load i64, ptr %i.hg, align 8, !tbaa !123
  %i.hn = load i64, ptr %i.hl, align 8, !tbaa !123
  %i.ho = icmp slt i64 %i.hm, %i.hn
  br label %.thread.i.i87

.thread.i.i87:                                    ; preds = %bb.z, %bb.y
  %i.hp = phi i1 [ %i.ho, %bb.z ], [ true, %bb.y ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.hp, ptr noundef nonnull %i.hf, ptr noundef nonnull %i.hj, ptr noundef nonnull align 8 dereferenceable(32) %i.q) #31
  %i.hq = load i64, ptr %i.r, align 8, !tbaa !249
  %i.hr = add i64 %i.hq, 1
  store i64 %i.hr, ptr %i.r, align 8, !tbaa !249
  br label %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEEixERS3_.exit88

bb.aa:                                            ; preds = %.critedge.i82
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef 48) #34
  br label %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEEixERS3_.exit88

_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEEixERS3_.exit88: ; preds = %bb.x, %.thread.i.i87, %bb.aa
  %.sroa.09.0.i81 = phi ptr [ %.19.i.i.i.i75, %bb.x ], [ %i.hf, %.thread.i.i87 ], [ %i.hi, %bb.aa ]
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i81, i64 40
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !123
  %i.hu = icmp slt i64 %i.ht, 0
  br i1 %i.hu, label %bb.ab, label %_ZN4llvm4bolt19StackLayoutModifier15blacklistRegionEll.exit.i

bb.ab:                                            ; preds = %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEEixERS3_.exit88
  %i.hv = load ptr, ptr %i.p, align 8, !tbaa !244 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.hv, null
  br i1 %.not10.i.i.i.i, label %.critedge.i70, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ab, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.hv, %bb.ab ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.q, %bb.ab ]
  %i.hw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !123
  %i.hy = icmp slt i64 %i.hx, 0                   ; 2 uses
  %.19.i.i.i.i = select i1 %i.hy, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.hy, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !245 ; 2 uses
  %.not.i.i.i.i69 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i69, label %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEE11lower_boundERS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEE11lower_boundERS3_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.hz = icmp eq ptr %.19.i.i.i.i, %i.q
  br i1 %i.hz, label %.critedge.i70, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEE11lower_boundERS3_.exit.i
  %i.ia = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !123
  %i.ic = icmp sgt i64 %i.ib, 0
  br i1 %i.ic, label %.critedge.i70, label %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEEixERS3_.exit

end_hunk_1
begin_hunk_2_@_ZN4llvm4bolt19StackLayoutModifier21classifyStackAccessesEv:bb.a
.lr.ph.i.i.i.i112:                                ; preds = %bb.aj, %.lr.ph.i.i.i.i112
  %.012.i.i.i.i113 = phi ptr [ %.1.i.i.i.i118, %.lr.ph.i.i.i.i112 ], [ %i.jj, %bb.aj ] ; 3 uses
  %.0811.i.i.i.i114 = phi ptr [ %.19.i.i.i.i115, %.lr.ph.i.i.i.i112 ], [ %i.q, %bb.aj ]
  %i.jk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i113, i64 32
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !123
  %i.jm = icmp slt i64 %i.jl, %i.jf               ; 2 uses
  %.19.i.i.i.i115 = select i1 %i.jm, ptr %.0811.i.i.i.i114, ptr %.012.i.i.i.i113 ; 6 uses
  %.1.in.v.i.i.i.i116 = select i1 %i.jm, i64 24, i64 16
  %.1.in.i.i.i.i117 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i113, i64 %.1.in.v.i.i.i.i116
  %.1.i.i.i.i118 = load ptr, ptr %.1.in.i.i.i.i117, align 8, !tbaa !245 ; 2 uses
  %.not.i.i.i.i119 = icmp eq ptr %.1.i.i.i.i118, null
  br i1 %.not.i.i.i.i119, label %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEE11lower_boundERS3_.exit.i120, label %.lr.ph.i.i.i.i112, !llvm.loop !6

_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEE11lower_boundERS3_.exit.i120: ; preds = %.lr.ph.i.i.i.i112
  %i.jn = icmp eq ptr %.19.i.i.i.i115, %i.q
  br i1 %i.jn, label %.critedge.i122, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEE11lower_boundERS3_.exit.i120
  %i.jo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i115, i64 32
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !123
  %i.jq = icmp slt i64 %i.jf, %i.jp
  br i1 %i.jq, label %.critedge.i122, label %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEEixERS3_.exit128

.critedge.i122:                                   ; preds = %bb.ak, %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEE11lower_boundERS3_.exit.i120, %bb.aj
  %.08.lcssa.i.i.i14.i123 = phi ptr [ %.19.i.i.i.i115, %bb.ak ], [ %.19.i.i.i.i115, %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEE11lower_boundERS3_.exit.i120 ], [ %i.q, %bb.aj ]
  %i.jr = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #33 ; 5 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 32 ; 3 uses
  store i64 %i.jf, ptr %i.js, align 8, !tbaa !247
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 40
  store i64 0, ptr %i.jt, align 8, !tbaa !248
  %i.ju = call { ptr, ptr } @_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr %.08.lcssa.i.i.i14.i123, ptr noundef nonnull align 8 dereferenceable(8) %i.js) ; 2 uses
  %i.jv = extractvalue { ptr, ptr } %i.ju, 0      ; 2 uses
  %i.jw = extractvalue { ptr, ptr } %i.ju, 1      ; 4 uses
  %.not.i.i124 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i124, label %bb.an, label %bb.al

bb.al:                                            ; preds = %.critedge.i122
  %.not.i.i.i4.i125 = icmp ne ptr %i.jv, null
  %i.jx = icmp eq ptr %i.jw, %i.q
  %or.cond.i.i.i.i126 = select i1 %.not.i.i.i4.i125, i1 true, i1 %i.jx
  br i1 %or.cond.i.i.i.i126, label %.thread.i.i127, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %i.jz = load i64, ptr %i.js, align 8, !tbaa !123
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !123
  %i.kb = icmp slt i64 %i.jz, %i.ka
  br label %.thread.i.i127

.thread.i.i127:                                   ; preds = %bb.am, %bb.al
  %i.kc = phi i1 [ %i.kb, %bb.am ], [ true, %bb.al ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.kc, ptr noundef nonnull %i.jr, ptr noundef nonnull %i.jw, ptr noundef nonnull align 8 dereferenceable(32) %i.q) #31
  %i.kd = load i64, ptr %i.r, align 8, !tbaa !249
  %i.ke = add i64 %i.kd, 1
  store i64 %i.ke, ptr %i.r, align 8, !tbaa !249
  br label %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEEixERS3_.exit128

bb.an:                                            ; preds = %.critedge.i122
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef 48) #34
  br label %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEEixERS3_.exit128

_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEEixERS3_.exit128: ; preds = %bb.ak, %.thread.i.i127, %bb.an
  %.sroa.09.0.i121 = phi ptr [ %.19.i.i.i.i115, %bb.ak ], [ %i.jr, %.thread.i.i127 ], [ %i.jv, %bb.an ]
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i121, i64 40
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !123
  %i.kh = icmp slt i64 %i.kg, %i.ji
  br i1 %i.kh, label %bb.ao, label %_ZN4llvm4bolt19StackLayoutModifier15blacklistRegionEll.exit

bb.ao:                                            ; preds = %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEEixERS3_.exit128
  %i.ki = load ptr, ptr %i.p, align 8, !tbaa !244 ; 2 uses
  %.not10.i.i.i.i93 = icmp eq ptr %i.ki, null
  br i1 %.not10.i.i.i.i93, label %.critedge.i104, label %.lr.ph.i.i.i.i94

.lr.ph.i.i.i.i94:                                 ; preds = %bb.ao, %.lr.ph.i.i.i.i94
  %.012.i.i.i.i95 = phi ptr [ %.1.i.i.i.i100, %.lr.ph.i.i.i.i94 ], [ %i.ki, %bb.ao ] ; 3 uses
  %.0811.i.i.i.i96 = phi ptr [ %.19.i.i.i.i97, %.lr.ph.i.i.i.i94 ], [ %i.q, %bb.ao ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i95, i64 32
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !123
  %i.kl = icmp slt i64 %i.kk, %i.jf               ; 2 uses
  %.19.i.i.i.i97 = select i1 %i.kl, ptr %.0811.i.i.i.i96, ptr %.012.i.i.i.i95 ; 6 uses
  %.1.in.v.i.i.i.i98 = select i1 %i.kl, i64 24, i64 16
  %.1.in.i.i.i.i99 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i95, i64 %.1.in.v.i.i.i.i98
  %.1.i.i.i.i100 = load ptr, ptr %.1.in.i.i.i.i99, align 8, !tbaa !245 ; 2 uses
  %.not.i.i.i.i101 = icmp eq ptr %.1.i.i.i.i100, null
  br i1 %.not.i.i.i.i101, label %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEE11lower_boundERS3_.exit.i102, label %.lr.ph.i.i.i.i94, !llvm.loop !6

_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEE11lower_boundERS3_.exit.i102: ; preds = %.lr.ph.i.i.i.i94
  %i.km = icmp eq ptr %.19.i.i.i.i97, %i.q
  br i1 %i.km, label %.critedge.i104, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEE11lower_boundERS3_.exit.i102
  %i.kn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i97, i64 32
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !123
  %i.kp = icmp slt i64 %i.jf, %i.ko
  br i1 %i.kp, label %.critedge.i104, label %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEEixERS3_.exit110

.critedge.i104:                                   ; preds = %bb.ap, %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEE11lower_boundERS3_.exit.i102, %bb.ao
  %.08.lcssa.i.i.i14.i105 = phi ptr [ %.19.i.i.i.i97, %bb.ap ], [ %.19.i.i.i.i97, %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEE11lower_boundERS3_.exit.i102 ], [ %i.q, %bb.ao ]
  %i.kq = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #33 ; 5 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 32 ; 3 uses
  store i64 %i.jf, ptr %i.kr, align 8, !tbaa !247
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 40
  store i64 0, ptr %i.ks, align 8, !tbaa !248
  %i.kt = call { ptr, ptr } @_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr %.08.lcssa.i.i.i14.i105, ptr noundef nonnull align 8 dereferenceable(8) %i.kr) ; 2 uses
  %i.ku = extractvalue { ptr, ptr } %i.kt, 0      ; 2 uses
  %i.kv = extractvalue { ptr, ptr } %i.kt, 1      ; 4 uses
  %.not.i.i106 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i106, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.critedge.i104
  %.not.i.i.i4.i107 = icmp ne ptr %i.ku, null
  %i.kw = icmp eq ptr %i.kv, %i.q
  %or.cond.i.i.i.i108 = select i1 %.not.i.i.i4.i107, i1 true, i1 %i.kw
  br i1 %or.cond.i.i.i.i108, label %.thread.i.i109, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.ky = load i64, ptr %i.kr, align 8, !tbaa !123
  %i.kz = load i64, ptr %i.kx, align 8, !tbaa !123
  %i.la = icmp slt i64 %i.ky, %i.kz
  br label %.thread.i.i109

.thread.i.i109:                                   ; preds = %bb.ar, %bb.aq
  %i.lb = phi i1 [ %i.la, %bb.ar ], [ true, %bb.aq ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.lb, ptr noundef nonnull %i.kq, ptr noundef nonnull %i.kv, ptr noundef nonnull align 8 dereferenceable(32) %i.q) #31
  %i.lc = load i64, ptr %i.r, align 8, !tbaa !249
  %i.ld = add i64 %i.lc, 1
  store i64 %i.ld, ptr %i.r, align 8, !tbaa !249
  br label %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEEixERS3_.exit110

bb.as:                                            ; preds = %.critedge.i104
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef 48) #34
  br label %_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEEixERS3_.exit110

_ZNSt3mapIllSt4lessIlESaISt4pairIKllEEEixERS3_.exit110: ; preds = %bb.ap, %.thread.i.i109, %bb.as
  %.sroa.09.0.i103 = phi ptr [ %.19.i.i.i.i97, %bb.ap ], [ %i.kq, %.thread.i.i109 ], [ %i.ku, %bb.as ]
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i103, i64 40
  store i64 %i.ji, ptr %i.le, align 8, !tbaa !123
  br label %_ZN4llvm4bolt19StackLayoutModifier15blacklistRegionEll.exit

bb.at:                                            ; preds = %bb.ai, %bb.ah
  %.not = icmp eq ptr %.022238, null
  br i1 %.not, label %bb.bc, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !938)
  %i.lf = load ptr, ptr %i.t, align 8, !tbaa !323, !noalias !939, !nonnull !64, !align !99
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 1568
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !189, !noalias !939 ; 2 uses
  %i.li = load i8, ptr %i.v, align 4, !tbaa !190, !range !63, !noalias !939, !noundef !64
  %i.lj = trunc nuw i8 %i.li to i1
  br i1 %i.lj, label %._crit_edge.i.i, label %bb.av

._crit_edge.i.i:                                  ; preds = %bb.au
  %.0.pre.i.i = load i32, ptr %i.u, align 8, !tbaa !191, !noalias !939
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit.i

bb.av:                                            ; preds = %bb.au
  %i.lk = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.lh, ptr nonnull @.str.42, i64 17), !noalias !939 ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.lk to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.u, align 8, !noalias !939
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit.i

_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit.i: ; preds = %bb.av, %._crit_edge.i.i
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.lk, %bb.av ] ; 3 uses
  %i.ll = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.lh, ptr noundef nonnull align 8 dereferenceable(128) %.022238, i32 noundef %.0.i.i) #31, !noalias !940
  br i1 %i.ll, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit.i
  %i.lm = getelementptr inbounds nuw i8, ptr %.022238, i64 24
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !121, !noalias !940 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.ln, -1         ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.022238, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !67, !noalias !940 ; 4 uses
  %i.lq = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.lp, i64 %i.lq ; 2 uses
  %i.ls = load i8, ptr %i.lr, align 8, !tbaa !234, !noalias !940
  %i.lt = icmp eq i8 %i.ls, 6
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8, !noalias !940
  %i.lw = icmp eq ptr %i.lv, null
  %i.lx = select i1 %i.lt, i1 %i.lw, i1 false
  br i1 %i.lx, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.aw, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.lq, %bb.aw ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.ly = icmp sgt i64 %indvars.iv.i.i.i, 0
  call void @llvm.assume(i1 %i.ly), !noalias !938
  %i.lz = getelementptr inbounds nuw [16 x i8], ptr %i.lp, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.ma = load i8, ptr %i.lz, align 8, !tbaa !234, !noalias !940
  %i.mb = icmp eq i8 %i.ma, 6
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !noalias !940
  %i.me = icmp eq ptr %i.md, null
  %i.mf = select i1 %i.mb, i1 %i.me, i1 false
  br i1 %i.mf, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.mg = trunc nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.aw
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.aw ], [ %i.mg, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.ln, %.01318.i.i.i.lcssa.i.i.i
  %i.mh = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.mh, %i.ln
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i), !noalias !938
  call void @llvm.assume(i1 %.not1324.i.i.i.i), !noalias !938
  %i.mi = zext i32 %i.mh to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i129 = zext i32 %i.ln to i64
  %i.mj = getelementptr inbounds nuw [16 x i8], ptr %i.lp, i64 %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !235, !noalias !940 ; 2 uses
  %i.mm = lshr i64 %i.ml, 56
  %i.mn = trunc nuw nsw i64 %i.mm to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.mn
  br i1 %.not.i3.i.i.i, label %.loopexit213, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i130, %.critedge.i.i.i.i ], [ %i.mi, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i130 = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i131 = icmp ne i64 %indvars.iv.next.i.i.i.i130, %wide.trip.count.i.i.i.i129
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i131), !noalias !938
  %i.mo = getelementptr inbounds nuw [16 x i8], ptr %i.lp, i64 %indvars.iv.next.i.i.i.i130
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !235, !noalias !940 ; 2 uses
  %i.mr = lshr i64 %i.mq, 56
  %i.ms = trunc nuw nsw i64 %i.mr to i32
  %.not.i.i.i.i132 = icmp eq i32 %.0.i.i, %i.ms
  br i1 %.not.i.i.i.i132, label %.loopexit213, label %.critedge.i.i.i.i

.loopexit213:                                     ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.ml, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.mq, %.critedge.i.i.i.i ]
  %i.mt = shl i64 %.lcssa.i.i.i, 8
  %i.mu = ashr exact i64 %i.mt, 8
  %i.mv = inttoptr i64 %i.mu to ptr               ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8 ; 2 uses
  store ptr %i.mw, ptr %3, align 8, !tbaa !145, !alias.scope !938
  store ptr %i.w, ptr %i.x, align 8, !tbaa !146, !alias.scope !938
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 72
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !124, !noalias !938 ; 2 uses
  %i.mz = icmp eq i32 %i.my, 0
  br i1 %i.mz, label %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17StackReachingUsesELb1ENS0_12StatePrinterINS_9BitVectorEEEE10expr_beginINS_6MCInstEEENS0_12ExprIteratorERKT_.exit, label %bb.ax

bb.ax:                                            ; preds = %.loopexit213
  %i.na = add i32 %i.my, -1                       ; 2 uses
  %i.nb = lshr i32 %i.na, 6                       ; 3 uses
  %i.nc = load ptr, ptr %i.mw, align 8, !tbaa !67, !noalias !938 ; 2 uses
  %i.nd = and i32 %i.na, 63
  %i.ne = xor i32 %i.nd, 63
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = lshr i64 -1, %i.nf                      ; 2 uses
  %i.nh = zext nneg i32 %i.nb to i64
  %i.ni = add nuw nsw i32 %i.nb, 1
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.ni to i64
  %i.nj = load i64, ptr %i.nc, align 8, !tbaa !123, !noalias !938
  %i.nk = icmp eq i32 %i.nb, 0                    ; 2 uses
  %i.nl = select i1 %i.nk, i64 %i.ng, i64 -1
  %.230.peel.i.i.i.i = and i64 %i.nj, %i.nl       ; 2 uses
  %.not37.peel.i.i.i.i = icmp eq i64 %.230.peel.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.nk, label %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17StackReachingUsesELb1ENS0_12StatePrinterINS_9BitVectorEEEE10expr_beginINS_6MCInstEEENS0_12ExprIteratorERKT_.exit, label %.peel.next.i.i.i.i

.peel.next.i.i.i.i:                               ; preds = %bb.ay, %bb.ba
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.ba ], [ 1, %bb.ay ] ; 4 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nc, i64 %indvars.iv.i.i.i.i
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !123, !noalias !938
  %i.no = icmp eq i64 %indvars.iv.i.i.i.i, %i.nh
  %i.np = select i1 %i.no, i64 %i.ng, i64 -1
  %.230.i.i.i.i = and i64 %i.np, %i.nn            ; 2 uses
  %.not37.i.i.i.i = icmp eq i64 %.230.i.i.i.i, 0
  br i1 %.not37.i.i.i.i, label %bb.ba, label %.loopexit48.i.i.i.i

.loopexit48.i.i.i.i:                              ; preds = %.peel.next.i.i.i.i
  %.pre.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  %i.nq = shl nuw i32 %.pre.i.i.i.i, 6
  br label %bb.az

bb.az:                                            ; preds = %.loopexit48.i.i.i.i, %bb.ax
  %.pre-phi.i.i.i.i = phi i32 [ %i.nq, %.loopexit48.i.i.i.i ], [ 0, %bb.ax ]
  %.230.lcssa.i.i.i.i = phi i64 [ %.230.i.i.i.i, %.loopexit48.i.i.i.i ], [ %.230.peel.i.i.i.i, %bb.ax ]
  %i.nr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i.i, i1 true)
  %i.ns = trunc nuw nsw i64 %i.nr to i32
  %i.nt = or disjoint i32 %.pre-phi.i.i.i.i, %i.ns
  br label %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17StackReachingUsesELb1ENS0_12StatePrinterINS_9BitVectorEEEE10expr_beginINS_6MCInstEEENS0_12ExprIteratorERKT_.exit

bb.ba:                                            ; preds = %.peel.next.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17StackReachingUsesELb1ENS0_12StatePrinterINS_9BitVectorEEEE10expr_beginINS_6MCInstEEENS0_12ExprIteratorERKT_.exit, label %.peel.next.i.i.i.i, !llvm.loop !1

bb.bb:                                            ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit.i
  store ptr null, ptr %3, align 8, !tbaa !145, !alias.scope !941
  store ptr %i.w, ptr %i.x, align 8, !tbaa !146, !alias.scope !941
  br label %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17StackReachingUsesELb1ENS0_12StatePrinterINS_9BitVectorEEEE10expr_beginINS_6MCInstEEENS0_12ExprIteratorERKT_.exit

bb.bc:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  %i.nu = load i64, ptr %i.z, align 8, !tbaa !156, !noalias !943
  %.not.not.i.i.i.i = icmp eq i64 %i.nu, 0
  br i1 %.not.not.i.i.i.i, label %.preheader, label %bb.be

.preheader:                                       ; preds = %bb.bc, %bb.bd
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.bd ], [ %i.ac, %bb.bc ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !157, !noalias !943 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.loopexit6.i, label %bb.bd

bb.bd:                                            ; preds = %.preheader
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !127, !noalias !943
  %i.nx = icmp eq ptr %i.ak, %i.nw
  br i1 %i.nx, label %.loopexit7.i, label %.preheader, !llvm.loop !2

bb.be:                                            ; preds = %bb.bc
  %i.ny = load i64, ptr %i.ab, align 8, !tbaa !158, !noalias !943 ; 2 uses
  %i.nz = urem i64 %i.ao, %i.ny                   ; 2 uses
  %i.oa = load ptr, ptr %i.aa, align 8, !tbaa !159, !noalias !943
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %i.nz
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !160, !noalias !943 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.oc, null
  br i1 %.not.i.i.i.i.i.i, label %.loopexit6.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !157, !noalias !943 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !127, !noalias !943
  %i.og = icmp eq ptr %i.ak, %i.of
  br i1 %i.og, label %.loopexit7.i, label %.lr.ph.i.i.i.i.i.i

bb.bg:                                            ; preds = %bb.bh
  %i.oh = icmp eq ptr %i.ak, %i.ok
  br i1 %i.oh, label %.loopexit7.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bf, %bb.bg
  %.020.i.i.i.i.i.i = phi ptr [ %i.oi, %bb.bg ], [ %i.od, %bb.bf ]
  %i.oi = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !157, !noalias !943 ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.oi, null
  br i1 %.not18.i.i.i.i.i.i, label %.loopexit6.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !127, !noalias !943 ; 2 uses
  %i.ol = ptrtoint ptr %i.ok to i64
  %i.om = urem i64 %i.ol, %i.ny
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.om, %i.nz
  br i1 %.not19.i.i.i.i.i.i, label %bb.bg, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.bh
  br label %.loopexit6.i, !llvm.loop !3

.loopexit7.i:                                     ; preds = %bb.bg, %bb.bd, %bb.bf
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.bd ], [ %i.od, %bb.bf ], [ %i.oi, %bb.bg ] ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.on, ptr %3, align 8, !tbaa !145, !alias.scope !942
  store ptr %i.w, ptr %i.x, align 8, !tbaa !146, !alias.scope !942
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 80
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !124, !noalias !942 ; 2 uses
  %i.oq = icmp eq i32 %i.op, 0
  br i1 %i.oq, label %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17StackReachingUsesELb1ENS0_12StatePrinterINS_9BitVectorEEEE10expr_beginINS_6MCInstEEENS0_12ExprIteratorERKT_.exit, label %bb.bi

bb.bi:                                            ; preds = %.loopexit7.i
  %i.or = add i32 %i.op, -1                       ; 2 uses
  %i.os = lshr i32 %i.or, 6                       ; 3 uses
  %i.ot = load ptr, ptr %i.on, align 8, !tbaa !67, !noalias !942 ; 2 uses
  %i.ou = and i32 %i.or, 63
  %i.ov = xor i32 %i.ou, 63
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = lshr i64 -1, %i.ow                      ; 2 uses
  %i.oy = zext nneg i32 %i.os to i64
  %i.oz = add nuw nsw i32 %i.os, 1
  %wide.trip.count.i.i.i.i23 = zext nneg i32 %i.oz to i64
  %i.pa = load i64, ptr %i.ot, align 8, !tbaa !123, !noalias !942
  %i.pb = icmp eq i32 %i.os, 0                    ; 2 uses
  %i.pc = select i1 %i.pb, i64 %i.ox, i64 -1
  %.230.peel.i.i.i.i24 = and i64 %i.pa, %i.pc     ; 2 uses
  %.not37.peel.i.i.i.i25 = icmp eq i64 %.230.peel.i.i.i.i24, 0
  br i1 %.not37.peel.i.i.i.i25, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.pb, label %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17StackReachingUsesELb1ENS0_12StatePrinterINS_9BitVectorEEEE10expr_beginINS_6MCInstEEENS0_12ExprIteratorERKT_.exit, label %.peel.next.i.i.i.i28

.peel.next.i.i.i.i28:                             ; preds = %bb.bj, %bb.bl
  %indvars.iv.i.i.i.i29 = phi i64 [ %indvars.iv.next.i.i.i.i34, %bb.bl ], [ 1, %bb.bj ] ; 4 uses
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %indvars.iv.i.i.i.i29
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !123, !noalias !942
  %i.pf = icmp eq i64 %indvars.iv.i.i.i.i29, %i.oy
  %i.pg = select i1 %i.pf, i64 %i.ox, i64 -1
  %.230.i.i.i.i30 = and i64 %i.pg, %i.pe          ; 2 uses
  %.not37.i.i.i.i31 = icmp eq i64 %.230.i.i.i.i30, 0
  br i1 %.not37.i.i.i.i31, label %bb.bl, label %.loopexit48.i.i.i.i32

.loopexit48.i.i.i.i32:                            ; preds = %.peel.next.i.i.i.i28
  %.pre.i.i.i.i33 = trunc nuw nsw i64 %indvars.iv.i.i.i.i29 to i32
  %i.ph = shl nuw i32 %.pre.i.i.i.i33, 6
  br label %bb.bk

end_hunk_2
begin_hunk_3_@_ZN4llvm4bolt19StackLayoutModifier12classifyCFIsEv:bb.a
  br label %_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE4pushEOS1_.exit

_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE4pushEOS1_.exit: ; preds = %bb.cw, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %"_ZZN4llvm4bolt19StackLayoutModifier12classifyCFIsEvENK3$_0clEPNS_6MCInstEl.exit50"

bb.cy:                                            ; preds = %_ZNK4llvm4bolt14BinaryFunction9getCFIForERKNS_6MCInstE.exit
  %i.wo = load ptr, ptr %i.j, align 8, !tbaa !464, !noalias !952 ; 3 uses
  %i.wp = load ptr, ptr %i.l, align 8, !tbaa !332, !noalias !952 ; 2 uses
  %i.wq = icmp eq ptr %i.wo, %i.wp
  br i1 %i.wq, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.wr = getelementptr inbounds i8, ptr %i.wo, i64 -16 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.wr, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.wo, i64 -8
  %.sroa.4.0.copyload = load i16, ptr %.sroa.4.0..sroa_idx, align 8
  br label %_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE3popEv.exit

bb.da:                                            ; preds = %bb.cy
  %i.ws = load ptr, ptr %i.k, align 8, !tbaa !331, !noalias !952
  %i.wt = getelementptr inbounds i8, ptr %i.ws, i64 -8
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !330 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 496
  %.sroa.0.0.copyload173 = load i64, ptr %i.wv, align 8
  %.sroa.4.0..sroa_idx174 = getelementptr inbounds nuw i8, ptr %i.wu, i64 504
  %.sroa.4.0.copyload175 = load i16, ptr %.sroa.4.0..sroa_idx174, align 8
  call void @_ZdlPvm(ptr noundef %i.wp, i64 noundef 512) #34
  %i.ww = load ptr, ptr %i.k, align 8, !tbaa !336
  %i.wx = getelementptr inbounds i8, ptr %i.ww, i64 -8 ; 2 uses
  store ptr %i.wx, ptr %i.k, align 8, !tbaa !331
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !330 ; 3 uses
  store ptr %i.wy, ptr %i.l, align 8, !tbaa !332
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 512
  store ptr %i.wz, ptr %i.m, align 8, !tbaa !333
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wy, i64 496
  br label %_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE3popEv.exit

_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE3popEv.exit: ; preds = %bb.cz, %bb.da
  %.sroa.4.0.copyload178 = phi i16 [ %.sroa.4.0.copyload, %bb.cz ], [ %.sroa.4.0.copyload175, %bb.da ]
  %.sroa.0.0.copyload176 = phi i64 [ %.sroa.0.0.copyload, %bb.cz ], [ %.sroa.0.0.copyload173, %bb.da ]
  %storemerge.i.i = phi ptr [ %i.wr, %bb.cz ], [ %i.xa, %bb.da ]
  store ptr %storemerge.i.i, ptr %i.j, align 8, !tbaa !334
  br label %"_ZZN4llvm4bolt19StackLayoutModifier12classifyCFIsEvENK3$_0clEPNS_6MCInstEl.exit50"

"_ZZN4llvm4bolt19StackLayoutModifier12classifyCFIsEvENK3$_0clEPNS_6MCInstEl.exit50": ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cq, %bb.cp, %bb.bo, %bb.bn, %bb.bm, %bb.bk, %bb.bj, %bb.y, %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationIlEERKT_RNS_6MCInstEjS5_t.exit.i44, %_ZNK4llvm16MCCFIInstruction11getRegisterEv.exit, %_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE4pushEOS1_.exit, %_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE3popEv.exit, %_ZNK4llvm4bolt14BinaryFunction9getCFIForERKNS_6MCInstE.exit, %.lr.ph
  %.2172 = phi i16 [ %.1171217, %_ZNK4llvm4bolt14BinaryFunction9getCFIForERKNS_6MCInstE.exit ], [ %i.eq, %_ZNK4llvm16MCCFIInstruction11getRegisterEv.exit ], [ %.1171217, %.lr.ph ], [ %.1171217, %bb.y ], [ %.1171217, %bb.bo ], [ %.1171217, %_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE4pushEOS1_.exit ], [ %.sroa.4.0.copyload178, %_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE3popEv.exit ], [ %.1171217, %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationIlEERKT_RNS_6MCInstEjS5_t.exit.i44 ], [ %.1171217, %bb.bj ], [ %.1171217, %bb.bk ], [ %.1171217, %bb.bm ], [ %.1171217, %bb.bn ], [ %.1171217, %bb.cp ], [ %.1171217, %bb.cq ], [ %.1171217, %bb.cs ], [ %.1171217, %bb.ct ], [ %.1171217, %bb.cu ] ; 2 uses
  %.3 = phi i64 [ %.1220, %_ZNK4llvm4bolt14BinaryFunction9getCFIForERKNS_6MCInstE.exit ], [ %.2, %_ZNK4llvm16MCCFIInstruction11getRegisterEv.exit ], [ %.1220, %.lr.ph ], [ %i.ev, %bb.y ], [ %.1220, %bb.bo ], [ %.1220, %_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE4pushEOS1_.exit ], [ %.sroa.0.0.copyload176, %_ZNSt5stackISt4pairIltESt5dequeIS1_SaIS1_EEE3popEv.exit ], [ %i.ev, %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationIlEERKT_RNS_6MCInstEjS5_t.exit.i44 ], [ %.1220, %bb.bj ], [ %.1220, %bb.bk ], [ %.1220, %bb.bm ], [ %.1220, %bb.bn ], [ %.1220, %bb.cp ], [ %.1220, %bb.cq ], [ %.1220, %bb.cs ], [ %.1220, %bb.ct ], [ %.1220, %bb.cu ] ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.sroa.0154.0223, i64 128 ; 2 uses
  %.not180 = icmp eq ptr %i.xb, %i.aq
  br i1 %.not180, label %._crit_edge, label %.lr.ph
}

declare i64 @_ZNK4llvm14MCRegisterInfo13getLLVMRegNumEmb(ptr noundef nonnull align 8 dereferenceable(240), i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt19StackLayoutModifier14scheduleChangeERNS_6MCInstENS1_12WorklistItemE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(260) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i8 %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !266, !nonnull !64, !align !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.g = load i8, ptr %i.f, align 8, !tbaa !190, !range !63, !noundef !64
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 4, !tbaa !191
  br label %_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.33, i64 11) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 4
  br label %_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit

_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i16, ptr %i.j, align 8, !tbaa !313
  %i.l = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEERT_RNS_6MCInstEjt(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %.0.i, i16 noundef zeroext %i.k) ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !467  ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !468
  %.not.i = icmp eq ptr %i.n, %i.p
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit
  store i8 %2, ptr %i.n, align 8, !tbaa !470
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %3, ptr %.sroa.35.0..sroa_idx, align 8, !tbaa !123
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.q, ptr %i.m, align 8, !tbaa !467
  br label %_ZNSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EE9push_backERKS3_.exit

bb.d:                                             ; preds = %_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !471  ; 5 uses
  %i.s = ptrtoint ptr %i.n to i64
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775792
  br i1 %i.v, label %bb.e, label %_ZNKSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #32
  unreachable

_ZNKSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.w = ashr exact i64 %i.u, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 576460752303423487)
  %i.aa = select i1 %i.y, i64 576460752303423487, i64 %i.z ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 4
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #33 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u ; 2 uses
  store i8 %2, ptr %i.ad, align 8, !tbaa !470
  %.sroa.35.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %3, ptr %.sroa.35.0..sroa_idx6, align 8, !tbaa !123
  %.not10.i.i.i.i.i = icmp eq ptr %i.r, %i.n
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.ac, %_ZNKSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !472, !alias.scope !956
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %i.n
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !13

_ZNSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ac, %_ZNKSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !468
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.aj) #34
  br label %_ZNSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ac, ptr %i.l, align 8, !tbaa !471
  store ptr %i.ag, ptr %i.m, align 8, !tbaa !467
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.ak, ptr %i.o, align 8, !tbaa !468
  br label %_ZNSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.c, %_ZNSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEERT_RNS_6MCInstEjt(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::vector.831", align 8   ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2) #31, !noalias !959
  br i1 %i.a, label %bb.b, label %_ZN4llvm7ErrorOrIRKSt6vectorINS_4bolt19StackLayoutModifier12WorklistItemESaIS4_EEEaSEOS9_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !121, !noalias !959 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.c, -1            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67, !noalias !959 ; 4 uses
  %i.f = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !234, !noalias !959
  %i.i = icmp eq i8 %i.h, 6
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !959
  %i.l = icmp eq ptr %i.k, null
  %i.m = select i1 %i.i, i1 %i.l, i1 false
  br i1 %i.m, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.b, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.n = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.next.i.i ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !234, !noalias !959
  %i.q = icmp eq i8 %i.p, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !959
  %i.t = icmp eq ptr %i.s, null
  %i.u = select i1 %i.q, i1 %i.t, i1 false
  br i1 %i.u, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.v = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.b
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.b ], [ %i.v, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.c, %.01318.i.i.i.lcssa.i.i
  %i.w = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1   ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.w, %i.c
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.c to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !235, !noalias !959 ; 2 uses
  %i.ab = lshr i64 %i.aa, 56
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %.not.i3.i.i = icmp eq i32 %2, %i.ac
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.x, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.next.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !235, !noalias !959 ; 2 uses
  %i.ag = lshr i64 %i.af, 56
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %.not.i.i.i = icmp eq i32 %2, %i.ah
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.aa, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.af, %.critedge.i.i.i ]
  %i.ai = shl i64 %.lcssa.i.i, 8
  %i.aj = ashr exact i64 %i.ai, 8
  %i.ak = add nuw nsw i64 %i.aj, 8
  %i.al = inttoptr i64 %i.ak to ptr
  br label %bb.d

_ZN4llvm7ErrorOrIRKSt6vectorINS_4bolt19StackLayoutModifier12WorklistItemESaIS4_EEEaSEOS9_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.am = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEERKT_RNS_6MCInstEjSA_t(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i16 noundef zeroext %3)
  %i.an = load ptr, ptr %4, align 8, !tbaa !471   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm7ErrorOrIRKSt6vectorINS_4bolt19StackLayoutModifier12WorklistItemESaIS4_EEEaSEOS9_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !468
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #34
  br label %_ZNSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EED2Ev.exit

_ZNSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EED2Ev.exit: ; preds = %_ZN4llvm7ErrorOrIRKSt6vectorINS_4bolt19StackLayoutModifier12WorklistItemESaIS4_EEEaSEOS9_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, %_ZNSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EED2Ev.exit
  %.sroa.0.sroa.011.0.in = phi ptr [ %i.al, %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread ], [ %i.am, %_ZNSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EED2Ev.exit ]
  ret ptr %.sroa.0.sroa.011.0.in
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEPNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(260) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ErrorOr", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !456, !range !63, !noundef !64
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !266, !nonnull !64, !align !99
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1568
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !189  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(536) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %1) #31
  br i1 %i.k, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.l = load ptr, ptr %0, align 8, !tbaa !320, !nonnull !64, !align !99
  call void @_ZNK4llvm4bolt13FrameAnalysis9getFIEForERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(264) %i.l, ptr noundef nonnull align 8 dereferenceable(128) %1) #31
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i8, ptr %i.m, align 8
  %i.o = trunc i8 %i.n to i1
  br i1 %i.o, label %_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %2, align 8, !tbaa !133
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !136  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 233 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !473, !range !63, !noundef !64
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm4bolt19StackLayoutModifier21classifyStackAccessesEv(ptr noundef nonnull align 8 dereferenceable(260) %0)
  call void @_ZN4llvm4bolt19StackLayoutModifier12classifyCFIsEv(ptr noundef nonnull align 8 dereferenceable(260) %0)
  store i8 1, ptr %i.s, align 1, !tbaa !473
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = load i8, ptr %i.a, align 8, !tbaa !456, !range !63, !noundef !64
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !474, !noalias !964
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !475, !noalias !964 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !476, !noalias !964 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add i32 %i.ac, -1                       ; 2 uses
  %i.af = trunc i64 %i.r to i32
  %i.ag = mul i32 %i.af, 37
  %.019.i.i.i.i.i = and i32 %i.ae, %i.ag          ; 3 uses
  %i.ah = zext i32 %.019.i.i.i.i.i to i64         ; 2 uses
  %i.ai = lshr i64 %i.ah, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !191
  %i.al = and i32 %.019.i.i.i.i.i, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %.loopexit.i, !prof !289

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ao = add nuw i32 %.020.i.i.i.i.i, 1
  %.0.i.i.i.i.i = and i32 %i.ao, %i.ae            ; 3 uses
  %i.ap = zext i32 %.0.i.i.i.i.i to i64           ; 2 uses
  %i.aq = lshr i64 %i.ap, 5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !191
  %i.at = and i32 %.0.i.i.i.i.i, 31
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i, label %.loopexit.i, !prof !290

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %i.aw = phi i64 [ %i.ap, %bb.i ], [ %i.ah, %bb.h ]
  %.020.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.i ], [ %.019.i.i.i.i.i, %bb.h ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !123
  %i.az = icmp eq i64 %i.r, %i.ay
  br i1 %i.az, label %_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl.exit, label %bb.i, !prof !210

.loopexit.i:                                      ; preds = %bb.i, %bb.h, %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !249
  %i.bc = icmp eq i64 %i.bb, 0
  br label %_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl.exit

_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl.exit: ; preds = %.lr.ph.i.i.i.i.i, %.loopexit.i, %bb.f, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.f ], [ %i.bc, %.loopexit.i ], [ true, %.lr.ph.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl.exit
  %.1 = phi i1 [ %.0, %_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl(ptr noundef nonnull align 8 dereferenceable(260) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 233 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !473, !range !63, !noundef !64
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm4bolt19StackLayoutModifier21classifyStackAccessesEv(ptr noundef nonnull align 8 dereferenceable(260) %0)
  tail call void @_ZN4llvm4bolt19StackLayoutModifier12classifyCFIsEv(ptr noundef nonnull align 8 dereferenceable(260) %0)
  store i8 1, ptr %i.a, align 1, !tbaa !473
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.e = load i8, ptr %i.d, align 8, !tbaa !456, !range !63, !noundef !64
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %_ZNK4llvm6detail12DenseSetImplIlNS_8DenseMapIlNS0_13DenseSetEmptyENS_12DenseMapInfoIlvEENS0_12DenseSetPairIlEEEEE5countERKl.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !474, !noalias !969
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !475, !noalias !969 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4llvm4bolt19StackLayoutModifier14collapseRegionEPNS_6MCInstEll:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm4bolt19StackLayoutModifier21classifyStackAccessesEv(ptr noundef nonnull align 8 dereferenceable(260) %0)
  tail call void @_ZN4llvm4bolt19StackLayoutModifier12classifyCFIsEv(ptr noundef nonnull align 8 dereferenceable(260) %0)
  store i8 1, ptr %i.b, align 1, !tbaa !473
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load i8, ptr %i.e, align 8, !tbaa !456, !range !63, !noundef !64
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl.exit.thread66

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !474, !noalias !994
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !475, !noalias !994 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.m = load i32, ptr %i.l, align 4, !tbaa !476, !noalias !994 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add i32 %i.m, -1                         ; 2 uses
  %i.p = trunc i64 %2 to i32
  %i.q = mul i32 %i.p, 37
  %.019.i.i.i.i.i = and i32 %i.o, %i.q            ; 3 uses
  %i.r = zext i32 %.019.i.i.i.i.i to i64          ; 2 uses
  %i.s = lshr i64 %i.r, 5
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !191
  %i.v = and i32 %.019.i.i.i.i.i, 31
  %i.w = lshr i32 %i.u, %i.v
  %i.x = trunc i32 %i.w to i1
  br i1 %i.x, label %.lr.ph.i.i.i.i.i, label %_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl.exit, !prof !289

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.y = add nuw i32 %.020.i.i.i.i.i, 1
  %.0.i.i.i.i.i = and i32 %i.y, %i.o              ; 3 uses
  %i.z = zext i32 %.0.i.i.i.i.i to i64            ; 2 uses
  %i.aa = lshr i64 %i.z, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !191
  %i.ad = and i32 %.0.i.i.i.i.i, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph.i.i.i.i.i, label %_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl.exit, !prof !290

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %i.ag = phi i64 [ %i.z, %bb.f ], [ %i.r, %bb.e ]
  %.020.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.f ], [ %.019.i.i.i.i.i, %bb.e ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !123
  %i.aj = icmp eq i64 %2, %i.ai
  br i1 %i.aj, label %_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl.exit.thread, label %bb.f, !prof !210

_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl.exit: ; preds = %bb.f, %bb.d, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !249
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl.exit.thread, label %_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl.exit.thread66

_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl.exit.thread: ; preds = %.lr.ph.i.i.i.i.i, %_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !265, !nonnull !64, !align !99
  %i.ap = tail call noundef nonnull align 8 dereferenceable(216) ptr @_ZN4llvm4bolt19DataflowInfoManager26getStackAllocationAnalysisEv(ptr noundef nonnull align 8 dereferenceable(122) %i.ao) #31 ; 13 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !316, !nonnull !64, !align !99 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1240
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !67 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1248
  %i.av = load i32, ptr %i.au, align 8, !tbaa !121 ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %.idx = shl nuw nsw i64 %i.aw, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx
  %.not7393 = icmp eq i32 %i.av, 0
  br i1 %.not7393, label %._crit_edge96, label %.lr.ph95

.lr.ph95:                                         ; preds = %_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl.exit.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ap, i64 116
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ap, i64 152 ; 3 uses
  %i.bm = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 160 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ap, i64 184
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 176 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 168 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16
  %sext76 = shl i64 %3, 32
  %i.bs = ashr exact i64 %sext76, 32              ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.g

._crit_edge96:                                    ; preds = %._crit_edge, %_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl.exit.thread
  %i.bu = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E24lookupOrInsertIntoBucketIRKlJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !995 ; 0 uses
  br label %_ZN4llvm4bolt19StackLayoutModifier17canCollapseRegionEl.exit.thread66

bb.g:                                             ; preds = %.lr.ph95, %._crit_edge
  %.sroa.059.094 = phi ptr [ %i.at, %.lr.ph95 ], [ %i.bz, %._crit_edge ] ; 2 uses
  %i.bv = load ptr, ptr %.sroa.059.094, align 8, !tbaa !127 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !129 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !129 ; 2 uses
  %.not7491 = icmp eq ptr %i.bw, %i.by
  br i1 %.not7491, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.059.094, i64 8 ; 2 uses
  %.not73 = icmp eq ptr %i.bz, %i.ax
  br i1 %.not73, label %._crit_edge96, label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread
  %.sroa.055.092 = phi ptr [ %i.me, %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread ], [ %i.bw, %bb.g ] ; 14 uses
  %i.ca = load ptr, ptr %i.ay, align 8, !tbaa !266, !nonnull !64, !align !99
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1568
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !189 ; 2 uses
  %i.cd = load i8, ptr %i.ba, align 8, !tbaa !190, !range !63, !noundef !64
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %._crit_edge.i, label %bb.h

._crit_edge.i:                                    ; preds = %.lr.ph
  %.0.pre.i = load i32, ptr %i.az, align 4, !tbaa !191
  br label %_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit

bb.h:                                             ; preds = %.lr.ph
  %i.cf = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.cc, ptr nonnull @.str.29, i64 11) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.cf to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.az, align 4
  br label %_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit

_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit: ; preds = %._crit_edge.i, %bb.h
  %.0.i24 = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.cf, %bb.h ]
  %i.cg = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.cc, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.055.092, i32 noundef %.0.i24) #31
  br i1 %i.cg, label %bb.i, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread

bb.i:                                             ; preds = %_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit
  %i.ch = load i8, ptr %i.ba, align 8, !tbaa !190, !range !63, !noundef !64
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %._crit_edge.i28, label %bb.j

._crit_edge.i28:                                  ; preds = %bb.i
  %.0.pre.i29 = load i32, ptr %i.az, align 4, !tbaa !191
  br label %_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit30

bb.j:                                             ; preds = %bb.i
  %i.cj = load ptr, ptr %i.ay, align 8, !tbaa !266, !nonnull !64, !align !99
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1568
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !189
  %i.cm = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.cl, ptr nonnull @.str.29, i64 11) ; 2 uses
  %.sroa.0.0.insert.ext.i25 = zext i32 %i.cm to i64
  %.sroa.0.0.insert.insert.i26 = or disjoint i64 %.sroa.0.0.insert.ext.i25, 4294967296
  store i64 %.sroa.0.0.insert.insert.i26, ptr %i.az, align 4
  br label %_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit30

_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit30: ; preds = %._crit_edge.i28, %bb.j
  %.0.i27 = phi i32 [ %.0.pre.i29, %._crit_edge.i28 ], [ %i.cm, %bb.j ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.055.092, i64 24
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !121 ; 4 uses
  %.01317.i.i.i.i = add i32 %i.co, -1             ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.055.092, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !67 ; 4 uses
  %i.cr = zext nneg i32 %.01317.i.i.i.i to i64    ; 2 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.cr ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !234
  %i.cu = icmp eq i8 %i.ct, 6
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = icmp eq ptr %i.cw, null
  %i.cy = select i1 %i.cu, i1 %i.cx, i1 false
  br i1 %i.cy, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i, label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit30, %.backedge.i.i.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.backedge.i.i.i.i ], [ %i.cr, %_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit30 ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.cz = icmp sgt i64 %indvars.iv.i, 0
  call void @llvm.assume(i1 %i.cz)
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %indvars.iv.next.i ; 2 uses
  %i.db = load i8, ptr %i.da, align 8, !tbaa !234
  %i.dc = icmp eq i8 %i.db, 6
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = icmp eq ptr %i.de, null
  %i.dg = select i1 %i.dc, i1 %i.df, i1 false
  br i1 %i.dg, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i, label %.backedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i: ; preds = %.backedge.i.i.i.i
  %i.dh = trunc nsw i64 %indvars.iv.next.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i, %_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit30
  %.01318.i.i.i.lcssa.i = phi i32 [ %.01317.i.i.i.i, %_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit30 ], [ %i.dh, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i ] ; 2 uses
  %.not.i.not.i.i = icmp ne i32 %i.co, %.01318.i.i.i.lcssa.i
  %i.di = add nuw i32 %.01318.i.i.i.lcssa.i, 1    ; 2 uses
  %.not1324.i.i = icmp ult i32 %i.di, %i.co
  call void @llvm.assume(i1 %.not.i.not.i.i)
  call void @llvm.assume(i1 %.not1324.i.i)
  %i.dj = zext i32 %i.di to i64                   ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.co to i64
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !235 ; 2 uses
  %i.dn = lshr i64 %i.dm, 56
  %i.do = trunc nuw nsw i64 %i.dn to i32
  %.not.i3.i = icmp eq i32 %.0.i27, %i.do
  br i1 %.not.i3.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIlEERT_RKNS_6MCInstEj.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i, %.critedge.i.i
  %indvars.iv.i4.i = phi i64 [ %indvars.iv.next.i.i, %.critedge.i.i ], [ %i.dj, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i4.i, 1 ; 3 uses
  %exitcond.not.i.i = icmp ne i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i)
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %indvars.iv.next.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !235 ; 2 uses
  %i.ds = lshr i64 %i.dr, 56
  %i.dt = trunc nuw nsw i64 %i.ds to i32
  %.not.i.i = icmp eq i32 %.0.i27, %i.dt
  br i1 %.not.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIlEERT_RKNS_6MCInstEj.exit, label %.critedge.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIlEERT_RKNS_6MCInstEj.exit: ; preds = %.critedge.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i
  %.lcssa.i = phi i64 [ %i.dm, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i ], [ %i.dr, %.critedge.i.i ]
  %i.du = shl i64 %.lcssa.i, 8
  %i.dv = ashr exact i64 %i.du, 8
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !123 ; 7 uses
  %i.dz = load ptr, ptr %i.bb, align 8, !tbaa !244 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIlEERT_RKNS_6MCInstEj.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.dz, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIlEERT_RKNS_6MCInstEj.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.bc, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIlEERT_RKNS_6MCInstEj.exit ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !123
  %i.ec = icmp slt i64 %i.eb, %i.dy               ; 2 uses
  %.19.i.i.i = select i1 %i.ec, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.ec, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !245 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !14

_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ed = icmp eq ptr %.19.i.i.i, %i.bc
  br i1 %i.ed, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit

_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !123
  %.not75 = icmp slt i64 %i.dy, %i.ef
  br i1 %.not75, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !996)
  %i.eg = load ptr, ptr %i.bd, align 8, !tbaa !286, !noalias !997 ; 3 uses
  %i.eh = load ptr, ptr %i.be, align 8, !tbaa !287, !noalias !997 ; 2 uses
  %i.ei = load i32, ptr %i.bf, align 4, !tbaa !288, !noalias !997 ; 4 uses
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %.loopexit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ek = add i32 %i.ei, -1                       ; 2 uses
  %i.el = ptrtoint ptr %.sroa.055.092 to i64
  %i.em = mul i64 %i.el, -4658895280553007687     ; 2 uses
  %i.en = lshr i64 %i.em, 31
  %i.eo = xor i64 %i.en, %i.em
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = and i32 %i.ek, %i.ep                    ; 3 uses
  %i.er = zext i32 %i.eq to i64                   ; 2 uses
  %i.es = lshr i64 %i.er, 5
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !191, !noalias !998
  %i.ev = and i32 %i.eq, 31
  %i.ew = lshr i32 %i.eu, %i.ev
  %i.ex = trunc i32 %i.ew to i1
  br i1 %i.ex, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !289

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %i.ey = phi i64 [ %i.fe, %bb.m ], [ %i.er, %bb.l ]
  %.017.i.i.i.i = phi i32 [ %i.fd, %bb.m ], [ %i.eq, %bb.l ]
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %i.ey ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !129, !noalias !998
  %i.fb = icmp eq ptr %.sroa.055.092, %i.fa
  br i1 %i.fb, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit.i, label %bb.m, !prof !210

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  %i.fc = add nuw i32 %.017.i.i.i.i, 1
  %i.fd = and i32 %i.fc, %i.ek                    ; 3 uses
  %i.fe = zext i32 %i.fd to i64                   ; 2 uses
  %i.ff = lshr i64 %i.fe, 5
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !191, !noalias !998
  %i.fi = and i32 %i.fd, 31
  %i.fj = lshr i32 %i.fh, %i.fi
  %i.fk = trunc i32 %i.fj to i1
  br i1 %i.fk, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !290

.loopexit.i.i.i:                                  ; preds = %bb.m, %bb.l, %bb.k
  %i.fl = zext i32 %i.ei to i64                   ; 2 uses
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %i.fl
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = zext i32 %i.ei to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit.i ], [ %i.fl, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.ez, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit.i ], [ %i.fm, %.loopexit.i.i.i ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %.pre-phi.i
  %i.fo = icmp eq ptr %.lcssa.sink.i.i.i, %i.fn
  br i1 %i.fo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i
  %i.fp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #36
  %i.fq = load i8, ptr %i.bk, align 8, !alias.scope !996
  %i.fr = or i8 %i.fq, 1
  store i8 %i.fr, ptr %i.bk, align 8, !alias.scope !996
  store i32 34, ptr %4, align 8, !tbaa !191, !alias.scope !996
  store ptr %i.fp, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !292, !alias.scope !996
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE14getStateBeforeERKNS_6MCInstE.exit

bb.o:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %.sroa.0.0.copyload.i = load i8, ptr %i.fs, align 8, !tbaa !294, !noalias !996
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 16
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !235, !noalias !996 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !999)
  %i.ft = icmp eq i8 %.sroa.0.0.copyload.i, 0
  br i1 %i.ft, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %i.fu = load i64, ptr %i.bg, align 8, !tbaa !156, !noalias !1001
  %.not.not.i.i.i.i.i = icmp eq i64 %i.fu, 0
  br i1 %.not.not.i.i.i.i.i, label %.preheader, label %bb.r

.preheader:                                       ; preds = %bb.p, %bb.q
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.q ], [ %i.bj, %bb.p ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !157, !noalias !1001 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.loopexit.i.i5.i, label %bb.q

bb.q:                                             ; preds = %.preheader
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !127, !noalias !1001
  %i.fx = icmp eq ptr %.sroa.21.0.copyload.i, %i.fw
  br i1 %i.fx, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.preheader, !llvm.loop !2

bb.r:                                             ; preds = %bb.p
  %i.fy = ptrtoint ptr %.sroa.21.0.copyload.i to i64
  %i.fz = load i64, ptr %i.bi, align 8, !tbaa !158, !noalias !1001 ; 2 uses
  %i.ga = urem i64 %i.fy, %i.fz                   ; 2 uses
  %i.gb = load ptr, ptr %i.bh, align 8, !tbaa !159, !noalias !1001
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.ga
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !160, !noalias !1001 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i5.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !157, !noalias !1001 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !127, !noalias !1001
  %i.gh = icmp eq ptr %.sroa.21.0.copyload.i, %i.gg
  br i1 %i.gh, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.u
  %i.gi = icmp eq ptr %.sroa.21.0.copyload.i, %i.gl
  br i1 %i.gi, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !3

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.s, %bb.t
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.gj, %bb.t ], [ %i.ge, %bb.s ]
  %i.gj = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !157, !noalias !1001 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not18.i.i.i.i.i.i.i, label %.loopexit.i.i5.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !127, !noalias !1001 ; 2 uses
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = urem i64 %i.gm, %i.fz
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.gn, %i.ga
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.t, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.u
end_hunk_4
begin_hunk_5_@_ZN4llvm4bolt19StackLayoutModifier14collapseRegionEPNS_6MCInstEll:bb.a
}

declare noundef nonnull align 8 dereferenceable(216) ptr @_ZN4llvm4bolt19DataflowInfoManager26getStackAllocationAnalysisEv(ptr noundef nonnull align 8 dereferenceable(122)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef nonnull align 8 dereferenceable(128), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt19StackLayoutModifier29setOffsetForCollapsedAccessesEl(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(260) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !316, !nonnull !64, !align !99 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1240
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1248
  %i.f = load i32, ptr %i.e, align 8, !tbaa !121  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not60 = icmp eq i32 %i.f, 0
  br i1 %.not60, label %._crit_edge64, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %sext = shl i64 %1, 32
  %i.j = ashr exact i64 %sext, 32                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

._crit_edge64:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph63, %._crit_edge
  %.sroa.037.061 = phi ptr [ %i.d, %.lr.ph63 ], [ %i.r, %._crit_edge ] ; 2 uses
  %i.n = load ptr, ptr %.sroa.037.061, align 8, !tbaa !127 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !129  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !129  ; 2 uses
  %.not4858 = icmp eq ptr %i.o, %i.q
  br i1 %.not4858, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm4bolt19StackLayoutModifier14scheduleChangeERNS_6MCInstENS1_12WorklistItemE.exit, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.037.061, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.h
  br i1 %.not, label %._crit_edge64, label %bb.b

.lr.ph:                                           ; preds = %bb.b, %_ZN4llvm4bolt19StackLayoutModifier14scheduleChangeERNS_6MCInstENS1_12WorklistItemE.exit
  %.sroa.033.059 = phi ptr [ %i.km, %_ZN4llvm4bolt19StackLayoutModifier14scheduleChangeERNS_6MCInstENS1_12WorklistItemE.exit ], [ %i.o, %bb.b ] ; 11 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !266, !nonnull !64, !align !99
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1568
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !189  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 400 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph
  %i.w = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(64) %i.v) #31
  switch i32 %i.w, label %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i.i [
    i32 11, label %bb.c
    i32 35, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #32
  unreachable

_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i.i: ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 104 ; 2 uses
  %i.y = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.2, i64 18) #31
  %i.z = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.x, ptr nonnull @.str.2, i64 18, i32 noundef %i.y) #31 ; 2 uses
  %i.aa = icmp eq i32 %i.z, -1
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !487
  br i1 %i.aa, label %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstENS_9StringRefE.exit.thread, label %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i

_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i: ; preds = %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i.i
  %i.ac = sext i32 %i.z to i64                    ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !488
  %.pre8.i.i = zext i32 %.pre.i.i to i64
  %i.ad = icmp eq i64 %i.ac, %.pre8.i.i
  br i1 %i.ad, label %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstENS_9StringRefE.exit.thread, label %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstENS_9StringRefE.exit

_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstENS_9StringRefE.exit.thread: ; preds = %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i.i, %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i
  %i.ae = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.v) #31 ; 0 uses
  br label %_ZN4llvm4bolt19StackLayoutModifier14scheduleChangeERNS_6MCInstENS1_12WorklistItemE.exit

_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstENS_9StringRefE.exit: ; preds = %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !490
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !123
  %i.aj = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.v) #31 ; 0 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ai to i32
  %i.ak = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.033.059, i32 noundef %.sroa.0.0.extract.trunc.i) #31
  br i1 %i.ak, label %bb.e, label %_ZN4llvm4bolt19StackLayoutModifier14scheduleChangeERNS_6MCInstENS1_12WorklistItemE.exit

bb.e:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstENS_9StringRefE.exit
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !266, !nonnull !64, !align !99
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1568
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !189 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 400 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.ap = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(64) %i.ao) #31
  switch i32 %i.ap, label %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i.i9 [
    i32 11, label %bb.f
    i32 35, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #32
  unreachable

_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i.i9: ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 104 ; 2 uses
  %i.ar = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.2, i64 18) #31
  %i.as = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.aq, ptr nonnull @.str.2, i64 18, i32 noundef %i.ar) #31 ; 2 uses
  %i.at = icmp eq i32 %i.as, -1
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !487
  br i1 %i.at, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread.i17, label %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i10

_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i10: ; preds = %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i.i9
  %i.av = sext i32 %i.as to i64                   ; 2 uses
  %.phi.trans.insert.i.i11 = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %.pre.i.i12 = load i32, ptr %.phi.trans.insert.i.i11, align 8, !tbaa !488
  %.pre8.i.i13 = zext i32 %.pre.i.i12 to i64
  %i.aw = icmp eq i64 %i.av, %.pre8.i.i13
  br i1 %i.aw, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread.i17, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.i14

_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread.i17: ; preds = %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i10, %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i.i9
  %i.ax = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.ao) #31 ; 0 uses
  br label %_ZNK4llvm4bolt13MCPlusBuilder16removeAnnotationERNS_6MCInstENS_9StringRefE.exit

_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.i14: ; preds = %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i10
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !490
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !123
  %i.bc = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.ao) #31 ; 0 uses
  %.sroa.0.0.extract.trunc.i15 = trunc i64 %i.bb to i32
  %i.bd = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder16removeAnnotationERNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.an, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.033.059, i32 noundef %.sroa.0.0.extract.trunc.i15) #31 ; 0 uses
  br label %_ZNK4llvm4bolt13MCPlusBuilder16removeAnnotationERNS_6MCInstENS_9StringRefE.exit

_ZNK4llvm4bolt13MCPlusBuilder16removeAnnotationERNS_6MCInstENS_9StringRefE.exit: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread.i17, %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.i14
  %i.be = load ptr, ptr %i.i, align 8, !tbaa !266, !nonnull !64, !align !99
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1568
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !189 ; 6 uses
  %i.bh = load i8, ptr %i.l, align 8, !tbaa !190, !range !63, !noundef !64
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %._crit_edge.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder16removeAnnotationERNS_6MCInstENS_9StringRefE.exit
  %.0.pre.i.i = load i32, ptr %i.k, align 4, !tbaa !191
  br label %_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit.i

bb.h:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder16removeAnnotationERNS_6MCInstENS_9StringRefE.exit
  %i.bj = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.bg, ptr nonnull @.str.33, i64 11) ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bj to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.k, align 4
  br label %_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit.i

_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit.i: ; preds = %bb.h, %._crit_edge.i.i
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.bj, %bb.h ] ; 5 uses
  %i.bk = load i16, ptr %i.m, align 8, !tbaa !313 ; 4 uses
  %i.bl = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.bg, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.033.059, i32 noundef %.0.i.i) #31, !noalias !1007
  br i1 %i.bl, label %bb.i, label %_ZN4llvm7ErrorOrIRKSt6vectorINS_4bolt19StackLayoutModifier12WorklistItemESaIS4_EEEaSEOS9_.exit.i

bb.i:                                             ; preds = %_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.033.059, i64 24
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !121, !noalias !1007 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.bn, -1         ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.033.059, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !67, !noalias !1007 ; 4 uses
  %i.bq = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !234, !noalias !1007
  %i.bt = icmp eq i8 %i.bs, 6
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !1007
  %i.bw = icmp eq ptr %i.bv, null
  %i.bx = select i1 %i.bt, i1 %i.bw, i1 false
  br i1 %i.bx, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.i, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.bq, %bb.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.by = icmp sgt i64 %indvars.iv.i.i.i, 0
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !234, !noalias !1007
  %i.cb = icmp eq i8 %i.ca, 6
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !1007
  %i.ce = icmp eq ptr %i.cd, null
  %i.cf = select i1 %i.cb, i1 %i.ce, i1 false
  br i1 %i.cf, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.cg = trunc nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.i
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.i ], [ %i.cg, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.bn, %.01318.i.i.i.lcssa.i.i.i
  %i.ch = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.ch, %i.bn
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.bn to i64
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !235, !noalias !1007 ; 2 uses
  %i.cm = lshr i64 %i.cl, 56
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.cn
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ %i.ci, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %indvars.iv.next.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !235, !noalias !1007 ; 2 uses
  %i.cr = lshr i64 %i.cq, 56
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %.not.i.i.i.i18 = icmp eq i32 %.0.i.i, %i.cs
  br i1 %.not.i.i.i.i18, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.cl, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.cq, %.critedge.i.i.i.i ]
  %i.ct = shl i64 %.lcssa.i.i.i, 8
  %i.cu = ashr exact i64 %i.ct, 8
  %i.cv = add nuw nsw i64 %i.cu, 8
  %i.cw = inttoptr i64 %i.cv to ptr
  br label %_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEERT_RNS_6MCInstEjt.exit

_ZN4llvm7ErrorOrIRKSt6vectorINS_4bolt19StackLayoutModifier12WorklistItemESaIS4_EEEaSEOS9_.exit.i: ; preds = %_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !194
  %.not.not.i.i.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not.not.i.i.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZN4llvm7ErrorOrIRKSt6vectorINS_4bolt19StackLayoutModifier12WorklistItemESaIS4_EEEaSEOS9_.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.cz, %bb.j ], [ %.sroa.06.0.i.i.i.i, %bb.k ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !157, !nonnull !64, !noundef !64 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.db = load i16, ptr %i.da, align 2, !tbaa !195
  %i.dc = icmp eq i16 %i.bk, %i.db
  br i1 %i.dc, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %bb.k, !llvm.loop !4

bb.l:                                             ; preds = %_ZN4llvm7ErrorOrIRKSt6vectorINS_4bolt19StackLayoutModifier12WorklistItemESaIS4_EEEaSEOS9_.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.de = zext i16 %i.bk to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !196 ; 2 uses
  %i.dh = urem i64 %i.de, %i.dg                   ; 2 uses
  %i.di = load ptr, ptr %i.dd, align 8, !tbaa !197
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dh
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !160, !nonnull !64, !noundef !64
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !157 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !195
  %i.do = icmp eq i16 %i.bk, %i.dn
  br i1 %i.do, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i19

.lr.ph.i.i.i.i.i.i19:                             ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i19
  %.020.i.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i19 ], [ %i.dl, %bb.l ]
  %i.dp = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !157, !nonnull !64, !noundef !64 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !195 ; 2 uses
  %i.ds = zext i16 %i.dr to i64
  %i.dt = urem i64 %i.ds, %i.dg
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.dt, %i.dh
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i.i)
  %i.du = icmp eq i16 %i.bk, %i.dr
  br i1 %i.du, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i, label %.lr.ph.i.i.i.i.i.i19, !llvm.loop !5

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i19, %bb.k, %bb.l
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.k ], [ %i.dl, %bb.l ], [ %i.dp, %.lr.ph.i.i.i.i.i.i19 ] ; 14 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !208
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = add i64 %i.dx, 15
  %i.dz = and i64 %i.dy, -16                      ; 2 uses
  %i.ea = add i64 %i.dz, 32                       ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 24
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !209
  %i.ed = icmp ult i64 %i.ea, %i.ec
  br i1 %i.ed, label %bb.m, label %bb.n, !prof !210

bb.m:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.ee = inttoptr i64 %i.ea to ptr
  store ptr %i.ee, ptr %i.dv, align 8, !tbaa !208
  %i.ef = inttoptr i64 %i.dz to ptr
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEERKT_RNS_6MCInstEjSA_t.exit

bb.n:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i
  %i.eg = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.dv, i64 noundef 32, i64 noundef 32, i8 4)
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEERKT_RNS_6MCInstEjSA_t.exit

_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEERKT_RNS_6MCInstEjSA_t.exit: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi ptr [ %i.ef, %bb.m ], [ %i.eg, %bb.n ] ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !55
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8 ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 96 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 120 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i8 0, i64 24, i1 false)
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !458
  %.not.not.i = icmp eq i64 %i.ek, 0
  br i1 %.not.not.i, label %bb.o, label %.thread30.i

.thread30.i:                                      ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEERKT_RNS_6MCInstEjSA_t.exit
  %i.el = ptrtoint ptr %.0.i.i.i.i to i64         ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 4 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !459 ; 2 uses
  %i.eo = urem i64 %i.el, %i.en                   ; 5 uses
  %i.ep = load ptr, ptr %i.ei, align 8, !tbaa !460
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eo
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i22, label %.critedge.i24, label %bb.s

bb.o:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEERKT_RNS_6MCInstEjSA_t.exit
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 112
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.sroa.025.0.in.i = phi ptr [ %i.es, %bb.o ], [ %.sroa.025.0.i, %bb.q ]
  %.sroa.025.0.i = load ptr, ptr %.sroa.025.0.in.i, align 8, !tbaa !157 ; 3 uses
  %.not.i25 = icmp eq ptr %.sroa.025.0.i, null
  br i1 %.not.i25, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !462
  %i.ev = icmp eq ptr %.0.i.i.i.i, %i.eu
  br i1 %i.ev, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %bb.p, !llvm.loop !10

bb.r:                                             ; preds = %bb.p
  %i.ew = ptrtoint ptr %.0.i.i.i.i to i64         ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 104 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !459
  %i.ez = urem i64 %i.ew, %i.ey
  br label %.critedge.i24

bb.s:                                             ; preds = %.thread30.i
  %i.fa = load ptr, ptr %i.er, align 8, !tbaa !157 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !462
  %i.fd = icmp eq ptr %.0.i.i.i.i, %i.fc
  br i1 %i.fd, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %.lr.ph.i.i.i23

bb.t:                                             ; preds = %bb.u
  %i.fe = icmp eq ptr %.0.i.i.i.i, %i.fh
  br i1 %i.fe, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit, label %.lr.ph.i.i.i23, !llvm.loop !11

.lr.ph.i.i.i23:                                   ; preds = %bb.s, %bb.t
  %.020.i.i.i = phi ptr [ %i.ff, %bb.t ], [ %i.fa, %bb.s ]
  %i.ff = load ptr, ptr %.020.i.i.i, align 8, !tbaa !157 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not18.i.i.i, label %.critedge.i24, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i23
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !462 ; 2 uses
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = urem i64 %i.fi, %i.en
  %.not19.i.i.i = icmp eq i64 %i.fj, %i.eo
  br i1 %.not19.i.i.i, label %bb.t, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !11

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.u
  br label %.critedge.i24, !llvm.loop !11

.critedge.i24:                                    ; preds = %.lr.ph.i.i.i23, %..loopexit_crit_edge21.i.i.i, %bb.r, %.thread30.i
  %i.fk = phi i64 [ %i.ez, %bb.r ], [ %i.eo, %.thread30.i ], [ %i.eo, %..loopexit_crit_edge21.i.i.i ], [ %i.eo, %.lr.ph.i.i.i23 ]
  %i.fl = phi ptr [ %i.ex, %bb.r ], [ %i.em, %.thread30.i ], [ %i.em, %..loopexit_crit_edge21.i.i.i ], [ %i.em, %.lr.ph.i.i.i23 ] ; 3 uses
  %i.fm = phi i64 [ %i.ew, %bb.r ], [ %i.el, %.thread30.i ], [ %i.el, %..loopexit_crit_edge21.i.i.i ], [ %i.el, %.lr.ph.i.i.i23 ]
  %i.fn = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 7 uses
  store ptr null, ptr %i.fn, align 8, !tbaa !157
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %.0.i.i.i.i, ptr %i.fo, align 8, !tbaa !462
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 128
  %i.fq = load i64, ptr %i.fl, align 8, !tbaa !459
  %i.fr = load i64, ptr %i.ej, align 8, !tbaa !458
  %i.fs = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, i64 noundef %i.fq, i64 noundef %i.fr, i64 noundef 1) #31 ; 2 uses
  %i.ft = extractvalue { i8, i64 } %i.fs, 0
  %i.fu = trunc i8 %i.ft to i1
  br i1 %i.fu, label %bb.v, label %.critedge.i24._crit_edge

.critedge.i24._crit_edge:                         ; preds = %.critedge.i24
  %.pre = load ptr, ptr %i.ei, align 8, !tbaa !460
  br label %bb.ag
end_hunk_5
begin_hunk_6_@_ZN4llvm4bolt19StackLayoutModifier12insertRegionENS0_12ProgramPointEl:bb.a
bb.g:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.n = ptrtoint ptr %2 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !297, !noalias !1034 ; 2 uses
  %i.q = urem i64 %i.n, %i.p                      ; 2 uses
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !298, !noalias !1034
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !160, !noalias !1034 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !157, !noalias !1034 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !127, !noalias !1034
  %i.x = icmp eq ptr %2, %i.w
  br i1 %i.x, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.j
  %i.y = icmp eq ptr %2, %i.ab
  br i1 %i.y, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !8

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %bb.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.z, %bb.i ], [ %i.u, %bb.h ]
  %i.z = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !157, !noalias !1034 ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not18.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !127, !noalias !1034 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = urem i64 %i.ac, %i.p
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.ad, %i.q
  br i1 %.not19.i.i.i.i.i.i, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.j
  br label %.loopexit.i.i, !llvm.loop !8

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %bb.e, %..loopexit_crit_edge21.i.i.i.i.i.i, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !alias.scope !1034
  %i.ag = or i8 %i.af, 1
  store i8 %i.ag, ptr %i.ae, align 8, !alias.scope !1034
  store i32 34, ptr %6, align 8, !tbaa !191, !alias.scope !1034
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeENS0_12ProgramPointE.exit

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i: ; preds = %bb.i, %bb.f, %bb.h
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.f ], [ %i.u, %bb.h ], [ %i.z, %bb.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !alias.scope !1034
  %i.ak = and i8 %i.aj, -2
  store i8 %i.ak, ptr %i.ai, align 8, !alias.scope !1034
  store ptr %i.ah, ptr %6, align 8, !tbaa !282, !alias.scope !1034
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeENS0_12ProgramPointE.exit

bb.k:                                             ; preds = %bb.b
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.757") align 8 %6, ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(128) %2)
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeENS0_12ProgramPointE.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeENS0_12ProgramPointE.exit: ; preds = %.loopexit.i.i, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i, %bb.k
  %i.al = load ptr, ptr %6, align 8, !tbaa !282
  %i.am = load i32, ptr %i.al, align 4, !tbaa !284 ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  store i64 %i.an, ptr %i.a, align 8, !tbaa !123
  %i.ao = add i32 %i.am, 2147483647
  %or.cond = icmp ult i32 %i.ao, -2               ; 2 uses
  br i1 %or.cond, label %bb.l, label %bb.an

bb.l:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeENS0_12ProgramPointE.exit
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !265, !nonnull !64, !align !99
  %i.aq = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN4llvm4bolt19DataflowInfoManager20getDominatorAnalysisEv(ptr noundef nonnull align 8 dereferenceable(122) %i.ap) #31 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !316, !nonnull !64, !align !99 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1240
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !67 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 1248
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !121 ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %.idx = shl nuw nsw i64 %i.ax, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx
  %.not6887 = icmp eq i32 %i.aw, 0
  br i1 %.not6887, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.be = trunc nuw i8 %1 to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 176 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 152 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 160 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 168 ; 2 uses
  %i.bk = ptrtoint ptr %2 to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.neg72 = mul i64 %3, -4294967296
  %i.bm = ashr exact i64 %.neg72, 32              ; 2 uses
  br label %bb.m

._crit_edge91:                                    ; preds = %._crit_edge, %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bo = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIlNS_6detail13DenseSetEmptyENS_12DenseMapInfoIlvEENS2_12DenseSetPairIlEEEElS3_S5_S7_E24lookupOrInsertIntoBucketIRKlJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !1035 ; 0 uses
  br label %bb.an

bb.m:                                             ; preds = %.lr.ph90, %._crit_edge
  %.sroa.059.088 = phi ptr [ %i.au, %.lr.ph90 ], [ %i.bt, %._crit_edge ] ; 2 uses
  %i.bp = load ptr, ptr %.sroa.059.088, align 8, !tbaa !127 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !129 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !129 ; 2 uses
  %.not6985 = icmp eq ptr %i.bq, %i.bs
  br i1 %.not6985, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, %bb.m
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.059.088, i64 8 ; 2 uses
  %.not68 = icmp eq ptr %i.bt, %i.ay
  br i1 %.not68, label %._crit_edge91, label %bb.m

.lr.ph:                                           ; preds = %bb.m, %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread
  %.sroa.055.086 = phi ptr [ %i.ir, %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread ], [ %i.bq, %bb.m ] ; 12 uses
  %i.bu = load ptr, ptr %i.az, align 8, !tbaa !266, !nonnull !64, !align !99
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1568
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !189 ; 2 uses
  %i.bx = load i8, ptr %i.bb, align 8, !tbaa !190, !range !63, !noundef !64
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %._crit_edge.i, label %bb.n

._crit_edge.i:                                    ; preds = %.lr.ph
  %.0.pre.i = load i32, ptr %i.ba, align 4, !tbaa !191
  br label %_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bz = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.bw, ptr nonnull @.str.29, i64 11) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.bz to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ba, align 4
  br label %_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit

_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit: ; preds = %._crit_edge.i, %bb.n
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.bz, %bb.n ]
  %i.ca = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.bw, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.055.086, i32 noundef %.0.i) #31
  br i1 %i.ca, label %bb.o, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread

bb.o:                                             ; preds = %_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit
  %i.cb = load i8, ptr %i.bb, align 8, !tbaa !190, !range !63, !noundef !64
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %._crit_edge.i41, label %bb.p

._crit_edge.i41:                                  ; preds = %bb.o
  %.0.pre.i42 = load i32, ptr %i.ba, align 4, !tbaa !191
  br label %_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit43

bb.p:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %i.az, align 8, !tbaa !266, !nonnull !64, !align !99
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1568
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !189
  %i.cg = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.cf, ptr nonnull @.str.29, i64 11) ; 2 uses
  %.sroa.0.0.insert.ext.i38 = zext i32 %i.cg to i64
  %.sroa.0.0.insert.insert.i39 = or disjoint i64 %.sroa.0.0.insert.ext.i38, 4294967296
  store i64 %.sroa.0.0.insert.insert.i39, ptr %i.ba, align 4
  br label %_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit43

_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit43: ; preds = %._crit_edge.i41, %bb.p
  %.0.i40 = phi i32 [ %.0.pre.i42, %._crit_edge.i41 ], [ %i.cg, %bb.p ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.055.086, i64 24
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !121 ; 4 uses
  %.01317.i.i.i.i = add i32 %i.ci, -1             ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.055.086, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !67 ; 4 uses
  %i.cl = zext nneg i32 %.01317.i.i.i.i to i64    ; 2 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.cl ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !234
  %i.co = icmp eq i8 %i.cn, 6
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = icmp eq ptr %i.cq, null
  %i.cs = select i1 %i.co, i1 %i.cr, i1 false
  br i1 %i.cs, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i, label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit43, %.backedge.i.i.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.backedge.i.i.i.i ], [ %i.cl, %_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit43 ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.ct = icmp sgt i64 %indvars.iv.i, 0
  call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %indvars.iv.next.i ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !234
  %i.cw = icmp eq i8 %i.cv, 6
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = icmp eq ptr %i.cy, null
  %i.da = select i1 %i.cw, i1 %i.cz, i1 false
  br i1 %i.da, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i, label %.backedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i: ; preds = %.backedge.i.i.i.i
  %i.db = trunc nsw i64 %indvars.iv.next.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i, %_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit43
  %.01318.i.i.i.lcssa.i = phi i32 [ %.01317.i.i.i.i, %_ZN4llvm4bolt19StackLayoutModifier10getSlotTagEv.exit43 ], [ %i.db, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i ] ; 2 uses
  %.not.i.not.i.i = icmp ne i32 %i.ci, %.01318.i.i.i.lcssa.i
  %i.dc = add nuw i32 %.01318.i.i.i.lcssa.i, 1    ; 2 uses
  %.not1324.i.i = icmp ult i32 %i.dc, %i.ci
  call void @llvm.assume(i1 %.not.i.not.i.i)
  call void @llvm.assume(i1 %.not1324.i.i)
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.ci to i64
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !235 ; 2 uses
  %i.dh = lshr i64 %i.dg, 56
  %i.di = trunc nuw nsw i64 %i.dh to i32
  %.not.i3.i = icmp eq i32 %.0.i40, %i.di
  br i1 %.not.i3.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIlEERT_RKNS_6MCInstEj.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i, %.critedge.i.i
  %indvars.iv.i4.i = phi i64 [ %indvars.iv.next.i.i, %.critedge.i.i ], [ %i.dd, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i4.i, 1 ; 3 uses
  %exitcond.not.i.i = icmp ne i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i)
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %indvars.iv.next.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !235 ; 2 uses
  %i.dm = lshr i64 %i.dl, 56
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %.not.i.i = icmp eq i32 %.0.i40, %i.dn
  br i1 %.not.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIlEERT_RKNS_6MCInstEj.exit, label %.critedge.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIlEERT_RKNS_6MCInstEj.exit: ; preds = %.critedge.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i
  %.lcssa.i = phi i64 [ %i.dg, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i ], [ %i.dl, %.critedge.i.i ]
  %i.do = shl i64 %.lcssa.i, 8
  %i.dp = ashr exact i64 %i.do, 8
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !123 ; 6 uses
  %i.dt = load ptr, ptr %i.bc, align 8, !tbaa !244 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIlEERT_RKNS_6MCInstEj.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.dt, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIlEERT_RKNS_6MCInstEj.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.bd, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsIlEERT_RKNS_6MCInstEj.exit ]
  %i.du = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !123
  %i.dw = icmp slt i64 %i.dv, %i.ds               ; 2 uses
  %.19.i.i.i = select i1 %i.dw, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.dw, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !245 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !14

_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.dx = icmp eq ptr %.19.i.i.i, %i.bd
  br i1 %i.dx, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit

_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !123
  %.not70 = icmp slt i64 %i.ds, %i.dz
  br i1 %.not70, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit
  br i1 %i.be, label %bb.r, label %.preheader.i

.preheader.i:                                     ; preds = %bb.q
  %i.ea = load ptr, ptr %i.bf, align 8, !tbaa !493
  %i.eb = load ptr, ptr %2, align 8, !tbaa !494   ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %.lr.ph.i, label %._crit_edge.i44

bb.r:                                             ; preds = %bb.q
  %i.ed = load i64, ptr %i.bg, align 8, !tbaa !482
  %.not.not.i.i.i.i.i = icmp eq i64 %i.ed, 0
  br i1 %.not.not.i.i.i.i.i, label %.preheader, label %bb.t

.preheader:                                       ; preds = %bb.r, %bb.s
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.s ], [ %i.bj, %bb.r ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !157 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit.i, label %bb.s

bb.s:                                             ; preds = %.preheader
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !129
  %i.eg = icmp eq ptr %2, %i.ef
  br i1 %i.eg, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit.i, label %.preheader, !llvm.loop !17

bb.t:                                             ; preds = %bb.r
  %i.eh = load i64, ptr %i.bi, align 8, !tbaa !477 ; 2 uses
  %i.ei = urem i64 %i.bk, %i.eh                   ; 2 uses
  %i.ej = load ptr, ptr %i.bh, align 8, !tbaa !478
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ei
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !157 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !129
  %i.ep = icmp eq ptr %2, %i.eo
  br i1 %i.ep, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit.i, label %.lr.ph.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.w
  %i.eq = icmp eq ptr %2, %i.et
  br i1 %i.eq, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !15

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.u, %bb.v
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.er, %bb.v ], [ %i.em, %bb.u ]
  %i.er = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !157 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not18.i.i.i.i.i.i.i, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !129 ; 2 uses
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = urem i64 %i.eu, %i.eh
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.ev, %i.ei
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.v, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !15

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.w
  br label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit.i, !llvm.loop !15

_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.v, %bb.s, %.preheader, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %bb.u, %bb.t
  %.sroa.06.1.i.i.i.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i.i.i.i ], [ null, %.preheader ], [ %i.em, %bb.u ], [ null, %bb.t ], [ %.sroa.06.0.i.i.i.i.i, %bb.s ], [ null, %.lr.ph.i.i.i.i.i.i.i ], [ %i.er, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.838") align 8 %5, ptr noundef nonnull align 8 dereferenceable(208) %i.aq, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.055.086)
  %i.ew = load ptr, ptr %5, align 8, !tbaa !142
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !481 ; 2 uses
  %i.ez = and i64 %i.ey, 63
  %i.fa = shl nuw i64 1, %i.ez
  %i.fb = lshr i64 %i.ey, 6
  %i.fc = and i64 %i.fb, 67108863
  %i.fd = load ptr, ptr %i.ew, align 8, !tbaa !67
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fc
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !123
  %i.fg = and i64 %i.ff, %i.fa
  %.not71 = icmp eq i64 %i.fg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %.not71, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, label %bb.ad

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.x
  %.0932.i = phi ptr [ %i.fm, %bb.x ], [ %2, %.preheader.i ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.0932.i, i64 48
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !121
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %_ZNKSt3mapIllSt4lessIlESaISt4pairIKllEEE5countERS3_.exit.thread, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.0932.i, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !67
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !127 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !493
  %i.fp = load ptr, ptr %i.fm, align 8, !tbaa !494 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %.lr.ph.i, label %._crit_edge.i44, !llvm.loop !1031

._crit_edge.i44:                                  ; preds = %bb.x, %.preheader.i
  %.lcssa31.i = phi ptr [ %i.eb, %.preheader.i ], [ %i.fp, %bb.x ] ; 4 uses
  %i.fr = load i64, ptr %i.bg, align 8, !tbaa !482
  %.not.not.i.i.i.i10.i = icmp eq i64 %i.fr, 0
  br i1 %.not.not.i.i.i.i10.i, label %.preheader94, label %bb.z

.preheader94:                                     ; preds = %._crit_edge.i44, %bb.y
  %.sroa.06.0.in.i.i.i.i18.i = phi ptr [ %.sroa.06.0.i.i.i.i19.i, %bb.y ], [ %i.bj, %._crit_edge.i44 ]
  %.sroa.06.0.i.i.i.i19.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i18.i, align 8, !tbaa !157 ; 4 uses
  %.not.i.i.i.i20.i = icmp eq ptr %.sroa.06.0.i.i.i.i19.i, null
  br i1 %.not.i.i.i.i20.i, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBENS0_12ProgramPointERKNS_6MCInstE.exit, label %bb.y

bb.y:                                             ; preds = %.preheader94
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i19.i, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !129
  %i.fu = icmp eq ptr %.lcssa31.i, %i.ft
  br i1 %i.fu, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBENS0_12ProgramPointERKNS_6MCInstE.exit, label %.preheader94, !llvm.loop !17

bb.z:                                             ; preds = %._crit_edge.i44
  %i.fv = ptrtoint ptr %.lcssa31.i to i64
  %i.fw = load i64, ptr %i.bi, align 8, !tbaa !477 ; 2 uses
  %i.fx = urem i64 %i.fv, %i.fw                   ; 2 uses
  %i.fy = load ptr, ptr %i.bh, align 8, !tbaa !478
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fx
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i.i.i11.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i.i.i.i11.i, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBENS0_12ProgramPointERKNS_6MCInstE.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !157 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !129
  %i.ge = icmp eq ptr %.lcssa31.i, %i.gd
  br i1 %i.ge, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBENS0_12ProgramPointERKNS_6MCInstE.exit, label %.lr.ph.i.i.i.i.i.i12.i

end_hunk_6
begin_hunk_7_@_ZN4llvm4bolt19StackLayoutModifier14performChangesEv:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  br label %bb.b

._crit_edge99.loopexit:                           ; preds = %._crit_edge94
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !244
  br label %._crit_edge99

._crit_edge99:                                    ; preds = %._crit_edge99.loopexit, %bb.a
  %i.ab = phi ptr [ %.pre, %._crit_edge99.loopexit ], [ null, %bb.a ]
  call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void

bb.b:                                             ; preds = %.lr.ph98, %._crit_edge94
  %.sroa.072.096 = phi ptr [ %i.t, %.lr.ph98 ], [ %i.ag, %._crit_edge94 ] ; 2 uses
  %i.ac = load ptr, ptr %.sroa.072.096, align 8, !tbaa !127 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !129, !noalias !1056 ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !129, !noalias !1057 ; 2 uses
  %.not8090 = icmp eq ptr %i.ae, %i.af
  br i1 %.not8090, label %._crit_edge94, label %.lr.ph93

._crit_edge94:                                    ; preds = %bb.ad, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.072.096, i64 8 ; 2 uses
  %.not79 = icmp eq ptr %i.ag, %i.x
  br i1 %.not79, label %._crit_edge99.loopexit, label %bb.b

.lr.ph93:                                         ; preds = %bb.b, %bb.ad
  %.sroa.069.091 = phi ptr [ %i.ah, %bb.ad ], [ %i.ae, %bb.b ] ; 3 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.069.091, i64 -128 ; 11 uses
  %i.ai = load ptr, ptr %i.y, align 8, !tbaa !266, !nonnull !64, !align !99
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1568
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !189 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 400 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph93
  %i.am = call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(64) %i.al) #31
  switch i32 %i.am, label %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i.i [
    i32 11, label %bb.c
    i32 35, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_system_errori(i32 noundef 35) #32
  unreachable

_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i.i: ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 104 ; 2 uses
  %i.ao = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.2, i64 18) #31
  %i.ap = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.an, ptr nonnull @.str.2, i64 18, i32 noundef %i.ao) #31 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, -1
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !487
  br i1 %i.aq, label %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstENS_9StringRefE.exit.thread, label %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i

_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i: ; preds = %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i.i
  %i.as = sext i32 %i.ap to i64                   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !488
  %.pre8.i.i = zext i32 %.pre.i.i to i64
  %i.at = icmp eq i64 %i.as, %.pre8.i.i
  br i1 %i.at, label %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstENS_9StringRefE.exit.thread, label %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstENS_9StringRefE.exit

_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstENS_9StringRefE.exit.thread: ; preds = %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i.i, %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i
  %i.au = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.al) #31 ; 0 uses
  br label %_ZNK4llvm4bolt13MCPlusBuilder16removeAnnotationERNS_6MCInstENS_9StringRefE.exit

_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstENS_9StringRefE.exit: ; preds = %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !490
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !123
  %i.az = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.al) #31 ; 0 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ay to i32
  %i.ba = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.ak, ptr noundef nonnull align 8 dereferenceable(128) %i.ah, i32 noundef %.sroa.0.0.extract.trunc.i) #31
  br i1 %i.ba, label %bb.e, label %_ZNK4llvm4bolt13MCPlusBuilder16removeAnnotationERNS_6MCInstENS_9StringRefE.exit

bb.e:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstENS_9StringRefE.exit
  %i.bb = load ptr, ptr %i.y, align 8, !tbaa !266, !nonnull !64, !align !99
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1568
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !189 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 400 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %i.bf = call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(64) %i.be) #31
  switch i32 %i.bf, label %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i.i36 [
    i32 11, label %bb.f
    i32 35, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_system_errori(i32 noundef 35) #32
  unreachable

_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i.i36: ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 104 ; 2 uses
  %i.bh = call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr nonnull @.str.2, i64 18) #31
  %i.bi = call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.bg, ptr nonnull @.str.2, i64 18, i32 noundef %i.bh) #31 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, -1
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !487
  br i1 %i.bj, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread.i44, label %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i37

_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i37: ; preds = %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i.i36
  %i.bl = sext i32 %i.bi to i64                   ; 2 uses
  %.phi.trans.insert.i.i38 = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %.pre.i.i39 = load i32, ptr %.phi.trans.insert.i.i38, align 8, !tbaa !488
  %.pre8.i.i40 = zext i32 %.pre.i.i39 to i64
  %i.bm = icmp eq i64 %i.bl, %.pre8.i.i40
  br i1 %i.bm, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread.i44, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.i41

_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread.i44: ; preds = %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i37, %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i.i36
  %i.bn = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.be) #31 ; 0 uses
  br label %_ZNK4llvm4bolt13MCPlusBuilder16removeAnnotationERNS_6MCInstENS_9StringRefE.exit

_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.i41: ; preds = %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i37
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !490
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !123
  %i.bs = call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.be) #31 ; 0 uses
  %.sroa.0.0.extract.trunc.i42 = trunc i64 %i.br to i32
  %i.bt = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder16removeAnnotationERNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.bd, ptr noundef nonnull align 8 dereferenceable(128) %i.ah, i32 noundef %.sroa.0.0.extract.trunc.i42) #31 ; 0 uses
  br label %_ZNK4llvm4bolt13MCPlusBuilder16removeAnnotationERNS_6MCInstENS_9StringRefE.exit

_ZNK4llvm4bolt13MCPlusBuilder16removeAnnotationERNS_6MCInstENS_9StringRefE.exit: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.i41, %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread.i44, %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstENS_9StringRefE.exit.thread, %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstENS_9StringRefE.exit
  %i.bu = load ptr, ptr %i.y, align 8, !tbaa !266, !nonnull !64, !align !99
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1568
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !189 ; 2 uses
  %i.bx = load i8, ptr %i.aa, align 8, !tbaa !190, !range !63, !noundef !64
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %._crit_edge.i, label %bb.h

._crit_edge.i:                                    ; preds = %_ZNK4llvm4bolt13MCPlusBuilder16removeAnnotationERNS_6MCInstENS_9StringRefE.exit
  %.0.pre.i = load i32, ptr %i.z, align 4, !tbaa !191
  br label %_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit

bb.h:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder16removeAnnotationERNS_6MCInstENS_9StringRefE.exit
  %i.bz = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.bw, ptr nonnull @.str.33, i64 11) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.bz to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.z, align 4
  br label %_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit

_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit: ; preds = %._crit_edge.i, %bb.h
  %.0.i45 = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.bz, %bb.h ]
  %i.ca = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.bw, ptr noundef nonnull align 8 dereferenceable(128) %i.ah, i32 noundef %.0.i45) #31
  br i1 %i.ca, label %bb.i, label %bb.ad

bb.i:                                             ; preds = %_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit
  %i.cb = load i8, ptr %i.aa, align 8, !tbaa !190, !range !63, !noundef !64
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %._crit_edge.i49, label %bb.j

._crit_edge.i49:                                  ; preds = %bb.i
  %.0.pre.i50 = load i32, ptr %i.z, align 4, !tbaa !191
  br label %_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit51

bb.j:                                             ; preds = %bb.i
  %i.cd = load ptr, ptr %i.y, align 8, !tbaa !266, !nonnull !64, !align !99
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1568
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !189
  %i.cg = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.cf, ptr nonnull @.str.33, i64 11) ; 2 uses
  %.sroa.0.0.insert.ext.i46 = zext i32 %i.cg to i64
  %.sroa.0.0.insert.insert.i47 = or disjoint i64 %.sroa.0.0.insert.ext.i46, 4294967296
  store i64 %.sroa.0.0.insert.insert.i47, ptr %i.z, align 4
  br label %_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit51

_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit51: ; preds = %._crit_edge.i49, %bb.j
  %.0.i48 = phi i32 [ %.0.pre.i50, %._crit_edge.i49 ], [ %i.cg, %bb.j ] ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.sroa.069.091, i64 -104
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !121 ; 4 uses
  %.01317.i.i.i.i = add i32 %i.ci, -1             ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.069.091, i64 -112 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !67 ; 4 uses
  %i.cl = zext nneg i32 %.01317.i.i.i.i to i64    ; 2 uses
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.cl ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !234
  %i.co = icmp eq i8 %i.cn, 6
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = icmp eq ptr %i.cq, null
  %i.cs = select i1 %i.co, i1 %i.cr, i1 false
  br i1 %i.cs, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i, label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit51, %.backedge.i.i.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.backedge.i.i.i.i ], [ %i.cl, %_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit51 ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.ct = icmp sgt i64 %indvars.iv.i, 0
  call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %indvars.iv.next.i ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !234
  %i.cw = icmp eq i8 %i.cv, 6
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = icmp eq ptr %i.cy, null
  %i.da = select i1 %i.cw, i1 %i.cz, i1 false
  br i1 %i.da, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i, label %.backedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i: ; preds = %.backedge.i.i.i.i
  %i.db = trunc nsw i64 %indvars.iv.next.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i, %_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit51
  %.01318.i.i.i.lcssa.i = phi i32 [ %.01317.i.i.i.i, %_ZN4llvm4bolt19StackLayoutModifier10getTodoTagEv.exit51 ], [ %i.db, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i ] ; 2 uses
  %.not.i.not.i.i = icmp ne i32 %i.ci, %.01318.i.i.i.lcssa.i
  %i.dc = add nuw i32 %.01318.i.i.i.lcssa.i, 1    ; 2 uses
  %.not1324.i.i = icmp ult i32 %i.dc, %i.ci
  call void @llvm.assume(i1 %.not.i.not.i.i)
  call void @llvm.assume(i1 %.not1324.i.i)
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.ci to i64
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !235 ; 2 uses
  %i.dh = lshr i64 %i.dg, 56
  %i.di = trunc nuw nsw i64 %i.dh to i32
  %.not.i3.i = icmp eq i32 %.0.i48, %i.di
  br i1 %.not.i3.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEERT_RKNS_6MCInstEj.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i, %.critedge.i.i
  %indvars.iv.i4.i = phi i64 [ %indvars.iv.next.i.i, %.critedge.i.i ], [ %i.dd, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i4.i, 1 ; 3 uses
  %exitcond.not.i.i = icmp ne i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i)
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %indvars.iv.next.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !235 ; 2 uses
  %i.dm = lshr i64 %i.dl, 56
  %i.dn = trunc nuw nsw i64 %i.dm to i32
  %.not.i.i = icmp eq i32 %.0.i48, %i.dn
  br i1 %.not.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEERT_RKNS_6MCInstEj.exit, label %.critedge.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEERT_RKNS_6MCInstEj.exit: ; preds = %.critedge.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i
  %.lcssa.i = phi i64 [ %i.dg, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i ], [ %i.dl, %.critedge.i.i ]
  %i.do = shl i64 %.lcssa.i, 8
  %i.dp = ashr exact i64 %i.do, 8
  %i.dq = inttoptr i64 %i.dp to ptr               ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 0, ptr %i.a, align 8, !tbaa !123
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !497 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !497 ; 2 uses
  %.not8187 = icmp eq ptr %i.ds, %i.du
  br i1 %.not8187, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.l
  %i.dv = icmp eq i64 %i.ec, 0
  br i1 %i.dv, label %._crit_edge.thread, label %bb.m

.lr.ph:                                           ; preds = %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEERT_RKNS_6MCInstEj.exit, %bb.l
  %.03189 = phi i8 [ %.132, %bb.l ], [ 0, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEERT_RKNS_6MCInstEj.exit ]
  %.sroa.062.088 = phi ptr [ %i.ed, %bb.l ], [ %i.ds, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEERT_RKNS_6MCInstEj.exit ] ; 3 uses
  %i.dw = phi i64 [ %i.ec, %bb.l ], [ 0, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEERT_RKNS_6MCInstEj.exit ] ; 2 uses
  %i.dx = load i8, ptr %.sroa.062.088, align 8, !tbaa !499 ; 2 uses
  %i.dy = icmp eq i8 %i.dx, 0
  br i1 %i.dy, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.062.088, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !1058
  %i.eb = add nsw i64 %i.dw, %i.ea                ; 2 uses
  store i64 %i.eb, ptr %i.a, align 8, !tbaa !123
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %i.ec = phi i64 [ %i.eb, %bb.k ], [ %i.dw, %.lr.ph ] ; 2 uses
  %.132 = phi i8 [ %i.dx, %bb.k ], [ %.03189, %.lr.ph ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.062.088, i64 16 ; 2 uses
  %.not81 = icmp eq ptr %i.ed, %i.du
  br i1 %.not81, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %._crit_edge
  %i.ee = icmp eq i8 %.132, 1
  br i1 %i.ee, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ef = load ptr, ptr %i.cj, align 8, !tbaa !67
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !235
  %i.ei = trunc i64 %i.eh to i32                  ; 6 uses
  %i.ej = load ptr, ptr %i.m, align 8, !tbaa !244 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not10.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ej, %bb.n ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.l, %bb.n ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !191
  %i.em = icmp ult i32 %i.el, %i.ei               ; 3 uses
  %.19.i.i.i = select i1 %i.em, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.em, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !245 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPKSt13_Rb_tree_nodeIjEPKSt18_Rb_tree_node_baseRKj.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1054

_ZNKSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPKSt13_Rb_tree_nodeIjEPKSt18_Rb_tree_node_baseRKj.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.en = icmp eq ptr %.19.i.i.i, %i.l
  br i1 %i.en, label %.lr.ph.i.i.i52.preheader, label %_ZNKSt3setIjSt4lessIjESaIjEE5countERKj.exit

_ZNKSt3setIjSt4lessIjESaIjEE5countERKj.exit:      ; preds = %_ZNKSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPKSt13_Rb_tree_nodeIjEPKSt18_Rb_tree_node_baseRKj.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.em, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.eo = load i32, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !191
  %.not82 = icmp ugt i32 %i.eo, %i.ei
  br i1 %.not82, label %.lr.ph.i.i.i52.preheader, label %._crit_edge.thread

.lr.ph.i.i.i52.preheader:                         ; preds = %_ZNKSt3setIjSt4lessIjESaIjEE5countERKj.exit, %_ZNKSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPKSt13_Rb_tree_nodeIjEPKSt18_Rb_tree_node_baseRKj.exit.i.i
  br label %.lr.ph.i.i.i52

.lr.ph.i.i.i52:                                   ; preds = %.lr.ph.i.i.i52.preheader, %.lr.ph.i.i.i52
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i52 ], [ %i.ej, %.lr.ph.i.i.i52.preheader ] ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !191 ; 2 uses
  %i.er = icmp ugt i32 %i.eq, %i.ei               ; 2 uses
  %.in.v.i.i.i = select i1 %i.er, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !245 ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i53, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i52, !llvm.loop !1055

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i52
  br i1 %i.er, label %._crit_edge.thread.i.i.i, label %bb.p

._crit_edge.thread.i.i.i:                         ; preds = %bb.n, %._crit_edge.i.i.i
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.l, %bb.n ] ; 4 uses
  %i.es = load ptr, ptr %i.n, align 8, !tbaa !250
  %i.et = icmp eq ptr %.019.lcssa29.i.i.i, %i.es
  br i1 %i.et, label %select.unfold.i.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.eu = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #35
  %.phi.trans.insert.i.i54 = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %.pre.i.i55 = load i32, ptr %.phi.trans.insert.i.i54, align 4, !tbaa !191
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i
  %i.ev = phi i32 [ %.pre.i.i55, %bb.o ], [ %i.eq, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.o ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ew = icmp ult i32 %i.ev, %i.ei
  br i1 %i.ew, label %select.unfold.i.i, label %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit

select.unfold.i.i:                                ; preds = %bb.p, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.p ] ; 3 uses
  %i.ex = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.l
  br i1 %i.ex, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %select.unfold.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !191
  %i.fa = icmp ugt i32 %i.ez, %i.ei
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.q, %select.unfold.i.i
  %i.fb = phi i1 [ %i.fa, %bb.q ], [ true, %select.unfold.i.i ]
  %i.fc = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  store i32 %i.ei, ptr %i.fd, align 4, !tbaa !191
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fb, ptr noundef nonnull %i.fc, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.l) #31
  %i.fe = load i64, ptr %i.p, align 8, !tbaa !249
  %i.ff = add i64 %i.fe, 1
  store i64 %i.ff, ptr %i.p, align 8, !tbaa !249
  br label %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit

_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit:      ; preds = %bb.p, %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.fg = load ptr, ptr %i.q, align 8, !tbaa !316, !nonnull !64, !align !99 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 128
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !442, !nonnull !64, !align !99
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 1568
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !189 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !55
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1560
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = call noundef zeroext i1 %i.fn(ptr noundef nonnull align 8 dereferenceable(536) %i.fk, ptr noundef nonnull align 8 dereferenceable(128) %i.ah) #31, !inline_history !9 ; 0 uses
  %i.fp = load ptr, ptr %i.cj, align 8, !tbaa !67
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !235
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fg, i64 904
  %i.ft = and i64 %i.fr, 4294967295
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !67
  %i.fv = getelementptr inbounds nuw [88 x i8], ptr %i.fu, i64 %i.ft ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 72
  %i.fx = load i8, ptr %i.fw, align 8, !tbaa !452
  %i.fy = and i8 %i.fx, -2
  %or.cond = icmp eq i8 %i.fy, 6
  br i1 %or.cond, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit
  %i.fz = load i64, ptr %i.a, align 8, !tbaa !123
  %i.ga = sub nsw i64 0, %i.fz
  store i64 %i.ga, ptr %i.a, align 8, !tbaa !123
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 64
  %i.gc = load i8, ptr %i.gb, align 8, !tbaa !453
  %.not.i.i.i57 = icmp eq i8 %i.gc, 0
  br i1 %.not.i.i.i57, label %_ZNK4llvm16MCCFIInstruction9getOffsetEv.exit, label %bb.t
end_hunk_7
begin_hunk_8_@_ZN4llvm4bolt14ShrinkWrapping15classifyCSRUsesEv:bb.a
  %i.gg = sub i32 %.117.i.ph, %i.ey
  %i.gh = icmp ugt i32 %i.gg, -8
  br i1 %i.gh, label %_ZN4llvm9BitVectoraNERKS0_.exit, label %scalar.ph387

scalar.ph403:                                     ; preds = %scalar.ph403.prol.loopexit, %scalar.ph403
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph403 ], [ %indvars.iv.i.unr, %scalar.ph403.prol.loopexit ] ; 6 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.i
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !123
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.i ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !123
  %i.gm = and i64 %i.gl, %i.gj
  store i64 %i.gm, ptr %i.gk, align 8, !tbaa !123
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.next.i
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !123
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !123
  %i.gr = and i64 %i.gq, %i.go
  store i64 %i.gr, ptr %i.gp, align 8, !tbaa !123
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.next.i.1
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !123
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !123
  %i.gw = and i64 %i.gv, %i.gt
  store i64 %i.gw, ptr %i.gu, align 8, !tbaa !123
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.next.i.2
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !123
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !123
  %i.hb = and i64 %i.ha, %i.gy
  store i64 %i.hb, ptr %i.gz, align 8, !tbaa !123
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.fc
  br i1 %.not.i.3, label %.preheader.i, label %scalar.ph403, !llvm.loop !1071

scalar.ph387:                                     ; preds = %scalar.ph387.prol.loopexit, %scalar.ph387
  %.117.i = phi i32 [ %i.hz, %scalar.ph387 ], [ %.117.i.unr, %scalar.ph387.prol.loopexit ] ; 9 uses
  %i.hc = zext i32 %.117.i to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.hc
  store i64 0, ptr %i.hd, align 8, !tbaa !123
  %i.he = add i32 %.117.i, 1
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.hf
  store i64 0, ptr %i.hg, align 8, !tbaa !123
  %i.hh = add i32 %.117.i, 2
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.hi
  store i64 0, ptr %i.hj, align 8, !tbaa !123
  %i.hk = add i32 %.117.i, 3
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.hl
  store i64 0, ptr %i.hm, align 8, !tbaa !123
  %i.hn = add i32 %.117.i, 4
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.ho
  store i64 0, ptr %i.hp, align 8, !tbaa !123
  %i.hq = add i32 %.117.i, 5
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.hr
  store i64 0, ptr %i.hs, align 8, !tbaa !123
  %i.ht = add i32 %.117.i, 6
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.hu
  store i64 0, ptr %i.hv, align 8, !tbaa !123
  %i.hw = add i32 %.117.i, 7
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.hx
  store i64 0, ptr %i.hy, align 8, !tbaa !123
  %i.hz = add i32 %.117.i, 8                      ; 2 uses
  %.not9.i.7 = icmp eq i32 %i.hz, %i.ey
  br i1 %.not9.i.7, label %_ZN4llvm9BitVectoraNERKS0_.exit, label %scalar.ph387, !llvm.loop !1072

_ZN4llvm9BitVectoraNERKS0_.exit:                  ; preds = %scalar.ph387.prol.loopexit, %scalar.ph387, %middle.block394, %.preheader.i
  %i.ia = load i32, ptr %i.df, align 8, !tbaa !124, !noalias !1095 ; 2 uses
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %_ZNK4llvm9BitVector8set_bitsEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm9BitVectoraNERKS0_.exit
  %i.ic = add i32 %i.ia, -1                       ; 2 uses
  %i.id = lshr i32 %i.ic, 6                       ; 3 uses
  %i.ie = load ptr, ptr %2, align 8, !tbaa !67, !noalias !1095 ; 2 uses
  %i.if = and i32 %i.ic, 63
  %i.ig = xor i32 %i.if, 63
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = lshr i64 -1, %i.ih                      ; 2 uses
  %i.ij = zext nneg i32 %i.id to i64
  %i.ik = add nuw nsw i32 %i.id, 1
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.ik to i64
  %i.il = load i64, ptr %i.ie, align 8, !tbaa !123, !noalias !1095
  %i.im = icmp eq i32 %i.id, 0                    ; 2 uses
  %i.in = select i1 %i.im, i64 %i.ii, i64 -1
  %.230.peel.i.i.i.i.i = and i64 %i.il, %i.in     ; 2 uses
  %.not37.peel.i.i.i.i.i = icmp eq i64 %.230.peel.i.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %i.im, label %_ZNK4llvm9BitVector8set_bitsEv.exit, label %.peel.next.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.i, %bb.k
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.k ], [ 1, %bb.i ] ; 4 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv.i.i.i.i.i
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !123, !noalias !1095
  %i.iq = icmp eq i64 %indvars.iv.i.i.i.i.i, %i.ij
  %i.ir = select i1 %i.iq, i64 %i.ii, i64 -1
  %.230.i.i.i.i.i = and i64 %i.ir, %i.ip          ; 2 uses
  %.not37.i.i.i.i.i = icmp eq i64 %.230.i.i.i.i.i, 0
  br i1 %.not37.i.i.i.i.i, label %bb.k, label %.loopexit48.i.i.i.i.i

.loopexit48.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i
  %.pre.i.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.is = shl nuw i32 %.pre.i.i.i.i.i, 6
  br label %bb.j

bb.j:                                             ; preds = %.loopexit48.i.i.i.i.i, %bb.h
  %.pre-phi.i.i.i.i.i = phi i32 [ %i.is, %.loopexit48.i.i.i.i.i ], [ 0, %bb.h ]
  %.230.lcssa.i.i.i.i.i = phi i64 [ %.230.i.i.i.i.i, %.loopexit48.i.i.i.i.i ], [ %.230.peel.i.i.i.i.i, %bb.h ]
  %i.it = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i.i.i, i1 true)
  %i.iu = trunc nuw nsw i64 %i.it to i32
  %i.iv = or disjoint i32 %.pre-phi.i.i.i.i.i, %i.iu
  br label %_ZNK4llvm9BitVector8set_bitsEv.exit

bb.k:                                             ; preds = %.peel.next.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK4llvm9BitVector8set_bitsEv.exit, label %.peel.next.i.i.i.i.i, !llvm.loop !1

_ZNK4llvm9BitVector8set_bitsEv.exit:              ; preds = %bb.k, %_ZN4llvm9BitVectoraNERKS0_.exit, %bb.i, %bb.j
  %.4.i.i.i.i.i = phi i32 [ -1, %_ZN4llvm9BitVectoraNERKS0_.exit ], [ %i.iv, %bb.j ], [ -1, %bb.i ], [ -1, %bb.k ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0208.0247, i64 24 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0208.0247, i64 16 ; 2 uses
  %i.iy = ptrtoint ptr %.sroa.0208.0247 to i64    ; 4 uses
  br label %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit

_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit: ; preds = %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit.backedge, %_ZNK4llvm9BitVector8set_bitsEv.exit
  %.sroa.4197.0 = phi i32 [ %.4.i.i.i.i.i, %_ZNK4llvm9BitVector8set_bitsEv.exit ], [ %.sroa.4197.0.be, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit.backedge ] ; 5 uses
  switch i32 %.sroa.4197.0, label %bb.m [
    i32 -1, label %bb.l
    i32 0, label %bb.am
  ]

bb.l:                                             ; preds = %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit
  %i.iz = load i8, ptr %i.dt, align 8, !tbaa !533, !range !63, !noundef !64
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %bb.ar, label %.loopexit

bb.m:                                             ; preds = %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit
  %i.jb = load ptr, ptr %i.di, align 8, !tbaa !100, !nonnull !64, !align !99
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 1568
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !189 ; 2 uses
  %i.je = load i8, ptr %i.dk, align 8, !tbaa !190, !range !63, !noundef !64
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %._crit_edge.i.i, label %bb.n

._crit_edge.i.i:                                  ; preds = %bb.m
  %.0.pre.i.i = load i32, ptr %i.dj, align 4, !tbaa !191
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit.i

bb.n:                                             ; preds = %bb.m
  %i.jg = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.jd, ptr nonnull @.str.27, i64 12) ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.jg to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.dj, align 4
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit.i

_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit.i: ; preds = %bb.n, %._crit_edge.i.i
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.jg, %bb.n ] ; 3 uses
  %i.jh = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.jd, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0208.0247, i32 noundef %.0.i.i) #31, !noalias !1096
  br i1 %i.jh, label %bb.o, label %_ZN4llvm4bolt19CalleeSavedAnalysis11getSavedRegERKNS_6MCInstE.exit

bb.o:                                             ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit.i
  %i.ji = load i32, ptr %i.iw, align 8, !tbaa !121, !noalias !1096 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.ji, -1         ; 2 uses
  %i.jj = load ptr, ptr %i.ix, align 8, !tbaa !67, !noalias !1096 ; 4 uses
  %i.jk = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %i.jj, i64 %i.jk ; 2 uses
  %i.jm = load i8, ptr %i.jl, align 8, !tbaa !234, !noalias !1096
  %i.jn = icmp eq i8 %i.jm, 6
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !noalias !1096
  %i.jq = icmp eq ptr %i.jp, null
  %i.jr = select i1 %i.jn, i1 %i.jq, i1 false
  br i1 %i.jr, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.o, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.jk, %bb.o ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.js = icmp sgt i64 %indvars.iv.i.i.i, 0
  call void @llvm.assume(i1 %i.js)
  %i.jt = getelementptr inbounds nuw [16 x i8], ptr %i.jj, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 8, !tbaa !234, !noalias !1096
  %i.jv = icmp eq i8 %i.ju, 6
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !noalias !1096
  %i.jy = icmp eq ptr %i.jx, null
  %i.jz = select i1 %i.jv, i1 %i.jy, i1 false
  br i1 %i.jz, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.ka = trunc nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.o
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.o ], [ %i.ka, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.ji, %.01318.i.i.i.lcssa.i.i.i
  %i.kb = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.kb, %i.ji
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.kc = zext i32 %i.kb to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.ji to i64
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.jj, i64 %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !235, !noalias !1096 ; 2 uses
  %i.kg = lshr i64 %i.kf, 56
  %i.kh = trunc nuw nsw i64 %i.kg to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.kh
  br i1 %.not.i3.i.i.i, label %.loopexit.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ %i.kc, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.ki = getelementptr inbounds nuw [16 x i8], ptr %i.jj, i64 %indvars.iv.next.i.i.i.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !235, !noalias !1096 ; 2 uses
  %i.kl = lshr i64 %i.kk, 56
  %i.km = trunc nuw nsw i64 %i.kl to i32
  %.not.i.i.i.i58 = icmp eq i32 %.0.i.i, %i.km
  br i1 %.not.i.i.i.i58, label %.loopexit.i, label %.critedge.i.i.i.i

.loopexit.i:                                      ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.kf, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.kk, %.critedge.i.i.i.i ]
  %i.kn = shl i64 %.lcssa.i.i.i, 8
  %i.ko = ashr exact i64 %i.kn, 8
  %i.kp = inttoptr i64 %i.ko to ptr
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !191
  %i.ks = and i32 %i.kr, 65535
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis11getSavedRegERKNS_6MCInstE.exit

_ZN4llvm4bolt19CalleeSavedAnalysis11getSavedRegERKNS_6MCInstE.exit: ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit.i, %.loopexit.i
  %.0.i = phi i32 [ %i.ks, %.loopexit.i ], [ 0, %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit.i ]
  %.not = icmp eq i32 %.sroa.4197.0, %.0.i
  br i1 %.not, label %bb.am, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis11getSavedRegERKNS_6MCInstE.exit
  %i.kt = load ptr, ptr %i.di, align 8, !tbaa !100, !nonnull !64, !align !99
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1568
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !189 ; 2 uses
  %i.kw = load i8, ptr %i.dm, align 8, !tbaa !190, !range !63, !noundef !64
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %._crit_edge.i.i81, label %bb.q

._crit_edge.i.i81:                                ; preds = %bb.p
  %.0.pre.i.i82 = load i32, ptr %i.dl, align 4, !tbaa !191
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit.i

bb.q:                                             ; preds = %bb.p
  %i.ky = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.kv, ptr nonnull @.str.28, i64 15) ; 2 uses
  %.sroa.0.0.insert.ext.i.i59 = zext i32 %i.ky to i64
  %.sroa.0.0.insert.insert.i.i60 = or disjoint i64 %.sroa.0.0.insert.ext.i.i59, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i60, ptr %i.dl, align 4
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit.i

_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit.i: ; preds = %bb.q, %._crit_edge.i.i81
  %.0.i.i61 = phi i32 [ %.0.pre.i.i82, %._crit_edge.i.i81 ], [ %i.ky, %bb.q ] ; 3 uses
  %i.kz = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.kv, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0208.0247, i32 noundef %.0.i.i61) #31, !noalias !1097
  br i1 %i.kz, label %bb.r, label %_ZN4llvm4bolt19CalleeSavedAnalysis14getRestoredRegERKNS_6MCInstE.exit

bb.r:                                             ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit.i
  %i.la = load i32, ptr %i.iw, align 8, !tbaa !121, !noalias !1097 ; 4 uses
  %.01317.i.i.i.i.i.i63 = add i32 %i.la, -1       ; 2 uses
  %i.lb = load ptr, ptr %i.ix, align 8, !tbaa !67, !noalias !1097 ; 4 uses
  %i.lc = zext nneg i32 %.01317.i.i.i.i.i.i63 to i64 ; 2 uses
  %i.ld = getelementptr inbounds nuw [16 x i8], ptr %i.lb, i64 %i.lc ; 2 uses
  %i.le = load i8, ptr %i.ld, align 8, !tbaa !234, !noalias !1097
  %i.lf = icmp eq i8 %i.le, 6
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !noalias !1097
  %i.li = icmp eq ptr %i.lh, null
  %i.lj = select i1 %i.lf, i1 %i.li, i1 false
  br i1 %i.lj, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i68, label %.backedge.i.i.i.i.i.i64

.backedge.i.i.i.i.i.i64:                          ; preds = %bb.r, %.backedge.i.i.i.i.i.i64
  %indvars.iv.i.i.i65 = phi i64 [ %indvars.iv.next.i.i.i66, %.backedge.i.i.i.i.i.i64 ], [ %i.lc, %bb.r ] ; 2 uses
  %indvars.iv.next.i.i.i66 = add nsw i64 %indvars.iv.i.i.i65, -1 ; 3 uses
  %i.lk = icmp sgt i64 %indvars.iv.i.i.i65, 0
  call void @llvm.assume(i1 %i.lk)
  %i.ll = getelementptr inbounds nuw [16 x i8], ptr %i.lb, i64 %indvars.iv.next.i.i.i66 ; 2 uses
  %i.lm = load i8, ptr %i.ll, align 8, !tbaa !234, !noalias !1097
  %i.ln = icmp eq i8 %i.lm, 6
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !noalias !1097
  %i.lq = icmp eq ptr %i.lp, null
  %i.lr = select i1 %i.ln, i1 %i.lq, i1 false
  br i1 %i.lr, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i67, label %.backedge.i.i.i.i.i.i64

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i67: ; preds = %.backedge.i.i.i.i.i.i64
  %i.ls = trunc nsw i64 %indvars.iv.next.i.i.i66 to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i68

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i68: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i67, %bb.r
  %.01318.i.i.i.lcssa.i.i.i69 = phi i32 [ %.01317.i.i.i.i.i.i63, %bb.r ], [ %i.ls, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i67 ] ; 2 uses
  %.not.i.not.i.i.i.i70 = icmp ne i32 %i.la, %.01318.i.i.i.lcssa.i.i.i69
  %i.lt = add nuw i32 %.01318.i.i.i.lcssa.i.i.i69, 1 ; 2 uses
  %.not1324.i.i.i.i71 = icmp ult i32 %i.lt, %i.la
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i70)
  call void @llvm.assume(i1 %.not1324.i.i.i.i71)
  %i.lu = zext i32 %i.lt to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i72 = zext i32 %i.la to i64
  %i.lv = getelementptr inbounds nuw [16 x i8], ptr %i.lb, i64 %i.lu
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !235, !noalias !1097 ; 2 uses
  %i.ly = lshr i64 %i.lx, 56
  %i.lz = trunc nuw nsw i64 %i.ly to i32
  %.not.i3.i.i.i73 = icmp eq i32 %.0.i.i61, %i.lz
  br i1 %.not.i3.i.i.i73, label %.loopexit.i79, label %.critedge.i.i.i.i74

.critedge.i.i.i.i74:                              ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i68, %.critedge.i.i.i.i74
  %indvars.iv.i4.i.i.i75 = phi i64 [ %indvars.iv.next.i.i.i.i76, %.critedge.i.i.i.i74 ], [ %i.lu, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i68 ]
  %indvars.iv.next.i.i.i.i76 = add nuw nsw i64 %indvars.iv.i4.i.i.i75, 1 ; 3 uses
  %exitcond.not.i.i.i.i77 = icmp ne i64 %indvars.iv.next.i.i.i.i76, %wide.trip.count.i.i.i.i72
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i77)
  %i.ma = getelementptr inbounds nuw [16 x i8], ptr %i.lb, i64 %indvars.iv.next.i.i.i.i76
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !235, !noalias !1097 ; 2 uses
  %i.md = lshr i64 %i.mc, 56
  %i.me = trunc nuw nsw i64 %i.md to i32
  %.not.i.i.i.i78 = icmp eq i32 %.0.i.i61, %i.me
  br i1 %.not.i.i.i.i78, label %.loopexit.i79, label %.critedge.i.i.i.i74

.loopexit.i79:                                    ; preds = %.critedge.i.i.i.i74, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i68
  %.lcssa.i.i.i80 = phi i64 [ %i.lx, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i68 ], [ %i.mc, %.critedge.i.i.i.i74 ]
  %i.mf = shl i64 %.lcssa.i.i.i80, 8
  %i.mg = ashr exact i64 %i.mf, 8
  %i.mh = inttoptr i64 %i.mg to ptr
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !191
  %i.mk = and i32 %i.mj, 65535
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis14getRestoredRegERKNS_6MCInstE.exit

_ZN4llvm4bolt19CalleeSavedAnalysis14getRestoredRegERKNS_6MCInstE.exit: ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit.i, %.loopexit.i79
  %.0.i62 = phi i32 [ %i.mk, %.loopexit.i79 ], [ 0, %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit.i ]
  %.not40 = icmp eq i32 %.sroa.4197.0, %.0.i62
  br i1 %.not40, label %bb.am, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis14getRestoredRegERKNS_6MCInstE.exit
  %i.ml = sext i32 %.sroa.4197.0 to i64
  %i.mm = load ptr, ptr %i.bu, align 8, !tbaa !528
  %i.mn = getelementptr inbounds nuw [72 x i8], ptr %i.mm, i64 %i.ml
  %i.mo = load i64, ptr %i.do, align 8, !tbaa !477 ; 2 uses
  %i.mp = urem i64 %i.iy, %i.mo                   ; 3 uses
  %i.mq = load ptr, ptr %i.dn, align 8, !tbaa !478
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %i.mp
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i150 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i150, label %.loopexit.i152, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !157 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !129
  %i.mw = icmp eq ptr %.sroa.0208.0247, %i.mv
  br i1 %i.mw, label %_ZNSt8__detail9_Map_baseIPKN4llvm6MCInstESt4pairIKS4_mESaIS7_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS4_.exit, label %.lr.ph.i.i.i151

bb.u:                                             ; preds = %bb.v
  %i.mx = icmp eq ptr %.sroa.0208.0247, %i.na
  br i1 %i.mx, label %_ZNSt8__detail9_Map_baseIPKN4llvm6MCInstESt4pairIKS4_mESaIS7_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS4_.exit, label %.lr.ph.i.i.i151, !llvm.loop !15

.lr.ph.i.i.i151:                                  ; preds = %bb.t, %bb.u
  %.020.i.i.i = phi ptr [ %i.my, %bb.u ], [ %i.mt, %bb.t ]
  %i.my = load ptr, ptr %.020.i.i.i, align 8, !tbaa !157 ; 4 uses
  %.not18.i.i.i = icmp eq ptr %i.my, null
  br i1 %.not18.i.i.i, label %.loopexit.i152, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i151
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !129 ; 2 uses
  %i.nb = ptrtoint ptr %i.na to i64
  %i.nc = urem i64 %i.nb, %i.mo
  %.not19.i.i.i = icmp eq i64 %i.nc, %i.mp
  br i1 %.not19.i.i.i, label %bb.u, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !15

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.v
  br label %.loopexit.i152, !llvm.loop !15

.loopexit.i152:                                   ; preds = %.lr.ph.i.i.i151, %..loopexit_crit_edge21.i.i.i, %bb.s
  %i.nd = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 8 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store ptr %.sroa.0208.0247, ptr %i.ne, align 8, !tbaa !480
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store i64 0, ptr %i.nf, align 8, !tbaa !481
  %i.ng = load i64, ptr %i.do, align 8, !tbaa !477
  %i.nh = load i64, ptr %i.dq, align 8, !tbaa !482
  %i.ni = call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i64 noundef %i.ng, i64 noundef %i.nh, i64 noundef 1) #31 ; 2 uses
  %i.nj = extractvalue { i8, i64 } %i.ni, 0
  %i.nk = trunc i8 %i.nj to i1
  br i1 %i.nk, label %bb.w, label %.loopexit.i152._crit_edge

.loopexit.i152._crit_edge:                        ; preds = %.loopexit.i152
  %.pre279 = load ptr, ptr %i.dn, align 8, !tbaa !478
  br label %bb.ah

bb.w:                                             ; preds = %.loopexit.i152
  %i.nl = extractvalue { i8, i64 } %i.ni, 1       ; 7 uses
  %i.nm = icmp eq i64 %i.nl, 1
  br i1 %i.nm, label %bb.x, label %bb.y, !prof !491

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %i.dr, align 8, !tbaa !534
  br label %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i

bb.y:                                             ; preds = %bb.w
  %i.nn = icmp ugt i64 %i.nl, 1152921504606846975
  br i1 %i.nn, label %bb.z, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4llvm6MCInstEmELb0EEEEE19_M_allocate_bucketsEm.exit.i.i, !prof !491

bb.z:                                             ; preds = %bb.y
  %i.no = icmp ugt i64 %i.nl, 2305843009213693951
  br i1 %i.no, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

bb.ab:                                            ; preds = %bb.z
  call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4llvm6MCInstEmELb0EEEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %bb.y
  %i.np = shl nuw nsw i64 %i.nl, 3                ; 2 uses
  %i.nq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.np) #33 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.nq, i8 0, i64 %i.np, i1 false)
  br label %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i

_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4llvm6MCInstEmELb0EEEEE19_M_allocate_bucketsEm.exit.i.i, %bb.x
  %.0.i.i167 = phi ptr [ %i.dr, %bb.x ], [ %i.nq, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4llvm6MCInstEmELb0EEEEE19_M_allocate_bucketsEm.exit.i.i ] ; 4 uses
  %i.nr = load ptr, ptr %i.ds, align 8, !tbaa !483 ; 2 uses
  store ptr null, ptr %i.ds, align 8, !tbaa !483
  %.not29.i = icmp eq ptr %i.nr, null
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i, %bb.af
  %.031.i = phi i64 [ %.1.i169, %bb.af ], [ 0, %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i ] ; 2 uses
  %.02530.i = phi ptr [ %i.ns, %bb.af ], [ %i.nr, %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i ] ; 8 uses
  %i.ns = load ptr, ptr %.02530.i, align 8, !tbaa !157 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.02530.i, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !129
  %i.nv = ptrtoint ptr %i.nu to i64
  %i.nw = urem i64 %i.nv, %i.nl                   ; 3 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i167, i64 %i.nw ; 3 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !160 ; 2 uses
  %.not27.i = icmp eq ptr %i.ny, null
  br i1 %.not27.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.lr.ph.i168
  %i.nz = load ptr, ptr %i.ds, align 8, !tbaa !483
  store ptr %i.nz, ptr %.02530.i, align 8, !tbaa !157
  store ptr %.02530.i, ptr %i.ds, align 8, !tbaa !483
  store ptr %i.ds, ptr %i.nx, align 8, !tbaa !160
  %i.oa = load ptr, ptr %.02530.i, align 8, !tbaa !157
  %.not28.i = icmp eq ptr %i.oa, null
  br i1 %.not28.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i167, i64 %.031.i
  store ptr %.02530.i, ptr %i.ob, align 8, !tbaa !160
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i168
  %i.oc = load ptr, ptr %i.ny, align 8, !tbaa !157
  store ptr %i.oc, ptr %.02530.i, align 8, !tbaa !157
  %i.od = load ptr, ptr %i.nx, align 8, !tbaa !160
  store ptr %.02530.i, ptr %i.od, align 8, !tbaa !157
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.1.i169 = phi i64 [ %.031.i, %bb.ae ], [ %i.nw, %bb.ad ], [ %i.nw, %bb.ac ]
  %.not.i170 = icmp eq ptr %i.ns, null
  br i1 %.not.i170, label %._crit_edge.i, label %.lr.ph.i168, !llvm.loop !18

._crit_edge.i:                                    ; preds = %bb.af, %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i
  %i.oe = load ptr, ptr %i.dn, align 8, !tbaa !478 ; 2 uses
  %i.of = icmp eq ptr %i.oe, %i.dr
  br i1 %i.of, label %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i
  %i.og = load i64, ptr %i.do, align 8, !tbaa !477
  %i.oh = shl i64 %i.og, 3
  call void @_ZdlPvm(ptr noundef %i.oe, i64 noundef %i.oh) #34
  br label %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit

_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit: ; preds = %._crit_edge.i, %bb.ag
  store i64 %i.nl, ptr %i.do, align 8, !tbaa !477
  store ptr %.0.i.i167, ptr %i.dn, align 8, !tbaa !478
  %i.oi = urem i64 %i.iy, %i.nl
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.i152._crit_edge, %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit
  %i.oj = phi ptr [ %.0.i.i167, %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE.exit ], [ %.pre279, %.loopexit.i152._crit_edge ] ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN4llvm4bolt14ShrinkWrapping20computeSaveLocationsEv:bb.a
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !123
  %i.hy = and i64 %i.hx, %i.hv
  store i64 %i.hy, ptr %i.hw, align 8, !tbaa !123
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv.next.i
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !123
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.next.i ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !123
  %i.id = and i64 %i.ic, %i.ia
  store i64 %i.id, ptr %i.ib, align 8, !tbaa !123
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv.next.i.1
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !123
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !123
  %i.ii = and i64 %i.ih, %i.if
  store i64 %i.ii, ptr %i.ig, align 8, !tbaa !123
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv.next.i.2
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !123
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !123
  %i.in = and i64 %i.im, %i.ik
  store i64 %i.in, ptr %i.il, align 8, !tbaa !123
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %.not.i89.3 = icmp eq i64 %indvars.iv.next.i.3, %i.go
  br i1 %.not.i89.3, label %.preheader.i, label %scalar.ph327, !llvm.loop !1114

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.117.i = phi i32 [ %i.jl, %scalar.ph ], [ %.117.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.io = zext i32 %.117.i to i64
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.io
  store i64 0, ptr %i.ip, align 8, !tbaa !123
  %i.iq = add i32 %.117.i, 1
  %i.ir = zext i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.ir
  store i64 0, ptr %i.is, align 8, !tbaa !123
  %i.it = add i32 %.117.i, 2
  %i.iu = zext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.iu
  store i64 0, ptr %i.iv, align 8, !tbaa !123
  %i.iw = add i32 %.117.i, 3
  %i.ix = zext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.ix
  store i64 0, ptr %i.iy, align 8, !tbaa !123
  %i.iz = add i32 %.117.i, 4
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.ja
  store i64 0, ptr %i.jb, align 8, !tbaa !123
  %i.jc = add i32 %.117.i, 5
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.jd
  store i64 0, ptr %i.je, align 8, !tbaa !123
  %i.jf = add i32 %.117.i, 6
  %i.jg = zext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.jg
  store i64 0, ptr %i.jh, align 8, !tbaa !123
  %i.ji = add i32 %.117.i, 7
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.jj
  store i64 0, ptr %i.jk, align 8, !tbaa !123
  %i.jl = add i32 %.117.i, 8                      ; 2 uses
  %.not9.i.7 = icmp eq i32 %i.jl, %i.gh
  br i1 %.not9.i.7, label %_ZN4llvm9BitVectoraNERKS0_.exit, label %scalar.ph, !llvm.loop !1115

_ZN4llvm9BitVectoraNERKS0_.exit:                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader.i
  %i.jm = load i32, ptr %i.ba, align 8, !tbaa !124
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gj, i64 64
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !124
  %.not.i90 = icmp eq i32 %i.jm, %i.jo
  br i1 %.not.i90, label %bb.t, label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backERKS2_.exit

bb.t:                                             ; preds = %_ZN4llvm9BitVectoraNERKS0_.exit
  %.not.not.i.i.i.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not.not.i.i.i.i.i, label %_ZNK4llvm9BitVectoreqERKS0_.exit.thread, label %_ZNK4llvm9BitVectoreqERKS0_.exit

_ZNK4llvm9BitVectoreqERKS0_.exit:                 ; preds = %bb.t
  %i.jp = zext i32 %i.gh to i64
  %.idx.i = shl nuw nsw i64 %i.jp, 3
  %i.jq = load ptr, ptr %2, align 8, !tbaa !67
  %i.jr = load ptr, ptr %i.gj, align 8, !tbaa !67
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.jq, ptr %i.jr, i64 %.idx.i)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i, label %_ZNK4llvm9BitVectoreqERKS0_.exit.thread, label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backERKS2_.exit

.lr.ph:                                           ; preds = %_ZNK4llvm9BitVector8set_bitsEv.exit, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit
  %.sroa.4130.0193 = phi i32 [ %i.of, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit ], [ %i.gg, %_ZNK4llvm9BitVector8set_bitsEv.exit ] ; 4 uses
  %i.js = zext i32 %.sroa.4130.0193 to i64
  %i.jt = load ptr, ptr %i.bc, align 8, !tbaa !228
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.js
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !129 ; 3 uses
  %i.jw = load i64, ptr %i.bd, align 8, !tbaa !482
  %.not.not.i.i.i.i.i91 = icmp eq i64 %i.jw, 0
  br i1 %.not.not.i.i.i.i.i91, label %.preheader, label %bb.v

.preheader:                                       ; preds = %.lr.ph, %bb.u
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.u ], [ %i.bg, %.lr.ph ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !157 ; 4 uses
  %.not.i.i.i.i.i93 = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i93, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstEj.exit, label %bb.u

bb.u:                                             ; preds = %.preheader
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !129
  %i.jz = icmp eq ptr %i.cz, %i.jy
  br i1 %i.jz, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstEj.exit, label %.preheader, !llvm.loop !17

bb.v:                                             ; preds = %.lr.ph
  %i.ka = load i64, ptr %i.bf, align 8, !tbaa !477 ; 2 uses
  %i.kb = urem i64 %i.er, %i.ka                   ; 2 uses
  %i.kc = load ptr, ptr %i.be, align 8, !tbaa !478
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.kb
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i.i.i.i92 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i.i.i.i.i92, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstEj.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !157 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !129
  %i.ki = icmp eq ptr %i.cz, %i.kh
  br i1 %i.ki, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstEj.exit, label %.lr.ph.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.y
  %i.kj = icmp eq ptr %i.cz, %i.km
  br i1 %i.kj, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstEj.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !15

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.w, %bb.x
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.kk, %bb.x ], [ %i.kf, %bb.w ]
  %i.kk = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !157 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.kk, null
  br i1 %.not18.i.i.i.i.i.i.i, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstEj.exit, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !129 ; 2 uses
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = urem i64 %i.kn, %i.ka
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.ko, %i.kb
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.x, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !15

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.y
  br label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstEj.exit, !llvm.loop !15

_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstEj.exit: ; preds = %bb.x, %.lr.ph.i.i.i.i.i.i.i, %.preheader, %bb.u, %bb.v, %bb.w, %..loopexit_crit_edge21.i.i.i.i.i.i.i
  %.sroa.06.1.i.i.i.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i.i.i.i ], [ null, %.preheader ], [ %i.kf, %bb.w ], [ null, %bb.v ], [ %.sroa.06.0.i.i.i.i.i, %bb.u ], [ null, %.lr.ph.i.i.i.i.i.i.i ], [ %i.kk, %bb.x ]
  %i.kp = load ptr, ptr %i.bh, align 8, !tbaa !537, !noalias !1131, !nonnull !64, !align !99
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 1568
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !189, !noalias !1131 ; 2 uses
  %i.ks = load i8, ptr %i.bj, align 4, !tbaa !190, !range !63, !noalias !1131, !noundef !64
  %i.kt = trunc nuw i8 %i.ks to i1
  br i1 %i.kt, label %._crit_edge.i.i, label %bb.z

._crit_edge.i.i:                                  ; preds = %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstEj.exit
  %.0.pre.i.i = load i32, ptr %i.bi, align 8, !tbaa !191, !noalias !1131
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i

bb.z:                                             ; preds = %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstEj.exit
  %i.ku = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.kr, ptr nonnull @.str.45, i64 17), !noalias !1131 ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.ku to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bi, align 8, !noalias !1131
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i

_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i: ; preds = %bb.z, %._crit_edge.i.i
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.ku, %bb.z ] ; 3 uses
  %i.kv = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.kr, ptr noundef nonnull align 8 dereferenceable(128) %i.jv, i32 noundef %.0.i.i) #31, !noalias !1132
  br i1 %i.kv, label %bb.aa, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit

bb.aa:                                            ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !121, !noalias !1132 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.kx, -1         ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !67, !noalias !1132 ; 4 uses
  %i.la = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.kz, i64 %i.la ; 2 uses
  %i.lc = load i8, ptr %i.lb, align 8, !tbaa !234, !noalias !1132
  %i.ld = icmp eq i8 %i.lc, 6
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !1132
  %i.lg = icmp eq ptr %i.lf, null
  %i.lh = select i1 %i.ld, i1 %i.lg, i1 false
  br i1 %i.lh, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.aa, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.la, %bb.aa ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.li = icmp sgt i64 %indvars.iv.i.i.i, 0
  call void @llvm.assume(i1 %i.li)
  %i.lj = getelementptr inbounds nuw [16 x i8], ptr %i.kz, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 8, !tbaa !234, !noalias !1132
  %i.ll = icmp eq i8 %i.lk, 6
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !noalias !1132
  %i.lo = icmp eq ptr %i.ln, null
  %i.lp = select i1 %i.ll, i1 %i.lo, i1 false
  br i1 %i.lp, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.lq = trunc nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.aa
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.aa ], [ %i.lq, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.kx, %.01318.i.i.i.lcssa.i.i.i
  %i.lr = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.lr, %i.kx
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.ls = zext i32 %i.lr to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i107 = zext i32 %i.kx to i64
  %i.lt = getelementptr inbounds nuw [16 x i8], ptr %i.kz, i64 %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !235, !noalias !1132 ; 2 uses
  %i.lw = lshr i64 %i.lv, 56
  %i.lx = trunc nuw nsw i64 %i.lw to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.lx
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i108, %.critedge.i.i.i.i ], [ %i.ls, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i108 = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i109 = icmp ne i64 %indvars.iv.next.i.i.i.i108, %wide.trip.count.i.i.i.i107
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i109)
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %i.kz, i64 %indvars.iv.next.i.i.i.i108
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !235, !noalias !1132 ; 2 uses
  %i.mb = lshr i64 %i.ma, 56
  %i.mc = trunc nuw nsw i64 %i.mb to i32
  %.not.i.i.i.i110 = icmp eq i32 %.0.i.i, %i.mc
  br i1 %.not.i.i.i.i110, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.lv, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.ma, %.critedge.i.i.i.i ]
  %i.md = shl i64 %.lcssa.i.i.i, 8
  %i.me = ashr exact i64 %i.md, 8
  %i.mf = inttoptr i64 %i.me to ptr
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit: ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i
  %.sroa.0159.0 = phi ptr [ %i.mg, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i ], [ inttoptr (i64 34 to ptr), %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i ]
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 16
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !481 ; 2 uses
  %i.mj = and i64 %i.mi, 63
  %i.mk = shl nuw i64 1, %i.mj
  %i.ml = lshr i64 %i.mi, 6
  %i.mm = and i64 %i.ml, 67108863
  %i.mn = load ptr, ptr %.sroa.0159.0, align 8, !tbaa !67
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.mm
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !123
  %i.mq = and i64 %i.mp, %i.mk
  %.not175 = icmp eq i64 %i.mq, 0
  br i1 %.not175, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit
  %i.mr = and i32 %.sroa.4130.0193, 63
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = shl nuw i64 1, %i.ms
  %i.mu = lshr i32 %.sroa.4130.0193, 6
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = load ptr, ptr %2, align 8, !tbaa !67
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %i.mv ; 2 uses
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !123
  %i.mz = or i64 %i.my, %i.mt
  store i64 %i.mz, ptr %i.mx, align 8, !tbaa !123
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit
  %i.na = add nuw i32 %.sroa.4130.0193, 1         ; 3 uses
  %i.nb = load i32, ptr %i.fk, align 8, !tbaa !124 ; 2 uses
  %i.nc = icmp eq i32 %i.na, %i.nb
  br i1 %i.nc, label %._crit_edge.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.nd = lshr i32 %i.na, 6                       ; 4 uses
  %i.ne = add i32 %i.nb, -1                       ; 2 uses
  %i.nf = lshr i32 %i.ne, 6                       ; 4 uses
  %.not42.i.i.i.i = icmp samesign ugt i32 %i.nd, %i.nf
  br i1 %.not42.i.i.i.i, label %._crit_edge.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ad
  %i.ng = load ptr, ptr %i.fj, align 8, !tbaa !67 ; 2 uses
  %i.nh = and i32 %i.na, 63                       ; 2 uses
  %i.ni = sub nuw nsw i32 64, %i.nh
  %.not.i.i.i94 = icmp eq i32 %i.nh, 0
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = lshr i64 -1, %i.nj
  %i.nl = xor i64 %i.nk, -1
  %i.nm = and i32 %i.ne, 63
  %i.nn = xor i32 %i.nm, 63
  %i.no = zext nneg i32 %i.nn to i64
  %i.np = lshr i64 -1, %i.no                      ; 2 uses
  %i.nq = zext nneg i32 %i.nd to i64              ; 2 uses
  %i.nr = zext nneg i32 %i.nf to i64
  %i.ns = add nuw nsw i32 %i.nf, 1
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.ns to i64 ; 2 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %i.nq
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !123
  %i.nv = select i1 %.not.i.i.i94, i64 -1, i64 %i.nl
  %i.nw = icmp eq i32 %i.nd, %i.nf
  %i.nx = select i1 %i.nw, i64 %i.np, i64 -1
  %spec.select44.peel.i.i.i.i = and i64 %i.nx, %i.nv
  %.230.peel.i.i.i.i = and i64 %spec.select44.peel.i.i.i.i, %i.nu ; 2 uses
  %.not37.peel.i.i.i.i = icmp eq i64 %.230.peel.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i, label %bb.ae, label %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.peel.i.i.i.i = add nuw nsw i64 %i.nq, 1 ; 2 uses
  %exitcond.peel.not.i.i.i.i = icmp eq i64 %indvars.iv.next.peel.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.peel.not.i.i.i.i, label %._crit_edge.loopexit, label %.peel.next.i.i.i.i

.peel.next.i.i.i.i:                               ; preds = %bb.ae, %bb.af
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.af ], [ %indvars.iv.next.peel.i.i.i.i, %bb.ae ] ; 4 uses
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %indvars.iv.i.i.i.i
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !123
  %i.oa = icmp eq i64 %indvars.iv.i.i.i.i, %i.nr
  %i.ob = select i1 %i.oa, i64 %i.np, i64 -1
  %.230.i.i.i.i = and i64 %i.ob, %i.nz            ; 2 uses
  %.not37.i.i.i.i = icmp eq i64 %.230.i.i.i.i, 0
  br i1 %.not37.i.i.i.i, label %bb.af, label %.loopexit48.i.i.i.i

.loopexit48.i.i.i.i:                              ; preds = %.peel.next.i.i.i.i
  %.pre.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  br label %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit

bb.af:                                            ; preds = %.peel.next.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.loopexit, label %.peel.next.i.i.i.i, !llvm.loop !1

_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit48.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %.pre.i.i.i.i, %.loopexit48.i.i.i.i ], [ %i.nd, %.lr.ph.i.i.i.i ]
  %.230.lcssa.i.i.i.i = phi i64 [ %.230.i.i.i.i, %.loopexit48.i.i.i.i ], [ %.230.peel.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.oc = shl nuw i32 %.pre-phi.i.i.i.i, 6
  %i.od = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i.i, i1 true)
  %i.oe = trunc nuw nsw i64 %i.od to i32
  %i.of = or disjoint i32 %i.oc, %i.oe            ; 2 uses
  %.not174 = icmp eq i32 %i.of, -1
  br i1 %.not174, label %._crit_edge.loopexit, label %.lr.ph

_ZNK4llvm9BitVectoreqERKS0_.exit.thread:          ; preds = %bb.t, %_ZNK4llvm9BitVectoreqERKS0_.exit
  %i.og = load ptr, ptr %i.l, align 8, !tbaa !535
  %i.oh = getelementptr inbounds nuw [24 x i8], ptr %i.og, i64 %indvars.iv ; 4 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8 ; 3 uses
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !236 ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 16 ; 3 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !237
  %.not.i95 = icmp eq ptr %i.oj, %i.ol
  br i1 %.not.i95, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNK4llvm9BitVectoreqERKS0_.exit.thread
  store ptr %i.cz, ptr %i.oj, align 8, !tbaa !129
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  store ptr %i.om, ptr %i.oi, align 8, !tbaa !236
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backERKS2_.exit

bb.ah:                                            ; preds = %_ZNK4llvm9BitVectoreqERKS0_.exit.thread
  %i.on = load ptr, ptr %i.oh, align 8, !tbaa !228 ; 4 uses
  %i.oo = ptrtoint ptr %i.oj to i64
  %i.op = ptrtoint ptr %i.on to i64               ; 2 uses
  %i.oq = sub i64 %i.oo, %i.op                    ; 5 uses
  %i.or = icmp eq i64 %i.oq, 9223372036854775800
  br i1 %i.or, label %bb.ai, label %_ZNKSt6vectorIPN4llvm6MCInstESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #32
  unreachable

_ZNKSt6vectorIPN4llvm6MCInstESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ah
  %i.os = ashr exact i64 %i.oq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.os, i64 1)
  %i.ot = add nsw i64 %.sroa.speculated.i.i.i, %i.os ; 2 uses
  %i.ou = icmp ult i64 %i.ot, %i.os
  %i.ov = call i64 @llvm.umin.i64(i64 %i.ot, i64 1152921504606846975)
  %i.ow = select i1 %i.ou, i64 1152921504606846975, i64 %i.ov ; 3 uses
  %.not.i.i.i96 = icmp ne i64 %i.ow, 0
  call void @llvm.assume(i1 %.not.i.i.i96)
  %i.ox = shl nuw nsw i64 %i.ow, 3
  %i.oy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ox) #33 ; 4 uses
  %i.oz = getelementptr inbounds i8, ptr %i.oy, i64 %i.oq ; 2 uses
  store ptr %i.cz, ptr %i.oz, align 8, !tbaa !129
  %i.pa = icmp sgt i64 %i.oq, 0
  br i1 %i.pa, label %bb.aj, label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.aj:                                            ; preds = %_ZNKSt6vectorIPN4llvm6MCInstESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.oy, ptr align 8 %i.on, i64 %i.oq, i1 false)
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.aj, %_ZNKSt6vectorIPN4llvm6MCInstESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %.not.i17.i.i = icmp eq ptr %i.on, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.pc = load ptr, ptr %i.ok, align 8, !tbaa !237
  %i.pd = ptrtoint ptr %i.pc to i64
  %i.pe = sub i64 %i.pd, %i.op
  call void @_ZdlPvm(ptr noundef nonnull %i.on, i64 noundef %i.pe) #34
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
end_hunk_9
begin_hunk_10_@_ZN4llvm4bolt14ShrinkWrapping17fixPopsPlacementsERKNS_11SmallVectorINS0_12ProgramPointELj4EEElj:bb.a
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.t ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.i
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !123
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.i
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !123
  %i.du = and i64 %i.dt, %i.dr
  %.not11.not.i = icmp eq i64 %i.du, 0
  br i1 %.not11.not.i, label %bb.t, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit.thread134

_ZNK4llvm9BitVector9anyCommonERKS0_.exit.thread134: ; preds = %bb.u, %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit
  %i.dv = load ptr, ptr %i.ax, align 8, !tbaa !129, !noalias !1280 ; 2 uses
  %i.dw = load ptr, ptr %i.aw, align 8, !tbaa !129, !noalias !1281 ; 2 uses
  %.not158182 = icmp eq ptr %i.dv, %i.dw
  br i1 %.not158182, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit.thread134._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm9BitVector9anyCommonERKS0_.exit.thread134, %.loopexit
  %.sroa.0125.0183 = phi ptr [ %i.dx, %.loopexit ], [ %i.dv, %_ZNK4llvm9BitVector9anyCommonERKS0_.exit.thread134 ] ; 3 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.0125.0183, i64 -128 ; 7 uses
  %i.dy = load ptr, ptr %i.ai, align 8, !tbaa !286, !noalias !1282 ; 3 uses
  %i.dz = load ptr, ptr %i.aj, align 8, !tbaa !287, !noalias !1282 ; 2 uses
  %i.ea = load i32, ptr %i.ak, align 4, !tbaa !288, !noalias !1282 ; 4 uses
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %.loopexit.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  %i.ec = add i32 %i.ea, -1                       ; 2 uses
  %i.ed = ptrtoint ptr %i.dx to i64
  %i.ee = mul i64 %i.ed, -4658895280553007687     ; 2 uses
  %i.ef = lshr i64 %i.ee, 31
  %i.eg = xor i64 %i.ef, %i.ee
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = and i32 %i.ec, %i.eh                    ; 3 uses
  %i.ej = zext i32 %i.ei to i64                   ; 2 uses
  %i.ek = lshr i64 %i.ej, 5
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !191, !noalias !1283
  %i.en = and i32 %i.ei, 31
  %i.eo = lshr i32 %i.em, %i.en
  %i.ep = trunc i32 %i.eo to i1
  br i1 %i.ep, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !289

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %bb.w
  %i.eq = phi i64 [ %i.ew, %bb.w ], [ %i.ej, %bb.v ]
  %.017.i.i.i.i = phi i32 [ %i.ev, %bb.w ], [ %i.ei, %bb.v ]
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %i.eq ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !129, !noalias !1283
  %i.et = icmp eq ptr %i.dx, %i.es
  br i1 %i.et, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit.i, label %bb.w, !prof !210

bb.w:                                             ; preds = %.lr.ph.i.i.i.i
  %i.eu = add nuw i32 %.017.i.i.i.i, 1
  %i.ev = and i32 %i.eu, %i.ec                    ; 3 uses
  %i.ew = zext i32 %i.ev to i64                   ; 2 uses
  %i.ex = lshr i64 %i.ew, 5
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !191, !noalias !1283
  %i.fa = and i32 %i.ev, 31
  %i.fb = lshr i32 %i.ez, %i.fa
  %i.fc = trunc i32 %i.fb to i1
  br i1 %i.fc, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !290

.loopexit.i.i.i:                                  ; preds = %bb.w, %bb.v, %.lr.ph
  %i.fd = zext i32 %i.ea to i64                   ; 2 uses
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %i.fd
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i75 = zext i32 %i.ea to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i75, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit.i ], [ %i.fd, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.er, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit.i ], [ %i.fe, %.loopexit.i.i.i ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %.pre-phi.i
  %i.fg = icmp eq ptr %.lcssa.sink.i.i.i, %i.ff
  br i1 %i.fg, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit, label %bb.x

bb.x:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i
  %i.fh = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %.sroa.0.0.copyload.i = load i8, ptr %i.fh, align 8, !tbaa !294, !noalias !1284
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 16
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !235, !noalias !1284 ; 7 uses
  %i.fi = icmp eq i8 %.sroa.0.0.copyload.i, 0
  br i1 %i.fi, label %bb.y, label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.fj = load i64, ptr %i.w, align 8, !tbaa !296, !noalias !1285
  %.not.not.i.i.i.i.i = icmp eq i64 %i.fj, 0
  br i1 %.not.not.i.i.i.i.i, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %bb.y, %bb.z
  %.sroa.06.0.in.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.z ], [ %i.z, %bb.y ]
  %.sroa.06.0.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i, align 8, !tbaa !157, !noalias !1285 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit, label %bb.z

bb.z:                                             ; preds = %.preheader
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !127, !noalias !1285
  %i.fm = icmp eq ptr %.sroa.21.0.copyload.i, %i.fl
  br i1 %i.fm, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i.i, label %.preheader, !llvm.loop !7

bb.aa:                                            ; preds = %bb.y
  %i.fn = ptrtoint ptr %.sroa.21.0.copyload.i to i64
  %i.fo = load i64, ptr %i.y, align 8, !tbaa !297, !noalias !1285 ; 2 uses
  %i.fp = urem i64 %i.fn, %i.fo                   ; 2 uses
  %i.fq = load ptr, ptr %i.x, align 8, !tbaa !298, !noalias !1285
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fp
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !160, !noalias !1285 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !157, !noalias !1285 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !127, !noalias !1285
  %i.fw = icmp eq ptr %.sroa.21.0.copyload.i, %i.fv
  br i1 %i.fw, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ad
  %i.fx = icmp eq ptr %.sroa.21.0.copyload.i, %i.ga
  br i1 %i.fx, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !8

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ab, %bb.ac
  %.020.i.i.i.i.i.i.i = phi ptr [ %i.fy, %bb.ac ], [ %i.ft, %bb.ab ]
  %i.fy = load ptr, ptr %.020.i.i.i.i.i.i.i, align 8, !tbaa !157, !noalias !1285 ; 4 uses
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not18.i.i.i.i.i.i.i, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !127, !noalias !1285 ; 2 uses
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = urem i64 %i.gb, %i.fo
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.gc, %i.fp
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.ac, label %..loopexit_crit_edge21.i.i.i.i.i.i.i, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i.i.i.i:             ; preds = %bb.ad
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit, !llvm.loop !8

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i.i: ; preds = %bb.ac, %bb.z, %bb.ab
  %.sroa.06.1.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i, %bb.z ], [ %i.ft, %bb.ab ], [ %i.fy, %bb.ac ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i, i64 16
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit

bb.ae:                                            ; preds = %bb.x
  %i.ge = load ptr, ptr %i.al, align 8, !tbaa !319, !noalias !1286, !nonnull !64, !align !99
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1568
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !189, !noalias !1286 ; 2 uses
  %i.gh = load i8, ptr %i.an, align 4, !tbaa !190, !range !63, !noalias !1286, !noundef !64
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %._crit_edge.i.i108, label %bb.af

._crit_edge.i.i108:                               ; preds = %bb.ae
  %.0.pre.i.i109 = load i32, ptr %i.am, align 8, !tbaa !191, !noalias !1286
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.gj = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.gg, ptr nonnull @.str.47, i64 20), !noalias !1286 ; 2 uses
  %.sroa.0.0.insert.ext.i.i87 = zext i32 %i.gj to i64
  %.sroa.0.0.insert.insert.i.i88 = or disjoint i64 %.sroa.0.0.insert.ext.i.i87, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i88, ptr %i.am, align 8, !noalias !1286
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i

_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i: ; preds = %bb.af, %._crit_edge.i.i108
  %.0.i.i89 = phi i32 [ %.0.pre.i.i109, %._crit_edge.i.i108 ], [ %i.gj, %bb.af ] ; 3 uses
  %i.gk = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.gg, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.21.0.copyload.i, i32 noundef %.0.i.i89) #31, !noalias !1287
  br i1 %i.gk, label %bb.ag, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit

bb.ag:                                            ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.21.0.copyload.i, i64 24
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !121, !noalias !1287 ; 4 uses
  %.01317.i.i.i.i.i.i91 = add i32 %i.gm, -1       ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.21.0.copyload.i, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !67, !noalias !1287 ; 4 uses
  %i.gp = zext nneg i32 %.01317.i.i.i.i.i.i91 to i64 ; 2 uses
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %i.gp ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 8, !tbaa !234, !noalias !1287
  %i.gs = icmp eq i8 %i.gr, 6
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !noalias !1287
  %i.gv = icmp eq ptr %i.gu, null
  %i.gw = select i1 %i.gs, i1 %i.gv, i1 false
  br i1 %i.gw, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i96, label %.backedge.i.i.i.i.i.i92

.backedge.i.i.i.i.i.i92:                          ; preds = %bb.ag, %.backedge.i.i.i.i.i.i92
  %indvars.iv.i.i.i93 = phi i64 [ %indvars.iv.next.i.i.i94, %.backedge.i.i.i.i.i.i92 ], [ %i.gp, %bb.ag ] ; 2 uses
  %indvars.iv.next.i.i.i94 = add nsw i64 %indvars.iv.i.i.i93, -1 ; 3 uses
  %i.gx = icmp sgt i64 %indvars.iv.i.i.i93, 0
  call void @llvm.assume(i1 %i.gx)
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %indvars.iv.next.i.i.i94 ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 8, !tbaa !234, !noalias !1287
  %i.ha = icmp eq i8 %i.gz, 6
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !noalias !1287
  %i.hd = icmp eq ptr %i.hc, null
  %i.he = select i1 %i.ha, i1 %i.hd, i1 false
  br i1 %i.he, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i95, label %.backedge.i.i.i.i.i.i92

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i95: ; preds = %.backedge.i.i.i.i.i.i92
  %i.hf = trunc nsw i64 %indvars.iv.next.i.i.i94 to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i96

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i96: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i95, %bb.ag
  %.01318.i.i.i.lcssa.i.i.i97 = phi i32 [ %.01317.i.i.i.i.i.i91, %bb.ag ], [ %i.hf, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i95 ] ; 2 uses
  %.not.i.not.i.i.i.i98 = icmp ne i32 %i.gm, %.01318.i.i.i.lcssa.i.i.i97
  %i.hg = add nuw i32 %.01318.i.i.i.lcssa.i.i.i97, 1 ; 2 uses
  %.not1324.i.i.i.i99 = icmp ult i32 %i.hg, %i.gm
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i98)
  call void @llvm.assume(i1 %.not1324.i.i.i.i99)
  %i.hh = zext i32 %i.hg to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i100 = zext i32 %i.gm to i64
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !235, !noalias !1287 ; 2 uses
  %i.hl = lshr i64 %i.hk, 56
  %i.hm = trunc nuw nsw i64 %i.hl to i32
  %.not.i3.i.i.i101 = icmp eq i32 %.0.i.i89, %i.hm
  br i1 %.not.i3.i.i.i101, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i.i, label %.critedge.i.i.i.i102

.critedge.i.i.i.i102:                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i96, %.critedge.i.i.i.i102
  %indvars.iv.i4.i.i.i103 = phi i64 [ %indvars.iv.next.i.i.i.i104, %.critedge.i.i.i.i102 ], [ %i.hh, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i96 ]
  %indvars.iv.next.i.i.i.i104 = add nuw nsw i64 %indvars.iv.i4.i.i.i103, 1 ; 3 uses
  %exitcond.not.i.i.i.i105 = icmp ne i64 %indvars.iv.next.i.i.i.i104, %wide.trip.count.i.i.i.i100
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i105)
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %indvars.iv.next.i.i.i.i104
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !235, !noalias !1287 ; 2 uses
  %i.hq = lshr i64 %i.hp, 56
  %i.hr = trunc nuw nsw i64 %i.hq to i32
  %.not.i.i.i.i106 = icmp eq i32 %.0.i.i89, %i.hr
  br i1 %.not.i.i.i.i106, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i.i, label %.critedge.i.i.i.i102

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i.i: ; preds = %.critedge.i.i.i.i102, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i96
  %.lcssa.i.i.i107 = phi i64 [ %i.hk, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i96 ], [ %i.hp, %.critedge.i.i.i.i102 ]
  %i.hs = shl i64 %.lcssa.i.i.i107, 8
  %i.ht = ashr exact i64 %i.hs, 8
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.preheader, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i.i, %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i, %bb.aa, %..loopexit_crit_edge21.i.i.i.i.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i.i
  %.sroa.0113.0 = phi ptr [ inttoptr (i64 34 to ptr), %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i ], [ inttoptr (i64 34 to ptr), %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.i ], [ %i.gd, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i.i ], [ inttoptr (i64 34 to ptr), %..loopexit_crit_edge21.i.i.i.i.i.i.i ], [ inttoptr (i64 34 to ptr), %.preheader ], [ inttoptr (i64 34 to ptr), %bb.aa ], [ %i.hv, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i.i ], [ inttoptr (i64 34 to ptr), %.lr.ph.i.i.i.i.i.i.i ]
  %i.hw = load i32, ptr %.sroa.0113.0, align 4, !tbaa !284
  %i.hx = sext i32 %i.hw to i64
  %i.hy = icmp eq i64 %3, %i.hx
  br i1 %i.hy, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit
  %i.hz = load ptr, ptr %i.ao, align 8, !tbaa !601, !noalias !1288, !nonnull !64, !align !99
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 1568
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !189, !noalias !1288 ; 2 uses
  %i.ic = load i8, ptr %i.aq, align 4, !tbaa !190, !range !63, !noalias !1288, !noundef !64
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %._crit_edge.i.i, label %bb.ai

._crit_edge.i.i:                                  ; preds = %bb.ah
  %.0.pre.i.i = load i32, ptr %i.ap, align 8, !tbaa !191, !noalias !1288
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.ie = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.ib, ptr nonnull @.str.46, i64 21), !noalias !1288 ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.ie to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.ap, align 8, !noalias !1288
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i

_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i: ; preds = %bb.ai, %._crit_edge.i.i
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.ie, %bb.ai ] ; 3 uses
  %i.if = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.ib, ptr noundef nonnull align 8 dereferenceable(128) %i.dx, i32 noundef %.0.i.i) #31, !noalias !1289
  br i1 %i.if, label %bb.aj, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit

bb.aj:                                            ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i
  %i.ig = getelementptr inbounds i8, ptr %.sroa.0125.0183, i64 -104
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !121, !noalias !1289 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.ih, -1         ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %.sroa.0125.0183, i64 -112
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !67, !noalias !1289 ; 4 uses
  %i.ik = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.ij, i64 %i.ik ; 2 uses
  %i.im = load i8, ptr %i.il, align 8, !tbaa !234, !noalias !1289
  %i.in = icmp eq i8 %i.im, 6
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !1289
  %i.iq = icmp eq ptr %i.ip, null
  %i.ir = select i1 %i.in, i1 %i.iq, i1 false
  br i1 %i.ir, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.aj, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.ik, %bb.aj ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.is = icmp sgt i64 %indvars.iv.i.i.i, 0
  call void @llvm.assume(i1 %i.is)
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %i.ij, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.iu = load i8, ptr %i.it, align 8, !tbaa !234, !noalias !1289
  %i.iv = icmp eq i8 %i.iu, 6
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !noalias !1289
  %i.iy = icmp eq ptr %i.ix, null
  %i.iz = select i1 %i.iv, i1 %i.iy, i1 false
  br i1 %i.iz, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.ja = trunc nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.aj
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.aj ], [ %i.ja, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.ih, %.01318.i.i.i.lcssa.i.i.i
  %i.jb = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.jb, %i.ih
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.jc = zext i32 %i.jb to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.ih to i64
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %i.ij, i64 %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !235, !noalias !1289 ; 2 uses
  %i.jg = lshr i64 %i.jf, 56
  %i.jh = trunc nuw nsw i64 %i.jg to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.jh
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ %i.jc, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.ij, i64 %indvars.iv.next.i.i.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !235, !noalias !1289 ; 2 uses
  %i.jl = lshr i64 %i.jk, 56
  %i.jm = trunc nuw nsw i64 %i.jl to i32
  %.not.i.i.i.i77 = icmp eq i32 %.0.i.i, %i.jm
  br i1 %.not.i.i.i.i77, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.jf, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.jk, %.critedge.i.i.i.i ]
  %i.jn = shl i64 %.lcssa.i.i.i, 8
  %i.jo = ashr exact i64 %i.jn, 8
  %i.jp = inttoptr i64 %i.jo to ptr
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit: ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i
  %.sroa.0111.0 = phi ptr [ %i.jq, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i ], [ inttoptr (i64 34 to ptr), %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i ] ; 2 uses
  %i.jr = load ptr, ptr %i.ag, align 8, !tbaa !528
  %i.js = getelementptr inbounds nuw [72 x i8], ptr %i.jr, i64 %i.ah ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0111.0, i64 8
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !121
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.jw = load i32, ptr %i.jv, align 8, !tbaa !121
  %.sroa.speculated.i78 = call i32 @llvm.umin.i32(i32 %i.jw, i32 %i.ju) ; 2 uses
  %.not15.not.i79 = icmp eq i32 %.sroa.speculated.i78, 0
  br i1 %.not15.not.i79, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit
  %i.jx = load ptr, ptr %.sroa.0111.0, align 8, !tbaa !67
  %i.jy = load ptr, ptr %i.js, align 8, !tbaa !67
  %i.jz = zext i32 %.sroa.speculated.i78 to i64
  br label %bb.al

bb.ak:                                            ; preds = %bb.al
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i81, 1 ; 2 uses
  %.not.not.i85 = icmp eq i64 %indvars.iv.next.i84, %i.jz
  br i1 %.not.not.i85, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit, label %bb.al, !llvm.loop !24

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i80
  %indvars.iv.i81 = phi i64 [ 0, %.lr.ph.i80 ], [ %indvars.iv.next.i84, %bb.ak ] ; 3 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %indvars.iv.i81
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !123
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %indvars.iv.i81
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !123
  %i.ke = and i64 %i.kd, %i.kb
  %.not11.not.i82 = icmp eq i64 %i.ke, 0
  br i1 %.not11.not.i82, label %bb.ak, label %.loopexit

.loopexit:                                        ; preds = %bb.al, %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE.exit
  %.not158 = icmp eq ptr %i.dx, %i.dw
  br i1 %.not158, label %_ZNK4llvm9BitVector9anyCommonERKS0_.exit.thread134._crit_edge, label %.lr.ph

_ZNK4llvm9BitVector9anyCommonERKS0_.exit.thread134._crit_edge: ; preds = %_ZNK4llvm9BitVector9anyCommonERKS0_.exit.thread134, %.loopexit
  store i32 0, ptr %i.c, align 8, !tbaa !121
  br label %.loopexit166

_ZNK4llvm9BitVector9anyCommonERKS0_.exit:         ; preds = %bb.t, %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit, %bb.ak, %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit
  %storemerge187 = phi i8 [ 0, %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit ], [ 1, %bb.ak ], [ 1, %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit ], [ 0, %bb.t ]
  %storemerge = phi ptr [ %i.aw, %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit ], [ %i.dx, %bb.ak ], [ %i.dx, %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit ], [ %i.aw, %bb.t ]
  store i8 %storemerge187, ptr %.050185, align 8, !tbaa !294
  store ptr %storemerge, ptr %.sroa.215.0..sroa_idx, align 8, !tbaa !235
  %i.kf = getelementptr inbounds nuw i8, ptr %.050185, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.kf, %i.v
  br i1 %.not, label %.loopexit166, label %bb.c

.loopexit166:                                     ; preds = %_ZNK4llvm9BitVector9anyCommonERKS0_.exit, %_ZN4llvm11SmallVectorINS_4bolt12ProgramPointELj4EEC2ERKS3_.exit, %_ZNK4llvm9BitVector9anyCommonERKS0_.exit.thread134._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr.838") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !601, !nonnull !64, !align !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !190, !range !63, !noundef !64
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 8, !tbaa !191
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.46, i64 21) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.0.i) #31, !noalias !1292
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !1292
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !alias.scope !1292
  store i32 34, ptr %0, align 8, !tbaa !191, !alias.scope !1292
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !292, !alias.scope !1292
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_13ReachingInsnsILb1EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !121, !noalias !1292 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.p, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67, !noalias !1292 ; 4 uses
  %i.s = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !234, !noalias !1292
  %i.v = icmp eq i8 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1292
  %i.y = icmp eq ptr %i.x, null
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aa = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !234, !noalias !1292
  %i.ad = icmp eq i8 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1292
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ai = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.p, %.01318.i.i.i.lcssa.i.i
  %i.aj = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.aj, %i.p
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !235, !noalias !1292 ; 2 uses
  %i.ao = lshr i64 %i.an, 56
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.ap
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !235, !noalias !1292 ; 2 uses
  %i.at = lshr i64 %i.as, 56
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.au
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.an, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.as, %.critedge.i.i.i ]
  %i.av = shl i64 %.lcssa.i.i, 8
  %i.aw = ashr exact i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !alias.scope !1292
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.az, align 8, !alias.scope !1292
  store ptr %i.ay, ptr %0, align 8, !tbaa !142, !alias.scope !1292
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %bb.c, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt14ShrinkWrapping30scheduleOldSaveRestoresRemovalEjb(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::bolt::ShrinkWrapping::WorklistItem", align 8 ; 7 uses
  %4 = alloca %"struct.llvm::bolt::ShrinkWrapping::WorklistItem", align 8 ; 7 uses
  %5 = alloca %"struct.llvm::bolt::ShrinkWrapping::WorklistItem", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !529, !nonnull !64, !align !99 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1296
  %i.f = load i32, ptr %i.e, align 8, !tbaa !121  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not271 = icmp eq i32 %i.f, 0
  br i1 %.not271, label %._crit_edge275, label %.lr.ph274

.lr.ph274:                                        ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 708 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 716 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 720
  %not. = xor i1 %2, true
  %i.o = zext i1 %not. to i8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 4 uses
  %i.v = mul i32 %1, 37                           ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ai = lshr i32 %1, 6
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = and i32 %1, 63
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 36
  br label %bb.b

._crit_edge275:                                   ; preds = %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph274, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EED2Ev.exit
  %.0272 = phi ptr [ %i.d, %.lr.ph274 ], [ %i.ax, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EED2Ev.exit ] ; 2 uses
  %i.aq = load ptr, ptr %.0272, align 8, !tbaa !127 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !129, !noalias !1349 ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !129, !noalias !1350 ; 2 uses
  %.not236263 = icmp eq ptr %i.as, %i.at
  br i1 %.not236263, label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EED2Ev.exit, label %.lr.ph

._crit_edge269:                                   ; preds = %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.0203.1, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge269
  %i.au = ptrtoint ptr %.sroa.17.1 to i64
  %i.av = ptrtoint ptr %.sroa.0203.1 to i64
  %i.aw = sub i64 %i.au, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0203.1, i64 noundef %i.aw) #34
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4llvm6MCInstESaIS2_EED2Ev.exit:    ; preds = %bb.b, %._crit_edge269, %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %.0272, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ax, %i.h
  br i1 %.not, label %._crit_edge275, label %bb.b

.lr.ph:                                           ; preds = %bb.b, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit
  %.sroa.0203.0267 = phi ptr [ %.sroa.0203.1, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.b ] ; 14 uses
  %.sroa.9.0266 = phi ptr [ %.sroa.9.1, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.b ] ; 10 uses
  %.sroa.17.0265 = phi ptr [ %.sroa.17.1, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit ], [ null, %bb.b ] ; 6 uses
  %.sroa.0200.0264 = phi ptr [ %i.ay, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit ], [ %i.as, %bb.b ] ; 7 uses
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0200.0264, i64 -128 ; 10 uses
  %i.az = load ptr, ptr %i.i, align 8, !tbaa !523, !nonnull !64, !align !99
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1568
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !189 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !55
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1560
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(536) %i.bb, ptr noundef nonnull align 8 dereferenceable(128) %i.ay) #31
  br i1 %i.bf, label %bb.d, label %bb.n

bb.d:                                             ; preds = %.lr.ph
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !266, !nonnull !64, !align !99
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1568
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !189 ; 2 uses
  %i.bj = load i8, ptr %i.ag, align 8, !tbaa !190, !range !63, !noundef !64
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.d
  %.0.pre.i.i = load i32, ptr %i.af, align 4, !tbaa !191
  br label %_ZN4llvm4bolt19StackLayoutModifier18getOffsetCFIRegTagEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.bl = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.bi, ptr nonnull @.str.32, i64 16) ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bl to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.af, align 4
  br label %_ZN4llvm4bolt19StackLayoutModifier18getOffsetCFIRegTagEv.exit.i

_ZN4llvm4bolt19StackLayoutModifier18getOffsetCFIRegTagEv.exit.i: ; preds = %bb.e, %._crit_edge.i.i
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.bl, %bb.e ] ; 3 uses
  %i.bm = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.bi, ptr noundef nonnull align 8 dereferenceable(128) %i.ay, i32 noundef %.0.i.i) #31, !noalias !1351
  br i1 %i.bm, label %bb.f, label %_ZN4llvm4bolt19StackLayoutModifier15getOffsetCFIRegERKNS_6MCInstE.exit

bb.f:                                             ; preds = %_ZN4llvm4bolt19StackLayoutModifier18getOffsetCFIRegTagEv.exit.i
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0200.0264, i64 -104
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !121, !noalias !1351 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.bo, -1         ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.0200.0264, i64 -112
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !67, !noalias !1351 ; 4 uses
  %i.br = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.br ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !234, !noalias !1351
  %i.bu = icmp eq i8 %i.bt, 6
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !1351
  %i.bx = icmp eq ptr %i.bw, null
  %i.by = select i1 %i.bu, i1 %i.bx, i1 false
  br i1 %i.by, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.f, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.br, %bb.f ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.bz = icmp sgt i64 %indvars.iv.i.i.i, 0
  call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !234, !noalias !1351
  %i.cc = icmp eq i8 %i.cb, 6
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !1351
  %i.cf = icmp eq ptr %i.ce, null
  %i.cg = select i1 %i.cc, i1 %i.cf, i1 false
  br i1 %i.cg, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.ch = trunc nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.f
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.f ], [ %i.ch, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.bo, %.01318.i.i.i.lcssa.i.i.i
  %i.ci = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.ci, %i.bo
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.bo to i64
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !235, !noalias !1351 ; 2 uses
  %i.cn = lshr i64 %i.cm, 56
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.co
  br i1 %.not.i3.i.i.i, label %.loopexit.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ %i.cj, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %indvars.iv.next.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !235, !noalias !1351 ; 2 uses
  %i.cs = lshr i64 %i.cr, 56
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %.not.i.i.i.i = icmp eq i32 %.0.i.i, %i.ct
  br i1 %.not.i.i.i.i, label %.loopexit.i, label %.critedge.i.i.i.i

.loopexit.i:                                      ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.cm, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.cr, %.critedge.i.i.i.i ]
  %i.cu = shl i64 %.lcssa.i.i.i, 8
  %i.cv = ashr exact i64 %i.cu, 8
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !195
  %i.cz = zext i16 %i.cy to i32
  br label %_ZN4llvm4bolt19StackLayoutModifier15getOffsetCFIRegERKNS_6MCInstE.exit

_ZN4llvm4bolt19StackLayoutModifier15getOffsetCFIRegERKNS_6MCInstE.exit: ; preds = %_ZN4llvm4bolt19StackLayoutModifier18getOffsetCFIRegTagEv.exit.i, %.loopexit.i
  %.0.i = phi i32 [ %i.cz, %.loopexit.i ], [ 0, %_ZN4llvm4bolt19StackLayoutModifier18getOffsetCFIRegTagEv.exit.i ]
  %i.da = icmp eq i32 %1, %.0.i
  br i1 %i.da, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm4bolt19StackLayoutModifier15getOffsetCFIRegERKNS_6MCInstE.exit
  %i.db = load ptr, ptr %i.ah, align 8, !tbaa !67
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.aj ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !123
  %i.de = or i64 %i.dd, %i.am
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store i8 0, ptr %3, align 8, !tbaa !562
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  store i32 %1, ptr %i.ao, align 8, !tbaa !602
  store i32 0, ptr %i.ap, align 4, !tbaa !603
  call void @_ZN4llvm4bolt14ShrinkWrapping14scheduleChangeIJNS1_12WorklistItemEEEEvNS0_12ProgramPointEDpOT_(ptr noundef nonnull align 8 dereferenceable(1048) %0, i8 1, ptr nonnull %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit

bb.h:                                             ; preds = %_ZN4llvm4bolt19StackLayoutModifier15getOffsetCFIRegERKNS_6MCInstE.exit
  %.not.i.i = icmp eq ptr %.sroa.9.0266, %.sroa.17.0265
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.ay, ptr %.sroa.9.0266, align 8, !tbaa !129
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.9.0266, i64 8
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.dg = ptrtoint ptr %.sroa.9.0266 to i64
  %i.dh = ptrtoint ptr %.sroa.0203.0267 to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 6 uses
  %i.dj = icmp eq i64 %i.di, 9223372036854775800
  br i1 %i.dj, label %bb.k, label %_ZNKSt6vectorIPN4llvm6MCInstESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #32
  unreachable

_ZNKSt6vectorIPN4llvm6MCInstESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.dk = ashr exact i64 %i.di, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dk, i64 1)
  %i.dl = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dk ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dk
  %i.dn = call i64 @llvm.umin.i64(i64 %i.dl, i64 1152921504606846975)
  %i.do = select i1 %i.dm, i64 1152921504606846975, i64 %i.dn ; 3 uses
  %.not.i.i.i.i43 = icmp ne i64 %i.do, 0
  call void @llvm.assume(i1 %.not.i.i.i.i43)
  %i.dp = shl nuw nsw i64 %i.do, 3
  %i.dq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #33 ; 4 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 %i.di ; 2 uses
  store ptr %i.ay, ptr %i.dr, align 8, !tbaa !129
  %i.ds = icmp sgt i64 %i.di, 0
  br i1 %i.ds, label %bb.l, label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIPN4llvm6MCInstESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dq, ptr align 8 %.sroa.0203.0267, i64 %i.di, i1 false)
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIPN4llvm6MCInstESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0203.0267, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0203.0267, i64 noundef %i.di) #34
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.do
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit

bb.n:                                             ; preds = %.lr.ph
  %i.dv = load ptr, ptr %i.j, align 8, !tbaa !100, !nonnull !64, !align !99
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1568
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !189 ; 2 uses
  %i.dy = load i8, ptr %i.l, align 8, !tbaa !190, !range !63, !noundef !64
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %._crit_edge.i.i66, label %bb.o

._crit_edge.i.i66:                                ; preds = %bb.n
  %.0.pre.i.i67 = load i32, ptr %i.k, align 4, !tbaa !191
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ea = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.dx, ptr nonnull @.str.27, i64 12) ; 2 uses
  %.sroa.0.0.insert.ext.i.i44 = zext i32 %i.ea to i64
  %.sroa.0.0.insert.insert.i.i45 = or disjoint i64 %.sroa.0.0.insert.ext.i.i44, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i45, ptr %i.k, align 4
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit.i

_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit.i: ; preds = %bb.o, %._crit_edge.i.i66
  %.0.i.i46 = phi i32 [ %.0.pre.i.i67, %._crit_edge.i.i66 ], [ %i.ea, %bb.o ] ; 3 uses
  %i.eb = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.dx, ptr noundef nonnull align 8 dereferenceable(128) %i.ay, i32 noundef %.0.i.i46) #31, !noalias !1352
  br i1 %i.eb, label %bb.p, label %_ZN4llvm4bolt19CalleeSavedAnalysis11getSavedRegERKNS_6MCInstE.exit

bb.p:                                             ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit.i
  %i.ec = getelementptr inbounds i8, ptr %.sroa.0200.0264, i64 -104
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !121, !noalias !1352 ; 4 uses
  %.01317.i.i.i.i.i.i48 = add i32 %i.ed, -1       ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0200.0264, i64 -112
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !67, !noalias !1352 ; 4 uses
  %i.eg = zext nneg i32 %.01317.i.i.i.i.i.i48 to i64 ; 2 uses
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.eg ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !234, !noalias !1352
  %i.ej = icmp eq i8 %i.ei, 6
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !1352
  %i.em = icmp eq ptr %i.el, null
  %i.en = select i1 %i.ej, i1 %i.em, i1 false
  br i1 %i.en, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i53, label %.backedge.i.i.i.i.i.i49

.backedge.i.i.i.i.i.i49:                          ; preds = %bb.p, %.backedge.i.i.i.i.i.i49
  %indvars.iv.i.i.i50 = phi i64 [ %indvars.iv.next.i.i.i51, %.backedge.i.i.i.i.i.i49 ], [ %i.eg, %bb.p ] ; 2 uses
  %indvars.iv.next.i.i.i51 = add nsw i64 %indvars.iv.i.i.i50, -1 ; 3 uses
  %i.eo = icmp sgt i64 %indvars.iv.i.i.i50, 0
  call void @llvm.assume(i1 %i.eo)
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.next.i.i.i51 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 8, !tbaa !234, !noalias !1352
  %i.er = icmp eq i8 %i.eq, 6
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !noalias !1352
  %i.eu = icmp eq ptr %i.et, null
  %i.ev = select i1 %i.er, i1 %i.eu, i1 false
  br i1 %i.ev, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i52, label %.backedge.i.i.i.i.i.i49

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i52: ; preds = %.backedge.i.i.i.i.i.i49
  %i.ew = trunc nsw i64 %indvars.iv.next.i.i.i51 to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i53

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i53: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i52, %bb.p
  %.01318.i.i.i.lcssa.i.i.i54 = phi i32 [ %.01317.i.i.i.i.i.i48, %bb.p ], [ %i.ew, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i52 ] ; 2 uses
  %.not.i.not.i.i.i.i55 = icmp ne i32 %i.ed, %.01318.i.i.i.lcssa.i.i.i54
  %i.ex = add nuw i32 %.01318.i.i.i.lcssa.i.i.i54, 1 ; 2 uses
  %.not1324.i.i.i.i56 = icmp ult i32 %i.ex, %i.ed
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i55)
  call void @llvm.assume(i1 %.not1324.i.i.i.i56)
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i57 = zext i32 %i.ed to i64
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !235, !noalias !1352 ; 2 uses
  %i.fc = lshr i64 %i.fb, 56
  %i.fd = trunc nuw nsw i64 %i.fc to i32
  %.not.i3.i.i.i58 = icmp eq i32 %.0.i.i46, %i.fd
  br i1 %.not.i3.i.i.i58, label %.loopexit.i64, label %.critedge.i.i.i.i59

.critedge.i.i.i.i59:                              ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i53, %.critedge.i.i.i.i59
  %indvars.iv.i4.i.i.i60 = phi i64 [ %indvars.iv.next.i.i.i.i61, %.critedge.i.i.i.i59 ], [ %i.ey, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i53 ]
  %indvars.iv.next.i.i.i.i61 = add nuw nsw i64 %indvars.iv.i4.i.i.i60, 1 ; 3 uses
  %exitcond.not.i.i.i.i62 = icmp ne i64 %indvars.iv.next.i.i.i.i61, %wide.trip.count.i.i.i.i57
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i62)
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv.next.i.i.i.i61
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !235, !noalias !1352 ; 2 uses
  %i.fh = lshr i64 %i.fg, 56
  %i.fi = trunc nuw nsw i64 %i.fh to i32
  %.not.i.i.i.i63 = icmp eq i32 %.0.i.i46, %i.fi
  br i1 %.not.i.i.i.i63, label %.loopexit.i64, label %.critedge.i.i.i.i59

.loopexit.i64:                                    ; preds = %.critedge.i.i.i.i59, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i53
  %.lcssa.i.i.i65 = phi i64 [ %i.fb, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i53 ], [ %i.fg, %.critedge.i.i.i.i59 ]
  %i.fj = shl i64 %.lcssa.i.i.i65, 8
  %i.fk = ashr exact i64 %i.fj, 8
  %i.fl = inttoptr i64 %i.fk to ptr
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !191
  %i.fo = and i32 %i.fn, 65535
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis11getSavedRegERKNS_6MCInstE.exit

_ZN4llvm4bolt19CalleeSavedAnalysis11getSavedRegERKNS_6MCInstE.exit: ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit.i, %.loopexit.i64
  %.0.i47 = phi i32 [ %i.fo, %.loopexit.i64 ], [ 0, %_ZN4llvm4bolt19CalleeSavedAnalysis10getSaveTagEv.exit.i ]
  %i.fp = load ptr, ptr %i.j, align 8, !tbaa !100, !nonnull !64, !align !99
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1568
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !189 ; 2 uses
  %i.fs = load i8, ptr %i.n, align 8, !tbaa !190, !range !63, !noundef !64
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %._crit_edge.i.i90, label %bb.q

._crit_edge.i.i90:                                ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis11getSavedRegERKNS_6MCInstE.exit
  %.0.pre.i.i91 = load i32, ptr %i.m, align 4, !tbaa !191
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit.i

bb.q:                                             ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis11getSavedRegERKNS_6MCInstE.exit
  %i.fu = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.fr, ptr nonnull @.str.28, i64 15) ; 2 uses
  %.sroa.0.0.insert.ext.i.i68 = zext i32 %i.fu to i64
  %.sroa.0.0.insert.insert.i.i69 = or disjoint i64 %.sroa.0.0.insert.ext.i.i68, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i69, ptr %i.m, align 4
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit.i

_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit.i: ; preds = %bb.q, %._crit_edge.i.i90
  %.0.i.i70 = phi i32 [ %.0.pre.i.i91, %._crit_edge.i.i90 ], [ %i.fu, %bb.q ] ; 3 uses
  %i.fv = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.fr, ptr noundef nonnull align 8 dereferenceable(128) %i.ay, i32 noundef %.0.i.i70) #31, !noalias !1353
  br i1 %i.fv, label %bb.r, label %_ZN4llvm4bolt19CalleeSavedAnalysis14getRestoredRegERKNS_6MCInstE.exit

bb.r:                                             ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit.i
  %i.fw = getelementptr inbounds i8, ptr %.sroa.0200.0264, i64 -104
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !121, !noalias !1353 ; 4 uses
  %.01317.i.i.i.i.i.i72 = add i32 %i.fx, -1       ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %.sroa.0200.0264, i64 -112
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !67, !noalias !1353 ; 4 uses
  %i.ga = zext nneg i32 %.01317.i.i.i.i.i.i72 to i64 ; 2 uses
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.ga ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 8, !tbaa !234, !noalias !1353
  %i.gd = icmp eq i8 %i.gc, 6
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !noalias !1353
  %i.gg = icmp eq ptr %i.gf, null
  %i.gh = select i1 %i.gd, i1 %i.gg, i1 false
  br i1 %i.gh, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i77, label %.backedge.i.i.i.i.i.i73

.backedge.i.i.i.i.i.i73:                          ; preds = %bb.r, %.backedge.i.i.i.i.i.i73
  %indvars.iv.i.i.i74 = phi i64 [ %indvars.iv.next.i.i.i75, %.backedge.i.i.i.i.i.i73 ], [ %i.ga, %bb.r ] ; 2 uses
  %indvars.iv.next.i.i.i75 = add nsw i64 %indvars.iv.i.i.i74, -1 ; 3 uses
  %i.gi = icmp sgt i64 %indvars.iv.i.i.i74, 0
  call void @llvm.assume(i1 %i.gi)
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %indvars.iv.next.i.i.i75 ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 8, !tbaa !234, !noalias !1353
  %i.gl = icmp eq i8 %i.gk, 6
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !1353
  %i.go = icmp eq ptr %i.gn, null
  %i.gp = select i1 %i.gl, i1 %i.go, i1 false
  br i1 %i.gp, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i76, label %.backedge.i.i.i.i.i.i73

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i76: ; preds = %.backedge.i.i.i.i.i.i73
  %i.gq = trunc nsw i64 %indvars.iv.next.i.i.i75 to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i77

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i77: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i76, %bb.r
  %.01318.i.i.i.lcssa.i.i.i78 = phi i32 [ %.01317.i.i.i.i.i.i72, %bb.r ], [ %i.gq, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i76 ] ; 2 uses
  %.not.i.not.i.i.i.i79 = icmp ne i32 %i.fx, %.01318.i.i.i.lcssa.i.i.i78
  %i.gr = add nuw i32 %.01318.i.i.i.lcssa.i.i.i78, 1 ; 2 uses
  %.not1324.i.i.i.i80 = icmp ult i32 %i.gr, %i.fx
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i79)
  call void @llvm.assume(i1 %.not1324.i.i.i.i80)
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i81 = zext i32 %i.fx to i64
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !235, !noalias !1353 ; 2 uses
  %i.gw = lshr i64 %i.gv, 56
  %i.gx = trunc nuw nsw i64 %i.gw to i32
  %.not.i3.i.i.i82 = icmp eq i32 %.0.i.i70, %i.gx
  br i1 %.not.i3.i.i.i82, label %.loopexit.i88, label %.critedge.i.i.i.i83

.critedge.i.i.i.i83:                              ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i77, %.critedge.i.i.i.i83
  %indvars.iv.i4.i.i.i84 = phi i64 [ %indvars.iv.next.i.i.i.i85, %.critedge.i.i.i.i83 ], [ %i.gs, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i77 ]
  %indvars.iv.next.i.i.i.i85 = add nuw nsw i64 %indvars.iv.i4.i.i.i84, 1 ; 3 uses
  %exitcond.not.i.i.i.i86 = icmp ne i64 %indvars.iv.next.i.i.i.i85, %wide.trip.count.i.i.i.i81
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i86)
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %indvars.iv.next.i.i.i.i85
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !235, !noalias !1353 ; 2 uses
  %i.hb = lshr i64 %i.ha, 56
  %i.hc = trunc nuw nsw i64 %i.hb to i32
  %.not.i.i.i.i87 = icmp eq i32 %.0.i.i70, %i.hc
  br i1 %.not.i.i.i.i87, label %.loopexit.i88, label %.critedge.i.i.i.i83

.loopexit.i88:                                    ; preds = %.critedge.i.i.i.i83, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i77
  %.lcssa.i.i.i89 = phi i64 [ %i.gv, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i77 ], [ %i.ha, %.critedge.i.i.i.i83 ]
  %i.hd = shl i64 %.lcssa.i.i.i89, 8
  %i.he = ashr exact i64 %i.hd, 8
  %i.hf = inttoptr i64 %i.he to ptr
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !191
  %i.hi = and i32 %i.hh, 65535
  br label %_ZN4llvm4bolt19CalleeSavedAnalysis14getRestoredRegERKNS_6MCInstE.exit

_ZN4llvm4bolt19CalleeSavedAnalysis14getRestoredRegERKNS_6MCInstE.exit: ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit.i, %.loopexit.i88
  %.0.i71 = phi i32 [ %i.hi, %.loopexit.i88 ], [ 0, %_ZN4llvm4bolt19CalleeSavedAnalysis13getRestoreTagEv.exit.i ]
  %.not39 = icmp eq i32 %1, %.0.i47               ; 2 uses
  %.not40 = icmp eq i32 %1, %.0.i71               ; 2 uses
  %or.cond = or i1 %.not39, %.not40
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis14getRestoredRegERKNS_6MCInstE.exit
  %.not.i.i92 = icmp eq ptr %.sroa.9.0266, %.sroa.0203.0267
  %spec.select = select i1 %.not.i.i92, ptr %.sroa.9.0266, ptr %.sroa.0203.0267
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EE9push_backEOS2_.exit

bb.t:                                             ; preds = %_ZN4llvm4bolt19CalleeSavedAnalysis14getRestoredRegERKNS_6MCInstE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store i8 %i.o, ptr %4, align 8, !tbaa !562
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  store i32 %1, ptr %i.q, align 8, !tbaa !602
  store i32 0, ptr %i.r, align 4, !tbaa !603
  call void @_ZN4llvm4bolt14ShrinkWrapping14scheduleChangeIJNS1_12WorklistItemEEEEvNS0_12ProgramPointEDpOT_(ptr noundef nonnull align 8 dereferenceable(1048) %0, i8 1, ptr nonnull %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %.not39, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.hj = load ptr, ptr %i.s, align 8, !tbaa !604, !noalias !1354 ; 3 uses
  %i.hk = load ptr, ptr %i.t, align 8, !tbaa !605, !noalias !1354 ; 3 uses
  %i.hl = load i32, ptr %i.u, align 4, !tbaa !606, !noalias !1354 ; 4 uses
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %.loopexit.i111, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hn = add i32 %i.hl, -1                       ; 2 uses
  %.024.i.i = and i32 %i.hn, %i.v                 ; 3 uses
  %i.ho = zext nneg i32 %.024.i.i to i64          ; 2 uses
  %i.hp = getelementptr inbounds nuw [32 x i8], ptr %i.hj, i64 %i.ho ; 2 uses
  %i.hq = lshr i64 %i.ho, 5
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !191
  %i.ht = and i32 %.024.i.i, 31
  %i.hu = lshr i32 %i.hs, %i.ht
  %i.hv = trunc i32 %i.hu to i1
  br i1 %i.hv, label %.lr.ph.i.i, label %.loopexit.i111, !prof !289

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.hw = add nuw i32 %.025.i.i, 1
  %.0.i.i115 = and i32 %i.hw, %i.hn               ; 3 uses
  %i.hx = zext i32 %.0.i.i115 to i64              ; 2 uses
  %i.hy = getelementptr inbounds nuw [32 x i8], ptr %i.hj, i64 %i.hx ; 2 uses
  %i.hz = lshr i64 %i.hx, 5
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !191
  %i.ic = and i32 %.0.i.i115, 31
  %i.id = lshr i32 %i.ib, %i.ic
  %i.ie = trunc i32 %i.id to i1
  br i1 %i.ie, label %.lr.ph.i.i, label %.loopexit.i111, !prof !290, !llvm.loop !25

.lr.ph.i.i:                                       ; preds = %bb.v, %bb.w
  %i.if = phi ptr [ %i.hy, %bb.w ], [ %i.hp, %bb.v ] ; 3 uses
  %.025.i.i = phi i32 [ %.0.i.i115, %bb.w ], [ %.024.i.i, %bb.v ]
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !191
  %i.ih = icmp eq i32 %1, %i.ig
  br i1 %i.ih, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit, label %bb.w, !prof !210

.loopexit.i111:                                   ; preds = %bb.w, %bb.v, %bb.u
  %.lcssa30.sink.i.ph.i = phi ptr [ %i.hp, %bb.v ], [ null, %bb.u ], [ %i.hy, %bb.w ]
  %i.ii = load i32, ptr %i.w, align 8, !tbaa !607
  %i.ij = shl i32 %i.ii, 2
  %i.ik = add i32 %i.ij, 4
  %i.il = mul i32 %i.hl, 3
  %.not.i.i112 = icmp ult i32 %i.ik, %i.il
  br i1 %.not.i.i112, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i, label %bb.x, !prof !210

bb.x:                                             ; preds = %.loopexit.i111
  %i.im = shl i32 %i.hl, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %i.s, i32 noundef %i.im)
  %i.in = load ptr, ptr %i.s, align 8, !tbaa !604, !noalias !1355 ; 5 uses
  %i.io = load ptr, ptr %i.t, align 8, !tbaa !605, !noalias !1355 ; 5 uses
  %i.ip = load i32, ptr %i.u, align 4, !tbaa !606, !noalias !1355 ; 2 uses
  %i.iq = icmp ne i32 %i.ip, 0
  call void @llvm.assume(i1 %i.iq)
  %i.ir = add i32 %i.ip, -1                       ; 2 uses
  %.024.i = and i32 %i.ir, %i.v                   ; 3 uses
  %i.is = zext i32 %.024.i to i64                 ; 2 uses
  %i.it = getelementptr inbounds nuw [32 x i8], ptr %i.in, i64 %i.is ; 2 uses
  %i.iu = lshr i64 %i.is, 5
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !191
  %i.ix = and i32 %.024.i, 31
  %i.iy = lshr i32 %i.iw, %i.ix
  %i.iz = trunc i32 %i.iy to i1
  br i1 %i.iz, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i, !prof !289

bb.y:                                             ; preds = %.lr.ph.i
  %i.ja = add nuw i32 %.025.i, 1
  %.0.i164 = and i32 %i.ja, %i.ir                 ; 3 uses
  %i.jb = zext i32 %.0.i164 to i64                ; 2 uses
  %i.jc = getelementptr inbounds nuw [32 x i8], ptr %i.in, i64 %i.jb ; 2 uses
  %i.jd = lshr i64 %i.jb, 5
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !191
  %i.jg = and i32 %.0.i164, 31
  %i.jh = lshr i32 %i.jf, %i.jg
  %i.ji = trunc i32 %i.jh to i1
  br i1 %i.ji, label %.lr.ph.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i, !prof !290, !llvm.loop !25

.lr.ph.i:                                         ; preds = %bb.x, %bb.y
  %i.jj = phi ptr [ %i.jc, %bb.y ], [ %i.it, %bb.x ] ; 2 uses
  %.025.i = phi i32 [ %.0.i164, %bb.y ], [ %.024.i, %bb.x ]
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !191
  %i.jl = icmp eq i32 %1, %i.jk
  br i1 %i.jl, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i, label %bb.y, !prof !210

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i: ; preds = %.lr.ph.i, %bb.y, %bb.x, %.loopexit.i111
  %i.jm = phi ptr [ %i.hj, %.loopexit.i111 ], [ %i.in, %bb.x ], [ %i.in, %bb.y ], [ %i.in, %.lr.ph.i ]
  %i.jn = phi ptr [ %i.hk, %.loopexit.i111 ], [ %i.io, %bb.x ], [ %i.io, %bb.y ], [ %i.io, %.lr.ph.i ]
  %i.jo = phi ptr [ %.lcssa30.sink.i.ph.i, %.loopexit.i111 ], [ %i.it, %bb.x ], [ %i.jj, %.lr.ph.i ], [ %i.jc, %bb.y ] ; 4 uses
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = ptrtoint ptr %i.jm to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = ashr exact i64 %i.jr, 5                 ; 2 uses
  %i.jt = trunc i64 %i.js to i32
  %i.ju = and i32 %i.jt, 31
  %i.jv = shl nuw i32 1, %i.ju
  %i.jw = lshr i64 %i.js, 5
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.jw ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !191
  %i.jz = or i32 %i.jv, %i.jy
  store i32 %i.jz, ptr %i.jx, align 4, !tbaa !191
  %i.ka = load i32, ptr %i.w, align 8, !tbaa !607
  %i.kb = add i32 %i.ka, 1
  store i32 %i.kb, ptr %i.w, align 8, !tbaa !607
  store i32 %1, ptr %i.jo, align 4, !tbaa !191
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kc, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !608
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i
  %i.kd = phi ptr [ null, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit ]
  %.sroa.0.0.i = phi ptr [ %i.jo, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit.i ], [ %i.if, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit.loopexit ]
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !608
  %i.kg = icmp eq ptr %i.kd, %i.kf
  br label %bb.z

bb.z:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit, %bb.t
  %i.kh = phi i1 [ false, %bb.t ], [ %i.kg, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt6vectorIjSaIjEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_.exit ]
  br i1 %.not40, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.ki = load ptr, ptr %i.x, align 8, !tbaa !604, !noalias !1356 ; 3 uses
  %i.kj = load ptr, ptr %i.y, align 8, !tbaa !605, !noalias !1356 ; 3 uses
  %i.kk = load i32, ptr %i.z, align 4, !tbaa !606, !noalias !1356 ; 4 uses
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %.loopexit.i117, label %bb.ab
end_hunk_10
begin_hunk_11_@_ZN4llvm4bolt14ShrinkWrapping16moveSaveRestoresEv:bb.a
  br label %_ZNSt6vectorISt5tupleIJjPN4llvm6MCInstEmEESaIS4_EE12emplace_backIJS0_IJjS3_hEEEEERS4_DpOT_.exit

_ZNSt6vectorISt5tupleIJjPN4llvm6MCInstEmEESaIS4_EE12emplace_backIJS0_IJjS3_hEEEEERS4_DpOT_.exit: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.ek = add i64 %i.bk, %.054169
  br label %bb.an

bb.an:                                            ; preds = %bb.u, %_ZNSt6vectorISt5tupleIJjPN4llvm6MCInstEmEESaIS4_EE12emplace_backIJS0_IJjS3_hEEEEERS4_DpOT_.exit, %._crit_edge278
  %.360 = phi i8 [ %.057168, %._crit_edge278 ], [ %.057168, %bb.u ], [ %i.ed, %_ZNSt6vectorISt5tupleIJjPN4llvm6MCInstEmEESaIS4_EE12emplace_backIJS0_IJjS3_hEEEEERS4_DpOT_.exit ] ; 2 uses
  %.256 = phi i64 [ %.054169, %._crit_edge278 ], [ %.054169, %bb.u ], [ %i.ek, %_ZNSt6vectorISt5tupleIJjPN4llvm6MCInstEmEESaIS4_EE12emplace_backIJS0_IJjS3_hEEEEERS4_DpOT_.exit ] ; 4 uses
  %.3 = phi i1 [ %.0170, %._crit_edge278 ], [ %.0170, %bb.u ], [ %.0., %_ZNSt6vectorISt5tupleIJjPN4llvm6MCInstEmEESaIS4_EE12emplace_backIJS0_IJjS3_hEEEEERS4_DpOT_.exit ] ; 2 uses
  %i.el = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.g
  br i1 %i.em, label %_ZN4llvm11SmallVectorINS_4bolt12ProgramPointELj4EED2Ev.exit68, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @free(ptr noundef %i.el) #31
  br label %_ZN4llvm11SmallVectorINS_4bolt12ProgramPointELj4EED2Ev.exit68

_ZN4llvm11SmallVectorINS_4bolt12ProgramPointELj4EED2Ev.exit68: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.y
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1366

bb.ap:                                            ; preds = %._crit_edge
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !529, !nonnull !64, !align !99 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1240
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !67 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 1248
  %i.es = load i32, ptr %i.er, align 8, !tbaa !121 ; 2 uses
  %i.et = zext i32 %i.es to i64
  %.idx = shl nuw nsw i64 %i.et, 3
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx
  %.not153195 = icmp eq i32 %i.es, 0
  br i1 %.not153195, label %.sink.split266, label %.lr.ph198

.lr.ph198:                                        ; preds = %bb.ap
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1020
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph198, %._crit_edge194
  %.sroa.0110.0196 = phi ptr [ %i.eq, %.lr.ph198 ], [ %i.gt, %._crit_edge194 ] ; 2 uses
  %i.fa = load ptr, ptr %.sroa.0110.0196, align 8, !tbaa !127 ; 4 uses
  %i.fb = load ptr, ptr %i.ev, align 8, !tbaa !624, !noalias !1398 ; 3 uses
  %i.fc = load ptr, ptr %i.ew, align 8, !tbaa !625, !noalias !1398 ; 2 uses
  %i.fd = load i32, ptr %i.ex, align 4, !tbaa !626, !noalias !1398 ; 4 uses
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %.loopexit.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ff = add i32 %i.fd, -1                       ; 2 uses
  %i.fg = ptrtoint ptr %i.fa to i64
  %i.fh = mul i64 %i.fg, -4658895280553007687     ; 2 uses
  %i.fi = lshr i64 %i.fh, 31
  %i.fj = xor i64 %i.fi, %i.fh
  %i.fk = trunc i64 %i.fj to i32
  %i.fl = and i32 %i.ff, %i.fk                    ; 3 uses
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %i.fn = lshr i64 %i.fm, 5
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !191, !noalias !1399
  %i.fq = and i32 %i.fl, 31
  %i.fr = lshr i32 %i.fp, %i.fq
  %i.fs = trunc i32 %i.fr to i1
  br i1 %i.fs, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !289

.lr.ph.i.i.i.i:                                   ; preds = %bb.ar, %bb.as
  %i.ft = phi i64 [ %i.fz, %bb.as ], [ %i.fm, %bb.ar ]
  %.017.i.i.i.i = phi i32 [ %i.fy, %bb.as ], [ %i.fl, %bb.ar ]
  %i.fu = getelementptr inbounds nuw [32 x i8], ptr %i.fb, i64 %i.ft ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !127, !noalias !1399
  %i.fw = icmp eq ptr %i.fa, %i.fv
  br i1 %i.fw, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.loopexit, label %bb.as, !prof !210

bb.as:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fx = add nuw i32 %.017.i.i.i.i, 1
  %i.fy = and i32 %i.fx, %i.ff                    ; 3 uses
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %i.ga = lshr i64 %i.fz, 5
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !191, !noalias !1399
  %i.gd = and i32 %i.fy, 31
  %i.ge = lshr i32 %i.gc, %i.gd
  %i.gf = trunc i32 %i.ge to i1
  br i1 %i.gf, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !290

.loopexit.i.i:                                    ; preds = %bb.as, %bb.ar, %bb.aq
  %i.gg = zext i32 %i.fd to i64                   ; 2 uses
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.fb, i64 %i.gg
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre206 = zext i32 %i.fd to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre206, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.loopexit ], [ %i.gg, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.fu, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.loopexit ], [ %i.gh, %.loopexit.i.i ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [32 x i8], ptr %i.fb, i64 %.pre-phi
  %.not154 = icmp eq ptr %.lcssa.sink.i.i, %i.gi
  br i1 %.not154, label %.loopexit158, label %bb.at

bb.at:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !627 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !627 ; 2 uses
  %.not155182 = icmp eq ptr %i.gk, %i.gm
  br i1 %.not155182, label %.loopexit158, label %.lr.ph185

.lr.ph185:                                        ; preds = %bb.at, %bb.av
  %.sroa.098.0183 = phi ptr [ %i.gp, %bb.av ], [ %i.gk, %bb.at ] ; 3 uses
  %i.gn = load i8, ptr %.sroa.098.0183, align 8, !tbaa !562
  %i.go = icmp eq i8 %i.gn, 3
  br i1 %i.go, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph185
  store i8 2, ptr %.sroa.098.0183, align 8, !tbaa !562
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph185
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.098.0183, i64 40 ; 2 uses
  %.not155 = icmp eq ptr %i.gp, %i.gm
  br i1 %.not155, label %.loopexit158, label %.lr.ph185

.loopexit158:                                     ; preds = %bb.av, %bb.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !129, !noalias !1400 ; 2 uses
  %i.gs = load ptr, ptr %i.fa, align 8, !tbaa !129, !noalias !1401 ; 2 uses
  %.not156190 = icmp eq ptr %i.gr, %i.gs
  br i1 %.not156190, label %._crit_edge194, label %.lr.ph193

._crit_edge194:                                   ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEENS_7ErrorOrIRT_EERNS_6MCInstEj.exit, %.loopexit158
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0110.0196, i64 8 ; 2 uses
  %.not153 = icmp eq ptr %i.gt, %i.eu
  br i1 %.not153, label %.sink.split266, label %bb.aq

.lr.ph193:                                        ; preds = %.loopexit158, %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEENS_7ErrorOrIRT_EERNS_6MCInstEj.exit
  %.sroa.094.0191 = phi ptr [ %i.gu, %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEENS_7ErrorOrIRT_EERNS_6MCInstEj.exit ], [ %i.gr, %.loopexit158 ] ; 3 uses
  %i.gu = getelementptr inbounds i8, ptr %.sroa.094.0191, i64 -128 ; 4 uses
  %i.gv = load ptr, ptr %i.a, align 8, !tbaa !523, !nonnull !64, !align !99
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 1568
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !189 ; 2 uses
  %i.gy = load i8, ptr %i.ez, align 4, !tbaa !190, !range !63, !noundef !64
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %._crit_edge.i, label %bb.aw

._crit_edge.i:                                    ; preds = %.lr.ph193
  %.0.pre.i = load i32, ptr %i.ey, align 8, !tbaa !191
  br label %_ZN4llvm4bolt14ShrinkWrapping18getAnnotationIndexEv.exit

bb.aw:                                            ; preds = %.lr.ph193
  %i.ha = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.gx, ptr nonnull @.str.35, i64 15) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.ha to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ey, align 8
  br label %_ZN4llvm4bolt14ShrinkWrapping18getAnnotationIndexEv.exit

_ZN4llvm4bolt14ShrinkWrapping18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.aw
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.ha, %bb.aw ] ; 3 uses
  %i.hb = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.gx, ptr noundef nonnull align 8 dereferenceable(128) %i.gu, i32 noundef %.0.i) #31, !noalias !1402
  br i1 %i.hb, label %bb.ax, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEENS_7ErrorOrIRT_EERNS_6MCInstEj.exit

bb.ax:                                            ; preds = %_ZN4llvm4bolt14ShrinkWrapping18getAnnotationIndexEv.exit
  %i.hc = getelementptr inbounds i8, ptr %.sroa.094.0191, i64 -104
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !121, !noalias !1402 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.hd, -1           ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %.sroa.094.0191, i64 -112
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !67, !noalias !1402 ; 4 uses
  %i.hg = zext nneg i32 %.01317.i.i.i.i.i to i64  ; 2 uses
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %i.hg ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 8, !tbaa !234, !noalias !1402
  %i.hj = icmp eq i8 %i.hi, 6
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !noalias !1402
  %i.hm = icmp eq ptr %i.hl, null
  %i.hn = select i1 %i.hj, i1 %i.hm, i1 false
  br i1 %i.hn, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.ax, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.hg, %bb.ax ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.ho = icmp sgt i64 %indvars.iv.i.i, 0
  call void @llvm.assume(i1 %i.ho)
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %indvars.iv.next.i.i ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 8, !tbaa !234, !noalias !1402
  %i.hr = icmp eq i8 %i.hq, 6
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !noalias !1402
  %i.hu = icmp eq ptr %i.ht, null
  %i.hv = select i1 %i.hr, i1 %i.hu, i1 false
  br i1 %i.hv, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.hw = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.ax
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.ax ], [ %i.hw, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.hd, %.01318.i.i.i.lcssa.i.i
  %i.hx = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.hx, %i.hd
  call void @llvm.assume(i1 %.not.i.not.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.hy = zext i32 %i.hx to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.hd to i64
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !235, !noalias !1402 ; 2 uses
  %i.ic = lshr i64 %i.ib, 56
  %i.id = trunc nuw nsw i64 %i.ic to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.id
  br i1 %.not.i3.i.i, label %.loopexit, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.hy, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %indvars.iv.next.i.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !235, !noalias !1402 ; 2 uses
  %i.ih = lshr i64 %i.ig, 56
  %i.ii = trunc nuw nsw i64 %i.ih to i32
  %.not.i.i.i69 = icmp eq i32 %.0.i, %i.ii
  br i1 %.not.i.i.i69, label %.loopexit, label %.critedge.i.i.i

.loopexit:                                        ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.ib, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.ig, %.critedge.i.i.i ]
  %i.ij = shl i64 %.lcssa.i.i, 8
  %i.ik = ashr exact i64 %i.ij, 8
  %i.il = inttoptr i64 %i.ik to ptr               ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.a, align 8, !tbaa !523, !nonnull !64, !align !99
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 1568
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !189 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !55
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 1560
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = call noundef zeroext i1 %i.is(ptr noundef nonnull align 8 dereferenceable(536) %i.ip, ptr noundef nonnull align 8 dereferenceable(128) %i.gu) #31
  %i.iu = load ptr, ptr %i.im, align 8, !tbaa !627 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !627 ; 3 uses
  %.not157186 = icmp eq ptr %i.iu, %i.iw
  br i1 %.not157186, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEENS_7ErrorOrIRT_EERNS_6MCInstEj.exit, label %.lr.ph189

.lr.ph189:                                        ; preds = %.loopexit
  br i1 %i.it, label %.lr.ph189.split.us, label %.lr.ph189.split

.lr.ph189.split.us:                               ; preds = %.lr.ph189, %bb.az
  %.sroa.086.0187.us = phi ptr [ %i.iz, %bb.az ], [ %i.iu, %.lr.ph189 ] ; 3 uses
  %i.ix = load i8, ptr %.sroa.086.0187.us, align 8, !tbaa !562
  %i.iy = icmp eq i8 %i.ix, 3
  br i1 %i.iy, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.lr.ph189.split.us
  store i8 2, ptr %.sroa.086.0187.us, align 8, !tbaa !562
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.lr.ph189.split.us
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.086.0187.us, i64 40 ; 2 uses
  %.not157.us = icmp eq ptr %i.iz, %i.iw
  br i1 %.not157.us, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEENS_7ErrorOrIRT_EERNS_6MCInstEj.exit, label %.lr.ph189.split.us

.lr.ph189.split:                                  ; preds = %.lr.ph189, %bb.bb
  %.sroa.086.0187 = phi ptr [ %i.jb, %bb.bb ], [ %i.iu, %.lr.ph189 ] ; 3 uses
  %i.ja = load i8, ptr %.sroa.086.0187, align 8, !tbaa !562
  switch i8 %i.ja, label %bb.bb [
    i8 3, label %.sink.split
    i8 0, label %bb.ba
  ]

bb.ba:                                            ; preds = %.lr.ph189.split
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph189.split, %bb.ba
  %.sink = phi i8 [ 1, %bb.ba ], [ 2, %.lr.ph189.split ]
  store i8 %.sink, ptr %.sroa.086.0187, align 8, !tbaa !562
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split, %.lr.ph189.split
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.086.0187, i64 40 ; 2 uses
  %.not157 = icmp eq ptr %i.jb, %i.iw
  br i1 %.not157, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEENS_7ErrorOrIRT_EERNS_6MCInstEj.exit, label %.lr.ph189.split

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEENS_7ErrorOrIRT_EERNS_6MCInstEj.exit: ; preds = %bb.bb, %bb.az, %.loopexit, %_ZN4llvm4bolt14ShrinkWrapping18getAnnotationIndexEv.exit
  %.not156 = icmp eq ptr %i.gu, %i.gs
  br i1 %.not156, label %._crit_edge194, label %.lr.ph193

bb.bc:                                            ; preds = %._crit_edge
  %i.jc = atomicrmw add ptr @_ZN4llvm4bolt14ShrinkWrapping23SpillsMovedDynamicCountE, i64 %.256 seq_cst, align 8 ; 0 uses
  br i1 %i.z, label %bb.be, label %bb.bd

.sink.split266:                                   ; preds = %._crit_edge194, %bb.ap, %bb.a
  %.sink267 = phi i64 [ 0, %bb.a ], [ %.256, %bb.ap ], [ %.256, %._crit_edge194 ]
  %i.jd = atomicrmw add ptr @_ZN4llvm4bolt14ShrinkWrapping23SpillsMovedDynamicCountE, i64 %.sink267 seq_cst, align 8 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %.sink.split266, %bb.bc
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !620
  %i.jg = load ptr, ptr %2, align 8, !tbaa !628
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = sub i64 %i.jh, %i.ji
  %i.jk = sdiv exact i64 %i.jj, 24
  %i.jl = atomicrmw add ptr @_ZN4llvm4bolt14ShrinkWrapping22SpillsMovedRegularModeE, i64 %i.jk seq_cst, align 8 ; 0 uses
  br label %.loopexit159thread-pre-split

bb.be:                                            ; preds = %bb.bc
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !620
  %i.jo = load ptr, ptr %2, align 8, !tbaa !628
  %i.jp = ptrtoint ptr %i.jn to i64
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = sdiv exact i64 %i.jr, 24
  %i.jt = atomicrmw add ptr @_ZN4llvm4bolt14ShrinkWrapping22SpillsMovedPushPopModeE, i64 %i.js seq_cst, align 8 ; 0 uses
  %i.ju = load ptr, ptr %2, align 8, !tbaa !1403  ; 3 uses
  %i.jv = load ptr, ptr %i.jm, align 8, !tbaa !1403 ; 2 uses
  %.not151178 = icmp eq ptr %i.ju, %i.jv
  br i1 %.not151178, label %.loopexit159, label %.lr.ph181

.lr.ph181:                                        ; preds = %bb.be
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.jx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ka = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph181, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EED2Ev.exit
  %.sroa.082.0179 = phi ptr [ %i.ju, %.lr.ph181 ], [ %i.ko, %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EED2Ev.exit ] ; 4 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.082.0179, i64 16
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !191
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.082.0179, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !129
  %i.kf = load i64, ptr %.sroa.082.0179, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.kg = trunc i32 %i.kc to i16
  call void @_ZN4llvm4bolt19CalleeSavedAnalysis13getSavesByRegEt(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.102") align 8 %8, ptr noundef nonnull align 8 dereferenceable(296) %i.jw, i16 noundef zeroext %i.kg)
  %i.kh = load ptr, ptr %8, align 8, !tbaa !538   ; 5 uses
  %i.ki = load ptr, ptr %i.jx, align 8, !tbaa !538 ; 2 uses
  %.not152173 = icmp eq ptr %i.kh, %i.ki
  br i1 %.not152173, label %._crit_edge177, label %.lr.ph176

._crit_edge177:                                   ; preds = %_ZN4llvm4bolt19StackLayoutModifier14collapseRegionEPNS_6MCInstE.exit, %bb.bf
  %.not.i.i.i70 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i70, label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge177
  %i.kj = load ptr, ptr %i.ka, align 8, !tbaa !237
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = ptrtoint ptr %i.kh to i64
  %i.km = sub i64 %i.kk, %i.kl
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.km) #34
  br label %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4llvm6MCInstESaIS2_EED2Ev.exit:    ; preds = %._crit_edge177, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.kn = call noundef zeroext i1 @_ZN4llvm4bolt19StackLayoutModifier12insertRegionENS0_12ProgramPointEl(ptr noundef nonnull align 8 dereferenceable(260) %i.jy, i8 1, ptr %i.ke, i64 noundef %i.kf) ; 0 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.082.0179, i64 24 ; 2 uses
  %.not151 = icmp eq ptr %i.ko, %i.jv
  br i1 %.not151, label %.loopexit159thread-pre-split, label %bb.bf

.lr.ph176:                                        ; preds = %bb.bf, %_ZN4llvm4bolt19StackLayoutModifier14collapseRegionEPNS_6MCInstE.exit
  %.sroa.077.0174 = phi ptr [ %i.la, %_ZN4llvm4bolt19StackLayoutModifier14collapseRegionEPNS_6MCInstE.exit ], [ %i.kh, %bb.bf ] ; 2 uses
  %i.kp = load ptr, ptr %.sroa.077.0174, align 8, !tbaa !129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.kq = load ptr, ptr %i.jy, align 8, !tbaa !320, !nonnull !64, !align !99
  call void @_ZNK4llvm4bolt13FrameAnalysis9getFIEForERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %1, ptr noundef nonnull align 8 dereferenceable(264) %i.kq, ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #31
  %i.kr = load i8, ptr %i.jz, align 8
  %i.ks = trunc i8 %i.kr to i1
  br i1 %i.ks, label %_ZN4llvm4bolt19StackLayoutModifier14collapseRegionEPNS_6MCInstE.exit, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph176
  %i.kt = load ptr, ptr %1, align 8, !tbaa !133   ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !136
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.kx = load i8, ptr %i.kw, align 8, !tbaa !321
  %i.ky = zext i8 %i.kx to i64
  %i.kz = call noundef zeroext i1 @_ZN4llvm4bolt19StackLayoutModifier14collapseRegionEPNS_6MCInstEll(ptr noundef nonnull align 8 dereferenceable(260) %i.jy, ptr noundef nonnull %i.kp, i64 noundef %i.kv, i64 noundef %i.ky) ; 0 uses
  br label %_ZN4llvm4bolt19StackLayoutModifier14collapseRegionEPNS_6MCInstE.exit

_ZN4llvm4bolt19StackLayoutModifier14collapseRegionEPNS_6MCInstE.exit: ; preds = %.lr.ph176, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.077.0174, i64 8 ; 2 uses
  %.not152 = icmp eq ptr %i.la, %i.ki
  br i1 %.not152, label %._crit_edge177, label %.lr.ph176

.loopexit159thread-pre-split:                     ; preds = %_ZNSt6vectorIPN4llvm6MCInstESaIS2_EED2Ev.exit, %bb.bd
  %.pr = load ptr, ptr %2, align 8, !tbaa !628
  br label %.loopexit159

end_hunk_11
begin_hunk_12_@_ZN4llvm4bolt14ShrinkWrapping16insertUpdatedCFIEjii:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !129
  %i.bs = icmp eq ptr %i.bo, %i.br
  br i1 %i.bs, label %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit, label %.preheader141, !llvm.loop !17

bb.g:                                             ; preds = %bb.e
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = load i64, ptr %i.bb, align 8, !tbaa !477 ; 2 uses
  %i.bv = urem i64 %i.bt, %i.bu                   ; 2 uses
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !478
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !157 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !129
  %i.cc = icmp eq ptr %i.bo, %i.cb
  br i1 %i.cc, label %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit, label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.j
  %i.cd = icmp eq ptr %i.bo, %i.cg
  br i1 %i.cd, label %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !15

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %bb.i
  %.020.i.i.i.i.i = phi ptr [ %i.ce, %bb.i ], [ %i.bz, %bb.h ]
  %i.ce = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !157 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not18.i.i.i.i.i, label %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !129 ; 2 uses
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = urem i64 %i.ch, %i.bu
  %.not19.i.i.i.i.i = icmp eq i64 %i.ci, %i.bv
  br i1 %.not19.i.i.i.i.i, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !15

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.j
  br label %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit, !llvm.loop !15

_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit: ; preds = %bb.i, %.lr.ph.i.i.i.i.i, %.preheader141, %bb.f, %bb.g, %bb.h, %..loopexit_crit_edge21.i.i.i.i.i
  %.sroa.06.1.i.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i.i ], [ null, %.preheader141 ], [ %i.bz, %bb.h ], [ null, %bb.g ], [ %.sroa.06.0.i.i.i, %bb.f ], [ null, %.lr.ph.i.i.i.i.i ], [ %i.ce, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.838") align 8 %4, ptr noundef nonnull align 8 dereferenceable(208) %i.ar, ptr noundef nonnull align 8 dereferenceable(128) %i.bn)
  %i.cj = load ptr, ptr %4, align 8, !tbaa !142
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !481 ; 2 uses
  %i.cm = and i64 %i.cl, 63
  %i.cn = lshr i64 %i.cl, 6
  %i.co = and i64 %i.cn, 67108863
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !67
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !123
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.cs = lshr i64 %i.cr, %i.cm
  %i.ct = trunc i64 %i.cs to i8
  %i.cu = and i8 %i.ct, 1                         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.cv = load ptr, ptr %i.bi, align 8, !tbaa !129
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.838") align 8 %5, ptr noundef nonnull align 8 dereferenceable(120) %i.ar, ptr noundef nonnull align 8 dereferenceable(128) %i.cv)
  %i.cw = load ptr, ptr %5, align 8, !tbaa !142
  %i.cx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN4llvm6MCInstESt4pairIKS4_mESaIS7_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !123 ; 2 uses
  %i.cz = and i64 %i.cy, 63
  %i.da = shl nuw i64 1, %i.cz
  %i.db = lshr i64 %i.cy, 6
  %i.dc = and i64 %i.db, 67108863
  %i.dd = load ptr, ptr %i.cw, align 8, !tbaa !67
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dc
  %i.df = load i64, ptr %i.de, align 8, !tbaa !123
  %i.dg = and i64 %i.df, %i.da
  %i.dh = icmp ne i64 %i.dg, 0                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.di = zext i1 %i.dh to i8                     ; 2 uses
  %i.dj = load ptr, ptr %i.bi, align 8, !tbaa !129 ; 2 uses
  %i.dk = load ptr, ptr %i.bj, align 8, !tbaa !129
  %.not114126 = icmp eq ptr %i.dj, %i.dk
  br i1 %.not114126, label %._crit_edge130, label %.lr.ph129

._crit_edge130:                                   ; preds = %bb.v, %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit
  %.not78 = icmp eq ptr %.072133, null
  br i1 %.not78, label %bb.y, label %bb.w

.lr.ph129:                                        ; preds = %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit, %bb.v
  %.075128 = phi i8 [ %.176, %bb.v ], [ %i.di, %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit ] ; 2 uses
  %.sroa.095.0127 = phi ptr [ %i.go, %bb.v ], [ %i.dj, %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit ] ; 5 uses
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !129 ; 4 uses
  %i.dm = load i64, ptr %i.az, align 8, !tbaa !482
  %.not.not.i.i.i82 = icmp eq i64 %i.dm, 0
  br i1 %.not.not.i.i.i82, label %.preheader, label %bb.l

.preheader:                                       ; preds = %.lr.ph129, %bb.k
  %.sroa.06.0.in.i.i.i90 = phi ptr [ %.sroa.06.0.i.i.i91, %bb.k ], [ %i.bc, %.lr.ph129 ]
  %.sroa.06.0.i.i.i91 = load ptr, ptr %.sroa.06.0.in.i.i.i90, align 8, !tbaa !157 ; 4 uses
  %.not.i.i.i92 = icmp eq ptr %.sroa.06.0.i.i.i91, null
  br i1 %.not.i.i.i92, label %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit93, label %bb.k

bb.k:                                             ; preds = %.preheader
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i91, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !129
  %i.dp = icmp eq ptr %i.dl, %i.do
  br i1 %i.dp, label %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit93, label %.preheader, !llvm.loop !17

bb.l:                                             ; preds = %.lr.ph129
  %i.dq = ptrtoint ptr %i.dl to i64
  %i.dr = load i64, ptr %i.bb, align 8, !tbaa !477 ; 2 uses
  %i.ds = urem i64 %i.dq, %i.dr                   ; 2 uses
  %i.dt = load ptr, ptr %i.ba, align 8, !tbaa !478
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.ds
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i.i83 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i83, label %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit93, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !157 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !129
  %i.dz = icmp eq ptr %i.dl, %i.dy
  br i1 %i.dz, label %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit93, label %.lr.ph.i.i.i.i.i84

bb.n:                                             ; preds = %bb.o
  %i.ea = icmp eq ptr %i.dl, %i.ed
  br i1 %i.ea, label %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit93, label %.lr.ph.i.i.i.i.i84, !llvm.loop !15

.lr.ph.i.i.i.i.i84:                               ; preds = %bb.m, %bb.n
  %.020.i.i.i.i.i85 = phi ptr [ %i.eb, %bb.n ], [ %i.dw, %bb.m ]
  %i.eb = load ptr, ptr %.020.i.i.i.i.i85, align 8, !tbaa !157 ; 4 uses
  %.not18.i.i.i.i.i86 = icmp eq ptr %i.eb, null
  br i1 %.not18.i.i.i.i.i86, label %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit93, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i84
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !129 ; 2 uses
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = urem i64 %i.ee, %i.dr
  %.not19.i.i.i.i.i87 = icmp eq i64 %i.ef, %i.ds
  br i1 %.not19.i.i.i.i.i87, label %bb.n, label %..loopexit_crit_edge21.i.i.i.i.i88, !llvm.loop !15

..loopexit_crit_edge21.i.i.i.i.i88:               ; preds = %bb.o
  br label %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit93, !llvm.loop !15

_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit93: ; preds = %bb.n, %.lr.ph.i.i.i.i.i84, %.preheader, %bb.k, %bb.l, %bb.m, %..loopexit_crit_edge21.i.i.i.i.i88
  %.sroa.06.1.i.i.i89 = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i.i88 ], [ null, %.preheader ], [ %i.dw, %bb.m ], [ null, %bb.l ], [ %.sroa.06.0.i.i.i91, %bb.k ], [ null, %.lr.ph.i.i.i.i.i84 ], [ %i.eb, %bb.n ]
  %i.eg = load ptr, ptr %i.bd, align 8, !tbaa !537, !noalias !1439, !nonnull !64, !align !99
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1568
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !189, !noalias !1439 ; 2 uses
  %i.ej = load i8, ptr %i.bf, align 4, !tbaa !190, !range !63, !noalias !1439, !noundef !64
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %._crit_edge.i.i, label %bb.p

._crit_edge.i.i:                                  ; preds = %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit93
  %.0.pre.i.i = load i32, ptr %i.be, align 8, !tbaa !191, !noalias !1439
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i

bb.p:                                             ; preds = %_ZNK4llvm4bolt22InstrsDataflowAnalysisINS0_17DominatorAnalysisILb0EEELb0ENS0_12StatePrinterINS_9BitVectorEEEE5countERKNS_6MCInstESA_.exit93
  %i.el = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.ei, ptr nonnull @.str.45, i64 17), !noalias !1439 ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.el to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.be, align 8, !noalias !1439
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i

_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i: ; preds = %bb.p, %._crit_edge.i.i
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.el, %bb.p ] ; 3 uses
  %i.em = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.ei, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.095.0127, i32 noundef %.0.i.i) #31, !noalias !1440
  br i1 %i.em, label %bb.q, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit

bb.q:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.095.0127, i64 24
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !121, !noalias !1440 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.eo, -1         ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.095.0127, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !67, !noalias !1440 ; 4 uses
  %i.er = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %i.er ; 2 uses
  %i.et = load i8, ptr %i.es, align 8, !tbaa !234, !noalias !1440
  %i.eu = icmp eq i8 %i.et, 6
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !noalias !1440
  %i.ex = icmp eq ptr %i.ew, null
  %i.ey = select i1 %i.eu, i1 %i.ex, i1 false
  br i1 %i.ey, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.q, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.er, %bb.q ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.ez = icmp sgt i64 %indvars.iv.i.i.i, 0
  call void @llvm.assume(i1 %i.ez)
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 8, !tbaa !234, !noalias !1440
  %i.fc = icmp eq i8 %i.fb, 6
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !1440
  %i.ff = icmp eq ptr %i.fe, null
  %i.fg = select i1 %i.fc, i1 %i.ff, i1 false
  br i1 %i.fg, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.fh = trunc nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.q
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.q ], [ %i.fh, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.eo, %.01318.i.i.i.lcssa.i.i.i
  %i.fi = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.fi, %i.eo
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.fj = zext i32 %i.fi to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.eo to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !235, !noalias !1440 ; 2 uses
  %i.fn = lshr i64 %i.fm, 56
  %i.fo = trunc nuw nsw i64 %i.fn to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.fo
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ %i.fj, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %indvars.iv.next.i.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !235, !noalias !1440 ; 2 uses
  %i.fs = lshr i64 %i.fr, 56
  %i.ft = trunc nuw nsw i64 %i.fs to i32
  %.not.i.i.i.i = icmp eq i32 %.0.i.i, %i.ft
  br i1 %.not.i.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.fm, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.fr, %.critedge.i.i.i.i ]
  %i.fu = shl i64 %.lcssa.i.i.i, 8
  %i.fv = ashr exact i64 %i.fu, 8
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit: ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i
  %.sroa.0110.0 = phi ptr [ %i.fx, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i ], [ inttoptr (i64 34 to ptr), %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i89, i64 16
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !481 ; 2 uses
  %i.ga = and i64 %i.fz, 63
  %i.gb = shl nuw i64 1, %i.ga
  %i.gc = lshr i64 %i.fz, 6
  %i.gd = and i64 %i.gc, 67108863
  %i.ge = load ptr, ptr %.sroa.0110.0, align 8, !tbaa !67
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gd
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !123
  %i.gh = and i64 %i.gg, %i.gb
  %i.gi = icmp ne i64 %i.gh, 0                    ; 2 uses
  %i.gj = zext i1 %i.gi to i8                     ; 2 uses
  %.not81 = icmp eq i8 %.075128, %i.gj
  br i1 %.not81, label %bb.v, label %bb.r

bb.r:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.095.0127, i64 128 ; 2 uses
  br i1 %i.gi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.gl = call ptr @_ZN4llvm4bolt14ShrinkWrapping22insertCFIsForPushOrPopERNS0_16BinaryBasicBlockEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS6_SaIS6_EEEEjbil(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.bi, ptr nonnull %i.gk, i32 noundef %1, i1 noundef zeroext true, i32 poison, i64 noundef %i.bh)
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.gm = call ptr @_ZN4llvm4bolt14ShrinkWrapping22insertCFIsForPushOrPopERNS0_16BinaryBasicBlockEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS6_SaIS6_EEEEjbil(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.bi, ptr nonnull %i.gk, i32 noundef %1, i1 noundef zeroext false, i32 poison, i64 noundef %i.bg)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %storemerge = phi ptr [ %i.gm, %bb.t ], [ %i.gl, %bb.s ]
  %i.gn = getelementptr inbounds i8, ptr %storemerge, i64 -128
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit
  %.sroa.095.1 = phi ptr [ %.sroa.095.0127, %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit ], [ %i.gn, %bb.u ]
  %.176 = phi i8 [ %.075128, %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit ], [ %i.gj, %bb.u ]
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.095.1, i64 128 ; 2 uses
  %i.gp = load ptr, ptr %i.bj, align 8, !tbaa !129
  %.not114 = icmp eq ptr %i.go, %i.gp
  br i1 %.not114, label %._crit_edge130, label %.lr.ph129, !llvm.loop !1436

bb.w:                                             ; preds = %._crit_edge130
  %i.gq = load ptr, ptr %i.l, align 8, !tbaa !529, !nonnull !64, !align !99 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 304
  %i.gs = load i8, ptr %i.gr, align 8, !tbaa !631, !range !63, !noundef !64
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit, label %_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit.thread

_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit:    ; preds = %bb.w
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 1272
  %i.gv = call noundef zeroext i1 @_ZNK4llvm4bolt14FunctionLayout7isSplitEv(ptr noundef nonnull align 8 dereferenceable(32) %i.gu) #31
  br i1 %i.gv, label %bb.x, label %_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit.thread

bb.x:                                             ; preds = %_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %i.bi, i64 176
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !632
  %i.gy = icmp ne i32 %i.gx, 0
  %i.gz = getelementptr inbounds nuw i8, ptr %.072133, i64 176
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !632
  %i.hb = icmp ne i32 %i.ha, 0
  %i.hc = xor i1 %i.gy, %i.hb
  br i1 %i.hc, label %bb.y, label %_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit.thread

bb.y:                                             ; preds = %bb.x, %._crit_edge130
  br i1 %i.dh, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.hd = load ptr, ptr %i.bi, align 8, !tbaa !129
  %i.he = call ptr @_ZN4llvm4bolt14ShrinkWrapping22insertCFIsForPushOrPopERNS0_16BinaryBasicBlockEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS6_SaIS6_EEEEjbil(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(192) %i.bi, ptr %i.hd, i32 noundef %1, i1 noundef zeroext true, i32 poison, i64 noundef %i.bg) ; 0 uses
  br label %bb.ad

_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit.thread: ; preds = %bb.w, %bb.x, %_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit
  %.not80 = icmp eq i8 %.070134, %i.di
  br i1 %.not80, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit.thread
  %i.hf = getelementptr inbounds nuw i8, ptr %.072133, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !129 ; 2 uses
  br i1 %i.dh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hh = call ptr @_ZN4llvm4bolt14ShrinkWrapping22insertCFIsForPushOrPopERNS0_16BinaryBasicBlockEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS6_SaIS6_EEEEjbil(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(192) %.072133, ptr %i.hg, i32 noundef %1, i1 noundef zeroext true, i32 poison, i64 noundef %i.bg) ; 0 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.hi = call ptr @_ZN4llvm4bolt14ShrinkWrapping22insertCFIsForPushOrPopERNS0_16BinaryBasicBlockEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS6_SaIS6_EEEEjbil(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(192) %.072133, ptr %i.hg, i32 noundef %1, i1 noundef zeroext false, i32 poison, i64 noundef %i.bh) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.y, %bb.ab, %bb.ac, %_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit.thread, %bb.d
  %.173 = phi ptr [ %.072133, %bb.d ], [ %i.bi, %_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit.thread ], [ %i.bi, %bb.ac ], [ %i.bi, %bb.ab ], [ %i.bi, %bb.y ], [ %i.bi, %bb.z ]
  %.171 = phi i8 [ %.070134, %bb.d ], [ %i.cu, %_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit.thread ], [ %i.cu, %bb.ac ], [ %i.cu, %bb.ab ], [ %i.cu, %bb.y ], [ %i.cu, %bb.z ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.074132, i64 8 ; 2 uses
  %.not77 = icmp eq ptr %i.hj, %i.ay
  br i1 %.not77, label %._crit_edge137, label %bb.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr.838") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !286, !noalias !1453 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !287, !noalias !1453 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.f = load i32, ptr %i.e, align 4, !tbaa !288, !noalias !1453 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = ptrtoint ptr %2 to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = lshr i64 %i.o, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !191, !noalias !1454
  %i.s = and i32 %i.n, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !289

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.v = phi i64 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %.017.i.i.i = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !129, !noalias !1454
  %i.y = icmp eq ptr %2, %i.x
  br i1 %i.y, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit, label %bb.c, !prof !210

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.z = add nuw i32 %.017.i.i.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !191, !noalias !1454
  %i.af = and i32 %i.aa, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !290

.loopexit.i.i:                                    ; preds = %bb.c, %bb.b, %bb.a
  %i.ai = zext i32 %i.f to i64                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.ai
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = zext i32 %i.f to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit ], [ %i.ai, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.w, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4findES4_.exit.loopexit ], [ %i.aj, %.loopexit.i.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.pre-phi
  %i.al = icmp eq ptr %.lcssa.sink.i.i, %i.ak
end_hunk_12
begin_hunk_13_@_ZN4llvm4bolt14ShrinkWrapping15rebuildCFIForSPEv:bb.a
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1
  %i.fa = load i32, ptr %i.ef, align 8, !tbaa !121
  %i.fb = add i32 %i.fa, 1                        ; 2 uses
  store i32 %i.fb, ptr %i.ef, align 8, !tbaa !121
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i: ; preds = %bb.m, %bb.l
  %i.fc = phi i32 [ %.pre.i, %bb.l ], [ %i.fb, %bb.m ] ; 2 uses
  %i.fd = load i32, ptr %i.ev, align 4, !tbaa !120
  %.not.i.i30.i = icmp ult i32 %i.fc, %i.fd
  br i1 %.not.i.i30.i, label %bb.o, label %bb.n, !prof !210

bb.n:                                             ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 2, i64 %i.ee)
  br label %_ZNK4llvm4bolt13MCPlusBuilder20setAnnotationOpValueERNS_6MCInstEjl.exit

bb.o:                                             ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.i
  %i.fe = zext i32 %i.fc to i64
  %i.ff = load ptr, ptr %i.bx, align 8, !tbaa !67
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %i.fe ; 2 uses
  store i8 2, ptr %i.fg, align 1
  %.sroa.4.0..sroa_idx.i.i31.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i64 %i.ee, ptr %.sroa.4.0..sroa_idx.i.i31.i, align 1
  %i.fh = load i32, ptr %i.ef, align 8, !tbaa !121
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr %i.ef, align 8, !tbaa !121
  br label %_ZNK4llvm4bolt13MCPlusBuilder20setAnnotationOpValueERNS_6MCInstEjl.exit

bb.p:                                             ; preds = %.critedge.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge28.i, label %.critedge.i, !llvm.loop !12

.critedge.i:                                      ; preds = %bb.p, %.critedge.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.eu, %.critedge.lr.ph.i ], [ %indvars.iv.next.i, %bb.p ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %indvars.iv.i ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !235
  %i.fm = lshr i64 %i.fl, 56
  %i.fn = trunc nuw nsw i64 %i.fm to i32
  %.not.i = icmp eq i32 %i.cm, %i.fn
  br i1 %.not.i, label %bb.q, label %bb.p

bb.q:                                             ; preds = %.critedge.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i64 %i.ee, ptr %i.fo, align 8, !tbaa !235
  br label %_ZNK4llvm4bolt13MCPlusBuilder20setAnnotationOpValueERNS_6MCInstEjl.exit

.critedge28.i:                                    ; preds = %bb.p, %.preheader.i
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0121.0142, i64 28
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !120
  %.not.i.i34.i = icmp ult i32 %i.eg, %i.fq
  br i1 %.not.i.i34.i, label %bb.s, label %bb.r, !prof !210

bb.r:                                             ; preds = %.critedge28.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 2, i64 %i.ee)
  br label %_ZNK4llvm4bolt13MCPlusBuilder20setAnnotationOpValueERNS_6MCInstEjl.exit

bb.s:                                             ; preds = %.critedge28.i
  %i.fr = zext i32 %i.eg to i64
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.fr ; 2 uses
  store i8 2, ptr %i.fs, align 1
  %.sroa.4.0..sroa_idx.i.i35.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 %i.ee, ptr %.sroa.4.0..sroa_idx.i.i35.i, align 1
  %i.ft = load i32, ptr %i.ef, align 8, !tbaa !121
  %i.fu = add i32 %i.ft, 1
  store i32 %i.fu, ptr %i.ef, align 8, !tbaa !121
  br label %_ZNK4llvm4bolt13MCPlusBuilder20setAnnotationOpValueERNS_6MCInstEjl.exit

_ZNK4llvm4bolt13MCPlusBuilder20setAnnotationOpValueERNS_6MCInstEjl.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %_ZNK4llvm4bolt14BinaryFunction9getCFIForERKNS_6MCInstE.exit, %.lr.ph
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0121.0142, i64 128 ; 2 uses
  %.not134 = icmp eq ptr %i.fv, %i.bf
  br i1 %.not134, label %._crit_edge, label %.lr.ph

._crit_edge160.loopexit:                          ; preds = %bb.ba
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !529
  br label %._crit_edge160

._crit_edge160:                                   ; preds = %._crit_edge160.loopexit, %._crit_edge147
  %i.fw = phi ptr [ %.pre, %._crit_edge160.loopexit ], [ %i.n, %._crit_edge147 ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 1240
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !67 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 1248
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !121 ; 2 uses
  %i.gb = zext i32 %i.ga to i64
  %.idx172 = shl nuw nsw i64 %i.gb, 3
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.idx172
  %.not132166 = icmp eq i32 %i.ga, 0
  br i1 %.not132166, label %._crit_edge170, label %.lr.ph169

.lr.ph169:                                        ; preds = %._crit_edge160
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.bb

bb.t:                                             ; preds = %.lr.ph159, %bb.ba
  %.0157 = phi i32 [ -8, %.lr.ph159 ], [ %.1, %bb.ba ] ; 2 uses
  %.055156 = phi ptr [ null, %.lr.ph159 ], [ %.156, %bb.ba ] ; 6 uses
  %.059155 = phi ptr [ %i.p, %.lr.ph159 ], [ %i.od, %bb.ba ] ; 2 uses
  %i.ge = load ptr, ptr %.059155, align 8, !tbaa !127 ; 13 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 4 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !493
  %i.gh = load ptr, ptr %i.ge, align 8, !tbaa !494
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %bb.ba, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.gj = load ptr, ptr %i.gf, align 8, !tbaa !129, !noalias !1481
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -128
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.757") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.m, ptr noundef nonnull align 8 dereferenceable(128) %i.gk)
  %i.gl = load ptr, ptr %4, align 8, !tbaa !282
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !284 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.gn = load ptr, ptr %i.ge, align 8, !tbaa !129
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE14getStateBeforeERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.757") align 8 %5, ptr noundef nonnull align 8 dereferenceable(120) %i.m, ptr noundef nonnull align 8 dereferenceable(128) %i.gn)
  %i.go = load ptr, ptr %5, align 8, !tbaa !282
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !284 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.gq = load ptr, ptr %i.ge, align 8, !tbaa !129 ; 2 uses
  %i.gr = load ptr, ptr %i.gf, align 8, !tbaa !129
  %.not131148 = icmp eq ptr %i.gq, %i.gr
  br i1 %.not131148, label %._crit_edge153, label %.lr.ph152

.lr.ph152:                                        ; preds = %bb.u
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ge, i64 168 ; 2 uses
  br label %bb.v

._crit_edge153:                                   ; preds = %bb.ao, %bb.u
  %i.gt = load ptr, ptr %i.a, align 8, !tbaa !529, !nonnull !64, !align !99 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 304
  %i.gv = load i8, ptr %i.gu, align 8, !tbaa !631, !range !63, !noundef !64
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit, label %_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit.thread

_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit:    ; preds = %._crit_edge153
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 1272
  %i.gy = call noundef zeroext i1 @_ZNK4llvm4bolt14FunctionLayout7isSplitEv(ptr noundef nonnull align 8 dereferenceable(32) %i.gx) #31
  %i.gz = icmp ne ptr %.055156, null
  %or.cond = select i1 %i.gy, i1 %i.gz, i1 false
  br i1 %or.cond, label %bb.ap, label %_ZNK4llvm4bolt14BinaryFunction7isSplitEv.exit.thread

bb.v:                                             ; preds = %.lr.ph152, %bb.ao
  %.057150 = phi i32 [ %i.gp, %.lr.ph152 ], [ %.158, %bb.ao ] ; 2 uses
  %.sroa.0113.0149 = phi ptr [ %i.gq, %.lr.ph152 ], [ %i.ld, %bb.ao ] ; 5 uses
  %i.ha = load ptr, ptr %i.u, align 8, !tbaa !319, !noalias !1482, !nonnull !64, !align !99
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 1568
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !189, !noalias !1482 ; 2 uses
  %i.hd = load i8, ptr %i.w, align 4, !tbaa !190, !range !63, !noalias !1482, !noundef !64
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %._crit_edge.i.i, label %bb.w

._crit_edge.i.i:                                  ; preds = %bb.v
  %.0.pre.i.i = load i32, ptr %i.v, align 8, !tbaa !191, !noalias !1482
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i

bb.w:                                             ; preds = %bb.v
  %i.hf = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.hc, ptr nonnull @.str.47, i64 20), !noalias !1482 ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.hf to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.v, align 8, !noalias !1482
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i

_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i: ; preds = %bb.w, %._crit_edge.i.i
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.hf, %bb.w ] ; 3 uses
  %i.hg = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.hc, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0113.0149, i32 noundef %.0.i.i) #31, !noalias !1483
  br i1 %i.hg, label %bb.x, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit

bb.x:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0113.0149, i64 24
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !121, !noalias !1483 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.hi, -1         ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0113.0149, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !67, !noalias !1483 ; 4 uses
  %i.hl = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %i.hl ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !234, !noalias !1483
  %i.ho = icmp eq i8 %i.hn, 6
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !noalias !1483
  %i.hr = icmp eq ptr %i.hq, null
  %i.hs = select i1 %i.ho, i1 %i.hr, i1 false
  br i1 %i.hs, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.x, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.hl, %bb.x ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.ht = icmp sgt i64 %indvars.iv.i.i.i, 0
  call void @llvm.assume(i1 %i.ht)
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %indvars.iv.next.i.i.i ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 8, !tbaa !234, !noalias !1483
  %i.hw = icmp eq i8 %i.hv, 6
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !noalias !1483
  %i.hz = icmp eq ptr %i.hy, null
  %i.ia = select i1 %i.hw, i1 %i.hz, i1 false
  br i1 %i.ia, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.ib = trunc nsw i64 %indvars.iv.next.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.x
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.x ], [ %i.ib, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.hi, %.01318.i.i.i.lcssa.i.i.i
  %i.ic = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.ic, %i.hi
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.id = zext i32 %i.ic to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.hi to i64
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !235, !noalias !1483 ; 2 uses
  %i.ih = lshr i64 %i.ig, 56
  %i.ii = trunc nuw nsw i64 %i.ih to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.ii
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ %i.id, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %indvars.iv.next.i.i.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !235, !noalias !1483 ; 2 uses
  %i.im = lshr i64 %i.il, 56
  %i.in = trunc nuw nsw i64 %i.im to i32
  %.not.i.i.i.i = icmp eq i32 %.0.i.i, %i.in
  br i1 %.not.i.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.ig, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.il, %.critedge.i.i.i.i ]
  %i.io = shl i64 %.lcssa.i.i.i, 8
  %i.ip = ashr exact i64 %i.io, 8
  %i.iq = inttoptr i64 %i.ip to ptr
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit: ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i.i
  %.sroa.0110.0 = phi ptr [ %i.ir, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i.i ], [ inttoptr (i64 34 to ptr), %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit.i ]
  %i.is = load i32, ptr %.sroa.0110.0, align 4, !tbaa !284 ; 3 uses
  %.not64 = icmp eq i32 %.057150, %i.is
  br i1 %.not64, label %bb.ao, label %bb.y

bb.y:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE.exit
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0113.0149, i64 128
  %i.iu = load ptr, ptr %i.a, align 8, !tbaa !529, !nonnull !64, !align !99 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.iv = sub nsw i32 0, %i.is
  %i.iw = sext i32 %i.iv to i64                   ; 2 uses
  store ptr null, ptr %6, align 8, !tbaa !634, !alias.scope !1484
  store i32 0, ptr %i.x, align 8, !tbaa !191, !alias.scope !1484
  store i64 %i.iw, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !123, !alias.scope !1484
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !191, !alias.scope !1484
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !191, !alias.scope !1484
  store i8 0, ptr %i.y, align 8, !tbaa !453, !alias.scope !1484
  store i8 6, ptr %i.z, align 8, !tbaa !452, !alias.scope !1484
  store ptr null, ptr %i.aa, align 8, !tbaa !635, !alias.scope !1484
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 904 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 912 ; 3 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !121 ; 2 uses
  %i.ja = zext i32 %i.iz to i64                   ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iu, i64 916
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !120
  %.not.i93 = icmp ult i32 %i.iz, %i.jc
  %i.jd = inttoptr i64 %i.iw to ptr
  br i1 %.not.i93, label %bb.aa, label %bb.z, !prof !210

bb.z:                                             ; preds = %bb.y
  %i.je = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EE18growAndEmplaceBackIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ix, ptr noundef nonnull align 8 dereferenceable(88) %6) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_16MCCFIInstructionEE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.aa:                                            ; preds = %bb.y
  %i.jf = load ptr, ptr %i.ix, align 8, !tbaa !67
  %i.jg = getelementptr inbounds nuw [88 x i8], ptr %i.jf, i64 %i.ja ; 10 uses
  store ptr null, ptr %i.jg, align 8, !tbaa !634
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 7 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 64 ; 2 uses
  store i8 -1, ptr %i.ji, align 8, !tbaa !453
  %i.jj = load i8, ptr %i.y, align 8, !tbaa !453
  switch i8 %i.jj, label %bb.aj [
    i8 0, label %bb.ab
    i8 1, label %bb.ac
    i8 2, label %bb.ae
    i8 3, label %bb.af
    i8 4, label %bb.ag
    i8 5, label %bb.ah
    i8 6, label %bb.ai
    i8 -1, label %_ZN4llvm16MCCFIInstructionC2EOS0_.exit.i
  ]

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.jh, ptr noundef nonnull align 8 dereferenceable(57) %i.x, i64 24, i1 false), !tbaa.struct !643
  br label %_ZN4llvm16MCCFIInstructionC2EOS0_.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.jk = load <2 x ptr>, ptr %i.x, align 8, !tbaa !635
  store <2 x ptr> %i.jk, ptr %i.jh, align 8, !tbaa !635
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.jm = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !644
  store ptr %i.jm, ptr %i.jl, align 8, !tbaa !644
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.x, i8 0, i64 24, i1 false)
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jg, i64 32 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jg, i64 48 ; 3 uses
  store ptr %i.jo, ptr %i.jn, align 8, !tbaa !645
  %i.jp = load ptr, ptr %i.ab, align 8, !tbaa !637 ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.ac
  br i1 %i.jq, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.jr = load i64, ptr %i.ad, align 8, !tbaa !646 ; 2 uses
  %i.js = icmp ult i64 %i.jr, 16
  call void @llvm.assume(i1 %i.js)
  %i.jt = add nuw nsw i64 %i.jr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jo, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.jt, i1 false)
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS6_12EscapeFieldsENS6_11LabelFieldsENS6_18RegisterPairFieldsENS6_21VectorRegistersFieldsENS6_18VectorOffsetFieldsENS6_24VectorRegisterMaskFieldsEEEC1EOSE_EUlOT_T0_E_OSt7variantIJS7_S8_S9_SA_SB_SC_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ac
  store ptr %i.jp, ptr %i.jn, align 8, !tbaa !637
  %i.ju = load i64, ptr %i.ac, align 8, !tbaa !235
  store i64 %i.ju, ptr %i.jo, align 8, !tbaa !235
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS6_12EscapeFieldsENS6_11LabelFieldsENS6_18RegisterPairFieldsENS6_21VectorRegistersFieldsENS6_18VectorOffsetFieldsENS6_24VectorRegisterMaskFieldsEEEC1EOSE_EUlOT_T0_E_OSt7variantIJS7_S8_S9_SA_SB_SC_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS6_12EscapeFieldsENS6_11LabelFieldsENS6_18RegisterPairFieldsENS6_21VectorRegistersFieldsENS6_18VectorOffsetFieldsENS6_24VectorRegisterMaskFieldsEEEC1EOSE_EUlOT_T0_E_OSt7variantIJS7_S8_S9_SA_SB_SC_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ad
  %i.jv = load i64, ptr %i.ad, align 8, !tbaa !646
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jg, i64 40
  store i64 %i.jv, ptr %i.jw, align 8, !tbaa !646
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !637
  store i64 0, ptr %i.ad, align 8, !tbaa !646
  store i8 0, ptr %i.ac, align 8, !tbaa !235
  br label %_ZN4llvm16MCCFIInstructionC2EOS0_.exit.i

bb.ae:                                            ; preds = %bb.aa
  %i.jx = load i64, ptr %i.x, align 8, !tbaa !647
  store i64 %i.jx, ptr %i.jh, align 8, !tbaa !647
  br label %_ZN4llvm16MCCFIInstructionC2EOS0_.exit.i

bb.af:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.jh, ptr noundef nonnull align 8 dereferenceable(57) %i.x, i64 20, i1 false), !tbaa.struct !648
  br label %_ZN4llvm16MCCFIInstructionC2EOS0_.exit.i

bb.ag:                                            ; preds = %bb.aa
  store i32 0, ptr %i.jh, align 8, !tbaa !653
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store ptr %i.jd, ptr %i.jy, align 8, !tbaa !642
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.ka = load <2 x ptr>, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !654
  store <2 x ptr> %i.ka, ptr %i.jz, align 8, !tbaa !654
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.42.0..sroa_idx.i, i8 0, i64 24, i1 false)
  br label %_ZN4llvm16MCCFIInstructionC2EOS0_.exit.i

bb.ah:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.jh, ptr noundef nonnull align 8 dereferenceable(57) %i.x, i64 24, i1 false), !tbaa.struct !655
  br label %_ZN4llvm16MCCFIInstructionC2EOS0_.exit.i

bb.ai:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.jh, ptr noundef nonnull align 8 dereferenceable(57) %i.x, i64 20, i1 false), !tbaa.struct !648
  br label %_ZN4llvm16MCCFIInstructionC2EOS0_.exit.i

bb.aj:                                            ; preds = %bb.aa
  unreachable

_ZN4llvm16MCCFIInstructionC2EOS0_.exit.i:         ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS6_12EscapeFieldsENS6_11LabelFieldsENS6_18RegisterPairFieldsENS6_21VectorRegistersFieldsENS6_18VectorOffsetFieldsENS6_24VectorRegisterMaskFieldsEEEC1EOSE_EUlOT_T0_E_OSt7variantIJS7_S8_S9_SA_SB_SC_SD_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESK_SN_.exit.i.i.i.i.i.i.i.i.i, %bb.ab, %bb.aa
  %i.kb = load i8, ptr %i.y, align 8, !tbaa !453
  store i8 %i.kb, ptr %i.ji, align 8, !tbaa !453
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jg, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kc, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false)
  %i.kd = load i32, ptr %i.iy, align 8, !tbaa !121
  %i.ke = add i32 %i.kd, 1
  store i32 %i.ke, ptr %i.iy, align 8, !tbaa !121
  br label %_ZN4llvm15SmallVectorImplINS_16MCCFIInstructionEE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZN4llvm15SmallVectorImplINS_16MCCFIInstructionEE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.z, %_ZN4llvm16MCCFIInstructionC2EOS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !67
  store i32 0, ptr %i.ag, align 8, !tbaa !121
  store i32 6, ptr %i.ah, align 4, !tbaa !120
  %i.kf = getelementptr inbounds nuw i8, ptr %i.iu, i64 128
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !442, !nonnull !64, !align !99
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 1568
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !189 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !55
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 1480
  %i.kl = load ptr, ptr %i.kk, align 8
  call void %i.kl(ptr noundef nonnull align 8 dereferenceable(536) %i.ki, ptr noundef nonnull align 8 dereferenceable(128) %3, i64 noundef %i.ja) #31, !inline_history !26
  %i.km = load i32, ptr %i.gs, align 8, !tbaa !633
  %i.kn = add i32 %i.km, 1
  store i32 %i.kn, ptr %i.gs, align 8, !tbaa !633
  %i.ko = call ptr @_ZNSt6vectorIN4llvm6MCInstESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(192) %i.ge, ptr nonnull %i.it, ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.kp = load ptr, ptr %i.ae, align 8, !tbaa !67 ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.af
  br i1 %i.kq, label %_ZN4llvm4bolt14BinaryFunction17addCFIInstructionEPNS0_16BinaryBasicBlockEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS6_SaIS6_EEEEONS_16MCCFIInstructionE.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm15SmallVectorImplINS_16MCCFIInstructionEE12emplace_backIJS1_EEERS1_DpOT_.exit
  call void @free(ptr noundef %i.kp) #31
  br label %_ZN4llvm4bolt14BinaryFunction17addCFIInstructionEPNS0_16BinaryBasicBlockEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS6_SaIS6_EEEEONS_16MCCFIInstructionE.exit

end_hunk_13
begin_hunk_14_@_ZN4llvm4bolt14ShrinkWrapping15rebuildCFIForSPEv:bb.a
  %i.pz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 28
  %i.qa = load <2 x i32>, ptr %i.py, align 8, !tbaa !191
  store <2 x i32> %i.qa, ptr %i.px, align 8, !tbaa !191
  store ptr %i.pr, ptr %i.pp, align 8, !tbaa !67
  store i32 0, ptr %i.pz, align 4, !tbaa !120
  store i32 0, ptr %i.py, align 8, !tbaa !121
  br label %_ZN4llvm15SmallVectorImplINS_9MCOperandEEaSEOS2_.exit

bb.bi:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.qb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 24 ; 4 uses
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !121 ; 6 uses
  %i.qd = zext i32 %i.qc to i64                   ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 24 ; 4 uses
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !121 ; 4 uses
  %i.qg = zext i32 %i.qf to i64                   ; 2 uses
  %.not.i96 = icmp ult i32 %i.qf, %i.qc
  br i1 %.not.i96, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.qh = load ptr, ptr %i.po, align 8, !tbaa !67 ; 2 uses
  switch i32 %i.qc, label %bb.bk [
    i32 0, label %_ZSt4moveIPN4llvm9MCOperandES2_ET0_T_S4_S3_.exit.i
    i32 1, label %bb.bl
  ], !prof !612

bb.bk:                                            ; preds = %bb.bj
  %.idx.i = shl nuw nsw i64 %i.qd, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.qh, ptr align 8 %i.pq, i64 %.idx.i, i1 false)
  br label %_ZSt4moveIPN4llvm9MCOperandES2_ET0_T_S4_S3_.exit.i

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qh, ptr noundef nonnull align 8 dereferenceable(16) %i.pq, i64 16, i1 false), !tbaa.struct !657
  br label %_ZSt4moveIPN4llvm9MCOperandES2_ET0_T_S4_S3_.exit.i

_ZSt4moveIPN4llvm9MCOperandES2_ET0_T_S4_S3_.exit.i: ; preds = %bb.bl, %bb.bk, %bb.bj
  store i32 %i.qc, ptr %i.qe, align 8, !tbaa !121
  store i32 0, ptr %i.qb, align 8, !tbaa !121
  br label %_ZN4llvm15SmallVectorImplINS_9MCOperandEEaSEOS2_.exit

bb.bm:                                            ; preds = %bb.bi
  %i.qi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 28
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !120
  %i.qk = icmp ult i32 %i.qj, %i.qc
  br i1 %i.qk, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.qe, align 8, !tbaa !121
  %i.ql = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 32
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.po, ptr noundef nonnull %i.ql, i64 noundef %i.qd, i64 noundef 16) #31
  br label %_ZSt4moveIPN4llvm9MCOperandES2_ET0_T_S4_S3_.exit34.i

bb.bo:                                            ; preds = %bb.bm
  %.not32.i = icmp eq i32 %i.qf, 0
  br i1 %.not32.i, label %_ZSt4moveIPN4llvm9MCOperandES2_ET0_T_S4_S3_.exit34.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.qm = load ptr, ptr %i.po, align 8, !tbaa !67 ; 2 uses
  %.not37.i = icmp eq i32 %i.qf, 1
  br i1 %.not37.i, label %bb.br, label %bb.bq, !prof !491

bb.bq:                                            ; preds = %bb.bp
  %.idx36.i = shl nuw nsw i64 %i.qg, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.qm, ptr align 8 %i.pq, i64 %.idx36.i, i1 false)
  br label %_ZSt4moveIPN4llvm9MCOperandES2_ET0_T_S4_S3_.exit34.i

bb.br:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qm, ptr noundef nonnull align 8 dereferenceable(16) %i.pq, i64 16, i1 false), !tbaa.struct !657
  br label %_ZSt4moveIPN4llvm9MCOperandES2_ET0_T_S4_S3_.exit34.i

_ZSt4moveIPN4llvm9MCOperandES2_ET0_T_S4_S3_.exit34.i: ; preds = %bb.br, %bb.bq, %bb.bo, %bb.bn
  %.026.i = phi i64 [ 0, %bb.bn ], [ 0, %bb.bo ], [ %i.qg, %bb.bq ], [ 1, %bb.br ] ; 4 uses
  %i.qn = load i32, ptr %i.qb, align 8, !tbaa !121
  %i.qo = zext i32 %i.qn to i64                   ; 2 uses
  %.not.i.i.i97 = icmp samesign eq i64 %.026.i, %i.qo
  br i1 %.not.i.i.i97, label %_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %_ZSt4moveIPN4llvm9MCOperandES2_ET0_T_S4_S3_.exit34.i
  %i.qp = load ptr, ptr %i.pp, align 8, !tbaa !67
  %.idx39.i = shl nuw nsw i64 %.026.i, 4
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 %.idx39.i
  %i.qr = load ptr, ptr %i.po, align 8, !tbaa !67
  %i.qs = getelementptr inbounds nuw [16 x i8], ptr %i.qr, i64 %.026.i
  %i.qt = sub nsw i64 %i.qo, %.026.i
  %gepdiff.i = shl nsw i64 %i.qt, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qs, ptr align 8 %i.qq, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i: ; preds = %bb.bs, %_ZSt4moveIPN4llvm9MCOperandES2_ET0_T_S4_S3_.exit34.i
  store i32 %i.qc, ptr %i.qe, align 8, !tbaa !121
  store i32 0, ptr %i.qb, align 8, !tbaa !121
  br label %_ZN4llvm15SmallVectorImplINS_9MCOperandEEaSEOS2_.exit

_ZN4llvm15SmallVectorImplINS_9MCOperandEEaSEOS2_.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_9MCOperandEE12assignRemoteEOS2_.exit.i, %_ZSt4moveIPN4llvm9MCOperandES2_ET0_T_S4_S3_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i
  %i.qu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 128
  %i.qv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 128
  %i.qw = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.qx = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.qx, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i, !llvm.loop !27

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i: ; preds = %_ZN4llvm15SmallVectorImplINS_9MCOperandEEaSEOS2_.exit
  %.pre.i.i.i = load ptr, ptr %i.og, align 8, !tbaa !493
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i, %bb.bf, %bb.be
  %i.qy = phi ptr [ %.pre.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i.i ], [ %i.pi, %bb.bf ], [ %i.pi, %bb.be ] ; 3 uses
  %i.qz = getelementptr inbounds i8, ptr %i.qy, i64 -128
  store ptr %i.qz, ptr %i.og, align 8, !tbaa !493
  %i.ra = getelementptr inbounds i8, ptr %i.qy, i64 -112
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !67 ; 2 uses
  %i.rc = getelementptr inbounds i8, ptr %i.qy, i64 -96
  %i.rd = icmp eq ptr %i.rb, %i.rc
  br i1 %i.rd, label %_ZN4llvm4bolt16BinaryBasicBlock16eraseInstructionEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS4_SaIS4_EEEE.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i
  call void @free(ptr noundef %i.rb) #31
  br label %_ZN4llvm4bolt16BinaryBasicBlock16eraseInstructionEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS4_SaIS4_EEEE.exit

bb.bu:                                            ; preds = %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstENS_9StringRefE.exit.thread, %_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstENS_9StringRefE.exit
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.099.0162, i64 128
  br label %_ZN4llvm4bolt16BinaryBasicBlock16eraseInstructionEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS4_SaIS4_EEEE.exit

_ZN4llvm4bolt16BinaryBasicBlock16eraseInstructionEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS4_SaIS4_EEEE.exit: ; preds = %bb.bt, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i, %bb.bu
  %.sroa.099.1 = phi ptr [ %i.re, %bb.bu ], [ %i.pg, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i ], [ %i.pg, %bb.bt ] ; 2 uses
  %i.rf = load ptr, ptr %i.og, align 8, !tbaa !129
  %.not133 = icmp eq ptr %.sroa.099.1, %i.rf
  br i1 %.not133, label %._crit_edge165, label %.lr.ph164, !llvm.loop !1480
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr.757") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !319, !nonnull !64, !align !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !190, !range !63, !noundef !64
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 8, !tbaa !191
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.47, i64 20) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.0.i) #31, !noalias !1489
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !1489
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !alias.scope !1489
  store i32 34, ptr %0, align 8, !tbaa !191, !alias.scope !1489
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !292, !alias.scope !1489
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_20StackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !121, !noalias !1489 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.p, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67, !noalias !1489 ; 4 uses
  %i.s = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !234, !noalias !1489
  %i.v = icmp eq i8 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1489
  %i.y = icmp eq ptr %i.x, null
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aa = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !234, !noalias !1489
  %i.ad = icmp eq i8 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1489
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ai = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.p, %.01318.i.i.i.lcssa.i.i
  %i.aj = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.aj, %i.p
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !235, !noalias !1489 ; 2 uses
  %i.ao = lshr i64 %i.an, 56
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.ap
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !235, !noalias !1489 ; 2 uses
  %i.at = lshr i64 %i.as, 56
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.au
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.an, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.as, %.critedge.i.i.i ]
  %i.av = shl i64 %.lcssa.i.i, 8
  %i.aw = ashr exact i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !alias.scope !1489
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.az, align 8, !alias.scope !1489
  store ptr %i.ay, ptr %0, align 8, !tbaa !282, !alias.scope !1489
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %bb.c, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt14ShrinkWrapping17createStackAccessEiiRKNS0_15FrameIndexEntryEb(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected") align 8 initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::MCInst", align 8      ; 14 uses
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = alloca i16, align 2                      ; 4 uses
  %i.g = alloca i16, align 2                      ; 4 uses
  %i.h = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %6, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %i.i, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !121
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 6, ptr %i.l, align 4, !tbaa !120
  %i.m = add i32 %2, 2147483647
  %or.cond = icmp ult i32 %i.m, -2
  %i.n = load i8, ptr %4, align 8, !tbaa !229, !range !63, !noundef !64
  %i.o = trunc nuw i8 %i.n to i1                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !523, !nonnull !64, !align !99
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1568
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !189  ; 16 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 744
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef zeroext i16 %i.y(ptr noundef nonnull align 8 dereferenceable(536) %i.s) #31
  store i16 %i.z, ptr %i.a, align 2, !tbaa !195
  %i.aa = load i64, ptr %i.t, align 8, !tbaa !136
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = sub i32 %i.ab, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  %i.ad = load i32, ptr %i.u, align 4, !tbaa !139
  %i.ae = trunc i32 %i.ad to i16
  store i16 %i.ae, ptr %i.b, align 2, !tbaa !195
  %i.af = load i8, ptr %i.v, align 8, !tbaa !321
  %i.ag = zext i8 %i.af to i32
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1472
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(536) %i.s, ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 2 dereferenceable(2) %i.a, i32 noundef %i.ac, ptr noundef nonnull align 2 dereferenceable(2) %i.b, i32 noundef %i.ag) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 744
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef zeroext i16 %i.am(ptr noundef nonnull align 8 dereferenceable(536) %i.s) #31
  store i16 %i.an, ptr %i.c, align 2, !tbaa !195
  %i.ao = load i64, ptr %i.t, align 8, !tbaa !136
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = sub i32 %i.ap, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #31
  %i.ar = load i32, ptr %i.u, align 4, !tbaa !139
  %i.as = trunc i32 %i.ar to i16
  store i16 %i.as, ptr %i.d, align 2, !tbaa !195
  %i.at = load i8, ptr %i.v, align 8, !tbaa !321
  %i.au = zext i8 %i.at to i32
  %i.av = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1440
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(536) %i.s, ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 2 dereferenceable(2) %i.c, i32 noundef %i.aq, ptr noundef nonnull align 2 dereferenceable(2) %i.d, i32 noundef %i.au) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !523, !nonnull !64, !align !99
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1568
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !189 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !55
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 712
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(536) %i.bb, ptr noundef nonnull align 8 dereferenceable(128) %6) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8
  %i.bh = and i8 %i.bg, -2
  store i8 %i.bh, ptr %i.bf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(128) %6, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !67
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.bk, align 8, !tbaa !121
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 6, ptr %i.bl, align 4, !tbaa !120
  %i.bm = load i32, ptr %i.k, align 8, !tbaa !121
  %.not.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm8ExpectedINS_6MCInstEEC2IS1_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS4_S1_EEvE4typeE.exit, label %_ZN4llvm8ExpectedINS_6MCInstEEC2IS1_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS4_S1_EEvE4typeE.exit.sink.split

bb.h:                                             ; preds = %bb.a
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31
  %i.bn = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 752
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call noundef zeroext i16 %i.bp(ptr noundef nonnull align 8 dereferenceable(536) %i.s) #31
  store i16 %i.bq, ptr %i.e, align 2, !tbaa !195
  %i.br = load i64, ptr %i.t, align 8, !tbaa !136
  %i.bs = trunc i64 %i.br to i32
  %i.bt = sub i32 %i.bs, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31
  %i.bu = load i32, ptr %i.u, align 4, !tbaa !139
  %i.bv = trunc i32 %i.bu to i16
  store i16 %i.bv, ptr %i.f, align 2, !tbaa !195
  %i.bw = load i8, ptr %i.v, align 8, !tbaa !321
  %i.bx = zext i8 %i.bw to i32
  %i.by = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1472
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(536) %i.s, ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 2 dereferenceable(2) %i.e, i32 noundef %i.bt, ptr noundef nonnull align 2 dereferenceable(2) %i.f, i32 noundef %i.bx) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #31
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31
  %i.cb = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 752
  %i.cd = load ptr, ptr %i.cc, align 8
end_hunk_14
begin_hunk_15_@_ZN4llvm4bolt14ShrinkWrapping17processInsertionsEv:bb.a
  %10 = alloca %"struct.std::pair.769", align 8   ; 7 uses
  %11 = alloca %"class.std::function.1057", align 8 ; 9 uses
  %12 = alloca %"class.std::function.1057", align 8 ; 9 uses
  %13 = alloca %"class.llvm::bolt::(anonymous namespace)::PredictiveStackPointerTracking", align 8 ; 28 uses
  %14 = alloca %"class.std::vector.1088", align 8 ; 6 uses
  %15 = alloca %"class.llvm::Expected.1133", align 8 ; 5 uses
  %16 = alloca %"class.llvm::ErrorOr.757", align 8 ; 4 uses
  %17 = alloca %"class.llvm::Expected.1133", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !529, !nonnull !64, !align !99 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !522, !nonnull !64, !align !99
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load i16, ptr %i.s, align 8, !tbaa !563
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 4 uses
  store i8 0, ptr %i.u, align 4, !tbaa !190
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 19 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !442, !nonnull !64, !align !99
  store ptr %i.x, ptr %i.v, align 8, !tbaa !1600
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  store ptr %i.o, ptr %i.y, align 8, !tbaa !599
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  store i16 %i.t, ptr %i.z, align 8, !tbaa !1601
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 88
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !298
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  store i64 1, ptr %i.ac, align 8, !tbaa !297
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ae, align 8, !tbaa !1602
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 120 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.af, i8 0, i64 41, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTrackingE, i64 16), ptr %13, align 8, !tbaa !55
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 128 ; 3 uses
  store ptr %i.p, ptr %i.ah, align 8, !tbaa !1604
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 136 ; 2 uses
  store ptr %i.r, ptr %i.ai, align 8, !tbaa !1605
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 148
  store i8 0, ptr %i.aj, align 4, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 1240
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !67 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 1248
  %i.an = load i32, ptr %i.am, align 8, !tbaa !121 ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %.idx.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i
  %i.aq = icmp eq i32 %i.an, 0
  br i1 %i.aq, label %_ZN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTracking3runEv.exit.thread, label %.lr.ph394.i.i

_ZN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTracking3runEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %.critedge35

.lr.ph394.i.i:                                    ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  br label %bb.b

._crit_edge395.i.i:                               ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store i64 8, ptr %i.as, align 8, !tbaa !670
  %i.au = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #33 ; 2 uses
  store ptr %i.au, ptr %7, align 8, !tbaa !671
  %i.av = load i64, ptr %i.as, align 8, !tbaa !670
  %i.aw = add i64 %i.av, -1
  %i.ax = lshr i64 %i.aw, 1
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ax ; 3 uses
  %i.az = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #33 ; 6 uses
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !672
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 6 uses
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !673
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !674
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 512 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !675
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 12 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 8 uses
  store ptr %i.ay, ptr %i.bf, align 8, !tbaa !673
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 5 uses
  store ptr %i.az, ptr %i.bg, align 8, !tbaa !674
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 7 uses
  store ptr %i.bc, ptr %i.bh, align 8, !tbaa !675
  store ptr %i.az, ptr %i.at, align 8, !tbaa !1606
  store ptr %i.az, ptr %i.be, align 8, !tbaa !676
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #31
  %i.bi = load ptr, ptr %i.y, align 8, !tbaa !677, !nonnull !64, !align !99
  store ptr %i.bi, ptr %i.j, align 8, !tbaa !599
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.bj, ptr %9, align 8, !tbaa !67
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 0, ptr %i.bk, align 8, !tbaa !121
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 8, ptr %i.bl, align 4, !tbaa !120
  call void @_ZN4llvm25ReversePostOrderTraversalIPNS_4bolt14BinaryFunctionENS_11GraphTraitsIS3_EEE10InitializeERKS3_(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #31
  %i.bm = load ptr, ptr %9, align 8, !tbaa !67, !noalias !1607 ; 3 uses
  %i.bn = load i32, ptr %i.bk, align 8, !tbaa !121, !noalias !1607 ; 2 uses
  %.not343396.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not343396.i.i, label %._crit_edge400.i.i, label %.lr.ph399.preheader.i.i

.lr.ph399.preheader.i.i:                          ; preds = %._crit_edge395.i.i
  %i.bo = zext i32 %i.bn to i64
  %.idx435.i.i = shl nuw nsw i64 %i.bo, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx435.i.i
  br label %.lr.ph399.i.i

bb.b:                                             ; preds = %._crit_edge.i.i, %.lr.ph394.i.i
  %.sroa.0313.0393.i.i = phi ptr [ %i.al, %.lr.ph394.i.i ], [ %i.bx, %._crit_edge.i.i ] ; 2 uses
  %i.bq = load ptr, ptr %.sroa.0313.0393.i.i, align 8, !tbaa !127 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #31
  store ptr %i.bq, ptr %i.i, align 8, !tbaa !127
  %i.br = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS5_S6_IiiEESaIS9_ENS_10_Select1stESt8equal_toIS5_ESt4hashIS5_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #31
  %i.bs = call noundef zeroext i1 @_ZNK4llvm4bolt16BinaryBasicBlock12isEntryPointEv(ptr noundef nonnull align 8 dereferenceable(192) %i.bq) #31
  %.sroa.0310.0.extract.trunc.i.i = select i1 %i.bs, i32 -8, i32 -2147483648
  store i32 %.sroa.0310.0.extract.trunc.i.i, ptr %i.br, align 4, !tbaa !284
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 -2147483648, ptr %i.bt, align 4, !tbaa !285
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !129 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !129 ; 2 uses
  %.not350390.i.i = icmp eq ptr %i.bu, %i.bw
  br i1 %.not350390.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getOrCreateStateAtERNS_6MCInstE.exit.i.i, %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0313.0393.i.i, i64 8 ; 2 uses
  %.not342.i.i = icmp eq ptr %i.bx, %i.ap
  br i1 %.not342.i.i, label %._crit_edge395.i.i, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZN4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getOrCreateStateAtERNS_6MCInstE.exit.i.i
  %.sroa.0307.0391.i.i = phi ptr [ %i.ki, %_ZN4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getOrCreateStateAtERNS_6MCInstE.exit.i.i ], [ %i.bu, %bb.b ] ; 9 uses
  %i.by = load ptr, ptr %i.v, align 8, !tbaa !678, !nonnull !64, !align !99
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1568
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !189 ; 6 uses
  %i.cb = load i8, ptr %i.u, align 4, !tbaa !190, !range !63, !noundef !64
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %._crit_edge.i.i.i.i, label %bb.c

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i
  %.0.pre.i.i.i.i = load i32, ptr %i.ar, align 8, !tbaa !191
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.cd = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.ca, ptr nonnull @.str.36, i64 30) ; 2 uses
  %.sroa.0.0.insert.ext.i.i.i.i = zext i32 %i.cd to i64
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %i.ar, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i.i.i

_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i.i.i: ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %.0.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.cd, %bb.c ] ; 5 uses
  %i.ce = load i16, ptr %i.z, align 8, !tbaa !1601 ; 4 uses
  %i.cf = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.ca, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0307.0391.i.i, i32 noundef %.0.i.i.i.i) #31, !noalias !1608
  br i1 %i.cf, label %bb.d, label %_ZN4llvm7ErrorOrIRKSt4pairIiiEEaSEOS5_.exit.i.i.i.i

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0307.0391.i.i, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !121, !noalias !1608 ; 4 uses
  %.01317.i.i.i.i.i.i.i.i.i = add i32 %i.ch, -1   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0307.0391.i.i, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !67, !noalias !1608 ; 4 uses
  %i.ck = zext nneg i32 %.01317.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.ck ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !234, !noalias !1608
  %i.cn = icmp eq i8 %i.cm, 6
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !1608
  %i.cq = icmp eq ptr %i.cp, null
  %i.cr = select i1 %i.cn, i1 %i.cq, i1 false
  br i1 %i.cr, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i.i.i.i

.backedge.i.i.i.i.i.i.i.i.i:                      ; preds = %bb.d, %.backedge.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i.i ], [ %i.ck, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i, -1 ; 3 uses
  %i.cs = icmp sgt i64 %indvars.iv.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %indvars.iv.next.i.i.i.i.i.i ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !234, !noalias !1608
  %i.cv = icmp eq i8 %i.cu, 6
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !1608
  %i.cy = icmp eq ptr %i.cx, null
  %i.cz = select i1 %i.cv, i1 %i.cy, i1 false
  br i1 %i.cz, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i.i.i: ; preds = %.backedge.i.i.i.i.i.i.i.i.i
  %i.da = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i.i.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i.i.i.i, %bb.d ], [ %i.da, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp ne i32 %i.ch, %.01318.i.i.i.lcssa.i.i.i.i.i.i
  %i.db = add nuw i32 %.01318.i.i.i.lcssa.i.i.i.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i.i.i.i = icmp ult i32 %i.db, %i.ch
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i.i.i.i)
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i.i.i.i = zext i32 %i.ch to i64
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !235, !noalias !1608 ; 2 uses
  %i.dg = lshr i64 %i.df, 56
  %i.dh = trunc nuw nsw i64 %i.dg to i32
  %.not.i3.i.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i, %i.dh
  br i1 %.not.i3.i.i.i.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i.i.i.i, label %.critedge.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i:                          ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i
  %indvars.iv.i4.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i ], [ %i.dc, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i.i.i ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i.i.i)
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %indvars.iv.next.i.i.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !235, !noalias !1608 ; 2 uses
  %i.dl = lshr i64 %i.dk, 56
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i, %i.dm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i.i.i.i, label %.critedge.i.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i.i.i.i: ; preds = %.critedge.i.i.i.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i.i.i
  %.lcssa.i.i.i.i.i.i = phi i64 [ %i.df, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i.i.i ], [ %i.dk, %.critedge.i.i.i.i.i.i.i ]
  %i.dn = shl i64 %.lcssa.i.i.i.i.i.i, 8
  %i.do = ashr exact i64 %i.dn, 8
  %i.dp = add nuw nsw i64 %i.do, 8
  %i.dq = inttoptr i64 %i.dp to ptr
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getOrCreateStateAtERNS_6MCInstE.exit.i.i

_ZN4llvm7ErrorOrIRKSt4pairIiiEEaSEOS5_.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !194
  %.not.not.i.i.i.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not.not.i.i.i.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN4llvm7ErrorOrIRKSt4pairIiiEEaSEOS5_.exit.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.06.0.in.i.i.i.i.i.i = phi ptr [ %i.dt, %bb.e ], [ %.sroa.06.0.i.i.i.i.i.i, %bb.f ]
  %.sroa.06.0.i.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i.i, align 8, !tbaa !157, !nonnull !64, !noundef !64 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 8
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !195
  %i.dw = icmp eq i16 %i.ce, %i.dv
  br i1 %i.dw, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i.i.i, label %bb.f, !llvm.loop !4

bb.g:                                             ; preds = %_ZN4llvm7ErrorOrIRKSt4pairIiiEEaSEOS5_.exit.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.dy = zext i16 %i.ce to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !196 ; 2 uses
  %i.eb = urem i64 %i.dy, %i.ea                   ; 2 uses
  %i.ec = load ptr, ptr %i.dx, align 8, !tbaa !197
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.eb
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !160, !nonnull !64, !noundef !64
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !157 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !195
  %i.ei = icmp eq i16 %i.ce, %i.eh
  br i1 %i.ei, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i96.i.i

.lr.ph.i.i.i.i.i.i96.i.i:                         ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i96.i.i
  %.020.i.i.i.i.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i96.i.i ], [ %i.ef, %bb.g ]
  %i.ej = load ptr, ptr %.020.i.i.i.i.i.i.i.i, align 8, !tbaa !157, !nonnull !64, !noundef !64 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !195 ; 2 uses
  %i.em = zext i16 %i.el to i64
  %i.en = urem i64 %i.em, %i.ea
  %.not19.i.i.i.i.i.i.i.i = icmp eq i64 %i.en, %i.eb
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i.i.i)
  %i.eo = icmp eq i16 %i.ce, %i.el
  br i1 %i.eo, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i96.i.i, !llvm.loop !5

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i96.i.i, %bb.f, %bb.g
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i.i, %bb.f ], [ %i.ef, %bb.g ], [ %i.ej, %.lr.ph.i.i.i.i.i.i96.i.i ] ; 14 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !208
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = add i64 %i.er, 15
  %i.et = and i64 %i.es, -16                      ; 2 uses
  %i.eu = add i64 %i.et, 16                       ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i.i, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !209
  %i.ex = icmp ult i64 %i.eu, %i.ew
  br i1 %i.ex, label %bb.h, label %bb.i, !prof !210

bb.h:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i.i.i
  %i.ey = inttoptr i64 %i.eu to ptr
  store ptr %i.ey, ptr %i.ep, align 8, !tbaa !208
  %i.ez = inttoptr i64 %i.et to ptr
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt4pairIiiEEERKT_RNS_6MCInstEjS7_t.exit.i.i

bb.i:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i.i.i
  %i.fa = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ep, i64 noundef 16, i64 noundef 16, i8 4)
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt4pairIiiEEERKT_RNS_6MCInstEjS7_t.exit.i.i

_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt4pairIiiEEERKT_RNS_6MCInstEjS7_t.exit.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i97.i.i = phi ptr [ %i.ez, %bb.h ], [ %i.fa, %bb.i ] ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationISt4pairIiiEEE, i64 16), ptr %.0.i.i.i.i97.i.i, align 8, !tbaa !55
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i97.i.i, i64 8 ; 6 uses
  store i64 0, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i.i, i64 96 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i.i, i64 120 ; 4 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !458
  %.not.not.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not.not.i.i.i, label %bb.j, label %.thread30.i.i.i

.thread30.i.i.i:                                  ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt4pairIiiEEERKT_RNS_6MCInstEjS7_t.exit.i.i
  %i.ff = ptrtoint ptr %.0.i.i.i.i97.i.i to i64   ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i.i, i64 104 ; 4 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !459 ; 2 uses
  %i.fi = urem i64 %i.ff, %i.fh                   ; 5 uses
  %i.fj = load ptr, ptr %i.fc, align 8, !tbaa !460
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fi
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i153.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i153.i.i, label %.critedge.i159.i.i, label %bb.n

bb.j:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt4pairIiiEEERKT_RNS_6MCInstEjS7_t.exit.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i.i, i64 112
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.sroa.025.0.in.i.i.i = phi ptr [ %i.fm, %bb.j ], [ %.sroa.025.0.i.i.i, %bb.l ]
  %.sroa.025.0.i.i.i = load ptr, ptr %.sroa.025.0.in.i.i.i, align 8, !tbaa !157 ; 3 uses
  %.not.i163.i.i = icmp eq ptr %.sroa.025.0.i.i.i, null
  br i1 %.not.i163.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i.i.i, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !462
  %i.fp = icmp eq ptr %.0.i.i.i.i97.i.i, %i.fo
  br i1 %i.fp, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit.i.i, label %bb.k, !llvm.loop !10

bb.m:                                             ; preds = %bb.k
  %i.fq = ptrtoint ptr %.0.i.i.i.i97.i.i to i64   ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i.i, i64 104 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !459
  %i.ft = urem i64 %i.fq, %i.fs
  br label %.critedge.i159.i.i

bb.n:                                             ; preds = %.thread30.i.i.i
  %i.fu = load ptr, ptr %i.fl, align 8, !tbaa !157 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !462
  %i.fx = icmp eq ptr %.0.i.i.i.i97.i.i, %i.fw
  br i1 %i.fx, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit.i.i, label %.lr.ph.i.i.i154.i.i

bb.o:                                             ; preds = %bb.p
  %i.fy = icmp eq ptr %.0.i.i.i.i97.i.i, %i.gb
  br i1 %i.fy, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit.i.i, label %.lr.ph.i.i.i154.i.i, !llvm.loop !11

.lr.ph.i.i.i154.i.i:                              ; preds = %bb.n, %bb.o
  %.020.i.i.i155.i.i = phi ptr [ %i.fz, %bb.o ], [ %i.fu, %bb.n ]
  %i.fz = load ptr, ptr %.020.i.i.i155.i.i, align 8, !tbaa !157 ; 3 uses
  %.not18.i.i.i156.i.i = icmp eq ptr %i.fz, null
  br i1 %.not18.i.i.i156.i.i, label %.critedge.i159.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i154.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !462 ; 2 uses
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = urem i64 %i.gc, %i.fh
  %.not19.i.i.i157.i.i = icmp eq i64 %i.gd, %i.fi
  br i1 %.not19.i.i.i157.i.i, label %bb.o, label %..loopexit_crit_edge21.i.i.i158.i.i, !llvm.loop !11

..loopexit_crit_edge21.i.i.i158.i.i:              ; preds = %bb.p
  br label %.critedge.i159.i.i, !llvm.loop !11

.critedge.i159.i.i:                               ; preds = %.lr.ph.i.i.i154.i.i, %..loopexit_crit_edge21.i.i.i158.i.i, %bb.m, %.thread30.i.i.i
  %i.ge = phi i64 [ %i.ft, %bb.m ], [ %i.fi, %.thread30.i.i.i ], [ %i.fi, %..loopexit_crit_edge21.i.i.i158.i.i ], [ %i.fi, %.lr.ph.i.i.i154.i.i ]
  %i.gf = phi ptr [ %i.fr, %bb.m ], [ %i.fg, %.thread30.i.i.i ], [ %i.fg, %..loopexit_crit_edge21.i.i.i158.i.i ], [ %i.fg, %.lr.ph.i.i.i154.i.i ] ; 3 uses
  %i.gg = phi i64 [ %i.fq, %bb.m ], [ %i.ff, %.thread30.i.i.i ], [ %i.ff, %..loopexit_crit_edge21.i.i.i158.i.i ], [ %i.ff, %.lr.ph.i.i.i154.i.i ]
  %i.gh = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 7 uses
  store ptr null, ptr %i.gh, align 8, !tbaa !157
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store ptr %.0.i.i.i.i97.i.i, ptr %i.gi, align 8, !tbaa !462
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i.i, i64 128
  %i.gk = load i64, ptr %i.gf, align 8, !tbaa !459
  %i.gl = load i64, ptr %i.fd, align 8, !tbaa !458
  %i.gm = call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, i64 noundef %i.gk, i64 noundef %i.gl, i64 noundef 1) #31 ; 2 uses
  %i.gn = extractvalue { i8, i64 } %i.gm, 0
  %i.go = trunc i8 %i.gn to i1
  br i1 %i.go, label %bb.q, label %.critedge.i159._crit_edge.i.i

.critedge.i159._crit_edge.i.i:                    ; preds = %.critedge.i159.i.i
  %.pre.i.i = load ptr, ptr %i.fc, align 8, !tbaa !460
  br label %bb.ab
end_hunk_15
begin_hunk_16_@_ZN4llvm4bolt14ShrinkWrapping17processInsertionsEv:bb.a
  %i.ahl = phi i64 [ %i.ahr, %bb.em ], [ %i.ahe, %bb.el ]
  %.017.i.i.i.i.i.i.i.i = phi i32 [ %i.ahq, %bb.em ], [ %i.ahd, %bb.el ]
  %i.ahm = getelementptr inbounds nuw [32 x i8], ptr %i.agr, i64 %i.ahl ; 2 uses
  %i.ahn = load ptr, ptr %i.ahm, align 8, !tbaa !127, !noalias !1626
  %i.aho = icmp eq ptr %i.agq, %i.ahn
  br i1 %i.aho, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.i.i.i.i, label %bb.em, !prof !210

bb.em:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ahp = add nuw i32 %.017.i.i.i.i.i.i.i.i, 1
  %i.ahq = and i32 %i.ahp, %i.agx                 ; 3 uses
  %i.ahr = zext i32 %i.ahq to i64                 ; 2 uses
  %i.ahs = lshr i64 %i.ahr, 5
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %i.ahs
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !191, !noalias !1626
  %i.ahv = and i32 %i.ahq, 31
  %i.ahw = lshr i32 %i.ahu, %i.ahv
  %i.ahx = trunc i32 %i.ahw to i1
  br i1 %i.ahx, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, !prof !290

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.em, %bb.el, %_ZNSt8__detail9_Map_baseIPKN4llvm6MCInstESt4pairIKS4_PNS1_4bolt16BinaryBasicBlockEESaISA_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS4_.exit.i.i
  %i.ahy = zext i32 %i.agv to i64
  %i.ahz = getelementptr inbounds nuw [32 x i8], ptr %i.agr, i64 %i.ahy
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.i.i.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %.lcssa.sink.i.i.i.i.i.i = phi ptr [ %i.ahz, %.loopexit.i.i.i.i.i.i ], [ %i.ahm, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aia = load ptr, ptr %i.ah, align 8, !tbaa !1624, !nonnull !64, !align !99 ; 2 uses
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !624, !noalias !1627
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aia, i64 20
  %i.aid = load i32, ptr %i.aic, align 4, !tbaa !626, !noalias !1627
  %i.aie = zext i32 %i.aid to i64
  %i.aif = getelementptr inbounds nuw [32 x i8], ptr %i.aib, i64 %i.aie
  %i.aig = icmp eq ptr %.lcssa.sink.i.i.i.i.i.i, %i.aif
  br i1 %i.aig, label %_ZN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTracking11compNextAuxERKNS_6MCInstERKSt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS8_EERSt4pairIiiE.exit26.i.i.i.i, label %bb.en

bb.en:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.i.i.i.i
  %i.aih = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.aih, align 8, !tbaa !627 ; 2 uses
  %i.aii = getelementptr i8, ptr %.lcssa.sink.i.i.i.i.i.i, i64 16
  %.val13.i.i.i.i = load ptr, ptr %i.aii, align 8, !tbaa !627 ; 2 uses
  %.not7.i16.i.i.i.i = icmp eq ptr %.val.i.i.i.i, %.val13.i.i.i.i
  br i1 %.not7.i16.i.i.i.i, label %_ZN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTracking11compNextAuxERKNS_6MCInstERKSt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS8_EERSt4pairIiiE.exit26.i.i.i.i, label %.lr.ph.i17.i.i.i.i

.lr.ph.i17.i.i.i.i:                               ; preds = %bb.en, %.sink.split.i21.i.i.i.i
  %.sroa.032.7.i.i.i.i = phi i32 [ %.sroa.032.8.i.i.i.i, %.sink.split.i21.i.i.i.i ], [ %.sroa.032.0.i.i.i.i, %bb.en ] ; 6 uses
  %.sroa.01.08.i18.i.i.i.i = phi ptr [ %i.akg, %.sink.split.i21.i.i.i.i ], [ %.val.i.i.i.i, %bb.en ] ; 8 uses
  %i.aij = load i8, ptr %.sroa.01.08.i18.i.i.i.i, align 8, !tbaa !562 ; 2 uses
  %i.aik = icmp eq i8 %i.aij, 0
  br i1 %i.aik, label %bb.eo, label %.thread.i19.i.i.i.i

bb.eo:                                            ; preds = %.lr.ph.i17.i.i.i.i
  %i.ail = load ptr, ptr %i.v, align 8, !tbaa !678, !nonnull !64, !align !99
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 1568
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !189 ; 2 uses
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !55
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 448
  %i.aiq = load ptr, ptr %i.aip, align 8
  %i.air = call noundef zeroext i1 %i.aiq(ptr noundef nonnull align 8 dereferenceable(536) %i.ain, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0257.0418.i.i) #31, !inline_history !1554
  br i1 %i.air, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.ais = load ptr, ptr %i.v, align 8, !tbaa !678, !nonnull !64, !align !99
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 1568
  %i.aiu = load ptr, ptr %i.ait, align 8, !tbaa !189 ; 2 uses
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !55
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 456
  %i.aix = load ptr, ptr %i.aiw, align 8
  %i.aiy = call noundef i32 %i.aix(ptr noundef nonnull align 8 dereferenceable(536) %i.aiu, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0257.0418.i.i) #31, !inline_history !1554
  %i.aiz = add nsw i32 %i.aiy, %.sroa.032.7.i.i.i.i
  br label %.sink.split.i21.i.i.i.i

bb.eq:                                            ; preds = %bb.eo
  %.pr.i23.i.i.i.i = load i8, ptr %.sroa.01.08.i18.i.i.i.i, align 8, !tbaa !562 ; 2 uses
  %i.aja = icmp eq i8 %.pr.i23.i.i.i.i, 0
  br i1 %i.aja, label %bb.er, label %.thread.i19.i.i.i.i

bb.er:                                            ; preds = %bb.eq
  %i.ajb = load ptr, ptr %i.v, align 8, !tbaa !678, !nonnull !64, !align !99
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 1568
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !189 ; 2 uses
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !55
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aje, i64 408
  %i.ajg = load ptr, ptr %i.ajf, align 8
  %i.ajh = call noundef zeroext i1 %i.ajg(ptr noundef nonnull align 8 dereferenceable(536) %i.ajd, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0257.0418.i.i) #31, !inline_history !1554
  br i1 %i.ajh, label %bb.es, label %thread-pre-split4.i24.i.i.i.i

bb.es:                                            ; preds = %bb.er
  %i.aji = load ptr, ptr %i.v, align 8, !tbaa !678, !nonnull !64, !align !99
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 1568
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !189 ; 2 uses
  %i.ajl = load ptr, ptr %i.ajk, align 8, !tbaa !55
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 440
  %i.ajn = load ptr, ptr %i.ajm, align 8
  %i.ajo = call noundef i32 %i.ajn(ptr noundef nonnull align 8 dereferenceable(536) %i.ajk, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0257.0418.i.i) #31, !inline_history !1554
  %i.ajp = sub nsw i32 %.sroa.032.7.i.i.i.i, %i.ajo
  br label %.sink.split.i21.i.i.i.i

thread-pre-split4.i24.i.i.i.i:                    ; preds = %bb.er
  %.pr5.i25.i.i.i.i = load i8, ptr %.sroa.01.08.i18.i.i.i.i, align 8, !tbaa !562
  br label %.thread.i19.i.i.i.i

.thread.i19.i.i.i.i:                              ; preds = %thread-pre-split4.i24.i.i.i.i, %bb.eq, %.lr.ph.i17.i.i.i.i
  %i.ajq = phi i8 [ %.pr5.i25.i.i.i.i, %thread-pre-split4.i24.i.i.i.i ], [ %.pr.i23.i.i.i.i, %bb.eq ], [ %i.aij, %.lr.ph.i17.i.i.i.i ]
  %i.ajr = icmp eq i8 %i.ajq, 3
  br i1 %i.ajr, label %bb.et, label %.sink.split.i21.i.i.i.i

bb.et:                                            ; preds = %.thread.i19.i.i.i.i
  %i.ajs = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i18.i.i.i.i, i64 9
  %i.ajt = load i8, ptr %i.ajs, align 1, !tbaa !658, !range !63, !noundef !64
  %i.aju = trunc nuw i8 %i.ajt to i1
  br i1 %i.aju, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.ajv = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i18.i.i.i.i, i64 24
  %i.ajw = load i8, ptr %i.ajv, align 8, !tbaa !660
  %i.ajx = zext i8 %i.ajw to i32
  %i.ajy = sub nsw i32 %.sroa.032.7.i.i.i.i, %i.ajx
  br label %.sink.split.i21.i.i.i.i

bb.ev:                                            ; preds = %bb.et
  %i.ajz = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i18.i.i.i.i, i64 8
  %i.aka = load i8, ptr %i.ajz, align 8, !tbaa !659, !range !63, !noundef !64
  %i.akb = trunc nuw i8 %i.aka to i1
  br i1 %i.akb, label %bb.ew, label %.sink.split.i21.i.i.i.i

bb.ew:                                            ; preds = %bb.ev
  %i.akc = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i18.i.i.i.i, i64 24
  %i.akd = load i8, ptr %i.akc, align 8, !tbaa !660
  %i.ake = zext i8 %i.akd to i32
  %i.akf = add nsw i32 %.sroa.032.7.i.i.i.i, %i.ake
  br label %.sink.split.i21.i.i.i.i

.sink.split.i21.i.i.i.i:                          ; preds = %bb.ew, %bb.ev, %bb.eu, %.thread.i19.i.i.i.i, %bb.es, %bb.ep
  %.sroa.032.8.i.i.i.i = phi i32 [ %.sroa.032.7.i.i.i.i, %.thread.i19.i.i.i.i ], [ %.sroa.032.7.i.i.i.i, %bb.ev ], [ %i.akf, %bb.ew ], [ %i.ajy, %bb.eu ], [ %i.ajp, %bb.es ], [ %i.aiz, %bb.ep ] ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i18.i.i.i.i, i64 40 ; 2 uses
  %.not.i20.i.i.i.i = icmp eq ptr %i.akg, %.val13.i.i.i.i
  br i1 %.not.i20.i.i.i.i, label %_ZN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTracking11compNextAuxERKNS_6MCInstERKSt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS8_EERSt4pairIiiE.exit26.i.i.i.i, label %.lr.ph.i17.i.i.i.i

_ZN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTracking11compNextAuxERKNS_6MCInstERKSt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS8_EERSt4pairIiiE.exit26.i.i.i.i: ; preds = %.sink.split.i21.i.i.i.i, %bb.en, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.i.i.i.i, %_ZNSt8__detail9_Map_baseIPKN4llvm6MCInstESt4pairIKS4_PNS1_4bolt16BinaryBasicBlockEESaISA_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS4_.exit145.i.i
  %.sroa.032.2.i.i.i.i = phi i32 [ %.sroa.032.0.i.i.i.i, %_ZNSt8__detail9_Map_baseIPKN4llvm6MCInstESt4pairIKS4_PNS1_4bolt16BinaryBasicBlockEESaISA_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS4_.exit145.i.i ], [ %.sroa.032.0.i.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.i.i.i.i ], [ %.sroa.032.0.i.i.i.i, %bb.en ], [ %.sroa.032.8.i.i.i.i, %.sink.split.i21.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %_ZN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTracking11computeNextERKNS_6MCInstERKSt4pairIiiE.exit.i.i.i

_ZN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTracking11computeNextERKNS_6MCInstERKSt4pairIiiE.exit.i.i.i: ; preds = %_ZN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTracking11compNextAuxERKNS_6MCInstERKSt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS8_EERSt4pairIiiE.exit26.i.i.i.i, %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingEE11computeNextERKNS_6MCInstERKSt4pairIiiE.exit.i.i.i.i
  %.sroa.032.3.i.i.i.i = phi i32 [ %.4.i.i.i.i.i.i, %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingEE11computeNextERKNS_6MCInstERKSt4pairIiiE.exit.i.i.i.i ], [ %.sroa.032.2.i.i.i.i, %_ZN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTracking11compNextAuxERKNS_6MCInstERKSt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS8_EERSt4pairIiiE.exit26.i.i.i.i ] ; 3 uses
  %i.akh = load ptr, ptr %i.v, align 8, !tbaa !678, !nonnull !64, !align !99
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 1568
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !189 ; 6 uses
  %i.akk = load i8, ptr %i.u, align 4, !tbaa !190, !range !63, !noundef !64
  %i.akl = trunc nuw i8 %i.akk to i1
  br i1 %i.akl, label %._crit_edge.i.i126.i.i, label %bb.ex

._crit_edge.i.i126.i.i:                           ; preds = %_ZN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTracking11computeNextERKNS_6MCInstERKSt4pairIiiE.exit.i.i.i
  %.0.pre.i.i127.i.i = load i32, ptr %i.ar, align 8, !tbaa !191
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i104.i.i

bb.ex:                                            ; preds = %_ZN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTracking11computeNextERKNS_6MCInstERKSt4pairIiiE.exit.i.i.i
  %i.akm = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.akj, ptr nonnull @.str.36, i64 30) ; 2 uses
  %.sroa.0.0.insert.ext.i.i102.i.i = zext i32 %i.akm to i64
  %.sroa.0.0.insert.insert.i.i103.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i102.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i103.i.i, ptr %i.ar, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i104.i.i

_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i104.i.i: ; preds = %bb.ex, %._crit_edge.i.i126.i.i
  %.0.i.i105.i.i = phi i32 [ %.0.pre.i.i127.i.i, %._crit_edge.i.i126.i.i ], [ %i.akm, %bb.ex ] ; 5 uses
  %i.akn = load i16, ptr %i.z, align 8, !tbaa !1601 ; 4 uses
  %i.ako = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.akj, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0257.0418.i.i, i32 noundef %.0.i.i105.i.i) #31, !noalias !1628
  br i1 %i.ako, label %bb.ey, label %_ZN4llvm7ErrorOrIRKSt4pairIiiEEaSEOS5_.exit.i.i106.i.i

bb.ey:                                            ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i104.i.i
  %i.akp = getelementptr inbounds nuw i8, ptr %.sroa.0257.0418.i.i, i64 24
  %i.akq = load i32, ptr %i.akp, align 8, !tbaa !121, !noalias !1628 ; 4 uses
  %.01317.i.i.i.i.i.i.i108.i.i = add i32 %i.akq, -1 ; 2 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %.sroa.0257.0418.i.i, i64 16
  %i.aks = load ptr, ptr %i.akr, align 8, !tbaa !67, !noalias !1628 ; 4 uses
  %i.akt = zext nneg i32 %.01317.i.i.i.i.i.i.i108.i.i to i64 ; 2 uses
  %i.aku = getelementptr inbounds nuw [16 x i8], ptr %i.aks, i64 %i.akt ; 2 uses
  %i.akv = load i8, ptr %i.aku, align 8, !tbaa !234, !noalias !1628
  %i.akw = icmp eq i8 %i.akv, 6
  %i.akx = getelementptr inbounds nuw i8, ptr %i.aku, i64 8
  %i.aky = load ptr, ptr %i.akx, align 8, !noalias !1628
  %i.akz = icmp eq ptr %i.aky, null
  %i.ala = select i1 %i.akw, i1 %i.akz, i1 false
  br i1 %i.ala, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i113.i.i, label %.backedge.i.i.i.i.i.i.i109.i.i

.backedge.i.i.i.i.i.i.i109.i.i:                   ; preds = %bb.ey, %.backedge.i.i.i.i.i.i.i109.i.i
  %indvars.iv.i.i.i.i110.i.i = phi i64 [ %indvars.iv.next.i.i.i.i111.i.i, %.backedge.i.i.i.i.i.i.i109.i.i ], [ %i.akt, %bb.ey ] ; 2 uses
  %indvars.iv.next.i.i.i.i111.i.i = add nsw i64 %indvars.iv.i.i.i.i110.i.i, -1 ; 3 uses
  %i.alb = icmp sgt i64 %indvars.iv.i.i.i.i110.i.i, 0
  call void @llvm.assume(i1 %i.alb)
  %i.alc = getelementptr inbounds nuw [16 x i8], ptr %i.aks, i64 %indvars.iv.next.i.i.i.i111.i.i ; 2 uses
  %i.ald = load i8, ptr %i.alc, align 8, !tbaa !234, !noalias !1628
  %i.ale = icmp eq i8 %i.ald, 6
  %i.alf = getelementptr inbounds nuw i8, ptr %i.alc, i64 8
  %i.alg = load ptr, ptr %i.alf, align 8, !noalias !1628
  %i.alh = icmp eq ptr %i.alg, null
  %i.ali = select i1 %i.ale, i1 %i.alh, i1 false
  br i1 %i.ali, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i112.i.i, label %.backedge.i.i.i.i.i.i.i109.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i112.i.i: ; preds = %.backedge.i.i.i.i.i.i.i109.i.i
  %i.alj = trunc nsw i64 %indvars.iv.next.i.i.i.i111.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i113.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i113.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i112.i.i, %bb.ey
  %.01318.i.i.i.lcssa.i.i.i.i114.i.i = phi i32 [ %.01317.i.i.i.i.i.i.i108.i.i, %bb.ey ], [ %i.alj, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i.i112.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i.i115.i.i = icmp ne i32 %i.akq, %.01318.i.i.i.lcssa.i.i.i.i114.i.i
  %i.alk = add nuw i32 %.01318.i.i.i.lcssa.i.i.i.i114.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i.i116.i.i = icmp ult i32 %i.alk, %i.akq
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i.i115.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i.i116.i.i)
  %i.all = zext i32 %i.alk to i64                 ; 2 uses
  %wide.trip.count.i.i.i.i.i117.i.i = zext i32 %i.akq to i64
  %i.alm = getelementptr inbounds nuw [16 x i8], ptr %i.aks, i64 %i.all
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alm, i64 8
  %i.alo = load i64, ptr %i.aln, align 8, !tbaa !235, !noalias !1628 ; 2 uses
  %i.alp = lshr i64 %i.alo, 56
  %i.alq = trunc nuw nsw i64 %i.alp to i32
  %.not.i3.i.i.i.i118.i.i = icmp eq i32 %.0.i.i105.i.i, %i.alq
  br i1 %.not.i3.i.i.i.i118.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i.i124.i.i, label %.critedge.i.i.i.i.i119.i.i

.critedge.i.i.i.i.i119.i.i:                       ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i113.i.i, %.critedge.i.i.i.i.i119.i.i
  %indvars.iv.i4.i.i.i.i120.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i121.i.i, %.critedge.i.i.i.i.i119.i.i ], [ %i.all, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i113.i.i ]
  %indvars.iv.next.i.i.i.i.i121.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i.i120.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i.i122.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i.i121.i.i, %wide.trip.count.i.i.i.i.i117.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i122.i.i)
  %i.alr = getelementptr inbounds nuw [16 x i8], ptr %i.aks, i64 %indvars.iv.next.i.i.i.i.i121.i.i
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 8
  %i.alt = load i64, ptr %i.als, align 8, !tbaa !235, !noalias !1628 ; 2 uses
  %i.alu = lshr i64 %i.alt, 56
  %i.alv = trunc nuw nsw i64 %i.alu to i32
  %.not.i.i.i.i.i123.i.i = icmp eq i32 %.0.i.i105.i.i, %i.alv
  br i1 %.not.i.i.i.i.i123.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i.i124.i.i, label %.critedge.i.i.i.i.i119.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread.i.i124.i.i: ; preds = %.critedge.i.i.i.i.i119.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i113.i.i
  %.lcssa.i.i.i.i125.i.i = phi i64 [ %i.alo, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i.i113.i.i ], [ %i.alt, %.critedge.i.i.i.i.i119.i.i ]
  %i.alw = shl i64 %.lcssa.i.i.i.i125.i.i, 8
  %i.alx = ashr exact i64 %i.alw, 8
  %i.aly = add nuw nsw i64 %i.alx, 8
  %i.alz = inttoptr i64 %i.aly to ptr
  br label %_ZN4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getOrCreateStateAtERNS_6MCInstE.exit128.i.i

_ZN4llvm7ErrorOrIRKSt4pairIiiEEaSEOS5_.exit.i.i106.i.i: ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i104.i.i
  %i.ama = getelementptr inbounds nuw i8, ptr %i.akj, i64 32
  %i.amb = load i64, ptr %i.ama, align 8, !tbaa !194
  %.not.not.i.i.i.i164.i.i = icmp eq i64 %i.amb, 0
  br i1 %.not.not.i.i.i.i164.i.i, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %_ZN4llvm7ErrorOrIRKSt4pairIiiEEaSEOS5_.exit.i.i106.i.i
  %i.amc = getelementptr inbounds nuw i8, ptr %i.akj, i64 24
  br label %bb.fa

bb.fa:                                            ; preds = %bb.fa, %bb.ez
  %.sroa.06.0.in.i.i.i.i171.i.i = phi ptr [ %i.amc, %bb.ez ], [ %.sroa.06.0.i.i.i.i172.i.i, %bb.fa ]
  %.sroa.06.0.i.i.i.i172.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i171.i.i, align 8, !tbaa !157, !nonnull !64, !noundef !64 ; 3 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i172.i.i, i64 8
  %i.ame = load i16, ptr %i.amd, align 2, !tbaa !195
  %i.amf = icmp eq i16 %i.akn, %i.ame
  br i1 %i.amf, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i168.i.i, label %bb.fa, !llvm.loop !4

bb.fb:                                            ; preds = %_ZN4llvm7ErrorOrIRKSt4pairIiiEEaSEOS5_.exit.i.i106.i.i
  %i.amg = getelementptr inbounds nuw i8, ptr %i.akj, i64 8
  %i.amh = zext i16 %i.akn to i64
  %i.ami = getelementptr inbounds nuw i8, ptr %i.akj, i64 16
  %i.amj = load i64, ptr %i.ami, align 8, !tbaa !196 ; 2 uses
  %i.amk = urem i64 %i.amh, %i.amj                ; 2 uses
  %i.aml = load ptr, ptr %i.amg, align 8, !tbaa !197
  %i.amm = getelementptr inbounds nuw [8 x i8], ptr %i.aml, i64 %i.amk
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !160, !nonnull !64, !noundef !64
  %i.amo = load ptr, ptr %i.amn, align 8, !tbaa !157 ; 3 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amo, i64 8
  %i.amq = load i16, ptr %i.amp, align 2, !tbaa !195
  %i.amr = icmp eq i16 %i.akn, %i.amq
  br i1 %i.amr, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i168.i.i, label %.lr.ph.i.i.i.i.i.i165.i.i

.lr.ph.i.i.i.i.i.i165.i.i:                        ; preds = %bb.fb, %.lr.ph.i.i.i.i.i.i165.i.i
  %.020.i.i.i.i.i.i166.i.i = phi ptr [ %i.ams, %.lr.ph.i.i.i.i.i.i165.i.i ], [ %i.amo, %bb.fb ]
  %i.ams = load ptr, ptr %.020.i.i.i.i.i.i166.i.i, align 8, !tbaa !157, !nonnull !64, !noundef !64 ; 3 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 8
  %i.amu = load i16, ptr %i.amt, align 2, !tbaa !195 ; 2 uses
  %i.amv = zext i16 %i.amu to i64
  %i.amw = urem i64 %i.amv, %i.amj
  %.not19.i.i.i.i.i.i167.i.i = icmp eq i64 %i.amw, %i.amk
  call void @llvm.assume(i1 %.not19.i.i.i.i.i.i167.i.i)
  %i.amx = icmp eq i16 %i.akn, %i.amu
  br i1 %i.amx, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i168.i.i, label %.lr.ph.i.i.i.i.i.i165.i.i, !llvm.loop !5

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i168.i.i: ; preds = %.lr.ph.i.i.i.i.i.i165.i.i, %bb.fa, %bb.fb
  %.sroa.06.1.i.i.i.i169.i.i = phi ptr [ %.sroa.06.0.i.i.i.i172.i.i, %bb.fa ], [ %i.amo, %bb.fb ], [ %i.ams, %.lr.ph.i.i.i.i.i.i165.i.i ] ; 14 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i169.i.i, i64 16 ; 3 uses
  %i.amz = load ptr, ptr %i.amy, align 8, !tbaa !208
  %i.ana = ptrtoint ptr %i.amz to i64
  %i.anb = add i64 %i.ana, 15
  %i.anc = and i64 %i.anb, -16                    ; 2 uses
  %i.and = add i64 %i.anc, 16                     ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i169.i.i, i64 24
  %i.anf = load i64, ptr %i.ane, align 8, !tbaa !209
  %i.ang = icmp ult i64 %i.and, %i.anf
  br i1 %i.ang, label %bb.fc, label %bb.fd, !prof !210

bb.fc:                                            ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i168.i.i
  %i.anh = inttoptr i64 %i.and to ptr
  store ptr %i.anh, ptr %i.amy, align 8, !tbaa !208
  %i.ani = inttoptr i64 %i.anc to ptr
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt4pairIiiEEERKT_RNS_6MCInstEjS7_t.exit173.i.i

bb.fd:                                            ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit.i168.i.i
  %i.anj = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.amy, i64 noundef 16, i64 noundef 16, i8 4)
  br label %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt4pairIiiEEERKT_RNS_6MCInstEjS7_t.exit173.i.i

_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt4pairIiiEEERKT_RNS_6MCInstEjS7_t.exit173.i.i: ; preds = %bb.fd, %bb.fc
  %.0.i.i.i.i170.i.i = phi ptr [ %i.ani, %bb.fc ], [ %i.anj, %bb.fd ] ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationISt4pairIiiEEE, i64 16), ptr %.0.i.i.i.i170.i.i, align 8, !tbaa !55
  %i.ank = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i170.i.i, i64 8 ; 6 uses
  store i64 0, ptr %i.ank, align 8
  %i.anl = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i169.i.i, i64 96 ; 4 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i169.i.i, i64 120 ; 4 uses
  %i.ann = load i64, ptr %i.anm, align 8, !tbaa !458
  %.not.not.i217.i.i = icmp eq i64 %i.ann, 0
  br i1 %.not.not.i217.i.i, label %bb.fe, label %.thread30.i218.i.i

.thread30.i218.i.i:                               ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt4pairIiiEEERKT_RNS_6MCInstEjS7_t.exit173.i.i
  %i.ano = ptrtoint ptr %.0.i.i.i.i170.i.i to i64 ; 4 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i169.i.i, i64 104 ; 4 uses
  %i.anq = load i64, ptr %i.anp, align 8, !tbaa !459 ; 2 uses
  %i.anr = urem i64 %i.ano, %i.anq                ; 5 uses
  %i.ans = load ptr, ptr %i.anl, align 8, !tbaa !460
  %i.ant = getelementptr inbounds nuw [8 x i8], ptr %i.ans, i64 %i.anr
  %i.anu = load ptr, ptr %i.ant, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i219.i.i = icmp eq ptr %i.anu, null
  br i1 %.not.i.i.i219.i.i, label %.critedge.i225.i.i, label %bb.fi

bb.fe:                                            ; preds = %_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt4pairIiiEEERKT_RNS_6MCInstEjS7_t.exit173.i.i
  %i.anv = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i169.i.i, i64 112
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fg, %bb.fe
  %.sroa.025.0.in.i234.i.i = phi ptr [ %i.anv, %bb.fe ], [ %.sroa.025.0.i235.i.i, %bb.fg ]
  %.sroa.025.0.i235.i.i = load ptr, ptr %.sroa.025.0.in.i234.i.i, align 8, !tbaa !157 ; 3 uses
  %.not.i236.i.i = icmp eq ptr %.sroa.025.0.i235.i.i, null
  br i1 %.not.i236.i.i, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.anw = getelementptr inbounds nuw i8, ptr %.sroa.025.0.i235.i.i, i64 8
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !462
  %i.any = icmp eq ptr %.0.i.i.i.i170.i.i, %i.anx
  br i1 %i.any, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit237.i.i, label %bb.ff, !llvm.loop !10

bb.fh:                                            ; preds = %bb.ff
  %i.anz = ptrtoint ptr %.0.i.i.i.i170.i.i to i64 ; 2 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i169.i.i, i64 104 ; 2 uses
  %i.aob = load i64, ptr %i.aoa, align 8, !tbaa !459
  %i.aoc = urem i64 %i.anz, %i.aob
  br label %.critedge.i225.i.i

bb.fi:                                            ; preds = %.thread30.i218.i.i
  %i.aod = load ptr, ptr %i.anu, align 8, !tbaa !157 ; 2 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 8
  %i.aof = load ptr, ptr %i.aoe, align 8, !tbaa !462
  %i.aog = icmp eq ptr %.0.i.i.i.i170.i.i, %i.aof
  br i1 %i.aog, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit237.i.i, label %.lr.ph.i.i.i220.i.i

bb.fj:                                            ; preds = %bb.fk
  %i.aoh = icmp eq ptr %.0.i.i.i.i170.i.i, %i.aok
  br i1 %i.aoh, label %_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_.exit237.i.i, label %.lr.ph.i.i.i220.i.i, !llvm.loop !11

.lr.ph.i.i.i220.i.i:                              ; preds = %bb.fi, %bb.fj
  %.020.i.i.i221.i.i = phi ptr [ %i.aoi, %bb.fj ], [ %i.aod, %bb.fi ]
  %i.aoi = load ptr, ptr %.020.i.i.i221.i.i, align 8, !tbaa !157 ; 3 uses
  %.not18.i.i.i222.i.i = icmp eq ptr %i.aoi, null
  br i1 %.not18.i.i.i222.i.i, label %.critedge.i225.i.i, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph.i.i.i220.i.i
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 8
  %i.aok = load ptr, ptr %i.aoj, align 8, !tbaa !462 ; 2 uses
  %i.aol = ptrtoint ptr %i.aok to i64
  %i.aom = urem i64 %i.aol, %i.anq
  %.not19.i.i.i223.i.i = icmp eq i64 %i.aom, %i.anr
  br i1 %.not19.i.i.i223.i.i, label %bb.fj, label %..loopexit_crit_edge21.i.i.i224.i.i, !llvm.loop !11

..loopexit_crit_edge21.i.i.i224.i.i:              ; preds = %bb.fk
  br label %.critedge.i225.i.i, !llvm.loop !11

.critedge.i225.i.i:                               ; preds = %.lr.ph.i.i.i220.i.i, %..loopexit_crit_edge21.i.i.i224.i.i, %bb.fh, %.thread30.i218.i.i
  %i.aon = phi i64 [ %i.aoc, %bb.fh ], [ %i.anr, %.thread30.i218.i.i ], [ %i.anr, %..loopexit_crit_edge21.i.i.i224.i.i ], [ %i.anr, %.lr.ph.i.i.i220.i.i ]
  %i.aoo = phi ptr [ %i.aoa, %bb.fh ], [ %i.anp, %.thread30.i218.i.i ], [ %i.anp, %..loopexit_crit_edge21.i.i.i224.i.i ], [ %i.anp, %.lr.ph.i.i.i220.i.i ] ; 3 uses
  %i.aop = phi i64 [ %i.anz, %bb.fh ], [ %i.ano, %.thread30.i218.i.i ], [ %i.ano, %..loopexit_crit_edge21.i.i.i224.i.i ], [ %i.ano, %.lr.ph.i.i.i220.i.i ]
  %i.aoq = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 7 uses
  store ptr null, ptr %i.aoq, align 8, !tbaa !157
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 8
  store ptr %.0.i.i.i.i170.i.i, ptr %i.aor, align 8, !tbaa !462
  %i.aos = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i169.i.i, i64 128
  %i.aot = load i64, ptr %i.aoo, align 8, !tbaa !459
  %i.aou = load i64, ptr %i.anm, align 8, !tbaa !458
  %i.aov = call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.aos, i64 noundef %i.aot, i64 noundef %i.aou, i64 noundef 1) #31 ; 2 uses
  %i.aow = extractvalue { i8, i64 } %i.aov, 0
  %i.aox = trunc i8 %i.aow to i1
  br i1 %i.aox, label %bb.fl, label %.critedge.i225._crit_edge.i.i

.critedge.i225._crit_edge.i.i:                    ; preds = %.critedge.i225.i.i
  %.pre481.i.i = load ptr, ptr %i.anl, align 8, !tbaa !460
  br label %bb.fw
end_hunk_16
begin_hunk_17_@_ZN4llvm4bolt14ShrinkWrapping17processInsertionsEv:bb.a
  %i.avy = ashr exact i64 %i.avx, 3
  %i.avz = add nsw i64 %i.avs, %i.avy
  %i.awa = icmp eq i64 %i.avz, 1152921504606846975
  br i1 %i.awa, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #32
  unreachable

bb.gw:                                            ; preds = %bb.gu
  %i.awb = load i64, ptr %i.as, align 8, !tbaa !670
  %i.awc = load ptr, ptr %7, align 8, !tbaa !671
  %i.awd = ptrtoint ptr %i.awc to i64
  %i.awe = sub i64 %i.avg, %i.awd
  %i.awf = ashr exact i64 %i.awe, 3
  %i.awg = sub i64 %i.awb, %i.awf
  %i.awh = icmp ult i64 %i.awg, 2
  br i1 %i.awh, label %bb.gx, label %_ZNSt5dequeIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_.exit147.i.i

bb.gx:                                            ; preds = %bb.gw
  call void @_ZNSt5dequeIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %7, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_.exit147.i.i

_ZNSt5dequeIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_.exit147.i.i: ; preds = %bb.gx, %bb.gw
  %i.awi = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #33 ; 4 uses
  %i.awj = load ptr, ptr %i.bf, align 8, !tbaa !695
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 8 ; 2 uses
  store ptr %i.awi, ptr %i.awk, align 8, !tbaa !672
  %i.awl = load ptr, ptr %i.be, align 8, !tbaa !676
  store ptr %i.avb, ptr %i.awl, align 8, !tbaa !127
  store ptr %i.awk, ptr %i.bf, align 8, !tbaa !673
  store ptr %i.awi, ptr %i.bg, align 8, !tbaa !674
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awi, i64 512 ; 2 uses
  store ptr %i.awm, ptr %i.bh, align 8, !tbaa !675
  br label %_ZNSt5queueIPN4llvm4bolt16BinaryBasicBlockESt5dequeIS3_SaIS3_EEE4pushERKS3_.exit93.i.i

_ZNSt5queueIPN4llvm4bolt16BinaryBasicBlockESt5dequeIS3_SaIS3_EEE4pushERKS3_.exit93.i.i: ; preds = %_ZNSt5dequeIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_.exit147.i.i, %bb.gt
  %i.awn = phi ptr [ %i.auz, %bb.gt ], [ %i.awm, %_ZNSt5dequeIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_.exit147.i.i ]
  %storemerge347.i.i = phi ptr [ %i.avd, %bb.gt ], [ %i.awi, %_ZNSt5dequeIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_.exit147.i.i ] ; 3 uses
  store ptr %storemerge347.i.i, ptr %i.be, align 8, !tbaa !676
  %i.awo = getelementptr inbounds nuw i8, ptr %.0430.i.i, i64 8 ; 2 uses
  %.not61.i.i = icmp eq ptr %i.awo, %i.ati
  br i1 %.not61.i.i, label %.loopexit.i.i, label %.lr.ph432.i.i

.loopexit.i.i:                                    ; preds = %_ZNSt5queueIPN4llvm4bolt16BinaryBasicBlockESt5dequeIS3_SaIS3_EEE4pushERKS3_.exit93.i.i, %._crit_edge428.i.i, %._crit_edge423..loopexit_crit_edge.i.i
  %i.awp = phi ptr [ %.pre486.i.i, %._crit_edge423..loopexit_crit_edge.i.i ], [ %.pre487.i.i, %._crit_edge428.i.i ], [ %storemerge347.i.i, %_ZNSt5queueIPN4llvm4bolt16BinaryBasicBlockESt5dequeIS3_SaIS3_EEE4pushERKS3_.exit93.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %i.awq = load ptr, ptr %i.at, align 8, !tbaa !685 ; 2 uses
  %i.awr = icmp eq ptr %i.awp, %i.awq
  br i1 %i.awr, label %._crit_edge434.i.i, label %bb.bh, !llvm.loop !1571

._crit_edge434.i.i:                               ; preds = %.loopexit.i.i, %.preheader.i.i
  %i.aws = load i32, ptr %i.mu, align 4, !tbaa !684 ; 2 uses
  %i.awt = icmp eq i32 %i.aws, 0
  br i1 %i.awt, label %_ZN4llvm6detail12DenseSetImplIPNS_4bolt16BinaryBasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit.i.i, label %bb.gy

bb.gy:                                            ; preds = %._crit_edge434.i.i
  %i.awu = load ptr, ptr %8, align 8, !tbaa !682
  %i.awv = zext i32 %i.aws to i64                 ; 2 uses
  %i.aww = shl nuw nsw i64 %i.awv, 3
  %i.awx = add nuw nsw i64 %i.awv, 31
  %i.awy = lshr i64 %i.awx, 3
  %i.awz = and i64 %i.awy, 1073741820
  %i.axa = add nuw nsw i64 %i.awz, %i.aww
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.awu, i64 noundef %i.axa, i64 noundef 8) #31
  br label %_ZN4llvm6detail12DenseSetImplIPNS_4bolt16BinaryBasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit.i.i

_ZN4llvm6detail12DenseSetImplIPNS_4bolt16BinaryBasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit.i.i: ; preds = %bb.gy, %._crit_edge434.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.axb = load ptr, ptr %7, align 8, !tbaa !671  ; 2 uses
  %.not.i.i.i94.i.i = icmp eq ptr %i.axb, null
  br i1 %.not.i.i.i94.i.i, label %_ZN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTracking3runEv.exit, label %bb.gz

bb.gz:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_4bolt16BinaryBasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit.i.i
  %i.axc = load ptr, ptr %i.ba, align 8, !tbaa !687 ; 2 uses
  %i.axd = load ptr, ptr %i.bf, align 8, !tbaa !695 ; 2 uses
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 8
  %i.axf = icmp ult ptr %i.axc, %i.axe
  br i1 %i.axf, label %.lr.ph.i.i.i.i95.i.i, label %_ZNSt11_Deque_baseIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i.i

.lr.ph.i.i.i.i95.i.i:                             ; preds = %bb.gz, %.lr.ph.i.i.i.i95.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.axh, %.lr.ph.i.i.i.i95.i.i ], [ %i.axc, %bb.gz ] ; 3 uses
  %i.axg = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !672
  call void @_ZdlPvm(ptr noundef %i.axg, i64 noundef 512) #34
  %i.axh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 8
  %i.axi = icmp ult ptr %.06.i.i.i.i.i.i, %i.axd
  br i1 %i.axi, label %.lr.ph.i.i.i.i95.i.i, label %_ZNSt11_Deque_baseIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i.i, !llvm.loop !1572

_ZNSt11_Deque_baseIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i95.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !671
  br label %_ZNSt11_Deque_baseIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i.i

_ZNSt11_Deque_baseIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i.i, %bb.gz
  %i.axj = phi ptr [ %.pre.i.i.i.i.i, %_ZNSt11_Deque_baseIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.loopexit.i.i.i.i.i ], [ %i.axb, %bb.gz ]
  %i.axk = load i64, ptr %i.as, align 8, !tbaa !670
  %i.axl = shl i64 %i.axk, 3
  call void @_ZdlPvm(ptr noundef %i.axj, i64 noundef %i.axl) #34
  br label %_ZN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTracking3runEv.exit

_ZN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTracking3runEv.exit: ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_4bolt16BinaryBasicBlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit.i.i, %_ZNSt11_Deque_baseIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !529 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 1240
  %.pre285 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !67 ; 2 uses
  %.phi.trans.insert286 = getelementptr inbounds nuw i8, ptr %.pre, i64 1248
  %.pre287 = load i32, ptr %.phi.trans.insert286, align 8, !tbaa !121 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.axm = zext i32 %.pre287 to i64
  %.idx = shl nuw nsw i64 %i.axm, 3
  %i.axn = getelementptr inbounds nuw i8, ptr %.pre285, i64 %.idx
  %.not232 = icmp eq i32 %.pre287, 0
  br i1 %.not232, label %.critedge35, label %.lr.ph235

.lr.ph235:                                        ; preds = %_ZN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTracking3runEv.exit
  %i.axo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.axp = getelementptr inbounds nuw i8, ptr %1, i64 1016 ; 2 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %1, i64 1020
  %i.axr = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.axs = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.axt = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.axv = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.axw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.axy = getelementptr inbounds nuw i8, ptr %1, i64 1044
  %i.axz = getelementptr inbounds nuw i8, ptr %17, i64 8
  br label %bb.ha

bb.ha:                                            ; preds = %.lr.ph235, %.critedge33.thread
  %.0234 = phi i8 [ 0, %.lr.ph235 ], [ %.5160, %.critedge33.thread ] ; 2 uses
  %.sroa.0117.0233 = phi ptr [ %.pre285, %.lr.ph235 ], [ %i.bfh, %.critedge33.thread ] ; 2 uses
  %i.aya = load ptr, ptr %.sroa.0117.0233, align 8, !tbaa !127 ; 11 uses
  %i.ayb = load ptr, ptr %i.aya, align 8, !tbaa !129 ; 2 uses
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.aya, i64 8 ; 3 uses
  %i.ayd = load ptr, ptr %i.ayc, align 8, !tbaa !129 ; 2 uses
  %.not166228 = icmp eq ptr %i.ayb, %i.ayd
  br i1 %.not166228, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ha
  %i.aye = ptrtoint ptr %i.aya to i64
  br label %bb.hb

bb.hb:                                            ; preds = %.lr.ph, %.thread141
  %.1120230 = phi i8 [ %.0234, %.lr.ph ], [ %.2121146, %.thread141 ]
  %.sroa.0113.0229 = phi ptr [ %i.ayb, %.lr.ph ], [ %i.bdk, %.thread141 ] ; 10 uses
  %i.ayf = load ptr, ptr %i.axo, align 8, !tbaa !523, !nonnull !64, !align !99
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 1568
  %i.ayh = load ptr, ptr %i.ayg, align 8, !tbaa !189 ; 2 uses
  %i.ayi = load i8, ptr %i.axq, align 4, !tbaa !190, !range !63, !noundef !64
  %i.ayj = trunc nuw i8 %i.ayi to i1
  br i1 %i.ayj, label %._crit_edge.i, label %bb.hc

._crit_edge.i:                                    ; preds = %bb.hb
  %.0.pre.i = load i32, ptr %i.axp, align 8, !tbaa !191
  br label %_ZN4llvm4bolt14ShrinkWrapping18getAnnotationIndexEv.exit

bb.hc:                                            ; preds = %bb.hb
  %i.ayk = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.ayh, ptr nonnull @.str.35, i64 15) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.ayk to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.axp, align 8
  br label %_ZN4llvm4bolt14ShrinkWrapping18getAnnotationIndexEv.exit

_ZN4llvm4bolt14ShrinkWrapping18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.hc
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.ayk, %bb.hc ] ; 3 uses
  %i.ayl = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.ayh, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0113.0229, i32 noundef %.0.i) #31, !noalias !1629
  br i1 %i.ayl, label %bb.hd, label %.thread141

bb.hd:                                            ; preds = %_ZN4llvm4bolt14ShrinkWrapping18getAnnotationIndexEv.exit
  %i.aym = getelementptr inbounds nuw i8, ptr %.sroa.0113.0229, i64 24
  %i.ayn = load i32, ptr %i.aym, align 8, !tbaa !121, !noalias !1629 ; 4 uses
  %.01317.i.i.i.i.i36 = add i32 %i.ayn, -1        ; 2 uses
  %i.ayo = getelementptr inbounds nuw i8, ptr %.sroa.0113.0229, i64 16
  %i.ayp = load ptr, ptr %i.ayo, align 8, !tbaa !67, !noalias !1629 ; 4 uses
  %i.ayq = zext nneg i32 %.01317.i.i.i.i.i36 to i64 ; 2 uses
  %i.ayr = getelementptr inbounds nuw [16 x i8], ptr %i.ayp, i64 %i.ayq ; 2 uses
  %i.ays = load i8, ptr %i.ayr, align 8, !tbaa !234, !noalias !1629
  %i.ayt = icmp eq i8 %i.ays, 6
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayr, i64 8
  %i.ayv = load ptr, ptr %i.ayu, align 8, !noalias !1629
  %i.ayw = icmp eq ptr %i.ayv, null
  %i.ayx = select i1 %i.ayt, i1 %i.ayw, i1 false
  br i1 %i.ayx, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i40, label %.backedge.i.i.i.i.i37

.backedge.i.i.i.i.i37:                            ; preds = %bb.hd, %.backedge.i.i.i.i.i37
  %indvars.iv.i.i38 = phi i64 [ %indvars.iv.next.i.i39, %.backedge.i.i.i.i.i37 ], [ %i.ayq, %bb.hd ] ; 2 uses
  %indvars.iv.next.i.i39 = add nsw i64 %indvars.iv.i.i38, -1 ; 3 uses
  %i.ayy = icmp sgt i64 %indvars.iv.i.i38, 0
  call void @llvm.assume(i1 %i.ayy)
  %i.ayz = getelementptr inbounds nuw [16 x i8], ptr %i.ayp, i64 %indvars.iv.next.i.i39 ; 2 uses
  %i.aza = load i8, ptr %i.ayz, align 8, !tbaa !234, !noalias !1629
  %i.azb = icmp eq i8 %i.aza, 6
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayz, i64 8
  %i.azd = load ptr, ptr %i.azc, align 8, !noalias !1629
  %i.aze = icmp eq ptr %i.azd, null
  %i.azf = select i1 %i.azb, i1 %i.aze, i1 false
  br i1 %i.azf, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i37

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i37
  %i.azg = trunc nsw i64 %indvars.iv.next.i.i39 to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i40

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i40: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.hd
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i36, %bb.hd ], [ %i.azg, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.ayn, %.01318.i.i.i.lcssa.i.i
  %i.azh = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1 ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.azh, %i.ayn
  call void @llvm.assume(i1 %.not.i.not.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.azi = zext i32 %i.azh to i64                 ; 2 uses
  %wide.trip.count.i.i.i41 = zext i32 %i.ayn to i64
  %i.azj = getelementptr inbounds nuw [16 x i8], ptr %i.ayp, i64 %i.azi
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azj, i64 8
  %i.azl = load i64, ptr %i.azk, align 8, !tbaa !235, !noalias !1629 ; 2 uses
  %i.azm = lshr i64 %i.azl, 56
  %i.azn = trunc nuw nsw i64 %i.azm to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.azn
  br i1 %.not.i3.i.i, label %.loopexit, label %.critedge.i.i.i42

.critedge.i.i.i42:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i40, %.critedge.i.i.i42
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i43, %.critedge.i.i.i42 ], [ %i.azi, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i40 ]
  %indvars.iv.next.i.i.i43 = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i44 = icmp ne i64 %indvars.iv.next.i.i.i43, %wide.trip.count.i.i.i41
  call void @llvm.assume(i1 %exitcond.not.i.i.i44)
  %i.azo = getelementptr inbounds nuw [16 x i8], ptr %i.ayp, i64 %indvars.iv.next.i.i.i43
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azo, i64 8
  %i.azq = load i64, ptr %i.azp, align 8, !tbaa !235, !noalias !1629 ; 2 uses
  %i.azr = lshr i64 %i.azq, 56
  %i.azs = trunc nuw nsw i64 %i.azr to i32
  %.not.i.i.i45 = icmp eq i32 %.0.i, %i.azs
  br i1 %.not.i.i.i45, label %.loopexit, label %.critedge.i.i.i42

.loopexit:                                        ; preds = %.critedge.i.i.i42, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i40
  %.lcssa.i.i = phi i64 [ %i.azl, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i40 ], [ %i.azq, %.critedge.i.i.i42 ]
  %i.azt = shl i64 %.lcssa.i.i, 8
  %i.azu = ashr exact i64 %i.azt, 8
  %i.azv = inttoptr i64 %i.azu to ptr             ; 2 uses
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azv, i64 16 ; 2 uses
  %i.azy = load ptr, ptr %i.azx, align 8, !tbaa !566 ; 3 uses
  %i.azz = load ptr, ptr %i.azw, align 8, !tbaa !570 ; 3 uses
  %i.baa = ptrtoint ptr %i.azy to i64
  %i.bab = ptrtoint ptr %i.azz to i64
  %i.bac = sub i64 %i.baa, %i.bab                 ; 4 uses
  %.not.i.i.i.i46 = icmp eq ptr %i.azy, %i.azz
  br i1 %.not.i.i.i.i46, label %_ZNSt12_Vector_baseIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2EmRKS4_.exit.i, label %bb.he

bb.he:                                            ; preds = %.loopexit
  %i.bad = sdiv exact i64 %i.bac, 40
  %i.bae = icmp ugt i64 %i.bad, 230584300921369395
  br i1 %i.bae, label %bb.hf, label %_ZNSt15__new_allocatorIN4llvm4bolt14ShrinkWrapping12WorklistItemEE8allocateEmPKv.exit.i.i.i.i, !prof !491

bb.hf:                                            ; preds = %bb.he
  call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

_ZNSt15__new_allocatorIN4llvm4bolt14ShrinkWrapping12WorklistItemEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.he
  %i.baf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bac) #33
  %.pre288 = load ptr, ptr %i.azw, align 8, !tbaa !627
  %.pre289 = load ptr, ptr %i.azx, align 8, !tbaa !627
  br label %_ZNSt12_Vector_baseIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2EmRKS4_.exit.i

_ZNSt12_Vector_baseIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2EmRKS4_.exit.i: ; preds = %_ZNSt15__new_allocatorIN4llvm4bolt14ShrinkWrapping12WorklistItemEE8allocateEmPKv.exit.i.i.i.i, %.loopexit
  %i.bag = phi ptr [ %.pre289, %_ZNSt15__new_allocatorIN4llvm4bolt14ShrinkWrapping12WorklistItemEE8allocateEmPKv.exit.i.i.i.i ], [ %i.azy, %.loopexit ] ; 2 uses
  %i.bah = phi ptr [ %.pre288, %_ZNSt15__new_allocatorIN4llvm4bolt14ShrinkWrapping12WorklistItemEE8allocateEmPKv.exit.i.i.i.i ], [ %i.azz, %.loopexit ] ; 2 uses
  %i.bai = phi ptr [ %i.baf, %_ZNSt15__new_allocatorIN4llvm4bolt14ShrinkWrapping12WorklistItemEE8allocateEmPKv.exit.i.i.i.i ], [ null, %.loopexit ] ; 6 uses
  store ptr %i.bai, ptr %14, align 8, !tbaa !570
  %i.baj = getelementptr inbounds nuw i8, ptr %i.bai, i64 %i.bac
  store ptr %i.baj, ptr %i.axs, align 8, !tbaa !567
  %.not7.i.i.i.i.i47 = icmp eq ptr %i.bah, %i.bag
  br i1 %.not7.i.i.i.i.i47, label %_ZNSt6vectorIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i48

.lr.ph.i.i.i.i.i48:                               ; preds = %_ZNSt12_Vector_baseIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2EmRKS4_.exit.i, %.lr.ph.i.i.i.i.i48
  %.09.i.i.i.i.i = phi ptr [ %i.bal, %.lr.ph.i.i.i.i.i48 ], [ %i.bai, %_ZNSt12_Vector_baseIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bak, %.lr.ph.i.i.i.i.i48 ], [ %i.bah, %_ZNSt12_Vector_baseIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2EmRKS4_.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.08.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !569
  %i.bak = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 40 ; 2 uses
  %i.bal = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i49 = icmp eq ptr %i.bak, %i.bag
  br i1 %.not.i.i.i.i.i49, label %_ZNSt6vectorIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i48, !llvm.loop !28

_ZNSt6vectorIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i48, %_ZNSt12_Vector_baseIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2EmRKS4_.exit.i
  %.0.lcssa.i.i.i.i.i50 = phi ptr [ %i.bai, %_ZNSt12_Vector_baseIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2EmRKS4_.exit.i ], [ %i.bal, %.lr.ph.i.i.i.i.i48 ]
  store ptr %.0.lcssa.i.i.i.i.i50, ptr %i.axr, align 8, !tbaa !566
  %i.bam = load ptr, ptr %i.aya, align 8, !tbaa !129
  %i.ban = icmp eq ptr %.sroa.0113.0229, %i.bam
  br i1 %i.ban, label %bb.hg, label %bb.hm

bb.hg:                                            ; preds = %_ZNSt6vectorIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2ERKS5_.exit
  %i.bao = load i64, ptr %i.axu, align 8, !tbaa !296, !noalias !1630
  %.not.not.i.i.i.i = icmp eq i64 %i.bao, 0
  br i1 %.not.not.i.i.i.i, label %.preheader, label %bb.hi

.preheader:                                       ; preds = %bb.hg, %bb.hh
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.hh ], [ %i.ad, %bb.hg ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !157, !noalias !1630 ; 4 uses
  %.not.i.i.i.i54 = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %.not.i.i.i.i54, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE10getStateAtENS0_12ProgramPointE.exit, label %bb.hh

bb.hh:                                            ; preds = %.preheader
  %i.bap = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.baq = load ptr, ptr %i.bap, align 8, !tbaa !127, !noalias !1630
  %i.bar = icmp eq ptr %i.aya, %i.baq
  br i1 %i.bar, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i, label %.preheader, !llvm.loop !7

bb.hi:                                            ; preds = %bb.hg
  %i.bas = load i64, ptr %i.ac, align 8, !tbaa !297, !noalias !1630 ; 2 uses
  %i.bat = urem i64 %i.aye, %i.bas                ; 2 uses
  %i.bau = load ptr, ptr %i.aa, align 8, !tbaa !298, !noalias !1630
  %i.bav = getelementptr inbounds nuw [8 x i8], ptr %i.bau, i64 %i.bat
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !160, !noalias !1630 ; 2 uses
  %.not.i.i.i.i.i.i51 = icmp eq ptr %i.baw, null
  br i1 %.not.i.i.i.i.i.i51, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE10getStateAtENS0_12ProgramPointE.exit, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.bax = load ptr, ptr %i.baw, align 8, !tbaa !157, !noalias !1630 ; 3 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 8
  %i.baz = load ptr, ptr %i.bay, align 8, !tbaa !127, !noalias !1630
  %i.bba = icmp eq ptr %i.aya, %i.baz
  br i1 %i.bba, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i, label %.lr.ph.i.i.i.i.i.i52

bb.hk:                                            ; preds = %bb.hl
  %i.bbb = icmp eq ptr %i.aya, %i.bbe
  br i1 %i.bbb, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i, label %.lr.ph.i.i.i.i.i.i52, !llvm.loop !8

.lr.ph.i.i.i.i.i.i52:                             ; preds = %bb.hj, %bb.hk
  %.020.i.i.i.i.i.i = phi ptr [ %i.bbc, %bb.hk ], [ %i.bax, %bb.hj ]
  %i.bbc = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !157, !noalias !1630 ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.bbc, null
  br i1 %.not18.i.i.i.i.i.i, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE10getStateAtENS0_12ProgramPointE.exit, label %bb.hl

bb.hl:                                            ; preds = %.lr.ph.i.i.i.i.i.i52
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 8
  %i.bbe = load ptr, ptr %i.bbd, align 8, !tbaa !127, !noalias !1630 ; 2 uses
  %i.bbf = ptrtoint ptr %i.bbe to i64
  %i.bbg = urem i64 %i.bbf, %i.bas
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.bbg, %i.bat
  br i1 %.not19.i.i.i.i.i.i, label %bb.hk, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.hl
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE10getStateAtENS0_12ProgramPointE.exit, !llvm.loop !8

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i: ; preds = %bb.hk, %bb.hh, %bb.hj
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.hh ], [ %i.bax, %bb.hj ], [ %i.bbc, %bb.hk ]
  %i.bbh = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE10getStateAtENS0_12ProgramPointE.exit

bb.hm:                                            ; preds = %_ZNSt6vectorIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2ERKS5_.exit
  %i.bbi = getelementptr inbounds i8, ptr %.sroa.0113.0229, i64 -128
  %i.bbj = load ptr, ptr %i.v, align 8, !tbaa !678, !noalias !1631, !nonnull !64, !align !99
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbj, i64 1568
  %i.bbl = load ptr, ptr %i.bbk, align 8, !tbaa !189, !noalias !1631 ; 2 uses
  %i.bbm = load i8, ptr %i.u, align 4, !tbaa !190, !range !63, !noalias !1631, !noundef !64
  %i.bbn = trunc nuw i8 %i.bbm to i1
  br i1 %i.bbn, label %._crit_edge.i.i76, label %bb.hn

._crit_edge.i.i76:                                ; preds = %bb.hm
  %.0.pre.i.i = load i32, ptr %i.axt, align 8, !tbaa !191, !noalias !1631
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i

bb.hn:                                            ; preds = %bb.hm
  %i.bbo = call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.bbl, ptr nonnull @.str.36, i64 30), !noalias !1631 ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bbo to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.axt, align 8, !noalias !1631
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i

_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i: ; preds = %bb.hn, %._crit_edge.i.i76
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i76 ], [ %i.bbo, %bb.hn ] ; 3 uses
  %i.bbp = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.bbl, ptr noundef nonnull align 8 dereferenceable(128) %i.bbi, i32 noundef %.0.i.i) #31, !noalias !1632
  br i1 %i.bbp, label %bb.ho, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE10getStateAtENS0_12ProgramPointE.exit

bb.ho:                                            ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i
  %i.bbq = getelementptr inbounds i8, ptr %.sroa.0113.0229, i64 -104
  %i.bbr = load i32, ptr %i.bbq, align 8, !tbaa !121, !noalias !1632 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.bbr, -1        ; 2 uses
  %i.bbs = getelementptr inbounds i8, ptr %.sroa.0113.0229, i64 -112
  %i.bbt = load ptr, ptr %i.bbs, align 8, !tbaa !67, !noalias !1632 ; 4 uses
  %i.bbu = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.bbv = getelementptr inbounds nuw [16 x i8], ptr %i.bbt, i64 %i.bbu ; 2 uses
  %i.bbw = load i8, ptr %i.bbv, align 8, !tbaa !234, !noalias !1632
  %i.bbx = icmp eq i8 %i.bbw, 6
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbv, i64 8
  %i.bbz = load ptr, ptr %i.bby, align 8, !noalias !1632
  %i.bca = icmp eq ptr %i.bbz, null
  %i.bcb = select i1 %i.bbx, i1 %i.bca, i1 false
  br i1 %i.bcb, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.ho, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i73 = phi i64 [ %indvars.iv.next.i.i.i74, %.backedge.i.i.i.i.i.i ], [ %i.bbu, %bb.ho ] ; 2 uses
  %indvars.iv.next.i.i.i74 = add nsw i64 %indvars.iv.i.i.i73, -1 ; 3 uses
  %i.bcc = icmp sgt i64 %indvars.iv.i.i.i73, 0
  call void @llvm.assume(i1 %i.bcc)
  %i.bcd = getelementptr inbounds nuw [16 x i8], ptr %i.bbt, i64 %indvars.iv.next.i.i.i74 ; 2 uses
  %i.bce = load i8, ptr %i.bcd, align 8, !tbaa !234, !noalias !1632
  %i.bcf = icmp eq i8 %i.bce, 6
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcd, i64 8
  %i.bch = load ptr, ptr %i.bcg, align 8, !noalias !1632
  %i.bci = icmp eq ptr %i.bch, null
  %i.bcj = select i1 %i.bcf, i1 %i.bci, i1 false
  br i1 %i.bcj, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.bck = trunc nsw i64 %indvars.iv.next.i.i.i74 to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.ho
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.ho ], [ %i.bck, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.bbr, %.01318.i.i.i.lcssa.i.i.i
  %i.bcl = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.bcl, %i.bbr
  call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.bcm = zext i32 %i.bcl to i64                 ; 2 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.bbr to i64
  %i.bcn = getelementptr inbounds nuw [16 x i8], ptr %i.bbt, i64 %i.bcm
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcn, i64 8
  %i.bcp = load i64, ptr %i.bco, align 8, !tbaa !235, !noalias !1632 ; 2 uses
  %i.bcq = lshr i64 %i.bcp, 56
  %i.bcr = trunc nuw nsw i64 %i.bcq to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.bcr
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ %i.bcm, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.bcs = getelementptr inbounds nuw [16 x i8], ptr %i.bbt, i64 %indvars.iv.next.i.i.i.i
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcs, i64 8
  %i.bcu = load i64, ptr %i.bct, align 8, !tbaa !235, !noalias !1632 ; 2 uses
  %i.bcv = lshr i64 %i.bcu, 56
  %i.bcw = trunc nuw nsw i64 %i.bcv to i32
  %.not.i.i.i.i75 = icmp eq i32 %.0.i.i, %i.bcw
  br i1 %.not.i.i.i.i75, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.bcp, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.bcu, %.critedge.i.i.i.i ]
  %i.bcx = shl i64 %.lcssa.i.i.i, 8
  %i.bcy = ashr exact i64 %i.bcx, 8
  %i.bcz = inttoptr i64 %i.bcy to ptr
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcz, i64 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE10getStateAtENS0_12ProgramPointE.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE10getStateAtENS0_12ProgramPointE.exit: ; preds = %.lr.ph.i.i.i.i.i.i52, %.preheader, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i.i, %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i, %bb.hi, %..loopexit_crit_edge21.i.i.i.i.i.i, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i
  %.sroa.096.0 = phi ptr [ inttoptr (i64 34 to ptr), %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i ], [ %i.bbh, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i ], [ inttoptr (i64 34 to ptr), %..loopexit_crit_edge21.i.i.i.i.i.i ], [ inttoptr (i64 34 to ptr), %.preheader ], [ inttoptr (i64 34 to ptr), %bb.hi ], [ %i.bda, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i.i ], [ inttoptr (i64 34 to ptr), %.lr.ph.i.i.i.i.i.i52 ] ; 2 uses
  %.sroa.09.0.copyload = load i32, ptr %.sroa.096.0, align 4
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.096.0, i64 4
  %.sroa.410.0.copyload = load i32, ptr %.sroa.410.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  %i.bdb = sext i32 %.sroa.09.0.copyload to i64
  %i.bdc = sext i32 %.sroa.410.0.copyload to i64
  call void @_ZN4llvm4bolt14ShrinkWrapping21processInsertionsListEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS4_SaIS4_EEEEPNS0_16BinaryBasicBlockERS6_INS1_12WorklistItemESaISC_EEll(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.1133") align 8 %15, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr nonnull %.sroa.0113.0229, ptr noundef nonnull %i.aya, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 noundef %i.bdb, i64 noundef %i.bdc)
  %i.bdd = load i8, ptr %i.axv, align 8, !noalias !1633
  %i.bde = trunc i8 %i.bdd to i1
  %i.bdf = load i64, ptr %15, align 8, !tbaa !589 ; 3 uses
  br i1 %i.bde, label %_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEE9takeErrorEv.exit, label %bb.hp

_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEE9takeErrorEv.exit: ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE10getStateAtENS0_12ProgramPointE.exit
  %.not169 = icmp eq i64 %i.bdf, 0
  br i1 %.not169, label %_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEED2Ev.exit, label %.thread132

.thread132:                                       ; preds = %_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEE9takeErrorEv.exit
  %i.bdg = inttoptr i64 %i.bdf to ptr
  %i.bdh = load i8, ptr %i.axw, align 8
  %i.bdi = or i8 %i.bdh, 1
  store i8 %i.bdi, ptr %i.axw, align 8
  store ptr %i.bdg, ptr %0, align 8, !tbaa !663, !alias.scope !1634
  br label %_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEED2Ev.exit

bb.hp:                                            ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE10getStateAtENS0_12ProgramPointE.exit
  %i.bdj = inttoptr i64 %i.bdf to ptr
  br label %_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEED2Ev.exit

_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEED2Ev.exit: ; preds = %.thread132, %_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEE9takeErrorEv.exit, %bb.hp
  %.1137 = phi i1 [ true, %bb.hp ], [ true, %_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEE9takeErrorEv.exit ], [ false, %.thread132 ]
  %.sroa.0113.1135 = phi ptr [ %i.bdj, %bb.hp ], [ null, %_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEE9takeErrorEv.exit ], [ %.sroa.0113.0229, %.thread132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  %.not.i.i.i59 = icmp eq ptr %i.bai, null
  br i1 %.not.i.i.i59, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.bai, i64 noundef %i.bac) #34
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br i1 %.1137, label %.thread141, label %.critedge33

.thread141:                                       ; preds = %_ZN4llvm4bolt14ShrinkWrapping18getAnnotationIndexEv.exit, %bb.hr
  %.2121146 = phi i8 [ 1, %bb.hr ], [ %.1120230, %_ZN4llvm4bolt14ShrinkWrapping18getAnnotationIndexEv.exit ] ; 2 uses
  %.sroa.0113.2145 = phi ptr [ %.sroa.0113.1135, %bb.hr ], [ %.sroa.0113.0229, %_ZN4llvm4bolt14ShrinkWrapping18getAnnotationIndexEv.exit ]
  %i.bdk = getelementptr inbounds nuw i8, ptr %.sroa.0113.2145, i64 128 ; 2 uses
  %i.bdl = load ptr, ptr %i.ayc, align 8, !tbaa !129 ; 2 uses
  %.not166 = icmp eq ptr %i.bdk, %i.bdl
  br i1 %.not166, label %._crit_edge, label %bb.hb, !llvm.loop !1587

._crit_edge:                                      ; preds = %.thread141, %bb.ha
  %i.bdm = phi ptr [ %i.ayd, %bb.ha ], [ %i.bdl, %.thread141 ]
  %.1120.lcssa = phi i8 [ %.0234, %bb.ha ], [ %.2121146, %.thread141 ]
  %i.bdn = load ptr, ptr %i.p, align 8, !tbaa !624, !noalias !1635 ; 3 uses
  %i.bdo = load ptr, ptr %i.axx, align 8, !tbaa !625, !noalias !1635 ; 2 uses
  %i.bdp = load i32, ptr %i.axy, align 4, !tbaa !626, !noalias !1635 ; 4 uses
  %i.bdq = icmp eq i32 %i.bdp, 0
  br i1 %i.bdq, label %.loopexit.i.i60, label %bb.hs

bb.hs:                                            ; preds = %._crit_edge
  %i.bdr = add i32 %i.bdp, -1                     ; 2 uses
  %i.bds = ptrtoint ptr %i.aya to i64
  %i.bdt = mul i64 %i.bds, -4658895280553007687   ; 2 uses
  %i.bdu = lshr i64 %i.bdt, 31
  %i.bdv = xor i64 %i.bdu, %i.bdt
  %i.bdw = trunc i64 %i.bdv to i32
  %i.bdx = and i32 %i.bdr, %i.bdw                 ; 3 uses
  %i.bdy = zext i32 %i.bdx to i64                 ; 2 uses
  %i.bdz = lshr i64 %i.bdy, 5
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %i.bdo, i64 %i.bdz
  %i.beb = load i32, ptr %i.bea, align 4, !tbaa !191, !noalias !1636
  %i.bec = and i32 %i.bdx, 31
  %i.bed = lshr i32 %i.beb, %i.bec
  %i.bee = trunc i32 %i.bed to i1
  br i1 %i.bee, label %.lr.ph.i.i.i.i61, label %.loopexit.i.i60, !prof !289

.lr.ph.i.i.i.i61:                                 ; preds = %bb.hs, %bb.ht
  %i.bef = phi i64 [ %i.bel, %bb.ht ], [ %i.bdy, %bb.hs ]
  %.017.i.i.i.i = phi i32 [ %i.bek, %bb.ht ], [ %i.bdx, %bb.hs ]
  %i.beg = getelementptr inbounds nuw [32 x i8], ptr %i.bdn, i64 %i.bef ; 2 uses
  %i.beh = load ptr, ptr %i.beg, align 8, !tbaa !127, !noalias !1636
  %i.bei = icmp eq ptr %i.aya, %i.beh
  br i1 %i.bei, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.loopexit, label %bb.ht, !prof !210

bb.ht:                                            ; preds = %.lr.ph.i.i.i.i61
  %i.bej = add nuw i32 %.017.i.i.i.i, 1
  %i.bek = and i32 %i.bej, %i.bdr                 ; 3 uses
  %i.bel = zext i32 %i.bek to i64                 ; 2 uses
  %i.bem = lshr i64 %i.bel, 5
  %i.ben = getelementptr inbounds nuw [4 x i8], ptr %i.bdo, i64 %i.bem
  %i.beo = load i32, ptr %i.ben, align 4, !tbaa !191, !noalias !1636
  %i.bep = and i32 %i.bek, 31
  %i.beq = lshr i32 %i.beo, %i.bep
  %i.ber = trunc i32 %i.beq to i1
  br i1 %i.ber, label %.lr.ph.i.i.i.i61, label %.loopexit.i.i60, !prof !290

.loopexit.i.i60:                                  ; preds = %bb.ht, %bb.hs, %._crit_edge
  %i.bes = zext i32 %i.bdp to i64                 ; 2 uses
  %i.bet = getelementptr inbounds nuw [32 x i8], ptr %i.bdn, i64 %i.bes
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i61
  %.pre290 = zext i32 %i.bdp to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.loopexit, %.loopexit.i.i60
  %.pre-phi = phi i64 [ %.pre290, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.loopexit ], [ %i.bes, %.loopexit.i.i60 ]
  %.lcssa.sink.i.i = phi ptr [ %i.beg, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit.loopexit ], [ %i.bet, %.loopexit.i.i60 ] ; 2 uses
  %i.beu = getelementptr inbounds nuw [32 x i8], ptr %i.bdn, i64 %.pre-phi
  %.not167 = icmp eq ptr %.lcssa.sink.i.i, %i.beu
  br i1 %.not167, label %.critedge33.thread, label %bb.hu

bb.hu:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.bev = getelementptr inbounds i8, ptr %i.bdm, i64 -128
  call fastcc void @_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias writable align 8 %16, ptr noundef nonnull align 8 dereferenceable(120) %13, ptr noundef nonnull align 8 dereferenceable(128) %i.bev)
  %i.bew = load ptr, ptr %16, align 8, !tbaa !282 ; 2 uses
  %.sroa.07.0.copyload = load i32, ptr %i.bew, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bew, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  %i.bex = load ptr, ptr %i.ayc, align 8, !tbaa !129
  %i.bey = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.bez = sext i32 %.sroa.07.0.copyload to i64
  %i.bfa = sext i32 %.sroa.4.0.copyload to i64
  call void @_ZN4llvm4bolt14ShrinkWrapping21processInsertionsListEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS4_SaIS4_EEEEPNS0_16BinaryBasicBlockERS6_INS1_12WorklistItemESaISC_EEll(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.1133") align 8 %17, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr %i.bex, ptr noundef nonnull %i.aya, ptr noundef nonnull align 8 dereferenceable(24) %i.bey, i64 noundef %i.bez, i64 noundef %i.bfa)
  %i.bfb = load i8, ptr %i.axz, align 8, !noalias !1637
  %i.bfc = trunc i8 %i.bfb to i1
  br i1 %i.bfc, label %_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEED2Ev.exit68, label %_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEED2Ev.exit68.thread

_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEED2Ev.exit68.thread: ; preds = %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %.critedge33.thread

_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEED2Ev.exit68: ; preds = %bb.hu
  %i.bfd = load i64, ptr %17, align 8, !tbaa !663, !noalias !1637 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  %.not168 = icmp eq i64 %i.bfd, 0
  br i1 %.not168, label %.critedge33.thread, label %.critedge33.thread161

.critedge33.thread161:                            ; preds = %_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEED2Ev.exit68
  %i.bfe = inttoptr i64 %i.bfd to ptr
  %i.bff = load i8, ptr %i.axw, align 8
  %i.bfg = or i8 %i.bff, 1
  store i8 %i.bfg, ptr %i.axw, align 8
  store ptr %i.bfe, ptr %0, align 8, !tbaa !663, !alias.scope !1638
  br label %.critedge33

.critedge33.thread:                               ; preds = %_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEED2Ev.exit68.thread, %_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEED2Ev.exit68, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit
  %.5160 = phi i8 [ %.1120.lcssa, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorINS2_14ShrinkWrapping12WorklistItemESaIS7_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SB_SE_E4findEPKS3_.exit ], [ 1, %_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEED2Ev.exit68.thread ], [ 1, %_ZN4llvm8ExpectedIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS3_SaIS3_EEEEED2Ev.exit68 ] ; 2 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %.sroa.0117.0233, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bfh, %i.axn
  br i1 %.not, label %.critedge35, label %bb.ha

.critedge35:                                      ; preds = %.critedge33.thread, %_ZN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTracking3runEv.exit.thread, %_ZN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTracking3runEv.exit
  %.0.lcssa = phi i8 [ 0, %_ZN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTracking3runEv.exit ], [ 0, %_ZN4llvm4bolt12_GLOBAL__N_130PredictiveStackPointerTracking3runEv.exit.thread ], [ %.5160, %.critedge33.thread ]
  %i.bfi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bfj = load i8, ptr %i.bfi, align 8
  %i.bfk = and i8 %i.bfj, -2
  store i8 %i.bfk, ptr %i.bfi, align 8
  store i8 %.0.lcssa, ptr %0, align 8, !tbaa !500
  br label %.critedge33

.critedge33:                                      ; preds = %bb.hr, %.critedge33.thread161, %.critedge35
  call void @_ZN4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %13) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !678, !nonnull !64, !align !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !190, !range !63, !noundef !64
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 8, !tbaa !191
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.36, i64 30) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.0.i) #31, !noalias !1641
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !1641
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !alias.scope !1641
  store i32 34, ptr %0, align 8, !tbaa !191, !alias.scope !1641
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !292, !alias.scope !1641
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !121, !noalias !1641 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.p, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67, !noalias !1641 ; 4 uses
  %i.s = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !234, !noalias !1641
  %i.v = icmp eq i8 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1641
  %i.y = icmp eq ptr %i.x, null
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aa = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !234, !noalias !1641
  %i.ad = icmp eq i8 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1641
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ai = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.p, %.01318.i.i.i.lcssa.i.i
  %i.aj = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.aj, %i.p
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !235, !noalias !1641 ; 2 uses
  %i.ao = lshr i64 %i.an, 56
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.ap
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !235, !noalias !1641 ; 2 uses
  %i.at = lshr i64 %i.as, 56
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.au
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.an, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.as, %.critedge.i.i.i ]
  %i.av = shl i64 %.lcssa.i.i, 8
  %i.aw = ashr exact i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !alias.scope !1641
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.az, align 8, !alias.scope !1641
  store ptr %i.ay, ptr %0, align 8, !tbaa !282, !alias.scope !1641
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt4pairIiiEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %bb.c, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt4pairIiiEEERT_RKNS_6MCInstEj.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEED2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(120) dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEEE, i64 16), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !677, !nonnull !64, !align !99 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1240
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1248
  %i.f = load i32, ptr %i.e, align 8, !tbaa !121  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = shl nuw nsw i64 %i.g, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not17.i = icmp eq i32 %i.f, 0
  br i1 %.not17.i, label %_ZN4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE16cleanAnnotationsEv.exit, label %.lr.ph20.i

.lr.ph20.i:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %.lr.ph20.i
  %.sroa.011.018.i = phi ptr [ %i.d, %.lr.ph20.i ], [ %i.p, %._crit_edge.i ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.011.018.i, align 8, !tbaa !127 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !129  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !129  ; 2 uses
  %.not1415.i = icmp eq ptr %i.m, %i.o
  br i1 %.not1415.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.011.018.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %i.h
  br i1 %.not.i, label %_ZN4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE16cleanAnnotationsEv.exit, label %bb.b

.lr.ph.i:                                         ; preds = %bb.b, %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i
  %.sroa.07.016.i = phi ptr [ %i.x, %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !678, !nonnull !64, !align !99
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1568
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !189  ; 2 uses
  %i.t = load i8, ptr %i.k, align 4, !tbaa !190, !range !63, !noundef !64
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %._crit_edge.i.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %.lr.ph.i
  %.0.pre.i.i = load i32, ptr %i.j, align 8, !tbaa !191
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.s, ptr nonnull @.str.36, i64 30) ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.v to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.j, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i

_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE18getAnnotationIndexEv.exit.i: ; preds = %bb.c, %._crit_edge.i.i
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.v, %bb.c ]
  %i.w = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder16removeAnnotationERNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.s, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.07.016.i, i32 noundef %.0.i.i) #31 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.07.016.i, i64 128 ; 2 uses
  %.not14.i = icmp eq ptr %i.x, %i.o
  br i1 %.not14.i, label %._crit_edge.i, label %.lr.ph.i

_ZN4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE16cleanAnnotationsEv.exit: ; preds = %._crit_edge.i, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.z = load i32, ptr %i.y, align 4, !tbaa !288  ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZN4llvm8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE16cleanAnnotationsEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !286
  %i.ad = zext i32 %i.z to i64                    ; 2 uses
  %i.ae = mul nuw nsw i64 %i.ad, 24
  %i.af = add nuw nsw i64 %i.ad, 31
  %i.ag = lshr i64 %i.af, 3
  %i.ah = and i64 %i.ag, 1073741820
  %i.ai = add nuw nsw i64 %i.ah, %i.ae
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ac, i64 noundef %i.ai, i64 noundef 8) #31
  br label %_ZN4llvm8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit: ; preds = %_ZN4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE16cleanAnnotationsEv.exit, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !696 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS4_S5_IiiEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvm8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %i.al, %_ZN4llvm8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit ] ; 2 uses
  %i.am = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !157 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #34
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS4_S5_IiiEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1642

_ZNSt10_HashtableIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS4_S5_IiiEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm8DenseMapIPKNS_6MCInstENS_4bolt12ProgramPointENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !298
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !297
  %i.aq = shl i64 %i.ap, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.an, i8 0, i64 %i.aq, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !298 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS4_S5_IiiEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !297
  %i.av = shl i64 %i.au, 3
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #34
  br label %_ZNSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEED2Ev.exit

_ZNSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIPKN4llvm4bolt16BinaryBasicBlockESt4pairIKS4_S5_IiiEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt14ShrinkWrapping16processDeletionsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1048) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !522, !nonnull !64, !align !99
  %i.c = tail call noundef nonnull align 8 dereferenceable(130) ptr @_ZN4llvm4bolt19DataflowInfoManager19getLivenessAnalysisEv(ptr noundef nonnull align 8 dereferenceable(122) %i.b) #31 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !529, !nonnull !64, !align !99 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1248
  %i.i = load i32, ptr %i.h, align 8, !tbaa !121  ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.idx = shl nuw nsw i64 %i.j, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %.not94 = icmp eq i32 %i.i, 0
  br i1 %.not94, label %._crit_edge98, label %.lr.ph97

.lr.ph97:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1020
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  br label %bb.b

._crit_edge98:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph97, %._crit_edge
  %.sroa.059.095 = phi ptr [ %i.g, %.lr.ph97 ], [ %i.v, %._crit_edge ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.059.095, align 8, !tbaa !127 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !129  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !129
  %.not8691 = icmp eq ptr %i.s, %i.u
  br i1 %.not8691, label %._crit_edge, label %.lr.ph93

._crit_edge:                                      ; preds = %_ZN4llvm4bolt16BinaryBasicBlock16eraseInstructionEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS4_SaIS4_EEEE.exit.thread83, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.059.095, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.k
  br i1 %.not, label %._crit_edge98, label %bb.b

.lr.ph93:                                         ; preds = %bb.b, %_ZN4llvm4bolt16BinaryBasicBlock16eraseInstructionEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS4_SaIS4_EEEE.exit.thread83
  %.sroa.054.092 = phi ptr [ %.sroa.054.4, %_ZN4llvm4bolt16BinaryBasicBlock16eraseInstructionEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS4_SaIS4_EEEE.exit.thread83 ], [ %i.s, %bb.b ] ; 12 uses
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !523, !nonnull !64, !align !99
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1568
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !189  ; 2 uses
  %i.z = load i8, ptr %i.n, align 4, !tbaa !190, !range !63, !noundef !64
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %.lr.ph93
  %.0.pre.i = load i32, ptr %i.m, align 8, !tbaa !191
  br label %_ZN4llvm4bolt14ShrinkWrapping18getAnnotationIndexEv.exit

bb.c:                                             ; preds = %.lr.ph93
  %i.ab = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.y, ptr nonnull @.str.35, i64 15) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.ab to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.m, align 8
  br label %_ZN4llvm4bolt14ShrinkWrapping18getAnnotationIndexEv.exit

_ZN4llvm4bolt14ShrinkWrapping18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.c
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.ab, %bb.c ] ; 3 uses
  %i.ac = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.y, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.054.092, i32 noundef %.0.i) #31, !noalias !1651
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm4bolt14ShrinkWrapping18getAnnotationIndexEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.054.092, i64 24 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !121, !noalias !1651 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.ae, -1           ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.054.092, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !67, !noalias !1651 ; 4 uses
  %i.ah = zext nneg i32 %.01317.i.i.i.i.i to i64  ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !234, !noalias !1651
  %i.ak = icmp eq i8 %i.aj, 6
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !noalias !1651
  %i.an = icmp eq ptr %i.am, null
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %i.ao, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.ah, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.ap = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !234, !noalias !1651
  %i.as = icmp eq i8 %i.ar, 6
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !1651
  %i.av = icmp eq ptr %i.au, null
  %i.aw = select i1 %i.as, i1 %i.av, i1 false
  br i1 %i.aw, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ax = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ax, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.ae, %.01318.i.i.i.lcssa.i.i
  %i.ay = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.ay, %i.ae
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.ae to i64
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !235, !noalias !1651 ; 2 uses
  %i.bd = lshr i64 %i.bc, 56
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.be
  br i1 %.not.i3.i.i, label %.loopexit, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.az, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !235, !noalias !1651 ; 2 uses
  %i.bi = lshr i64 %i.bh, 56
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.bj
  br i1 %.not.i.i.i, label %.loopexit, label %.critedge.i.i.i

bb.e:                                             ; preds = %_ZN4llvm4bolt14ShrinkWrapping18getAnnotationIndexEv.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.054.092, i64 128
  br label %_ZN4llvm4bolt16BinaryBasicBlock16eraseInstructionEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS4_SaIS4_EEEE.exit.thread83, !llvm.loop !1645

.loopexit:                                        ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.bc, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.bh, %.critedge.i.i.i ]
  %i.bl = shl i64 %.lcssa.i.i, 8
  %i.bm = ashr exact i64 %i.bl, 8
  %i.bn = inttoptr i64 %i.bm to ptr               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !627 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !627 ; 2 uses
  %.not8789 = icmp eq ptr %i.bp, %i.br
  br i1 %.not8789, label %_ZN4llvm4bolt16BinaryBasicBlock16eraseInstructionEN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS4_SaIS4_EEEE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit, %.thread73
  %.sroa.047.090 = phi ptr [ %i.hi, %.thread73 ], [ %i.bp, %.loopexit ] ; 2 uses
  %i.bs = load i8, ptr %.sroa.047.090, align 8, !tbaa !562 ; 2 uses
  %switch = icmp ult i8 %i.bs, 2
  br i1 %switch, label %bb.f, label %.thread73

bb.f:                                             ; preds = %.lr.ph
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.bu = load ptr, ptr %i.l, align 8, !tbaa !523, !nonnull !64, !align !99
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1568
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !189 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !55
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 760
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call noundef zeroext i16 %i.bz(ptr noundef nonnull align 8 dereferenceable(536) %i.bw) #31
  %i.cb = load ptr, ptr %i.o, align 8, !tbaa !1653, !noalias !1654, !nonnull !64, !align !99
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1568
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !189, !noalias !1654 ; 2 uses
  %i.ce = load i8, ptr %i.q, align 4, !tbaa !190, !range !63, !noalias !1654, !noundef !64
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %._crit_edge.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.g
  %.0.pre.i.i = load i32, ptr %i.p, align 8, !tbaa !191, !noalias !1654
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit.i

bb.h:                                             ; preds = %bb.g
  %i.cg = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.cd, ptr nonnull @.str.39, i64 16), !noalias !1654 ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.cg to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.p, align 8, !noalias !1654
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit.i

_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit.i: ; preds = %bb.h, %._crit_edge.i.i
  %.0.i.i = phi i32 [ %.0.pre.i.i, %._crit_edge.i.i ], [ %i.cg, %bb.h ] ; 3 uses
  %i.ch = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.cd, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.054.092, i32 noundef %.0.i.i) #31, !noalias !1655
  br i1 %i.ch, label %bb.i, label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtENS0_12ProgramPointE.exit.i

bb.i:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit.i
  %i.ci = load i32, ptr %i.ad, align 8, !tbaa !121, !noalias !1655 ; 4 uses
  %.01317.i.i.i.i.i.i = add i32 %i.ci, -1         ; 2 uses
  %i.cj = load ptr, ptr %i.af, align 8, !tbaa !67, !noalias !1655 ; 4 uses
  %i.ck = zext nneg i32 %.01317.i.i.i.i.i.i to i64 ; 2 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.ck ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !234, !noalias !1655
  %i.cn = icmp eq i8 %i.cm, 6
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !1655
  %i.cq = icmp eq ptr %i.cp, null
  %i.cr = select i1 %i.cn, i1 %i.cq, i1 false
  br i1 %i.cr, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %bb.i, %.backedge.i.i.i.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i44, %.backedge.i.i.i.i.i.i ], [ %i.ck, %bb.i ] ; 2 uses
  %indvars.iv.next.i.i.i44 = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.cs = icmp sgt i64 %indvars.iv.i.i.i, 0
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %indvars.iv.next.i.i.i44 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !234, !noalias !1655
  %i.cv = icmp eq i8 %i.cu, 6
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !1655
  %i.cy = icmp eq ptr %i.cx, null
  %i.cz = select i1 %i.cv, i1 %i.cy, i1 false
  br i1 %i.cz, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, label %.backedge.i.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i
  %i.da = trunc nsw i64 %indvars.iv.next.i.i.i44 to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i, %bb.i
  %.01318.i.i.i.lcssa.i.i.i = phi i32 [ %.01317.i.i.i.i.i.i, %bb.i ], [ %i.da, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i.i ] ; 2 uses
  %.not.i.not.i.i.i.i = icmp ne i32 %i.ci, %.01318.i.i.i.lcssa.i.i.i
  %i.db = add nuw i32 %.01318.i.i.i.lcssa.i.i.i, 1 ; 2 uses
  %.not1324.i.i.i.i = icmp ult i32 %i.db, %i.ci
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i.i)
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i = zext i32 %i.ci to i64
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !235, !noalias !1655 ; 2 uses
  %i.dg = lshr i64 %i.df, 56
  %i.dh = trunc nuw nsw i64 %i.dg to i32
  %.not.i3.i.i.i = icmp eq i32 %.0.i.i, %i.dh
  br i1 %.not.i3.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i, %.critedge.i.i.i.i
  %indvars.iv.i4.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.critedge.i.i.i.i ], [ %i.dc, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ]
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i.i)
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %indvars.iv.next.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !235, !noalias !1655 ; 2 uses
  %i.dl = lshr i64 %i.dk, 56
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %.not.i.i.i.i = icmp eq i32 %.0.i.i, %i.dm
  br i1 %.not.i.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i, label %.critedge.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i: ; preds = %.critedge.i.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i
  %.lcssa.i.i.i = phi i64 [ %i.df, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i.i ], [ %i.dk, %.critedge.i.i.i.i ]
  %i.dn = shl i64 %.lcssa.i.i.i, 8
  %i.do = ashr exact i64 %i.dn, 8
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtENS0_12ProgramPointE.exit.i

_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtENS0_12ProgramPointE.exit.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i, %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit.i
  %.sroa.062.1 = phi ptr [ %i.dq, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i.i ], [ inttoptr (i64 34 to ptr), %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE18getAnnotationIndexEv.exit.i ] ; 2 uses
  %i.dr = load ptr, ptr %i.o, align 8, !tbaa !1653, !nonnull !64, !align !99
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1568
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !189 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !55
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 920
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = tail call noundef nonnull align 8 dereferenceable(68) ptr %i.dw(ptr noundef nonnull align 8 dereferenceable(536) %i.dt, i16 noundef zeroext %i.ca, i1 noundef zeroext false) #31, !inline_history !1650 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.062.1, i64 8
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !121
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !121
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.eb, i32 %i.dz) ; 2 uses
  %.not15.not.i.i = icmp eq i32 %.sroa.speculated.i.i, 0
  br i1 %.not15.not.i.i, label %_ZNK4llvm4bolt16LivenessAnalysis7isAliveENS0_12ProgramPointEt.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtENS0_12ProgramPointE.exit.i
  %i.ec = load ptr, ptr %.sroa.062.1, align 8, !tbaa !67
  %i.ed = load ptr, ptr %i.dx, align 8, !tbaa !67
  %i.ee = zext i32 %.sroa.speculated.i.i to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.i
  %indvars.iv.i.i41 = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i42, %bb.j ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.i.i41
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !123
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.i.i41
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !123
  %i.ej = and i64 %i.ei, %i.eg
  %.not11.not.i.not.i.not = icmp ne i64 %i.ej, 0  ; 2 uses
  %indvars.iv.next.i.i42 = add nuw nsw i64 %indvars.iv.i.i41, 1 ; 2 uses
  %.not.not.i.i = icmp eq i64 %indvars.iv.next.i.i42, %i.ee
  %or.cond = select i1 %.not11.not.i.not.i.not, i1 true, i1 %.not.not.i.i
  br i1 %or.cond, label %_ZNK4llvm4bolt16LivenessAnalysis7isAliveENS0_12ProgramPointEt.exit, label %bb.j, !llvm.loop !24

_ZNK4llvm4bolt16LivenessAnalysis7isAliveENS0_12ProgramPointEt.exit: ; preds = %bb.j, %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtENS0_12ProgramPointE.exit.i
  %.not.lcssa.i.i = phi i1 [ false, %_ZNK4llvm4bolt16DataflowAnalysisINS0_16LivenessAnalysisENS_9BitVectorELb1ENS0_15RegStatePrinterEE10getStateAtENS0_12ProgramPointE.exit.i ], [ %.not11.not.i.not.i.not, %bb.j ] ; 2 uses
  %i.ek = load ptr, ptr %i.l, align 8, !tbaa !523, !nonnull !64, !align !99
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1568
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !189 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !55
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 456
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = tail call noundef i32 %i.ep(ptr noundef nonnull align 8 dereferenceable(536) %i.em, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.054.092) #31 ; 2 uses
  %.not39 = icmp eq i32 %i.eq, 0
  %i.er = load ptr, ptr %i.l, align 8, !tbaa !523, !nonnull !64, !align !99
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1568
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !189 ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !55 ; 2 uses
  br i1 %.not39, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm4bolt16LivenessAnalysis7isAliveENS0_12ProgramPointEt.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1424
  %i.ew = load ptr, ptr %i.ev, align 8
  tail call void %i.ew(ptr noundef nonnull align 8 dereferenceable(536) %i.et, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.054.092, i32 noundef %i.eq, i1 noundef zeroext %.not.lcssa.i.i) #31
  br label %.thread73

bb.l:                                             ; preds = %_ZNK4llvm4bolt16LivenessAnalysis7isAliveENS0_12ProgramPointEt.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 440
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = tail call noundef i32 %i.ey(ptr noundef nonnull align 8 dereferenceable(536) %i.et, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.054.092) #31 ; 2 uses
  %.not40 = icmp eq i32 %i.ez, 0
  br i1 %.not40, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fa = load ptr, ptr %i.l, align 8, !tbaa !523, !nonnull !64, !align !99
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 1568
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !189 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !55
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1432
  %i.ff = load ptr, ptr %i.fe, align 8
  tail call void %i.ff(ptr noundef nonnull align 8 dereferenceable(536) %i.fc, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.054.092, i32 noundef %i.ez, i1 noundef zeroext %.not.lcssa.i.i) #31
  br label %.thread73

bb.n:                                             ; preds = %bb.l, %bb.f
  tail call void @_ZN4llvm4bolt16BinaryBasicBlock16adjustNumPseudosERKNS_6MCInstEi(ptr noundef nonnull align 8 dereferenceable(192) %i.r, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.054.092, i32 noundef -1) #31
  %i.fg = load ptr, ptr %i.r, align 8, !tbaa !129 ; 2 uses
  %i.fh = ptrtoint ptr %.sroa.054.092 to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = getelementptr inbounds i8, ptr %i.fg, i64 %i.fj ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 128 ; 3 uses
  %i.fm = load ptr, ptr %i.t, align 8, !tbaa !129 ; 4 uses
  %.not.i.i.i43 = icmp eq ptr %i.fl, %i.fm
  br i1 %.not.i.i.i43, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fl to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = ashr exact i64 %i.fp, 7                 ; 2 uses
  %i.fr = icmp sgt i64 %i.fq, 0
  br i1 %i.fr, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6MCInstESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.o, %_ZN4llvm15SmallVectorImplINS_9MCOperandEEaSEOS2_.exit
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.ha, %_ZN4llvm15SmallVectorImplINS_9MCOperandEEaSEOS2_.exit ], [ %i.fq, %bb.o ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.gz, %_ZN4llvm15SmallVectorImplINS_9MCOperandEEaSEOS2_.exit ], [ %i.fk, %bb.o ] ; 8 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.gy, %_ZN4llvm15SmallVectorImplINS_9MCOperandEEaSEOS2_.exit ], [ %i.fl, %bb.o ] ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.0811.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(128) %.0910.i.i.i.i.i.i.i.i, i64 16, i1 false)
  %i.fs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 16 ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 16 ; 4 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !67 ; 6 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.fx = load ptr, ptr %i.fs, align 8, !tbaa !67 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 32
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZN4llvm15SmallVectorImplINS_9MCOperandEE12assignRemoteEOS2_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef %i.fx) #31
  %.pre.i = load ptr, ptr %i.ft, align 8, !tbaa !67
  br label %_ZN4llvm15SmallVectorImplINS_9MCOperandEE12assignRemoteEOS2_.exit.i

_ZN4llvm15SmallVectorImplINS_9MCOperandEE12assignRemoteEOS2_.exit.i: ; preds = %bb.q, %bb.p
  %i.ga = phi ptr [ %i.fu, %bb.p ], [ %.pre.i, %bb.q ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 24
  store ptr %i.ga, ptr %i.fs, align 8, !tbaa !67
  %i.gc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 28
  %i.ge = load <2 x i32>, ptr %i.gc, align 8, !tbaa !191
  store <2 x i32> %i.ge, ptr %i.gb, align 8, !tbaa !191
  store ptr %i.fv, ptr %i.ft, align 8, !tbaa !67
  store i32 0, ptr %i.gd, align 4, !tbaa !120
  store i32 0, ptr %i.gc, align 8, !tbaa !121
  br label %_ZN4llvm15SmallVectorImplINS_9MCOperandEEaSEOS2_.exit

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.gf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 24 ; 4 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !121 ; 6 uses
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 24 ; 4 uses
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !121 ; 4 uses
  %i.gk = zext i32 %i.gj to i64                   ; 2 uses
  %.not.i = icmp ult i32 %i.gj, %i.gg
  br i1 %.not.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gl = load ptr, ptr %i.fs, align 8, !tbaa !67 ; 2 uses
  switch i32 %i.gg, label %bb.t [
    i32 0, label %_ZSt4moveIPN4llvm9MCOperandES2_ET0_T_S4_S3_.exit.i
    i32 1, label %bb.u
  ], !prof !612

bb.t:                                             ; preds = %bb.s
  %.idx.i = shl nuw nsw i64 %i.gh, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.gl, ptr align 8 %i.fu, i64 %.idx.i, i1 false)
  br label %_ZSt4moveIPN4llvm9MCOperandES2_ET0_T_S4_S3_.exit.i

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gl, ptr noundef nonnull align 8 dereferenceable(16) %i.fu, i64 16, i1 false), !tbaa.struct !657
  br label %_ZSt4moveIPN4llvm9MCOperandES2_ET0_T_S4_S3_.exit.i

_ZSt4moveIPN4llvm9MCOperandES2_ET0_T_S4_S3_.exit.i: ; preds = %bb.u, %bb.t, %bb.s
  store i32 %i.gg, ptr %i.gi, align 8, !tbaa !121
  store i32 0, ptr %i.gf, align 8, !tbaa !121
end_hunk_17
begin_hunk_18_@_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS1_12StatePrinterIS8_EEE3runEvEUlS2_E0_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
bb.h:                                             ; preds = %bb.i
  %i.v = icmp eq ptr %.val4, %i.y
  br i1 %i.v, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !8

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %bb.h ], [ %i.r, %bb.g ]
  %i.w = load ptr, ptr %.020.i.i.i.i.i.i.i.i.i, align 8, !tbaa !157, !noalias !1973 ; 4 uses
  %.not18.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not18.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !127, !noalias !1973 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = urem i64 %i.z, %i.m
  %.not19.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aa, %i.n
  br i1 %.not19.i.i.i.i.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i.i.i.i.i, !llvm.loop !8

..loopexit_crit_edge21.i.i.i.i.i.i.i.i.i:         ; preds = %bb.i
  br label %.loopexit.i.i.i.i.i, !llvm.loop !8

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i.i.i.i.i, %bb.f
  store i32 34, ptr %2, align 8, !tbaa !191, !alias.scope !1973
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE10getStateAtENS0_12ProgramPointE.exit.i.i.i

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i.i.i.i, %bb.e ], [ %i.r, %bb.g ], [ %i.w, %bb.h ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i.i.i.i, i64 16
  store ptr %i.ab, ptr %2, align 8, !tbaa !282, !alias.scope !1973
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE10getStateAtENS0_12ProgramPointE.exit.i.i.i

bb.j:                                             ; preds = %bb.a
  call fastcc void @_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias nonnull writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(120) %.val, ptr noundef nonnull align 8 dereferenceable(128) %.val4)
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE10getStateAtENS0_12ProgramPointE.exit.i.i.i

_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE10getStateAtENS0_12ProgramPointE.exit.i.i.i: ; preds = %bb.j, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockESt4pairIiiESt4hashIS4_ESt8equal_toIS4_ESaIS5_IKS4_S6_EEE4findERSB_.exit.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %i.ac = load ptr, ptr %2, align 8, !tbaa !282   ; 2 uses
  %.val5.i.i.i.i = load i32, ptr %i.ac, align 4   ; 3 uses
  %i.ad = load i32, ptr %.val2, align 4, !tbaa !191 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, -2147483648
  br i1 %i.ae, label %.sink.split.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE10getStateAtENS0_12ProgramPointE.exit.i.i.i
  %i.af = icmp eq i32 %.val5.i.i.i.i, -2147483648
  %i.ag = icmp eq i32 %.val5.i.i.i.i, %i.ad
  %or.cond.i.i.i.i.i = or i1 %i.af, %i.ag
  br i1 %or.cond.i.i.i.i.i, label %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingEE21doConfluenceSingleRegERiRKi.exit.i.i.i.i, label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.k, %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE10getStateAtENS0_12ProgramPointE.exit.i.i.i
  %.sink.i.i.i.i.i = phi i32 [ %.val5.i.i.i.i, %_ZNK4llvm4bolt16DataflowAnalysisINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS0_12StatePrinterIS5_EEE10getStateAtENS0_12ProgramPointE.exit.i.i.i ], [ 2147483647, %bb.k ]
  store i32 %.sink.i.i.i.i.i, ptr %.val2, align 4, !tbaa !191
  br label %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingEE21doConfluenceSingleRegERiRKi.exit.i.i.i.i

_ZN4llvm4bolt24StackPointerTrackingBaseINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingEE21doConfluenceSingleRegERiRKi.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i, %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.val2, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.val.i.i.i.i = load i32, ptr %i.ai, align 4    ; 3 uses
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !191 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, -2147483648
  br i1 %i.ak, label %.sink.split.i7.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingEE21doConfluenceSingleRegERiRKi.exit.i.i.i.i
  %i.al = icmp eq i32 %.val.i.i.i.i, -2147483648
  %i.am = icmp eq i32 %.val.i.i.i.i, %i.aj
  %or.cond.i6.i.i.i.i = or i1 %i.al, %i.am
  br i1 %or.cond.i6.i.i.i.i, label %_ZSt10__invoke_rIvRZN4llvm4bolt16DataflowAnalysisINS1_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS1_12StatePrinterIS6_EEE3runEvEUlNS1_12ProgramPointEE0_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit, label %.sink.split.i7.i.i.i.i

.sink.split.i7.i.i.i.i:                           ; preds = %bb.l, %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingEE21doConfluenceSingleRegERiRKi.exit.i.i.i.i
  %.sink.i8.i.i.i.i = phi i32 [ %.val.i.i.i.i, %_ZN4llvm4bolt24StackPointerTrackingBaseINS0_12_GLOBAL__N_130PredictiveStackPointerTrackingEE21doConfluenceSingleRegERiRKi.exit.i.i.i.i ], [ 2147483647, %bb.l ]
  store i32 %.sink.i8.i.i.i.i, ptr %i.ah, align 4, !tbaa !191
  br label %_ZSt10__invoke_rIvRZN4llvm4bolt16DataflowAnalysisINS1_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS1_12StatePrinterIS6_EEE3runEvEUlNS1_12ProgramPointEE0_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit

_ZSt10__invoke_rIvRZN4llvm4bolt16DataflowAnalysisINS1_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS1_12StatePrinterIS6_EEE3runEvEUlNS1_12ProgramPointEE0_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit: ; preds = %bb.l, %.sink.split.i7.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN4llvm4bolt12ProgramPointEEZNS1_16DataflowAnalysisINS1_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS1_12StatePrinterIS8_EEE3runEvEUlS2_E0_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #20 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS2_12StatePrinterIS7_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !589
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS2_12StatePrinterIS7_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !719
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS2_12StatePrinterIS7_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !691
  br label %_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS2_12StatePrinterIS7_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt16DataflowAnalysisINS2_12_GLOBAL__N_130PredictiveStackPointerTrackingESt4pairIiiELb0ENS2_12StatePrinterIS7_EEE3runEvEUlNS2_12ProgramPointEE0_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEENS_7ErrorOrIRKT_EERKNS_6MCInstENS_9StringRefE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr.1363") align 8 %0, ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr %3, i64 %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call noundef i32 @pthread_rwlock_rdlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #31
  switch i32 %i.b, label %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i [
    i32 11, label %bb.b
    i32 35, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #32
  unreachable

_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.d = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %3, i64 %4) #31
  %i.e = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr %3, i64 %4, i32 noundef %i.d) #31 ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !487
  br i1 %i.f, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread, label %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i

_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i: ; preds = %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i
  %i.h = sext i32 %i.e to i64                     ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !488
  %.pre8.i = zext i32 %.pre.i to i64
  %i.i = icmp eq i64 %i.h, %.pre8.i
  br i1 %i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread, label %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit

_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread: ; preds = %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i, %_ZNSt11shared_lockIN4llvm3sys12SmartRWMutexILb0EEEEC2ERS3_.exit.i
  %i.j = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #31 ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8
  store i32 34, ptr %0, align 8, !tbaa !191
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !292
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit: ; preds = %_ZNK4llvm9StringMapImNS_15MallocAllocatorEE4findENS_9StringRefE.exit.i
  %i.o = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !490
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !123
  %i.s = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #31 ; 0 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.r to i32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  %i.t = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.sroa.0.0.extract.trunc) #31, !noalias !1976
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #36
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !alias.scope !1976
  %i.x = or i8 %i.w, 1
  store i8 %i.x, ptr %i.v, align 8, !alias.scope !1976
  store i32 34, ptr %0, align 8, !tbaa !191, !alias.scope !1976
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !292, !alias.scope !1976
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.e:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !121, !noalias !1976 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.z, -1            ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !67, !noalias !1976 ; 4 uses
  %i.ac = zext nneg i32 %.01317.i.i.i.i.i to i64  ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !234, !noalias !1976
  %i.af = icmp eq i8 %i.ae, 6
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !1976
  %i.ai = icmp eq ptr %i.ah, null
  %i.aj = select i1 %i.af, i1 %i.ai, i1 false
  br i1 %i.aj, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.e, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.ac, %bb.e ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.ak = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !234, !noalias !1976
  %i.an = icmp eq i8 %i.am, 6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !1976
  %i.aq = icmp eq ptr %i.ap, null
  %i.ar = select i1 %i.an, i1 %i.aq, i1 false
  br i1 %i.ar, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.as = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.e
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.e ], [ %i.as, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.z, %.01318.i.i.i.lcssa.i.i
  %i.at = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.at, %i.z
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.z to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !235, !noalias !1976 ; 2 uses
  %i.ay = lshr i64 %i.ax, 56
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %.not.i3.i.i = icmp eq i32 %.sroa.0.0.extract.trunc, %i.az
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.au, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !235, !noalias !1976 ; 2 uses
  %i.bd = lshr i64 %i.bc, 56
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %.not.i.i.i = icmp eq i32 %.sroa.0.0.extract.trunc, %i.be
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.ax, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.bc, %.critedge.i.i.i ]
  %i.bf = shl i64 %.lcssa.i.i, 8
  %i.bg = ashr exact i64 %i.bf, 8
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 8, !alias.scope !1976
  %i.bl = and i8 %i.bk, -2
  store i8 %i.bl, ptr %i.bj, align 8, !alias.scope !1976
  store ptr %i.bi, ptr %0, align 8, !tbaa !694, !alias.scope !1976
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEERT_RKNS_6MCInstEj.exit.i, %bb.d, %_ZNK4llvm4bolt13MCPlusBuilder18getAnnotationIndexENS_9StringRefE.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplImEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !67     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #31
  %.pre = load ptr, ptr %1, align 8, !tbaa !67
  br label %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit

_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !191
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !191
  store ptr %i.c, ptr %1, align 8, !tbaa !67
  store i32 0, ptr %i.k, align 4, !tbaa !120
  store i32 0, ptr %i.j, align 8, !tbaa !121
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !121  ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !121  ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit
    i32 1, label %bb.h
  ], !prof !612

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.b, align 8, !tbaa !123
  store i64 %i.t, ptr %i.s, align 8, !tbaa !123
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !121
  store i32 0, ptr %i.m, align 8, !tbaa !121
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !120
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !121
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #31
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !491

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34

bb.n:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.b, align 8, !tbaa !123
  store i64 %i.z, ptr %i.y, align 8, !tbaa !123
  br label %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34

_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34:               ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !121
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !67
  %.idx39 = shl nuw nsw i64 %.026, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !67
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
  %gepdiff = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 8 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit: ; preds = %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !121
  store i32 0, ptr %i.m, align 8, !tbaa !121
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPmS0_ET0_T_S2_S1_.exit, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE18uninitialized_moveIPmS3_EEvT_S4_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplImE12assignRemoteEOS1_.exit
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN4llvm6MCInstESt4pairIKS4_PNS1_4bolt16BinaryBasicBlockEESaISA_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !129    ; 3 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !540  ; 2 uses
  %i.e = urem i64 %i.b, %i.d                      ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !541
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !160  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !157  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !129
  %i.l = icmp eq ptr %i.a, %i.k
  br i1 %i.l, label %.loopexit30, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.m = icmp eq ptr %i.a, %i.p
end_hunk_18
begin_hunk_19_@_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_PNS0_4bolt16BinaryBasicBlockEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  br label %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_PNS0_4bolt16BinaryBasicBlockEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4llvm6MCInstEPNS3_4bolt16BinaryBasicBlockEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !491

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4llvm6MCInstEPNS3_4bolt16BinaryBasicBlockEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #33 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_PNS0_4bolt16BinaryBasicBlockEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_PNS0_4bolt16BinaryBasicBlockEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4llvm6MCInstEPNS3_4bolt16BinaryBasicBlockEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4llvm6MCInstEPNS3_4bolt16BinaryBasicBlockEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !547  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !547
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_PNS0_4bolt16BinaryBasicBlockEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_PNS0_4bolt16BinaryBasicBlockEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_PNS0_4bolt16BinaryBasicBlockEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !157 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !129
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !160  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !547
  store ptr %i.p, ptr %.02530, align 8, !tbaa !157
  store ptr %.02530, ptr %i.g, align 8, !tbaa !547
  store ptr %i.g, ptr %i.n, align 8, !tbaa !160
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !157
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !160
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !157
  store ptr %i.s, ptr %.02530, align 8, !tbaa !157
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !160
  store ptr %.02530, ptr %i.t, align 8, !tbaa !157
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_PNS0_4bolt16BinaryBasicBlockEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !541    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_PNS0_4bolt16BinaryBasicBlockEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !540
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #34
  br label %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_PNS0_4bolt16BinaryBasicBlockEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_PNS0_4bolt16BinaryBasicBlockEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !540
  store ptr %.0.i, ptr %0, align 8, !tbaa !541
  ret void
}

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIjE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !720, !range !63, !noundef !64
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !720, !range !63, !noundef !64
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = load i32, ptr %i.d, align 8
  %i.k = icmp eq i32 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

declare void @_ZNK4llvm4bolt11RegAnalysis18getInstClobberListERKNS_6MCInstERNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(68)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr.838") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !220, !nonnull !64, !align !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !190, !range !63, !noundef !64
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 8, !tbaa !191
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.41, i64 12) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1979)
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.0.i) #31, !noalias !1979
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !1979
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !alias.scope !1979
  store i32 34, ptr %0, align 8, !tbaa !191, !alias.scope !1979
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !292, !alias.scope !1979
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb1EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !121, !noalias !1979 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.p, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67, !noalias !1979 ; 4 uses
  %i.s = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !234, !noalias !1979
  %i.v = icmp eq i8 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1979
  %i.y = icmp eq ptr %i.x, null
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aa = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !234, !noalias !1979
  %i.ad = icmp eq i8 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1979
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ai = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.p, %.01318.i.i.i.lcssa.i.i
  %i.aj = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.aj, %i.p
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !235, !noalias !1979 ; 2 uses
  %i.ao = lshr i64 %i.an, 56
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.ap
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !235, !noalias !1979 ; 2 uses
  %i.at = lshr i64 %i.as, 56
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.au
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.an, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.as, %.critedge.i.i.i ]
  %i.av = shl i64 %.lcssa.i.i, 8
  %i.aw = ashr exact i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !alias.scope !1979
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.az, align 8, !alias.scope !1979
  store ptr %i.ay, ptr %0, align 8, !tbaa !142, !alias.scope !1979
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %bb.c, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr.838") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !323, !nonnull !64, !align !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !190, !range !63, !noundef !64
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 8, !tbaa !191
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.42, i64 17) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1982)
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.0.i) #31, !noalias !1982
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !1982
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !alias.scope !1982
  store i32 34, ptr %0, align 8, !tbaa !191, !alias.scope !1982
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !292, !alias.scope !1982
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17StackReachingUsesENS_9BitVectorELb1ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !121, !noalias !1982 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.p, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67, !noalias !1982 ; 4 uses
  %i.s = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !234, !noalias !1982
  %i.v = icmp eq i8 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1982
  %i.y = icmp eq ptr %i.x, null
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aa = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !234, !noalias !1982
  %i.ad = icmp eq i8 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1982
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ai = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.p, %.01318.i.i.i.lcssa.i.i
  %i.aj = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.aj, %i.p
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !235, !noalias !1982 ; 2 uses
  %i.ao = lshr i64 %i.an, 56
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.ap
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !235, !noalias !1982 ; 2 uses
  %i.at = lshr i64 %i.as, 56
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.au
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.an, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.as, %.critedge.i.i.i ]
  %i.av = shl i64 %.lcssa.i.i, 8
  %i.aw = ashr exact i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !alias.scope !1982
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.az, align 8, !alias.scope !1982
  store ptr %i.ay, ptr %0, align 8, !tbaa !142, !alias.scope !1982
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %bb.c, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt6MCPlus18MCSimpleAnnotationIiE5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !213
  %i.c = sext i32 %i.b to i64
  %i.d = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.c) #31 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm4bolt6MCPlus18MCSimpleAnnotationIiE6equalsERKNS1_12MCAnnotationE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !213
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !213
  %i.e = icmp eq i32 %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationIiED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr.838") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !231, !nonnull !64, !align !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !190, !range !63, !noundef !64
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 8, !tbaa !191
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.43, i64 12) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1985)
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.0.i) #31, !noalias !1985
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !1985
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !alias.scope !1985
  store i32 34, ptr %0, align 8, !tbaa !191, !alias.scope !1985
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !292, !alias.scope !1985
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_16ReachingDefOrUseILb0EEENS_9BitVectorELb1ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !121, !noalias !1985 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.p, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67, !noalias !1985 ; 4 uses
  %i.s = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !234, !noalias !1985
  %i.v = icmp eq i8 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1985
  %i.y = icmp eq ptr %i.x, null
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aa = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !234, !noalias !1985
  %i.ad = icmp eq i8 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1985
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ai = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.p, %.01318.i.i.i.lcssa.i.i
  %i.aj = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.aj, %i.p
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !235, !noalias !1985 ; 2 uses
  %i.ao = lshr i64 %i.an, 56
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.ap
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !235, !noalias !1985 ; 2 uses
  %i.at = lshr i64 %i.as, 56
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.au
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.an, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.as, %.critedge.i.i.i ]
  %i.av = shl i64 %.lcssa.i.i, 8
  %i.aw = ashr exact i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !alias.scope !1985
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.az, align 8, !alias.scope !1985
  store ptr %i.ay, ptr %0, align 8, !tbaa !142, !alias.scope !1985
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %bb.c, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !249
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !245  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !123
  %i.i = load i64, ptr %2, align 8, !tbaa !123
  %i.j = icmp slt i64 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !245 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i64, ptr %2, align 8, !tbaa !123    ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !123  ; 2 uses
  %i.o = icmp slt i64 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !245 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !1986

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !250
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #35 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i64, ptr %.phi.trans.insert80, align 8, !tbaa !123
  %.pre82 = load i64, ptr %2, align 8, !tbaa !123
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i64 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i64 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp slt i64 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i64, ptr %2, align 8, !tbaa !123    ; 8 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !123  ; 2 uses
  %i.z = icmp slt i64 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !245 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #35 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !123
  %i.ag = icmp slt i64 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !709
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !245 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !123 ; 2 uses
  %i.an = icmp slt i64 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !245 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !1986

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #35 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i64, ptr %.phi.trans.insert78, align 8, !tbaa !123
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i64 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp slt i64 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp slt i64 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !245 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIlSt4pairIKllESt10_Select1stIS2_ESt4lessIlESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #35 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
end_hunk_19
begin_hunk_20_@_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEERKT_RNS_6MCInstEjSA_t:bb.a
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEC2ERKS7_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt12_Vector_baseIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EEC2EmRKS4_.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %i.au, %_ZNSt12_Vector_baseIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EEC2EmRKS4_.exit.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %i.ay, %_ZNSt12_Vector_baseIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EEC2EmRKS4_.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !472
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.az
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEC2ERKS7_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2020

_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEC2ERKS7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EEC2EmRKS4_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.au, %_ZNSt12_Vector_baseIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EEC2EmRKS4_.exit.i.i ], [ %i.bb, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.av, align 8, !tbaa !467
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !462
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %i.bc, ptr %5, align 8, !tbaa !735
  %i.bd = call { ptr, i8 } @_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.be = ptrtoint ptr %.0.i.i.i to i64
  call void @_ZNK4llvm4bolt13MCPlusBuilder20setAnnotationOpValueERNS_6MCInstEjl(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i64 noundef %i.be)
  ret ptr %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt6MCPlus18MCSimpleAnnotationISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEE5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4boltlsERNS_11raw_ostreamERKSt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm4bolt6MCPlus18MCSimpleAnnotationISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEE6equalsERKNS1_12MCAnnotationE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !467  ; 3 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !471  ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !467
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !471  ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp eq i64 %i.h, %i.n
  br i1 %i.o, label %bb.b, label %_ZSteqIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit

bb.b:                                             ; preds = %bb.a
  %.not9.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not9.i.i.i.i.i, label %_ZSteqIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.b ] ; 3 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  %i.p = load i8, ptr %.0810.i.i.i.i.i, align 8, !tbaa !499
  %i.q = load i8, ptr %.011.i.i.i.i.i, align 8, !tbaa !499
  %i.r = icmp eq i8 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %i.t, %i.v
  %i.x = select i1 %i.r, i1 %i.w, i1 false        ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp ne ptr %i.y, %i.d
  %or.cond.not = select i1 %i.x, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i, label %_ZSteqIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit, !llvm.loop !2021

_ZSteqIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EEbRKSt6vectorIT_T0_ESA_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.a, %bb.b
  %i.aa = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.x, %.lr.ph.i.i.i.i.i ]
  ret i1 %i.aa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEE, i64 16), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !471  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !468
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #34
  br label %_ZNSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EED2Ev.exit

_ZNSt6vectorIN4llvm4bolt19StackLayoutModifier12WorklistItemESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEEE, i64 16), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !471  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !468
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #34, !inline_history !2022
  br label %_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEED2Ev.exit

_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationISt6vectorINS0_19StackLayoutModifier12WorklistItemESaIS5_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr.838") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2026, !nonnull !64, !align !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !190, !range !63, !noundef !64
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 8, !tbaa !191
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.44, i64 23) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2027)
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.0.i) #31, !noalias !2027
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !2027
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !alias.scope !2027
  store i32 34, ptr %0, align 8, !tbaa !191, !alias.scope !2027
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !292, !alias.scope !2027
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_23StackAllocationAnalysisENS_9BitVectorELb0ENS0_12StatePrinterIS3_EEE18getAnnotationIndexEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !121, !noalias !2027 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.p, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67, !noalias !2027 ; 4 uses
  %i.s = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !234, !noalias !2027
  %i.v = icmp eq i8 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !2027
  %i.y = icmp eq ptr %i.x, null
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aa = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !234, !noalias !2027
  %i.ad = icmp eq i8 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !2027
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ai = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.p, %.01318.i.i.i.lcssa.i.i
  %i.aj = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.aj, %i.p
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !235, !noalias !2027 ; 2 uses
  %i.ao = lshr i64 %i.an, 56
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.ap
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !235, !noalias !2027 ; 2 uses
  %i.at = lshr i64 %i.as, 56
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.au
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.an, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.as, %.critedge.i.i.i ]
  %i.av = shl i64 %.lcssa.i.i, 8
  %i.aw = ashr exact i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !alias.scope !2027
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.az, align 8, !alias.scope !2027
  store ptr %i.ay, ptr %0, align 8, !tbaa !142, !alias.scope !2027
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %bb.c, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIPKN4llvm6MCInstESt4pairIKS4_mESaIS7_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !129    ; 3 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !477  ; 2 uses
  %i.e = urem i64 %i.b, %i.d                      ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !478
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !160  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !157  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !129
  %i.l = icmp eq ptr %i.a, %i.k
  br i1 %i.l, label %.loopexit30, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.m = icmp eq ptr %i.a, %i.p
  br i1 %i.m, label %.loopexit30, label %.lr.ph.i.i, !llvm.loop !15

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.020.i.i = phi ptr [ %i.n, %bb.c ], [ %i.i, %bb.b ]
  %i.n = load ptr, ptr %.020.i.i, align 8, !tbaa !157 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.n, null
  br i1 %.not18.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !129  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = urem i64 %i.q, %i.d
  %.not19.i.i = icmp eq i64 %i.r, %i.e
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !15

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  %i.s = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %1, align 8, !tbaa !129
  store ptr %i.u, ptr %i.t, align 8, !tbaa !480
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 0, ptr %i.v, align 8, !tbaa !481
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i64, ptr %i.c, align 8, !tbaa !477
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !482
  %i.aa = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 noundef %i.x, i64 noundef %i.z, i64 noundef 1) #31 ; 2 uses
  %i.ab = extractvalue { i8, i64 } %i.aa, 0
  %i.ac = trunc i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.ad = extractvalue { i8, i64 } %i.aa, 1
  tail call void @_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ad)
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !477
  %i.af = urem i64 %i.b, %i.ae
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %.0.i19 = phi i64 [ %i.af, %bb.e ], [ %i.e, %.loopexit ]
  %i.ag = load ptr, ptr %0, align 8, !tbaa !478   ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.0.i19 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !160 ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !157
  store ptr %i.aj, ptr %i.s, align 8, !tbaa !157
  store ptr %i.s, ptr %i.ai, align 8, !tbaa !157
  br label %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !483 ; 3 uses
  store ptr %i.al, ptr %i.s, align 8, !tbaa !157
  store ptr %i.s, ptr %i.ak, align 8, !tbaa !483
  %.not11.i.i = icmp eq ptr %i.al, null
  br i1 %.not11.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.c, align 8, !tbaa !477
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !129
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = urem i64 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.aq
  store ptr %i.s, ptr %i.ar, align 8, !tbaa !160
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !160
  br label %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.j, %bb.g
  %i.as = load i64, ptr %i.y, align 8, !tbaa !482
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.y, align 8, !tbaa !482
  br label %.loopexit30

.loopexit30:                                      ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.s, %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.i, %bb.b ], [ %i.n, %bb.c ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !491

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !534
  br label %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4llvm6MCInstEmELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !491

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4llvm6MCInstEmELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #33 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIPKN4llvm6MCInstESt4pairIKS3_mESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4llvm6MCInstEmELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPKN4llvm6MCInstEmELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !483  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !483
end_hunk_20
begin_hunk_21_@"_ZZN4llvm4bolt14ShrinkWrapping15computeDomOrderEvENK3$_0clERKtS4_":bb.a
  %i.bg = urem i64 %i.bd, %i.bf                   ; 2 uses
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !478
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !157 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !129
  %i.bn = icmp eq ptr %i.ao, %i.bm
  br i1 %i.bn, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit, label %.lr.ph.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.o
  %i.bo = icmp eq ptr %i.ao, %i.br
  br i1 %i.bo, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !15

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.m, %bb.n
  %.020.i.i.i.i.i.i = phi ptr [ %i.bp, %bb.n ], [ %i.bk, %bb.m ]
  %i.bp = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !157 ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not18.i.i.i.i.i.i, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !129 ; 2 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = urem i64 %i.bs, %i.bf
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.bt, %i.bg
  br i1 %.not19.i.i.i.i.i.i, label %bb.n, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !15

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.o
  br label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit, !llvm.loop !15

_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit: ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i, %bb.j, %bb.k, %bb.l, %bb.m, %..loopexit_crit_edge21.i.i.i.i.i.i
  %.sroa.06.1.i.i.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i.i.i ], [ null, %bb.j ], [ %i.bk, %bb.m ], [ null, %bb.l ], [ %.sroa.06.0.i.i.i.i, %bb.k ], [ %i.bp, %bb.n ], [ null, %.lr.ph.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.838") align 8 %4, ptr noundef nonnull align 8 dereferenceable(208) %i.ag, ptr noundef nonnull align 8 dereferenceable(128) %i.av)
  %i.bu = load ptr, ptr %4, align 8, !tbaa !142
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !481 ; 2 uses
  %i.bx = and i64 %i.bw, 63
  %i.by = shl nuw i64 1, %i.bx
  %i.bz = lshr i64 %i.bw, 6
  %i.ca = and i64 %i.bz, 67108863
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !67
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !123
  %i.ce = and i64 %i.cd, %i.by
  %.not38 = icmp eq i64 %i.ce, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %.not38, label %bb.p, label %bb.x

bb.p:                                             ; preds = %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit
  %i.cf = load ptr, ptr %i.af, align 8, !tbaa !2088, !nonnull !64, !align !99 ; 5 uses
  %i.cg = load i16, ptr %2, align 2, !tbaa !195
  %i.ch = zext i16 %i.cg to i64
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !535 ; 2 uses
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !538
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !129 ; 4 uses
  %i.co = load i16, ptr %1, align 2, !tbaa !195
  %i.cp = zext i16 %i.co to i64
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !538
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !129
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 176
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !482
  %.not.not.i.i.i.i26 = icmp eq i64 %i.cw, 0
  br i1 %.not.not.i.i.i.i26, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cf, i64 168
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %bb.q
  %.sroa.06.0.in.i.i.i.i34 = phi ptr [ %i.cx, %bb.q ], [ %.sroa.06.0.i.i.i.i35, %bb.s ]
  %.sroa.06.0.i.i.i.i35 = load ptr, ptr %.sroa.06.0.in.i.i.i.i34, align 8, !tbaa !157 ; 4 uses
  %.not.i.i.i.i36 = icmp eq ptr %.sroa.06.0.i.i.i.i35, null
  br i1 %.not.i.i.i.i36, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit37, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i35, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !129
  %i.da = icmp eq ptr %i.cn, %i.cz
  br i1 %i.da, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit37, label %bb.r, !llvm.loop !17

bb.t:                                             ; preds = %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %i.cf, i64 152
  %i.dc = ptrtoint ptr %i.cn to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cf, i64 160
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !477 ; 2 uses
  %i.df = urem i64 %i.dc, %i.de                   ; 2 uses
  %i.dg = load ptr, ptr %i.db, align 8, !tbaa !478
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.df
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !160 ; 2 uses
  %.not.i.i.i.i.i.i27 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i27, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !157 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !129
  %i.dm = icmp eq ptr %i.cn, %i.dl
  br i1 %i.dm, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit37, label %.lr.ph.i.i.i.i.i.i28

bb.v:                                             ; preds = %bb.w
  %i.dn = icmp eq ptr %i.cn, %i.dq
  br i1 %i.dn, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit37, label %.lr.ph.i.i.i.i.i.i28, !llvm.loop !15

.lr.ph.i.i.i.i.i.i28:                             ; preds = %bb.u, %bb.v
  %.020.i.i.i.i.i.i29 = phi ptr [ %i.do, %bb.v ], [ %i.dj, %bb.u ]
  %i.do = load ptr, ptr %.020.i.i.i.i.i.i29, align 8, !tbaa !157 ; 4 uses
  %.not18.i.i.i.i.i.i30 = icmp eq ptr %i.do, null
  br i1 %.not18.i.i.i.i.i.i30, label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit37, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i28
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !129 ; 2 uses
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = urem i64 %i.dr, %i.de
  %.not19.i.i.i.i.i.i31 = icmp eq i64 %i.ds, %i.df
  br i1 %.not19.i.i.i.i.i.i31, label %bb.v, label %..loopexit_crit_edge21.i.i.i.i.i.i32, !llvm.loop !15

..loopexit_crit_edge21.i.i.i.i.i.i32:             ; preds = %bb.w
  br label %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit37, !llvm.loop !15

_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit37: ; preds = %bb.v, %.lr.ph.i.i.i.i.i.i28, %bb.r, %bb.s, %bb.t, %bb.u, %..loopexit_crit_edge21.i.i.i.i.i.i32
  %.sroa.06.1.i.i.i.i33 = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i.i.i32 ], [ null, %bb.r ], [ %i.dj, %bb.u ], [ null, %bb.t ], [ %.sroa.06.0.i.i.i.i35, %bb.s ], [ %i.do, %bb.v ], [ null, %.lr.ph.i.i.i.i.i.i28 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.838") align 8 %3, ptr noundef nonnull align 8 dereferenceable(208) %i.cf, ptr noundef nonnull align 8 dereferenceable(128) %i.cu)
  %i.dt = load ptr, ptr %3, align 8, !tbaa !142
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i33, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !481 ; 2 uses
  %i.dw = and i64 %i.dv, 63
  %i.dx = shl nuw i64 1, %i.dw
  %i.dy = lshr i64 %i.dv, 6
  %i.dz = and i64 %i.dy, 67108863
  %i.ea = load ptr, ptr %i.dt, align 8, !tbaa !67
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dz
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !123
  %i.ed = and i64 %i.ec, %i.dx
  %.not39 = icmp eq i64 %i.ed, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.not39, label %.sink.split, label %bb.x

.sink.split:                                      ; preds = %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit37, %bb.e
  %i.ee = load i16, ptr %1, align 2, !tbaa !195
  %i.ef = load i16, ptr %2, align 2, !tbaa !195
  %i.eg = icmp ult i16 %i.ee, %i.ef
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit37, %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit, %bb.g, %bb.f
  %.0 = phi i1 [ false, %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit37 ], [ false, %bb.f ], [ true, %bb.g ], [ true, %_ZN4llvm4bolt17DominatorAnalysisILb0EE14doesADominateBERKNS_6MCInstES5_.exit ], [ %i.eg, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm4bolt13MCPlusBuilder23getOrCreateAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEERT_RNS_6MCInstEjt(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::vector.1088", align 8  ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2) #31, !noalias !2091
  br i1 %i.a, label %bb.b, label %_ZN4llvm7ErrorOrIRKSt6vectorINS_4bolt14ShrinkWrapping12WorklistItemESaIS4_EEEaSEOS9_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !121, !noalias !2091 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.c, -1            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67, !noalias !2091 ; 4 uses
  %i.f = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !234, !noalias !2091
  %i.i = icmp eq i8 %i.h, 6
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !2091
  %i.l = icmp eq ptr %i.k, null
  %i.m = select i1 %i.i, i1 %i.l, i1 false
  br i1 %i.m, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.b, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.n = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.next.i.i ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !234, !noalias !2091
  %i.q = icmp eq i8 %i.p, 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !2091
  %i.t = icmp eq ptr %i.s, null
  %i.u = select i1 %i.q, i1 %i.t, i1 false
  br i1 %i.u, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.v = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.b
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.b ], [ %i.v, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.c, %.01318.i.i.i.lcssa.i.i
  %i.w = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1   ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.w, %i.c
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.c to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !235, !noalias !2091 ; 2 uses
  %i.ab = lshr i64 %i.aa, 56
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %.not.i3.i.i = icmp eq i32 %2, %i.ac
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.x, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.next.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !235, !noalias !2091 ; 2 uses
  %i.ag = lshr i64 %i.af, 56
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %.not.i.i.i = icmp eq i32 %2, %i.ah
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.aa, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.af, %.critedge.i.i.i ]
  %i.ai = shl i64 %.lcssa.i.i, 8
  %i.aj = ashr exact i64 %i.ai, 8
  %i.ak = add nuw nsw i64 %i.aj, 8
  %i.al = inttoptr i64 %i.ak to ptr
  br label %bb.d

_ZN4llvm7ErrorOrIRKSt6vectorINS_4bolt14ShrinkWrapping12WorklistItemESaIS4_EEEaSEOS9_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.am = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEERKT_RNS_6MCInstEjSA_t(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i16 noundef zeroext %3)
  %i.an = load ptr, ptr %4, align 8, !tbaa !570   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm7ErrorOrIRKSt6vectorINS_4bolt14ShrinkWrapping12WorklistItemESaIS4_EEEaSEOS9_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !567
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #34
  br label %_ZNSt6vectorIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EED2Ev.exit

_ZNSt6vectorIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EED2Ev.exit: ; preds = %_ZN4llvm7ErrorOrIRKSt6vectorINS_4bolt14ShrinkWrapping12WorklistItemESaIS4_EEEaSEOS9_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread, %_ZNSt6vectorIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EED2Ev.exit
  %.sroa.0.sroa.011.0.in = phi ptr [ %i.al, %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit.thread ], [ %i.am, %_ZNSt6vectorIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EED2Ev.exit ]
  ret ptr %.sroa.0.sroa.011.0.in
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm4bolt13MCPlusBuilder13addAnnotationISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEERKT_RNS_6MCInstEjSA_t(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i16 noundef zeroext %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !194
  %.not.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !157, !nonnull !64, !noundef !64 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.f = load i16, ptr %i.e, align 2, !tbaa !195
  %i.g = icmp eq i16 %4, %i.f
  br i1 %i.g, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit, label %bb.c, !llvm.loop !4

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = zext i16 %4 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !196  ; 2 uses
  %i.l = urem i64 %i.i, %i.k                      ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !197
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !160, !nonnull !64, !noundef !64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !157  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i16, ptr %i.q, align 2, !tbaa !195
  %i.s = icmp eq i16 %4, %i.r
  br i1 %i.s, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ]
  %i.t = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !157, !nonnull !64, !noundef !64 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i16, ptr %i.u, align 2, !tbaa !195  ; 2 uses
  %i.w = zext i16 %i.v to i64
  %i.x = urem i64 %i.w, %i.k
  %.not19.i.i.i.i.i = icmp eq i64 %i.x, %i.l
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.y = icmp eq i16 %4, %i.v
  br i1 %i.y, label %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !5

_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.p, %bb.d ], [ %i.t, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !208
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = add i64 %i.ab, 15
  %i.ad = and i64 %i.ac, -16                      ; 2 uses
  %i.ae = add i64 %i.ad, 32                       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !209
  %i.ah = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.e, label %bb.f, !prof !210

bb.e:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit
  %i.ai = inttoptr i64 %i.ae to ptr
  store ptr %i.ai, ptr %i.z, align 8, !tbaa !208
  %i.aj = inttoptr i64 %i.ad to ptr
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

bb.f:                                             ; preds = %_ZN4llvm4bolt13MCPlusBuilder22getAnnotationAllocatorEt.exit
  %i.ak = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.z, i64 noundef 32, i64 noundef 32, i8 4)
  br label %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit

_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi ptr [ %i.aj, %bb.e ], [ %i.ak, %bb.f ] ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm4bolt6MCPlus18MCSimpleAnnotationISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEE, i64 16), ptr %.0.i.i.i, align 8, !tbaa !55
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !566 ; 2 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !570   ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2EmRKS4_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit
  %i.as = sdiv exact i64 %i.ar, 40
  %i.at = icmp ugt i64 %i.as, 230584300921369395
  br i1 %i.at, label %bb.h, label %_ZNSt15__new_allocatorIN4llvm4bolt14ShrinkWrapping12WorklistItemEE8allocateEmPKv.exit.i.i.i.i.i, !prof !491

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

_ZNSt15__new_allocatorIN4llvm4bolt14ShrinkWrapping12WorklistItemEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.g
  %i.au = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #33
  br label %_ZNSt12_Vector_baseIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2EmRKS4_.exit.i.i

_ZNSt12_Vector_baseIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %_ZNSt15__new_allocatorIN4llvm4bolt14ShrinkWrapping12WorklistItemEE8allocateEmPKv.exit.i.i.i.i.i, %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit
  %i.av = phi ptr [ %i.au, %_ZNSt15__new_allocatorIN4llvm4bolt14ShrinkWrapping12WorklistItemEE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %_ZnwIN4llvm15MallocAllocatorELm4096ELm4096ELm128ELm8EEPvmRNS0_20BumpPtrAllocatorImplIT_XT0_EXT1_EXT2_EXT3_EEE.exit ] ; 5 uses
  store ptr %i.av, ptr %i.al, align 8, !tbaa !570
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !566
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ar
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !567
  %i.az = load ptr, ptr %3, align 8, !tbaa !627   ; 2 uses
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !627 ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.az, %i.ba
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEC2ERKS7_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt12_Vector_baseIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2EmRKS4_.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %i.av, %_ZNSt12_Vector_baseIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2EmRKS4_.exit.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %i.az, %_ZNSt12_Vector_baseIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2EmRKS4_.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.08.i.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !569
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.ba
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEC2ERKS7_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !28

_ZN4llvm4bolt6MCPlus18MCSimpleAnnotationISt6vectorINS0_14ShrinkWrapping12WorklistItemESaIS5_EEEC2ERKS7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2EmRKS4_.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.av, %_ZNSt12_Vector_baseIN4llvm4bolt14ShrinkWrapping12WorklistItemESaIS3_EEC2EmRKS4_.exit.i.i ], [ %i.bc, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.aw, align 8, !tbaa !566
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !462
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %i.bd, ptr %5, align 8, !tbaa !735
  %i.be = call { ptr, i8 } @_ZNSt10_HashtableIPN4llvm4bolt6MCPlus12MCAnnotationES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ESt4hashIS4_ENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIS4_S4_NS6_10_AllocNodeISaINS6_10_Hash_nodeIS4_Lb0EEEEEEEESt4pairINS6_14_Node_iteratorIS4_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.bf = ptrtoint ptr %.0.i.i.i to i64
  call void @_ZNK4llvm4bolt13MCPlusBuilder20setAnnotationOpValueERNS_6MCInstEjl(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i64 noundef %i.bf)
end_hunk_21
begin_hunk_22_@_ZZN4llvm4bolt17DominatorAnalysisILb0EE23getDominanceFrontierForERKNS_6MCInstEENKUlNS0_12ProgramPointEE_clES6_:bb.a
bb.a:
  %3 = alloca %"class.llvm::bolt::ProgramPoint", align 8 ; 3 uses
  %4 = alloca %"class.llvm::ErrorOr.838", align 8 ; 8 uses
  store i8 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8, !tbaa !2131   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  %i.c = icmp eq i8 %1, 0
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2133)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.e = load i64, ptr %i.d, align 8, !tbaa !156, !noalias !2134
  %.not.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.not.i.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %i.f, %bb.c ], [ %.sroa.06.0.i.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !157, !noalias !2134 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127, !noalias !2134
  %i.i = icmp eq ptr %2, %i.h
  br i1 %i.i, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i, label %bb.d, !llvm.loop !2

bb.f:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = ptrtoint ptr %2 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !158, !noalias !2134 ; 2 uses
  %i.n = urem i64 %i.k, %i.m                      ; 2 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !159, !noalias !2134
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !160, !noalias !2134 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !157, !noalias !2134 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !127, !noalias !2134
  %i.u = icmp eq ptr %2, %i.t
  br i1 %i.u, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.v = icmp eq ptr %2, %i.y
  br i1 %i.v, label %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %bb.h
  %.020.i.i.i.i.i.i = phi ptr [ %i.w, %bb.h ], [ %i.r, %bb.g ]
  %i.w = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !157, !noalias !2134 ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not18.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !127, !noalias !2134 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = urem i64 %i.z, %i.m
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.aa, %i.n
  br i1 %.not19.i.i.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !3

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.i
  br label %.loopexit.i.i, !llvm.loop !3

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i.i.i, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !alias.scope !2134
  %i.ad = or i8 %i.ac, 1
  store i8 %i.ad, ptr %i.ab, align 8, !alias.scope !2134
  store i32 34, ptr %4, align 8, !tbaa !191, !alias.scope !2134
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit

_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.e ], [ %i.r, %bb.g ], [ %i.w, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i.i, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !alias.scope !2134
  %i.ah = and i8 %i.ag, -2
  store i8 %i.ah, ptr %i.af, align 8, !alias.scope !2134
  store ptr %i.ae, ptr %4, align 8, !tbaa !142, !alias.scope !2134
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit

bb.j:                                             ; preds = %bb.a
  call void @_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.838") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %2)
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit: ; preds = %.loopexit.i.i, %_ZNKSt13unordered_mapIPKN4llvm4bolt16BinaryBasicBlockENS0_9BitVectorESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit.i.i, %bb.j
  %i.ai = load ptr, ptr %4, align 8, !tbaa !142
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !2135, !nonnull !64, !align !99
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !123 ; 2 uses
  %i.am = and i64 %i.al, 63
  %i.an = shl nuw i64 1, %i.am
  %i.ao = lshr i64 %i.al, 6
  %i.ap = and i64 %i.ao, 67108863
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !67
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !123
  %i.at = and i64 %i.as, %i.an
  %.not = icmp eq i64 %i.at, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !2136, !nonnull !64, !align !99
  %i.aw = call noundef zeroext i1 @_ZN4llvm9SetVectorINS_4bolt12ProgramPointENS_11SmallVectorIS2_Lj4EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj4EE6insertERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit, %bb.k
  %.sink = phi i64 [ 24, %bb.k ], [ 32, %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtENS0_12ProgramPointE.exit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !588, !nonnull !64
  store i8 1, ptr %i.ay, align 1, !tbaa !500
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE10getStateAtERKNS_6MCInstE(ptr dead_on_unwind noalias writable sret(%"class.llvm::ErrorOr.838") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 8 dereferenceable(128) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !537, !nonnull !64, !align !99
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !190, !range !63, !noundef !64
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.0.pre.i = load i32, ptr %i.e, align 8, !tbaa !191
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZN4llvm4bolt13MCPlusBuilder26getOrCreateAnnotationIndexENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr nonnull @.str.45, i64 17) ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.e, align 8
  br label %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit

_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i = phi i32 [ %.0.pre.i, %._crit_edge.i ], [ %i.i, %bb.b ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2139)
  %i.j = tail call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder13hasAnnotationERKNS_6MCInstEj(ptr noundef nonnull align 8 dereferenceable(536) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %.0.i) #31, !noalias !2139
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #36
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !2139
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 8, !alias.scope !2139
  store i32 34, ptr %0, align 8, !tbaa !191, !alias.scope !2139
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !292, !alias.scope !2139
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

bb.d:                                             ; preds = %_ZNK4llvm4bolt16DataflowAnalysisINS0_17DominatorAnalysisILb0EEENS_9BitVectorELb0ENS0_12StatePrinterIS4_EEE18getAnnotationIndexEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !121, !noalias !2139 ; 4 uses
  %.01317.i.i.i.i.i = add i32 %i.p, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67, !noalias !2139 ; 4 uses
  %i.s = zext nneg i32 %.01317.i.i.i.i.i to i64   ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !234, !noalias !2139
  %i.v = icmp eq i8 %i.u, 6
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !2139
  %i.y = icmp eq ptr %i.x, null
  %i.z = select i1 %i.v, i1 %i.y, i1 false
  br i1 %i.z, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, label %.backedge.i.i.i.i.i

.backedge.i.i.i.i.i:                              ; preds = %bb.d, %.backedge.i.i.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.backedge.i.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.aa = icmp sgt i64 %indvars.iv.i.i, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !234, !noalias !2139
  %i.ad = icmp eq i8 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !2139
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, label %.backedge.i.i.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i: ; preds = %.backedge.i.i.i.i.i
  %i.ai = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i: ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i, %bb.d
  %.01318.i.i.i.lcssa.i.i = phi i32 [ %.01317.i.i.i.i.i, %bb.d ], [ %i.ai, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.loopexit.i.i ] ; 2 uses
  %.not.i.not.i.i.i = icmp ne i32 %i.p, %.01318.i.i.i.lcssa.i.i
  %i.aj = add nuw i32 %.01318.i.i.i.lcssa.i.i, 1  ; 2 uses
  %.not1324.i.i.i = icmp ult i32 %i.aj, %i.p
  tail call void @llvm.assume(i1 %.not.i.not.i.i.i)
  tail call void @llvm.assume(i1 %.not1324.i.i.i)
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.p to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !235, !noalias !2139 ; 2 uses
  %i.ao = lshr i64 %i.an, 56
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.not.i3.i.i = icmp eq i32 %.0.i, %i.ap
  br i1 %.not.i3.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i, %.critedge.i.i.i
  %indvars.iv.i4.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.critedge.i.i.i ], [ %i.ak, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ]
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i4.i.i, 1 ; 3 uses
  %exitcond.not.i.i.i = icmp ne i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i)
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !235, !noalias !2139 ; 2 uses
  %i.at = lshr i64 %i.as, 56
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.not.i.i.i = icmp eq i32 %.0.i, %i.au
  br i1 %.not.i.i.i, label %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i, label %.critedge.i.i.i

_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i: ; preds = %.critedge.i.i.i, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i
  %.lcssa.i.i = phi i64 [ %i.an, %_ZNK4llvm4bolt13MCPlusBuilder25getFirstAnnotationOpIndexERKNS_6MCInstE.exit.i.i.i ], [ %i.as, %.critedge.i.i.i ]
  %i.av = shl i64 %.lcssa.i.i, 8
  %i.aw = ashr exact i64 %i.av, 8
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 8, !alias.scope !2139
  %i.bb = and i8 %i.ba, -2
  store i8 %i.bb, ptr %i.az, align 8, !alias.scope !2139
  store ptr %i.ay, ptr %0, align 8, !tbaa !142, !alias.scope !2139
  br label %_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit

_ZNK4llvm4bolt13MCPlusBuilder18tryGetAnnotationAsINS_9BitVectorEEENS_7ErrorOrIRKT_EERKNS_6MCInstEj.exit: ; preds = %bb.c, %_ZNK4llvm4bolt13MCPlusBuilder15getAnnotationAsINS_9BitVectorEEERT_RKNS_6MCInstEj.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4bolt12ProgramPointENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !578, !noalias !2144 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !577, !noalias !2144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !576, !noalias !2144 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !235  ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  %i.m = lshr i32 %i.l, 4
  %i.n = lshr i32 %i.l, 9
  %i.o = xor i32 %i.m, %i.n
  %.024.i = and i32 %i.o, %i.h                    ; 3 uses
  %i.p = zext nneg i32 %.024.i to i64             ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !191
  %i.u = and i32 %.024.i, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !289

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.x, %i.h                      ; 3 uses
  %i.y = zext i32 %.0.i to i64                    ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.y ; 2 uses
  %i.aa = lshr i64 %i.y, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !191
  %i.ad = and i32 %.0.i, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph.i, label %.loopexit, !prof !290, !llvm.loop !39

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ag = phi ptr [ %i.z, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !235
  %i.aj = icmp eq ptr %i.j, %i.ai
  br i1 %i.aj, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4bolt12ProgramPointENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.c, !prof !210

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.z, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !740
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !575
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4bolt12ProgramPointENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !210

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4bolt12ProgramPointENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4bolt12ProgramPointENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !740
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !577
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !578
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4bolt12ProgramPointENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4bolt12ProgramPointENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !191
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !191
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !575
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !613
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4bolt12ProgramPointENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4bolt12ProgramPointENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4bolt12ProgramPointENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4bolt12ProgramPointENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.ag, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4bolt12ProgramPointENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4bolt12ProgramPointENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !578, !noalias !2149 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !577, !noalias !2149 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !576, !noalias !2149 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !235  ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = lshr i32 %i.k, 4
  %i.m = lshr i32 %i.k, 9
  %i.n = xor i32 %i.l, %i.m
  %.024 = and i32 %i.n, %i.g                      ; 3 uses
  %i.o = zext nneg i32 %.024 to i64               ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !191
  %i.t = and i32 %.024, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !289

bb.c:                                             ; preds = %.lr.ph
  %i.w = add nuw i32 %.025, 1
  %.0 = and i32 %i.w, %i.g                        ; 3 uses
  %i.x = zext i32 %.0 to i64                      ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !191
  %i.ac = and i32 %.0, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph, label %.thread, !prof !290, !llvm.loop !39

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.af = phi ptr [ %i.y, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
end_hunk_22
