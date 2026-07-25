inline.NumInlined: 58
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ZSTD_ldm_generateSequences:bb.a
bb.j:                                             ; preds = %bb.i, %bb.h
  %.val270.i101 = phi i32 [ %i.bx, %bb.i ], [ %i.by, %bb.h ]
  store i32 0, ptr %i.m, align 8, !tbaa !3
  br label %ZSTD_window_enforceMaxDist.exit

ZSTD_window_enforceMaxDist.exit:                  ; preds = %.ZSTD_window_enforceMaxDist.exit_crit_edge, %bb.j
  %.val271.i = phi i32 [ %i.bu, %.ZSTD_window_enforceMaxDist.exit_crit_edge ], [ %i.bx, %bb.j ] ; 2 uses
  %.val270.i = phi i32 [ %.val270.i.pre, %.ZSTD_window_enforceMaxDist.exit_crit_edge ], [ %.val270.i101, %bb.j ] ; 5 uses
  %.not.i = icmp ult i32 %.val271.i, %.val270.i   ; 4 uses
  %i.ca = load i32, ptr %i.u, align 4, !tbaa !12
  %.12.val.fr.i.i = freeze i32 %i.ca              ; 2 uses
  %i.cb = load i32, ptr %i.v, align 4, !tbaa !11  ; 2 uses
  %i.cc = shl nuw i32 1, %i.cb
  %i.cd = load i32, ptr %i.o, align 4, !tbaa !13
  %i.ce = sub i32 %i.cd, %i.cb
  br i1 %.not.i, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %ZSTD_window_enforceMaxDist.exit
  %i.cf = load ptr, ptr %i.p, align 8, !tbaa !47
  br label %.thread.i

.thread.i:                                        ; preds = %bb.k, %ZSTD_window_enforceMaxDist.exit
  %i.cg = phi i32 [ %.val271.i, %bb.k ], [ %.val270.i, %ZSTD_window_enforceMaxDist.exit ] ; 3 uses
  %i.ch = phi ptr [ %i.cf, %bb.k ], [ null, %ZSTD_window_enforceMaxDist.exit ] ; 3 uses
  %i.ci = zext i32 %i.cg to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ci
  %i.ck = select i1 %.not.i, ptr %i.cj, ptr null  ; 4 uses
  %i.cl = zext i32 %.val270.i to i64              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cl ; 2 uses
  %i.cn = select i1 %.not.i, ptr %i.cm, ptr null  ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.cl ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.al ; 6 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.cr = zext i32 %.12.val.fr.i.i to i64         ; 7 uses
  %i.cs = icmp ult i64 %i.al, %i.cr
  br i1 %i.cs, label %ZSTD_ldm_generateSequences_internal.exit.thread, label %ZSTD_ldm_gear_reset.exit.i

ZSTD_ldm_generateSequences_internal.exit.thread:  ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.bj

ZSTD_ldm_gear_reset.exit.i:                       ; preds = %.thread.i
  %.val258.i = load i32, ptr %i.y, align 4, !tbaa !14 ; 3 uses
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %.12.val.fr.i.i, i32 64) ; 2 uses
  store i64 4294967295, ptr %5, align 8, !tbaa !21
  %i.ct = add i32 %.val258.i, -1
  %or.cond.not.i.i = icmp ult i32 %i.ct, %spec.select.i.i
  %i.cu = zext nneg i32 %.val258.i to i64
  %notmask15.i.i = shl nsw i64 -1, %i.cu
  %i.cv = xor i64 %notmask15.i.i, -1
  %i.cw = sub nuw nsw i32 %spec.select.i.i, %.val258.i
  %narrow.i.i = select i1 %or.cond.not.i.i, i32 %i.cw, i32 0
  %i.cx = zext nneg i32 %narrow.i.i to i64
  %.sink.i.i = shl i64 %i.cv, %i.cx
  store i64 %.sink.i.i, ptr %i.z, align 8, !tbaa !24
  %i.cy = add nsw i64 %i.al, -8
  %i.cz = icmp sgt i64 %i.cy, %i.cr
  br i1 %i.cz, label %.lr.ph346.i, label %ZSTD_ldm_generateSequences_internal.exit

