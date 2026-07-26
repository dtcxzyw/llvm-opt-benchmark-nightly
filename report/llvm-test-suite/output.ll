inline.NumInlined: 14
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@save_column:bb.a
  br i1 %i.az, label %._crit_edge45, label %.lr.ph44.new

.lr.ph44.new:                                     ; preds = %.prol.loopexit, %bb.f
  %indvars.iv48 = phi i64 [ %indvars.iv.next49.1, %bb.f ], [ %indvars.iv48.unr, %.prol.loopexit ] ; 4 uses
  %.03141 = phi ptr [ %.132.1, %bb.f ], [ %.03141.unr, %.prol.loopexit ] ; 3 uses
  %.03340 = phi ptr [ %.134.1, %bb.f ], [ %.03340.unr, %.prol.loopexit ] ; 3 uses
  %i.ba = getelementptr inbounds [2 x i8], ptr %i.an, i64 %indvars.iv48 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !26
  %i.bc = sext i16 %i.bb to i32
  %.not = icmp eq i32 %1, %i.bc
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph44.new
  %i.bd = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %indvars.iv48
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %.03340, i64 2
  store i16 %i.be, ptr %.03340, align 2, !tbaa !26
  %i.bg = load i16, ptr %i.ba, align 2, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %.03141, i64 2
  store i16 %i.bg, ptr %.03141, align 2, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph44.new, %bb.c
  %.134 = phi ptr [ %i.bf, %bb.c ], [ %.03340, %.lr.ph44.new ] ; 3 uses
  %.132 = phi ptr [ %i.bh, %bb.c ], [ %.03141, %.lr.ph44.new ] ; 3 uses
  %indvars.iv.next49 = add nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.an, i64 %indvars.iv.next49 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !26
  %i.bk = sext i16 %i.bj to i32
  %.not.1 = icmp eq i32 %1, %i.bk
  br i1 %.not.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %indvars.iv.next49
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %.134, i64 2
  store i16 %i.bm, ptr %.134, align 2, !tbaa !26
  %i.bo = load i16, ptr %i.bi, align 2, !tbaa !26
  %i.bp = getelementptr inbounds nuw i8, ptr %.132, i64 2
  store i16 %i.bo, ptr %.132, align 2, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.134.1 = phi ptr [ %i.bn, %bb.e ], [ %.134, %bb.d ] ; 2 uses
  %.132.1 = phi ptr [ %i.bp, %bb.e ], [ %.132, %bb.d ]
  %indvars.iv.next49.1 = add nsw i64 %indvars.iv48, 2 ; 2 uses
  %exitcond52.not.1 = icmp eq i64 %indvars.iv.next49.1, %wide.trip.count51
  br i1 %exitcond52.not.1, label %._crit_edge45, label %.lr.ph44.new, !llvm.loop !79

