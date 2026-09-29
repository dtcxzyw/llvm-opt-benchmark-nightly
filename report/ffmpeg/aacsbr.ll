Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacsbr?download=true
inline.NumInlined: 185
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 31
begin_hunk_0_@sbr_make_f_tablelim:bb.a
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %.0179.lcssa, i64 2
  %i.dl = getelementptr inbounds [16 x i8], ptr %i.b, i64 %indvars.iv269 ; 2 uses
  store ptr %i.dk, ptr %i.dl, align 16, !tbaa !27
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %.0173246, ptr %i.dm, align 8, !tbaa !27
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.1174 = phi ptr [ %.0173246, %bb.x ], [ %.0182.lcssa, %bb.y ] ; 2 uses
  %.1171 = phi ptr [ %i.dj, %bb.x ], [ %.0170247, %bb.y ] ; 2 uses
  %indvars.iv.next270 = add nsw i64 %indvars.iv269, 1 ; 2 uses
  %i.dn = icmp ult ptr %.1171, %.1174
  br i1 %i.dn, label %.lr.ph250, label %.thread.loopexit

bb.aa:                                            ; preds = %.lr.ph250
  %i.do = trunc nsw i64 %indvars.iv269 to i32     ; 2 uses
  %.0170.val = load i16, ptr %.0170247, align 2, !tbaa !74 ; 2 uses
  %.0173.val = load i16, ptr %.0173246, align 2, !tbaa !74 ; 2 uses
  %i.dp = icmp sgt i16 %.0170.val, %.0173.val
  br i1 %i.dp, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  store i16 %.0170.val, ptr %.0173246, align 2, !tbaa !74
  store i16 %.0173.val, ptr %.0170247, align 2, !tbaa !74
  br label %.thread

.thread.loopexit:                                 ; preds = %.critedge4, %bb.p, %bb.z
  %.1169231.ph.in = phi i64 [ %indvars.iv269, %.critedge4 ], [ %indvars.iv269, %bb.p ], [ %indvars.iv.next270, %bb.z ]
  %.1169231.ph = trunc i64 %.1169231.ph.in to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.g, %bb.aa, %bb.ab
  %.1169231 = phi i32 [ %i.do, %bb.ab ], [ %i.do, %bb.aa ], [ %i.bp, %bb.g ], [ %.1169231.ph, %.thread.loopexit ] ; 2 uses
  %.not191 = icmp eq i32 %.1169231, 0
  br i1 %.not191, label %bb.ac, label %bb.g, !llvm.loop !173

bb.ac:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.dq = add i32 %i.bk, -1                       ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 311740 ; 4 uses
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !82
  %.not261 = icmp eq i32 %i.dq, 0
  br i1 %.not261, label %._crit_edge260, label %.lr.ph259

.lr.ph259:                                        ; preds = %bb.ac
  %.not7.i = icmp slt i32 %.fr, 0
  %i.ds = add nuw i32 %.fr, 1
  %wide.trip.count.i = zext i32 %i.ds to i64      ; 2 uses
  %.pre273 = load i16, ptr %i.i, align 2, !tbaa !74 ; 2 uses
  br i1 %.not7.i, label %.lr.ph259.split.us, label %.lr.ph259.split

.lr.ph259.split.us:                               ; preds = %.lr.ph259, %bb.ae
  %i.dt = phi i32 [ %i.ec, %bb.ae ], [ %i.dq, %.lr.ph259 ] ; 2 uses
  %i.du = phi i16 [ %i.ed, %bb.ae ], [ %.pre273, %.lr.ph259 ] ; 2 uses
  %.0164257.us = phi ptr [ %.1.us, %bb.ae ], [ %i.j, %.lr.ph259 ] ; 2 uses
  %.0165256.us = phi ptr [ %.1166.us, %bb.ae ], [ %i.i, %.lr.ph259 ] ; 2 uses
  %i.dv = load i16, ptr %.0164257.us, align 2, !tbaa !74 ; 3 uses
  %i.dw = uitofp i16 %i.dv to float
  %i.dx = uitofp i16 %i.du to float
  %i.dy = fmul nsz float %i.h, %i.dx
  %i.dz = fcmp nsz ugt float %i.dy, %i.dw
  br i1 %i.dz, label %in_table_int16.exit.thread.us, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph259.split.us
  %i.ea = getelementptr inbounds nuw i8, ptr %.0165256.us, i64 2 ; 2 uses
  store i16 %i.dv, ptr %i.ea, align 2, !tbaa !74
  br label %bb.ae

in_table_int16.exit.thread.us:                    ; preds = %.lr.ph259.split.us
  %i.eb = add i32 %i.dt, -1                       ; 2 uses
  store i32 %i.eb, ptr %i.dr, align 4, !tbaa !82
  br label %bb.ae

bb.ae:                                            ; preds = %in_table_int16.exit.thread.us, %bb.ad
  %i.ec = phi i32 [ %i.dt, %bb.ad ], [ %i.eb, %in_table_int16.exit.thread.us ] ; 2 uses
  %i.ed = phi i16 [ %i.dv, %bb.ad ], [ %i.du, %in_table_int16.exit.thread.us ]
  %.1166.us = phi ptr [ %i.ea, %bb.ad ], [ %.0165256.us, %in_table_int16.exit.thread.us ] ; 2 uses
  %.1.us = getelementptr inbounds nuw i8, ptr %.0164257.us, i64 2
  %i.ee = zext i32 %i.ec to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.ee
  %i.eg = icmp ult ptr %.1166.us, %i.ef
  br i1 %i.eg, label %.lr.ph259.split.us, label %._crit_edge260, !llvm.loop !174

.lr.ph259.split:                                  ; preds = %.lr.ph259, %bb.ak
  %i.eh = phi i32 [ %i.ez, %bb.ak ], [ %i.dq, %.lr.ph259 ] ; 4 uses
  %i.ei = phi i16 [ %i.fa, %bb.ak ], [ %.pre273, %.lr.ph259 ] ; 4 uses
  %.0164257 = phi ptr [ %.1, %bb.ak ], [ %i.j, %.lr.ph259 ] ; 2 uses
  %.0165256 = phi ptr [ %.1166, %bb.ak ], [ %i.i, %.lr.ph259 ] ; 5 uses
  %i.ej = load i16, ptr %.0164257, align 2, !tbaa !74 ; 9 uses
  %i.ek = uitofp i16 %i.ej to float
  %i.el = uitofp i16 %i.ei to float
  %i.em = fmul nsz float %i.h, %i.el
  %i.en = fcmp nsz ugt float %i.em, %i.ek
  br i1 %i.en, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph259.split
  %i.eo = getelementptr inbounds nuw i8, ptr %.0165256, i64 2 ; 2 uses
  store i16 %i.ej, ptr %i.eo, align 2, !tbaa !74
  br label %bb.ak

bb.ag:                                            ; preds = %.lr.ph259.split
  %i.ep = icmp eq i16 %i.ej, %i.ei
  br i1 %i.ep, label %in_table_int16.exit.thread, label %.lr.ph.i

bb.ah:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %in_table_int16.exit.thread, label %.lr.ph.i, !llvm.loop !175

