inline.NumInlined: 10
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@resolve_sr_conflict:bb.a
  %.not13.i.epil = icmp eq i16 %i.em, 0
  br i1 %.not13.i.epil, label %flush_shift.exit, label %bb.al

bb.al:                                            ; preds = %.epil.preheader115
  %i.en = sext i16 %i.em to i64
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !29
  %i.eq = sext i16 %i.ep to i64
  %i.er = icmp eq i64 %indvars.iv, %i.eq
  br i1 %i.er, label %bb.am, label %flush_shift.exit

bb.am:                                            ; preds = %bb.al
  store i16 0, ptr %i.el, align 2, !tbaa !29
  br label %flush_shift.exit

flush_shift.exit:                                 ; preds = %flush_shift.exit.loopexit.unr-lcssa, %bb.am, %bb.al, %.epil.preheader115, %flush_shift.exit87, %.thread89, %bb.h, %bb.g, %bb.aj, %bb.ak, %bb.s, %bb.c, %bb.b
  %.1 = phi ptr [ %.095, %bb.b ], [ %.095, %bb.s ], [ %i.ek, %bb.ak ], [ %.095, %bb.aj ], [ %.095, %bb.c ], [ %.095, %bb.g ], [ %.095, %bb.h ], [ %.095, %flush_shift.exit87 ], [ %.095, %.thread89 ], [ %.095, %.epil.preheader115 ], [ %.095, %bb.al ], [ %.095, %bb.am ], [ %.095, %flush_shift.exit.loopexit.unr-lcssa ] ; 2 uses
  %i.es = shl i32 %.06292, 1                      ; 2 uses
  %i.et = icmp eq i32 %i.es, 0
  %.167.idx = select i1 %i.et, i64 4, i64 0       ; 2 uses
  %.167 = getelementptr inbounds nuw i8, ptr %.06690, i64 %.167.idx
  %.165 = getelementptr inbounds nuw i8, ptr %.06491, i64 %.167.idx
  %.163 = tail call i32 @llvm.umax.i32(i32 %i.es, i32 1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eu = load i32, ptr @ntokens, align 4, !tbaa !4
  %i.ev = sext i32 %i.eu to i64
  %i.ew = icmp slt i64 %indvars.iv.next, %i.ev
  br i1 %i.ew, label %bb.b, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %flush_shift.exit, %bb.a
  %.0.lcssa = phi ptr [ %i.f, %bb.a ], [ %.1, %flush_shift.exit ]
  %i.ex = ptrtoint ptr %.0.lcssa to i64           ; 2 uses
  %i.ey = ptrtoint ptr %i.f to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = lshr exact i64 %i.ez, 1
  %i.fb = trunc i64 %i.fa to i16                  ; 2 uses
  store i16 %i.fb, ptr %i.e, align 2, !tbaa !50
  %.not = icmp eq i16 %i.fb, 0
  br i1 %.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %._crit_edge
  %i.fc = ptrtoint ptr %i.e to i64
  %i.fd = sub i64 %i.ex, %i.fc                    ; 2 uses
  %i.fe = trunc i64 %i.fd to i32
  %i.ff = tail call ptr (i32, ...) @mallocate(i32 noundef %i.fe) #14 ; 2 uses
  %i.fg = load ptr, ptr @err_table, align 8, !tbaa !13
  %i.fh = sext i32 %0 to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.fh
  store ptr %i.ff, ptr %i.fi, align 8, !tbaa !52
  %sext = shl i64 %i.fd, 32
  %i.fj = ashr exact i64 %sext, 32
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.ff, ptr nonnull align 2 %i.e, i64 %i.fj, i1 false)
  br label %bb.ap

