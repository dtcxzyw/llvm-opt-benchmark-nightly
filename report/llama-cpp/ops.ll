Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 269
begin_hunk_0_@ggml_compute_forward_conv_transpose_1d:bb.a
  store float %i.nz, ptr %gep174.i39.2, align 4, !tbaa !43
  %i.ob = add nuw nsw i64 %.0155175.i38, 3        ; 2 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.ob
  %i.od = load float, ptr %i.oc, align 4, !tbaa !43
  %i.oe = mul nuw nsw i64 %i.ob, %i.ih
  %gep174.i39.3 = getelementptr [4 x i8], ptr %invariant.gep.i37, i64 %i.oe
  store float %i.od, ptr %gep174.i39.3, align 4, !tbaa !43
  %i.of = add nuw nsw i64 %.0155175.i38, 4        ; 2 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.of
  %i.oh = load float, ptr %i.og, align 4, !tbaa !43
  %i.oi = mul nuw nsw i64 %i.of, %i.ih
  %gep174.i39.4 = getelementptr [4 x i8], ptr %invariant.gep.i37, i64 %i.oi
  store float %i.oh, ptr %gep174.i39.4, align 4, !tbaa !43
  %i.oj = add nuw nsw i64 %.0155175.i38, 5        ; 2 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.oj
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !43
  %i.om = mul nuw nsw i64 %i.oj, %i.ih
  %gep174.i39.5 = getelementptr [4 x i8], ptr %invariant.gep.i37, i64 %i.om
  store float %i.ol, ptr %gep174.i39.5, align 4, !tbaa !43
  %i.on = add nuw nsw i64 %.0155175.i38, 6        ; 2 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.on
  %i.op = load float, ptr %i.oo, align 4, !tbaa !43
  %i.oq = mul nuw nsw i64 %i.on, %i.ih
  %gep174.i39.6 = getelementptr [4 x i8], ptr %invariant.gep.i37, i64 %i.oq
  store float %i.op, ptr %gep174.i39.6, align 4, !tbaa !43
  %i.or = add nuw nsw i64 %.0155175.i38, 7        ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.or
  %i.ot = load float, ptr %i.os, align 4, !tbaa !43
  %i.ou = mul nuw nsw i64 %i.or, %i.ih
  %gep174.i39.7 = getelementptr [4 x i8], ptr %invariant.gep.i37, i64 %i.ou
  store float %i.ot, ptr %gep174.i39.7, align 4, !tbaa !43
  %i.ov = add nuw nsw i64 %.0155175.i38, 8        ; 2 uses
  %exitcond199.not.i40.7 = icmp eq i64 %i.ov, %i.if
  br i1 %exitcond199.not.i40.7, label %._crit_edge178.i41, label %vec.epilog.scalar.ph119, !llvm.loop !999

bb.x:                                             ; preds = %._crit_edge182.split.i33, %._crit_edge211.i6
  %.pre-phi.i9 = phi i64 [ %.pre212.i8, %._crit_edge211.i6 ], [ %i.jx, %._crit_edge182.split.i33 ]
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !57
  tail call void @ggml_barrier(ptr noundef %i.ox)
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !51
  %i.pa = trunc i64 %i.il to i32                  ; 2 uses
  %i.pb = add i32 %i.pa, -1
  %i.pc = add i32 %i.pb, %i.iq
  %i.pd = sdiv i32 %i.pc, %i.iq                   ; 2 uses
  %i.pe = mul nsw i32 %i.pd, %i.io                ; 3 uses
  %i.pf = add nsw i32 %i.pe, %i.pd
  %i.pg = tail call i32 @llvm.smin.i32(i32 %i.pf, i32 %i.pa) ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !48 ; 2 uses
  %i.pj = getelementptr inbounds i8, ptr %i.pi, i64 %.pre-phi.i9
  %i.pk = icmp slt i32 %i.pe, %i.pg
  br i1 %i.pk, label %.lr.ph193.i10, label %_ZL46ggml_compute_forward_conv_transpose_1d_f16_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph193.i10:                                    ; preds = %bb.x
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.pm = icmp slt i64 %i.if, 1
  %i.pn = icmp slt i64 %i.ht, 1
  %i.po = trunc i64 %i.hx to i32
  %brmerge.i11 = select i1 %i.pm, i1 true, i1 %i.pn
  br i1 %brmerge.i11, label %_ZL46ggml_compute_forward_conv_transpose_1d_f16_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph189.preheader.i12

.lr.ph189.preheader.i12:                          ; preds = %.lr.ph193.i10
  %i.pp = sext i32 %i.oz to i64
  %i.pq = sext i32 %i.pe to i64
  %wide.trip.count.i13 = sext i32 %i.pg to i64
  %i.pr = shl i64 %i.ih, 32
  br label %.lr.ph189.i14

.lr.ph189.i14:                                    ; preds = %._crit_edge190.i27, %.lr.ph189.preheader.i12
  %indvars.iv207.i15 = phi i64 [ %i.pq, %.lr.ph189.preheader.i12 ], [ %indvars.iv.next208.i28, %._crit_edge190.i27 ] ; 3 uses
  %i.ps = load ptr, ptr %i.pl, align 8, !tbaa !37
  %i.pt = mul i64 %indvars.iv207.i15, %i.in
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pt
  %i.pv = mul i64 %indvars.iv207.i15, %i.ir
  %i.pw = getelementptr inbounds [4 x i8], ptr %i.pi, i64 %i.pv
  br label %.lr.ph185.i16

._crit_edge190.i27:                               ; preds = %._crit_edge186.i24
  %indvars.iv.next208.i28 = add nsw i64 %indvars.iv207.i15, 1 ; 2 uses
  %exitcond210.not.i29 = icmp eq i64 %indvars.iv.next208.i28, %wide.trip.count.i13
  br i1 %exitcond210.not.i29, label %_ZL46ggml_compute_forward_conv_transpose_1d_f16_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph189.i14, !llvm.loop !1000

.lr.ph185.i16:                                    ; preds = %._crit_edge186.i24, %.lr.ph189.i14
  %indvars.iv203.i17 = phi i64 [ 0, %.lr.ph189.i14 ], [ %indvars.iv.next204.i25, %._crit_edge186.i24 ] ; 3 uses
  %sext223.i18 = mul i64 %i.pr, %indvars.iv203.i17
  %i.px = ashr exact i64 %sext223.i18, 30
  %i.py = getelementptr inbounds i8, ptr %i.pj, i64 %i.px
  %i.pz = mul nsw i64 %indvars.iv203.i17, %i.pp
  %invariant.gep224.i19 = getelementptr [4 x i8], ptr %i.pu, i64 %i.pz
  br label %bb.y

._crit_edge186.i24:                               ; preds = %bb.y
  %indvars.iv.next204.i25 = add nuw nsw i64 %indvars.iv203.i17, 1 ; 2 uses
  %exitcond206.not.i26 = icmp eq i64 %indvars.iv.next204.i25, %i.if
  br i1 %exitcond206.not.i26, label %._crit_edge190.i27, label %.lr.ph185.i16, !llvm.loop !1001

bb.y:                                             ; preds = %bb.y, %.lr.ph185.i16
  %indvars.iv.i20 = phi i64 [ 0, %.lr.ph185.i16 ], [ %indvars.iv.next.i22, %bb.y ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !43
  %i.qa = mul nsw i64 %indvars.iv.i20, %i.hx
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.pw, i64 %i.qa
  call void @ggml_vec_dot_f32(i32 noundef %i.po, ptr noundef nonnull %i.a, i64 noundef 0, ptr noundef %i.py, i64 noundef 0, ptr noundef %i.qb, i64 noundef 0, i32 noundef 1)
  %i.qc = load float, ptr %i.a, align 4, !tbaa !43
  %gep225.i21 = getelementptr [4 x i8], ptr %invariant.gep224.i19, i64 %indvars.iv.i20 ; 2 uses
  %i.qd = load float, ptr %gep225.i21, align 4, !tbaa !43
  %i.qe = fadd float %i.qc, %i.qd
  store float %i.qe, ptr %gep225.i21, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i20, 1 ; 2 uses
  %exitcond202.not.i23 = icmp eq i64 %indvars.iv.next.i22, %i.ht
  br i1 %exitcond202.not.i23, label %._crit_edge186.i24, label %bb.y, !llvm.loop !1002

bb.z:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6481, ptr noundef nonnull @.str.2) #17
  unreachable

_ZL46ggml_compute_forward_conv_transpose_1d_f16_f32PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge190.i27, %._crit_edge190.i, %.lr.ph193.i10, %bb.x, %.lr.ph193.i, %bb.l
  ret void
}

