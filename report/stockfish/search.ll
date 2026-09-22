Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/search?download=true
inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN9Stockfish6Search6Worker19iterative_deepeningEv:iter.check
  store <32 x i16> splat (i16 97), ptr %i.kz, align 64, !tbaa !147
  store <32 x i16> splat (i16 97), ptr %i.la, align 64, !tbaa !147
  store <32 x i16> splat (i16 97), ptr %i.lb, align 64, !tbaa !147
  %index.next502.7 = add nuw nsw i64 %index501, 1024 ; 2 uses
  %i.lc = icmp eq i64 %index.next502.7, 65536
  br i1 %i.lc, label %vector.body505, label %vector.body500, !llvm.loop !455

vector.body505:                                   ; preds = %vector.body500, %vector.body505
  %index506 = phi i64 [ %index.next507.3, %vector.body505 ], [ 0, %vector.body500 ] ; 5 uses
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index506 ; 2 uses
  %wide.load = load <32 x i16>, ptr %i.ld, align 64, !tbaa !147
  %i.le = sext <32 x i16> %wide.load to <32 x i32>
  %i.lf = mul nsw <32 x i32> %i.le, splat (i32 3)
  %i.lg = add nsw <32 x i32> %i.lf, splat (i32 -204)
  %i.lh = sdiv <32 x i32> %i.lg, splat (i32 4)
  %i.li = trunc nsw <32 x i32> %i.lh to <32 x i16>
  %i.lj = add nsw <32 x i16> %i.li, splat (i16 68)
  store <32 x i16> %i.lj, ptr %i.ld, align 64, !tbaa !147
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index506
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 64 ; 2 uses
  %wide.load.1 = load <32 x i16>, ptr %i.ll, align 64, !tbaa !147
  %i.lm = sext <32 x i16> %wide.load.1 to <32 x i32>
  %i.ln = mul nsw <32 x i32> %i.lm, splat (i32 3)
  %i.lo = add nsw <32 x i32> %i.ln, splat (i32 -204)
  %i.lp = sdiv <32 x i32> %i.lo, splat (i32 4)
  %i.lq = trunc nsw <32 x i32> %i.lp to <32 x i16>
  %i.lr = add nsw <32 x i16> %i.lq, splat (i16 68)
  store <32 x i16> %i.lr, ptr %i.ll, align 64, !tbaa !147
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index506
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 128 ; 2 uses
  %wide.load.2 = load <32 x i16>, ptr %i.lt, align 64, !tbaa !147
  %i.lu = sext <32 x i16> %wide.load.2 to <32 x i32>
  %i.lv = mul nsw <32 x i32> %i.lu, splat (i32 3)
  %i.lw = add nsw <32 x i32> %i.lv, splat (i32 -204)
  %i.lx = sdiv <32 x i32> %i.lw, splat (i32 4)
  %i.ly = trunc nsw <32 x i32> %i.lx to <32 x i16>
  %i.lz = add nsw <32 x i16> %i.ly, splat (i16 68)
  store <32 x i16> %i.lz, ptr %i.lt, align 64, !tbaa !147
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index506
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 192 ; 2 uses
  %wide.load.3 = load <32 x i16>, ptr %i.mb, align 64, !tbaa !147
  %i.mc = sext <32 x i16> %wide.load.3 to <32 x i32>
  %i.md = mul nsw <32 x i32> %i.mc, splat (i32 3)
  %i.me = add nsw <32 x i32> %i.md, splat (i32 -204)
  %i.mf = sdiv <32 x i32> %i.me, splat (i32 4)
  %i.mg = trunc nsw <32 x i32> %i.mf to <32 x i16>
  %i.mh = add nsw <32 x i16> %i.mg, splat (i16 68)
  store <32 x i16> %i.mh, ptr %i.mb, align 64, !tbaa !147
  %index.next507.3 = add nuw nsw i64 %index506, 128 ; 2 uses
  %i.mi = icmp eq i64 %index.next507.3, 65536
  br i1 %i.mi, label %middle.block508, label %vector.body505, !llvm.loop !456

.lr.ph393:                                        ; preds = %middle.block514
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 11422208 ; 17 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 11419748
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 11419792 ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 11419784 ; 6 uses
  %.not397 = icmp eq i64 %.sroa.speculated305, 0
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 11419824
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 11419832 ; 2 uses
  %i.mp = zext i8 %i.k to i64
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.mp
  %i.mr = xor i8 %i.k, 1
  %i.ms = zext i8 %i.mr to i64
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 11421112
  %i.mv = icmp eq i64 %.sroa.speculated305, 1
  %or.cond3 = select i1 %i.an, i1 %i.mv, i1 false
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 11419800 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 11422216 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 11421108 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 11419752
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 11419688
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 11419696
  %i.nd = getelementptr inbounds nuw i8, ptr %i.al, i64 96 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.e, i64 92
  %i.nf = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.nh = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.al, i64 60
  br label %bb.f

middle.block508:                                  ; preds = %vector.body505
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 131072 ; 4 uses
  br label %vector.body510

vector.body510:                                   ; preds = %vector.body510, %middle.block508
  %index511 = phi i64 [ 0, %middle.block508 ], [ %index.next513.3, %vector.body510 ] ; 5 uses
  %i.nk = getelementptr inbounds nuw [2 x i8], ptr %i.nj, i64 %index511 ; 2 uses
  %wide.load512 = load <32 x i16>, ptr %i.nk, align 64, !tbaa !147
  %i.nl = sext <32 x i16> %wide.load512 to <32 x i32>
  %i.nm = mul nsw <32 x i32> %i.nl, splat (i32 3)
  %i.nn = add nsw <32 x i32> %i.nm, splat (i32 -204)
  %i.no = sdiv <32 x i32> %i.nn, splat (i32 4)
  %i.np = trunc nsw <32 x i32> %i.no to <32 x i16>
  %i.nq = add nsw <32 x i16> %i.np, splat (i16 68)
  store <32 x i16> %i.nq, ptr %i.nk, align 64, !tbaa !147
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %i.nj, i64 %index511
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 64 ; 2 uses
  %wide.load512.1 = load <32 x i16>, ptr %i.ns, align 64, !tbaa !147
  %i.nt = sext <32 x i16> %wide.load512.1 to <32 x i32>
  %i.nu = mul nsw <32 x i32> %i.nt, splat (i32 3)
  %i.nv = add nsw <32 x i32> %i.nu, splat (i32 -204)
  %i.nw = sdiv <32 x i32> %i.nv, splat (i32 4)
  %i.nx = trunc nsw <32 x i32> %i.nw to <32 x i16>
  %i.ny = add nsw <32 x i16> %i.nx, splat (i16 68)
  store <32 x i16> %i.ny, ptr %i.ns, align 64, !tbaa !147
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %i.nj, i64 %index511
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 128 ; 2 uses
  %wide.load512.2 = load <32 x i16>, ptr %i.oa, align 64, !tbaa !147
  %i.ob = sext <32 x i16> %wide.load512.2 to <32 x i32>
  %i.oc = mul nsw <32 x i32> %i.ob, splat (i32 3)
  %i.od = add nsw <32 x i32> %i.oc, splat (i32 -204)
  %i.oe = sdiv <32 x i32> %i.od, splat (i32 4)
  %i.of = trunc nsw <32 x i32> %i.oe to <32 x i16>
  %i.og = add nsw <32 x i16> %i.of, splat (i16 68)
  store <32 x i16> %i.og, ptr %i.oa, align 64, !tbaa !147
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %i.nj, i64 %index511
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 192 ; 2 uses
  %wide.load512.3 = load <32 x i16>, ptr %i.oi, align 64, !tbaa !147
  %i.oj = sext <32 x i16> %wide.load512.3 to <32 x i32>
  %i.ok = mul nsw <32 x i32> %i.oj, splat (i32 3)
  %i.ol = add nsw <32 x i32> %i.ok, splat (i32 -204)
  %i.om = sdiv <32 x i32> %i.ol, splat (i32 4)
  %i.on = trunc nsw <32 x i32> %i.om to <32 x i16>
  %i.oo = add nsw <32 x i16> %i.on, splat (i16 68)
  store <32 x i16> %i.oo, ptr %i.oi, align 64, !tbaa !147
  %index.next513.3 = add nuw nsw i64 %index511, 128 ; 2 uses
  %i.op = icmp eq i64 %index.next513.3, 65536
  br i1 %i.op, label %middle.block514, label %vector.body510, !llvm.loop !457

middle.block514:                                  ; preds = %vector.body510
  %i.oq = fcmp olt double %i.cs, 2.000000e+01
  %.sroa.speculated311 = call i64 @llvm.umax.i64(i64 %i.bb, i64 4)
  %.0337 = select i1 %i.oq, i64 %.sroa.speculated311, i64 %i.bb
  %i.or = ptrtoint ptr %i.dd to i64
  %i.os = ptrtoint ptr %i.de to i64
  %i.ot = sub i64 %i.or, %i.os
  %i.ou = sdiv exact i64 %i.ot, 72
  %.sroa.speculated305 = call i64 @llvm.umin.i64(i64 %i.ou, i64 %.0337) ; 6 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 11421104 ; 11 uses
  %i.ow = load i32, ptr %i.ov, align 16, !tbaa !253 ; 2 uses
  %i.ox = add nsw i32 %i.ow, 1
  store i32 %i.ox, ptr %i.ov, align 16, !tbaa !253
  %i.oy = icmp slt i32 %i.ow, 245
  br i1 %i.oy, label %.lr.ph393, label %.critedge

