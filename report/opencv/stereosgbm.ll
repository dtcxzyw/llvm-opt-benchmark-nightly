inline.NumInlined: 570
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN2cv14StereoSGBMImpl7computeERKNS_11_InputArrayES3_RKNS_12_OutputArrayE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.mi = zext nneg i32 %i.ln to i64
  %sext.i80 = shl i64 %i.lq, 32                   ; 13 uses
  %i.mj = ashr exact i64 %sext.i80, 32            ; 39 uses
  %i.mk = sext i32 %i.ls to i64                   ; 2 uses
  %i.ml = load i32, ptr %22, align 8, !tbaa !164
  %i.mm = lshr i32 %i.ml, 5
  %i.mn = and i32 %i.mm, 127
  %i.mo = add nuw nsw i32 %i.mn, 1
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = sext i32 %i.lj to i64
  %i.mr = sext i32 %i.ll to i64
  invoke void @_ZN2cv10BufferSGBMC2EmmmmmmRKNS_16StereoSGBMParamsE(ptr noundef nonnull align 8 dereferenceable(216) %7, i64 noundef %i.mi, i64 noundef %i.mj, i64 noundef %i.mk, i64 noundef %i.mp, i64 noundef %i.mq, i64 noundef %i.mr, ptr noundef nonnull align 4 dereferenceable(44) %i.ce)
          to label %.noexc97 unwind label %bb.ax

.noexc97:                                         ; preds = %bb.bm
  %i.ms = trunc i32 %.sroa.speculated938.i to i16 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !338
  %i.mv = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !346
  %i.mx = mul i64 %i.mw, %i.mu                    ; 9 uses
  %.not.i.i81 = icmp eq i64 %i.mx, 0
  br i1 %.not.i.i81, label %_ZNK2cv10BufferSGBM8initCBufEs.exit.i, label %iter.check197

iter.check197:                                    ; preds = %.noexc97
  %i.my = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !347 ; 3 uses
  %min.iters.check184 = icmp ult i64 %i.mx, 4
  br i1 %min.iters.check184, label %vec.epilog.scalar.ph198.preheader, label %vector.main.loop.iter.check185

vector.main.loop.iter.check185:                   ; preds = %iter.check197
  %min.iters.check186 = icmp ult i64 %i.mx, 16
  br i1 %min.iters.check186, label %vec.epilog.ph201, label %vector.ph187

vector.ph187:                                     ; preds = %vector.main.loop.iter.check185
  %i.na = and i64 %i.mx, 12
  %n.vec188 = and i64 %i.mx, -16                  ; 4 uses
  %broadcast.splatinsert189 = insertelement <8 x i16> poison, i16 %i.ms, i64 0
  %broadcast.splat190 = shufflevector <8 x i16> %broadcast.splatinsert189, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph187
  %index192 = phi i64 [ 0, %vector.ph187 ], [ %index.next193, %vector.body191 ] ; 2 uses
  %i.nb = getelementptr inbounds nuw [2 x i8], ptr %i.mz, i64 %index192 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  store <8 x i16> %broadcast.splat190, ptr %i.nb, align 2, !tbaa !80
  store <8 x i16> %broadcast.splat190, ptr %i.nc, align 2, !tbaa !80
  %index.next193 = add nuw i64 %index192, 16      ; 2 uses
  %i.nd = icmp eq i64 %index.next193, %n.vec188
  br i1 %i.nd, label %middle.block194, label %vector.body191, !llvm.loop !389

middle.block194:                                  ; preds = %vector.body191
  %cmp.n195 = icmp eq i64 %i.mx, %n.vec188
  br i1 %cmp.n195, label %_ZNK2cv10BufferSGBM8initCBufEs.exit.i, label %vec.epilog.iter.check199

vec.epilog.iter.check199:                         ; preds = %middle.block194
  %min.epilog.iters.check200 = icmp eq i64 %i.na, 0
  br i1 %min.epilog.iters.check200, label %vec.epilog.scalar.ph198.preheader, label %vec.epilog.ph201, !prof !85

vec.epilog.ph201:                                 ; preds = %vector.main.loop.iter.check185, %vec.epilog.iter.check199
  %vec.epilog.resume.val196 = phi i64 [ %n.vec188, %vec.epilog.iter.check199 ], [ 0, %vector.main.loop.iter.check185 ]
  %n.vec202 = and i64 %i.mx, -4                   ; 3 uses
  %broadcast.splatinsert203 = insertelement <4 x i16> poison, i16 %i.ms, i64 0
  %broadcast.splat204 = shufflevector <4 x i16> %broadcast.splatinsert203, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body205

vec.epilog.vector.body205:                        ; preds = %vec.epilog.vector.body205, %vec.epilog.ph201
  %index206 = phi i64 [ %vec.epilog.resume.val196, %vec.epilog.ph201 ], [ %index.next207, %vec.epilog.vector.body205 ] ; 2 uses
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.mz, i64 %index206
  store <4 x i16> %broadcast.splat204, ptr %i.ne, align 2, !tbaa !80
  %index.next207 = add nuw i64 %index206, 4       ; 2 uses
  %i.nf = icmp eq i64 %index.next207, %n.vec202
  br i1 %i.nf, label %vec.epilog.middle.block208, label %vec.epilog.vector.body205, !llvm.loop !390

vec.epilog.middle.block208:                       ; preds = %vec.epilog.vector.body205
  %cmp.n209 = icmp eq i64 %i.mx, %n.vec202
  br i1 %cmp.n209, label %_ZNK2cv10BufferSGBM8initCBufEs.exit.i, label %vec.epilog.scalar.ph198.preheader

vec.epilog.scalar.ph198.preheader:                ; preds = %iter.check197, %vec.epilog.iter.check199, %vec.epilog.middle.block208
  %.04.i.i83.ph = phi i64 [ 0, %iter.check197 ], [ %n.vec188, %vec.epilog.iter.check199 ], [ %n.vec202, %vec.epilog.middle.block208 ]
  br label %vec.epilog.scalar.ph198

vec.epilog.scalar.ph198:                          ; preds = %vec.epilog.scalar.ph198.preheader, %vec.epilog.scalar.ph198
  %.04.i.i83 = phi i64 [ %i.nh, %vec.epilog.scalar.ph198 ], [ %.04.i.i83.ph, %vec.epilog.scalar.ph198.preheader ] ; 2 uses
  %i.ng = getelementptr inbounds nuw [2 x i8], ptr %i.mz, i64 %.04.i.i83
  store i16 %i.ms, ptr %i.ng, align 2, !tbaa !80
  %i.nh = add nuw i64 %.04.i.i83, 1               ; 2 uses
  %exitcond.not.i.i84 = icmp eq i64 %i.nh, %i.mx
  br i1 %exitcond.not.i.i84, label %_ZNK2cv10BufferSGBM8initCBufEs.exit.i, label %vec.epilog.scalar.ph198, !llvm.loop !391