bb.ao:                                            ; preds = %._crit_edge
  %i.fk = load ptr, ptr @err_table, align 8, !tbaa !13
  %i.fl = sext i32 %0 to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.fl
  store ptr null, ptr %i.fm, align 8, !tbaa !52
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @log_resolution(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.b = load ptr, ptr @LAruleno, align 8, !tbaa !27
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !29
  %i.f = sext i16 %i.e to i32
  %i.g = load ptr, ptr @tags, align 8, !tbaa !46
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.3, i32 noundef %0, i32 noundef %i.f, ptr noundef %i.j, ptr noundef %3) #14 ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @flush_shift(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @shift_table, align 8, !tbaa !20
  %i.b = sext i32 %0 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.f = load i16, ptr %i.e, align 2, !tbaa !24   ; 4 uses
  %i.g = icmp sgt i16 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %wide.trip.count = zext nneg i16 %i.f to i64    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  %i.i = load ptr, ptr @accessing_symbol, align 8 ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.j = icmp eq i16 %i.f, 1
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 32766
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !29   ; 2 uses
  %.not13 = icmp eq i16 %i.l, 0
  br i1 %.not13, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = sext i16 %i.l to i64
  %i.n = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !29
  %i.p = sext i16 %i.o to i32
  %i.q = icmp eq i32 %1, %i.p
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i16 0, ptr %i.k, align 2, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2 ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !29   ; 2 uses
  %.not13.1 = icmp eq i16 %i.t, 0
  br i1 %.not13.1, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = sext i16 %i.t to i64
  %i.v = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !29
  %i.x = sext i16 %i.w to i32
  %i.y = icmp eq i32 %1, %i.x
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i16 0, ptr %i.s, align 2, !tbaa !29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !48

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod17 = trunc i16 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv.epil.init ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !29  ; 2 uses
  %.not13.epil = icmp eq i16 %i.aa, 0
  br i1 %.not13.epil, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.epil.preheader
  %i.ab = sext i16 %i.aa to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !29
  %i.ae = sext i16 %i.ad to i32
  %i.af = icmp eq i32 %1, %i.ae
  br i1 %i.af, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  store i16 0, ptr %i.z, align 2, !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.k, %bb.j, %.epil.preheader, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define dso_local void @conflict_log() local_unnamed_addr #3 {
bb.a:
  store i32 0, ptr @src_total, align 4, !tbaa !4
  store i32 0, ptr @rrc_total, align 4, !tbaa !4
  %i.a = load i32, ptr @nstates, align 4, !tbaa !4 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %i.c = phi i32 [ %i.bf, %bb.g ], [ %i.a, %bb.a ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.a ] ; 4 uses
  %0 = phi i32 [ %i.bh, %bb.g ], [ 0, %bb.a ]     ; 2 uses
  %i.d = phi i32 [ %i.bg, %bb.g ], [ 0, %bb.a ]   ; 2 uses
  %1 = load ptr, ptr @conflicts, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @count_sr_conflicts(i32 noundef %i.g)
  store i32 0, ptr @rrc_count, align 4, !tbaa !4
  %i.h = load ptr, ptr @lookaheads, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !29
  %i.k = sext i16 %i.j to i32                     ; 3 uses
  %i.l = getelementptr i8, ptr %i.i, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !29
  %i.n = sext i16 %i.m to i32                     ; 2 uses
  %i.o = sub nsw i32 %i.n, %i.k                   ; 3 uses
  %i.p = icmp slt i32 %i.o, 2
  br i1 %i.p, label %count_rr_conflicts.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr @ntokens, align 4, !tbaa !4 ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.preheader.lr.ph.i, label %count_rr_conflicts.exit