.lr.ph.i:                                         ; preds = %bb.ag, %bb.ah
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ah ], [ 0, %bb.ag ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !74
  %i.es = icmp eq i16 %i.er, %i.ej
  br i1 %i.es, label %.lr.ph.i212, label %bb.ah

in_table_int16.exit.thread:                       ; preds = %bb.ah, %bb.ag
  %i.et = add i32 %i.eh, -1                       ; 2 uses
  store i32 %i.et, ptr %i.dr, align 4, !tbaa !82
  br label %bb.ak

bb.ai:                                            ; preds = %.lr.ph.i212
  %indvars.iv.next.i214 = add nuw nsw i64 %indvars.iv.i213, 1 ; 2 uses
  %exitcond.not.i215 = icmp eq i64 %indvars.iv.next.i214, %wide.trip.count.i
  br i1 %exitcond.not.i215, label %bb.aj, label %.lr.ph.i212, !llvm.loop !175

.lr.ph.i212:                                      ; preds = %.lr.ph.i, %bb.ai
  %indvars.iv.i213 = phi i64 [ %indvars.iv.next.i214, %bb.ai ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i213
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !74
  %i.ew = icmp eq i16 %i.ev, %i.ei
  br i1 %i.ew, label %in_table_int16.exit217, label %bb.ai

bb.aj:                                            ; preds = %bb.ai
  store i16 %i.ej, ptr %.0165256, align 2, !tbaa !74
  %i.ex = add i32 %i.eh, -1                       ; 2 uses
  store i32 %i.ex, ptr %i.dr, align 4, !tbaa !82
  br label %bb.ak

in_table_int16.exit217:                           ; preds = %.lr.ph.i212
  %i.ey = getelementptr inbounds nuw i8, ptr %.0165256, i64 2 ; 2 uses
  store i16 %i.ej, ptr %i.ey, align 2, !tbaa !74
  br label %bb.ak

bb.ak:                                            ; preds = %in_table_int16.exit.thread, %in_table_int16.exit217, %bb.aj, %bb.af
  %i.ez = phi i32 [ %i.eh, %bb.af ], [ %i.et, %in_table_int16.exit.thread ], [ %i.eh, %in_table_int16.exit217 ], [ %i.ex, %bb.aj ] ; 2 uses
  %i.fa = phi i16 [ %i.ej, %bb.af ], [ %i.ei, %in_table_int16.exit.thread ], [ %i.ej, %in_table_int16.exit217 ], [ %i.ej, %bb.aj ]
  %.1166 = phi ptr [ %i.eo, %bb.af ], [ %.0165256, %in_table_int16.exit.thread ], [ %i.ey, %in_table_int16.exit217 ], [ %.0165256, %bb.aj ] ; 2 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.0164257, i64 2
  %i.fb = zext i32 %i.ez to i64
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.fb
  %i.fd = icmp ult ptr %.1166, %i.fc
  br i1 %i.fd, label %.lr.ph259.split, label %._crit_edge260, !llvm.loop !174

._crit_edge260:                                   ; preds = %bb.ak, %bb.ae, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.am

bb.al:                                            ; preds = %bb.a
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 311842 ; 2 uses
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !74
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 312002
  store i16 %i.ff, ptr %i.fg, align 2, !tbaa !74
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 311728
  %i.fi = load i32, ptr %i.fh, align 16, !tbaa !13
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %i.fj
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !74
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 312004
  store i16 %i.fl, ptr %i.fm, align 4, !tbaa !74
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 311740
  store i32 1, ptr %i.fn, align 4, !tbaa !82
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge260
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @read_sbr_grid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef range(i32 15, 17) %4) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 6 uses
  %i.d = zext i32 %i.b to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12
  store i8 %i.f, ptr %i.c, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 100 ; 2 uses
  store i32 %i.h, ptr %i.i, align 4, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 88716 ; 34 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 88725
  store i8 %i.l, ptr %i.m, align 1, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 72 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !30   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 34 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !31   ; 3 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !42     ; 3 uses
  %i.s = lshr i32 %i.o, 3
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %i.v = load i32, ptr %i.u, align 1, !tbaa !12
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.v)
  %i.x = and i32 %i.o, 7
  %i.y = shl i32 %i.w, %i.x                       ; 2 uses
  %i.z = lshr i32 %i.y, 30                        ; 5 uses
  %i.aa = add i32 %i.o, 2
  %i.ab = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.aa) ; 4 uses
  store i32 %i.ab, ptr %i.n, align 8, !tbaa !30
  %i.ac = lshr i32 %i.ab, 3
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !12
  %i.ag = tail call i32 @llvm.bswap.i32(i32 %i.af)
  %i.ah = and i32 %i.ab, 7
  %i.ai = shl i32 %i.ag, %i.ah
  %i.aj = lshr i32 %i.ai, 30                      ; 7 uses
  %i.ak = add i32 %i.ab, 2
  %i.al = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.ak) ; 4 uses
  store i32 %i.al, ptr %i.n, align 8, !tbaa !30
  switch i32 %i.z, label %default.unreachable310 [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.i
    i32 3, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.am = shl nuw nsw i32 1, %i.aj                ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i32, ptr %i.an, align 16, !tbaa !23
  %.not = icmp eq i32 %i.ao, 0
  %i.ap = select i1 %.not, i32 5, i32 8
  %i.aq = icmp samesign ugt i32 %i.am, %i.ap
  br i1 %i.aq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !61
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.as, i32 noundef 16, ptr noundef nonnull @.str.25, i32 noundef %i.am) #12
  br label %bb.ak

bb.d:                                             ; preds = %bb.b
  store i32 %i.am, ptr %i.a, align 8, !tbaa !49
  %i.at = icmp eq i32 %i.aj, 0                    ; 2 uses
  br i1 %i.at, label %.thread, label %.lr.ph240.preheader

.thread:                                          ; preds = %bb.d
  store i32 0, ptr %i.i, align 4, !tbaa !51
  store i8 0, ptr %i.j, align 4, !tbaa !12
  %i.au = trunc nuw nsw i32 %4 to i8
  %i.av = zext nneg i32 %i.am to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.av
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !12
  br label %._crit_edge241

.lr.ph240.preheader:                              ; preds = %bb.d
  store i8 0, ptr %i.j, align 4, !tbaa !12
  %i.ax = trunc nuw nsw i32 %4 to i8
  %i.ay = zext nneg i32 %i.am to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ay
  store i8 %i.ax, ptr %i.az, align 1, !tbaa !12
  %i.ba = lshr exact i32 %i.am, 1
  %i.bb = add nuw nsw i32 %i.ba, %4
  %.lhs.trunc = trunc nuw nsw i32 %i.bb to i8
  %i.bc = trunc nuw nsw i32 %i.aj to i8
  %i.bd = lshr i8 %.lhs.trunc, %i.bc              ; 5 uses
  %i.be = tail call i32 @llvm.umax.i32(i32 %i.am, i32 2)
  %smax = add nuw nsw i32 %i.be, 3
  %i.bf = and i32 %smax, 3
  %xtraiter = zext nneg i32 %i.bf to i64
  %.not325 = icmp eq i32 %i.aj, 3
  br i1 %.not325, label %.lr.ph240, label %.lr.ph240.epil.preheader

.lr.ph240:                                        ; preds = %.lr.ph240.preheader, %.lr.ph240
  %i.bg = phi i8 [ %i.bq, %.lr.ph240 ], [ 0, %.lr.ph240.preheader ]
  %indvars.iv288 = phi i64 [ %indvars.iv.next289.3, %.lr.ph240 ], [ 0, %.lr.ph240.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph240 ], [ 0, %.lr.ph240.preheader ] ; 2 uses
  %i.bh = add i8 %i.bg, %i.bd                     ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv288
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 %i.bh, ptr %i.bj, align 1, !tbaa !12
  %i.bk = add i8 %i.bh, %i.bd                     ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv288
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  store i8 %i.bk, ptr %i.bm, align 1, !tbaa !12
  %i.bn = add i8 %i.bk, %i.bd                     ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv288
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !12
  %i.bq = add i8 %i.bn, %i.bd                     ; 3 uses
  %indvars.iv.next289.3 = add nuw nsw i64 %indvars.iv288, 4 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next289.3
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !12
  %niter.next.3 = add nuw i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter, 0
  br i1 %niter.ncmp.3, label %.lr.ph240.epil.preheader, label %.lr.ph240, !llvm.loop !176

.lr.ph240.epil.preheader:                         ; preds = %.lr.ph240, %.lr.ph240.preheader
  %.epil.init = phi i8 [ 0, %.lr.ph240.preheader ], [ %i.bq, %.lr.ph240 ]
  %indvars.iv288.epil.init = phi i64 [ 0, %.lr.ph240.preheader ], [ %indvars.iv.next289.3, %.lr.ph240 ]
  br label %.lr.ph240.epil