declare void @ggml_vec_dot_f16(i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_im2col(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !30
  switch i32 %i.a, label %bb.af [
    i32 1, label %bb.b
    i32 0, label %bb.s
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 11 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %switch.i = icmp ult i32 %i.f, 2
  br i1 %switch.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6573, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.111) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.k = phi i64 [ %i.h, %bb.e ], [ 0, %bb.d ]    ; 34 uses
  %i.l = phi i64 [ %i.j, %bb.e ], [ 0, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !31   ; 19 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !31   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.v = load i64, ptr %i.u, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.x = load i64, ptr %i.w, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.z = load i64, ptr %i.y, align 8, !tbaa !31   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !31 ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !51
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.an = load i32, ptr %i.am, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !51 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !51
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.at = load i32, ptr %i.as, align 4, !tbaa !51
  %i.au = icmp eq i32 %i.at, 1                    ; 7 uses
  %i.av = load i32, ptr %0, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !36
  %i.ay = select i1 %i.au, i64 %i.t, i64 %i.r     ; 2 uses
  %i.az = select i1 %i.au, i64 %i.r, i64 %i.p     ; 9 uses
  %i.ba = select i1 %i.au, i64 %i.p, i64 1        ; 2 uses
  %i.bb = select i1 %i.au, i64 %i.l, i64 1        ; 17 uses
  %i.bc = select i1 %i.au, i64 %i.af, i64 1       ; 6 uses
  %i.bd = select i1 %i.au, i64 %i.ab, i64 %i.z
  %i.be = select i1 %i.au, i64 %i.z, i64 %i.x
  %i.bf = tail call i64 @ggml_type_size(i32 noundef %i.f)
  %i.bg = icmp eq i64 %i.v, %i.bf
  br i1 %i.bg, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6603, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.112) #17
  unreachable

bb.g:                                             ; preds = %.thread.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !37 ; 7 uses
  %i.bj = icmp sgt i64 %i.ay, 0
  br i1 %i.bj, label %.preheader202.lr.ph.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit

.preheader202.lr.ph.i:                            ; preds = %bb.g
  %factor.op.mul290.i = mul i64 %i.bb, %i.az      ; 2 uses
  %factor.op.mul264.reass.i = mul i64 %factor.op.mul290.i, %i.k ; 2 uses
  %i.bk = icmp slt i64 %i.bc, 1
  %i.bl = icmp slt i64 %i.ad, 1
  %i.bm = sext i32 %i.av to i64                   ; 7 uses
  %i.bn = icmp sle i64 %i.az, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 248 ; 2 uses
  %sext191.i = shl i64 %i.bd, 32
  %i.bp = ashr exact i64 %sext191.i, 32
  %sext192.i = shl i64 %i.be, 32
  %i.bq = ashr exact i64 %sext192.i, 32           ; 2 uses
  %factor.op.mul210.i = mul i64 %i.bb, %i.k       ; 3 uses
  %i.br = sext i32 %i.ah to i64                   ; 3 uses
  %i.bs = sext i32 %i.ap to i64                   ; 6 uses
  %i.bt = sext i32 %i.al to i64                   ; 3 uses
  %i.bu = sext i32 %i.aj to i64                   ; 3 uses
  %i.bv = sext i32 %i.ar to i64                   ; 6 uses
  %i.bw = sext i32 %i.an to i64                   ; 5 uses
  %i.bx = sext i32 %i.ax to i64                   ; 4 uses
  %brmerge.i = select i1 %i.bk, i1 true, i1 %i.bl
  %brmerge329.i = select i1 %brmerge.i, i1 true, i1 %i.bn
  br i1 %brmerge329.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader202.lr.ph.split.split.split.i

.preheader202.lr.ph.split.split.split.i:          ; preds = %.preheader202.lr.ph.i
  %i.by = icmp slt i64 %i.k, 1
  %i.bz = icmp slt i64 %i.bb, 1
  %i.ca = load i32, ptr %i.e, align 8, !tbaa !30
  %brmerge379.i = select i1 %i.bz, i1 true, i1 %i.by
  br i1 %brmerge379.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader202.us.us.preheader.i

.preheader202.us.us.preheader.i:                  ; preds = %.preheader202.lr.ph.split.split.split.i
  %i.cb = shl nuw i64 %i.k, 1                     ; 4 uses
  %i.cc = mul i64 %i.ad, %i.k
  %i.cd = mul i64 %i.cc, %i.bc
  %i.ce = mul i64 %i.cd, %factor.op.mul290.i
  %i.cf = mul i64 %i.bb, %i.k
  %i.cg = mul i64 %i.cf, %i.bm
  %i.ch = shl i64 %i.cg, 1
  %i.ci = mul i64 %i.bb, %i.az
  %i.cj = mul i64 %i.ci, %i.bc
  %i.ck = mul i64 %i.cj, %i.k
  %i.cl = mul i64 %i.ck, %i.ad
  %i.cm = shl i64 %i.cl, 1
  %i.cn = mul i64 %i.bb, %i.az
  %i.co = mul i64 %i.cn, %i.k
  %i.cp = mul i64 %i.co, %i.ad
  %i.cq = shl i64 %i.cp, 1
  %i.cr = mul i64 %i.bb, %i.az
  %i.cs = mul i64 %i.cr, %i.k
  %i.ct = shl i64 %i.cs, 1
  %i.cu = mul i64 %i.bb, %i.k                     ; 2 uses
  %i.cv = mul i64 %i.cu, %i.bx
  %i.cw = shl i64 %i.cv, 1
  %i.cx = shl nsw i64 %i.bm, 1
  %i.cy = add nsw i64 %i.cx, 2
  %i.cz = mul i64 %i.cu, %i.cy
  %i.da = shl nuw i64 %i.k, 1                     ; 2 uses
  %i.db = mul i64 %i.n, %i.bw
  %i.dc = mul i64 %i.db, -2
  %i.dd = shl nsw i64 %i.bt, 1                    ; 2 uses
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = mul i64 %i.n, %i.bu
  %i.dg = shl i64 %i.df, 1
  %i.dh = shl nsw i64 %i.br, 1
  %i.di = add nuw i64 %i.bb, 9223372036854775807
  %i.dj = mul i64 %i.di, %i.bv
  %i.dk = sub i64 %i.dj, %i.bw
  %i.dl = shl i64 %i.dk, 1
  %i.dm = mul i64 %i.n, %i.dl
  %i.dn = add i64 %i.dm, %i.da
  %i.do = sub i64 %i.dn, %i.dd
  %i.dp = mul i64 %i.n, %i.bv
  %i.dq = mul i64 %i.bb, %i.k
  %i.dr = mul i64 %i.dq, %i.bm
  %i.ds = shl i64 %i.dr, 1
  %i.dt = mul i64 %i.bb, %i.az
  %i.du = mul i64 %i.dt, %i.bc
  %i.dv = mul i64 %i.du, %i.k
  %i.dw = mul i64 %i.dv, %i.ad
  %i.dx = shl i64 %i.dw, 1
  %i.dy = mul i64 %i.bb, %i.az
  %i.dz = mul i64 %i.dy, %i.k
  %i.ea = mul i64 %i.dz, %i.ad
  %i.eb = shl i64 %i.ea, 1
  %i.ec = mul i64 %i.bb, %i.az
  %i.ed = mul i64 %i.ec, %i.k
  %i.ee = shl i64 %i.ed, 1
  %i.ef = mul i64 %i.bb, %i.k                     ; 2 uses
  %i.eg = mul i64 %i.ef, %i.bx
  %i.eh = shl i64 %i.eg, 1
  %i.ei = shl nsw i64 %i.bm, 1
  %i.ej = add nsw i64 %i.ei, 2
  %i.ek = mul i64 %i.ef, %i.ej
  %i.el = mul i64 %i.n, %i.bw
  %i.em = mul i64 %i.el, -4
  %i.en = shl nsw i64 %i.bt, 2                    ; 2 uses
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = mul i64 %i.n, %i.bu
  %i.eq = shl i64 %i.ep, 2
  %i.er = shl nsw i64 %i.br, 2
  %i.es = add nuw i64 %i.bb, 4611686018427387903
  %i.et = mul i64 %i.es, %i.bv
  %i.eu = sub i64 %i.et, %i.bw
  %i.ev = shl i64 %i.eu, 2
  %i.ew = mul i64 %i.n, %i.ev
  %i.ex = shl i64 %i.k, 2
  %i.ey = add i64 %i.ew, %i.ex
  %i.ez = sub i64 %i.ey, %i.en
  %i.fa = mul i64 %i.n, %i.bv
  %i.fb = getelementptr i8, ptr %i.bi, i64 %i.ds
  %i.fc = getelementptr i8, ptr %i.bi, i64 %i.ek
  %i.fd = getelementptr i8, ptr %i.bi, i64 %i.ch
  %i.fe = getelementptr i8, ptr %i.bi, i64 %i.cz
  %min.iters.check160 = icmp ugt i64 %i.k, 7
  %ident.check149.not = icmp eq i32 %i.ap, 1
  %or.cond = select i1 %min.iters.check160, i1 %ident.check149.not, i1 false
  %stride.check158 = icmp ugt i64 %i.k, 4611686018427387903
  %.mask178 = and i64 %i.fa, 2305843009213693952
  %stride.check159 = icmp ne i64 %.mask178, 0
  %invariant.op195 = or i1 %stride.check158, %stride.check159
  %n.vec162 = and i64 %i.k, 4611686018427387896   ; 3 uses
  %broadcast.splatinsert165 = insertelement <8 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat166 = shufflevector <8 x i64> %broadcast.splatinsert165, <8 x i64> poison, <8 x i32> zeroinitializer
  %cmp.n175 = icmp eq i64 %i.k, %n.vec162
  %min.iters.check106 = icmp ugt i64 %i.k, 3
  %ident.check95.not = icmp eq i32 %i.ap, 1
  %or.cond180 = select i1 %min.iters.check106, i1 %ident.check95.not, i1 false
  %stride.check104 = icmp slt i64 %i.da, 0
  %.mask179 = and i64 %i.dp, 4611686018427387904
  %stride.check105 = icmp ne i64 %.mask179, 0
  %invariant.op197 = or i1 %stride.check104, %stride.check105
  %min.iters.check108 = icmp ult i64 %i.k, 16
  %i.ff = and i64 %i.k, 12
  %n.vec110 = and i64 %i.k, 9223372036854775792   ; 4 uses
  %broadcast.splatinsert113 = insertelement <16 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat114 = shufflevector <16 x i64> %broadcast.splatinsert113, <16 x i64> poison, <16 x i32> zeroinitializer
  %cmp.n123 = icmp eq i64 %i.k, %n.vec110
  %min.epilog.iters.check128 = icmp eq i64 %i.ff, 0
  %n.vec130 = and i64 %i.k, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert133 = insertelement <4 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat134 = shufflevector <4 x i64> %broadcast.splatinsert133, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n146 = icmp eq i64 %i.k, %n.vec130
  %xtraiter185 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod186.not = icmp eq i64 %xtraiter185, 0
  br label %.preheader202.us.us.i

.preheader202.us.us.i:                            ; preds = %._crit_edge266.split276.us.split.us.us.us.i, %.preheader202.us.us.preheader.i
  %.0178291.us.us.i = phi i64 [ %i.mu, %._crit_edge266.split276.us.split.us.us.us.i ], [ 0, %.preheader202.us.us.preheader.i ] ; 6 uses
  %i.fg = mul i64 %i.dx, %.0178291.us.us.i        ; 2 uses
  %i.fh = mul i64 %i.cm, %.0178291.us.us.i        ; 2 uses
  %i.fi = mul i64 %i.ce, %.0178291.us.us.i
  %i.fj = mul nuw nsw i64 %.0178291.us.us.i, %i.bc
  %i.fk = mul nsw i64 %.0178291.us.us.i, %i.bp    ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fb, i64 %i.fg
  %i.fm = getelementptr i8, ptr %i.fc, i64 %i.fg
  %i.fn = getelementptr i8, ptr %i.fd, i64 %i.fh
  %i.fo = getelementptr i8, ptr %i.fe, i64 %i.fh
  br label %.preheader201.us.us.us.us.i

.preheader201.us.us.us.us.i:                      ; preds = %._crit_edge.split249.us.split.us.us.us.us.us.i, %.preheader202.us.us.i
  %.0177265.us.us.us.us.i = phi i64 [ 0, %.preheader202.us.us.i ], [ %i.mt, %._crit_edge.split249.us.split.us.us.us.us.us.i ] ; 8 uses
  %i.fp = mul i64 %i.eb, %.0177265.us.us.us.us.i  ; 2 uses
  %i.fq = mul i64 %i.eq, %.0177265.us.us.us.us.i  ; 2 uses
  %i.fr = mul i64 %i.cq, %.0177265.us.us.us.us.i  ; 2 uses
  %i.fs = mul i64 %i.dg, %.0177265.us.us.us.us.i  ; 2 uses
  %i.ft = mul i64 %.0177265.us.us.us.us.i, %i.ad
  %i.fu = add nuw i64 %.0177265.us.us.us.us.i, %i.fj
  %i.fv = mul i64 %i.fu, %i.ad
  %i.fw = mul nsw i64 %.0177265.us.us.us.us.i, %i.bu
  %i.fx = sub i64 %i.fw, %i.bw                    ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fl, i64 %i.fp
  %i.fz = getelementptr i8, ptr %i.fm, i64 %i.fp
  %i.ga = getelementptr i8, ptr %i.fn, i64 %i.fr
  %i.gb = getelementptr i8, ptr %i.fo, i64 %i.fr
  br label %.lr.ph.us.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.us.i:                       ; preds = %._crit_edge223.split.us.us.split.us.us.us.us.us.us.i, %.preheader201.us.us.us.us.i
  %.0176246.us.us.us.us.us.us.i = phi i64 [ 0, %.preheader201.us.us.us.us.i ], [ %i.ms, %._crit_edge223.split.us.us.split.us.us.us.us.us.us.i ] ; 8 uses
  %i.gc = mul i64 %i.ee, %.0176246.us.us.us.us.us.us.i ; 2 uses
  %i.gd = mul i64 %i.er, %.0176246.us.us.us.us.us.us.i ; 2 uses
  %i.ge = mul i64 %i.ct, %.0176246.us.us.us.us.us.us.i ; 2 uses
  %i.gf = mul i64 %i.dh, %.0176246.us.us.us.us.us.us.i ; 2 uses
  %i.gg = add nsw i64 %.0176246.us.us.us.us.us.us.i, %i.fv
  %i.gh = mul nsw i64 %i.gg, %factor.op.mul264.reass.i
  %i.gi = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.gh ; 2 uses
  %i.gj = mul nsw i64 %.0176246.us.us.us.us.us.us.i, %i.br
  %i.gk = sub i64 %i.gj, %i.bt                    ; 9 uses
  %reass.add18 = add i64 %.0176246.us.us.us.us.us.us.i, %i.ft
  %reass.mul19 = mul i64 %reass.add18, %factor.op.mul264.reass.i
  %reass.add16 = add i64 %reass.mul19, %i.fi
  %i.gl = getelementptr i8, ptr %i.fy, i64 %i.gc
  %i.gm = getelementptr i8, ptr %i.fz, i64 %i.gc
  %i.gn = getelementptr i8, ptr %i.ga, i64 %i.ge
  %i.go = getelementptr i8, ptr %i.gb, i64 %i.ge
  %broadcast.splatinsert163 = insertelement <8 x i64> poison, i64 %i.gk, i64 0
  %broadcast.splat164 = shufflevector <8 x i64> %broadcast.splatinsert163, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert111 = insertelement <16 x i64> poison, i64 %i.gk, i64 0
  %broadcast.splat112 = shufflevector <16 x i64> %broadcast.splatinsert111, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert131 = insertelement <4 x i64> poison, i64 %i.gk, i64 0
  %broadcast.splat132 = shufflevector <4 x i64> %broadcast.splatinsert131, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge213.us.us.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.us.i
  %indvar.i = phi i64 [ %indvar.next.i, %._crit_edge213.us.us.us.us.us.us.us.us.i ], [ 0, %.lr.ph.us.us.us.us.us.us.i ] ; 4 uses
  %.0175221.us.us.us.us.us.us.us.us.i = phi i64 [ %i.mq, %._crit_edge213.us.us.us.us.us.us.us.us.i ], [ %i.bm, %.lr.ph.us.us.us.us.us.us.i ] ; 5 uses
  %i.gp = mul i64 %i.eh, %indvar.i                ; 2 uses
  %scevgep151 = getelementptr i8, ptr %i.gl, i64 %i.gp
  %scevgep152 = getelementptr i8, ptr %i.gm, i64 %i.gp
  %i.gq = mul i64 %i.cw, %indvar.i                ; 2 uses
  %scevgep97 = getelementptr i8, ptr %i.gn, i64 %i.gq
  %scevgep98 = getelementptr i8, ptr %i.go, i64 %i.gq
  %i.gr = mul i64 %indvar.i, %i.bx
  %reass.add20 = add i64 %i.gr, %i.bm
  %reass.mul21 = mul i64 %reass.add20, %factor.op.mul210.i
  %reass.add17 = add i64 %reass.add16, %reass.mul21
  %reass.mul = shl i64 %reass.add17, 1            ; 2 uses
  switch i32 %i.ca, label %.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i [
    i32 0, label %.preheader.lr.ph.us.us.us.us.us.us.us.us.i
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.gs = load ptr, ptr %i.bo, align 8, !tbaa !37
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 %i.fk
  %i.gu = mul nsw i64 %.0175221.us.us.us.us.us.us.us.us.i, %i.bq
  %i.gv = getelementptr inbounds i8, ptr %i.gt, i64 %i.gu
  br label %.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i

.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i: ; preds = %bb.i, %bb.h
  %.ph.i = phi ptr [ null, %bb.h ], [ %i.gv, %bb.i ]
  %factor.op.mul.reass.us.us.us.us.us.us.us.us371.i = mul i64 %.0175221.us.us.us.us.us.us.us.us.i, %factor.op.mul210.i
  br label %.preheader.us.us.us.us.us.us.us.us.us.preheader.i

.preheader.lr.ph.us.us.us.us.us.us.us.us.i:       ; preds = %bb.h
  %i.gw = load ptr, ptr %i.bo, align 8, !tbaa !37
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 %i.fk
  %i.gy = mul nsw i64 %.0175221.us.us.us.us.us.us.us.us.i, %i.bq
  %i.gz = getelementptr inbounds i8, ptr %i.gx, i64 %i.gy
  %i.ha = freeze ptr %i.gz                        ; 4 uses
  %factor.op.mul.reass.us.us.us.us.us.us.us.us.i = mul i64 %.0175221.us.us.us.us.us.us.us.us.i, %factor.op.mul210.i ; 2 uses
  %.not194.us.us.us.us.us.us.us.us.i = icmp eq ptr %i.ha, null
  %i.hb = getelementptr [2 x i8], ptr %i.gi, i64 %factor.op.mul.reass.us.us.us.us.us.us.us.us.i
  br i1 %.not194.us.us.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.us.us.us.preheader.i, label %.preheader.us226.us.us.us.us.us.us.us.preheader.i

.preheader.us226.us.us.us.us.us.us.us.preheader.i: ; preds = %.preheader.lr.ph.us.us.us.us.us.us.us.us.i
  %i.hc = getelementptr i8, ptr %i.bi, i64 %reass.mul
  %i.hd = getelementptr i8, ptr %i.ha, i64 %i.eo
  %i.he = getelementptr i8, ptr %i.hd, i64 %i.fq
  %scevgep153 = getelementptr i8, ptr %i.he, i64 %i.gd
  %i.hf = getelementptr i8, ptr %i.ha, i64 %i.ez
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.fq
  %scevgep154 = getelementptr i8, ptr %i.hg, i64 %i.gd
  %bound0155 = icmp ult ptr %scevgep151, %scevgep154
  %bound1156 = icmp ult ptr %scevgep153, %scevgep152
  %found.conflict157 = and i1 %bound0155, %bound1156
  %.reass196 = or i1 %found.conflict157, %invariant.op195
  br label %.preheader.us226.us.us.us.us.us.us.us.i

.preheader.us.us.us.us.us.us.us.us.us.preheader.i: ; preds = %.preheader.lr.ph.us.us.us.us.us.us.us.us.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i
  %i.hh = phi i64 [ %factor.op.mul.reass.us.us.us.us.us.us.us.us371.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i ], [ %factor.op.mul.reass.us.us.us.us.us.us.us.us.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.i ]
  %i.hi = phi ptr [ %.ph.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i ], [ null, %.preheader.lr.ph.us.us.us.us.us.us.us.us.i ] ; 3 uses
  %i.hj = getelementptr i8, ptr %i.bi, i64 %reass.mul
  %i.hk = getelementptr [2 x i8], ptr %i.gi, i64 %i.hh
  %i.hl = getelementptr i8, ptr %i.hi, i64 %i.de
  %i.hm = getelementptr i8, ptr %i.hl, i64 %i.fs
  %scevgep99 = getelementptr i8, ptr %i.hm, i64 %i.gf
  %i.hn = getelementptr i8, ptr %i.hi, i64 %i.do
  %i.ho = getelementptr i8, ptr %i.hn, i64 %i.fs
  %scevgep100 = getelementptr i8, ptr %i.ho, i64 %i.gf
  %bound0101 = icmp ult ptr %scevgep97, %scevgep100
  %bound1102 = icmp ult ptr %scevgep99, %scevgep98
  %found.conflict103 = and i1 %bound0101, %bound1102
  %.reass198 = or i1 %found.conflict103, %invariant.op197
  br label %.preheader.us.us.us.us.us.us.us.us.us.i

.preheader.us226.us.us.us.us.us.us.us.i:          ; preds = %._crit_edge.us239.us.us.us.us.us.us.us.i, %.preheader.us226.us.us.us.us.us.us.us.preheader.i
  %.0174212.us227.us.us.us.us.us.us.us.i = phi i64 [ %i.ke, %._crit_edge.us239.us.us.us.us.us.us.us.i ], [ 0, %.preheader.us226.us.us.us.us.us.us.us.preheader.i ] ; 4 uses
  %i.hp = mul i64 %.0174212.us227.us.us.us.us.us.us.us.i, %i.cb
  %scevgep341.i = getelementptr i8, ptr %i.hc, i64 %i.hp
  %i.hq = mul nsw i64 %.0174212.us227.us.us.us.us.us.us.us.i, %i.bv
  %i.hr = add i64 %i.hq, %i.fx                    ; 3 uses
  %i.hs = icmp slt i64 %i.hr, 0
  %i.ht = mul nuw nsw i64 %i.hr, %i.n
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.ht ; 2 uses
  %i.hv = mul nuw nsw i64 %.0174212.us227.us.us.us.us.us.us.us.i, %i.k
  %i.hw = getelementptr [2 x i8], ptr %i.hb, i64 %i.hv ; 2 uses
  br i1 %i.hs, label %._crit_edge.us239.us.us.us.us.us.us.us.sink.split.i, label %.lr.ph.split.us228.us.us.us.us.us.us.us.i

.lr.ph.split.us228.us.us.us.us.us.us.us.i:        ; preds = %.preheader.us226.us.us.us.us.us.us.us.i
  %i.hx = icmp slt i64 %i.hr, %i.ba
  %.fr.us229.us.us.us.us.us.us.us.i = freeze i1 %i.hx
  br i1 %.fr.us229.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader, label %._crit_edge.us239.us.us.us.us.us.us.us.sink.split.i

.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader: ; preds = %.lr.ph.split.us228.us.us.us.us.us.us.us.i
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %.reass196
  br i1 %brmerge, label %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader182, label %vector.body167

vector.body167:                                   ; preds = %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader, %vector.body167
  %index168 = phi i64 [ %index.next172, %vector.body167 ], [ 0, %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader ] ; 2 uses
  %vec.ind169 = phi <8 x i64> [ %vec.ind.next173, %vector.body167 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader ] ; 2 uses
  %i.hy = add <8 x i64> %vec.ind169, %broadcast.splat164 ; 3 uses
  %i.hz = extractelement <8 x i64> %i.hy, i64 0
  %i.ia = icmp sgt <8 x i64> %i.hy, splat (i64 -1)
  %i.ib = icmp slt <8 x i64> %i.hy, %broadcast.splat166
  %i.ic = select <8 x i1> %i.ia, <8 x i1> %i.ib, <8 x i1> zeroinitializer ; 2 uses
  %i.id = getelementptr [4 x i8], ptr %i.hu, i64 %i.hz
  %wide.masked.load170 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.id, <8 x i1> %i.ic, <8 x float> poison), !tbaa !43, !alias.scope !1038 ; 2 uses
  %i.ie = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.masked.load170)
  %i.if = fmul <8 x float> %i.ie, splat (float f0x77800000)
  %i.ig = fmul <8 x float> %i.if, splat (float f0x08800000)
  %i.ih = bitcast <8 x float> %wide.masked.load170 to <8 x i32> ; 2 uses
  %i.ii = shl <8 x i32> %i.ih, splat (i32 1)      ; 2 uses
  %i.ij = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.ii, <8 x i32> splat (i32 1895825408))
  %i.ik = lshr exact <8 x i32> %i.ij, splat (i32 1)
  %i.il = and <8 x i32> %i.ik, splat (i32 2139095040)
  %i.im = add nuw <8 x i32> %i.il, splat (i32 125829120)
  %i.in = bitcast <8 x i32> %i.im to <8 x float>
  %i.io = fadd <8 x float> %i.ig, %i.in
  %i.ip = bitcast <8 x float> %i.io to <8 x i32>  ; 2 uses
  %i.iq = lshr <8 x i32> %i.ip, splat (i32 13)
  %i.ir = and <8 x i32> %i.iq, splat (i32 31744)
  %i.is = and <8 x i32> %i.ip, splat (i32 4095)
  %i.it = add nuw nsw <8 x i32> %i.ir, %i.is
  %i.iu = lshr <8 x i32> %i.ih, splat (i32 16)
  %i.iv = and <8 x i32> %i.iu, splat (i32 32768)
  %i.iw = icmp ugt <8 x i32> %i.ii, splat (i32 -16777216)
  %i.ix = select <8 x i1> %i.iw, <8 x i32> splat (i32 32256), <8 x i32> %i.it
  %i.iy = or <8 x i32> %i.ix, %i.iv
  %i.iz = trunc nuw <8 x i32> %i.iy to <8 x i16>
  %predphi171 = select <8 x i1> %i.ic, <8 x i16> %i.iz, <8 x i16> zeroinitializer
  %i.ja = getelementptr [2 x i8], ptr %i.hw, i64 %index168
  store <8 x i16> %predphi171, ptr %i.ja, align 2, !tbaa !41, !alias.scope !1039, !noalias !1038
  %index.next172 = add nuw i64 %index168, 8       ; 2 uses
  %vec.ind.next173 = add nuw nsw <8 x i64> %vec.ind169, splat (i64 8)
  %i.jb = icmp eq i64 %index.next172, %n.vec162
  br i1 %i.jb, label %middle.block174, label %vector.body167, !llvm.loop !1012

