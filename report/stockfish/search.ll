inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN9Stockfish6Search6Worker19iterative_deepeningEv:iter.check
  store <32 x i16> splat (i16 97), ptr %i.kp, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.kq, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.kr, align 64, !tbaa !132
  %index.next502.5 = shl nuw i64 %index501, 1
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.ptr10.4.i, i64 %index.next502.5 ; 4 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 1536
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 1600
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 1664
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 1728
  store <32 x i16> splat (i16 97), ptr %i.kt, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.ku, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.kv, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.kw, align 64, !tbaa !132
  %index.next502.6 = shl nuw i64 %index501, 1
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.ptr10.4.i, i64 %index.next502.6 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 1792
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 1856
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 1920
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 1984
  store <32 x i16> splat (i16 97), ptr %i.ky, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.kz, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.la, align 64, !tbaa !132
  store <32 x i16> splat (i16 97), ptr %i.lb, align 64, !tbaa !132
  %index.next502.7 = add nuw nsw i64 %index501, 1024 ; 2 uses
  %i.lc = icmp eq i64 %index.next502.7, 65536
  br i1 %i.lc, label %vector.body505, label %vector.body500, !llvm.loop !261

vector.body505:                                   ; preds = %vector.body500, %vector.body505
  %index506 = phi i64 [ %index.next507.3, %vector.body505 ], [ 0, %vector.body500 ] ; 5 uses
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index506 ; 2 uses
  %wide.load = load <32 x i16>, ptr %i.ld, align 64, !tbaa !132
  %i.le = sext <32 x i16> %wide.load to <32 x i32>
  %i.lf = mul nsw <32 x i32> %i.le, splat (i32 3)
  %i.lg = add nsw <32 x i32> %i.lf, splat (i32 -204)
  %i.lh = sdiv <32 x i32> %i.lg, splat (i32 4)
  %i.li = trunc nsw <32 x i32> %i.lh to <32 x i16>
  %i.lj = add nsw <32 x i16> %i.li, splat (i16 68)
  store <32 x i16> %i.lj, ptr %i.ld, align 64, !tbaa !132
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index506
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 64 ; 2 uses
  %wide.load.1 = load <32 x i16>, ptr %i.ll, align 64, !tbaa !132
  %i.lm = sext <32 x i16> %wide.load.1 to <32 x i32>
  %i.ln = mul nsw <32 x i32> %i.lm, splat (i32 3)
  %i.lo = add nsw <32 x i32> %i.ln, splat (i32 -204)
  %i.lp = sdiv <32 x i32> %i.lo, splat (i32 4)
  %i.lq = trunc nsw <32 x i32> %i.lp to <32 x i16>
  %i.lr = add nsw <32 x i16> %i.lq, splat (i16 68)
  store <32 x i16> %i.lr, ptr %i.ll, align 64, !tbaa !132
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index506
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 128 ; 2 uses
  %wide.load.2 = load <32 x i16>, ptr %i.lt, align 64, !tbaa !132
  %i.lu = sext <32 x i16> %wide.load.2 to <32 x i32>
  %i.lv = mul nsw <32 x i32> %i.lu, splat (i32 3)
  %i.lw = add nsw <32 x i32> %i.lv, splat (i32 -204)
  %i.lx = sdiv <32 x i32> %i.lw, splat (i32 4)
  %i.ly = trunc nsw <32 x i32> %i.lx to <32 x i16>
  %i.lz = add nsw <32 x i16> %i.ly, splat (i16 68)
  store <32 x i16> %i.lz, ptr %i.lt, align 64, !tbaa !132
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index506
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 192 ; 2 uses
  %wide.load.3 = load <32 x i16>, ptr %i.mb, align 64, !tbaa !132
  %i.mc = sext <32 x i16> %wide.load.3 to <32 x i32>
  %i.md = mul nsw <32 x i32> %i.mc, splat (i32 3)
  %i.me = add nsw <32 x i32> %i.md, splat (i32 -204)
  %i.mf = sdiv <32 x i32> %i.me, splat (i32 4)
  %i.mg = trunc nsw <32 x i32> %i.mf to <32 x i16>
  %i.mh = add nsw <32 x i16> %i.mg, splat (i16 68)
  store <32 x i16> %i.mh, ptr %i.mb, align 64, !tbaa !132
  %index.next507.3 = add nuw nsw i64 %index506, 128 ; 2 uses
  %i.mi = icmp eq i64 %index.next507.3, 65536
  br i1 %i.mi, label %middle.block508, label %vector.body505, !llvm.loop !262

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
  %wide.load512 = load <32 x i16>, ptr %i.nk, align 64, !tbaa !132
  %i.nl = sext <32 x i16> %wide.load512 to <32 x i32>
  %i.nm = mul nsw <32 x i32> %i.nl, splat (i32 3)
  %i.nn = add nsw <32 x i32> %i.nm, splat (i32 -204)
  %i.no = sdiv <32 x i32> %i.nn, splat (i32 4)
  %i.np = trunc nsw <32 x i32> %i.no to <32 x i16>
  %i.nq = add nsw <32 x i16> %i.np, splat (i16 68)
  store <32 x i16> %i.nq, ptr %i.nk, align 64, !tbaa !132
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %i.nj, i64 %index511
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 64 ; 2 uses
  %wide.load512.1 = load <32 x i16>, ptr %i.ns, align 64, !tbaa !132
  %i.nt = sext <32 x i16> %wide.load512.1 to <32 x i32>
  %i.nu = mul nsw <32 x i32> %i.nt, splat (i32 3)
  %i.nv = add nsw <32 x i32> %i.nu, splat (i32 -204)
  %i.nw = sdiv <32 x i32> %i.nv, splat (i32 4)
  %i.nx = trunc nsw <32 x i32> %i.nw to <32 x i16>
  %i.ny = add nsw <32 x i16> %i.nx, splat (i16 68)
  store <32 x i16> %i.ny, ptr %i.ns, align 64, !tbaa !132
  %i.nz = getelementptr inbounds nuw [2 x i8], ptr %i.nj, i64 %index511
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 128 ; 2 uses
  %wide.load512.2 = load <32 x i16>, ptr %i.oa, align 64, !tbaa !132
  %i.ob = sext <32 x i16> %wide.load512.2 to <32 x i32>
  %i.oc = mul nsw <32 x i32> %i.ob, splat (i32 3)
  %i.od = add nsw <32 x i32> %i.oc, splat (i32 -204)
  %i.oe = sdiv <32 x i32> %i.od, splat (i32 4)
  %i.of = trunc nsw <32 x i32> %i.oe to <32 x i16>
  %i.og = add nsw <32 x i16> %i.of, splat (i16 68)
  store <32 x i16> %i.og, ptr %i.oa, align 64, !tbaa !132
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %i.nj, i64 %index511
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 192 ; 2 uses
  %wide.load512.3 = load <32 x i16>, ptr %i.oi, align 64, !tbaa !132
  %i.oj = sext <32 x i16> %wide.load512.3 to <32 x i32>
  %i.ok = mul nsw <32 x i32> %i.oj, splat (i32 3)
  %i.ol = add nsw <32 x i32> %i.ok, splat (i32 -204)
  %i.om = sdiv <32 x i32> %i.ol, splat (i32 4)
  %i.on = trunc nsw <32 x i32> %i.om to <32 x i16>
  %i.oo = add nsw <32 x i16> %i.on, splat (i16 68)
  store <32 x i16> %i.oo, ptr %i.oi, align 64, !tbaa !132
  %index.next513.3 = add nuw nsw i64 %index511, 128 ; 2 uses
  %i.op = icmp eq i64 %index.next513.3, 65536
  br i1 %i.op, label %middle.block514, label %vector.body510, !llvm.loop !263

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
  %i.ow = load i32, ptr %i.ov, align 16, !tbaa !264 ; 2 uses
  %i.ox = add nsw i32 %i.ow, 1
  store i32 %i.ox, ptr %i.ov, align 16, !tbaa !264
  %i.oy = icmp slt i32 %i.ow, 245
  br i1 %i.oy, label %.lr.ph393, label %.critedge