.lr.ph240.epil:                                   ; preds = %.lr.ph240.epil, %.lr.ph240.epil.preheader
  %i.bs = phi i8 [ %.epil.init, %.lr.ph240.epil.preheader ], [ %i.bt, %.lr.ph240.epil ]
  %indvars.iv288.epil = phi i64 [ %indvars.iv288.epil.init, %.lr.ph240.epil.preheader ], [ %indvars.iv.next289.epil, %.lr.ph240.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph240.epil.preheader ], [ %epil.iter.next, %.lr.ph240.epil ]
  %i.bt = add i8 %i.bs, %i.bd                     ; 2 uses
  %indvars.iv.next289.epil = add nuw nsw i64 %indvars.iv288.epil, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next289.epil
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !12
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge241, label %.lr.ph240.epil, !llvm.loop !177

._crit_edge241:                                   ; preds = %.lr.ph240.epil, %.thread
  %i.bv = load i32, ptr %i.n, align 8, !tbaa !30  ; 4 uses
  %i.bw = load ptr, ptr %2, align 8, !tbaa !42
  %i.bx = lshr i32 %i.bv, 3
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !12
  %i.cb = load i32, ptr %i.p, align 8, !tbaa !31
  %i.cc = icmp slt i32 %i.bv, %i.cb
  %i.cd = zext i1 %i.cc to i32
  %spec.select.i = add i32 %i.bv, %i.cd
  %i.ce = zext i8 %i.ca to i32
  %i.cf = and i32 %i.bv, 7
  %i.cg = shl nuw nsw i32 %i.ce, %i.cf
  store i32 %spec.select.i, ptr %i.n, align 8, !tbaa !30
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = lshr i8 %i.ch, 7                        ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 13
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !12
  br i1 %i.at, label %.thread312, label %.lr.ph244.preheader

.lr.ph244.preheader:                              ; preds = %._crit_edge241
  %scevgep = getelementptr i8, ptr %3, i64 14
  %umax = tail call i32 @llvm.umax.i32(i32 %i.am, i32 2)
  %i.ck = add nsw i32 %umax, -1
  %i.cl = zext nneg i32 %i.ck to i64
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep, i8 %i.ci, i64 %i.cl, i1 false), !tbaa !12
  br label %.thread312

bb.e:                                             ; preds = %bb.a
  %i.cm = add nuw nsw i32 %i.aj, %4
  %i.cn = lshr i32 %i.al, 3
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 1, !tbaa !12
  %i.cr = tail call i32 @llvm.bswap.i32(i32 %i.cq)
  %i.cs = and i32 %i.al, 7
  %i.ct = shl i32 %i.cr, %i.cs
  %i.cu = lshr i32 %i.ct, 30                      ; 8 uses
  %i.cv = add i32 %i.al, 2
  %i.cw = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.cv)
  store i32 %i.cw, ptr %i.n, align 8, !tbaa !30
  %i.cx = add nuw nsw i32 %i.cu, 1                ; 8 uses
  store i32 %i.cx, ptr %i.a, align 8, !tbaa !49
  store i8 0, ptr %i.j, align 4, !tbaa !12
  %i.cy = trunc nuw nsw i32 %i.cm to i8
  %i.cz = zext nneg i32 %i.cx to i64              ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cz
  store i8 %i.cy, ptr %i.da, align 1, !tbaa !12
  %.not252 = icmp eq i32 %i.cu, 0
  br i1 %.not252, label %._crit_edge236, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %bb.e
  %i.db = zext nneg i32 %i.cu to i64              ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cz
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !12
  %i.de = load i32, ptr %i.n, align 8, !tbaa !30  ; 3 uses
  %i.df = load i32, ptr %i.p, align 8, !tbaa !31
  %i.dg = load ptr, ptr %2, align 8, !tbaa !42
  %i.dh = lshr i32 %i.de, 3
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 1, !tbaa !12
  %i.dl = tail call i32 @llvm.bswap.i32(i32 %i.dk)
  %i.dm = and i32 %i.de, 7
  %i.dn = shl i32 %i.dl, %i.dm
  %i.do = add i32 %i.de, 2
  %i.dp = tail call i32 @llvm.umin.i32(i32 %i.df, i32 %i.do)
  store i32 %i.dp, ptr %i.n, align 8, !tbaa !30
  %sh.diff215 = lshr i32 %i.dn, 29
  %tr.sh.diff216 = trunc nuw nsw i32 %sh.diff215 to i8
  %i.dq = and i8 %tr.sh.diff216, 6
  %i.dr = add i8 %i.dd, -2
  %i.ds = sub i8 %i.dr, %i.dq
  %i.dt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.db
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !12
  %exitcond282.not = icmp eq i32 %i.cu, 1
  br i1 %exitcond282.not, label %._crit_edge236, label %.lr.ph235.1

.lr.ph235.1:                                      ; preds = %.lr.ph235.preheader
  %i.du = zext nneg i32 %i.cu to i64
end_hunk_0
begin_hunk_1_@read_sbr_grid:bb.a
  %i.jd = load i32, ptr %i.jc, align 1, !tbaa !12
  %i.je = tail call i32 @llvm.bswap.i32(i32 %i.jd)
  %i.jf = and i32 %i.ix, 7
  %i.jg = shl i32 %i.je, %i.jf
  %i.jh = add i32 %i.ix, 2
  %i.ji = tail call i32 @llvm.umin.i32(i32 %i.iy, i32 %i.jh)
  store i32 %i.ji, ptr %i.n, align 8, !tbaa !30
  %sh.diff212 = lshr i32 %i.jg, 29
  %tr.sh.diff213 = trunc nuw nsw i32 %sh.diff212 to i8
  %i.jj = and i8 %tr.sh.diff213, 6
  %i.jk = add i8 %.pre301, 2
  %i.jl = add i8 %i.jk, %i.jj                     ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 88717
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !12
  %exitcond272.not = icmp eq i32 %i.iq, 1
  br i1 %exitcond272.not, label %._crit_edge231, label %.lr.ph230.1

.lr.ph230.1:                                      ; preds = %.lr.ph230
  %i.jn = load i32, ptr %i.n, align 8, !tbaa !30  ; 3 uses
  %i.jo = load i32, ptr %i.p, align 8, !tbaa !31
  %i.jp = load ptr, ptr %2, align 8, !tbaa !42
  %i.jq = lshr i32 %i.jn, 3
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 1, !tbaa !12
  %i.ju = tail call i32 @llvm.bswap.i32(i32 %i.jt)
  %i.jv = and i32 %i.jn, 7
  %i.jw = shl i32 %i.ju, %i.jv
  %i.jx = add i32 %i.jn, 2
  %i.jy = tail call i32 @llvm.umin.i32(i32 %i.jo, i32 %i.jx)
  store i32 %i.jy, ptr %i.n, align 8, !tbaa !30
  %sh.diff212.1 = lshr i32 %i.jw, 29
  %tr.sh.diff213.1 = trunc nuw nsw i32 %sh.diff212.1 to i8
  %i.jz = and i8 %tr.sh.diff213.1, 6
  %i.ka = add i8 %i.jl, 2
  %i.kb = add i8 %i.ka, %i.jz                     ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 88718
  store i8 %i.kb, ptr %i.kc, align 2, !tbaa !12
  %exitcond272.not.1 = icmp eq i32 %i.iq, 2
  br i1 %exitcond272.not.1, label %._crit_edge231, label %.lr.ph230.2