bb.f:                                             ; preds = %.lr.ph393, %bb.br
  %.0391 = phi i32 [ 0, %.lr.ph393 ], [ %.1, %bb.br ] ; 2 uses
  %.0129390 = phi i32 [ -32001, %.lr.ph393 ], [ %.1130, %bb.br ] ; 4 uses
  %.0133389 = phi i32 [ -32001, %.lr.ph393 ], [ %.2135, %bb.br ]
  %.0136388 = phi double [ 1.000000e+00, %.lr.ph393 ], [ %.2138, %bb.br ] ; 6 uses
  %.0139387 = phi double [ 0.000000e+00, %.lr.ph393 ], [ %.3, %bb.br ] ; 2 uses
  %.0149386 = phi i32 [ 0, %.lr.ph393 ], [ %.1150, %bb.br ] ; 4 uses
  %.0155385 = phi i32 [ 0, %.lr.ph393 ], [ %spec.select195, %bb.br ]
  %i.oz = load ptr, ptr %i.mj, align 64, !tbaa !222, !nonnull !72, !align !73
  %i.pa = load atomic i8, ptr %i.oz seq_cst, align 8, !range !223, !noundef !72
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.pc = load i32, ptr %i.mk, align 4, !tbaa !230 ; 2 uses
  %i.pd = icmp ne i32 %i.pc, 0
  %or.cond = and i1 %i.an, %i.pd
  br i1 %or.cond, label %bb.h, label %.critedge194

bb.h:                                             ; preds = %bb.g
  %i.pe = load i32, ptr %i.ov, align 16, !tbaa !253
  %.not349 = icmp sgt i32 %i.pe, %i.pc
  br i1 %.not349, label %.critedge.thread, label %.critedge194

.critedge194:                                     ; preds = %bb.g, %bb.h
  %i.pf = fmul double %.0139387, 5.000000e-01     ; 2 uses
  %i.pg = load ptr, ptr %i.db, align 8, !tbaa !180 ; 7 uses
  %i.ph = load ptr, ptr %i.dc, align 32, !tbaa !180 ; 3 uses
  %.not350369 = icmp eq ptr %i.pg, %i.ph
  br i1 %.not350369, label %._crit_edge, label %iter.check526

iter.check526:                                    ; preds = %.critedge194
  %i.pi = ptrtoaddr ptr %i.ph to i64
  %i.pj = ptrtoaddr ptr %i.pg to i64
  %i.pk = add i64 %i.pi, -72
  %i.pl = sub i64 %i.pk, %i.pj                    ; 3 uses
  %i.pm = udiv i64 %i.pl, 72
  %i.pn = add nuw nsw i64 %i.pm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.pl, 504
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check515

vector.main.loop.iter.check515:                   ; preds = %iter.check526
  %min.iters.check516 = icmp ult i64 %i.pl, 1080
  br i1 %min.iters.check516, label %vec.epilog.ph529, label %vector.ph517

vector.ph517:                                     ; preds = %vector.main.loop.iter.check515
  %i.po = and i64 %i.pn, 8
  %n.vec = and i64 %i.pn, 576460752303423472      ; 4 uses
  %i.pp = mul i64 %n.vec, 72
  %i.pq = getelementptr i8, ptr %i.pg, i64 %i.pp  ; 2 uses
  br label %vector.body518

vector.body518:                                   ; preds = %vector.ph517, %vector.body518
  %index519 = phi i64 [ 0, %vector.ph517 ], [ %index.next522, %vector.body518 ]
  %pointer.phi = phi ptr [ %i.pg, %vector.ph517 ], [ %ptr.ind, %vector.body518 ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <16 x i64> <i64 0, i64 72, i64 144, i64 216, i64 288, i64 360, i64 432, i64 504, i64 576, i64 648, i64 720, i64 792, i64 864, i64 936, i64 1008, i64 1080> ; 2 uses
  %wide.gep520 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 8
  %wide.masked.gather = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %wide.gep520, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !237
  %wide.gep521 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 12
  call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %wide.masked.gather, <16 x ptr> align 4 %wide.gep521, <16 x i1> splat (i1 true)), !tbaa !465
  %index.next522 = add nuw i64 %index519, 16      ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 1152
  %i.pr = icmp eq i64 %index.next522, %n.vec
  br i1 %i.pr, label %middle.block523, label %vector.body518, !llvm.loop !458

middle.block523:                                  ; preds = %vector.body518
  %cmp.n = icmp eq i64 %i.pn, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check528

vec.epilog.iter.check528:                         ; preds = %middle.block523
  %min.epilog.iters.check.not.not = icmp eq i64 %i.po, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph529, !prof !466

vec.epilog.ph529:                                 ; preds = %vector.main.loop.iter.check515, %vec.epilog.iter.check528
  %vec.epilog.resume.val524 = phi i64 [ %n.vec, %vec.epilog.iter.check528 ], [ 0, %vector.main.loop.iter.check515 ]
  %bc.resume.val525 = phi ptr [ %i.pq, %vec.epilog.iter.check528 ], [ %i.pg, %vector.main.loop.iter.check515 ]
  %n.vec530 = and i64 %i.pn, 576460752303423480   ; 3 uses
  %i.ps = mul i64 %n.vec530, 72
  %i.pt = getelementptr i8, ptr %i.pg, i64 %i.ps
  br label %vec.epilog.vector.body531

vec.epilog.vector.body531:                        ; preds = %vec.epilog.vector.body531, %vec.epilog.ph529
  %index532 = phi i64 [ %vec.epilog.resume.val524, %vec.epilog.ph529 ], [ %index.next538, %vec.epilog.vector.body531 ]
  %pointer.phi533 = phi ptr [ %bc.resume.val525, %vec.epilog.ph529 ], [ %ptr.ind539, %vec.epilog.vector.body531 ] ; 2 uses
  %vector.gep534 = getelementptr i8, ptr %pointer.phi533, <8 x i64> <i64 0, i64 72, i64 144, i64 216, i64 288, i64 360, i64 432, i64 504> ; 2 uses
  %wide.gep535 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep534, i64 8
  %wide.masked.gather536 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep535, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !237
  %wide.gep537 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep534, i64 12
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %wide.masked.gather536, <8 x ptr> align 4 %wide.gep537, <8 x i1> splat (i1 true)), !tbaa !465
  %index.next538 = add nuw i64 %index532, 8       ; 2 uses
  %ptr.ind539 = getelementptr i8, ptr %pointer.phi533, i64 576
  %i.pu = icmp eq i64 %index.next538, %n.vec530
  br i1 %i.pu, label %vec.epilog.middle.block540, label %vec.epilog.vector.body531, !llvm.loop !459

vec.epilog.middle.block540:                       ; preds = %vec.epilog.vector.body531
  %cmp.n541 = icmp eq i64 %i.pn, %n.vec530
  br i1 %cmp.n541, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check526, %vec.epilog.iter.check528, %vec.epilog.middle.block540
  %.sroa.0296.0370.ph = phi ptr [ %i.pg, %iter.check526 ], [ %i.pq, %vec.epilog.iter.check528 ], [ %i.pt, %vec.epilog.middle.block540 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block523, %vec.epilog.middle.block540, %.critedge194
  store i64 0, ptr %i.ml, align 16, !tbaa !254
  %i.pv = load ptr, ptr %i.mj, align 64, !tbaa !222, !nonnull !72, !align !73
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 2
  %i.px = load atomic i8, ptr %i.pw seq_cst, align 2, !range !223, !noundef !72
  %i.py = xor i8 %i.px, 1
  %i.pz = zext nneg i8 %i.py to i32
  %spec.select195 = add nuw nsw i32 %.0155385, %i.pz ; 2 uses
  store i64 0, ptr %i.mm, align 8, !tbaa !255
  br i1 %.not397, label %._crit_edge375, label %.lr.ph374

.lr.ph374:                                        ; preds = %._crit_edge
  %i.qa = mul i32 %spec.select195, 3
  %i.qb = add i32 %i.qa, 3
  %.neg = sdiv i32 %i.qb, -4
  br label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0296.0370 = phi ptr [ %i.qf, %.lr.ph ], [ %.sroa.0296.0370.ph, %.lr.ph.preheader ] ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.0296.0370, i64 8
  %i.qd = load i32, ptr %i.qc, align 8, !tbaa !237
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.0296.0370, i64 12
  store i32 %i.qd, ptr %i.qe, align 4, !tbaa !465
  %i.qf = getelementptr inbounds nuw i8, ptr %.sroa.0296.0370, i64 72 ; 2 uses
  %.not350 = icmp eq ptr %i.qf, %i.ph
  br i1 %.not350, label %._crit_edge, label %.lr.ph, !llvm.loop !460

bb.i:                                             ; preds = %.lr.ph374, %bb.ae
  %.0147372 = phi i64 [ 0, %.lr.ph374 ], [ %.1148, %bb.ae ]
  %storemerge371 = phi i64 [ 0, %.lr.ph374 ], [ %i.tr, %bb.ae ] ; 6 uses
  %i.qg = load i64, ptr %i.ml, align 16, !tbaa !254
  %i.qh = icmp eq i64 %storemerge371, %i.qg
  %.pre = load ptr, ptr %i.db, align 8, !tbaa !232 ; 4 uses
  br i1 %i.qh, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.i
  %i.qi = load ptr, ptr %i.dc, align 32, !tbaa !198
  %i.qj = ptrtoint ptr %i.qi to i64
  %i.qk = ptrtoint ptr %.pre to i64
  %i.ql = sub i64 %i.qj, %i.qk
  %i.qm = sdiv exact i64 %i.ql, 72                ; 3 uses
  %i.qn = getelementptr inbounds nuw [72 x i8], ptr %.pre, i64 %storemerge371
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 36
  %i.qp = add nuw i64 %storemerge371, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.qm, i64 %i.qp) ; 2 uses
  %storemerge175460 = add i64 %storemerge371, 1   ; 2 uses
  %i.qq = icmp ult i64 %storemerge175460, %i.qm
  br i1 %i.qq, label %.lr.ph462.preheader, label %.loopexit

.lr.ph462.preheader:                              ; preds = %.preheader
  %i.qr = load i32, ptr %i.qo, align 4, !tbaa !193
  br label %.lr.ph462

