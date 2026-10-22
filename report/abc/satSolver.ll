Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/satSolver?download=true
inline.NumInlined: 548
inline.NumDeleted: 94
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@sat_solver_solve_internal:bb.a
  br label %.lr.ph40.i.i.i

.lr.ph40.i.i.i:                                   ; preds = %.lr.ph40.i.i.i.preheader, %.lr.ph40.i.i.i
  %indvars.iv48.i.i.i = phi i64 [ %indvars.iv.next49.i.i.i, %.lr.ph40.i.i.i ], [ %indvars.iv48.i.i.i.ph, %.lr.ph40.i.i.i.preheader ] ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv48.i.i.i ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !35
  %i.et = lshr i64 %i.es, 19
  store i64 %i.et, ptr %i.er, align 8, !tbaa !35
  %indvars.iv.next49.i.i.i = add nuw nsw i64 %indvars.iv48.i.i.i, 1 ; 2 uses
  %exitcond52.not.i.i.i = icmp eq i64 %indvars.iv.next49.i.i.i, %wide.trip.count51.i.i.i
  br i1 %exitcond52.not.i.i.i, label %act_var_rescale.exit.i.i, label %.lr.ph40.i.i.i, !llvm.loop !164

act_var_rescale.exit.i.i:                         ; preds = %.lr.ph40.i.i.i, %middle.block361, %bb.j
  %i.eu = load i64, ptr %i.y, align 8, !tbaa !37
  %i.ev = lshr i64 %i.eu, 19
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = call range(i32 16, -2147483648) i32 @llvm.smax.i32(i32 %i.ew, i32 16)
  %i.ey = zext nneg i32 %i.ex to i64
  store i64 %i.ey, ptr %i.y, align 8, !tbaa !37
  br label %bb.k

bb.k:                                             ; preds = %act_var_rescale.exit.i.i, %bb.i
  %i.ez = load ptr, ptr %i.z, align 8, !tbaa !39  ; 3 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.dy
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !40 ; 4 uses
  %.not47.i.i = icmp eq i32 %i.fb, -1
  br i1 %.not47.i.i, label %act_var_bump_factor.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 4 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %.val.i.i.i, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !40 ; 2 uses
  %.not31.i.i.i = icmp eq i32 %i.fb, 0
  %.pre.i.i.i = sext i32 %i.fe to i64             ; 2 uses
  br i1 %.not31.i.i.i, label %order_update.exit.i.i, label %.lr.ph.i48.i.i

.lr.ph.i48.i.i:                                   ; preds = %bb.l
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %.pre.i.i.i
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !35
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i48.i.i
  %.02832.i.i.i = phi i32 [ %i.fb, %.lr.ph.i48.i.i ], [ %.033.i.i.i, %bb.n ] ; 5 uses
  %.033.in.i.i.i = add nsw i32 %.02832.i.i.i, -1
  %.033.i.i.i = sdiv i32 %.033.in.i.i.i, 2        ; 3 uses
  %i.fh = sext i32 %.033.i.i.i to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %.val.i.i.i, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !40 ; 2 uses
  %i.fk = sext i32 %i.fj to i64                   ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !35
  %i.fn = icmp ugt i64 %i.fg, %i.fm
  br i1 %i.fn, label %bb.n, label %order_update.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.fo = sext i32 %.02832.i.i.i to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %.val.i.i.i, i64 %i.fo
  store i32 %i.fj, ptr %i.fp, align 4, !tbaa !40
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.fk
  store i32 %.02832.i.i.i, ptr %i.fq, align 4, !tbaa !40
  %.not.i.i.i = icmp ult i32 %.02832.i.i.i, 3
  br i1 %.not.i.i.i, label %order_update.exit.i.i, label %bb.m, !llvm.loop !0