bb.f:                                             ; preds = %.lr.ph393, %bb.br
  %.0391 = phi i32 [ 0, %.lr.ph393 ], [ %.1, %bb.br ] ; 2 uses
  %.0129390 = phi i32 [ -32001, %.lr.ph393 ], [ %.1130, %bb.br ] ; 4 uses
  %.0133389 = phi i32 [ -32001, %.lr.ph393 ], [ %.2135, %bb.br ]
  %.0136388 = phi double [ 1.000000e+00, %.lr.ph393 ], [ %.2138, %bb.br ] ; 6 uses
  %.0139387 = phi double [ 0.000000e+00, %.lr.ph393 ], [ %.3, %bb.br ] ; 2 uses
  %.0144386 = phi i32 [ 0, %.lr.ph393 ], [ %.1145, %bb.br ] ; 4 uses
  %.0152385 = phi i32 [ 0, %.lr.ph393 ], [ %spec.select195, %bb.br ]
  %i.oz = load ptr, ptr %i.mj, align 64, !tbaa !220, !nonnull !48, !align !49
  %i.pa = load atomic i8, ptr %i.oz seq_cst, align 8, !range !221, !noundef !48
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.pc = load i32, ptr %i.mk, align 4, !tbaa !231 ; 2 uses
  %i.pd = icmp ne i32 %i.pc, 0
  %or.cond = and i1 %i.an, %i.pd
  br i1 %or.cond, label %bb.h, label %.critedge194

bb.h:                                             ; preds = %bb.g
  %i.pe = load i32, ptr %i.ov, align 16, !tbaa !264
  %.not349 = icmp sgt i32 %i.pe, %i.pc
  br i1 %.not349, label %.critedge.thread, label %.critedge194

.critedge194:                                     ; preds = %bb.g, %bb.h
  %i.pf = fmul double %.0139387, 5.000000e-01     ; 2 uses
  %i.pg = load ptr, ptr %i.db, align 8, !tbaa !175 ; 7 uses
  %i.ph = load ptr, ptr %i.dc, align 32, !tbaa !175 ; 3 uses
  %.not350369 = icmp eq ptr %i.pg, %i.ph
  br i1 %.not350369, label %._crit_edge, label %iter.check526

iter.check526:                                    ; preds = %.critedge194
  %9 = ptrtoint ptr %i.ph to i64
  %10 = ptrtoint ptr %i.pg to i64
  %i.pi = add i64 %9, -72
  %i.pj = sub i64 %i.pi, %10                      ; 3 uses
  %i.pk = udiv i64 %i.pj, 72
  %i.pl = add nuw nsw i64 %i.pk, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.pj, 504
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check515

vector.main.loop.iter.check515:                   ; preds = %iter.check526
  %min.iters.check516 = icmp ult i64 %i.pj, 1080
  br i1 %min.iters.check516, label %vec.epilog.ph529, label %vector.ph517

vector.ph517:                                     ; preds = %vector.main.loop.iter.check515
  %n.mod.vf = and i64 %i.pl, 8
  %n.vec = and i64 %i.pl, 576460752303423472      ; 4 uses
  %i.pm = mul i64 %n.vec, 72
  %i.pn = getelementptr i8, ptr %i.pg, i64 %i.pm  ; 2 uses
  br label %vector.body518

vector.body518:                                   ; preds = %vector.body518, %vector.ph517
  %index519 = phi i64 [ 0, %vector.ph517 ], [ %index.next522, %vector.body518 ]
  %pointer.phi = phi ptr [ %i.pg, %vector.ph517 ], [ %ptr.ind, %vector.body518 ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <16 x i64> <i64 0, i64 72, i64 144, i64 216, i64 288, i64 360, i64 432, i64 504, i64 576, i64 648, i64 720, i64 792, i64 864, i64 936, i64 1008, i64 1080> ; 2 uses
  %wide.gep520 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 8
  %wide.masked.gather = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 8 %wide.gep520, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !238
  %wide.gep521 = getelementptr inbounds nuw i8, <16 x ptr> %vector.gep, i64 12
  call void @llvm.masked.scatter.v16i32.v16p0(<16 x i32> %wide.masked.gather, <16 x ptr> align 4 %wide.gep521, <16 x i1> splat (i1 true)), !tbaa !265
  %index.next522 = add nuw i64 %index519, 16      ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 1152
  %i.po = icmp eq i64 %index.next522, %n.vec
  br i1 %i.po, label %middle.block523, label %vector.body518, !llvm.loop !266

middle.block523:                                  ; preds = %vector.body518
  %cmp.n = icmp eq i64 %i.pl, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check528

vec.epilog.iter.check528:                         ; preds = %middle.block523
  %min.epilog.iters.check.not.not = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph529, !prof !267

vec.epilog.ph529:                                 ; preds = %vector.main.loop.iter.check515, %vec.epilog.iter.check528
  %vec.epilog.resume.val524 = phi i64 [ %n.vec, %vec.epilog.iter.check528 ], [ 0, %vector.main.loop.iter.check515 ]
  %bc.resume.val525 = phi ptr [ %i.pn, %vec.epilog.iter.check528 ], [ %i.pg, %vector.main.loop.iter.check515 ]
  %n.vec531 = and i64 %i.pl, 576460752303423480   ; 3 uses
  %i.pp = mul i64 %n.vec531, 72
  %i.pq = getelementptr i8, ptr %i.pg, i64 %i.pp
  br label %vec.epilog.vector.body532

vec.epilog.vector.body532:                        ; preds = %vec.epilog.vector.body532, %vec.epilog.ph529
  %index533 = phi i64 [ %vec.epilog.resume.val524, %vec.epilog.ph529 ], [ %index.next539, %vec.epilog.vector.body532 ]
  %pointer.phi534 = phi ptr [ %bc.resume.val525, %vec.epilog.ph529 ], [ %ptr.ind540, %vec.epilog.vector.body532 ] ; 2 uses
  %vector.gep535 = getelementptr i8, ptr %pointer.phi534, <8 x i64> <i64 0, i64 72, i64 144, i64 216, i64 288, i64 360, i64 432, i64 504> ; 2 uses
  %wide.gep536 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep535, i64 8
  %wide.masked.gather537 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep536, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !238
  %wide.gep538 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep535, i64 12
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %wide.masked.gather537, <8 x ptr> align 4 %wide.gep538, <8 x i1> splat (i1 true)), !tbaa !265
  %index.next539 = add nuw i64 %index533, 8       ; 2 uses
  %ptr.ind540 = getelementptr i8, ptr %pointer.phi534, i64 576
  %i.pr = icmp eq i64 %index.next539, %n.vec531
  br i1 %i.pr, label %vec.epilog.middle.block541, label %vec.epilog.vector.body532, !llvm.loop !268