.lr.ph230.2:                                      ; preds = %.lr.ph230.1
  %i.kd = load i32, ptr %i.n, align 8, !tbaa !30  ; 3 uses
  %i.ke = load i32, ptr %i.p, align 8, !tbaa !31
  %i.kf = load ptr, ptr %2, align 8, !tbaa !42
  %i.kg = lshr i32 %i.kd, 3
  %i.kh = zext nneg i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kh
  %i.kj = load i32, ptr %i.ki, align 1, !tbaa !12
  %i.kk = tail call i32 @llvm.bswap.i32(i32 %i.kj)
  %i.kl = and i32 %i.kd, 7
  %i.km = shl i32 %i.kk, %i.kl
  %i.kn = add i32 %i.kd, 2
  %i.ko = tail call i32 @llvm.umin.i32(i32 %i.ke, i32 %i.kn)
  store i32 %i.ko, ptr %i.n, align 8, !tbaa !30
  %sh.diff212.2 = lshr i32 %i.km, 29
  %tr.sh.diff213.2 = trunc nuw nsw i32 %sh.diff212.2 to i8
  %i.kp = and i8 %tr.sh.diff213.2, 6
  %i.kq = add i8 %i.kb, 2
  %i.kr = add i8 %i.kq, %i.kp
  %i.ks = getelementptr inbounds nuw i8, ptr %3, i64 88719
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !12
  br label %._crit_edge231

._crit_edge231:                                   ; preds = %.lr.ph230, %.lr.ph230.1, %.lr.ph230.2, %bb.i
  %i.kt = getelementptr inbounds nuw i8, ptr @ceil_log2, i64 %i.iv
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !12
  %i.kv = sext i8 %i.ku to i32                    ; 5 uses
  %i.kw = load i32, ptr %i.n, align 8, !tbaa !30  ; 6 uses
  %i.kx = load i32, ptr %i.p, align 8, !tbaa !31
  %i.ky = load ptr, ptr %2, align 8, !tbaa !42
  %i.kz = lshr i32 %i.kw, 3
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 1, !tbaa !12 ; 4 uses
  %i.ld = add i32 %i.kw, %i.kv
  %i.le = tail call i32 @llvm.umin.i32(i32 %i.kx, i32 %i.ld)
  store i32 %i.le, ptr %i.n, align 8, !tbaa !30
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 13
  %i.lg = load i32, ptr %i.n, align 8, !tbaa !30  ; 4 uses
  %i.lh = load ptr, ptr %2, align 8, !tbaa !42
  %i.li = lshr i32 %i.lg, 3
  %i.lj = zext nneg i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lj
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !12
  %i.lm = load i32, ptr %i.p, align 8, !tbaa !31
  %i.ln = icmp slt i32 %i.lg, %i.lm
  %i.lo = zext i1 %i.ln to i32
  %spec.select.i204 = add i32 %i.lg, %i.lo
  %i.lp = zext i8 %i.ll to i32
  %i.lq = and i32 %i.lg, 7
  %i.lr = shl nuw nsw i32 %i.lp, %i.lq
  store i32 %spec.select.i204, ptr %i.n, align 8, !tbaa !30
  %i.ls = trunc i32 %i.lr to i8
  %i.lt = lshr i8 %i.ls, 7
  store i8 %i.lt, ptr %i.lf, align 1, !tbaa !12
  %exitcond277.not = icmp eq i32 %i.iq, 0
  br i1 %exitcond277.not, label %get_bits1_vector.exit202, label %bb.j

bb.j:                                             ; preds = %._crit_edge231
  %i.lu = load i32, ptr %i.n, align 8, !tbaa !30  ; 4 uses
  %i.lv = load ptr, ptr %2, align 8, !tbaa !42
  %i.lw = lshr i32 %i.lu, 3
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lx
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !12
  %i.ma = load i32, ptr %i.p, align 8, !tbaa !31
  %i.mb = icmp slt i32 %i.lu, %i.ma
  %i.mc = zext i1 %i.mb to i32
  %spec.select.i204.1 = add i32 %i.lu, %i.mc
  %i.md = zext i8 %i.lz to i32
  %i.me = and i32 %i.lu, 7
  %i.mf = shl nuw nsw i32 %i.md, %i.me
  store i32 %spec.select.i204.1, ptr %i.n, align 8, !tbaa !30
  %i.mg = trunc i32 %i.mf to i8
  %i.mh = lshr i8 %i.mg, 7
  %i.mi = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i8 %i.mh, ptr %i.mi, align 2, !tbaa !12
  %exitcond277.not.1 = icmp eq i32 %i.it, 2
  br i1 %exitcond277.not.1, label %get_bits1_vector.exit202, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.mj = load i32, ptr %i.n, align 8, !tbaa !30  ; 4 uses
  %i.mk = load ptr, ptr %2, align 8, !tbaa !42
  %i.ml = lshr i32 %i.mj, 3
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !12
  %i.mp = load i32, ptr %i.p, align 8, !tbaa !31
  %i.mq = icmp slt i32 %i.mj, %i.mp
  %i.mr = zext i1 %i.mq to i32
  %spec.select.i204.2 = add i32 %i.mj, %i.mr
  %i.ms = zext i8 %i.mo to i32
  %i.mt = and i32 %i.mj, 7
  %i.mu = shl nuw nsw i32 %i.ms, %i.mt
  store i32 %spec.select.i204.2, ptr %i.n, align 8, !tbaa !30
  %i.mv = trunc i32 %i.mu to i8
  %i.mw = lshr i8 %i.mv, 7
  %i.mx = getelementptr inbounds nuw i8, ptr %3, i64 15
  store i8 %i.mw, ptr %i.mx, align 1, !tbaa !12
  %exitcond277.not.2 = icmp eq i32 %i.it, 3
  br i1 %exitcond277.not.2, label %get_bits1_vector.exit202, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.my = load i32, ptr %i.n, align 8, !tbaa !30  ; 4 uses
  %i.mz = load ptr, ptr %2, align 8, !tbaa !42
  %i.na = lshr i32 %i.my, 3
  %i.nb = zext nneg i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !12
  %i.ne = load i32, ptr %i.p, align 8, !tbaa !31
  %i.nf = icmp slt i32 %i.my, %i.ne
  %i.ng = zext i1 %i.nf to i32
  %spec.select.i204.3 = add i32 %i.my, %i.ng
  %i.nh = zext i8 %i.nd to i32
  %i.ni = and i32 %i.my, 7
  %i.nj = shl nuw nsw i32 %i.nh, %i.ni
  store i32 %spec.select.i204.3, ptr %i.n, align 8, !tbaa !30
  %i.nk = trunc i32 %i.nj to i8
  %i.nl = lshr i8 %i.nk, 7
  %i.nm = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %i.nl, ptr %i.nm, align 8, !tbaa !12
  br label %get_bits1_vector.exit202

bb.m:                                             ; preds = %bb.a
  %i.nn = trunc nuw nsw i32 %i.aj to i8
  store i8 %i.nn, ptr %i.j, align 4, !tbaa !12
  %i.no = load i32, ptr %i.n, align 8, !tbaa !30  ; 3 uses
  %i.np = load i32, ptr %i.p, align 8, !tbaa !31  ; 3 uses
  %i.nq = load ptr, ptr %2, align 8, !tbaa !42    ; 3 uses
  %i.nr = lshr i32 %i.no, 3
  %i.ns = zext nneg i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.ns
  %i.nu = load i32, ptr %i.nt, align 1, !tbaa !12
  %i.nv = add i32 %i.no, 2
  %i.nw = tail call i32 @llvm.umin.i32(i32 %i.np, i32 %i.nv) ; 4 uses
  store i32 %i.nw, ptr %i.n, align 8, !tbaa !30
  %i.nx = lshr i32 %i.nw, 3
  %i.ny = zext nneg i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 1, !tbaa !12
  %i.ob = tail call i32 @llvm.bswap.i32(i32 %i.oa)
  %i.oc = and i32 %i.nw, 7
  %i.od = shl i32 %i.ob, %i.oc
  %i.oe = lshr i32 %i.od, 30                      ; 4 uses
  %i.of = add i32 %i.nw, 2
  %i.og = tail call i32 @llvm.umin.i32(i32 %i.np, i32 %i.of) ; 4 uses
  store i32 %i.og, ptr %i.n, align 8, !tbaa !30
  %i.oh = lshr i32 %i.og, 3
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.oi
  %i.ok = load i32, ptr %i.oj, align 1, !tbaa !12
  %i.ol = tail call i32 @llvm.bswap.i32(i32 %i.ok)
  %i.om = and i32 %i.og, 7
  %i.on = shl i32 %i.ol, %i.om
  %i.oo = lshr i32 %i.on, 30                      ; 4 uses
  %i.op = add i32 %i.og, 2
  %i.oq = tail call i32 @llvm.umin.i32(i32 %i.np, i32 %i.op)
  store i32 %i.oq, ptr %i.n, align 8, !tbaa !30
  %i.or = add nuw nsw i32 %i.oo, %i.oe            ; 5 uses
  %i.os = add nuw nsw i32 %i.or, 1                ; 15 uses
  %i.ot = icmp samesign ugt i32 %i.or, 4
  br i1 %i.ot, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !61
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ov, i32 noundef 16, ptr noundef nonnull @.str.26, i32 noundef %i.os) #12
  br label %bb.ak