order_update.exit.i.i:                            ; preds = %bb.n, %bb.m, %bb.l
  %.028.lcssa.i.i.i = phi i32 [ 0, %bb.l ], [ %.033.i.i.i, %bb.n ], [ %.02832.i.i.i, %bb.m ] ; 2 uses
  %i.fr = sext i32 %.028.lcssa.i.i.i to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %.val.i.i.i, i64 %i.fr
  store i32 %i.fe, ptr %i.fs, align 4, !tbaa !40
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %.pre.i.i.i
  store i32 %.028.lcssa.i.i.i, ptr %i.ft, align 4, !tbaa !40
  br label %act_var_bump_factor.exit.i

bb.o:                                             ; preds = %.lr.ph.split.i
  %i.fu = load ptr, ptr %i.x, align 8, !tbaa !34  ; 5 uses
  %i.fv = sext i32 %i.dt to i64                   ; 3 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.fv ; 2 uses
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !35
  %i.fy = load double, ptr %i.y, align 8, !tbaa !37
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.fv
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !78
  %i.gb = call double @llvm.fmuladd.f64(double %i.fy, double %i.ga, double %i.fx) ; 2 uses
  store double %i.gb, ptr %i.fw, align 8, !tbaa !35
  %i.gc = fcmp ogt double %i.gb, 1.000000e+100
  br i1 %i.gc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gd = load i32, ptr %0, align 8, !tbaa !33    ; 3 uses
  %i.ge = icmp sgt i32 %i.gd, 0
  br i1 %i.ge, label %.lr.ph36.preheader.i59.i.i, label %act_var_rescale.exit72.i.i

.lr.ph36.preheader.i59.i.i:                       ; preds = %bb.p
  %wide.trip.count46.i60.i.i = zext nneg i32 %i.gd to i64 ; 3 uses
  %min.iters.check365 = icmp ult i32 %i.gd, 4
  br i1 %min.iters.check365, label %.lr.ph36.i61.i.i.preheader, label %vector.ph366