vec.epilog.middle.block541:                       ; preds = %vec.epilog.vector.body532
  %cmp.n542 = icmp eq i64 %i.pl, %n.vec531
  br i1 %cmp.n542, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check526, %vec.epilog.iter.check528, %vec.epilog.middle.block541
  %.sroa.0296.0370.ph = phi ptr [ %i.pg, %iter.check526 ], [ %i.pn, %vec.epilog.iter.check528 ], [ %i.pq, %vec.epilog.middle.block541 ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block523, %vec.epilog.middle.block541, %.critedge194
  store i64 0, ptr %i.ml, align 16, !tbaa !269
  %i.ps = load ptr, ptr %i.mj, align 64, !tbaa !220, !nonnull !48, !align !49
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 2
  %i.pu = load atomic i8, ptr %i.pt seq_cst, align 2, !range !221, !noundef !48
  %i.pv = xor i8 %i.pu, 1
  %i.pw = zext nneg i8 %i.pv to i32
  %spec.select195 = add nuw nsw i32 %.0152385, %i.pw ; 2 uses
  store i64 0, ptr %i.mm, align 8, !tbaa !270
  br i1 %.not397, label %._crit_edge375, label %.lr.ph374

.lr.ph374:                                        ; preds = %._crit_edge
  %i.px = mul i32 %spec.select195, 3
  %i.py = add i32 %i.px, 3
  %.neg = sdiv i32 %i.py, -4
  br label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0296.0370 = phi ptr [ %i.qc, %.lr.ph ], [ %.sroa.0296.0370.ph, %.lr.ph.preheader ] ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.0296.0370, i64 8
  %i.qa = load i32, ptr %i.pz, align 8, !tbaa !238
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.0296.0370, i64 12
  store i32 %i.qa, ptr %i.qb, align 4, !tbaa !265
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.0296.0370, i64 72 ; 2 uses
  %.not350 = icmp eq ptr %i.qc, %i.ph
  br i1 %.not350, label %._crit_edge, label %.lr.ph, !llvm.loop !271

bb.i:                                             ; preds = %.lr.ph374, %bb.ae
  %.0161372 = phi i64 [ 0, %.lr.ph374 ], [ %.1162, %bb.ae ]
  %storemerge371 = phi i64 [ 0, %.lr.ph374 ], [ %i.to, %bb.ae ] ; 6 uses
  %i.qd = load i64, ptr %i.ml, align 16, !tbaa !269
  %i.qe = icmp eq i64 %storemerge371, %i.qd
  %.pre = load ptr, ptr %i.db, align 8, !tbaa !233 ; 4 uses
  br i1 %i.qe, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.i
  %i.qf = load ptr, ptr %i.dc, align 32, !tbaa !193
  %i.qg = ptrtoint ptr %i.qf to i64
  %i.qh = ptrtoint ptr %.pre to i64
  %i.qi = sub i64 %i.qg, %i.qh
  %i.qj = sdiv exact i64 %i.qi, 72                ; 3 uses
  %i.qk = getelementptr inbounds nuw [72 x i8], ptr %.pre, i64 %storemerge371
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 36
  %i.qm = add nuw i64 %storemerge371, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.qj, i64 %i.qm) ; 2 uses
  %storemerge175460 = add i64 %storemerge371, 1   ; 2 uses
  %i.qn = icmp ult i64 %storemerge175460, %i.qj
  br i1 %i.qn, label %.lr.ph462.preheader, label %.loopexit

.lr.ph462.preheader:                              ; preds = %.preheader
  %i.qo = load i32, ptr %i.ql, align 4, !tbaa !188
  br label %.lr.ph462

bb.j:                                             ; preds = %.lr.ph462
  %storemerge175 = add i64 %storemerge175461, 1   ; 2 uses
  %i.qp = icmp ult i64 %storemerge175, %i.qj
  br i1 %i.qp, label %.lr.ph462, label %.loopexit, !llvm.loop !272

.lr.ph462:                                        ; preds = %.lr.ph462.preheader, %bb.j
  %storemerge175461 = phi i64 [ %storemerge175, %bb.j ], [ %storemerge175460, %.lr.ph462.preheader ] ; 3 uses
  %i.qq = getelementptr inbounds nuw [72 x i8], ptr %.pre, i64 %storemerge175461
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 36
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !188
  %.not176 = icmp eq i32 %i.qs, %i.qo
  br i1 %.not176, label %bb.j, label %..loopexit_crit_edge, !llvm.loop !272

..loopexit_crit_edge:                             ; preds = %.lr.ph462
  br label %.loopexit, !llvm.loop !272

.loopexit:                                        ; preds = %bb.j, %..loopexit_crit_edge, %.preheader
  %storemerge175.lcssa = phi i64 [ %storemerge175461, %..loopexit_crit_edge ], [ %umax, %.preheader ], [ %umax, %bb.j ]
  store i64 %storemerge175.lcssa, ptr %i.ml, align 16, !tbaa !269
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.i
  %.1162 = phi i64 [ %.0161372, %bb.i ], [ %storemerge371, %.loopexit ] ; 2 uses
  store i32 0, ptr %i.mn, align 16, !tbaa !273
  %i.qt = load i64, ptr %i.b, align 64, !tbaa !64
  %i.qu = getelementptr inbounds nuw [72 x i8], ptr %.pre, i64 %storemerge371 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 20
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !274
  %i.qx = call i32 @llvm.abs.i32(i32 %i.qw, i1 true)
  %i.qy = udiv i32 %i.qx, 9000
  %i.qz = trunc i64 %i.qt to i32
  %i.ra = and i32 %i.qz, 7
  %i.rb = add nuw nsw i32 %i.ra, 5
  %i.rc = add nuw nsw i32 %i.rb, %i.qy            ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.re = load i32, ptr %i.rd, align 8, !tbaa !240 ; 4 uses
  %i.rf = sub nsw i32 %i.re, %i.rc
  %.sroa.speculated290 = call i32 @llvm.smax.i32(i32 %i.rf, i32 -32001)
  %i.rg = add nsw i32 %i.rc, %i.re
  %.sroa.speculated285 = call i32 @llvm.smin.i32(i32 %i.rg, i32 32001)
  %i.rh = mul nsw i32 %i.re, 142
  %i.ri = call i32 @llvm.abs.i32(i32 %i.re, i1 true)
  %i.rj = add nuw nsw i32 %i.ri, 91
  %i.rk = sdiv i32 %i.rh, %i.rj                   ; 2 uses
  store i32 %i.rk, ptr %i.mq, align 4, !tbaa !138
  %i.rl = sub nsw i32 0, %i.rk
  store i32 %i.rl, ptr %i.mt, align 4, !tbaa !138
  br label %bb.l

bb.l:                                             ; preds = %bb.v, %bb.k
  %.0334 = phi i32 [ %.sroa.speculated290, %bb.k ], [ %.1335, %bb.v ] ; 7 uses
  %.0158 = phi i32 [ 0, %bb.k ], [ %.1159, %bb.v ] ; 2 uses
  %.0142 = phi i32 [ %i.rc, %bb.k ], [ %i.sk, %bb.v ] ; 5 uses
  %.0131 = phi i32 [ %.sroa.speculated285, %bb.k ], [ %.1132, %bb.v ] ; 5 uses
  %i.rm = load i32, ptr %i.ov, align 16, !tbaa !264
  %i.rn = sub i32 %.neg, %.0158
  %i.ro = add i32 %i.rn, %i.rm
  %.sroa.speculated278 = call i32 @llvm.smax.i32(i32 %i.ro, i32 1)
  %i.rp = sub nsw i32 %.0131, %.0334
  store i32 %i.rp, ptr %i.mu, align 8, !tbaa !275
  %i.rq = call noundef i32 @_ZN9Stockfish6Search6Worker6searchILNS_8NodeTypeE2EEEiRNS_8PositionEPNS0_5StackEiiib(ptr noundef nonnull align 64 dereferenceable(14279296) %0, ptr noundef nonnull align 8 dereferenceable(1048) %i.am, ptr noundef nonnull %i.l, i32 noundef %.0334, i32 noundef %.0131, i32 noundef %.sroa.speculated278, i1 noundef zeroext false) ; 8 uses
  %i.rr = load ptr, ptr %i.db, align 8, !tbaa !175 ; 2 uses
  %i.rs = load i64, ptr %i.mm, align 8, !tbaa !270
  %i.rt = getelementptr inbounds [72 x i8], ptr %i.rr, i64 %i.rs
  %i.ru = load i64, ptr %i.ml, align 16, !tbaa !269
  %i.rv = getelementptr inbounds [72 x i8], ptr %i.rr, i64 %i.ru
  call void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.rt, ptr %i.rv)
  %i.rw = load ptr, ptr %i.mj, align 64, !tbaa !220, !nonnull !48, !align !49
  %i.rx = load atomic i8, ptr %i.rw seq_cst, align 8, !range !221, !noundef !48
  %i.ry = trunc nuw i8 %i.rx to i1
  br i1 %i.ry, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond3, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.not177 = icmp sgt i32 %i.rq, %.0334
  %.not178 = icmp slt i32 %i.rq, %.0131
  %or.cond196 = and i1 %.not177, %.not178
