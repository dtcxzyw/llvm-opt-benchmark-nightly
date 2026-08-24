Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/select_linear?download=true
inline.NumInlined: 34
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_job_test:bb.a
  br label %bb.u

bb.p:                                             ; preds = %.lr.ph
  %i.df = load ptr, ptr %i.b, align 8
  %i.dg = sext i32 %.0257380 to i64               ; 3 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dk = load ptr, ptr %i.f, align 8
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.dg
  store i32 -1, ptr %i.dl, align 4
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.dm = load i32, ptr %i.a, align 4
  %i.dn = add nsw i32 %i.dm, -1
  %i.do = load ptr, ptr %i.e, align 8
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dg
  store i32 %i.dn, ptr %i.dp, align 4
  %i.dq = add nsw i32 %.0257380, 1                ; 3 uses
  %.not316 = icmp slt i32 %i.dq, %.0254381
  br i1 %.not316, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dr = shl nsw i32 %.0254381, 1                ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = shl nsw i64 %i.ds, 2                    ; 5 uses
  %i.du = call ptr @slurm_xrecalloc(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef %i.dt, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.11, i32 noundef 721, ptr noundef nonnull @__func__._job_test) #9 ; 0 uses
  %i.dv = call ptr @slurm_xrecalloc(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef %i.dt, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.11, i32 noundef 723, ptr noundef nonnull @__func__._job_test) #9 ; 0 uses
  %i.dw = call ptr @slurm_xrecalloc(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef %i.dt, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.11, i32 noundef 725, ptr noundef nonnull @__func__._job_test) #9 ; 0 uses
  %i.dx = call ptr @slurm_xrecalloc(ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef %i.dt, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.11, i32 noundef 727, ptr noundef nonnull @__func__._job_test) #9 ; 0 uses
  %i.dy = call ptr @slurm_xrecalloc(ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef %i.dt, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.11, i32 noundef 729, ptr noundef nonnull @__func__._job_test) #9 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1255 = phi i32 [ %i.dr, %bb.s ], [ %.0254381, %bb.r ]
  %i.dz = load ptr, ptr %i.c, align 8
  %i.ea = sext i32 %i.dq to i64                   ; 3 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ea
  store i32 0, ptr %i.eb, align 4
  %i.ec = load ptr, ptr %i.b, align 8
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.ea
  store i32 0, ptr %i.ed, align 4
  %i.ee = load ptr, ptr %i.f, align 8
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ea
  store i32 -1, ptr %i.ef, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.o, %bb.n, %bb.t, %bb.q
  %i.eg = phi ptr [ %i.bj, %bb.n ], [ %i.bj, %bb.o ], [ %i.ac, %bb.q ], [ %i.ac, %bb.t ] ; 2 uses
  %.1264 = phi i32 [ %i.cl, %bb.n ], [ %.0263379, %bb.o ], [ %.0263379, %bb.q ], [ %.0263379, %bb.t ] ; 2 uses
  %.1258 = phi i32 [ %.0257380, %bb.n ], [ %.0257380, %bb.o ], [ %.0257380, %bb.q ], [ %i.dq, %bb.t ] ; 2 uses
  %.2256 = phi i32 [ %.0254381, %bb.n ], [ %.0254381, %bb.o ], [ %.0254381, %bb.q ], [ %.1255, %bb.t ]
  %.1241 = phi i32 [ %i.cm, %bb.n ], [ %.0240382, %bb.o ], [ %.0240382, %bb.q ], [ %.0240382, %bb.t ] ; 2 uses
  %.2228 = phi i32 [ %i.ck, %bb.n ], [ %.1227383, %bb.o ], [ %.1227383, %bb.q ], [ %.1227383, %bb.t ] ; 2 uses
  %.1202 = phi i32 [ %i.cw, %bb.n ], [ %.0201384, %bb.o ], [ %.0201384, %bb.q ], [ %.0201384, %bb.t ] ; 2 uses
  %.2200 = phi i32 [ %.1199, %bb.n ], [ %.1199, %bb.o ], [ %.0198385, %bb.q ], [ %.0198385, %bb.t ]
  %.1197 = phi i32 [ %i.bh, %bb.n ], [ %i.bh, %bb.o ], [ %.0196386, %bb.q ], [ %.0196386, %bb.t ]
  %.1195 = phi i32 [ %.0194., %bb.n ], [ %.0194., %bb.o ], [ %.0194387, %bb.q ], [ %.0194387, %bb.t ] ; 2 uses
  %.2 = phi i8 [ %.1193, %bb.n ], [ %.1193, %bb.o ], [ %.0192388, %bb.q ], [ %.0192388, %bb.t ] ; 2 uses
  %i.eh = load i32, ptr %i.a, align 4
  %i.ei = add nsw i32 %i.eh, 1
  store i32 %i.ei, ptr %i.a, align 4
  %i.ej = call ptr @next_node(ptr noundef nonnull %i.a) #9
  %.not286 = icmp eq ptr %i.ej, null
  br i1 %.not286, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !56