_ZNK2cv10BufferSGBM8initCBufEs.exit.i:            ; preds = %vec.epilog.scalar.ph198, %middle.block194, %vec.epilog.middle.block208, %.noexc97
  %i.ni = getelementptr inbounds nuw i8, ptr %7, i64 49 ; 6 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 6 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %7, i64 50 ; 6 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 6 uses
  %i.nn = add i32 %i.ll, -1                       ; 2 uses
  %i.no = add i32 %i.ln, -1                       ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.nq = getelementptr inbounds nuw i8, ptr %26, i64 128
  %i.nr = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.nw = xor i32 %i.lz, -1                       ; 2 uses
  %i.nx = mul nsw i32 %i.ln, %i.lr                ; 3 uses
  %i.ny = icmp sgt i32 %i.nx, 0                   ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.ob = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.oc = ashr exact i64 %sext.i80, 31
  %i.od = icmp sgt i32 %i.kq, 0                   ; 5 uses
  %i.oe = trunc i32 %i.lz to i16
  %i.of = add i16 %i.oe, 1
  %i.og = mul i32 %i.lz, %i.lr                    ; 4 uses
  %.not6041006.i = icmp slt i32 %i.og, %i.lr
  %i.oh = icmp sgt i32 %i.nx, %i.lr               ; 2 uses
  %i.oi = mul nsw i32 %i.no, %i.lr                ; 2 uses
  %.neg603.i = mul i32 %i.nw, %i.lr               ; 2 uses
  %i.oj = add nsw i32 %i.lz, 1                    ; 2 uses
  %i.ok = shl nsw i32 %i.ls, 1
  %i.ol = mul nsw i32 %i.ls, 3
  %i.om = icmp sgt i32 %i.lj, 0
  %i.on = trunc i32 %i.lu to i16                  ; 9 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  %i.oq = icmp sgt i32 %i.ln, 0
  %i.or = trunc i32 %i.ko to i16
  %i.os = add nsw i32 %i.kq, -1
  %i.ot = trunc i64 %i.lp to i32                  ; 2 uses
  %i.ou = and i32 %i.ot, -8
  %i.ov = mul i32 %i.ou, %i.ln
  %i.ow = sext i32 %i.og to i64                   ; 7 uses
  %i.ox = sext i32 %i.nx to i64                   ; 2 uses
  %i.oy = sext i32 %i.ok to i64
  %i.oz = sext i32 %i.ol to i64
  %i.pa = sext i32 %i.ln to i64
  %i.pb = zext nneg i32 %.sroa.speculated927.i to i64 ; 3 uses
  %i.pc = sext i32 %i.lz to i64
  %wide.trip.count.i = zext i32 %i.ov to i64      ; 2 uses
  %wide.trip.count1100.i = zext i32 %i.kq to i64  ; 31 uses
  %wide.trip.count1142.i = zext i32 %i.lj to i64  ; 8 uses
  %wide.trip.count1164.i = zext nneg i32 %i.lm to i64
  %i.pd = trunc i32 %i.oj to i16
  %i.pe = ashr exact i64 %sext.i80, 31            ; 6 uses
  %i.pf = lshr i64 %i.lp, 3                       ; 3 uses
  %i.pg = trunc i64 %i.pf to i32                  ; 4 uses
  %i.ph = mul i32 %i.ln, %i.pg
  %i.pi = shl i32 %i.ph, 3
  %i.pj = sext i32 %i.pi to i64                   ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.pe, i64 %i.pj)
  %i.pk = icmp slt i64 %i.pe, %i.pj
  %umin = zext i1 %i.pk to i64                    ; 2 uses
  %i.pl = or disjoint i64 %i.pe, %umin
  %i.pm = sub i64 %smax, %i.pl
  %i.pn = shl nuw nsw i64 %wide.trip.count1100.i, 1 ; 4 uses
  %i.po = sext i32 %i.lr to i33                   ; 2 uses
  %i.pp = shl nsw i33 %i.po, 1
  %i.pq = trunc i64 %i.pf to i33
  %i.pr = shl i33 %i.pq, 4
  %i.ps = sub i33 %i.pp, %i.pr
  %i.pt = shl nsw i33 %i.po, 1
  %i.pu = mul i32 %i.lz, %i.pg
  %i.pv = trunc i64 %i.pf to i33
  %i.pw = shl i33 %i.pv, 3
  %i.px = and i33 %i.pw, 4294967288
  %i.py = shl i32 %i.lz, 3
  %i.pz = add i32 %i.py, 8
  %i.qa = mul i32 %i.pz, %i.pg
  %i.qb = mul i32 %i.no, %i.pg
  %i.qc = shl i32 %i.qb, 3
  %i.qd = shl nuw nsw i64 %wide.trip.count1100.i, 1 ; 2 uses
  %i.qe = ashr exact i64 %sext.i80, 31            ; 4 uses
  %i.qf = ashr exact i64 %sext.i80, 31
  %i.qg = sext i32 %i.lr to i33
  %i.qh = shl nsw i33 %i.qg, 1                    ; 2 uses
  %i.qi = lshr i64 %i.lp, 3                       ; 2 uses
  %i.qj = trunc i64 %i.qi to i33
  %i.qk = shl i33 %i.qj, 4
  %i.ql = sub i33 %i.qh, %i.qk
  %i.qm = zext i33 %i.ql to i64
  %i.qn = zext i33 %i.qh to i64
  %i.qo = trunc i64 %i.qi to i32                  ; 3 uses
  %i.qp = mul i32 %i.lz, %i.qo
  %i.qq = and i64 %i.lp, 4294967288
  %i.qr = shl i32 %i.lz, 3
  %i.qs = add i32 %i.qr, 8
  %i.qt = mul i32 %i.qs, %i.qo
  %i.qu = mul i32 %i.no, %i.qo
  %i.qv = shl i32 %i.qu, 3
  %i.qw = ashr exact i64 %sext.i80, 31            ; 6 uses
  %i.qx = or disjoint i64 %i.ow, 1
  %smax427 = call i64 @llvm.smax.i64(i64 %i.qw, i64 %i.qx)
  %i.qy = icmp sle i64 %i.qw, %i.ow
  %umin428 = zext i1 %i.qy to i64                 ; 2 uses
  %i.qz = or disjoint i64 %i.qw, %umin428
  %i.ra = sub i64 %smax427, %i.qz
  %umax = call i64 @llvm.umax.i64(i64 %i.mj, i64 1)
  %i.rb = mul nsw i64 %i.mj, -2
  %i.rc = shl nuw nsw i64 %wide.trip.count1100.i, 1
  %i.rd = ashr exact i64 %sext.i80, 31            ; 4 uses
  %i.re = or disjoint i64 %i.ow, 1
  %smax433 = call i64 @llvm.smax.i64(i64 %i.rd, i64 %i.re)
  %i.rf = icmp sle i64 %i.rd, %i.ow
  %umin434 = zext i1 %i.rf to i64                 ; 2 uses
  %i.rg = or disjoint i64 %i.rd, %umin434
  %i.rh = sub i64 %smax433, %i.rg
  %umax435 = call i64 @llvm.umax.i64(i64 %i.mj, i64 1)
  %i.ri = ashr exact i64 %sext.i80, 31            ; 3 uses
  %i.rj = or disjoint i64 %i.ow, 1
  %smax444 = call i64 @llvm.smax.i64(i64 %i.ri, i64 %i.rj)
  %i.rk = icmp sle i64 %i.ri, %i.ow
  %umin445 = zext i1 %i.rk to i64                 ; 2 uses
  %i.rl = or disjoint i64 %i.ri, %umin445
  %i.rm = sub i64 %smax444, %i.rl
  %umax446 = call i64 @llvm.umax.i64(i64 %i.mj, i64 1)
  %i.rn = lshr i32 %i.ot, 3
  %i.ro = mul i32 %i.rn, %i.ln
  %i.rp = shl i32 %i.ro, 3                        ; 7 uses
  %i.rq = zext i32 %i.rp to i64
  %i.rr = shl nuw nsw i64 %i.rq, 1                ; 2 uses
  %i.rs = zext i32 %i.rp to i64                   ; 4 uses
  %i.rt = zext i32 %i.rp to i64                   ; 4 uses
  %i.ru = add nsw i64 %wide.trip.count1100.i, -1
  %min.iters.check520 = icmp eq i32 %i.rp, 0
  %min.iters.check522 = icmp ult i32 %i.rp, 16
  %i.rv = and i64 %i.rt, 8
  %n.vec524 = and i64 %i.rt, 4294967280           ; 4 uses
  %cmp.n535 = icmp eq i64 %n.vec524, %i.rt
  %min.epilog.iters.check540.not.not = icmp eq i64 %i.rv, 0
  %min.iters.check484 = icmp eq i32 %i.rp, 0
  %min.iters.check486 = icmp ult i32 %i.rp, 16
  %i.rw = and i64 %i.rs, 8
  %n.vec488 = and i64 %i.rs, 4294967280           ; 4 uses
  %cmp.n497 = icmp eq i64 %n.vec488, %i.rs
  %min.epilog.iters.check502.not.not = icmp eq i64 %i.rw, 0
  %invariant.op = add i64 %umin445, 1
  %i.rx = icmp slt i64 %i.qw, 0                   ; 2 uses
  %i.ry = select i1 %i.rx, i64 %i.rb, i64 %i.qw
  %i.rz = ashr exact i64 %sext.i80, 30
  %i.sa = ashr exact i64 %sext.i80, 29
  %i.sb = ashr exact i64 %sext.i80, 28
  %i.sc = ashr exact i64 %sext.i80, 30
  %i.sd = ashr exact i64 %sext.i80, 29
  %min.iters.check395 = icmp ult i32 %i.kq, 4
  %min.iters.check397 = icmp ult i32 %i.kq, 16
  %i.se = and i64 %wide.trip.count1100.i, 12
  %n.vec399 = and i64 %wide.trip.count1100.i, 2147483632 ; 4 uses
  %cmp.n410 = icmp eq i64 %n.vec399, %wide.trip.count1100.i
  %min.epilog.iters.check415 = icmp eq i64 %i.se, 0
  %n.vec417 = and i64 %wide.trip.count1100.i, 2147483644 ; 3 uses
  %cmp.n425 = icmp eq i64 %n.vec417, %wide.trip.count1100.i
  %xtraiter = and i64 %wide.trip.count1100.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check374 = icmp ult i32 %i.kq, 16
  %i.sf = shl i32 %i.qp, 3
  %n.vec376 = and i64 %wide.trip.count1100.i, 2147483640 ; 3 uses
  %cmp.n386 = icmp eq i64 %n.vec376, %wide.trip.count1100.i
  %min.iters.check314 = icmp ult i32 %i.kq, 4
  %min.iters.check316 = icmp ult i32 %i.kq, 16
  %i.sg = and i64 %wide.trip.count1100.i, 12
  %n.vec318 = and i64 %wide.trip.count1100.i, 2147483632 ; 4 uses
  %cmp.n329 = icmp eq i64 %n.vec318, %wide.trip.count1100.i
  %min.epilog.iters.check334 = icmp eq i64 %i.sg, 0
  %n.vec336 = and i64 %wide.trip.count1100.i, 2147483644 ; 3 uses
  %cmp.n345 = icmp eq i64 %n.vec336, %wide.trip.count1100.i
  %xtraiter559 = and i64 %wide.trip.count1100.i, 1
  %lcmp.mod560.not = icmp eq i64 %xtraiter559, 0
  %i.sh = add nsw i64 %wide.trip.count1100.i, -1
  %min.iters.check291 = icmp ult i32 %i.kq, 24
  %i.si = shl i32 %i.pu, 3
  %stride.check264 = icmp slt i64 %i.pe, 0
  %i.sj = insertelement <8 x i1> poison, i1 %stride.check264, i64 7
  %n.vec293 = and i64 %wide.trip.count1100.i, 2147483640 ; 3 uses
  %cmp.n303 = icmp eq i64 %n.vec293, %wide.trip.count1100.i
  %min.iters.check215 = icmp ult i32 %i.lj, 4
  %min.iters.check217 = icmp ult i32 %i.lj, 16
  %i.sk = and i64 %wide.trip.count1142.i, 12
  %n.vec219 = and i64 %wide.trip.count1142.i, 2147483632 ; 4 uses
  %broadcast.splatinsert220 = insertelement <8 x i16> poison, i16 %i.on, i64 0
  %broadcast.splat221 = shufflevector <8 x i16> %broadcast.splatinsert220, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n226 = icmp eq i64 %n.vec219, %wide.trip.count1142.i
  %min.epilog.iters.check231 = icmp eq i64 %i.sk, 0
  %n.vec233 = and i64 %wide.trip.count1142.i, 2147483644 ; 3 uses
  %broadcast.splatinsert234 = insertelement <4 x i16> poison, i16 %i.on, i64 0
  %broadcast.splat235 = shufflevector <4 x i16> %broadcast.splatinsert234, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n240 = icmp eq i64 %n.vec233, %wide.trip.count1142.i
  %xtraiter561 = and i64 %wide.trip.count1142.i, 1
  %lcmp.mod562.not = icmp eq i64 %xtraiter561, 0
  %i.sl = add nsw i64 %wide.trip.count1142.i, -1
  %xtraiter563 = and i64 %wide.trip.count1100.i, 3 ; 3 uses
  %i.sm = icmp ult i32 %i.kq, 4
  %unroll_iter = and i64 %wide.trip.count1100.i, 2147483644
  %lcmp.mod564.not = icmp eq i64 %xtraiter563, 0
  %lcmp.mod567 = icmp ne i64 %xtraiter563, 0
  br label %bb.bq