bb.j:                                             ; preds = %.lr.ph462
  %storemerge175 = add i64 %storemerge175461, 1   ; 2 uses
  %i.qs = icmp ult i64 %storemerge175, %i.qm
  br i1 %i.qs, label %.lr.ph462, label %.loopexit, !llvm.loop !461

.lr.ph462:                                        ; preds = %.lr.ph462.preheader, %bb.j
  %storemerge175461 = phi i64 [ %storemerge175, %bb.j ], [ %storemerge175460, %.lr.ph462.preheader ] ; 3 uses
  %i.qt = getelementptr inbounds nuw [72 x i8], ptr %.pre, i64 %storemerge175461
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 36
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !193
  %.not176 = icmp eq i32 %i.qv, %i.qr
  br i1 %.not176, label %bb.j, label %..loopexit_crit_edge, !llvm.loop !461

..loopexit_crit_edge:                             ; preds = %.lr.ph462
  br label %.loopexit, !llvm.loop !461

.loopexit:                                        ; preds = %bb.j, %..loopexit_crit_edge, %.preheader
  %storemerge175.lcssa = phi i64 [ %storemerge175461, %..loopexit_crit_edge ], [ %umax, %.preheader ], [ %umax, %bb.j ]
  store i64 %storemerge175.lcssa, ptr %i.ml, align 16, !tbaa !254
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.i
  %.1148 = phi i64 [ %.0147372, %bb.i ], [ %storemerge371, %.loopexit ] ; 2 uses
  store i32 0, ptr %i.mn, align 16, !tbaa !256
  %i.qw = load i64, ptr %i.b, align 64, !tbaa !131
  %i.qx = getelementptr inbounds nuw [72 x i8], ptr %.pre, i64 %storemerge371 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 20
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !257
  %i.ra = call i32 @llvm.abs.i32(i32 %i.qz, i1 true)
  %i.rb = udiv i32 %i.ra, 9000
  %i.rc = trunc i64 %i.qw to i32
  %i.rd = and i32 %i.rc, 7
  %i.re = add nuw nsw i32 %i.rd, 5
  %i.rf = add nuw nsw i32 %i.re, %i.rb            ; 3 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %i.rh = load i32, ptr %i.rg, align 8, !tbaa !239 ; 4 uses
  %i.ri = sub nsw i32 %i.rh, %i.rf
  %.sroa.speculated290 = call i32 @llvm.smax.i32(i32 %i.ri, i32 -32001)
  %i.rj = add nsw i32 %i.rf, %i.rh
  %.sroa.speculated285 = call i32 @llvm.smin.i32(i32 %i.rj, i32 32001)
  %i.rk = mul nsw i32 %i.rh, 142
  %i.rl = call i32 @llvm.abs.i32(i32 %i.rh, i1 true)
  %i.rm = add nuw nsw i32 %i.rl, 91
  %i.rn = sdiv i32 %i.rk, %i.rm                   ; 2 uses
  store i32 %i.rn, ptr %i.mq, align 4, !tbaa !150
  %i.ro = sub nsw i32 0, %i.rn
  store i32 %i.ro, ptr %i.mt, align 4, !tbaa !150
  br label %bb.l

bb.l:                                             ; preds = %bb.v, %bb.k
  %.0334 = phi i32 [ %.sroa.speculated290, %bb.k ], [ %.1335, %bb.v ] ; 7 uses
  %.0144 = phi i32 [ 0, %bb.k ], [ %.1145, %bb.v ] ; 2 uses
  %.0142 = phi i32 [ %i.rf, %bb.k ], [ %i.sn, %bb.v ] ; 5 uses
  %.0131 = phi i32 [ %.sroa.speculated285, %bb.k ], [ %.1132, %bb.v ] ; 5 uses
  %i.rp = load i32, ptr %i.ov, align 16, !tbaa !253
  %i.rq = sub i32 %.neg, %.0144
  %i.rr = add i32 %i.rq, %i.rp
  %.sroa.speculated278 = call i32 @llvm.smax.i32(i32 %i.rr, i32 1)
  %i.rs = sub nsw i32 %.0131, %.0334
  store i32 %i.rs, ptr %i.mu, align 8, !tbaa !258
  %i.rt = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE2EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %i.am, ptr noundef nonnull %i.l, i32 noundef %.0334, i32 noundef %.0131, i32 noundef %.sroa.speculated278, i1 noundef zeroext false) ; 8 uses
  %i.ru = load ptr, ptr %i.db, align 8, !tbaa !180 ; 2 uses
  %i.rv = load i64, ptr %i.mm, align 8, !tbaa !255
  %i.rw = getelementptr inbounds [72 x i8], ptr %i.ru, i64 %i.rv
  %i.rx = load i64, ptr %i.ml, align 16, !tbaa !254
  %i.ry = getelementptr inbounds [72 x i8], ptr %i.ru, i64 %i.rx
  call void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.rw, ptr %i.ry)
  %i.rz = load ptr, ptr %i.mj, align 64, !tbaa !222, !nonnull !72, !align !73
  %i.sa = load atomic i8, ptr %i.rz seq_cst, align 8, !range !223, !noundef !72
  %i.sb = trunc nuw i8 %i.sa to i1
  br i1 %i.sb, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond3, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.not177 = icmp sgt i32 %i.rt, %.0334
  %.not178 = icmp slt i32 %i.rt, %.0131
  %or.cond196 = and i1 %.not177, %.not178
  br i1 %or.cond196, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.sc = load atomic i64, ptr %i.mw seq_cst, align 8
  %i.sd = icmp ugt i64 %i.sc, 10000000
  br i1 %i.sd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.se = load ptr, ptr %i.d, align 32, !tbaa !134
  %i.sf = load ptr, ptr %i.mj, align 64, !tbaa !222, !nonnull !72, !align !73
  %i.sg = load ptr, ptr %i.mx, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.sh = load i32, ptr %i.ov, align 16, !tbaa !253
  call void @_ZN9Stockfish6Search13SearchManager2pvERNS0_6WorkerERKNS_10ThreadPoolERKNS_18TranspositionTableEi(ptr noundef nonnull align 8 dereferenceable(120) %i.se, ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.sf, ptr noundef nonnull align 8 dereferenceable(17) %i.sg, i32 noundef %i.sh)
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o, %bb.m
  %.not179 = icmp sgt i32 %i.rt, %.0334
  br i1 %.not179, label %bb.t, label %bb.r

end_hunk_0
begin_hunk_1_@_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE2EEEiRNS_8PositionEPNS0_5StackEiiib:bb.a
  %i.pv = zext i8 %i.pu to i64                    ; 2 uses
  %i.pw = getelementptr inbounds nuw [131072 x i8], ptr %i.pt, i64 %i.pv
  %i.px = getelementptr inbounds nuw [2048 x i8], ptr %i.pw, i64 %i.pa
  store ptr %i.px, ptr %i.om, align 8, !tbaa !246
  %i.py = getelementptr inbounds nuw [131072 x i8], ptr %i.on, i64 %i.pv
  %i.pz = getelementptr inbounds nuw [2048 x i8], ptr %i.py, i64 %i.pa
  store ptr %i.pz, ptr %i.oo, align 8, !tbaa !247
  %i.qa = call noundef i32 @_ZN9Stockfish6Search6Worker7qsearchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEii(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.op, i32 noundef %i.nv, i32 noundef %i.oq)
  %i.qb = sub nsw i32 0, %i.qa                    ; 2 uses
  %i.qc = icmp sle i32 %i.ns, %i.qb
  %or.cond20 = select i1 %i.qc, i1 %i.or, i1 false
  br i1 %or.cond20, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEPNS0_5StackE.exit
  %i.qd = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE0EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull %i.op, i32 noundef %i.nv, i32 noundef %i.oq, i32 noundef %.sroa.speculated706, i1 noundef zeroext %i.os)
  %i.qe = sub nsw i32 0, %i.qd
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEPNS0_5StackE.exit
  %.0381 = phi i32 [ %i.qe, %bb.bl ], [ %i.qb, %_ZN9Stockfish6Search6Worker7do_moveERNS_8PositionENS_4MoveERNS_9StateInfoEPNS0_5StackE.exit ] ; 6 uses
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.ou) #33
  call void @_ZN9Stockfish4Eval4NNUE16AccumulatorStack3popEv(ptr noundef nonnull align 64 dereferenceable(2529288) %i.oj) #33
  %.not432 = icmp slt i32 %.0381, %i.ns
  br i1 %.not432, label %.backedge951, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qf = load i32, ptr %i.ac, align 8, !tbaa !249 ; 2 uses
  %i.qg = icmp sgt i32 %.0381, 31506
  %i.qh = icmp slt i32 %.0381, -31506
  %i.qi = select i1 %i.qh, i32 %i.qf, i32 0
  %i.qj = sub i32 0, %i.qi
  %.p.i = select i1 %i.qg, i32 %i.qf, i32 %i.qj
  %i.qk = add i32 %.p.i, %.0381
  %i.ql = load i8, ptr %i.ct, align 1, !tbaa !282, !range !223, !noundef !72
  %i.qm = trunc nuw i8 %i.ql to i1
  %i.qn = load ptr, ptr %i.bd, align 8, !tbaa !179, !nonnull !72, !align !73
  %i.qo = call noundef zeroext i8 @_ZNK9Stockfish18TranspositionTable10generationEv(ptr noundef nonnull align 8 dereferenceable(17) %i.qn) #33
  call void @_ZN9Stockfish8TTWriter5writeEmibNS_5BoundEiNS_4MoveEih(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %i.bc, i32 noundef %i.qk, i1 noundef zeroext %i.qm, i8 noundef zeroext 2, i32 noundef %i.ot, i16 %i.ou, i32 noundef %.1398, i8 noundef zeroext %i.qo) #33
  %i.qp = add i32 %.0381, -31507
  %spec.select.i494 = icmp ult i32 %i.qp, -63013
  br i1 %spec.select.i494, label %.backedge951, label %.thread865