.lr.ph346.i:                                      ; preds = %ZSTD_ldm_gear_reset.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.cr
  %i.db = ptrtoint ptr %i.cq to i64
  %i.dc = sub nsw i64 0, %i.cr
  %notmask.i = shl nsw i32 -1, %i.ce
  %i.dd = xor i32 %notmask.i, -1
  %i.de = zext i32 %i.cc to i64
  %i.df = getelementptr inbounds i8, ptr %i.cp, i64 -7 ; 4 uses
  %i.dg = getelementptr inbounds i8, ptr %i.cp, i64 -3 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.cp, i64 -1 ; 2 uses
  %i.di = icmp ugt ptr %i.cn, %i.ck
  %.idx.i = shl nuw nsw i64 %i.de, 3
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.i, %.lr.ph346.i
  %.0208345.i = phi ptr [ %i.af, %.lr.ph346.i ], [ %.3211.i, %.loopexit.i ] ; 2 uses
  %.0213344.i = phi ptr [ %i.da, %.lr.ph346.i ], [ %i.lz, %.loopexit.i ] ; 6 uses
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.dj = ptrtoint ptr %.0213344.i to i64
  %i.dk = sub i64 %i.db, %i.dj
  %i.dl = call fastcc i64 @ZSTD_ldm_gear_feed(ptr noundef %5, ptr noundef %.0213344.i, i64 noundef %i.dk, ptr noundef nonnull %i.w, ptr noundef %i.a) ; 3 uses
  %i.dm = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not348.i = icmp eq i32 %i.dm, 0
  br i1 %.not348.i, label %.loopexit.i, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %bb.l
  %invariant.gep.i = getelementptr i8, ptr %.0213344.i, i64 %i.dc
  %.val259.i = load ptr, ptr %i.t, align 8, !tbaa !26
  %wide.trip.count.i63 = zext i32 %i.dm to i64    ; 2 uses
  br label %bb.m

.lr.ph342.i:                                      ; preds = %bb.m
  %i.dn = getelementptr inbounds nuw i8, ptr %.0213344.i, i64 %i.dl
  br label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph.i62
  %indvars.iv.i64 = phi i64 [ 0, %.lr.ph.i62 ], [ %indvars.iv.next.i65, %bb.m ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i64
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !25
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.dp ; 2 uses
  %i.dq = tail call i64 @ZSTD_XXH64(ptr noundef captures(none) %gep.i, i64 noundef %i.cr, i64 noundef 0) #16 ; 2 uses
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = and i32 %i.dr, %i.dd                    ; 2 uses
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv.i64 ; 4 uses
  store ptr %gep.i, ptr %i.dt, align 8, !tbaa !48
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 %i.ds, ptr %i.du, align 8, !tbaa !50
  %i.dv = lshr i64 %i.dq, 32
  %i.dw = trunc nuw i64 %i.dv to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !51
  %i.dy = zext nneg i32 %i.ds to i64
  %.sroa.3292.0.copyload.i = load i32, ptr %i.v, align 4, !tbaa !3
  %i.dz = zext nneg i32 %.sroa.3292.0.copyload.i to i64
  %i.ea = shl i64 %i.dy, %i.dz
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.val259.i, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !52
  tail call void @llvm.prefetch.p0(ptr %i.eb, i32 0, i32 3, i32 1)
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i64, 1 ; 2 uses
  %exitcond.not.i66 = icmp eq i64 %indvars.iv.next.i65, %wide.trip.count.i63
  br i1 %exitcond.not.i66, label %.lr.ph342.i, label %bb.m, !llvm.loop !53

bb.n:                                             ; preds = %bb.bi, %.lr.ph342.i
  %indvars.iv358.i = phi i64 [ 0, %.lr.ph342.i ], [ %indvars.iv.next359.i, %bb.bi ] ; 2 uses
  %.1209340.i = phi ptr [ %.0208345.i, %.lr.ph342.i ], [ %.2210.ph.i, %bb.bi ] ; 8 uses
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv358.i ; 4 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !48 ; 18 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !51 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !50 ; 2 uses
  %i.ej = ptrtoint ptr %i.ee to i64               ; 5 uses
  %i.ek = sub i64 %i.ej, %.pre-phi                ; 3 uses
  %i.el = trunc i64 %i.ek to i32
  %i.em = icmp ult ptr %i.ee, %.1209340.i
  br i1 %i.em, label %.sink.split.i, label %.lr.ph333.i

.lr.ph333.i:                                      ; preds = %bb.n
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !52 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.idx.i ; 2 uses
  %i.eq = icmp ult ptr %i.ee, %i.df
  %i.er = icmp ugt ptr %i.ee, %.1209340.i         ; 2 uses
  br i1 %.not.i, label %.lr.ph333.split.us.i, label %.lr.ph333.split.i

.lr.ph333.split.us.i:                             ; preds = %.lr.ph333.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i
  %.0225332.us.i = phi i64 [ %.2227.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ 0, %.lr.ph333.i ] ; 4 uses
  %.0228331.us.i = phi i64 [ %.2230.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ 0, %.lr.ph333.i ] ; 4 uses
  %.0239330.us.i = phi i64 [ %.2241.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ 0, %.lr.ph333.i ] ; 5 uses
  %.0242329.us.i = phi ptr [ %i.il, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ %i.eo, %.lr.ph333.i ] ; 4 uses
  %.0243328.us.i = phi ptr [ %.2245.us.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i ], [ null, %.lr.ph333.i ] ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0242329.us.i, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !54
  %.not254.us.i = icmp eq i32 %i.et, %i.eg
  br i1 %.not254.us.i, label %bb.o, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i

bb.o:                                             ; preds = %.lr.ph333.split.us.i
  %i.eu = load i32, ptr %.0242329.us.i, align 4, !tbaa !43 ; 3 uses
  %.not255.us.i = icmp ugt i32 %i.eu, %i.cg
  br i1 %.not255.us.i, label %bb.p, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i

bb.p:                                             ; preds = %bb.o
  %i.ev = icmp ult i32 %i.eu, %.val270.i          ; 3 uses
  %i.ew = select i1 %i.ev, ptr %i.ch, ptr %i.br
  %i.ex = zext i32 %i.eu to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ex ; 8 uses
  %i.ez = select i1 %i.ev, ptr %i.cm, ptr %i.cp   ; 2 uses
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ey to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = getelementptr inbounds i8, ptr %i.ee, i64 %i.fc ; 2 uses
  %i.fe = icmp ult ptr %i.fd, %i.aj
  %..i.us.i = select i1 %i.fe, ptr %i.fd, ptr %i.cp ; 4 uses
  %i.ff = getelementptr inbounds i8, ptr %..i.us.i, i64 -7 ; 2 uses
  %i.fg = icmp ult ptr %i.ee, %i.ff
  br i1 %i.fg, label %bb.q, label %.loopexit.i.i.us.i

bb.q:                                             ; preds = %bb.p
  %.val60.i.i.us.i = load i64, ptr %i.ey, align 1, !tbaa !25 ; 2 uses
  %.val.i.i.us.i = load i64, ptr %i.ee, align 1, !tbaa !25 ; 2 uses
  %.not.i.i.us.i = icmp eq i64 %.val60.i.i.us.i, %.val.i.i.us.i
  br i1 %.not.i.i.us.i, label %.preheader.i.i.us.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fh = xor i64 %.val.i.i.us.i, %.val60.i.i.us.i
  %i.fi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.fh, i1 true)
  %i.fj = lshr i64 %i.fi, 3
  br label %ZSTD_count.exit.i.us.i