bb.bn:                                            ; preds = %._crit_edge1083.i
  %i.sn = getelementptr inbounds nuw i8, ptr %7, i64 168
  call void @_ZN2cv5utils10BufferAreaD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %i.sn) #23
  %i.so = load ptr, ptr %i.nm, align 8, !tbaa !384 ; 3 uses
  %.not.i.i.i.i.i85 = icmp eq ptr %i.so, null
  br i1 %.not.i.i.i.i.i85, label %_ZNSt6vectorIPsSaIS0_EED2Ev.exit.i.i86, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.sp = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !385
  %i.sr = ptrtoint ptr %i.sq to i64
  %i.ss = ptrtoint ptr %i.so to i64
  %i.st = sub i64 %i.sr, %i.ss
  call void @_ZdlPvm(ptr noundef nonnull %i.so, i64 noundef %i.st) #25
  br label %_ZNSt6vectorIPsSaIS0_EED2Ev.exit.i.i86

_ZNSt6vectorIPsSaIS0_EED2Ev.exit.i.i86:           ; preds = %bb.bo, %bb.bn
  %i.su = load ptr, ptr %i.nk, align 8, !tbaa !384 ; 3 uses
  %.not.i.i.i1.i.i87 = icmp eq ptr %i.su, null
  br i1 %.not.i.i.i1.i.i87, label %_ZN2cv10BufferSGBMD2Ev.exit.i88, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIPsSaIS0_EED2Ev.exit.i.i86
  %i.sv = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !385
  %i.sx = ptrtoint ptr %i.sw to i64
  %i.sy = ptrtoint ptr %i.su to i64
  %i.sz = sub i64 %i.sx, %i.sy
  call void @_ZdlPvm(ptr noundef nonnull %i.su, i64 noundef %i.sz) #25
  br label %_ZN2cv10BufferSGBMD2Ev.exit.i88

_ZN2cv10BufferSGBMD2Ev.exit.i88:                  ; preds = %bb.bp, %_ZNSt6vectorIPsSaIS0_EED2Ev.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.da

bb.bq:                                            ; preds = %._crit_edge1083.i, %_ZNK2cv10BufferSGBM8initCBufEs.exit.i
  %.05551084.i = phi i32 [ 1, %_ZNK2cv10BufferSGBM8initCBufEs.exit.i ], [ %i.ve, %._crit_edge1083.i ] ; 4 uses
  %i.ta = icmp eq i32 %.05551084.i, 1             ; 2 uses
  br i1 %i.ta, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.0554.i = phi i32 [ %i.no, %bb.br ], [ 0, %bb.bq ] ; 2 uses
  %.0553.i = phi i32 [ %i.nn, %bb.br ], [ 0, %bb.bq ] ; 3 uses
  %.0552.i = phi i32 [ -1, %bb.br ], [ %i.ln, %bb.bq ] ; 2 uses
  %.0551.i = phi i32 [ -1, %bb.br ], [ %i.ll, %bb.bq ] ; 2 uses
  %.0549.i = phi i32 [ -1, %bb.br ], [ 1, %bb.bq ] ; 2 uses
  %i.tb = load ptr, ptr %i.nk, align 8, !tbaa !384
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !209
  %i.td = load i64, ptr %7, align 8, !tbaa !392
  %i.te = load i8, ptr %i.nl, align 2, !tbaa !393
  %i.tf = zext i8 %i.te to i64
  %i.tg = mul i64 %i.td, %i.tf
  %i.th = load i8, ptr %i.ni, align 1, !tbaa !394
  %i.ti = zext i8 %i.th to i64
  %i.tj = shl nuw nsw i64 %i.ti, 1
  %i.tk = add i64 %i.tj, %i.tg
  %i.tl = load i64, ptr %i.nj, align 8, !tbaa !395
  %i.tm = shl i64 %i.tl, 1
  %i.tn = mul i64 %i.tm, %i.tk
  call void @llvm.memset.p0.i64(ptr align 2 %i.tc, i8 0, i64 %i.tn, i1 false)
  %i.to = load ptr, ptr %i.nm, align 8, !tbaa !384
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !209
  %i.tq = load i64, ptr %7, align 8, !tbaa !392
  %i.tr = load i8, ptr %i.nl, align 2, !tbaa !393
  %i.ts = zext i8 %i.tr to i64
  %i.tt = load i8, ptr %i.ni, align 1, !tbaa !394
  %i.tu = zext i8 %i.tt to i64
  %i.tv = shl nuw nsw i64 %i.tu, 2
  %i.tw = shl i64 %i.tq, 1
  %i.tx = mul i64 %i.tw, %i.ts
  %i.ty = add i64 %i.tv, %i.tx
  call void @llvm.memset.p0.i64(ptr align 2 %i.tp, i8 0, i64 %i.ty, i1 false)
  %i.tz = load ptr, ptr %i.nk, align 8, !tbaa !384
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !209
  %i.uc = load i64, ptr %7, align 8, !tbaa !392
  %i.ud = load i8, ptr %i.nl, align 2, !tbaa !393
  %i.ue = zext i8 %i.ud to i64
  %i.uf = mul i64 %i.uc, %i.ue
  %i.ug = load i8, ptr %i.ni, align 1, !tbaa !394
  %i.uh = zext i8 %i.ug to i64
  %i.ui = shl nuw nsw i64 %i.uh, 1
  %i.uj = add i64 %i.ui, %i.uf
  %i.uk = load i64, ptr %i.nj, align 8, !tbaa !395
  %i.ul = shl i64 %i.uk, 1
  %i.um = mul i64 %i.ul, %i.uj
  call void @llvm.memset.p0.i64(ptr align 2 %i.ub, i8 0, i64 %i.um, i1 false)
  %i.un = load ptr, ptr %i.nm, align 8, !tbaa !384
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !209
  %i.uq = load i64, ptr %7, align 8, !tbaa !392
  %i.ur = load i8, ptr %i.nl, align 2, !tbaa !393
  %i.us = zext i8 %i.ur to i64
  %i.ut = load i8, ptr %i.ni, align 1, !tbaa !394
  %i.uu = zext i8 %i.ut to i64
  %i.uv = shl nuw nsw i64 %i.uu, 2
  %i.uw = shl i64 %i.uq, 1
  %i.ux = mul i64 %i.uw, %i.us
  %i.uy = add i64 %i.uv, %i.ux
  call void @llvm.memset.p0.i64(ptr align 2 %i.up, i8 0, i64 %i.uy, i1 false)
  %.not5771076.i = icmp eq i32 %.0553.i, %.0551.i
  br i1 %.not5771076.i, label %._crit_edge1083.i, label %.lr.ph1082.i

