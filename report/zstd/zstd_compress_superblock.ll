Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_compress_superblock?download=true
inline.NumInlined: 41
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ZSTD_compressSuperBlock:bb.a

ZSTD_estimateSubBlockSize_symbolType.exit39.i.i.i: ; preds = %._crit_edge.i32.i.i.i, %.thread.i37.i.i.i
  %.035.i34.i.i.i = phi i64 [ %i.cj, %.thread.i37.i.i.i ], [ %i.cp, %._crit_edge.i32.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !21 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.v, i64 2836
  %i.ct = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 52, ptr %i.a, align 4, !tbaa !17
  %i.cu = call i64 @HIST_countFast_wksp(ptr noundef %i.y, ptr noundef nonnull %i.a, ptr noundef %i.at, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %i.ag, ptr noundef %i.y, i64 noundef %i.z) #5 ; 0 uses
  switch i32 %i.cr, label %bb.t [
    i32 0, label %bb.r
    i32 1, label %.lr.ph.split.i44.i.i.i.preheader
  ]

.lr.ph.split.i44.i.i.i.preheader:                 ; preds = %bb.v, %bb.t, %ZSTD_estimateSubBlockSize_symbolType.exit39.i.i.i
  %.144.i45.i.i.i.ph = phi i64 [ 0, %ZSTD_estimateSubBlockSize_symbolType.exit39.i.i.i ], [ 0, %bb.t ], [ %.0.i54.i.i.i, %bb.v ]
  br label %.lr.ph.split.i44.i.i.i

bb.r:                                             ; preds = %ZSTD_estimateSubBlockSize_symbolType.exit39.i.i.i
  %i.cv = load i32, ptr %i.a, align 4, !tbaa !17  ; 2 uses
  %.not.i53.i.i.i = icmp ugt i32 %i.cv, 52
  br i1 %.not.i53.i.i.i, label %.thread.i55.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = call i64 @ZSTD_crossEntropyCost(ptr noundef nonnull @ML_defaultNorm, i32 noundef 6, ptr noundef %i.y, i32 noundef %i.cv) #5
  br label %bb.v

bb.t:                                             ; preds = %ZSTD_estimateSubBlockSize_symbolType.exit39.i.i.i
  %i.cx = and i32 %i.cr, -2
  %or.cond.i56.i.i.i = icmp eq i32 %i.cx, 2
  br i1 %or.cond.i56.i.i.i, label %bb.u, label %.lr.ph.split.i44.i.i.i.preheader

bb.u:                                             ; preds = %bb.t
  %i.cy = load i32, ptr %i.a, align 4, !tbaa !17
  %i.cz = call i64 @ZSTD_fseBitCost(ptr noundef nonnull %i.cs, ptr noundef %i.y, i32 noundef %i.cy) #5
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.0.i54.i.i.i = phi i64 [ %i.cz, %bb.u ], [ %i.cw, %bb.s ] ; 2 uses
  %i.da = icmp ult i64 %.0.i54.i.i.i, -119
  br i1 %i.da, label %.lr.ph.split.i44.i.i.i.preheader, label %.thread.i55.i.i.i

.thread.i55.i.i.i:                                ; preds = %bb.v, %bb.r
  %i.db = mul i64 %i.ag, 10
  br label %ZSTD_estimateSubBlockSize_symbolType.exit57.i.i.i

.lr.ph.split.i44.i.i.i:                           ; preds = %.lr.ph.split.i44.i.i.i.preheader, %.lr.ph.split.i44.i.i.i
  %.144.i45.i.i.i = phi i64 [ %.2.i49.i.i.i, %.lr.ph.split.i44.i.i.i ], [ %.144.i45.i.i.i.ph, %.lr.ph.split.i44.i.i.i.preheader ]
  %.03443.i46.i.i.i = phi ptr [ %i.df, %.lr.ph.split.i44.i.i.i ], [ %i.at, %.lr.ph.split.i44.i.i.i.preheader ] ; 2 uses
  %i.dc = load i8, ptr %.03443.i46.i.i.i, align 1, !tbaa !19
  %i.dd = zext i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @ML_bits, i64 %i.dd
  %.pn.in.i47.i.i.i = load i8, ptr %i.de, align 1, !tbaa !19
  %.pn.i48.i.i.i = zext i8 %.pn.in.i47.i.i.i to i64
  %.2.i49.i.i.i = add i64 %.144.i45.i.i.i, %.pn.i48.i.i.i ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.03443.i46.i.i.i, i64 1 ; 2 uses
  %i.dg = icmp ult ptr %i.df, %i.ct
  br i1 %i.dg, label %.lr.ph.split.i44.i.i.i, label %._crit_edge.i50.i.i.i, !llvm.loop !25

._crit_edge.i50.i.i.i:                            ; preds = %.lr.ph.split.i44.i.i.i
  %i.dh = lshr i64 %.2.i49.i.i.i, 3
  br label %ZSTD_estimateSubBlockSize_symbolType.exit57.i.i.i

ZSTD_estimateSubBlockSize_symbolType.exit57.i.i.i: ; preds = %._crit_edge.i50.i.i.i, %.thread.i55.i.i.i
  %.035.i52.i.i.i = phi i64 [ %i.db, %.thread.i55.i.i.i ], [ %i.dh, %._crit_edge.i50.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 296
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !22
  %i.dk = add i64 %.1.i.i.i, 6
  %i.dl = add i64 %i.dk, %.035.i.i.i.i
  %i.dm = add i64 %i.dl, %.035.i34.i.i.i
  %i.dn = add i64 %i.dm, %.035.i52.i.i.i
  %i.do = add i64 %i.dn, %i.dj                    ; 4 uses
  %.not301.i = icmp eq ptr %i.ak, %i.ai
  br i1 %.not301.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %ZSTD_estimateSubBlockSize_symbolType.exit57.i.i.i
  %i.dp = shl i64 %.1.i.i.i, 8
  %i.dq = udiv i64 %i.dp, %i.an
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %ZSTD_estimateSubBlockSize_symbolType.exit57.i.i.i
  %i.dr = phi i64 [ %i.dq, %bb.w ], [ 256, %ZSTD_estimateSubBlockSize_symbolType.exit57.i.i.i ] ; 2 uses
  %i.ds = sub i64 %i.do, %.1.i.i.i
  %i.dt = shl i64 %i.ds, 8
  %i.du = udiv i64 %i.dt, %i.ag                   ; 2 uses
  %i.dv = lshr i64 %spec.select.i, 1
  %i.dw = add i64 %i.do, %i.dv
  %i.dx = udiv i64 %i.dw, %spec.select.i
  %spec.select314.i = call i64 @llvm.umax.i64(i64 %i.dx, i64 1) ; 2 uses
  %i.dy = shl i64 %i.do, 8
  %i.dz = udiv i64 %i.dy, %spec.select314.i       ; 2 uses
  %i.ea = icmp ugt i64 %i.do, %4
  br i1 %i.ea, label %ZSTD_compressSubBlock_multi.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.x
  %i.eb = add nsw i64 %spec.select314.i, -1       ; 2 uses
  %.not460.i = icmp eq i64 %i.eb, 0
  br i1 %.not460.i, label %.thread381.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 6 uses
  %i.ee = ptrtoint ptr %i.ap to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.ak, %.lr.ph.i
  %.0213432.i = phi i64 [ 0, %.lr.ph.i ], [ %i.jc, %bb.ak ] ; 2 uses
  %.0214431.i = phi i32 [ 1, %.lr.ph.i ], [ %.3217.ph.i, %bb.ak ] ; 4 uses
  %.0223430.i = phi i32 [ %i.ba, %.lr.ph.i ], [ %.3226.ph.i, %bb.ak ] ; 4 uses
  %.0234429.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.2236.ph.i, %bb.ak ] ; 4 uses
  %.0241428.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.2243.ph.i, %bb.ak ] ; 4 uses
  %.0248427.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %.2250.ph.i, %bb.ak ] ; 4 uses
  %.0255426.i = phi ptr [ %1, %.lr.ph.i ], [ %.2257.ph.i, %bb.ak ] ; 5 uses
  %.0266425.i = phi ptr [ %3, %.lr.ph.i ], [ %.2268.ph.i, %bb.ak ] ; 3 uses
  %.0275424.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.2277.ph.i, %bb.ak ] ; 4 uses
  %.0282423.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.2284.ph.i, %bb.ak ] ; 14 uses
  %i.ef = ptrtoint ptr %.0282423.i to i64
  %i.eg = sub i64 %i.ad, %i.ef                    ; 2 uses
  %i.eh = ashr exact i64 %i.eg, 3                 ; 4 uses
  %i.ei = icmp eq i64 %.0213432.i, 0
  %i.ej = select i1 %i.ei, i64 30720, i64 0
  %i.ek = getelementptr inbounds nuw i8, ptr %.0282423.i, i64 4
  %i.el = load i16, ptr %i.ek, align 4, !tbaa !71
  %i.em = zext i16 %i.el to i64                   ; 2 uses
  %i.en = mul i64 %i.dr, %i.em
  %i.eo = add i64 %i.ej, %i.du
  %i.ep = add i64 %i.eo, %i.en                    ; 2 uses
  %i.eq = icmp ule i64 %i.ep, %i.dz
  %i.er = icmp ugt i64 %i.eh, 1
  %or.cond47.i.i = and i1 %i.er, %i.eq
  br i1 %or.cond47.i.i, label %.lr.ph.preheader.i.i, label %sizeBlockSequences.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.y
  %i.es = add nuw nsw i64 %i.em, 3
  %i.et = getelementptr inbounds nuw i8, ptr %.0282423.i, i64 6
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !72
  %i.ev = zext i16 %i.eu to i64
  %i.ew = add nuw nsw i64 %i.es, %i.ev
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.z, %.lr.ph.preheader.i.i
  %.03141.i.i = phi i64 [ %i.fj, %bb.z ], [ %i.ew, %.lr.ph.preheader.i.i ]
  %.03240.i.i = phi i64 [ %i.fd, %bb.z ], [ %i.ep, %.lr.ph.preheader.i.i ]
  %.03339.i.i = phi i64 [ %i.fn, %bb.z ], [ 1, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.0282423.i, i64 %.03339.i.i ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ez = load i16, ptr %i.ey, align 4, !tbaa !71
  %i.fa = zext i16 %i.ez to i64                   ; 2 uses
  %i.fb = mul i64 %i.dr, %i.fa
  %i.fc = add i64 %.03240.i.i, %i.du
  %i.fd = add i64 %i.fc, %i.fb                    ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 6
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !72
  %i.fg = zext i16 %i.ff to i64
  %i.fh = add i64 %.03141.i.i, 3
  %i.fi = add i64 %i.fh, %i.fa
  %i.fj = add i64 %i.fi, %i.fg                    ; 2 uses
  %i.fk = icmp ugt i64 %i.fd, %i.dz
  %i.fl = shl i64 %i.fj, 8
  %i.fm = icmp ult i64 %i.fd, %i.fl
  %or.cond.i.i = select i1 %i.fk, i1 %i.fm, i1 false
  br i1 %or.cond.i.i, label %sizeBlockSequences.exit.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.fn = add nuw i64 %.03339.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fn, %i.eh
  br i1 %exitcond.not.i.i, label %sizeBlockSequences.exit.i, label %.lr.ph.i.i, !llvm.loop !26

sizeBlockSequences.exit.i:                        ; preds = %bb.z, %.lr.ph.i.i, %bb.y
  %.034.i.i = phi i64 [ 1, %bb.y ], [ %i.eh, %bb.z ], [ %.03339.i.i, %.lr.ph.i.i ] ; 12 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.0282423.i, i64 %.034.i.i ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.ac
  br i1 %i.fp, label %.thread381.loopexit.i, label %.lr.ph.i320.i

.lr.ph.i320.i:                                    ; preds = %sizeBlockSequences.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i32 0, ptr %i.f, align 4, !tbaa !17
  %i.fq = load i32, ptr %i.ec, align 4, !tbaa !73 ; 6 uses
  %i.fr = load ptr, ptr %i.i, align 8, !tbaa !60
  %i.fs = ptrtoint ptr %i.fr to i64               ; 6 uses
  %i.ft = add i64 %.034.i.i, -1                   ; 2 uses
  %xtraiter = and i64 %.034.i.i, 1
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %.epil.preheader, label %.lr.ph.i320.i.new

.lr.ph.i320.i.new:                                ; preds = %.lr.ph.i320.i
  %unroll_iter = and i64 %.034.i.i, -2
  br label %bb.aa

bb.aa:                                            ; preds = %ZSTD_getSequenceLength.exit.i.i.1, %.lr.ph.i320.i.new
  %.09.i.i = phi i64 [ 0, %.lr.ph.i320.i.new ], [ %i.gs, %ZSTD_getSequenceLength.exit.i.i.1 ] ; 3 uses
  %.078.i.i = phi i64 [ 0, %.lr.ph.i320.i.new ], [ %i.gr, %ZSTD_getSequenceLength.exit.i.i.1 ]
  %niter = phi i64 [ 0, %.lr.ph.i320.i.new ], [ %niter.next.1, %ZSTD_getSequenceLength.exit.i.i.1 ]
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.0282423.i, i64 %.09.i.i ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.fx = load i16, ptr %i.fw, align 4, !tbaa !71
  %8 = zext i16 %i.fx to i64                      ; 3 uses
  %i.fy = ptrtoint ptr %i.fv to i64
  %i.fz = sub i64 %i.fy, %i.fs
  %i.ga = lshr exact i64 %i.fz, 3
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = icmp eq i32 %i.fq, %i.gb
  br i1 %i.gc, label %bb.ab, label %ZSTD_getSequenceLength.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.gd = load i32, ptr %i.ed, align 8, !tbaa !74
  %i.ge = icmp eq i32 %i.gd, 1
  %9 = or disjoint i64 %8, 65536
  %spec.select.i.i.i = select i1 %i.ge, i64 %9, i64 %8
  br label %ZSTD_getSequenceLength.exit.i.i

ZSTD_getSequenceLength.exit.i.i:                  ; preds = %bb.ab, %bb.aa
  %.sroa.0.1.i.i.i = phi i64 [ %8, %bb.aa ], [ %spec.select.i.i.i, %bb.ab ]
  %i.gf = add i64 %.sroa.0.1.i.i.i, %.078.i.i
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %.0282423.i, i64 %.09.i.i ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  %i.gj = load i16, ptr %i.gi, align 4, !tbaa !71
  %10 = zext i16 %i.gj to i64                     ; 3 uses
  %i.gk = ptrtoint ptr %i.gh to i64
  %i.gl = sub i64 %i.gk, %i.fs
  %i.gm = lshr exact i64 %i.gl, 3
  %i.gn = trunc i64 %i.gm to i32
  %i.go = icmp eq i32 %i.fq, %i.gn
  br i1 %i.go, label %bb.ac, label %ZSTD_getSequenceLength.exit.i.i.1

bb.ac:                                            ; preds = %ZSTD_getSequenceLength.exit.i.i
  %i.gp = load i32, ptr %i.ed, align 8, !tbaa !74
  %i.gq = icmp eq i32 %i.gp, 1
  %11 = or disjoint i64 %10, 65536
  %spec.select.i.i.i.1 = select i1 %i.gq, i64 %11, i64 %10
  br label %ZSTD_getSequenceLength.exit.i.i.1

ZSTD_getSequenceLength.exit.i.i.1:                ; preds = %bb.ac, %ZSTD_getSequenceLength.exit.i.i
  %.sroa.0.1.i.i.i.1 = phi i64 [ %10, %ZSTD_getSequenceLength.exit.i.i ], [ %spec.select.i.i.i.1, %bb.ac ]
  %i.gr = add i64 %.sroa.0.1.i.i.i.1, %i.gf       ; 3 uses
  %i.gs = add nuw i64 %.09.i.i, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i323.i.preheader.unr-lcssa, label %bb.aa, !llvm.loop !27

.lr.ph.i323.i.preheader.unr-lcssa:                ; preds = %ZSTD_getSequenceLength.exit.i.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i323.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.i323.i.preheader.unr-lcssa, %.lr.ph.i320.i
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i320.i ], [ %i.gs, %.lr.ph.i323.i.preheader.unr-lcssa ]
  %.078.i.i.epil.init = phi i64 [ 0, %.lr.ph.i320.i ], [ %i.gr, %.lr.ph.i323.i.preheader.unr-lcssa ]
  %lcmp.mod189 = trunc i64 %.034.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod189)
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.0282423.i, i64 %.09.i.i.epil.init ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gv = load i16, ptr %i.gu, align 4, !tbaa !71
  %12 = zext i16 %i.gv to i64                     ; 3 uses
  %i.gw = ptrtoint ptr %i.gt to i64
  %i.gx = sub i64 %i.gw, %i.fs
  %i.gy = lshr exact i64 %i.gx, 3
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = icmp eq i32 %i.fq, %i.gz
  br i1 %i.ha, label %bb.ad, label %ZSTD_getSequenceLength.exit.i.i.epil