.preheader.i.i.us.i:                              ; preds = %bb.q, %6
  %.pn.i.i.us.i = phi ptr [ %.049.i.i.us.i, %6 ], [ %i.ey, %bb.q ]
  %.pn67.i.i.us.i = phi ptr [ %.045.i.i.us.i, %6 ], [ %i.ee, %bb.q ]
  %.045.i.i.us.i = getelementptr inbounds nuw i8, ptr %.pn67.i.i.us.i, i64 8 ; 5 uses
  %.049.i.i.us.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.us.i, i64 8 ; 3 uses
  %i.fk = icmp ult ptr %.045.i.i.us.i, %i.ff
  br i1 %i.fk, label %6, label %.loopexit.i.i.us.i

.loopexit.i.i.us.i:                               ; preds = %.preheader.i.i.us.i, %bb.p
  %.251.i.i.us.i = phi ptr [ %i.ey, %bb.p ], [ %.049.i.i.us.i, %.preheader.i.i.us.i ] ; 4 uses
  %.247.i.i.us.i = phi ptr [ %i.ee, %bb.p ], [ %.045.i.i.us.i, %.preheader.i.i.us.i ] ; 5 uses
  %i.fl = getelementptr inbounds i8, ptr %..i.us.i, i64 -3
  %i.fm = icmp ult ptr %.247.i.i.us.i, %i.fl
  br i1 %i.fm, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.loopexit.i.i.us.i
  %.251.val.i.i.us.i = load i32, ptr %.251.i.i.us.i, align 1, !tbaa !3
  %.247.val.i.i.us.i = load i32, ptr %.247.i.i.us.i, align 1, !tbaa !3
  %i.fn = icmp eq i32 %.251.val.i.i.us.i, %.247.val.i.i.us.i
  br i1 %i.fn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fo = getelementptr inbounds nuw i8, ptr %.247.i.i.us.i, i64 4
  %i.fp = getelementptr inbounds nuw i8, ptr %.251.i.i.us.i, i64 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.loopexit.i.i.us.i
  %.352.i.i.us.i = phi ptr [ %i.fp, %bb.t ], [ %.251.i.i.us.i, %bb.s ], [ %.251.i.i.us.i, %.loopexit.i.i.us.i ] ; 4 uses
  %.348.i.i.us.i = phi ptr [ %i.fo, %bb.t ], [ %.247.i.i.us.i, %bb.s ], [ %.247.i.i.us.i, %.loopexit.i.i.us.i ] ; 5 uses
  %i.fq = getelementptr inbounds i8, ptr %..i.us.i, i64 -1
  %i.fr = icmp ult ptr %.348.i.i.us.i, %i.fq
  br i1 %i.fr, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %.352.val.i.i.us.i = load i16, ptr %.352.i.i.us.i, align 1, !tbaa !55
  %.348.val.i.i.us.i = load i16, ptr %.348.i.i.us.i, align 1, !tbaa !55
  %i.fs = icmp eq i16 %.352.val.i.i.us.i, %.348.val.i.i.us.i
  br i1 %i.fs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ft = getelementptr inbounds nuw i8, ptr %.348.i.i.us.i, i64 2
  %i.fu = getelementptr inbounds nuw i8, ptr %.352.i.i.us.i, i64 2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.453.i.i.us.i = phi ptr [ %i.fu, %bb.w ], [ %.352.i.i.us.i, %bb.v ], [ %.352.i.i.us.i, %bb.u ]
  %.4.i.i.us.i = phi ptr [ %i.ft, %bb.w ], [ %.348.i.i.us.i, %bb.v ], [ %.348.i.i.us.i, %bb.u ] ; 4 uses
  %i.fv = icmp ult ptr %.4.i.i.us.i, %..i.us.i
  br i1 %i.fv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fw = load i8, ptr %.453.i.i.us.i, align 1, !tbaa !28
  %i.fx = load i8, ptr %.4.i.i.us.i, align 1, !tbaa !28
  %i.fy = icmp eq i8 %i.fw, %i.fx
  %spec.select.idx.i.i.us.i = zext i1 %i.fy to i64
  %spec.select.i.i.us.i = getelementptr inbounds nuw i8, ptr %.4.i.i.us.i, i64 %spec.select.idx.i.i.us.i
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.5.i.i.us.i = phi ptr [ %.4.i.i.us.i, %bb.x ], [ %spec.select.i.i.us.i, %bb.y ]
  %i.fz = ptrtoint ptr %.5.i.i.us.i to i64
  %i.ga = sub i64 %i.fz, %i.ej
  br label %ZSTD_count.exit.i.us.i

