Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_mspack?download=true
inline.NumInlined: 60
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 48
begin_hunk_0_@lzx_decompress:bb.a
  br i1 %.not1161, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = urem i32 %i.ce, %i.cf
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ci = load i32, ptr %i.bc, align 4, !tbaa !71 ; 2 uses
  %.not1162 = icmp eq i32 %i.ci, 0
  br i1 %.not1162, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3, i32 noundef %i.ci) #11
  store i32 -124, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

.thread:                                          ; preds = %bb.k
  store i32 1, ptr %i.ah, align 4, !tbaa !67
  store i32 1, ptr %i.ai, align 8, !tbaa !68
  store i32 1, ptr %i.aj, align 4, !tbaa !69
  store i8 0, ptr %i.bd, align 2, !tbaa !70
  store i8 0, ptr %i.be, align 1, !tbaa !72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(656) %i.bf, i8 0, i64 656, i1 false), !tbaa !29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(250) %i.bg, i8 0, i64 250, i1 false), !tbaa !29
  br label %.preheader1369

bb.m:                                             ; preds = %bb.j, %bb.i
  %.pr = load i8, ptr %i.bd, align 2, !tbaa !70
  %.not1163 = icmp eq i8 %.pr, 0
  br i1 %.not1163, label %.preheader1369, label %bb.as

