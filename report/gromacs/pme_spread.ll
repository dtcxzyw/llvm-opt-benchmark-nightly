Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_spread?download=true
inline.NumInlined: 325
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.1:bb.a
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv44.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !105
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv46.i
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !105
  %i.bf = getelementptr [4 x i8], ptr %i.ct, i64 %indvars.iv44.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !105
  %i.bi = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv46.i
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  store i32 %i.bh, ptr %i.bj, align 4, !tbaa !105
  %i.bk = getelementptr [4 x i8], ptr %i.ct, i64 %indvars.iv44.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !105
  %i.bn = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv46.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  store i32 %i.bm, ptr %i.bo, align 4, !tbaa !105
  %i.bp = getelementptr [4 x i8], ptr %i.ct, i64 %indvars.iv44.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !105
  %i.bs = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv46.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 12
  store i32 %i.br, ptr %i.bt, align 4, !tbaa !105
  %i.bu = getelementptr [4 x i8], ptr %i.ct, i64 %indvars.iv44.i
  %i.bv = getelementptr i8, ptr %i.bu, i64 16
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !105
  %i.bx = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv46.i
  %i.by = getelementptr i8, ptr %i.bx, i64 16
  store i32 %i.bw, ptr %i.by, align 4, !tbaa !105
  %i.bz = getelementptr [4 x i8], ptr %i.ct, i64 %indvars.iv44.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 20
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !105
  %i.cc = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv46.i
  %i.cd = getelementptr i8, ptr %i.cc, i64 20
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !105
  %i.ce = getelementptr [4 x i8], ptr %i.ct, i64 %indvars.iv44.i
  %i.cf = getelementptr i8, ptr %i.ce, i64 24
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !105
  %i.ch = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv46.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 24
  store i32 %i.cg, ptr %i.ci, align 4, !tbaa !105
  %i.cj = getelementptr [4 x i8], ptr %i.ct, i64 %indvars.iv44.i
  %i.ck = getelementptr i8, ptr %i.cj, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !105
  %indvars.iv.next47.i.7 = add nsw i64 %indvars.iv46.i, 8 ; 2 uses
  %i.cm = getelementptr [4 x i8], ptr %i.cu, i64 %indvars.iv46.i
  %i.cn = getelementptr i8, ptr %i.cm, i64 28
  store i32 %i.cl, ptr %i.cn, align 4, !tbaa !105
  %indvars.iv.next45.i.7 = add nsw i64 %indvars.iv44.i, 8 ; 2 uses
  %exitcond52.not.i.7 = icmp eq i64 %indvars.iv.next45.i.7, %wide.trip.count51.i
  br i1 %exitcond52.not.i.7, label %._crit_edge.us.loopexit.i, label %vec.epilog.scalar.ph459, !llvm.loop !262

._crit_edge.us.loopexit.i:                        ; preds = %vec.epilog.scalar.ph459.prol.loopexit, %vec.epilog.scalar.ph459, %vec.epilog.middle.block468, %middle.block453
  %indvars.iv.next47.i.lcssa = phi i64 [ %i.dp, %vec.epilog.middle.block468 ], [ %i.dg, %middle.block453 ], [ %indvars.iv.next47.i.lcssa516.unr, %vec.epilog.scalar.ph459.prol.loopexit ], [ %indvars.iv.next47.i.7, %vec.epilog.scalar.ph459 ]
  %i.co = trunc nsw i64 %indvars.iv.next47.i.lcssa to i32
  %.pre56.i = load i32, ptr %i.an, align 8, !tbaa !182
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.loopexit.i, %.lr.ph30.split.us.i
  %i.cp = phi i32 [ %i.au, %.lr.ph30.split.us.i ], [ %.pre56.i, %._crit_edge.us.loopexit.i ] ; 2 uses
  %.122.lcssa.us.i = phi i32 [ %.02126.us.i, %.lr.ph30.split.us.i ], [ %i.co, %._crit_edge.us.loopexit.i ] ; 2 uses
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next54.i, %i.cq
  br i1 %i.cr, label %.lr.ph30.split.us.i, label %_ZL21make_thread_local_indPK11PmeAtomCommiP12splinedata_t.exit, !llvm.loop !263