6:                                                ; preds = %.preheader.i.i.us.i
  %.049.val.i.i.us.i = load i64, ptr %.049.i.i.us.i, align 1, !tbaa !25 ; 2 uses
  %.045.val.i.i.us.i = load i64, ptr %.045.i.i.us.i, align 1, !tbaa !25 ; 2 uses
  %.not59.i.i.us.i = icmp eq i64 %.049.val.i.i.us.i, %.045.val.i.i.us.i
  br i1 %.not59.i.i.us.i, label %.preheader.i.i.us.i, label %.thread63.i.i.us.i

.thread63.i.i.us.i:                               ; preds = %6
  %i.gb = xor i64 %.045.val.i.i.us.i, %.049.val.i.i.us.i
  %i.gc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.gb, i1 true)
  %i.gd = lshr i64 %i.gc, 3
  %i.ge = getelementptr inbounds nuw i8, ptr %.045.i.i.us.i, i64 %i.gd
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = sub i64 %i.gf, %i.ej
  br label %ZSTD_count.exit.i.us.i

ZSTD_count.exit.i.us.i:                           ; preds = %.thread63.i.i.us.i, %bb.z, %bb.r
  %.3.i.i.us.i = phi i64 [ %i.gg, %.thread63.i.i.us.i ], [ %i.ga, %bb.z ], [ %i.fj, %bb.r ] ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.3.i.i.us.i
  %.not.i.us.i = icmp eq ptr %i.gh, %i.ez
  br i1 %.not.i.us.i, label %bb.aa, label %ZSTD_count_2segments.exit.us.i

bb.aa:                                            ; preds = %ZSTD_count.exit.i.us.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.3.i.i.us.i ; 6 uses
  %i.gj = icmp ult ptr %i.gi, %i.df
  br i1 %i.gj, label %bb.ab, label %.loopexit.i22.i.us.i

bb.ab:                                            ; preds = %bb.aa
  %.val60.i37.i.us.i = load i64, ptr %i.co, align 1, !tbaa !25 ; 2 uses
  %.val.i38.i.us.i = load i64, ptr %i.gi, align 1, !tbaa !25 ; 2 uses
  %.not.i39.i.us.i = icmp eq i64 %.val60.i37.i.us.i, %.val.i38.i.us.i
  br i1 %.not.i39.i.us.i, label %.preheader.i40.i.us.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gk = xor i64 %.val.i38.i.us.i, %.val60.i37.i.us.i
  %i.gl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.gk, i1 true)
  %i.gm = lshr i64 %i.gl, 3
  br label %ZSTD_count.exit49.i.us.i

.preheader.i40.i.us.i:                            ; preds = %bb.ab, %7
  %.pn.i41.i.us.i = phi ptr [ %.049.i44.i.us.i, %7 ], [ %i.co, %bb.ab ]
  %.pn67.i42.i.us.i = phi ptr [ %.045.i43.i.us.i, %7 ], [ %i.gi, %bb.ab ]
  %.045.i43.i.us.i = getelementptr inbounds nuw i8, ptr %.pn67.i42.i.us.i, i64 8 ; 5 uses
  %.049.i44.i.us.i = getelementptr inbounds nuw i8, ptr %.pn.i41.i.us.i, i64 8 ; 3 uses
  %i.gn = icmp ult ptr %.045.i43.i.us.i, %i.df
  br i1 %i.gn, label %7, label %.loopexit.i22.i.us.i