middle.block174:                                  ; preds = %vector.body167
  br i1 %cmp.n175, label %._crit_edge.us239.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader182

.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader182: ; preds = %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader, %middle.block174
  %.0207.us234.us.us.us.us.us.us.us.i.ph = phi i64 [ %n.vec162, %middle.block174 ], [ 0, %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader ]
  br label %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i

.lr.ph.split.split.us233.us.us.us.us.us.us.us.i:  ; preds = %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader182, %bb.k
  %.0207.us234.us.us.us.us.us.us.us.i = phi i64 [ %i.kd, %bb.k ], [ %.0207.us234.us.us.us.us.us.us.us.i.ph, %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i.preheader182 ] ; 3 uses
  %i.jc = mul nsw i64 %.0207.us234.us.us.us.us.us.us.us.i, %i.bs
  %i.jd = add i64 %i.jc, %i.gk                    ; 3 uses
  %i.je = icmp sgt i64 %i.jd, -1
  %.not193.us.us.us.us.us.us.us.us.i = icmp slt i64 %i.jd, %i.n
  %or.cond195.us.us.us.us.us.us.us.us.i = select i1 %i.je, i1 %.not193.us.us.us.us.us.us.us.us.i, i1 false
  br i1 %or.cond195.us.us.us.us.us.us.us.us.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.jd
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !43 ; 2 uses
  %i.jh = tail call float @llvm.fabs.f32(float %i.jg)
  %i.ji = fmul float %i.jh, f0x77800000
  %i.jj = fmul float %i.ji, f0x08800000
  %i.jk = bitcast float %i.jg to i32              ; 2 uses
  %i.jl = shl i32 %i.jk, 1                        ; 2 uses
  %i.jm = tail call i32 @llvm.umax.i32(i32 %i.jl, i32 1895825408)
  %spec.store.select.i.us.us.us.us.us.us.us.us.i = lshr exact i32 %i.jm, 1
  %i.jn = and i32 %spec.store.select.i.us.us.us.us.us.us.us.us.i, 2139095040
  %i.jo = add nuw i32 %i.jn, 125829120
  %i.jp = bitcast i32 %i.jo to float
  %i.jq = fadd float %i.jj, %i.jp
  %i.jr = bitcast float %i.jq to i32              ; 2 uses
  %i.js = lshr i32 %i.jr, 13
  %i.jt = and i32 %i.js, 31744
  %i.ju = and i32 %i.jr, 4095
  %i.jv = add nuw nsw i32 %i.jt, %i.ju
  %i.jw = lshr i32 %i.jk, 16
  %i.jx = and i32 %i.jw, 32768
  %i.jy = icmp ugt i32 %i.jl, -16777216
  %i.jz = select i1 %i.jy, i32 32256, i32 %i.jv
  %i.ka = or i32 %i.jz, %i.jx
  %i.kb = trunc nuw i32 %i.ka to i16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i
  %.sink.i = phi i16 [ %i.kb, %bb.j ], [ 0, %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i ]
  %i.kc = getelementptr [2 x i8], ptr %i.hw, i64 %.0207.us234.us.us.us.us.us.us.us.i
  store i16 %.sink.i, ptr %i.kc, align 2, !tbaa !41
  %i.kd = add nuw nsw i64 %.0207.us234.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.kd, %i.k
  br i1 %exitcond.not.i, label %._crit_edge.us239.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us233.us.us.us.us.us.us.us.i, !llvm.loop !1013

._crit_edge.us239.us.us.us.us.us.us.us.sink.split.i: ; preds = %.lr.ph.split.us228.us.us.us.us.us.us.us.i, %.preheader.us226.us.us.us.us.us.us.us.i
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep341.i, i8 0, i64 %i.cb, i1 false), !tbaa !41
  br label %._crit_edge.us239.us.us.us.us.us.us.us.i

._crit_edge.us239.us.us.us.us.us.us.us.i:         ; preds = %bb.k, %middle.block174, %._crit_edge.us239.us.us.us.us.us.us.us.sink.split.i
  %i.ke = add nuw nsw i64 %.0174212.us227.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond342.not.i = icmp eq i64 %i.ke, %i.bb
  br i1 %exitcond342.not.i, label %._crit_edge213.us.us.us.us.us.us.us.us.i, label %.preheader.us226.us.us.us.us.us.us.us.i, !llvm.loop !1014

.preheader.us.us.us.us.us.us.us.us.us.i:          ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.i, %.preheader.us.us.us.us.us.us.us.us.us.preheader.i
  %.0174212.us.us.us.us.us.us.us.us.us.i = phi i64 [ %i.mp, %._crit_edge.us.us.us.us.us.us.us.us.us.i ], [ 0, %.preheader.us.us.us.us.us.us.us.us.us.preheader.i ] ; 4 uses
  %i.kf = mul i64 %.0174212.us.us.us.us.us.us.us.us.us.i, %i.cb
  %scevgep345.i = getelementptr i8, ptr %i.hj, i64 %i.kf
  %i.kg = mul nsw i64 %.0174212.us.us.us.us.us.us.us.us.us.i, %i.bv
  %i.kh = add i64 %i.kg, %i.fx                    ; 3 uses
  %i.ki = icmp slt i64 %i.kh, 0
  %i.kj = mul nuw nsw i64 %i.kh, %i.n
  %i.kk = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %i.kj ; 7 uses
  %i.kl = mul nuw nsw i64 %.0174212.us.us.us.us.us.us.us.us.us.i, %i.k
  %i.km = getelementptr [2 x i8], ptr %i.hk, i64 %i.kl ; 7 uses
  br i1 %i.ki, label %._crit_edge.us.us.us.us.us.us.us.us.us.sink.split.i, label %.lr.ph.split.us214.us.us.us.us.us.us.us.us.i

.lr.ph.split.us214.us.us.us.us.us.us.us.us.i:     ; preds = %.preheader.us.us.us.us.us.us.us.us.us.i
  %i.kn = icmp slt i64 %i.kh, %i.ba
  %.fr.us.us.us.us.us.us.us.us.us.i = freeze i1 %i.kn
  br i1 %.fr.us.us.us.us.us.us.us.us.us.i, label %iter.check125, label %._crit_edge.us.us.us.us.us.us.us.us.us.sink.split.i

iter.check125:                                    ; preds = %.lr.ph.split.us214.us.us.us.us.us.us.us.us.i
  %or.cond180.not = xor i1 %or.cond180, true
  %brmerge199 = select i1 %or.cond180.not, i1 true, i1 %.reass198
  br i1 %brmerge199, label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.preheader, label %vector.main.loop.iter.check107

vector.main.loop.iter.check107:                   ; preds = %iter.check125
  br i1 %min.iters.check108, label %vec.epilog.ph129, label %vector.body115

vector.body115:                                   ; preds = %vector.main.loop.iter.check107, %vector.body115
  %index116 = phi i64 [ %index.next120, %vector.body115 ], [ 0, %vector.main.loop.iter.check107 ] ; 2 uses
  %vec.ind117 = phi <16 x i64> [ %vec.ind.next121, %vector.body115 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.main.loop.iter.check107 ] ; 2 uses
  %i.ko = add <16 x i64> %vec.ind117, %broadcast.splat112 ; 3 uses
  %i.kp = extractelement <16 x i64> %i.ko, i64 0
  %i.kq = icmp sgt <16 x i64> %i.ko, splat (i64 -1)
  %i.kr = icmp slt <16 x i64> %i.ko, %broadcast.splat114
  %i.ks = select <16 x i1> %i.kq, <16 x i1> %i.kr, <16 x i1> zeroinitializer
  %i.kt = getelementptr [2 x i8], ptr %i.kk, i64 %i.kp
  %wide.masked.load118 = tail call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 2 %i.kt, <16 x i1> %i.ks, <16 x i16> zeroinitializer), !tbaa !41, !alias.scope !1040
  %i.ku = getelementptr [2 x i8], ptr %i.km, i64 %index116
  store <16 x i16> %wide.masked.load118, ptr %i.ku, align 2, !tbaa !41, !alias.scope !1041, !noalias !1040
  %index.next120 = add nuw i64 %index116, 16      ; 2 uses
  %vec.ind.next121 = add nuw nsw <16 x i64> %vec.ind117, splat (i64 16)
  %i.kv = icmp eq i64 %index.next120, %n.vec110
  br i1 %i.kv, label %middle.block122, label %vector.body115, !llvm.loop !1018
end_hunk_0
begin_hunk_1_@ggml_compute_forward_im2col:bb.a