iter.check458:                                    ; preds = %.lr.ph30.split.us.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !183 ; 12 uses
  %i.cu = load ptr, ptr %i.at, align 8, !tbaa !183 ; 12 uses
  %i.cv = sext i32 %i.az to i64                   ; 8 uses
  %i.cw = sext i32 %.02126.us.i to i64            ; 7 uses
  %wide.trip.count51.i = sext i32 %i.ba to i64    ; 4 uses
  %i.cx = sub nsw i64 %wide.trip.count51.i, %i.cv ; 7 uses
  %min.iters.check441 = icmp ult i64 %i.cx, 8
  br i1 %min.iters.check441, label %vec.epilog.scalar.ph459.preheader, label %vector.memcheck438

vector.memcheck438:                               ; preds = %iter.check458
  %i.cy = ptrtoaddr ptr %i.cu to i64
  %i.cz = ptrtoaddr ptr %i.ct to i64
  %i.da = shl nsw i64 %i.cw, 2
  %i.db = add i64 %i.da, %i.cy
  %i.dc = shl nsw i64 %i.cv, 2
  %i.dd = add i64 %i.dc, %i.cz
  %i.de = sub i64 %i.dd, %i.db
  %diff.check439 = icmp ugt i64 %i.de, -128
  br i1 %diff.check439, label %vec.epilog.scalar.ph459.preheader, label %vector.main.loop.iter.check442

vector.main.loop.iter.check442:                   ; preds = %vector.memcheck438
  %min.iters.check443 = icmp ult i64 %i.cx, 32
  br i1 %min.iters.check443, label %vec.epilog.ph462, label %vector.ph444

vector.ph444:                                     ; preds = %vector.main.loop.iter.check442
  %i.df = and i64 %i.cx, 24
  %n.vec445 = and i64 %i.cx, -32                  ; 5 uses
  %i.dg = add nsw i64 %n.vec445, %i.cw            ; 2 uses
  %i.dh = add nsw i64 %n.vec445, %i.cv
  %invariant.gep541 = getelementptr [4 x i8], ptr %i.ct, i64 %i.cv
  %invariant.gep543 = getelementptr [4 x i8], ptr %i.cu, i64 %i.cw
  br label %vector.body446

vector.body446:                                   ; preds = %vector.body446, %vector.ph444
  %index447 = phi i64 [ 0, %vector.ph444 ], [ %index.next452, %vector.body446 ] ; 3 uses
  %gep542 = getelementptr [4 x i8], ptr %invariant.gep541, i64 %index447 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %gep542, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %gep542, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %gep542, i64 96
  %wide.load448 = load <8 x i32>, ptr %gep542, align 4, !tbaa !105
  %wide.load449 = load <8 x i32>, ptr %i.di, align 4, !tbaa !105
  %wide.load450 = load <8 x i32>, ptr %i.dj, align 4, !tbaa !105
  %wide.load451 = load <8 x i32>, ptr %i.dk, align 4, !tbaa !105
  %gep544 = getelementptr [4 x i8], ptr %invariant.gep543, i64 %index447 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %gep544, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %gep544, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %gep544, i64 96
  store <8 x i32> %wide.load448, ptr %gep544, align 4, !tbaa !105
  store <8 x i32> %wide.load449, ptr %i.dl, align 4, !tbaa !105
  store <8 x i32> %wide.load450, ptr %i.dm, align 4, !tbaa !105
  store <8 x i32> %wide.load451, ptr %i.dn, align 4, !tbaa !105
  %index.next452 = add nuw i64 %index447, 32      ; 2 uses
  %i.do = icmp eq i64 %index.next452, %n.vec445
  br i1 %i.do, label %middle.block453, label %vector.body446, !llvm.loop !264

middle.block453:                                  ; preds = %vector.body446
  %cmp.n454 = icmp eq i64 %i.cx, %n.vec445
  br i1 %cmp.n454, label %._crit_edge.us.loopexit.i, label %vec.epilog.iter.check460