.loopexit.i22.i.us.i:                             ; preds = %.preheader.i40.i.us.i, %bb.aa
  %.251.i23.i.us.i = phi ptr [ %i.co, %bb.aa ], [ %.049.i44.i.us.i, %.preheader.i40.i.us.i ] ; 4 uses
  %.247.i24.i.us.i = phi ptr [ %i.gi, %bb.aa ], [ %.045.i43.i.us.i, %.preheader.i40.i.us.i ] ; 5 uses
  %i.go = icmp ult ptr %.247.i24.i.us.i, %i.dg
  br i1 %i.go, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.loopexit.i22.i.us.i
  %.251.val.i35.i.us.i = load i32, ptr %.251.i23.i.us.i, align 1, !tbaa !3
  %.247.val.i36.i.us.i = load i32, ptr %.247.i24.i.us.i, align 1, !tbaa !3
  %i.gp = icmp eq i32 %.251.val.i35.i.us.i, %.247.val.i36.i.us.i
  br i1 %i.gp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gq = getelementptr inbounds nuw i8, ptr %.247.i24.i.us.i, i64 4
  %i.gr = getelementptr inbounds nuw i8, ptr %.251.i23.i.us.i, i64 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.loopexit.i22.i.us.i
  %.352.i25.i.us.i = phi ptr [ %i.gr, %bb.ae ], [ %.251.i23.i.us.i, %bb.ad ], [ %.251.i23.i.us.i, %.loopexit.i22.i.us.i ] ; 4 uses
  %.348.i26.i.us.i = phi ptr [ %i.gq, %bb.ae ], [ %.247.i24.i.us.i, %bb.ad ], [ %.247.i24.i.us.i, %.loopexit.i22.i.us.i ] ; 5 uses
  %i.gs = icmp ult ptr %.348.i26.i.us.i, %i.dh
  br i1 %i.gs, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %.352.val.i33.i.us.i = load i16, ptr %.352.i25.i.us.i, align 1, !tbaa !55
  %.348.val.i34.i.us.i = load i16, ptr %.348.i26.i.us.i, align 1, !tbaa !55
  %i.gt = icmp eq i16 %.352.val.i33.i.us.i, %.348.val.i34.i.us.i
  br i1 %i.gt, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gu = getelementptr inbounds nuw i8, ptr %.348.i26.i.us.i, i64 2
  %i.gv = getelementptr inbounds nuw i8, ptr %.352.i25.i.us.i, i64 2
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %.453.i27.i.us.i = phi ptr [ %i.gv, %bb.ah ], [ %.352.i25.i.us.i, %bb.ag ], [ %.352.i25.i.us.i, %bb.af ]
  %.4.i28.i.us.i = phi ptr [ %i.gu, %bb.ah ], [ %.348.i26.i.us.i, %bb.ag ], [ %.348.i26.i.us.i, %bb.af ] ; 4 uses
  %i.gw = icmp ult ptr %.4.i28.i.us.i, %i.aj
  br i1 %i.gw, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gx = load i8, ptr %.453.i27.i.us.i, align 1, !tbaa !28
  %i.gy = load i8, ptr %.4.i28.i.us.i, align 1, !tbaa !28
  %i.gz = icmp eq i8 %i.gx, %i.gy
  %spec.select.idx.i31.i.us.i = zext i1 %i.gz to i64
  %spec.select.i32.i.us.i = getelementptr inbounds nuw i8, ptr %.4.i28.i.us.i, i64 %spec.select.idx.i31.i.us.i
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.5.i29.i.us.i = phi ptr [ %.4.i28.i.us.i, %bb.ai ], [ %spec.select.i32.i.us.i, %bb.aj ]
  %i.ha = ptrtoint ptr %.5.i29.i.us.i to i64
  %i.hb = ptrtoint ptr %i.gi to i64
  %i.hc = sub i64 %i.ha, %i.hb
  br label %ZSTD_count.exit49.i.us.i

7:                                                ; preds = %.preheader.i40.i.us.i
  %.049.val.i45.i.us.i = load i64, ptr %.049.i44.i.us.i, align 1, !tbaa !25 ; 2 uses
  %.045.val.i46.i.us.i = load i64, ptr %.045.i43.i.us.i, align 1, !tbaa !25 ; 2 uses
  %.not59.i47.i.us.i = icmp eq i64 %.049.val.i45.i.us.i, %.045.val.i46.i.us.i
  br i1 %.not59.i47.i.us.i, label %.preheader.i40.i.us.i, label %.thread63.i48.i.us.i

.thread63.i48.i.us.i:                             ; preds = %7
  %i.hd = xor i64 %.045.val.i46.i.us.i, %.049.val.i45.i.us.i
  %i.he = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.hd, i1 true)
  %i.hf = lshr i64 %i.he, 3
  %i.hg = getelementptr inbounds nuw i8, ptr %.045.i43.i.us.i, i64 %i.hf
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = ptrtoint ptr %i.gi to i64
  %i.hj = sub i64 %i.hh, %i.hi
  br label %ZSTD_count.exit49.i.us.i

ZSTD_count.exit49.i.us.i:                         ; preds = %.thread63.i48.i.us.i, %bb.ak, %bb.ac
  %.3.i30.i.us.i = phi i64 [ %i.hj, %.thread63.i48.i.us.i ], [ %i.hc, %bb.ak ], [ %i.gm, %bb.ac ]
  %i.hk = add i64 %.3.i30.i.us.i, %.3.i.i.us.i
  br label %ZSTD_count_2segments.exit.us.i