end_hunk_0
begin_hunk_1_@_ZN9Stockfish6Search6Worker8evaluateERKNS_8PositionE:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11422224
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !169, !nonnull !48, !align !49 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 11421144
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8, !tbaa !25 ; 2 uses
  tail call void @_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE14ensure_presentEm(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef %.sroa.0.0.copyload)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.f = getelementptr inbounds nuw [160 x i8], ptr %i.e, i64 %.sroa.0.0.copyload ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.h = load i8, ptr %i.g, align 8, !tbaa !125
  switch i8 %i.h, label %bb.d [
    i8 -1, label %bb.b
    i8 2, label %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEixENS_25NumaReplicatedAccessTokenE.exit
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  br label %_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEixENS_25NumaReplicatedAccessTokenE.exit

bb.d:                                             ; preds = %bb.a
  unreachable

_ZNK9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEixENS_25NumaReplicatedAccessTokenE.exit: ; preds = %bb.a, %bb.c
  %.0.i.i.i.in.i.i = phi ptr [ %i.i, %bb.c ], [ %i.f, %bb.a ]
  %.0.i.i.i.i.i = load ptr, ptr %.0.i.i.i.in.i.i, align 8, !tbaa !127
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 11422272
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 13951616
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 11419832
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 620
  %i.n = load i8, ptr %i.m, align 4, !tbaa !171
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !138
  %i.r = tail call noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344) %.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1048) %1, ptr noundef nonnull align 64 dereferenceable(2529288) %i.j, ptr noundef nonnull align 64 dereferenceable(327680) %i.k, i32 noundef %i.q) #33
  ret i32 %i.r
}

declare noundef i32 @_ZN9Stockfish4Eval8evaluateERKNS0_4NNUE8NetworksERKNS_8PositionERNS1_16AccumulatorStackERNS1_17AccumulatorCachesEi(ptr noundef nonnull align 64 dereferenceable(137849344), ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef nonnull align 64 dereferenceable(2529288), ptr noundef nonnull align 64 dereferenceable(327680), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(14279296) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !363  ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !363
  %i.d = icmp sgt i32 %i.b, 1
  br i1 %i.d, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 11419768 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !364  ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  %i.g = lshr i64 %i.f, 10
  %i.h = trunc i64 %i.g to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.h, i32 512)
  %i.i = select i1 %.not, i32 512, i32 %.sroa.speculated
  store i32 %i.i, ptr %i.a, align 8, !tbaa !363
  %i.j = load atomic i8, ptr @_ZGVZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerEE12lastInfoTime acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.e, !prof !359

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerEE12lastInfoTime) #33
  %.not18 = icmp eq i32 %i.l, 0
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.n = sdiv i64 %i.m, 1000000
  store i64 %i.n, ptr @_ZZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerEE12lastInfoTime, align 8, !tbaa !25
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerEE12lastInfoTime) #33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i8, ptr %i.p, align 8, !tbaa !288, !range !221, !noundef !48
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 11422208
  %.val.val.i = load ptr, ptr %i.s, align 64, !tbaa !220
  %i.t = tail call noundef i64 @_ZNK9Stockfish10ThreadPool14nodes_searchedEv(ptr noundef nonnull align 8 dereferenceable(64) %.val.val.i) #33
  br label %"_ZNK9Stockfish14TimeManagement7elapsedIZNS_6Search13SearchManager10check_timeERNS2_6WorkerEE3$_0EElT_.exit"

bb.g:                                             ; preds = %bb.e
  %i.u = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.v = sdiv i64 %i.u, 1000000
  %i.w = load i64, ptr %i.o, align 8, !tbaa !289
  %i.x = sub nsw i64 %i.v, %i.w
  br label %"_ZNK9Stockfish14TimeManagement7elapsedIZNS_6Search13SearchManager10check_timeERNS2_6WorkerEE3$_0EElT_.exit"

"_ZNK9Stockfish14TimeManagement7elapsedIZNS_6Search13SearchManager10check_timeERNS2_6WorkerEE3$_0EElT_.exit": ; preds = %bb.f, %bb.g
  %i.y = phi i64 [ %i.t, %bb.f ], [ %i.x, %bb.g ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 11419736
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !365
  %i.ab = add nsw i64 %i.aa, %i.y                 ; 2 uses
  %i.ac = load i64, ptr @_ZZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerEE12lastInfoTime, align 8, !tbaa !25
  %i.ad = sub nsw i64 %i.ab, %i.ac
  %i.ae = icmp sgt i64 %i.ad, 999
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %"_ZNK9Stockfish14TimeManagement7elapsedIZNS_6Search13SearchManager10check_timeERNS2_6WorkerEE3$_0EElT_.exit"
  store i64 %i.ab, ptr @_ZZN9Stockfish6Search13SearchManager10check_timeERNS0_6WorkerEE12lastInfoTime, align 8, !tbaa !25
  tail call void @_ZN9Stockfish9dbg_printEv() #33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %"_ZNK9Stockfish14TimeManagement7elapsedIZNS_6Search13SearchManager10check_timeERNS2_6WorkerEE3$_0EElT_.exit"
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ag = load atomic i8, ptr %i.af seq_cst, align 4, !range !221, !noundef !48
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 11421108
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !242
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 11419688
  %i.am = load i64, ptr %i.al, align 8, !tbaa !25
  %.not.i = icmp ne i64 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 11419696
  %i.ao = load i64, ptr %i.an, align 16
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = select i1 %.not.i, i1 true, i1 %i.ap
  br i1 %i.aq, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ar = tail call noundef i64 @_ZNK9Stockfish14TimeManagement7maximumEv(ptr noundef nonnull align 8 dereferenceable(33) %i.o) #33
  %i.as = icmp sgt i64 %i.y, %i.ar
  br i1 %i.as, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load i8, ptr %i.at, align 8, !tbaa !276, !range !221, !noundef !48
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 11419728
  %i.ax = load i64, ptr %i.aw, align 16, !tbaa !366 ; 2 uses
  %.not19 = icmp eq i64 %i.ax, 0
  %.not20 = icmp slt i64 %i.y, %i.ax
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ay = load i64, ptr %i.e, align 8, !tbaa !364
  %.not21 = icmp eq i64 %i.ay, 0
  br i1 %.not21, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 11422208
  %i.ba = load ptr, ptr %i.az, align 64, !tbaa !220, !nonnull !48, !align !49
  %i.bb = tail call noundef i64 @_ZNK9Stockfish10ThreadPool14nodes_searchedEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ba) #33
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !364
  %.not22 = icmp ult i64 %i.bb, %i.bc
  br i1 %.not22, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.m, %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 11422208 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 64, !tbaa !220, !nonnull !48, !align !49
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store atomic i8 1, ptr %i.bf seq_cst, align 1
  %i.bg = load ptr, ptr %i.bd, align 64, !tbaa !220, !nonnull !48, !align !49
  store atomic i8 1, ptr %i.bg seq_cst, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %bb.q, %bb.p, %bb.o, %bb.j, %bb.a
  ret void
}