bb.ad:                                            ; preds = %.epil.preheader
  %i.hb = load i32, ptr %i.ed, align 8, !tbaa !74
  %i.hc = icmp eq i32 %i.hb, 1
  %13 = or disjoint i64 %12, 65536
  %spec.select.i.i.i.epil = select i1 %i.hc, i64 %13, i64 %12
  br label %ZSTD_getSequenceLength.exit.i.i.epil

ZSTD_getSequenceLength.exit.i.i.epil:             ; preds = %bb.ad, %.epil.preheader
  %.sroa.0.1.i.i.i.epil = phi i64 [ %12, %.epil.preheader ], [ %spec.select.i.i.i.epil, %bb.ad ]
  %i.hd = add i64 %.sroa.0.1.i.i.i.epil, %.078.i.i.epil.init
  br label %.lr.ph.i323.i.preheader

.lr.ph.i323.i.preheader:                          ; preds = %.lr.ph.i323.i.preheader.unr-lcssa, %ZSTD_getSequenceLength.exit.i.i.epil
  %.lcssa160 = phi i64 [ %i.gr, %.lr.ph.i323.i.preheader.unr-lcssa ], [ %i.hd, %ZSTD_getSequenceLength.exit.i.i.epil ] ; 3 uses
  %xtraiter190 = and i64 %.034.i.i, 1
  %i.he = icmp eq i64 %i.ft, 0
  br i1 %i.he, label %.lr.ph.i323.i.epil.preheader, label %.lr.ph.i323.i.preheader.new