.lr.ph1082.i:                                     ; preds = %bb.bs
  %.not5791039.i = icmp eq i32 %.0554.i, %.0552.i
  %i.uz = icmp eq i32 %.05551084.i, %i.mb
  %i.va = add i32 %.0553.i, %i.oj
  %i.vb = sext i32 %.0554.i to i64
  %i.vc = sext i32 %.0549.i to i64                ; 3 uses
  %i.vd = sext i32 %.0553.i to i64
  br label %bb.bt

._crit_edge1083.i:                                ; preds = %.loopexit995.i, %bb.bs
  %i.ve = add nuw nsw i32 %.05551084.i, 1
  %exitcond1168.not.i = icmp eq i32 %.05551084.i, %i.mb
  br i1 %exitcond1168.not.i, label %bb.bn, label %bb.bq, !llvm.loop !396

bb.bt:                                            ; preds = %.loopexit995.i, %.lr.ph1082.i
  %indvars.iv1166.i = phi i64 [ %i.vd, %.lr.ph1082.i ], [ %indvars.iv.next1167.i, %.loopexit995.i ] ; 9 uses
  %indvars.iv1128.i = phi i32 [ %i.va, %.lr.ph1082.i ], [ %indvars.iv.next1129.i, %.loopexit995.i ] ; 2 uses
  %.05481077.i = phi i8 [ 0, %.lr.ph1082.i ], [ %i.bey, %.loopexit995.i ] ; 4 uses
  %i.vf = load ptr, ptr %i.np, align 8, !tbaa !165 ; 2 uses
  %i.vg = ptrtoaddr ptr %i.vf to i64              ; 2 uses
  %i.vh = load i64, ptr %i.nq, align 8, !tbaa !166
  %i.vi = mul i64 %i.vh, %indvars.iv1166.i        ; 3 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vf, i64 %i.vi ; 7 uses
  %i.vk = icmp sgt i64 %indvars.iv1166.i, -1
  br i1 %i.vk, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc.i unwind label %bb.cc

.noexc.i:                                         ; preds = %bb.bu
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv10BufferSGBM7getCBufEi, ptr noundef nonnull @.str.2, i32 noundef 436) #24
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %.noexc.i
  unreachable

bb.bw:                                            ; preds = %.noexc.i
  %i.vl = landingpad { ptr, i32 }
          cleanup
  %i.vm = load ptr, ptr %4, align 8, !tbaa !66    ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.vo = icmp eq ptr %i.vm, %i.vn
  br i1 %i.vo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bw
  %i.vp = load i64, ptr %i.vn, align 8, !tbaa !62
  %i.vq = add i64 %i.vp, 1
  call void @_ZdlPvm(ptr noundef %i.vm, i64 noundef %i.vq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body.i

bb.bx:                                            ; preds = %bb.bt
  %i.vr = load ptr, ptr %i.nr, align 8, !tbaa !347 ; 6 uses
  %i.vs = ptrtoaddr ptr %i.vr to i64              ; 11 uses
  %i.vt = load i8, ptr %i.ns, align 8, !tbaa !397, !range !70, !noundef !71
  %i.vu = trunc nuw i8 %i.vt to i1
  %i.vv = load i64, ptr %i.mt, align 8            ; 2 uses
  %i.vw = mul i64 %i.vv, %indvars.iv1166.i
  %i.vx = select i1 %i.vu, i64 %i.vw, i64 0       ; 5 uses
  %i.vy = getelementptr [2 x i8], ptr %i.vr, i64 %i.vx ; 28 uses
  %i.vz = load ptr, ptr %i.nt, align 8, !tbaa !398 ; 2 uses
  %i.wa = getelementptr inbounds nuw [2 x i8], ptr %i.vz, i64 %i.vx ; 2 uses
  br i1 %i.ta, label %bb.by, label %bb.ce

bb.by:                                            ; preds = %bb.bx
  %i.wb = icmp eq i64 %indvars.iv1166.i, 0        ; 4 uses
  %i.wc = add nsw i64 %indvars.iv1166.i, %i.pc    ; 2 uses
  %i.wd = trunc nsw i64 %i.wc to i32
  %i.we = select i1 %i.wb, i32 0, i32 %i.wd       ; 2 uses
  %i.wf = sext i32 %i.we to i64
  %.not5781030.i = icmp slt i64 %i.wc, %i.wf
  br i1 %.not5781030.i, label %._crit_edge1034.i, label %.lr.ph1033.i

.lr.ph1033.i:                                     ; preds = %bb.by
  %i.wg = trunc i64 %indvars.iv1166.i to i32
  %i.wh = add i32 %i.wg, %i.nw
  %.sroa.speculated864.i = call i32 @llvm.smax.i32(i32 %i.wh, i32 0)
  %i.wi = zext nneg i32 %.sroa.speculated864.i to i64 ; 2 uses
  %i.wj = add nsw i64 %indvars.iv1166.i, -1       ; 2 uses
  %scevgep246 = getelementptr i8, ptr %i.vr, i64 %i.pe
  %i.wk = shl i64 %i.vx, 1                        ; 8 uses
  %scevgep247 = getelementptr i8, ptr %scevgep246, i64 %i.wk ; 2 uses
  %scevgep306 = getelementptr i8, ptr %i.vr, i64 %i.qd
  %scevgep307 = getelementptr i8, ptr %scevgep306, i64 %i.wk
  %i.wl = add i64 %i.wk, %i.vs
  %i.wm = add i64 %i.qe, %i.vs
  %i.wn = add i64 %i.wm, %i.wk
  %i.wo = add i64 %i.qe, %i.vs
  %i.wp = add i64 %i.wo, %i.wk
  %i.wq = add i64 %i.wk, %i.vs
  %i.wr = add i64 %i.wk, %i.vs
  %i.ws = shl i64 %i.vx, 1                        ; 7 uses
  %i.wt = add i64 %i.ws, %i.vs
  %i.wu = add i64 %i.ws, %i.vs
  %i.wv = add i64 %i.ws, %i.vs
  %scevgep476 = getelementptr i8, ptr %i.vr, i64 %i.rr
  %scevgep477 = getelementptr i8, ptr %scevgep476, i64 %i.ws
  %i.ww = add i64 %i.ws, %i.vs
  %i.wx = add i64 %i.ws, %i.vs
  %i.wy = add i64 %i.ws, %i.vs
  %invariant.gep585 = getelementptr i8, ptr %i.vr, i64 %i.wk
  %i.wz = insertelement <4 x ptr> poison, ptr %scevgep247, i64 1
  br label %bb.bz

bb.bz:                                            ; preds = %.loopexit988.i, %.lr.ph1033.i
  %storemerge1031.i = phi i32 [ %i.we, %.lr.ph1033.i ], [ %i.ard, %.loopexit988.i ] ; 5 uses
  %.sroa.speculated912.i = call i32 @llvm.smin.i32(i32 %i.nn, i32 %storemerge1031.i)
  %i.xa = load ptr, ptr %i.nu, align 8, !tbaa !399 ; 9 uses
  %i.xb = ptrtoaddr ptr %i.xa to i64              ; 9 uses
  %i.xc = sext i32 %.sroa.speculated912.i to i64
  %i.xd = load i64, ptr %i.nv, align 8, !tbaa !400 ; 2 uses
  %i.xe = urem i64 %i.xc, %i.xd                   ; 8 uses
  %i.xf = load i64, ptr %i.mt, align 8, !tbaa !338 ; 11 uses
  %i.xg = mul i64 %i.xf, %i.xe
  %i.xh = getelementptr [2 x i8], ptr %i.xa, i64 %i.xg ; 31 uses
  %i.xi = icmp slt i32 %storemerge1031.i, %i.ll
  br i1 %i.xi, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %i.xj = load ptr, ptr %i.nz, align 8, !tbaa !401
  %i.xk = load ptr, ptr %i.oa, align 8, !tbaa !402
  %i.xl = load ptr, ptr %i.ob, align 8, !tbaa !403
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 1024
  call fastcc void @_ZN2cvL15calcPixelCostBTERKNS_3MatES2_iiiPsPhPKhii(ptr noundef nonnull readonly align 8 dereferenceable(208) %22, ptr noundef nonnull readonly align 8 dereferenceable(208) %23, i32 noundef %storemerge1031.i, i32 noundef %i.ko, i32 noundef %i.kr, ptr noundef %i.xj, ptr noundef %i.xk, ptr noundef nonnull %i.xm, i32 noundef 0, i32 noundef -1)
  call void @llvm.memset.p0.i64(ptr align 2 %i.xh, i8 0, i64 %i.oc, i1 false)
  br i1 %i.od, label %.lr.ph1011.i, label %._crit_edge1012.thread.i

.lr.ph1011.i:                                     ; preds = %bb.ca
  %i.xn = load ptr, ptr %i.nz, align 8, !tbaa !401 ; 10 uses
  %scevgep431 = getelementptr i8, ptr %i.xa, i64 %i.rc
  %i.xo = shl i64 %i.xf, 1
  %i.xp = mul i64 %i.xo, %i.xe
  %i.xq = getelementptr i8, ptr %scevgep431, i64 %i.xp
  %i.xr = getelementptr i8, ptr %i.xn, i64 %i.rd
  %i.xs = getelementptr i8, ptr %i.xn, i64 %i.qw
  br label %bb.cb

bb.cb:                                            ; preds = %._crit_edge.i, %.lr.ph1011.i
  %indvars.iv1097.i = phi i64 [ 0, %.lr.ph1011.i ], [ %indvars.iv.next1098.i, %._crit_edge.i ] ; 5 uses
  %i.xt = shl nuw nsw i64 %indvars.iv1097.i, 1    ; 2 uses
  %scevgep437 = getelementptr i8, ptr %i.xr, i64 %i.xt ; 4 uses
  %i.xu = shl nuw nsw i64 %indvars.iv1097.i, 1
  %scevgep429 = getelementptr i8, ptr %i.xs, i64 %i.xu ; 4 uses
  %i.xv = getelementptr inbounds nuw [2 x i8], ptr %i.xn, i64 %indvars.iv1097.i ; 26 uses
  %i.xw = load i16, ptr %i.xv, align 2, !tbaa !80
  %i.xx = mul i16 %i.xw, %i.of                    ; 6 uses
  %i.xy = getelementptr inbounds nuw [2 x i8], ptr %i.xh, i64 %indvars.iv1097.i ; 4 uses
  store i16 %i.xx, ptr %i.xy, align 2, !tbaa !80
  br i1 %.not6041006.i, label %._crit_edge.i, label %iter.check461

iter.check461:                                    ; preds = %bb.cb
  %31 = udiv i64 %i.rm, %umax446
  %.reass = add i64 %31, %invariant.op            ; 7 uses
  %min.iters.check448 = icmp ult i64 %.reass, 8
  br i1 %min.iters.check448, label %.lr.ph1008.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check461
  %32 = udiv i64 %i.ra, %umax
  %33 = add i64 %32, %umin428
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ry, i64 %33) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %34 = sub i64 0, %mul.result
  %i.xz = getelementptr i8, ptr %scevgep429, i64 %mul.result
  %i.ya = getelementptr i8, ptr %scevgep429, i64 %34
  %i.yb = icmp ult ptr %i.xz, %scevgep429
  %i.yc = icmp ugt ptr %i.ya, %scevgep429
  %i.yd = select i1 %i.rx, i1 %i.yc, i1 %i.yb
  %i.ye = or i1 %i.yd, %mul.overflow
  br i1 %i.ye, label %.lr.ph1008.i.preheader, label %vector.memcheck430