bb.o:                                             ; preds = %bb.m
  %i.ow = tail call i32 @llvm.bswap.i32(i32 %i.nu)
  %i.ox = and i32 %i.no, 7
  %i.oy = shl i32 %i.ow, %i.ox
  %i.oz = lshr i32 %i.oy, 30
  %i.pa = add nuw nsw i32 %i.oz, %4
  store i32 %i.os, ptr %i.a, align 8, !tbaa !49
  %i.pb = trunc nuw nsw i32 %i.pa to i8
  %i.pc = zext nneg i32 %i.os to i64              ; 4 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.pc
  store i8 %i.pb, ptr %i.pd, align 1, !tbaa !12
  %.not249 = icmp eq i32 %i.oe, 0
  br i1 %.not249, label %.preheader223, label %.lr.ph

.preheader223:                                    ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %bb.o
  %.not250 = icmp eq i32 %i.oo, 0
  br i1 %.not250, label %._crit_edge, label %.lr.ph226.preheader

.lr.ph226.preheader:                              ; preds = %.preheader223
  %i.pe = zext nneg i32 %i.or to i64              ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.pc
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !12
  %i.ph = load i32, ptr %i.n, align 8, !tbaa !30  ; 3 uses
  %i.pi = load i32, ptr %i.p, align 8, !tbaa !31
  %i.pj = load ptr, ptr %2, align 8, !tbaa !42
  %i.pk = lshr i32 %i.ph, 3
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.pl
  %i.pn = load i32, ptr %i.pm, align 1, !tbaa !12
  %i.po = tail call i32 @llvm.bswap.i32(i32 %i.pn)
  %i.pp = and i32 %i.ph, 7
  %i.pq = shl i32 %i.po, %i.pp
  %i.pr = add i32 %i.ph, 2
  %i.ps = tail call i32 @llvm.umin.i32(i32 %i.pi, i32 %i.pr)
  store i32 %i.ps, ptr %i.n, align 8, !tbaa !30
  %sh.diff = lshr i32 %i.pq, 29
  %tr.sh.diff = trunc nuw nsw i32 %sh.diff to i8
  %i.pt = and i8 %tr.sh.diff, 6
  %i.pu = add i8 %i.pg, -2
  %i.pv = sub i8 %i.pu, %i.pt
  %i.pw = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.pe
  store i8 %i.pv, ptr %i.pw, align 1, !tbaa !12
  %exitcond262.not = icmp eq i32 %i.oo, 1
  br i1 %exitcond262.not, label %._crit_edge, label %.lr.ph226.1

.lr.ph:                                           ; preds = %bb.o
  %.pre = load i8, ptr %i.j, align 4, !tbaa !12
  %i.px = load i32, ptr %i.n, align 8, !tbaa !30  ; 3 uses
  %i.py = load i32, ptr %i.p, align 8, !tbaa !31
  %i.pz = load ptr, ptr %2, align 8, !tbaa !42
  %i.qa = lshr i32 %i.px, 3
  %i.qb = zext nneg i32 %i.qa to i64
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.qb
  %i.qd = load i32, ptr %i.qc, align 1, !tbaa !12
  %i.qe = tail call i32 @llvm.bswap.i32(i32 %i.qd)
  %i.qf = and i32 %i.px, 7
  %i.qg = shl i32 %i.qe, %i.qf
  %i.qh = add i32 %i.px, 2
  %i.qi = tail call i32 @llvm.umin.i32(i32 %i.py, i32 %i.qh)
  store i32 %i.qi, ptr %i.n, align 8, !tbaa !30
  %sh.diff209 = lshr i32 %i.qg, 29
  %tr.sh.diff210 = trunc nuw nsw i32 %sh.diff209 to i8
  %i.qj = and i8 %tr.sh.diff210, 6
  %i.qk = add i8 %.pre, 2
  %i.ql = add i8 %i.qk, %i.qj                     ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %3, i64 88717
  store i8 %i.ql, ptr %i.qm, align 1, !tbaa !12
  %exitcond.not = icmp eq i32 %i.oe, 1
  br i1 %exitcond.not, label %.preheader223, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.qn = load i32, ptr %i.n, align 8, !tbaa !30  ; 3 uses
  %i.qo = load i32, ptr %i.p, align 8, !tbaa !31
  %i.qp = load ptr, ptr %2, align 8, !tbaa !42
  %i.qq = lshr i32 %i.qn, 3
  %i.qr = zext nneg i32 %i.qq to i64
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.qr
  %i.qt = load i32, ptr %i.qs, align 1, !tbaa !12
  %i.qu = tail call i32 @llvm.bswap.i32(i32 %i.qt)
  %i.qv = and i32 %i.qn, 7
  %i.qw = shl i32 %i.qu, %i.qv
  %i.qx = add i32 %i.qn, 2
  %i.qy = tail call i32 @llvm.umin.i32(i32 %i.qo, i32 %i.qx)
  store i32 %i.qy, ptr %i.n, align 8, !tbaa !30
  %sh.diff209.1 = lshr i32 %i.qw, 29
  %tr.sh.diff210.1 = trunc nuw nsw i32 %sh.diff209.1 to i8
  %i.qz = and i8 %tr.sh.diff210.1, 6
  %i.ra = add i8 %i.ql, 2
  %i.rb = add i8 %i.ra, %i.qz                     ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %3, i64 88718
  store i8 %i.rb, ptr %i.rc, align 2, !tbaa !12
  %exitcond.not.1 = icmp eq i32 %i.oe, 2
  br i1 %exitcond.not.1, label %.preheader223, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.rd = load i32, ptr %i.n, align 8, !tbaa !30  ; 3 uses
  %i.re = load i32, ptr %i.p, align 8, !tbaa !31
  %i.rf = load ptr, ptr %2, align 8, !tbaa !42
  %i.rg = lshr i32 %i.rd, 3
  %i.rh = zext nneg i32 %i.rg to i64
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.rh
  %i.rj = load i32, ptr %i.ri, align 1, !tbaa !12
  %i.rk = tail call i32 @llvm.bswap.i32(i32 %i.rj)
  %i.rl = and i32 %i.rd, 7
  %i.rm = shl i32 %i.rk, %i.rl
  %i.rn = add i32 %i.rd, 2
  %i.ro = tail call i32 @llvm.umin.i32(i32 %i.re, i32 %i.rn)
  store i32 %i.ro, ptr %i.n, align 8, !tbaa !30
  %sh.diff209.2 = lshr i32 %i.rm, 29
  %tr.sh.diff210.2 = trunc nuw nsw i32 %sh.diff209.2 to i8
  %i.rp = and i8 %tr.sh.diff210.2, 6
  %i.rq = add i8 %i.rb, 2
  %i.rr = add i8 %i.rq, %i.rp
  %i.rs = getelementptr inbounds nuw i8, ptr %3, i64 88719
  store i8 %i.rr, ptr %i.rs, align 1, !tbaa !12
  br label %.preheader223

