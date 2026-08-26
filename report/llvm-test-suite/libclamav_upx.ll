Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_upx?download=true
inline.NumInlined: 49
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@pefromupx:bb.a
.lr.ph406.split:                                  ; preds = %.lr.ph406.split.preheader, %.critedge7
  %.0203404 = phi ptr [ %i.bu, %.critedge7 ], [ %i.bk, %.lr.ph406.split.preheader ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0203404, i64 8 ; 4 uses
  %.not258.not = icmp ugt ptr %i.bo, %i.bn
  br i1 %.not258.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.lr.ph406.split
  %.0203.val = load i32, ptr %.0203404, align 1
  %.not259 = icmp eq i32 %.0203.val, 0
  br i1 %.not259, label %.critedge, label %.preheader377

.preheader377:                                    ; preds = %bb.n
  %.not263394 = icmp ult ptr %i.bo, %2
  br i1 %.not263394, label %.critedge7, label %.lr.ph396

.lr.ph396:                                        ; preds = %.preheader377, %.critedge9
  %.1204395 = phi ptr [ %i.bt, %.critedge9 ], [ %i.bo, %.preheader377 ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1204395, i64 2
  %.not264.not = icmp ugt ptr %i.bp, %i.bn
  br i1 %.not264.not, label %.critedge7, label %bb.o

bb.o:                                             ; preds = %.lr.ph396
  %i.bq = load i8, ptr %.1204395, align 1, !tbaa !8
  %.not265 = icmp eq i8 %i.bq, 0
  br i1 %.not265, label %.critedge7, label %.preheader

.preheader:                                       ; preds = %bb.o, %bb.p
  %.1204.pn = phi ptr [ %.2205, %bb.p ], [ %.1204395, %bb.o ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.1204.pn, i64 3
  %.not269.not = icmp ugt ptr %i.br, %i.bn
  br i1 %.not269.not, label %.critedge9, label %bb.p

bb.p:                                             ; preds = %.preheader
  %.2205 = getelementptr inbounds nuw i8, ptr %.1204.pn, i64 1 ; 2 uses
  %i.bs = load i8, ptr %.2205, align 1, !tbaa !8
  %.not270 = icmp eq i8 %i.bs, 0
  br i1 %.not270, label %.critedge9, label %.preheader, !llvm.loop !19

.critedge9:                                       ; preds = %.preheader, %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %.1204.pn, i64 2 ; 3 uses
  %.not263 = icmp ult ptr %i.bt, %2
  br i1 %.not263, label %.critedge7, label %.lr.ph396, !llvm.loop !20

.critedge7:                                       ; preds = %bb.o, %.lr.ph396, %.critedge9, %.preheader377
  %.1204.lcssa = phi ptr [ %i.bo, %.preheader377 ], [ %i.bt, %.critedge9 ], [ %.1204395, %.lr.ph396 ], [ %.1204395, %bb.o ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.1204.lcssa, i64 1 ; 3 uses
  %.not257 = icmp ult ptr %i.bu, %2
  br i1 %.not257, label %.critedge, label %.lr.ph406.split, !llvm.loop !21

.critedge:                                        ; preds = %bb.n, %.critedge7, %.lr.ph406.split, %bb.m
  %.0203.lcssa = phi ptr [ %i.bk, %bb.m ], [ %.0203404, %.lr.ph406.split ], [ %i.bu, %.critedge7 ], [ %.0203404, %bb.n ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0203.lcssa, i64 4 ; 3 uses
  %i.bw = icmp ult i32 %.fr447, 248
  %.not.i = icmp ult ptr %i.bv, %2
  %or.cond.i = or i1 %i.bw, %.not.i
  br i1 %or.cond.i, label %checkpe.exit, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.bx = getelementptr inbounds nuw i8, ptr %.0203.lcssa, i64 252 ; 3 uses
  %i.by = zext i32 %.fr447 to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %i.by ; 2 uses
  %.not39.not.i = icmp ugt ptr %i.bx, %i.bz
  br i1 %.not39.not.i, label %checkpe.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val49.i = load i32, ptr %i.bv, align 1
  %.not40.i = icmp eq i32 %.val49.i, 17744
  br i1 %.not40.i, label %bb.s, label %checkpe.exit

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %.0203.lcssa, i64 60
  %.val.i = load i32, ptr %i.ca, align 1          ; 4 uses
  %.not41.i = icmp eq i32 %.val.i, 0
  br i1 %.not41.i, label %checkpe.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %.0203.lcssa, i64 10
  %i.cc = load i16, ptr %i.cb, align 1            ; 2 uses
  %i.cd = zext i16 %i.cc to i32                   ; 3 uses
  %.not42.i = icmp eq i16 %i.cc, 0
  br i1 %.not42.i, label %checkpe.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = mul nuw nsw i32 %i.cd, 40               ; 2 uses
  %.not43.i = icmp ugt i32 %i.ce, %.fr447
  br i1 %.not43.i, label %checkpe.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cf
  %.not45.not.i = icmp ugt ptr %i.cg, %i.bz
  %spec.select.i = select i1 %.not45.not.i, ptr null, ptr %i.bx
  br label %checkpe.exit

checkpe.exit:                                     ; preds = %.critedge, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.5343 = phi i32 [ %i.ax, %.critedge ], [ %i.ax, %bb.q ], [ %i.ax, %bb.s ], [ 0, %bb.t ], [ %i.cd, %bb.u ], [ %i.cd, %bb.v ], [ %i.ax, %bb.r ]
  %.5336 = phi i32 [ %.0, %.critedge ], [ %.0, %bb.q ], [ 0, %bb.s ], [ %.val.i, %bb.t ], [ %.val.i, %bb.u ], [ %.val.i, %bb.v ], [ %.0, %bb.r ]
  %.0.i = phi ptr [ null, %.critedge ], [ null, %bb.q ], [ null, %bb.s ], [ null, %bb.t ], [ null, %bb.u ], [ %spec.select.i, %bb.v ], [ null, %bb.r ] ; 2 uses
  %.not260 = icmp eq ptr %.0.i, null
  %spec.select = select i1 %.not260, ptr null, ptr %i.bv
  br label %.thread345

.thread345:                                       ; preds = %bb.i, %bb.f, %._crit_edge, %checkpe.exit, %bb.l, %bb.j, %.loopexit
  %.1339 = phi i32 [ %i.ax, %bb.j ], [ %.5343, %checkpe.exit ], [ %i.ax, %bb.l ], [ %i.ax, %.loopexit ], [ %.lcssa386, %._crit_edge ], [ %.lcssa386, %bb.f ], [ %.lcssa386, %bb.i ] ; 3 uses
  %.1 = phi i32 [ %.0, %bb.j ], [ %.5336, %checkpe.exit ], [ %.0, %bb.l ], [ %.0, %.loopexit ], [ 0, %._crit_edge ], [ 0, %bb.f ], [ 0, %bb.i ] ; 3 uses
  %.0213 = phi i32 [ 0, %bb.j ], [ %.val306, %checkpe.exit ], [ %.val306, %bb.l ], [ 0, %.loopexit ], [ 0, %._crit_edge ], [ 0, %bb.f ], [ 0, %bb.i ]
  %.3206 = phi ptr [ null, %bb.j ], [ %spec.select, %checkpe.exit ], [ null, %bb.l ], [ null, %.loopexit ], [ null, %._crit_edge ], [ null, %bb.f ], [ null, %bb.i ] ; 2 uses
  %.0199 = phi ptr [ undef, %bb.j ], [ %.0.i, %checkpe.exit ], [ undef, %bb.l ], [ undef, %.loopexit ], [ undef, %._crit_edge ], [ undef, %bb.f ], [ undef, %bb.i ]
  %i.ch = icmp eq ptr %.3206, null
  %i.ci = icmp ugt i32 %8, 288
  %or.cond11 = and i1 %i.ci, %i.ch
  br i1 %or.cond11, label %.lr.ph419, label %bb.aa

.lr.ph419:                                        ; preds = %.thread345
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #6
  %i.cj = add i32 %8, -288
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = load i32, ptr %3, align 4, !tbaa !4     ; 3 uses
  %i.cm = icmp ult i32 %i.cl, 248
  %i.cn = zext i32 %i.cl to i64
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %i.cn ; 2 uses
  br i1 %i.cm, label %select.unfold.us.preheader, label %.lr.ph419.split.preheader

.lr.ph419.split.preheader:                        ; preds = %.lr.ph419
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck
  br label %.lr.ph419.split

select.unfold.us.preheader:                       ; preds = %.lr.ph419
  %i.cq = add i64 %i.a, %i.ck
  %i.cr = add i64 %i.cq, -1
  %i.cs = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 %i.cr)
  %i.ct = sub i64 0, %i.cs
  %scevgep = getelementptr i8, ptr %2, i64 %i.ct
  br label %checkpe.exit319

.lr.ph419.split:                                  ; preds = %.lr.ph419.split.preheader, %select.unfold
  %.4207417 = phi ptr [ %i.dc, %select.unfold ], [ %i.cp, %.lr.ph419.split.preheader ] ; 6 uses
  %.2416 = phi i32 [ %.6337.ph, %select.unfold ], [ %.1, %.lr.ph419.split.preheader ] ; 2 uses
  %.2340415 = phi i32 [ %.6344.ph, %select.unfold ], [ %.1339, %.lr.ph419.split.preheader ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.4207417, i64 248 ; 3 uses
  %.not39.not.i309 = icmp ugt ptr %i.cu, %i.co
  br i1 %.not39.not.i309, label %select.unfold, label %bb.w

bb.w:                                             ; preds = %.lr.ph419.split
  %.val49.i310 = load i32, ptr %.4207417, align 1
  %.not40.i311 = icmp eq i32 %.val49.i310, 17744
  br i1 %.not40.i311, label %bb.x, label %select.unfold

bb.x:                                             ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %.4207417, i64 56
  %.val.i313 = load i32, ptr %i.cv, align 1       ; 4 uses
  %.not41.i314 = icmp eq i32 %.val.i313, 0
  br i1 %.not41.i314, label %select.unfold, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %.4207417, i64 6
  %i.cx = load i16, ptr %i.cw, align 1            ; 2 uses
  %.not42.i315 = icmp eq i16 %i.cx, 0
  br i1 %.not42.i315, label %select.unfold, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cy = zext i16 %i.cx to i32                   ; 3 uses
  %i.cz = mul nuw nsw i32 %i.cy, 40               ; 2 uses
  %.not43.i316 = icmp ugt i32 %i.cz, %i.cl
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.da
  %.not45.not.i317 = icmp ugt ptr %i.db, %i.co
  %or.cond370 = select i1 %.not43.i316, i1 true, i1 %.not45.not.i317
  br i1 %or.cond370, label %select.unfold, label %checkpe.exit319

select.unfold:                                    ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %.lr.ph419.split
  %.6344.ph = phi i32 [ %.2340415, %.lr.ph419.split ], [ %.2340415, %bb.w ], [ %i.cy, %bb.z ], [ 0, %bb.y ], [ %.2340415, %bb.x ] ; 2 uses
  %.6337.ph = phi i32 [ %.2416, %.lr.ph419.split ], [ %.2416, %bb.w ], [ %.val.i313, %bb.z ], [ %.val.i313, %bb.y ], [ 0, %bb.x ] ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.4207417, i64 -1 ; 3 uses
  %i.dd = icmp ugt ptr %i.dc, %2
  br i1 %i.dd, label %.lr.ph419.split, label %checkpe.exit319, !llvm.loop !22

checkpe.exit319:                                  ; preds = %select.unfold, %bb.z, %select.unfold.us.preheader
  %.4207.lcssa = phi ptr [ %scevgep, %select.unfold.us.preheader ], [ %.4207417, %bb.z ], [ %i.dc, %select.unfold ] ; 2 uses
  %.3341 = phi i32 [ %.1339, %select.unfold.us.preheader ], [ %i.cy, %bb.z ], [ %.6344.ph, %select.unfold ]
  %.3334 = phi i32 [ %.1, %select.unfold.us.preheader ], [ %.val.i313, %bb.z ], [ %.6337.ph, %select.unfold ]
  %.2201 = phi ptr [ null, %select.unfold.us.preheader ], [ %i.cu, %bb.z ], [ null, %select.unfold ]
  %i.de = ptrtoint ptr %.4207.lcssa to i64
  %i.df = ptrtoint ptr %2 to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = trunc i64 %i.dg to i32                  ; 2 uses
  %.not272 = icmp eq i32 %i.dh, 0
  br i1 %.not272, label %.thread355, label %bb.aa

bb.aa:                                            ; preds = %checkpe.exit319, %.thread345
  %.4342 = phi i32 [ %.3341, %checkpe.exit319 ], [ %.1339, %.thread345 ] ; 8 uses
  %.4335 = phi i32 [ %.3334, %checkpe.exit319 ], [ %.1, %.thread345 ] ; 9 uses
  %.1214 = phi i32 [ %i.dh, %checkpe.exit319 ], [ %.0213, %.thread345 ]
  %.5208 = phi ptr [ %.4207.lcssa, %checkpe.exit319 ], [ %.3206, %.thread345 ] ; 5 uses
  %.3202 = phi ptr [ %.2201, %checkpe.exit319 ], [ %.0199, %.thread345 ]
  %.1214.fr = freeze i32 %.1214                   ; 3 uses
  %.not273 = icmp eq ptr %.5208, null
  br i1 %.not273, label %.thread355, label %bb.ad

.thread355:                                       ; preds = %checkpe.exit319, %bb.aa
  %9 = and i32 %8, 4095
  %.not274 = icmp eq i32 %9, 0
  %10 = select i1 %.not274, i32 0, i32 4096
  %i.di = add i32 %10, %8
  %i.dj = and i32 %i.di, -4096                    ; 4 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #6
  %i.dk = or disjoint i32 %i.dj, 512              ; 2 uses
  %i.dl = zext i32 %i.dk to i64
  %i.dm = tail call ptr @cli_calloc(i64 noundef %i.dl, i64 noundef 1) #6 ; 6 uses
  %.not275 = icmp eq ptr %i.dm, null
  br i1 %.not275, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.thread355
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #6
  br label %bb.aq

bb.ac:                                            ; preds = %.thread355
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(208) %i.dm, ptr noundef nonnull align 1 dereferenceable(208) @.str.6, i64 208, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(288) %i.dn, ptr noundef nonnull align 1 dereferenceable(288) @.str.7, i64 288, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 512
  %i.dp = zext i32 %8 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.do, ptr align 1 %2, i64 %i.dp, i1 false)
  %i.dq = add i32 %8, 512
  %i.dr = zext i32 %i.dq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 1 %i.dm, i64 %i.dr, i1 false)
  tail call void @free(ptr noundef nonnull %i.dm) #6
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.dt = add i32 %i.dj, 4096
  store i32 %i.dt, ptr %i.ds, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 464
  store i32 %i.dj, ptr %i.du, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 472
  store i32 %i.dj, ptr %i.dv, align 1
  store i32 %i.dk, ptr %3, align 4, !tbaa !4
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #6
  br label %bb.aq

bb.ad:                                            ; preds = %bb.aa
  %.not276 = icmp eq i32 %.4335, 0                ; 2 uses
  %i.dw = mul i32 %.4342, 40
  %i.dx = add i32 %i.dw, 456                      ; 3 uses
  br i1 %.not276, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dy = udiv i32 %i.dx, %.4335
  %i.dz = urem i32 %i.dx, %.4335
  %i.ea = icmp ne i32 %i.dz, 0
  %i.eb = zext i1 %i.ea to i32
  %i.ec = add i32 %i.dy, %i.eb
  %i.ed = mul i32 %i.ec, %.4335
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.ee = phi i32 [ %i.ed, %bb.ae ], [ %i.dx, %bb.ad ] ; 2 uses
  %.not449 = icmp eq i32 %.4342, 0                ; 2 uses
  br i1 %.not449, label %._crit_edge438, label %.lr.ph437

.lr.ph437:                                        ; preds = %bb.af
  %i.ef = icmp eq i32 %.1214.fr, 0
  %i.eg = add i32 %.1214.fr, %5
  br i1 %i.ef, label %.split, label %.lr.ph437.split

.lr.ph437.split:                                  ; preds = %.lr.ph437, %bb.ak
  %.4435 = phi ptr [ %i.fd, %bb.ak ], [ %.3202, %.lr.ph437 ] ; 8 uses
  %.0211434 = phi i32 [ %i.fc, %bb.ak ], [ %i.ee, %.lr.ph437 ] ; 2 uses
  %.0215433 = phi i32 [ %i.fe, %bb.ak ], [ 0, %.lr.ph437 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.4435, i64 8
  %.val303 = load i32, ptr %i.eh, align 1         ; 3 uses
  br i1 %.not276, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph437.split
  %i.ei = udiv i32 %.val303, %.4335
  %i.ej = urem i32 %.val303, %.4335
  %i.ek = icmp ne i32 %i.ej, 0
  %i.el = zext i1 %i.ek to i32
  %i.em = add i32 %i.ei, %i.el
  %i.en = mul i32 %i.em, %.4335
  %i.eo = getelementptr inbounds nuw i8, ptr %.4435, i64 12
  %.val302 = load i32, ptr %i.eo, align 1
  %.fr = freeze i32 %.val302                      ; 2 uses
  %i.ep = urem i32 %.fr, %.4335
  %i.eq = sub nuw i32 %.fr, %i.ep
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph437.split
  %i.er = getelementptr inbounds nuw i8, ptr %.4435, i64 12
  %.val301 = load i32, ptr %i.er, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.es = phi i32 [ %i.en, %bb.ag ], [ %.val303, %bb.ah ] ; 5 uses
  %i.et = phi i32 [ %i.eq, %bb.ag ], [ %.val301, %bb.ah ] ; 3 uses
  %i.eu = add i32 %i.es, -1
  %i.ev = icmp uge i32 %i.eu, %.1214.fr
  %.not281 = icmp ult i32 %i.et, %5
  %or.cond294 = select i1 %i.ev, i1 true, i1 %.not281
  br i1 %or.cond294, label %.split, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ew = add i32 %i.et, %i.es                    ; 2 uses
  %.not282 = icmp ule i32 %i.ew, %i.eg
  %i.ex = icmp ugt i32 %i.ew, %5
  %or.cond295 = and i1 %.not282, %i.ex
  br i1 %or.cond295, label %bb.ak, label %.split

.split:                                           ; preds = %bb.aj, %bb.ai, %.lr.ph437
  %.us-phi440 = phi i32 [ 0, %.lr.ph437 ], [ %.0215433, %bb.ai ], [ %.0215433, %bb.aj ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9, i32 noundef %.us-phi440) #6
  br label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  %i.ey = getelementptr inbounds nuw i8, ptr %.4435, i64 8
  store i32 %i.es, ptr %i.ey, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.4435, i64 12
  store i32 %i.et, ptr %i.ez, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.4435, i64 16
  store i32 %i.es, ptr %i.fa, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %.4435, i64 20
  store i32 %.0211434, ptr %i.fb, align 1
  %i.fc = add i32 %i.es, %.0211434                ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.4435, i64 40
  %i.fe = add nuw i32 %.0215433, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.fe, %.4342
  br i1 %exitcond.not, label %._crit_edge438, label %.lr.ph437.split, !llvm.loop !23

._crit_edge438:                                   ; preds = %bb.ak, %bb.af
  %.0211.lcssa = phi i32 [ %i.ee, %bb.af ], [ %i.fc, %bb.ak ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.5208, i64 8
  store i32 1296124995, ptr %i.ff, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %.5208, i64 60
  store i32 %.4335, ptr %i.fg, align 1
  %i.fh = zext i32 %.0211.lcssa to i64            ; 2 uses
  %i.fi = tail call ptr @cli_calloc(i64 noundef %i.fh, i64 noundef 1) #6 ; 9 uses
  %.not277 = icmp eq ptr %i.fi, null
  br i1 %.not277, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge438
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5) #6
  br label %bb.aq

bb.am:                                            ; preds = %._crit_edge438
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(208) %i.fi, ptr noundef nonnull align 1 dereferenceable(208) @.str.6, i64 208, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 208
  %i.fk = mul i32 %.4342, 40
  %i.fl = add i32 %i.fk, 248
  %i.fm = zext i32 %i.fl to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fj, ptr nonnull align 1 %.5208, i64 %i.fm, i1 false)
  br i1 %.not449, label %._crit_edge446, label %.lr.ph445

.lr.ph445:                                        ; preds = %bb.am
  %i.fn = getelementptr inbounds nuw i8, ptr %.5208, i64 248 ; 2 uses
  %i.fo = zext i32 %5 to i64
  %i.fp = sub nsw i64 0, %i.fo
  %invariant.gep = getelementptr i8, ptr %2, i64 %i.fp ; 3 uses
  %xtraiter = and i32 %.4342, 1
  %i.fq = icmp eq i32 %.4342, 1
  br i1 %i.fq, label %.epil.preheader, label %.lr.ph445.new

.lr.ph445.new:                                    ; preds = %.lr.ph445
  %unroll_iter = and i32 %.4342, -2
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.lr.ph445.new
  %.6443 = phi ptr [ %i.fn, %.lr.ph445.new ], [ %i.gf, %bb.an ] ; 7 uses
  %niter = phi i32 [ 0, %.lr.ph445.new ], [ %niter.next.1, %bb.an ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.6443, i64 20
  %.val300 = load i32, ptr %i.fr, align 1
  %i.fs = sext i32 %.val300 to i64
  %i.ft = getelementptr inbounds i8, ptr %i.fi, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %.6443, i64 12
  %.val299 = load i32, ptr %i.fu, align 1
  %i.fv = sext i32 %.val299 to i64
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.fv
  %i.fw = getelementptr inbounds nuw i8, ptr %.6443, i64 16
  %.val = load i32, ptr %i.fw, align 1
  %i.fx = sext i32 %.val to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ft, ptr align 1 %gep, i64 %i.fx, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %.6443, i64 60
  %.val300.1 = load i32, ptr %i.fy, align 1
  %i.fz = sext i32 %.val300.1 to i64
  %i.ga = getelementptr inbounds i8, ptr %i.fi, i64 %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %.6443, i64 52
  %.val299.1 = load i32, ptr %i.gb, align 1
  %i.gc = sext i32 %.val299.1 to i64
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.gc
  %i.gd = getelementptr inbounds nuw i8, ptr %.6443, i64 56
  %.val.1 = load i32, ptr %i.gd, align 1
  %i.ge = sext i32 %.val.1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ga, ptr align 1 %gep.1, i64 %i.ge, i1 false)
  %i.gf = getelementptr inbounds nuw i8, ptr %.6443, i64 80 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge446.loopexit.unr-lcssa, label %bb.an, !llvm.loop !24

._crit_edge446.loopexit.unr-lcssa:                ; preds = %bb.an
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge446, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge446.loopexit.unr-lcssa, %.lr.ph445
  %.6443.epil.init = phi ptr [ %i.fn, %.lr.ph445 ], [ %i.gf, %._crit_edge446.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod528 = trunc i32 %.4342 to i1
  tail call void @llvm.assume(i1 %lcmp.mod528)
  %i.gg = getelementptr inbounds nuw i8, ptr %.6443.epil.init, i64 20
end_hunk_0