vector.ph366:                                     ; preds = %.lr.ph36.preheader.i59.i.i
  %n.vec367 = and i64 %wide.trip.count46.i60.i.i, 2147483644 ; 3 uses
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph366
  %index369 = phi i64 [ 0, %vector.ph366 ], [ %index.next372, %vector.body368 ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %index369 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %wide.load370 = load <2 x double>, ptr %i.gf, align 8, !tbaa !78
  %wide.load371 = load <2 x double>, ptr %i.gg, align 8, !tbaa !78
  %i.gh = fmul <2 x double> %wide.load370, splat (double 1.000000e-100)
  %i.gi = fmul <2 x double> %wide.load371, splat (double 1.000000e-100)
  store <2 x double> %i.gh, ptr %i.gf, align 8, !tbaa !78
  store <2 x double> %i.gi, ptr %i.gg, align 8, !tbaa !78
  %index.next372 = add nuw i64 %index369, 4       ; 2 uses
  %i.gj = icmp eq i64 %index.next372, %n.vec367
  br i1 %i.gj, label %middle.block373, label %vector.body368, !llvm.loop !165

middle.block373:                                  ; preds = %vector.body368
  %cmp.n374 = icmp eq i64 %n.vec367, %wide.trip.count46.i60.i.i
  br i1 %cmp.n374, label %act_var_rescale.exit72.i.i, label %.lr.ph36.i61.i.i.preheader

.lr.ph36.i61.i.i.preheader:                       ; preds = %.lr.ph36.preheader.i59.i.i, %middle.block373
  %indvars.iv43.i62.i.i.ph = phi i64 [ 0, %.lr.ph36.preheader.i59.i.i ], [ %n.vec367, %middle.block373 ]
  br label %.lr.ph36.i61.i.i

.lr.ph36.i61.i.i:                                 ; preds = %.lr.ph36.i61.i.i.preheader, %.lr.ph36.i61.i.i
  %indvars.iv43.i62.i.i = phi i64 [ %indvars.iv.next44.i63.i.i, %.lr.ph36.i61.i.i ], [ %indvars.iv43.i62.i.i.ph, %.lr.ph36.i61.i.i.preheader ] ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv43.i62.i.i ; 2 uses
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !78
  %i.gm = fmul double %i.gl, 1.000000e-100
  store double %i.gm, ptr %i.gk, align 8, !tbaa !78
  %indvars.iv.next44.i63.i.i = add nuw nsw i64 %indvars.iv43.i62.i.i, 1 ; 2 uses
  %exitcond47.not.i64.i.i = icmp eq i64 %indvars.iv.next44.i63.i.i, %wide.trip.count46.i60.i.i
  br i1 %exitcond47.not.i64.i.i, label %act_var_rescale.exit72.i.i, label %.lr.ph36.i61.i.i, !llvm.loop !166

act_var_rescale.exit72.i.i:                       ; preds = %.lr.ph36.i61.i.i, %middle.block373, %bb.p
  %i.gn = load double, ptr %i.y, align 8, !tbaa !37
  %i.go = fmul double %i.gn, 1.000000e-100
  store double %i.go, ptr %i.y, align 8, !tbaa !37
  br label %bb.q

bb.q:                                             ; preds = %act_var_rescale.exit72.i.i, %bb.o
  %i.gp = load ptr, ptr %i.z, align 8, !tbaa !39  ; 3 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.fv
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !40 ; 4 uses
  %.not45.i.i = icmp eq i32 %i.gr, -1
  br i1 %.not45.i.i, label %act_var_bump_factor.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val.i73.i.i = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 4 uses
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %.val.i73.i.i, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !40 ; 2 uses
  %.not31.i74.i.i = icmp eq i32 %i.gr, 0
  %.pre.i83.i.i = sext i32 %i.gu to i64           ; 2 uses
  br i1 %.not31.i74.i.i, label %order_update.exit84.i.i, label %.lr.ph.i75.i.i

.lr.ph.i75.i.i:                                   ; preds = %bb.r
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %.pre.i83.i.i
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !35
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i75.i.i
  %.02832.i76.i.i = phi i32 [ %i.gr, %.lr.ph.i75.i.i ], [ %.033.i78.i.i, %bb.t ] ; 5 uses
  %.033.in.i77.i.i = add nsw i32 %.02832.i76.i.i, -1
  %.033.i78.i.i = sdiv i32 %.033.in.i77.i.i, 2    ; 3 uses
  %i.gx = sext i32 %.033.i78.i.i to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %.val.i73.i.i, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !40 ; 2 uses
  %i.ha = sext i32 %i.gz to i64                   ; 2 uses
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.ha
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !35
  %i.hd = icmp ugt i64 %i.gw, %i.hc
  br i1 %i.hd, label %bb.t, label %order_update.exit84.i.i

bb.t:                                             ; preds = %bb.s
  %i.he = sext i32 %.02832.i76.i.i to i64
  %i.hf = getelementptr inbounds [4 x i8], ptr %.val.i73.i.i, i64 %i.he
  store i32 %i.gz, ptr %i.hf, align 4, !tbaa !40
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.ha
  store i32 %.02832.i76.i.i, ptr %i.hg, align 4, !tbaa !40
  %.not.i81.i.i = icmp ult i32 %.02832.i76.i.i, 3
  br i1 %.not.i81.i.i, label %order_update.exit84.i.i, label %bb.s, !llvm.loop !0

order_update.exit84.i.i:                          ; preds = %bb.t, %bb.s, %bb.r
  %.028.lcssa.i80.i.i = phi i32 [ 0, %bb.r ], [ %.033.i78.i.i, %bb.t ], [ %.02832.i76.i.i, %bb.s ] ; 2 uses
  %i.hh = sext i32 %.028.lcssa.i80.i.i to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %.val.i73.i.i, i64 %i.hh
  store i32 %i.gu, ptr %i.hi, align 4, !tbaa !40
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %.pre.i83.i.i
  store i32 %.028.lcssa.i80.i.i, ptr %i.hj, align 4, !tbaa !40
  br label %act_var_bump_factor.exit.i

bb.u:                                             ; preds = %.lr.ph.split.i
  %i.hk = load ptr, ptr %i.x, align 8, !tbaa !34  ; 5 uses
  %i.hl = sext i32 %i.dt to i64                   ; 3 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.hl ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !35 ; 2 uses
  %i.ho = load i64, ptr %i.y, align 8, !tbaa !37  ; 2 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.hl
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !78 ; 2 uses
  %i.hr = lshr i64 %i.hq, 5
  %i.hs = and i64 %i.hr, 140737488355327
  %4 = or disjoint i64 %i.hs, 140737488355328
  %i.ht = lshr i64 %i.hq, 4
  %i.hu = and i64 %i.ht, 1152640029630136320
  %i.hv = add nsw i64 %i.hu, -287948901175001088
  %i.hw = or disjoint i64 %i.hv, %4               ; 2 uses
  %spec.select.i.i.i = call i64 @llvm.umax.i64(i64 %i.ho, i64 %i.hw) ; 3 uses
  %spec.select39.i.i.i = call i64 @llvm.umin.i64(i64 %i.ho, i64 %i.hw) ; 3 uses
  %i.hx = lshr i64 %spec.select.i.i.i, 32
  %i.hy = and i64 %i.hx, 65535                    ; 2 uses
  %i.hz = lshr i64 %spec.select39.i.i.i, 32
  %i.ia = and i64 %i.hz, 65535                    ; 2 uses
  %i.ib = and i64 %spec.select.i.i.i, 4294967295  ; 2 uses
  %i.ic = and i64 %spec.select39.i.i.i, 4294967295 ; 2 uses
  %i.id = mul nuw nsw i64 %i.hy, %i.ia
  %i.ie = mul nuw i64 %i.ib, %i.ic
  %i.if = call i64 @llvm.fshl.i64(i64 %i.id, i64 %i.ie, i64 17)
  %i.ig = mul nuw nsw i64 %i.ia, %i.ib
  %i.ih = lshr i64 %i.ig, 15
  %i.ii = add nuw nsw i64 %i.if, %i.ih
  %i.ij = mul nuw nsw i64 %i.hy, %i.ic
  %i.ik = lshr i64 %i.ij, 15
  %i.il = add nuw nsw i64 %i.ii, %i.ik            ; 2 uses
  %i.im = lshr i64 %spec.select.i.i.i, 48
  %i.in = lshr i64 %spec.select39.i.i.i, 48
  %i.io = add nuw nsw i64 %i.im, %i.in
  %.not.i85.i.i = icmp samesign ugt i64 %i.il, 281474976710655
  %i.ip = zext i1 %.not.i85.i.i to i64            ; 2 uses
  %.031.i.i.i = add nuw nsw i64 %i.io, %i.ip      ; 2 uses
  %.0.i.i.i = lshr i64 %i.il, %i.ip
  %.not38.i.i.i = icmp samesign ult i64 %.031.i.i.i, 65536
  %i.iq = shl nuw i64 %.031.i.i.i, 48
  %i.ir = or i64 %i.iq, %.0.i.i.i
  %.034.i.i.i = select i1 %.not38.i.i.i, i64 %i.ir, i64 -1 ; 2 uses
  %spec.select.i86.i.i = call i64 @llvm.umax.i64(i64 %i.hn, i64 %.034.i.i.i) ; 2 uses
  %spec.select28.i.i.i = call i64 @llvm.umin.i64(i64 %i.hn, i64 %.034.i.i.i) ; 2 uses
  %i.is = and i64 %spec.select.i86.i.i, 281474976710655
  %i.it = and i64 %spec.select28.i.i.i, 281474976710655
  %i.iu = lshr i64 %spec.select.i86.i.i, 48       ; 2 uses
  %i.iv = lshr i64 %spec.select28.i.i.i, 48
  %i.iw = sub nsw i64 %i.iu, %i.iv
  %i.ix = lshr i64 %i.it, %i.iw
  %i.iy = add nuw nsw i64 %i.ix, %i.is            ; 2 uses
  %.not.i87.i.i = icmp samesign ugt i64 %i.iy, 281474976710655
  %i.iz = zext i1 %.not.i87.i.i to i64            ; 2 uses
  %.020.i.i.i = add nuw nsw i64 %i.iu, %i.iz      ; 2 uses
  %.0.i88.i.i = lshr i64 %i.iy, %i.iz
  %.not27.i.i.i = icmp samesign ult i64 %.020.i.i.i, 65536
  %i.ja = shl nuw i64 %.020.i.i.i, 48
  %i.jb = or i64 %i.ja, %.0.i88.i.i
  %.023.i.i.i = select i1 %.not27.i.i.i, i64 %i.jb, i64 -1 ; 2 uses
  store i64 %.023.i.i.i, ptr %i.hm, align 8, !tbaa !35
  %i.jc = icmp ugt i64 %.023.i.i.i, 93610553442608667
  br i1 %i.jc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.jd = load i32, ptr %0, align 8, !tbaa !33    ; 3 uses
  %i.je = icmp sgt i32 %i.jd, 0
  br i1 %i.je, label %.lr.ph.preheader.i91.i.i, label %act_var_rescale.exit112.i.i

.lr.ph.preheader.i91.i.i:                         ; preds = %bb.v
  %wide.trip.count.i92.i.i = zext nneg i32 %i.jd to i64 ; 3 uses
  %min.iters.check377 = icmp ult i32 %i.jd, 4
  br i1 %min.iters.check377, label %.lr.ph.i93.i.i.preheader, label %vector.ph378

vector.ph378:                                     ; preds = %.lr.ph.preheader.i91.i.i
  %n.vec379 = and i64 %wide.trip.count.i92.i.i, 2147483644 ; 3 uses
  br label %vector.body380

vector.body380:                                   ; preds = %vector.body380, %vector.ph378
  %index381 = phi i64 [ 0, %vector.ph378 ], [ %index.next384, %vector.body380 ] ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %index381 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 2 uses
  %wide.load382 = load <2 x i64>, ptr %i.jf, align 8, !tbaa !35 ; 3 uses
  %wide.load383 = load <2 x i64>, ptr %i.jg, align 8, !tbaa !35 ; 3 uses
  %i.jh = and <2 x i64> %wide.load382, splat (i64 -281474976710656)
  %i.ji = and <2 x i64> %wide.load383, splat (i64 -281474976710656)
  %i.jj = icmp ugt <2 x i64> %wide.load382, splat (i64 56294995342131199)
  %i.jk = icmp ugt <2 x i64> %wide.load383, splat (i64 56294995342131199)
  %i.jl = add <2 x i64> %i.jh, splat (i64 -56294995342131200)
  %i.jm = add <2 x i64> %i.ji, splat (i64 -56294995342131200)
  %i.jn = and <2 x i64> %wide.load382, splat (i64 281474976710655)
  %i.jo = and <2 x i64> %wide.load383, splat (i64 281474976710655)
  %i.jp = or disjoint <2 x i64> %i.jl, %i.jn
  %i.jq = or disjoint <2 x i64> %i.jm, %i.jo
  %i.jr = select <2 x i1> %i.jj, <2 x i64> %i.jp, <2 x i64> splat (i64 140737488355328)
  %i.js = select <2 x i1> %i.jk, <2 x i64> %i.jq, <2 x i64> splat (i64 140737488355328)
  store <2 x i64> %i.jr, ptr %i.jf, align 8, !tbaa !35
  store <2 x i64> %i.js, ptr %i.jg, align 8, !tbaa !35
  %index.next384 = add nuw i64 %index381, 4       ; 2 uses
  %i.jt = icmp eq i64 %index.next384, %n.vec379
  br i1 %i.jt, label %middle.block385, label %vector.body380, !llvm.loop !167

middle.block385:                                  ; preds = %vector.body380
  %cmp.n386 = icmp eq i64 %n.vec379, %wide.trip.count.i92.i.i
  br i1 %cmp.n386, label %act_var_rescale.exit112.i.i, label %.lr.ph.i93.i.i.preheader

.lr.ph.i93.i.i.preheader:                         ; preds = %.lr.ph.preheader.i91.i.i, %middle.block385
  %indvars.iv.i94.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i91.i.i ], [ %n.vec379, %middle.block385 ]
  br label %.lr.ph.i93.i.i