.lr.ph.i323.i.preheader.new:                      ; preds = %.lr.ph.i323.i.preheader
  %unroll_iter194 = and i64 %.034.i.i, -2
  br label %.lr.ph.i323.i

.lr.ph.i323.i:                                    ; preds = %ZSTD_getSequenceLength.exit.i324.i.1, %.lr.ph.i323.i.preheader.new
  %.012.i.i = phi i64 [ 0, %.lr.ph.i323.i.preheader.new ], [ %i.ib, %ZSTD_getSequenceLength.exit.i324.i.1 ]
  %.01011.i.i = phi i64 [ 0, %.lr.ph.i323.i.preheader.new ], [ %i.ic, %ZSTD_getSequenceLength.exit.i324.i.1 ] ; 3 uses
  %niter195 = phi i64 [ 0, %.lr.ph.i323.i.preheader.new ], [ %niter195.next.1, %ZSTD_getSequenceLength.exit.i324.i.1 ]
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.0282423.i, i64 %.01011.i.i ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 6
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !72
  %14 = zext i16 %i.hh to i64                     ; 2 uses
  %15 = add nuw nsw i64 %14, 3                    ; 2 uses
  %i.hi = ptrtoint ptr %i.hf to i64
  %i.hj = sub i64 %i.hi, %i.fs
  %i.hk = lshr exact i64 %i.hj, 3
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = icmp eq i32 %i.fq, %i.hl
  br i1 %i.hm, label %bb.ae, label %ZSTD_getSequenceLength.exit.i324.i

bb.ae:                                            ; preds = %.lr.ph.i323.i
  %i.hn = load i32, ptr %i.ed, align 8, !tbaa !74
  %i.ho = icmp eq i32 %i.hn, 2
  %16 = add nuw nsw i64 %14, 65539
  %spec.select8.i.i.i = select i1 %i.ho, i64 %16, i64 %15
  br label %ZSTD_getSequenceLength.exit.i324.i

ZSTD_getSequenceLength.exit.i324.i:               ; preds = %bb.ae, %.lr.ph.i323.i
  %.sroa.4.0.i.i.i = phi i64 [ %15, %.lr.ph.i323.i ], [ %spec.select8.i.i.i, %bb.ae ]
  %i.hp = add i64 %.sroa.4.0.i.i.i, %.012.i.i
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.0282423.i, i64 %.01011.i.i ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 14
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !72
  %17 = zext i16 %i.ht to i64                     ; 2 uses
  %18 = add nuw nsw i64 %17, 3                    ; 2 uses
  %i.hu = ptrtoint ptr %i.hr to i64
  %i.hv = sub i64 %i.hu, %i.fs
  %i.hw = lshr exact i64 %i.hv, 3
  %i.hx = trunc i64 %i.hw to i32
  %i.hy = icmp eq i32 %i.fq, %i.hx
  br i1 %i.hy, label %bb.af, label %ZSTD_getSequenceLength.exit.i324.i.1

bb.af:                                            ; preds = %ZSTD_getSequenceLength.exit.i324.i
  %i.hz = load i32, ptr %i.ed, align 8, !tbaa !74
  %i.ia = icmp eq i32 %i.hz, 2
  %19 = add nuw nsw i64 %17, 65539
  %spec.select8.i.i.i.1 = select i1 %i.ia, i64 %19, i64 %18
  br label %ZSTD_getSequenceLength.exit.i324.i.1

ZSTD_getSequenceLength.exit.i324.i.1:             ; preds = %bb.af, %ZSTD_getSequenceLength.exit.i324.i
  %.sroa.4.0.i.i.i.1 = phi i64 [ %18, %ZSTD_getSequenceLength.exit.i324.i ], [ %spec.select8.i.i.i.1, %bb.af ]
  %i.ib = add i64 %.sroa.4.0.i.i.i.1, %i.hp       ; 3 uses
  %i.ic = add nuw i64 %.01011.i.i, 2              ; 2 uses
  %niter195.next.1 = add i64 %niter195, 2         ; 2 uses
  %niter195.ncmp.1 = icmp eq i64 %niter195.next.1, %unroll_iter194
  br i1 %niter195.ncmp.1, label %ZSTD_seqDecompressedSize.exit.i.unr-lcssa, label %.lr.ph.i323.i, !llvm.loop !28

ZSTD_seqDecompressedSize.exit.i.unr-lcssa:        ; preds = %ZSTD_getSequenceLength.exit.i324.i.1
  %lcmp.mod191.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod191.not, label %ZSTD_seqDecompressedSize.exit.i, label %.lr.ph.i323.i.epil.preheader