.preheader1369:                                   ; preds = %.thread, %bb.m
  %i.cj = icmp slt i32 %.010303131, 1
  br i1 %i.cj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader1369, %bb.w
  %.19312831 = phi ptr [ %.2932, %bb.w ], [ %.09303133, %.preheader1369 ] ; 2 uses
  %.19422830 = phi ptr [ %i.di, %bb.w ], [ %.09413132, %.preheader1369 ] ; 2 uses
  %.110312829 = phi i32 [ %i.dh, %bb.w ], [ %.010303131, %.preheader1369 ] ; 3 uses
  %.110682828 = phi i32 [ %i.dg, %bb.w ], [ %.010673130, %.preheader1369 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.19422830, i64 1
  %.not1169 = icmp ult ptr %i.ck, %.19312831
  br i1 %.not1169, label %bb.w, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.cl = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %.not.i = icmp eq ptr %i.cl, null
  %i.cm = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 2 uses
  %i.cn = load i32, ptr %i.bk, align 8, !tbaa !49 ; 2 uses
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.cp = tail call i32 %i.cl(ptr noundef %i.co, ptr noundef %i.cm, i32 noundef %i.cn) #11, !inline_history !73
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cq = load i32, ptr %0, align 8, !tbaa !42
  %i.cr = tail call i32 @cli_readn(i32 noundef %i.cq, ptr noundef %i.cm, i32 noundef %i.cn) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cs = phi i32 [ %i.cp, %bb.o ], [ %i.cr, %bb.p ] ; 3 uses
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %.loopexit1370, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = icmp eq i32 %i.cs, 0
  br i1 %i.cu, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cv = load i8, ptr %i.bl, align 4, !tbaa !59
  %.not24.i = icmp eq i8 %i.cv, 0
  br i1 %.not24.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #11
  br label %.loopexit1370

bb.u:                                             ; preds = %bb.s
  %i.cw = load ptr, ptr %i.bj, align 8, !tbaa !41
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 0, ptr %i.cx, align 1, !tbaa !29
  %i.cy = load ptr, ptr %i.bj, align 8, !tbaa !41
  store i8 0, ptr %i.cy, align 1, !tbaa !29
  store i8 1, ptr %i.bl, align 4, !tbaa !59
  br label %bb.v

.loopexit1370:                                    ; preds = %bb.q, %bb.t
  store i32 -123, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.v:                                             ; preds = %bb.u, %bb.r
  %.0.i = phi i32 [ 2, %bb.u ], [ %i.cs, %bb.r ]
  %i.cz = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 3 uses
  store ptr %i.cz, ptr %i.aa, align 8, !tbaa !62
  %i.da = zext nneg i32 %.0.i to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.da ; 2 uses
  store ptr %i.db, ptr %i.ab, align 8, !tbaa !61
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph
  %.2943 = phi ptr [ %i.cz, %bb.v ], [ %.19422830, %.lr.ph ] ; 2 uses
  %.2932 = phi ptr [ %i.db, %bb.v ], [ %.19312831, %.lr.ph ] ; 2 uses
  %i.dc = load i16, ptr %.2943, align 1
  %i.dd = zext i16 %i.dc to i32
  %i.de = sub i32 16, %.110312829
  %i.df = shl i32 %i.dd, %i.de
  %i.dg = or i32 %i.df, %.110682828               ; 2 uses
  %i.dh = add nsw i32 %.110312829, 16             ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.2943, i64 2 ; 2 uses
  %i.dj = icmp slt i32 %.110312829, -15
  br i1 %i.dj, label %.lr.ph, label %._crit_edge, !llvm.loop !137

._crit_edge:                                      ; preds = %bb.w, %.preheader1369
  %.11068.lcssa = phi i32 [ %.010673130, %.preheader1369 ], [ %i.dg, %bb.w ] ; 2 uses
  %.11031.lcssa = phi i32 [ %.010303131, %.preheader1369 ], [ %i.dh, %bb.w ] ; 2 uses
  %.1942.lcssa = phi ptr [ %.09413132, %.preheader1369 ], [ %i.di, %bb.w ] ; 3 uses
  %.1931.lcssa = phi ptr [ %.09303133, %.preheader1369 ], [ %.2932, %bb.w ] ; 3 uses
  %i.dk = shl i32 %.11068.lcssa, 1                ; 3 uses
  %i.dl = add nsw i32 %.11031.lcssa, -1           ; 3 uses
  %.not1164 = icmp sgt i32 %.11068.lcssa, -1
  br i1 %.not1164, label %bb.ar, label %.preheader1367

.preheader1367:                                   ; preds = %._crit_edge
  %i.dm = icmp samesign ult i32 %.11031.lcssa, 17
  br i1 %i.dm, label %.lr.ph2839, label %._crit_edge2840

.lr.ph2839:                                       ; preds = %.preheader1367, %bb.ag
  %.39332838 = phi ptr [ %.4934, %bb.ag ], [ %.1931.lcssa, %.preheader1367 ] ; 2 uses
  %.39442837 = phi ptr [ %i.el, %bb.ag ], [ %.1942.lcssa, %.preheader1367 ] ; 2 uses
  %.210322836 = phi i32 [ %i.ek, %bb.ag ], [ %i.dl, %.preheader1367 ] ; 3 uses
  %.210692835 = phi i32 [ %i.ej, %bb.ag ], [ %i.dk, %.preheader1367 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.39442837, i64 1
  %.not1167 = icmp ult ptr %i.dn, %.39332838
  br i1 %.not1167, label %bb.ag, label %bb.x

bb.x:                                             ; preds = %.lr.ph2839
  %i.do = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %.not.i1240 = icmp eq ptr %i.do, null
  %i.dp = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 2 uses
  %i.dq = load i32, ptr %i.bk, align 8, !tbaa !49 ; 2 uses
  br i1 %.not.i1240, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dr = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.ds = tail call i32 %i.do(ptr noundef %i.dr, ptr noundef %i.dp, i32 noundef %i.dq) #11, !inline_history !73
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dt = load i32, ptr %0, align 8, !tbaa !42
  %i.du = tail call i32 @cli_readn(i32 noundef %i.dt, ptr noundef %i.dp, i32 noundef %i.dq) #11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dv = phi i32 [ %i.ds, %bb.y ], [ %i.du, %bb.z ] ; 3 uses
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %.loopexit1368, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dx = icmp eq i32 %i.dv, 0
  br i1 %i.dx, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.dy = load i8, ptr %i.bl, align 4, !tbaa !59
  %.not24.i1243 = icmp eq i8 %i.dy, 0
  br i1 %.not24.i1243, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #11
  br label %.loopexit1368

bb.ae:                                            ; preds = %bb.ac
  %i.dz = load ptr, ptr %i.bj, align 8, !tbaa !41
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  store i8 0, ptr %i.ea, align 1, !tbaa !29
  %i.eb = load ptr, ptr %i.bj, align 8, !tbaa !41
  store i8 0, ptr %i.eb, align 1, !tbaa !29
  store i8 1, ptr %i.bl, align 4, !tbaa !59
  br label %bb.af

.loopexit1368:                                    ; preds = %bb.aa, %bb.ad
  store i32 -123, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.0.i1241 = phi i32 [ 2, %bb.ae ], [ %i.dv, %bb.ab ]
  %i.ec = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 3 uses
  store ptr %i.ec, ptr %i.aa, align 8, !tbaa !62
  %i.ed = zext nneg i32 %.0.i1241 to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ed ; 2 uses
  store ptr %i.ee, ptr %i.ab, align 8, !tbaa !61
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph2839
  %.4945 = phi ptr [ %i.ec, %bb.af ], [ %.39442837, %.lr.ph2839 ] ; 2 uses
  %.4934 = phi ptr [ %i.ee, %bb.af ], [ %.39332838, %.lr.ph2839 ] ; 2 uses
  %i.ef = load i16, ptr %.4945, align 1
  %i.eg = zext i16 %i.ef to i32
  %i.eh = sub nuw nsw i32 16, %.210322836
  %i.ei = shl nuw i32 %i.eg, %i.eh
  %i.ej = or i32 %i.ei, %.210692835               ; 2 uses
  %i.ek = add nuw nsw i32 %.210322836, 16         ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.4945, i64 2 ; 2 uses
  %i.em = icmp slt i32 %.210322836, 0
  br i1 %i.em, label %.lr.ph2839, label %._crit_edge2840, !llvm.loop !138

._crit_edge2840:                                  ; preds = %bb.ag, %.preheader1367
  %.21069.lcssa = phi i32 [ %i.dk, %.preheader1367 ], [ %i.ej, %bb.ag ] ; 2 uses
  %.21032.lcssa = phi i32 [ %i.dl, %.preheader1367 ], [ %i.ek, %bb.ag ] ; 2 uses
  %.3944.lcssa = phi ptr [ %.1942.lcssa, %.preheader1367 ], [ %i.el, %bb.ag ] ; 2 uses
  %.3933.lcssa = phi ptr [ %.1931.lcssa, %.preheader1367 ], [ %.4934, %bb.ag ] ; 2 uses
  %i.en = and i32 %.21069.lcssa, -65536
  %i.eo = shl i32 %.21069.lcssa, 16               ; 2 uses
  %i.ep = add nsw i32 %.21032.lcssa, -16          ; 2 uses
  %i.eq = icmp slt i32 %.21032.lcssa, 32
  br i1 %i.eq, label %.lr.ph2850, label %._crit_edge2851

.lr.ph2850:                                       ; preds = %._crit_edge2840, %bb.aq
  %.59352848 = phi ptr [ %.6936, %bb.aq ], [ %.3933.lcssa, %._crit_edge2840 ] ; 2 uses
  %.59462847 = phi ptr [ %i.fp, %bb.aq ], [ %.3944.lcssa, %._crit_edge2840 ] ; 2 uses
  %.310332846 = phi i32 [ %i.fo, %bb.aq ], [ %i.ep, %._crit_edge2840 ] ; 3 uses
  %.310702845 = phi i32 [ %i.fn, %bb.aq ], [ %i.eo, %._crit_edge2840 ]
  %i.er = getelementptr inbounds nuw i8, ptr %.59462847, i64 1
  %.not1165 = icmp ult ptr %i.er, %.59352848
  br i1 %.not1165, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph2850
  %i.es = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %.not.i1245 = icmp eq ptr %i.es, null
  %i.et = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 2 uses
  %i.eu = load i32, ptr %i.bk, align 8, !tbaa !49 ; 2 uses
  br i1 %.not.i1245, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ev = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.ew = tail call i32 %i.es(ptr noundef %i.ev, ptr noundef %i.et, i32 noundef %i.eu) #11, !inline_history !73
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ex = load i32, ptr %0, align 8, !tbaa !42
  %i.ey = tail call i32 @cli_readn(i32 noundef %i.ex, ptr noundef %i.et, i32 noundef %i.eu) #11
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ez = phi i32 [ %i.ew, %bb.ai ], [ %i.ey, %bb.aj ] ; 3 uses
  %i.fa = icmp slt i32 %i.ez, 0
  br i1 %i.fa, label %.loopexit1366, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fb = icmp eq i32 %i.ez, 0
  br i1 %i.fb, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.fc = load i8, ptr %i.bl, align 4, !tbaa !59
  %.not24.i1248 = icmp eq i8 %i.fc, 0
  br i1 %.not24.i1248, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #11
  br label %.loopexit1366

bb.ao:                                            ; preds = %bb.am
  %i.fd = load ptr, ptr %i.bj, align 8, !tbaa !41
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  store i8 0, ptr %i.fe, align 1, !tbaa !29
  %i.ff = load ptr, ptr %i.bj, align 8, !tbaa !41
  store i8 0, ptr %i.ff, align 1, !tbaa !29
  store i8 1, ptr %i.bl, align 4, !tbaa !59
  br label %bb.ap

.loopexit1366:                                    ; preds = %bb.ak, %bb.an
  store i32 -123, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %.0.i1246 = phi i32 [ 2, %bb.ao ], [ %i.ez, %bb.al ]
  %i.fg = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 3 uses
  store ptr %i.fg, ptr %i.aa, align 8, !tbaa !62
  %i.fh = zext nneg i32 %.0.i1246 to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fh ; 2 uses
  store ptr %i.fi, ptr %i.ab, align 8, !tbaa !61
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph2850
  %.6947 = phi ptr [ %i.fg, %bb.ap ], [ %.59462847, %.lr.ph2850 ] ; 2 uses
  %.6936 = phi ptr [ %i.fi, %bb.ap ], [ %.59352848, %.lr.ph2850 ] ; 2 uses
  %i.fj = load i16, ptr %.6947, align 1
  %i.fk = zext i16 %i.fj to i32
  %i.fl = sub nuw nsw i32 16, %.310332846
  %i.fm = shl nuw i32 %i.fk, %i.fl
  %i.fn = or i32 %i.fm, %.310702845               ; 2 uses
  %i.fo = add nuw nsw i32 %.310332846, 16         ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.6947, i64 2 ; 2 uses
  %i.fq = icmp slt i32 %.310332846, 0
  br i1 %i.fq, label %.lr.ph2850, label %._crit_edge2851, !llvm.loop !139

._crit_edge2851:                                  ; preds = %bb.aq, %._crit_edge2840
  %.31070.lcssa = phi i32 [ %i.eo, %._crit_edge2840 ], [ %i.fn, %bb.aq ] ; 2 uses
  %.31033.lcssa = phi i32 [ %i.ep, %._crit_edge2840 ], [ %i.fo, %bb.aq ]
  %.5946.lcssa = phi ptr [ %.3944.lcssa, %._crit_edge2840 ], [ %i.fp, %bb.aq ]
  %.5935.lcssa = phi ptr [ %.3933.lcssa, %._crit_edge2840 ], [ %.6936, %bb.aq ]
  %i.fr = lshr i32 %.31070.lcssa, 16
  %i.fs = shl i32 %.31070.lcssa, 16
  %i.ft = add nsw i32 %.31033.lcssa, -16
  %i.fu = or disjoint i32 %i.fr, %i.en
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge2851, %._crit_edge
  %.41071 = phi i32 [ %i.fs, %._crit_edge2851 ], [ %i.dk, %._crit_edge ]
  %.41034 = phi i32 [ %i.ft, %._crit_edge2851 ], [ %i.dl, %._crit_edge ]
  %.7948 = phi ptr [ %.5946.lcssa, %._crit_edge2851 ], [ %.1942.lcssa, %._crit_edge ]
  %.7937 = phi ptr [ %.5935.lcssa, %._crit_edge2851 ], [ %.1931.lcssa, %._crit_edge ]
  %i.fv = phi i32 [ %i.fu, %._crit_edge2851 ], [ 0, %._crit_edge ]
  store i32 %i.fv, ptr %i.bm, align 8, !tbaa !55
  store i8 1, ptr %i.bd, align 2, !tbaa !70
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.m
  %.51072 = phi i32 [ %.010673130, %bb.m ], [ %.41071, %bb.ar ] ; 2 uses
  %.51035 = phi i32 [ %.010303131, %bb.m ], [ %.41034, %bb.ar ] ; 2 uses
  %.8949 = phi ptr [ %.09413132, %bb.m ], [ %.7948, %bb.ar ] ; 2 uses
  %.8938 = phi ptr [ %.09303133, %bb.m ], [ %.7937, %bb.ar ] ; 2 uses
  %i.fw = load i64, ptr %i.bn, align 8, !tbaa !46 ; 2 uses
  %.not1171 = icmp eq i64 %i.fw, 0
  br i1 %.not1171, label %.split3103, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fx = load i64, ptr %i.ak, align 8, !tbaa !45
  %i.fy = sub nsw i64 %i.fw, %i.fx
  %spec.select12351326 = tail call i64 @llvm.smin.i64(i64 %i.fy, i64 32768)
  %spec.select1235 = trunc i64 %spec.select12351326 to i32
  br label %.split3103

.split3103:                                       ; preds = %bb.at, %bb.as
  %.0897 = phi i32 [ 32768, %bb.as ], [ %spec.select1235, %bb.at ] ; 11 uses
  %i.fz = load i32, ptr %i.bo, align 8, !tbaa !52 ; 2 uses
  %i.ga = sub i32 %.0897, %.08873134
  %i.gb = add i32 %i.ga, %i.fz                    ; 2 uses
  %i.gc = icmp sgt i32 %i.gb, 0
  br i1 %i.gc, label %.lr.ph3113, label %._crit_edge3114

.lr.ph3113:                                       ; preds = %.split3103, %bb.ms
  %.13112 = phi i32 [ %.9, %bb.ms ], [ %.08663137, %.split3103 ] ; 2 uses
  %.18683111 = phi i32 [ %.9876, %bb.ms ], [ %.08673136, %.split3103 ] ; 2 uses
  %.18783110 = phi i32 [ %.9886, %bb.ms ], [ %.08773135, %.split3103 ] ; 2 uses
  %.18883109 = phi i32 [ %.6893, %bb.ms ], [ %.08873134, %.split3103 ] ; 6 uses
  %.09273108 = phi i32 [ %i.py, %bb.ms ], [ %i.gb, %.split3103 ] ; 2 uses
  %.99393107 = phi ptr [ %.56, %bb.ms ], [ %.8938, %.split3103 ] ; 5 uses
  %.99503106 = phi ptr [ %.57998, %bb.ms ], [ %.8949, %.split3103 ] ; 5 uses
  %.610363105 = phi i32 [ %.331063, %bb.ms ], [ %.51035, %.split3103 ] ; 4 uses
  %.610733104 = phi i32 [ %.331100, %bb.ms ], [ %.51072, %.split3103 ] ; 3 uses
  %i.gd = load i32, ptr %i.bc, align 4, !tbaa !71
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.au, label %bb.fb

bb.au:                                            ; preds = %.lr.ph3113
  %i.gf = load i8, ptr %i.be, align 1, !tbaa !72
  %i.gg = icmp eq i8 %i.gf, 3
  br i1 %i.gg, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.gh = load i32, ptr %i.bp, align 8, !tbaa !176
  %i.gi = and i32 %i.gh, 1
  %.not1185 = icmp eq i32 %i.gi, 0
  br i1 %.not1185, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gj = icmp eq ptr %.99503106, %.99393107
  br i1 %i.gj, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.gk = tail call fastcc i32 @lzx_read_input(ptr noundef %0)
  %.not1186 = icmp eq i32 %i.gk, 0
  br i1 %.not1186, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gl = load i32, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.az:                                            ; preds = %bb.ax
  %i.gm = load ptr, ptr %i.aa, align 8, !tbaa !62
  %i.gn = load ptr, ptr %i.ab, align 8, !tbaa !61
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.aw
  %.10951 = phi ptr [ %i.gm, %bb.az ], [ %.99503106, %bb.aw ]
  %.10940 = phi ptr [ %i.gn, %bb.az ], [ %.99393107, %bb.aw ]
  %i.go = getelementptr inbounds nuw i8, ptr %.10951, i64 1
  br label %bb.bb

bb.bb:                                            ; preds = %bb.au, %bb.av, %bb.ba
  %.11952 = phi ptr [ %i.go, %bb.ba ], [ %.99503106, %bb.av ], [ %.99503106, %bb.au ] ; 2 uses
  %.11 = phi ptr [ %.10940, %bb.ba ], [ %.99393107, %bb.av ], [ %.99393107, %bb.au ] ; 2 uses
  %i.gp = icmp slt i32 %.610363105, 3
  br i1 %i.gp, label %.lr.ph2861, label %._crit_edge2862

.lr.ph2861:                                       ; preds = %bb.bb, %bb.bl
  %.122859 = phi ptr [ %.13, %bb.bl ], [ %.11, %bb.bb ] ; 2 uses
  %.129532858 = phi ptr [ %i.ho, %bb.bl ], [ %.11952, %bb.bb ] ; 2 uses
  %.710372857 = phi i32 [ %i.hn, %bb.bl ], [ %.610363105, %bb.bb ] ; 3 uses
  %.710742856 = phi i32 [ %i.hm, %bb.bl ], [ %.610733104, %bb.bb ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.129532858, i64 1
  %.not1233 = icmp ult ptr %i.gq, %.122859
  br i1 %.not1233, label %bb.bl, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph2861
  %i.gr = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %.not.i1250 = icmp eq ptr %i.gr, null
  %i.gs = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 2 uses
  %i.gt = load i32, ptr %i.bk, align 8, !tbaa !49 ; 2 uses
  br i1 %.not.i1250, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gu = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.gv = tail call i32 %i.gr(ptr noundef %i.gu, ptr noundef %i.gs, i32 noundef %i.gt) #11, !inline_history !73
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.gw = load i32, ptr %0, align 8, !tbaa !42
  %i.gx = tail call i32 @cli_readn(i32 noundef %i.gw, ptr noundef %i.gs, i32 noundef %i.gt) #11
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.gy = phi i32 [ %i.gv, %bb.bd ], [ %i.gx, %bb.be ] ; 3 uses
  %i.gz = icmp slt i32 %i.gy, 0
  br i1 %i.gz, label %.loopexit1365, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ha = icmp eq i32 %i.gy, 0
  br i1 %i.ha, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.hb = load i8, ptr %i.bl, align 4, !tbaa !59
  %.not24.i1253 = icmp eq i8 %i.hb, 0
  br i1 %.not24.i1253, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #11
  br label %.loopexit1365

bb.bj:                                            ; preds = %bb.bh
  %i.hc = load ptr, ptr %i.bj, align 8, !tbaa !41
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 1
  store i8 0, ptr %i.hd, align 1, !tbaa !29
  %i.he = load ptr, ptr %i.bj, align 8, !tbaa !41
  store i8 0, ptr %i.he, align 1, !tbaa !29
  store i8 1, ptr %i.bl, align 4, !tbaa !59
  br label %bb.bk

.loopexit1365:                                    ; preds = %bb.bf, %bb.bi
  store i32 -123, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.bk:                                            ; preds = %bb.bj, %bb.bg
  %.0.i1251 = phi i32 [ 2, %bb.bj ], [ %i.gy, %bb.bg ]
  %i.hf = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 3 uses
  store ptr %i.hf, ptr %i.aa, align 8, !tbaa !62
  %i.hg = zext nneg i32 %.0.i1251 to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hg ; 2 uses
  store ptr %i.hh, ptr %i.ab, align 8, !tbaa !61
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.lr.ph2861
  %.13954 = phi ptr [ %i.hf, %bb.bk ], [ %.129532858, %.lr.ph2861 ] ; 2 uses
  %.13 = phi ptr [ %i.hh, %bb.bk ], [ %.122859, %.lr.ph2861 ] ; 2 uses
  %i.hi = load i16, ptr %.13954, align 1
  %i.hj = zext i16 %i.hi to i32
  %i.hk = sub i32 16, %.710372857
  %i.hl = shl i32 %i.hj, %i.hk
  %i.hm = or i32 %i.hl, %.710742856               ; 2 uses
  %i.hn = add nsw i32 %.710372857, 16             ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.13954, i64 2 ; 2 uses
  %i.hp = icmp slt i32 %.710372857, -13
  br i1 %i.hp, label %.lr.ph2861, label %._crit_edge2862, !llvm.loop !140

._crit_edge2862:                                  ; preds = %bb.bl, %bb.bb
  %.71074.lcssa = phi i32 [ %.610733104, %bb.bb ], [ %i.hm, %bb.bl ] ; 2 uses
  %.71037.lcssa = phi i32 [ %.610363105, %bb.bb ], [ %i.hn, %bb.bl ] ; 2 uses
  %.12953.lcssa = phi ptr [ %.11952, %bb.bb ], [ %i.ho, %bb.bl ] ; 2 uses
  %.12.lcssa = phi ptr [ %.11, %bb.bb ], [ %.13, %bb.bl ] ; 2 uses
  %i.hq = lshr i32 %.71074.lcssa, 29
  %i.hr = trunc nuw nsw i32 %i.hq to i8
  store i8 %i.hr, ptr %i.be, align 1, !tbaa !72
  %i.hs = shl i32 %.71074.lcssa, 3                ; 2 uses
  %i.ht = add nsw i32 %.71037.lcssa, -3           ; 2 uses
  %i.hu = icmp samesign ult i32 %.71037.lcssa, 19
  br i1 %i.hu, label %.lr.ph2872, label %._crit_edge2873

.lr.ph2872:                                       ; preds = %._crit_edge2862, %bb.bv
  %.142870 = phi ptr [ %.15, %bb.bv ], [ %.12.lcssa, %._crit_edge2862 ] ; 2 uses
  %.149552869 = phi ptr [ %i.it, %bb.bv ], [ %.12953.lcssa, %._crit_edge2862 ] ; 2 uses
  %.810382868 = phi i32 [ %i.is, %bb.bv ], [ %i.ht, %._crit_edge2862 ] ; 3 uses
  %.810752867 = phi i32 [ %i.ir, %bb.bv ], [ %i.hs, %._crit_edge2862 ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.149552869, i64 1
  %.not1231 = icmp ult ptr %i.hv, %.142870
  br i1 %.not1231, label %bb.bv, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph2872
  %i.hw = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %.not.i1255 = icmp eq ptr %i.hw, null
  %i.hx = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 2 uses
  %i.hy = load i32, ptr %i.bk, align 8, !tbaa !49 ; 2 uses
  br i1 %.not.i1255, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hz = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.ia = tail call i32 %i.hw(ptr noundef %i.hz, ptr noundef %i.hx, i32 noundef %i.hy) #11, !inline_history !73
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.ib = load i32, ptr %0, align 8, !tbaa !42
  %i.ic = tail call i32 @cli_readn(i32 noundef %i.ib, ptr noundef %i.hx, i32 noundef %i.hy) #11
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.id = phi i32 [ %i.ia, %bb.bn ], [ %i.ic, %bb.bo ] ; 3 uses
  %i.ie = icmp slt i32 %i.id, 0
  br i1 %i.ie, label %.loopexit1364, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.if = icmp eq i32 %i.id, 0
  br i1 %i.if, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.ig = load i8, ptr %i.bl, align 4, !tbaa !59
  %.not24.i1258 = icmp eq i8 %i.ig, 0
  br i1 %.not24.i1258, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #11
  br label %.loopexit1364

bb.bt:                                            ; preds = %bb.br
  %i.ih = load ptr, ptr %i.bj, align 8, !tbaa !41
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 1
  store i8 0, ptr %i.ii, align 1, !tbaa !29
  %i.ij = load ptr, ptr %i.bj, align 8, !tbaa !41
  store i8 0, ptr %i.ij, align 1, !tbaa !29
  store i8 1, ptr %i.bl, align 4, !tbaa !59
  br label %bb.bu

.loopexit1364:                                    ; preds = %bb.bp, %bb.bs
  store i32 -123, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.bu:                                            ; preds = %bb.bt, %bb.bq
  %.0.i1256 = phi i32 [ 2, %bb.bt ], [ %i.id, %bb.bq ]
  %i.ik = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 3 uses
  store ptr %i.ik, ptr %i.aa, align 8, !tbaa !62
  %i.il = zext nneg i32 %.0.i1256 to i64
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.il ; 2 uses
  store ptr %i.im, ptr %i.ab, align 8, !tbaa !61
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.lr.ph2872
  %.15956 = phi ptr [ %i.ik, %bb.bu ], [ %.149552869, %.lr.ph2872 ] ; 2 uses
  %.15 = phi ptr [ %i.im, %bb.bu ], [ %.142870, %.lr.ph2872 ] ; 2 uses
  %i.in = load i16, ptr %.15956, align 1
  %i.io = zext i16 %i.in to i32
  %i.ip = sub nuw nsw i32 16, %.810382868
  %i.iq = shl nuw i32 %i.io, %i.ip
  %i.ir = or i32 %i.iq, %.810752867               ; 2 uses
  %i.is = add nuw nsw i32 %.810382868, 16         ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.15956, i64 2 ; 2 uses
  %i.iu = icmp slt i32 %.810382868, 0
  br i1 %i.iu, label %.lr.ph2872, label %._crit_edge2873, !llvm.loop !141

._crit_edge2873:                                  ; preds = %bb.bv, %._crit_edge2862
  %.81075.lcssa = phi i32 [ %i.hs, %._crit_edge2862 ], [ %i.ir, %bb.bv ] ; 2 uses
  %.81038.lcssa = phi i32 [ %i.ht, %._crit_edge2862 ], [ %i.is, %bb.bv ] ; 2 uses
  %.14955.lcssa = phi ptr [ %.12953.lcssa, %._crit_edge2862 ], [ %i.it, %bb.bv ] ; 2 uses
  %.14.lcssa = phi ptr [ %.12.lcssa, %._crit_edge2862 ], [ %.15, %bb.bv ] ; 2 uses
  %i.iv = shl i32 %.81075.lcssa, 16               ; 2 uses
  %i.iw = add nsw i32 %.81038.lcssa, -16          ; 2 uses
  %i.ix = icmp slt i32 %.81038.lcssa, 24
  br i1 %i.ix, label %.lr.ph2883, label %._crit_edge2884

.lr.ph2883:                                       ; preds = %._crit_edge2873, %bb.cf
  %.162881 = phi ptr [ %.17, %bb.cf ], [ %.14.lcssa, %._crit_edge2873 ] ; 2 uses
  %.169572880 = phi ptr [ %i.jw, %bb.cf ], [ %.14955.lcssa, %._crit_edge2873 ] ; 2 uses
  %.910392879 = phi i32 [ %i.jv, %bb.cf ], [ %i.iw, %._crit_edge2873 ] ; 3 uses
  %.910762878 = phi i32 [ %i.ju, %bb.cf ], [ %i.iv, %._crit_edge2873 ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.169572880, i64 1
  %.not1229 = icmp ult ptr %i.iy, %.162881
  br i1 %.not1229, label %bb.cf, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph2883
  %i.iz = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %.not.i1260 = icmp eq ptr %i.iz, null
  %i.ja = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 2 uses
  %i.jb = load i32, ptr %i.bk, align 8, !tbaa !49 ; 2 uses
  br i1 %.not.i1260, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jc = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.jd = tail call i32 %i.iz(ptr noundef %i.jc, ptr noundef %i.ja, i32 noundef %i.jb) #11, !inline_history !73
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.je = load i32, ptr %0, align 8, !tbaa !42
  %i.jf = tail call i32 @cli_readn(i32 noundef %i.je, ptr noundef %i.ja, i32 noundef %i.jb) #11
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.jg = phi i32 [ %i.jd, %bb.bx ], [ %i.jf, %bb.by ] ; 3 uses
  %i.jh = icmp slt i32 %i.jg, 0
  br i1 %i.jh, label %.loopexit1363, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ji = icmp eq i32 %i.jg, 0
  br i1 %i.ji, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.jj = load i8, ptr %i.bl, align 4, !tbaa !59
  %.not24.i1263 = icmp eq i8 %i.jj, 0
  br i1 %.not24.i1263, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #11
  br label %.loopexit1363

bb.cd:                                            ; preds = %bb.cb
  %i.jk = load ptr, ptr %i.bj, align 8, !tbaa !41
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 1
  store i8 0, ptr %i.jl, align 1, !tbaa !29
  %i.jm = load ptr, ptr %i.bj, align 8, !tbaa !41
  store i8 0, ptr %i.jm, align 1, !tbaa !29
  store i8 1, ptr %i.bl, align 4, !tbaa !59
  br label %bb.ce

.loopexit1363:                                    ; preds = %bb.bz, %bb.cc
  store i32 -123, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.ce:                                            ; preds = %bb.cd, %bb.ca
  %.0.i1261 = phi i32 [ 2, %bb.cd ], [ %i.jg, %bb.ca ]
  %i.jn = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 3 uses
  store ptr %i.jn, ptr %i.aa, align 8, !tbaa !62
  %i.jo = zext nneg i32 %.0.i1261 to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jo ; 2 uses
  store ptr %i.jp, ptr %i.ab, align 8, !tbaa !61
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.lr.ph2883
  %.17958 = phi ptr [ %i.jn, %bb.ce ], [ %.169572880, %.lr.ph2883 ] ; 2 uses
  %.17 = phi ptr [ %i.jp, %bb.ce ], [ %.162881, %.lr.ph2883 ] ; 2 uses
  %i.jq = load i16, ptr %.17958, align 1
  %i.jr = zext i16 %i.jq to i32
  %i.js = sub nuw nsw i32 16, %.910392879
  %i.jt = shl nuw i32 %i.jr, %i.js
  %i.ju = or i32 %i.jt, %.910762878               ; 2 uses
  %i.jv = add nuw nsw i32 %.910392879, 16         ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.17958, i64 2 ; 2 uses
  %i.jx = icmp slt i32 %.910392879, -8
  br i1 %i.jx, label %.lr.ph2883, label %._crit_edge2884, !llvm.loop !142

._crit_edge2884:                                  ; preds = %bb.cf, %._crit_edge2873
  %.91076.lcssa = phi i32 [ %i.iv, %._crit_edge2873 ], [ %i.ju, %bb.cf ] ; 2 uses
  %.91039.lcssa = phi i32 [ %i.iw, %._crit_edge2873 ], [ %i.jv, %bb.cf ] ; 2 uses
  %.16957.lcssa = phi ptr [ %.14955.lcssa, %._crit_edge2873 ], [ %i.jw, %bb.cf ] ; 4 uses
  %.16.lcssa = phi ptr [ %.14.lcssa, %._crit_edge2873 ], [ %.17, %bb.cf ] ; 4 uses
  %i.jy = lshr i32 %.91076.lcssa, 24
  %i.jz = shl i32 %.91076.lcssa, 8                ; 2 uses
  %i.ka = add nsw i32 %.91039.lcssa, -8           ; 4 uses
  %i.kb = lshr i32 %.81075.lcssa, 8
  %i.kc = and i32 %i.kb, 16776960
  %i.kd = or disjoint i32 %i.jy, %i.kc            ; 2 uses
  store i32 %i.kd, ptr %i.bp, align 8, !tbaa !176
  store i32 %i.kd, ptr %i.bc, align 4, !tbaa !71
  %i.ke = load i8, ptr %i.be, align 1, !tbaa !72  ; 2 uses
  switch i8 %i.ke, label %bb.fa [
    i8 2, label %.preheader1353
    i8 1, label %bb.cs
    i8 3, label %bb.de
  ]

.preheader1353:                                   ; preds = %._crit_edge2884, %._crit_edge2907
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge2907 ], [ 0, %._crit_edge2884 ] ; 2 uses
  %.182916 = phi ptr [ %.19.lcssa, %._crit_edge2907 ], [ %.16.lcssa, %._crit_edge2884 ] ; 2 uses
  %.189592915 = phi ptr [ %.19960.lcssa, %._crit_edge2907 ], [ %.16957.lcssa, %._crit_edge2884 ] ; 2 uses
  %.1010402913 = phi i32 [ %i.li, %._crit_edge2907 ], [ %i.ka, %._crit_edge2884 ] ; 3 uses
  %.1010772912 = phi i32 [ %i.lh, %._crit_edge2907 ], [ %i.jz, %._crit_edge2884 ] ; 2 uses
  %i.kf = icmp slt i32 %.1010402913, 3
  br i1 %i.kf, label %.lr.ph2906, label %._crit_edge2907

.lr.ph2906:                                       ; preds = %.preheader1353, %bb.cp
  %.192905 = phi ptr [ %.20, %bb.cp ], [ %.182916, %.preheader1353 ] ; 2 uses
  %.199602904 = phi ptr [ %i.le, %bb.cp ], [ %.189592915, %.preheader1353 ] ; 2 uses
  %.1110412903 = phi i32 [ %i.ld, %bb.cp ], [ %.1010402913, %.preheader1353 ] ; 3 uses
  %.1110782902 = phi i32 [ %i.lc, %bb.cp ], [ %.1010772912, %.preheader1353 ]
  %i.kg = getelementptr inbounds nuw i8, ptr %.199602904, i64 1
  %.not1227 = icmp ult ptr %i.kg, %.192905
  br i1 %.not1227, label %bb.cp, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph2906
  %i.kh = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %.not.i1265 = icmp eq ptr %i.kh, null
  %i.ki = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 2 uses
  %i.kj = load i32, ptr %i.bk, align 8, !tbaa !49 ; 2 uses
  br i1 %.not.i1265, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kk = load ptr, ptr %i.bi, align 8, !tbaa !47
  %i.kl = tail call i32 %i.kh(ptr noundef %i.kk, ptr noundef %i.ki, i32 noundef %i.kj) #11, !inline_history !73
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %i.km = load i32, ptr %0, align 8, !tbaa !42
  %i.kn = tail call i32 @cli_readn(i32 noundef %i.km, ptr noundef %i.ki, i32 noundef %i.kj) #11
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.ko = phi i32 [ %i.kl, %bb.ch ], [ %i.kn, %bb.ci ] ; 3 uses
  %i.kp = icmp slt i32 %i.ko, 0
  br i1 %i.kp, label %.loopexit1354, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kq = icmp eq i32 %i.ko, 0
  br i1 %i.kq, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %bb.ck
  %i.kr = load i8, ptr %i.bl, align 4, !tbaa !59
  %.not24.i1268 = icmp eq i8 %i.kr, 0
  br i1 %.not24.i1268, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #11
  br label %.loopexit1354

bb.cn:                                            ; preds = %bb.cl
  %i.ks = load ptr, ptr %i.bj, align 8, !tbaa !41
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  store i8 0, ptr %i.kt, align 1, !tbaa !29
  %i.ku = load ptr, ptr %i.bj, align 8, !tbaa !41
  store i8 0, ptr %i.ku, align 1, !tbaa !29
  store i8 1, ptr %i.bl, align 4, !tbaa !59
  br label %bb.co

.loopexit1354:                                    ; preds = %bb.cj, %bb.cm
  store i32 -123, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.co:                                            ; preds = %bb.cn, %bb.ck
  %.0.i1266 = phi i32 [ 2, %bb.cn ], [ %i.ko, %bb.ck ]
  %i.kv = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 3 uses
  store ptr %i.kv, ptr %i.aa, align 8, !tbaa !62
  %i.kw = zext nneg i32 %.0.i1266 to i64
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.kw ; 2 uses
  store ptr %i.kx, ptr %i.ab, align 8, !tbaa !61
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %.lr.ph2906
  %.20961 = phi ptr [ %i.kv, %bb.co ], [ %.199602904, %.lr.ph2906 ] ; 2 uses
  %.20 = phi ptr [ %i.kx, %bb.co ], [ %.192905, %.lr.ph2906 ] ; 2 uses
  %i.ky = load i16, ptr %.20961, align 1
  %i.kz = zext i16 %i.ky to i32
  %i.la = sub i32 16, %.1110412903
  %i.lb = shl nuw i32 %i.kz, %i.la
  %i.lc = or i32 %i.lb, %.1110782902              ; 2 uses
  %i.ld = add nuw nsw i32 %.1110412903, 16        ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.20961, i64 2 ; 2 uses
  %i.lf = icmp slt i32 %.1110412903, -13
  br i1 %i.lf, label %.lr.ph2906, label %._crit_edge2907, !llvm.loop !143

._crit_edge2907:                                  ; preds = %bb.cp, %.preheader1353
  %.111078.lcssa = phi i32 [ %.1010772912, %.preheader1353 ], [ %i.lc, %bb.cp ] ; 2 uses
  %.111041.lcssa = phi i32 [ %.1010402913, %.preheader1353 ], [ %i.ld, %bb.cp ]
  %.19960.lcssa = phi ptr [ %.189592915, %.preheader1353 ], [ %i.le, %bb.cp ] ; 2 uses
  %.19.lcssa = phi ptr [ %.182916, %.preheader1353 ], [ %.20, %bb.cp ] ; 2 uses
  %i.lg = lshr i32 %.111078.lcssa, 29
  %i.lh = shl i32 %.111078.lcssa, 3               ; 2 uses
  %i.li = add nsw i32 %.111041.lcssa, -3          ; 2 uses
  %i.lj = trunc nuw nsw i32 %i.lg to i8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.br, i64 %indvars.iv
  store i8 %i.lj, ptr %i.lk, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.cq, label %.preheader1353, !llvm.loop !144

bb.cq:                                            ; preds = %._crit_edge2907
  %i.ll = tail call fastcc i32 @lzx_make_decode_table(i32 noundef 8, i32 noundef 7, ptr noundef %i.br, ptr noundef %i.bs)
  %.not1191 = icmp eq i32 %i.ll, 0
  br i1 %.not1191, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #11
  store i32 -124, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.cs:                                            ; preds = %bb.cq, %._crit_edge2884
  %.121079 = phi i32 [ %i.lh, %bb.cq ], [ %i.jz, %._crit_edge2884 ]
  %.121042 = phi i32 [ %i.li, %bb.cq ], [ %i.ka, %._crit_edge2884 ]
  %.21962 = phi ptr [ %.19960.lcssa, %bb.cq ], [ %.16957.lcssa, %._crit_edge2884 ]
  %.21 = phi ptr [ %.19.lcssa, %bb.cq ], [ %.16.lcssa, %._crit_edge2884 ]
  store ptr %.21962, ptr %i.aa, align 8, !tbaa !62
  store ptr %.21, ptr %i.ab, align 8, !tbaa !61
  store i32 %.121079, ptr %i.ac, align 8, !tbaa !66
  store i32 %.121042, ptr %i.ad, align 4, !tbaa !65
  %i.lm = tail call fastcc i32 @lzx_read_lens(ptr noundef %0, ptr noundef %i.bf, i32 noundef 0, i32 noundef 256)
  %.not1192 = icmp eq i32 %i.lm, 0
  br i1 %.not1192, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ln = load i32, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.cu:                                            ; preds = %bb.cs
  %i.lo = load i8, ptr %i.bt, align 1, !tbaa !57
  %i.lp = zext i8 %i.lo to i32
  %i.lq = shl nuw nsw i32 %i.lp, 3
  %i.lr = add nuw nsw i32 %i.lq, 256
  %i.ls = tail call fastcc i32 @lzx_read_lens(ptr noundef %0, ptr noundef %i.bf, i32 noundef 256, i32 noundef %i.lr)
  %.not1193 = icmp eq i32 %i.ls, 0
  br i1 %.not1193, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lt = load i32, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.cw:                                            ; preds = %bb.cu
  %i.lu = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !74
  %i.lv = load <2 x i32>, ptr %i.ac, align 8, !tbaa !8
  %i.lw = tail call fastcc i32 @lzx_make_decode_table(i32 noundef 656, i32 noundef 12, ptr noundef %i.bf, ptr noundef %i.bu)
  %.not1194 = icmp eq i32 %i.lw, 0
  br i1 %.not1194, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #11
  store i32 -124, ptr %i.c, align 8, !tbaa !60
  br label %bb.nr

bb.cy:                                            ; preds = %bb.cw
  %i.lx = load i8, ptr %i.bv, align 8, !tbaa !29
  %.not1195 = icmp eq i8 %i.lx, 0
  br i1 %.not1195, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  store i8 1, ptr %i.bq, align 8, !tbaa !58
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  store <2 x ptr> %i.lu, ptr %i.aa, align 8, !tbaa !74
  store <2 x i32> %i.lv, ptr %i.ac, align 8, !tbaa !8
  %i.ly = tail call fastcc i32 @lzx_read_lens(ptr noundef %0, ptr noundef %i.bg, i32 noundef 0, i32 noundef 249)
  %.not1196 = icmp eq i32 %i.ly, 0
  br i1 %.not1196, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.lz = load i32, ptr %i.c, align 8, !tbaa !60
end_hunk_0
begin_hunk_1_@lzx_read_lens:bb.a
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph625.prol.loopexit, label %vec.epilog.scalar.ph625.prol, !llvm.loop !199

vec.epilog.scalar.ph625.prol.loopexit:            ; preds = %vec.epilog.scalar.ph625.prol, %vec.epilog.scalar.ph625.preheader
  %.lcssa653.unr = phi i32 [ poison, %vec.epilog.scalar.ph625.preheader ], [ %i.if, %vec.epilog.scalar.ph625.prol ]
  %.1187479.unr = phi i32 [ %.1187479.ph, %vec.epilog.scalar.ph625.preheader ], [ %i.ie, %vec.epilog.scalar.ph625.prol ]
  %.3478.unr = phi i32 [ %.3478.ph, %vec.epilog.scalar.ph625.preheader ], [ %i.if, %vec.epilog.scalar.ph625.prol ]
  %i.ii = icmp ult i32 %i.id, 3
  br i1 %i.ii, label %.loopexit.loopexit502, label %vec.epilog.scalar.ph625

vec.epilog.scalar.ph625:                          ; preds = %vec.epilog.scalar.ph625.prol.loopexit, %vec.epilog.scalar.ph625
  %.1187479 = phi i32 [ %i.is, %vec.epilog.scalar.ph625 ], [ %.1187479.unr, %vec.epilog.scalar.ph625.prol.loopexit ]
  %.3478 = phi i32 [ %i.it, %vec.epilog.scalar.ph625 ], [ %.3478.unr, %vec.epilog.scalar.ph625.prol.loopexit ] ; 5 uses
  %i.ij = add i32 %.3478, 1
  %i.ik = zext i32 %.3478 to i64
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 %i.ik
  store i8 0, ptr %i.il, align 1, !tbaa !29
  %i.im = add i32 %.3478, 2
  %i.in = zext i32 %i.ij to i64
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 %i.in
  store i8 0, ptr %i.io, align 1, !tbaa !29
  %i.ip = add i32 %.3478, 3
  %i.iq = zext i32 %i.im to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 %i.iq
  store i8 0, ptr %i.ir, align 1, !tbaa !29
  %i.is = add nsw i32 %.1187479, -4               ; 2 uses
  %i.it = add i32 %.3478, 4                       ; 2 uses
  %i.iu = zext i32 %i.ip to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 %i.iu
  store i8 0, ptr %i.iv, align 1, !tbaa !29
  %.not251.3 = icmp eq i32 %i.is, 0
  br i1 %.not251.3, label %.loopexit.loopexit502, label %vec.epilog.scalar.ph625, !llvm.loop !200

.lr.ph449:                                        ; preds = %.preheader304, %bb.bj
  %.10448 = phi ptr [ %.11, %bb.bj ], [ %.4195.lcssa, %.preheader304 ] ; 2 uses
  %.10207447 = phi ptr [ %i.jw, %bb.bj ], [ %.4201.lcssa, %.preheader304 ] ; 2 uses
  %.6224446 = phi i32 [ %i.jv, %bb.bj ], [ %i.dl, %.preheader304 ] ; 3 uses
  %.6233445 = phi i32 [ %i.ju, %bb.bj ], [ %i.dk, %.preheader304 ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.10207447, i64 1
  %.not249 = icmp ult ptr %i.iw, %.10448
  br i1 %.not249, label %bb.bj, label %bb.az

bb.az:                                            ; preds = %.lr.ph449
  %i.ix = load ptr, ptr %i.i, align 8, !tbaa !48  ; 2 uses
  %.not.i277 = icmp eq ptr %i.ix, null
  %i.iy = load ptr, ptr %i.k, align 8, !tbaa !41  ; 2 uses
  %i.iz = load i32, ptr %i.l, align 8, !tbaa !49  ; 2 uses
  br i1 %.not.i277, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ja = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.jb = tail call i32 %i.ix(ptr noundef %i.ja, ptr noundef %i.iy, i32 noundef %i.iz) #11, !inline_history !73
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.jc = load i32, ptr %0, align 8, !tbaa !42
  %i.jd = tail call i32 @cli_readn(i32 noundef %i.jc, ptr noundef %i.iy, i32 noundef %i.iz) #11
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.je = phi i32 [ %i.jb, %bb.ba ], [ %i.jd, %bb.bb ] ; 3 uses
  %i.jf = icmp slt i32 %i.je, 0
  br i1 %i.jf, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 -123, ptr %i.jg, align 8, !tbaa !60
  br label %bb.cb

bb.be:                                            ; preds = %bb.bc
  %i.jh = icmp eq i32 %i.je, 0
  br i1 %i.jh, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.ji = load i8, ptr %i.m, align 4, !tbaa !59
  %.not24.i280 = icmp eq i8 %i.ji, 0
  br i1 %.not24.i280, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #11
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 -123, ptr %i.jj, align 8, !tbaa !60
  br label %bb.cb

bb.bh:                                            ; preds = %bb.bf
  %i.jk = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 1
  store i8 0, ptr %i.jl, align 1, !tbaa !29
  %i.jm = load ptr, ptr %i.k, align 8, !tbaa !41
  store i8 0, ptr %i.jm, align 1, !tbaa !29
  store i8 1, ptr %i.m, align 4, !tbaa !59
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.be
  %.0.i278 = phi i32 [ 2, %bb.bh ], [ %i.je, %bb.be ]
  %i.jn = load ptr, ptr %i.k, align 8, !tbaa !41  ; 3 uses
  store ptr %i.jn, ptr %i.a, align 8, !tbaa !62
  %i.jo = zext nneg i32 %.0.i278 to i64
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jo ; 2 uses
  store ptr %i.jp, ptr %i.c, align 8, !tbaa !61
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.lr.ph449
  %.11208 = phi ptr [ %i.jn, %bb.bi ], [ %.10207447, %.lr.ph449 ] ; 2 uses
  %.11 = phi ptr [ %i.jp, %bb.bi ], [ %.10448, %.lr.ph449 ] ; 2 uses
  %i.jq = load i16, ptr %.11208, align 1
  %i.jr = zext i16 %i.jq to i32
  %i.js = sub i32 16, %.6224446
  %i.jt = shl i32 %i.jr, %i.js
  %i.ju = or i32 %i.jt, %.6233445                 ; 2 uses
  %i.jv = add nsw i32 %.6224446, 16               ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.11208, i64 2 ; 2 uses
  %i.jx = icmp slt i32 %.6224446, -15
  br i1 %i.jx, label %.lr.ph449, label %._crit_edge450, !llvm.loop !201

._crit_edge450:                                   ; preds = %bb.bj, %.preheader304
  %.6233.lcssa = phi i32 [ %i.dk, %.preheader304 ], [ %i.ju, %bb.bj ] ; 2 uses
  %.6224.lcssa = phi i32 [ %i.dl, %.preheader304 ], [ %i.jv, %bb.bj ] ; 2 uses
  %.10207.lcssa = phi ptr [ %.4201.lcssa, %.preheader304 ], [ %i.jw, %bb.bj ] ; 2 uses
  %.10.lcssa = phi ptr [ %.4195.lcssa, %.preheader304 ], [ %.11, %bb.bj ] ; 2 uses
  %i.jy = shl i32 %.6233.lcssa, 1                 ; 2 uses
  %i.jz = add nsw i32 %.6224.lcssa, -1            ; 2 uses
  %i.ka = icmp samesign ult i32 %.6224.lcssa, 17
  br i1 %i.ka, label %.lr.ph460, label %._crit_edge461

.lr.ph460:                                        ; preds = %._crit_edge450, %bb.bu
  %.12458 = phi ptr [ %.13, %bb.bu ], [ %.10.lcssa, %._crit_edge450 ] ; 2 uses
  %.12209457 = phi ptr [ %i.lb, %bb.bu ], [ %.10207.lcssa, %._crit_edge450 ] ; 2 uses
  %.7225456 = phi i32 [ %i.la, %bb.bu ], [ %i.jz, %._crit_edge450 ] ; 3 uses
  %.7234455 = phi i32 [ %i.kz, %bb.bu ], [ %i.jy, %._crit_edge450 ]
  %i.kb = getelementptr inbounds nuw i8, ptr %.12209457, i64 1
  %.not247 = icmp ult ptr %i.kb, %.12458
  br i1 %.not247, label %bb.bu, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph460
  %i.kc = load ptr, ptr %i.i, align 8, !tbaa !48  ; 2 uses
  %.not.i282 = icmp eq ptr %i.kc, null
  %i.kd = load ptr, ptr %i.k, align 8, !tbaa !41  ; 2 uses
  %i.ke = load i32, ptr %i.l, align 8, !tbaa !49  ; 2 uses
  br i1 %.not.i282, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kf = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.kg = tail call i32 %i.kc(ptr noundef %i.kf, ptr noundef %i.kd, i32 noundef %i.ke) #11, !inline_history !73
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.kh = load i32, ptr %0, align 8, !tbaa !42
  %i.ki = tail call i32 @cli_readn(i32 noundef %i.kh, ptr noundef %i.kd, i32 noundef %i.ke) #11
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.kj = phi i32 [ %i.kg, %bb.bl ], [ %i.ki, %bb.bm ] ; 3 uses
  %i.kk = icmp slt i32 %i.kj, 0
  br i1 %i.kk, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 -123, ptr %i.kl, align 8, !tbaa !60
  br label %bb.cb

bb.bp:                                            ; preds = %bb.bn
  %i.km = icmp eq i32 %i.kj, 0
  br i1 %i.km, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.kn = load i8, ptr %i.m, align 4, !tbaa !59
  %.not24.i285 = icmp eq i8 %i.kn, 0
  br i1 %.not24.i285, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24) #11
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 -123, ptr %i.ko, align 8, !tbaa !60
  br label %bb.cb

bb.bs:                                            ; preds = %bb.bq
  %i.kp = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 1
  store i8 0, ptr %i.kq, align 1, !tbaa !29
  %i.kr = load ptr, ptr %i.k, align 8, !tbaa !41
  store i8 0, ptr %i.kr, align 1, !tbaa !29
  store i8 1, ptr %i.m, align 4, !tbaa !59
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bp
  %.0.i283 = phi i32 [ 2, %bb.bs ], [ %i.kj, %bb.bp ]
  %i.ks = load ptr, ptr %i.k, align 8, !tbaa !41  ; 3 uses
  store ptr %i.ks, ptr %i.a, align 8, !tbaa !62
  %i.kt = zext nneg i32 %.0.i283 to i64
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kt ; 2 uses
  store ptr %i.ku, ptr %i.c, align 8, !tbaa !61
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.lr.ph460
  %.13210 = phi ptr [ %i.ks, %bb.bt ], [ %.12209457, %.lr.ph460 ] ; 2 uses
  %.13 = phi ptr [ %i.ku, %bb.bt ], [ %.12458, %.lr.ph460 ] ; 2 uses
  %i.kv = load i16, ptr %.13210, align 1
  %i.kw = zext i16 %i.kv to i32
  %i.kx = sub nuw nsw i32 16, %.7225456
  %i.ky = shl nuw i32 %i.kw, %i.kx
  %i.kz = or i32 %i.ky, %.7234455                 ; 2 uses
  %i.la = add nuw nsw i32 %.7225456, 16           ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.13210, i64 2 ; 2 uses
  %i.lc = icmp slt i32 %.7225456, 0
  br i1 %i.lc, label %.lr.ph460, label %._crit_edge461, !llvm.loop !202

._crit_edge461:                                   ; preds = %bb.bu, %._crit_edge450
  %.7234.lcssa = phi i32 [ %i.jy, %._crit_edge450 ], [ %i.kz, %bb.bu ] ; 4 uses
  %.7225.lcssa = phi i32 [ %i.jz, %._crit_edge450 ], [ %i.la, %bb.bu ]
  %.12209.lcssa = phi ptr [ %.10207.lcssa, %._crit_edge450 ], [ %i.lb, %bb.bu ]
  %.12.lcssa = phi ptr [ %.10.lcssa, %._crit_edge450 ], [ %.13, %bb.bu ]
  %i.ld = lshr i32 %.7234.lcssa, 26
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.le
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !34 ; 3 uses
  %i.lh = icmp ugt i16 %i.lg, 19
  br i1 %i.lh, label %.preheader302.preheader, label %.loopexit303

.preheader302:                                    ; preds = %bb.by
  %i.li = shl i16 %i.me, 1                        ; 2 uses
  %i.lj = icmp ugt i16 %i.li, 103
  br i1 %i.lj, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %.preheader302
  %i.lk = lshr i32 %i.lv, 1
  %i.ll = and i32 %i.lk, %.7234.lcssa
  %.not245.1 = icmp ne i32 %i.ll, 0
  %i.lm = zext i1 %.not245.1 to i16
  %i.ln = or disjoint i16 %i.li, %i.lm
  %i.lo = zext nneg i16 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.lo
  %i.lq = load i16, ptr %i.lp, align 2, !tbaa !34 ; 3 uses
  %i.lr = icmp ugt i16 %i.lq, 19
  br i1 %i.lr, label %.preheader302.1, label %.loopexit303, !llvm.loop !203

.preheader302.1:                                  ; preds = %bb.bv
  %i.ls = lshr i32 %i.lv, 2                       ; 2 uses
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %bb.bw, label %.preheader302.preheader, !llvm.loop !203

bb.bw:                                            ; preds = %.preheader302.1
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9) #11
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 -124, ptr %i.lu, align 8, !tbaa !60
  br label %bb.cb

.preheader302.preheader:                          ; preds = %._crit_edge461, %.preheader302.1
  %i.lv = phi i32 [ %i.ls, %.preheader302.1 ], [ 33554432, %._crit_edge461 ] ; 3 uses
  %.2214605 = phi i16 [ %i.lq, %.preheader302.1 ], [ %i.lg, %._crit_edge461 ]
  %i.lw = shl i16 %.2214605, 1                    ; 2 uses
  %i.lx = icmp ugt i16 %i.lw, 103
  br i1 %i.lx, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.preheader302, %.preheader302.preheader
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10) #11
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 -124, ptr %i.ly, align 8, !tbaa !60
  br label %bb.cb

bb.by:                                            ; preds = %.preheader302.preheader
  %i.lz = and i32 %i.lv, %.7234.lcssa
  %.not245 = icmp ne i32 %i.lz, 0
  %i.ma = zext i1 %.not245 to i16
  %i.mb = or disjoint i16 %i.lw, %i.ma
  %i.mc = zext nneg i16 %i.mb to i64
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.mc
  %i.me = load i16, ptr %i.md, align 2, !tbaa !34 ; 3 uses
  %i.mf = icmp ugt i16 %i.me, 19
  br i1 %i.mf, label %.preheader302, label %.loopexit303, !llvm.loop !203

.loopexit303:                                     ; preds = %bb.by, %bb.bv, %._crit_edge461
  %.3215 = phi i16 [ %i.lg, %._crit_edge461 ], [ %i.me, %bb.by ], [ %i.lq, %bb.bv ] ; 2 uses
  %i.mg = zext nneg i16 %.3215 to i32
  %i.mh = zext nneg i16 %.3215 to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.mh
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !29
  %i.mk = zext i32 %.1189496 to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !29
  %i.mn = zext i8 %i.mm to i32
  %i.mo = sub nsw i32 %i.mn, %i.mg                ; 3 uses
  %i.mp = icmp slt i32 %i.mo, 0
  %i.mq = add nsw i32 %i.mo, 17
  %spec.select = select i1 %i.mp, i32 %i.mq, i32 %i.mo
  %i.mr = trunc i32 %spec.select to i8            ; 5 uses
  %i.ms = zext i32 %.1189496 to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ms
  store i8 %i.mr, ptr %i.mt, align 1, !tbaa !29
  %i.mu = add i32 %.1189496, 1
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 %i.mv
  store i8 %i.mr, ptr %i.mw, align 1, !tbaa !29
  %i.mx = add i32 %.1189496, 2
  %i.my = zext i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 %i.my
  store i8 %i.mr, ptr %i.mz, align 1, !tbaa !29
  %i.na = add i32 %.1189496, 3
  %i.nb = add i32 %.1189496, 4                    ; 2 uses
  %i.nc = zext i32 %i.na to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 %i.nc
  store i8 %i.mr, ptr %i.nd, align 1, !tbaa !29
  %.not246.3 = icmp sgt i32 %.6233.lcssa, -1
  br i1 %.not246.3, label %.loopexit.loopexit503, label %bb.bz

bb.bz:                                            ; preds = %.loopexit303
  %i.ne = add i32 %.1189496, 5
  %i.nf = zext i32 %i.nb to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 %i.nf
  store i8 %i.mr, ptr %i.ng, align 1, !tbaa !29
  br label %.loopexit.loopexit503

bb.ca:                                            ; preds = %.loopexit306
  %i.nh = zext nneg i16 %.1213 to i32
  %i.ni = zext i32 %.1189496 to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ni ; 2 uses
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !29
  %i.nl = zext i8 %i.nk to i32
  %i.nm = sub nsw i32 %i.nl, %i.nh                ; 3 uses
  %i.nn = icmp slt i32 %i.nm, 0
  %i.no = add nsw i32 %i.nm, 17
  %spec.select261 = select i1 %i.nn, i32 %i.no, i32 %i.nm
  %i.np = trunc i32 %spec.select261 to i8
  %i.nq = add i32 %.1189496, 1
  store i8 %i.np, ptr %i.nj, align 1, !tbaa !29
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.body
  %.lcssa598 = phi i32 [ %i.fa, %vec.epilog.middle.block ], [ %i.ev, %vector.body ], [ %.lcssa657.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.gb, %vec.epilog.scalar.ph ]
  %i.nr = shl i32 %.4231.lcssa, 4
  %i.ns = add nsw i32 %.4222.lcssa, -4
  br label %.loopexit

.loopexit.loopexit502:                            ; preds = %vec.epilog.scalar.ph625.prol.loopexit, %vec.epilog.scalar.ph625, %vec.epilog.middle.block633, %middle.block620
  %.lcssa594 = phi i32 [ %i.hy, %vec.epilog.middle.block633 ], [ %i.hm, %middle.block620 ], [ %.lcssa653.unr, %vec.epilog.scalar.ph625.prol.loopexit ], [ %i.it, %vec.epilog.scalar.ph625 ]
  %i.nt = shl i32 %.5232.lcssa, 5
  %i.nu = add nsw i32 %.5223.lcssa, -5
  br label %.loopexit

.loopexit.loopexit503:                            ; preds = %bb.bz, %.loopexit303
  %.lcssa649 = phi i32 [ %i.ne, %bb.bz ], [ %i.nb, %.loopexit303 ]
  %i.nv = zext i8 %i.mj to i32                    ; 2 uses
  %i.nw = shl i32 %.7234.lcssa, %i.nv
  %i.nx = sub nsw i32 %.7225.lcssa, %i.nv
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit503, %.loopexit.loopexit502, %.loopexit.loopexit, %bb.ca
  %.8235 = phi i32 [ %i.dk, %bb.ca ], [ %i.nr, %.loopexit.loopexit ], [ %i.nt, %.loopexit.loopexit502 ], [ %i.nw, %.loopexit.loopexit503 ] ; 2 uses
  %.8226 = phi i32 [ %i.dl, %bb.ca ], [ %i.ns, %.loopexit.loopexit ], [ %i.nu, %.loopexit.loopexit502 ], [ %i.nx, %.loopexit.loopexit503 ] ; 2 uses
  %.14211 = phi ptr [ %.4201.lcssa, %bb.ca ], [ %.6203.lcssa, %.loopexit.loopexit ], [ %.8205.lcssa, %.loopexit.loopexit502 ], [ %.12209.lcssa, %.loopexit.loopexit503 ] ; 2 uses
  %.14 = phi ptr [ %.4195.lcssa, %bb.ca ], [ %.6.lcssa, %.loopexit.loopexit ], [ %.8.lcssa, %.loopexit.loopexit502 ], [ %.12.lcssa, %.loopexit.loopexit503 ] ; 2 uses
  %.5 = phi i32 [ %i.nq, %bb.ca ], [ %.lcssa598, %.loopexit.loopexit ], [ %.lcssa594, %.loopexit.loopexit502 ], [ %.lcssa649, %.loopexit.loopexit503 ] ; 2 uses
  %i.ny = icmp ult i32 %.5, %3
  br i1 %i.ny, label %.preheader307, label %._crit_edge497, !llvm.loop !204

._crit_edge497:                                   ; preds = %.loopexit, %.preheader308
  %.2229.lcssa = phi i32 [ %i.as, %.preheader308 ], [ %.8235, %.loopexit ]
  %.2220.lcssa = phi i32 [ %i.at, %.preheader308 ], [ %.8226, %.loopexit ]
  %.3200.lcssa = phi ptr [ %.1198.lcssa, %.preheader308 ], [ %.14211, %.loopexit ]
  %.3194.lcssa = phi ptr [ %.1192.lcssa, %.preheader308 ], [ %.14, %.loopexit ]
  store ptr %.3200.lcssa, ptr %i.a, align 8, !tbaa !62
  store ptr %.3194.lcssa, ptr %i.c, align 8, !tbaa !61
  store i32 %.2229.lcssa, ptr %i.e, align 8, !tbaa !66
  store i32 %.2220.lcssa, ptr %i.g, align 4, !tbaa !65
  br label %bb.cb

bb.cb:                                            ; preds = %bb.br, %bb.bo, %bb.bg, %bb.bd, %bb.av, %bb.as, %bb.ak, %bb.ah, %bb.v, %bb.s, %bb.i, %bb.f, %._crit_edge497, %bb.bx, %bb.bw, %bb.ab, %bb.aa, %bb.n
  %.0236 = phi i32 [ 0, %._crit_edge497 ], [ -124, %bb.n ], [ -123, %bb.i ], [ -124, %bb.aa ], [ -124, %bb.ab ], [ -123, %bb.v ], [ -123, %bb.ak ], [ -123, %bb.av ], [ -123, %bb.bg ], [ -124, %bb.bw ], [ -124, %bb.bx ], [ -123, %bb.f ], [ -123, %bb.s ], [ -123, %bb.ah ], [ -123, %bb.as ], [ -123, %bb.bd ], [ -123, %bb.bo ], [ -123, %bb.br ]
  ret i32 %.0236
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @lzx_free(ptr noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  tail call void @free(ptr noundef %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  tail call void @free(ptr noundef %i.d) #11
  tail call void @free(ptr noundef nonnull %0) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @qtm_init(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nuw nsw i32 1, %2                    ; 2 uses
  %i.b = add i32 %2, -22
  %or.cond = icmp ult i32 %i.b, -7
end_hunk_1
