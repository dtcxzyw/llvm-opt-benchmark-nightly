Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 269
begin_hunk_0_@ggml_compute_forward_conv_transpose_1d:bb.a
  %.0155174.i38.prol = phi i64 [ %i.nm, %vec.epilog.scalar.ph119.prol ], [ %.0155174.i38.ph, %vec.epilog.scalar.ph119.preheader ] ; 3 uses
  %prol.iter187 = phi i64 [ %prol.iter187.next, %vec.epilog.scalar.ph119.prol ], [ 0, %vec.epilog.scalar.ph119.preheader ]
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %.0155174.i38.prol
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !43
  %i.nl = mul nuw nsw i64 %.0155174.i38.prol, %i.ih
  %gep173.i39.prol = getelementptr [4 x i8], ptr %invariant.gep.i37, i64 %i.nl
  store float %i.nk, ptr %gep173.i39.prol, align 4, !tbaa !43
  %i.nm = add nuw nsw i64 %.0155174.i38.prol, 1   ; 2 uses
  %prol.iter187.next = add i64 %prol.iter187, 1   ; 2 uses
  %prol.iter187.cmp.not = icmp eq i64 %prol.iter187.next, %xtraiter185
  br i1 %prol.iter187.cmp.not, label %vec.epilog.scalar.ph119.prol.loopexit, label %vec.epilog.scalar.ph119.prol, !llvm.loop !995

vec.epilog.scalar.ph119.prol.loopexit:            ; preds = %vec.epilog.scalar.ph119.prol, %vec.epilog.scalar.ph119.preheader
  %.0155174.i38.unr = phi i64 [ %.0155174.i38.ph, %vec.epilog.scalar.ph119.preheader ], [ %i.nm, %vec.epilog.scalar.ph119.prol ]
  %i.nn = sub nsw i64 %.0155174.i38.ph, %i.if
  %i.no = icmp ugt i64 %i.nn, -8
  br i1 %i.no, label %._crit_edge177.i41, label %vec.epilog.scalar.ph119

._crit_edge177.i41:                               ; preds = %vec.epilog.scalar.ph119.prol.loopexit, %vec.epilog.scalar.ph119, %vec.epilog.middle.block128, %middle.block115
  %i.np = add nuw nsw i64 %.0156178.i36, 1        ; 2 uses
  %exitcond199.not.i42 = icmp eq i64 %i.np, %i.ih
  br i1 %exitcond199.not.i42, label %._crit_edge181.split.i33, label %iter.check118, !llvm.loop !996

vec.epilog.scalar.ph119:                          ; preds = %vec.epilog.scalar.ph119.prol.loopexit, %vec.epilog.scalar.ph119
  %.0155174.i38 = phi i64 [ %i.ov, %vec.epilog.scalar.ph119 ], [ %.0155174.i38.unr, %vec.epilog.scalar.ph119.prol.loopexit ] ; 10 uses
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %.0155174.i38
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !43
  %i.ns = mul nuw nsw i64 %.0155174.i38, %i.ih
  %gep173.i39 = getelementptr [4 x i8], ptr %invariant.gep.i37, i64 %i.ns
  store float %i.nr, ptr %gep173.i39, align 4, !tbaa !43
  %i.nt = add nuw nsw i64 %.0155174.i38, 1        ; 2 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.nt
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !43
  %i.nw = mul nuw nsw i64 %i.nt, %i.ih
  %gep173.i39.1 = getelementptr [4 x i8], ptr %invariant.gep.i37, i64 %i.nw
  store float %i.nv, ptr %gep173.i39.1, align 4, !tbaa !43
  %i.nx = add nuw nsw i64 %.0155174.i38, 2        ; 2 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.nx
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !43
  %i.oa = mul nuw nsw i64 %i.nx, %i.ih
  %gep173.i39.2 = getelementptr [4 x i8], ptr %invariant.gep.i37, i64 %i.oa
  store float %i.nz, ptr %gep173.i39.2, align 4, !tbaa !43
  %i.ob = add nuw nsw i64 %.0155174.i38, 3        ; 2 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.ob
  %i.od = load float, ptr %i.oc, align 4, !tbaa !43
  %i.oe = mul nuw nsw i64 %i.ob, %i.ih
  %gep173.i39.3 = getelementptr [4 x i8], ptr %invariant.gep.i37, i64 %i.oe
  store float %i.od, ptr %gep173.i39.3, align 4, !tbaa !43
  %i.of = add nuw nsw i64 %.0155174.i38, 4        ; 2 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.of
  %i.oh = load float, ptr %i.og, align 4, !tbaa !43
  %i.oi = mul nuw nsw i64 %i.of, %i.ih
  %gep173.i39.4 = getelementptr [4 x i8], ptr %invariant.gep.i37, i64 %i.oi
  store float %i.oh, ptr %gep173.i39.4, align 4, !tbaa !43
  %i.oj = add nuw nsw i64 %.0155174.i38, 5        ; 2 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.oj
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !43
  %i.om = mul nuw nsw i64 %i.oj, %i.ih
  %gep173.i39.5 = getelementptr [4 x i8], ptr %invariant.gep.i37, i64 %i.om
  store float %i.ol, ptr %gep173.i39.5, align 4, !tbaa !43
  %i.on = add nuw nsw i64 %.0155174.i38, 6        ; 2 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.on
  %i.op = load float, ptr %i.oo, align 4, !tbaa !43
  %i.oq = mul nuw nsw i64 %i.on, %i.ih
  %gep173.i39.6 = getelementptr [4 x i8], ptr %invariant.gep.i37, i64 %i.oq
  store float %i.op, ptr %gep173.i39.6, align 4, !tbaa !43
  %i.or = add nuw nsw i64 %.0155174.i38, 7        ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %i.or
  %i.ot = load float, ptr %i.os, align 4, !tbaa !43
  %i.ou = mul nuw nsw i64 %i.or, %i.ih
  %gep173.i39.7 = getelementptr [4 x i8], ptr %invariant.gep.i37, i64 %i.ou
  store float %i.ot, ptr %gep173.i39.7, align 4, !tbaa !43
  %i.ov = add nuw nsw i64 %.0155174.i38, 8        ; 2 uses
  %exitcond198.not.i40.7 = icmp eq i64 %i.ov, %i.if
  br i1 %exitcond198.not.i40.7, label %._crit_edge177.i41, label %vec.epilog.scalar.ph119, !llvm.loop !997

bb.x:                                             ; preds = %._crit_edge181.split.i33, %._crit_edge210.i6
  %.pre-phi212.i9 = phi i64 [ %.pre211.i8, %._crit_edge210.i6 ], [ %i.jx, %._crit_edge181.split.i33 ]
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
  %i.pj = getelementptr inbounds i8, ptr %i.pi, i64 %.pre-phi212.i9
  %i.pk = icmp slt i32 %i.pe, %i.pg
  br i1 %i.pk, label %.lr.ph192.i10, label %_ZL46ggml_compute_forward_conv_transpose_1d_f16_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph192.i10:                                    ; preds = %bb.x
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.pm = icmp slt i64 %i.if, 1
  %i.pn = icmp slt i64 %i.ht, 1
  %i.po = trunc i64 %i.hx to i32
  %brmerge.i11 = select i1 %i.pm, i1 true, i1 %i.pn
  br i1 %brmerge.i11, label %_ZL46ggml_compute_forward_conv_transpose_1d_f16_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph188.preheader.i12

.lr.ph188.preheader.i12:                          ; preds = %.lr.ph192.i10
  %i.pp = sext i32 %i.oz to i64
  %i.pq = sext i32 %i.pe to i64
  %wide.trip.count.i13 = sext i32 %i.pg to i64
  %i.pr = shl i64 %i.ih, 32
  br label %.lr.ph188.i14

.lr.ph188.i14:                                    ; preds = %._crit_edge189.i27, %.lr.ph188.preheader.i12
  %indvars.iv206.i15 = phi i64 [ %i.pq, %.lr.ph188.preheader.i12 ], [ %indvars.iv.next207.i28, %._crit_edge189.i27 ] ; 3 uses
  %i.ps = load ptr, ptr %i.pl, align 8, !tbaa !37
  %i.pt = mul i64 %indvars.iv206.i15, %i.in
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.pt
  %i.pv = mul i64 %indvars.iv206.i15, %i.ir
  %i.pw = getelementptr inbounds [4 x i8], ptr %i.pi, i64 %i.pv
  br label %.lr.ph184.i16

._crit_edge189.i27:                               ; preds = %._crit_edge185.i24
  %indvars.iv.next207.i28 = add nsw i64 %indvars.iv206.i15, 1 ; 2 uses
  %exitcond209.not.i29 = icmp eq i64 %indvars.iv.next207.i28, %wide.trip.count.i13
  br i1 %exitcond209.not.i29, label %_ZL46ggml_compute_forward_conv_transpose_1d_f16_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph188.i14, !llvm.loop !998

.lr.ph184.i16:                                    ; preds = %._crit_edge185.i24, %.lr.ph188.i14
  %indvars.iv202.i17 = phi i64 [ 0, %.lr.ph188.i14 ], [ %indvars.iv.next203.i25, %._crit_edge185.i24 ] ; 3 uses
  %sext223.i18 = mul i64 %i.pr, %indvars.iv202.i17
  %i.px = ashr exact i64 %sext223.i18, 30
  %i.py = getelementptr inbounds i8, ptr %i.pj, i64 %i.px
  %i.pz = mul nsw i64 %indvars.iv202.i17, %i.pp
  %invariant.gep224.i19 = getelementptr [4 x i8], ptr %i.pu, i64 %i.pz
  br label %bb.y

._crit_edge185.i24:                               ; preds = %bb.y
  %indvars.iv.next203.i25 = add nuw nsw i64 %indvars.iv202.i17, 1 ; 2 uses
  %exitcond205.not.i26 = icmp eq i64 %indvars.iv.next203.i25, %i.if
  br i1 %exitcond205.not.i26, label %._crit_edge189.i27, label %.lr.ph184.i16, !llvm.loop !999

bb.y:                                             ; preds = %bb.y, %.lr.ph184.i16
  %indvars.iv.i20 = phi i64 [ 0, %.lr.ph184.i16 ], [ %indvars.iv.next.i22, %bb.y ] ; 3 uses
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
  %exitcond201.not.i23 = icmp eq i64 %indvars.iv.next.i22, %i.ht
  br i1 %exitcond201.not.i23, label %._crit_edge185.i24, label %bb.y, !llvm.loop !1000

bb.z:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6481, ptr noundef nonnull @.str.2) #17
  unreachable

_ZL46ggml_compute_forward_conv_transpose_1d_f16_f32PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge189.i27, %._crit_edge189.i, %.lr.ph192.i10, %bb.x, %.lr.ph192.i, %bb.l
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
  %i.az = select i1 %i.au, i64 %i.r, i64 %i.p     ; 10 uses
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
  br i1 %i.bj, label %.preheader200.lr.ph.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit

.preheader200.lr.ph.i:                            ; preds = %bb.g
  %factor.op.mul288.i = mul i64 %i.bb, %i.k       ; 4 uses
  %factor.op.mul262.reass.i = mul i64 %factor.op.mul288.i, %i.az
  %i.bk = icmp slt i64 %i.bc, 1
  %i.bl = icmp slt i64 %i.ad, 1
  %i.bm = sext i32 %i.av to i64                   ; 7 uses
  %i.bn = icmp sle i64 %i.az, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 248 ; 2 uses
  %i.bp = shl i64 %i.bd, 32
  %i.bq = ashr exact i64 %i.bp, 32
  %i.br = shl i64 %i.be, 32
  %i.bs = ashr exact i64 %i.br, 32                ; 2 uses
  %i.bt = sext i32 %i.ah to i64                   ; 3 uses
  %i.bu = sext i32 %i.ap to i64                   ; 6 uses
  %i.bv = sext i32 %i.al to i64                   ; 3 uses
  %i.bw = sext i32 %i.aj to i64                   ; 3 uses
  %i.bx = sext i32 %i.ar to i64                   ; 6 uses
  %i.by = sext i32 %i.an to i64                   ; 5 uses
  %i.bz = sext i32 %i.ax to i64                   ; 4 uses
  %brmerge.i = select i1 %i.bk, i1 true, i1 %i.bl
  %brmerge327.i = select i1 %brmerge.i, i1 true, i1 %i.bn
  br i1 %brmerge327.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader200.lr.ph.split.split.split.i

.preheader200.lr.ph.split.split.split.i:          ; preds = %.preheader200.lr.ph.i
  %i.ca = icmp slt i64 %i.k, 1
  %i.cb = icmp slt i64 %i.bb, 1
  %i.cc = load i32, ptr %i.e, align 8, !tbaa !30
  %brmerge377.i = select i1 %i.cb, i1 true, i1 %i.ca
  br i1 %brmerge377.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader200.us.us.preheader.i

.preheader200.us.us.preheader.i:                  ; preds = %.preheader200.lr.ph.split.split.split.i
  %2 = mul i64 %i.bb, %i.az                       ; 2 uses
  %3 = mul i64 %2, %i.k
  %i.cd = shl nuw i64 %i.k, 1                     ; 4 uses
  %4 = mul i64 %i.ad, %i.k
  %i.ce = mul i64 %4, %i.bc
  %5 = mul i64 %i.ce, %2
  %6 = mul i64 %i.bb, %i.k
  %i.cf = mul i64 %6, %i.bm
  %7 = shl i64 %i.cf, 1
  %i.cg = mul i64 %i.bb, %i.az
  %i.ch = mul i64 %i.cg, %i.bc
  %i.ci = mul i64 %i.ch, %i.k
  %i.cj = mul i64 %i.ci, %i.ad
  %i.ck = shl i64 %i.cj, 1
  %i.cl = mul i64 %i.bb, %i.az
  %i.cm = mul i64 %i.cl, %i.k
  %i.cn = mul i64 %i.cm, %i.ad
  %i.co = shl i64 %i.cn, 1
  %i.cp = mul i64 %i.bb, %i.az
  %i.cq = mul i64 %i.cp, %i.k
  %i.cr = shl i64 %i.cq, 1
  %i.cs = mul i64 %i.bb, %i.k                     ; 2 uses
  %i.ct = mul i64 %i.cs, %i.bz
  %8 = shl i64 %i.ct, 1
  %i.cu = shl nsw i64 %i.bm, 1
  %9 = add nsw i64 %i.cu, 2
  %10 = mul i64 %i.cs, %9
  %i.cv = shl nuw i64 %i.k, 1                     ; 2 uses
  %i.cw = mul i64 %i.n, %i.by
  %i.cx = mul i64 %i.cw, -2
  %i.cy = shl nsw i64 %i.bv, 1                    ; 2 uses
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = mul i64 %i.n, %i.bw
  %i.db = shl i64 %i.da, 1
  %i.dc = shl nsw i64 %i.bt, 1
  %i.dd = add nuw i64 %i.bb, 9223372036854775807
  %i.de = mul i64 %i.dd, %i.bx
  %i.df = sub i64 %i.de, %i.by
  %i.dg = shl i64 %i.df, 1
  %i.dh = mul i64 %i.n, %i.dg
  %i.di = add i64 %i.dh, %i.cv
  %i.dj = sub i64 %i.di, %i.cy
  %i.dk = mul i64 %i.n, %i.bx
  %i.dl = mul i64 %i.bb, %i.k
  %11 = mul i64 %i.dl, %i.bm
  %12 = shl i64 %11, 1
  %i.dm = mul i64 %i.bb, %i.az
  %i.dn = mul i64 %i.dm, %i.bc
  %i.do = mul i64 %i.dn, %i.k
  %i.dp = mul i64 %i.do, %i.ad
  %i.dq = shl i64 %i.dp, 1
  %i.dr = mul i64 %i.bb, %i.az
  %i.ds = mul i64 %i.dr, %i.k
  %i.dt = mul i64 %i.ds, %i.ad
  %i.du = shl i64 %i.dt, 1
  %i.dv = mul i64 %i.bb, %i.az
  %i.dw = mul i64 %i.dv, %i.k
  %i.dx = shl i64 %i.dw, 1
  %i.dy = mul i64 %i.bb, %i.k                     ; 2 uses
  %i.dz = mul i64 %i.dy, %i.bz
  %13 = shl i64 %i.dz, 1
  %i.ea = shl nsw i64 %i.bm, 1
  %14 = add nsw i64 %i.ea, 2
  %15 = mul i64 %i.dy, %14
  %i.eb = mul i64 %i.n, %i.by
  %i.ec = mul i64 %i.eb, -4
  %i.ed = shl nsw i64 %i.bv, 2                    ; 2 uses
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = mul i64 %i.n, %i.bw
  %i.eg = shl i64 %i.ef, 2
  %i.eh = shl nsw i64 %i.bt, 2
  %i.ei = add nuw i64 %i.bb, 4611686018427387903
  %i.ej = mul i64 %i.ei, %i.bx
  %i.ek = sub i64 %i.ej, %i.by
  %i.el = shl i64 %i.ek, 2
  %i.em = mul i64 %i.n, %i.el
  %i.en = shl i64 %i.k, 2
  %i.eo = add i64 %i.em, %i.en
  %i.ep = sub i64 %i.eo, %i.ed
  %i.eq = mul i64 %i.n, %i.bx
  %16 = getelementptr i8, ptr %i.bi, i64 %12
  %17 = getelementptr i8, ptr %i.bi, i64 %15
  %i.er = getelementptr i8, ptr %i.bi, i64 %7
  %i.es = getelementptr i8, ptr %i.bi, i64 %10
  %min.iters.check160 = icmp ugt i64 %i.k, 7
  %ident.check149.not = icmp eq i32 %i.ap, 1
  %or.cond = select i1 %min.iters.check160, i1 %ident.check149.not, i1 false
  %stride.check158 = icmp ugt i64 %i.k, 4611686018427387903
  %.mask178 = and i64 %i.eq, 2305843009213693952
  %stride.check159 = icmp ne i64 %.mask178, 0
  %invariant.op195 = or i1 %stride.check158, %stride.check159
  %n.vec162 = and i64 %i.k, 4611686018427387896   ; 3 uses
  %broadcast.splatinsert165 = insertelement <8 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat166 = shufflevector <8 x i64> %broadcast.splatinsert165, <8 x i64> poison, <8 x i32> zeroinitializer
  %cmp.n175 = icmp eq i64 %i.k, %n.vec162
  %min.iters.check106 = icmp ugt i64 %i.k, 3
  %ident.check95.not = icmp eq i32 %i.ap, 1
  %or.cond180 = select i1 %min.iters.check106, i1 %ident.check95.not, i1 false
  %stride.check104 = icmp slt i64 %i.cv, 0
  %.mask179 = and i64 %i.dk, 4611686018427387904
  %stride.check105 = icmp ne i64 %.mask179, 0
  %invariant.op197 = or i1 %stride.check104, %stride.check105
  %min.iters.check108 = icmp ult i64 %i.k, 16
  %i.et = and i64 %i.k, 12
  %n.vec110 = and i64 %i.k, 9223372036854775792   ; 4 uses
  %broadcast.splatinsert113 = insertelement <16 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat114 = shufflevector <16 x i64> %broadcast.splatinsert113, <16 x i64> poison, <16 x i32> zeroinitializer
  %cmp.n123 = icmp eq i64 %i.k, %n.vec110
  %min.epilog.iters.check128 = icmp eq i64 %i.et, 0
  %n.vec130 = and i64 %i.k, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert133 = insertelement <4 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat134 = shufflevector <4 x i64> %broadcast.splatinsert133, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n146 = icmp eq i64 %i.k, %n.vec130
  %xtraiter185 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod186.not = icmp eq i64 %xtraiter185, 0
  br label %.preheader200.us.us.i

.preheader200.us.us.i:                            ; preds = %._crit_edge264.split274.us.split.us.us.us.i, %.preheader200.us.us.preheader.i
  %.0178289.us.us.i = phi i64 [ %i.lv, %._crit_edge264.split274.us.split.us.us.us.i ], [ 0, %.preheader200.us.us.preheader.i ] ; 6 uses
  %18 = mul i64 %i.dq, %.0178289.us.us.i          ; 2 uses
  %i.eu = mul i64 %i.ck, %.0178289.us.us.i        ; 2 uses
  %i.ev = mul i64 %5, %.0178289.us.us.i
  %i.ew = mul nuw nsw i64 %.0178289.us.us.i, %i.bc
  %i.ex = mul nsw i64 %.0178289.us.us.i, %i.bq    ; 2 uses
  %19 = getelementptr i8, ptr %16, i64 %18
  %20 = getelementptr i8, ptr %17, i64 %18
  %i.ey = getelementptr i8, ptr %i.er, i64 %i.eu
  %i.ez = getelementptr i8, ptr %i.es, i64 %i.eu
  br label %.preheader199.us.us.us.us.i

.preheader199.us.us.us.us.i:                      ; preds = %._crit_edge.split247.us.split.us.us.us.us.us.i, %.preheader200.us.us.i
  %.0177263.us.us.us.us.i = phi i64 [ 0, %.preheader200.us.us.i ], [ %i.lu, %._crit_edge.split247.us.split.us.us.us.us.us.i ] ; 8 uses
  %21 = mul i64 %i.du, %.0177263.us.us.us.us.i    ; 2 uses
  %i.fa = mul i64 %i.eg, %.0177263.us.us.us.us.i  ; 2 uses
  %i.fb = mul i64 %i.co, %.0177263.us.us.us.us.i  ; 2 uses
  %i.fc = mul i64 %i.db, %.0177263.us.us.us.us.i  ; 2 uses
  %i.fd = mul i64 %.0177263.us.us.us.us.i, %i.ad
  %i.fe = add nuw i64 %.0177263.us.us.us.us.i, %i.ew
  %i.ff = mul i64 %i.fe, %i.ad
  %i.fg = mul nsw i64 %.0177263.us.us.us.us.i, %i.bw
  %i.fh = sub i64 %i.fg, %i.by                    ; 2 uses
  %22 = getelementptr i8, ptr %19, i64 %21
  %23 = getelementptr i8, ptr %20, i64 %21
  %i.fi = getelementptr i8, ptr %i.ey, i64 %i.fb
  %i.fj = getelementptr i8, ptr %i.ez, i64 %i.fb
  br label %.lr.ph.us.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.us.i:                       ; preds = %._crit_edge221.split.us.us.split.us.us.us.us.us.us.i, %.preheader199.us.us.us.us.i
  %.0176244.us.us.us.us.us.us.i = phi i64 [ 0, %.preheader199.us.us.us.us.i ], [ %i.lt, %._crit_edge221.split.us.us.split.us.us.us.us.us.us.i ] ; 8 uses
  %i.fk = mul i64 %i.dx, %.0176244.us.us.us.us.us.us.i ; 2 uses
  %i.fl = mul i64 %i.eh, %.0176244.us.us.us.us.us.us.i ; 2 uses
  %i.fm = mul i64 %i.cr, %.0176244.us.us.us.us.us.us.i ; 2 uses
  %i.fn = mul i64 %i.dc, %.0176244.us.us.us.us.us.us.i ; 2 uses
  %i.fo = add nsw i64 %.0176244.us.us.us.us.us.us.i, %i.ff
  %i.fp = mul nsw i64 %factor.op.mul262.reass.i, %i.fo
  %i.fq = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.fp ; 2 uses
  %i.fr = mul nsw i64 %.0176244.us.us.us.us.us.us.i, %i.bt
  %i.fs = sub i64 %i.fr, %i.bv                    ; 9 uses
  %reass.add18 = add i64 %.0176244.us.us.us.us.us.us.i, %i.fd
  %reass.mul19 = mul i64 %3, %reass.add18
  %reass.add16 = add i64 %reass.mul19, %i.ev
  %24 = getelementptr i8, ptr %22, i64 %i.fk
  %25 = getelementptr i8, ptr %23, i64 %i.fk
  %i.ft = getelementptr i8, ptr %i.fi, i64 %i.fm
  %i.fu = getelementptr i8, ptr %i.fj, i64 %i.fm
  %broadcast.splatinsert163 = insertelement <8 x i64> poison, i64 %i.fs, i64 0
  %broadcast.splat164 = shufflevector <8 x i64> %broadcast.splatinsert163, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert111 = insertelement <16 x i64> poison, i64 %i.fs, i64 0
  %broadcast.splat112 = shufflevector <16 x i64> %broadcast.splatinsert111, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert131 = insertelement <4 x i64> poison, i64 %i.fs, i64 0
  %broadcast.splat132 = shufflevector <4 x i64> %broadcast.splatinsert131, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge211.us.us.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.us.i
  %indvar.i = phi i64 [ %indvar.next.i, %._crit_edge211.us.us.us.us.us.us.us.us.i ], [ 0, %.lr.ph.us.us.us.us.us.us.i ] ; 4 uses
  %.0175219.us.us.us.us.us.us.us.us.i = phi i64 [ %i.lr, %._crit_edge211.us.us.us.us.us.us.us.us.i ], [ %i.bm, %.lr.ph.us.us.us.us.us.us.i ] ; 5 uses
  %i.fv = mul i64 %13, %indvar.i                  ; 2 uses
  %scevgep151 = getelementptr i8, ptr %24, i64 %i.fv
  %scevgep152 = getelementptr i8, ptr %25, i64 %i.fv
  %i.fw = mul i64 %8, %indvar.i                   ; 2 uses
  %scevgep97 = getelementptr i8, ptr %i.ft, i64 %i.fw
  %scevgep98 = getelementptr i8, ptr %i.fu, i64 %i.fw
  %26 = mul i64 %indvar.i, %i.bz
  %reass.add20 = add i64 %26, %i.bm
  %reass.mul21 = mul i64 %reass.add20, %factor.op.mul288.i
  %reass.add17 = add i64 %reass.add16, %reass.mul21
  %reass.mul = shl i64 %reass.add17, 1            ; 2 uses
  switch i32 %i.cc, label %.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i [
    i32 0, label %.preheader.lr.ph.us.us.us.us.us.us.us.us.i
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.fx = load ptr, ptr %i.bo, align 8, !tbaa !37
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 %i.ex
  %i.fz = mul nsw i64 %.0175219.us.us.us.us.us.us.us.us.i, %i.bs
  %i.ga = getelementptr inbounds i8, ptr %i.fy, i64 %i.fz
  br label %.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i

.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i: ; preds = %bb.i, %bb.h
  %.ph.i = phi ptr [ null, %bb.h ], [ %i.ga, %bb.i ]
  %factor.op.mul.reass.us.us.us.us.us.us.us.us369.i = mul i64 %.0175219.us.us.us.us.us.us.us.us.i, %factor.op.mul288.i
  br label %.preheader.us.us.us.us.us.us.us.us.us.preheader.i

.preheader.lr.ph.us.us.us.us.us.us.us.us.i:       ; preds = %bb.h
  %i.gb = load ptr, ptr %i.bo, align 8, !tbaa !37
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 %i.ex
  %i.gd = mul nsw i64 %.0175219.us.us.us.us.us.us.us.us.i, %i.bs
  %i.ge = getelementptr inbounds i8, ptr %i.gc, i64 %i.gd
  %i.gf = freeze ptr %i.ge                        ; 4 uses
  %factor.op.mul.reass.us.us.us.us.us.us.us.us.i = mul i64 %.0175219.us.us.us.us.us.us.us.us.i, %factor.op.mul288.i ; 2 uses
  %.not192.us.us.us.us.us.us.us.us.i = icmp eq ptr %i.gf, null
  %i.gg = getelementptr [2 x i8], ptr %i.fq, i64 %factor.op.mul.reass.us.us.us.us.us.us.us.us.i
  br i1 %.not192.us.us.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.us.us.us.preheader.i, label %.preheader.us224.us.us.us.us.us.us.us.preheader.i

.preheader.us224.us.us.us.us.us.us.us.preheader.i: ; preds = %.preheader.lr.ph.us.us.us.us.us.us.us.us.i
  %27 = getelementptr i8, ptr %i.bi, i64 %reass.mul
  %i.gh = getelementptr i8, ptr %i.gf, i64 %i.ee
  %i.gi = getelementptr i8, ptr %i.gh, i64 %i.fa
  %scevgep153 = getelementptr i8, ptr %i.gi, i64 %i.fl
  %i.gj = getelementptr i8, ptr %i.gf, i64 %i.ep
  %i.gk = getelementptr i8, ptr %i.gj, i64 %i.fa
  %scevgep154 = getelementptr i8, ptr %i.gk, i64 %i.fl
  %bound0155 = icmp ult ptr %scevgep151, %scevgep154
  %bound1156 = icmp ult ptr %scevgep153, %scevgep152
  %found.conflict157 = and i1 %bound0155, %bound1156
  %.reass196 = or i1 %found.conflict157, %invariant.op195
  br label %.preheader.us224.us.us.us.us.us.us.us.i

.preheader.us.us.us.us.us.us.us.us.us.preheader.i: ; preds = %.preheader.lr.ph.us.us.us.us.us.us.us.us.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i
  %i.gl = phi i64 [ %factor.op.mul.reass.us.us.us.us.us.us.us.us369.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i ], [ %factor.op.mul.reass.us.us.us.us.us.us.us.us.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.i ]
  %i.gm = phi ptr [ %.ph.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i ], [ null, %.preheader.lr.ph.us.us.us.us.us.us.us.us.i ] ; 3 uses
  %28 = getelementptr i8, ptr %i.bi, i64 %reass.mul
  %i.gn = getelementptr [2 x i8], ptr %i.fq, i64 %i.gl
  %i.go = getelementptr i8, ptr %i.gm, i64 %i.cz
  %i.gp = getelementptr i8, ptr %i.go, i64 %i.fc
  %scevgep99 = getelementptr i8, ptr %i.gp, i64 %i.fn
  %i.gq = getelementptr i8, ptr %i.gm, i64 %i.dj
  %i.gr = getelementptr i8, ptr %i.gq, i64 %i.fc
  %scevgep100 = getelementptr i8, ptr %i.gr, i64 %i.fn
  %bound0101 = icmp ult ptr %scevgep97, %scevgep100
  %bound1102 = icmp ult ptr %scevgep99, %scevgep98
  %found.conflict103 = and i1 %bound0101, %bound1102
  %.reass198 = or i1 %found.conflict103, %invariant.op197
  br label %.preheader.us.us.us.us.us.us.us.us.us.i

.preheader.us224.us.us.us.us.us.us.us.i:          ; preds = %._crit_edge.us237.us.us.us.us.us.us.us.i, %.preheader.us224.us.us.us.us.us.us.us.preheader.i
  %.0174210.us225.us.us.us.us.us.us.us.i = phi i64 [ %i.jg, %._crit_edge.us237.us.us.us.us.us.us.us.i ], [ 0, %.preheader.us224.us.us.us.us.us.us.us.preheader.i ] ; 4 uses
  %29 = mul i64 %.0174210.us225.us.us.us.us.us.us.us.i, %i.cd
  %scevgep339.i = getelementptr i8, ptr %27, i64 %29
  %i.gs = mul nsw i64 %.0174210.us225.us.us.us.us.us.us.us.i, %i.bx
  %i.gt = add i64 %i.gs, %i.fh                    ; 3 uses
  %i.gu = icmp slt i64 %i.gt, 0
  %i.gv = mul nuw nsw i64 %i.gt, %i.n
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gv ; 2 uses
  %i.gx = mul nuw nsw i64 %.0174210.us225.us.us.us.us.us.us.us.i, %i.k
  %i.gy = getelementptr [2 x i8], ptr %i.gg, i64 %i.gx ; 2 uses
  br i1 %i.gu, label %._crit_edge.us237.us.us.us.us.us.us.us.sink.split.i, label %.lr.ph.split.us226.us.us.us.us.us.us.us.i

.lr.ph.split.us226.us.us.us.us.us.us.us.i:        ; preds = %.preheader.us224.us.us.us.us.us.us.us.i
  %i.gz = icmp slt i64 %i.gt, %i.ba
  %.fr.us227.us.us.us.us.us.us.us.i = freeze i1 %i.gz
  br i1 %.fr.us227.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader, label %._crit_edge.us237.us.us.us.us.us.us.us.sink.split.i

.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader: ; preds = %.lr.ph.split.us226.us.us.us.us.us.us.us.i
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %.reass196
  br i1 %brmerge, label %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader182, label %vector.body167

vector.body167:                                   ; preds = %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader, %vector.body167
  %index168 = phi i64 [ %index.next172, %vector.body167 ], [ 0, %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader ] ; 2 uses
  %vec.ind169 = phi <8 x i64> [ %vec.ind.next173, %vector.body167 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader ] ; 2 uses
  %i.ha = add <8 x i64> %vec.ind169, %broadcast.splat164 ; 3 uses
  %i.hb = extractelement <8 x i64> %i.ha, i64 0
  %i.hc = icmp sgt <8 x i64> %i.ha, splat (i64 -1)
  %i.hd = icmp slt <8 x i64> %i.ha, %broadcast.splat166
  %i.he = select <8 x i1> %i.hc, <8 x i1> %i.hd, <8 x i1> zeroinitializer ; 2 uses
  %i.hf = getelementptr [4 x i8], ptr %i.gw, i64 %i.hb
  %wide.masked.load170 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.hf, <8 x i1> %i.he, <8 x float> poison), !tbaa !43, !alias.scope !1036 ; 2 uses
  %i.hg = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.masked.load170)
  %i.hh = fmul <8 x float> %i.hg, splat (float f0x77800000)
  %i.hi = fmul <8 x float> %i.hh, splat (float f0x08800000)
  %i.hj = bitcast <8 x float> %wide.masked.load170 to <8 x i32> ; 2 uses
  %i.hk = shl <8 x i32> %i.hj, splat (i32 1)      ; 2 uses
  %i.hl = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.hk, <8 x i32> splat (i32 1895825408))
  %i.hm = lshr exact <8 x i32> %i.hl, splat (i32 1)
  %i.hn = and <8 x i32> %i.hm, splat (i32 2139095040)
  %i.ho = add nuw <8 x i32> %i.hn, splat (i32 125829120)
  %i.hp = bitcast <8 x i32> %i.ho to <8 x float>
  %i.hq = fadd <8 x float> %i.hi, %i.hp
  %i.hr = bitcast <8 x float> %i.hq to <8 x i32>  ; 2 uses
  %i.hs = lshr <8 x i32> %i.hr, splat (i32 13)
  %i.ht = and <8 x i32> %i.hs, splat (i32 31744)
  %i.hu = and <8 x i32> %i.hr, splat (i32 4095)
  %i.hv = add nuw nsw <8 x i32> %i.ht, %i.hu
  %i.hw = lshr <8 x i32> %i.hj, splat (i32 16)
  %i.hx = and <8 x i32> %i.hw, splat (i32 32768)
  %i.hy = icmp ugt <8 x i32> %i.hk, splat (i32 -16777216)
  %i.hz = select <8 x i1> %i.hy, <8 x i32> splat (i32 32256), <8 x i32> %i.hv
  %i.ia = or <8 x i32> %i.hz, %i.hx
  %i.ib = trunc nuw <8 x i32> %i.ia to <8 x i16>
  %predphi171 = select <8 x i1> %i.he, <8 x i16> %i.ib, <8 x i16> zeroinitializer
  %i.ic = getelementptr [2 x i8], ptr %i.gy, i64 %index168
  store <8 x i16> %predphi171, ptr %i.ic, align 2, !tbaa !41, !alias.scope !1037, !noalias !1036
  %index.next172 = add nuw i64 %index168, 8       ; 2 uses
  %vec.ind.next173 = add nuw nsw <8 x i64> %vec.ind169, splat (i64 8)
  %i.id = icmp eq i64 %index.next172, %n.vec162
  br i1 %i.id, label %middle.block174, label %vector.body167, !llvm.loop !1010