.lr.ph.i323.i.epil.preheader:                     ; preds = %ZSTD_seqDecompressedSize.exit.i.unr-lcssa, %.lr.ph.i323.i.preheader
  %.012.i.i.epil.init = phi i64 [ 0, %.lr.ph.i323.i.preheader ], [ %i.ib, %ZSTD_seqDecompressedSize.exit.i.unr-lcssa ]
  %.01011.i.i.epil.init = phi i64 [ 0, %.lr.ph.i323.i.preheader ], [ %i.ic, %ZSTD_seqDecompressedSize.exit.i.unr-lcssa ]
  %lcmp.mod193 = trunc i64 %.034.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod193)
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.0282423.i, i64 %.01011.i.i.epil.init ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 6
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !72
  %20 = zext i16 %i.if to i64                     ; 2 uses
  %21 = add nuw nsw i64 %20, 3                    ; 2 uses
  %i.ig = ptrtoint ptr %i.id to i64
  %i.ih = sub i64 %i.ig, %i.fs
  %i.ii = lshr exact i64 %i.ih, 3
  %i.ij = trunc i64 %i.ii to i32
  %i.ik = icmp eq i32 %i.fq, %i.ij
  br i1 %i.ik, label %bb.ag, label %ZSTD_getSequenceLength.exit.i324.i.epil

bb.ag:                                            ; preds = %.lr.ph.i323.i.epil.preheader
  %i.il = load i32, ptr %i.ed, align 8, !tbaa !74
  %i.im = icmp eq i32 %i.il, 2
  %22 = add nuw nsw i64 %20, 65539
  %spec.select8.i.i.i.epil = select i1 %i.im, i64 %22, i64 %21
  br label %ZSTD_getSequenceLength.exit.i324.i.epil

ZSTD_getSequenceLength.exit.i324.i.epil:          ; preds = %bb.ag, %.lr.ph.i323.i.epil.preheader
  %.sroa.4.0.i.i.i.epil = phi i64 [ %21, %.lr.ph.i323.i.epil.preheader ], [ %spec.select8.i.i.i.epil, %bb.ag ]
  %i.in = add i64 %.sroa.4.0.i.i.i.epil, %.012.i.i.epil.init
  br label %ZSTD_seqDecompressedSize.exit.i

ZSTD_seqDecompressedSize.exit.i:                  ; preds = %ZSTD_seqDecompressedSize.exit.i.unr-lcssa, %ZSTD_getSequenceLength.exit.i324.i.epil
  %.lcssa161 = phi i64 [ %i.ib, %ZSTD_seqDecompressedSize.exit.i.unr-lcssa ], [ %i.in, %ZSTD_getSequenceLength.exit.i324.i.epil ]
  %i.io = add i64 %.lcssa161, %.lcssa160          ; 2 uses
  %i.ip = ptrtoint ptr %.0255426.i to i64
  %i.iq = sub i64 %i.ee, %i.ip
  %i.ir = call fastcc i64 @ZSTD_compressSubBlock(ptr noundef %i.v, ptr noundef nonnull readonly %7, ptr noundef nonnull %.0282423.i, i64 noundef %.034.i.i, ptr noundef %.0275424.i, i64 noundef %.lcssa160, ptr noundef %.0248427.i, ptr noundef %.0241428.i, ptr noundef %.0234429.i, ptr noundef nonnull readonly %i.n, ptr noundef %.0255426.i, i64 noundef %i.iq, i32 noundef %i.x, i32 noundef %.0223430.i, i32 noundef %.0214431.i, ptr noundef %i.e, ptr noundef %i.f, i32 noundef 0) ; 5 uses
  %i.is = icmp ult i64 %i.ir, -119
  br i1 %i.is, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %ZSTD_seqDecompressedSize.exit.i
  %.not303.i = icmp ne i64 %i.ir, 0
  %i.it = icmp ult i64 %i.ir, %i.io
  %or.cond.i = select i1 %.not303.i, i1 %i.it, i1 false
  br i1 %or.cond.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.iu = getelementptr inbounds nuw i8, ptr %.0266425.i, i64 %i.io
  %i.iv = getelementptr inbounds nuw i8, ptr %.0275424.i, i64 %.lcssa160
  %i.iw = getelementptr inbounds nuw i8, ptr %.0255426.i, i64 %i.ir
  %i.ix = getelementptr inbounds nuw i8, ptr %.0248427.i, i64 %.034.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.0241428.i, i64 %.034.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %.0234429.i, i64 %.034.i.i
  %i.ja = load i32, ptr %i.e, align 4, !tbaa !17
  %.not304.i = icmp eq i32 %i.ja, 0
  %spec.select315.i = select i1 %.not304.i, i32 %.0223430.i, i32 0
  %i.jb = load i32, ptr %i.f, align 4, !tbaa !17
  %.not305.i = icmp eq i32 %i.jb, 0
  %.1215.i = select i1 %.not305.i, i32 %.0214431.i, i32 0
  br label %bb.ak

bb.aj:                                            ; preds = %ZSTD_seqDecompressedSize.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  br label %ZSTD_compressSubBlock_multi.exit