.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol: ; preds = %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.preheader, %bb.m
  %.0207.us209.us.us.us.us.us.us.us.us.us.i.prol = phi i64 [ %i.lk, %bb.m ], [ %.0207.us209.us.us.us.us.us.us.us.us.us.i.ph, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.preheader ] ; 3 uses
  %prol.iter187 = phi i64 [ %prol.iter187.next, %bb.m ], [ 0, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.preheader ]
  %i.le = mul nsw i64 %.0207.us209.us.us.us.us.us.us.us.us.us.i.prol, %i.bs
  %i.lf = add i64 %i.le, %i.gk                    ; 3 uses
  %i.lg = icmp sgt i64 %i.lf, -1
  %.not193.us.us.us.us.us.us.us.us.us.us.i.prol = icmp slt i64 %i.lf, %i.n
  %or.cond195.us.us.us.us.us.us.us.us.us.us.i.prol = select i1 %i.lg, i1 %.not193.us.us.us.us.us.us.us.us.us.us.i.prol, i1 false
  br i1 %or.cond195.us.us.us.us.us.us.us.us.us.us.i.prol, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol
  %i.lh = getelementptr inbounds nuw [2 x i8], ptr %i.kk, i64 %i.lf
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !41
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol
  %.sink375.i.prol = phi i16 [ %i.li, %bb.l ], [ 0, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol ]
  %i.lj = getelementptr [2 x i8], ptr %i.km, i64 %.0207.us209.us.us.us.us.us.us.us.us.us.i.prol
  store i16 %.sink375.i.prol, ptr %i.lj, align 2, !tbaa !41
  %i.lk = add nuw nsw i64 %.0207.us209.us.us.us.us.us.us.us.us.us.i.prol, 1 ; 2 uses
  %prol.iter187.next = add i64 %prol.iter187, 1   ; 2 uses
  %prol.iter187.cmp.not = icmp eq i64 %prol.iter187.next, %xtraiter185
  br i1 %prol.iter187.cmp.not, label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol.loopexit, label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol, !llvm.loop !1020

.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol.loopexit: ; preds = %bb.m, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.preheader
  %.0207.us209.us.us.us.us.us.us.us.us.us.i.unr = phi i64 [ %.0207.us209.us.us.us.us.us.us.us.us.us.i.ph, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.preheader ], [ %i.lk, %bb.m ]
  %i.ll = sub nsw i64 %.0207.us209.us.us.us.us.us.us.us.us.us.i.ph, %i.k
  %i.lm = icmp ugt i64 %i.ll, -4
  br i1 %i.lm, label %._crit_edge.us.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i

.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i: ; preds = %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol.loopexit, %bb.r
  %.0207.us209.us.us.us.us.us.us.us.us.us.i = phi i64 [ %i.mo, %bb.r ], [ %.0207.us209.us.us.us.us.us.us.us.us.us.i.unr, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol.loopexit ] ; 6 uses
  %i.ln = mul nsw i64 %.0207.us209.us.us.us.us.us.us.us.us.us.i, %i.bs
  %i.lo = add i64 %i.ln, %i.gk                    ; 3 uses
  %i.lp = icmp sgt i64 %i.lo, -1
  %.not193.us.us.us.us.us.us.us.us.us.us.i = icmp slt i64 %i.lo, %i.n
  %or.cond195.us.us.us.us.us.us.us.us.us.us.i = select i1 %i.lp, i1 %.not193.us.us.us.us.us.us.us.us.us.us.i, i1 false
  br i1 %or.cond195.us.us.us.us.us.us.us.us.us.us.i, label %bb.n, label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.1

bb.n:                                             ; preds = %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %i.kk, i64 %i.lo
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !41
  br label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.1

.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.1: ; preds = %bb.n, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i
  %.sink375.i = phi i16 [ %i.lr, %bb.n ], [ 0, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i ]
  %i.ls = getelementptr [2 x i8], ptr %i.km, i64 %.0207.us209.us.us.us.us.us.us.us.us.us.i
  store i16 %.sink375.i, ptr %i.ls, align 2, !tbaa !41
  %i.lt = add nuw nsw i64 %.0207.us209.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %i.lu = mul nsw i64 %i.lt, %i.bs
  %i.lv = add i64 %i.lu, %i.gk                    ; 3 uses
  %i.lw = icmp sgt i64 %i.lv, -1
  %.not193.us.us.us.us.us.us.us.us.us.us.i.1 = icmp slt i64 %i.lv, %i.n
  %or.cond195.us.us.us.us.us.us.us.us.us.us.i.1 = select i1 %i.lw, i1 %.not193.us.us.us.us.us.us.us.us.us.us.i.1, i1 false
  br i1 %or.cond195.us.us.us.us.us.us.us.us.us.us.i.1, label %bb.o, label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.2

bb.o:                                             ; preds = %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.1
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.kk, i64 %i.lv
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !41
  br label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.2

.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.2: ; preds = %bb.o, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.1
  %.sink375.i.1 = phi i16 [ %i.ly, %bb.o ], [ 0, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.1 ]
  %i.lz = getelementptr [2 x i8], ptr %i.km, i64 %i.lt
  store i16 %.sink375.i.1, ptr %i.lz, align 2, !tbaa !41
  %i.ma = add nuw nsw i64 %.0207.us209.us.us.us.us.us.us.us.us.us.i, 2 ; 2 uses
  %i.mb = mul nsw i64 %i.ma, %i.bs
  %i.mc = add i64 %i.mb, %i.gk                    ; 3 uses
  %i.md = icmp sgt i64 %i.mc, -1
  %.not193.us.us.us.us.us.us.us.us.us.us.i.2 = icmp slt i64 %i.mc, %i.n
  %or.cond195.us.us.us.us.us.us.us.us.us.us.i.2 = select i1 %i.md, i1 %.not193.us.us.us.us.us.us.us.us.us.us.i.2, i1 false
  br i1 %or.cond195.us.us.us.us.us.us.us.us.us.us.i.2, label %bb.p, label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.3

bb.p:                                             ; preds = %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.2
  %i.me = getelementptr inbounds nuw [2 x i8], ptr %i.kk, i64 %i.mc
  %i.mf = load i16, ptr %i.me, align 2, !tbaa !41
  br label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.3

.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.3: ; preds = %bb.p, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.2
  %.sink375.i.2 = phi i16 [ %i.mf, %bb.p ], [ 0, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.2 ]
  %i.mg = getelementptr [2 x i8], ptr %i.km, i64 %i.ma
  store i16 %.sink375.i.2, ptr %i.mg, align 2, !tbaa !41
  %i.mh = add nuw nsw i64 %.0207.us209.us.us.us.us.us.us.us.us.us.i, 3 ; 2 uses
  %i.mi = mul nsw i64 %i.mh, %i.bs
  %i.mj = add i64 %i.mi, %i.gk                    ; 3 uses
  %i.mk = icmp sgt i64 %i.mj, -1
  %.not193.us.us.us.us.us.us.us.us.us.us.i.3 = icmp slt i64 %i.mj, %i.n
  %or.cond195.us.us.us.us.us.us.us.us.us.us.i.3 = select i1 %i.mk, i1 %.not193.us.us.us.us.us.us.us.us.us.us.i.3, i1 false
  br i1 %or.cond195.us.us.us.us.us.us.us.us.us.us.i.3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.3
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.kk, i64 %i.mj
  %i.mm = load i16, ptr %i.ml, align 2, !tbaa !41
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.3
  %.sink375.i.3 = phi i16 [ %i.mm, %bb.q ], [ 0, %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.3 ]
  %i.mn = getelementptr [2 x i8], ptr %i.km, i64 %i.mh
  store i16 %.sink375.i.3, ptr %i.mn, align 2, !tbaa !41
  %i.mo = add nuw nsw i64 %.0207.us209.us.us.us.us.us.us.us.us.us.i, 4 ; 2 uses
  %exitcond344.not.i.3 = icmp eq i64 %i.mo, %i.k
  br i1 %exitcond344.not.i.3, label %._crit_edge.us.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i, !llvm.loop !1021

._crit_edge.us.us.us.us.us.us.us.us.us.sink.split.i: ; preds = %.lr.ph.split.us214.us.us.us.us.us.us.us.us.i, %.preheader.us.us.us.us.us.us.us.us.us.i
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep345.i, i8 0, i64 %i.cb, i1 false), !tbaa !41
  br label %._crit_edge.us.us.us.us.us.us.us.us.us.i

._crit_edge.us.us.us.us.us.us.us.us.us.i:         ; preds = %.lr.ph.split.split.us215.us.us.us.us.us.us.us.us.i.prol.loopexit, %bb.r, %middle.block122, %vec.epilog.middle.block145, %._crit_edge.us.us.us.us.us.us.us.us.us.sink.split.i
  %i.mp = add nuw nsw i64 %.0174212.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond346.not.i = icmp eq i64 %i.mp, %i.bb
  br i1 %exitcond346.not.i, label %._crit_edge213.us.us.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1014

._crit_edge213.us.us.us.us.us.us.us.us.i:         ; preds = %._crit_edge.us239.us.us.us.us.us.us.us.i, %._crit_edge.us.us.us.us.us.us.us.us.us.i
  %i.mq = add nsw i64 %.0175221.us.us.us.us.us.us.us.us.i, %i.bx ; 2 uses
  %i.mr = icmp slt i64 %i.mq, %i.az
  %indvar.next.i = add i64 %indvar.i, 1
  br i1 %i.mr, label %bb.h, label %._crit_edge223.split.us.us.split.us.us.us.us.us.us.i, !llvm.loop !1022

._crit_edge223.split.us.us.split.us.us.us.us.us.us.i: ; preds = %._crit_edge213.us.us.us.us.us.us.us.us.i
  %i.ms = add nuw nsw i64 %.0176246.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond347.not.i = icmp eq i64 %i.ms, %i.ad
  br i1 %exitcond347.not.i, label %._crit_edge.split249.us.split.us.us.us.us.us.i, label %.lr.ph.us.us.us.us.us.us.i, !llvm.loop !1023

._crit_edge.split249.us.split.us.us.us.us.us.i:   ; preds = %._crit_edge223.split.us.us.split.us.us.us.us.us.us.i
  %i.mt = add nuw nsw i64 %.0177265.us.us.us.us.i, 1 ; 2 uses
  %exitcond348.not.i = icmp eq i64 %i.mt, %i.bc
  br i1 %exitcond348.not.i, label %._crit_edge266.split276.us.split.us.us.us.i, label %.preheader201.us.us.us.us.i, !llvm.loop !1024

._crit_edge266.split276.us.split.us.us.us.i:      ; preds = %._crit_edge.split249.us.split.us.us.us.us.us.i
  %i.mu = add nuw nsw i64 %.0178291.us.us.i, 1    ; 2 uses
  %exitcond349.not.i = icmp eq i64 %i.mu, %i.ay
  br i1 %exitcond349.not.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader202.us.us.i, !llvm.loop !1025

bb.s:                                             ; preds = %bb.a
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !24 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !24 ; 10 uses
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !30
  %i.na = icmp eq i32 %i.mz, 0
  br i1 %i.na, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6497, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18) #17
  unreachable

bb.u:                                             ; preds = %bb.s
  %.not.i5 = icmp eq ptr %i.mw, null
  br i1 %.not.i5, label %.thread.i6, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !31
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !31
  br label %.thread.i6

.thread.i6:                                       ; preds = %bb.v, %bb.u
  %i.nf = phi i64 [ %i.nc, %bb.v ], [ 0, %bb.u ]  ; 21 uses
  %i.ng = phi i64 [ %i.ne, %bb.v ], [ 0, %bb.u ]
  %i.nh = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !31 ; 12 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !31 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.my, i64 32
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !31 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.my, i64 40
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !31
  %i.np = getelementptr inbounds nuw i8, ptr %i.my, i64 48
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !31
  %i.nr = getelementptr inbounds nuw i8, ptr %i.my, i64 56
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !31
  %i.nt = getelementptr inbounds nuw i8, ptr %i.my, i64 64
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !31 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.my, i64 72
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !31
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !31 ; 7 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !31
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !51
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !51
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.og = load i32, ptr %i.of, align 4, !tbaa !51
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !51
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !51 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.om = load i32, ptr %i.ol, align 8, !tbaa !51
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !51
  %i.op = icmp eq i32 %i.oo, 1                    ; 7 uses
  %i.oq = load i32, ptr %0, align 8, !tbaa !35
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.os = load i32, ptr %i.or, align 4, !tbaa !36
  %i.ot = select i1 %i.op, i64 %i.no, i64 %i.nm   ; 2 uses
  %i.ou = select i1 %i.op, i64 %i.nm, i64 %i.nk   ; 6 uses
  %i.ov = select i1 %i.op, i64 %i.nk, i64 1
  %i.ow = select i1 %i.op, i64 %i.ng, i64 1       ; 10 uses
  %i.ox = select i1 %i.op, i64 %i.oa, i64 1       ; 5 uses
  %i.oy = select i1 %i.op, i64 %i.nw, i64 %i.nu
  %i.oz = select i1 %i.op, i64 %i.nu, i64 %i.ns
  %i.pa = icmp eq i64 %i.nq, 4
  br i1 %i.pa, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread.i6
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6527, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13) #17
  unreachable

bb.x:                                             ; preds = %.thread.i6
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !37 ; 4 uses
  %i.pd = icmp sgt i64 %i.ot, 0
  br i1 %i.pd, label %.preheader175.lr.ph.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit

.preheader175.lr.ph.i:                            ; preds = %bb.x
  %factor.op.mul212.i = mul i64 %i.ow, %i.ou      ; 2 uses
  %factor.op.mul202.reass.i = mul i64 %factor.op.mul212.i, %i.nf ; 3 uses
  %i.pe = icmp slt i64 %i.ox, 1
  %i.pf = icmp slt i64 %i.ny, 1
  %i.pg = sext i32 %i.oq to i64                   ; 6 uses
  %i.ph = icmp sle i64 %i.ou, %i.pg
  %sext.i = shl i64 %i.oy, 32
  %i.pi = ashr exact i64 %sext.i, 32              ; 2 uses
  %sext167.i = shl i64 %i.oz, 32
  %i.pj = ashr exact i64 %sext167.i, 32           ; 3 uses
  %factor.op.mul180.i = mul i64 %i.ow, %i.nf      ; 3 uses
  %i.pk = sext i32 %i.oc to i64                   ; 2 uses
  %i.pl = sext i32 %i.ok to i64                   ; 5 uses
  %i.pm = sext i32 %i.og to i64                   ; 3 uses
  %i.pn = sext i32 %i.oe to i64                   ; 2 uses
  %i.po = sext i32 %i.om to i64                   ; 3 uses
  %i.pp = sext i32 %i.oi to i64                   ; 3 uses
  %i.pq = sext i32 %i.os to i64                   ; 4 uses
  %brmerge.i7 = select i1 %i.pe, i1 true, i1 %i.pf
  %brmerge225.i = select i1 %brmerge.i7, i1 true, i1 %i.ph
  br i1 %brmerge225.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader175.lr.ph.split.split.split.i