middle.block174:                                  ; preds = %vector.body167
  br i1 %cmp.n175, label %._crit_edge.us237.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader182

.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader182: ; preds = %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader, %middle.block174
  %.0205.us232.us.us.us.us.us.us.us.i.ph = phi i64 [ %n.vec162, %middle.block174 ], [ 0, %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader ]
  br label %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i

.lr.ph.split.split.us231.us.us.us.us.us.us.us.i:  ; preds = %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader182, %bb.k
  %.0205.us232.us.us.us.us.us.us.us.i = phi i64 [ %i.jf, %bb.k ], [ %.0205.us232.us.us.us.us.us.us.us.i.ph, %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader182 ] ; 3 uses
  %i.ie = mul nsw i64 %.0205.us232.us.us.us.us.us.us.us.i, %i.bu
  %i.if = add i64 %i.ie, %i.fs                    ; 3 uses
  %i.ig = icmp sgt i64 %i.if, -1
  %.not191.us.us.us.us.us.us.us.us.i = icmp slt i64 %i.if, %i.n
  %or.cond193.us.us.us.us.us.us.us.us.i = select i1 %i.ig, i1 %.not191.us.us.us.us.us.us.us.us.i, i1 false
  br i1 %or.cond193.us.us.us.us.us.us.us.us.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.if
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !43 ; 2 uses
  %i.ij = tail call float @llvm.fabs.f32(float %i.ii)
  %i.ik = fmul float %i.ij, f0x77800000
  %i.il = fmul float %i.ik, f0x08800000
  %i.im = bitcast float %i.ii to i32              ; 2 uses
  %i.in = shl i32 %i.im, 1                        ; 2 uses
  %i.io = tail call i32 @llvm.umax.i32(i32 %i.in, i32 1895825408)
  %spec.store.select.i.us.us.us.us.us.us.us.us.i = lshr exact i32 %i.io, 1
  %i.ip = and i32 %spec.store.select.i.us.us.us.us.us.us.us.us.i, 2139095040
  %i.iq = add nuw i32 %i.ip, 125829120
  %i.ir = bitcast i32 %i.iq to float
  %i.is = fadd float %i.il, %i.ir
  %i.it = bitcast float %i.is to i32              ; 2 uses
  %i.iu = lshr i32 %i.it, 13
  %i.iv = and i32 %i.iu, 31744
  %i.iw = and i32 %i.it, 4095
  %i.ix = add nuw nsw i32 %i.iv, %i.iw
  %i.iy = lshr i32 %i.im, 16
  %i.iz = and i32 %i.iy, 32768
  %i.ja = icmp ugt i32 %i.in, -16777216
  %i.jb = select i1 %i.ja, i32 32256, i32 %i.ix
  %i.jc = or i32 %i.jb, %i.iz
  %i.jd = trunc nuw i32 %i.jc to i16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i
  %.sink.i = phi i16 [ %i.jd, %bb.j ], [ 0, %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i ]
  %i.je = getelementptr [2 x i8], ptr %i.gy, i64 %.0205.us232.us.us.us.us.us.us.us.i
  store i16 %.sink.i, ptr %i.je, align 2, !tbaa !41
  %i.jf = add nuw nsw i64 %.0205.us232.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.jf, %i.k
  br i1 %exitcond.not.i, label %._crit_edge.us237.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i, !llvm.loop !1011

._crit_edge.us237.us.us.us.us.us.us.us.sink.split.i: ; preds = %.lr.ph.split.us226.us.us.us.us.us.us.us.i, %.preheader.us224.us.us.us.us.us.us.us.i
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep339.i, i8 0, i64 %i.cd, i1 false), !tbaa !41
  br label %._crit_edge.us237.us.us.us.us.us.us.us.i

._crit_edge.us237.us.us.us.us.us.us.us.i:         ; preds = %bb.k, %middle.block174, %._crit_edge.us237.us.us.us.us.us.us.us.sink.split.i
  %i.jg = add nuw nsw i64 %.0174210.us225.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond340.not.i = icmp eq i64 %i.jg, %i.bb
  br i1 %exitcond340.not.i, label %._crit_edge211.us.us.us.us.us.us.us.us.i, label %.preheader.us224.us.us.us.us.us.us.us.i, !llvm.loop !1012

.preheader.us.us.us.us.us.us.us.us.us.i:          ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.i, %.preheader.us.us.us.us.us.us.us.us.us.preheader.i
  %.0174210.us.us.us.us.us.us.us.us.us.i = phi i64 [ %i.lq, %._crit_edge.us.us.us.us.us.us.us.us.us.i ], [ 0, %.preheader.us.us.us.us.us.us.us.us.us.preheader.i ] ; 4 uses
  %30 = mul i64 %.0174210.us.us.us.us.us.us.us.us.us.i, %i.cd
  %scevgep343.i = getelementptr i8, ptr %28, i64 %30
  %i.jh = mul nsw i64 %.0174210.us.us.us.us.us.us.us.us.us.i, %i.bx
  %i.ji = add i64 %i.jh, %i.fh                    ; 3 uses
  %i.jj = icmp slt i64 %i.ji, 0
  %i.jk = mul nuw nsw i64 %i.ji, %i.n
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %i.gm, i64 %i.jk ; 7 uses
  %i.jm = mul nuw nsw i64 %.0174210.us.us.us.us.us.us.us.us.us.i, %i.k
  %i.jn = getelementptr [2 x i8], ptr %i.gn, i64 %i.jm ; 7 uses
  br i1 %i.jj, label %._crit_edge.us.us.us.us.us.us.us.us.us.sink.split.i, label %.lr.ph.split.us212.us.us.us.us.us.us.us.us.i

.lr.ph.split.us212.us.us.us.us.us.us.us.us.i:     ; preds = %.preheader.us.us.us.us.us.us.us.us.us.i
  %i.jo = icmp slt i64 %i.ji, %i.ba
  %.fr.us.us.us.us.us.us.us.us.us.i = freeze i1 %i.jo
  br i1 %.fr.us.us.us.us.us.us.us.us.us.i, label %iter.check125, label %._crit_edge.us.us.us.us.us.us.us.us.us.sink.split.i

iter.check125:                                    ; preds = %.lr.ph.split.us212.us.us.us.us.us.us.us.us.i
  %or.cond180.not = xor i1 %or.cond180, true
  %brmerge199 = select i1 %or.cond180.not, i1 true, i1 %.reass198
  br i1 %brmerge199, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.preheader, label %vector.main.loop.iter.check107

vector.main.loop.iter.check107:                   ; preds = %iter.check125
  br i1 %min.iters.check108, label %vec.epilog.ph129, label %vector.body115

vector.body115:                                   ; preds = %vector.main.loop.iter.check107, %vector.body115
  %index116 = phi i64 [ %index.next120, %vector.body115 ], [ 0, %vector.main.loop.iter.check107 ] ; 2 uses
  %vec.ind117 = phi <16 x i64> [ %vec.ind.next121, %vector.body115 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.main.loop.iter.check107 ] ; 2 uses
  %i.jp = add <16 x i64> %vec.ind117, %broadcast.splat112 ; 3 uses
  %i.jq = extractelement <16 x i64> %i.jp, i64 0
  %i.jr = icmp sgt <16 x i64> %i.jp, splat (i64 -1)
  %i.js = icmp slt <16 x i64> %i.jp, %broadcast.splat114
  %i.jt = select <16 x i1> %i.jr, <16 x i1> %i.js, <16 x i1> zeroinitializer
  %i.ju = getelementptr [2 x i8], ptr %i.jl, i64 %i.jq
  %wide.masked.load118 = tail call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 2 %i.ju, <16 x i1> %i.jt, <16 x i16> zeroinitializer), !tbaa !41, !alias.scope !1038
  %i.jv = getelementptr [2 x i8], ptr %i.jn, i64 %index116
  store <16 x i16> %wide.masked.load118, ptr %i.jv, align 2, !tbaa !41, !alias.scope !1039, !noalias !1038
  %index.next120 = add nuw i64 %index116, 16      ; 2 uses
  %vec.ind.next121 = add nuw nsw <16 x i64> %vec.ind117, splat (i64 16)
  %i.jw = icmp eq i64 %index.next120, %n.vec110
  br i1 %i.jw, label %middle.block122, label %vector.body115, !llvm.loop !1016

middle.block122:                                  ; preds = %vector.body115
  br i1 %cmp.n123, label %._crit_edge.us.us.us.us.us.us.us.us.us.i, label %vec.epilog.iter.check127

vec.epilog.iter.check127:                         ; preds = %middle.block122
  br i1 %min.epilog.iters.check128, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.preheader, label %vec.epilog.ph129, !prof !49

vec.epilog.ph129:                                 ; preds = %vector.main.loop.iter.check107, %vec.epilog.iter.check127
  %vec.epilog.resume.val124 = phi i64 [ %n.vec110, %vec.epilog.iter.check127 ], [ 0, %vector.main.loop.iter.check107 ] ; 2 uses
  %broadcast.splatinsert135 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val124, i64 0
  %broadcast.splat136 = shufflevector <4 x i64> %broadcast.splatinsert135, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction137 = or disjoint <4 x i64> %broadcast.splat136, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body138

vec.epilog.vector.body138:                        ; preds = %vec.epilog.vector.body138, %vec.epilog.ph129
  %index139 = phi i64 [ %vec.epilog.resume.val124, %vec.epilog.ph129 ], [ %index.next143, %vec.epilog.vector.body138 ] ; 2 uses
  %vec.ind140 = phi <4 x i64> [ %induction137, %vec.epilog.ph129 ], [ %vec.ind.next144, %vec.epilog.vector.body138 ] ; 2 uses
  %i.jx = add <4 x i64> %vec.ind140, %broadcast.splat132 ; 3 uses
  %i.jy = extractelement <4 x i64> %i.jx, i64 0
  %i.jz = icmp sgt <4 x i64> %i.jx, splat (i64 -1)
  %i.ka = icmp slt <4 x i64> %i.jx, %broadcast.splat134
  %i.kb = select <4 x i1> %i.jz, <4 x i1> %i.ka, <4 x i1> zeroinitializer
  %i.kc = getelementptr [2 x i8], ptr %i.jl, i64 %i.jy
  %wide.masked.load141 = tail call <4 x i16> @llvm.masked.load.v4i16.p0(ptr align 2 %i.kc, <4 x i1> %i.kb, <4 x i16> zeroinitializer), !tbaa !41, !alias.scope !1038
  %i.kd = getelementptr [2 x i8], ptr %i.jn, i64 %index139
  store <4 x i16> %wide.masked.load141, ptr %i.kd, align 2, !tbaa !41, !alias.scope !1039, !noalias !1038
  %index.next143 = add nuw i64 %index139, 4       ; 2 uses
  %vec.ind.next144 = add nuw nsw <4 x i64> %vec.ind140, splat (i64 4)
  %i.ke = icmp eq i64 %index.next143, %n.vec130
  br i1 %i.ke, label %vec.epilog.middle.block145, label %vec.epilog.vector.body138, !llvm.loop !1017

vec.epilog.middle.block145:                       ; preds = %vec.epilog.vector.body138
  br i1 %cmp.n146, label %._crit_edge.us.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.preheader

.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.preheader: ; preds = %iter.check125, %vec.epilog.iter.check127, %vec.epilog.middle.block145
  %.0205.us207.us.us.us.us.us.us.us.us.us.i.ph = phi i64 [ 0, %iter.check125 ], [ %n.vec130, %vec.epilog.middle.block145 ], [ %n.vec110, %vec.epilog.iter.check127 ] ; 3 uses
  br i1 %lcmp.mod186.not, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol.loopexit, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol

.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol: ; preds = %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.preheader, %bb.m
  %.0205.us207.us.us.us.us.us.us.us.us.us.i.prol = phi i64 [ %i.kl, %bb.m ], [ %.0205.us207.us.us.us.us.us.us.us.us.us.i.ph, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.preheader ] ; 3 uses
  %prol.iter187 = phi i64 [ %prol.iter187.next, %bb.m ], [ 0, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.preheader ]
  %i.kf = mul nsw i64 %.0205.us207.us.us.us.us.us.us.us.us.us.i.prol, %i.bu
  %i.kg = add i64 %i.kf, %i.fs                    ; 3 uses
  %i.kh = icmp sgt i64 %i.kg, -1
  %.not191.us.us.us.us.us.us.us.us.us.us.i.prol = icmp slt i64 %i.kg, %i.n
  %or.cond193.us.us.us.us.us.us.us.us.us.us.i.prol = select i1 %i.kh, i1 %.not191.us.us.us.us.us.us.us.us.us.us.i.prol, i1 false
  br i1 %or.cond193.us.us.us.us.us.us.us.us.us.us.i.prol, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol
  %i.ki = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %i.kg
  %i.kj = load i16, ptr %i.ki, align 2, !tbaa !41
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol
  %.sink373.i.prol = phi i16 [ %i.kj, %bb.l ], [ 0, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol ]
  %i.kk = getelementptr [2 x i8], ptr %i.jn, i64 %.0205.us207.us.us.us.us.us.us.us.us.us.i.prol
  store i16 %.sink373.i.prol, ptr %i.kk, align 2, !tbaa !41
  %i.kl = add nuw nsw i64 %.0205.us207.us.us.us.us.us.us.us.us.us.i.prol, 1 ; 2 uses
  %prol.iter187.next = add i64 %prol.iter187, 1   ; 2 uses
  %prol.iter187.cmp.not = icmp eq i64 %prol.iter187.next, %xtraiter185
  br i1 %prol.iter187.cmp.not, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol.loopexit, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol, !llvm.loop !1018

.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol.loopexit: ; preds = %bb.m, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.preheader
  %.0205.us207.us.us.us.us.us.us.us.us.us.i.unr = phi i64 [ %.0205.us207.us.us.us.us.us.us.us.us.us.i.ph, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.preheader ], [ %i.kl, %bb.m ]
  %i.km = sub nsw i64 %.0205.us207.us.us.us.us.us.us.us.us.us.i.ph, %i.k
  %i.kn = icmp ugt i64 %i.km, -4
  br i1 %i.kn, label %._crit_edge.us.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i

.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i: ; preds = %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol.loopexit, %bb.r
  %.0205.us207.us.us.us.us.us.us.us.us.us.i = phi i64 [ %i.lp, %bb.r ], [ %.0205.us207.us.us.us.us.us.us.us.us.us.i.unr, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol.loopexit ] ; 6 uses
  %i.ko = mul nsw i64 %.0205.us207.us.us.us.us.us.us.us.us.us.i, %i.bu
  %i.kp = add i64 %i.ko, %i.fs                    ; 3 uses
  %i.kq = icmp sgt i64 %i.kp, -1
  %.not191.us.us.us.us.us.us.us.us.us.us.i = icmp slt i64 %i.kp, %i.n
  %or.cond193.us.us.us.us.us.us.us.us.us.us.i = select i1 %i.kq, i1 %.not191.us.us.us.us.us.us.us.us.us.us.i, i1 false
  br i1 %or.cond193.us.us.us.us.us.us.us.us.us.us.i, label %bb.n, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.1

bb.n:                                             ; preds = %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %i.kp
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !41
  br label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.1

.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.1: ; preds = %bb.n, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i
  %.sink373.i = phi i16 [ %i.ks, %bb.n ], [ 0, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i ]
  %i.kt = getelementptr [2 x i8], ptr %i.jn, i64 %.0205.us207.us.us.us.us.us.us.us.us.us.i
  store i16 %.sink373.i, ptr %i.kt, align 2, !tbaa !41
  %i.ku = add nuw nsw i64 %.0205.us207.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %i.kv = mul nsw i64 %i.ku, %i.bu
  %i.kw = add i64 %i.kv, %i.fs                    ; 3 uses
  %i.kx = icmp sgt i64 %i.kw, -1
  %.not191.us.us.us.us.us.us.us.us.us.us.i.1 = icmp slt i64 %i.kw, %i.n
  %or.cond193.us.us.us.us.us.us.us.us.us.us.i.1 = select i1 %i.kx, i1 %.not191.us.us.us.us.us.us.us.us.us.us.i.1, i1 false
  br i1 %or.cond193.us.us.us.us.us.us.us.us.us.us.i.1, label %bb.o, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.2

bb.o:                                             ; preds = %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.1
  %i.ky = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %i.kw
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !41
  br label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.2

.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.2: ; preds = %bb.o, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.1
  %.sink373.i.1 = phi i16 [ %i.kz, %bb.o ], [ 0, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.1 ]
  %i.la = getelementptr [2 x i8], ptr %i.jn, i64 %i.ku
  store i16 %.sink373.i.1, ptr %i.la, align 2, !tbaa !41
  %i.lb = add nuw nsw i64 %.0205.us207.us.us.us.us.us.us.us.us.us.i, 2 ; 2 uses
  %i.lc = mul nsw i64 %i.lb, %i.bu
  %i.ld = add i64 %i.lc, %i.fs                    ; 3 uses
  %i.le = icmp sgt i64 %i.ld, -1
  %.not191.us.us.us.us.us.us.us.us.us.us.i.2 = icmp slt i64 %i.ld, %i.n
  %or.cond193.us.us.us.us.us.us.us.us.us.us.i.2 = select i1 %i.le, i1 %.not191.us.us.us.us.us.us.us.us.us.us.i.2, i1 false
  br i1 %or.cond193.us.us.us.us.us.us.us.us.us.us.i.2, label %bb.p, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.3

bb.p:                                             ; preds = %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.2
  %i.lf = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %i.ld
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !41
  br label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.3

.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.3: ; preds = %bb.p, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.2
  %.sink373.i.2 = phi i16 [ %i.lg, %bb.p ], [ 0, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.2 ]
  %i.lh = getelementptr [2 x i8], ptr %i.jn, i64 %i.lb
  store i16 %.sink373.i.2, ptr %i.lh, align 2, !tbaa !41
  %i.li = add nuw nsw i64 %.0205.us207.us.us.us.us.us.us.us.us.us.i, 3 ; 2 uses
  %i.lj = mul nsw i64 %i.li, %i.bu
  %i.lk = add i64 %i.lj, %i.fs                    ; 3 uses
  %i.ll = icmp sgt i64 %i.lk, -1
  %.not191.us.us.us.us.us.us.us.us.us.us.i.3 = icmp slt i64 %i.lk, %i.n
  %or.cond193.us.us.us.us.us.us.us.us.us.us.i.3 = select i1 %i.ll, i1 %.not191.us.us.us.us.us.us.us.us.us.us.i.3, i1 false
  br i1 %or.cond193.us.us.us.us.us.us.us.us.us.us.i.3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.3
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %i.jl, i64 %i.lk
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !41
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.3
  %.sink373.i.3 = phi i16 [ %i.ln, %bb.q ], [ 0, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.3 ]
  %i.lo = getelementptr [2 x i8], ptr %i.jn, i64 %i.li
  store i16 %.sink373.i.3, ptr %i.lo, align 2, !tbaa !41
  %i.lp = add nuw nsw i64 %.0205.us207.us.us.us.us.us.us.us.us.us.i, 4 ; 2 uses
  %exitcond342.not.i.3 = icmp eq i64 %i.lp, %i.k
  br i1 %exitcond342.not.i.3, label %._crit_edge.us.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i, !llvm.loop !1019

._crit_edge.us.us.us.us.us.us.us.us.us.sink.split.i: ; preds = %.lr.ph.split.us212.us.us.us.us.us.us.us.us.i, %.preheader.us.us.us.us.us.us.us.us.us.i
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep343.i, i8 0, i64 %i.cd, i1 false), !tbaa !41
  br label %._crit_edge.us.us.us.us.us.us.us.us.us.i

._crit_edge.us.us.us.us.us.us.us.us.us.i:         ; preds = %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol.loopexit, %bb.r, %middle.block122, %vec.epilog.middle.block145, %._crit_edge.us.us.us.us.us.us.us.us.us.sink.split.i
  %i.lq = add nuw nsw i64 %.0174210.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond344.not.i.a = icmp eq i64 %i.lq, %i.bb
  br i1 %exitcond344.not.i.a, label %._crit_edge211.us.us.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1012

._crit_edge211.us.us.us.us.us.us.us.us.i:         ; preds = %._crit_edge.us237.us.us.us.us.us.us.us.i, %._crit_edge.us.us.us.us.us.us.us.us.us.i
  %i.lr = add nsw i64 %.0175219.us.us.us.us.us.us.us.us.i, %i.bz ; 2 uses
  %i.ls = icmp slt i64 %i.lr, %i.az
  %indvar.next.i = add i64 %indvar.i, 1
  br i1 %i.ls, label %bb.h, label %._crit_edge221.split.us.us.split.us.us.us.us.us.us.i, !llvm.loop !1020

._crit_edge221.split.us.us.split.us.us.us.us.us.us.i: ; preds = %._crit_edge211.us.us.us.us.us.us.us.us.i
  %i.lt = add nuw nsw i64 %.0176244.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond345.not.i = icmp eq i64 %i.lt, %i.ad
  br i1 %exitcond345.not.i, label %._crit_edge.split247.us.split.us.us.us.us.us.i, label %.lr.ph.us.us.us.us.us.us.i, !llvm.loop !1021

._crit_edge.split247.us.split.us.us.us.us.us.i:   ; preds = %._crit_edge221.split.us.us.split.us.us.us.us.us.us.i
  %i.lu = add nuw nsw i64 %.0177263.us.us.us.us.i, 1 ; 2 uses
  %exitcond346.not.i = icmp eq i64 %i.lu, %i.bc
  br i1 %exitcond346.not.i, label %._crit_edge264.split274.us.split.us.us.us.i, label %.preheader199.us.us.us.us.i, !llvm.loop !1022

._crit_edge264.split274.us.split.us.us.us.i:      ; preds = %._crit_edge.split247.us.split.us.us.us.us.us.i
  %i.lv = add nuw nsw i64 %.0178289.us.us.i, 1    ; 2 uses
  %exitcond347.not.i = icmp eq i64 %i.lv, %i.ay
  br i1 %exitcond347.not.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader200.us.us.i, !llvm.loop !1023

bb.s:                                             ; preds = %bb.a
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !24 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !24 ; 10 uses
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !30
  %i.mb = icmp eq i32 %i.ma, 0
  br i1 %i.mb, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6497, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18) #17
  unreachable

bb.u:                                             ; preds = %bb.s
  %.not.i5 = icmp eq ptr %i.lx, null
  br i1 %.not.i5, label %.thread.i6, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !31
  %i.me = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !31
  br label %.thread.i6

.thread.i6:                                       ; preds = %bb.v, %bb.u
  %i.mg = phi i64 [ %i.md, %bb.v ], [ 0, %bb.u ]  ; 21 uses
  %i.mh = phi i64 [ %i.mf, %bb.v ], [ 0, %bb.u ]
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !31 ; 12 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !31 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !31 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lz, i64 40
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !31
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lz, i64 48
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !31
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lz, i64 56
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !31
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lz, i64 64
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !31 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lz, i64 72
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !31
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !31 ; 7 uses
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !31
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !51
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !51
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !51
  %i.ni = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !51
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !51 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.nn = load i32, ptr %i.nm, align 8, !tbaa !51
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.np = load i32, ptr %i.no, align 4, !tbaa !51
  %i.nq = icmp eq i32 %i.np, 1                    ; 7 uses
  %i.nr = load i32, ptr %0, align 8, !tbaa !35
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !36
  %i.nu = select i1 %i.nq, i64 %i.mp, i64 %i.mn   ; 2 uses
  %i.nv = select i1 %i.nq, i64 %i.mn, i64 %i.ml   ; 7 uses
  %i.nw = select i1 %i.nq, i64 %i.ml, i64 1
  %i.nx = select i1 %i.nq, i64 %i.mh, i64 1       ; 10 uses
  %i.ny = select i1 %i.nq, i64 %i.nb, i64 1       ; 5 uses
  %i.nz = select i1 %i.nq, i64 %i.mx, i64 %i.mv
  %i.oa = select i1 %i.nq, i64 %i.mv, i64 %i.mt
  %i.ob = icmp eq i64 %i.mr, 4
  br i1 %i.ob, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread.i6
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6527, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13) #17
  unreachable

bb.x:                                             ; preds = %.thread.i6
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !37 ; 4 uses
  %i.oe = icmp sgt i64 %i.nu, 0
  br i1 %i.oe, label %.preheader174.lr.ph.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit

.preheader174.lr.ph.i:                            ; preds = %bb.x
  %factor.op.mul211.i = mul i64 %i.nx, %i.mg      ; 4 uses
  %factor.op.mul201.reass.i = mul i64 %factor.op.mul211.i, %i.nv
  %i.of = icmp slt i64 %i.ny, 1
  %i.og = icmp slt i64 %i.mz, 1
  %i.oh = sext i32 %i.nr to i64                   ; 6 uses
  %i.oi = icmp sle i64 %i.nv, %i.oh
  %i.oj = shl i64 %i.nz, 32
  %i.ok = ashr exact i64 %i.oj, 32                ; 2 uses
  %i.ol = shl i64 %i.oa, 32
  %i.om = ashr exact i64 %i.ol, 32                ; 3 uses
  %i.on = sext i32 %i.nd to i64                   ; 2 uses
  %i.oo = sext i32 %i.nl to i64                   ; 5 uses
  %i.op = sext i32 %i.nh to i64                   ; 3 uses
  %i.oq = sext i32 %i.nf to i64                   ; 2 uses
  %i.or = sext i32 %i.nn to i64                   ; 3 uses
  %i.os = sext i32 %i.nj to i64                   ; 3 uses
  %i.ot = sext i32 %i.nt to i64                   ; 4 uses
  %brmerge.i7 = select i1 %i.of, i1 true, i1 %i.og
  %brmerge224.i = select i1 %brmerge.i7, i1 true, i1 %i.oi
  br i1 %brmerge224.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader174.lr.ph.split.split.split.i