._crit_edge.loopexit:                             ; preds = %bb.u
  %i.ek = trunc nuw i8 %.2 to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.el = phi ptr [ %i.aa, %bb.d ], [ %i.eg, %._crit_edge.loopexit ] ; 6 uses
  %.0263.lcssa = phi i32 [ %3, %bb.d ], [ %.1264, %._crit_edge.loopexit ] ; 4 uses
  %.0257.lcssa = phi i32 [ 0, %bb.d ], [ %.1258, %._crit_edge.loopexit ] ; 3 uses
  %.0240.lcssa = phi i32 [ %i.x, %bb.d ], [ %.1241, %._crit_edge.loopexit ] ; 4 uses
  %.1227.lcssa = phi i32 [ %., %bb.d ], [ %.2228, %._crit_edge.loopexit ] ; 5 uses
  %.0201.lcssa = phi i32 [ 0, %bb.d ], [ %.1202, %._crit_edge.loopexit ] ; 3 uses
  %.0194.lcssa = phi i32 [ 99999, %bb.d ], [ %.1195, %._crit_edge.loopexit ]
  %.0192.lcssa = phi i1 [ false, %bb.d ], [ %i.ek, %._crit_edge.loopexit ]
  %i.em = load ptr, ptr %i.b, align 8
  %i.en = sext i32 %.0257.lcssa to i64            ; 2 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4
  %.not287 = icmp eq i32 %i.ep, 0
  br i1 %.not287, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.eq = load i32, ptr %i.a, align 4
  %i.er = add nsw i32 %i.eq, -1
  %i.es = load ptr, ptr %i.e, align 8
  %i.et = add nsw i32 %.0257.lcssa, 1
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.en
  store i32 %i.er, ptr %i.eu, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge
  %.2259 = phi i32 [ %i.et, %bb.v ], [ %.0257.lcssa, %._crit_edge ] ; 4 uses
  %i.ev = mul nsw i32 %.0194.lcssa, %.1227.lcssa
  %i.ew = icmp sgt i32 %.0240.lcssa, %i.ev
  %or.cond320 = select i1 %.0192.lcssa, i1 %i.ew, i1 false ; 2 uses
  br i1 %or.cond320, label %.preheader364, label %.critedge

.preheader364:                                    ; preds = %bb.w
  %.not288401 = icmp eq i32 %.0263.lcssa, 0
  br i1 %.not288401, label %.thread336, label %.lr.ph406.preheader

.lr.ph406.preheader:                              ; preds = %.preheader364
  %i.ex = sub i32 %.1227.lcssa, %.0263.lcssa
  br label %.lr.ph406

.lr.ph406:                                        ; preds = %.lr.ph406.preheader, %bb.aa
  %.2203405 = phi i32 [ %i.gd, %bb.aa ], [ %.0201.lcssa, %.lr.ph406.preheader ] ; 4 uses
  %.3229404 = phi i32 [ %i.fq, %bb.aa ], [ %.1227.lcssa, %.lr.ph406.preheader ] ; 5 uses
  %.2242403 = phi i32 [ %i.fu, %bb.aa ], [ %.0240.lcssa, %.lr.ph406.preheader ] ; 5 uses
  %.2265402 = phi i32 [ %i.fr, %bb.aa ], [ %.0263.lcssa, %.lr.ph406.preheader ] ; 4 uses
  %i.ey = icmp sgt i32 %.3229404, 0
  %i.ez = icmp sgt i32 %.2242403, 0
  %i.fa = select i1 %i.ey, i1 true, i1 %i.ez
  br i1 %i.fa, label %.preheader363, label %.critedge