.lr.ph226.1:                                      ; preds = %.lr.ph226.preheader
  %i.rt = zext nneg i32 %i.or to i64
  %i.ru = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.rt
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !12
  %i.rw = load i32, ptr %i.n, align 8, !tbaa !30  ; 3 uses
  %i.rx = load i32, ptr %i.p, align 8, !tbaa !31
  %i.ry = load ptr, ptr %2, align 8, !tbaa !42
  %i.rz = lshr i32 %i.rw, 3
  %i.sa = zext nneg i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.sa
  %i.sc = load i32, ptr %i.sb, align 1, !tbaa !12
  %i.sd = tail call i32 @llvm.bswap.i32(i32 %i.sc)
  %i.se = and i32 %i.rw, 7
  %i.sf = shl i32 %i.sd, %i.se
  %i.sg = add i32 %i.rw, 2
  %i.sh = tail call i32 @llvm.umin.i32(i32 %i.rx, i32 %i.sg)
  store i32 %i.sh, ptr %i.n, align 8, !tbaa !30
  %sh.diff.1 = lshr i32 %i.sf, 29
  %tr.sh.diff.1 = trunc nuw nsw i32 %sh.diff.1 to i8
  %i.si = and i8 %tr.sh.diff.1, 6
  %i.sj = add i8 %i.rv, -2
  %i.sk = sub i8 %i.sj, %i.si
  %i.sl = getelementptr i8, ptr %i.j, i64 %i.pe
  %i.sm = getelementptr i8, ptr %i.sl, i64 -1
  store i8 %i.sk, ptr %i.sm, align 1, !tbaa !12
  %exitcond262.not.1 = icmp eq i32 %i.oo, 2
  br i1 %exitcond262.not.1, label %._crit_edge, label %.lr.ph226.2

.lr.ph226.2:                                      ; preds = %.lr.ph226.1
  %i.sn = getelementptr i8, ptr %i.j, i64 %i.pc
  %i.so = getelementptr i8, ptr %i.sn, i64 -2
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !12
  %i.sq = load i32, ptr %i.n, align 8, !tbaa !30  ; 3 uses
  %i.sr = load i32, ptr %i.p, align 8, !tbaa !31
  %i.ss = load ptr, ptr %2, align 8, !tbaa !42
  %i.st = lshr i32 %i.sq, 3
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.su
  %i.sw = load i32, ptr %i.sv, align 1, !tbaa !12
  %i.sx = tail call i32 @llvm.bswap.i32(i32 %i.sw)
  %i.sy = and i32 %i.sq, 7
  %i.sz = shl i32 %i.sx, %i.sy
  %i.ta = add i32 %i.sq, 2
  %i.tb = tail call i32 @llvm.umin.i32(i32 %i.sr, i32 %i.ta)
  store i32 %i.tb, ptr %i.n, align 8, !tbaa !30
  %sh.diff.2 = lshr i32 %i.sz, 29
  %tr.sh.diff.2 = trunc nuw nsw i32 %sh.diff.2 to i8
  %i.tc = and i8 %tr.sh.diff.2, 6
  %i.td = add i8 %i.sp, -2
  %i.te = sub i8 %i.td, %i.tc
  %i.tf = getelementptr i8, ptr %i.j, i64 %i.pe
  %i.tg = getelementptr i8, ptr %i.tf, i64 -2
  store i8 %i.te, ptr %i.tg, align 1, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph226.preheader, %.lr.ph226.1, %.lr.ph226.2, %.preheader223
  %i.th = getelementptr inbounds nuw i8, ptr @ceil_log2, i64 %i.pc
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !12
  %i.tj = sext i8 %i.ti to i32                    ; 8 uses
  %i.tk = load i32, ptr %i.n, align 8, !tbaa !30  ; 9 uses
  %i.tl = load i32, ptr %i.p, align 8, !tbaa !31
  %i.tm = load ptr, ptr %2, align 8, !tbaa !42
  %i.tn = lshr i32 %i.tk, 3
  %i.to = zext nneg i32 %i.tn to i64
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.to
  %i.tq = load i32, ptr %i.tp, align 1, !tbaa !12 ; 7 uses
  %i.tr = add i32 %i.tk, %i.tj
  %i.ts = tail call i32 @llvm.umin.i32(i32 %i.tl, i32 %i.tr)
  store i32 %i.ts, ptr %i.n, align 8, !tbaa !30
  %i.tt = getelementptr inbounds nuw i8, ptr %3, i64 13
  %i.tu = load i32, ptr %i.n, align 8, !tbaa !30  ; 4 uses
  %i.tv = load ptr, ptr %2, align 8, !tbaa !42
  %i.tw = lshr i32 %i.tu, 3
  %i.tx = zext nneg i32 %i.tw to i64
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tv, i64 %i.tx
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !12
  %i.ua = load i32, ptr %i.p, align 8, !tbaa !31
  %i.ub = icmp slt i32 %i.tu, %i.ua
  %i.uc = zext i1 %i.ub to i32
  %spec.select.i205 = add i32 %i.tu, %i.uc
  %i.ud = zext i8 %i.tz to i32
  %i.ue = and i32 %i.tu, 7
  %i.uf = shl nuw nsw i32 %i.ud, %i.ue
  store i32 %spec.select.i205, ptr %i.n, align 8, !tbaa !30
  %i.ug = trunc i32 %i.uf to i8
  %i.uh = lshr i8 %i.ug, 7
  store i8 %i.uh, ptr %i.tt, align 1, !tbaa !12
  %exitcond267.not = icmp eq i32 %i.or, 0
  br i1 %exitcond267.not, label %get_bits1_vector.exit202, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.ui = load i32, ptr %i.n, align 8, !tbaa !30  ; 4 uses
  %i.uj = load ptr, ptr %2, align 8, !tbaa !42
  %i.uk = lshr i32 %i.ui, 3
  %i.ul = zext nneg i32 %i.uk to i64
  %i.um = getelementptr inbounds nuw i8, ptr %i.uj, i64 %i.ul
  %i.un = load i8, ptr %i.um, align 1, !tbaa !12
  %i.uo = load i32, ptr %i.p, align 8, !tbaa !31
  %i.up = icmp slt i32 %i.ui, %i.uo
  %i.uq = zext i1 %i.up to i32
  %spec.select.i205.1 = add i32 %i.ui, %i.uq
  %i.ur = zext i8 %i.un to i32
  %i.us = and i32 %i.ui, 7
  %i.ut = shl nuw nsw i32 %i.ur, %i.us
  store i32 %spec.select.i205.1, ptr %i.n, align 8, !tbaa !30
  %i.uu = trunc i32 %i.ut to i8
  %i.uv = lshr i8 %i.uu, 7
  %i.uw = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i8 %i.uv, ptr %i.uw, align 2, !tbaa !12
  %exitcond267.not.1 = icmp eq i32 %i.os, 2
  br i1 %exitcond267.not.1, label %get_bits1_vector.exit202, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ux = load i32, ptr %i.n, align 8, !tbaa !30  ; 4 uses
  %i.uy = load ptr, ptr %2, align 8, !tbaa !42
  %i.uz = lshr i32 %i.ux, 3
  %i.va = zext nneg i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.va
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !12
  %i.vd = load i32, ptr %i.p, align 8, !tbaa !31
  %i.ve = icmp slt i32 %i.ux, %i.vd
  %i.vf = zext i1 %i.ve to i32
  %spec.select.i205.2 = add i32 %i.ux, %i.vf
  %i.vg = zext i8 %i.vc to i32
  %i.vh = and i32 %i.ux, 7
  %i.vi = shl nuw nsw i32 %i.vg, %i.vh
  store i32 %spec.select.i205.2, ptr %i.n, align 8, !tbaa !30
  %i.vj = trunc i32 %i.vi to i8
  %i.vk = lshr i8 %i.vj, 7
  %i.vl = getelementptr inbounds nuw i8, ptr %3, i64 15
  store i8 %i.vk, ptr %i.vl, align 1, !tbaa !12
  %exitcond267.not.2 = icmp eq i32 %i.os, 3
  br i1 %exitcond267.not.2, label %get_bits1_vector.exit202, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.vm = load i32, ptr %i.n, align 8, !tbaa !30  ; 4 uses
  %i.vn = load ptr, ptr %2, align 8, !tbaa !42
  %i.vo = lshr i32 %i.vm, 3
  %i.vp = zext nneg i32 %i.vo to i64
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.vp
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !12
  %i.vs = load i32, ptr %i.p, align 8, !tbaa !31
  %i.vt = icmp slt i32 %i.vm, %i.vs
  %i.vu = zext i1 %i.vt to i32
  %spec.select.i205.3 = add i32 %i.vm, %i.vu
  %i.vv = zext i8 %i.vr to i32
  %i.vw = and i32 %i.vm, 7
  %i.vx = shl nuw nsw i32 %i.vv, %i.vw
  store i32 %spec.select.i205.3, ptr %i.n, align 8, !tbaa !30
  %i.vy = trunc i32 %i.vx to i8
  %i.vz = lshr i8 %i.vy, 7
  %i.wa = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %i.vz, ptr %i.wa, align 8, !tbaa !12
  %exitcond267.not.3 = icmp eq i32 %i.os, 4
  br i1 %exitcond267.not.3, label %get_bits1_vector.exit202, label %5