.preheader.lr.ph.i:                               ; preds = %bb.c
  %i.s = load i32, ptr @tokensetsize, align 4, !tbaa !4 ; 2 uses
  %i.t = sext i32 %i.s to i64                     ; 5 uses
  %i.u = load ptr, ptr @LA, align 8, !tbaa !11
  %i.v = mul nsw i32 %i.s, %i.k
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.w
  %xtraiter = and i32 %i.o, 3                     ; 3 uses
  %i.y = sub nsw i32 %i.k, %i.n
  %i.z = icmp ugt i32 %i.y, -4
  %unroll_iter = and i32 %i.o, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod12 = icmp ne i32 %xtraiter, 0
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.e, %.preheader.lr.ph.i
  %.034.us.i = phi i32 [ %i.af, %bb.e ], [ 0, %.preheader.lr.ph.i ]
  %.02133.us.i = phi ptr [ %spec.select28.us.i, %bb.e ], [ %i.x, %.preheader.lr.ph.i ] ; 3 uses
  %.02232.us.i = phi i32 [ %spec.select27.us.i, %bb.e ], [ 1, %.preheader.lr.ph.i ] ; 6 uses
  %i.aa = phi i32 [ %i.ac, %bb.e ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  br i1 %i.z, label %.epil.preheader, label %.preheader.us.i.new

bb.d:                                             ; preds = %._crit_edge.us.i
  %i.ab = add nsw i32 %i.aa, 1                    ; 2 uses
  store i32 %i.ab, ptr @rrc_count, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.us.i, %bb.d
  %i.ac = phi i32 [ %i.ab, %bb.d ], [ %i.aa, %._crit_edge.us.i ] ; 2 uses
  %i.ad = shl i32 %.02232.us.i, 1                 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  %spec.select27.us.i = tail call i32 @llvm.umax.i32(i32 %i.ad, i32 1)
  %spec.select28.idx.us.i = select i1 %i.ae, i64 4, i64 0
  %spec.select28.us.i = getelementptr inbounds nuw i8, ptr %.02133.us.i, i64 %spec.select28.idx.us.i
  %i.af = add nuw nsw i32 %.034.us.i, 1           ; 2 uses
  %exitcond36.not.i = icmp eq i32 %i.af, %i.q
  br i1 %exitcond36.not.i, label %count_rr_conflicts.exit, label %.preheader.us.i, !llvm.loop !54

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %.02030.us.i = phi ptr [ %i.av, %.preheader.us.i.new ], [ %.02133.us.i, %.preheader.us.i ] ; 2 uses
  %.02429.us.i = phi i32 [ %spec.select.us.i.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %niter = phi i32 [ %niter.next.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %i.ag = load i32, ptr %.02030.us.i, align 4, !tbaa !4
  %i.ah = and i32 %i.ag, %.02232.us.i
  %.not.us.i = icmp ne i32 %i.ah, 0
  %i.ai = zext i1 %.not.us.i to i32
  %spec.select.us.i = add nuw nsw i32 %.02429.us.i, %i.ai
  %i.aj = getelementptr inbounds [4 x i8], ptr %.02030.us.i, i64 %i.t ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = and i32 %i.ak, %.02232.us.i
  %.not.us.i.1 = icmp ne i32 %i.al, 0
  %i.am = zext i1 %.not.us.i.1 to i32
  %spec.select.us.i.1 = add nuw nsw i32 %spec.select.us.i, %i.am
  %i.an = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.t ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = and i32 %i.ao, %.02232.us.i
  %.not.us.i.2 = icmp ne i32 %i.ap, 0
  %i.aq = zext i1 %.not.us.i.2 to i32
  %spec.select.us.i.2 = add nuw nsw i32 %spec.select.us.i.1, %i.aq
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.t ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = and i32 %i.as, %.02232.us.i
  %.not.us.i.3 = icmp ne i32 %i.at, 0
  %i.au = zext i1 %.not.us.i.3 to i32
  %spec.select.us.i.3 = add nuw nsw i32 %spec.select.us.i.2, %i.au ; 3 uses
  %i.av = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.t ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !55

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i
  %.02030.us.i.epil.init = phi ptr [ %.02133.us.i, %.preheader.us.i ], [ %i.av, %._crit_edge.us.i.unr-lcssa ]
  %.02429.us.i.epil.init = phi i32 [ 0, %.preheader.us.i ], [ %spec.select.us.i.3, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod12)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.02030.us.i.epil = phi ptr [ %.02030.us.i.epil.init, %.epil.preheader ], [ %i.az, %bb.f ] ; 2 uses
  %.02429.us.i.epil = phi i32 [ %.02429.us.i.epil.init, %.epil.preheader ], [ %spec.select.us.i.epil, %bb.f ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.aw = load i32, ptr %.02030.us.i.epil, align 4, !tbaa !4
  %i.ax = and i32 %i.aw, %.02232.us.i
  %.not.us.i.epil = icmp ne i32 %i.ax, 0
  %i.ay = zext i1 %.not.us.i.epil to i32
  %spec.select.us.i.epil = add nuw nsw i32 %.02429.us.i.epil, %i.ay ; 2 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %.02030.us.i.epil, i64 %i.t
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i, label %bb.f, !llvm.loop !56

._crit_edge.us.i:                                 ; preds = %bb.f, %._crit_edge.us.i.unr-lcssa
  %spec.select.us.i.lcssa = phi i32 [ %spec.select.us.i.3, %._crit_edge.us.i.unr-lcssa ], [ %spec.select.us.i.epil, %bb.f ]
  %i.ba = icmp samesign ugt i32 %spec.select.us.i.lcssa, 1
  br i1 %i.ba, label %bb.d, label %bb.e

count_rr_conflicts.exit:                          ; preds = %bb.e, %bb.b, %bb.c
  %i.bb = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ %i.ac, %bb.e ]
  %i.bc = load i32, ptr @src_count, align 4, !tbaa !4
  %i.bd = add nsw i32 %0, %i.bc                   ; 2 uses
  store i32 %i.bd, ptr @src_total, align 4, !tbaa !4
  %i.be = add nsw i32 %i.d, %i.bb                 ; 2 uses
  store i32 %i.be, ptr @rrc_total, align 4, !tbaa !4
  %.pre8 = load i32, ptr @nstates, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %count_rr_conflicts.exit
  %i.bf = phi i32 [ %i.c, %.lr.ph ], [ %.pre8, %count_rr_conflicts.exit ] ; 2 uses
  %i.bg = phi i32 [ %i.d, %.lr.ph ], [ %i.be, %count_rr_conflicts.exit ]
  %i.bh = phi i32 [ %0, %.lr.ph ], [ %i.bd, %count_rr_conflicts.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = sext i32 %i.bf to i64
  %i.bj = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !58

._crit_edge:                                      ; preds = %bb.g, %bb.a
  tail call void @total_conflicts()
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @count_sr_conflicts(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  store i32 0, ptr @src_count, align 4, !tbaa !4
  %i.a = load ptr, ptr @shift_table, align 8, !tbaa !20
  %i.b = sext i32 %0 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %.preheader53

.preheader53:                                     ; preds = %bb.a
  %i.e = load i32, ptr @tokensetsize, align 4, !tbaa !4 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader53
  %i.g = load ptr, ptr @shiftset, align 8, !tbaa !11
  %i.h = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 0, ptr %i.i, align 4, !tbaa !4
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 0, ptr %i.j, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr @tokensetsize, align 4, !tbaa !4 ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %bb.b, %.preheader53
  %i.n = phi i32 [ %i.e, %.preheader53 ], [ %i.k, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.p = load i16, ptr %i.o, align 2, !tbaa !24   ; 2 uses
  %i.q = icmp sgt i16 %i.p, 0
  br i1 %i.q, label %.lr.ph57, label %._crit_edge58

.lr.ph57:                                         ; preds = %._crit_edge
  %wide.trip.count = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.s = load ptr, ptr @accessing_symbol, align 8
  %i.t = load ptr, ptr @shiftset, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph57, %bb.f
  %indvars.iv78 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next79, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv78
  %i.v = load i16, ptr %i.u, align 2, !tbaa !29   ; 2 uses
  %.not49 = icmp eq i16 %i.v, 0
  br i1 %.not49, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = sext i16 %i.v to i64
  %i.x = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !29
  %i.z = sext i16 %i.y to i32                     ; 3 uses
  %i.aa = load i32, ptr @ntokens, align 4, !tbaa !4
  %.not50 = icmp sgt i32 %i.aa, %i.z
  br i1 %.not50, label %bb.e, label %._crit_edge58.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ab = and i32 %i.z, 31
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = ashr i32 %i.z, 5
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = or i32 %i.ag, %i.ac
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge58.loopexit, label %bb.c, !llvm.loop !60

._crit_edge58.loopexit:                           ; preds = %bb.d, %bb.f
  %.pre = load i32, ptr @tokensetsize, align 4, !tbaa !4
  br label %._crit_edge58

._crit_edge58:                                    ; preds = %._crit_edge58.loopexit, %._crit_edge
  %i.ai = phi i32 [ %.pre, %._crit_edge58.loopexit ], [ %i.n, %._crit_edge ] ; 3 uses
  %i.aj = load ptr, ptr @lookaheads, align 8, !tbaa !27
  %i.ak = getelementptr [2 x i8], ptr %i.aj, i64 %i.b ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 2
  %i.am = load i16, ptr %i.al, align 2, !tbaa !29 ; 2 uses
  %i.an = sext i16 %i.am to i32
  %i.ao = load ptr, ptr @lookaheadset, align 8, !tbaa !11 ; 16 uses
  %i.ap = ptrtoint ptr %i.ao to i64               ; 12 uses
  %i.aq = sext i32 %i.ai to i64
  %.idx = shl nsw i64 %i.aq, 2                    ; 5 uses
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 %.idx ; 2 uses
  %i.as = load i16, ptr %i.ak, align 2, !tbaa !29 ; 2 uses
  %i.at = icmp slt i16 %i.as, %i.am
  br i1 %i.at, label %.lr.ph67, label %._crit_edge68.split

.lr.ph67:                                         ; preds = %._crit_edge58
  %i.au = load ptr, ptr @LA, align 8, !tbaa !11   ; 2 uses
  %i.av = icmp sgt i32 %i.ai, 0
  br i1 %i.av, label %.lr.ph63.preheader, label %.preheader

.lr.ph63.preheader:                               ; preds = %.lr.ph67
  %i.aw = sext i16 %i.as to i32
  %i.ax = add i64 %.idx, %i.ap
  %i.ay = add i64 %i.ap, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.ay)
  %i.az = xor i64 %i.ap, -1
  %i.ba = add i64 %umax, %i.az
  %i.bb = and i64 %i.ba, -4
  %i.bc = add i64 %i.bb, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ao, i64 %i.bc
  %scevgep90 = getelementptr i8, ptr %i.au, i64 %i.bc
  %i.bd = add i64 %.idx, %i.ap
  %i.be = add i64 %i.ap, 4
  %umax92 = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.be)
  %i.bf = xor i64 %i.ap, -1
  %i.bg = add i64 %umax92, %i.bf                  ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 28
  %n.vec = and i64 %i.bi, 9223372036854775800     ; 3 uses
  %i.bj = shl i64 %n.vec, 2                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ao, i64 %i.bj
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br label %.lr.ph63

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %._crit_edge64
  %.265 = phi i32 [ %i.cd, %._crit_edge64 ], [ %i.aw, %.lr.ph63.preheader ] ; 2 uses
  %i.bl = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.bm = mul i32 %i.bl, %.265
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr [4 x i8], ptr %i.au, i64 %i.bn ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph63
  %i.bp = shl nsw i64 %i.bn, 2
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %i.bp
  %bound0 = icmp ult ptr %i.ao, %scevgep91
  %bound1 = icmp ult ptr %i.bo, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bq = getelementptr i8, ptr %i.bo, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.br ; 3 uses
  %next.gep93 = getelementptr i8, ptr %i.bo, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep93, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep93, align 4, !tbaa !4, !alias.scope !61
  %wide.load94 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !4, !alias.scope !61
  %i.bt = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load95 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4, !alias.scope !64, !noalias !61
  %wide.load96 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !4, !alias.scope !64, !noalias !61
  %i.bu = or <4 x i32> %wide.load95, %wide.load
  %i.bv = or <4 x i32> %wide.load96, %wide.load94
  store <4 x i32> %i.bu, ptr %next.gep, align 4, !tbaa !4, !alias.scope !64, !noalias !61
  store <4 x i32> %i.bv, ptr %i.bt, align 4, !tbaa !4, !alias.scope !64, !noalias !61
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge64, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph63, %middle.block
  %.03761.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph63 ], [ %i.bk, %middle.block ]
  %.04160.ph = phi ptr [ %i.bo, %vector.memcheck ], [ %i.bo, %.lr.ph63 ], [ %i.bq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03761 = phi ptr [ %i.bz, %scalar.ph ], [ %.03761.ph, %scalar.ph.preheader ] ; 3 uses
  %.04160 = phi ptr [ %i.bx, %scalar.ph ], [ %.04160.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.04160, i64 4
  %i.by = load i32, ptr %.04160, align 4, !tbaa !4
  %i.bz = getelementptr inbounds nuw i8, ptr %.03761, i64 4 ; 2 uses
  %i.ca = load i32, ptr %.03761, align 4, !tbaa !4
  %i.cb = or i32 %i.ca, %i.by
  store i32 %i.cb, ptr %.03761, align 4, !tbaa !4
  %i.cc = icmp ult ptr %i.bz, %i.ar
  br i1 %i.cc, label %scalar.ph, label %._crit_edge64, !llvm.loop !67

._crit_edge64:                                    ; preds = %scalar.ph, %middle.block
  %i.cd = add nsw i32 %.265, 1                    ; 2 uses
end_hunk_0