.lr.ph.i93.i.i:                                   ; preds = %.lr.ph.i93.i.i.preheader, %.lr.ph.i93.i.i
  %indvars.iv.i94.i.i = phi i64 [ %indvars.iv.next.i96.i.i, %.lr.ph.i93.i.i ], [ %indvars.iv.i94.i.i.ph, %.lr.ph.i93.i.i.preheader ] ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv.i94.i.i ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !35 ; 3 uses
  %i.jw = and i64 %i.jv, -281474976710656
  %i.jx = icmp ugt i64 %i.jv, 56294995342131199
  %i.jy = add i64 %i.jw, -56294995342131200
  %i.jz = and i64 %i.jv, 281474976710655
  %i.ka = or disjoint i64 %i.jy, %i.jz
  %.0.i.i95.i.i = select i1 %i.jx, i64 %i.ka, i64 140737488355328
  store i64 %.0.i.i95.i.i, ptr %i.ju, align 8, !tbaa !35
  %indvars.iv.next.i96.i.i = add nuw nsw i64 %indvars.iv.i94.i.i, 1 ; 2 uses
  %exitcond.not.i97.i.i = icmp eq i64 %indvars.iv.next.i96.i.i, %wide.trip.count.i92.i.i
  br i1 %exitcond.not.i97.i.i, label %act_var_rescale.exit112.i.i, label %.lr.ph.i93.i.i, !llvm.loop !168