bb.ak:                                            ; preds = %bb.ai, %bb.ah
  %.2284.ph.i = phi ptr [ %.0282423.i, %bb.ah ], [ %i.fo, %bb.ai ] ; 3 uses
  %.2277.ph.i = phi ptr [ %.0275424.i, %bb.ah ], [ %i.iv, %bb.ai ] ; 2 uses
  %.2268.ph.i = phi ptr [ %.0266425.i, %bb.ah ], [ %i.iu, %bb.ai ] ; 2 uses
  %.2257.ph.i = phi ptr [ %.0255426.i, %bb.ah ], [ %i.iw, %bb.ai ] ; 2 uses
  %.2250.ph.i = phi ptr [ %.0248427.i, %bb.ah ], [ %i.ix, %bb.ai ] ; 2 uses
  %.2243.ph.i = phi ptr [ %.0241428.i, %bb.ah ], [ %i.iy, %bb.ai ] ; 2 uses
  %.2236.ph.i = phi ptr [ %.0234429.i, %bb.ah ], [ %i.iz, %bb.ai ] ; 2 uses
  %.3226.ph.i = phi i32 [ %.0223430.i, %bb.ah ], [ %spec.select315.i, %bb.ai ] ; 2 uses
  %.3217.ph.i = phi i32 [ %.0214431.i, %bb.ah ], [ %.1215.i, %bb.ai ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  %i.jc = add nuw nsw i64 %.0213432.i, 1          ; 2 uses
  %i.jd = icmp samesign ult i64 %i.jc, %i.eb
  br i1 %i.jd, label %bb.y, label %..thread381.loopexit_crit_edge.i, !llvm.loop !29

..thread381.loopexit_crit_edge.i:                 ; preds = %bb.ak
  %.pre472.i.a = ptrtoint ptr %.2284.ph.i to i64
  %.pre473.i.a = sub i64 %i.ad, %.pre472.i.a      ; 2 uses
  %.pre474.i = ashr exact i64 %.pre473.i.a, 3
  br label %.thread381.loopexit.i, !llvm.loop !29

.thread381.loopexit.i:                            ; preds = %sizeBlockSequences.exit.i, %..thread381.loopexit_crit_edge.i
  %.pre470.pre-phi.i = phi i64 [ %.pre474.i, %..thread381.loopexit_crit_edge.i ], [ %i.eh, %sizeBlockSequences.exit.i ]
  %.pre468.pre-phi.i = phi i64 [ %.pre473.i.a, %..thread381.loopexit_crit_edge.i ], [ %i.eg, %sizeBlockSequences.exit.i ]
  %.6288.ph.i = phi ptr [ %.2284.ph.i, %..thread381.loopexit_crit_edge.i ], [ %.0282423.i, %sizeBlockSequences.exit.i ]
  %.6281.ph.i = phi ptr [ %.2277.ph.i, %..thread381.loopexit_crit_edge.i ], [ %.0275424.i, %sizeBlockSequences.exit.i ] ; 2 uses
  %.6272.ph.i = phi ptr [ %.2268.ph.i, %..thread381.loopexit_crit_edge.i ], [ %.0266425.i, %sizeBlockSequences.exit.i ]
  %.6261.ph.i = phi ptr [ %.2257.ph.i, %..thread381.loopexit_crit_edge.i ], [ %.0255426.i, %sizeBlockSequences.exit.i ]
  %.6254.ph.i = phi ptr [ %.2250.ph.i, %..thread381.loopexit_crit_edge.i ], [ %.0248427.i, %sizeBlockSequences.exit.i ]
  %.6247.ph.i = phi ptr [ %.2243.ph.i, %..thread381.loopexit_crit_edge.i ], [ %.0241428.i, %sizeBlockSequences.exit.i ]
  %.6240.ph.i = phi ptr [ %.2236.ph.i, %..thread381.loopexit_crit_edge.i ], [ %.0234429.i, %sizeBlockSequences.exit.i ]
  %.7230.ph.i = phi i32 [ %.3226.ph.i, %..thread381.loopexit_crit_edge.i ], [ %.0223430.i, %sizeBlockSequences.exit.i ]
  %.7221.ph.i = phi i32 [ %.3217.ph.i, %..thread381.loopexit_crit_edge.i ], [ %.0214431.i, %sizeBlockSequences.exit.i ]
  %.pre.i = ptrtoint ptr %.6281.ph.i to i64
  %.pre464.i = sub i64 %i.al, %.pre.i
  br label %.thread381.i

.thread381.i:                                     ; preds = %.thread381.loopexit.i, %.preheader.i, %bb.b
  %.pre-phi471.i = phi i64 [ %.pre470.pre-phi.i, %.thread381.loopexit.i ], [ %i.ag, %.preheader.i ], [ 0, %bb.b ] ; 5 uses
  %.pre-phi469.i = phi i64 [ %.pre468.pre-phi.i, %.thread381.loopexit.i ], [ %i.af, %.preheader.i ], [ 0, %bb.b ]
  %.pre-phi465.i = phi i64 [ %.pre464.i, %.thread381.loopexit.i ], [ %i.an, %.preheader.i ], [ %i.an, %bb.b ] ; 2 uses
  %.6288.i = phi ptr [ %.6288.ph.i, %.thread381.loopexit.i ], [ %i.aa, %.preheader.i ], [ %i.aa, %bb.b ] ; 7 uses
  %.6281.i = phi ptr [ %.6281.ph.i, %.thread381.loopexit.i ], [ %i.ai, %.preheader.i ], [ %i.ai, %bb.b ]
  %.6272.i = phi ptr [ %.6272.ph.i, %.thread381.loopexit.i ], [ %3, %.preheader.i ], [ %3, %bb.b ] ; 2 uses
  %.6261.i = phi ptr [ %.6261.ph.i, %.thread381.loopexit.i ], [ %1, %.preheader.i ], [ %1, %bb.b ] ; 4 uses
  %.6254.i = phi ptr [ %.6254.ph.i, %.thread381.loopexit.i ], [ %i.ar, %.preheader.i ], [ %i.ar, %bb.b ]
  %.6247.i = phi ptr [ %.6247.ph.i, %.thread381.loopexit.i ], [ %i.at, %.preheader.i ], [ %i.at, %bb.b ]
  %.6240.i = phi ptr [ %.6240.ph.i, %.thread381.loopexit.i ], [ %i.av, %.preheader.i ], [ %i.av, %bb.b ]
  %.7230.i = phi i32 [ %.7230.ph.i, %.thread381.loopexit.i ], [ %i.ba, %.preheader.i ], [ %i.ba, %bb.b ] ; 2 uses
  %.7221.i = phi i32 [ %.7221.ph.i, %.thread381.loopexit.i ], [ 1, %.preheader.i ], [ 1, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  store i32 0, ptr %i.h, align 4, !tbaa !17
  %.not.i326.i = icmp eq ptr %i.ac, %.6288.i
  br i1 %.not.i326.i, label %ZSTD_seqDecompressedSize.exit336.i, label %.lr.ph.i327.i

.lr.ph.i327.i:                                    ; preds = %.thread381.i
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !73 ; 3 uses
  %i.jg = load ptr, ptr %i.i, align 8, !tbaa !60
  %i.jh = ptrtoint ptr %i.jg to i64               ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 3 uses
  %xtraiter197 = and i64 %.pre-phi471.i, 1
  %i.jj = icmp eq i64 %.pre-phi471.i, 1
  br i1 %i.jj, label %.epil.preheader196, label %.lr.ph.i327.i.new

.lr.ph.i327.i.new:                                ; preds = %.lr.ph.i327.i
  %unroll_iter201 = and i64 %.pre-phi471.i, -2
  br label %bb.al

bb.al:                                            ; preds = %ZSTD_getSequenceLength.exit.i330.i.1, %.lr.ph.i327.i.new
  %.012.i328.i = phi i64 [ 0, %.lr.ph.i327.i.new ], [ %i.kg, %ZSTD_getSequenceLength.exit.i330.i.1 ]
  %.01011.i329.i = phi i64 [ 0, %.lr.ph.i327.i.new ], [ %i.kh, %ZSTD_getSequenceLength.exit.i330.i.1 ] ; 3 uses
  %niter202 = phi i64 [ 0, %.lr.ph.i327.i.new ], [ %niter202.next.1, %ZSTD_getSequenceLength.exit.i330.i.1 ]
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.6288.i, i64 %.01011.i329.i ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 6
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !72
  %23 = zext i16 %i.jm to i64                     ; 2 uses
  %24 = add nuw nsw i64 %23, 3                    ; 2 uses
  %i.jn = ptrtoint ptr %i.jk to i64
  %i.jo = sub i64 %i.jn, %i.jh
  %i.jp = lshr exact i64 %i.jo, 3
  %i.jq = trunc i64 %i.jp to i32
  %i.jr = icmp eq i32 %i.jf, %i.jq
  br i1 %i.jr, label %bb.am, label %ZSTD_getSequenceLength.exit.i330.i

bb.am:                                            ; preds = %bb.al
  %i.js = load i32, ptr %i.ji, align 8, !tbaa !74
  %i.jt = icmp eq i32 %i.js, 2
  %25 = add nuw nsw i64 %23, 65539
  %spec.select8.i.i334.i = select i1 %i.jt, i64 %25, i64 %24
  br label %ZSTD_getSequenceLength.exit.i330.i

ZSTD_getSequenceLength.exit.i330.i:               ; preds = %bb.am, %bb.al
  %.sroa.4.0.i.i331.i = phi i64 [ %24, %bb.al ], [ %spec.select8.i.i334.i, %bb.am ]
  %i.ju = add i64 %.sroa.4.0.i.i331.i, %.012.i328.i
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.6288.i, i64 %.01011.i329.i ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 14
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !72
  %26 = zext i16 %i.jy to i64                     ; 2 uses
  %27 = add nuw nsw i64 %26, 3                    ; 2 uses
  %i.jz = ptrtoint ptr %i.jw to i64
  %i.ka = sub i64 %i.jz, %i.jh
  %i.kb = lshr exact i64 %i.ka, 3
  %i.kc = trunc i64 %i.kb to i32
  %i.kd = icmp eq i32 %i.jf, %i.kc
  br i1 %i.kd, label %bb.an, label %ZSTD_getSequenceLength.exit.i330.i.1

bb.an:                                            ; preds = %ZSTD_getSequenceLength.exit.i330.i
  %i.ke = load i32, ptr %i.ji, align 8, !tbaa !74
  %i.kf = icmp eq i32 %i.ke, 2
  %28 = add nuw nsw i64 %26, 65539
  %spec.select8.i.i334.i.1 = select i1 %i.kf, i64 %28, i64 %27
  br label %ZSTD_getSequenceLength.exit.i330.i.1

ZSTD_getSequenceLength.exit.i330.i.1:             ; preds = %bb.an, %ZSTD_getSequenceLength.exit.i330.i
  %.sroa.4.0.i.i331.i.1 = phi i64 [ %27, %ZSTD_getSequenceLength.exit.i330.i ], [ %spec.select8.i.i334.i.1, %bb.an ]
  %i.kg = add i64 %.sroa.4.0.i.i331.i.1, %i.ju    ; 3 uses
  %i.kh = add nuw i64 %.01011.i329.i, 2           ; 2 uses
  %niter202.next.1 = add i64 %niter202, 2         ; 2 uses
  %niter202.ncmp.1 = icmp eq i64 %niter202.next.1, %unroll_iter201
  br i1 %niter202.ncmp.1, label %ZSTD_seqDecompressedSize.exit336.i.loopexit.unr-lcssa, label %bb.al, !llvm.loop !28

ZSTD_seqDecompressedSize.exit336.i.loopexit.unr-lcssa: ; preds = %ZSTD_getSequenceLength.exit.i330.i.1
  %lcmp.mod198.not = icmp eq i64 %xtraiter197, 0
  br i1 %lcmp.mod198.not, label %ZSTD_seqDecompressedSize.exit336.i, label %.epil.preheader196

.epil.preheader196:                               ; preds = %ZSTD_seqDecompressedSize.exit336.i.loopexit.unr-lcssa, %.lr.ph.i327.i
  %.012.i328.i.epil.init = phi i64 [ 0, %.lr.ph.i327.i ], [ %i.kg, %ZSTD_seqDecompressedSize.exit336.i.loopexit.unr-lcssa ]
  %.01011.i329.i.epil.init = phi i64 [ 0, %.lr.ph.i327.i ], [ %i.kh, %ZSTD_seqDecompressedSize.exit336.i.loopexit.unr-lcssa ]
  %lcmp.mod200 = trunc i64 %.pre-phi471.i to i1
  call void @llvm.assume(i1 %lcmp.mod200)
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %.6288.i, i64 %.01011.i329.i.epil.init ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 6
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !72
  %29 = zext i16 %i.kk to i64                     ; 2 uses
  %30 = add nuw nsw i64 %29, 3                    ; 2 uses
  %i.kl = ptrtoint ptr %i.ki to i64
  %i.km = sub i64 %i.kl, %i.jh
  %i.kn = lshr exact i64 %i.km, 3
  %i.ko = trunc i64 %i.kn to i32
  %i.kp = icmp eq i32 %i.jf, %i.ko
  br i1 %i.kp, label %bb.ao, label %ZSTD_getSequenceLength.exit.i330.i.epil

bb.ao:                                            ; preds = %.epil.preheader196
  %i.kq = load i32, ptr %i.ji, align 8, !tbaa !74
  %i.kr = icmp eq i32 %i.kq, 2
  %31 = add nuw nsw i64 %29, 65539
  %spec.select8.i.i334.i.epil = select i1 %i.kr, i64 %31, i64 %30
  br label %ZSTD_getSequenceLength.exit.i330.i.epil

ZSTD_getSequenceLength.exit.i330.i.epil:          ; preds = %bb.ao, %.epil.preheader196
  %.sroa.4.0.i.i331.i.epil = phi i64 [ %30, %.epil.preheader196 ], [ %spec.select8.i.i334.i.epil, %bb.ao ]
  %i.ks = add i64 %.sroa.4.0.i.i331.i.epil, %.012.i328.i.epil.init
  br label %ZSTD_seqDecompressedSize.exit336.i

ZSTD_seqDecompressedSize.exit336.i:               ; preds = %ZSTD_getSequenceLength.exit.i330.i.epil, %ZSTD_seqDecompressedSize.exit336.i.loopexit.unr-lcssa, %.thread381.i
  %.0.lcssa.i334.i = phi i64 [ 0, %.thread381.i ], [ %i.kg, %ZSTD_seqDecompressedSize.exit336.i.loopexit.unr-lcssa ], [ %i.ks, %ZSTD_getSequenceLength.exit.i330.i.epil ]
  %i.kt = add i64 %.0.lcssa.i334.i, %.pre-phi465.i ; 2 uses
  %i.ku = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.kv = ptrtoint ptr %.6261.i to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = call fastcc i64 @ZSTD_compressSubBlock(ptr noundef %i.v, ptr noundef nonnull readonly %7, ptr noundef %.6288.i, i64 noundef %.pre-phi471.i, ptr noundef %.6281.i, i64 noundef %.pre-phi465.i, ptr noundef %.6254.i, ptr noundef %.6247.i, ptr noundef %.6240.i, ptr noundef nonnull readonly %i.n, ptr noundef %.6261.i, i64 noundef %i.kw, i32 noundef %i.x, i32 noundef %.7230.i, i32 noundef %.7221.i, ptr noundef %i.g, ptr noundef %i.h, i32 noundef %5) ; 5 uses
  %i.ky = icmp ult i64 %i.kx, -119
  br i1 %i.ky, label %bb.ap, label %.critedge.i

bb.ap:                                            ; preds = %ZSTD_seqDecompressedSize.exit336.i
  %.not307.i = icmp ne i64 %i.kx, 0
  %i.kz = icmp ult i64 %i.kx, %i.kt
  %or.cond316.i = select i1 %.not307.i, i1 %i.kz, i1 false
  br i1 %or.cond316.i, label %bb.aq, label %select.unfold.i

bb.aq:                                            ; preds = %bb.ap
  %i.la = getelementptr inbounds nuw i8, ptr %.6272.i, i64 %i.kt ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.6261.i, i64 %i.kx ; 2 uses
  %i.lc = load i32, ptr %i.g, align 4, !tbaa !17
  %.not308.i = icmp eq i32 %i.lc, 0
  %i.ld = load i32, ptr %i.h, align 4, !tbaa !17
  %.not309.i = icmp eq i32 %i.ld, 0
  %.8222.i = select i1 %.not309.i, i32 %.7221.i, i32 0 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.6288.i, i64 %.pre-phi469.i ; 2 uses
  br i1 %.not308.i, label %select.unfold.i, label %.thread394.i

.thread394.i:                                     ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br label %bb.as

select.unfold.i:                                  ; preds = %bb.aq, %bb.ap
  %.8290.i = phi ptr [ %.6288.i, %bb.ap ], [ %i.le, %bb.aq ] ; 2 uses
  %.8274.i = phi ptr [ %.6272.i, %bb.ap ], [ %i.la, %bb.aq ] ; 2 uses
  %.8263.i = phi ptr [ %.6261.i, %bb.ap ], [ %i.lb, %bb.aq ] ; 2 uses
  %.10.i = phi i32 [ %.7221.i, %bb.ap ], [ %.8222.i, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  %.not310.i = icmp eq i32 %.7230.i, 0
  br i1 %.not310.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %select.unfold.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2064) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(2064) %i.u, i64 2064, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %select.unfold.i, %.thread394.i
  %.10404.i = phi i32 [ %.8222.i, %.thread394.i ], [ %.10.i, %bb.ar ], [ %.10.i, %select.unfold.i ]
  %.8263403.i = phi ptr [ %i.lb, %.thread394.i ], [ %.8263.i, %bb.ar ], [ %.8263.i, %select.unfold.i ] ; 6 uses
  %.8274402.i = phi ptr [ %i.la, %.thread394.i ], [ %.8274.i, %bb.ar ], [ %.8274.i, %select.unfold.i ] ; 3 uses
  %.8290401.i = phi ptr [ %i.le, %.thread394.i ], [ %.8290.i, %bb.ar ], [ %.8290.i, %select.unfold.i ] ; 3 uses
  %.not311.i = icmp eq i32 %.10404.i, 0
  br i1 %.not311.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.lf = getelementptr inbounds nuw i8, ptr %7, i64 144
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !20
  %.off.i.i = add i32 %i.lg, -1
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %ZSTD_compressSubBlock_multi.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lh = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !21
  %.off9.i.i = add i32 %i.li, -1
  %switch10.i.i = icmp ult i32 %.off9.i.i, 2
  br i1 %switch10.i.i, label %ZSTD_compressSubBlock_multi.exit, label %ZSTD_needSequenceEntropyTables.exit.i

ZSTD_needSequenceEntropyTables.exit.i:            ; preds = %bb.au
  %i.lj = getelementptr inbounds nuw i8, ptr %7, i64 148
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !18
  %i.ll = add i32 %i.lk, -3
  %switch12.i.i = icmp ult i32 %i.ll, -2
  br i1 %switch12.i.i, label %bb.av, label %ZSTD_compressSubBlock_multi.exit

bb.av:                                            ; preds = %ZSTD_needSequenceEntropyTables.exit.i, %bb.as
  %i.lm = icmp ult ptr %.8274402.i, %i.ao
  br i1 %i.lm, label %bb.aw, label %bb.bg

bb.aw:                                            ; preds = %bb.av
  %i.ln = ptrtoint ptr %i.ao to i64
  %i.lo = ptrtoint ptr %.8274402.i to i64
  %i.lp = sub i64 %i.ln, %i.lo                    ; 3 uses
  %i.lq = ptrtoint ptr %.8263403.i to i64
  %i.lr = sub i64 %i.ku, %i.lq
  %i.ls = add i64 %i.lp, 3                        ; 4 uses
  %i.lt = icmp ugt i64 %i.ls, %i.lr
  br i1 %i.lt, label %ZSTD_compressSubBlock_multi.exit, label %ZSTD_noCompressBlock.exit.i

ZSTD_noCompressBlock.exit.i:                      ; preds = %bb.aw
  %.tr.i.i = trunc i64 %i.lp to i32
  %i.lu = shl i32 %.tr.i.i, 3
  %i.lv = add i32 %i.lu, %5                       ; 2 uses
  %i.lw = trunc i32 %i.lv to i16
  store i16 %i.lw, ptr %.8263403.i, align 1, !tbaa !24
  %i.lx = lshr i32 %i.lv, 16
  %i.ly = trunc i32 %i.lx to i8
  %i.lz = getelementptr inbounds nuw i8, ptr %.8263403.i, i64 2
  store i8 %i.ly, ptr %i.lz, align 1, !tbaa !19
  %i.ma = getelementptr inbounds nuw i8, ptr %.8263403.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ma, ptr readonly align 1 %.8274402.i, i64 %i.lp, i1 false)
  %i.mb = icmp ult i64 %i.ls, -119
  br i1 %i.mb, label %bb.ax, label %ZSTD_compressSubBlock_multi.exit

bb.ax:                                            ; preds = %ZSTD_noCompressBlock.exit.i
  %i.mc = getelementptr inbounds nuw i8, ptr %.8263403.i, i64 %i.ls ; 2 uses
  %i.md = icmp ult ptr %.8290401.i, %i.ac
  br i1 %i.md, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  %i.me = getelementptr inbounds nuw i8, ptr %i.u, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.me, i64 12, i1 false)
  %i.mf = icmp ult ptr %i.aa, %.8290401.i
  br i1 %i.mf, label %.lr.ph451.i, label %._crit_edge.i