vector.memcheck430:                               ; preds = %vector.scevcheck
  %35 = udiv i64 %i.rh, %umax435
  %36 = add i64 %35, %umin434
  %37 = shl i64 %36, 1
  %38 = add i64 %37, 2
  %39 = mul i64 %38, %i.mj
  %40 = getelementptr i8, ptr %i.xn, i64 %i.xt
  %scevgep436 = getelementptr i8, ptr %40, i64 %39 ; 4 uses
  %i.yf = icmp ult ptr %scevgep436, %scevgep437
  %umin438 = select i1 %i.yf, ptr %scevgep436, ptr %scevgep437
  %i.yg = icmp ugt ptr %scevgep436, %scevgep437
  %umax439 = select i1 %i.yg, ptr %scevgep436, ptr %scevgep437
  %scevgep440 = getelementptr i8, ptr %umax439, i64 2
  %bound0441 = icmp ult ptr %i.xh, %scevgep440
  %bound1442 = icmp ult ptr %umin438, %i.xq
  %found.conflict443 = and i1 %bound0441, %bound1442
  br i1 %found.conflict443, label %.lr.ph1008.i.preheader, label %vector.main.loop.iter.check449

vector.main.loop.iter.check449:                   ; preds = %vector.memcheck430
  %min.iters.check450 = icmp ult i64 %.reass, 16
  br i1 %min.iters.check450, label %vec.epilog.ph465, label %vector.ph451

vector.ph451:                                     ; preds = %vector.main.loop.iter.check449
  %41 = and i64 %.reass, 8
  %n.vec452 = and i64 %.reass, -16                ; 4 uses
  %42 = or disjoint i64 %n.vec452, 1
  %43 = mul i64 %i.mj, %42
  %i.yh = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %i.xx, i64 0
  %invariant.gep = getelementptr [2 x i8], ptr %i.xv, i64 %i.mj
  %invariant.gep570 = getelementptr i8, ptr %i.xv, i64 %i.rz
  %invariant.gep572 = getelementptr i8, ptr %i.xv, i64 %i.sa
  %invariant.gep574 = getelementptr i8, ptr %i.xv, i64 %i.sb
  br label %vector.body453