.preheader174.lr.ph.split.split.split.i:          ; preds = %.preheader174.lr.ph.i
  %i.ou = icmp slt i64 %i.mg, 1
  %i.ov = icmp slt i64 %i.nx, 1
  %i.ow = getelementptr inbounds nuw i8, ptr %i.lz, i64 248
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !37 ; 3 uses
  %brmerge251.i = select i1 %i.ov, i1 true, i1 %i.ou
  br i1 %brmerge251.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader174.us.us.preheader.i

.preheader174.us.us.preheader.i:                  ; preds = %.preheader174.lr.ph.split.split.split.i
  %31 = shl nsw i64 %i.oh, 2
  %32 = mul i64 %31, %factor.op.mul211.i
  %33 = mul i64 %i.nx, %i.nv                      ; 2 uses
  %34 = mul i64 %33, %i.mg                        ; 2 uses
  %35 = shl i64 %34, 2
  %i.oy = shl i64 %i.mg, 2                        ; 3 uses
  %36 = getelementptr i8, ptr %i.od, i64 %32
  %37 = mul i64 %i.oy, %i.mz
  %38 = mul i64 %37, %i.ny
  %39 = mul i64 %38, %33
  %40 = shl i64 %i.mz, 2
  %i.oz = mul i64 %40, %34
  %i.pa = shl nsw i64 %i.ot, 2
  %41 = mul i64 %i.pa, %factor.op.mul211.i
  %42 = mul i64 %i.nx, %i.mg
  %i.pb = mul i64 %42, %i.oh
  %43 = shl i64 %i.pb, 2
  %i.pc = mul i64 %i.nx, %i.nv
  %i.pd = mul i64 %i.pc, %i.ny
  %i.pe = mul i64 %i.pd, %i.mg
  %i.pf = mul i64 %i.pe, %i.mz
  %i.pg = shl i64 %i.pf, 2
  %i.ph = mul i64 %i.nx, %i.nv
  %i.pi = mul i64 %i.ph, %i.mg
  %i.pj = mul i64 %i.pi, %i.mz
  %i.pk = shl i64 %i.pj, 2
  %i.pl = mul i64 %i.nx, %i.nv
  %i.pm = mul i64 %i.pl, %i.mg
  %i.pn = shl i64 %i.pm, 2
  %i.po = mul i64 %i.nx, %i.mg                    ; 2 uses
  %i.pp = mul i64 %i.po, %i.ot
  %44 = shl i64 %i.pp, 2
  %i.pq = shl nsw i64 %i.oh, 2
  %45 = add nsw i64 %i.pq, 4
  %46 = mul i64 %i.po, %45
  %i.pr = shl i64 %i.mg, 2                        ; 2 uses
  %i.ps = mul nsw i64 %i.om, %i.oh                ; 2 uses
  %i.pt = mul i64 %i.mj, %i.os
  %i.pu = shl nsw i64 %i.op, 2
  %i.pv = add i64 %i.pt, %i.op
  %i.pw = shl i64 %i.pv, 2
  %i.px = sub i64 %i.ps, %i.pw
  %i.py = mul i64 %i.mj, %i.oq
  %i.pz = shl i64 %i.py, 2
  %i.qa = shl nsw i64 %i.on, 2
  %i.qb = mul nsw i64 %i.om, %i.ot
  %i.qc = add nuw i64 %i.nx, 4611686018427387903
  %i.qd = mul i64 %i.qc, %i.or
  %i.qe = sub i64 %i.qd, %i.os
  %i.qf = shl i64 %i.qe, 2
  %i.qg = mul i64 %i.mj, %i.qf
  %i.qh = add i64 %i.qg, %i.ps
  %i.qi = add i64 %i.qh, %i.pr
  %i.qj = sub i64 %i.qi, %i.pu
  %i.qk = mul i64 %i.mj, %i.or
  %47 = getelementptr i8, ptr %i.od, i64 %43
  %i.ql = getelementptr i8, ptr %i.od, i64 %46
  %i.qm = getelementptr i8, ptr %i.ox, i64 %i.px
  %i.qn = getelementptr i8, ptr %i.ox, i64 %i.qj
  %min.iters.check = icmp ugt i64 %i.mg, 3
  %ident.check.not = icmp eq i32 %i.nl, 1
  %or.cond181 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %stride.check = icmp slt i64 %i.pr, 0
  %.mask = and i64 %i.qk, 2305843009213693952
  %stride.check70 = icmp ne i64 %.mask, 0
  %invariant.op193 = or i1 %stride.check, %stride.check70
  %min.iters.check71 = icmp ult i64 %i.mg, 32
  %i.qo = and i64 %i.mg, 28
  %n.vec = and i64 %i.mg, 9223372036854775776     ; 4 uses
  %broadcast.splatinsert72 = insertelement <8 x i64> poison, i64 %i.mj, i64 0
  %broadcast.splat73 = shufflevector <8 x i64> %broadcast.splatinsert72, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %i.mg, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.qo, 0
  %n.vec80 = and i64 %i.mg, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert83 = insertelement <4 x i64> poison, i64 %i.mj, i64 0
  %broadcast.splat84 = shufflevector <4 x i64> %broadcast.splatinsert83, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n93 = icmp eq i64 %i.mg, %n.vec80
  %xtraiter = and i64 %i.mg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader174.us.us.i

.preheader174.us.us.i:                            ; preds = %._crit_edge203.split210.us.split.us.us.us.i, %.preheader174.us.us.preheader.i
  %.0157212.us.us.i = phi i64 [ %i.uy, %._crit_edge203.split210.us.split.us.us.us.i ], [ 0, %.preheader174.us.us.preheader.i ] ; 6 uses
  %48 = mul i64 %i.pg, %.0157212.us.us.i          ; 2 uses
  %i.qp = mul i64 %i.ok, %.0157212.us.us.i        ; 2 uses
  %i.qq = mul i64 %39, %.0157212.us.us.i
  %i.qr = mul nuw nsw i64 %.0157212.us.us.i, %i.ny
  %i.qs = mul nsw i64 %.0157212.us.us.i, %i.ok
  %49 = getelementptr inbounds i8, ptr %i.ox, i64 %i.qs
  %50 = getelementptr i8, ptr %36, i64 %i.qq
  %i.qt = getelementptr i8, ptr %47, i64 %48
  %i.qu = getelementptr i8, ptr %i.ql, i64 %48
  %i.qv = getelementptr i8, ptr %i.qm, i64 %i.qp
  %i.qw = getelementptr i8, ptr %i.qn, i64 %i.qp
  br label %.preheader173.us.us.us.us.i

.preheader173.us.us.us.us.i:                      ; preds = %._crit_edge.split200.us.split.us.us.us.us.us.i, %.preheader174.us.us.i
  %.0156202.us.us.us.us.i = phi i64 [ 0, %.preheader174.us.us.i ], [ %i.ux, %._crit_edge.split200.us.split.us.us.us.us.us.i ] ; 6 uses
  %51 = mul i64 %i.pk, %.0156202.us.us.us.us.i    ; 2 uses
  %i.qx = mul i64 %i.pz, %.0156202.us.us.us.us.i  ; 2 uses
  %i.qy = mul i64 %i.oz, %.0156202.us.us.us.us.i
  %i.qz = add nuw i64 %.0156202.us.us.us.us.i, %i.qr
  %i.ra = mul i64 %i.qz, %i.mz
  %i.rb = mul nsw i64 %.0156202.us.us.us.us.i, %i.oq
  %i.rc = sub i64 %i.rb, %i.os
  %52 = getelementptr i8, ptr %50, i64 %i.qy
  %53 = getelementptr i8, ptr %i.qt, i64 %51
  %i.rd = getelementptr i8, ptr %i.qu, i64 %51
  %i.re = getelementptr i8, ptr %i.qv, i64 %i.qx
  %i.rf = getelementptr i8, ptr %i.qw, i64 %i.qx
  br label %.lr.ph.us.us.us.us.us.us.i8

.lr.ph.us.us.us.us.us.us.i8:                      ; preds = %._crit_edge185.split.us.split.us.us.us.us.us.us.us.i, %.preheader173.us.us.us.us.i
  %.0155193.us.us.us.us.us.us.i = phi i64 [ 0, %.preheader173.us.us.us.us.i ], [ %i.uw, %._crit_edge185.split.us.split.us.us.us.us.us.us.us.i ] ; 6 uses
  %54 = mul i64 %i.pn, %.0155193.us.us.us.us.us.us.i ; 2 uses
  %i.rg = mul i64 %i.qa, %.0155193.us.us.us.us.us.us.i ; 2 uses
  %i.rh = mul i64 %35, %.0155193.us.us.us.us.us.us.i
  %i.ri = add nsw i64 %.0155193.us.us.us.us.us.us.i, %i.ra
  %i.rj = mul nsw i64 %factor.op.mul201.reass.i, %i.ri
  %i.rk = getelementptr inbounds [4 x i8], ptr %i.od, i64 %i.rj
  %i.rl = mul nsw i64 %.0155193.us.us.us.us.us.us.i, %i.on
  %i.rm = sub i64 %i.rl, %i.op                    ; 7 uses
  %55 = getelementptr i8, ptr %52, i64 %i.rh
  %56 = getelementptr i8, ptr %53, i64 %54
  %i.rn = getelementptr i8, ptr %i.rd, i64 %54
  %i.ro = getelementptr i8, ptr %i.re, i64 %i.rg
  %i.rp = getelementptr i8, ptr %i.rf, i64 %i.rg
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.rm, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i64> splat (i64 8), %broadcast.splat
  %invariant.op189 = add <8 x i64> splat (i64 16), %broadcast.splat
  %invariant.op191 = add <8 x i64> splat (i64 24), %broadcast.splat
  %broadcast.splatinsert81 = insertelement <4 x i64> poison, i64 %i.rm, i64 0
  %broadcast.splat82 = shufflevector <4 x i64> %broadcast.splatinsert81, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %.preheader.lr.ph.us.us.us.us.us.us.us.us.i9

.preheader.lr.ph.us.us.us.us.us.us.us.us.i9:      ; preds = %._crit_edge181.us.us.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.us.i8
  %indvar.i10 = phi i64 [ %indvar.next.i12, %._crit_edge181.us.us.us.us.us.us.us.us.i ], [ 0, %.lr.ph.us.us.us.us.us.us.i8 ] ; 4 uses
  %.0154183.us.us.us.us.us.us.us.us.i = phi i64 [ %i.uu, %._crit_edge181.us.us.us.us.us.us.us.us.i ], [ %i.oh, %.lr.ph.us.us.us.us.us.us.i8 ] ; 3 uses
  %i.rq = mul i64 %44, %indvar.i10                ; 2 uses
  %scevgep = getelementptr i8, ptr %56, i64 %i.rq
  %scevgep67 = getelementptr i8, ptr %i.rn, i64 %i.rq
  %i.rr = mul i64 %i.qb, %indvar.i10              ; 2 uses
  %scevgep68 = getelementptr i8, ptr %i.ro, i64 %i.rr
  %scevgep69 = getelementptr i8, ptr %i.rp, i64 %i.rr
  %57 = mul i64 %41, %indvar.i10
  %i.rs = mul nsw i64 %.0154183.us.us.us.us.us.us.us.us.i, %i.om
  %i.rt = getelementptr inbounds i8, ptr %49, i64 %i.rs
  %factor.op.mul.reass.us.us.us.us.us.us.us.us.i11 = mul i64 %.0154183.us.us.us.us.us.us.us.us.i, %factor.op.mul211.i
  %i.ru = getelementptr [4 x i8], ptr %i.rk, i64 %factor.op.mul.reass.us.us.us.us.us.us.us.us.i11
  %58 = getelementptr i8, ptr %55, i64 %57
  %bound0 = icmp ult ptr %scevgep, %scevgep69
  %bound1 = icmp ult ptr %scevgep68, %scevgep67
  %found.conflict = and i1 %bound0, %bound1
  %.reass194 = or i1 %found.conflict, %invariant.op193
  br label %.preheader.us.us.us.us.us.us.us.us.i

.preheader.us.us.us.us.us.us.us.us.i:             ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.i9
  %.0153180.us.us.us.us.us.us.us.us.i = phi i64 [ 0, %.preheader.lr.ph.us.us.us.us.us.us.us.us.i9 ], [ %i.ut, %._crit_edge.us.us.us.us.us.us.us.us.i ] ; 4 uses
  %59 = mul i64 %.0153180.us.us.us.us.us.us.us.us.i, %i.oy
  %scevgep229.i = getelementptr i8, ptr %58, i64 %59
  %i.rv = mul nsw i64 %.0153180.us.us.us.us.us.us.us.us.i, %i.or
  %i.rw = add i64 %i.rv, %i.rc                    ; 3 uses
  %i.rx = icmp slt i64 %i.rw, 0
  %i.ry = mul nuw nsw i64 %i.rw, %i.mj
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %i.ry ; 7 uses
  %i.sa = mul nuw nsw i64 %.0153180.us.us.us.us.us.us.us.us.i, %i.mg
  %i.sb = getelementptr [4 x i8], ptr %i.ru, i64 %i.sa ; 7 uses
  br i1 %i.rx, label %._crit_edge.us.us.us.us.us.us.us.us.sink.split.i, label %.lr.ph.split.us187.us.us.us.us.us.us.us.i

.lr.ph.split.us187.us.us.us.us.us.us.us.i:        ; preds = %.preheader.us.us.us.us.us.us.us.us.i
  %i.sc = icmp slt i64 %i.rw, %i.nw
  %.fr.us.us.us.us.us.us.us.us.i = freeze i1 %i.sc
  br i1 %.fr.us.us.us.us.us.us.us.us.i, label %iter.check, label %._crit_edge.us.us.us.us.us.us.us.us.sink.split.i

iter.check:                                       ; preds = %.lr.ph.split.us187.us.us.us.us.us.us.us.i
  %or.cond181.not = xor i1 %or.cond181, true
  %brmerge200 = select i1 %or.cond181.not, i1 true, i1 %.reass194
  br i1 %brmerge200, label %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check71, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.main.loop.iter.check ] ; 5 uses
  %i.sd = add <8 x i64> %vec.ind, %broadcast.splat ; 3 uses
  %i.se = extractelement <8 x i64> %i.sd, i64 0
  %.reass = add <8 x i64> %vec.ind, %invariant.op ; 2 uses
  %.reass190 = add <8 x i64> %vec.ind, %invariant.op189 ; 2 uses
  %.reass192 = add <8 x i64> %vec.ind, %invariant.op191 ; 2 uses
  %i.sf = icmp sgt <8 x i64> %i.sd, splat (i64 -1)
  %i.sg = icmp sgt <8 x i64> %.reass, splat (i64 -1)
  %i.sh = icmp sgt <8 x i64> %.reass190, splat (i64 -1)
  %i.si = icmp sgt <8 x i64> %.reass192, splat (i64 -1)
  %i.sj = icmp slt <8 x i64> %i.sd, %broadcast.splat73
  %i.sk = icmp slt <8 x i64> %.reass, %broadcast.splat73
  %i.sl = icmp slt <8 x i64> %.reass190, %broadcast.splat73
  %i.sm = icmp slt <8 x i64> %.reass192, %broadcast.splat73
  %i.sn = select <8 x i1> %i.sf, <8 x i1> %i.sj, <8 x i1> zeroinitializer
  %i.so = select <8 x i1> %i.sg, <8 x i1> %i.sk, <8 x i1> zeroinitializer
  %i.sp = select <8 x i1> %i.sh, <8 x i1> %i.sl, <8 x i1> zeroinitializer
  %i.sq = select <8 x i1> %i.si, <8 x i1> %i.sm, <8 x i1> zeroinitializer
  %i.sr = getelementptr [4 x i8], ptr %i.rz, i64 %i.se ; 4 uses
  %i.ss = getelementptr i8, ptr %i.sr, i64 32
  %i.st = getelementptr i8, ptr %i.sr, i64 64
  %i.su = getelementptr i8, ptr %i.sr, i64 96
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.sr, <8 x i1> %i.sn, <8 x float> zeroinitializer), !tbaa !43, !alias.scope !1040
  %wide.masked.load74 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ss, <8 x i1> %i.so, <8 x float> zeroinitializer), !tbaa !43, !alias.scope !1040
  %wide.masked.load75 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.st, <8 x i1> %i.sp, <8 x float> zeroinitializer), !tbaa !43, !alias.scope !1040
  %wide.masked.load76 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.su, <8 x i1> %i.sq, <8 x float> zeroinitializer), !tbaa !43, !alias.scope !1040
  %i.sv = getelementptr [4 x i8], ptr %i.sb, i64 %index ; 4 uses
  %i.sw = getelementptr i8, ptr %i.sv, i64 32
  %i.sx = getelementptr i8, ptr %i.sv, i64 64
  %i.sy = getelementptr i8, ptr %i.sv, i64 96
  store <8 x float> %wide.masked.load, ptr %i.sv, align 4, !tbaa !43, !alias.scope !1041, !noalias !1040
  store <8 x float> %wide.masked.load74, ptr %i.sw, align 4, !tbaa !43, !alias.scope !1041, !noalias !1040
  store <8 x float> %wide.masked.load75, ptr %i.sx, align 4, !tbaa !43, !alias.scope !1041, !noalias !1040
  store <8 x float> %wide.masked.load76, ptr %i.sy, align 4, !tbaa !43, !alias.scope !1041, !noalias !1040
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.sz = icmp eq i64 %index.next, %n.vec
  br i1 %i.sz, label %middle.block, label %vector.body, !llvm.loop !1027

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us.us.us.us.us.us.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert85 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat86 = shufflevector <4 x i64> %broadcast.splatinsert85, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat86, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index87 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next91, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind88 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next92, %vec.epilog.vector.body ] ; 2 uses
  %i.ta = add <4 x i64> %vec.ind88, %broadcast.splat82 ; 3 uses
  %i.tb = extractelement <4 x i64> %i.ta, i64 0
  %i.tc = icmp sgt <4 x i64> %i.ta, splat (i64 -1)
  %i.td = icmp slt <4 x i64> %i.ta, %broadcast.splat84
  %i.te = select <4 x i1> %i.tc, <4 x i1> %i.td, <4 x i1> zeroinitializer
  %i.tf = getelementptr [4 x i8], ptr %i.rz, i64 %i.tb
  %wide.masked.load89 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.tf, <4 x i1> %i.te, <4 x float> zeroinitializer), !tbaa !43, !alias.scope !1040
  %i.tg = getelementptr [4 x i8], ptr %i.sb, i64 %index87
  store <4 x float> %wide.masked.load89, ptr %i.tg, align 4, !tbaa !43, !alias.scope !1041, !noalias !1040
  %index.next91 = add nuw i64 %index87, 4         ; 2 uses
  %vec.ind.next92 = add nuw nsw <4 x i64> %vec.ind88, splat (i64 4)
  %i.th = icmp eq i64 %index.next91, %n.vec80
  br i1 %i.th, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1028

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n93, label %._crit_edge.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.preheader

.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0177.us189.us.us.us.us.us.us.us.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec80, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.prol.loopexit, label %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.prol

.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.prol: ; preds = %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.preheader, %bb.z
  %.0177.us189.us.us.us.us.us.us.us.i.prol = phi i64 [ %i.to, %bb.z ], [ %.0177.us189.us.us.us.us.us.us.us.i.ph, %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.z ], [ 0, %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.preheader ]
  %i.ti = mul nsw i64 %.0177.us189.us.us.us.us.us.us.us.i.prol, %i.oo
  %i.tj = add i64 %i.ti, %i.rm                    ; 3 uses
  %i.tk = icmp sgt i64 %i.tj, -1
  %.not167.us.us.us.us.us.us.us.us.i.prol = icmp slt i64 %i.tj, %i.mj
  %or.cond168.us.us.us.us.us.us.us.us.i.prol = select i1 %i.tk, i1 %.not167.us.us.us.us.us.us.us.us.i.prol, i1 false
  br i1 %or.cond168.us.us.us.us.us.us.us.us.i.prol, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.prol
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.tj
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !43
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.prol
  %.sink.i13.prol = phi float [ %i.tm, %bb.y ], [ 0.000000e+00, %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.prol ]
  %i.tn = getelementptr [4 x i8], ptr %i.sb, i64 %.0177.us189.us.us.us.us.us.us.us.i.prol
  store float %.sink.i13.prol, ptr %i.tn, align 4, !tbaa !43
  %i.to = add nuw nsw i64 %.0177.us189.us.us.us.us.us.us.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.prol.loopexit, label %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.prol, !llvm.loop !1029

.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.prol.loopexit: ; preds = %bb.z, %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.preheader
  %.0177.us189.us.us.us.us.us.us.us.i.unr = phi i64 [ %.0177.us189.us.us.us.us.us.us.us.i.ph, %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.preheader ], [ %i.to, %bb.z ]
  %i.tp = sub nsw i64 %.0177.us189.us.us.us.us.us.us.us.i.ph, %i.mg
  %i.tq = icmp ugt i64 %i.tp, -4
  br i1 %i.tq, label %._crit_edge.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i

.lr.ph.split.split.us188.us.us.us.us.us.us.us.i:  ; preds = %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.prol.loopexit, %bb.ae
  %.0177.us189.us.us.us.us.us.us.us.i = phi i64 [ %i.us, %bb.ae ], [ %.0177.us189.us.us.us.us.us.us.us.i.unr, %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.prol.loopexit ] ; 6 uses
  %i.tr = mul nsw i64 %.0177.us189.us.us.us.us.us.us.us.i, %i.oo
  %i.ts = add i64 %i.tr, %i.rm                    ; 3 uses
  %i.tt = icmp sgt i64 %i.ts, -1
  %.not167.us.us.us.us.us.us.us.us.i = icmp slt i64 %i.ts, %i.mj
  %or.cond168.us.us.us.us.us.us.us.us.i = select i1 %i.tt, i1 %.not167.us.us.us.us.us.us.us.us.i, i1 false
  br i1 %or.cond168.us.us.us.us.us.us.us.us.i, label %bb.aa, label %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.1

bb.aa:                                            ; preds = %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.ts
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !43
  br label %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.1

.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.1: ; preds = %bb.aa, %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i
  %.sink.i13 = phi float [ %i.tv, %bb.aa ], [ 0.000000e+00, %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i ]
  %i.tw = getelementptr [4 x i8], ptr %i.sb, i64 %.0177.us189.us.us.us.us.us.us.us.i
  store float %.sink.i13, ptr %i.tw, align 4, !tbaa !43
  %i.tx = add nuw nsw i64 %.0177.us189.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %i.ty = mul nsw i64 %i.tx, %i.oo
  %i.tz = add i64 %i.ty, %i.rm                    ; 3 uses
  %i.ua = icmp sgt i64 %i.tz, -1
  %.not167.us.us.us.us.us.us.us.us.i.1 = icmp slt i64 %i.tz, %i.mj
  %or.cond168.us.us.us.us.us.us.us.us.i.1 = select i1 %i.ua, i1 %.not167.us.us.us.us.us.us.us.us.i.1, i1 false
  br i1 %or.cond168.us.us.us.us.us.us.us.us.i.1, label %bb.ab, label %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.2

bb.ab:                                            ; preds = %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.1
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.tz
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !43
  br label %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.2

.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.2: ; preds = %bb.ab, %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.1
  %.sink.i13.1 = phi float [ %i.uc, %bb.ab ], [ 0.000000e+00, %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.1 ]
  %i.ud = getelementptr [4 x i8], ptr %i.sb, i64 %i.tx
  store float %.sink.i13.1, ptr %i.ud, align 4, !tbaa !43
  %i.ue = add nuw nsw i64 %.0177.us189.us.us.us.us.us.us.us.i, 2 ; 2 uses
  %i.uf = mul nsw i64 %i.ue, %i.oo
  %i.ug = add i64 %i.uf, %i.rm                    ; 3 uses
  %i.uh = icmp sgt i64 %i.ug, -1
  %.not167.us.us.us.us.us.us.us.us.i.2 = icmp slt i64 %i.ug, %i.mj
  %or.cond168.us.us.us.us.us.us.us.us.i.2 = select i1 %i.uh, i1 %.not167.us.us.us.us.us.us.us.us.i.2, i1 false
  br i1 %or.cond168.us.us.us.us.us.us.us.us.i.2, label %bb.ac, label %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.3

bb.ac:                                            ; preds = %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.2
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.ug
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !43
  br label %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.3

.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.3: ; preds = %bb.ac, %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.2
  %.sink.i13.2 = phi float [ %i.uj, %bb.ac ], [ 0.000000e+00, %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.2 ]
  %i.uk = getelementptr [4 x i8], ptr %i.sb, i64 %i.ue
  store float %.sink.i13.2, ptr %i.uk, align 4, !tbaa !43
  %i.ul = add nuw nsw i64 %.0177.us189.us.us.us.us.us.us.us.i, 3 ; 2 uses
  %i.um = mul nsw i64 %i.ul, %i.oo
  %i.un = add i64 %i.um, %i.rm                    ; 3 uses
  %i.uo = icmp sgt i64 %i.un, -1
  %.not167.us.us.us.us.us.us.us.us.i.3 = icmp slt i64 %i.un, %i.mj
  %or.cond168.us.us.us.us.us.us.us.us.i.3 = select i1 %i.uo, i1 %.not167.us.us.us.us.us.us.us.us.i.3, i1 false
  br i1 %or.cond168.us.us.us.us.us.us.us.us.i.3, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.3
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %i.un
  %i.uq = load float, ptr %i.up, align 4, !tbaa !43
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.3
  %.sink.i13.3 = phi float [ %i.uq, %bb.ad ], [ 0.000000e+00, %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.3 ]
  %i.ur = getelementptr [4 x i8], ptr %i.sb, i64 %i.ul
  store float %.sink.i13.3, ptr %i.ur, align 4, !tbaa !43
  %i.us = add nuw nsw i64 %.0177.us189.us.us.us.us.us.us.us.i, 4 ; 2 uses
  %exitcond.not.i14.3 = icmp eq i64 %i.us, %i.mg
  br i1 %exitcond.not.i14.3, label %._crit_edge.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i, !llvm.loop !1030

._crit_edge.us.us.us.us.us.us.us.us.sink.split.i: ; preds = %.lr.ph.split.us187.us.us.us.us.us.us.us.i, %.preheader.us.us.us.us.us.us.us.us.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep229.i, i8 0, i64 %i.oy, i1 false), !tbaa !43
  br label %._crit_edge.us.us.us.us.us.us.us.us.i

._crit_edge.us.us.us.us.us.us.us.us.i:            ; preds = %.lr.ph.split.split.us188.us.us.us.us.us.us.us.i.prol.loopexit, %bb.ae, %middle.block, %vec.epilog.middle.block, %._crit_edge.us.us.us.us.us.us.us.us.sink.split.i
  %i.ut = add nuw nsw i64 %.0153180.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond230.not.i.a = icmp eq i64 %i.ut, %i.nx
  br i1 %exitcond230.not.i.a, label %._crit_edge181.us.us.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.us.us.i, !llvm.loop !1031

._crit_edge181.us.us.us.us.us.us.us.us.i:         ; preds = %._crit_edge.us.us.us.us.us.us.us.us.i
  %i.uu = add nsw i64 %.0154183.us.us.us.us.us.us.us.us.i, %i.ot ; 2 uses
  %i.uv = icmp slt i64 %i.uu, %i.nv
  %indvar.next.i12 = add i64 %indvar.i10, 1
  br i1 %i.uv, label %.preheader.lr.ph.us.us.us.us.us.us.us.us.i9, label %._crit_edge185.split.us.split.us.us.us.us.us.us.us.i, !llvm.loop !1032

._crit_edge185.split.us.split.us.us.us.us.us.us.us.i: ; preds = %._crit_edge181.us.us.us.us.us.us.us.us.i
  %i.uw = add nuw nsw i64 %.0155193.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond231.not.i.a = icmp eq i64 %i.uw, %i.mz
  br i1 %exitcond231.not.i.a, label %._crit_edge.split200.us.split.us.us.us.us.us.i, label %.lr.ph.us.us.us.us.us.us.i8, !llvm.loop !1033

._crit_edge.split200.us.split.us.us.us.us.us.i:   ; preds = %._crit_edge185.split.us.split.us.us.us.us.us.us.us.i
  %i.ux = add nuw nsw i64 %.0156202.us.us.us.us.i, 1 ; 2 uses
  %exitcond232.not.i.a = icmp eq i64 %i.ux, %i.ny
  br i1 %exitcond232.not.i.a, label %._crit_edge203.split210.us.split.us.us.us.i, label %.preheader173.us.us.us.us.i, !llvm.loop !1034

._crit_edge203.split210.us.split.us.us.us.i:      ; preds = %._crit_edge.split200.us.split.us.us.us.us.us.i
  %i.uy = add nuw nsw i64 %.0157212.us.us.i, 1    ; 2 uses
  %exitcond233.not.i = icmp eq i64 %i.uy, %i.nu
  br i1 %exitcond233.not.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader174.us.us.i, !llvm.loop !1035

bb.af:                                            ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6660, ptr noundef nonnull @.str.2) #17
  unreachable

_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge203.split210.us.split.us.us.us.i, %._crit_edge264.split274.us.split.us.us.us.i, %.preheader174.lr.ph.split.split.split.i, %.preheader174.lr.ph.i, %bb.x, %.preheader200.lr.ph.split.split.split.i, %.preheader200.lr.ph.i, %bb.g
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
  %i.o = load i64, ptr %i.n, align 8, !tbaa !31   ; 9 uses
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
  %.fr304 = freeze i32 %i.au
  %i.av = icmp eq i32 %.fr304, 1                  ; 8 uses
  %i.aw = load i32, ptr %0, align 8, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !36
  %i.az = select i1 %i.av, i64 %i.y, i64 %i.w     ; 12 uses
  %i.ba = select i1 %i.av, i64 %i.w, i64 %i.u     ; 19 uses
  %i.bb = select i1 %i.av, i64 %i.u, i64 1        ; 5 uses
  %i.bc = select i1 %i.av, i64 %i.q, i64 1        ; 4 uses
  %.fr305 = freeze i64 %i.m
  %i.bd = select i1 %i.av, i64 %.fr305, i64 1     ; 3 uses
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
  br i1 %i.bj, label %.lr.ph, label %._crit_edge280.split