declare void @_ZN9Stockfish9dbg_printEv() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(113) %1, ptr noundef nonnull align 8 dereferenceable(1048) initializes((1016, 1024)) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #4 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::chrono::time_point", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::list", align 8 ; 13 uses
  %9 = alloca %"class.std::vector.53", align 8    ; 11 uses
  %10 = alloca %"struct.Stockfish::MoveList", align 8 ; 6 uses
  %11 = alloca %"class.std::function.197", align 8 ; 9 uses
  %12 = alloca %"class.std::vector.53", align 8   ; 12 uses
  %13 = alloca %"struct.Stockfish::MoveList", align 8 ; 6 uses
  %14 = alloca %"struct.Stockfish::StateInfo", align 8 ; 3 uses
  %15 = alloca %"struct.Stockfish::MoveList", align 8 ; 10 uses
  %16 = ptrtoint ptr %15 to i64
  %17 = alloca %"class.std::function.197", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.c = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  store i64 %i.c, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.d, ptr noundef nonnull align 1 dereferenceable(13) @.str.5, i64 13, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 13, ptr %i.e, align 8, !tbaa !228
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 29
  store i8 0, ptr %i.f, align 1, !tbaa !130
  %i.g = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %6) #33
  %i.h = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.g) #33
  %i.i = load ptr, ptr %6, align 8, !tbaa !230    ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.d
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.k = load i64, ptr %i.d, align 8, !tbaa !130
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  store i32 %i.h, ptr %i.b, align 4, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.m, ptr %7, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 16, ptr %i.a, align 8, !tbaa !25
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #33 ; 2 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !230
  %i.o = load i64, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, ptr noundef nonnull align 1 dereferenceable(16) @.str.6, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !228
  %i.q = load ptr, ptr %7, align 8, !tbaa !230
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.s = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK9Stockfish10OptionsMapixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %7) #33
  %i.t = call noundef i32 @_ZNK9Stockfish6OptioncviEv(ptr noundef nonnull align 8 dereferenceable(152) %i.s) #33
  %.not106 = icmp eq i32 %i.t, 0                  ; 2 uses
  %i.u = load ptr, ptr %7, align 8, !tbaa !230    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.m
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = load i64, ptr %i.m, align 8, !tbaa !130
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store ptr %8, ptr %i.y, align 8, !tbaa !367
  store ptr %8, ptr %8, align 8, !tbaa !370
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store i64 0, ptr %i.z, align 8, !tbaa !371
  %i.aa = call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #36 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ab, i8 0, i64 192, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %8) #33
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !373
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.z, align 8, !tbaa !373
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !367
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 8 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !189
  %.sroa.064.0.copyload = load i16, ptr %i.ah, align 2, !tbaa !191 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 632 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 1016 ; 4 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !62
  %i.ak = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.064.0.copyload) #33
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 622 ; 4 uses
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.064.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %i.af, i1 noundef zeroext %i.ak, ptr noundef nonnull align 1 dereferenceable(7) %i.al, ptr noundef nonnull align 8 dereferenceable(416) %i.ai, ptr noundef null, ptr noundef null) #33
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 512
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.a

bb.a:                                             ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %.0 = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.2, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit ] ; 4 uses
  %i.av = sext i32 %.0 to i64                     ; 3 uses
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !192 ; 2 uses
  %i.ax = load ptr, ptr %i.ag, align 8, !tbaa !189 ; 3 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 1                 ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, %i.av
  br i1 %i.bc, label %bb.b, label %split

bb.b:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.av ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.be = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 8 dereferenceable(520) %10) #33 ; 3 uses
  store ptr %i.be, ptr %i.an, align 8, !tbaa !376
  %.not107209 = icmp eq ptr %10, %i.be
  br i1 %.not107209, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %.pre = load ptr, ptr %i.ao, align 8, !tbaa !193
  %.pre240 = load ptr, ptr %i.ap, align 8, !tbaa !176
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  store i64 0, ptr %i.au, align 8
  %i.bf = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36 ; 4 uses
  store ptr %5, ptr %i.bf, align 16, !tbaa !378
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.b, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !380
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr %1, ptr %.sroa.12.0..sroa_idx, align 16, !tbaa !382
  store ptr %i.bf, ptr %11, align 8, !tbaa !120
  store ptr @"_ZNSt17_Function_handlerIFbvEZN9Stockfish16syzygy_extend_pvERKNS1_10OptionsMapERKNS1_6Search10LimitsTypeERNS1_8PositionERNS5_8RootMoveERiE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.ar, align 8, !tbaa !384
  store ptr @"_ZNSt17_Function_handlerIFbvEZN9Stockfish16syzygy_extend_pvERKNS1_10OptionsMapERKNS1_6Search10LimitsTypeERNS1_8PositionERNS5_8RootMoveERiE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.aq, align 8, !tbaa !215
  %i.bg = call { i64, i32 } @_ZN9Stockfish10Tablebases15rank_root_movesERKNS_10OptionsMapERNS_8PositionERSt6vectorINS_6Search8RootMoveESaIS8_EEbRKSt8functionIFbvEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %11) #33
  %i.bh = load ptr, ptr %i.aq, align 8, !tbaa !215 ; 2 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.bi = call noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3) #33, !inline_history !386 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  %i.bj = load ptr, ptr %9, align 8, !tbaa !175   ; 5 uses
  %i.bk = load ptr, ptr %i.ao, align 8, !tbaa !175 ; 3 uses
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = sdiv exact i64 %i.bn, 72
  %i.bp = ashr i64 %i.bo, 2                       ; 3 uses
  %i.bq = icmp sgt i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.br = load i16, ptr %i.bd, align 2, !tbaa !234 ; 4 uses
  %i.bs = mul nuw nsw i64 %i.bp, 288
  %scevgep.i.i.i = getelementptr i8, ptr %i.bj, i64 %i.bs ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.bp, %.lr.ph.i.i.i ], [ %i.ck, %bb.h ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i ], [ %i.cj, %bb.h ] ; 9 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !189
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !234
  %i.bw = icmp eq i16 %i.bv, %i.br
  br i1 %i.bw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS2_4MoveEET_SB_SB_RKT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 120
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !189
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !234
  %i.ca = icmp eq i16 %i.bz, %i.br
  br i1 %i.ca, label %.loopexit.split.loop.exit42.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 192
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !189
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !234
  %i.ce = icmp eq i16 %i.cd, %i.br
  br i1 %i.ce, label %.loopexit.split.loop.exit44.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 264
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !189
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !234
  %i.ci = icmp eq i16 %i.ch, %i.br
  br i1 %i.ci, label %.loopexit.split.loop.exit46.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 288
  %i.ck = add nsw i64 %.052.i.i.i, -1
  %i.cl = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.cl, label %bb.d, label %._crit_edge.loopexit.i.i.i, !llvm.loop !290

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.h
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.bl, %.pre59.i.i.i
end_hunk_1
begin_hunk_2_@_ZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERi:._crit_edge.i.i
bb.ac:                                            ; preds = %bb.ab
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.gx, i64 %.pre-phi ; 2 uses
  %.not.i.i122 = icmp eq ptr %i.gy, %i.hc
  br i1 %.not.i.i122, label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.hc, ptr %i.am, align 8, !tbaa !192
  br label %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit: ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %i.hd = getelementptr inbounds nuw i8, ptr %13, i64 512
  %i.he = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %17, i64 8
  %invariant.op = sub i64 -2, %16
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EED2Ev.exit145, %_ZNSt6vectorIN9Stockfish4MoveESaIS1_EE6resizeEm.exit
  br i1 %.not106, label %.critedge113, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hk = call noundef zeroext i1 @_ZNK9Stockfish8Position7is_drawEi(ptr noundef nonnull align 8 dereferenceable(1048) %2, i32 noundef 0) #33
  br i1 %i.hk, label %bb.bd, label %.critedge113

.critedge113:                                     ; preds = %bb.ae, %bb.af
  %i.hl = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #33
  %i.hm = load i64, ptr %i.as, align 8, !tbaa !25
  %.not.i.i123 = icmp ne i64 %i.hm, 0
  %i.hn = load i64, ptr %i.at, align 8
  %i.ho = icmp ne i64 %i.hn, 0
  %i.hp = select i1 %.not.i.i123, i1 true, i1 %i.ho
  br i1 %i.hp, label %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit125", label %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit125.thread"