vec.epilog.iter.check460:                         ; preds = %middle.block453
  %min.epilog.iters.check461 = icmp eq i64 %i.df, 0
  br i1 %min.epilog.iters.check461, label %vec.epilog.scalar.ph459.preheader, label %vec.epilog.ph462, !prof !192

vec.epilog.ph462:                                 ; preds = %vector.main.loop.iter.check442, %vec.epilog.iter.check460
  %vec.epilog.resume.val455 = phi i64 [ %n.vec445, %vec.epilog.iter.check460 ], [ 0, %vector.main.loop.iter.check442 ]
  %n.vec463 = and i64 %i.cx, -8                   ; 4 uses
  %i.dp = add nsw i64 %n.vec463, %i.cw            ; 2 uses
  %i.dq = add nsw i64 %n.vec463, %i.cv
  %invariant.gep545 = getelementptr [4 x i8], ptr %i.ct, i64 %i.cv
  %invariant.gep547 = getelementptr [4 x i8], ptr %i.cu, i64 %i.cw
  br label %vec.epilog.vector.body464

vec.epilog.vector.body464:                        ; preds = %vec.epilog.vector.body464, %vec.epilog.ph462
  %index465 = phi i64 [ %vec.epilog.resume.val455, %vec.epilog.ph462 ], [ %index.next467, %vec.epilog.vector.body464 ] ; 3 uses
  %gep546 = getelementptr [4 x i8], ptr %invariant.gep545, i64 %index465
  %wide.load466 = load <8 x i32>, ptr %gep546, align 4, !tbaa !105
  %gep548 = getelementptr [4 x i8], ptr %invariant.gep547, i64 %index465
  store <8 x i32> %wide.load466, ptr %gep548, align 4, !tbaa !105
  %index.next467 = add nuw i64 %index465, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next467, %n.vec463
  br i1 %i.dr, label %vec.epilog.middle.block468, label %vec.epilog.vector.body464, !llvm.loop !265

vec.epilog.middle.block468:                       ; preds = %vec.epilog.vector.body464
  %cmp.n469 = icmp eq i64 %i.cx, %n.vec463
  br i1 %cmp.n469, label %._crit_edge.us.loopexit.i, label %vec.epilog.scalar.ph459.preheader

vec.epilog.scalar.ph459.preheader:                ; preds = %vector.memcheck438, %iter.check458, %vec.epilog.iter.check460, %vec.epilog.middle.block468
  %indvars.iv46.i.ph = phi i64 [ %i.cw, %iter.check458 ], [ %i.cw, %vector.memcheck438 ], [ %i.dg, %vec.epilog.iter.check460 ], [ %i.dp, %vec.epilog.middle.block468 ] ; 2 uses
  %indvars.iv44.i.ph = phi i64 [ %i.cv, %iter.check458 ], [ %i.cv, %vector.memcheck438 ], [ %i.dh, %vec.epilog.iter.check460 ], [ %i.dq, %vec.epilog.middle.block468 ] ; 4 uses
  %i.ds = sub nsw i64 %wide.trip.count51.i, %indvars.iv44.i.ph
  %xtraiter519 = and i64 %i.ds, 7                 ; 2 uses
  %lcmp.mod520.not = icmp eq i64 %xtraiter519, 0
  br i1 %lcmp.mod520.not, label %vec.epilog.scalar.ph459.prol.loopexit, label %vec.epilog.scalar.ph459.prol