.lr.ph:                                           ; preds = %bb.i
  %factor.op.mul277 = mul i64 %i.bc, %i.o         ; 3 uses
  %i.bk = sext i32 %i.aw to i64                   ; 18 uses
  %factor.op.mul256.reass = mul i64 %factor.op.mul277, %i.ba ; 4 uses
  %i.bl = icmp sle i64 %i.ba, %i.bk
  %i.bm = icmp slt i64 %i.s, 1
  %i.bn = icmp sgt i64 %i.o, 0
  %i.bo = sext i32 %i.am to i64                   ; 2 uses
  %i.bp = sext i32 %i.aq to i64
  %factor.op.mul192 = sub nsw i64 0, %i.bp        ; 4 uses
  %i.bq = sext i32 %i.ai to i64                   ; 8 uses
  %i.br = sext i32 %i.ao to i64
  %i.bs = sext i32 %i.as to i64
  %i.bt = sext i32 %i.ak to i64                   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 4 uses
  %.not176 = icmp sgt i64 %i.bd, 0
  %i.bv = shl i64 %i.be, 32
  %i.bw = ashr exact i64 %i.bv, 32                ; 17 uses
  %i.bx = shl i64 %i.bf, 32
  %i.by = ashr exact i64 %i.bx, 32                ; 17 uses
  %i.bz = sext i32 %i.ay to i64                   ; 17 uses
  %i.ca = icmp slt i64 %i.bb, 1
  %or.cond353.not356 = select i1 %i.bl, i1 true, i1 %i.ca
  %brmerge = select i1 %or.cond353.not356, i1 true, i1 %i.bm
  br i1 %brmerge, label %._crit_edge280.split, label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph
  %i.cb = icmp sgt i64 %i.bc, 0
  br i1 %i.cb, label %.lr.ph.split.split.us.split.us.split.us, label %.preheader185.lr.ph.us.us.preheader

.preheader185.lr.ph.us.us.preheader:              ; preds = %.lr.ph.split.split.us.split.us
  %i.cc = mul i64 %i.bb, %i.s
  %i.cd = shl i64 %i.cc, 2                        ; 5 uses
  %xtraiter = and i64 %i.az, 3                    ; 3 uses
  %i.ce = icmp ult i64 %i.az, 4
  br i1 %i.ce, label %.preheader185.lr.ph.us.us.epil.preheader, label %.preheader185.lr.ph.us.us.preheader.new

.preheader185.lr.ph.us.us.preheader.new:          ; preds = %.preheader185.lr.ph.us.us.preheader
  %unroll_iter = and i64 %i.az, 9223372036854775804
  br label %.preheader185.lr.ph.us.us

.lr.ph.split.split.us.split.us.split.us:          ; preds = %.lr.ph.split.split.us.split.us
  br i1 %i.bn, label %.lr.ph.split.split.us.split.us.split.us.split.us, label %.preheader185.lr.ph.us.us.us.preheader

.preheader185.lr.ph.us.us.us.preheader:           ; preds = %.lr.ph.split.split.us.split.us.split.us
  %i.cf = mul i64 %i.bb, %i.s
  %i.cg = shl i64 %i.cf, 2                        ; 5 uses
  %xtraiter366 = and i64 %i.az, 3                 ; 3 uses
  %i.ch = icmp ult i64 %i.az, 4
  br i1 %i.ch, label %.preheader185.lr.ph.us.us.us.epil.preheader, label %.preheader185.lr.ph.us.us.us.preheader.new

.preheader185.lr.ph.us.us.us.preheader.new:       ; preds = %.preheader185.lr.ph.us.us.us.preheader
  %unroll_iter370 = and i64 %i.az, 9223372036854775804
  br label %.preheader185.lr.ph.us.us.us

.lr.ph.split.split.us.split.us.split.us.split.us: ; preds = %.lr.ph.split.split.us.split.us.split.us
  br i1 %i.av, label %.preheader185.lr.ph.us.us.us.us.us, label %.lr.ph.split.split.us.split.us.split.us.split.us.split

.preheader185.lr.ph.us.us.us.us.us:               ; preds = %.lr.ph.split.split.us.split.us.split.us.split.us, %._crit_edge.split273.us.split.us.split.us.split.us.split.us.us.us.us.us.us
  %.0166278.us.us.us.us.us = phi i64 [ %i.du, %._crit_edge.split273.us.split.us.split.us.split.us.split.us.us.us.us.us.us ], [ 0, %.lr.ph.split.split.us.split.us.split.us.split.us ] ; 3 uses
  %i.ci = mul nuw nsw i64 %.0166278.us.us.us.us.us, %i.bd
  %i.cj = mul nsw i64 %.0166278.us.us.us.us.us, %i.bw
  %i.ck = getelementptr i8, ptr %i.bi, i64 %i.cj
  br label %.preheader185.us.us.us.us.us.us.us.us.us.us

.preheader185.us.us.us.us.us.us.us.us.us.us:      ; preds = %._crit_edge241.split253.us.split.us.split.us.us.us.us.us.us.us.us.us.us.us, %.preheader185.lr.ph.us.us.us.us.us
end_hunk_0
begin_hunk_1_@ggml_compute_forward_pad:bb.a
  %gep112.i = getelementptr [4 x i8], ptr %invariant.gep113.i, i64 %reass.mul15.us.us.us43.us.us.us.us.us.us.i
  store float 0.000000e+00, ptr %gep112.i, align 4, !tbaa !43
  %i.gn = add nuw nsw i64 %.017.us.us.us39.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond88.not.i = icmp eq i64 %i.gn, %i.dk
  br i1 %exitcond88.not.i, label %._crit_edge.us.us.us.us.us.us.us.i, label %.lr.ph.split.us.split.us.split.us38.us.us.us.us.us.us.i, !llvm.loop !1287

.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i: ; preds = %.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i.preheader, %bb.f
  %.017.us.us.us.us.us.us.us.us.us.us.i = phi i64 [ %i.hj, %bb.f ], [ 0, %.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i.preheader ] ; 6 uses
  %niter148 = phi i64 [ %niter148.next.1, %bb.f ], [ 0, %.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i.preheader ]
  %i.go = mul i64 %.017.us.us.us.us.us.us.us.us.us.us.i, %i.di
  %reass.add.us.us.us.us.us.us.us.us.us.us.i = add i64 %i.go, %.010851.us.us.us.i
  %reass.mul.us.us.us.us.us.us.us.us.us.us.i = mul i64 %reass.add.us.us.us.us.us.us.us.us.us.us.i, %i.dg
  %reass.add14.us.us.us.us.us.us.us.us.us.us.i = add i64 %reass.mul.us.us.us.us.us.us.us.us.us.us.i, %.010745.us.us.us.us.us.i
  %reass.mul15.us.us.us.us.us.us.us.us.us.us.i = mul i64 %reass.add14.us.us.us.us.us.us.us.us.us.us.i, %i.de
  %.not138.us.us.us.us.us.us.us.us.us.us.i = icmp sge i64 %.017.us.us.us.us.us.us.us.us.us.us.i, %i.eq
  %i.gp = icmp slt i64 %.017.us.us.us.us.us.us.us.us.us.us.i, %i.es
  %or.cond13.us.us.us.us.us.us.us.us.us.us.i = select i1 %.not138.us.us.us.us.us.us.us.us.us.us.i, i1 %i.gp, i1 false
  br i1 %or.cond13.us.us.us.us.us.us.us.us.us.us.i, label %bb.d, label %.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i.1

bb.d:                                             ; preds = %.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i
  %i.gq = sub nsw i64 %.017.us.us.us.us.us.us.us.us.us.us.i, %i.eq
  %i.gr = mul i64 %i.gq, %i.dc
  %i.gs = load ptr, ptr %i.et, align 8, !tbaa !37
  %i.gt = getelementptr i8, ptr %i.gs, i64 %i.gr
  %i.gu = getelementptr i8, ptr %i.gt, i64 %i.ez
  %i.gv = getelementptr i8, ptr %i.gu, i64 %i.fc
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.fx
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !43
  br label %.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i.1

.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i.1: ; preds = %bb.d, %.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i
  %.sink.i = phi float [ %i.gx, %bb.d ], [ 0.000000e+00, %.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i ]
  %gep114.i = getelementptr [4 x i8], ptr %invariant.gep113.i, i64 %reass.mul15.us.us.us.us.us.us.us.us.us.us.i
  store float %.sink.i, ptr %gep114.i, align 4, !tbaa !43
  %i.gy = or disjoint i64 %.017.us.us.us.us.us.us.us.us.us.us.i, 1 ; 4 uses
  %i.gz = mul i64 %i.gy, %i.di
  %reass.add.us.us.us.us.us.us.us.us.us.us.i.1 = add i64 %i.gz, %.010851.us.us.us.i
  %reass.mul.us.us.us.us.us.us.us.us.us.us.i.1 = mul i64 %reass.add.us.us.us.us.us.us.us.us.us.us.i.1, %i.dg
  %reass.add14.us.us.us.us.us.us.us.us.us.us.i.1 = add i64 %reass.mul.us.us.us.us.us.us.us.us.us.us.i.1, %.010745.us.us.us.us.us.i
  %reass.mul15.us.us.us.us.us.us.us.us.us.us.i.1 = mul i64 %reass.add14.us.us.us.us.us.us.us.us.us.us.i.1, %i.de
  %.not138.us.us.us.us.us.us.us.us.us.us.i.1 = icmp sge i64 %i.gy, %i.eq
  %i.ha = icmp slt i64 %i.gy, %i.es
  %or.cond13.us.us.us.us.us.us.us.us.us.us.i.1 = select i1 %.not138.us.us.us.us.us.us.us.us.us.us.i.1, i1 %i.ha, i1 false
  br i1 %or.cond13.us.us.us.us.us.us.us.us.us.us.i.1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i.1
  %i.hb = sub nsw i64 %i.gy, %i.eq
  %i.hc = mul i64 %i.hb, %i.dc
  %i.hd = load ptr, ptr %i.et, align 8, !tbaa !37
  %i.he = getelementptr i8, ptr %i.hd, i64 %i.hc
  %i.hf = getelementptr i8, ptr %i.he, i64 %i.ez
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.fc
  %i.hh = getelementptr i8, ptr %i.hg, i64 %i.fx
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i.1
  %.sink.i.1 = phi float [ %i.hi, %bb.e ], [ 0.000000e+00, %.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i.1 ]
  %gep114.i.1 = getelementptr [4 x i8], ptr %invariant.gep113.i, i64 %reass.mul15.us.us.us.us.us.us.us.us.us.us.i.1
  store float %.sink.i.1, ptr %gep114.i.1, align 4, !tbaa !43
  %i.hj = add nuw nsw i64 %.017.us.us.us.us.us.us.us.us.us.us.i, 2 ; 2 uses
  %niter148.next.1 = add nuw nsw i64 %niter148, 2 ; 2 uses
  %niter148.ncmp.1 = icmp eq i64 %niter148.next.1, %unroll_iter147
  br i1 %niter148.ncmp.1, label %._crit_edge.us.us.us.us.us.us.us.i.loopexit.unr-lcssa, label %.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i, !llvm.loop !1288

._crit_edge.us.us.us.us.us.us.us.i.loopexit.unr-lcssa: ; preds = %bb.f
  br i1 %lcmp.mod145.not, label %._crit_edge.us.us.us.us.us.us.us.i, label %.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i.epil.preheader

.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i.epil.preheader: ; preds = %._crit_edge.us.us.us.us.us.us.us.i.loopexit.unr-lcssa, %.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i.preheader
  %.017.us.us.us.us.us.us.us.us.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i.preheader ], [ %i.hj, %._crit_edge.us.us.us.us.us.us.us.i.loopexit.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod146)
  %i.hk = mul i64 %.017.us.us.us.us.us.us.us.us.us.us.i.epil.init, %i.di
  %reass.add.us.us.us.us.us.us.us.us.us.us.i.epil = add i64 %i.hk, %.010851.us.us.us.i
  %reass.mul.us.us.us.us.us.us.us.us.us.us.i.epil = mul i64 %reass.add.us.us.us.us.us.us.us.us.us.us.i.epil, %i.dg
  %reass.add14.us.us.us.us.us.us.us.us.us.us.i.epil = add i64 %reass.mul.us.us.us.us.us.us.us.us.us.us.i.epil, %.010745.us.us.us.us.us.i
  %reass.mul15.us.us.us.us.us.us.us.us.us.us.i.epil = mul i64 %reass.add14.us.us.us.us.us.us.us.us.us.us.i.epil, %i.de
  %.not138.us.us.us.us.us.us.us.us.us.us.i.epil = icmp sge i64 %.017.us.us.us.us.us.us.us.us.us.us.i.epil.init, %i.eq
  %i.hl = icmp slt i64 %.017.us.us.us.us.us.us.us.us.us.us.i.epil.init, %i.es
  %or.cond13.us.us.us.us.us.us.us.us.us.us.i.epil = select i1 %.not138.us.us.us.us.us.us.us.us.us.us.i.epil, i1 %i.hl, i1 false
  br i1 %or.cond13.us.us.us.us.us.us.us.us.us.us.i.epil, label %bb.g, label %._crit_edge.us.us.us.us.us.us.us.i.loopexit.epilog-lcssa

bb.g:                                             ; preds = %.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i.epil.preheader
  %i.hm = sub nsw i64 %.017.us.us.us.us.us.us.us.us.us.us.i.epil.init, %i.eq
  %i.hn = mul i64 %i.hm, %i.dc
  %i.ho = load ptr, ptr %i.et, align 8, !tbaa !37
  %i.hp = getelementptr i8, ptr %i.ho, i64 %i.hn
  %i.hq = getelementptr i8, ptr %i.hp, i64 %i.ez
  %i.hr = getelementptr i8, ptr %i.hq, i64 %i.fc
  %i.hs = getelementptr i8, ptr %i.hr, i64 %i.fx
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !43
  br label %._crit_edge.us.us.us.us.us.us.us.i.loopexit.epilog-lcssa

._crit_edge.us.us.us.us.us.us.us.i.loopexit.epilog-lcssa: ; preds = %bb.g, %.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i.epil.preheader
  %.sink.i.epil = phi float [ %i.ht, %bb.g ], [ 0.000000e+00, %.lr.ph.split.us.split.us.split.us.us.us.us.us.us.us.us.i.epil.preheader ]
  %gep114.i.epil = getelementptr [4 x i8], ptr %invariant.gep113.i, i64 %reass.mul15.us.us.us.us.us.us.us.us.us.us.i.epil
  store float %.sink.i.epil, ptr %gep114.i.epil, align 4, !tbaa !43
  br label %._crit_edge.us.us.us.us.us.us.us.i

._crit_edge.us.us.us.us.us.us.us.i:               ; preds = %.lr.ph.split.us24.us.us.us.us.us.us.i, %.lr.ph.split.us.split.us.split.us38.us.us.us.us.us.us.i, %._crit_edge.us.us.us.us.us.us.us.i.loopexit.epilog-lcssa, %._crit_edge.us.us.us.us.us.us.us.i.loopexit.unr-lcssa, %middle.block84, %middle.block
  %i.hu = add nuw nsw i64 %.010619.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond90.not.i = icmp eq i64 %i.hu, %i.de
  br i1 %exitcond90.not.i, label %._crit_edge23.split.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.us.i, !llvm.loop !1283

._crit_edge23.split.us.us.us.us.us.us.i:          ; preds = %._crit_edge.us.us.us.us76.us.us.i, %._crit_edge.us.us.us.us.us.us.us.i
  %i.hv = add nsw i64 %.010745.us.us.us.us.us.i, %i.eu ; 2 uses
  %i.hw = icmp slt i64 %i.hv, %i.dg
  br i1 %i.hw, label %.preheader16.us.us.us.us.us.i, label %._crit_edge.split.us.split.us.us.us.us.i, !llvm.loop !1289

._crit_edge.split.us.split.us.us.us.us.i:         ; preds = %._crit_edge23.split.us.us.us.us.us.us.i
  %i.hx = add nuw nsw i64 %.010851.us.us.us.i, 1  ; 2 uses
  %exitcond91.not.i = icmp eq i64 %i.hx, %i.di
  br i1 %exitcond91.not.i, label %_ZL28ggml_compute_forward_pad_f32ILb1EEvPK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader16.lr.ph.us.us.us.i, !llvm.loop !1290

bb.h:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8277, ptr noundef nonnull @.str.2) #17
  unreachable

_ZL28ggml_compute_forward_pad_f32ILb1EEvPK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge29.i, %._crit_edge.split.us.split.us.us.us.us.i, %.lr.ph.i11, %.thread2.i, %.lr.ph.i, %.thread6.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_pad_reflect_1d(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8290, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.21) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !30
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8291, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load i32, ptr %i.i, align 8, !tbaa !51   ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load i64, ptr %i.k, align 8, !tbaa !31   ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !31   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !31   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !31   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !31   ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = load i64, ptr %i.w, align 8, !tbaa !31   ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load i64, ptr %i.y, align 8, !tbaa !31   ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !31 ; 7 uses
  %i.ac = icmp sgt i64 %i.v, 0
  br i1 %i.ac, label %.preheader97.lr.ph, label %._crit_edge119.split

.preheader97.lr.ph:                               ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !31 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !31 ; 14 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !36
  %i.al = load i32, ptr %0, align 8, !tbaa !35
  %i.am = icmp slt i64 %i.t, 1
  %i.an = sext i32 %i.al to i64                   ; 11 uses
  %i.ao = icmp sle i64 %i.r, %i.an
  %i.ap = sext i32 %i.h to i64
  %i.aq = mul i64 %i.ae, %i.ap                    ; 6 uses
  %i.ar = xor i32 %i.j, -1
  %i.as = sext i32 %i.ar to i64
  %i.at = add i64 %i.ag, %i.as
  %i.au = mul i64 %i.ae, %i.at                    ; 3 uses
  %i.av = trunc i64 %i.ai to i32
  %i.aw = icmp sgt i32 %i.av, 0                   ; 3 uses
  %wide.trip.count.i = and i64 %i.ai, 2147483647  ; 21 uses
  %.not96100 = icmp slt i32 %i.j, 1               ; 2 uses
  %i.ax = sext i32 %i.ak to i64                   ; 10 uses
  %brmerge = select i1 %i.am, i1 true, i1 %i.ao
  br i1 %brmerge, label %._crit_edge119.split, label %.preheader97.lr.ph.split.split

.preheader97.lr.ph.split.split:                   ; preds = %.preheader97.lr.ph
  %.not98 = icmp slt i32 %i.h, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !37 ; 8 uses
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !37 ; 6 uses
  br i1 %.not98, label %.preheader97.lr.ph.split.split.split.us, label %.preheader97.preheader

.preheader97.preheader:                           ; preds = %.preheader97.lr.ph.split.split
  %i.bc = add i32 %i.j, 1
  %wide.trip.count148 = zext i32 %i.bc to i64
  %i.bd = mul i64 %i.x, %i.an
  %2 = add i64 %i.bd, %i.aq                       ; 2 uses
  %i.be = mul i64 %i.x, %i.ax
  %3 = shl nuw nsw i64 %wide.trip.count.i, 2      ; 2 uses
  %i.bf = mul i64 %i.l, %i.an
  %i.bg = mul i64 %i.l, %i.ax
  %i.bh = zext nneg i32 %i.h to i64               ; 2 uses
  %i.bi = add nsw i64 %wide.trip.count148, -1     ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ba, i64 %2
  %i.bk = getelementptr i8, ptr %i.ba, i64 %2
  %i.bl = getelementptr i8, ptr %i.bk, i64 %3
  %i.bm = getelementptr i8, ptr %i.bb, i64 %i.bf
  %i.bn = getelementptr i8, ptr %i.bm, i64 %3
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 4
  %min.iters.check193 = icmp samesign ult i64 %wide.trip.count.i, 32
  %i.bo = and i64 %i.ai, 28
  %n.vec = and i64 %i.ai, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.bo, 0
  %n.vec197 = and i64 %i.ai, 2147483644           ; 3 uses
  %cmp.n201 = icmp eq i64 %wide.trip.count.i, %n.vec197
  %xtraiter277 = and i64 %i.bh, 7                 ; 3 uses
  %i.bp = icmp ult i32 %i.h, 8
  %unroll_iter = and i64 %i.bh, 2147483640
  %lcmp.mod278.not = icmp eq i64 %xtraiter277, 0
  %lcmp.mod279 = icmp ne i64 %xtraiter277, 0
  %xtraiter280 = and i64 %i.bi, 7                 ; 3 uses
  %i.bq = icmp ult i32 %i.j, 8
  %unroll_iter284 = and i64 %i.bi, -8
  %lcmp.mod282.not = icmp eq i64 %xtraiter280, 0
  %lcmp.mod283 = icmp ne i64 %xtraiter280, 0
  br label %.preheader97

.preheader97.lr.ph.split.split.split.us:          ; preds = %.preheader97.lr.ph.split.split
  br i1 %.not96100, label %.preheader97.lr.ph.split.split.split.us.split.us, label %.preheader97.lr.ph.split.split.split.us.split

.preheader97.lr.ph.split.split.split.us.split.us: ; preds = %.preheader97.lr.ph.split.split.split.us
  %invariant.gep136 = getelementptr i8, ptr %i.ba, i64 %i.aq
  br i1 %i.aw, label %.preheader97.us.us.us.preheader, label %._crit_edge119.split

.preheader97.us.us.us.preheader:                  ; preds = %.preheader97.lr.ph.split.split.split.us.split.us
  %i.br = mul i64 %i.x, %i.an
  %i.bs = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %i.bt = mul i64 %i.x, %i.ax
  %i.bu = mul i64 %i.l, %i.an
  %i.bv = mul i64 %i.l, %i.ax
  %min.iters.check246 = icmp samesign ult i64 %wide.trip.count.i, 4
  %i.bw = getelementptr i8, ptr %i.bb, i64 %i.bu
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.bs
  %i.by = getelementptr i8, ptr %i.ba, i64 %i.aq
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.br
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bs
  %min.iters.check248 = icmp samesign ult i64 %wide.trip.count.i, 32
  %i.cb = and i64 %i.ai, 28
  %n.vec250 = and i64 %i.ai, 2147483616           ; 4 uses
  %cmp.n259 = icmp eq i64 %wide.trip.count.i, %n.vec250
  %min.epilog.iters.check264 = icmp eq i64 %i.cb, 0
  %n.vec266 = and i64 %i.ai, 2147483644           ; 3 uses
  %cmp.n272 = icmp eq i64 %wide.trip.count.i, %n.vec266
  br label %.preheader97.us.us.us

.preheader97.us.us.us:                            ; preds = %.preheader97.us.us.us.preheader, %._crit_edge108.split117.us.split.us.split.us.us.us.us
  %.095118.us.us.us = phi i64 [ %i.eo, %._crit_edge108.split117.us.split.us.split.us.us.us.us ], [ 0, %.preheader97.us.us.us.preheader ] ; 5 uses
  %i.cc = mul i64 %i.ab, %.095118.us.us.us
  %i.cd = mul i64 %i.p, %.095118.us.us.us
  %i.ce = mul i64 %.095118.us.us.us, %i.ab
  %i.cf = mul i64 %.095118.us.us.us, %i.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cf
  %gep137.us = getelementptr i8, ptr %invariant.gep136, i64 %i.ce
  %i.ch = getelementptr i8, ptr %i.bx, i64 %i.cd
  %i.ci = getelementptr i8, ptr %i.ca, i64 %i.cc
  br label %.lr.ph105.us.us.us.us.us.us

.lr.ph105.us.us.us.us.us.us:                      ; preds = %._crit_edge106.split.us.split.us.split.us.us.us.us.us.us.us, %.preheader97.us.us.us
  %.094107.us.us.us.us.us.us = phi i64 [ 0, %.preheader97.us.us.us ], [ %i.en, %._crit_edge106.split.us.split.us.split.us.us.us.us.us.us.us ] ; 5 uses
  %i.cj = mul i64 %i.z, %.094107.us.us.us.us.us.us
  %i.ck = mul i64 %i.n, %.094107.us.us.us.us.us.us
  %i.cl = mul i64 %.094107.us.us.us.us.us.us, %i.z
  %i.cm = mul i64 %.094107.us.us.us.us.us.us, %i.n
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cm
  %gep.us.us.us.us = getelementptr i8, ptr %gep137.us, i64 %i.cl
  %i.co = getelementptr i8, ptr %i.ch, i64 %i.ck
  %i.cp = getelementptr i8, ptr %i.ci, i64 %i.cj
  br label %iter.check261

iter.check261:                                    ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us.us.us.us, %.lr.ph105.us.us.us.us.us.us
  %indvar239 = phi i64 [ %indvar.next240, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us.us.us.us ], [ 0, %.lr.ph105.us.us.us.us.us.us ] ; 3 uses
  %.093103.us.us.us.us.us.us.us.us.us = phi i64 [ %i.el, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us.us.us.us ], [ %i.an, %.lr.ph105.us.us.us.us.us.us ] ; 3 uses
  %i.cq = mul i64 %.093103.us.us.us.us.us.us.us.us.us, %i.x
  %gep.us.us.us.us.us.us.us = getelementptr i8, ptr %gep.us.us.us.us, i64 %i.cq ; 12 uses
  %i.cr = mul i64 %.093103.us.us.us.us.us.us.us.us.us, %i.l
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cr ; 12 uses
  br i1 %min.iters.check246, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.preheader, label %vector.memcheck238

vector.memcheck238:                               ; preds = %iter.check261
  %i.ct = mul i64 %i.bv, %indvar239
  %scevgep242 = getelementptr i8, ptr %i.co, i64 %i.ct
  %i.cu = mul i64 %i.bt, %indvar239
  %scevgep241 = getelementptr i8, ptr %i.cp, i64 %i.cu
  %bound0243 = icmp ult ptr %gep.us.us.us.us.us.us.us, %scevgep242
  %bound1244 = icmp ult ptr %i.cs, %scevgep241
  %found.conflict245 = and i1 %bound0243, %bound1244
  br i1 %found.conflict245, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.preheader, label %vector.main.loop.iter.check247

vector.main.loop.iter.check247:                   ; preds = %vector.memcheck238
  br i1 %min.iters.check248, label %vec.epilog.ph265, label %vector.body251