ZSTD_count_2segments.exit.us.i:                   ; preds = %ZSTD_count.exit49.i.us.i, %ZSTD_count.exit.i.us.i
  %.0.i.us.i = phi i64 [ %i.hk, %ZSTD_count.exit49.i.us.i ], [ %.3.i.i.us.i, %ZSTD_count.exit.i.us.i ] ; 3 uses
  %.not257.us.i = icmp ult i64 %.0.i.us.i, %i.cr
  br i1 %.not257.us.i, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i, label %bb.al

bb.al:                                            ; preds = %ZSTD_count_2segments.exit.us.i
  %i.hl = select i1 %i.ev, ptr %i.ck, ptr %i.co   ; 4 uses
  %i.hm = icmp ugt ptr %i.ey, %i.hl
  %or.cond11.i.i.us.i = and i1 %i.er, %i.hm
  br i1 %or.cond11.i.i.us.i, label %.lr.ph.i.i.us.i, label %ZSTD_ldm_countBackwardsMatch.exit.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %bb.al, %bb.am
  %.014.i.i.us.i = phi i64 [ %i.hs, %bb.am ], [ 0, %bb.al ] ; 2 uses
  %.0913.i.i.us.i = phi ptr [ %i.hn, %bb.am ], [ %i.ee, %bb.al ]
  %.01012.i.i.us.i = phi ptr [ %i.hp, %bb.am ], [ %i.ey, %bb.al ]
  %i.hn = getelementptr inbounds i8, ptr %.0913.i.i.us.i, i64 -1 ; 3 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !28
  %i.hp = getelementptr inbounds i8, ptr %.01012.i.i.us.i, i64 -1 ; 3 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !28
  %i.hr = icmp eq i8 %i.ho, %i.hq
  br i1 %i.hr, label %bb.am, label %ZSTD_ldm_countBackwardsMatch.exit.i.us.i

bb.am:                                            ; preds = %.lr.ph.i.i.us.i
  %i.hs = add i64 %.014.i.i.us.i, 1               ; 2 uses
  %i.ht = icmp ugt ptr %i.hn, %.1209340.i
  %i.hu = icmp ugt ptr %i.hp, %i.hl
  %or.cond.i.i.us.i = and i1 %i.ht, %i.hu
  br i1 %or.cond.i.i.us.i, label %.lr.ph.i.i.us.i, label %ZSTD_ldm_countBackwardsMatch.exit.i.us.i, !llvm.loop !57

ZSTD_ldm_countBackwardsMatch.exit.i.us.i:         ; preds = %bb.am, %.lr.ph.i.i.us.i, %bb.al
  %.0.lcssa.i.i.us.i = phi i64 [ 0, %bb.al ], [ %.014.i.i.us.i, %.lr.ph.i.i.us.i ], [ %i.hs, %bb.am ] ; 3 uses
  %i.hv = sub i64 0, %.0.lcssa.i.i.us.i           ; 2 uses
  %i.hw = getelementptr inbounds i8, ptr %i.ey, i64 %i.hv
  %.not.i274.us.i = icmp ne ptr %i.hw, %i.hl
  %i.hx = icmp eq ptr %i.hl, %i.ck
  %or.cond.i.us.i = or i1 %i.hx, %.not.i274.us.i
  br i1 %or.cond.i.us.i, label %ZSTD_ldm_countBackwardsMatch.exit.thread296.us.i, label %bb.an

bb.an:                                            ; preds = %ZSTD_ldm_countBackwardsMatch.exit.i.us.i
  %i.hy = getelementptr inbounds i8, ptr %i.ee, i64 %i.hv ; 2 uses
  %i.hz = icmp ugt ptr %i.hy, %.1209340.i
  %or.cond11.i19.i.us.i = and i1 %i.di, %i.hz
  br i1 %or.cond11.i19.i.us.i, label %.lr.ph.i21.i.us.i, label %ZSTD_ldm_countBackwardsMatch.exit26.i.us.i

.lr.ph.i21.i.us.i:                                ; preds = %bb.an, %bb.ao
  %.014.i22.i.us.i = phi i64 [ %i.if, %bb.ao ], [ 0, %bb.an ] ; 2 uses
  %.0913.i23.i.us.i = phi ptr [ %i.ia, %bb.ao ], [ %i.hy, %bb.an ]
  %.01012.i24.i.us.i = phi ptr [ %i.ic, %bb.ao ], [ %i.cn, %bb.an ]
  %i.ia = getelementptr inbounds i8, ptr %.0913.i23.i.us.i, i64 -1 ; 3 uses
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !28
  %i.ic = getelementptr inbounds i8, ptr %.01012.i24.i.us.i, i64 -1 ; 3 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !28
  %i.ie = icmp eq i8 %i.ib, %i.id
  br i1 %i.ie, label %bb.ao, label %ZSTD_ldm_countBackwardsMatch.exit26.i.us.i