.thread865:                                       ; preds = %bb.bn
  %.neg433 = sub i32 %4, %i.ns
  %i.qq = add i32 %.neg433, %.0381
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %.thread851

._crit_edge:                                      ; preds = %.backedge951, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bh, %._crit_edge, %bb.bf, %bb.bg, %bb.ao
  %.0843 = phi i8 [ %i.ih, %bb.ao ], [ %i.nu, %bb.bg ], [ %i.nu, %bb.bh ], [ %i.nu, %._crit_edge ], [ %i.ne, %bb.bf ]
  %.3739 = phi i32 [ %.1, %bb.ao ], [ %.2864, %bb.bg ], [ %.2864, %bb.bh ], [ %.2864, %._crit_edge ], [ %.1, %bb.bf ] ; 4 uses
  %i.qr = add nsw i32 %4, 418                     ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.qt = load i8, ptr %i.qs, align 8, !tbaa !289
  %i.qu = and i8 %i.qt, 2
  %.not434 = icmp eq i8 %i.qu, 0
  br i1 %.not434, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.qv = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !293
  %i.qx = add nsw i32 %.3739, -4
  %.not435 = icmp slt i32 %i.qw, %i.qx
  br i1 %.not435, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.qy = load i32, ptr %i.co, align 4, !tbaa !281 ; 2 uses
  %.not436 = icmp slt i32 %i.qy, %i.qr
  %i.qz = add i32 %4, -31507
  %spec.select.i495 = icmp ult i32 %i.qz, -63013
  %or.cond902.not930.not933 = or i1 %spec.select.i495, %.not436
  %i.ra = add i32 %i.qy, -31507
  %spec.select.i496 = icmp ult i32 %i.ra, -63013
  %or.cond904 = or i1 %or.cond902.not930.not933, %spec.select.i496
  br i1 %or.cond904, label %bb.br, label %.thread851

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.rb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.rc = getelementptr inbounds i8, ptr %2, i64 -104
  %i.rd = getelementptr inbounds i8, ptr %2, i64 -216
  %i.re = call <8 x ptr> @llvm.masked.load.v8p0.p0(ptr nonnull align 8 %i.rc, <8 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true>, <8 x ptr> poison), !tbaa !246
  %i.rf = call <8 x ptr> @llvm.masked.load.v8p0.p0(ptr nonnull align 8 %i.rd, <8 x i1> <i1 true, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 true>, <8 x ptr> poison), !tbaa !246
  %i.rg = shufflevector <8 x ptr> %i.re, <8 x ptr> %i.rf, <4 x i32> <i32 7, i32 0, i32 15, i32 8>
  store <4 x ptr> %i.rg, ptr %i.a, align 16, !tbaa !294
  %i.rh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ri = getelementptr inbounds i8, ptr %2, i64 -272
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !246
  store ptr %i.rj, ptr %i.rh, align 16, !tbaa !294
  %i.rk = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.rl = getelementptr inbounds i8, ptr %2, i64 -328
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !246
  store ptr %i.rm, ptr %i.rk, align 8, !tbaa !294
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %.sroa.0112.0.copyload = load i16, ptr %i.bg, align 8, !tbaa !196
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 262144
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 917504 ; 3 uses
  %i.rp = load ptr, ptr %i.de, align 8, !tbaa !151, !nonnull !72, !align !73
  %i.rq = load i32, ptr %i.ac, align 8, !tbaa !249
  call void @_ZN9Stockfish10MovePickerC1ERKNS_8PositionENS_4MoveEiPKNS_10MultiArrayINS_10StatsEntryIsLi7183ELb0EEELm2EJLm65536EEEEPKNS5_IS7_Lm5EJLm65536EEEEPKNS5_INS6_IsLi10692ELb0EEELm16EJLm64ELm8EEEEPPKNS5_INS6_IsLi30000ELb0EEELm16EJLm64EEEEPKNS_15SharedHistoriesEi(ptr noundef nonnull align 8 dereferenceable(2164) %13, ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %.sroa.0112.0.copyload, i32 noundef %.3739, ptr noundef nonnull %0, ptr noundef nonnull %i.rn, ptr noundef nonnull %i.ro, ptr noundef nonnull %i.a, ptr noundef nonnull %i.rp, i32 noundef %i.rq) #33
  %i.rr = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %13) #33 ; 2 uses
  %.not9349891004 = icmp eq i16 %i.rr, 0
  br i1 %.not9349891004, label %.loopexit, label %.lr.ph990.lr.ph

.lr.ph990.lr.ph:                                  ; preds = %bb.br
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 11419792
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 11419800 ; 6 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 11422176
  %i.rv = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.rw = getelementptr inbounds nuw i8, ptr %1, i64 621
  %i.rx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ry = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.rz = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.sa = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 7 uses
  %i.sc = trunc nuw i8 %.0843 to i1
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 11421152 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 11421112
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 11422272 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 933888
  %i.si = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 9322496
  %i.sk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.sl = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  %.neg440 = select i1 %6, i32 -1945, i32 -934
  %i.sm = call i32 @llvm.abs.i32(i32 %i.ft, i1 true)
  %i.sn = udiv i32 %i.sm, 30370
  %i.so = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.sp = zext i8 %i.q to i64
  %i.sq = getelementptr inbounds nuw [131072 x i8], ptr %0, i64 %i.sp
  %i.sr = xor i1 %6, true                         ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.st = sub nsw i32 0, %4
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 11422208
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 11421088
  %i.sw = getelementptr inbounds nuw i8, ptr %0, i64 11419816
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 11421104
  %invariant.op = sub i32 714, %i.sn
  br label %.lr.ph990

.lr.ph990:                                        ; preds = %.lr.ph990.lr.ph, %.thread868
  %indvars.iv = phi i64 [ 0, %.lr.ph990.lr.ph ], [ %indvars.iv.next, %.thread868 ] ; 4 uses
  %i.sy = phi i16 [ %i.rr, %.lr.ph990.lr.ph ], [ %i.amb, %.thread868 ]
  %.0369.ph1010 = phi i32 [ %3, %.lr.ph990.lr.ph ], [ %.3372, %.thread868 ] ; 17 uses
  %.4740.ph1007 = phi i32 [ %.3739, %.lr.ph990.lr.ph ], [ %.6742, %.thread868 ] ; 15 uses
  %.sroa.0623.0.ph1006 = phi i16 [ 0, %.lr.ph990.lr.ph ], [ %.sroa.0623.2, %.thread868 ] ; 5 uses
  %.0746.ph1005 = phi i32 [ -32001, %.lr.ph990.lr.ph ], [ %.2748, %.thread868 ] ; 7 uses
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph990, %.backedge
  %i.sz = phi i16 [ %i.sy, %.lr.ph990 ], [ %i.tb, %.backedge ] ; 31 uses
  %i.ta = icmp eq i16 %i.sz, %i.ap
  br i1 %i.ta, label %.backedge, label %bb.bt

.backedge:                                        ; preds = %bb.bu, %bb.bs, %bb.bt, %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit
  %i.tb = call i16 @_ZN9Stockfish10MovePicker9next_moveEv(ptr noundef nonnull align 8 dereferenceable(2164) %13) #33 ; 2 uses
  %.not934 = icmp eq i16 %i.tb, 0
  br i1 %.not934, label %.loopexit.loopexit, label %bb.bs, !llvm.loop !494

bb.bt:                                            ; preds = %bb.bs
  %i.tc = call noundef zeroext i1 @_ZNK9Stockfish8Position5legalENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %1, i16 %i.sz) #33
  br i1 %i.tc, label %bb.bu, label %.backedge

bb.bu:                                            ; preds = %bb.bt
  %i.td = load ptr, ptr %i.bj, align 8, !tbaa !180 ; 2 uses
  %i.te = load i64, ptr %i.bk, align 8, !tbaa !255 ; 3 uses
  %i.tf = load i64, ptr %i.rs, align 16, !tbaa !254 ; 3 uses
  %i.tg = getelementptr inbounds [72 x i8], ptr %i.td, i64 %i.tf
  %.not5.i.i = icmp eq i64 %i.te, %i.tf
  br i1 %.not5.i.i, label %.backedge, label %iter.check