.lr.ph451.i:                                      ; preds = %bb.ay
  %.promoted.i = load i32, ptr %6, align 4
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !73
  %i.mi = load ptr, ptr %i.i, align 8, !tbaa !60
  %i.mj = ptrtoint ptr %i.mi to i64
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.ml = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %.promoted452.i = load i32, ptr %i.mm, align 4
  %.promoted456.i = load i32, ptr %i.ml, align 4
  br label %bb.az

bb.az:                                            ; preds = %ZSTD_updateRep.exit.i, %.lr.ph451.i
  %.val410458.i = phi i32 [ %.promoted456.i, %.lr.ph451.i ], [ %.val410457.i, %ZSTD_updateRep.exit.i ] ; 4 uses
  %.val454.i.a = phi i32 [ %.promoted452.i, %.lr.ph451.i ], [ %.val453.i, %ZSTD_updateRep.exit.i ] ; 2 uses
  %.0200450.i = phi ptr [ %i.aa, %.lr.ph451.i ], [ %i.nl, %ZSTD_updateRep.exit.i ] ; 4 uses
  %i.mn = phi i32 [ %.promoted.i, %.lr.ph451.i ], [ %i.nk, %ZSTD_updateRep.exit.i ] ; 5 uses
  %i.mo = load i32, ptr %.0200450.i, align 4, !tbaa !75 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.0200450.i, i64 4
  %i.mq = load i16, ptr %i.mp, align 4, !tbaa !71
  %32 = zext i16 %i.mq to i64                     ; 3 uses
  %i.mr = ptrtoint ptr %.0200450.i to i64
  %i.ms = sub i64 %i.mr, %i.mj
  %i.mt = lshr exact i64 %i.ms, 3
  %i.mu = trunc i64 %i.mt to i32
  %i.mv = icmp eq i32 %i.mh, %i.mu
  br i1 %i.mv, label %bb.ba, label %ZSTD_getSequenceLength.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.mw = load i32, ptr %i.mk, align 8, !tbaa !74
  %i.mx = icmp eq i32 %i.mw, 1
  %33 = or disjoint i64 %32, 65536
  %spec.select.i337.i = select i1 %i.mx, i64 %33, i64 %32
  br label %ZSTD_getSequenceLength.exit.i