act_var_rescale.exit112.i.i:                      ; preds = %.lr.ph.i93.i.i, %middle.block385, %bb.v
  %i.kb = load i64, ptr %i.y, align 8, !tbaa !37  ; 3 uses
  %i.kc = and i64 %i.kb, -281474976710656
  %i.kd = icmp ugt i64 %i.kb, 56294995342131199
  %i.ke = add i64 %i.kc, -56294995342131200
  %i.kf = and i64 %i.kb, 281474976710655
  %i.kg = or disjoint i64 %i.ke, %i.kf
  %.0.i32.i90.i.i = select i1 %i.kd, i64 %i.kg, i64 140737488355328
  store i64 %.0.i32.i90.i.i, ptr %i.y, align 8, !tbaa !37
  br label %bb.w

bb.w:                                             ; preds = %act_var_rescale.exit112.i.i, %bb.u
  %i.kh = load ptr, ptr %i.z, align 8, !tbaa !39  ; 3 uses
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %i.hl
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !40 ; 4 uses
  %.not44.i.i = icmp eq i32 %i.kj, -1
  br i1 %.not44.i.i, label %act_var_bump_factor.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val.i113.i.i = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 4 uses
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %.val.i113.i.i, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !40 ; 2 uses
  %.not31.i114.i.i = icmp eq i32 %i.kj, 0
  %.pre.i123.i.i = sext i32 %i.km to i64          ; 2 uses
  br i1 %.not31.i114.i.i, label %order_update.exit124.i.i, label %.lr.ph.i115.i.i