iter.check:                                       ; preds = %bb.bu
  %i.th = getelementptr inbounds [72 x i8], ptr %i.td, i64 %i.te ; 5 uses
  %i.ti = mul i64 %i.tf, 72
  %i.tj = add i64 %i.ti, -72
  %.neg1225 = mul i64 %i.te, -72
  %i.tk = add i64 %.neg1225, %i.tj                ; 3 uses
  %i.tl = udiv i64 %i.tk, 72
  %i.tm = add nuw nsw i64 %i.tl, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.tk, 504
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1199 = icmp ult i64 %i.tk, 2232
  br i1 %min.iters.check1199, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.tn = and i64 %i.tm, 24
  %n.vec = and i64 %i.tm, 576460752303423456      ; 4 uses
  %i.to = mul i64 %n.vec, 72
  %i.tp = getelementptr i8, ptr %i.th, i64 %i.to  ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.sz, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.xq, %vector.body ]
  %vec.phi1200 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.xr, %vector.body ]
  %vec.phi1201 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.xs, %vector.body ]
  %vec.phi1202 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.xt, %vector.body ]
  %pointer.phi = phi ptr [ %i.th, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <8 x i64> <i64 0, i64 72, i64 144, i64 216, i64 288, i64 360, i64 432, i64 504> ; 4 uses
  %wide.gep = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep, i64 48
  %wide.gep1203 = getelementptr i8, <8 x ptr> %vector.gep, i64 624
  %wide.gep1204 = getelementptr i8, <8 x ptr> %vector.gep, i64 1200
  %wide.gep1205 = getelementptr i8, <8 x ptr> %vector.gep, i64 1776
  %wide.masked.gather = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !194 ; 8 uses
  %wide.masked.gather1206 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep1203, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !194 ; 8 uses
  %wide.masked.gather1207 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep1204, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !194 ; 8 uses
  %wide.masked.gather1208 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep1205, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !194 ; 8 uses
  %i.tq = extractelement <8 x ptr> %wide.masked.gather, i64 0
  %i.tr = load i16, ptr %i.tq, align 2, !tbaa !234
  %i.ts = extractelement <8 x ptr> %wide.masked.gather, i64 1
  %i.tt = load i16, ptr %i.ts, align 2, !tbaa !234
  %i.tu = extractelement <8 x ptr> %wide.masked.gather, i64 2
  %i.tv = load i16, ptr %i.tu, align 2, !tbaa !234
  %i.tw = extractelement <8 x ptr> %wide.masked.gather, i64 3
  %i.tx = load i16, ptr %i.tw, align 2, !tbaa !234
  %i.ty = extractelement <8 x ptr> %wide.masked.gather, i64 4
  %i.tz = load i16, ptr %i.ty, align 2, !tbaa !234
  %i.ua = extractelement <8 x ptr> %wide.masked.gather, i64 5
  %i.ub = load i16, ptr %i.ua, align 2, !tbaa !234
  %i.uc = extractelement <8 x ptr> %wide.masked.gather, i64 6
  %i.ud = load i16, ptr %i.uc, align 2, !tbaa !234
  %i.ue = extractelement <8 x ptr> %wide.masked.gather, i64 7
  %i.uf = load i16, ptr %i.ue, align 2, !tbaa !234
  %i.ug = insertelement <8 x i16> poison, i16 %i.tr, i64 0
  %i.uh = insertelement <8 x i16> %i.ug, i16 %i.tt, i64 1
  %i.ui = insertelement <8 x i16> %i.uh, i16 %i.tv, i64 2
  %i.uj = insertelement <8 x i16> %i.ui, i16 %i.tx, i64 3
  %i.uk = insertelement <8 x i16> %i.uj, i16 %i.tz, i64 4
  %i.ul = insertelement <8 x i16> %i.uk, i16 %i.ub, i64 5
  %i.um = insertelement <8 x i16> %i.ul, i16 %i.ud, i64 6
  %i.un = insertelement <8 x i16> %i.um, i16 %i.uf, i64 7
  %i.uo = extractelement <8 x ptr> %wide.masked.gather1206, i64 0
  %i.up = load i16, ptr %i.uo, align 2, !tbaa !234
  %i.uq = extractelement <8 x ptr> %wide.masked.gather1206, i64 1
  %i.ur = load i16, ptr %i.uq, align 2, !tbaa !234
  %i.us = extractelement <8 x ptr> %wide.masked.gather1206, i64 2
  %i.ut = load i16, ptr %i.us, align 2, !tbaa !234
  %i.uu = extractelement <8 x ptr> %wide.masked.gather1206, i64 3
  %i.uv = load i16, ptr %i.uu, align 2, !tbaa !234
  %i.uw = extractelement <8 x ptr> %wide.masked.gather1206, i64 4
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !234
  %i.uy = extractelement <8 x ptr> %wide.masked.gather1206, i64 5
  %i.uz = load i16, ptr %i.uy, align 2, !tbaa !234
  %i.va = extractelement <8 x ptr> %wide.masked.gather1206, i64 6
  %i.vb = load i16, ptr %i.va, align 2, !tbaa !234
  %i.vc = extractelement <8 x ptr> %wide.masked.gather1206, i64 7
  %i.vd = load i16, ptr %i.vc, align 2, !tbaa !234
  %i.ve = insertelement <8 x i16> poison, i16 %i.up, i64 0
  %i.vf = insertelement <8 x i16> %i.ve, i16 %i.ur, i64 1
  %i.vg = insertelement <8 x i16> %i.vf, i16 %i.ut, i64 2
  %i.vh = insertelement <8 x i16> %i.vg, i16 %i.uv, i64 3
  %i.vi = insertelement <8 x i16> %i.vh, i16 %i.ux, i64 4
  %i.vj = insertelement <8 x i16> %i.vi, i16 %i.uz, i64 5
  %i.vk = insertelement <8 x i16> %i.vj, i16 %i.vb, i64 6
  %i.vl = insertelement <8 x i16> %i.vk, i16 %i.vd, i64 7
  %i.vm = extractelement <8 x ptr> %wide.masked.gather1207, i64 0
  %i.vn = load i16, ptr %i.vm, align 2, !tbaa !234
  %i.vo = extractelement <8 x ptr> %wide.masked.gather1207, i64 1
  %i.vp = load i16, ptr %i.vo, align 2, !tbaa !234
  %i.vq = extractelement <8 x ptr> %wide.masked.gather1207, i64 2
  %i.vr = load i16, ptr %i.vq, align 2, !tbaa !234
  %i.vs = extractelement <8 x ptr> %wide.masked.gather1207, i64 3
  %i.vt = load i16, ptr %i.vs, align 2, !tbaa !234
  %i.vu = extractelement <8 x ptr> %wide.masked.gather1207, i64 4
  %i.vv = load i16, ptr %i.vu, align 2, !tbaa !234
  %i.vw = extractelement <8 x ptr> %wide.masked.gather1207, i64 5
  %i.vx = load i16, ptr %i.vw, align 2, !tbaa !234
  %i.vy = extractelement <8 x ptr> %wide.masked.gather1207, i64 6
  %i.vz = load i16, ptr %i.vy, align 2, !tbaa !234
  %i.wa = extractelement <8 x ptr> %wide.masked.gather1207, i64 7
  %i.wb = load i16, ptr %i.wa, align 2, !tbaa !234
  %i.wc = insertelement <8 x i16> poison, i16 %i.vn, i64 0
  %i.wd = insertelement <8 x i16> %i.wc, i16 %i.vp, i64 1
  %i.we = insertelement <8 x i16> %i.wd, i16 %i.vr, i64 2
  %i.wf = insertelement <8 x i16> %i.we, i16 %i.vt, i64 3
  %i.wg = insertelement <8 x i16> %i.wf, i16 %i.vv, i64 4
  %i.wh = insertelement <8 x i16> %i.wg, i16 %i.vx, i64 5
  %i.wi = insertelement <8 x i16> %i.wh, i16 %i.vz, i64 6
  %i.wj = insertelement <8 x i16> %i.wi, i16 %i.wb, i64 7
  %i.wk = extractelement <8 x ptr> %wide.masked.gather1208, i64 0
  %i.wl = load i16, ptr %i.wk, align 2, !tbaa !234
  %i.wm = extractelement <8 x ptr> %wide.masked.gather1208, i64 1
  %i.wn = load i16, ptr %i.wm, align 2, !tbaa !234
  %i.wo = extractelement <8 x ptr> %wide.masked.gather1208, i64 2
  %i.wp = load i16, ptr %i.wo, align 2, !tbaa !234
  %i.wq = extractelement <8 x ptr> %wide.masked.gather1208, i64 3
  %i.wr = load i16, ptr %i.wq, align 2, !tbaa !234
  %i.ws = extractelement <8 x ptr> %wide.masked.gather1208, i64 4
  %i.wt = load i16, ptr %i.ws, align 2, !tbaa !234
  %i.wu = extractelement <8 x ptr> %wide.masked.gather1208, i64 5
  %i.wv = load i16, ptr %i.wu, align 2, !tbaa !234
  %i.ww = extractelement <8 x ptr> %wide.masked.gather1208, i64 6
  %i.wx = load i16, ptr %i.ww, align 2, !tbaa !234
  %i.wy = extractelement <8 x ptr> %wide.masked.gather1208, i64 7
  %i.wz = load i16, ptr %i.wy, align 2, !tbaa !234
  %i.xa = insertelement <8 x i16> poison, i16 %i.wl, i64 0
  %i.xb = insertelement <8 x i16> %i.xa, i16 %i.wn, i64 1
  %i.xc = insertelement <8 x i16> %i.xb, i16 %i.wp, i64 2
  %i.xd = insertelement <8 x i16> %i.xc, i16 %i.wr, i64 3
  %i.xe = insertelement <8 x i16> %i.xd, i16 %i.wt, i64 4
  %i.xf = insertelement <8 x i16> %i.xe, i16 %i.wv, i64 5
  %i.xg = insertelement <8 x i16> %i.xf, i16 %i.wx, i64 6
  %i.xh = insertelement <8 x i16> %i.xg, i16 %i.wz, i64 7
  %i.xi = icmp eq <8 x i16> %i.un, %broadcast.splat
  %i.xj = icmp eq <8 x i16> %i.vl, %broadcast.splat
  %i.xk = icmp eq <8 x i16> %i.wj, %broadcast.splat
  %i.xl = icmp eq <8 x i16> %i.xh, %broadcast.splat
  %i.xm = zext <8 x i1> %i.xi to <8 x i64>
  %i.xn = zext <8 x i1> %i.xj to <8 x i64>
  %i.xo = zext <8 x i1> %i.xk to <8 x i64>
  %i.xp = zext <8 x i1> %i.xl to <8 x i64>
  %i.xq = add <8 x i64> %vec.phi, %i.xm           ; 2 uses
  %i.xr = add <8 x i64> %vec.phi1200, %i.xn       ; 2 uses
  %i.xs = add <8 x i64> %vec.phi1201, %i.xo       ; 2 uses
  %i.xt = add <8 x i64> %vec.phi1202, %i.xp       ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 2304
  %i.xu = icmp eq i64 %index.next, %n.vec
  br i1 %i.xu, label %middle.block, label %vector.body, !llvm.loop !495

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i64> %i.xr, %i.xq
  %bin.rdx1209 = add <8 x i64> %i.xs, %bin.rdx
  %bin.rdx1210 = add <8 x i64> %i.xt, %bin.rdx1209
  %i.xv = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx1210) ; 3 uses
  %cmp.n = icmp eq i64 %i.tm, %n.vec
  br i1 %cmp.n, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.tn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !500

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.xv, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi ptr [ %i.tp, %vec.epilog.iter.check ], [ %i.th, %vector.main.loop.iter.check ]
  %n.vec1211 = and i64 %i.tm, 576460752303423480  ; 3 uses
  %i.xw = mul i64 %n.vec1211, 72
  %i.xx = getelementptr i8, ptr %i.th, i64 %i.xw
  %i.xy = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  %broadcast.splatinsert1212 = insertelement <8 x i16> poison, i16 %i.sz, i64 0
  %broadcast.splat1213 = shufflevector <8 x i16> %broadcast.splatinsert1212, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1214 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1220, %vec.epilog.vector.body ]
  %vec.phi1215 = phi <8 x i64> [ %i.xy, %vec.epilog.ph ], [ %i.yz, %vec.epilog.vector.body ]
  %pointer.phi1216 = phi ptr [ %bc.resume.val, %vec.epilog.ph ], [ %ptr.ind1221, %vec.epilog.vector.body ] ; 2 uses
  %vector.gep1217 = getelementptr i8, ptr %pointer.phi1216, <8 x i64> <i64 0, i64 72, i64 144, i64 216, i64 288, i64 360, i64 432, i64 504>
  %wide.gep1218 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep1217, i64 48
  %wide.masked.gather1219 = call <8 x ptr> @llvm.masked.gather.v8p0.v8p0(<8 x ptr> align 8 %wide.gep1218, <8 x i1> splat (i1 true), <8 x ptr> poison), !tbaa !194 ; 8 uses
  %i.xz = extractelement <8 x ptr> %wide.masked.gather1219, i64 0
  %i.ya = load i16, ptr %i.xz, align 2, !tbaa !234
  %i.yb = extractelement <8 x ptr> %wide.masked.gather1219, i64 1
  %i.yc = load i16, ptr %i.yb, align 2, !tbaa !234
  %i.yd = extractelement <8 x ptr> %wide.masked.gather1219, i64 2
  %i.ye = load i16, ptr %i.yd, align 2, !tbaa !234
  %i.yf = extractelement <8 x ptr> %wide.masked.gather1219, i64 3
  %i.yg = load i16, ptr %i.yf, align 2, !tbaa !234
  %i.yh = extractelement <8 x ptr> %wide.masked.gather1219, i64 4
  %i.yi = load i16, ptr %i.yh, align 2, !tbaa !234
  %i.yj = extractelement <8 x ptr> %wide.masked.gather1219, i64 5
  %i.yk = load i16, ptr %i.yj, align 2, !tbaa !234
  %i.yl = extractelement <8 x ptr> %wide.masked.gather1219, i64 6
  %i.ym = load i16, ptr %i.yl, align 2, !tbaa !234
  %i.yn = extractelement <8 x ptr> %wide.masked.gather1219, i64 7
  %i.yo = load i16, ptr %i.yn, align 2, !tbaa !234
  %i.yp = insertelement <8 x i16> poison, i16 %i.ya, i64 0
  %i.yq = insertelement <8 x i16> %i.yp, i16 %i.yc, i64 1
  %i.yr = insertelement <8 x i16> %i.yq, i16 %i.ye, i64 2
  %i.ys = insertelement <8 x i16> %i.yr, i16 %i.yg, i64 3
  %i.yt = insertelement <8 x i16> %i.ys, i16 %i.yi, i64 4
  %i.yu = insertelement <8 x i16> %i.yt, i16 %i.yk, i64 5
  %i.yv = insertelement <8 x i16> %i.yu, i16 %i.ym, i64 6
  %i.yw = insertelement <8 x i16> %i.yv, i16 %i.yo, i64 7
  %i.yx = icmp eq <8 x i16> %i.yw, %broadcast.splat1213
  %i.yy = zext <8 x i1> %i.yx to <8 x i64>
  %i.yz = add <8 x i64> %vec.phi1215, %i.yy       ; 2 uses
  %index.next1220 = add nuw i64 %index1214, 8     ; 2 uses
  %ptr.ind1221 = getelementptr i8, ptr %pointer.phi1216, i64 576
  %i.za = icmp eq i64 %index.next1220, %n.vec1211
  br i1 %i.za, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !496

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.zb = call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.yz) ; 2 uses
  %cmp.n1222 = icmp eq i64 %i.tm, %n.vec1211
  br i1 %cmp.n1222, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.i.ph = phi i64 [ 0, %iter.check ], [ %i.xv, %vec.epilog.iter.check ], [ %i.zb, %vec.epilog.middle.block ]
  %.sroa.03.06.i.i.ph = phi ptr [ %i.th, %iter.check ], [ %i.tp, %vec.epilog.iter.check ], [ %i.xx, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i
end_hunk_1
begin_hunk_2_@_ZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERi:._crit_edge.i.i
  br i1 %i.hm, label %bb.bd, label %.critedge113

.critedge113:                                     ; preds = %bb.ae, %bb.af
  %i.hn = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.ho = load i64, ptr %i.at, align 8, !tbaa !55
  %.not.i.i122 = icmp ne i64 %i.ho, 0
  %i.hp = load i64, ptr %i.au, align 8
  %i.hq = icmp ne i64 %i.hp, 0
  %i.hr = select i1 %.not.i.i122, i1 true, i1 %i.hq
  br i1 %i.hr, label %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124", label %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124.thread"

"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124": ; preds = %.critedge113
  %.sroa.0.0.copyload.i2.i.i123 = load i64, ptr %5, align 8, !tbaa !55
  %i.hs = sub nsw i64 %i.hn, %.sroa.0.0.copyload.i2.i.i123
  %i.ht = sitofp i64 %i.hs to double
  %i.hu = fdiv nnan double %i.ht, 1.000000e+06
  %i.hv = fmul nnan double %i.hu, 2.000000e+00
  %i.hw = load i32, ptr %i.b, align 4, !tbaa !150
  %i.hx = sitofp i32 %i.hw to double
  %i.hy = fcmp ogt double %i.hv, %i.hx
  br i1 %i.hy, label %bb.bd, label %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124.thread"

"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124.thread": ; preds = %.critedge113, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124"
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.hz = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 8 dereferenceable(520) %13) #33 ; 3 uses
  store ptr %i.hz, ptr %i.hg, align 8, !tbaa !539
  %.not110215 = icmp eq ptr %13, %i.hz
  br i1 %.not110215, label %._crit_edge218, label %.lr.ph217