vec.epilog.scalar.ph459.prol:                     ; preds = %vec.epilog.scalar.ph459.preheader, %vec.epilog.scalar.ph459.prol
  %indvars.iv46.i.prol = phi i64 [ %indvars.iv.next47.i.prol, %vec.epilog.scalar.ph459.prol ], [ %indvars.iv46.i.ph, %vec.epilog.scalar.ph459.preheader ] ; 2 uses
  %indvars.iv44.i.prol = phi i64 [ %indvars.iv.next45.i.prol, %vec.epilog.scalar.ph459.prol ], [ %indvars.iv44.i.ph, %vec.epilog.scalar.ph459.preheader ] ; 2 uses
  %prol.iter521 = phi i64 [ %prol.iter521.next, %vec.epilog.scalar.ph459.prol ], [ 0, %vec.epilog.scalar.ph459.preheader ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv44.i.prol
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !105
  %indvars.iv.next47.i.prol = add nsw i64 %indvars.iv46.i.prol, 1 ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv46.i.prol
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !105
  %indvars.iv.next45.i.prol = add nsw i64 %indvars.iv44.i.prol, 1 ; 2 uses
  %prol.iter521.next = add i64 %prol.iter521, 1   ; 2 uses
  %prol.iter521.cmp.not = icmp eq i64 %prol.iter521.next, %xtraiter519
  br i1 %prol.iter521.cmp.not, label %vec.epilog.scalar.ph459.prol.loopexit, label %vec.epilog.scalar.ph459.prol, !llvm.loop !266

vec.epilog.scalar.ph459.prol.loopexit:            ; preds = %vec.epilog.scalar.ph459.prol, %vec.epilog.scalar.ph459.preheader
  %indvars.iv.next47.i.lcssa516.unr = phi i64 [ poison, %vec.epilog.scalar.ph459.preheader ], [ %indvars.iv.next47.i.prol, %vec.epilog.scalar.ph459.prol ]
  %indvars.iv46.i.unr = phi i64 [ %indvars.iv46.i.ph, %vec.epilog.scalar.ph459.preheader ], [ %indvars.iv.next47.i.prol, %vec.epilog.scalar.ph459.prol ]
  %indvars.iv44.i.unr = phi i64 [ %indvars.iv44.i.ph, %vec.epilog.scalar.ph459.preheader ], [ %indvars.iv.next45.i.prol, %vec.epilog.scalar.ph459.prol ]
  %i.dw = sub nsw i64 %indvars.iv44.i.ph, %wide.trip.count51.i
  %i.dx = icmp ugt i64 %i.dw, -8
  br i1 %i.dx, label %._crit_edge.us.loopexit.i, label %vec.epilog.scalar.ph459

.lr.ph30.split.i:                                 ; preds = %.lr.ph30.i, %._crit_edge.i
  %i.dy = phi i32 [ %i.gs, %._crit_edge.i ], [ %i.ao, %.lr.ph30.i ]
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %._crit_edge.i ], [ 0, %.lr.ph30.i ] ; 2 uses
  %.02126.i = phi i32 [ %.122.lcssa.i, %._crit_edge.i ], [ 0, %.lr.ph30.i ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [56 x i8], ptr %i.ar, i64 %indvars.iv40.i ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !186
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %indvars.iv
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !105 ; 4 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %iter.check491, label %._crit_edge.i

iter.check491:                                    ; preds = %.lr.ph30.split.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !183 ; 12 uses
  %i.eg = load ptr, ptr %i.at, align 8, !tbaa !183 ; 12 uses
  %i.eh = sext i32 %.02126.i to i64               ; 7 uses
  %wide.trip.count.i = zext nneg i32 %i.ec to i64 ; 8 uses
  %min.iters.check475 = icmp ult i32 %i.ec, 8
  br i1 %min.iters.check475, label %vec.epilog.scalar.ph492.preheader, label %vector.memcheck472

vector.memcheck472:                               ; preds = %iter.check491
  %i.ei = ptrtoaddr ptr %i.eg to i64
  %i.ej = ptrtoaddr ptr %i.ef to i64
  %i.ek = shl nsw i64 %i.eh, 2
  %i.el = add i64 %i.ek, %i.ei
  %i.em = sub i64 %i.ej, %i.el
  %diff.check473 = icmp ugt i64 %i.em, -128
  br i1 %diff.check473, label %vec.epilog.scalar.ph492.preheader, label %vector.main.loop.iter.check476

vector.main.loop.iter.check476:                   ; preds = %vector.memcheck472
  %min.iters.check477 = icmp ult i32 %i.ec, 32
  br i1 %min.iters.check477, label %vec.epilog.ph495, label %vector.ph478

vector.ph478:                                     ; preds = %vector.main.loop.iter.check476
  %i.en = and i64 %wide.trip.count.i, 24
  %n.vec479 = and i64 %wide.trip.count.i, 2147483616 ; 5 uses
  %i.eo = add nsw i64 %n.vec479, %i.eh            ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.eg, i64 %i.eh
  br label %vector.body480

vector.body480:                                   ; preds = %vector.body480, %vector.ph478
  %index481 = phi i64 [ 0, %vector.ph478 ], [ %index.next486, %vector.body480 ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %index481 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 96
  %wide.load482 = load <8 x i32>, ptr %i.ep, align 4, !tbaa !105
  %wide.load483 = load <8 x i32>, ptr %i.eq, align 4, !tbaa !105
  %wide.load484 = load <8 x i32>, ptr %i.er, align 4, !tbaa !105
  %wide.load485 = load <8 x i32>, ptr %i.es, align 4, !tbaa !105
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index481 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.ev = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x i32> %wide.load482, ptr %gep, align 4, !tbaa !105
  store <8 x i32> %wide.load483, ptr %i.et, align 4, !tbaa !105
  store <8 x i32> %wide.load484, ptr %i.eu, align 4, !tbaa !105
  store <8 x i32> %wide.load485, ptr %i.ev, align 4, !tbaa !105
  %index.next486 = add nuw i64 %index481, 32      ; 2 uses
  %i.ew = icmp eq i64 %index.next486, %n.vec479
  br i1 %i.ew, label %middle.block487, label %vector.body480, !llvm.loop !267

middle.block487:                                  ; preds = %vector.body480
  %cmp.n488 = icmp eq i64 %n.vec479, %wide.trip.count.i
  br i1 %cmp.n488, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check493

vec.epilog.iter.check493:                         ; preds = %middle.block487
  %min.epilog.iters.check494 = icmp eq i64 %i.en, 0
  br i1 %min.epilog.iters.check494, label %vec.epilog.scalar.ph492.preheader, label %vec.epilog.ph495, !prof !192

vec.epilog.ph495:                                 ; preds = %vector.main.loop.iter.check476, %vec.epilog.iter.check493
  %vec.epilog.resume.val489 = phi i64 [ %n.vec479, %vec.epilog.iter.check493 ], [ 0, %vector.main.loop.iter.check476 ]
  %n.vec496 = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.ex = add nsw i64 %n.vec496, %i.eh            ; 2 uses
  %invariant.gep539 = getelementptr [4 x i8], ptr %i.eg, i64 %i.eh
  br label %vec.epilog.vector.body497

vec.epilog.vector.body497:                        ; preds = %vec.epilog.vector.body497, %vec.epilog.ph495
  %index498 = phi i64 [ %vec.epilog.resume.val489, %vec.epilog.ph495 ], [ %index.next500, %vec.epilog.vector.body497 ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %index498
  %wide.load499 = load <8 x i32>, ptr %i.ey, align 4, !tbaa !105
  %gep540 = getelementptr [4 x i8], ptr %invariant.gep539, i64 %index498
  store <8 x i32> %wide.load499, ptr %gep540, align 4, !tbaa !105
  %index.next500 = add nuw i64 %index498, 8       ; 2 uses
  %i.ez = icmp eq i64 %index.next500, %n.vec496
  br i1 %i.ez, label %vec.epilog.middle.block501, label %vec.epilog.vector.body497, !llvm.loop !268

vec.epilog.middle.block501:                       ; preds = %vec.epilog.vector.body497
  %cmp.n502 = icmp eq i64 %n.vec496, %wide.trip.count.i
  br i1 %cmp.n502, label %._crit_edge.loopexit.i, label %vec.epilog.scalar.ph492.preheader

vec.epilog.scalar.ph492.preheader:                ; preds = %vector.memcheck472, %iter.check491, %vec.epilog.iter.check493, %vec.epilog.middle.block501
  %indvars.iv35.i.ph = phi i64 [ %i.eh, %iter.check491 ], [ %i.eh, %vector.memcheck472 ], [ %i.eo, %vec.epilog.iter.check493 ], [ %i.ex, %vec.epilog.middle.block501 ] ; 2 uses
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check491 ], [ 0, %vector.memcheck472 ], [ %n.vec479, %vec.epilog.iter.check493 ], [ %n.vec496, %vec.epilog.middle.block501 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph492.prol.loopexit, label %vec.epilog.scalar.ph492.prol

vec.epilog.scalar.ph492.prol:                     ; preds = %vec.epilog.scalar.ph492.preheader, %vec.epilog.scalar.ph492.prol
  %indvars.iv35.i.prol = phi i64 [ %indvars.iv.next36.i.prol, %vec.epilog.scalar.ph492.prol ], [ %indvars.iv35.i.ph, %vec.epilog.scalar.ph492.preheader ] ; 2 uses
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph492.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph492.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph492.prol ], [ 0, %vec.epilog.scalar.ph492.preheader ]
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i.prol
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !105
  %indvars.iv.next36.i.prol = add nsw i64 %indvars.iv35.i.prol, 1 ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv35.i.prol
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !105
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph492.prol.loopexit, label %vec.epilog.scalar.ph492.prol, !llvm.loop !269

vec.epilog.scalar.ph492.prol.loopexit:            ; preds = %vec.epilog.scalar.ph492.prol, %vec.epilog.scalar.ph492.preheader
  %indvars.iv.next36.i.lcssa515.unr = phi i64 [ poison, %vec.epilog.scalar.ph492.preheader ], [ %indvars.iv.next36.i.prol, %vec.epilog.scalar.ph492.prol ]
  %indvars.iv35.i.unr = phi i64 [ %indvars.iv35.i.ph, %vec.epilog.scalar.ph492.preheader ], [ %indvars.iv.next36.i.prol, %vec.epilog.scalar.ph492.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph492.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph492.prol ]
  %i.fd = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.fe = icmp ugt i64 %i.fd, -8
  br i1 %i.fe, label %._crit_edge.loopexit.i, label %vec.epilog.scalar.ph492

vec.epilog.scalar.ph492:                          ; preds = %vec.epilog.scalar.ph492.prol.loopexit, %vec.epilog.scalar.ph492
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.7, %vec.epilog.scalar.ph492 ], [ %indvars.iv35.i.unr, %vec.epilog.scalar.ph492.prol.loopexit ] ; 9 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %vec.epilog.scalar.ph492 ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph492.prol.loopexit ] ; 9 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !105
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !105
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !105
  %i.fl = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  %i.fm = getelementptr i8, ptr %i.fl, i64 4
  store i32 %i.fk, ptr %i.fm, align 4, !tbaa !105
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !105
  %i.fq = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  %i.fr = getelementptr i8, ptr %i.fq, i64 8
  store i32 %i.fp, ptr %i.fr, align 4, !tbaa !105
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !105
  %i.fv = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  %i.fw = getelementptr i8, ptr %i.fv, i64 12
  store i32 %i.fu, ptr %i.fw, align 4, !tbaa !105
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !105
  %i.ga = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  %i.gb = getelementptr i8, ptr %i.ga, i64 16
  store i32 %i.fz, ptr %i.gb, align 4, !tbaa !105
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 20
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !105
  %i.gf = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  %i.gg = getelementptr i8, ptr %i.gf, i64 20
  store i32 %i.ge, ptr %i.gg, align 4, !tbaa !105
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !105
  %i.gk = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  %i.gl = getelementptr i8, ptr %i.gk, i64 24
  store i32 %i.gj, ptr %i.gl, align 4, !tbaa !105
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 28
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !105
  %indvars.iv.next36.i.7 = add nsw i64 %indvars.iv35.i, 8 ; 2 uses
  %i.gp = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv35.i
  %i.gq = getelementptr i8, ptr %i.gp, i64 28
  store i32 %i.go, ptr %i.gq, align 4, !tbaa !105
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %._crit_edge.loopexit.i, label %vec.epilog.scalar.ph492, !llvm.loop !270