.lr.ph.i115.i.i:                                  ; preds = %bb.x
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %.pre.i123.i.i
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !35
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.i115.i.i
  %.02832.i116.i.i = phi i32 [ %i.kj, %.lr.ph.i115.i.i ], [ %.033.i118.i.i, %bb.z ] ; 5 uses
  %.033.in.i117.i.i = add nsw i32 %.02832.i116.i.i, -1
  %.033.i118.i.i = sdiv i32 %.033.in.i117.i.i, 2  ; 3 uses
  %i.kp = sext i32 %.033.i118.i.i to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %.val.i113.i.i, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !40 ; 2 uses
  %i.ks = sext i32 %i.kr to i64                   ; 2 uses
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.ks
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !35
  %i.kv = icmp ugt i64 %i.ko, %i.ku
  br i1 %i.kv, label %bb.z, label %order_update.exit124.i.i

bb.z:                                             ; preds = %bb.y
  %i.kw = sext i32 %.02832.i116.i.i to i64
  %i.kx = getelementptr inbounds [4 x i8], ptr %.val.i113.i.i, i64 %i.kw
  store i32 %i.kr, ptr %i.kx, align 4, !tbaa !40
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %i.ks
  store i32 %.02832.i116.i.i, ptr %i.ky, align 4, !tbaa !40
  %.not.i121.i.i = icmp ult i32 %.02832.i116.i.i, 3
  br i1 %.not.i121.i.i, label %order_update.exit124.i.i, label %bb.y, !llvm.loop !0