5:                                                ; preds = %bb.r
  %6 = load i32, ptr %i.n, align 8, !tbaa !30     ; 4 uses
  %7 = load ptr, ptr %2, align 8, !tbaa !42
  %8 = lshr i32 %6, 3
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !12
  %12 = load i32, ptr %i.p, align 8, !tbaa !31
  %13 = icmp slt i32 %6, %12
  %14 = zext i1 %13 to i32
  %spec.select.i205.4 = add i32 %6, %14
  %15 = zext i8 %11 to i32
  %16 = and i32 %6, 7
  %17 = shl nuw nsw i32 %15, %16
  store i32 %spec.select.i205.4, ptr %i.n, align 8, !tbaa !30
  %18 = trunc i32 %17 to i8
  %19 = lshr i8 %18, 7
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 %19, ptr %20, align 1, !tbaa !12
  %exitcond267.not.4 = icmp eq i32 %i.os, 5
  br i1 %exitcond267.not.4, label %get_bits1_vector.exit202, label %21

21:                                               ; preds = %5
  %22 = load i32, ptr %i.n, align 8, !tbaa !30    ; 4 uses
  %23 = load ptr, ptr %2, align 8, !tbaa !42
  %24 = lshr i32 %22, 3
  %25 = zext nneg i32 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr %23, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !12
  %28 = load i32, ptr %i.p, align 8, !tbaa !31
  %29 = icmp slt i32 %22, %28
  %30 = zext i1 %29 to i32
  %spec.select.i205.5 = add i32 %22, %30
  %31 = zext i8 %27 to i32
  %32 = and i32 %22, 7
  %33 = shl nuw nsw i32 %31, %32
  store i32 %spec.select.i205.5, ptr %i.n, align 8, !tbaa !30
  %34 = trunc i32 %33 to i8
  %35 = lshr i8 %34, 7
  %36 = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 %35, ptr %36, align 2, !tbaa !12
  %exitcond267.not.5 = icmp eq i32 %i.os, 6
  br i1 %exitcond267.not.5, label %get_bits1_vector.exit202, label %bb.s

bb.s:                                             ; preds = %21
  %i.wb = load i32, ptr %i.n, align 8, !tbaa !30  ; 4 uses
  %i.wc = load ptr, ptr %2, align 8, !tbaa !42
  %i.wd = lshr i32 %i.wb, 3
  %i.we = zext nneg i32 %i.wd to i64
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wc, i64 %i.we
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !12
  %i.wh = load i32, ptr %i.p, align 8, !tbaa !31
  %i.wi = icmp slt i32 %i.wb, %i.wh
  %i.wj = zext i1 %i.wi to i32
  %spec.select.i205.6 = add i32 %i.wb, %i.wj
  %i.wk = zext i8 %i.wg to i32
  %i.wl = and i32 %i.wb, 7
  %i.wm = shl nuw nsw i32 %i.wk, %i.wl
  store i32 %spec.select.i205.6, ptr %i.n, align 8, !tbaa !30
  %i.wn = trunc i32 %i.wm to i8
  %i.wo = lshr i8 %i.wn, 7
  %i.wp = getelementptr inbounds nuw i8, ptr %3, i64 19
  store i8 %i.wo, ptr %i.wp, align 1, !tbaa !12
  br label %get_bits1_vector.exit202

default.unreachable310:                           ; preds = %bb.a
  unreachable

.thread312:                                       ; preds = %._crit_edge241, %.lr.ph244.preheader
  store i32 0, ptr %3, align 16, !tbaa !53
  %i.wq = add nuw nsw i32 %i.am, 1
  br label %.lr.ph247.preheader

get_bits1_vector.exit202:                         ; preds = %._crit_edge, %bb.p, %bb.q, %bb.r, %5, %21, %bb.s, %._crit_edge231, %bb.j, %bb.k, %bb.l, %._crit_edge236, %bb.f, %bb.g, %bb.h
  %.sink319 = phi i32 [ %i.lc, %._crit_edge231 ], [ %i.fr, %._crit_edge236 ], [ %i.fr, %bb.h ], [ %i.fr, %bb.g ], [ %i.fr, %bb.f ], [ %i.lc, %bb.l ], [ %i.lc, %bb.k ], [ %i.lc, %bb.j ], [ %i.tq, %bb.s ], [ %i.tq, %21 ], [ %i.tq, %5 ], [ %i.tq, %bb.r ], [ %i.tq, %bb.q ], [ %i.tq, %bb.p ], [ %i.tq, %._crit_edge ]
  %.sink = phi i32 [ %i.kw, %._crit_edge231 ], [ %i.fl, %._crit_edge236 ], [ %i.fl, %bb.h ], [ %i.fl, %bb.g ], [ %i.fl, %bb.f ], [ %i.kw, %bb.l ], [ %i.kw, %bb.k ], [ %i.kw, %bb.j ], [ %i.tk, %bb.s ], [ %i.tk, %21 ], [ %i.tk, %5 ], [ %i.tk, %bb.r ], [ %i.tk, %bb.q ], [ %i.tk, %bb.p ], [ %i.tk, %._crit_edge ]
  %.sink316 = phi i32 [ %i.kv, %._crit_edge231 ], [ %i.fk, %._crit_edge236 ], [ %i.fk, %bb.h ], [ %i.fk, %bb.g ], [ %i.fk, %bb.f ], [ %i.kv, %bb.l ], [ %i.kv, %bb.k ], [ %i.kv, %bb.j ], [ %i.tj, %bb.s ], [ %i.tj, %21 ], [ %i.tj, %5 ], [ %i.tj, %bb.r ], [ %i.tj, %bb.q ], [ %i.tj, %bb.p ], [ %i.tj, %._crit_edge ]
  %37 = phi i32 [ %i.it, %._crit_edge231 ], [ %i.cx, %._crit_edge236 ], [ %i.cx, %bb.h ], [ %i.cx, %bb.g ], [ %i.cx, %bb.f ], [ %i.it, %bb.l ], [ %i.it, %bb.k ], [ %i.it, %bb.j ], [ %i.os, %bb.s ], [ %i.os, %21 ], [ %i.os, %5 ], [ %i.os, %bb.r ], [ %i.os, %bb.q ], [ %i.os, %bb.p ], [ %i.os, %._crit_edge ] ; 2 uses
  %i.wr = tail call i32 @llvm.bswap.i32(i32 %.sink319)
  %i.ws = and i32 %.sink, 7
  %i.wt = shl i32 %i.wr, %i.ws
  %i.wu = sub nsw i32 32, %.sink316
  %i.wv = lshr i32 %i.wt, %i.wu                   ; 4 uses
  store i32 %i.z, ptr %3, align 16, !tbaa !53
  %i.ww = icmp sgt i32 %i.wv, -1
  br i1 %i.ww, label %bb.u, label %bb.t