ZSTD_getSequenceLength.exit.i:                    ; preds = %bb.ba, %bb.az
  %.sroa.0.1.i.i = phi i64 [ %32, %bb.az ], [ %spec.select.i337.i, %bb.ba ]
  %i.my = icmp ugt i32 %i.mo, 3
  br i1 %i.my, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %ZSTD_getSequenceLength.exit.i
  store i32 %.val410458.i, ptr %i.mm, align 4, !tbaa !17
  store i32 %i.mn, ptr %i.ml, align 4, !tbaa !17
  %i.mz = add i32 %i.mo, -3
  br label %.sink.split.i.i

bb.bc:                                            ; preds = %ZSTD_getSequenceLength.exit.i
  %i.na = icmp eq i64 %.sroa.0.1.i.i, 0
  %i.nb = zext i1 %i.na to i32
  %i.nc = add nsw i32 %i.mo, -1
  %i.nd = add nsw i32 %i.nc, %i.nb                ; 3 uses
  switch i32 %i.nd, label %bb.be [
    i32 0, label %ZSTD_updateRep.exit.i
    i32 3, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.ne = add i32 %i.mn, -1
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.nf = zext i32 %i.nd to i64
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !17
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.ni = phi i32 [ %i.ne, %bb.bd ], [ %i.nh, %bb.be ]
  %.not22.i.i = icmp eq i32 %i.nd, 1
  %i.nj = select i1 %.not22.i.i, i32 %.val454.i.a, i32 %.val410458.i ; 2 uses
  store i32 %i.nj, ptr %i.mm, align 4, !tbaa !17
  store i32 %i.mn, ptr %i.ml, align 4, !tbaa !17
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.bf, %bb.bb
  %.val455.i = phi i32 [ %i.nj, %bb.bf ], [ %.val410458.i, %bb.bb ]
  %.sink.i.i = phi i32 [ %i.ni, %bb.bf ], [ %i.mz, %bb.bb ] ; 2 uses
  store i32 %.sink.i.i, ptr %6, align 4, !tbaa !17
  br label %ZSTD_updateRep.exit.i

ZSTD_updateRep.exit.i:                            ; preds = %.sink.split.i.i, %bb.bc
  %.val410457.i = phi i32 [ %.val410458.i, %bb.bc ], [ %i.mn, %.sink.split.i.i ]
  %.val453.i = phi i32 [ %.val454.i.a, %bb.bc ], [ %.val455.i, %.sink.split.i.i ]
  %i.nk = phi i32 [ %i.mn, %bb.bc ], [ %.sink.i.i, %.sink.split.i.i ]
  %i.nl = getelementptr inbounds nuw i8, ptr %.0200450.i, i64 8 ; 2 uses
  %i.nm = icmp ult ptr %i.nl, %.8290401.i
  br i1 %i.nm, label %bb.az, label %._crit_edge.i, !llvm.loop !30

._crit_edge.i:                                    ; preds = %ZSTD_updateRep.exit.i, %bb.ay
  %i.nn = getelementptr inbounds nuw i8, ptr %i.v, i64 5616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.nn, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.i, %bb.ax, %bb.av
  %.10265.i = phi ptr [ %.8263403.i, %bb.av ], [ %i.mc, %bb.ax ], [ %i.mc, %._crit_edge.i ]
  %i.no = ptrtoint ptr %.10265.i to i64
  %i.np = ptrtoint ptr %1 to i64
  %i.nq = sub i64 %i.no, %i.np
  br label %ZSTD_compressSubBlock_multi.exit

.critedge.i:                                      ; preds = %ZSTD_seqDecompressedSize.exit336.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br label %ZSTD_compressSubBlock_multi.exit

ZSTD_compressSubBlock_multi.exit:                 ; preds = %.critedge.i, %bb.bg, %ZSTD_noCompressBlock.exit.i, %bb.aw, %ZSTD_needSequenceEntropyTables.exit.i, %bb.au, %bb.at, %bb.aj, %bb.x, %bb.a
  %.1 = phi i64 [ %i.s, %bb.a ], [ %i.kx, %.critedge.i ], [ %i.nq, %bb.bg ], [ 0, %bb.au ], [ %i.ir, %bb.aj ], [ %i.ls, %ZSTD_noCompressBlock.exit.i ], [ 0, %ZSTD_needSequenceEntropyTables.exit.i ], [ 0, %bb.x ], [ 0, %bb.at ], [ -70, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @ZSTD_buildBlockEntropyStats(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 5, 1) i64 @ZSTD_compressSubBlock(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readonly captures(none) %9, ptr noundef %10, i64 noundef %11, i32 noundef %12, i32 noundef range(i32 0, 2) %13, i32 noundef range(i32 0, 2) %14, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %15, ptr nofree noundef nonnull writeonly captures(none) %16, i32 noundef %17) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %10, i64 %11
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 3 ; 10 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %gepdiff = add i64 %11, -3                      ; 5 uses
  %.not.i = icmp ne i32 %13, 0                    ; 4 uses
  %i.d = select i1 %.not.i, i64 200, i64 0        ; 2 uses
  %i.e = sub nuw nsw i64 1024, %i.d
  %.not99.i = icmp ult i64 %5, %i.e
  %i.f = select i1 %.not99.i, i64 3, i64 4
  %i.g = sub nuw nsw i64 16384, %i.d
  %i.h = icmp uge i64 %5, %i.g
  %i.i = zext i1 %i.h to i64
  %i.j = add nuw nsw i64 %i.f, %i.i               ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.j ; 3 uses
  %.not103.i = icmp eq i64 %i.j, 3
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %1, align 8, !tbaa !76
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi i32 [ %i.l, %bb.b ], [ 3, %bb.a ]    ; 3 uses
  store i32 0, ptr %15, align 4, !tbaa !17
  %i.n = icmp eq i64 %5, 0
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %1, align 8, !tbaa !76     ; 2 uses
  switch i32 %i.o, label %bb.g [
    i32 0, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call i64 @ZSTD_noCompressLiterals(ptr noundef nonnull %i.b, i64 noundef %gepdiff, ptr noundef %4, i64 noundef %5) #5
  br label %ZSTD_compressSubBlock_literal.exit

bb.f:                                             ; preds = %bb.d
  %i.q = tail call i64 @ZSTD_compressRleLiteralsBlock(ptr noundef nonnull %i.b, i64 noundef %gepdiff, ptr noundef %4, i64 noundef %5) #5
  br label %ZSTD_compressSubBlock_literal.exit

bb.g:                                             ; preds = %bb.d
  %i.r = icmp eq i32 %i.o, 2
  %or.cond.i = and i1 %.not.i, %i.r
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !77
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 4 %i.s, i64 %i.u, i1 false)
  %i.v = load i64, ptr %i.t, align 8, !tbaa !77   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.v
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.095.i = phi ptr [ %i.w, %bb.h ], [ %i.k, %bb.g ] ; 4 uses
  %.094.i = phi i64 [ %i.v, %bb.h ], [ 0, %bb.g ]
  %.not100.i = icmp ne i32 %12, 0
  %i.x = zext i1 %.not100.i to i32                ; 2 uses
  %i.y = ptrtoint ptr %.095.i to i64
  %i.z = sub i64 %i.c, %i.y                       ; 2 uses
  br i1 %.not103.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call i64 @HUF_compress1X_usingCTable(ptr noundef nonnull %.095.i, i64 noundef %i.z, ptr noundef %4, i64 noundef %5, ptr noundef %0, i32 noundef %i.x) #5
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ab = tail call i64 @HUF_compress4X_usingCTable(ptr noundef nonnull %.095.i, i64 noundef %i.z, ptr noundef %4, i64 noundef %5, ptr noundef %0, i32 noundef %i.x) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = phi i64 [ %i.aa, %bb.j ], [ %i.ab, %bb.k ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.095.i, i64 %i.ac
  %i.ae = add i64 %i.ac, %.094.i                  ; 7 uses
  %i.af = add i64 %i.ac, -1
  %or.cond108.i = icmp ult i64 %i.af, -120
  br i1 %or.cond108.i, label %bb.m, label %.thread69

bb.m:                                             ; preds = %bb.l
  %.not102.i = icmp ult i64 %i.ae, %5
  %or.cond105.i = select i1 %.not.i, i1 true, i1 %.not102.i
  br i1 %or.cond105.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = tail call i64 @ZSTD_noCompressLiterals(ptr noundef nonnull %i.b, i64 noundef %gepdiff, ptr noundef %4, i64 noundef %5) #5
  br label %ZSTD_compressSubBlock_literal.exit

bb.o:                                             ; preds = %bb.m
  %i.ah = icmp ugt i64 %i.ae, 1023
  %i.ai = select i1 %i.ah, i64 4, i64 3
  %i.aj = icmp ugt i64 %i.ae, 16383
  %i.ak = zext i1 %i.aj to i64
  %i.al = add nuw nsw i64 %i.ai, %i.ak
  %i.am = icmp samesign ult i64 %i.j, %i.al
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = tail call i64 @ZSTD_noCompressLiterals(ptr noundef nonnull %i.b, i64 noundef %gepdiff, ptr noundef %4, i64 noundef %5) #5
  br label %ZSTD_compressSubBlock_literal.exit

bb.q:                                             ; preds = %bb.o
  %i.ao = trunc i64 %5 to i32
  %i.ap = shl i32 %i.ao, 4                        ; 3 uses
  switch i64 %i.j, label %default.unreachable [
    i64 3, label %bb.r
    i64 4, label %bb.s
    i64 5, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.aq = add i32 %i.m, %i.ap
  %i.ar = trunc i64 %i.ae to i32
  %i.as = shl i32 %i.ar, 14
  %i.at = add i32 %i.aq, %i.as                    ; 2 uses
  %i.au = trunc i32 %i.at to i16
  store i16 %i.au, ptr %i.b, align 1, !tbaa !24
  %i.av = lshr i32 %i.at, 16
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 5
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !19
  br label %bb.u

end_hunk_0