vector.body453:                                   ; preds = %vector.body453, %vector.ph451
  %index454 = phi i64 [ 0, %vector.ph451 ], [ %index.next456, %vector.body453 ] ; 13 uses
  %vec.phi = phi <8 x i16> [ %i.yh, %vector.ph451 ], [ %i.aay, %vector.body453 ]
  %vec.phi455 = phi <8 x i16> [ zeroinitializer, %vector.ph451 ], [ %i.aaz, %vector.body453 ]
  %i.yi = or disjoint i64 %index454, 1
  %i.yj = mul i64 %i.mj, %i.yi                    ; 5 uses
  %i.yk = or disjoint i64 %index454, 4
  %i.yl = mul i64 %i.mj, %i.yk
  %i.ym = or disjoint i64 %index454, 6
  %i.yn = mul i64 %i.mj, %i.ym
  %i.yo = or disjoint i64 %index454, 7
  %i.yp = mul i64 %i.mj, %i.yo
  %i.yq = or disjoint i64 %index454, 8
  %i.yr = mul i64 %i.mj, %i.yq
  %i.ys = or disjoint i64 %index454, 10
  %i.yt = mul i64 %i.mj, %i.ys
  %i.yu = or disjoint i64 %index454, 11
  %i.yv = mul i64 %i.mj, %i.yu
  %i.yw = or disjoint i64 %index454, 12
  %i.yx = mul i64 %i.mj, %i.yw
  %i.yy = or disjoint i64 %index454, 13
  %i.yz = mul i64 %i.mj, %i.yy
  %i.za = or disjoint i64 %index454, 14
  %i.zb = mul i64 %i.mj, %i.za
  %i.zc = or disjoint i64 %index454, 15
  %i.zd = mul i64 %i.mj, %i.zc
  %i.ze = add i64 %index454, 16
  %i.zf = mul i64 %i.mj, %i.ze
  %i.zg = getelementptr [2 x i8], ptr %i.xv, i64 %i.yj
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.yj
  %gep571 = getelementptr [2 x i8], ptr %invariant.gep570, i64 %i.yj
  %i.zh = getelementptr [2 x i8], ptr %i.xv, i64 %i.yl
  %gep573 = getelementptr [2 x i8], ptr %invariant.gep572, i64 %i.yj
  %i.zi = getelementptr [2 x i8], ptr %i.xv, i64 %i.yn
  %i.zj = getelementptr [2 x i8], ptr %i.xv, i64 %i.yp
  %i.zk = getelementptr [2 x i8], ptr %i.xv, i64 %i.yr
  %gep575 = getelementptr [2 x i8], ptr %invariant.gep574, i64 %i.yj
  %i.zl = getelementptr [2 x i8], ptr %i.xv, i64 %i.yt
  %i.zm = getelementptr [2 x i8], ptr %i.xv, i64 %i.yv
  %i.zn = getelementptr [2 x i8], ptr %i.xv, i64 %i.yx
  %i.zo = getelementptr [2 x i8], ptr %i.xv, i64 %i.yz
  %i.zp = getelementptr [2 x i8], ptr %i.xv, i64 %i.zb
  %i.zq = getelementptr [2 x i8], ptr %i.xv, i64 %i.zd
  %i.zr = getelementptr [2 x i8], ptr %i.xv, i64 %i.zf
  %i.zs = load i16, ptr %i.zg, align 2, !tbaa !80, !alias.scope !404
  %i.zt = load i16, ptr %gep, align 2, !tbaa !80, !alias.scope !404
  %i.zu = load i16, ptr %gep571, align 2, !tbaa !80, !alias.scope !404
  %i.zv = load i16, ptr %i.zh, align 2, !tbaa !80, !alias.scope !404
  %i.zw = load i16, ptr %gep573, align 2, !tbaa !80, !alias.scope !404
  %i.zx = load i16, ptr %i.zi, align 2, !tbaa !80, !alias.scope !404
  %i.zy = load i16, ptr %i.zj, align 2, !tbaa !80, !alias.scope !404
  %i.zz = load i16, ptr %i.zk, align 2, !tbaa !80, !alias.scope !404
  %i.aaa = insertelement <8 x i16> poison, i16 %i.zs, i64 0
  %i.aab = insertelement <8 x i16> %i.aaa, i16 %i.zt, i64 1
  %i.aac = insertelement <8 x i16> %i.aab, i16 %i.zu, i64 2
  %i.aad = insertelement <8 x i16> %i.aac, i16 %i.zv, i64 3
  %i.aae = insertelement <8 x i16> %i.aad, i16 %i.zw, i64 4
  %i.aaf = insertelement <8 x i16> %i.aae, i16 %i.zx, i64 5
  %i.aag = insertelement <8 x i16> %i.aaf, i16 %i.zy, i64 6
  %i.aah = insertelement <8 x i16> %i.aag, i16 %i.zz, i64 7
  %i.aai = load i16, ptr %gep575, align 2, !tbaa !80, !alias.scope !404
  %i.aaj = load i16, ptr %i.zl, align 2, !tbaa !80, !alias.scope !404
  %i.aak = load i16, ptr %i.zm, align 2, !tbaa !80, !alias.scope !404
  %i.aal = load i16, ptr %i.zn, align 2, !tbaa !80, !alias.scope !404
  %i.aam = load i16, ptr %i.zo, align 2, !tbaa !80, !alias.scope !404
  %i.aan = load i16, ptr %i.zp, align 2, !tbaa !80, !alias.scope !404
  %i.aao = load i16, ptr %i.zq, align 2, !tbaa !80, !alias.scope !404
  %i.aap = load i16, ptr %i.zr, align 2, !tbaa !80, !alias.scope !404
  %i.aaq = insertelement <8 x i16> poison, i16 %i.aai, i64 0
  %i.aar = insertelement <8 x i16> %i.aaq, i16 %i.aaj, i64 1
  %i.aas = insertelement <8 x i16> %i.aar, i16 %i.aak, i64 2
  %i.aat = insertelement <8 x i16> %i.aas, i16 %i.aal, i64 3
  %i.aau = insertelement <8 x i16> %i.aat, i16 %i.aam, i64 4
  %i.aav = insertelement <8 x i16> %i.aau, i16 %i.aan, i64 5
  %i.aaw = insertelement <8 x i16> %i.aav, i16 %i.aao, i64 6
  %i.aax = insertelement <8 x i16> %i.aaw, i16 %i.aap, i64 7
  %i.aay = add <8 x i16> %i.aah, %vec.phi         ; 2 uses
  %i.aaz = add <8 x i16> %i.aax, %vec.phi455      ; 2 uses
  %index.next456 = add nuw i64 %index454, 16      ; 2 uses
  %i.aba = icmp eq i64 %index.next456, %n.vec452
  br i1 %i.aba, label %middle.block457, label %vector.body453, !llvm.loop !407

middle.block457:                                  ; preds = %vector.body453
  %bin.rdx = add <8 x i16> %i.aaz, %i.aay
  %i.abb = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  store i16 %i.abb, ptr %i.xy, align 2, !tbaa !80, !alias.scope !408, !noalias !404
  %cmp.n458 = icmp eq i64 %.reass, %n.vec452
  br i1 %cmp.n458, label %._crit_edge.i, label %vec.epilog.iter.check463

vec.epilog.iter.check463:                         ; preds = %middle.block457
  %min.epilog.iters.check464.not.not = icmp eq i64 %41, 0
  br i1 %min.epilog.iters.check464.not.not, label %.lr.ph1008.i.preheader, label %vec.epilog.ph465, !prof !410

vec.epilog.ph465:                                 ; preds = %vector.main.loop.iter.check449, %vec.epilog.iter.check463
  %vec.epilog.resume.val459 = phi i64 [ %n.vec452, %vec.epilog.iter.check463 ], [ 0, %vector.main.loop.iter.check449 ]
  %bc.merge.rdx = phi i16 [ %i.abb, %vec.epilog.iter.check463 ], [ %i.xx, %vector.main.loop.iter.check449 ]
  %n.vec466 = and i64 %.reass, -8                 ; 3 uses
  %44 = or disjoint i64 %n.vec466, 1
  %45 = mul i64 %i.mj, %44
  %i.abc = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  %invariant.gep576 = getelementptr [2 x i8], ptr %i.xv, i64 %i.mj
  %invariant.gep578 = getelementptr i8, ptr %i.xv, i64 %i.sc
  %invariant.gep580 = getelementptr i8, ptr %i.xv, i64 %i.sd
  br label %vec.epilog.vector.body467

vec.epilog.vector.body467:                        ; preds = %vec.epilog.vector.body467, %vec.epilog.ph465
  %index468 = phi i64 [ %vec.epilog.resume.val459, %vec.epilog.ph465 ], [ %index.next470, %vec.epilog.vector.body467 ] ; 6 uses
  %vec.phi469 = phi <8 x i16> [ %i.abc, %vec.epilog.ph465 ], [ %i.aci, %vec.epilog.vector.body467 ]
  %i.abd = or disjoint i64 %index468, 1
  %i.abe = mul i64 %i.mj, %i.abd                  ; 4 uses
  %i.abf = or disjoint i64 %index468, 4
  %i.abg = mul i64 %i.mj, %i.abf
  %i.abh = or disjoint i64 %index468, 6
  %i.abi = mul i64 %i.mj, %i.abh
  %i.abj = or disjoint i64 %index468, 7
  %i.abk = mul i64 %i.mj, %i.abj
  %i.abl = add i64 %index468, 8
  %i.abm = mul i64 %i.mj, %i.abl
  %i.abn = getelementptr [2 x i8], ptr %i.xv, i64 %i.abe
  %gep577 = getelementptr [2 x i8], ptr %invariant.gep576, i64 %i.abe
  %gep579 = getelementptr [2 x i8], ptr %invariant.gep578, i64 %i.abe
  %i.abo = getelementptr [2 x i8], ptr %i.xv, i64 %i.abg
  %gep581 = getelementptr [2 x i8], ptr %invariant.gep580, i64 %i.abe
  %i.abp = getelementptr [2 x i8], ptr %i.xv, i64 %i.abi
  %i.abq = getelementptr [2 x i8], ptr %i.xv, i64 %i.abk
  %i.abr = getelementptr [2 x i8], ptr %i.xv, i64 %i.abm
  %i.abs = load i16, ptr %i.abn, align 2, !tbaa !80, !alias.scope !404
  %i.abt = load i16, ptr %gep577, align 2, !tbaa !80, !alias.scope !404
  %i.abu = load i16, ptr %gep579, align 2, !tbaa !80, !alias.scope !404
  %i.abv = load i16, ptr %i.abo, align 2, !tbaa !80, !alias.scope !404
  %i.abw = load i16, ptr %gep581, align 2, !tbaa !80, !alias.scope !404
  %i.abx = load i16, ptr %i.abp, align 2, !tbaa !80, !alias.scope !404
  %i.aby = load i16, ptr %i.abq, align 2, !tbaa !80, !alias.scope !404
  %i.abz = load i16, ptr %i.abr, align 2, !tbaa !80, !alias.scope !404
  %i.aca = insertelement <8 x i16> poison, i16 %i.abs, i64 0
  %i.acb = insertelement <8 x i16> %i.aca, i16 %i.abt, i64 1
  %i.acc = insertelement <8 x i16> %i.acb, i16 %i.abu, i64 2
  %i.acd = insertelement <8 x i16> %i.acc, i16 %i.abv, i64 3
  %i.ace = insertelement <8 x i16> %i.acd, i16 %i.abw, i64 4
  %i.acf = insertelement <8 x i16> %i.ace, i16 %i.abx, i64 5
  %i.acg = insertelement <8 x i16> %i.acf, i16 %i.aby, i64 6
  %i.ach = insertelement <8 x i16> %i.acg, i16 %i.abz, i64 7
  %i.aci = add <8 x i16> %i.ach, %vec.phi469      ; 2 uses
  %index.next470 = add nuw i64 %index468, 8       ; 2 uses
  %i.acj = icmp eq i64 %index.next470, %n.vec466
  br i1 %i.acj, label %vec.epilog.middle.block471, label %vec.epilog.vector.body467, !llvm.loop !411