.preheader175.lr.ph.split.split.split.i:          ; preds = %.preheader175.lr.ph.i
  %i.pr = icmp slt i64 %i.nf, 1
  %i.ps = icmp slt i64 %i.ow, 1
  %i.pt = getelementptr inbounds nuw i8, ptr %i.my, i64 248
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !37 ; 3 uses
  %brmerge252.i = select i1 %i.ps, i1 true, i1 %i.pr
  br i1 %brmerge252.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader175.us.us.preheader.i

.preheader175.us.us.preheader.i:                  ; preds = %.preheader175.lr.ph.split.split.split.i
  %i.pv = shl nsw i64 %i.pg, 2
  %i.pw = mul i64 %i.pv, %factor.op.mul180.i
  %i.px = shl i64 %factor.op.mul202.reass.i, 2
  %i.py = shl i64 %i.nf, 2                        ; 3 uses
  %i.pz = getelementptr i8, ptr %i.pc, i64 %i.pw
  %i.qa = mul i64 %i.py, %i.ny
  %i.qb = mul i64 %i.qa, %i.ox
  %i.qc = mul i64 %i.qb, %factor.op.mul212.i
  %i.qd = shl i64 %i.ny, 2
  %i.qe = mul i64 %i.qd, %factor.op.mul202.reass.i
  %i.qf = shl nsw i64 %i.pq, 2
  %i.qg = mul i64 %i.qf, %factor.op.mul180.i
  %i.qh = mul i64 %i.ow, %i.nf
  %i.qi = mul i64 %i.qh, %i.pg
  %i.qj = shl i64 %i.qi, 2
  %i.qk = mul i64 %i.ow, %i.ou
  %i.ql = mul i64 %i.qk, %i.ox
  %i.qm = mul i64 %i.ql, %i.nf
  %i.qn = mul i64 %i.qm, %i.ny
  %i.qo = shl i64 %i.qn, 2
  %i.qp = mul i64 %i.ow, %i.ou
  %i.qq = mul i64 %i.qp, %i.nf
  %i.qr = mul i64 %i.qq, %i.ny
  %i.qs = shl i64 %i.qr, 2
  %i.qt = mul i64 %i.ow, %i.ou
  %i.qu = mul i64 %i.qt, %i.nf
  %i.qv = shl i64 %i.qu, 2
  %i.qw = mul i64 %i.ow, %i.nf                    ; 2 uses
  %i.qx = mul i64 %i.qw, %i.pq
  %i.qy = shl i64 %i.qx, 2
  %i.qz = shl nsw i64 %i.pg, 2
  %i.ra = add nsw i64 %i.qz, 4
  %i.rb = mul i64 %i.qw, %i.ra
  %i.rc = shl i64 %i.nf, 2                        ; 2 uses
  %i.rd = mul nsw i64 %i.pj, %i.pg                ; 2 uses
  %i.re = mul i64 %i.ni, %i.pp
  %i.rf = shl nsw i64 %i.pm, 2
  %i.rg = add i64 %i.re, %i.pm
  %i.rh = shl i64 %i.rg, 2
  %i.ri = sub i64 %i.rd, %i.rh
  %i.rj = mul i64 %i.ni, %i.pn
  %i.rk = shl i64 %i.rj, 2
  %i.rl = shl nsw i64 %i.pk, 2
  %i.rm = mul nsw i64 %i.pj, %i.pq
  %i.rn = add nuw i64 %i.ow, 4611686018427387903
  %i.ro = mul i64 %i.rn, %i.po
  %i.rp = sub i64 %i.ro, %i.pp
  %i.rq = shl i64 %i.rp, 2
  %i.rr = mul i64 %i.ni, %i.rq
  %i.rs = add i64 %i.rr, %i.rd
  %i.rt = add i64 %i.rs, %i.rc
  %i.ru = sub i64 %i.rt, %i.rf
  %i.rv = mul i64 %i.ni, %i.po
  %i.rw = getelementptr i8, ptr %i.pc, i64 %i.qj
  %i.rx = getelementptr i8, ptr %i.pc, i64 %i.rb
  %i.ry = getelementptr i8, ptr %i.pu, i64 %i.ri
  %i.rz = getelementptr i8, ptr %i.pu, i64 %i.ru
  %min.iters.check = icmp ugt i64 %i.nf, 3
  %ident.check.not = icmp eq i32 %i.ok, 1
  %or.cond181 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %stride.check = icmp slt i64 %i.rc, 0
  %.mask = and i64 %i.rv, 2305843009213693952
  %stride.check70 = icmp ne i64 %.mask, 0
  %invariant.op193 = or i1 %stride.check, %stride.check70
  %min.iters.check71 = icmp ult i64 %i.nf, 32
  %i.sa = and i64 %i.nf, 28
  %n.vec = and i64 %i.nf, 9223372036854775776     ; 4 uses
  %broadcast.splatinsert72 = insertelement <8 x i64> poison, i64 %i.ni, i64 0
  %broadcast.splat73 = shufflevector <8 x i64> %broadcast.splatinsert72, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %i.nf, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.sa, 0
  %n.vec80 = and i64 %i.nf, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert83 = insertelement <4 x i64> poison, i64 %i.ni, i64 0
  %broadcast.splat84 = shufflevector <4 x i64> %broadcast.splatinsert83, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n93 = icmp eq i64 %i.nf, %n.vec80
  %xtraiter = and i64 %i.nf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader175.us.us.i

.preheader175.us.us.i:                            ; preds = %._crit_edge204.split211.us.split.us.us.us.i, %.preheader175.us.us.preheader.i
  %.0157213.us.us.i = phi i64 [ %i.ww, %._crit_edge204.split211.us.split.us.us.us.i ], [ 0, %.preheader175.us.us.preheader.i ] ; 6 uses
  %i.sb = mul i64 %i.qo, %.0157213.us.us.i        ; 2 uses
  %i.sc = mul i64 %i.pi, %.0157213.us.us.i        ; 2 uses
  %i.sd = mul i64 %i.qc, %.0157213.us.us.i
  %i.se = mul nuw nsw i64 %.0157213.us.us.i, %i.ox
  %i.sf = mul nsw i64 %.0157213.us.us.i, %i.pi
  %i.sg = getelementptr inbounds i8, ptr %i.pu, i64 %i.sf
  %i.sh = getelementptr i8, ptr %i.pz, i64 %i.sd
  %i.si = getelementptr i8, ptr %i.rw, i64 %i.sb
  %i.sj = getelementptr i8, ptr %i.rx, i64 %i.sb
  %i.sk = getelementptr i8, ptr %i.ry, i64 %i.sc
  %i.sl = getelementptr i8, ptr %i.rz, i64 %i.sc
  br label %.preheader174.us.us.us.us.i

.preheader174.us.us.us.us.i:                      ; preds = %._crit_edge.split201.us.split.us.us.us.us.us.i, %.preheader175.us.us.i
  %.0156203.us.us.us.us.i = phi i64 [ 0, %.preheader175.us.us.i ], [ %i.wv, %._crit_edge.split201.us.split.us.us.us.us.us.i ] ; 6 uses
  %i.sm = mul i64 %i.qs, %.0156203.us.us.us.us.i  ; 2 uses
  %i.sn = mul i64 %i.rk, %.0156203.us.us.us.us.i  ; 2 uses
  %i.so = mul i64 %i.qe, %.0156203.us.us.us.us.i
  %i.sp = add nuw i64 %.0156203.us.us.us.us.i, %i.se
  %i.sq = mul i64 %i.sp, %i.ny
  %i.sr = mul nsw i64 %.0156203.us.us.us.us.i, %i.pn
  %i.ss = sub i64 %i.sr, %i.pp
  %i.st = getelementptr i8, ptr %i.sh, i64 %i.so
  %i.su = getelementptr i8, ptr %i.si, i64 %i.sm
  %i.sv = getelementptr i8, ptr %i.sj, i64 %i.sm
  %i.sw = getelementptr i8, ptr %i.sk, i64 %i.sn
  %i.sx = getelementptr i8, ptr %i.sl, i64 %i.sn
  br label %.lr.ph.us.us.us.us.us.us.i8

.lr.ph.us.us.us.us.us.us.i8:                      ; preds = %._crit_edge186.split.us.split.us.us.us.us.us.us.us.i, %.preheader174.us.us.us.us.i
  %.0155194.us.us.us.us.us.us.i = phi i64 [ 0, %.preheader174.us.us.us.us.i ], [ %i.wu, %._crit_edge186.split.us.split.us.us.us.us.us.us.us.i ] ; 6 uses
  %i.sy = mul i64 %i.qv, %.0155194.us.us.us.us.us.us.i ; 2 uses
  %i.sz = mul i64 %i.rl, %.0155194.us.us.us.us.us.us.i ; 2 uses
  %i.ta = mul i64 %i.px, %.0155194.us.us.us.us.us.us.i
  %i.tb = add nsw i64 %.0155194.us.us.us.us.us.us.i, %i.sq
  %i.tc = mul nsw i64 %i.tb, %factor.op.mul202.reass.i
  %i.td = getelementptr inbounds [4 x i8], ptr %i.pc, i64 %i.tc
  %i.te = mul nsw i64 %.0155194.us.us.us.us.us.us.i, %i.pk
  %i.tf = sub i64 %i.te, %i.pm                    ; 7 uses
  %i.tg = getelementptr i8, ptr %i.st, i64 %i.ta
  %i.th = getelementptr i8, ptr %i.su, i64 %i.sy
  %i.ti = getelementptr i8, ptr %i.sv, i64 %i.sy
  %i.tj = getelementptr i8, ptr %i.sw, i64 %i.sz
  %i.tk = getelementptr i8, ptr %i.sx, i64 %i.sz
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.tf, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i64> splat (i64 8), %broadcast.splat
  %invariant.op189 = add <8 x i64> splat (i64 16), %broadcast.splat
  %invariant.op191 = add <8 x i64> splat (i64 24), %broadcast.splat
  %broadcast.splatinsert81 = insertelement <4 x i64> poison, i64 %i.tf, i64 0
  %broadcast.splat82 = shufflevector <4 x i64> %broadcast.splatinsert81, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %.preheader.lr.ph.us.us.us.us.us.us.us.us.i9

.preheader.lr.ph.us.us.us.us.us.us.us.us.i9:      ; preds = %._crit_edge182.us.us.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.us.i8
  %indvar.i10 = phi i64 [ %indvar.next.i12, %._crit_edge182.us.us.us.us.us.us.us.us.i ], [ 0, %.lr.ph.us.us.us.us.us.us.i8 ] ; 4 uses
  %.0154184.us.us.us.us.us.us.us.us.i = phi i64 [ %i.ws, %._crit_edge182.us.us.us.us.us.us.us.us.i ], [ %i.pg, %.lr.ph.us.us.us.us.us.us.i8 ] ; 3 uses
  %i.tl = mul i64 %i.qy, %indvar.i10              ; 2 uses
  %scevgep = getelementptr i8, ptr %i.th, i64 %i.tl
  %scevgep67 = getelementptr i8, ptr %i.ti, i64 %i.tl
  %i.tm = mul i64 %i.rm, %indvar.i10              ; 2 uses
  %scevgep68 = getelementptr i8, ptr %i.tj, i64 %i.tm
  %scevgep69 = getelementptr i8, ptr %i.tk, i64 %i.tm
  %i.tn = mul i64 %i.qg, %indvar.i10
  %i.to = mul nsw i64 %.0154184.us.us.us.us.us.us.us.us.i, %i.pj
  %i.tp = getelementptr inbounds i8, ptr %i.sg, i64 %i.to
  %factor.op.mul.reass.us.us.us.us.us.us.us.us.i11 = mul i64 %.0154184.us.us.us.us.us.us.us.us.i, %factor.op.mul180.i
  %i.tq = getelementptr [4 x i8], ptr %i.td, i64 %factor.op.mul.reass.us.us.us.us.us.us.us.us.i11
  %i.tr = getelementptr i8, ptr %i.tg, i64 %i.tn
  %bound0 = icmp ult ptr %scevgep, %scevgep69
  %bound1 = icmp ult ptr %scevgep68, %scevgep67
  %found.conflict = and i1 %bound0, %bound1
  %.reass194 = or i1 %found.conflict, %invariant.op193
  br label %.preheader.us.us.us.us.us.us.us.us.i

.preheader.us.us.us.us.us.us.us.us.i:             ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.i9
  %.0153181.us.us.us.us.us.us.us.us.i = phi i64 [ 0, %.preheader.lr.ph.us.us.us.us.us.us.us.us.i9 ], [ %i.wr, %._crit_edge.us.us.us.us.us.us.us.us.i ] ; 4 uses
  %i.ts = mul i64 %.0153181.us.us.us.us.us.us.us.us.i, %i.py
  %scevgep230.i = getelementptr i8, ptr %i.tr, i64 %i.ts
  %i.tt = mul nsw i64 %.0153181.us.us.us.us.us.us.us.us.i, %i.po
  %i.tu = add i64 %i.tt, %i.ss                    ; 3 uses
  %i.tv = icmp slt i64 %i.tu, 0
  %i.tw = mul nuw nsw i64 %i.tu, %i.ni
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.tp, i64 %i.tw ; 7 uses
  %i.ty = mul nuw nsw i64 %.0153181.us.us.us.us.us.us.us.us.i, %i.nf
  %i.tz = getelementptr [4 x i8], ptr %i.tq, i64 %i.ty ; 7 uses
  br i1 %i.tv, label %._crit_edge.us.us.us.us.us.us.us.us.sink.split.i, label %.lr.ph.split.us188.us.us.us.us.us.us.us.i

.lr.ph.split.us188.us.us.us.us.us.us.us.i:        ; preds = %.preheader.us.us.us.us.us.us.us.us.i
  %i.ua = icmp slt i64 %i.tu, %i.ov
  %.fr.us.us.us.us.us.us.us.us.i = freeze i1 %i.ua
  br i1 %.fr.us.us.us.us.us.us.us.us.i, label %iter.check, label %._crit_edge.us.us.us.us.us.us.us.us.sink.split.i