"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit125": ; preds = %.critedge113
  %.sroa.0.0.copyload.i2.i.i124 = load i64, ptr %5, align 8, !tbaa !25
  %i.hq = sub nsw i64 %i.hl, %.sroa.0.0.copyload.i2.i.i124
  %i.hr = sitofp i64 %i.hq to double
  %i.hs = fdiv nnan double %i.hr, 1.000000e+06
  %i.ht = fmul nnan double %i.hs, 2.000000e+00
  %i.hu = load i32, ptr %i.b, align 4, !tbaa !138
  %i.hv = sitofp i32 %i.hu to double
  %i.hw = fcmp ogt double %i.ht, %i.hv
  br i1 %i.hw, label %bb.bd, label %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit125.thread"

"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit125.thread": ; preds = %.critedge113, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit125"
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  %i.hx = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 8 dereferenceable(520) %13) #33 ; 3 uses
  store ptr %i.hx, ptr %i.hd, align 8, !tbaa !376
  %.not110216 = icmp eq ptr %13, %i.hx
  br i1 %.not110216, label %._crit_edge219, label %.lr.ph218

._crit_edge219:                                   ; preds = %bb.ak, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit125.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  %i.hy = load ptr, ptr %i.he, align 8, !tbaa !193 ; 6 uses
  %i.hz = load ptr, ptr %12, align 8, !tbaa !233  ; 13 uses
  %i.ia = ptrtoint ptr %i.hy to i64               ; 2 uses
  %i.ib = icmp eq ptr %i.hy, %i.hz
  br i1 %i.ib, label %bb.ba, label %bb.al

.lr.ph218:                                        ; preds = %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit125.thread", %bb.ak
  %.0103217 = phi ptr [ %i.xo, %bb.ak ], [ %13, %"_ZZN9Stockfish16syzygy_extend_pvERKNS_10OptionsMapERKNS_6Search10LimitsTypeERNS_8PositionERNS3_8RootMoveERiENK3$_0clEv.exit125.thread" ] ; 5 uses
  %i.ic = load ptr, ptr %i.he, align 8, !tbaa !193 ; 16 uses
  %i.id = load ptr, ptr %i.hf, align 8, !tbaa !176
  %.not.i126 = icmp eq ptr %i.ic, %i.id
  br i1 %.not.i126, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph218
  %.sroa.0.0.copyload.i.i127 = load i16, ptr %.0103217, align 2, !tbaa !191 ; 2 uses
  store i64 0, ptr %i.ic, align 8, !tbaa !177
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store <4 x i32> <i32 -32001, i32 -32001, i32 -32001, i32 -1024064001>, ptr %i.ie, align 8, !tbaa !138
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  store i32 -32001, ptr %i.if, align 8, !tbaa !184
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 28
  store i8 0, ptr %i.ig, align 4, !tbaa !185
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 29
  store i8 0, ptr %i.ih, align 1, !tbaa !186
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  store i32 0, ptr %i.ii, align 8, !tbaa !187
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ic, i64 36
  store i32 0, ptr %i.ij, align 4, !tbaa !188
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  %i.il = getelementptr inbounds nuw i8, ptr %i.ic, i64 56
  %i.im = call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #36 ; 3 uses
  store ptr %i.im, ptr %i.ik, align 8, !tbaa !189
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 2 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ic, i64 64
  store ptr %i.in, ptr %i.io, align 8, !tbaa !190
  store i16 %.sroa.0.0.copyload.i.i127, ptr %i.im, align 2, !tbaa !191
  store ptr %i.in, ptr %i.il, align 8, !tbaa !192
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ic, i64 72
  store ptr %i.ip, ptr %i.he, align 8, !tbaa !193
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit129

bb.ah:                                            ; preds = %.lr.ph218
  %i.iq = load ptr, ptr %12, align 8, !tbaa !233  ; 5 uses
  %i.ir = ptrtoint ptr %i.ic to i64
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = sub i64 %i.ir, %i.is                    ; 4 uses
  %i.iu = icmp eq i64 %i.it, 9223372036854775800
  br i1 %i.iu, label %bb.ai, label %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i155

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #37
  unreachable

_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i155: ; preds = %bb.ah
  %i.iv = sdiv exact i64 %i.it, 72                ; 3 uses
  %.sroa.speculated.i.i156 = call i64 @llvm.umax.i64(i64 %i.iv, i64 1)
  %i.iw = add nsw i64 %.sroa.speculated.i.i156, %i.iv ; 2 uses
  %i.ix = icmp ult i64 %i.iw, %i.iv
  %i.iy = call i64 @llvm.umin.i64(i64 %i.iw, i64 128102389400760775)
  %i.iz = select i1 %i.ix, i64 128102389400760775, i64 %i.iy ; 3 uses
  %.not.i.i157 = icmp ne i64 %i.iz, 0
  call void @llvm.assume(i1 %.not.i.i157)
  %i.ja = mul nuw nsw i64 %i.iz, 72
  %i.jb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ja) #36 ; 5 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.it ; 10 uses
  %.sroa.0.0.copyload.i.i158 = load i16, ptr %.0103217, align 2, !tbaa !191
  store i64 0, ptr %i.jc, align 8, !tbaa !177
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  store <4 x i32> <i32 -32001, i32 -32001, i32 -32001, i32 -1024064001>, ptr %i.jd, align 8, !tbaa !138
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  store i32 -32001, ptr %i.je, align 8, !tbaa !184
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 28
  store i8 0, ptr %i.jf, align 4, !tbaa !185
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 29
  store i8 0, ptr %i.jg, align 1, !tbaa !186
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  store i32 0, ptr %i.jh, align 8, !tbaa !187
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jc, i64 36
  store i32 0, ptr %i.ji, align 4, !tbaa !188
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jc, i64 48
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jc, i64 56
  %i.jl = call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #36 ; 3 uses
  store ptr %i.jl, ptr %i.jj, align 8, !tbaa !189
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 2 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jc, i64 64
  store ptr %i.jm, ptr %i.jn, align 8, !tbaa !190
  store i16 %.sroa.0.0.copyload.i.i158, ptr %i.jl, align 2, !tbaa !191
  store ptr %i.jm, ptr %i.jk, align 8, !tbaa !192
  %.not10.i.i.i.i159 = icmp eq ptr %i.iq, %i.ic
  br i1 %.not10.i.i.i.i159, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i171, label %.lr.ph.i.i.i.i160

.lr.ph.i.i.i.i160:                                ; preds = %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i155, %.lr.ph.i.i.i.i160
  %.012.i.i.i.i161 = phi ptr [ %i.jv, %.lr.ph.i.i.i.i160 ], [ %i.jb, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i155 ] ; 4 uses
  %.0911.i.i.i.i162 = phi ptr [ %i.ju, %.lr.ph.i.i.i.i160 ], [ %i.iq, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i155 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  call void @llvm.experimental.noalias.scope.decl(metadata !398)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i.i161, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i.i162, i64 44, i1 false), !alias.scope !400
  %i.jo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i161, i64 48
  %i.jp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i162, i64 48 ; 2 uses
  %i.jq = load <2 x ptr>, ptr %i.jp, align 8, !tbaa !291, !alias.scope !398, !noalias !395
  store <2 x ptr> %i.jq, ptr %i.jo, align 8, !tbaa !291, !alias.scope !395, !noalias !398
  %i.jr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i161, i64 64
  %i.js = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i162, i64 64
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !190, !alias.scope !398, !noalias !395
  store ptr %i.jt, ptr %i.jr, align 8, !tbaa !190, !alias.scope !395, !noalias !398
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jp, i8 0, i64 24, i1 false), !alias.scope !398, !noalias !395
  %i.ju = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i162, i64 72 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i161, i64 72 ; 2 uses
  %.not.i.i.i.i163 = icmp eq ptr %i.ju, %i.ic
  br i1 %.not.i.i.i.i163, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i171, label %.lr.ph.i.i.i.i160, !llvm.loop !393

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i171: ; preds = %.lr.ph.i.i.i.i160, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i155
  %.0.lcssa.i.i.i.i165 = phi ptr [ %i.jb, %_ZNKSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12_M_check_lenEmPKc.exit.i155 ], [ %i.jv, %.lr.ph.i.i.i.i160 ] ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i165, i64 72
  %.not.i23.i173 = icmp eq ptr %i.iq, null
  br i1 %.not.i23.i173, label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit174, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i171
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.it) #38
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit174

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit174: ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i171, %bb.aj
  store ptr %i.jb, ptr %12, align 8, !tbaa !233
  store ptr %i.jw, ptr %i.he, align 8, !tbaa !193
  %i.jx = getelementptr inbounds nuw [72 x i8], ptr %i.jb, i64 %i.iz
  store ptr %i.jx, ptr %i.hf, align 8, !tbaa !176
  %.sroa.019.0.copyload.pre = load i16, ptr %.0103217, align 2, !tbaa !191
  br label %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit129