vector.body251:                                   ; preds = %vector.main.loop.iter.check247, %vector.body251
  %index252 = phi i64 [ %index.next257, %vector.body251 ], [ 0, %vector.main.loop.iter.check247 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %index252 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 96
  %wide.load253.a = load <8 x float>, ptr %i.cv, align 4, !tbaa !43, !alias.scope !1321
  %wide.load254.a = load <8 x float>, ptr %i.cw, align 4, !tbaa !43, !alias.scope !1321
  %wide.load255.a = load <8 x float>, ptr %i.cx, align 4, !tbaa !43, !alias.scope !1321
  %wide.load256 = load <8 x float>, ptr %i.cy, align 4, !tbaa !43, !alias.scope !1321
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %gep.us.us.us.us.us.us.us, i64 %index252 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 96
  store <8 x float> %wide.load253.a, ptr %i.cz, align 4, !tbaa !43, !alias.scope !1322, !noalias !1321
  store <8 x float> %wide.load254.a, ptr %i.da, align 4, !tbaa !43, !alias.scope !1322, !noalias !1321
  store <8 x float> %wide.load255.a, ptr %i.db, align 4, !tbaa !43, !alias.scope !1322, !noalias !1321
  store <8 x float> %wide.load256, ptr %i.dc, align 4, !tbaa !43, !alias.scope !1322, !noalias !1321
  %index.next257 = add nuw i64 %index252, 32      ; 2 uses
  %i.dd = icmp eq i64 %index.next257, %n.vec250
  br i1 %i.dd, label %middle.block258, label %vector.body251, !llvm.loop !1294

middle.block258:                                  ; preds = %vector.body251
  br i1 %cmp.n259, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us.us.us.us, label %vec.epilog.iter.check263

vec.epilog.iter.check263:                         ; preds = %middle.block258
  br i1 %min.epilog.iters.check264, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.preheader, label %vec.epilog.ph265, !prof !52

vec.epilog.ph265:                                 ; preds = %vector.main.loop.iter.check247, %vec.epilog.iter.check263
  %vec.epilog.resume.val260 = phi i64 [ %n.vec250, %vec.epilog.iter.check263 ], [ 0, %vector.main.loop.iter.check247 ]
  br label %vec.epilog.vector.body267

vec.epilog.vector.body267:                        ; preds = %vec.epilog.vector.body267, %vec.epilog.ph265
  %index268 = phi i64 [ %vec.epilog.resume.val260, %vec.epilog.ph265 ], [ %index.next270, %vec.epilog.vector.body267 ] ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %index268
  %wide.load269 = load <4 x float>, ptr %i.de, align 4, !tbaa !43, !alias.scope !1321
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %gep.us.us.us.us.us.us.us, i64 %index268
  store <4 x float> %wide.load269, ptr %i.df, align 4, !tbaa !43, !alias.scope !1322, !noalias !1321
  %index.next270 = add nuw i64 %index268, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next270, %n.vec266
  br i1 %i.dg, label %vec.epilog.middle.block271, label %vec.epilog.vector.body267, !llvm.loop !1295

vec.epilog.middle.block271:                       ; preds = %vec.epilog.vector.body267
  br i1 %cmp.n272, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.preheader

.lr.ph.i.us.us.us.us.us.us.us.us.us.preheader:    ; preds = %iter.check261, %vector.memcheck238, %vec.epilog.iter.check263, %vec.epilog.middle.block271
  %indvars.iv.i.us.us.us.us.us.us.us.us.us.ph = phi i64 [ 0, %iter.check261 ], [ 0, %vector.memcheck238 ], [ %n.vec250, %vec.epilog.iter.check263 ], [ %n.vec266, %vec.epilog.middle.block271 ] ; 4 uses
  %i.dh = sub i64 %i.ai, %indvars.iv.i.us.us.us.us.us.us.us.us.us.ph
  %xtraiter301 = and i64 %i.dh, 7                 ; 2 uses
  %lcmp.mod302.not = icmp eq i64 %xtraiter301, 0
  br i1 %lcmp.mod302.not, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.prol.loopexit, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.prol

.lr.ph.i.us.us.us.us.us.us.us.us.us.prol:         ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.preheader, %.lr.ph.i.us.us.us.us.us.us.us.us.us.prol
  %indvars.iv.i.us.us.us.us.us.us.us.us.us.prol = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.prol, %.lr.ph.i.us.us.us.us.us.us.us.us.us.prol ], [ %indvars.iv.i.us.us.us.us.us.us.us.us.us.ph, %.lr.ph.i.us.us.us.us.us.us.us.us.us.preheader ] ; 3 uses
  %prol.iter303 = phi i64 [ %prol.iter303.next, %.lr.ph.i.us.us.us.us.us.us.us.us.us.prol ], [ 0, %.lr.ph.i.us.us.us.us.us.us.us.us.us.preheader ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.prol
  %i.dj = load float, ptr %i.di, align 4, !tbaa !43
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %gep.us.us.us.us.us.us.us, i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.prol
  store float %i.dj, ptr %i.dk, align 4, !tbaa !43
  %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.prol = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter303.next = add i64 %prol.iter303, 1   ; 2 uses
  %prol.iter303.cmp.not = icmp eq i64 %prol.iter303.next, %xtraiter301
  br i1 %prol.iter303.cmp.not, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.prol.loopexit, label %.lr.ph.i.us.us.us.us.us.us.us.us.us.prol, !llvm.loop !1296

.lr.ph.i.us.us.us.us.us.us.us.us.us.prol.loopexit: ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.prol, %.lr.ph.i.us.us.us.us.us.us.us.us.us.preheader
  %indvars.iv.i.us.us.us.us.us.us.us.us.us.unr = phi i64 [ %indvars.iv.i.us.us.us.us.us.us.us.us.us.ph, %.lr.ph.i.us.us.us.us.us.us.us.us.us.preheader ], [ %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.prol, %.lr.ph.i.us.us.us.us.us.us.us.us.us.prol ]
  %i.dl = sub nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us.ph, %wide.trip.count.i
  %i.dm = icmp ugt i64 %i.dl, -8
  br i1 %i.dm, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us.us.us.us.us

.lr.ph.i.us.us.us.us.us.us.us.us.us:              ; preds = %.lr.ph.i.us.us.us.us.us.us.us.us.us.prol.loopexit, %.lr.ph.i.us.us.us.us.us.us.us.us.us
  %indvars.iv.i.us.us.us.us.us.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.7, %.lr.ph.i.us.us.us.us.us.us.us.us.us ], [ %indvars.iv.i.us.us.us.us.us.us.us.us.us.unr, %.lr.ph.i.us.us.us.us.us.us.us.us.us.prol.loopexit ] ; 10 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us
  %i.do = load float, ptr %i.dn, align 4, !tbaa !43
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %gep.us.us.us.us.us.us.us, i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us
  store float %i.do, ptr %i.dp, align 4, !tbaa !43
  %indvars.iv.next.i.us.us.us.us.us.us.us.us.us = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.us
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !43
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %gep.us.us.us.us.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.us
  store float %i.dr, ptr %i.ds, align 4, !tbaa !43
  %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us, 2 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.1
  %i.du = load float, ptr %i.dt, align 4, !tbaa !43
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %gep.us.us.us.us.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.1
  store float %i.du, ptr %i.dv, align 4, !tbaa !43
  %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.2 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us, 3 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.2
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !43
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %gep.us.us.us.us.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.2
  store float %i.dx, ptr %i.dy, align 4, !tbaa !43
  %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.3 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us, 4 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.3
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !43
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %gep.us.us.us.us.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.3
  store float %i.ea, ptr %i.eb, align 4, !tbaa !43
  %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.4 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us, 5 ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.4
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !43
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %gep.us.us.us.us.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.4
  store float %i.ed, ptr %i.ee, align 4, !tbaa !43
  %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.5 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.us.us.us, 6 ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.5
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !43
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %gep.us.us.us.us.us.us.us, i64 %indvars.iv.next.i.us.us.us.us.us.us.us.us.us.5
  store float %i.eg, ptr %i.eh, align 4, !tbaa !43
end_hunk_1
begin_hunk_2_@ggml_compute_forward_pad_reflect_1d:bb.a
  store float %i.hw, ptr %i.hy, align 4, !tbaa !43
  %i.hz = sub nuw nsw i64 -2, %indvars.iv159
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !43
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv159
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store float %i.ib, ptr %i.id, align 4, !tbaa !43
  %i.ie = sub nuw nsw i64 -3, %indvars.iv159
  %i.if = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.ie
  %i.ig = load float, ptr %i.if, align 4, !tbaa !43
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv159
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  store float %i.ig, ptr %i.ii, align 4, !tbaa !43
  %i.ij = sub nuw nsw i64 -4, %indvars.iv159
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.ij
  %i.il = load float, ptr %i.ik, align 4, !tbaa !43
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv159
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store float %i.il, ptr %i.in, align 4, !tbaa !43
  %i.io = sub nuw nsw i64 -5, %indvars.iv159
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.io
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !43
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv159
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 20
  store float %i.iq, ptr %i.is, align 4, !tbaa !43
  %i.it = sub nuw nsw i64 -6, %indvars.iv159
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.it
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !43
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv159
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  store float %i.iv, ptr %i.ix, align 4, !tbaa !43
  %i.iy = sub nuw nsw i64 -7, %indvars.iv159
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.iy
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !43
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv159
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 28
  store float %i.ja, ptr %i.jc, align 4, !tbaa !43
  %indvars.iv.next160.7 = add nuw nsw i64 %indvars.iv159, 8 ; 2 uses
  %niter300.next.7 = add i64 %niter300, 8         ; 2 uses
  %niter300.ncmp.7 = icmp eq i64 %niter300.next.7, %unroll_iter299
  br i1 %niter300.ncmp.7, label %._crit_edge.us.us.us.us.us.us.unr-lcssa, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us, !llvm.loop !1308

._crit_edge.us.us.us.us.us.us.unr-lcssa:          ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us
  br i1 %lcmp.mod297.not, label %._crit_edge.us.us.us.us.us.us, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us.epil.preheader

_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us.epil.preheader: ; preds = %._crit_edge.us.us.us.us.us.us.unr-lcssa, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us.preheader
  %indvars.iv159.epil.init = phi i64 [ 1, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us.preheader ], [ %indvars.iv.next160.7, %._crit_edge.us.us.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod298)
  br label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us.epil

_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us.epil: ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us.epil, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us.epil.preheader
  %indvars.iv159.epil = phi i64 [ %indvars.iv159.epil.init, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us.epil.preheader ], [ %indvars.iv.next160.epil, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us.epil ] ; 3 uses
  %epil.iter296 = phi i64 [ 0, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us.epil.preheader ], [ %epil.iter296.next, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us.epil ]
  %i.jd = sub nsw i64 0, %indvars.iv159.epil
  %i.je = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.jd
  %i.jf = load float, ptr %i.je, align 4, !tbaa !43
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv159.epil
  store float %i.jf, ptr %i.jg, align 4, !tbaa !43
  %indvars.iv.next160.epil = add nuw nsw i64 %indvars.iv159.epil, 1
  %epil.iter296.next = add i64 %epil.iter296, 1   ; 2 uses
  %epil.iter296.cmp.not = icmp eq i64 %epil.iter296.next, %xtraiter295
  br i1 %epil.iter296.cmp.not, label %._crit_edge.us.us.us.us.us.us, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us.epil, !llvm.loop !1309

._crit_edge.us.us.us.us.us.us:                    ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit.loopexit.us.us.us.us.us.us.epil, %._crit_edge.us.us.us.us.us.us.unr-lcssa
  %i.jh = add nsw i64 %.093103.us.us110.us.us.us.us, %i.ax ; 2 uses
  %i.ji = icmp slt i64 %i.jh, %i.r
  %indvar.next204 = add i64 %indvar203, 1
  br i1 %i.ji, label %iter.check225, label %._crit_edge106.split.us.split.us112.us.split.us.us.us, !llvm.loop !1298

._crit_edge106.split.us.split.us112.us.split.us.us.us: ; preds = %._crit_edge.us.us.us.us.us.us
  %i.jj = add nuw nsw i64 %.094107.us.us123.us.us, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %i.jj, %i.t
  br i1 %exitcond164.not, label %._crit_edge108.split117.us.split.us124.split.us.us, label %.lr.ph105.us.us122.us.us, !llvm.loop !1299

._crit_edge108.split117.us.split.us124.split.us.us: ; preds = %._crit_edge106.split.us.split.us112.us.split.us.us.us
  %i.jk = add nuw nsw i64 %.095118.us.us134, 1    ; 2 uses
  %exitcond165.not = icmp eq i64 %i.jk, %i.v
  br i1 %exitcond165.not, label %._crit_edge119.split, label %.preheader97.us.us133, !llvm.loop !1300

.preheader97.lr.ph.split.split.split.us.split.split: ; preds = %.preheader97.lr.ph.split.split.split.us.split
  %invariant.gep = getelementptr i8, ptr %i.ba, i64 %i.au
  %i.jl = zext nneg i32 %i.j to i64               ; 2 uses
  %xtraiter286 = and i64 %i.jl, 7                 ; 3 uses
  %i.jm = icmp ult i32 %i.j, 8
  %unroll_iter290 = and i64 %i.jl, 2147483640
  %lcmp.mod288.not = icmp eq i64 %xtraiter286, 0
  %lcmp.mod289 = icmp ne i64 %xtraiter286, 0
  br label %.preheader97.us

.preheader97.us:                                  ; preds = %._crit_edge108.split117.us.split.us124.split, %.preheader97.lr.ph.split.split.split.us.split.split
  %.095118.us = phi i64 [ 0, %.preheader97.lr.ph.split.split.split.us.split.split ], [ %i.lk, %._crit_edge108.split117.us.split.us124.split ] ; 2 uses
  %i.jn = mul i64 %.095118.us, %i.ab
  %gep135 = getelementptr i8, ptr %invariant.gep, i64 %i.jn
  br label %.lr.ph105.us.us122

.lr.ph105.us.us122:                               ; preds = %._crit_edge106.split.us.split.us112.us.split, %.preheader97.us
  %.094107.us.us123 = phi i64 [ 0, %.preheader97.us ], [ %i.lj, %._crit_edge106.split.us.split.us112.us.split ] ; 2 uses
  %i.jo = mul i64 %.094107.us.us123, %i.z
  %gep132 = getelementptr i8, ptr %gep135, i64 %i.jo
  br label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.us.us111.us

_ZL16ggml_vec_cpy_f32iPfPKf.exit.us.us111.us:     ; preds = %._crit_edge.us.us.us, %.lr.ph105.us.us122
  %.093103.us.us110.us = phi i64 [ %i.an, %.lr.ph105.us.us122 ], [ %i.lh, %._crit_edge.us.us.us ] ; 2 uses
  %i.jp = mul i64 %.093103.us.us110.us, %i.x
  %gep = getelementptr i8, ptr %gep132, i64 %i.jp ; 18 uses
  br i1 %i.jm, label %.epil.preheader, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.us.us111.us.new

_ZL16ggml_vec_cpy_f32iPfPKf.exit.us.us111.us.new: ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit.us.us111.us, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.us.us111.us.new
  %indvars.iv152 = phi i64 [ %indvars.iv.next153.7, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.us.us111.us.new ], [ 1, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.us.us111.us ] ; 17 uses
  %niter291 = phi i64 [ %niter291.next.7, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.us.us111.us.new ], [ 0, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.us.us111.us ]
  %i.jq = sub nsw i64 0, %indvars.iv152
  %i.jr = getelementptr inbounds [4 x i8], ptr %gep, i64 %i.jq
  %i.js = load float, ptr %i.jr, align 4, !tbaa !43
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv152
  store float %i.js, ptr %i.jt, align 4, !tbaa !43
  %i.ju = xor i64 %indvars.iv152, -1
  %i.jv = getelementptr inbounds [4 x i8], ptr %gep, i64 %i.ju
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !43
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv152
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  store float %i.jw, ptr %i.jy, align 4, !tbaa !43
  %i.jz = sub nuw nsw i64 -2, %indvars.iv152
  %i.ka = getelementptr inbounds [4 x i8], ptr %gep, i64 %i.jz
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !43
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv152
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store float %i.kb, ptr %i.kd, align 4, !tbaa !43
  %i.ke = sub nuw nsw i64 -3, %indvars.iv152
  %i.kf = getelementptr inbounds [4 x i8], ptr %gep, i64 %i.ke
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !43
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv152
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 12
  store float %i.kg, ptr %i.ki, align 4, !tbaa !43
  %i.kj = sub nuw nsw i64 -4, %indvars.iv152
  %i.kk = getelementptr inbounds [4 x i8], ptr %gep, i64 %i.kj
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !43
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv152
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  store float %i.kl, ptr %i.kn, align 4, !tbaa !43
  %i.ko = sub nuw nsw i64 -5, %indvars.iv152
  %i.kp = getelementptr inbounds [4 x i8], ptr %gep, i64 %i.ko
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !43
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv152
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 20
  store float %i.kq, ptr %i.ks, align 4, !tbaa !43
  %i.kt = sub nuw nsw i64 -6, %indvars.iv152
  %i.ku = getelementptr inbounds [4 x i8], ptr %gep, i64 %i.kt
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !43
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv152
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  store float %i.kv, ptr %i.kx, align 4, !tbaa !43
  %i.ky = sub nuw nsw i64 -7, %indvars.iv152
  %i.kz = getelementptr inbounds [4 x i8], ptr %gep, i64 %i.ky
  %i.la = load float, ptr %i.kz, align 4, !tbaa !43
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv152
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 28
  store float %i.la, ptr %i.lc, align 4, !tbaa !43
  %indvars.iv.next153.7 = add nuw nsw i64 %indvars.iv152, 8 ; 2 uses
  %niter291.next.7 = add i64 %niter291, 8         ; 2 uses
  %niter291.ncmp.7 = icmp eq i64 %niter291.next.7, %unroll_iter290
  br i1 %niter291.ncmp.7, label %._crit_edge.us.us.us.unr-lcssa, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.us.us111.us.new, !llvm.loop !1308

._crit_edge.us.us.us.unr-lcssa:                   ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit.us.us111.us.new
  br i1 %lcmp.mod288.not, label %._crit_edge.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.unr-lcssa, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.us.us111.us
  %indvars.iv152.epil.init = phi i64 [ 1, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.us.us111.us ], [ %indvars.iv.next153.7, %._crit_edge.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod289)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv152.epil = phi i64 [ %indvars.iv.next153.epil, %bb.f ], [ %indvars.iv152.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter287 = phi i64 [ %epil.iter287.next, %bb.f ], [ 0, %.epil.preheader ]
  %i.ld = sub nsw i64 0, %indvars.iv152.epil
  %i.le = getelementptr inbounds [4 x i8], ptr %gep, i64 %i.ld
  %i.lf = load float, ptr %i.le, align 4, !tbaa !43
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv152.epil
  store float %i.lf, ptr %i.lg, align 4, !tbaa !43
  %indvars.iv.next153.epil = add nuw nsw i64 %indvars.iv152.epil, 1
  %epil.iter287.next = add i64 %epil.iter287, 1   ; 2 uses
  %epil.iter287.cmp.not = icmp eq i64 %epil.iter287.next, %xtraiter286
  br i1 %epil.iter287.cmp.not, label %._crit_edge.us.us.us, label %bb.f, !llvm.loop !1310

._crit_edge.us.us.us:                             ; preds = %bb.f, %._crit_edge.us.us.us.unr-lcssa
  %i.lh = add nsw i64 %.093103.us.us110.us, %i.ax ; 2 uses
  %i.li = icmp slt i64 %i.lh, %i.r
  br i1 %i.li, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.us.us111.us, label %._crit_edge106.split.us.split.us112.us.split, !llvm.loop !1298

._crit_edge106.split.us.split.us112.us.split:     ; preds = %._crit_edge.us.us.us
  %i.lj = add nuw nsw i64 %.094107.us.us123, 1    ; 2 uses
  %exitcond157.not = icmp eq i64 %i.lj, %i.t
  br i1 %exitcond157.not, label %._crit_edge108.split117.us.split.us124.split, label %.lr.ph105.us.us122, !llvm.loop !1299

._crit_edge108.split117.us.split.us124.split:     ; preds = %._crit_edge106.split.us.split.us112.us.split
  %i.lk = add nuw nsw i64 %.095118.us, 1          ; 2 uses
  %exitcond158.not = icmp eq i64 %i.lk, %i.v
  br i1 %exitcond158.not, label %._crit_edge119.split, label %.preheader97.us, !llvm.loop !1300

.preheader97:                                     ; preds = %.preheader97.preheader, %._crit_edge108.split117
  %.095118 = phi i64 [ %i.lt, %._crit_edge108.split117 ], [ 0, %.preheader97.preheader ] ; 5 uses
  %i.ll = mul i64 %i.ab, %.095118                 ; 2 uses
  %i.lm = mul i64 %i.p, %.095118
  %i.ln = mul i64 %.095118, %i.ab
  %i.lo = mul i64 %.095118, %i.p
  %4 = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ln
  %i.lp = getelementptr i8, ptr %i.bb, i64 %i.lo
  %i.lq = getelementptr i8, ptr %i.bj, i64 %i.ll
  %i.lr = getelementptr i8, ptr %i.bl, i64 %i.ll
  %i.ls = getelementptr i8, ptr %i.bn, i64 %i.lm
  br label %.lr.ph105

._crit_edge119.split:                             ; preds = %._crit_edge108.split117, %._crit_edge108.split117.us.split.us124.split, %._crit_edge108.split117.us.split.us124.split.us.us, %._crit_edge108.split117.us.split.us.split.us.us.us.us, %.preheader97.lr.ph.split.split.split.us.split.us, %.preheader97.lr.ph, %bb.e
  ret void

._crit_edge108.split117:                          ; preds = %._crit_edge106.split
  %i.lt = add nuw nsw i64 %.095118, 1             ; 2 uses
  %exitcond151.not = icmp eq i64 %i.lt, %i.v
  br i1 %exitcond151.not, label %._crit_edge119.split, label %.preheader97, !llvm.loop !1300

.lr.ph105:                                        ; preds = %.preheader97, %._crit_edge106.split
  %.094107 = phi i64 [ 0, %.preheader97 ], [ %i.mc, %._crit_edge106.split ] ; 5 uses
  %i.lu = mul i64 %i.z, %.094107                  ; 2 uses
  %i.lv = mul i64 %i.n, %.094107
  %i.lw = mul i64 %.094107, %i.z
  %i.lx = getelementptr inbounds nuw i8, ptr %4, i64 %i.lw
  %i.ly = mul i64 %.094107, %i.n
  %5 = getelementptr i8, ptr %i.lp, i64 %i.ly
  %i.lz = getelementptr i8, ptr %i.lq, i64 %i.lu
  %i.ma = getelementptr i8, ptr %i.lr, i64 %i.lu
  %i.mb = getelementptr i8, ptr %i.ls, i64 %i.lv
  br label %bb.g

._crit_edge106.split:                             ; preds = %._crit_edge
  %i.mc = add nuw nsw i64 %.094107, 1             ; 2 uses
  %exitcond150.not = icmp eq i64 %i.mc, %i.t
  br i1 %exitcond150.not, label %._crit_edge108.split117, label %.lr.ph105, !llvm.loop !1299

bb.g:                                             ; preds = %.lr.ph105, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph105 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %.093103 = phi i64 [ %i.an, %.lr.ph105 ], [ %i.pw, %._crit_edge ] ; 3 uses
  %i.md = mul i64 %i.be, %indvar                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.lz, i64 %i.md
  %scevgep191.a = getelementptr i8, ptr %i.ma, i64 %i.md
  %i.me = mul i64 %i.bg, %indvar
  %scevgep192 = getelementptr i8, ptr %i.mb, i64 %i.me
  %i.mf = mul i64 %.093103, %i.x
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.mf ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.aq ; 29 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.au ; 18 uses
  %i.mj = mul i64 %.093103, %i.l
  %i.mk = getelementptr i8, ptr %5, i64 %i.mj     ; 12 uses
  br i1 %i.aw, label %iter.check, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.preheader

_ZL16ggml_vec_cpy_f32iPfPKf.exit.preheader:       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.g
  br i1 %i.bp, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil.preheader, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit

iter.check:                                       ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %bound0 = icmp ult ptr %scevgep, %scevgep192
  %bound1 = icmp ult ptr %i.mk, %scevgep191.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check193, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %index ; 4 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 32
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 96
  %wide.load = load <8 x float>, ptr %i.ml, align 4, !tbaa !43, !alias.scope !1325
  %wide.load194.a = load <8 x float>, ptr %i.mm, align 4, !tbaa !43, !alias.scope !1325
  %wide.load195.a = load <8 x float>, ptr %i.mn, align 4, !tbaa !43, !alias.scope !1325
  %wide.load196 = load <8 x float>, ptr %i.mo, align 4, !tbaa !43, !alias.scope !1325
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %index ; 4 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 32
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 64
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 96
  store <8 x float> %wide.load, ptr %i.mp, align 4, !tbaa !43, !alias.scope !1326, !noalias !1325
  store <8 x float> %wide.load194.a, ptr %i.mq, align 4, !tbaa !43, !alias.scope !1326, !noalias !1325
  store <8 x float> %wide.load195.a, ptr %i.mr, align 4, !tbaa !43, !alias.scope !1326, !noalias !1325
  store <8 x float> %wide.load196, ptr %i.ms, align 4, !tbaa !43, !alias.scope !1326, !noalias !1325
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.mt = icmp eq i64 %index.next, %n.vec
  br i1 %i.mt, label %middle.block, label %vector.body, !llvm.loop !1314

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index198 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next200, %vec.epilog.vector.body ] ; 3 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %index198
  %wide.load199 = load <4 x float>, ptr %i.mu, align 4, !tbaa !43, !alias.scope !1325
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %index198
  store <4 x float> %wide.load199, ptr %i.mv, align 4, !tbaa !43, !alias.scope !1326, !noalias !1325
  %index.next200 = add nuw i64 %index198, 4       ; 2 uses
  %i.mw = icmp eq i64 %index.next200, %n.vec197
  br i1 %i.mw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1315

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n201, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec197, %vec.epilog.middle.block ] ; 4 uses
  %i.mx = sub i64 %i.ai, %indvars.iv.i.ph
  %xtraiter = and i64 %i.mx, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv.i.prol
  %i.mz = load float, ptr %i.my, align 4, !tbaa !43
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv.i.prol
  store float %i.mz, ptr %i.na, align 4, !tbaa !43
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1316

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.nb = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.nc = icmp ugt i64 %i.nb, -8
  br i1 %i.nc, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv.i
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !43
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv.i
  store float %i.ne, ptr %i.nf, align 4, !tbaa !43
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv.next.i
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !43
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv.next.i
  store float %i.nh, ptr %i.ni, align 4, !tbaa !43
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv.next.i.1
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !43
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv.next.i.1
  store float %i.nk, ptr %i.nl, align 4, !tbaa !43
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv.next.i.2
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !43
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv.next.i.2
  store float %i.nn, ptr %i.no, align 4, !tbaa !43
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv.next.i.3
  %i.nq = load float, ptr %i.np, align 4, !tbaa !43
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv.next.i.3
  store float %i.nq, ptr %i.nr, align 4, !tbaa !43
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv.next.i.4
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !43
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv.next.i.4
  store float %i.nt, ptr %i.nu, align 4, !tbaa !43
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6 ; 2 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv.next.i.5
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !43
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv.next.i.5
  store float %i.nw, ptr %i.nx, align 4, !tbaa !43
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %indvars.iv.next.i.6
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !43
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv.next.i.6
  store float %i.nz, ptr %i.oa, align 4, !tbaa !43
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.preheader, label %.lr.ph.i, !llvm.loop !1317

..preheader_crit_edge.unr-lcssa:                  ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit
  br i1 %lcmp.mod278.not, label %..preheader_crit_edge, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil.preheader

_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil.preheader:  ; preds = %..preheader_crit_edge.unr-lcssa, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.preheader ], [ %indvars.iv.next.7, %..preheader_crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod279)
  br label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil

_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil:            ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil ], [ %indvars.iv.epil.init, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil ], [ 0, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil.preheader ]
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv.epil
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !43
  %i.od = sub nsw i64 0, %indvars.iv.epil
  %i.oe = getelementptr inbounds [4 x i8], ptr %i.mh, i64 %i.od
  store float %i.oc, ptr %i.oe, align 4, !tbaa !43
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter277
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil, !llvm.loop !1318

..preheader_crit_edge:                            ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit.epil, %..preheader_crit_edge.unr-lcssa
  br i1 %.not96100, label %._crit_edge, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %..preheader_crit_edge
  br i1 %i.bq, label %.lr.ph102.epil.preheader, label %.lr.ph102

_ZL16ggml_vec_cpy_f32iPfPKf.exit:                 ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit.preheader, %_ZL16ggml_vec_cpy_f32iPfPKf.exit
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %_ZL16ggml_vec_cpy_f32iPfPKf.exit ], [ 1, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.preheader ] ; 17 uses
  %niter = phi i64 [ %niter.next.7, %_ZL16ggml_vec_cpy_f32iPfPKf.exit ], [ 0, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.preheader ]
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv
  %i.og = load float, ptr %i.of, align 4, !tbaa !43
  %i.oh = sub nsw i64 0, %indvars.iv
  %i.oi = getelementptr inbounds [4 x i8], ptr %i.mh, i64 %i.oh
  store float %i.og, ptr %i.oi, align 4, !tbaa !43
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !43
  %i.om = xor i64 %indvars.iv, -1
  %i.on = getelementptr inbounds [4 x i8], ptr %i.mh, i64 %i.om
  store float %i.ol, ptr %i.on, align 4, !tbaa !43
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load float, ptr %i.op, align 4, !tbaa !43
  %i.or = sub nuw nsw i64 -2, %indvars.iv
  %i.os = getelementptr inbounds [4 x i8], ptr %i.mh, i64 %i.or
  store float %i.oq, ptr %i.os, align 4, !tbaa !43
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 12
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !43
  %i.ow = sub nuw nsw i64 -3, %indvars.iv
  %i.ox = getelementptr inbounds [4 x i8], ptr %i.mh, i64 %i.ow
  store float %i.ov, ptr %i.ox, align 4, !tbaa !43
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !43
  %i.pb = sub nuw nsw i64 -4, %indvars.iv
  %i.pc = getelementptr inbounds [4 x i8], ptr %i.mh, i64 %i.pb
  store float %i.pa, ptr %i.pc, align 4, !tbaa !43
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 20
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !43
  %i.pg = sub nuw nsw i64 -5, %indvars.iv
  %i.ph = getelementptr inbounds [4 x i8], ptr %i.mh, i64 %i.pg
  store float %i.pf, ptr %i.ph, align 4, !tbaa !43
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 24
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !43
  %i.pl = sub nuw nsw i64 -6, %indvars.iv
  %i.pm = getelementptr inbounds [4 x i8], ptr %i.mh, i64 %i.pl
  store float %i.pk, ptr %i.pm, align 4, !tbaa !43
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 28
  %i.pp = load float, ptr %i.po, align 4, !tbaa !43
  %i.pq = sub nuw nsw i64 -7, %indvars.iv
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.mh, i64 %i.pq
  store float %i.pp, ptr %i.pr, align 4, !tbaa !43
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %..preheader_crit_edge.unr-lcssa, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit, !llvm.loop !1319

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph102
  br i1 %lcmp.mod282.not, label %._crit_edge, label %.lr.ph102.epil.preheader

.lr.ph102.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph102.preheader
  %indvars.iv145.epil.init = phi i64 [ 1, %.lr.ph102.preheader ], [ %indvars.iv.next146.7, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod283)
  br label %.lr.ph102.epil