._crit_edge45:                                    ; preds = %bb.f, %.prol.loopexit
  %.134.lcssa = phi ptr [ %.134.lcssa.unr, %.prol.loopexit ], [ %.134.1, %bb.f ]
  %i.bq = trunc i32 %spec.select.lcssa to i16
  %i.br = load ptr, ptr @tally, align 8, !tbaa !23
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.br, i64 %i.ai
  store i16 %i.bq, ptr %i.bs, align 2, !tbaa !26
  %i.bt = getelementptr inbounds i8, ptr %.134.lcssa, i64 -2
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !26
  %i.bv = load i16, ptr %i.ag, align 2, !tbaa !26
  %i.bw = add i16 %i.bu, 1
  %i.bx = sub i16 %i.bw, %i.bv
  %i.by = load ptr, ptr @width, align 8, !tbaa !23
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.ai
  store i16 %i.bx, ptr %i.bz, align 2, !tbaa !26
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %._crit_edge45
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -32768, 32768) i32 @matching_state(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @order, align 8, !tbaa !23 ; 3 uses
  %i.b = sext i32 %0 to i64
  %i.c = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !26   ; 2 uses
  %i.e = sext i16 %i.d to i32
  %i.f = load i32, ptr @nstates, align 4, !tbaa !4
  %.not = icmp sgt i32 %i.f, %i.e
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @tally, align 8, !tbaa !23 ; 3 uses
  %i.h = sext i16 %i.d to i64                     ; 4 uses
  %i.i = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !26
  %.fr47 = freeze i16 %i.j                        ; 4 uses
  %i.k = load ptr, ptr @width, align 8, !tbaa !23 ; 3 uses
  %i.l = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.h
  %i.m = load i16, ptr %i.l, align 2, !tbaa !26   ; 2 uses
  %i.n = icmp sgt i16 %.fr47, 0
  %i.o = load ptr, ptr @tos, align 8              ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.h
  %i.q = load ptr, ptr @froms, align 8            ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.h
  br i1 %i.n, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.b
  %i.s = zext nneg i16 %.fr47 to i64
  %i.t = icmp sgt i32 %0, 0
  br i1 %i.t, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.split.us.preheader
  %i.u = zext nneg i32 %0 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %._crit_edge.us
  %.in = phi i64 [ %i.u, %.lr.ph ], [ %i.v, %._crit_edge.us ]
  %i.v = add nsw i64 %.in, -1                     ; 3 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !26   ; 2 uses
  %i.y = sext i16 %i.x to i64                     ; 4 uses
  %i.z = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !26
  %.not32.us = icmp eq i16 %i.aa, %i.m
  br i1 %.not32.us, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.y
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !26
  %.not33.us = icmp eq i16 %i.ac, %.fr47
  br i1 %.not33.us, label %.preheader.us, label %.loopexit

bb.e:                                             ; preds = %.preheader.us, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !26
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !26
  %.not34.us = icmp eq i16 %i.ae, %i.ag
  br i1 %.not34.us, label %bb.f, label %._crit_edge.us

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.ar, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !26
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load i16, ptr %i.al, align 2, !tbaa !26
  %.not35.us = icmp eq i16 %i.aj, %i.am
  br i1 %.not35.us, label %bb.g, label %._crit_edge.us

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %i.an, label %bb.e, label %.loopexit.split.loop.exit39, !llvm.loop !90

.preheader.us:                                    ; preds = %bb.d
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.y
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !23
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.y
  br label %bb.e

._crit_edge.us:                                   ; preds = %bb.e, %bb.f
  %i.as = trunc nuw i64 %i.v to i32
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.c, label %.loopexit, !llvm.loop !91

.split:                                           ; preds = %bb.b
  %i.au = icmp sgt i32 %0, 0
  br i1 %i.au, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.split
  %i.av = zext nneg i32 %0 to i64
  %i.aw = getelementptr [2 x i8], ptr %i.a, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 -2
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !26 ; 2 uses
  %i.az = sext i16 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !26
  %.not32 = icmp eq i16 %i.bb, %i.m
  br i1 %.not32, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.az
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !26
  %.not33 = icmp eq i16 %i.bd, %.fr47
  br i1 %.not33, label %.loopexit.split.loop.exit39, label %.loopexit

.loopexit.split.loop.exit39:                      ; preds = %bb.g, %bb.i
  %.us-phi46 = phi i16 [ %i.ay, %bb.i ], [ %i.x, %bb.g ]
  %i.be = sext i16 %.us-phi46 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.us, %bb.c, %bb.d, %.split.us.preheader, %.loopexit.split.loop.exit39, %bb.i, %bb.h, %.split, %bb.a
  %.028 = phi i32 [ -1, %bb.a ], [ %i.be, %.loopexit.split.loop.exit39 ], [ -1, %bb.i ], [ -1, %bb.h ], [ -1, %.split ], [ -1, %.split.us.preheader ], [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %._crit_edge.us ]
  ret i32 %.028
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 32767) i32 @pack_vector(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @order, align 8, !tbaa !23
  %i.b = sext i32 %0 to i64                       ; 3 uses
  %i.c = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !26
  %i.e = load ptr, ptr @tally, align 8, !tbaa !23
  %i.f = sext i16 %i.d to i64                     ; 3 uses
  %i.g = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2, !tbaa !26   ; 7 uses
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @berror(ptr noundef nonnull @.str.34) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = load ptr, ptr @froms, align 8, !tbaa !39
  %i.k = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.f
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23   ; 5 uses
  %i.m = load ptr, ptr @tos, align 8, !tbaa !39
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.f
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23   ; 3 uses
  %i.p = load i32, ptr @lowzero, align 4, !tbaa !4
  %i.q = load i16, ptr %i.l, align 2, !tbaa !26
  %i.r = sext i16 %i.q to i32
  %i.s = sub nsw i32 %i.p, %i.r                   ; 4 uses
  %i.t = icmp slt i32 %i.s, 32767
  br i1 %i.t, label %.preheader51.lr.ph, label %._crit_edge60

.preheader51.lr.ph:                               ; preds = %bb.c
  %i.u = icmp sgt i16 %i.h, 0                     ; 2 uses
  %i.v = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %i.u, label %.preheader51.us.preheader, label %.preheader51.lr.ph.split

.preheader51.us.preheader:                        ; preds = %.preheader51.lr.ph
  %i.w = zext nneg i16 %i.h to i64
  br label %.preheader51.us

.preheader51.us:                                  ; preds = %.preheader51.us.preheader, %bb.h
  %.03959.us = phi i32 [ %i.ao, %bb.h ], [ %i.s, %.preheader51.us.preheader ] ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader51.us, %bb.f
  %indvars.iv86 = phi i64 [ 0, %.preheader51.us ], [ %indvars.iv.next87, %bb.f ] ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv86
  %i.y = load i16, ptr %i.x, align 2, !tbaa !26
  %i.z = sext i16 %i.y to i32
  %i.aa = add nsw i32 %.03959.us, %i.z            ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 32767
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @fatals(ptr noundef nonnull @.str.35, i32 noundef 32767, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = load ptr, ptr @table, align 8, !tbaa !23
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !26
  %.not47.us = icmp eq i16 %i.af, 0               ; 3 uses
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.ag = icmp samesign ult i64 %indvars.iv.next87, %i.w
  %i.ah = select i1 %.not47.us, i1 %i.ag, i1 false
  br i1 %i.ah, label %bb.d, label %..preheader50_crit_edge.us, !llvm.loop !126

bb.g:                                             ; preds = %.lr.ph56.us, %bb.g
  %indvars.iv89 = phi i64 [ 0, %.lr.ph56.us ], [ %indvars.iv.next90, %bb.g ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv89
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !26
  %i.ak = sext i16 %i.aj to i32
  %i.al = icmp ne i32 %.03959.us, %i.ak           ; 2 uses
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.am = icmp slt i64 %indvars.iv.next90, %i.b
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %bb.g, label %._crit_edge.us, !llvm.loop !127

._crit_edge.us:                                   ; preds = %bb.g, %..preheader50_crit_edge.us
  %.lcssa.us = phi i1 [ %.not47.us, %..preheader50_crit_edge.us ], [ %i.al, %bb.g ]
  br i1 %.lcssa.us, label %.preheader49, label %bb.h

bb.h:                                             ; preds = %._crit_edge.us
  %i.ao = add nsw i32 %.03959.us, 1               ; 2 uses
  %exitcond92.not = icmp eq i32 %i.ao, 32767
  br i1 %exitcond92.not, label %._crit_edge60, label %.preheader51.us, !llvm.loop !128

..preheader50_crit_edge.us:                       ; preds = %bb.f
  %i.ap = and i1 %.not47.us, %i.v
  br i1 %i.ap, label %.lr.ph56.us, label %._crit_edge.us

.lr.ph56.us:                                      ; preds = %..preheader50_crit_edge.us
  %i.aq = load ptr, ptr @pos, align 8, !tbaa !23
  br label %bb.g

.preheader51.lr.ph.split:                         ; preds = %.preheader51.lr.ph
  %i.ar = load ptr, ptr @pos, align 8
  br i1 %i.v, label %.preheader51.us62, label %.preheader49.thread

.preheader49.thread:                              ; preds = %.preheader51.lr.ph.split
  %.pre105 = load ptr, ptr @table, align 8, !tbaa !23
  br label %.preheader

.preheader51.us62:                                ; preds = %.preheader51.lr.ph.split, %bb.j
  %.03959.us63 = phi i32 [ %i.ay, %bb.j ], [ %i.s, %.preheader51.lr.ph.split ] ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader51.us62, %bb.i
  %indvars.iv = phi i64 [ 0, %.preheader51.us62 ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = load i16, ptr %i.as, align 2, !tbaa !26
  %i.au = sext i16 %i.at to i32
  %i.av = icmp ne i32 %.03959.us63, %i.au         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = icmp slt i64 %indvars.iv.next, %i.b
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %i.ax, label %bb.i, label %._crit_edge.us67, !llvm.loop !127

bb.j:                                             ; preds = %._crit_edge.us67
  %i.ay = add nsw i32 %.03959.us63, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ay, 32767
  br i1 %exitcond.not, label %._crit_edge60, label %.preheader51.us62, !llvm.loop !128

._crit_edge.us67:                                 ; preds = %bb.i
  br i1 %i.av, label %.preheader49, label %bb.j

.preheader49:                                     ; preds = %._crit_edge.us67, %._crit_edge.us
  %.us-phi = phi i32 [ %.03959.us, %._crit_edge.us ], [ %.03959.us63, %._crit_edge.us67 ] ; 6 uses
  %.us-phi61 = phi i32 [ %i.aa, %._crit_edge.us ], [ undef, %._crit_edge.us67 ]
  %.pre = load ptr, ptr @table, align 8, !tbaa !23 ; 6 uses
  br i1 %i.u, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader49
  %i.az = load ptr, ptr @check, align 8, !tbaa !23 ; 3 uses
  %i.ba = icmp eq i16 %i.h, 1
  br i1 %i.ba, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %1 = and i16 %i.h, 32766
  %unroll_iter = zext nneg i16 %1 to i64
  br label %bb.k

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.k
  %2 = and i16 %i.h, 1
  %lcmp.mod.not = icmp eq i16 %2, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv93.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next94.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod133 = trunc i16 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv93.epil.init ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !26
  %i.bd = sext i16 %i.bc to i32
  %i.be = add nsw i32 %.us-phi, %i.bd             ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv93.epil.init
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !26
  %i.bh = sext i32 %i.be to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [2 x i8], ptr %.pre, i64 %i.bh
  store i16 %i.bg, ptr %i.bi, align 2, !tbaa !26
  %i.bj = load i16, ptr %i.bb, align 2, !tbaa !26
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.bh
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !26
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader49.thread, %.preheader49
  %.pre107 = phi ptr [ %.pre, %.preheader49 ], [ %.pre105, %.preheader49.thread ], [ %.pre, %.preheader.loopexit.unr-lcssa ], [ %.pre, %.epil.preheader ] ; 2 uses
  %.us-phi106 = phi i32 [ %.us-phi, %.preheader49 ], [ %i.s, %.preheader49.thread ], [ %.us-phi, %.preheader.loopexit.unr-lcssa ], [ %.us-phi, %.epil.preheader ] ; 2 uses
  %.243.lcssa = phi i32 [ %.us-phi61, %.preheader49 ], [ undef, %.preheader49.thread ], [ %i.cb, %.preheader.loopexit.unr-lcssa ], [ %i.be, %.epil.preheader ] ; 2 uses
  %lowzero.promoted = load i32, ptr @lowzero, align 4, !tbaa !4
  %i.bl = sext i32 %lowzero.promoted to i64       ; 2 uses
  %i.bm = getelementptr inbounds [2 x i8], ptr %.pre107, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !26
  %.not74 = icmp eq i16 %i.bn, 0
  br i1 %.not74, label %bb.l, label %.lr.ph75

bb.k:                                             ; preds = %bb.k, %.lr.ph.new
  %indvars.iv93 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next94.1, %bb.k ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.k ]
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv93 ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !26
  %i.bq = sext i16 %i.bp to i32
  %i.br = add nsw i32 %.us-phi, %i.bq
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv93
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !26
  %i.bu = sext i32 %i.br to i64                   ; 2 uses
  %i.bv = getelementptr inbounds [2 x i8], ptr %.pre, i64 %i.bu
  store i16 %i.bt, ptr %i.bv, align 2, !tbaa !26
  %i.bw = load i16, ptr %i.bo, align 2, !tbaa !26
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.bu
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !26
  %indvars.iv.next94 = or disjoint i64 %indvars.iv93, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.next94 ; 2 uses
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !26
  %i.ca = sext i16 %i.bz to i32
  %i.cb = add nsw i32 %.us-phi, %i.ca             ; 2 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.next94
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !26
  %i.ce = sext i32 %i.cb to i64                   ; 2 uses
  %i.cf = getelementptr inbounds [2 x i8], ptr %.pre, i64 %i.ce
  store i16 %i.cd, ptr %i.cf, align 2, !tbaa !26
  %i.cg = load i16, ptr %i.by, align 2, !tbaa !26
  %i.ch = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.ce
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !26
  %indvars.iv.next94.1 = add nuw nsw i64 %indvars.iv93, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.k, !llvm.loop !129

.lr.ph75:                                         ; preds = %.preheader, %.lr.ph75
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %.lr.ph75 ], [ %i.bl, %.preheader ]
  %indvars.iv.next98 = add nsw i64 %indvars.iv97, 1 ; 3 uses
  %i.ci = getelementptr inbounds [2 x i8], ptr %.pre107, i64 %indvars.iv.next98
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !26
  %.not = icmp eq i16 %i.cj, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph75, !llvm.loop !130

._crit_edge:                                      ; preds = %.lr.ph75
  %i.ck = trunc nsw i64 %indvars.iv.next98 to i32
  store i32 %i.ck, ptr @lowzero, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %.preheader
  %i.cl = load i32, ptr @high, align 4, !tbaa !4
  %i.cm = icmp sgt i32 %.243.lcssa, %i.cl
  br i1 %i.cm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %.243.lcssa, ptr @high, align 4, !tbaa !4
  br label %bb.n

._crit_edge60:                                    ; preds = %bb.j, %bb.h, %bb.c
  tail call void @berror(ptr noundef nonnull @.str.34) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %._crit_edge60
  %.0 = phi i32 [ 0, %._crit_edge60 ], [ %.us-phi106, %bb.m ], [ %.us-phi106, %bb.l ]
  ret i32 %.0
}

declare void @berror(ptr noundef) local_unnamed_addr #5

declare void @fatals(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @rewind(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 omnipotent char", !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p2 _ZTS4core", !15, i64 0}
!15 = !{!"any p2 pointer", !10, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTS4core", !10, i64 0}
!18 = !{!19, !17, i64 0}
!19 = !{!"core", !17, i64 0, !17, i64 8, !20, i64 16, !20, i64 18, !20, i64 20, !6, i64 22}
!20 = !{!"short", !6, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 short", !10, i64 0}
!25 = distinct !{!25, !22}
!26 = !{!20, !20, i64 0}
!27 = distinct !{!27, !22}
!28 = distinct !{!28, !22}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !22}
!32 = !{!33, !33, i64 0}
!33 = !{!"p2 omnipotent char", !15, i64 0}
!34 = !{!6, !6, i64 0}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !22}
!37 = distinct !{!37, !22}
!38 = distinct !{!38, !22}
!39 = !{!40, !40, i64 0}
!40 = !{!"p2 short", !15, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"p2 _ZTS6shifts", !15, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 _ZTS6shifts", !10, i64 0}
end_hunk_0