_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit129: ; preds = %bb.ag, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit174
  %.sroa.019.0.copyload = phi i16 [ %.sroa.019.0.copyload.pre, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit174 ], [ %.sroa.0.0.copyload.i.i127, %bb.ag ] ; 2 uses
  %i.jy = phi ptr [ %.0.lcssa.i.i.i.i165, %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE17_M_realloc_insertIJRKNS0_4MoveEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit174 ], [ %i.ic, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  store i64 0, ptr %i.aj, align 8, !tbaa !62
  %i.jz = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.019.0.copyload) #33
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %2, i16 %.sroa.019.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %14, i1 noundef zeroext %i.jz, ptr noundef nonnull align 1 dereferenceable(7) %i.al, ptr noundef nonnull align 8 dereferenceable(416) %i.ai, ptr noundef null, ptr noundef null) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  %i.ka = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %2, ptr noundef nonnull align 8 dereferenceable(520) %15) #33 ; 3 uses
  %.not211 = icmp eq ptr %15, %i.ka
  br i1 %.not211, label %bb.ak, label %iter.check

iter.check:                                       ; preds = %_ZNSt6vectorIN9Stockfish6Search8RootMoveESaIS2_EE12emplace_backIJRKNS0_4MoveEEEERS2_DpOT_.exit129
  %18 = ptrtoint ptr %i.ka to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 36 ; 2 uses
  %.promoted = load i32, ptr %i.kb, align 4, !tbaa !188 ; 3 uses
  %.reass = add i64 %18, %invariant.op            ; 3 uses
  %i.kc = lshr i64 %.reass, 1
  %i.kd = add nuw i64 %i.kc, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %.reass, 14
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check368 = icmp ult i64 %.reass, 126
  br i1 %min.iters.check368, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.kd, 56
  %n.vec = and i64 %i.kd, -64                     ; 4 uses
  %i.ke = shl i64 %n.vec, 1
  %i.kf = getelementptr i8, ptr %15, i64 %i.ke
  %i.kg = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i32> [ %i.kg, %vector.ph ], [ %i.vn, %vector.body ]
  %vec.phi369 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.vo, %vector.body ]
  %vec.phi370 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.vp, %vector.body ]
  %vec.phi371 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.vq, %vector.body ]
  %i.kh = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %15, i64 %i.kh ; 4 uses
  %i.ki = getelementptr i8, ptr %next.gep, i64 32
  %i.kj = getelementptr i8, ptr %next.gep, i64 64
  %i.kk = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <16 x i16>, ptr %next.gep, align 8, !tbaa !191 ; 3 uses
  %wide.load372 = load <16 x i16>, ptr %i.ki, align 8, !tbaa !191 ; 3 uses
  %wide.load373 = load <16 x i16>, ptr %i.kj, align 8, !tbaa !191 ; 3 uses
  %wide.load374 = load <16 x i16>, ptr %i.kk, align 8, !tbaa !191 ; 3 uses
  %i.kl = and <16 x i16> %wide.load, splat (i16 63)
  %i.km = and <16 x i16> %wide.load372, splat (i16 63)
  %i.kn = and <16 x i16> %wide.load373, splat (i16 63)
  %i.ko = and <16 x i16> %wide.load374, splat (i16 63)
  %i.kp = zext nneg <16 x i16> %i.kl to <16 x i64> ; 16 uses
  %i.kq = zext nneg <16 x i16> %i.km to <16 x i64> ; 16 uses
  %i.kr = zext nneg <16 x i16> %i.kn to <16 x i64> ; 16 uses
  %i.ks = zext nneg <16 x i16> %i.ko to <16 x i64> ; 16 uses
  %i.kt = extractelement <16 x i64> %i.kp, i64 0
  %i.ku = getelementptr inbounds nuw i8, ptr %2, i64 %i.kt
  %i.kv = extractelement <16 x i64> %i.kp, i64 1
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 %i.kv
  %i.kx = extractelement <16 x i64> %i.kp, i64 2
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 %i.kx
  %i.kz = extractelement <16 x i64> %i.kp, i64 3
  %i.la = getelementptr inbounds nuw i8, ptr %2, i64 %i.kz
  %i.lb = extractelement <16 x i64> %i.kp, i64 4
  %i.lc = getelementptr inbounds nuw i8, ptr %2, i64 %i.lb
  %i.ld = extractelement <16 x i64> %i.kp, i64 5
  %i.le = getelementptr inbounds nuw i8, ptr %2, i64 %i.ld
  %i.lf = extractelement <16 x i64> %i.kp, i64 6
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 %i.lf
  %i.lh = extractelement <16 x i64> %i.kp, i64 7
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 %i.lh
  %i.lj = extractelement <16 x i64> %i.kp, i64 8
  %i.lk = getelementptr inbounds nuw i8, ptr %2, i64 %i.lj
  %i.ll = extractelement <16 x i64> %i.kp, i64 9
  %i.lm = getelementptr inbounds nuw i8, ptr %2, i64 %i.ll
  %i.ln = extractelement <16 x i64> %i.kp, i64 10
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 %i.ln
  %i.lp = extractelement <16 x i64> %i.kp, i64 11
  %i.lq = getelementptr inbounds nuw i8, ptr %2, i64 %i.lp
  %i.lr = extractelement <16 x i64> %i.kp, i64 12
  %i.ls = getelementptr inbounds nuw i8, ptr %2, i64 %i.lr
  %i.lt = extractelement <16 x i64> %i.kp, i64 13
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 %i.lt
  %i.lv = extractelement <16 x i64> %i.kp, i64 14
  %i.lw = getelementptr inbounds nuw i8, ptr %2, i64 %i.lv
  %i.lx = extractelement <16 x i64> %i.kp, i64 15
  %i.ly = getelementptr inbounds nuw i8, ptr %2, i64 %i.lx
  %i.lz = extractelement <16 x i64> %i.kq, i64 0
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 %i.lz
  %i.mb = extractelement <16 x i64> %i.kq, i64 1
  %i.mc = getelementptr inbounds nuw i8, ptr %2, i64 %i.mb
  %i.md = extractelement <16 x i64> %i.kq, i64 2
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 %i.md
  %i.mf = extractelement <16 x i64> %i.kq, i64 3
  %i.mg = getelementptr inbounds nuw i8, ptr %2, i64 %i.mf
  %i.mh = extractelement <16 x i64> %i.kq, i64 4
  %i.mi = getelementptr inbounds nuw i8, ptr %2, i64 %i.mh
  %i.mj = extractelement <16 x i64> %i.kq, i64 5
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 %i.mj
  %i.ml = extractelement <16 x i64> %i.kq, i64 6
  %i.mm = getelementptr inbounds nuw i8, ptr %2, i64 %i.ml
  %i.mn = extractelement <16 x i64> %i.kq, i64 7
  %i.mo = getelementptr inbounds nuw i8, ptr %2, i64 %i.mn
  %i.mp = extractelement <16 x i64> %i.kq, i64 8
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 %i.mp
  %i.mr = extractelement <16 x i64> %i.kq, i64 9
  %i.ms = getelementptr inbounds nuw i8, ptr %2, i64 %i.mr
  %i.mt = extractelement <16 x i64> %i.kq, i64 10
  %i.mu = getelementptr inbounds nuw i8, ptr %2, i64 %i.mt
  %i.mv = extractelement <16 x i64> %i.kq, i64 11
  %i.mw = getelementptr inbounds nuw i8, ptr %2, i64 %i.mv
  %i.mx = extractelement <16 x i64> %i.kq, i64 12
  %i.my = getelementptr inbounds nuw i8, ptr %2, i64 %i.mx
  %i.mz = extractelement <16 x i64> %i.kq, i64 13
  %i.na = getelementptr inbounds nuw i8, ptr %2, i64 %i.mz
  %i.nb = extractelement <16 x i64> %i.kq, i64 14
  %i.nc = getelementptr inbounds nuw i8, ptr %2, i64 %i.nb
  %i.nd = extractelement <16 x i64> %i.kq, i64 15
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 %i.nd
  %i.nf = extractelement <16 x i64> %i.kr, i64 0
  %i.ng = getelementptr inbounds nuw i8, ptr %2, i64 %i.nf
  %i.nh = extractelement <16 x i64> %i.kr, i64 1
  %i.ni = getelementptr inbounds nuw i8, ptr %2, i64 %i.nh
  %i.nj = extractelement <16 x i64> %i.kr, i64 2
  %i.nk = getelementptr inbounds nuw i8, ptr %2, i64 %i.nj
  %i.nl = extractelement <16 x i64> %i.kr, i64 3
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 %i.nl
  %i.nn = extractelement <16 x i64> %i.kr, i64 4
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 %i.nn
  %i.np = extractelement <16 x i64> %i.kr, i64 5
  %i.nq = getelementptr inbounds nuw i8, ptr %2, i64 %i.np
  %i.nr = extractelement <16 x i64> %i.kr, i64 6
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 %i.nr
  %i.nt = extractelement <16 x i64> %i.kr, i64 7
  %i.nu = getelementptr inbounds nuw i8, ptr %2, i64 %i.nt
  %i.nv = extractelement <16 x i64> %i.kr, i64 8
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 %i.nv
  %i.nx = extractelement <16 x i64> %i.kr, i64 9
  %i.ny = getelementptr inbounds nuw i8, ptr %2, i64 %i.nx
  %i.nz = extractelement <16 x i64> %i.kr, i64 10
  %i.oa = getelementptr inbounds nuw i8, ptr %2, i64 %i.nz
  %i.ob = extractelement <16 x i64> %i.kr, i64 11
  %i.oc = getelementptr inbounds nuw i8, ptr %2, i64 %i.ob
  %i.od = extractelement <16 x i64> %i.kr, i64 12
  %i.oe = getelementptr inbounds nuw i8, ptr %2, i64 %i.od
  %i.of = extractelement <16 x i64> %i.kr, i64 13
  %i.og = getelementptr inbounds nuw i8, ptr %2, i64 %i.of
  %i.oh = extractelement <16 x i64> %i.kr, i64 14
  %i.oi = getelementptr inbounds nuw i8, ptr %2, i64 %i.oh
  %i.oj = extractelement <16 x i64> %i.kr, i64 15
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 %i.oj
  %i.ol = extractelement <16 x i64> %i.ks, i64 0
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 %i.ol
  %i.on = extractelement <16 x i64> %i.ks, i64 1
  %i.oo = getelementptr inbounds nuw i8, ptr %2, i64 %i.on
  %i.op = extractelement <16 x i64> %i.ks, i64 2
  %i.oq = getelementptr inbounds nuw i8, ptr %2, i64 %i.op
  %i.or = extractelement <16 x i64> %i.ks, i64 3
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 %i.or
  %i.ot = extractelement <16 x i64> %i.ks, i64 4
  %i.ou = getelementptr inbounds nuw i8, ptr %2, i64 %i.ot
  %i.ov = extractelement <16 x i64> %i.ks, i64 5
  %i.ow = getelementptr inbounds nuw i8, ptr %2, i64 %i.ov
  %i.ox = extractelement <16 x i64> %i.ks, i64 6
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 %i.ox
  %i.oz = extractelement <16 x i64> %i.ks, i64 7
  %i.pa = getelementptr inbounds nuw i8, ptr %2, i64 %i.oz
  %i.pb = extractelement <16 x i64> %i.ks, i64 8
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 %i.pb
  %i.pd = extractelement <16 x i64> %i.ks, i64 9
  %i.pe = getelementptr inbounds nuw i8, ptr %2, i64 %i.pd
  %i.pf = extractelement <16 x i64> %i.ks, i64 10
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 %i.pf
  %i.ph = extractelement <16 x i64> %i.ks, i64 11
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 %i.ph
  %i.pj = extractelement <16 x i64> %i.ks, i64 12
  %i.pk = getelementptr inbounds nuw i8, ptr %2, i64 %i.pj
  %i.pl = extractelement <16 x i64> %i.ks, i64 13
  %i.pm = getelementptr inbounds nuw i8, ptr %2, i64 %i.pl
  %i.pn = extractelement <16 x i64> %i.ks, i64 14
  %i.po = getelementptr inbounds nuw i8, ptr %2, i64 %i.pn
  %i.pp = extractelement <16 x i64> %i.ks, i64 15
  %i.pq = getelementptr inbounds nuw i8, ptr %2, i64 %i.pp
  %i.pr = load i8, ptr %i.ku, align 1, !tbaa !330
  %i.ps = load i8, ptr %i.kw, align 1, !tbaa !330
  %i.pt = load i8, ptr %i.ky, align 1, !tbaa !330
  %i.pu = load i8, ptr %i.la, align 1, !tbaa !330
  %i.pv = load i8, ptr %i.lc, align 1, !tbaa !330
  %i.pw = load i8, ptr %i.le, align 1, !tbaa !330
  %i.px = load i8, ptr %i.lg, align 1, !tbaa !330
  %i.py = load i8, ptr %i.li, align 1, !tbaa !330
  %i.pz = load i8, ptr %i.lk, align 1, !tbaa !330
  %i.qa = load i8, ptr %i.lm, align 1, !tbaa !330
  %i.qb = load i8, ptr %i.lo, align 1, !tbaa !330
  %i.qc = load i8, ptr %i.lq, align 1, !tbaa !330
  %i.qd = load i8, ptr %i.ls, align 1, !tbaa !330
  %i.qe = load i8, ptr %i.lu, align 1, !tbaa !330
  %i.qf = load i8, ptr %i.lw, align 1, !tbaa !330
  %i.qg = load i8, ptr %i.ly, align 1, !tbaa !330
  %i.qh = insertelement <16 x i8> poison, i8 %i.pr, i64 0
  %i.qi = insertelement <16 x i8> %i.qh, i8 %i.ps, i64 1
  %i.qj = insertelement <16 x i8> %i.qi, i8 %i.pt, i64 2
  %i.qk = insertelement <16 x i8> %i.qj, i8 %i.pu, i64 3
  %i.ql = insertelement <16 x i8> %i.qk, i8 %i.pv, i64 4
  %i.qm = insertelement <16 x i8> %i.ql, i8 %i.pw, i64 5
  %i.qn = insertelement <16 x i8> %i.qm, i8 %i.px, i64 6
  %i.qo = insertelement <16 x i8> %i.qn, i8 %i.py, i64 7
  %i.qp = insertelement <16 x i8> %i.qo, i8 %i.pz, i64 8
  %i.qq = insertelement <16 x i8> %i.qp, i8 %i.qa, i64 9
  %i.qr = insertelement <16 x i8> %i.qq, i8 %i.qb, i64 10
  %i.qs = insertelement <16 x i8> %i.qr, i8 %i.qc, i64 11
  %i.qt = insertelement <16 x i8> %i.qs, i8 %i.qd, i64 12
end_hunk_2