.lr.ph102.epil:                                   ; preds = %.lr.ph102.epil, %.lr.ph102.epil.preheader
  %indvars.iv145.epil = phi i64 [ %indvars.iv.next146.epil, %.lr.ph102.epil ], [ %indvars.iv145.epil.init, %.lr.ph102.epil.preheader ] ; 3 uses
  %epil.iter281 = phi i64 [ %epil.iter281.next, %.lr.ph102.epil ], [ 0, %.lr.ph102.epil.preheader ]
  %i.ps = sub nsw i64 0, %indvars.iv145.epil
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.ps
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !43
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv145.epil
  store float %i.pu, ptr %i.pv, align 4, !tbaa !43
  %indvars.iv.next146.epil = add nuw nsw i64 %indvars.iv145.epil, 1
  %epil.iter281.next = add i64 %epil.iter281, 1   ; 2 uses
  %epil.iter281.cmp.not = icmp eq i64 %epil.iter281.next, %xtraiter280
  br i1 %epil.iter281.cmp.not, label %._crit_edge, label %.lr.ph102.epil, !llvm.loop !1320

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph102.epil, %..preheader_crit_edge
  %i.pw = add nsw i64 %.093103, %i.ax             ; 2 uses
  %i.px = icmp slt i64 %i.pw, %i.r
  %indvar.next = add i64 %indvar, 1
  br i1 %i.px, label %bb.g, label %._crit_edge106.split, !llvm.loop !1298

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %.lr.ph102
  %indvars.iv145 = phi i64 [ %indvars.iv.next146.7, %.lr.ph102 ], [ 1, %.lr.ph102.preheader ] ; 17 uses
  %niter285 = phi i64 [ %niter285.next.7, %.lr.ph102 ], [ 0, %.lr.ph102.preheader ]
  %i.py = sub nsw i64 0, %indvars.iv145
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.py
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !43
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv145
  store float %i.qa, ptr %i.qb, align 4, !tbaa !43
  %i.qc = xor i64 %indvars.iv145, -1
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.qc
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !43
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv145
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 4
  store float %i.qe, ptr %i.qg, align 4, !tbaa !43
  %i.qh = sub nuw nsw i64 -2, %indvars.iv145
  %i.qi = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.qh
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !43
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv145
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  store float %i.qj, ptr %i.ql, align 4, !tbaa !43
  %i.qm = sub nuw nsw i64 -3, %indvars.iv145
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.qm
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !43
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv145
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 12
  store float %i.qo, ptr %i.qq, align 4, !tbaa !43
  %i.qr = sub nuw nsw i64 -4, %indvars.iv145
  %i.qs = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.qr
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !43
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv145
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  store float %i.qt, ptr %i.qv, align 4, !tbaa !43
  %i.qw = sub nuw nsw i64 -5, %indvars.iv145
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.qw
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !43
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv145
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 20
  store float %i.qy, ptr %i.ra, align 4, !tbaa !43
  %i.rb = sub nuw nsw i64 -6, %indvars.iv145
  %i.rc = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.rb
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !43
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv145
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  store float %i.rd, ptr %i.rf, align 4, !tbaa !43
  %i.rg = sub nuw nsw i64 -7, %indvars.iv145
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.rg
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !43
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv145
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 28
  store float %i.ri, ptr %i.rk, align 4, !tbaa !43
  %indvars.iv.next146.7 = add nuw nsw i64 %indvars.iv145, 8 ; 2 uses
  %niter285.next.7 = add i64 %niter285, 8         ; 2 uses
  %niter285.ncmp.7 = icmp eq i64 %niter285.next.7, %unroll_iter284
  br i1 %niter285.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph102, !llvm.loop !1308
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_roll(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 9 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %cond = icmp eq i32 %i.c, 0
  br i1 %cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %2 = load i64, ptr %i.i, align 8, !tbaa !31     ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %4 = load i64, ptr %3, align 8, !tbaa !31       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.o = load i64, ptr %i.n, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.q = load i64, ptr %i.p, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load i64, ptr %i.r, align 8, !tbaa !31     ; 3 uses
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load i64, ptr %6, align 8, !tbaa !31     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !31
  %i.ab = mul nsw i64 %i.s, %5                    ; 2 uses
  %i.ac = mul nsw i64 %i.ab, %i.u                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !36
  %i.af = sext i32 %i.ae to i64                   ; 2 uses
  %i.ag = add nsw i64 %i.ac, %i.af
  %i.ah = sdiv i64 %i.ag, %i.af                   ; 2 uses
  %i.ai = load i32, ptr %0, align 8, !tbaa !35
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i64 %i.ah, %i.aj                ; 3 uses
  %i.al = add nsw i64 %i.ak, %i.ah
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.ac, i64 %i.al) ; 2 uses
  %i.am = icmp slt i64 %i.ak, %.sroa.speculated.i
  br i1 %i.am, label %.lr.ph.i, label %_ZL29ggml_compute_forward_roll_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.an = ptrtoaddr ptr %i.e to i64               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 96
  %7 = load i32, ptr %i.ao, align 8, !tbaa !51
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ap = load i32, ptr %8, align 4, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 88
  %9 = load i32, ptr %i.aq, align 8, !tbaa !51
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !51 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !31 ; 4 uses
  %10 = sext i32 %9 to i64
  %11 = sext i32 %i.ap to i64
  %i.av = sext i32 %7 to i64
  %i.aw = sub i32 0, %i.as
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = icmp sgt i32 %i.as, 0
  %.not.i114.i = icmp sgt i64 %i.au, %i.ax
  %i.az = select i1 %.not.i114.i, i64 0, i64 %i.au
  %i.ba = sub i64 0, %i.az
  %.0.p.i115.i = select i1 %i.ay, i64 %i.au, i64 %i.ba ; 2 uses
  %.0.i116.i = add i64 %.0.p.i115.i, %i.ax        ; 8 uses
  %i.bb = sub i64 %i.au, %.0.i116.i               ; 8 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = icmp sgt i32 %i.bc, 0
  %wide.trip.count.i.i = and i64 %i.bb, 2147483647 ; 6 uses
  %i.be = trunc i64 %.0.i116.i to i32
  %i.bf = icmp sgt i32 %i.be, 0
  %wide.trip.count.i118.i = and i64 %.0.i116.i, 2147483647 ; 6 uses
  %i.bg = shl i64 %i.bb, 2
  %i.bh = add i64 %i.bg, %i.h
  %i.bi = shl i64 %.0.p.i115.i, 2
  %i.bj = add i64 %i.bi, %i.an
  %i.bk = sext i32 %i.as to i64
  %i.bl = shl nsw i64 %i.bk, 2
  %min.iters.check19.a = icmp samesign ult i64 %wide.trip.count.i.i, 4
  %invariant.op = add i64 %i.h, %i.bl
  %min.iters.check21 = icmp samesign ult i64 %wide.trip.count.i.i, 32
  %i.bm = and i64 %i.bb, 28
  %n.vec23 = and i64 %i.bb, 2147483616            ; 4 uses
  %cmp.n32 = icmp eq i64 %wide.trip.count.i.i, %n.vec23
  %min.epilog.iters.check37 = icmp eq i64 %i.bm, 0
  %n.vec39 = and i64 %i.bb, 2147483644            ; 3 uses
  %cmp.n45 = icmp eq i64 %wide.trip.count.i.i, %n.vec39
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i118.i, 4
  %min.iters.check8 = icmp samesign ult i64 %wide.trip.count.i118.i, 32
  %i.bn = and i64 %.0.i116.i, 28
  %n.vec = and i64 %.0.i116.i, 2147483616         ; 4 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i118.i, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  %n.vec12 = and i64 %.0.i116.i, 2147483644       ; 3 uses
  %cmp.n16 = icmp eq i64 %wide.trip.count.i118.i, %n.vec12
  br label %bb.c

bb.c:                                             ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit123.i, %.lr.ph.i
  %.0127.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %i.fx, %_ZL16ggml_vec_cpy_f32iPfPKf.exit123.i ] ; 4 uses
  %12 = srem i64 %.0127.i, %5                     ; 2 uses
  %i.bo = sdiv i64 %.0127.i, %5
  %13 = srem i64 %i.bo, %i.s                      ; 2 uses
  %14 = sdiv i64 %.0127.i, %i.ab                  ; 2 uses
  %15 = mul i64 %14, %i.aa
  %i.bp = mul i64 %13, %i.y
  %i.bq = mul i64 %12, %i.w
  %i.br = add i64 %i.bp, %i.bq
  %i.bs = add i64 %i.br, %15                      ; 3 uses
  %i.bt = lshr i64 %i.bs, 2
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bt ; 12 uses
  %16 = sub i64 %12, %10                          ; 3 uses
  %17 = icmp slt i64 %16, 0
  %.not.i.i = icmp slt i64 %16, %2
  %18 = select i1 %.not.i.i, i64 0, i64 %2
  %19 = sub i64 0, %18
  %.0.p.i.i = select i1 %17, i64 %2, i64 %19
  %.0.i.i = add i64 %.0.p.i.i, %16
  %20 = sub i64 %13, %11                          ; 3 uses
  %21 = icmp slt i64 %20, 0
  %.not.i108.i = icmp slt i64 %20, %4
  %22 = select i1 %.not.i108.i, i64 0, i64 %4
  %23 = sub i64 0, %22
  %.0.p.i109.i = select i1 %21, i64 %4, i64 %23
  %.0.i110.i = add i64 %.0.p.i109.i, %20
  %i.bv = sub i64 %14, %i.av                      ; 3 uses
  %i.bw = icmp slt i64 %i.bv, 0
  %.not.i111.i = icmp slt i64 %i.bv, %i.k
  %i.bx = select i1 %.not.i111.i, i64 0, i64 %i.k
  %i.by = sub i64 0, %i.bx
  %.0.p.i112.i = select i1 %i.bw, i64 %i.k, i64 %i.by
  %.0.i113.i = add i64 %.0.p.i112.i, %i.bv
  %i.bz = mul i64 %.0.i113.i, %i.q                ; 3 uses
  %i.ca = mul i64 %.0.i110.i, %i.o                ; 3 uses
  %i.cb = mul i64 %.0.i.i, %i.m                   ; 3 uses
  %i.cc = add i64 %i.ca, %i.cb
  %i.cd = add i64 %i.cc, %i.bz
  %i.ce = lshr i64 %i.cd, 2
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ce ; 12 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %.0.i116.i ; 11 uses
  br i1 %i.bd, label %iter.check34, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.i

iter.check34:                                     ; preds = %bb.c
  br i1 %min.iters.check19.a, label %.lr.ph.i.i.preheader, label %vector.memcheck17

vector.memcheck17:                                ; preds = %iter.check34
  %i.ch = and i64 %i.bs, -4
  %24 = add i64 %i.ca, %i.cb
  %25 = add i64 %24, %i.bz
  %i.ci = and i64 %25, -4
  %i.cj = add i64 %i.bj, %i.ci
  %.reass = add i64 %i.ch, %invariant.op
  %i.ck = sub i64 %i.cj, %.reass
  %diff.check18 = icmp ugt i64 %i.ck, -128
  br i1 %diff.check18, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check20

vector.main.loop.iter.check20:                    ; preds = %vector.memcheck17
  br i1 %min.iters.check21, label %vec.epilog.ph38, label %vector.body24

vector.body24:                                    ; preds = %vector.main.loop.iter.check20, %vector.body24
  %index25 = phi i64 [ %index.next30, %vector.body24 ], [ 0, %vector.main.loop.iter.check20 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index25 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  %wide.load26.a = load <8 x float>, ptr %i.cl, align 4, !tbaa !43
  %wide.load27.a = load <8 x float>, ptr %i.cm, align 4, !tbaa !43
  %wide.load28 = load <8 x float>, ptr %i.cn, align 4, !tbaa !43
  %wide.load29 = load <8 x float>, ptr %i.co, align 4, !tbaa !43
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %index25 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  store <8 x float> %wide.load26.a, ptr %i.cp, align 4, !tbaa !43
  store <8 x float> %wide.load27.a, ptr %i.cq, align 4, !tbaa !43
  store <8 x float> %wide.load28, ptr %i.cr, align 4, !tbaa !43
  store <8 x float> %wide.load29, ptr %i.cs, align 4, !tbaa !43
  %index.next30 = add nuw i64 %index25, 32        ; 2 uses
  %i.ct = icmp eq i64 %index.next30, %n.vec23
  br i1 %i.ct, label %middle.block31, label %vector.body24, !llvm.loop !1327

middle.block31:                                   ; preds = %vector.body24
  br i1 %cmp.n32, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.i, label %vec.epilog.iter.check36

vec.epilog.iter.check36:                          ; preds = %middle.block31
  br i1 %min.epilog.iters.check37, label %.lr.ph.i.i.preheader, label %vec.epilog.ph38, !prof !52

vec.epilog.ph38:                                  ; preds = %vector.main.loop.iter.check20, %vec.epilog.iter.check36
  %vec.epilog.resume.val33 = phi i64 [ %n.vec23, %vec.epilog.iter.check36 ], [ 0, %vector.main.loop.iter.check20 ]
  br label %vec.epilog.vector.body40

vec.epilog.vector.body40:                         ; preds = %vec.epilog.vector.body40, %vec.epilog.ph38
  %index41 = phi i64 [ %vec.epilog.resume.val33, %vec.epilog.ph38 ], [ %index.next43, %vec.epilog.vector.body40 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index41
  %wide.load42 = load <4 x float>, ptr %i.cu, align 4, !tbaa !43
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %index41
  store <4 x float> %wide.load42, ptr %i.cv, align 4, !tbaa !43
  %index.next43 = add nuw i64 %index41, 4         ; 2 uses
  %i.cw = icmp eq i64 %index.next43, %n.vec39
  br i1 %i.cw, label %vec.epilog.middle.block44, label %vec.epilog.vector.body40, !llvm.loop !1328

vec.epilog.middle.block44:                        ; preds = %vec.epilog.vector.body40
  br i1 %cmp.n45, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check34, %vector.memcheck17, %vec.epilog.iter.check36, %vec.epilog.middle.block44
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check34 ], [ 0, %vector.memcheck17 ], [ %n.vec23, %vec.epilog.iter.check36 ], [ %n.vec39, %vec.epilog.middle.block44 ] ; 4 uses
  %i.cx = sub i64 %i.bb, %indvars.iv.i.i.ph
  %xtraiter = and i64 %i.cx, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.i.i.prol
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !43
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i.prol
  store float %i.cz, ptr %i.da, align 4, !tbaa !43
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1329

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.db = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.dc = icmp ugt i64 %i.db, -8
  br i1 %i.dc, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.i.i
  %i.de = load float, ptr %i.dd, align 4, !tbaa !43
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.i.i
  store float %i.de, ptr %i.df, align 4, !tbaa !43
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next.i.i
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !43
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next.i.i
  store float %i.dh, ptr %i.di, align 4, !tbaa !43
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next.i.i.1
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !43
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next.i.i.1
  store float %i.dk, ptr %i.dl, align 4, !tbaa !43
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next.i.i.2
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !43
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next.i.i.2
  store float %i.dn, ptr %i.do, align 4, !tbaa !43
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next.i.i.3
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !43
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next.i.i.3
  store float %i.dq, ptr %i.dr, align 4, !tbaa !43
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next.i.i.4
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !43
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next.i.i.4
  store float %i.dt, ptr %i.du, align 4, !tbaa !43
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next.i.i.5
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !43
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next.i.i.5
  store float %i.dw, ptr %i.dx, align 4, !tbaa !43
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next.i.i.6
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !43
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next.i.i.6
  store float %i.dz, ptr %i.ea, align 4, !tbaa !43
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.7, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit.i, label %.lr.ph.i.i, !llvm.loop !1330

_ZL16ggml_vec_cpy_f32iPfPKf.exit.i:               ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block31, %vec.epilog.middle.block44, %bb.c
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bb ; 11 uses
  br i1 %i.bf, label %iter.check, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit123.i

iter.check:                                       ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit.i
  br i1 %min.iters.check, label %.lr.ph.i119.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ec = and i64 %i.bs, -4
  %26 = add i64 %i.ca, %i.cb
  %27 = add i64 %26, %i.bz
  %i.ed = and i64 %27, -4
  %i.ee = add i64 %i.bh, %i.ec
  %i.ef = add i64 %i.ed, %i.an
  %i.eg = sub i64 %i.ef, %i.ee
  %diff.check = icmp ugt i64 %i.eg, -128
  br i1 %diff.check, label %.lr.ph.i119.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 96
  %wide.load = load <8 x float>, ptr %i.eh, align 4, !tbaa !43
  %wide.load9.a = load <8 x float>, ptr %i.ei, align 4, !tbaa !43
  %wide.load10 = load <8 x float>, ptr %i.ej, align 4, !tbaa !43
  %wide.load11 = load <8 x float>, ptr %i.ek, align 4, !tbaa !43
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %index ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 96
  store <8 x float> %wide.load, ptr %i.el, align 4, !tbaa !43
  store <8 x float> %wide.load9.a, ptr %i.em, align 4, !tbaa !43
  store <8 x float> %wide.load10, ptr %i.en, align 4, !tbaa !43
  store <8 x float> %wide.load11, ptr %i.eo, align 4, !tbaa !43
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !1331

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit123.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i119.i.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index13
  %wide.load14 = load <4 x float>, ptr %i.eq, align 4, !tbaa !43
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %index13
  store <4 x float> %wide.load14, ptr %i.er, align 4, !tbaa !43
  %index.next15 = add nuw i64 %index13, 4         ; 2 uses
  %i.es = icmp eq i64 %index.next15, %n.vec12
  br i1 %i.es, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1332

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n16, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit123.i, label %.lr.ph.i119.i.preheader

.lr.ph.i119.i.preheader:                          ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i120.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ] ; 4 uses
  %i.et = sub i64 %.0.i116.i, %indvars.iv.i120.i.ph
  %xtraiter47 = and i64 %i.et, 7                  ; 2 uses
  %lcmp.mod48.not = icmp eq i64 %xtraiter47, 0
  br i1 %lcmp.mod48.not, label %.lr.ph.i119.i.prol.loopexit, label %.lr.ph.i119.i.prol

.lr.ph.i119.i.prol:                               ; preds = %.lr.ph.i119.i.preheader, %.lr.ph.i119.i.prol
  %indvars.iv.i120.i.prol = phi i64 [ %indvars.iv.next.i121.i.prol, %.lr.ph.i119.i.prol ], [ %indvars.iv.i120.i.ph, %.lr.ph.i119.i.preheader ] ; 3 uses
  %prol.iter49 = phi i64 [ %prol.iter49.next, %.lr.ph.i119.i.prol ], [ 0, %.lr.ph.i119.i.preheader ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i120.i.prol
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !43
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i120.i.prol
  store float %i.ev, ptr %i.ew, align 4, !tbaa !43
  %indvars.iv.next.i121.i.prol = add nuw nsw i64 %indvars.iv.i120.i.prol, 1 ; 2 uses
  %prol.iter49.next = add i64 %prol.iter49, 1     ; 2 uses
  %prol.iter49.cmp.not = icmp eq i64 %prol.iter49.next, %xtraiter47
  br i1 %prol.iter49.cmp.not, label %.lr.ph.i119.i.prol.loopexit, label %.lr.ph.i119.i.prol, !llvm.loop !1333

.lr.ph.i119.i.prol.loopexit:                      ; preds = %.lr.ph.i119.i.prol, %.lr.ph.i119.i.preheader
  %indvars.iv.i120.i.unr = phi i64 [ %indvars.iv.i120.i.ph, %.lr.ph.i119.i.preheader ], [ %indvars.iv.next.i121.i.prol, %.lr.ph.i119.i.prol ]
  %i.ex = sub nsw i64 %indvars.iv.i120.i.ph, %wide.trip.count.i118.i
  %i.ey = icmp ugt i64 %i.ex, -8
  br i1 %i.ey, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit123.i, label %.lr.ph.i119.i

.lr.ph.i119.i:                                    ; preds = %.lr.ph.i119.i.prol.loopexit, %.lr.ph.i119.i
  %indvars.iv.i120.i = phi i64 [ %indvars.iv.next.i121.i.7, %.lr.ph.i119.i ], [ %indvars.iv.i120.i.unr, %.lr.ph.i119.i.prol.loopexit ] ; 10 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i120.i
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !43
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i120.i
  store float %i.fa, ptr %i.fb, align 4, !tbaa !43
  %indvars.iv.next.i121.i = add nuw nsw i64 %indvars.iv.i120.i, 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i121.i
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !43
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.i121.i
  store float %i.fd, ptr %i.fe, align 4, !tbaa !43
  %indvars.iv.next.i121.i.1 = add nuw nsw i64 %indvars.iv.i120.i, 2 ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i121.i.1
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !43
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.i121.i.1
  store float %i.fg, ptr %i.fh, align 4, !tbaa !43
  %indvars.iv.next.i121.i.2 = add nuw nsw i64 %indvars.iv.i120.i, 3 ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i121.i.2
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !43
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.i121.i.2
  store float %i.fj, ptr %i.fk, align 4, !tbaa !43
  %indvars.iv.next.i121.i.3 = add nuw nsw i64 %indvars.iv.i120.i, 4 ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i121.i.3
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !43
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.i121.i.3
  store float %i.fm, ptr %i.fn, align 4, !tbaa !43
  %indvars.iv.next.i121.i.4 = add nuw nsw i64 %indvars.iv.i120.i, 5 ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i121.i.4
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !43
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.i121.i.4
  store float %i.fp, ptr %i.fq, align 4, !tbaa !43
  %indvars.iv.next.i121.i.5 = add nuw nsw i64 %indvars.iv.i120.i, 6 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i121.i.5
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !43
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.i121.i.5
  store float %i.fs, ptr %i.ft, align 4, !tbaa !43
  %indvars.iv.next.i121.i.6 = add nuw nsw i64 %indvars.iv.i120.i, 7 ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next.i121.i.6
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !43
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.i121.i.6
  store float %i.fv, ptr %i.fw, align 4, !tbaa !43
  %indvars.iv.next.i121.i.7 = add nuw nsw i64 %indvars.iv.i120.i, 8 ; 2 uses
  %exitcond.not.i122.i.7 = icmp eq i64 %indvars.iv.next.i121.i.7, %wide.trip.count.i118.i
  br i1 %exitcond.not.i122.i.7, label %_ZL16ggml_vec_cpy_f32iPfPKf.exit123.i, label %.lr.ph.i119.i, !llvm.loop !1334

_ZL16ggml_vec_cpy_f32iPfPKf.exit123.i:            ; preds = %.lr.ph.i119.i.prol.loopexit, %.lr.ph.i119.i, %middle.block, %vec.epilog.middle.block, %_ZL16ggml_vec_cpy_f32iPfPKf.exit.i
  %i.fx = add nsw i64 %.0127.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fx, %.sroa.speculated.i
  br i1 %exitcond.not.i, label %_ZL29ggml_compute_forward_roll_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %bb.c, !llvm.loop !1335

_ZL29ggml_compute_forward_roll_f32PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %_ZL16ggml_vec_cpy_f32iPfPKf.exit123.i, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8379, ptr noundef nonnull @.str.2) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_arange(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !30
  %cond = icmp eq i32 %i.a, 0
  br i1 %cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !31
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8390, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.43) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = load i32, ptr %0, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !36   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.i = load float, ptr %i.h, align 4, !tbaa !43 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load float, ptr %i.j, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.m = load float, ptr %i.l, align 4, !tbaa !43 ; 4 uses
  %i.n = fsub float %i.k, %i.i
  %i.o = fdiv float %i.n, %i.m
  %i.p = tail call float @llvm.ceil.f32(float %i.o)
  %i.q = fptosi float %i.p to i64                 ; 4 uses
  %i.r = tail call i64 @ggml_nelements(ptr noundef nonnull %1)
  %i.s = icmp eq i64 %i.r, %i.q
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 8401, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.132) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.t = sext i32 %i.e to i64                     ; 10 uses
  %i.u = icmp slt i64 %i.t, %i.q
  br i1 %i.u, label %iter.check, label %_ZL31ggml_compute_forward_arange_f32PK19ggml_compute_paramsP11ggml_tensor.exit

iter.check:                                       ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37   ; 3 uses
  %i.x = sext i32 %i.g to i64
  %i.y = add nsw i64 %i.t, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.q, i64 %i.y)
  %i.z = sub i64 %smax, %i.t                      ; 7 uses
  %min.iters.check = icmp ugt i64 %i.z, 3
  %ident.check.not = icmp eq i32 %i.g, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check4 = icmp ult i64 %i.z, 32
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.z, 28
  %n.vec = and i64 %i.z, -32                      ; 4 uses
end_hunk_2
begin_hunk_3_@ggml_compute_forward_flash_attn_back:bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !31
  br label %.thread533.i

.thread533.i:                                     ; preds = %bb.d, %.thread528.i
  %i.cg = phi i64 [ %i.cd, %bb.d ], [ 0, %.thread528.i ]
  %i.ch = phi i64 [ %i.bz, %bb.d ], [ 0, %.thread528.i ] ; 2 uses
  %i.ci = phi i64 [ %i.bv, %bb.d ], [ 0, %.thread528.i ]
  %i.cj = phi i64 [ %i.bx, %bb.d ], [ 0, %.thread528.i ]
  %i.ck = phi i64 [ %i.cb, %bb.d ], [ 0, %.thread528.i ] ; 2 uses
  %i.cl = phi i64 [ %i.cf, %bb.d ], [ 0, %.thread528.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !31
  %i.co = shl i64 %i.cn, 2
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !31
  %i.cr = mul i64 %i.co, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !31
  %i.cu = mul i64 %i.cr, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !31
  %i.cx = mul i64 %i.cu, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !31
  %i.da = icmp eq i64 %i.cz, 4
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !31 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !31
  %i.dh = load i32, ptr %0, align 8, !tbaa !35    ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !36 ; 2 uses
  %i.dk = sub nsw i64 %i.aw, %i.n                 ; 2 uses
  %i.dl = trunc i64 %i.aw to i32                  ; 3 uses
  %i.dm = add i32 %i.dl, 3
  %i.dn = and i32 %i.dm, -4                       ; 3 uses
  %i.do = sext i32 %i.dn to i64                   ; 3 uses
  %i.dp = tail call i64 @llvm.smax.i64(i64 %i.l, i64 %i.do)
  %i.dq = icmp sgt i64 %i.dk, -1
  br i1 %i.dq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread533.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9401, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.147) #17
  unreachable

bb.f:                                             ; preds = %.thread533.i
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9403, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.148) #17
  unreachable

bb.h:                                             ; preds = %bb.f
  br i1 %i.at, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9404, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.149) #17
  unreachable

bb.j:                                             ; preds = %bb.h
  br i1 %i.bp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9405, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.150) #17
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.dr = icmp eq i64 %i.av, %i.l
  br i1 %i.dr, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9408, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.152) #17
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ds = icmp eq i64 %i.br, %i.l
  br i1 %i.ds, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9409, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.153) #17
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.dt = icmp eq i64 %i.ci, %i.l
  br i1 %i.dt, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9410, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.154) #17
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.du = icmp eq i64 %i.cj, %i.n
  br i1 %i.du, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9415, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.156) #17
  unreachable

bb.t:                                             ; preds = %bb.r
  br i1 %i.da, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9418, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.25) #17
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dv = icmp ugt i64 %i.dc, 3
  br i1 %i.dv, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9419, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.14) #17
  unreachable

bb.x:                                             ; preds = %bb.v
  %.not425.i = icmp ugt i64 %i.dc, %i.de
  br i1 %.not425.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9420, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15) #17
  unreachable

bb.z:                                             ; preds = %bb.x
  %.not426.i = icmp ugt i64 %i.de, %i.dg
  br i1 %.not426.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9421, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.16) #17
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dw = icmp eq i32 %i.dh, 0
  br i1 %i.dw, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dy, i8 0, i64 %i.cx, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !57
  tail call void @ggml_barrier(ptr noundef %i.ea)
  %i.eb = tail call i64 @ggml_nelements(ptr noundef nonnull %i.c)
  %i.ec = tail call i64 @ggml_nelements(ptr noundef %i.f)
  %i.ed = load i32, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ee = tail call i64 @ggml_blck_size(i32 noundef %i.ed)
  %i.ef = icmp eq i64 %i.ee, 1
  br i1 %i.ef, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 9432, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.157) #17
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.eg = tail call i64 @ggml_type_size(i32 noundef %i.ed) ; 2 uses
  %i.eh = mul i64 %i.eg, %i.eb
  %i.ei = add i64 %i.eh, 15
  %i.ej = and i64 %i.ei, -16
  %i.ek = mul i64 %i.eg, %i.ec
  %i.el = add i64 %i.ek, 15
  %i.em = and i64 %i.el, -16
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !37 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.ej  ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 %i.em
  %i.er = shl i64 %i.l, 2                         ; 4 uses
  %i.es = mul i64 %i.er, %i.n                     ; 2 uses
  %i.et = mul i64 %i.es, %i.p
  %i.eu = mul i64 %i.aw, %i.er                    ; 2 uses
  %i.ev = mul i64 %i.eu, %i.p
  %i.ew = mul i64 %i.bq, %i.l                     ; 2 uses
  %i.ex = mul i64 %i.ew, %i.p
  %i.ey = add i32 %i.ax, -1
  %i.ez = add i32 %i.ey, %i.dj
  %i.fa = sdiv i32 %i.ez, %i.dj                   ; 2 uses
  %i.fb = mul nsw i32 %i.fa, %i.dh                ; 3 uses
  %i.fc = add nsw i32 %i.fb, %i.fa
  %i.fd = tail call i32 @llvm.smin.i32(i32 %i.fc, i32 %i.ax) ; 2 uses
  %i.fe = sitofp i64 %i.l to float
  %i.ff = tail call float @sqrtf(float noundef %i.fe) #18
  %i.fg = fdiv float 1.000000e+00, %i.ff          ; 7 uses
  %i.fh = sdiv i64 %i.p, %i.au                    ; 2 uses
  %i.fi = icmp slt i32 %i.fb, %i.fd
  br i1 %i.fi, label %.lr.ph578.i, label %_ZL40ggml_compute_forward_flash_attn_back_f32PK19ggml_compute_paramsbP11ggml_tensor.exit

.lr.ph578.i:                                      ; preds = %bb.af
  %i.fj = trunc i64 %i.fh to i32
  %i.fk = icmp slt i32 %i.fj, 1
  %i.fl = trunc i64 %i.au to i32
  %i.fm = icmp slt i64 %i.n, 1
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fo = shl i32 %i.dh, 1
  %i.fp = sext i32 %i.fo to i64                   ; 2 uses
  %i.fq = shl i64 %i.dp, 32                       ; 2 uses
  %i.fr = ashr exact i64 %i.fq, 32
  %i.fs = add nsw i64 %i.fr, 16                   ; 3 uses
  %i.ft = mul nsw i64 %i.fs, %i.fp                ; 2 uses
  %i.fu = icmp sgt i32 %i.dn, %i.dl
  %i.fv = add nuw nsw i64 %i.dk, 1
  %i.fw = trunc i64 %i.l to i32                   ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.f, i64 248 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 248 ; 2 uses
  %i.fz = insertelement <16 x float> poison, float %i.fg, i64 0
  %i.ga = shufflevector <16 x float> %i.fz, <16 x float> poison, <16 x i32> zeroinitializer ; 8 uses
  %i.gb = icmp sgt i64 %i.l, 0                    ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.gd = getelementptr inbounds nuw i8, ptr %i.j, i64 248 ; 2 uses
  %i.ge = icmp sgt i32 %i.dl, 0
  %wide.trip.count.i451.i = and i64 %i.aw, 2147483647 ; 5 uses
  %i.gf = and i32 %i.fw, -64                      ; 2 uses
  %i.gg = icmp sgt i32 %i.fw, 63                  ; 2 uses
  %i.gh = and i64 %i.l, 2147483584                ; 2 uses
  %.not.i480.i = icmp eq i32 %i.gf, %i.fw         ; 2 uses
  %i.gi = sext i32 %i.gf to i64                   ; 12 uses
  %sext538.i = shl i64 %i.l, 32
  %i.gj = ashr exact i64 %sext538.i, 32           ; 3 uses
  %brmerge.i = select i1 %i.fk, i1 true, i1 %i.fm
  br i1 %brmerge.i, label %_ZL40ggml_compute_forward_flash_attn_back_f32PK19ggml_compute_paramsbP11ggml_tensor.exit, label %.lr.ph573.preheader.i