.preheader363:                                    ; preds = %.lr.ph406
  store i32 0, ptr %i.a, align 4
  %i.fb = call ptr @next_node(ptr noundef nonnull %i.a) #9
  %.not290395 = icmp eq ptr %i.fb, null
  br i1 %.not290395, label %.critedge, label %.lr.ph398

.lr.ph398:                                        ; preds = %.preheader363, %bb.z
  %.0187397 = phi i32 [ %.1, %bb.z ], [ -1, %.preheader363 ] ; 2 uses
  %.0188396 = phi i32 [ %.1189, %bb.z ], [ 0, %.preheader363 ] ; 3 uses
  %i.fc = load i32, ptr %i.a, align 4             ; 2 uses
  %i.fd = sext i32 %i.fc to i64                   ; 2 uses
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4
  %i.fg = icmp sgt i32 %.0188396, %i.ff
  br i1 %i.fg, label %bb.z, label %bb.x

bb.x:                                             ; preds = %.lr.ph398
  %i.fh = call i32 @slurm_bit_test(ptr noundef %1, i64 noundef %i.fd) #9
  %.not314 = icmp eq i32 %i.fh, 0
  %.pre528 = load i32, ptr %i.a, align 4          ; 4 uses
  br i1 %.not314, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fi = sext i32 %.pre528 to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %.lr.ph398, %bb.y
  %i.fl = phi i32 [ %i.fc, %.lr.ph398 ], [ %.pre528, %bb.x ], [ %.pre528, %bb.y ]
  %.1189 = phi i32 [ %.0188396, %.lr.ph398 ], [ %.0188396, %bb.x ], [ %i.fk, %bb.y ]
  %.1 = phi i32 [ %.0187397, %.lr.ph398 ], [ %.0187397, %bb.x ], [ %.pre528, %bb.y ] ; 3 uses
  %i.fm = add nsw i32 %i.fl, 1
  store i32 %i.fm, ptr %i.a, align 4
  %i.fn = call ptr @next_node(ptr noundef nonnull %i.a) #9
  %.not290 = icmp eq ptr %i.fn, null
  br i1 %.not290, label %._crit_edge399, label %.lr.ph398, !llvm.loop !57

._crit_edge399:                                   ; preds = %bb.z
  %i.fo = icmp eq i32 %.1, -1
  br i1 %i.fo, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge399
  %i.fp = sext i32 %.1 to i64                     ; 3 uses
  call void @slurm_bit_set(ptr noundef %1, i64 noundef %i.fp) #9
  %i.fq = add nsw i32 %.3229404, -1
  %i.fr = add i32 %.2265402, -1                   ; 2 uses
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.fp ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = sub nsw i32 %.2242403, %i.ft            ; 2 uses
  %i.fv = load ptr, ptr @node_record_table_ptr, align 8
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %i.fp
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 80
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load i16, ptr %i.ga, align 8
  %i.gc = zext i16 %i.gb to i32
  %i.gd = add nsw i32 %.2203405, %i.gc            ; 2 uses
  store i32 0, ptr %i.fs, align 4
  %.not288 = icmp eq i32 %i.fr, 0
  br i1 %.not288, label %.thread336, label %.lr.ph406