._crit_edge218:                                   ; preds = %bb.ak, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.ia = load ptr, ptr %i.hh, align 8, !tbaa !198 ; 6 uses
  %i.ib = load ptr, ptr %12, align 8, !tbaa !232  ; 13 uses
  %i.ic = ptrtoint ptr %i.ia to i64               ; 2 uses
  %i.id = icmp eq ptr %i.ia, %i.ib
  br i1 %i.id, label %bb.ba, label %bb.al

.lr.ph217:                                        ; preds = %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124.thread", %bb.ak
  %.0104216 = phi ptr [ %i.xw, %bb.ak ], [ %13, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit124.thread" ] ; 5 uses
  %i.ie = load ptr, ptr %i.hh, align 8, !tbaa !198 ; 14 uses
  %i.if = load ptr, ptr %i.hi, align 8, !tbaa !181
  %.not.i125 = icmp eq ptr %i.ie, %i.if
  br i1 %.not.i125, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph217
  %.sroa.0.0.copyload.i.i126 = load i16, ptr %.0104216, align 2, !tbaa !196
  store i64 0, ptr %i.ie, align 8, !tbaa !188
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store <4 x i32> <i32 -32001, i32 -32001, i32 -32001, i32 -1024064001>, ptr %i.ig, align 8, !tbaa !150
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  store i32 -32001, ptr %i.ih, align 8, !tbaa !189
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 28
  store i8 0, ptr %i.ii, align 4, !tbaa !190
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 29
  store i8 0, ptr %i.ij, align 1, !tbaa !191
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  store i32 0, ptr %i.ik, align 8, !tbaa !192
  %i.il = getelementptr inbounds nuw i8, ptr %i.ie, i64 36
  store i32 0, ptr %i.il, align 4, !tbaa !193
  %i.im = getelementptr inbounds nuw i8, ptr %i.ie, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.im, i8 0, i64 24, i1 false)
  %i.in = call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #36 ; 3 uses
  store ptr %i.in, ptr %i.im, align 8, !tbaa !194
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 2 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ie, i64 64
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !195
  store i16 %.sroa.0.0.copyload.i.i126, ptr %i.in, align 2, !tbaa !196
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 56
  store ptr %i.io, ptr %i.iq, align 8, !tbaa !197
  %i.ir = load ptr, ptr %i.hh, align 8, !tbaa !198 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 72
  store ptr %i.is, ptr %i.hh, align 8, !tbaa !198
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit128