bb.ao:                                            ; preds = %.lr.ph.i21.i.us.i
  %i.if = add i64 %.014.i22.i.us.i, 1             ; 2 uses
  %i.ig = icmp ugt ptr %i.ia, %.1209340.i
  %i.ih = icmp ugt ptr %i.ic, %i.ck
  %or.cond.i25.i.us.i = and i1 %i.ig, %i.ih
  br i1 %or.cond.i25.i.us.i, label %.lr.ph.i21.i.us.i, label %ZSTD_ldm_countBackwardsMatch.exit26.i.us.i, !llvm.loop !57

ZSTD_ldm_countBackwardsMatch.exit26.i.us.i:       ; preds = %bb.ao, %.lr.ph.i21.i.us.i, %bb.an
  %.0.lcssa.i20.i.us.i = phi i64 [ 0, %bb.an ], [ %.014.i22.i.us.i, %.lr.ph.i21.i.us.i ], [ %i.if, %bb.ao ]
  %i.ii = add i64 %.0.lcssa.i20.i.us.i, %.0.lcssa.i.i.us.i
  br label %ZSTD_ldm_countBackwardsMatch.exit.thread296.us.i

ZSTD_ldm_countBackwardsMatch.exit.thread296.us.i: ; preds = %ZSTD_ldm_countBackwardsMatch.exit26.i.us.i, %ZSTD_ldm_countBackwardsMatch.exit.i.us.i
  %.5236.us.i = phi i64 [ %.0.lcssa.i.i.us.i, %ZSTD_ldm_countBackwardsMatch.exit.i.us.i ], [ %i.ii, %ZSTD_ldm_countBackwardsMatch.exit26.i.us.i ] ; 2 uses
  %i.ij = add i64 %.5236.us.i, %.0.i.us.i         ; 2 uses
  %i.ik = icmp ugt i64 %i.ij, %.0239330.us.i
  br i1 %i.ik, label %bb.ap, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i

bb.ap:                                            ; preds = %ZSTD_ldm_countBackwardsMatch.exit.thread296.us.i
  br label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i

ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.us.i: ; preds = %bb.ap, %ZSTD_ldm_countBackwardsMatch.exit.thread296.us.i, %ZSTD_count_2segments.exit.us.i, %bb.o, %.lr.ph333.split.us.i
  %.2245.us.i = phi ptr [ %.0243328.us.i, %ZSTD_ldm_countBackwardsMatch.exit.thread296.us.i ], [ %.0243328.us.i, %.lr.ph333.split.us.i ], [ %.0243328.us.i, %ZSTD_count_2segments.exit.us.i ], [ %.0243328.us.i, %bb.o ], [ %.0242329.us.i, %bb.ap ] ; 2 uses
  %.2241.us.i = phi i64 [ %.0239330.us.i, %ZSTD_ldm_countBackwardsMatch.exit.thread296.us.i ], [ %.0239330.us.i, %.lr.ph333.split.us.i ], [ %.0239330.us.i, %ZSTD_count_2segments.exit.us.i ], [ %.0239330.us.i, %bb.o ], [ %i.ij, %bb.ap ]
  %.2230.us.i = phi i64 [ %.0228331.us.i, %ZSTD_ldm_countBackwardsMatch.exit.thread296.us.i ], [ %.0228331.us.i, %.lr.ph333.split.us.i ], [ %.0228331.us.i, %ZSTD_count_2segments.exit.us.i ], [ %.0228331.us.i, %bb.o ], [ %.5236.us.i, %bb.ap ] ; 2 uses
  %.2227.us.i = phi i64 [ %.0225332.us.i, %ZSTD_ldm_countBackwardsMatch.exit.thread296.us.i ], [ %.0225332.us.i, %.lr.ph333.split.us.i ], [ %.0225332.us.i, %ZSTD_count_2segments.exit.us.i ], [ %.0225332.us.i, %bb.o ], [ %.0.i.us.i, %bb.ap ] ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.0242329.us.i, i64 8 ; 2 uses
  %i.im = icmp ult ptr %i.il, %i.ep
  br i1 %i.im, label %.lr.ph333.split.us.i, label %._crit_edge.i, !llvm.loop !58

.lr.ph333.split.i:                                ; preds = %.lr.ph333.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i
  %.0225332.i = phi i64 [ %.2227.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ], [ 0, %.lr.ph333.i ] ; 4 uses
  %.0228331.i = phi i64 [ %.2230.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ], [ 0, %.lr.ph333.i ] ; 4 uses
  %.0239330.i = phi i64 [ %.2241.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ], [ 0, %.lr.ph333.i ] ; 5 uses
  %.0242329.i = phi ptr [ %i.kb, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ], [ %i.eo, %.lr.ph333.i ] ; 4 uses
  %.0243328.i = phi ptr [ %.2245.i, %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i ], [ null, %.lr.ph333.i ] ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.0242329.i, i64 4
  %i.io = load i32, ptr %i.in, align 4, !tbaa !54
  %.not254.i = icmp eq i32 %i.io, %i.eg
  br i1 %.not254.i, label %bb.aq, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i

bb.aq:                                            ; preds = %.lr.ph333.split.i
  %i.ip = load i32, ptr %.0242329.i, align 4, !tbaa !43 ; 3 uses
  %.not255.i = icmp ugt i32 %i.ip, %i.cg
  br i1 %.not255.i, label %bb.ar, label %ZSTD_ldm_countBackwardsMatch_2segments.exit.thread.i