iter.check:                                       ; preds = %.lr.ph.split.us188.us.us.us.us.us.us.us.i
  %or.cond181.not = xor i1 %or.cond181, true
  %brmerge200 = select i1 %or.cond181.not, i1 true, i1 %.reass194
  br i1 %brmerge200, label %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check71, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.main.loop.iter.check ] ; 5 uses
  %i.ub = add <8 x i64> %vec.ind, %broadcast.splat ; 3 uses
  %i.uc = extractelement <8 x i64> %i.ub, i64 0
  %.reass = add <8 x i64> %vec.ind, %invariant.op ; 2 uses
  %.reass190 = add <8 x i64> %vec.ind, %invariant.op189 ; 2 uses
  %.reass192 = add <8 x i64> %vec.ind, %invariant.op191 ; 2 uses
  %i.ud = icmp sgt <8 x i64> %i.ub, splat (i64 -1)
  %i.ue = icmp sgt <8 x i64> %.reass, splat (i64 -1)
  %i.uf = icmp sgt <8 x i64> %.reass190, splat (i64 -1)
  %i.ug = icmp sgt <8 x i64> %.reass192, splat (i64 -1)
  %i.uh = icmp slt <8 x i64> %i.ub, %broadcast.splat73
  %i.ui = icmp slt <8 x i64> %.reass, %broadcast.splat73
  %i.uj = icmp slt <8 x i64> %.reass190, %broadcast.splat73
  %i.uk = icmp slt <8 x i64> %.reass192, %broadcast.splat73
  %i.ul = select <8 x i1> %i.ud, <8 x i1> %i.uh, <8 x i1> zeroinitializer
  %i.um = select <8 x i1> %i.ue, <8 x i1> %i.ui, <8 x i1> zeroinitializer
  %i.un = select <8 x i1> %i.uf, <8 x i1> %i.uj, <8 x i1> zeroinitializer
  %i.uo = select <8 x i1> %i.ug, <8 x i1> %i.uk, <8 x i1> zeroinitializer
  %i.up = getelementptr [4 x i8], ptr %i.tx, i64 %i.uc ; 4 uses
  %i.uq = getelementptr i8, ptr %i.up, i64 32
  %i.ur = getelementptr i8, ptr %i.up, i64 64
  %i.us = getelementptr i8, ptr %i.up, i64 96
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.up, <8 x i1> %i.ul, <8 x float> zeroinitializer), !tbaa !43, !alias.scope !1042
  %wide.masked.load74 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.uq, <8 x i1> %i.um, <8 x float> zeroinitializer), !tbaa !43, !alias.scope !1042
  %wide.masked.load75 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ur, <8 x i1> %i.un, <8 x float> zeroinitializer), !tbaa !43, !alias.scope !1042
  %wide.masked.load76 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.us, <8 x i1> %i.uo, <8 x float> zeroinitializer), !tbaa !43, !alias.scope !1042
  %i.ut = getelementptr [4 x i8], ptr %i.tz, i64 %index ; 4 uses
  %i.uu = getelementptr i8, ptr %i.ut, i64 32
  %i.uv = getelementptr i8, ptr %i.ut, i64 64
  %i.uw = getelementptr i8, ptr %i.ut, i64 96
  store <8 x float> %wide.masked.load, ptr %i.ut, align 4, !tbaa !43, !alias.scope !1043, !noalias !1042
  store <8 x float> %wide.masked.load74, ptr %i.uu, align 4, !tbaa !43, !alias.scope !1043, !noalias !1042
  store <8 x float> %wide.masked.load75, ptr %i.uv, align 4, !tbaa !43, !alias.scope !1043, !noalias !1042
  store <8 x float> %wide.masked.load76, ptr %i.uw, align 4, !tbaa !43, !alias.scope !1043, !noalias !1042
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.ux = icmp eq i64 %index.next, %n.vec
  br i1 %i.ux, label %middle.block, label %vector.body, !llvm.loop !1029

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us.us.us.us.us.us.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert85 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat86 = shufflevector <4 x i64> %broadcast.splatinsert85, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat86, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index87 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next91, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind88 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next92, %vec.epilog.vector.body ] ; 2 uses
  %i.uy = add <4 x i64> %vec.ind88, %broadcast.splat82 ; 3 uses
  %i.uz = extractelement <4 x i64> %i.uy, i64 0
  %i.va = icmp sgt <4 x i64> %i.uy, splat (i64 -1)
  %i.vb = icmp slt <4 x i64> %i.uy, %broadcast.splat84
  %i.vc = select <4 x i1> %i.va, <4 x i1> %i.vb, <4 x i1> zeroinitializer
  %i.vd = getelementptr [4 x i8], ptr %i.tx, i64 %i.uz
  %wide.masked.load89 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.vd, <4 x i1> %i.vc, <4 x float> zeroinitializer), !tbaa !43, !alias.scope !1042
  %i.ve = getelementptr [4 x i8], ptr %i.tz, i64 %index87
  store <4 x float> %wide.masked.load89, ptr %i.ve, align 4, !tbaa !43, !alias.scope !1043, !noalias !1042
  %index.next91 = add nuw i64 %index87, 4         ; 2 uses
  %vec.ind.next92 = add nuw nsw <4 x i64> %vec.ind88, splat (i64 4)
  %i.vf = icmp eq i64 %index.next91, %n.vec80
  br i1 %i.vf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1030

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n93, label %._crit_edge.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.preheader

.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0178.us190.us.us.us.us.us.us.us.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec80, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.prol.loopexit, label %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.prol

.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.prol: ; preds = %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.preheader, %bb.z
  %.0178.us190.us.us.us.us.us.us.us.i.prol = phi i64 [ %i.vm, %bb.z ], [ %.0178.us190.us.us.us.us.us.us.us.i.ph, %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.z ], [ 0, %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.preheader ]
  %i.vg = mul nsw i64 %.0178.us190.us.us.us.us.us.us.us.i.prol, %i.pl
  %i.vh = add i64 %i.vg, %i.tf                    ; 3 uses
  %i.vi = icmp sgt i64 %i.vh, -1
  %.not168.us.us.us.us.us.us.us.us.i.prol = icmp slt i64 %i.vh, %i.ni
  %or.cond169.us.us.us.us.us.us.us.us.i.prol = select i1 %i.vi, i1 %.not168.us.us.us.us.us.us.us.us.i.prol, i1 false
  br i1 %or.cond169.us.us.us.us.us.us.us.us.i.prol, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.prol
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.vh
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !43
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.prol
  %.sink.i13.prol = phi float [ %i.vk, %bb.y ], [ 0.000000e+00, %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.prol ]
  %i.vl = getelementptr [4 x i8], ptr %i.tz, i64 %.0178.us190.us.us.us.us.us.us.us.i.prol
  store float %.sink.i13.prol, ptr %i.vl, align 4, !tbaa !43
  %i.vm = add nuw nsw i64 %.0178.us190.us.us.us.us.us.us.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.prol.loopexit, label %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.prol, !llvm.loop !1031

.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.prol.loopexit: ; preds = %bb.z, %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.preheader
  %.0178.us190.us.us.us.us.us.us.us.i.unr = phi i64 [ %.0178.us190.us.us.us.us.us.us.us.i.ph, %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.preheader ], [ %i.vm, %bb.z ]
  %i.vn = sub nsw i64 %.0178.us190.us.us.us.us.us.us.us.i.ph, %i.nf
  %i.vo = icmp ugt i64 %i.vn, -4
  br i1 %i.vo, label %._crit_edge.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i

.lr.ph.split.split.us189.us.us.us.us.us.us.us.i:  ; preds = %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.prol.loopexit, %bb.ae
  %.0178.us190.us.us.us.us.us.us.us.i = phi i64 [ %i.wq, %bb.ae ], [ %.0178.us190.us.us.us.us.us.us.us.i.unr, %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.prol.loopexit ] ; 6 uses
  %i.vp = mul nsw i64 %.0178.us190.us.us.us.us.us.us.us.i, %i.pl
  %i.vq = add i64 %i.vp, %i.tf                    ; 3 uses
  %i.vr = icmp sgt i64 %i.vq, -1
  %.not168.us.us.us.us.us.us.us.us.i = icmp slt i64 %i.vq, %i.ni
  %or.cond169.us.us.us.us.us.us.us.us.i = select i1 %i.vr, i1 %.not168.us.us.us.us.us.us.us.us.i, i1 false
  br i1 %or.cond169.us.us.us.us.us.us.us.us.i, label %bb.aa, label %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.1

bb.aa:                                            ; preds = %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.vq
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !43
  br label %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.1

.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.1: ; preds = %bb.aa, %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i
  %.sink.i13 = phi float [ %i.vt, %bb.aa ], [ 0.000000e+00, %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i ]
  %i.vu = getelementptr [4 x i8], ptr %i.tz, i64 %.0178.us190.us.us.us.us.us.us.us.i
  store float %.sink.i13, ptr %i.vu, align 4, !tbaa !43
  %i.vv = add nuw nsw i64 %.0178.us190.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %i.vw = mul nsw i64 %i.vv, %i.pl
  %i.vx = add i64 %i.vw, %i.tf                    ; 3 uses
  %i.vy = icmp sgt i64 %i.vx, -1
  %.not168.us.us.us.us.us.us.us.us.i.1 = icmp slt i64 %i.vx, %i.ni
  %or.cond169.us.us.us.us.us.us.us.us.i.1 = select i1 %i.vy, i1 %.not168.us.us.us.us.us.us.us.us.i.1, i1 false
  br i1 %or.cond169.us.us.us.us.us.us.us.us.i.1, label %bb.ab, label %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.2

bb.ab:                                            ; preds = %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.1
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.vx
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !43
  br label %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.2

.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.2: ; preds = %bb.ab, %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.1
  %.sink.i13.1 = phi float [ %i.wa, %bb.ab ], [ 0.000000e+00, %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.1 ]
  %i.wb = getelementptr [4 x i8], ptr %i.tz, i64 %i.vv
  store float %.sink.i13.1, ptr %i.wb, align 4, !tbaa !43
  %i.wc = add nuw nsw i64 %.0178.us190.us.us.us.us.us.us.us.i, 2 ; 2 uses
  %i.wd = mul nsw i64 %i.wc, %i.pl
  %i.we = add i64 %i.wd, %i.tf                    ; 3 uses
  %i.wf = icmp sgt i64 %i.we, -1
  %.not168.us.us.us.us.us.us.us.us.i.2 = icmp slt i64 %i.we, %i.ni
  %or.cond169.us.us.us.us.us.us.us.us.i.2 = select i1 %i.wf, i1 %.not168.us.us.us.us.us.us.us.us.i.2, i1 false
  br i1 %or.cond169.us.us.us.us.us.us.us.us.i.2, label %bb.ac, label %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.3

bb.ac:                                            ; preds = %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.2
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.we
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !43
  br label %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.3

.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.3: ; preds = %bb.ac, %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.2
  %.sink.i13.2 = phi float [ %i.wh, %bb.ac ], [ 0.000000e+00, %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.2 ]
  %i.wi = getelementptr [4 x i8], ptr %i.tz, i64 %i.wc
  store float %.sink.i13.2, ptr %i.wi, align 4, !tbaa !43
  %i.wj = add nuw nsw i64 %.0178.us190.us.us.us.us.us.us.us.i, 3 ; 2 uses
  %i.wk = mul nsw i64 %i.wj, %i.pl
  %i.wl = add i64 %i.wk, %i.tf                    ; 3 uses
  %i.wm = icmp sgt i64 %i.wl, -1
  %.not168.us.us.us.us.us.us.us.us.i.3 = icmp slt i64 %i.wl, %i.ni
  %or.cond169.us.us.us.us.us.us.us.us.i.3 = select i1 %i.wm, i1 %.not168.us.us.us.us.us.us.us.us.i.3, i1 false
  br i1 %or.cond169.us.us.us.us.us.us.us.us.i.3, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.3
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.wl
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !43
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.3
  %.sink.i13.3 = phi float [ %i.wo, %bb.ad ], [ 0.000000e+00, %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.3 ]
  %i.wp = getelementptr [4 x i8], ptr %i.tz, i64 %i.wj
  store float %.sink.i13.3, ptr %i.wp, align 4, !tbaa !43
  %i.wq = add nuw nsw i64 %.0178.us190.us.us.us.us.us.us.us.i, 4 ; 2 uses
  %exitcond.not.i14.3 = icmp eq i64 %i.wq, %i.nf
  br i1 %exitcond.not.i14.3, label %._crit_edge.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i, !llvm.loop !1032

._crit_edge.us.us.us.us.us.us.us.us.sink.split.i: ; preds = %.lr.ph.split.us188.us.us.us.us.us.us.us.i, %.preheader.us.us.us.us.us.us.us.us.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep230.i, i8 0, i64 %i.py, i1 false), !tbaa !43
  br label %._crit_edge.us.us.us.us.us.us.us.us.i

._crit_edge.us.us.us.us.us.us.us.us.i:            ; preds = %.lr.ph.split.split.us189.us.us.us.us.us.us.us.i.prol.loopexit, %bb.ae, %middle.block, %vec.epilog.middle.block, %._crit_edge.us.us.us.us.us.us.us.us.sink.split.i
  %i.wr = add nuw nsw i64 %.0153181.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond231.not.i = icmp eq i64 %i.wr, %i.ow
  br i1 %exitcond231.not.i, label %._crit_edge182.us.us.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.us.us.i, !llvm.loop !1033

._crit_edge182.us.us.us.us.us.us.us.us.i:         ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i
  %i.ws = add nsw i64 %.0154184.us.us.us.us.us.us.us.us.i, %i.pq ; 2 uses
  %i.wt = icmp slt i64 %i.ws, %i.ou
  %indvar.next.i12 = add i64 %indvar.i10, 1
  br i1 %i.wt, label %.preheader.lr.ph.us.us.us.us.us.us.us.us.i9, label %._crit_edge186.split.us.split.us.us.us.us.us.us.us.i, !llvm.loop !1034

._crit_edge186.split.us.split.us.us.us.us.us.us.us.i: ; preds = %._crit_edge182.us.us.us.us.us.us.us.us.i
  %i.wu = add nuw nsw i64 %.0155194.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond232.not.i = icmp eq i64 %i.wu, %i.ny
  br i1 %exitcond232.not.i, label %._crit_edge.split201.us.split.us.us.us.us.us.i, label %.lr.ph.us.us.us.us.us.us.i8, !llvm.loop !1035

._crit_edge.split201.us.split.us.us.us.us.us.i:   ; preds = %._crit_edge186.split.us.split.us.us.us.us.us.us.us.i
  %i.wv = add nuw nsw i64 %.0156203.us.us.us.us.i, 1 ; 2 uses
  %exitcond233.not.i = icmp eq i64 %i.wv, %i.ox
  br i1 %exitcond233.not.i, label %._crit_edge204.split211.us.split.us.us.us.i, label %.preheader174.us.us.us.us.i, !llvm.loop !1036

._crit_edge204.split211.us.split.us.us.us.i:      ; preds = %._crit_edge.split201.us.split.us.us.us.us.us.i
  %i.ww = add nuw nsw i64 %.0157213.us.us.i, 1    ; 2 uses
  %exitcond234.not.i = icmp eq i64 %i.ww, %i.ot
  br i1 %exitcond234.not.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader175.us.us.i, !llvm.loop !1037

bb.af:                                            ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6660, ptr noundef nonnull @.str.2) #17
  unreachable