.lr.ph573.preheader.i:                            ; preds = %.lr.ph578.i
  %sext624.i = shl i64 %i.aw, 32
  %i.gk = ashr exact i64 %sext624.i, 32           ; 6 uses
  %3 = shl i64 %i.ft, 2
  %i.gl = sext i32 %i.fb to i64
  %wide.trip.count602.i = sext i32 %i.fd to i64
  %wide.trip.count597.i = and i64 %i.fh, 2147483647
  %i.gm = or disjoint i64 %i.gi, 1
  %smax39 = tail call i64 @llvm.smax.i64(i64 %i.gm, i64 %i.gj) ; 5 uses
  %i.gn = sub i64 %smax39, %i.gi                  ; 8 uses
  %i.go = mul i64 %i.fs, %i.fp
  %i.gp = shl i64 %i.go, 2                        ; 2 uses
  %i.gq = ashr exact i64 %i.fq, 30
  %i.gr = sub nsw i64 %i.do, %i.gk                ; 7 uses
  %min.iters.check345 = icmp ult i64 %i.gr, 8
  %min.iters.check347 = icmp ult i64 %i.gr, 32
  %i.gs = and i64 %i.gr, 24
  %n.vec349 = and i64 %i.gr, -32                  ; 4 uses
  %i.gt = add nsw i64 %i.gk, %n.vec349
  %cmp.n354 = icmp eq i64 %i.gr, %n.vec349
  %min.epilog.iters.check360 = icmp eq i64 %i.gs, 0
  %n.vec362 = and i64 %i.gr, -8                   ; 3 uses
  %i.gu = add nsw i64 %i.gk, %n.vec362
  %cmp.n367 = icmp eq i64 %i.gr, %n.vec362
  %broadcast.splatinsert317 = insertelement <8 x float> poison, float %i.fg, i64 0
  %broadcast.splat318 = shufflevector <8 x float> %broadcast.splatinsert317, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert336 = insertelement <8 x float> poison, float %i.fg, i64 0
  %broadcast.splat337 = shufflevector <8 x float> %broadcast.splatinsert336, <8 x float> poison, <8 x i32> zeroinitializer
  %min.iters.check182 = icmp samesign ult i64 %wide.trip.count.i451.i, 4
  %min.iters.check184 = icmp samesign ult i64 %wide.trip.count.i451.i, 32
  %i.gv = and i64 %i.aw, 28
  %n.vec186 = and i64 %i.aw, 2147483616           ; 4 uses
  %cmp.n197 = icmp eq i64 %wide.trip.count.i451.i, %n.vec186
  %min.epilog.iters.check202 = icmp eq i64 %i.gv, 0
  %n.vec204 = and i64 %i.aw, 2147483644           ; 3 uses
  %cmp.n212 = icmp eq i64 %wide.trip.count.i451.i, %n.vec204
  %broadcast.splatinsert120 = insertelement <8 x float> poison, float %i.fg, i64 0
  %broadcast.splat121 = shufflevector <8 x float> %broadcast.splatinsert120, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert138 = insertelement <8 x float> poison, float %i.fg, i64 0
  %broadcast.splat139 = shufflevector <8 x float> %broadcast.splatinsert138, <8 x float> poison, <8 x i32> zeroinitializer
  %min.iters.check77 = icmp ult i64 %i.gn, 8
  %min.iters.check79 = icmp ult i64 %i.gn, 32
  %i.gw = and i64 %smax39, 31                     ; 3 uses
  %n.vec81 = sub nuw i64 %i.gn, %i.gw             ; 3 uses
  %i.gx = add i64 %n.vec81, %i.gi
  %cmp.n96 = icmp eq i64 %i.gw, 0
  %min.epilog.iters.check101 = icmp samesign ult i64 %i.gw, 8
  %i.gy = and i64 %smax39, 7                      ; 2 uses
  %n.vec103 = sub i64 %i.gn, %i.gy                ; 2 uses
  %i.gz = add i64 %n.vec103, %i.gi
  %cmp.n112 = icmp eq i64 %i.gy, 0
  %min.iters.check40 = icmp ult i64 %i.gn, 8
  %min.iters.check42 = icmp ult i64 %i.gn, 32
  %i.ha = and i64 %smax39, 31                     ; 3 uses
  %n.vec44 = sub nuw i64 %i.gn, %i.ha             ; 3 uses
  %i.hb = add i64 %n.vec44, %i.gi
  %cmp.n59 = icmp eq i64 %i.ha, 0
  %min.epilog.iters.check64 = icmp samesign ult i64 %i.ha, 8
  %i.hc = and i64 %smax39, 7                      ; 2 uses
  %n.vec66 = sub i64 %i.gn, %i.hc                 ; 2 uses
  %i.hd = add i64 %n.vec66, %i.gi
  %cmp.n75 = icmp eq i64 %i.hc, 0
  br label %.lr.ph573.i

.lr.ph573.i:                                      ; preds = %._crit_edge574.i, %.lr.ph573.preheader.i
  %indvars.iv599.i = phi i64 [ %i.gl, %.lr.ph573.preheader.i ], [ %indvars.iv.next600.i, %._crit_edge574.i ] ; 3 uses
  %i.he = sdiv i64 %indvars.iv599.i, %i.au        ; 2 uses
  %i.hf = shl i64 %i.he, 32
  %i.hg = ashr exact i64 %i.hf, 32                ; 7 uses
  %i.hh = mul i64 %i.he, %i.au
  %i.hi = trunc i64 %i.hh to i32
  %i.hj = trunc nsw i64 %indvars.iv599.i to i32
  %i.hk = sub i32 %i.hj, %i.hi                    ; 2 uses
  %i.hl = sext i32 %i.hk to i64                   ; 4 uses
  %i.hm = mul i64 %i.as, %i.hl                    ; 2 uses
  %i.hn = mul i64 %i.hg, %i.az                    ; 2 uses
  %i.ho = mul i64 %i.hg, %i.y                     ; 2 uses
  %i.hp = mul i64 %i.bo, %i.hl
  %i.hq = mul i64 %i.hg, %i.bt
  %i.hr = mul i64 %i.hg, %i.cl                    ; 2 uses
  %i.hs = mul i64 %i.et, %i.hg
  %invariant.gep575.i = getelementptr i8, ptr %i.eo, i64 %i.hs
  %i.ht = mul i64 %i.eu, %i.hl
  %i.hu = mul i64 %i.ev, %i.hg
  %invariant.gep.i = getelementptr i8, ptr %i.ep, i64 %i.ht
  %invariant.gep556.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.hu
  %i.hv = mul i64 %i.ew, %i.hl
  %i.hw = mul i64 %i.ex, %i.hg
  %invariant.gep561.i = getelementptr i8, ptr %i.eq, i64 %i.hv
  %invariant.gep562.i = getelementptr i8, ptr %invariant.gep561.i, i64 %i.hw
  br label %.lr.ph566.i

._crit_edge574.i:                                 ; preds = %._crit_edge567.i
  %indvars.iv.next600.i = add nsw i64 %indvars.iv599.i, 1 ; 2 uses
  %exitcond603.not.i = icmp eq i64 %indvars.iv.next600.i, %wide.trip.count602.i
  br i1 %exitcond603.not.i, label %_ZL40ggml_compute_forward_flash_attn_back_f32PK19ggml_compute_paramsbP11ggml_tensor.exit, label %.lr.ph573.i, !llvm.loop !1551

.lr.ph566.i:                                      ; preds = %._crit_edge567.i, %.lr.ph573.i
  %indvars.iv594.i = phi i64 [ 0, %.lr.ph573.i ], [ %indvars.iv.next595.i, %._crit_edge567.i ] ; 2 uses
  %i.hx = trunc nuw nsw i64 %indvars.iv594.i to i32
  %i.hy = mul i32 %i.hx, %i.fl
  %i.hz = add i32 %i.hy, %i.hk
  %i.ia = sext i32 %i.hz to i64                   ; 3 uses
  %i.ib = mul i64 %i.w, %i.ia                     ; 2 uses
  %i.ic = mul i64 %i.cg, %i.ia                    ; 2 uses
  %i.id = mul i64 %i.es, %i.ia
  %gep.i = getelementptr i8, ptr %invariant.gep575.i, i64 %i.id
  br label %bb.ag

._crit_edge567.i:                                 ; preds = %._crit_edge560.i
  %indvars.iv.next595.i = add nuw nsw i64 %indvars.iv594.i, 1 ; 2 uses
  %exitcond598.not.i = icmp eq i64 %indvars.iv.next595.i, %wide.trip.count597.i
  br i1 %exitcond598.not.i, label %._crit_edge574.i, label %.lr.ph566.i, !llvm.loop !1552

bb.ag:                                            ; preds = %._crit_edge560.i, %.lr.ph566.i
  %indvars.iv590.i = phi i64 [ 0, %.lr.ph566.i ], [ %indvars.iv.next591.i, %._crit_edge560.i ] ; 7 uses
  %i.ie = load ptr, ptr %i.fn, align 8, !tbaa !48 ; 4 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.ft ; 47 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.fs ; 21 uses
  br i1 %i.fu, label %iter.check357, label %._crit_edge.i

iter.check357:                                    ; preds = %bb.ag
  br i1 %min.iters.check345, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check346

vector.main.loop.iter.check346:                   ; preds = %iter.check357
  br i1 %min.iters.check347, label %vec.epilog.ph361, label %vector.ph348

vector.ph348:                                     ; preds = %vector.main.loop.iter.check346
  %i.ih = getelementptr [4 x i8], ptr %i.if, i64 %i.gk
  br label %vector.body350

vector.body350:                                   ; preds = %vector.ph348, %vector.body350
  %index351 = phi i64 [ 0, %vector.ph348 ], [ %index.next352, %vector.body350 ] ; 2 uses
  %i.ii = getelementptr [4 x i8], ptr %i.ih, i64 %index351 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 64
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 96
  store <8 x float> splat (float -inf), ptr %i.ii, align 4, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.ij, align 4, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.ik, align 4, !tbaa !43
  store <8 x float> splat (float -inf), ptr %i.il, align 4, !tbaa !43
  %index.next352 = add nuw i64 %index351, 32      ; 2 uses
  %i.im = icmp eq i64 %index.next352, %n.vec349
  br i1 %i.im, label %middle.block353, label %vector.body350, !llvm.loop !1553

middle.block353:                                  ; preds = %vector.body350
  br i1 %cmp.n354, label %._crit_edge.i, label %vec.epilog.iter.check359

vec.epilog.iter.check359:                         ; preds = %middle.block353
  br i1 %min.epilog.iters.check360, label %.lr.ph.i.preheader, label %vec.epilog.ph361, !prof !50

vec.epilog.ph361:                                 ; preds = %vector.main.loop.iter.check346, %vec.epilog.iter.check359
  %vec.epilog.resume.val355 = phi i64 [ %n.vec349, %vec.epilog.iter.check359 ], [ 0, %vector.main.loop.iter.check346 ]
  %i.in = getelementptr [4 x i8], ptr %i.if, i64 %i.gk
  br label %vec.epilog.vector.body363

vec.epilog.vector.body363:                        ; preds = %vec.epilog.vector.body363, %vec.epilog.ph361
  %index364 = phi i64 [ %vec.epilog.resume.val355, %vec.epilog.ph361 ], [ %index.next365, %vec.epilog.vector.body363 ] ; 2 uses
  %i.io = getelementptr [4 x i8], ptr %i.in, i64 %index364
  store <8 x float> splat (float -inf), ptr %i.io, align 4, !tbaa !43
  %index.next365 = add nuw i64 %index364, 8       ; 2 uses
  %i.ip = icmp eq i64 %index.next365, %n.vec362
  br i1 %i.ip, label %vec.epilog.middle.block366, label %vec.epilog.vector.body363, !llvm.loop !1554

vec.epilog.middle.block366:                       ; preds = %vec.epilog.vector.body363
  br i1 %cmp.n367, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check357, %vec.epilog.iter.check359, %vec.epilog.middle.block366
  %indvars.iv.i.ph = phi i64 [ %i.gk, %iter.check357 ], [ %i.gt, %vec.epilog.iter.check359 ], [ %i.gu, %vec.epilog.middle.block366 ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block353, %vec.epilog.middle.block366, %bb.ag
  %i.iq = add nuw nsw i64 %i.fv, %indvars.iv590.i
  %i.ir = select i1 %1, i64 %i.iq, i64 %i.aw      ; 31 uses
  %i.is = icmp sgt i64 %i.ir, 0                   ; 2 uses
  br i1 %i.is, label %.lr.ph544.i, label %._crit_edge545.i

.lr.ph544.i:                                      ; preds = %._crit_edge.i
  %i.it = mul i64 %indvars.iv590.i, %i.u
  br label %bb.ah

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.if, i64 %indvars.iv.i
  store float -inf, ptr %i.iu, align 4, !tbaa !43
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.do
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1555

._crit_edge545.i:                                 ; preds = %bb.ah, %._crit_edge.i
  %i.iv = trunc i64 %i.ir to i32                  ; 5 uses
  %i.iw = and i32 %i.iv, -64                      ; 6 uses
  %i.ix = icmp sgt i32 %i.iv, 63                  ; 5 uses
  br i1 %i.ix, label %.preheader27.preheader.i.i, label %.preheader.i.i

.preheader27.preheader.i.i:                       ; preds = %._crit_edge545.i
  %i.iy = and i64 %i.ir, 2147483584
  br label %.preheader27.i.i

.preheader27.i.i:                                 ; preds = %.preheader27.i.i, %.preheader27.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader27.preheader.i.i ], [ %indvars.iv.next.i.i, %.preheader27.i.i ] ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.i.i ; 5 uses
  %i.ja = load <16 x float>, ptr %i.iz, align 1, !tbaa !56
  %i.jb = fmul <16 x float> %i.ga, %i.ja
  store <16 x float> %i.jb, ptr %i.iz, align 1, !tbaa !56
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 64 ; 2 uses
  %i.jd = load <16 x float>, ptr %i.jc, align 1, !tbaa !56
  %i.je = fmul <16 x float> %i.ga, %i.jd
  store <16 x float> %i.je, ptr %i.jc, align 1, !tbaa !56
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iz, i64 128 ; 2 uses
  %i.jg = load <16 x float>, ptr %i.jf, align 1, !tbaa !56
  %i.jh = fmul <16 x float> %i.ga, %i.jg
  store <16 x float> %i.jh, ptr %i.jf, align 1, !tbaa !56
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iz, i64 192 ; 2 uses
  %i.jj = load <16 x float>, ptr %i.ji, align 1, !tbaa !56
  %i.jk = fmul <16 x float> %i.ga, %i.jj
  store <16 x float> %i.jk, ptr %i.ji, align 1, !tbaa !56
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 64 ; 2 uses
  %i.jl = icmp samesign ult i64 %indvars.iv.next.i.i, %i.iy
  br i1 %i.jl, label %.preheader27.i.i, label %.preheader.i.i, !llvm.loop !2

.preheader.i.i:                                   ; preds = %.preheader27.i.i, %._crit_edge545.i
  %.not.i.i = icmp eq i32 %i.iw, %i.iv            ; 5 uses
  br i1 %.not.i.i, label %_ZL18ggml_vec_scale_f32iPff.exit.i, label %iter.check330

iter.check330:                                    ; preds = %.preheader.i.i
  %i.jm = sext i32 %i.iw to i64                   ; 7 uses
  %sext.i = shl i64 %i.ir, 32
  %i.jn = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.jo = or disjoint i64 %i.jm, 1
  %smax311 = call i64 @llvm.smax.i64(i64 %i.jo, i64 %i.jn) ; 3 uses
  %i.jp = sub i64 %smax311, %i.jm                 ; 4 uses
  %min.iters.check312 = icmp ult i64 %i.jp, 8
  br i1 %min.iters.check312, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check313

vector.main.loop.iter.check313:                   ; preds = %iter.check330
  %min.iters.check314 = icmp ult i64 %i.jp, 32
  br i1 %min.iters.check314, label %vec.epilog.ph334, label %vector.ph315

vector.ph315:                                     ; preds = %vector.main.loop.iter.check313
  %i.jq = and i64 %smax311, 31                    ; 3 uses
  %n.vec316 = sub nuw i64 %i.jp, %i.jq            ; 3 uses
  %i.jr = add i64 %n.vec316, %i.jm
  %invariant.gep = getelementptr [4 x i8], ptr %i.if, i64 %i.jm
  br label %vector.body319