.critedge:                                        ; preds = %.preheader363, %.lr.ph406, %._crit_edge399, %bb.w
  %.4267 = phi i32 [ %.0263.lcssa, %bb.w ], [ %.2265402, %._crit_edge399 ], [ %.2265402, %.lr.ph406 ], [ %.2265402, %.preheader363 ] ; 2 uses
  %.4244 = phi i32 [ %.0240.lcssa, %bb.w ], [ %.2242403, %._crit_edge399 ], [ %.2242403, %.lr.ph406 ], [ %.2242403, %.preheader363 ] ; 2 uses
  %.5231 = phi i32 [ %.1227.lcssa, %bb.w ], [ %.3229404, %._crit_edge399 ], [ %.3229404, %.lr.ph406 ], [ %.3229404, %.preheader363 ] ; 2 uses
  %.4 = phi i32 [ %.0201.lcssa, %bb.w ], [ %.2203405, %._crit_edge399 ], [ %.2203405, %.lr.ph406 ], [ %.2203405, %.preheader363 ] ; 2 uses
  %i.ge = icmp eq i32 %.2259, 0
  %i.gf = icmp eq i32 %.4267, 0
  %or.cond3.not294487 = select i1 %i.ge, i1 true, i1 %i.gf
  %.not291488 = or i1 %or.cond3.not294487, %or.cond320
  br i1 %.not291488, label %.thread336, label %.preheader361.lr.ph

.preheader361.lr.ph:                              ; preds = %.critedge
  %i.gg = icmp sgt i32 %.2259, 0
  %5 = sext i32 %.2259 to i64                     ; 2 uses
  %i.gh = call i32 @llvm.usub.sat.i32(i32 %4, i32 %2)
  %wide.trip.count.a = zext nneg i32 %.2259 to i64
  %i.gi = call i32 @llvm.usub.sat.i32(i32 %4, i32 %2)
  br label %.preheader361

.preheader361:                                    ; preds = %.preheader361.lr.ph, %bb.bc
  %.5493 = phi i32 [ %.4, %.preheader361.lr.ph ], [ %.12, %bb.bc ] ; 8 uses
  %.0208492 = phi i32 [ 0, %.preheader361.lr.ph ], [ %.3211, %bb.bc ]
  %.6232491 = phi i32 [ %.5231, %.preheader361.lr.ph ], [ %.13239, %bb.bc ] ; 10 uses
  %.5245490 = phi i32 [ %.4244, %.preheader361.lr.ph ], [ %.12252, %bb.bc ] ; 10 uses
  %.5268489 = phi i32 [ %.4267, %.preheader361.lr.ph ], [ %.12275, %bb.bc ] ; 4 uses
  store i32 0, ptr %i.a, align 4
  br i1 %i.gg, label %.lr.ph427, label %.thread336

.lr.ph427:                                        ; preds = %.preheader361
  %i.gj = load ptr, ptr %i.b, align 8
  %i.gk = load ptr, ptr %i.f, align 8             ; 4 uses
  %i.gl = load ptr, ptr %i.c, align 8
  %.0.i326 = sub i32 %.6232491, %i.gh
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph427, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph427 ], [ %indvars.iv.next, %.loopexit ] ; 8 uses
  %.0205426 = phi i32 [ 0, %.lr.ph427 ], [ %.2207, %.loopexit ] ; 6 uses
  %.1209425 = phi i32 [ %.0208492, %.lr.ph427 ], [ %.3211, %.loopexit ] ; 4 uses
  %.0213424 = phi i32 [ -1, %.lr.ph427 ], [ %.2215, %.loopexit ] ; 5 uses
  %.0217423 = phi i32 [ 0, %.lr.ph427 ], [ %.2219, %.loopexit ] ; 6 uses
  %.0221422 = phi i32 [ 0, %.lr.ph427 ], [ %.3224, %.loopexit ] ; 5 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv
  %i.gn = load i32, ptr %i.gm, align 4            ; 3 uses
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gp = load ptr, ptr %i.j, align 8             ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 64
  %i.gr = load i16, ptr %i.gq, align 8
  %.not296 = icmp eq i16 %i.gr, 0                 ; 2 uses
  br i1 %.not296, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 392
  %i.gt = load ptr, ptr %i.gs, align 8
  %.not297 = icmp eq ptr %i.gt, null
  br i1 %.not297, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = icmp eq i32 %i.gv, -1
  br i1 %i.gw, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv
  %i.gy = load i32, ptr %i.gx, align 4            ; 4 uses
  %.not298 = icmp sge i32 %i.gy, %.5245490
  %i.gz = icmp sge i32 %i.gn, %.0.i326
  %i.ha = select i1 %.not298, i1 %i.gz, i1 false  ; 4 uses
  %i.hb = zext i1 %i.ha to i32
  %i.hc = icmp eq i32 %.0221422, 0
  br i1 %i.hc, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hd = icmp eq i32 %.0213424, -1
  br i1 %i.hd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv
  %i.hf = load i32, ptr %i.he, align 4
  %.not299 = icmp ne i32 %i.hf, -1
  %i.hg = icmp eq i32 %.0205426, 0
  %or.cond5 = select i1 %i.ha, i1 %i.hg, i1 false
  %or.cond321 = select i1 %.not299, i1 true, i1 %or.cond5
  br i1 %or.cond321, label %bb.al, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %.old = icmp eq i32 %.0205426, 0
  %or.cond5.old = select i1 %i.ha, i1 %.old, i1 false
  br i1 %or.cond5.old, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  br i1 %i.ha, label %bb.ak, label %.critedge323