vec.epilog.middle.block471:                       ; preds = %vec.epilog.vector.body467
  %i.ack = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %i.aci) ; 2 uses
  store i16 %i.ack, ptr %i.xy, align 2, !tbaa !80, !alias.scope !408, !noalias !404
  %cmp.n472 = icmp eq i64 %.reass, %n.vec466
  br i1 %cmp.n472, label %._crit_edge.i, label %.lr.ph1008.i.preheader

.lr.ph1008.i.preheader:                           ; preds = %vector.memcheck430, %vector.scevcheck, %iter.check461, %vec.epilog.iter.check463, %vec.epilog.middle.block471
  %indvars.iv1095.i.ph = phi i64 [ %i.mj, %iter.check461 ], [ %i.mj, %vector.scevcheck ], [ %i.mj, %vector.memcheck430 ], [ %43, %vec.epilog.iter.check463 ], [ %45, %vec.epilog.middle.block471 ]
  %.ph = phi i16 [ %i.xx, %iter.check461 ], [ %i.xx, %vector.scevcheck ], [ %i.xx, %vector.memcheck430 ], [ %i.abb, %vec.epilog.iter.check463 ], [ %i.ack, %vec.epilog.middle.block471 ]
  br label %.lr.ph1008.i

.lr.ph1008.i:                                     ; preds = %.lr.ph1008.i.preheader, %.lr.ph1008.i
  %indvars.iv1095.i = phi i64 [ %indvars.iv.next1096.i, %.lr.ph1008.i ], [ %indvars.iv1095.i.ph, %.lr.ph1008.i.preheader ] ; 2 uses
  %i.acl = phi i16 [ %i.acn, %.lr.ph1008.i ], [ %.ph, %.lr.ph1008.i.preheader ]
  %gep.i = getelementptr [2 x i8], ptr %i.xv, i64 %indvars.iv1095.i
  %i.acm = load i16, ptr %gep.i, align 2, !tbaa !80
  %i.acn = add i16 %i.acm, %i.acl                 ; 2 uses
  store i16 %i.acn, ptr %i.xy, align 2, !tbaa !80
  %indvars.iv.next1096.i = add nsw i64 %indvars.iv1095.i, %i.mj ; 2 uses
  %.not604.i = icmp sgt i64 %indvars.iv.next1096.i, %i.ow
  br i1 %.not604.i, label %._crit_edge.i, label %.lr.ph1008.i, !llvm.loop !412

bb.cc:                                            ; preds = %bb.bu
  %i.aco = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

._crit_edge.i:                                    ; preds = %.lr.ph1008.i, %middle.block457, %vec.epilog.middle.block471, %bb.cb
  %indvars.iv.next1098.i = add nuw nsw i64 %indvars.iv1097.i, 1 ; 2 uses
  %exitcond1101.not.i = icmp eq i64 %indvars.iv.next1098.i, %wide.trip.count1100.i
  br i1 %exitcond1101.not.i, label %._crit_edge1012.i, label %bb.cb, !llvm.loop !413

._crit_edge1012.i:                                ; preds = %._crit_edge.i
  br i1 %i.wb, label %iter.check331, label %_ZNK2cv10BufferSGBM7getCBufEi.exit639.i

._crit_edge1012.thread.i:                         ; preds = %bb.ca
  br i1 %i.wb, label %.loopexit988.i, label %_ZNK2cv10BufferSGBM7getCBufEi.exit639.i

_ZNK2cv10BufferSGBM7getCBufEi.exit639.i:          ; preds = %._crit_edge1012.thread.i, %._crit_edge1012.i
  %i.acp = load ptr, ptr %i.nu, align 8, !tbaa !399 ; 2 uses
  %i.acq = ptrtoaddr ptr %i.acp to i64            ; 3 uses
  %i.acr = load i64, ptr %i.nv, align 8, !tbaa !400
  %i.acs = urem i64 %i.wi, %i.acr                 ; 3 uses
  %i.act = load i64, ptr %i.mt, align 8, !tbaa !338 ; 4 uses
  %i.acu = mul i64 %i.act, %i.acs
  %i.acv = getelementptr inbounds nuw [2 x i8], ptr %i.acp, i64 %i.acu ; 7 uses
  %i.acw = load ptr, ptr %i.nr, align 8, !tbaa !347 ; 2 uses
  %i.acx = ptrtoaddr ptr %i.acw to i64            ; 3 uses
  %i.acy = load i8, ptr %i.ns, align 8, !tbaa !397, !range !70, !noundef !71
  %i.acz = trunc nuw i8 %i.acy to i1
  %i.ada = mul i64 %i.act, %i.wj
  %i.adb = select i1 %i.acz, i64 %i.ada, i64 0    ; 3 uses
  %i.adc = getelementptr inbounds nuw [2 x i8], ptr %i.acw, i64 %i.adb ; 7 uses
  br i1 %i.od, label %iter.check412, label %.loopexit988.i

iter.check412:                                    ; preds = %_ZNK2cv10BufferSGBM7getCBufEi.exit639.i
  br i1 %min.iters.check395, label %.lr.ph1014.i.preheader, label %vector.memcheck388

vector.memcheck388:                               ; preds = %iter.check412
  %i.add = shl i64 %i.adb, 1
  %i.ade = add i64 %i.add, %i.acx
  %i.adf = sub i64 %i.ade, %i.wt
  %diff.check389 = icmp ugt i64 %i.adf, -32
  %i.adg = shl i64 %i.xf, 1
  %i.adh = mul i64 %i.adg, %i.xe
  %i.adi = add i64 %i.adh, %i.xb
  %i.adj = sub i64 %i.adi, %i.wu
  %diff.check390 = icmp ugt i64 %i.adj, -32
  %conflict.rdx391 = or i1 %diff.check389, %diff.check390
  %i.adk = shl i64 %i.act, 1
  %i.adl = mul i64 %i.adk, %i.acs
  %i.adm = add i64 %i.adl, %i.acq
  %i.adn = sub i64 %i.adm, %i.wv
  %diff.check392 = icmp ugt i64 %i.adn, -32
  %conflict.rdx393 = or i1 %conflict.rdx391, %diff.check392
  br i1 %conflict.rdx393, label %.lr.ph1014.i.preheader, label %vector.main.loop.iter.check396

vector.main.loop.iter.check396:                   ; preds = %vector.memcheck388
  br i1 %min.iters.check397, label %vec.epilog.ph416, label %vector.body400

vector.body400:                                   ; preds = %vector.main.loop.iter.check396, %vector.body400
  %index401 = phi i64 [ %index.next408, %vector.body400 ], [ 0, %vector.main.loop.iter.check396 ] ; 5 uses
  %i.ado = getelementptr inbounds nuw [2 x i8], ptr %i.adc, i64 %index401 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 16
  %wide.load402 = load <8 x i16>, ptr %i.ado, align 2, !tbaa !80
  %wide.load403 = load <8 x i16>, ptr %i.adp, align 2, !tbaa !80
  %i.adq = getelementptr inbounds nuw [2 x i8], ptr %i.xh, i64 %index401 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 16
  %wide.load404 = load <8 x i16>, ptr %i.adq, align 2, !tbaa !80
  %wide.load405 = load <8 x i16>, ptr %i.adr, align 2, !tbaa !80
  %i.ads = add <8 x i16> %wide.load404, %wide.load402
  %i.adt = add <8 x i16> %wide.load405, %wide.load403
  %i.adu = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %index401 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 16
  %wide.load406 = load <8 x i16>, ptr %i.adu, align 2, !tbaa !80
  %wide.load407 = load <8 x i16>, ptr %i.adv, align 2, !tbaa !80
  %i.adw = sub <8 x i16> %i.ads, %wide.load406
  %i.adx = sub <8 x i16> %i.adt, %wide.load407
  %i.ady = getelementptr inbounds nuw [2 x i8], ptr %i.vy, i64 %index401 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 16
  store <8 x i16> %i.adw, ptr %i.ady, align 2, !tbaa !80
  store <8 x i16> %i.adx, ptr %i.adz, align 2, !tbaa !80
  %index.next408 = add nuw i64 %index401, 16      ; 2 uses
  %i.aea = icmp eq i64 %index.next408, %n.vec399
  br i1 %i.aea, label %middle.block409, label %vector.body400, !llvm.loop !414