._crit_edge.loopexit.i:                           ; preds = %vec.epilog.scalar.ph492.prol.loopexit, %vec.epilog.scalar.ph492, %vec.epilog.middle.block501, %middle.block487
  %indvars.iv.next36.i.lcssa = phi i64 [ %i.ex, %vec.epilog.middle.block501 ], [ %i.eo, %middle.block487 ], [ %indvars.iv.next36.i.lcssa515.unr, %vec.epilog.scalar.ph492.prol.loopexit ], [ %indvars.iv.next36.i.7, %vec.epilog.scalar.ph492 ]
  %i.gr = trunc nsw i64 %indvars.iv.next36.i.lcssa to i32
  %.pre.i = load i32, ptr %i.an, align 8, !tbaa !182
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph30.split.i
  %i.gs = phi i32 [ %i.dy, %.lr.ph30.split.i ], [ %.pre.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.122.lcssa.i = phi i32 [ %.02126.i, %.lr.ph30.split.i ], [ %i.gr, %._crit_edge.loopexit.i ] ; 2 uses
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %i.gt = sext i32 %i.gs to i64
  %i.gu = icmp slt i64 %indvars.iv.next41.i, %i.gt
  br i1 %i.gu, label %.lr.ph30.split.i, label %_ZL21make_thread_local_indPK11PmeAtomCommiP12splinedata_t.exit, !llvm.loop !263

_ZL21make_thread_local_indPK11PmeAtomCommiP12splinedata_t.exit: ; preds = %._crit_edge.i, %._crit_edge.us.i, %bb.h
  %.021.lcssa.i = phi i32 [ 0, %bb.h ], [ %.122.lcssa.us.i, %._crit_edge.us.i ], [ %.122.lcssa.i, %._crit_edge.i ] ; 2 uses
  store i32 %.021.lcssa.i, ptr %i.ah, align 8, !tbaa !329
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %_ZL21make_thread_local_indPK11PmeAtomCommiP12splinedata_t.exit, %bb.e
  %i.gv = phi i32 [ %i.ae, %bb.e ], [ %i.am, %bb.g ], [ %.021.lcssa.i, %_ZL21make_thread_local_indPK11PmeAtomCommiP12splinedata_t.exit ] ; 4 uses
  %i.gw = phi ptr [ %i.aa, %bb.e ], [ %.pre83, %bb.g ], [ %.pre83, %_ZL21make_thread_local_indPK11PmeAtomCommiP12splinedata_t.exit ] ; 2 uses
  %.035 = phi ptr [ %i.ac, %bb.e ], [ %i.ah, %bb.g ], [ %i.ah, %_ZL21make_thread_local_indPK11PmeAtomCommiP12splinedata_t.exit ] ; 22 uses
  %i.gx = load i8, ptr %6, align 1, !tbaa !17, !range !106, !noundef !107
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %bb.j, label %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit

bb.j:                                             ; preds = %bb.i
  %i.gz = getelementptr inbounds nuw i8, ptr %.035, i64 32 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.035, i64 128 ; 3 uses
  %i.hb = load ptr, ptr %4, align 8, !tbaa !11
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 112
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !330 ; 18 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gw, i64 288
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !188 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.035, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !183 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gw, i64 152
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !331 ; 3 uses
  %i.hk = load i8, ptr %7, align 1, !tbaa !17, !range !106, !noundef !107
  %i.hl = trunc nuw i8 %i.hk to i1                ; 3 uses
  %i.hm = icmp sgt i32 %i.gv, 0
  br i1 %i.hm, label %.lr.ph272.i, label %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit

.lr.ph272.i:                                      ; preds = %bb.j
  %i.hn = add i32 %i.hd, -1                       ; 3 uses
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ho ; 11 uses
  %i.hq = icmp sgt i32 %i.hd, 3                   ; 3 uses
  %i.hr = icmp sgt i32 %i.hd, 1                   ; 3 uses
  %i.hs = sitofp i32 %i.hn to double
  %i.ht = fdiv double 1.000000e+00, %i.hs
  %i.hu = fptrunc double %i.ht to float           ; 18 uses
  %i.hv = sext i32 %i.hd to i64                   ; 8 uses
  %i.hw = getelementptr [4 x i8], ptr %i.d, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hw, i64 -8     ; 6 uses
  %i.hy = icmp sgt i32 %i.hd, 2                   ; 3 uses
  %i.hz = icmp sgt i32 %i.hd, 0                   ; 3 uses
  switch i32 %i.hd, label %.lr.ph272.split.preheader.i [
    i32 4, label %.lr.ph272.split.us.preheader.i
    i32 5, label %.lr.ph272.split.us274.preheader.i
  ]

.lr.ph272.split.us274.preheader.i:                ; preds = %.lr.ph272.i
  %wide.trip.count.i37 = zext nneg i32 %i.gv to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %.035, i64 136
  %i.ib = getelementptr inbounds nuw i8, ptr %.035, i64 40
  %i.ic = getelementptr inbounds nuw i8, ptr %.035, i64 144
  %i.id = getelementptr inbounds nuw i8, ptr %.035, i64 48
  br label %.lr.ph272.split.us274.i

.lr.ph272.split.us.preheader.i:                   ; preds = %.lr.ph272.i
  %wide.trip.count316.i = zext nneg i32 %i.gv to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %.035, i64 136
  %i.if = getelementptr inbounds nuw i8, ptr %.035, i64 40
  %i.ig = getelementptr inbounds nuw i8, ptr %.035, i64 144
  %i.ih = getelementptr inbounds nuw i8, ptr %.035, i64 48
  br label %.lr.ph272.split.us.i

.lr.ph272.split.preheader.i:                      ; preds = %.lr.ph272.i
  %i.ii = zext i32 %i.hd to i64                   ; 15 uses
  %i.ij = shl nuw nsw i64 %i.ii, 2                ; 3 uses
  %wide.trip.count355.i = zext nneg i32 %i.gv to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %.035, i64 136 ; 2 uses
  %wide.trip.count342.i = zext i32 %i.hn to i64   ; 6 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.035, i64 144 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.035, i64 40
  %i.in = getelementptr inbounds nuw i8, ptr %.035, i64 48
  %i.io = shl nuw nsw i64 %i.ii, 2                ; 4 uses
  %scevgep184 = getelementptr i8, ptr %i.d, i64 %i.io ; 3 uses
  %i.ip = add nsw i64 %i.ii, -1                   ; 15 uses
  %min.iters.check377 = icmp ult i32 %i.hd, 9
  %min.iters.check379 = icmp ult i32 %i.hd, 33
  %i.iq = and i64 %i.ip, 24
  %n.vec381 = and i64 %i.ip, -32                  ; 4 uses
  %i.ir = or disjoint i64 %n.vec381, 1
  %cmp.n394 = icmp eq i64 %i.ip, %n.vec381
  %min.epilog.iters.check400 = icmp eq i64 %i.iq, 0
  %n.vec402 = and i64 %i.ip, -8                   ; 3 uses
  %i.is = or disjoint i64 %n.vec402, 1
  %cmp.n409 = icmp eq i64 %i.ip, %n.vec402
  %i.it = add nsw i64 %wide.trip.count342.i, -1   ; 3 uses
  %min.iters.check344 = icmp ult i64 %i.it, 8
  %n.vec346 = and i64 %i.it, -8                   ; 3 uses
  %i.iu = or disjoint i64 %n.vec346, 1
  %broadcast.splatinsert349 = insertelement <8 x i64> poison, i64 %i.hv, i64 0
  %broadcast.splat350 = shufflevector <8 x i64> %broadcast.splatinsert349, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert351 = insertelement <8 x float> poison, float %i.hu, i64 0
  %i.iv = shufflevector <8 x float> %broadcast.splatinsert351, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n366 = icmp eq i64 %i.it, %n.vec346
  %min.iters.check282 = icmp ult i32 %i.hd, 9
  %min.iters.check284 = icmp ult i32 %i.hd, 33
  %i.iw = and i64 %i.ip, 24
  %n.vec286 = and i64 %i.ip, -32                  ; 4 uses
  %i.ix = or disjoint i64 %n.vec286, 1
  %cmp.n299 = icmp eq i64 %i.ip, %n.vec286
  %min.epilog.iters.check305 = icmp eq i64 %i.iw, 0
  %n.vec307 = and i64 %i.ip, -8                   ; 3 uses
  %i.iy = or disjoint i64 %n.vec307, 1
  %cmp.n314 = icmp eq i64 %i.ip, %n.vec307
  %i.iz = add nsw i64 %wide.trip.count342.i, -1   ; 3 uses
end_hunk_0