bb.ak:                                            ; preds = %bb.aj
  %i.hh = icmp slt i32 %i.gy, %.0217423
  br i1 %i.hh, label %bb.al, label %bb.am

.critedge323:                                     ; preds = %bb.aj
  %i.hi = icmp sgt i32 %i.gy, %.0217423
  br i1 %i.hi, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ai, %.critedge323, %bb.ak, %bb.ah, %bb.af
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv
  %i.hk = load i32, ptr %i.hj, align 4
  %i.hl = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %.critedge323
  %.1222 = phi i32 [ %i.gn, %bb.al ], [ %.0221422, %.critedge323 ], [ %.0221422, %bb.ak ] ; 3 uses
  %.1218 = phi i32 [ %i.gy, %bb.al ], [ %.0217423, %.critedge323 ], [ %.0217423, %bb.ak ] ; 3 uses
  %.1214 = phi i32 [ %i.hk, %bb.al ], [ %.0213424, %.critedge323 ], [ %.0213424, %bb.ak ] ; 3 uses
  %.2210 = phi i32 [ %i.hl, %bb.al ], [ %.1209425, %.critedge323 ], [ %.1209425, %bb.ak ] ; 3 uses
  %.1206 = phi i32 [ %i.hb, %bb.al ], [ %.0205426, %.critedge323 ], [ %.0205426, %bb.ak ] ; 3 uses
  br i1 %.not296, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gp, i64 392
  %i.hn = load ptr, ptr %i.hm, align 8
  %.not301 = icmp ne ptr %i.hn, null
  %indvars.iv.next522592 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not304593 = icmp slt i64 %indvars.iv.next522592, %5
  %or.cond596 = select i1 %.not301, i1 %.not304593, i1 false
  br i1 %or.cond596, label %.lr.ph595, label %.loopexit

.preheader:                                       ; preds = %.lr.ph595
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv.next522594, 1 ; 2 uses
  %.not304 = icmp slt i64 %indvars.iv.next522, %5
  br i1 %.not304, label %.lr.ph595, label %.loopexit, !llvm.loop !58