middle.block409:                                  ; preds = %vector.body400
  br i1 %cmp.n410, label %.preheader989.i, label %vec.epilog.iter.check414

vec.epilog.iter.check414:                         ; preds = %middle.block409
  br i1 %min.epilog.iters.check415, label %.lr.ph1014.i.preheader, label %vec.epilog.ph416, !prof !85

vec.epilog.ph416:                                 ; preds = %vector.main.loop.iter.check396, %vec.epilog.iter.check414
  %vec.epilog.resume.val411 = phi i64 [ %n.vec399, %vec.epilog.iter.check414 ], [ 0, %vector.main.loop.iter.check396 ]
  br label %vec.epilog.vector.body418

vec.epilog.vector.body418:                        ; preds = %vec.epilog.vector.body418, %vec.epilog.ph416
  %index419 = phi i64 [ %vec.epilog.resume.val411, %vec.epilog.ph416 ], [ %index.next423, %vec.epilog.vector.body418 ] ; 5 uses
  %i.aeb = getelementptr inbounds nuw [2 x i8], ptr %i.adc, i64 %index419
  %wide.load420 = load <4 x i16>, ptr %i.aeb, align 2, !tbaa !80
  %i.aec = getelementptr inbounds nuw [2 x i8], ptr %i.xh, i64 %index419
  %wide.load421 = load <4 x i16>, ptr %i.aec, align 2, !tbaa !80
  %i.aed = add <4 x i16> %wide.load421, %wide.load420
  %i.aee = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %index419
  %wide.load422 = load <4 x i16>, ptr %i.aee, align 2, !tbaa !80
  %i.aef = sub <4 x i16> %i.aed, %wide.load422
  %i.aeg = getelementptr inbounds nuw [2 x i8], ptr %i.vy, i64 %index419
  store <4 x i16> %i.aef, ptr %i.aeg, align 2, !tbaa !80
  %index.next423 = add nuw i64 %index419, 4       ; 2 uses
  %i.aeh = icmp eq i64 %index.next423, %n.vec417
  br i1 %i.aeh, label %vec.epilog.middle.block424, label %vec.epilog.vector.body418, !llvm.loop !415

vec.epilog.middle.block424:                       ; preds = %vec.epilog.vector.body418
  br i1 %cmp.n425, label %.preheader989.i, label %.lr.ph1014.i.preheader

.lr.ph1014.i.preheader:                           ; preds = %vector.memcheck388, %iter.check412, %vec.epilog.iter.check414, %vec.epilog.middle.block424
  %indvars.iv1102.i.ph = phi i64 [ 0, %iter.check412 ], [ 0, %vector.memcheck388 ], [ %n.vec399, %vec.epilog.iter.check414 ], [ %n.vec417, %vec.epilog.middle.block424 ] ; 7 uses
  br i1 %lcmp.mod.not, label %.lr.ph1014.i.prol.loopexit, label %.lr.ph1014.i.prol

.lr.ph1014.i.prol:                                ; preds = %.lr.ph1014.i.preheader
  %i.aei = getelementptr inbounds nuw [2 x i8], ptr %i.adc, i64 %indvars.iv1102.i.ph
  %i.aej = load i16, ptr %i.aei, align 2, !tbaa !80
  %i.aek = getelementptr inbounds nuw [2 x i8], ptr %i.xh, i64 %indvars.iv1102.i.ph
  %i.ael = load i16, ptr %i.aek, align 2, !tbaa !80
  %i.aem = add i16 %i.ael, %i.aej
  %i.aen = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %indvars.iv1102.i.ph
  %i.aeo = load i16, ptr %i.aen, align 2, !tbaa !80
  %i.aep = sub i16 %i.aem, %i.aeo
  %i.aeq = getelementptr inbounds nuw [2 x i8], ptr %i.vy, i64 %indvars.iv1102.i.ph
  store i16 %i.aep, ptr %i.aeq, align 2, !tbaa !80
  %indvars.iv.next1103.i.prol = or disjoint i64 %indvars.iv1102.i.ph, 1
  br label %.lr.ph1014.i.prol.loopexit

.lr.ph1014.i.prol.loopexit:                       ; preds = %.lr.ph1014.i.prol, %.lr.ph1014.i.preheader
  %indvars.iv1102.i.unr = phi i64 [ %indvars.iv1102.i.ph, %.lr.ph1014.i.preheader ], [ %indvars.iv.next1103.i.prol, %.lr.ph1014.i.prol ]
  %i.aer = icmp eq i64 %i.ru, %indvars.iv1102.i.ph
  br i1 %i.aer, label %.preheader989.i, label %.lr.ph1014.i

.preheader989.i:                                  ; preds = %.lr.ph1014.i.prol.loopexit, %.lr.ph1014.i, %vec.epilog.middle.block424, %middle.block409
  br i1 %i.oh, label %.lr.ph1020.i, label %.loopexit988.i

.lr.ph1020.i:                                     ; preds = %.preheader989.i
  %i.aes = load ptr, ptr %i.nz, align 8, !tbaa !401 ; 3 uses
  %i.aet = shl i64 %i.xf, 1
  %i.aeu = mul i64 %i.aet, %i.xe                  ; 6 uses
  %i.aev = add i64 %i.aeu, %i.xb
  %i.aew = add i64 %i.qe, %i.xb
  %i.aex = add i64 %i.aew, %i.aeu
  %i.aey = add i64 %i.aeu, %i.xb
  %i.aez = add i64 %i.qe, %i.xb
  %i.afa = add i64 %i.aez, %i.aeu
  %i.afb = ptrtoaddr ptr %i.aes to i64            ; 2 uses
  %i.afc = sub i64 %i.afa, %i.afb
  %i.afd = shl i64 %i.adb, 1                      ; 2 uses
  %i.afe = add i64 %i.afd, %i.acx
  %i.aff = add i64 %i.aeu, %i.xb
  %i.afg = shl i64 %i.act, 1
  %i.afh = mul i64 %i.afg, %i.acs                 ; 2 uses
  %i.afi = add i64 %i.afh, %i.acq
  %i.afj = add i64 %i.aeu, %i.xb
  %i.afk = sub i64 %i.wp, %i.afb
  %i.afl = add i64 %i.afd, %i.acx
  %i.afm = add i64 %i.afh, %i.acq
  %i.afn = sub i64 %i.aev, %i.wl
  %diff.check348 = icmp ugt i64 %i.afn, -16
  %i.afo = sub i64 %i.aff, %i.afe
  %diff.check359 = icmp ugt i64 %i.afo, -16
  %i.afp = sub i64 %i.afj, %i.afi
  %diff.check361 = icmp ugt i64 %i.afp, -16
  %invariant.op.a = or i1 %diff.check359, %diff.check361
  %i.afq = sub i64 %i.afl, %i.wq
  %diff.check369 = icmp ugt i64 %i.afq, -16
  %i.afr = sub i64 %i.afm, %i.wr
  %diff.check371 = icmp ugt i64 %i.afr, -16
  %invariant.op582 = or i1 %diff.check369, %diff.check371
  br label %.lr.ph1017.i

.lr.ph1014.i:                                     ; preds = %.lr.ph1014.i.prol.loopexit, %.lr.ph1014.i
  %indvars.iv1102.i = phi i64 [ %indvars.iv.next1103.i.1, %.lr.ph1014.i ], [ %indvars.iv1102.i.unr, %.lr.ph1014.i.prol.loopexit ] ; 6 uses
  %i.afs = getelementptr inbounds nuw [2 x i8], ptr %i.adc, i64 %indvars.iv1102.i
  %i.aft = load i16, ptr %i.afs, align 2, !tbaa !80
  %i.afu = getelementptr inbounds nuw [2 x i8], ptr %i.xh, i64 %indvars.iv1102.i
  %i.afv = load i16, ptr %i.afu, align 2, !tbaa !80
  %i.afw = add i16 %i.afv, %i.aft
  %i.afx = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %indvars.iv1102.i
  %i.afy = load i16, ptr %i.afx, align 2, !tbaa !80
  %i.afz = sub i16 %i.afw, %i.afy
  %i.aga = getelementptr inbounds nuw [2 x i8], ptr %i.vy, i64 %indvars.iv1102.i
end_hunk_0