vector.body319:                                   ; preds = %vector.ph315, %vector.body319
  %index320 = phi i64 [ 0, %vector.ph315 ], [ %index.next325, %vector.body319 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index320 ; 5 uses
  %i.js = getelementptr inbounds nuw i8, ptr %gep, i64 32 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %gep, i64 64 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %gep, i64 96 ; 2 uses
  %wide.load321 = load <8 x float>, ptr %gep, align 4, !tbaa !43
  %wide.load322 = load <8 x float>, ptr %i.js, align 4, !tbaa !43
  %wide.load323 = load <8 x float>, ptr %i.jt, align 4, !tbaa !43
  %wide.load324 = load <8 x float>, ptr %i.ju, align 4, !tbaa !43
  %i.jv = fmul <8 x float> %broadcast.splat318, %wide.load321
  %i.jw = fmul <8 x float> %broadcast.splat318, %wide.load322
  %i.jx = fmul <8 x float> %broadcast.splat318, %wide.load323
  %i.jy = fmul <8 x float> %broadcast.splat318, %wide.load324
  store <8 x float> %i.jv, ptr %gep, align 4, !tbaa !43
  store <8 x float> %i.jw, ptr %i.js, align 4, !tbaa !43
  store <8 x float> %i.jx, ptr %i.jt, align 4, !tbaa !43
  store <8 x float> %i.jy, ptr %i.ju, align 4, !tbaa !43
  %index.next325 = add nuw i64 %index320, 32      ; 2 uses
  %i.jz = icmp eq i64 %index.next325, %n.vec316
  br i1 %i.jz, label %middle.block326, label %vector.body319, !llvm.loop !1556

middle.block326:                                  ; preds = %vector.body319
  %cmp.n327 = icmp eq i64 %i.jq, 0
  br i1 %cmp.n327, label %_ZL18ggml_vec_scale_f32iPff.exit.i, label %vec.epilog.iter.check332

vec.epilog.iter.check332:                         ; preds = %middle.block326
  %min.epilog.iters.check333 = icmp samesign ult i64 %i.jq, 8
  br i1 %min.epilog.iters.check333, label %.lr.ph.i.i.preheader, label %vec.epilog.ph334, !prof !50

vec.epilog.ph334:                                 ; preds = %vector.main.loop.iter.check313, %vec.epilog.iter.check332
  %vec.epilog.resume.val328 = phi i64 [ %n.vec316, %vec.epilog.iter.check332 ], [ 0, %vector.main.loop.iter.check313 ]
  %i.ka = and i64 %smax311, 7                     ; 2 uses
  %n.vec335 = sub i64 %i.jp, %i.ka                ; 2 uses
  %i.kb = add i64 %n.vec335, %i.jm
  %invariant.gep373 = getelementptr [4 x i8], ptr %i.if, i64 %i.jm
  br label %vec.epilog.vector.body338

vec.epilog.vector.body338:                        ; preds = %vec.epilog.vector.body338, %vec.epilog.ph334
  %index339 = phi i64 [ %vec.epilog.resume.val328, %vec.epilog.ph334 ], [ %index.next341, %vec.epilog.vector.body338 ] ; 2 uses
  %gep374 = getelementptr [4 x i8], ptr %invariant.gep373, i64 %index339 ; 2 uses
  %wide.load340 = load <8 x float>, ptr %gep374, align 4, !tbaa !43
  %i.kc = fmul <8 x float> %broadcast.splat337, %wide.load340
  store <8 x float> %i.kc, ptr %gep374, align 4, !tbaa !43
  %index.next341 = add nuw i64 %index339, 8       ; 2 uses
  %i.kd = icmp eq i64 %index.next341, %n.vec335
  br i1 %i.kd, label %vec.epilog.middle.block342, label %vec.epilog.vector.body338, !llvm.loop !1557

vec.epilog.middle.block342:                       ; preds = %vec.epilog.vector.body338
  %cmp.n343 = icmp eq i64 %i.ka, 0
  br i1 %cmp.n343, label %_ZL18ggml_vec_scale_f32iPff.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check330, %vec.epilog.iter.check332, %vec.epilog.middle.block342
  %indvars.iv33.i.i.ph = phi i64 [ %i.jm, %iter.check330 ], [ %i.jr, %vec.epilog.iter.check332 ], [ %i.kb, %vec.epilog.middle.block342 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv33.i.i = phi i64 [ %indvars.iv.next34.i.i, %.lr.ph.i.i ], [ %indvars.iv33.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.if, i64 %indvars.iv33.i.i ; 2 uses
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !43
  %i.kg = fmul float %i.fg, %i.kf
  store float %i.kg, ptr %i.ke, align 4, !tbaa !43
  %indvars.iv.next34.i.i = add nsw i64 %indvars.iv33.i.i, 1 ; 2 uses
  %i.kh = icmp slt i64 %indvars.iv.next34.i.i, %i.jn
  br i1 %i.kh, label %.lr.ph.i.i, label %_ZL18ggml_vec_scale_f32iPff.exit.i, !llvm.loop !1558

_ZL18ggml_vec_scale_f32iPff.exit.i:               ; preds = %.lr.ph.i.i, %middle.block326, %vec.epilog.middle.block342, %.preheader.i.i
  %i.ki = icmp slt i64 %i.ir, %i.aw
  br i1 %i.ki, label %iter.check299, label %._crit_edge548.i

iter.check299:                                    ; preds = %_ZL18ggml_vec_scale_f32iPff.exit.i
  %i.kj = sub i64 %i.aw, %i.ir                    ; 7 uses
  %min.iters.check287 = icmp ult i64 %i.kj, 8
end_hunk_3
begin_hunk_4_@ggml_compute_forward_flash_attn_back:bb.a
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !43 ; 2 uses
  %i.lo = fcmp ogt float %.01012.i.i, %i.ln
  %.010..i.i = select i1 %i.lo, float %.01012.i.i, float %i.ln ; 2 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.i431.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !43 ; 2 uses
  %i.ls = fcmp ogt float %.010..i.i, %i.lr
  %.010..i.i.1 = select i1 %i.ls, float %.010..i.i, float %i.lr ; 2 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.i431.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !43 ; 2 uses
  %i.lw = fcmp ogt float %.010..i.i.1, %i.lv
  %.010..i.i.2 = select i1 %i.lw, float %.010..i.i.1, float %i.lv ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.i431.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 12
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !43 ; 2 uses
  %i.ma = fcmp ogt float %.010..i.i.2, %i.lz
  %.010..i.i.3 = select i1 %i.ma, float %.010..i.i.2, float %i.lz ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.i431.i
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.md = load float, ptr %i.mc, align 4, !tbaa !43 ; 2 uses
  %i.me = fcmp ogt float %.010..i.i.3, %i.md
  %.010..i.i.4 = select i1 %i.me, float %.010..i.i.3, float %i.md ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.i431.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 20
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !43 ; 2 uses
  %i.mi = fcmp ogt float %.010..i.i.4, %i.mh
  %.010..i.i.5 = select i1 %i.mi, float %.010..i.i.4, float %i.mh ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.i431.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !43 ; 2 uses
  %i.mm = fcmp ogt float %.010..i.i.5, %i.ml
  %.010..i.i.6 = select i1 %i.mm, float %.010..i.i.5, float %i.ml ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.i431.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 28
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !43 ; 2 uses
  %i.mq = fcmp ogt float %.010..i.i.6, %i.mp
  %.010..i.i.7 = select i1 %i.mq, float %.010..i.i.6, float %i.mp ; 3 uses
  %indvars.iv.next.i432.i.7 = add nuw nsw i64 %indvars.iv.i431.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZL16ggml_vec_max_f32iPfPKf.exit.i.loopexit.unr-lcssa, label %.lr.ph.i430.i, !llvm.loop !4

_ZL16ggml_vec_max_f32iPfPKf.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i430.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL16ggml_vec_max_f32iPfPKf.exit.i, label %.lr.ph.i430.i.epil.preheader

.lr.ph.i430.i.epil.preheader:                     ; preds = %_ZL16ggml_vec_max_f32iPfPKf.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i429.i
  %indvars.iv.i431.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i429.i ], [ %indvars.iv.next.i432.i.7, %_ZL16ggml_vec_max_f32iPfPKf.exit.i.loopexit.unr-lcssa ]
  %.01012.i.i.epil.init = phi float [ -inf, %.lr.ph.preheader.i429.i ], [ %.010..i.i.7, %_ZL16ggml_vec_max_f32iPfPKf.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod370 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod370)
  br label %.lr.ph.i430.i.epil

.lr.ph.i430.i.epil:                               ; preds = %.lr.ph.i430.i.epil, %.lr.ph.i430.i.epil.preheader
  %indvars.iv.i431.i.epil = phi i64 [ %indvars.iv.i431.i.epil.init, %.lr.ph.i430.i.epil.preheader ], [ %indvars.iv.next.i432.i.epil, %.lr.ph.i430.i.epil ] ; 2 uses
  %.01012.i.i.epil = phi float [ %.01012.i.i.epil.init, %.lr.ph.i430.i.epil.preheader ], [ %.010..i.i.epil, %.lr.ph.i430.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i430.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i430.i.epil ]
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.i431.i.epil
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !43 ; 2 uses
  %i.mt = fcmp ogt float %.01012.i.i.epil, %i.ms
  %.010..i.i.epil = select i1 %i.mt, float %.01012.i.i.epil, float %i.ms ; 2 uses
  %indvars.iv.next.i432.i.epil = add nuw nsw i64 %indvars.iv.i431.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL16ggml_vec_max_f32iPfPKf.exit.i, label %.lr.ph.i430.i.epil, !llvm.loop !1562

_ZL16ggml_vec_max_f32iPfPKf.exit.i:               ; preds = %_ZL16ggml_vec_max_f32iPfPKf.exit.i.loopexit.unr-lcssa, %.lr.ph.i430.i.epil, %._crit_edge548.i
  %.010.lcssa.i.i = phi float [ -inf, %._crit_edge548.i ], [ %.010..i.i.7, %_ZL16ggml_vec_max_f32iPfPKf.exit.i.loopexit.unr-lcssa ], [ %.010..i.i.epil, %.lr.ph.i430.i.epil ]
  %i.mu = call double @ggml_vec_soft_max_f32(i32 noundef %i.dn, ptr noundef %i.ig, ptr noundef %i.if, float noundef %.010.lcssa.i.i)
  %i.mv = fdiv double 1.000000e+00, %i.mu
  %i.mw = fptrunc double %i.mv to float           ; 4 uses
  %i.mx = insertelement <16 x float> poison, float %i.mw, i64 0
  %i.my = shufflevector <16 x float> %i.mx, <16 x float> poison, <16 x i32> zeroinitializer ; 4 uses
  br i1 %i.ix, label %.preheader27.preheader.i439.i, label %.preheader.i433.i

.preheader27.preheader.i439.i:                    ; preds = %_ZL16ggml_vec_max_f32iPfPKf.exit.i
  %i.mz = and i64 %i.ir, 2147483584
  br label %.preheader27.i440.i

.preheader27.i440.i:                              ; preds = %.preheader27.i440.i, %.preheader27.preheader.i439.i
  %indvars.iv.i441.i = phi i64 [ 0, %.preheader27.preheader.i439.i ], [ %indvars.iv.next.i442.i, %.preheader27.i440.i ] ; 2 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv.i441.i ; 5 uses
  %i.nb = load <16 x float>, ptr %i.na, align 1, !tbaa !56
  %i.nc = fmul <16 x float> %i.my, %i.nb
  store <16 x float> %i.nc, ptr %i.na, align 1, !tbaa !56
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 64 ; 2 uses
  %i.ne = load <16 x float>, ptr %i.nd, align 1, !tbaa !56
  %i.nf = fmul <16 x float> %i.my, %i.ne
  store <16 x float> %i.nf, ptr %i.nd, align 1, !tbaa !56
  %i.ng = getelementptr inbounds nuw i8, ptr %i.na, i64 128 ; 2 uses
  %i.nh = load <16 x float>, ptr %i.ng, align 1, !tbaa !56
  %i.ni = fmul <16 x float> %i.my, %i.nh
  store <16 x float> %i.ni, ptr %i.ng, align 1, !tbaa !56
  %i.nj = getelementptr inbounds nuw i8, ptr %i.na, i64 192 ; 2 uses
  %i.nk = load <16 x float>, ptr %i.nj, align 1, !tbaa !56
  %i.nl = fmul <16 x float> %i.my, %i.nk
  store <16 x float> %i.nl, ptr %i.nj, align 1, !tbaa !56
  %indvars.iv.next.i442.i = add nuw nsw i64 %indvars.iv.i441.i, 64 ; 2 uses
  %i.nm = icmp samesign ult i64 %indvars.iv.next.i442.i, %i.mz
  br i1 %i.nm, label %.preheader27.i440.i, label %.preheader.i433.i, !llvm.loop !2

.preheader.i433.i:                                ; preds = %.preheader27.i440.i, %_ZL16ggml_vec_max_f32iPfPKf.exit.i
  br i1 %.not.i.i, label %_ZL18ggml_vec_scale_f32iPff.exit443.i, label %iter.check272

iter.check272:                                    ; preds = %.preheader.i433.i
  %i.nn = sext i32 %i.iw to i64                   ; 7 uses
  %sext534.i = shl i64 %i.ir, 32
  %i.no = ashr exact i64 %sext534.i, 32           ; 2 uses
  %i.np = or disjoint i64 %i.nn, 1
  %smax253 = call i64 @llvm.smax.i64(i64 %i.np, i64 %i.no) ; 3 uses
  %i.nq = sub i64 %smax253, %i.nn                 ; 4 uses
  %min.iters.check254 = icmp ult i64 %i.nq, 8
  br i1 %min.iters.check254, label %.lr.ph.i436.i.preheader, label %vector.main.loop.iter.check255

vector.main.loop.iter.check255:                   ; preds = %iter.check272
  %min.iters.check256 = icmp ult i64 %i.nq, 32
  br i1 %min.iters.check256, label %vec.epilog.ph276, label %vector.ph257

vector.ph257:                                     ; preds = %vector.main.loop.iter.check255
  %i.nr = and i64 %smax253, 31                    ; 3 uses
  %n.vec258 = sub nuw i64 %i.nq, %i.nr            ; 3 uses
  %i.ns = add i64 %n.vec258, %i.nn
  %broadcast.splatinsert259 = insertelement <8 x float> poison, float %i.mw, i64 0
  %broadcast.splat260 = shufflevector <8 x float> %broadcast.splatinsert259, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep375 = getelementptr [4 x i8], ptr %i.ig, i64 %i.nn
  br label %vector.body261

vector.body261:                                   ; preds = %vector.ph257, %vector.body261
  %index262 = phi i64 [ 0, %vector.ph257 ], [ %index.next267, %vector.body261 ] ; 2 uses
  %gep376 = getelementptr [4 x i8], ptr %invariant.gep375, i64 %index262 ; 5 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %gep376, i64 32 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %gep376, i64 64 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %gep376, i64 96 ; 2 uses
  %wide.load263 = load <8 x float>, ptr %gep376, align 4, !tbaa !43
  %wide.load264 = load <8 x float>, ptr %i.nt, align 4, !tbaa !43
  %wide.load265 = load <8 x float>, ptr %i.nu, align 4, !tbaa !43
  %wide.load266 = load <8 x float>, ptr %i.nv, align 4, !tbaa !43
  %i.nw = fmul <8 x float> %wide.load263, %broadcast.splat260
  %i.nx = fmul <8 x float> %wide.load264, %broadcast.splat260
  %i.ny = fmul <8 x float> %wide.load265, %broadcast.splat260
  %i.nz = fmul <8 x float> %wide.load266, %broadcast.splat260
  store <8 x float> %i.nw, ptr %gep376, align 4, !tbaa !43
  store <8 x float> %i.nx, ptr %i.nt, align 4, !tbaa !43
  store <8 x float> %i.ny, ptr %i.nu, align 4, !tbaa !43
  store <8 x float> %i.nz, ptr %i.nv, align 4, !tbaa !43
  %index.next267 = add nuw i64 %index262, 32      ; 2 uses
  %i.oa = icmp eq i64 %index.next267, %n.vec258
  br i1 %i.oa, label %middle.block268, label %vector.body261, !llvm.loop !1563

middle.block268:                                  ; preds = %vector.body261
  %cmp.n269 = icmp eq i64 %i.nr, 0
  br i1 %cmp.n269, label %_ZL18ggml_vec_scale_f32iPff.exit443.i, label %vec.epilog.iter.check274

vec.epilog.iter.check274:                         ; preds = %middle.block268
  %min.epilog.iters.check275 = icmp samesign ult i64 %i.nr, 8
  br i1 %min.epilog.iters.check275, label %.lr.ph.i436.i.preheader, label %vec.epilog.ph276, !prof !50

vec.epilog.ph276:                                 ; preds = %vector.main.loop.iter.check255, %vec.epilog.iter.check274
  %vec.epilog.resume.val270 = phi i64 [ %n.vec258, %vec.epilog.iter.check274 ], [ 0, %vector.main.loop.iter.check255 ]
  %i.ob = and i64 %smax253, 7                     ; 2 uses
  %n.vec277 = sub i64 %i.nq, %i.ob                ; 2 uses
  %i.oc = add i64 %n.vec277, %i.nn
  %broadcast.splatinsert278 = insertelement <8 x float> poison, float %i.mw, i64 0
  %broadcast.splat279 = shufflevector <8 x float> %broadcast.splatinsert278, <8 x float> poison, <8 x i32> zeroinitializer
  %invariant.gep377 = getelementptr [4 x i8], ptr %i.ig, i64 %i.nn
  br label %vec.epilog.vector.body280

vec.epilog.vector.body280:                        ; preds = %vec.epilog.vector.body280, %vec.epilog.ph276
  %index281 = phi i64 [ %vec.epilog.resume.val270, %vec.epilog.ph276 ], [ %index.next283, %vec.epilog.vector.body280 ] ; 2 uses
  %gep378 = getelementptr [4 x i8], ptr %invariant.gep377, i64 %index281 ; 2 uses
  %wide.load282 = load <8 x float>, ptr %gep378, align 4, !tbaa !43
  %i.od = fmul <8 x float> %wide.load282, %broadcast.splat279
  store <8 x float> %i.od, ptr %gep378, align 4, !tbaa !43
  %index.next283 = add nuw i64 %index281, 8       ; 2 uses
  %i.oe = icmp eq i64 %index.next283, %n.vec277
  br i1 %i.oe, label %vec.epilog.middle.block284, label %vec.epilog.vector.body280, !llvm.loop !1564

vec.epilog.middle.block284:                       ; preds = %vec.epilog.vector.body280
  %cmp.n285 = icmp eq i64 %i.ob, 0
  br i1 %cmp.n285, label %_ZL18ggml_vec_scale_f32iPff.exit443.i, label %.lr.ph.i436.i.preheader

.lr.ph.i436.i.preheader:                          ; preds = %iter.check272, %vec.epilog.iter.check274, %vec.epilog.middle.block284
  %indvars.iv33.i437.i.ph = phi i64 [ %i.nn, %iter.check272 ], [ %i.ns, %vec.epilog.iter.check274 ], [ %i.oc, %vec.epilog.middle.block284 ]
  br label %.lr.ph.i436.i

.lr.ph.i436.i:                                    ; preds = %.lr.ph.i436.i.preheader, %.lr.ph.i436.i
  %indvars.iv33.i437.i = phi i64 [ %indvars.iv.next34.i438.i, %.lr.ph.i436.i ], [ %indvars.iv33.i437.i.ph, %.lr.ph.i436.i.preheader ] ; 2 uses
  %i.of = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %indvars.iv33.i437.i ; 2 uses
  %i.og = load float, ptr %i.of, align 4, !tbaa !43
  %i.oh = fmul float %i.og, %i.mw
  store float %i.oh, ptr %i.of, align 4, !tbaa !43
  %indvars.iv.next34.i438.i = add nsw i64 %indvars.iv33.i437.i, 1 ; 2 uses
  %i.oi = icmp slt i64 %indvars.iv.next34.i438.i, %i.no
  br i1 %i.oi, label %.lr.ph.i436.i, label %_ZL18ggml_vec_scale_f32iPff.exit443.i, !llvm.loop !1565

_ZL18ggml_vec_scale_f32iPff.exit443.i:            ; preds = %.lr.ph.i436.i, %middle.block268, %vec.epilog.middle.block284, %.preheader.i433.i
  br i1 %i.lj, label %.lr.ph.preheader.i444.i, label %_ZL16ggml_vec_set_f32iPff.exit.i

.lr.ph.preheader.i444.i:                          ; preds = %_ZL18ggml_vec_scale_f32iPff.exit443.i
  %scevgep.i = getelementptr i8, ptr %i.ie, i64 %3
  %wide.trip.count.i445.i = shl i64 %i.ir, 2
  %i.oj = and i64 %wide.trip.count.i445.i, 8589934588
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.oj, i1 false), !tbaa !43
  br label %_ZL16ggml_vec_set_f32iPff.exit.i

_ZL16ggml_vec_set_f32iPff.exit.i:                 ; preds = %.lr.ph.preheader.i444.i, %_ZL18ggml_vec_scale_f32iPff.exit443.i
  br i1 %i.gb, label %.lr.ph550.i, label %._crit_edge551.i

.lr.ph550.i:                                      ; preds = %_ZL16ggml_vec_set_f32iPff.exit.i
  %i.ok = mul i64 %indvars.iv590.i, %i.ck
  %i.ol = and i64 %i.ir, 2147483584
  %i.om = sext i32 %i.iw to i64                   ; 7 uses
  %sext539.i = shl i64 %i.ir, 32
  %i.on = ashr exact i64 %sext539.i, 32           ; 2 uses
  %i.oo = or disjoint i64 %i.om, 1
  %smax214 = call i64 @llvm.smax.i64(i64 %i.oo, i64 %i.on) ; 3 uses
  %i.op = sub i64 %smax214, %i.om                 ; 4 uses
  %min.iters.check215 = icmp ult i64 %i.op, 8
  %min.iters.check217 = icmp ult i64 %i.op, 32
  %i.oq = and i64 %smax214, 31                    ; 3 uses
  %n.vec219 = sub nuw i64 %i.op, %i.oq            ; 3 uses
  %i.or = add i64 %n.vec219, %i.om
  %cmp.n234 = icmp eq i64 %i.oq, 0
  %min.epilog.iters.check240 = icmp samesign ult i64 %i.oq, 8
  %i.os = and i64 %smax214, 7                     ; 2 uses
  %n.vec242 = sub i64 %i.op, %i.os                ; 2 uses
  %i.ot = add i64 %n.vec242, %i.om
  %cmp.n251 = icmp eq i64 %i.os, 0
  br label %bb.ai

.lr.ph547.i:                                      ; preds = %.lr.ph547.i.preheader, %.lr.ph547.i
  %.0371546.i = phi i64 [ %i.ov, %.lr.ph547.i ], [ %.0371546.i.ph, %.lr.ph547.i.preheader ] ; 2 uses
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.if, i64 %.0371546.i
  store float -inf, ptr %i.ou, align 4, !tbaa !43
  %i.ov = add nsw i64 %.0371546.i, 1              ; 2 uses
  %exitcond585.not.i = icmp eq i64 %i.ov, %i.aw
  br i1 %exitcond585.not.i, label %._crit_edge548.i, label %.lr.ph547.i, !llvm.loop !1566

._crit_edge551.i:                                 ; preds = %_ZL16ggml_vec_mad_f32iPfPKff.exit.i, %_ZL16ggml_vec_set_f32iPff.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !43
  call void @ggml_vec_dot_f32(i32 noundef %i.iv, ptr noundef nonnull %i.a, i64 noundef 0, ptr noundef %i.ig, i64 noundef 0, ptr noundef %i.if, i64 noundef 0, i32 noundef 1)
  %i.ow = load float, ptr %i.a, align 4, !tbaa !43 ; 3 uses
  br i1 %i.ge, label %iter.check199, label %_ZL17ggml_vec_acc1_f32iPff.exit.i

iter.check199:                                    ; preds = %._crit_edge551.i
  br i1 %min.iters.check182, label %.lr.ph.i452.i.preheader, label %vector.main.loop.iter.check183

vector.main.loop.iter.check183:                   ; preds = %iter.check199
  br i1 %min.iters.check184, label %vec.epilog.ph203, label %vector.ph185

vector.ph185:                                     ; preds = %vector.main.loop.iter.check183
  %broadcast.splatinsert187 = insertelement <8 x float> poison, float %i.ow, i64 0
  %broadcast.splat188 = shufflevector <8 x float> %broadcast.splatinsert187, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body189

vector.body189:                                   ; preds = %vector.ph185, %vector.body189
  %index190 = phi i64 [ 0, %vector.ph185 ], [ %index.next195, %vector.body189 ] ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %index190 ; 5 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 32 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 64 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 96 ; 2 uses
  %wide.load191 = load <8 x float>, ptr %i.ox, align 4, !tbaa !43
  %wide.load192 = load <8 x float>, ptr %i.oy, align 4, !tbaa !43
  %wide.load193 = load <8 x float>, ptr %i.oz, align 4, !tbaa !43
  %wide.load194 = load <8 x float>, ptr %i.pa, align 4, !tbaa !43
  %i.pb = fsub <8 x float> %wide.load191, %broadcast.splat188
  %i.pc = fsub <8 x float> %wide.load192, %broadcast.splat188
  %i.pd = fsub <8 x float> %wide.load193, %broadcast.splat188
  %i.pe = fsub <8 x float> %wide.load194, %broadcast.splat188
  store <8 x float> %i.pb, ptr %i.ox, align 4, !tbaa !43
  store <8 x float> %i.pc, ptr %i.oy, align 4, !tbaa !43
  store <8 x float> %i.pd, ptr %i.oz, align 4, !tbaa !43
  store <8 x float> %i.pe, ptr %i.pa, align 4, !tbaa !43
  %index.next195 = add nuw i64 %index190, 32      ; 2 uses
  %i.pf = icmp eq i64 %index.next195, %n.vec186
  br i1 %i.pf, label %middle.block196, label %vector.body189, !llvm.loop !1567

middle.block196:                                  ; preds = %vector.body189
  br i1 %cmp.n197, label %_ZL17ggml_vec_acc1_f32iPff.exit.i, label %vec.epilog.iter.check201

vec.epilog.iter.check201:                         ; preds = %middle.block196
  br i1 %min.epilog.iters.check202, label %.lr.ph.i452.i.preheader, label %vec.epilog.ph203, !prof !52

vec.epilog.ph203:                                 ; preds = %vector.main.loop.iter.check183, %vec.epilog.iter.check201
  %vec.epilog.resume.val198 = phi i64 [ %n.vec186, %vec.epilog.iter.check201 ], [ 0, %vector.main.loop.iter.check183 ]
  %broadcast.splatinsert205 = insertelement <4 x float> poison, float %i.ow, i64 0
  %broadcast.splat206 = shufflevector <4 x float> %broadcast.splatinsert205, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body207

vec.epilog.vector.body207:                        ; preds = %vec.epilog.vector.body207, %vec.epilog.ph203
  %index208 = phi i64 [ %vec.epilog.resume.val198, %vec.epilog.ph203 ], [ %index.next210, %vec.epilog.vector.body207 ] ; 2 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %index208 ; 2 uses
  %wide.load209 = load <4 x float>, ptr %i.pg, align 4, !tbaa !43
  %i.ph = fsub <4 x float> %wide.load209, %broadcast.splat206
  store <4 x float> %i.ph, ptr %i.pg, align 4, !tbaa !43
  %index.next210 = add nuw i64 %index208, 4       ; 2 uses
  %i.pi = icmp eq i64 %index.next210, %n.vec204
  br i1 %i.pi, label %vec.epilog.middle.block211, label %vec.epilog.vector.body207, !llvm.loop !1568

vec.epilog.middle.block211:                       ; preds = %vec.epilog.vector.body207
  br i1 %cmp.n212, label %_ZL17ggml_vec_acc1_f32iPff.exit.i, label %.lr.ph.i452.i.preheader

.lr.ph.i452.i.preheader:                          ; preds = %iter.check199, %vec.epilog.iter.check201, %vec.epilog.middle.block211
  %indvars.iv.i453.i.ph = phi i64 [ 0, %iter.check199 ], [ %n.vec186, %vec.epilog.iter.check201 ], [ %n.vec204, %vec.epilog.middle.block211 ]
  br label %.lr.ph.i452.i

.lr.ph.i452.i:                                    ; preds = %.lr.ph.i452.i.preheader, %.lr.ph.i452.i
  %indvars.iv.i453.i = phi i64 [ %indvars.iv.next.i454.i, %.lr.ph.i452.i ], [ %indvars.iv.i453.i.ph, %.lr.ph.i452.i.preheader ] ; 2 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.i453.i ; 2 uses
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !43
  %i.pl = fsub float %i.pk, %i.ow
  store float %i.pl, ptr %i.pj, align 4, !tbaa !43
  %indvars.iv.next.i454.i = add nuw nsw i64 %indvars.iv.i453.i, 1 ; 2 uses
  %exitcond.not.i455.i = icmp eq i64 %indvars.iv.next.i454.i, %wide.trip.count.i451.i
  br i1 %exitcond.not.i455.i, label %_ZL17ggml_vec_acc1_f32iPff.exit.i, label %.lr.ph.i452.i, !llvm.loop !1569

_ZL17ggml_vec_acc1_f32iPff.exit.i:                ; preds = %.lr.ph.i452.i, %middle.block196, %vec.epilog.middle.block211, %._crit_edge551.i
  br i1 %i.lj, label %iter.check169, label %.preheader.i462.i

iter.check169:                                    ; preds = %_ZL17ggml_vec_acc1_f32iPff.exit.i
  %wide.trip.count.i457.i = and i64 %i.ir, 2147483647 ; 7 uses
  %min.iters.check150 = icmp samesign ult i64 %wide.trip.count.i457.i, 4
  br i1 %min.iters.check150, label %.lr.ph.i458.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check169
  %scevgep = getelementptr i8, ptr %i.ie, i64 %i.gp ; 2 uses
  %i.pm = shl nuw nsw i64 %wide.trip.count.i457.i, 2 ; 2 uses
  %scevgep147 = getelementptr i8, ptr %scevgep, i64 %i.pm
  %i.pn = getelementptr i8, ptr %i.ie, i64 %i.gp
  %i.po = getelementptr i8, ptr %i.pn, i64 %i.gq
  %scevgep148 = getelementptr i8, ptr %i.po, i64 64 ; 2 uses
  %scevgep149 = getelementptr i8, ptr %scevgep148, i64 %i.pm
  %bound0 = icmp ult ptr %scevgep, %scevgep149
  %bound1 = icmp ult ptr %scevgep148, %scevgep147
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i458.i.preheader, label %vector.main.loop.iter.check151

vector.main.loop.iter.check151:                   ; preds = %vector.memcheck
  %min.iters.check152 = icmp samesign ult i64 %wide.trip.count.i457.i, 32
  br i1 %min.iters.check152, label %vec.epilog.ph173, label %vector.ph153

vector.ph153:                                     ; preds = %vector.main.loop.iter.check151
  %i.pp = and i64 %i.ir, 28
  %n.vec154 = and i64 %i.ir, 2147483616           ; 4 uses
  br label %vector.body155

vector.body155:                                   ; preds = %vector.ph153, %vector.body155
  %index156 = phi i64 [ 0, %vector.ph153 ], [ %index.next165, %vector.body155 ] ; 3 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %index156 ; 5 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 32 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 64 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pq, i64 96 ; 2 uses
  %wide.load157 = load <8 x float>, ptr %i.pq, align 4, !tbaa !43, !alias.scope !1609, !noalias !1610
  %wide.load158 = load <8 x float>, ptr %i.pr, align 4, !tbaa !43, !alias.scope !1609, !noalias !1610
  %wide.load159 = load <8 x float>, ptr %i.ps, align 4, !tbaa !43, !alias.scope !1609, !noalias !1610
  %wide.load160 = load <8 x float>, ptr %i.pt, align 4, !tbaa !43, !alias.scope !1609, !noalias !1610
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %index156 ; 4 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 32
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pu, i64 64
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 96
  %wide.load161 = load <8 x float>, ptr %i.pu, align 4, !tbaa !43, !alias.scope !1610
  %wide.load162 = load <8 x float>, ptr %i.pv, align 4, !tbaa !43, !alias.scope !1610
  %wide.load163 = load <8 x float>, ptr %i.pw, align 4, !tbaa !43, !alias.scope !1610
  %wide.load164 = load <8 x float>, ptr %i.px, align 4, !tbaa !43, !alias.scope !1610
  %i.py = fmul <8 x float> %wide.load157, %wide.load161
  %i.pz = fmul <8 x float> %wide.load158, %wide.load162
  %i.qa = fmul <8 x float> %wide.load159, %wide.load163
  %i.qb = fmul <8 x float> %wide.load160, %wide.load164
  store <8 x float> %i.py, ptr %i.pq, align 4, !tbaa !43, !alias.scope !1609, !noalias !1610
  store <8 x float> %i.pz, ptr %i.pr, align 4, !tbaa !43, !alias.scope !1609, !noalias !1610
  store <8 x float> %i.qa, ptr %i.ps, align 4, !tbaa !43, !alias.scope !1609, !noalias !1610
  store <8 x float> %i.qb, ptr %i.pt, align 4, !tbaa !43, !alias.scope !1609, !noalias !1610
  %index.next165 = add nuw i64 %index156, 32      ; 2 uses
  %i.qc = icmp eq i64 %index.next165, %n.vec154
  br i1 %i.qc, label %middle.block166, label %vector.body155, !llvm.loop !1573

middle.block166:                                  ; preds = %vector.body155
  %cmp.n167 = icmp eq i64 %wide.trip.count.i457.i, %n.vec154
  br i1 %cmp.n167, label %_ZL16ggml_vec_mul_f32iPfPKfS1_.exit.i, label %vec.epilog.iter.check171

vec.epilog.iter.check171:                         ; preds = %middle.block166
  %min.epilog.iters.check172 = icmp eq i64 %i.pp, 0
  br i1 %min.epilog.iters.check172, label %.lr.ph.i458.i.preheader, label %vec.epilog.ph173, !prof !52

vec.epilog.ph173:                                 ; preds = %vector.main.loop.iter.check151, %vec.epilog.iter.check171
  %vec.epilog.resume.val168 = phi i64 [ %n.vec154, %vec.epilog.iter.check171 ], [ 0, %vector.main.loop.iter.check151 ]
  %n.vec174 = and i64 %i.ir, 2147483644           ; 3 uses
  br label %vec.epilog.vector.body175

vec.epilog.vector.body175:                        ; preds = %vec.epilog.vector.body175, %vec.epilog.ph173
  %index176 = phi i64 [ %vec.epilog.resume.val168, %vec.epilog.ph173 ], [ %index.next179, %vec.epilog.vector.body175 ] ; 3 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %index176 ; 2 uses
  %wide.load177 = load <4 x float>, ptr %i.qd, align 4, !tbaa !43, !alias.scope !1609, !noalias !1610
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %index176
  %wide.load178 = load <4 x float>, ptr %i.qe, align 4, !tbaa !43, !alias.scope !1610
  %i.qf = fmul <4 x float> %wide.load177, %wide.load178
  store <4 x float> %i.qf, ptr %i.qd, align 4, !tbaa !43, !alias.scope !1609, !noalias !1610
  %index.next179 = add nuw i64 %index176, 4       ; 2 uses
  %i.qg = icmp eq i64 %index.next179, %n.vec174
  br i1 %i.qg, label %vec.epilog.middle.block180, label %vec.epilog.vector.body175, !llvm.loop !1574

vec.epilog.middle.block180:                       ; preds = %vec.epilog.vector.body175
  %cmp.n181 = icmp eq i64 %wide.trip.count.i457.i, %n.vec174
  br i1 %cmp.n181, label %_ZL16ggml_vec_mul_f32iPfPKfS1_.exit.i, label %.lr.ph.i458.i.preheader

.lr.ph.i458.i.preheader:                          ; preds = %iter.check169, %vector.memcheck, %vec.epilog.iter.check171, %vec.epilog.middle.block180
  %indvars.iv.i459.i.ph = phi i64 [ 0, %iter.check169 ], [ 0, %vector.memcheck ], [ %n.vec154, %vec.epilog.iter.check171 ], [ %n.vec174, %vec.epilog.middle.block180 ] ; 4 uses
  %i.qh = sub i64 %i.ir, %indvars.iv.i459.i.ph
  %xtraiter371 = and i64 %i.qh, 7                 ; 2 uses
  %lcmp.mod372.not = icmp eq i64 %xtraiter371, 0
  br i1 %lcmp.mod372.not, label %.lr.ph.i458.i.prol.loopexit, label %.lr.ph.i458.i.prol

.lr.ph.i458.i.prol:                               ; preds = %.lr.ph.i458.i.preheader, %.lr.ph.i458.i.prol
  %indvars.iv.i459.i.prol = phi i64 [ %indvars.iv.next.i460.i.prol, %.lr.ph.i458.i.prol ], [ %indvars.iv.i459.i.ph, %.lr.ph.i458.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i458.i.prol ], [ 0, %.lr.ph.i458.i.preheader ]
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.i459.i.prol ; 2 uses
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !43
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv.i459.i.prol
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !43
  %i.qm = fmul float %i.qj, %i.ql
  store float %i.qm, ptr %i.qi, align 4, !tbaa !43
  %indvars.iv.next.i460.i.prol = add nuw nsw i64 %indvars.iv.i459.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter371
  br i1 %prol.iter.cmp.not, label %.lr.ph.i458.i.prol.loopexit, label %.lr.ph.i458.i.prol, !llvm.loop !1575

.lr.ph.i458.i.prol.loopexit:                      ; preds = %.lr.ph.i458.i.prol, %.lr.ph.i458.i.preheader
  %indvars.iv.i459.i.unr = phi i64 [ %indvars.iv.i459.i.ph, %.lr.ph.i458.i.preheader ], [ %indvars.iv.next.i460.i.prol, %.lr.ph.i458.i.prol ]
  %i.qn = sub nsw i64 %indvars.iv.i459.i.ph, %wide.trip.count.i457.i
  %i.qo = icmp ugt i64 %i.qn, -8
  br i1 %i.qo, label %_ZL16ggml_vec_mul_f32iPfPKfS1_.exit.i, label %.lr.ph.i458.i

.lr.ph.i458.i:                                    ; preds = %.lr.ph.i458.i.prol.loopexit, %.lr.ph.i458.i
  %indvars.iv.i459.i = phi i64 [ %indvars.iv.next.i460.i.7, %.lr.ph.i458.i ], [ %indvars.iv.i459.i.unr, %.lr.ph.i458.i.prol.loopexit ] ; 10 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.i459.i ; 2 uses
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !43
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv.i459.i
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !43
  %i.qt = fmul float %i.qq, %i.qs
  store float %i.qt, ptr %i.qp, align 4, !tbaa !43
  %indvars.iv.next.i460.i = add nuw nsw i64 %indvars.iv.i459.i, 1 ; 2 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i460.i ; 2 uses
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !43
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv.next.i460.i
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !43
  %i.qy = fmul float %i.qv, %i.qx
  store float %i.qy, ptr %i.qu, align 4, !tbaa !43
  %indvars.iv.next.i460.i.1 = add nuw nsw i64 %indvars.iv.i459.i, 2 ; 2 uses
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i460.i.1 ; 2 uses
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !43
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv.next.i460.i.1
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !43
  %i.rd = fmul float %i.ra, %i.rc
  store float %i.rd, ptr %i.qz, align 4, !tbaa !43
  %indvars.iv.next.i460.i.2 = add nuw nsw i64 %indvars.iv.i459.i, 3 ; 2 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i460.i.2 ; 2 uses
  %i.rf = load float, ptr %i.re, align 4, !tbaa !43
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv.next.i460.i.2
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !43
  %i.ri = fmul float %i.rf, %i.rh
  store float %i.ri, ptr %i.re, align 4, !tbaa !43
  %indvars.iv.next.i460.i.3 = add nuw nsw i64 %indvars.iv.i459.i, 4 ; 2 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i460.i.3 ; 2 uses
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !43
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv.next.i460.i.3
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !43
  %i.rn = fmul float %i.rk, %i.rm
  store float %i.rn, ptr %i.rj, align 4, !tbaa !43
  %indvars.iv.next.i460.i.4 = add nuw nsw i64 %indvars.iv.i459.i, 5 ; 2 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i460.i.4 ; 2 uses
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !43
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv.next.i460.i.4
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !43
  %i.rs = fmul float %i.rp, %i.rr
  store float %i.rs, ptr %i.ro, align 4, !tbaa !43
  %indvars.iv.next.i460.i.5 = add nuw nsw i64 %indvars.iv.i459.i, 6 ; 2 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i460.i.5 ; 2 uses
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !43
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv.next.i460.i.5
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !43
  %i.rx = fmul float %i.ru, %i.rw
  store float %i.rx, ptr %i.rt, align 4, !tbaa !43
  %indvars.iv.next.i460.i.6 = add nuw nsw i64 %indvars.iv.i459.i, 7 ; 2 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.next.i460.i.6 ; 2 uses
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !43
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv.next.i460.i.6
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !43
  %i.sc = fmul float %i.rz, %i.sb
  store float %i.sc, ptr %i.ry, align 4, !tbaa !43
  %indvars.iv.next.i460.i.7 = add nuw nsw i64 %indvars.iv.i459.i, 8 ; 2 uses
  %exitcond.not.i461.i.7 = icmp eq i64 %indvars.iv.next.i460.i.7, %wide.trip.count.i457.i
  br i1 %exitcond.not.i461.i.7, label %_ZL16ggml_vec_mul_f32iPfPKfS1_.exit.i, label %.lr.ph.i458.i, !llvm.loop !1576

_ZL16ggml_vec_mul_f32iPfPKfS1_.exit.i:            ; preds = %.lr.ph.i458.i.prol.loopexit, %.lr.ph.i458.i, %vec.epilog.middle.block180, %middle.block166
  br i1 %i.ix, label %.preheader27.preheader.i468.i, label %.preheader.i462.i

.preheader27.preheader.i468.i:                    ; preds = %_ZL16ggml_vec_mul_f32iPfPKfS1_.exit.i
  %i.sd = and i64 %i.ir, 2147483584
  br label %.preheader27.i469.i

.preheader27.i469.i:                              ; preds = %.preheader27.i469.i, %.preheader27.preheader.i468.i
  %indvars.iv.i470.i = phi i64 [ 0, %.preheader27.preheader.i468.i ], [ %indvars.iv.next.i471.i, %.preheader27.i469.i ] ; 2 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %indvars.iv.i470.i ; 5 uses
  %i.sf = load <16 x float>, ptr %i.se, align 1, !tbaa !56
  %i.sg = fmul <16 x float> %i.ga, %i.sf
  store <16 x float> %i.sg, ptr %i.se, align 1, !tbaa !56
  %i.sh = getelementptr inbounds nuw i8, ptr %i.se, i64 64 ; 2 uses
  %i.si = load <16 x float>, ptr %i.sh, align 1, !tbaa !56
  %i.sj = fmul <16 x float> %i.ga, %i.si
  store <16 x float> %i.sj, ptr %i.sh, align 1, !tbaa !56
  %i.sk = getelementptr inbounds nuw i8, ptr %i.se, i64 128 ; 2 uses
  %i.sl = load <16 x float>, ptr %i.sk, align 1, !tbaa !56
  %i.sm = fmul <16 x float> %i.ga, %i.sl
  store <16 x float> %i.sm, ptr %i.sk, align 1, !tbaa !56
  %i.sn = getelementptr inbounds nuw i8, ptr %i.se, i64 192 ; 2 uses
  %i.so = load <16 x float>, ptr %i.sn, align 1, !tbaa !56
  %i.sp = fmul <16 x float> %i.ga, %i.so
  store <16 x float> %i.sp, ptr %i.sn, align 1, !tbaa !56
  %indvars.iv.next.i471.i = add nuw nsw i64 %indvars.iv.i470.i, 64 ; 2 uses
  %i.sq = icmp samesign ult i64 %indvars.iv.next.i471.i, %i.sd
  br i1 %i.sq, label %.preheader27.i469.i, label %.preheader.i462.i, !llvm.loop !2

.preheader.i462.i:                                ; preds = %.preheader27.i469.i, %_ZL16ggml_vec_mul_f32iPfPKfS1_.exit.i, %_ZL17ggml_vec_acc1_f32iPff.exit.i
  br i1 %.not.i.i, label %_ZL18ggml_vec_scale_f32iPff.exit472.i, label %iter.check132

iter.check132:                                    ; preds = %.preheader.i462.i
  %i.sr = sext i32 %i.iw to i64                   ; 7 uses
  %sext535.i = shl i64 %i.ir, 32
  %i.ss = ashr exact i64 %sext535.i, 32           ; 2 uses
  %i.st = or disjoint i64 %i.sr, 1
  %smax114 = call i64 @llvm.smax.i64(i64 %i.st, i64 %i.ss) ; 3 uses
  %i.su = sub i64 %smax114, %i.sr                 ; 4 uses
  %min.iters.check115 = icmp ult i64 %i.su, 8
  br i1 %min.iters.check115, label %.lr.ph.i465.i.preheader, label %vector.main.loop.iter.check116
end_hunk_4