bb.ah:                                            ; preds = %.lr.ph217
  %i.it = load ptr, ptr %12, align 8, !tbaa !232  ; 5 uses
  %i.iu = ptrtoint ptr %i.ie to i64
  %i.iv = ptrtoint ptr %i.it to i64               ; 2 uses
  %i.iw = sub i64 %i.iu, %i.iv                    ; 3 uses
  %i.ix = icmp eq i64 %i.iw, 9223372036854775800
  br i1 %i.ix, label %bb.ai, label %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154: ; preds = %bb.ah
  %i.iy = sdiv exact i64 %i.iw, 72                ; 3 uses
  %.sroa.speculated.i.i155 = call i64 @llvm.umax.i64(i64 %i.iy, i64 1)
  %i.iz = add nsw i64 %.sroa.speculated.i.i155, %i.iy ; 2 uses
  %i.ja = icmp ult i64 %i.iz, %i.iy
  %i.jb = call i64 @llvm.umin.i64(i64 %i.iz, i64 128102389400760775)
  %i.jc = select i1 %i.ja, i64 128102389400760775, i64 %i.jb ; 3 uses
  %.not.i.i156 = icmp ne i64 %i.jc, 0
  call void @llvm.assume(i1 %.not.i.i156)
  %i.jd = mul nuw nsw i64 %i.jc, 72
  %i.je = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jd) #36 ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.iw ; 10 uses
  %.sroa.0.0.copyload.i.i157 = load i16, ptr %.0104216, align 2, !tbaa !196
  store i64 0, ptr %i.jf, align 8, !tbaa !188
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store <4 x i32> <i32 -32001, i32 -32001, i32 -32001, i32 -1024064001>, ptr %i.jg, align 8, !tbaa !150
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 24
  store i32 -32001, ptr %i.jh, align 8, !tbaa !189
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 28
  store i8 0, ptr %i.ji, align 4, !tbaa !190
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 29
  store i8 0, ptr %i.jj, align 1, !tbaa !191
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  store i32 0, ptr %i.jk, align 8, !tbaa !192
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 36
  store i32 0, ptr %i.jl, align 4, !tbaa !193
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jf, i64 48
  %i.jn = call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #36 ; 3 uses
  store ptr %i.jn, ptr %i.jm, align 8, !tbaa !194
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 2 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jf, i64 64
  store ptr %i.jo, ptr %i.jp, align 8, !tbaa !195
  store i16 %.sroa.0.0.copyload.i.i157, ptr %i.jn, align 2, !tbaa !196
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jf, i64 56
  store ptr %i.jo, ptr %i.jq, align 8, !tbaa !197
  %.not10.i.i.i.i158 = icmp eq ptr %i.it, %i.ie
  br i1 %.not10.i.i.i.i158, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i170, label %.lr.ph.i.i.i.i159

.lr.ph.i.i.i.i159:                                ; preds = %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154, %.lr.ph.i.i.i.i159
  %.012.i.i.i.i160 = phi ptr [ %i.jy, %.lr.ph.i.i.i.i159 ], [ %i.je, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154 ] ; 4 uses
  %.0911.i.i.i.i161 = phi ptr [ %i.jx, %.lr.ph.i.i.i.i159 ], [ %i.it, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i.i160, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i.i161, i64 44, i1 false), !alias.scope !547
  %i.jr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i160, i64 48
  %i.js = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i161, i64 48 ; 2 uses
  %i.jt = load <2 x ptr>, ptr %i.js, align 8, !tbaa !262, !alias.scope !546, !noalias !545
  store <2 x ptr> %i.jt, ptr %i.jr, align 8, !tbaa !262, !alias.scope !545, !noalias !546
  %i.ju = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i160, i64 64
  %i.jv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i161, i64 64
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !195, !alias.scope !546, !noalias !545
  store ptr %i.jw, ptr %i.ju, align 8, !tbaa !195, !alias.scope !545, !noalias !546
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.js, i8 0, i64 24, i1 false), !alias.scope !546, !noalias !545
  %i.jx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i161, i64 72 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i160, i64 72 ; 2 uses
  %.not.i.i.i.i162 = icmp eq ptr %i.jx, %i.ie
  br i1 %.not.i.i.i.i162, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i170, label %.lr.ph.i.i.i.i159, !llvm.loop !2

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i170: ; preds = %.lr.ph.i.i.i.i159, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154
  %.0.lcssa.i.i.i.i164 = phi ptr [ %i.je, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i154 ], [ %i.jy, %.lr.ph.i.i.i.i159 ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i164, i64 72
  %.not.i23.i172 = icmp eq ptr %i.it, null
  br i1 %.not.i23.i172, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit173, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i170
  %i.ka = load ptr, ptr %i.hi, align 8, !tbaa !181
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = sub i64 %i.kb, %i.iv
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef %i.kc) #38
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit173

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit173: ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i170, %bb.aj
  store ptr %i.je, ptr %12, align 8, !tbaa !232
  store ptr %i.jz, ptr %i.hh, align 8, !tbaa !198
  %i.kd = getelementptr inbounds nuw [72 x i8], ptr %i.je, i64 %i.jc
  store ptr %i.kd, ptr %i.hi, align 8, !tbaa !181
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit128

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit128: ; preds = %bb.ag, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit173
  %i.ke = phi ptr [ %.0.lcssa.i.i.i.i164, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit173 ], [ %i.ir, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %.sroa.019.0.copyload = load i16, ptr %.0104216, align 2, !tbaa !196 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !83
  %i.kf = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.019.0.copyload) #33
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.019.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %14, i1 noundef zeroext %i.kf, ptr noundef nonnull align 1 dereferenceable(7) %i.am, ptr noundef nonnull align 8 dereferenceable(416) %i.aj, ptr noundef null, ptr noundef null) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.kg = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 8 dereferenceable(520) %15) #33 ; 3 uses
  %.not210 = icmp eq ptr %15, %i.kg
  br i1 %.not210, label %bb.ak, label %iter.check