bb.t:                                             ; preds = %get_bits1_vector.exit202
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.5, i32 noundef 738) #12
  tail call void @abort() #13
  unreachable

bb.u:                                             ; preds = %get_bits1_vector.exit202
  %i.wx = add nuw nsw i32 %37, 1                  ; 2 uses
  %i.wy = icmp samesign ugt i32 %i.wv, %i.wx
  br i1 %i.wy, label %bb.v, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %bb.u, %.thread312
  %i.wz = phi i32 [ %i.wq, %.thread312 ], [ %i.wx, %bb.u ] ; 2 uses
  %.0185207314 = phi i32 [ 0, %.thread312 ], [ %i.wv, %bb.u ] ; 7 uses
  %i.xa = phi i32 [ %i.am, %.thread312 ], [ %37, %bb.u ] ; 5 uses
  %wide.trip.count299 = zext nneg i32 %i.wz to i64
  br label %.lr.ph247

bb.v:                                             ; preds = %bb.u
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xc = load ptr, ptr %i.xb, align 8, !tbaa !61
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.xc, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %i.wv) #12
  br label %bb.ak

bb.w:                                             ; preds = %.lr.ph247
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %._crit_edge248, label %.lr.ph247, !llvm.loop !178

.lr.ph247:                                        ; preds = %.lr.ph247.preheader, %bb.w
  %indvars.iv296 = phi i64 [ 1, %.lr.ph247.preheader ], [ %indvars.iv.next297, %bb.w ] ; 2 uses
  %i.xd = getelementptr i8, ptr %i.j, i64 %indvars.iv296 ; 2 uses
  %i.xe = getelementptr i8, ptr %i.xd, i64 -1
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !12
  %i.xg = load i8, ptr %i.xd, align 1, !tbaa !12
  %.not200 = icmp ult i8 %i.xf, %i.xg
  br i1 %.not200, label %bb.w, label %bb.x

bb.x:                                             ; preds = %.lr.ph247
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !61
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.xi, i32 noundef 16, ptr noundef nonnull @.str.29) #12
  br label %bb.ak

._crit_edge248:                                   ; preds = %bb.w
  %i.xj = icmp ugt i32 %i.xa, 1                   ; 2 uses
  %i.xk = select i1 %i.xj, i32 2, i32 1           ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.xk, ptr %i.xl, align 8, !tbaa !52
  %i.xm = load i8, ptr %i.j, align 4, !tbaa !12
  %i.xn = getelementptr inbounds nuw i8, ptr %3, i64 88726 ; 2 uses
  store i8 %i.xm, ptr %i.xn, align 2, !tbaa !12
  %i.xo = zext nneg i32 %i.xa to i64
  %i.xp = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.xo
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !12
  %i.xr = zext nneg i32 %i.xk to i64
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.xr
  store i8 %i.xq, ptr %i.xs, align 1, !tbaa !12
  br i1 %i.xj, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %._crit_edge248
  %i.xt = icmp eq i32 %i.z, 0
  br i1 %i.xt, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.xu = lshr i32 %i.xa, 1
  br label %bb.af

bb.aa:                                            ; preds = %bb.y
  %i.xv = and i32 %i.y, 1073741824
  %.not198 = icmp eq i32 %i.xv, 0
  br i1 %.not198, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.xw = tail call i32 @llvm.smax.i32(i32 %.0185207314, i32 2)
  %reass.sub = sub nsw i32 %i.xa, %i.xw
  %i.xx = add nsw i32 %reass.sub, 1
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  switch i32 %.0185207314, label %bb.ae [
    i32 0, label %bb.af
    i32 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.xy = add nsw i32 %i.xa, -1
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.xz = add nsw i32 %.0185207314, -1
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ab, %bb.ad, %bb.ae, %bb.z
  %.0 = phi i32 [ %i.xu, %bb.z ], [ %i.xx, %bb.ab ], [ %i.xy, %bb.ad ], [ %i.xz, %bb.ae ], [ 1, %bb.ac ]
  %i.ya = sext i32 %.0 to i64
  %i.yb = getelementptr inbounds i8, ptr %i.j, i64 %i.ya
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !12
  %i.yd = getelementptr inbounds nuw i8, ptr %3, i64 88727
  store i8 %i.yc, ptr %i.yd, align 1, !tbaa !12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge248
  %i.ye = getelementptr inbounds nuw i8, ptr %3, i64 14580
  %i.yf = getelementptr inbounds nuw i8, ptr %3, i64 14584 ; 4 uses
  %i.yg = load i32, ptr %i.yf, align 8, !tbaa !13
  %i.yh = icmp ne i32 %i.yg, %i.b
  %.neg = sext i1 %i.yh to i32
  store i32 %.neg, ptr %i.ye, align 4, !tbaa !13
  store i32 -1, ptr %i.yf, align 8, !tbaa !13
  %i.yi = trunc i32 %i.z to i1
  %i.yj = icmp ne i32 %.0185207314, 0
  %or.cond = and i1 %i.yj, %i.yi
  br i1 %or.cond, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.yk = sub nuw nsw i32 %i.wz, %.0185207314
  store i32 %i.yk, ptr %i.yf, align 8, !tbaa !13
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.yl = icmp eq i32 %i.z, 2
  %i.ym = icmp samesign ugt i32 %.0185207314, 1
  %or.cond3 = and i1 %i.yl, %i.ym
  br i1 %or.cond3, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.yn = add nsw i32 %.0185207314, -1
  store i32 %i.yn, ptr %i.yf, align 8, !tbaa !13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.aj, %bb.ai, %bb.x, %bb.v, %bb.n, %bb.c
  %.0187 = phi i32 [ -1, %bb.v ], [ -1, %bb.x ], [ -1, %bb.n ], [ -1, %bb.c ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %bb.ah ]
  ret i32 %.0187
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @read_sbr_dtdf(i32 %.16.val, ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #6 {
bb.a:
  %.not = icmp eq i32 %.16.val, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not22 = icmp eq i32 %2, 0
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  br i1 %.not22, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !49
  %i.e = add i32 %i.d, -1                         ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %get_bits1_vector.exit32

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.i = load i32, ptr %i.g, align 8, !tbaa !30   ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !42
  %i.k = lshr i32 %i.i, 3
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !12
  %i.o = load i32, ptr %i.h, align 8, !tbaa !31
  %i.p = icmp slt i32 %i.i, %i.o
  %i.q = zext i1 %i.p to i32
  %spec.select.i = add i32 %i.i, %i.q
  %i.r = zext i8 %i.n to i32
  %i.s = and i32 %i.i, 7
  %i.t = shl nuw nsw i32 %i.r, %i.s
  store i32 %spec.select.i, ptr %i.g, align 8, !tbaa !30
  %i.u = trunc i32 %i.t to i8
  %i.v = lshr i8 %i.u, 7
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %i.v, ptr %i.w, align 1, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %get_bits1_vector.exit32, label %bb.d, !llvm.loop !1

bb.e:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !49   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph6, label %.loopexit

.lr.ph6:                                          ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count22 = zext nneg i32 %i.y to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph6, %bb.f
  %indvars.iv19 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next20, %bb.f ] ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 8, !tbaa !30 ; 4 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !42
  %i.ae = lshr i32 %i.ac, 3
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !12
  %i.ai = load i32, ptr %i.ab, align 8, !tbaa !31
  %i.aj = icmp slt i32 %i.ac, %i.ai
  %i.ak = zext i1 %i.aj to i32
  %spec.select.i33 = add i32 %i.ac, %i.ak
  %i.al = zext i8 %i.ah to i32
  %i.am = and i32 %i.ac, 7
  %i.an = shl nuw nsw i32 %i.al, %i.am
  store i32 %spec.select.i33, ptr %i.aa, align 8, !tbaa !30
  %i.ao = trunc i32 %i.an to i8
end_hunk_1