.lr.ph595:                                        ; preds = %bb.an, %.preheader
  %indvars.iv.next522594 = phi i64 [ %indvars.iv.next522, %.preheader ], [ %indvars.iv.next522592, %bb.an ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next522594
  %i.hp = load i32, ptr %i.ho, align 4
  %.not302 = icmp eq i32 %i.hp, -1
  br i1 %.not302, label %.preheader, label %.thread336, !llvm.loop !58

.loopexit:                                        ; preds = %.preheader, %bb.am, %bb.an, %bb.ae, %bb.ab
  %.3224 = phi i32 [ %.0221422, %bb.ab ], [ %.0221422, %bb.ae ], [ %.1222, %bb.am ], [ %.1222, %bb.an ], [ %.1222, %.preheader ] ; 3 uses
  %.2219 = phi i32 [ %.0217423, %bb.ab ], [ %.0217423, %bb.ae ], [ %.1218, %bb.am ], [ %.1218, %bb.an ], [ %.1218, %.preheader ] ; 2 uses
  %.2215 = phi i32 [ %.0213424, %bb.ab ], [ %.0213424, %bb.ae ], [ %.1214, %bb.am ], [ %.1214, %bb.an ], [ %.1214, %.preheader ] ; 7 uses
  %.3211 = phi i32 [ %.1209425, %bb.ab ], [ %.1209425, %bb.ae ], [ %.2210, %bb.am ], [ %.2210, %bb.an ], [ %.2210, %.preheader ] ; 5 uses
  %.2207 = phi i32 [ %.0205426, %bb.ab ], [ %.0205426, %bb.ae ], [ %.1206, %bb.am ], [ %.1206, %bb.an ], [ %.1206, %.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.hq = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.hq, ptr %i.a, align 4
  %exitcond.not.a = icmp eq i64 %indvars.iv.next, %wide.trip.count.a
  br i1 %exitcond.not.a, label %._crit_edge428, label %bb.ab, !llvm.loop !59

._crit_edge428:                                   ; preds = %.loopexit
  %i.hr = icmp eq i32 %.3224, 0
  br i1 %i.hr, label %.thread336, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge428
  %i.hs = load ptr, ptr %i.j, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 64
  %i.hu = load i16, ptr %i.ht, align 8
  %.not305 = icmp eq i16 %i.hu, 0
  br i1 %.not305, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hv = icmp slt i32 %.2219, %.5245490
  %.0.i327 = sub i32 %.6232491, %i.gi
  %.not357 = icmp slt i32 %.3224, %.0.i327
  %or.cond572 = select i1 %i.hv, i1 true, i1 %.not357
  br i1 %or.cond572, label %.thread336, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.not306 = icmp eq i32 %.2215, -1
  br i1 %.not306, label %bb.ax, label %.preheader360

.preheader360:                                    ; preds = %bb.aq
  %i.hw = sext i32 %.3211 to i64                  ; 4 uses
  store i32 %.2215, ptr %i.a, align 4
  %i.hx = load ptr, ptr %i.e, align 8
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.hw
  %i.hz = load i32, ptr %i.hy, align 4
  %i.ia = icmp sgt i32 %.2215, %i.hz
  br i1 %i.ia, label %._crit_edge440, label %.lr.ph439

.lr.ph439:                                        ; preds = %.preheader360, %bb.at
  %.6438 = phi i32 [ %.7, %bb.at ], [ %.5493, %.preheader360 ] ; 3 uses
  %.7233437 = phi i32 [ %.8234, %bb.at ], [ %.6232491, %.preheader360 ] ; 4 uses
  %.6246436 = phi i32 [ %.7247, %bb.at ], [ %.5245490, %.preheader360 ] ; 4 uses
  %.6269435 = phi i32 [ %.7270, %bb.at ], [ %.5268489, %.preheader360 ] ; 3 uses
  %storemerge309434 = phi i32 [ %i.ix, %bb.at ], [ %.2215, %.preheader360 ]
  %i.ib = icmp slt i32 %.7233437, 1
  %i.ic = icmp slt i32 %.6246436, 1
  %or.cond7 = select i1 %i.ib, i1 %i.ic, i1 false
  br i1 %or.cond7, label %._crit_edge440, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph439
  %i.id = sext i32 %storemerge309434 to i64
  %i.ie = call i32 @slurm_bit_test(ptr noundef %1, i64 noundef %i.id) #9
  %.not310 = icmp eq i32 %i.ie, 0
  %.pre529 = load i32, ptr %i.a, align 4          ; 2 uses
  br i1 %.not310, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.if = sext i32 %.pre529 to i64
  call void @slurm_bit_set(ptr noundef %1, i64 noundef %i.if) #9
  %i.ig = add nsw i32 %.7233437, -1
  %i.ih = add i32 %.6269435, -1
  %i.ii = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ij = sext i32 %i.ii to i64                   ; 2 uses
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4
  %i.im = sub nsw i32 %.6246436, %i.il
  %i.in = load ptr, ptr @node_record_table_ptr, align 8
  %i.io = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.ij
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 80
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  %i.it = load i16, ptr %i.is, align 8
  %i.iu = zext i16 %i.it to i32
  %i.iv = add nsw i32 %.6438, %i.iu
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.iw = phi i32 [ %.pre529, %bb.ar ], [ %i.ii, %bb.as ] ; 2 uses
  %.7270 = phi i32 [ %.6269435, %bb.ar ], [ %i.ih, %bb.as ] ; 3 uses
  %.7247 = phi i32 [ %.6246436, %bb.ar ], [ %i.im, %bb.as ] ; 2 uses
  %.8234 = phi i32 [ %.7233437, %bb.ar ], [ %i.ig, %bb.as ] ; 2 uses
  %.7 = phi i32 [ %.6438, %bb.ar ], [ %i.iv, %bb.as ] ; 2 uses
  %i.ix = add nsw i32 %i.iw, 1                    ; 2 uses
  store i32 %i.ix, ptr %i.a, align 4
  %i.iy = load ptr, ptr %i.e, align 8
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %i.hw
  %i.ja = load i32, ptr %i.iz, align 4
  %i.jb = icmp sge i32 %i.iw, %i.ja
  %i.jc = icmp eq i32 %.7270, 0
  %or.cond17 = select i1 %i.jb, i1 true, i1 %i.jc
  br i1 %or.cond17, label %._crit_edge440, label %.lr.ph439, !llvm.loop !60

._crit_edge440:                                   ; preds = %bb.at, %.lr.ph439, %.preheader360
  %.6269.lcssa = phi i32 [ %.5268489, %.preheader360 ], [ %.6269435, %.lr.ph439 ], [ %.7270, %bb.at ] ; 3 uses
  %.6246.lcssa = phi i32 [ %.5245490, %.preheader360 ], [ %.6246436, %.lr.ph439 ], [ %.7247, %bb.at ] ; 2 uses
  %.7233.lcssa = phi i32 [ %.6232491, %.preheader360 ], [ %.7233437, %.lr.ph439 ], [ %.8234, %bb.at ] ; 2 uses
  %.6.lcssa = phi i32 [ %.5493, %.preheader360 ], [ %.6438, %.lr.ph439 ], [ %.7, %bb.at ] ; 2 uses
  %storemerge311452 = add nsw i32 %.2215, -1      ; 2 uses
  store i32 %storemerge311452, ptr %i.a, align 4
  %i.jd = load ptr, ptr %i.d, align 8
  %i.je = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.hw
  %i.jf = load i32, ptr %i.je, align 4
  %i.jg = icmp sle i32 %.2215, %i.jf
  %i.jh = icmp eq i32 %.6269.lcssa, 0
  %or.cond19453 = select i1 %i.jg, i1 true, i1 %i.jh
  br i1 %or.cond19453, label %.loopexit358, label %.lr.ph460

.lr.ph460:                                        ; preds = %._crit_edge440, %bb.aw
  %storemerge311458 = phi i32 [ %storemerge311, %bb.aw ], [ %storemerge311452, %._crit_edge440 ]
  %.8457 = phi i32 [ %.9, %bb.aw ], [ %.6.lcssa, %._crit_edge440 ] ; 3 uses
  %.9235456 = phi i32 [ %.10236, %bb.aw ], [ %.7233.lcssa, %._crit_edge440 ] ; 4 uses
  %.8248455 = phi i32 [ %.9249, %bb.aw ], [ %.6246.lcssa, %._crit_edge440 ] ; 4 uses
  %.8271454 = phi i32 [ %.9272, %bb.aw ], [ %.6269.lcssa, %._crit_edge440 ] ; 3 uses
  %i.ji = icmp slt i32 %.9235456, 1
  %i.jj = icmp slt i32 %.8248455, 1
  %or.cond9 = select i1 %i.ji, i1 %i.jj, i1 false
  br i1 %or.cond9, label %.loopexit358, label %bb.au

bb.au:                                            ; preds = %.lr.ph460
  %i.jk = sext i32 %storemerge311458 to i64
  %i.jl = call i32 @slurm_bit_test(ptr noundef %1, i64 noundef %i.jk) #9
  %.not312 = icmp eq i32 %i.jl, 0
  %.pre530 = load i32, ptr %i.a, align 4          ; 2 uses
  br i1 %.not312, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jm = sext i32 %.pre530 to i64
  call void @slurm_bit_set(ptr noundef %1, i64 noundef %i.jm) #9
  %i.jn = add nsw i32 %.9235456, -1
  %i.jo = add i32 %.8271454, -1
  %i.jp = load i32, ptr %i.a, align 4             ; 2 uses
  %i.jq = sext i32 %i.jp to i64                   ; 2 uses
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.jq
  %i.js = load i32, ptr %i.jr, align 4
  %i.jt = sub nsw i32 %.8248455, %i.js
  %i.ju = load ptr, ptr @node_record_table_ptr, align 8
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %i.jq
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 80
  %i.jy = load ptr, ptr %i.jx, align 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.ka = load i16, ptr %i.jz, align 8
  %i.kb = zext i16 %i.ka to i32
  %i.kc = add nsw i32 %.8457, %i.kb
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.kd = phi i32 [ %.pre530, %bb.au ], [ %i.jp, %bb.av ] ; 2 uses
  %.9272 = phi i32 [ %.8271454, %bb.au ], [ %i.jo, %bb.av ] ; 3 uses
  %.9249 = phi i32 [ %.8248455, %bb.au ], [ %i.jt, %bb.av ] ; 2 uses
  %.10236 = phi i32 [ %.9235456, %bb.au ], [ %i.jn, %bb.av ] ; 2 uses
  %.9 = phi i32 [ %.8457, %bb.au ], [ %i.kc, %bb.av ] ; 2 uses
  %storemerge311 = add nsw i32 %i.kd, -1          ; 2 uses
  store i32 %storemerge311, ptr %i.a, align 4
  %i.ke = load ptr, ptr %i.d, align 8
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.hw
  %i.kg = load i32, ptr %i.kf, align 4
  %i.kh = icmp sle i32 %i.kd, %i.kg
  %i.ki = icmp eq i32 %.9272, 0
  %or.cond19 = select i1 %i.kh, i1 true, i1 %i.ki
  br i1 %or.cond19, label %.loopexit358, label %.lr.ph460, !llvm.loop !61

bb.ax:                                            ; preds = %bb.aq
  %i.kj = load ptr, ptr %i.d, align 8
  %i.kk = sext i32 %.3211 to i64                  ; 3 uses
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4            ; 3 uses
  store i32 %i.km, ptr %i.a, align 4
  %i.kn = load ptr, ptr %i.e, align 8
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.kn, i64 %i.kk
  %i.kp = load i32, ptr %i.ko, align 4
  %i.kq = icmp sgt i32 %i.km, %i.kp
  br i1 %i.kq, label %.loopexit358, label %.lr.ph477

.lr.ph477:                                        ; preds = %bb.ax, %bb.ba
  %.10475 = phi i32 [ %.11, %bb.ba ], [ %.5493, %bb.ax ] ; 3 uses
  %.11237474 = phi i32 [ %.12238, %bb.ba ], [ %.6232491, %bb.ax ] ; 4 uses
  %.10250473 = phi i32 [ %.11251, %bb.ba ], [ %.5245490, %bb.ax ] ; 4 uses
  %.10273472 = phi i32 [ %.11274, %bb.ba ], [ %.5268489, %bb.ax ] ; 3 uses
  %storemerge307471 = phi i32 [ %i.ln, %bb.ba ], [ %i.km, %bb.ax ]
  %i.kr = icmp slt i32 %.11237474, 1
  %i.ks = icmp slt i32 %.10250473, 1
  %or.cond11 = select i1 %i.kr, i1 %i.ks, i1 false
  br i1 %or.cond11, label %.loopexit358, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph477
  %i.kt = sext i32 %storemerge307471 to i64
  %i.ku = call i32 @slurm_bit_test(ptr noundef %1, i64 noundef %i.kt) #9
  %.not308 = icmp eq i32 %i.ku, 0
  %.pre531 = load i32, ptr %i.a, align 4          ; 2 uses
end_hunk_0