bb.ar:                                            ; preds = %bb.aq
  %i.iq = zext i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.iq ; 4 uses
  br i1 %i.eq, label %bb.as, label %.loopexit.i.i

bb.as:                                            ; preds = %bb.ar
  %.val60.i.i = load i64, ptr %i.ir, align 1, !tbaa !25 ; 2 uses
  %.val.i.i = load i64, ptr %i.ee, align 1, !tbaa !25 ; 2 uses
  %.not.i277.i = icmp eq i64 %.val60.i.i, %.val.i.i
  br i1 %.not.i277.i, label %.preheader.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.is = xor i64 %.val.i.i, %.val60.i.i
  %i.it = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.is, i1 true)
  %i.iu = lshr i64 %i.it, 3
  br label %ZSTD_count.exit.i

.preheader.i.i:                                   ; preds = %bb.as, %bb.au
  %.pn.i.i = phi ptr [ %.049.i.i, %bb.au ], [ %i.ir, %bb.as ]
  %.pn67.i.i = phi ptr [ %.045.i.i, %bb.au ], [ %i.ee, %bb.as ]
  %.045.i.i = getelementptr inbounds nuw i8, ptr %.pn67.i.i, i64 8 ; 5 uses
  %.049.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8 ; 3 uses
  %i.iv = icmp ult ptr %.045.i.i, %i.df
  br i1 %i.iv, label %bb.au, label %.loopexit.i.i

bb.au:                                            ; preds = %.preheader.i.i
  %.049.val.i.i = load i64, ptr %.049.i.i, align 1, !tbaa !25 ; 2 uses
  %.045.val.i.i = load i64, ptr %.045.i.i, align 1, !tbaa !25 ; 2 uses
  %.not59.i.i = icmp eq i64 %.049.val.i.i, %.045.val.i.i
  br i1 %.not59.i.i, label %.preheader.i.i, label %.thread63.i.i

.thread63.i.i:                                    ; preds = %bb.au
  %i.iw = xor i64 %.045.val.i.i, %.049.val.i.i
  %i.ix = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.iw, i1 true)
  %i.iy = lshr i64 %i.ix, 3
  %i.iz = getelementptr inbounds nuw i8, ptr %.045.i.i, i64 %i.iy
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = sub i64 %i.ja, %i.ej
  br label %ZSTD_count.exit.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %bb.ar
  %.251.i.i = phi ptr [ %i.ir, %bb.ar ], [ %.049.i.i, %.preheader.i.i ] ; 4 uses
  %.247.i.i = phi ptr [ %i.ee, %bb.ar ], [ %.045.i.i, %.preheader.i.i ] ; 5 uses
  %i.jc = icmp ult ptr %.247.i.i, %i.dg
  br i1 %i.jc, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %.loopexit.i.i
  %.251.val.i.i = load i32, ptr %.251.i.i, align 1, !tbaa !3
  %.247.val.i.i = load i32, ptr %.247.i.i, align 1, !tbaa !3
  %i.jd = icmp eq i32 %.251.val.i.i, %.247.val.i.i
  br i1 %i.jd, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.je = getelementptr inbounds nuw i8, ptr %.247.i.i, i64 4
  %i.jf = getelementptr inbounds nuw i8, ptr %.251.i.i, i64 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %.loopexit.i.i
  %.352.i.i = phi ptr [ %i.jf, %bb.aw ], [ %.251.i.i, %bb.av ], [ %.251.i.i, %.loopexit.i.i ] ; 4 uses
  %.348.i.i = phi ptr [ %i.je, %bb.aw ], [ %.247.i.i, %bb.av ], [ %.247.i.i, %.loopexit.i.i ] ; 5 uses
  %i.jg = icmp ult ptr %.348.i.i, %i.dh
  br i1 %i.jg, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %.352.val.i.i = load i16, ptr %.352.i.i, align 1, !tbaa !55
  %.348.val.i.i = load i16, ptr %.348.i.i, align 1, !tbaa !55
  %i.jh = icmp eq i16 %.352.val.i.i, %.348.val.i.i
  br i1 %i.jh, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ji = getelementptr inbounds nuw i8, ptr %.348.i.i, i64 2
  %i.jj = getelementptr inbounds nuw i8, ptr %.352.i.i, i64 2
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.453.i.i = phi ptr [ %i.jj, %bb.az ], [ %.352.i.i, %bb.ay ], [ %.352.i.i, %bb.ax ]
  %.4.i.i = phi ptr [ %i.ji, %bb.az ], [ %.348.i.i, %bb.ay ], [ %.348.i.i, %bb.ax ] ; 4 uses
  %i.jk = icmp ult ptr %.4.i.i, %i.aj
  br i1 %i.jk, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jl = load i8, ptr %.453.i.i, align 1, !tbaa !28
  %i.jm = load i8, ptr %.4.i.i, align 1, !tbaa !28
  %i.jn = icmp eq i8 %i.jl, %i.jm
end_hunk_0