order_update.exit124.i.i:                         ; preds = %bb.z, %bb.y, %bb.x
  %.028.lcssa.i120.i.i = phi i32 [ 0, %bb.x ], [ %.033.i118.i.i, %bb.z ], [ %.02832.i116.i.i, %bb.y ] ; 2 uses
  %i.kz = sext i32 %.028.lcssa.i120.i.i to i64
  %i.la = getelementptr inbounds [4 x i8], ptr %.val.i113.i.i, i64 %i.kz
  store i32 %i.km, ptr %i.la, align 4, !tbaa !40
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %.pre.i123.i.i
  store i32 %.028.lcssa.i120.i.i, ptr %i.lb, align 4, !tbaa !40
  br label %act_var_bump_factor.exit.i

act_var_bump_factor.exit.i:                       ; preds = %order_update.exit124.i.i, %bb.w, %order_update.exit84.i.i, %bb.q, %order_update.exit.i.i, %bb.k, %.lr.ph.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.lc = load i32, ptr %i.t, align 4, !tbaa !198
  %i.ld = sext i32 %i.lc to i64
  %i.le = icmp slt i64 %indvars.iv.next.i, %i.ld
  br i1 %i.le, label %.lr.ph.split.i, label %.loopexit329.i, !llvm.loop !169

.loopexit329.i:                                   ; preds = %act_var_bump_factor.exit.i, %.lr.ph.i63, %bb.h, %luby.exit
  %i.lf = load ptr, ptr %i.ab, align 8, !tbaa !199 ; 2 uses
  %.not111.i = icmp eq ptr %i.lf, null
  br i1 %.not111.i, label %.loopexit.i, label %bb.aa

bb.aa:                                            ; preds = %.loopexit329.i
  %.val127.i = load i32, ptr %i.t, align 4, !tbaa !44
  %i.lg = icmp sgt i32 %.val127.i, 0
  br i1 %i.lg, label %.lr.ph359.i, label %.loopexit.i

.lr.ph359.i:                                      ; preds = %bb.aa
  %i.lh = load ptr, ptr %i.u, align 8, !tbaa !197
  br label %bb.ab

bb.ab:                                            ; preds = %act_var_bump_global.exit.i, %.lr.ph359.i
  %indvars.iv390.i = phi i64 [ 0, %.lr.ph359.i ], [ %indvars.iv.next391.i, %act_var_bump_global.exit.i ] ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv390.i
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !40
  %i.lk = sext i32 %i.lj to i64                   ; 7 uses
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.lf, i64 %i.lk
end_hunk_0