_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge204.split211.us.split.us.us.us.i, %._crit_edge266.split276.us.split.us.us.us.i, %.preheader175.lr.ph.split.split.split.i, %.preheader175.lr.ph.i, %bb.x, %.preheader202.lr.ph.split.split.split.i, %.preheader202.lr.ph.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_im2col_back_f32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 3 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !30
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6674, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.21) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.d, align 8, !tbaa !30
  %switch = icmp ult i32 %i.g, 2
  br i1 %switch, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6675, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.113) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = load i32, ptr %1, align 8, !tbaa !30
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6676, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !31   ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31   ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !31   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !31 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !51
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.am = load i32, ptr %i.al, align 4, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !51
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !51
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.au = load i32, ptr %i.at, align 4, !tbaa !51
  %.fr305 = freeze i32 %i.au
  %i.av = icmp eq i32 %.fr305, 1                  ; 8 uses
  %i.aw = load i32, ptr %0, align 8, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !36
  %i.az = select i1 %i.av, i64 %i.y, i64 %i.w     ; 12 uses
  %i.ba = select i1 %i.av, i64 %i.w, i64 %i.u     ; 19 uses
  %i.bb = select i1 %i.av, i64 %i.u, i64 1        ; 5 uses
  %i.bc = select i1 %i.av, i64 %i.q, i64 1        ; 5 uses
  %.fr306 = freeze i64 %i.m
  %i.bd = select i1 %i.av, i64 %.fr306, i64 1     ; 3 uses
  %i.be = select i1 %i.av, i64 %i.ag, i64 %i.ae
  %i.bf = select i1 %i.av, i64 %i.ae, i64 %i.ac
  %i.bg = icmp eq i64 %i.aa, 4
  br i1 %i.bg, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6705, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.25) #17
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !37 ; 17 uses
  %i.bj = icmp sgt i64 %i.az, 0
  br i1 %i.bj, label %.lr.ph, label %._crit_edge281.split

.lr.ph:                                           ; preds = %bb.i
  %2 = sext i32 %i.aw to i64                      ; 18 uses
  %3 = mul i64 %i.bc, %i.ba
  %factor.op.mul257.reass = mul i64 %3, %i.o      ; 4 uses
  %i.bk = icmp sle i64 %i.ba, %2
  %factor.op.mul = mul i64 %i.bc, %i.o            ; 2 uses
  %i.bl = icmp slt i64 %i.s, 1
  %i.bm = icmp sgt i64 %i.o, 0
  %i.bn = sext i32 %i.am to i64                   ; 2 uses
  %i.bo = sext i32 %i.aq to i64
  %factor.op.mul193 = sub nsw i64 0, %i.bo        ; 4 uses
  %i.bp = sext i32 %i.ai to i64                   ; 8 uses
  %i.bq = sext i32 %i.ao to i64
  %i.br = sext i32 %i.as to i64
  %i.bs = sext i32 %i.ak to i64                   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 4 uses
  %.not177 = icmp sgt i64 %i.bd, 0
  %sext = shl i64 %i.be, 32
  %i.bu = ashr exact i64 %sext, 32                ; 17 uses
  %sext175 = shl i64 %i.bf, 32
  %i.bv = ashr exact i64 %sext175, 32             ; 17 uses
  %i.bw = sext i32 %i.ay to i64                   ; 17 uses
  %i.bx = icmp slt i64 %i.bb, 1
  %or.cond354.not357 = select i1 %i.bk, i1 true, i1 %i.bx
  %brmerge = select i1 %or.cond354.not357, i1 true, i1 %i.bl
  br i1 %brmerge, label %._crit_edge281.split, label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph
  %i.by = icmp sgt i64 %i.bc, 0
  br i1 %i.by, label %.lr.ph.split.split.us.split.us.split.us, label %.preheader186.lr.ph.us.us.preheader

.preheader186.lr.ph.us.us.preheader:              ; preds = %.lr.ph.split.split.us.split.us
  %i.bz = mul i64 %i.bb, %i.s
  %i.ca = shl i64 %i.bz, 2                        ; 5 uses
  %xtraiter = and i64 %i.az, 3                    ; 3 uses
  %i.cb = icmp ult i64 %i.az, 4
  br i1 %i.cb, label %.preheader186.lr.ph.us.us.epil.preheader, label %.preheader186.lr.ph.us.us.preheader.new

.preheader186.lr.ph.us.us.preheader.new:          ; preds = %.preheader186.lr.ph.us.us.preheader
  %unroll_iter = and i64 %i.az, 9223372036854775804
  br label %.preheader186.lr.ph.us.us

.lr.ph.split.split.us.split.us.split.us:          ; preds = %.lr.ph.split.split.us.split.us
  br i1 %i.bm, label %.lr.ph.split.split.us.split.us.split.us.split.us, label %.preheader186.lr.ph.us.us.us.preheader

.preheader186.lr.ph.us.us.us.preheader:           ; preds = %.lr.ph.split.split.us.split.us.split.us
  %i.cc = mul i64 %i.bb, %i.s
  %i.cd = shl i64 %i.cc, 2                        ; 5 uses
  %xtraiter367 = and i64 %i.az, 3                 ; 3 uses
  %i.ce = icmp ult i64 %i.az, 4
  br i1 %i.ce, label %.preheader186.lr.ph.us.us.us.epil.preheader, label %.preheader186.lr.ph.us.us.us.preheader.new

.preheader186.lr.ph.us.us.us.preheader.new:       ; preds = %.preheader186.lr.ph.us.us.us.preheader
  %unroll_iter371 = and i64 %i.az, 9223372036854775804
  br label %.preheader186.lr.ph.us.us.us

.lr.ph.split.split.us.split.us.split.us.split.us: ; preds = %.lr.ph.split.split.us.split.us.split.us
  br i1 %i.av, label %.preheader186.lr.ph.us.us.us.us.us, label %.lr.ph.split.split.us.split.us.split.us.split.us.split

.preheader186.lr.ph.us.us.us.us.us:               ; preds = %.lr.ph.split.split.us.split.us.split.us.split.us, %._crit_edge.split274.us.split.us.split.us.split.us.split.us.us.us.us.us.us
  %.0166279.us.us.us.us.us = phi i64 [ %i.dr, %._crit_edge.split274.us.split.us.split.us.split.us.split.us.us.us.us.us.us ], [ 0, %.lr.ph.split.split.us.split.us.split.us.split.us ] ; 3 uses
  %i.cf = mul nuw nsw i64 %.0166279.us.us.us.us.us, %i.bd
  %i.cg = mul nsw i64 %.0166279.us.us.us.us.us, %i.bu
  %i.ch = getelementptr i8, ptr %i.bi, i64 %i.cg
  br label %.preheader186.us.us.us.us.us.us.us.us.us.us

.preheader186.us.us.us.us.us.us.us.us.us.us:      ; preds = %._crit_edge242.split254.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us, %.preheader186.lr.ph.us.us.us.us.us
  %.0164258.us.us.us.us.us.us.us.us.us.us = phi i64 [ %2, %.preheader186.lr.ph.us.us.us.us.us ], [ %i.dp, %._crit_edge242.split254.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %factor.op.mul226.reass.us.us.us.us.us.us.us.us.us.us = mul i64 %factor.op.mul, %.0164258.us.us.us.us.us.us.us.us.us.us
  %i.ci = mul nsw i64 %.0164258.us.us.us.us.us.us.us.us.us.us, %i.bv
  %i.cj = getelementptr i8, ptr %i.ch, i64 %i.ci
  br label %.preheader185.us.us.us.us.us.us.us.us.us.us.us.us.us

.preheader185.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader186.us.us.us.us.us.us.us.us.us.us
  %.0163241.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader186.us.us.us.us.us.us.us.us.us.us ], [ %i.do, %._crit_edge.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.ck = add nsw i64 %.0163241.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.bq
  %i.cl = mul nuw nsw i64 %.0163241.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.s
  %i.cm = getelementptr [4 x i8], ptr %i.cj, i64 %i.cl
  br label %.preheader184.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.preheader184.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge207.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader185.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.0162227.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader185.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.dn, %._crit_edge207.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.cn = add nsw i64 %.0162227.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.bn
  br label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader184.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.0159206.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader184.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.dl, %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %.0160205.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ 0.000000e+00, %.preheader184.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ]
  %i.co = mul i64 %.0159206.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.br
  %i.cp = sub i64 %i.ck, %i.co                    ; 2 uses
  %i.cq = mul nuw nsw i64 %.0159206.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.o
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.0158192.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.dk, %bb.n ] ; 3 uses
  %.1161191.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ %.0160205.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.n ] ; 4 uses
  %.reass194.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = mul i64 %.0158192.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %factor.op.mul193
  %i.cr = add i64 %i.cn, %.reass194.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ; 2 uses
  %i.cs = srem i64 %i.cr, %i.bp
  %i.ct = sdiv i64 %i.cr, %i.bp                   ; 3 uses
  %.not.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp eq i64 %i.cs, 0
  br i1 %.not.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.cu = srem i64 %i.cp, %i.bs
  %i.cv = sdiv i64 %i.cp, %i.bs                   ; 3 uses
  %.not176.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp ne i64 %i.cu, 0
  %i.cw = icmp slt i64 %i.ct, 0
  %or.cond389 = select i1 %.not176.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, i1 true, i1 %i.cw
  br i1 %or.cond389, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = icmp slt i64 %i.ct, %i.k
  %i.cy = icmp sgt i64 %i.cv, -1
  %or.cond.not182.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = and i1 %i.cx, %i.cy
  %.not177.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp slt i64 %i.cv, %i.bd
  %or.cond178.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = and i1 %or.cond.not182.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.not177.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br i1 %or.cond178.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cz = load ptr, ptr %i.bt, align 8, !tbaa !37
  %i.da = add i64 %i.cv, %i.cf
  %i.db = mul i64 %i.da, %i.k
  %i.dc = add nsw i64 %i.db, %i.ct
  %i.dd = mul nsw i64 %factor.op.mul257.reass, %i.dc
  %i.de = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.dd
  %i.df = getelementptr [4 x i8], ptr %i.de, i64 %factor.op.mul226.reass.us.us.us.us.us.us.us.us.us.us
  %i.dg = getelementptr [4 x i8], ptr %i.df, i64 %i.cq
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %.0158192.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.di = load float, ptr %i.dh, align 4, !tbaa !43
  %i.dj = fadd float %.1161191.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.di
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ %.1161191.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.j ], [ %.1161191.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.k ], [ %i.dj, %bb.m ], [ %.1161191.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.l ] ; 3 uses
  %i.dk = add nuw nsw i64 %.0158192.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond320.not = icmp eq i64 %i.dk, %i.o
  br i1 %exitcond320.not, label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.j, !llvm.loop !1044

._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %bb.n
  %i.dl = add nuw nsw i64 %.0159206.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond321.not = icmp eq i64 %i.dl, %i.bc
  br i1 %exitcond321.not, label %._crit_edge207.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !1045

._crit_edge207.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.dm = getelementptr [4 x i8], ptr %i.cm, i64 %.0162227.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  store float %.3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, ptr %i.dm, align 4, !tbaa !43
  %i.dn = add nuw nsw i64 %.0162227.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond322.not = icmp eq i64 %i.dn, %i.s
  br i1 %exitcond322.not, label %._crit_edge.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.preheader184.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !1046

._crit_edge.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge207.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.do = add nuw nsw i64 %.0163241.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond323.not = icmp eq i64 %i.do, %i.bb
  br i1 %exitcond323.not, label %._crit_edge242.split254.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us, label %.preheader185.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !1047

._crit_edge242.split254.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.dp = add nsw i64 %.0164258.us.us.us.us.us.us.us.us.us.us, %i.bw ; 2 uses
  %i.dq = icmp slt i64 %i.dp, %i.ba
  br i1 %i.dq, label %.preheader186.us.us.us.us.us.us.us.us.us.us, label %._crit_edge.split274.us.split.us.split.us.split.us.split.us.us.us.us.us.us, !llvm.loop !1048

._crit_edge.split274.us.split.us.split.us.split.us.split.us.us.us.us.us.us: ; preds = %._crit_edge242.split254.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us
  %i.dr = add nuw nsw i64 %.0166279.us.us.us.us.us, 1 ; 2 uses
  %exitcond324.not = icmp eq i64 %i.dr, %i.az
  br i1 %exitcond324.not, label %._crit_edge281.split, label %.preheader186.lr.ph.us.us.us.us.us, !llvm.loop !1049

.lr.ph.split.split.us.split.us.split.us.split.us.split: ; preds = %.lr.ph.split.split.us.split.us.split.us.split.us
  br i1 %.not177, label %.preheader186.lr.ph.us.us.us.us.us303.preheader, label %.preheader186.lr.ph.us.us.us.us.preheader

.preheader186.lr.ph.us.us.us.us.us303.preheader:  ; preds = %.lr.ph.split.split.us.split.us.split.us.split.us.split
  %xtraiter379 = and i64 %i.o, 1
  %i.ds = icmp eq i64 %i.o, 1
  %unroll_iter384 = and i64 %i.o, 9223372036854775806
  %lcmp.mod381.not = icmp eq i64 %xtraiter379, 0
  %lcmp.mod383 = trunc i64 %i.o to i1
  br label %.preheader186.lr.ph.us.us.us.us.us303

.preheader186.lr.ph.us.us.us.us.preheader:        ; preds = %.lr.ph.split.split.us.split.us.split.us.split.us.split
  %i.dt = shl i64 %i.s, 2                         ; 5 uses
  %xtraiter373 = and i64 %i.az, 3                 ; 3 uses
  %i.du = icmp ult i64 %i.az, 4
  br i1 %i.du, label %.preheader186.lr.ph.us.us.us.us.epil.preheader, label %.preheader186.lr.ph.us.us.us.us.preheader.new

.preheader186.lr.ph.us.us.us.us.preheader.new:    ; preds = %.preheader186.lr.ph.us.us.us.us.preheader
  %unroll_iter377 = and i64 %i.az, 9223372036854775804
  br label %.preheader186.lr.ph.us.us.us.us

.preheader186.lr.ph.us.us.us.us.us303:            ; preds = %.preheader186.lr.ph.us.us.us.us.us303.preheader, %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us.us.us.us.us.us
  %.0166279.us.us.us.us.us304 = phi i64 [ %i.gb, %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us.us.us.us.us.us ], [ 0, %.preheader186.lr.ph.us.us.us.us.us303.preheader ] ; 3 uses
  %.reass.us = mul i64 %.0166279.us.us.us.us.us304, %i.k ; 3 uses
  %i.dv = mul nsw i64 %.0166279.us.us.us.us.us304, %i.bu
  %i.dw = getelementptr i8, ptr %i.bi, i64 %i.dv
  br label %.preheader186.us.us.us.us.us275.us.us.us.us.us