iter.check:                                       ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit128
  %i.kh = ptrtoaddr ptr %i.kg to i64
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 36 ; 2 uses
  %.promoted = load i32, ptr %i.ki, align 4, !tbaa !193 ; 3 uses
  %.reass = add i64 %i.kh, %invariant.op          ; 3 uses
  %i.kj = lshr i64 %.reass, 1
  %i.kk = add nuw i64 %i.kj, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %.reass, 14
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check364 = icmp ult i64 %.reass, 126
  br i1 %min.iters.check364, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kl = and i64 %i.kk, 56
  %n.vec = and i64 %i.kk, -64                     ; 4 uses
  %i.km = shl i64 %n.vec, 1
  %i.kn = getelementptr i8, ptr %15, i64 %i.km
  %i.ko = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i32> [ %i.ko, %vector.ph ], [ %i.vv, %vector.body ]
  %vec.phi365 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.vw, %vector.body ]
  %vec.phi366 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.vx, %vector.body ]
  %vec.phi367 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.vy, %vector.body ]
  %i.kp = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %15, i64 %i.kp ; 4 uses
  %i.kq = getelementptr i8, ptr %next.gep, i64 32
  %i.kr = getelementptr i8, ptr %next.gep, i64 64
  %i.ks = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <16 x i16>, ptr %next.gep, align 8, !tbaa !196 ; 3 uses
  %wide.load368 = load <16 x i16>, ptr %i.kq, align 8, !tbaa !196 ; 3 uses
  %wide.load369 = load <16 x i16>, ptr %i.kr, align 8, !tbaa !196 ; 3 uses
  %wide.load370 = load <16 x i16>, ptr %i.ks, align 8, !tbaa !196 ; 3 uses
  %i.kt = and <16 x i16> %wide.load, splat (i16 63)
  %i.ku = and <16 x i16> %wide.load368, splat (i16 63)
  %i.kv = and <16 x i16> %wide.load369, splat (i16 63)
  %i.kw = and <16 x i16> %wide.load370, splat (i16 63)
  %i.kx = zext nneg <16 x i16> %i.kt to <16 x i64> ; 16 uses
  %i.ky = zext nneg <16 x i16> %i.ku to <16 x i64> ; 16 uses
  %i.kz = zext nneg <16 x i16> %i.kv to <16 x i64> ; 16 uses
  %i.la = zext nneg <16 x i16> %i.kw to <16 x i64> ; 16 uses
  %i.lb = extractelement <16 x i64> %i.kx, i64 0
  %i.lc = getelementptr inbounds nuw i8, ptr %2, i64 %i.lb
  %i.ld = extractelement <16 x i64> %i.kx, i64 1
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 %i.ld
  %i.lf = extractelement <16 x i64> %i.kx, i64 2
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 %i.lf
  %i.lh = extractelement <16 x i64> %i.kx, i64 3
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 %i.lh
  %i.lj = extractelement <16 x i64> %i.kx, i64 4
  %i.lk = getelementptr inbounds nuw i8, ptr %2, i64 %i.lj
  %i.ll = extractelement <16 x i64> %i.kx, i64 5
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 %i.ll
  %i.ln = extractelement <16 x i64> %i.kx, i64 6
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 %i.ln
  %i.lp = extractelement <16 x i64> %i.kx, i64 7
  %i.lq = getelementptr inbounds nuw i8, ptr %2, i64 %i.lp
  %i.lr = extractelement <16 x i64> %i.kx, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %2, i64 %i.lr
  %i.lt = extractelement <16 x i64> %i.kx, i64 9
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 %i.lt
  %i.lv = extractelement <16 x i64> %i.kx, i64 10
  %i.lw = getelementptr inbounds nuw i8, ptr %2, i64 %i.lv
  %i.lx = extractelement <16 x i64> %i.kx, i64 11
  %i.ly = getelementptr inbounds nuw i8, ptr %2, i64 %i.lx
  %i.lz = extractelement <16 x i64> %i.kx, i64 12
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 %i.lz
  %i.mb = extractelement <16 x i64> %i.kx, i64 13
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 %i.mb
  %i.md = extractelement <16 x i64> %i.kx, i64 14
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 %i.md
  %i.mf = extractelement <16 x i64> %i.kx, i64 15
  %i.mg = getelementptr inbounds nuw i8, ptr %2, i64 %i.mf
  %i.mh = extractelement <16 x i64> %i.ky, i64 0
  %i.mi = getelementptr inbounds nuw i8, ptr %2, i64 %i.mh
  %i.mj = extractelement <16 x i64> %i.ky, i64 1
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 %i.mj
  %i.ml = extractelement <16 x i64> %i.ky, i64 2
  %i.mm = getelementptr inbounds nuw i8, ptr %2, i64 %i.ml
  %i.mn = extractelement <16 x i64> %i.ky, i64 3
  %i.mo = getelementptr inbounds nuw i8, ptr %2, i64 %i.mn
  %i.mp = extractelement <16 x i64> %i.ky, i64 4
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 %i.mp
  %i.mr = extractelement <16 x i64> %i.ky, i64 5
  %i.ms = getelementptr inbounds nuw i8, ptr %2, i64 %i.mr
  %i.mt = extractelement <16 x i64> %i.ky, i64 6
  %i.mu = getelementptr inbounds nuw i8, ptr %2, i64 %i.mt
  %i.mv = extractelement <16 x i64> %i.ky, i64 7
  %i.mw = getelementptr inbounds nuw i8, ptr %2, i64 %i.mv
  %i.mx = extractelement <16 x i64> %i.ky, i64 8
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 %i.mx
  %i.mz = extractelement <16 x i64> %i.ky, i64 9
  %i.na = getelementptr inbounds nuw i8, ptr %2, i64 %i.mz
  %i.nb = extractelement <16 x i64> %i.ky, i64 10
  %i.nc = getelementptr inbounds nuw i8, ptr %2, i64 %i.nb
  %i.nd = extractelement <16 x i64> %i.ky, i64 11
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 %i.nd
  %i.nf = extractelement <16 x i64> %i.ky, i64 12
  %i.ng = getelementptr inbounds nuw i8, ptr %2, i64 %i.nf
  %i.nh = extractelement <16 x i64> %i.ky, i64 13
  %i.ni = getelementptr inbounds nuw i8, ptr %2, i64 %i.nh
  %i.nj = extractelement <16 x i64> %i.ky, i64 14
  %i.nk = getelementptr inbounds nuw i8, ptr %2, i64 %i.nj
  %i.nl = extractelement <16 x i64> %i.ky, i64 15
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 %i.nl
  %i.nn = extractelement <16 x i64> %i.kz, i64 0
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 %i.nn
  %i.np = extractelement <16 x i64> %i.kz, i64 1
  %i.nq = getelementptr inbounds nuw i8, ptr %2, i64 %i.np
  %i.nr = extractelement <16 x i64> %i.kz, i64 2
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 %i.nr
  %i.nt = extractelement <16 x i64> %i.kz, i64 3
  %i.nu = getelementptr inbounds nuw i8, ptr %2, i64 %i.nt
  %i.nv = extractelement <16 x i64> %i.kz, i64 4
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 %i.nv
  %i.nx = extractelement <16 x i64> %i.kz, i64 5
  %i.ny = getelementptr inbounds nuw i8, ptr %2, i64 %i.nx
  %i.nz = extractelement <16 x i64> %i.kz, i64 6
  %i.oa = getelementptr inbounds nuw i8, ptr %2, i64 %i.nz
  %i.ob = extractelement <16 x i64> %i.kz, i64 7
  %i.oc = getelementptr inbounds nuw i8, ptr %2, i64 %i.ob
  %i.od = extractelement <16 x i64> %i.kz, i64 8
  %i.oe = getelementptr inbounds nuw i8, ptr %2, i64 %i.od
  %i.of = extractelement <16 x i64> %i.kz, i64 9
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 %i.of
  %i.oh = extractelement <16 x i64> %i.kz, i64 10
  %i.oi = getelementptr inbounds nuw i8, ptr %2, i64 %i.oh
  %i.oj = extractelement <16 x i64> %i.kz, i64 11
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 %i.oj
  %i.ol = extractelement <16 x i64> %i.kz, i64 12
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 %i.ol
  %i.on = extractelement <16 x i64> %i.kz, i64 13
  %i.oo = getelementptr inbounds nuw i8, ptr %2, i64 %i.on
  %i.op = extractelement <16 x i64> %i.kz, i64 14
  %i.oq = getelementptr inbounds nuw i8, ptr %2, i64 %i.op
  %i.or = extractelement <16 x i64> %i.kz, i64 15
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 %i.or
  %i.ot = extractelement <16 x i64> %i.la, i64 0
  %i.ou = getelementptr inbounds nuw i8, ptr %2, i64 %i.ot
  %i.ov = extractelement <16 x i64> %i.la, i64 1
  %i.ow = getelementptr inbounds nuw i8, ptr %2, i64 %i.ov
  %i.ox = extractelement <16 x i64> %i.la, i64 2
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 %i.ox
  %i.oz = extractelement <16 x i64> %i.la, i64 3
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 %i.oz
  %i.pb = extractelement <16 x i64> %i.la, i64 4
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 %i.pb
  %i.pd = extractelement <16 x i64> %i.la, i64 5
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 %i.pd
  %i.pf = extractelement <16 x i64> %i.la, i64 6
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 %i.pf
  %i.ph = extractelement <16 x i64> %i.la, i64 7
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 %i.ph
  %i.pj = extractelement <16 x i64> %i.la, i64 8
  %i.pk = getelementptr inbounds nuw i8, ptr %2, i64 %i.pj
  %i.pl = extractelement <16 x i64> %i.la, i64 9
  %i.pm = getelementptr inbounds nuw i8, ptr %2, i64 %i.pl
  %i.pn = extractelement <16 x i64> %i.la, i64 10
  %i.po = getelementptr inbounds nuw i8, ptr %2, i64 %i.pn
  %i.pp = extractelement <16 x i64> %i.la, i64 11
  %i.pq = getelementptr inbounds nuw i8, ptr %2, i64 %i.pp
  %i.pr = extractelement <16 x i64> %i.la, i64 12
  %i.ps = getelementptr inbounds nuw i8, ptr %2, i64 %i.pr
  %i.pt = extractelement <16 x i64> %i.la, i64 13
  %i.pu = getelementptr inbounds nuw i8, ptr %2, i64 %i.pt
  %i.pv = extractelement <16 x i64> %i.la, i64 14
  %i.pw = getelementptr inbounds nuw i8, ptr %2, i64 %i.pv
  %i.px = extractelement <16 x i64> %i.la, i64 15
  %i.py = getelementptr inbounds nuw i8, ptr %2, i64 %i.px
  %i.pz = load i8, ptr %i.lc, align 1, !tbaa !283
  %i.qa = load i8, ptr %i.le, align 1, !tbaa !283
  %i.qb = load i8, ptr %i.lg, align 1, !tbaa !283
  %i.qc = load i8, ptr %i.li, align 1, !tbaa !283
  %i.qd = load i8, ptr %i.lk, align 1, !tbaa !283
  %i.qe = load i8, ptr %i.lm, align 1, !tbaa !283
  %i.qf = load i8, ptr %i.lo, align 1, !tbaa !283
  %i.qg = load i8, ptr %i.lq, align 1, !tbaa !283
  %i.qh = load i8, ptr %i.ls, align 1, !tbaa !283
  %i.qi = load i8, ptr %i.lu, align 1, !tbaa !283
  %i.qj = load i8, ptr %i.lw, align 1, !tbaa !283
  %i.qk = load i8, ptr %i.ly, align 1, !tbaa !283
  %i.ql = load i8, ptr %i.ma, align 1, !tbaa !283
  %i.qm = load i8, ptr %i.mc, align 1, !tbaa !283
  %i.qn = load i8, ptr %i.me, align 1, !tbaa !283
  %i.qo = load i8, ptr %i.mg, align 1, !tbaa !283
  %i.qp = insertelement <16 x i8> poison, i8 %i.pz, i64 0
  %i.qq = insertelement <16 x i8> %i.qp, i8 %i.qa, i64 1
  %i.qr = insertelement <16 x i8> %i.qq, i8 %i.qb, i64 2
  %i.qs = insertelement <16 x i8> %i.qr, i8 %i.qc, i64 3
  %i.qt = insertelement <16 x i8> %i.qs, i8 %i.qd, i64 4
  %i.qu = insertelement <16 x i8> %i.qt, i8 %i.qe, i64 5
  %i.qv = insertelement <16 x i8> %i.qu, i8 %i.qf, i64 6
  %i.qw = insertelement <16 x i8> %i.qv, i8 %i.qg, i64 7
  %i.qx = insertelement <16 x i8> %i.qw, i8 %i.qh, i64 8
  %i.qy = insertelement <16 x i8> %i.qx, i8 %i.qi, i64 9
  %i.qz = insertelement <16 x i8> %i.qy, i8 %i.qj, i64 10
  %i.ra = insertelement <16 x i8> %i.qz, i8 %i.qk, i64 11
  %i.rb = insertelement <16 x i8> %i.ra, i8 %i.ql, i64 12
  %i.rc = insertelement <16 x i8> %i.rb, i8 %i.qm, i64 13
  %i.rd = insertelement <16 x i8> %i.rc, i8 %i.qn, i64 14
  %i.re = insertelement <16 x i8> %i.rd, i8 %i.qo, i64 15
  %i.rf = load i8, ptr %i.mi, align 1, !tbaa !283
  %i.rg = load i8, ptr %i.mk, align 1, !tbaa !283
  %i.rh = load i8, ptr %i.mm, align 1, !tbaa !283
  %i.ri = load i8, ptr %i.mo, align 1, !tbaa !283
  %i.rj = load i8, ptr %i.mq, align 1, !tbaa !283
  %i.rk = load i8, ptr %i.ms, align 1, !tbaa !283
  %i.rl = load i8, ptr %i.mu, align 1, !tbaa !283
  %i.rm = load i8, ptr %i.mw, align 1, !tbaa !283
  %i.rn = load i8, ptr %i.my, align 1, !tbaa !283
  %i.ro = load i8, ptr %i.na, align 1, !tbaa !283
  %i.rp = load i8, ptr %i.nc, align 1, !tbaa !283
  %i.rq = load i8, ptr %i.ne, align 1, !tbaa !283
  %i.rr = load i8, ptr %i.ng, align 1, !tbaa !283
  %i.rs = load i8, ptr %i.ni, align 1, !tbaa !283
  %i.rt = load i8, ptr %i.nk, align 1, !tbaa !283
  %i.ru = load i8, ptr %i.nm, align 1, !tbaa !283
  %i.rv = insertelement <16 x i8> poison, i8 %i.rf, i64 0
  %i.rw = insertelement <16 x i8> %i.rv, i8 %i.rg, i64 1
end_hunk_2