.preheader186.us.us.us.us.us275.us.us.us.us.us:   ; preds = %._crit_edge242.split254.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us, %.preheader186.lr.ph.us.us.us.us.us303
  %.0164258.us.us.us.us.us276.us.us.us.us.us = phi i64 [ %2, %.preheader186.lr.ph.us.us.us.us.us303 ], [ %i.fz, %._crit_edge242.split254.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %factor.op.mul226.reass.us.us.us.us.us277.us.us.us.us.us = mul i64 %factor.op.mul, %.0164258.us.us.us.us.us276.us.us.us.us.us ; 3 uses
  %i.dx = mul nsw i64 %.0164258.us.us.us.us.us276.us.us.us.us.us, %i.bv
  %i.dy = getelementptr i8, ptr %i.dw, i64 %i.dx
  br label %.preheader185.us.us.us255.us.us.us.us.us.us.us.us.us.us

.preheader185.us.us.us255.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader186.us.us.us.us.us275.us.us.us.us.us
  %.0163241.us.us.us256.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader186.us.us.us.us.us275.us.us.us.us.us ], [ %i.fy, %._crit_edge.split.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %i.dz = mul nuw nsw i64 %.0163241.us.us.us256.us.us.us.us.us.us.us.us.us.us, %i.s
  %i.ea = getelementptr [4 x i8], ptr %i.dy, i64 %i.dz
  br label %.preheader184.us.us.us238.us.us.us.us.us.us.us.us.us.us.us.us.us

.preheader184.us.us.us238.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge207.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader185.us.us.us255.us.us.us.us.us.us.us.us.us.us
  %.0162227.us.us.us239.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader185.us.us.us255.us.us.us.us.us.us.us.us.us.us ], [ %i.fx, %._crit_edge207.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.eb = add nsw i64 %.0162227.us.us.us239.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.bn ; 3 uses
  br label %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader184.us.us.us238.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.0159206.us.us222.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader184.us.us.us238.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.fv, %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.0160205.us.us223.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ 0.000000e+00, %.preheader184.us.us.us238.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa, %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %i.ec = mul nuw nsw i64 %.0159206.us.us222.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.o ; 3 uses
  br i1 %i.ds, label %.epil.preheader, label %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.new

.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.new: ; preds = %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.t
  %.0158192.us212.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ %i.fg, %bb.t ], [ 0, %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  %.1161191.us213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.t ], [ %.0160205.us.us223.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %niter385 = phi i64 [ %niter385.next.1, %bb.t ], [ 0, %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.reass194.us214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = mul i64 %.0158192.us212.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %factor.op.mul193
  %i.ed = add i64 %i.eb, %.reass194.us214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ; 2 uses
  %i.ee = srem i64 %i.ed, %i.bp
  %i.ef = sdiv i64 %i.ed, %i.bp                   ; 3 uses
  %.not.us215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp eq i64 %i.ee, 0
  br i1 %.not.us215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.new
  %i.eg = icmp sgt i64 %i.ef, -1
  %i.eh = icmp slt i64 %i.ef, %i.k
  %or.cond = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ei = load ptr, ptr %i.bt, align 8, !tbaa !37
  %i.ej = add nsw i64 %.reass.us, %i.ef
  %i.ek = mul nsw i64 %factor.op.mul257.reass, %i.ej
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.ek
  %i.em = getelementptr [4 x i8], ptr %i.el, i64 %factor.op.mul226.reass.us.us.us.us.us277.us.us.us.us.us
  %i.en = getelementptr [4 x i8], ptr %i.em, i64 %i.ec
  %i.eo = getelementptr [4 x i8], ptr %i.en, i64 %.0158192.us212.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !43
  %i.eq = fadd float %.1161191.us213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.ep
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.new
  %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ %.1161191.us213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.new ], [ %.1161191.us213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.o ], [ %i.eq, %bb.p ] ; 3 uses
  %i.er = or disjoint i64 %.0158192.us212.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %.reass194.us214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = mul i64 %i.er, %factor.op.mul193
  %i.es = add i64 %i.eb, %.reass194.us214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 ; 2 uses
  %i.et = srem i64 %i.es, %i.bp
  %i.eu = sdiv i64 %i.es, %i.bp                   ; 3 uses
  %.not.us215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = icmp eq i64 %i.et, 0
  br i1 %.not.us215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ev = icmp sgt i64 %i.eu, -1
  %i.ew = icmp slt i64 %i.eu, %i.k
  %or.cond.1 = select i1 %i.ev, i1 %i.ew, i1 false
  br i1 %or.cond.1, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ex = load ptr, ptr %i.bt, align 8, !tbaa !37
  %i.ey = add nsw i64 %.reass.us, %i.eu
  %i.ez = mul nsw i64 %factor.op.mul257.reass, %i.ey
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.ez
  %i.fb = getelementptr [4 x i8], ptr %i.fa, i64 %factor.op.mul226.reass.us.us.us.us.us277.us.us.us.us.us
  %i.fc = getelementptr [4 x i8], ptr %i.fb, i64 %i.ec
  %i.fd = getelementptr [4 x i8], ptr %i.fc, i64 %i.er
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !43
  %i.ff = fadd float %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.fe
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = phi float [ %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.q ], [ %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.r ], [ %i.ff, %bb.s ] ; 3 uses
  %i.fg = add nuw nsw i64 %.0158192.us212.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 2 ; 2 uses
  %niter385.next.1 = add nuw nsw i64 %niter385, 2 ; 2 uses
  %niter385.ncmp.1 = icmp eq i64 %niter385.next.1, %unroll_iter384
  br i1 %niter385.ncmp.1, label %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, label %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.new, !llvm.loop !1044

._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa: ; preds = %bb.t
  br i1 %lcmp.mod381.not, label %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.0158192.us212.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi i64 [ 0, %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.fg, %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  %.1161191.us213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi float [ %.0160205.us.us223.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod383)
  %.reass194.us214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil = mul i64 %.0158192.us212.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %factor.op.mul193
  %i.fh = add i64 %i.eb, %.reass194.us214.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil ; 2 uses
  %i.fi = srem i64 %i.fh, %i.bp
  %i.fj = sdiv i64 %i.fh, %i.bp                   ; 3 uses
  %.not.us215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil = icmp eq i64 %i.fi, 0
  br i1 %.not.us215.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil, label %bb.u, label %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

bb.u:                                             ; preds = %.epil.preheader
  %i.fk = icmp sgt i64 %i.fj, -1
  %i.fl = icmp slt i64 %i.fj, %i.k
  %or.cond.epil = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %or.cond.epil, label %bb.v, label %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

bb.v:                                             ; preds = %bb.u
  %i.fm = load ptr, ptr %i.bt, align 8, !tbaa !37
  %i.fn = add nsw i64 %.reass.us, %i.fj
  %i.fo = mul nsw i64 %factor.op.mul257.reass, %i.fn
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fo
  %i.fq = getelementptr [4 x i8], ptr %i.fp, i64 %factor.op.mul226.reass.us.us.us.us.us277.us.us.us.us.us
  %i.fr = getelementptr [4 x i8], ptr %i.fq, i64 %i.ec
  %i.fs = getelementptr [4 x i8], ptr %i.fr, i64 %.0158192.us212.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !43
  %i.fu = fadd float %.1161191.us213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %i.ft
  br label %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us

._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.epil.preheader, %bb.u, %bb.v, %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa
  %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa = phi float [ %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ], [ %.1161191.us213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %.epil.preheader ], [ %.1161191.us213.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %bb.u ], [ %i.fu, %bb.v ] ; 2 uses
  %i.fv = add nuw nsw i64 %.0159206.us.us222.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond316.not = icmp eq i64 %i.fv, %i.bc
  br i1 %exitcond316.not, label %._crit_edge207.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.preheader.us.us221.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !1045

._crit_edge207.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.split.us217.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.fw = getelementptr [4 x i8], ptr %i.ea, i64 %.0162227.us.us.us239.us.us.us.us.us.us.us.us.us.us.us.us.us
  store float %.3.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa, ptr %i.fw, align 4, !tbaa !43
  %i.fx = add nuw nsw i64 %.0162227.us.us.us239.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond317.not = icmp eq i64 %i.fx, %i.s
  br i1 %exitcond317.not, label %._crit_edge.split.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.preheader184.us.us.us238.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !1046

._crit_edge.split.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge207.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.fy = add nuw nsw i64 %.0163241.us.us.us256.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond318.not = icmp eq i64 %i.fy, %i.bb
  br i1 %exitcond318.not, label %._crit_edge242.split254.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us, label %.preheader185.us.us.us255.us.us.us.us.us.us.us.us.us.us, !llvm.loop !1047

._crit_edge242.split254.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.fz = add nsw i64 %.0164258.us.us.us.us.us276.us.us.us.us.us, %i.bw ; 2 uses
  %i.ga = icmp slt i64 %i.fz, %i.ba
  br i1 %i.ga, label %.preheader186.us.us.us.us.us275.us.us.us.us.us, label %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us.us.us.us.us.us, !llvm.loop !1048

._crit_edge.split274.us.split.us.split.us.split.us.split.split.us.us.us.us.us.us: ; preds = %._crit_edge242.split254.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us
  %i.gb = add nuw nsw i64 %.0166279.us.us.us.us.us304, 1 ; 2 uses
  %exitcond319.not = icmp eq i64 %i.gb, %i.az
  br i1 %exitcond319.not, label %._crit_edge281.split, label %.preheader186.lr.ph.us.us.us.us.us303, !llvm.loop !1049

.preheader186.lr.ph.us.us.us.us:                  ; preds = %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.3, %.preheader186.lr.ph.us.us.us.us.preheader.new
  %.0166279.us.us.us.us = phi i64 [ 0, %.preheader186.lr.ph.us.us.us.us.preheader.new ], [ %i.hd, %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.3 ] ; 5 uses
  %niter378 = phi i64 [ 0, %.preheader186.lr.ph.us.us.us.us.preheader.new ], [ %niter378.next.3, %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.3 ]
  %i.gc = mul nsw i64 %.0166279.us.us.us.us, %i.bu
  %i.gd = getelementptr i8, ptr %i.bi, i64 %i.gc
  br label %.preheader186.us.us.us.us.us296.us.us.us

.preheader186.us.us.us.us.us296.us.us.us:         ; preds = %.preheader186.us.us.us.us.us296.us.us.us, %.preheader186.lr.ph.us.us.us.us
  %.0164258.us.us.us.us.us297.us.us.us = phi i64 [ %2, %.preheader186.lr.ph.us.us.us.us ], [ %i.gg, %.preheader186.us.us.us.us.us296.us.us.us ] ; 2 uses
  %i.ge = mul i64 %.0164258.us.us.us.us.us297.us.us.us, %i.bv
  %i.gf = getelementptr i8, ptr %i.gd, i64 %i.ge
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gf, i8 0, i64 %i.dt, i1 false), !tbaa !43
  %i.gg = add nsw i64 %.0164258.us.us.us.us.us297.us.us.us, %i.bw ; 2 uses
  %i.gh = icmp slt i64 %i.gg, %i.ba
  br i1 %i.gh, label %.preheader186.us.us.us.us.us296.us.us.us, label %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us, !llvm.loop !1048

._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us: ; preds = %.preheader186.us.us.us.us.us296.us.us.us
  %i.gi = or disjoint i64 %.0166279.us.us.us.us, 1
  %i.gj = mul nsw i64 %i.gi, %i.bu
  %i.gk = getelementptr i8, ptr %i.bi, i64 %i.gj
  br label %.preheader186.us.us.us.us.us296.us.us.us.1

.preheader186.us.us.us.us.us296.us.us.us.1:       ; preds = %.preheader186.us.us.us.us.us296.us.us.us.1, %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us
  %.0164258.us.us.us.us.us297.us.us.us.1 = phi i64 [ %2, %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us ], [ %i.gn, %.preheader186.us.us.us.us.us296.us.us.us.1 ] ; 2 uses
  %i.gl = mul i64 %.0164258.us.us.us.us.us297.us.us.us.1, %i.bv
  %i.gm = getelementptr i8, ptr %i.gk, i64 %i.gl
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gm, i8 0, i64 %i.dt, i1 false), !tbaa !43
  %i.gn = add nsw i64 %.0164258.us.us.us.us.us297.us.us.us.1, %i.bw ; 2 uses
  %i.go = icmp slt i64 %i.gn, %i.ba
  br i1 %i.go, label %.preheader186.us.us.us.us.us296.us.us.us.1, label %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.1, !llvm.loop !1048

._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.1: ; preds = %.preheader186.us.us.us.us.us296.us.us.us.1
  %i.gp = or disjoint i64 %.0166279.us.us.us.us, 2
  %i.gq = mul nsw i64 %i.gp, %i.bu
  %i.gr = getelementptr i8, ptr %i.bi, i64 %i.gq
  br label %.preheader186.us.us.us.us.us296.us.us.us.2

.preheader186.us.us.us.us.us296.us.us.us.2:       ; preds = %.preheader186.us.us.us.us.us296.us.us.us.2, %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.1
  %.0164258.us.us.us.us.us297.us.us.us.2 = phi i64 [ %2, %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.1 ], [ %i.gu, %.preheader186.us.us.us.us.us296.us.us.us.2 ] ; 2 uses
  %i.gs = mul i64 %.0164258.us.us.us.us.us297.us.us.us.2, %i.bv
  %i.gt = getelementptr i8, ptr %i.gr, i64 %i.gs
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gt, i8 0, i64 %i.dt, i1 false), !tbaa !43
  %i.gu = add nsw i64 %.0164258.us.us.us.us.us297.us.us.us.2, %i.bw ; 2 uses
  %i.gv = icmp slt i64 %i.gu, %i.ba
  br i1 %i.gv, label %.preheader186.us.us.us.us.us296.us.us.us.2, label %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.2, !llvm.loop !1048

._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.2: ; preds = %.preheader186.us.us.us.us.us296.us.us.us.2
  %i.gw = or disjoint i64 %.0166279.us.us.us.us, 3
  %i.gx = mul nsw i64 %i.gw, %i.bu
  %i.gy = getelementptr i8, ptr %i.bi, i64 %i.gx
  br label %.preheader186.us.us.us.us.us296.us.us.us.3

.preheader186.us.us.us.us.us296.us.us.us.3:       ; preds = %.preheader186.us.us.us.us.us296.us.us.us.3, %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.2
  %.0164258.us.us.us.us.us297.us.us.us.3 = phi i64 [ %2, %._crit_edge.split274.us.split.us.split.us.split.us.split.split.us298.us.us.us.2 ], [ %i.hb, %.preheader186.us.us.us.us.us296.us.us.us.3 ] ; 2 uses
  %i.gz = mul i64 %.0164258.us.us.us.us.us297.us.us.us.3, %i.bv
end_hunk_1
