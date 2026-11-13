Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 224
loop-unroll.NumUnrolled: 271
begin_hunk_0_@ggml_compute_forward_conv_transpose_1d:bb.a
  %.0155174.i38.prol = phi i64 [ %i.nm, %vec.epilog.scalar.ph128.prol ], [ %.0155174.i38.ph, %vec.epilog.scalar.ph128.preheader ] ; 3 uses
  %prol.iter204 = phi i64 [ %prol.iter204.next, %vec.epilog.scalar.ph128.prol ], [ 0, %vec.epilog.scalar.ph128.preheader ]
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mv, i64 %.0155174.i38.prol
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !43
  %i.nl = mul nuw nsw i64 %.0155174.i38.prol, %i.ih
  %gep173.i39.prol = getelementptr [4 x i8], ptr %invariant.gep.i37, i64 %i.nl
  store float %i.nk, ptr %gep173.i39.prol, align 4, !tbaa !43
  %i.nm = add nuw nsw i64 %.0155174.i38.prol, 1   ; 2 uses
  %prol.iter204.next = add i64 %prol.iter204, 1   ; 2 uses
  %prol.iter204.cmp.not = icmp eq i64 %prol.iter204.next, %xtraiter202
  br i1 %prol.iter204.cmp.not, label %vec.epilog.scalar.ph128.prol.loopexit, label %vec.epilog.scalar.ph128.prol, !llvm.loop !997

vec.epilog.scalar.ph128.prol.loopexit:            ; preds = %vec.epilog.scalar.ph128.prol, %vec.epilog.scalar.ph128.preheader
  %.0155174.i38.unr = phi i64 [ %.0155174.i38.ph, %vec.epilog.scalar.ph128.preheader ], [ %i.nm, %vec.epilog.scalar.ph128.prol ]
  %i.nn = sub nsw i64 %.0155174.i38.ph, %i.if
  %i.no = icmp ugt i64 %i.nn, -8
  br i1 %i.no, label %._crit_edge177.i41, label %vec.epilog.scalar.ph128

._crit_edge177.i41:                               ; preds = %vec.epilog.scalar.ph128.prol.loopexit, %vec.epilog.scalar.ph128, %vec.epilog.middle.block137, %middle.block124
  %i.np = add nuw nsw i64 %.0156178.i36, 1        ; 2 uses
  %exitcond199.not.i42 = icmp eq i64 %i.np, %i.ih
  br i1 %exitcond199.not.i42, label %._crit_edge181.split.i33, label %iter.check126, !llvm.loop !998

vec.epilog.scalar.ph128:                          ; preds = %vec.epilog.scalar.ph128.prol.loopexit, %vec.epilog.scalar.ph128
  %.0155174.i38 = phi i64 [ %i.ov, %vec.epilog.scalar.ph128 ], [ %.0155174.i38.unr, %vec.epilog.scalar.ph128.prol.loopexit ] ; 10 uses
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
  br i1 %exitcond198.not.i40.7, label %._crit_edge177.i41, label %vec.epilog.scalar.ph128, !llvm.loop !999

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
  br i1 %exitcond209.not.i29, label %_ZL46ggml_compute_forward_conv_transpose_1d_f16_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph188.i14, !llvm.loop !1000

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
  br i1 %exitcond205.not.i26, label %._crit_edge189.i27, label %.lr.ph184.i16, !llvm.loop !1001

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
  br i1 %exitcond201.not.i23, label %._crit_edge185.i24, label %bb.y, !llvm.loop !1002

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
  %i.k = phi i64 [ %i.h, %bb.e ], [ 0, %bb.d ]    ; 33 uses
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
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !31 ; 7 uses
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
  %i.bc = select i1 %i.au, i64 %i.af, i64 1       ; 5 uses
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
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !37 ; 3 uses
  %i.bj = icmp sgt i64 %i.ay, 0
  br i1 %i.bj, label %.preheader200.lr.ph.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit

.preheader200.lr.ph.i:                            ; preds = %bb.g
  %i.bk = icmp slt i64 %i.bc, 1
  %i.bl = icmp slt i64 %i.ad, 1
  %i.bm = sext i32 %i.av to i64                   ; 4 uses
  %i.bn = icmp sle i64 %i.az, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 248 ; 2 uses
  %i.bp = shl i64 %i.bd, 32
  %i.bq = ashr exact i64 %i.bp, 32
  %i.br = shl i64 %i.be, 32
  %i.bs = ashr exact i64 %i.br, 32                ; 2 uses
  %factor.op.mul208.i = mul i64 %i.bb, %i.k       ; 2 uses
  %i.bt = sext i32 %i.ah to i64                   ; 3 uses
  %i.bu = sext i32 %i.ap to i64                   ; 6 uses
  %i.bv = sext i32 %i.al to i64                   ; 3 uses
  %i.bw = sext i32 %i.aj to i64                   ; 3 uses
  %i.bx = sext i32 %i.ar to i64                   ; 6 uses
  %i.by = sext i32 %i.an to i64                   ; 5 uses
  %i.bz = sext i32 %i.ax to i64                   ; 3 uses
  %brmerge.i = select i1 %i.bk, i1 true, i1 %i.bl
  %brmerge327.i = select i1 %brmerge.i, i1 true, i1 %i.bn
  br i1 %brmerge327.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader200.lr.ph.split.split.split.i

.preheader200.lr.ph.split.split.split.i:          ; preds = %.preheader200.lr.ph.i
  %i.ca = icmp slt i64 %i.k, 1
  %i.cb = icmp slt i64 %i.bb, 1
  %i.cc = load i32, ptr %i.e, align 8, !tbaa !30
  %brmerge374.i = select i1 %i.cb, i1 true, i1 %i.ca
  br i1 %brmerge374.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader200.us.us.preheader.i

.preheader200.us.us.preheader.i:                  ; preds = %.preheader200.lr.ph.split.split.split.i
  %i.cd = shl nuw i64 %i.k, 1                     ; 2 uses
  %2 = mul i64 %i.bb, %i.az
  %factor.op.mul262.reass.i = mul i64 %2, %i.k
  %i.ce = mul i64 %i.n, %i.bx
  %i.cf = shl nuw i64 %i.k, 1                     ; 2 uses
  %i.cg = add nuw i64 %i.bb, 9223372036854775807
  %i.ch = mul i64 %i.cg, %i.bx
  %i.ci = sub i64 %i.ch, %i.by
  %i.cj = shl i64 %i.ci, 1
  %i.ck = mul i64 %i.n, %i.cj
  %i.cl = add i64 %i.ck, %i.cf
  %i.cm = shl nsw i64 %i.bv, 1                    ; 2 uses
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = mul i64 %i.n, %i.bw
  %i.cp = shl i64 %i.co, 1
  %i.cq = shl nsw i64 %i.bt, 1
  %i.cr = mul i64 %i.n, %i.by
  %i.cs = mul i64 %i.cr, -2
  %i.ct = sub i64 %i.cs, %i.cm
  %i.cu = mul i64 %i.bb, %i.k
  %i.cv = shl nsw i64 %i.bm, 1
  %i.cw = add nsw i64 %i.cv, 2
  %i.cx = mul i64 %i.cu, %i.cw
  %i.cy = mul i64 %i.bb, %i.az
  %i.cz = mul i64 %i.cy, %i.bc
  %i.da = mul i64 %i.cz, %i.k
  %i.db = mul i64 %i.da, %i.ad
  %i.dc = shl i64 %i.db, 1
  %i.dd = mul i64 %i.bb, %i.az
  %i.de = mul i64 %i.dd, %i.k
  %i.df = mul i64 %i.de, %i.ad
  %i.dg = shl i64 %i.df, 1
  %i.dh = mul i64 %i.bb, %i.az
  %i.di = mul i64 %i.dh, %i.k
  %i.dj = shl i64 %i.di, 1
  %i.dk = mul i64 %i.bb, %i.k
  %i.dl = mul i64 %i.dk, %i.bz
  %i.dm = shl i64 %i.dl, 1
  %i.dn = mul i64 %i.n, %i.bx
  %i.do = add nuw i64 %i.bb, 4611686018427387903
  %i.dp = mul i64 %i.do, %i.bx
  %i.dq = sub i64 %i.dp, %i.by
  %i.dr = shl i64 %i.dq, 2
  %i.ds = mul i64 %i.n, %i.dr
  %i.dt = shl i64 %i.k, 2
  %i.du = add i64 %i.ds, %i.dt
  %i.dv = shl nsw i64 %i.bv, 2                    ; 2 uses
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = mul i64 %i.n, %i.bw
  %i.dy = shl i64 %i.dx, 2
  %i.dz = shl nsw i64 %i.bt, 2
  %i.ea = mul i64 %i.n, %i.by
  %i.eb = mul i64 %i.ea, -4
  %i.ec = sub i64 %i.eb, %i.dv
  %i.ed = mul i64 %i.bb, %i.k
  %i.ee = shl nsw i64 %i.bm, 1
  %i.ef = add nsw i64 %i.ee, 2
  %i.eg = mul i64 %i.ed, %i.ef
  %i.eh = mul i64 %i.bb, %i.az
  %i.ei = mul i64 %i.eh, %i.bc
  %i.ej = mul i64 %i.ei, %i.k
  %i.ek = mul i64 %i.ej, %i.ad
  %i.el = shl i64 %i.ek, 1
  %i.em = mul i64 %i.bb, %i.az
  %i.en = mul i64 %i.em, %i.k
  %i.eo = mul i64 %i.en, %i.ad
  %i.ep = shl i64 %i.eo, 1
  %i.eq = mul i64 %i.bb, %i.az
  %i.er = mul i64 %i.eq, %i.k
  %i.es = shl i64 %i.er, 1
  %i.et = mul i64 %i.bb, %i.k
  %i.eu = mul i64 %i.et, %i.bz
  %i.ev = shl i64 %i.eu, 1
  %i.ew = getelementptr i8, ptr %i.bi, i64 %i.eg
  %i.ex = getelementptr i8, ptr %i.bi, i64 %i.cx
  %min.iters.check164 = icmp ugt i64 %i.k, 7
  %ident.check151.not = icmp eq i32 %i.ap, 1
  %or.cond = select i1 %min.iters.check164, i1 %ident.check151.not, i1 false
  %stride.check169 = icmp ugt i64 %i.k, 4611686018427387903
  %.mask188 = and i64 %i.dn, 2305843009213693952
  %stride.check170 = icmp ne i64 %.mask188, 0
  %invariant.op205 = or i1 %stride.check169, %stride.check170
  %n.vec172 = and i64 %i.k, 4611686018427387896   ; 3 uses
  %broadcast.splatinsert175 = insertelement <8 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat176 = shufflevector <8 x i64> %broadcast.splatinsert175, <8 x i64> poison, <8 x i32> zeroinitializer
  %cmp.n185 = icmp eq i64 %i.k, %n.vec172
  %min.iters.check102 = icmp ugt i64 %i.k, 3
  %ident.check85.not = icmp eq i32 %i.ap, 1
  %or.cond190 = select i1 %min.iters.check102, i1 %ident.check85.not, i1 false
  %stride.check107 = icmp slt i64 %i.cf, 0
  %.mask189 = and i64 %i.ce, 4611686018427387904
  %stride.check108 = icmp ne i64 %.mask189, 0
  %invariant.op207 = or i1 %stride.check107, %stride.check108
  %min.iters.check110 = icmp ult i64 %i.k, 16
  %i.ey = and i64 %i.k, 12
  %n.vec112 = and i64 %i.k, 9223372036854775792   ; 4 uses
  %broadcast.splatinsert115 = insertelement <16 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat116 = shufflevector <16 x i64> %broadcast.splatinsert115, <16 x i64> poison, <16 x i32> zeroinitializer
  %cmp.n125 = icmp eq i64 %i.k, %n.vec112
  %min.epilog.iters.check129 = icmp eq i64 %i.ey, 0
  %n.vec132 = and i64 %i.k, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert135 = insertelement <4 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat136 = shufflevector <4 x i64> %broadcast.splatinsert135, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n148 = icmp eq i64 %i.k, %n.vec132
  %xtraiter195 = and i64 %i.k, 3                  ; 2 uses
  %lcmp.mod196.not = icmp eq i64 %xtraiter195, 0
  br label %.preheader200.us.us.i

.preheader200.us.us.i:                            ; preds = %._crit_edge264.split274.us.split.us.us.us.i, %.preheader200.us.us.preheader.i
  %.0178289.us.us.i = phi i64 [ %i.ma, %._crit_edge264.split274.us.split.us.us.us.i ], [ 0, %.preheader200.us.us.preheader.i ] ; 5 uses
  %i.ez = mul i64 %i.el, %.0178289.us.us.i
  %i.fa = mul i64 %i.dc, %.0178289.us.us.i
  %i.fb = mul i64 %.0178289.us.us.i, %i.bc
  %i.fc = mul nsw i64 %.0178289.us.us.i, %i.bq    ; 2 uses
  %i.fd = getelementptr i8, ptr %i.ew, i64 %i.ez
  %i.fe = getelementptr i8, ptr %i.ex, i64 %i.fa
  br label %.preheader199.us.us.us.us.i

.preheader199.us.us.us.us.i:                      ; preds = %._crit_edge.split247.us.split.us.us.us.us.us.i, %.preheader200.us.us.i
  %.0177263.us.us.us.us.i = phi i64 [ 0, %.preheader200.us.us.i ], [ %i.lz, %._crit_edge.split247.us.split.us.us.us.us.us.i ] ; 7 uses
  %i.ff = mul i64 %i.dy, %.0177263.us.us.us.us.i  ; 2 uses
  %i.fg = mul i64 %i.ep, %.0177263.us.us.us.us.i
  %i.fh = mul i64 %i.cp, %.0177263.us.us.us.us.i  ; 2 uses
  %i.fi = mul i64 %i.dg, %.0177263.us.us.us.us.i
  %i.fj = add i64 %.0177263.us.us.us.us.i, %i.fb
  %i.fk = mul i64 %i.fj, %i.ad
  %i.fl = mul nsw i64 %.0177263.us.us.us.us.i, %i.bw
  %i.fm = sub i64 %i.fl, %i.by                    ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fd, i64 %i.fg
  %i.fo = getelementptr i8, ptr %i.fe, i64 %i.fi
  br label %.lr.ph.us.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.us.i:                       ; preds = %._crit_edge221.split.us.us.split.us.us.us.us.us.us.i, %.preheader199.us.us.us.us.i
  %.0176244.us.us.us.us.us.us.i = phi i64 [ 0, %.preheader199.us.us.us.us.i ], [ %i.ly, %._crit_edge221.split.us.us.split.us.us.us.us.us.us.i ] ; 7 uses
  %i.fp = mul i64 %i.dz, %.0176244.us.us.us.us.us.us.i ; 2 uses
  %i.fq = mul i64 %i.es, %.0176244.us.us.us.us.us.us.i
  %i.fr = mul i64 %i.cq, %.0176244.us.us.us.us.us.us.i ; 2 uses
  %i.fs = mul i64 %i.dj, %.0176244.us.us.us.us.us.us.i
  %i.ft = add i64 %.0176244.us.us.us.us.us.us.i, %i.fk
  %i.fu = mul i64 %factor.op.mul262.reass.i, %i.ft
  %i.fv = getelementptr [2 x i8], ptr %i.bi, i64 %i.fu ; 2 uses
  %i.fw = mul nsw i64 %.0176244.us.us.us.us.us.us.i, %i.bt
  %i.fx = sub i64 %i.fw, %i.bv                    ; 9 uses
  %i.fy = getelementptr i8, ptr %i.fn, i64 %i.fq
  %i.fz = getelementptr i8, ptr %i.fo, i64 %i.fs
  %broadcast.splatinsert173 = insertelement <8 x i64> poison, i64 %i.fx, i64 0
  %broadcast.splat174 = shufflevector <8 x i64> %broadcast.splatinsert173, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert113 = insertelement <16 x i64> poison, i64 %i.fx, i64 0
  %broadcast.splat114 = shufflevector <16 x i64> %broadcast.splatinsert113, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert133 = insertelement <4 x i64> poison, i64 %i.fx, i64 0
  %broadcast.splat134 = shufflevector <4 x i64> %broadcast.splatinsert133, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge211.us.us.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.us.i
  %indvar99 = phi i64 [ %indvar.next100, %._crit_edge211.us.us.us.us.us.us.us.us.i ], [ 0, %.lr.ph.us.us.us.us.us.us.i ] ; 3 uses
  %.0175219.us.us.us.us.us.us.us.us.i = phi i64 [ %i.lw, %._crit_edge211.us.us.us.us.us.us.us.us.i ], [ %i.bm, %.lr.ph.us.us.us.us.us.us.i ] ; 5 uses
  %i.ga = mul i64 %i.ev, %indvar99
  %scevgep163 = getelementptr i8, ptr %i.fy, i64 %i.ga
  %i.gb = mul i64 %i.dm, %indvar99
  %scevgep101 = getelementptr i8, ptr %i.fz, i64 %i.gb
  switch i32 %i.cc, label %.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i [
    i32 0, label %.preheader.lr.ph.us.us.us.us.us.us.us.us.i
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.gc = load ptr, ptr %i.bo, align 8, !tbaa !37
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 %i.fc
  %i.ge = mul nsw i64 %.0175219.us.us.us.us.us.us.us.us.i, %i.bs
  %i.gf = getelementptr inbounds i8, ptr %i.gd, i64 %i.ge
  br label %.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i

.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i: ; preds = %bb.i, %bb.h
  %.ph.i = phi ptr [ null, %bb.h ], [ %i.gf, %bb.i ]
  %factor.op.mul.reass.us.us.us.us.us.us.us.us366.i = mul i64 %.0175219.us.us.us.us.us.us.us.us.i, %factor.op.mul208.i
  br label %.preheader.us.us.us.us.us.us.us.us.us.preheader.i

.preheader.lr.ph.us.us.us.us.us.us.us.us.i:       ; preds = %bb.h
  %i.gg = load ptr, ptr %i.bo, align 8, !tbaa !37
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %i.fc
  %i.gi = mul nsw i64 %.0175219.us.us.us.us.us.us.us.us.i, %i.bs
  %i.gj = getelementptr inbounds i8, ptr %i.gh, i64 %i.gi
  %i.gk = freeze ptr %i.gj                        ; 4 uses
  %factor.op.mul.reass.us.us.us.us.us.us.us.us.i = mul i64 %.0175219.us.us.us.us.us.us.us.us.i, %factor.op.mul208.i ; 2 uses
  %.not192.us.us.us.us.us.us.us.us.i = icmp eq ptr %i.gk, null
  %i.gl = getelementptr [2 x i8], ptr %i.fv, i64 %factor.op.mul.reass.us.us.us.us.us.us.us.us.i ; 2 uses
  br i1 %.not192.us.us.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.us.us.us.preheader.i, label %.preheader.us224.us.us.us.us.us.us.us.i.preheader

.preheader.us224.us.us.us.us.us.us.us.i.preheader: ; preds = %.preheader.lr.ph.us.us.us.us.us.us.us.us.i
  %i.gm = getelementptr i8, ptr %i.gk, i64 %i.dw
  %i.gn = getelementptr i8, ptr %i.gm, i64 %i.ff
  %scevgep161 = getelementptr i8, ptr %i.gn, i64 %i.fp
  %i.go = getelementptr i8, ptr %i.gk, i64 %i.ec
  %i.gp = getelementptr i8, ptr %i.go, i64 %i.ff
  %scevgep162 = getelementptr i8, ptr %i.gp, i64 %i.fp
  %bound0166 = icmp ult ptr %i.gl, %scevgep161
  %bound1167 = icmp ult ptr %scevgep162, %scevgep163
  %found.conflict168 = and i1 %bound0166, %bound1167
  %.reass206 = or i1 %found.conflict168, %invariant.op205
  br label %.preheader.us224.us.us.us.us.us.us.us.i

.preheader.us.us.us.us.us.us.us.us.us.preheader.i: ; preds = %.preheader.lr.ph.us.us.us.us.us.us.us.us.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i
  %i.gq = phi i64 [ %factor.op.mul.reass.us.us.us.us.us.us.us.us366.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i ], [ %factor.op.mul.reass.us.us.us.us.us.us.us.us.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.i ]
  %i.gr = phi ptr [ %.ph.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.thread.i ], [ null, %.preheader.lr.ph.us.us.us.us.us.us.us.us.i ] ; 3 uses
  %i.gs = getelementptr [2 x i8], ptr %i.fv, i64 %i.gq ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gr, i64 %i.cn
  %i.gu = getelementptr i8, ptr %i.gt, i64 %i.fh
  %scevgep97 = getelementptr i8, ptr %i.gu, i64 %i.fr
  %i.gv = getelementptr i8, ptr %i.gr, i64 %i.ct
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.fh
  %scevgep98 = getelementptr i8, ptr %i.gw, i64 %i.fr
  %bound0104 = icmp ult ptr %i.gs, %scevgep97
  %bound1105 = icmp ult ptr %scevgep98, %scevgep101
  %found.conflict106 = and i1 %bound0104, %bound1105
  %.reass208 = or i1 %found.conflict106, %invariant.op207
  br label %.preheader.us.us.us.us.us.us.us.us.us.i

.preheader.us224.us.us.us.us.us.us.us.i:          ; preds = %.preheader.us224.us.us.us.us.us.us.us.i.preheader, %._crit_edge.us237.us.us.us.us.us.us.us.i
  %.0174210.us225.us.us.us.us.us.us.us.i = phi i64 [ %i.jl, %._crit_edge.us237.us.us.us.us.us.us.us.i ], [ 0, %.preheader.us224.us.us.us.us.us.us.us.i.preheader ] ; 3 uses
  %i.gx = mul nsw i64 %.0174210.us225.us.us.us.us.us.us.us.i, %i.bx
  %i.gy = add i64 %i.gx, %i.fm                    ; 3 uses
  %i.gz = icmp slt i64 %i.gy, 0
  %i.ha = mul nuw nsw i64 %i.gy, %i.n
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.ha ; 2 uses
  %i.hc = mul i64 %.0174210.us225.us.us.us.us.us.us.us.i, %i.k
  %i.hd = getelementptr [2 x i8], ptr %i.gl, i64 %i.hc ; 3 uses
  br i1 %i.gz, label %._crit_edge.us237.us.us.us.us.us.us.us.sink.split.i, label %.lr.ph.split.us226.us.us.us.us.us.us.us.i

.lr.ph.split.us226.us.us.us.us.us.us.us.i:        ; preds = %.preheader.us224.us.us.us.us.us.us.us.i
  %i.he = icmp slt i64 %i.gy, %i.ba
  %.fr.us227.us.us.us.us.us.us.us.i = freeze i1 %i.he
  br i1 %.fr.us227.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader, label %._crit_edge.us237.us.us.us.us.us.us.us.sink.split.i

.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader: ; preds = %.lr.ph.split.us226.us.us.us.us.us.us.us.i
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %.reass206
  br i1 %brmerge, label %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader192, label %vector.body177

vector.body177:                                   ; preds = %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader, %vector.body177
  %index178 = phi i64 [ %index.next182, %vector.body177 ], [ 0, %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader ] ; 2 uses
  %vec.ind179 = phi <8 x i64> [ %vec.ind.next183, %vector.body177 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader ] ; 2 uses
  %i.hf = add <8 x i64> %vec.ind179, %broadcast.splat174 ; 3 uses
  %i.hg = extractelement <8 x i64> %i.hf, i64 0
  %i.hh = icmp sgt <8 x i64> %i.hf, splat (i64 -1)
  %i.hi = icmp slt <8 x i64> %i.hf, %broadcast.splat176
  %i.hj = select <8 x i1> %i.hh, <8 x i1> %i.hi, <8 x i1> zeroinitializer ; 2 uses
  %i.hk = getelementptr [4 x i8], ptr %i.hb, i64 %i.hg
  %wide.masked.load180 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.hk, <8 x i1> %i.hj, <8 x float> poison), !tbaa !43, !alias.scope !1038 ; 2 uses
  %i.hl = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.masked.load180)
  %i.hm = fmul <8 x float> %i.hl, splat (float f0x77800000)
  %i.hn = fmul <8 x float> %i.hm, splat (float f0x08800000)
  %i.ho = bitcast <8 x float> %wide.masked.load180 to <8 x i32> ; 2 uses
  %i.hp = shl <8 x i32> %i.ho, splat (i32 1)      ; 2 uses
  %i.hq = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.hp, <8 x i32> splat (i32 1895825408))
  %i.hr = lshr exact <8 x i32> %i.hq, splat (i32 1)
  %i.hs = and <8 x i32> %i.hr, splat (i32 2139095040)
  %i.ht = add nuw <8 x i32> %i.hs, splat (i32 125829120)
  %i.hu = bitcast <8 x i32> %i.ht to <8 x float>
  %i.hv = fadd <8 x float> %i.hn, %i.hu
  %i.hw = bitcast <8 x float> %i.hv to <8 x i32>  ; 2 uses
  %i.hx = lshr <8 x i32> %i.hw, splat (i32 13)
  %i.hy = and <8 x i32> %i.hx, splat (i32 31744)
  %i.hz = and <8 x i32> %i.hw, splat (i32 4095)
  %i.ia = add nuw nsw <8 x i32> %i.hy, %i.hz
  %i.ib = lshr <8 x i32> %i.ho, splat (i32 16)
  %i.ic = and <8 x i32> %i.ib, splat (i32 32768)
  %i.id = icmp ugt <8 x i32> %i.hp, splat (i32 -16777216)
  %i.ie = select <8 x i1> %i.id, <8 x i32> splat (i32 32256), <8 x i32> %i.ia
  %i.if = or <8 x i32> %i.ie, %i.ic
  %i.ig = trunc nuw <8 x i32> %i.if to <8 x i16>
  %predphi181 = select <8 x i1> %i.hj, <8 x i16> %i.ig, <8 x i16> zeroinitializer
  %i.ih = getelementptr [2 x i8], ptr %i.hd, i64 %index178
  store <8 x i16> %predphi181, ptr %i.ih, align 2, !tbaa !41, !alias.scope !1039, !noalias !1038
  %index.next182 = add nuw i64 %index178, 8       ; 2 uses
  %vec.ind.next183 = add nuw nsw <8 x i64> %vec.ind179, splat (i64 8)
  %i.ii = icmp eq i64 %index.next182, %n.vec172
  br i1 %i.ii, label %middle.block184, label %vector.body177, !llvm.loop !1012

middle.block184:                                  ; preds = %vector.body177
  br i1 %cmp.n185, label %._crit_edge.us237.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader192

.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader192: ; preds = %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader, %middle.block184
  %.0205.us232.us.us.us.us.us.us.us.i.ph = phi i64 [ %n.vec172, %middle.block184 ], [ 0, %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader ]
  br label %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i

.lr.ph.split.split.us231.us.us.us.us.us.us.us.i:  ; preds = %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader192, %bb.k
  %.0205.us232.us.us.us.us.us.us.us.i = phi i64 [ %i.jk, %bb.k ], [ %.0205.us232.us.us.us.us.us.us.us.i.ph, %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i.preheader192 ] ; 3 uses
  %i.ij = mul nsw i64 %.0205.us232.us.us.us.us.us.us.us.i, %i.bu
  %i.ik = add i64 %i.ij, %i.fx                    ; 3 uses
  %i.il = icmp sgt i64 %i.ik, -1
  %.not191.us.us.us.us.us.us.us.us.i = icmp slt i64 %i.ik, %i.n
  %or.cond193.us.us.us.us.us.us.us.us.i = select i1 %i.il, i1 %.not191.us.us.us.us.us.us.us.us.i, i1 false
  br i1 %or.cond193.us.us.us.us.us.us.us.us.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.ik
  %i.in = load float, ptr %i.im, align 4, !tbaa !43 ; 2 uses
  %i.io = tail call float @llvm.fabs.f32(float %i.in)
  %i.ip = fmul float %i.io, f0x77800000
  %i.iq = fmul float %i.ip, f0x08800000
  %i.ir = bitcast float %i.in to i32              ; 2 uses
  %i.is = shl i32 %i.ir, 1                        ; 2 uses
  %i.it = tail call i32 @llvm.umax.i32(i32 %i.is, i32 1895825408)
  %spec.store.select.i.us.us.us.us.us.us.us.us.i = lshr exact i32 %i.it, 1
  %i.iu = and i32 %spec.store.select.i.us.us.us.us.us.us.us.us.i, 2139095040
  %i.iv = add nuw i32 %i.iu, 125829120
  %i.iw = bitcast i32 %i.iv to float
  %i.ix = fadd float %i.iq, %i.iw
  %i.iy = bitcast float %i.ix to i32              ; 2 uses
  %i.iz = lshr i32 %i.iy, 13
  %i.ja = and i32 %i.iz, 31744
  %i.jb = and i32 %i.iy, 4095
  %i.jc = add nuw nsw i32 %i.ja, %i.jb
  %i.jd = lshr i32 %i.ir, 16
  %i.je = and i32 %i.jd, 32768
  %i.jf = icmp ugt i32 %i.is, -16777216
  %i.jg = select i1 %i.jf, i32 32256, i32 %i.jc
  %i.jh = or i32 %i.jg, %i.je
  %i.ji = trunc nuw i32 %i.jh to i16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i
  %.sink.i = phi i16 [ %i.ji, %bb.j ], [ 0, %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i ]
  %i.jj = getelementptr [2 x i8], ptr %i.hd, i64 %.0205.us232.us.us.us.us.us.us.us.i
  store i16 %.sink.i, ptr %i.jj, align 2, !tbaa !41
  %i.jk = add nuw nsw i64 %.0205.us232.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.jk, %i.k
  br i1 %exitcond.not.i, label %._crit_edge.us237.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us231.us.us.us.us.us.us.us.i, !llvm.loop !1013

._crit_edge.us237.us.us.us.us.us.us.us.sink.split.i: ; preds = %.lr.ph.split.us226.us.us.us.us.us.us.us.i, %.preheader.us224.us.us.us.us.us.us.us.i
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.hd, i8 0, i64 %i.cd, i1 false), !tbaa !41
  br label %._crit_edge.us237.us.us.us.us.us.us.us.i

._crit_edge.us237.us.us.us.us.us.us.us.i:         ; preds = %bb.k, %middle.block184, %._crit_edge.us237.us.us.us.us.us.us.us.sink.split.i
  %i.jl = add nuw nsw i64 %.0174210.us225.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond339.not.i = icmp eq i64 %i.jl, %i.bb
  br i1 %exitcond339.not.i, label %._crit_edge211.us.us.us.us.us.us.us.us.i, label %.preheader.us224.us.us.us.us.us.us.us.i, !llvm.loop !1014

.preheader.us.us.us.us.us.us.us.us.us.i:          ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.i, %.preheader.us.us.us.us.us.us.us.us.us.preheader.i
  %.0174210.us.us.us.us.us.us.us.us.us.i = phi i64 [ %i.lv, %._crit_edge.us.us.us.us.us.us.us.us.us.i ], [ 0, %.preheader.us.us.us.us.us.us.us.us.us.preheader.i ] ; 3 uses
  %i.jm = mul nsw i64 %.0174210.us.us.us.us.us.us.us.us.us.i, %i.bx
  %i.jn = add i64 %i.jm, %i.fm                    ; 3 uses
  %i.jo = icmp slt i64 %i.jn, 0
  %i.jp = mul nuw nsw i64 %i.jn, %i.n
  %i.jq = getelementptr inbounds nuw [2 x i8], ptr %i.gr, i64 %i.jp ; 7 uses
  %i.jr = mul i64 %.0174210.us.us.us.us.us.us.us.us.us.i, %i.k
  %i.js = getelementptr [2 x i8], ptr %i.gs, i64 %i.jr ; 8 uses
  br i1 %i.jo, label %._crit_edge.us.us.us.us.us.us.us.us.us.sink.split.i, label %.lr.ph.split.us212.us.us.us.us.us.us.us.us.i

.lr.ph.split.us212.us.us.us.us.us.us.us.us.i:     ; preds = %.preheader.us.us.us.us.us.us.us.us.us.i
  %i.jt = icmp slt i64 %i.jn, %i.ba
  %.fr.us.us.us.us.us.us.us.us.us.i = freeze i1 %i.jt
  br i1 %.fr.us.us.us.us.us.us.us.us.us.i, label %iter.check126, label %._crit_edge.us.us.us.us.us.us.us.us.us.sink.split.i

iter.check126:                                    ; preds = %.lr.ph.split.us212.us.us.us.us.us.us.us.us.i
  %or.cond190.not = xor i1 %or.cond190, true
  %brmerge209 = select i1 %or.cond190.not, i1 true, i1 %.reass208
  br i1 %brmerge209, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.preheader, label %vector.main.loop.iter.check109

vector.main.loop.iter.check109:                   ; preds = %iter.check126
  br i1 %min.iters.check110, label %vec.epilog.ph130, label %vector.body117

vector.body117:                                   ; preds = %vector.main.loop.iter.check109, %vector.body117
  %index118 = phi i64 [ %index.next122, %vector.body117 ], [ 0, %vector.main.loop.iter.check109 ] ; 2 uses
  %vec.ind119 = phi <16 x i64> [ %vec.ind.next123, %vector.body117 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.main.loop.iter.check109 ] ; 2 uses
  %i.ju = add <16 x i64> %vec.ind119, %broadcast.splat114 ; 3 uses
  %i.jv = extractelement <16 x i64> %i.ju, i64 0
  %i.jw = icmp sgt <16 x i64> %i.ju, splat (i64 -1)
  %i.jx = icmp slt <16 x i64> %i.ju, %broadcast.splat116
  %i.jy = select <16 x i1> %i.jw, <16 x i1> %i.jx, <16 x i1> zeroinitializer
  %i.jz = getelementptr [2 x i8], ptr %i.jq, i64 %i.jv
  %wide.masked.load120 = tail call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 2 %i.jz, <16 x i1> %i.jy, <16 x i16> zeroinitializer), !tbaa !41, !alias.scope !1040
  %i.ka = getelementptr [2 x i8], ptr %i.js, i64 %index118
  store <16 x i16> %wide.masked.load120, ptr %i.ka, align 2, !tbaa !41, !alias.scope !1041, !noalias !1040
  %index.next122 = add nuw i64 %index118, 16      ; 2 uses
  %vec.ind.next123 = add nuw nsw <16 x i64> %vec.ind119, splat (i64 16)
  %i.kb = icmp eq i64 %index.next122, %n.vec112
  br i1 %i.kb, label %middle.block124, label %vector.body117, !llvm.loop !1018

middle.block124:                                  ; preds = %vector.body117
  br i1 %cmp.n125, label %._crit_edge.us.us.us.us.us.us.us.us.us.i, label %vec.epilog.iter.check127

vec.epilog.iter.check127:                         ; preds = %middle.block124
  br i1 %min.epilog.iters.check129, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.preheader, label %vec.epilog.ph130, !prof !49

vec.epilog.ph130:                                 ; preds = %vector.main.loop.iter.check109, %vec.epilog.iter.check127
  %vec.epilog.resume.val131 = phi i64 [ %n.vec112, %vec.epilog.iter.check127 ], [ 0, %vector.main.loop.iter.check109 ] ; 2 uses
  %broadcast.splatinsert137 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val131, i64 0
  %broadcast.splat138 = shufflevector <4 x i64> %broadcast.splatinsert137, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction139 = or disjoint <4 x i64> %broadcast.splat138, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body140

vec.epilog.vector.body140:                        ; preds = %vec.epilog.vector.body140, %vec.epilog.ph130
  %index141 = phi i64 [ %vec.epilog.resume.val131, %vec.epilog.ph130 ], [ %index.next145, %vec.epilog.vector.body140 ] ; 2 uses
  %vec.ind142 = phi <4 x i64> [ %induction139, %vec.epilog.ph130 ], [ %vec.ind.next146, %vec.epilog.vector.body140 ] ; 2 uses
  %i.kc = add <4 x i64> %vec.ind142, %broadcast.splat134 ; 3 uses
  %i.kd = extractelement <4 x i64> %i.kc, i64 0
  %i.ke = icmp sgt <4 x i64> %i.kc, splat (i64 -1)
  %i.kf = icmp slt <4 x i64> %i.kc, %broadcast.splat136
  %i.kg = select <4 x i1> %i.ke, <4 x i1> %i.kf, <4 x i1> zeroinitializer
  %i.kh = getelementptr [2 x i8], ptr %i.jq, i64 %i.kd
  %wide.masked.load143 = tail call <4 x i16> @llvm.masked.load.v4i16.p0(ptr align 2 %i.kh, <4 x i1> %i.kg, <4 x i16> zeroinitializer), !tbaa !41, !alias.scope !1040
  %i.ki = getelementptr [2 x i8], ptr %i.js, i64 %index141
  store <4 x i16> %wide.masked.load143, ptr %i.ki, align 2, !tbaa !41, !alias.scope !1041, !noalias !1040
  %index.next145 = add nuw i64 %index141, 4       ; 2 uses
  %vec.ind.next146 = add nuw nsw <4 x i64> %vec.ind142, splat (i64 4)
  %i.kj = icmp eq i64 %index.next145, %n.vec132
  br i1 %i.kj, label %vec.epilog.middle.block147, label %vec.epilog.vector.body140, !llvm.loop !1019

vec.epilog.middle.block147:                       ; preds = %vec.epilog.vector.body140
  br i1 %cmp.n148, label %._crit_edge.us.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.preheader

.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.preheader: ; preds = %iter.check126, %vec.epilog.iter.check127, %vec.epilog.middle.block147
  %.0205.us207.us.us.us.us.us.us.us.us.us.i.ph = phi i64 [ 0, %iter.check126 ], [ %n.vec132, %vec.epilog.middle.block147 ], [ %n.vec112, %vec.epilog.iter.check127 ] ; 3 uses
  br i1 %lcmp.mod196.not, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol.loopexit, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol

.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol: ; preds = %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.preheader, %bb.m
  %.0205.us207.us.us.us.us.us.us.us.us.us.i.prol = phi i64 [ %i.kq, %bb.m ], [ %.0205.us207.us.us.us.us.us.us.us.us.us.i.ph, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.preheader ] ; 3 uses
  %prol.iter197 = phi i64 [ %prol.iter197.next, %bb.m ], [ 0, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.preheader ]
  %i.kk = mul nsw i64 %.0205.us207.us.us.us.us.us.us.us.us.us.i.prol, %i.bu
  %i.kl = add i64 %i.kk, %i.fx                    ; 3 uses
  %i.km = icmp sgt i64 %i.kl, -1
  %.not191.us.us.us.us.us.us.us.us.us.us.i.prol = icmp slt i64 %i.kl, %i.n
  %or.cond193.us.us.us.us.us.us.us.us.us.us.i.prol = select i1 %i.km, i1 %.not191.us.us.us.us.us.us.us.us.us.us.i.prol, i1 false
  br i1 %or.cond193.us.us.us.us.us.us.us.us.us.us.i.prol, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.kl
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !41
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol
  %.sink370.i.prol = phi i16 [ %i.ko, %bb.l ], [ 0, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol ]
  %i.kp = getelementptr [2 x i8], ptr %i.js, i64 %.0205.us207.us.us.us.us.us.us.us.us.us.i.prol
  store i16 %.sink370.i.prol, ptr %i.kp, align 2, !tbaa !41
  %i.kq = add nuw nsw i64 %.0205.us207.us.us.us.us.us.us.us.us.us.i.prol, 1 ; 2 uses
  %prol.iter197.next = add i64 %prol.iter197, 1   ; 2 uses
  %prol.iter197.cmp.not = icmp eq i64 %prol.iter197.next, %xtraiter195
  br i1 %prol.iter197.cmp.not, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol.loopexit, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol, !llvm.loop !1020

.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol.loopexit: ; preds = %bb.m, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.preheader
  %.0205.us207.us.us.us.us.us.us.us.us.us.i.unr = phi i64 [ %.0205.us207.us.us.us.us.us.us.us.us.us.i.ph, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.preheader ], [ %i.kq, %bb.m ]
  %i.kr = sub nsw i64 %.0205.us207.us.us.us.us.us.us.us.us.us.i.ph, %i.k
  %i.ks = icmp ugt i64 %i.kr, -4
  br i1 %i.ks, label %._crit_edge.us.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i

.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i: ; preds = %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol.loopexit, %bb.r
  %.0205.us207.us.us.us.us.us.us.us.us.us.i = phi i64 [ %i.lu, %bb.r ], [ %.0205.us207.us.us.us.us.us.us.us.us.us.i.unr, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol.loopexit ] ; 6 uses
  %i.kt = mul nsw i64 %.0205.us207.us.us.us.us.us.us.us.us.us.i, %i.bu
  %i.ku = add i64 %i.kt, %i.fx                    ; 3 uses
  %i.kv = icmp sgt i64 %i.ku, -1
  %.not191.us.us.us.us.us.us.us.us.us.us.i = icmp slt i64 %i.ku, %i.n
  %or.cond193.us.us.us.us.us.us.us.us.us.us.i = select i1 %i.kv, i1 %.not191.us.us.us.us.us.us.us.us.us.us.i, i1 false
  br i1 %or.cond193.us.us.us.us.us.us.us.us.us.us.i, label %bb.n, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.1

bb.n:                                             ; preds = %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.ku
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !41
  br label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.1

.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.1: ; preds = %bb.n, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i
  %.sink370.i = phi i16 [ %i.kx, %bb.n ], [ 0, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i ]
  %i.ky = getelementptr [2 x i8], ptr %i.js, i64 %.0205.us207.us.us.us.us.us.us.us.us.us.i
  store i16 %.sink370.i, ptr %i.ky, align 2, !tbaa !41
  %i.kz = add nuw nsw i64 %.0205.us207.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %i.la = mul nsw i64 %i.kz, %i.bu
  %i.lb = add i64 %i.la, %i.fx                    ; 3 uses
  %i.lc = icmp sgt i64 %i.lb, -1
  %.not191.us.us.us.us.us.us.us.us.us.us.i.1 = icmp slt i64 %i.lb, %i.n
  %or.cond193.us.us.us.us.us.us.us.us.us.us.i.1 = select i1 %i.lc, i1 %.not191.us.us.us.us.us.us.us.us.us.us.i.1, i1 false
  br i1 %or.cond193.us.us.us.us.us.us.us.us.us.us.i.1, label %bb.o, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.2

bb.o:                                             ; preds = %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.1
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.lb
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !41
  br label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.2

.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.2: ; preds = %bb.o, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.1
  %.sink370.i.1 = phi i16 [ %i.le, %bb.o ], [ 0, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.1 ]
  %i.lf = getelementptr [2 x i8], ptr %i.js, i64 %i.kz
  store i16 %.sink370.i.1, ptr %i.lf, align 2, !tbaa !41
  %i.lg = add nuw nsw i64 %.0205.us207.us.us.us.us.us.us.us.us.us.i, 2 ; 2 uses
  %i.lh = mul nsw i64 %i.lg, %i.bu
  %i.li = add i64 %i.lh, %i.fx                    ; 3 uses
  %i.lj = icmp sgt i64 %i.li, -1
  %.not191.us.us.us.us.us.us.us.us.us.us.i.2 = icmp slt i64 %i.li, %i.n
  %or.cond193.us.us.us.us.us.us.us.us.us.us.i.2 = select i1 %i.lj, i1 %.not191.us.us.us.us.us.us.us.us.us.us.i.2, i1 false
  br i1 %or.cond193.us.us.us.us.us.us.us.us.us.us.i.2, label %bb.p, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.3

bb.p:                                             ; preds = %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.2
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.li
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !41
  br label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.3

.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.3: ; preds = %bb.p, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.2
  %.sink370.i.2 = phi i16 [ %i.ll, %bb.p ], [ 0, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.2 ]
  %i.lm = getelementptr [2 x i8], ptr %i.js, i64 %i.lg
  store i16 %.sink370.i.2, ptr %i.lm, align 2, !tbaa !41
  %i.ln = add nuw nsw i64 %.0205.us207.us.us.us.us.us.us.us.us.us.i, 3 ; 2 uses
  %i.lo = mul nsw i64 %i.ln, %i.bu
  %i.lp = add i64 %i.lo, %i.fx                    ; 3 uses
  %i.lq = icmp sgt i64 %i.lp, -1
  %.not191.us.us.us.us.us.us.us.us.us.us.i.3 = icmp slt i64 %i.lp, %i.n
  %or.cond193.us.us.us.us.us.us.us.us.us.us.i.3 = select i1 %i.lq, i1 %.not191.us.us.us.us.us.us.us.us.us.us.i.3, i1 false
  br i1 %or.cond193.us.us.us.us.us.us.us.us.us.us.i.3, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.3
  %i.lr = getelementptr inbounds nuw [2 x i8], ptr %i.jq, i64 %i.lp
  %i.ls = load i16, ptr %i.lr, align 2, !tbaa !41
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.3
  %.sink370.i.3 = phi i16 [ %i.ls, %bb.q ], [ 0, %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.3 ]
  %i.lt = getelementptr [2 x i8], ptr %i.js, i64 %i.ln
  store i16 %.sink370.i.3, ptr %i.lt, align 2, !tbaa !41
  %i.lu = add nuw nsw i64 %.0205.us207.us.us.us.us.us.us.us.us.us.i, 4 ; 2 uses
  %exitcond340.not.i.3 = icmp eq i64 %i.lu, %i.k
  br i1 %exitcond340.not.i.3, label %._crit_edge.us.us.us.us.us.us.us.us.us.i, label %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i, !llvm.loop !1021

._crit_edge.us.us.us.us.us.us.us.us.us.sink.split.i: ; preds = %.lr.ph.split.us212.us.us.us.us.us.us.us.us.i, %.preheader.us.us.us.us.us.us.us.us.us.i
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.js, i8 0, i64 %i.cd, i1 false), !tbaa !41
  br label %._crit_edge.us.us.us.us.us.us.us.us.us.i

._crit_edge.us.us.us.us.us.us.us.us.us.i:         ; preds = %.lr.ph.split.split.us213.us.us.us.us.us.us.us.us.i.prol.loopexit, %bb.r, %middle.block124, %vec.epilog.middle.block147, %._crit_edge.us.us.us.us.us.us.us.us.us.sink.split.i
  %i.lv = add nuw nsw i64 %.0174210.us.us.us.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond341.not.i = icmp eq i64 %i.lv, %i.bb
  br i1 %exitcond341.not.i, label %._crit_edge211.us.us.us.us.us.us.us.us.i, label %.preheader.us.us.us.us.us.us.us.us.us.i, !llvm.loop !1014

._crit_edge211.us.us.us.us.us.us.us.us.i:         ; preds = %._crit_edge.us237.us.us.us.us.us.us.us.i, %._crit_edge.us.us.us.us.us.us.us.us.us.i
  %i.lw = add nsw i64 %.0175219.us.us.us.us.us.us.us.us.i, %i.bz ; 2 uses
  %i.lx = icmp slt i64 %i.lw, %i.az
  %indvar.next100 = add i64 %indvar99, 1
  br i1 %i.lx, label %bb.h, label %._crit_edge221.split.us.us.split.us.us.us.us.us.us.i, !llvm.loop !1022

._crit_edge221.split.us.us.split.us.us.us.us.us.us.i: ; preds = %._crit_edge211.us.us.us.us.us.us.us.us.i
  %i.ly = add nuw nsw i64 %.0176244.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond342.not.i = icmp eq i64 %i.ly, %i.ad
  br i1 %exitcond342.not.i, label %._crit_edge.split247.us.split.us.us.us.us.us.i, label %.lr.ph.us.us.us.us.us.us.i, !llvm.loop !1023

._crit_edge.split247.us.split.us.us.us.us.us.i:   ; preds = %._crit_edge221.split.us.us.split.us.us.us.us.us.us.i
  %i.lz = add nuw nsw i64 %.0177263.us.us.us.us.i, 1 ; 2 uses
  %exitcond343.not.i = icmp eq i64 %i.lz, %i.bc
  br i1 %exitcond343.not.i, label %._crit_edge264.split274.us.split.us.us.us.i, label %.preheader199.us.us.us.us.i, !llvm.loop !1024

._crit_edge264.split274.us.split.us.us.us.i:      ; preds = %._crit_edge.split247.us.split.us.us.us.us.us.i
  %i.ma = add nuw nsw i64 %.0178289.us.us.i, 1    ; 2 uses
  %exitcond344.not.i = icmp eq i64 %i.ma, %i.ay
  br i1 %exitcond344.not.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader200.us.us.i, !llvm.loop !1025

bb.s:                                             ; preds = %bb.a
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !24 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !24 ; 10 uses
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !30
  %i.mg = icmp eq i32 %i.mf, 0
  br i1 %i.mg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6497, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18) #17
  unreachable

bb.u:                                             ; preds = %bb.s
  %.not.i5 = icmp eq ptr %i.mc, null
  br i1 %.not.i5, label %.thread.i6, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !31
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mc, i64 24
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !31
  br label %.thread.i6

.thread.i6:                                       ; preds = %bb.v, %bb.u
  %i.ml = phi i64 [ %i.mi, %bb.v ], [ 0, %bb.u ]  ; 21 uses
  %i.mm = phi i64 [ %i.mk, %bb.v ], [ 0, %bb.u ]
  %i.mn = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !31 ; 12 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !31 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !31 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.me, i64 40
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !31
  %i.mv = getelementptr inbounds nuw i8, ptr %i.me, i64 48
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !31
  %i.mx = getelementptr inbounds nuw i8, ptr %i.me, i64 56
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !31
  %i.mz = getelementptr inbounds nuw i8, ptr %i.me, i64 64
  %i.na = load i64, ptr %i.mz, align 8, !tbaa !31 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.me, i64 72
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !31
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !31 ; 5 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !31
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !51
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.nk = load i32, ptr %i.nj, align 8, !tbaa !51
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !51
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.no = load i32, ptr %i.nn, align 8, !tbaa !51
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !51 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !51
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !51
  %i.nv = icmp eq i32 %i.nu, 1                    ; 7 uses
  %i.nw = load i32, ptr %0, align 8, !tbaa !35
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !36
  %i.nz = select i1 %i.nv, i64 %i.mu, i64 %i.ms   ; 2 uses
  %i.oa = select i1 %i.nv, i64 %i.ms, i64 %i.mq   ; 6 uses
  %i.ob = select i1 %i.nv, i64 %i.mq, i64 1
  %i.oc = select i1 %i.nv, i64 %i.mm, i64 1       ; 10 uses
  %i.od = select i1 %i.nv, i64 %i.ng, i64 1       ; 4 uses
  %i.oe = select i1 %i.nv, i64 %i.nc, i64 %i.na
  %i.of = select i1 %i.nv, i64 %i.na, i64 %i.my
  %i.og = icmp eq i64 %i.mw, 4
  br i1 %i.og, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread.i6
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6527, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13) #17
  unreachable

bb.x:                                             ; preds = %.thread.i6
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !37 ; 2 uses
  %i.oj = icmp sgt i64 %i.nz, 0
  br i1 %i.oj, label %.preheader174.lr.ph.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit

.preheader174.lr.ph.i:                            ; preds = %bb.x
  %i.ok = icmp slt i64 %i.od, 1
  %i.ol = icmp slt i64 %i.ne, 1
  %i.om = sext i32 %i.nw to i64                   ; 4 uses
  %i.on = icmp sle i64 %i.oa, %i.om
  %i.oo = shl i64 %i.oe, 32
  %i.op = ashr exact i64 %i.oo, 32                ; 2 uses
  %i.oq = shl i64 %i.of, 32
  %i.or = ashr exact i64 %i.oq, 32                ; 3 uses
  %factor.op.mul179.i = mul i64 %i.oc, %i.ml
  %i.os = sext i32 %i.ni to i64                   ; 2 uses
  %i.ot = sext i32 %i.nq to i64                   ; 5 uses
  %i.ou = sext i32 %i.nm to i64                   ; 3 uses
  %i.ov = sext i32 %i.nk to i64                   ; 2 uses
  %i.ow = sext i32 %i.ns to i64                   ; 3 uses
  %i.ox = sext i32 %i.no to i64                   ; 3 uses
  %i.oy = sext i32 %i.ny to i64                   ; 3 uses
  %brmerge.i7 = select i1 %i.ok, i1 true, i1 %i.ol
  %brmerge210.i = select i1 %brmerge.i7, i1 true, i1 %i.on
  br i1 %brmerge210.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader174.lr.ph.split.split.split.i

.preheader174.lr.ph.split.split.split.i:          ; preds = %.preheader174.lr.ph.i
  %i.oz = icmp slt i64 %i.ml, 1
  %i.pa = icmp slt i64 %i.oc, 1
  %i.pb = getelementptr inbounds nuw i8, ptr %i.me, i64 248
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !37 ; 3 uses
  %brmerge213.i = select i1 %i.pa, i1 true, i1 %i.oz
  br i1 %brmerge213.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader174.preheader.i

.preheader174.preheader.i:                        ; preds = %.preheader174.lr.ph.split.split.split.i
  %i.pd = shl nuw i64 %i.ml, 2
  %3 = mul i64 %i.oc, %i.oa
  %factor.op.mul194.reass.i = mul i64 %3, %i.ml
  %i.pe = mul i64 %i.mo, %i.ow
  %i.pf = shl i64 %i.ml, 2                        ; 2 uses
  %i.pg = add nuw i64 %i.oc, 4611686018427387903
  %i.ph = mul i64 %i.pg, %i.ow
  %i.pi = sub i64 %i.ph, %i.ox
  %i.pj = shl i64 %i.pi, 2
  %i.pk = mul i64 %i.mo, %i.pj
  %i.pl = mul nsw i64 %i.or, %i.om                ; 2 uses
  %i.pm = add i64 %i.pk, %i.pl
  %i.pn = add i64 %i.pm, %i.pf
  %i.po = shl nsw i64 %i.ou, 2
  %i.pp = sub i64 %i.pn, %i.po
  %i.pq = mul i64 %i.mo, %i.ov
  %i.pr = shl i64 %i.pq, 2
  %i.ps = shl nsw i64 %i.os, 2
  %i.pt = mul nsw i64 %i.or, %i.oy
  %i.pu = mul i64 %i.mo, %i.ox
  %i.pv = add i64 %i.pu, %i.ou
  %i.pw = shl i64 %i.pv, 2
  %i.px = sub i64 %i.pl, %i.pw
  %i.py = mul i64 %i.oc, %i.ml
  %i.pz = shl nsw i64 %i.om, 2
  %i.qa = add nsw i64 %i.pz, 4
  %i.qb = mul i64 %i.py, %i.qa
  %i.qc = mul i64 %i.oc, %i.oa
  %i.qd = mul i64 %i.qc, %i.od
  %i.qe = mul i64 %i.qd, %i.ml
  %i.qf = mul i64 %i.qe, %i.ne
  %i.qg = shl i64 %i.qf, 2
  %i.qh = mul i64 %i.oc, %i.oa
  %i.qi = mul i64 %i.qh, %i.ml
  %i.qj = mul i64 %i.qi, %i.ne
  %i.qk = shl i64 %i.qj, 2
  %i.ql = mul i64 %i.oc, %i.oa
  %i.qm = mul i64 %i.ql, %i.ml
  %i.qn = shl i64 %i.qm, 2
  %i.qo = mul i64 %i.oc, %i.ml
  %i.qp = mul i64 %i.qo, %i.oy
  %i.qq = shl i64 %i.qp, 2
  %i.qr = getelementptr i8, ptr %i.pc, i64 %i.pp
  %i.qs = getelementptr i8, ptr %i.pc, i64 %i.px
  %i.qt = getelementptr i8, ptr %i.oi, i64 %i.qb
  %min.iters.check = icmp ugt i64 %i.ml, 3
  %ident.check.not = icmp eq i32 %i.nq, 1
  %or.cond191 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %stride.check = icmp slt i64 %i.pf, 0
  %.mask = and i64 %i.pe, 2305843009213693952
  %stride.check60 = icmp ne i64 %.mask, 0
  %invariant.op203 = or i1 %stride.check, %stride.check60
  %min.iters.check61 = icmp ult i64 %i.ml, 32
  %i.qu = and i64 %i.ml, 28
  %n.vec = and i64 %i.ml, 9223372036854775776     ; 4 uses
  %broadcast.splatinsert62 = insertelement <8 x i64> poison, i64 %i.mo, i64 0
  %broadcast.splat63 = shufflevector <8 x i64> %broadcast.splatinsert62, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %i.ml, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.qu, 0
  %n.vec70 = and i64 %i.ml, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert73 = insertelement <4 x i64> poison, i64 %i.mo, i64 0
  %broadcast.splat74 = shufflevector <4 x i64> %broadcast.splatinsert73, <4 x i64> poison, <4 x i32> zeroinitializer
  %cmp.n83 = icmp eq i64 %i.ml, %n.vec70
  %xtraiter = and i64 %i.ml, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader174.i

.preheader174.i:                                  ; preds = %._crit_edge196.i, %.preheader174.preheader.i
  %.0157201.i = phi i64 [ %i.rm, %._crit_edge196.i ], [ 0, %.preheader174.preheader.i ] ; 5 uses
  %i.qv = mul i64 %i.op, %.0157201.i              ; 2 uses
  %i.qw = mul i64 %i.qg, %.0157201.i
  %i.qx = mul i64 %.0157201.i, %i.od
  %i.qy = mul nsw i64 %.0157201.i, %i.op
  %i.qz = getelementptr inbounds i8, ptr %i.pc, i64 %i.qy
  %i.ra = getelementptr i8, ptr %i.qr, i64 %i.qv
  %i.rb = getelementptr i8, ptr %i.qs, i64 %i.qv
  %i.rc = getelementptr i8, ptr %i.qt, i64 %i.qw
  br label %.preheader173.i

.preheader173.i:                                  ; preds = %._crit_edge191.i, %.preheader174.i
  %.0156195.i = phi i64 [ 0, %.preheader174.i ], [ %i.rn, %._crit_edge191.i ] ; 5 uses
  %i.rd = mul i64 %i.pr, %.0156195.i              ; 2 uses
  %i.re = mul i64 %i.qk, %.0156195.i
  %i.rf = add i64 %.0156195.i, %i.qx
  %i.rg = mul i64 %i.rf, %i.ne
  %i.rh = mul nsw i64 %.0156195.i, %i.ov
  %i.ri = sub i64 %i.rh, %i.ox
  %i.rj = getelementptr i8, ptr %i.ra, i64 %i.rd
  %i.rk = getelementptr i8, ptr %i.rb, i64 %i.rd
  %i.rl = getelementptr i8, ptr %i.rc, i64 %i.re
  br label %.lr.ph.i

._crit_edge196.i:                                 ; preds = %._crit_edge191.i
  %i.rm = add nuw nsw i64 %.0157201.i, 1          ; 2 uses
  %exitcond219.not.i = icmp eq i64 %i.rm, %i.nz
  br i1 %exitcond219.not.i, label %_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader174.i, !llvm.loop !1026

._crit_edge191.i:                                 ; preds = %._crit_edge185.i
  %i.rn = add nuw nsw i64 %.0156195.i, 1          ; 2 uses
  %exitcond218.not.i = icmp eq i64 %i.rn, %i.od
  br i1 %exitcond218.not.i, label %._crit_edge196.i, label %.preheader173.i, !llvm.loop !1027

.lr.ph.i:                                         ; preds = %._crit_edge185.i, %.preheader173.i
  %.0155189.i = phi i64 [ 0, %.preheader173.i ], [ %i.ry, %._crit_edge185.i ] ; 5 uses
  %i.ro = mul i64 %i.ps, %.0155189.i              ; 2 uses
  %i.rp = mul i64 %i.qn, %.0155189.i
  %i.rq = add i64 %.0155189.i, %i.rg
  %i.rr = mul i64 %factor.op.mul194.reass.i, %i.rq
  %i.rs = getelementptr [4 x i8], ptr %i.oi, i64 %i.rr
  %i.rt = mul nsw i64 %.0155189.i, %i.os
  %i.ru = sub i64 %i.rt, %i.ou                    ; 7 uses
  %i.rv = getelementptr i8, ptr %i.rj, i64 %i.ro
  %i.rw = getelementptr i8, ptr %i.rk, i64 %i.ro
  %i.rx = getelementptr i8, ptr %i.rl, i64 %i.rp
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.ru, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i64> splat (i64 8), %broadcast.splat
  %invariant.op199 = add <8 x i64> splat (i64 16), %broadcast.splat
  %invariant.op201 = add <8 x i64> splat (i64 24), %broadcast.splat
  %broadcast.splatinsert71 = insertelement <4 x i64> poison, i64 %i.ru, i64 0
  %broadcast.splat72 = shufflevector <4 x i64> %broadcast.splatinsert71, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %.preheader.lr.ph.i

._crit_edge185.i:                                 ; preds = %._crit_edge181.i
  %i.ry = add nuw nsw i64 %.0155189.i, 1          ; 2 uses
  %exitcond217.not.i = icmp eq i64 %i.ry, %i.ne
  br i1 %exitcond217.not.i, label %._crit_edge191.i, label %.lr.ph.i, !llvm.loop !1028

.preheader.lr.ph.i:                               ; preds = %._crit_edge181.i, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge181.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %.0154183.i = phi i64 [ %i.ua, %._crit_edge181.i ], [ %i.om, %.lr.ph.i ] ; 3 uses
  %i.rz = mul i64 %i.pt, %indvar                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.rv, i64 %i.rz
  %scevgep58 = getelementptr i8, ptr %i.rw, i64 %i.rz
  %i.sa = mul i64 %i.qq, %indvar
  %scevgep59 = getelementptr i8, ptr %i.rx, i64 %i.sa
  %i.sb = mul nsw i64 %.0154183.i, %i.or
  %i.sc = getelementptr inbounds i8, ptr %i.qz, i64 %i.sb
  %factor.op.mul.reass.i = mul i64 %factor.op.mul179.i, %.0154183.i
  %i.sd = getelementptr [4 x i8], ptr %i.rs, i64 %factor.op.mul.reass.i ; 2 uses
  %bound0 = icmp ult ptr %i.sd, %scevgep
  %bound1 = icmp ult ptr %scevgep58, %scevgep59
  %found.conflict = and i1 %bound0, %bound1
  %.reass204 = or i1 %found.conflict, %invariant.op203
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %.0153180.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %i.uc, %._crit_edge.i ] ; 3 uses
  %i.se = mul nsw i64 %.0153180.i, %i.ow
  %i.sf = add i64 %i.se, %i.ri                    ; 3 uses
  %i.sg = icmp slt i64 %i.sf, 0
  %i.sh = mul nuw nsw i64 %i.sf, %i.mo
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %i.sh ; 7 uses
  %i.sj = mul i64 %.0153180.i, %i.ml
  %i.sk = getelementptr [4 x i8], ptr %i.sd, i64 %i.sj ; 8 uses
  br i1 %i.sg, label %._crit_edge.sink.split.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.preheader.i
  %i.sl = icmp slt i64 %i.sf, %i.ob
  %.fr.i = freeze i1 %i.sl
  br i1 %.fr.i, label %iter.check, label %._crit_edge.sink.split.i

iter.check:                                       ; preds = %.lr.ph.split.i
  %or.cond191.not = xor i1 %or.cond191, true
  %brmerge210 = select i1 %or.cond191.not, i1 true, i1 %.reass204
  br i1 %brmerge210, label %.lr.ph.split.split.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check61, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.main.loop.iter.check ] ; 5 uses
  %i.sm = add <8 x i64> %vec.ind, %broadcast.splat ; 3 uses
  %i.sn = extractelement <8 x i64> %i.sm, i64 0
  %.reass = add <8 x i64> %vec.ind, %invariant.op ; 2 uses
  %.reass200 = add <8 x i64> %vec.ind, %invariant.op199 ; 2 uses
  %.reass202 = add <8 x i64> %vec.ind, %invariant.op201 ; 2 uses
  %i.so = icmp sgt <8 x i64> %i.sm, splat (i64 -1)
  %i.sp = icmp sgt <8 x i64> %.reass, splat (i64 -1)
  %i.sq = icmp sgt <8 x i64> %.reass200, splat (i64 -1)
  %i.sr = icmp sgt <8 x i64> %.reass202, splat (i64 -1)
  %i.ss = icmp slt <8 x i64> %i.sm, %broadcast.splat63
  %i.st = icmp slt <8 x i64> %.reass, %broadcast.splat63
  %i.su = icmp slt <8 x i64> %.reass200, %broadcast.splat63
  %i.sv = icmp slt <8 x i64> %.reass202, %broadcast.splat63
  %i.sw = select <8 x i1> %i.so, <8 x i1> %i.ss, <8 x i1> zeroinitializer
  %i.sx = select <8 x i1> %i.sp, <8 x i1> %i.st, <8 x i1> zeroinitializer
  %i.sy = select <8 x i1> %i.sq, <8 x i1> %i.su, <8 x i1> zeroinitializer
  %i.sz = select <8 x i1> %i.sr, <8 x i1> %i.sv, <8 x i1> zeroinitializer
  %i.ta = getelementptr [4 x i8], ptr %i.si, i64 %i.sn ; 4 uses
  %i.tb = getelementptr i8, ptr %i.ta, i64 32
  %i.tc = getelementptr i8, ptr %i.ta, i64 64
  %i.td = getelementptr i8, ptr %i.ta, i64 96
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ta, <8 x i1> %i.sw, <8 x float> zeroinitializer), !tbaa !43, !alias.scope !1042
  %wide.masked.load64 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.tb, <8 x i1> %i.sx, <8 x float> zeroinitializer), !tbaa !43, !alias.scope !1042
  %wide.masked.load65 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.tc, <8 x i1> %i.sy, <8 x float> zeroinitializer), !tbaa !43, !alias.scope !1042
  %wide.masked.load66 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.td, <8 x i1> %i.sz, <8 x float> zeroinitializer), !tbaa !43, !alias.scope !1042
  %i.te = getelementptr [4 x i8], ptr %i.sk, i64 %index ; 4 uses
  %i.tf = getelementptr i8, ptr %i.te, i64 32
  %i.tg = getelementptr i8, ptr %i.te, i64 64
  %i.th = getelementptr i8, ptr %i.te, i64 96
  store <8 x float> %wide.masked.load, ptr %i.te, align 4, !tbaa !43, !alias.scope !1043, !noalias !1042
  store <8 x float> %wide.masked.load64, ptr %i.tf, align 4, !tbaa !43, !alias.scope !1043, !noalias !1042
  store <8 x float> %wide.masked.load65, ptr %i.tg, align 4, !tbaa !43, !alias.scope !1043, !noalias !1042
  store <8 x float> %wide.masked.load66, ptr %i.th, align 4, !tbaa !43, !alias.scope !1043, !noalias !1042
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.ti = icmp eq i64 %index.next, %n.vec
  br i1 %i.ti, label %middle.block, label %vector.body, !llvm.loop !1032

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.split.i.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert75 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat76 = shufflevector <4 x i64> %broadcast.splatinsert75, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat76, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index77 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next81, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind78 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next82, %vec.epilog.vector.body ] ; 2 uses
  %i.tj = add <4 x i64> %vec.ind78, %broadcast.splat72 ; 3 uses
  %i.tk = extractelement <4 x i64> %i.tj, i64 0
  %i.tl = icmp sgt <4 x i64> %i.tj, splat (i64 -1)
  %i.tm = icmp slt <4 x i64> %i.tj, %broadcast.splat74
  %i.tn = select <4 x i1> %i.tl, <4 x i1> %i.tm, <4 x i1> zeroinitializer
  %i.to = getelementptr [4 x i8], ptr %i.si, i64 %i.tk
  %wide.masked.load79 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.to, <4 x i1> %i.tn, <4 x float> zeroinitializer), !tbaa !43, !alias.scope !1042
  %i.tp = getelementptr [4 x i8], ptr %i.sk, i64 %index77
  store <4 x float> %wide.masked.load79, ptr %i.tp, align 4, !tbaa !43, !alias.scope !1043, !noalias !1042
  %index.next81 = add nuw i64 %index77, 4         ; 2 uses
  %vec.ind.next82 = add nuw nsw <4 x i64> %vec.ind78, splat (i64 4)
  %i.tq = icmp eq i64 %index.next81, %n.vec70
  br i1 %i.tq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1033

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n83, label %._crit_edge.i, label %.lr.ph.split.split.i.preheader

.lr.ph.split.split.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0177.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec70, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.split.split.i.prol.loopexit, label %.lr.ph.split.split.i.prol

.lr.ph.split.split.i.prol:                        ; preds = %.lr.ph.split.split.i.preheader, %bb.z
  %.0177.i.prol = phi i64 [ %i.tx, %bb.z ], [ %.0177.i.ph, %.lr.ph.split.split.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.z ], [ 0, %.lr.ph.split.split.i.preheader ]
  %i.tr = mul nsw i64 %.0177.i.prol, %i.ot
  %i.ts = add i64 %i.tr, %i.ru                    ; 3 uses
  %i.tt = icmp sgt i64 %i.ts, -1
  %.not167.i.prol = icmp slt i64 %i.ts, %i.mo
  %or.cond168.i.prol = select i1 %i.tt, i1 %.not167.i.prol, i1 false
  br i1 %or.cond168.i.prol, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.split.split.i.prol
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.ts
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !43
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.split.split.i.prol
  %.sink.i8.prol = phi float [ %i.tv, %bb.y ], [ 0.000000e+00, %.lr.ph.split.split.i.prol ]
  %i.tw = getelementptr [4 x i8], ptr %i.sk, i64 %.0177.i.prol
  store float %.sink.i8.prol, ptr %i.tw, align 4, !tbaa !43
  %i.tx = add nuw nsw i64 %.0177.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.split.i.prol.loopexit, label %.lr.ph.split.split.i.prol, !llvm.loop !1034

.lr.ph.split.split.i.prol.loopexit:               ; preds = %bb.z, %.lr.ph.split.split.i.preheader
  %.0177.i.unr = phi i64 [ %.0177.i.ph, %.lr.ph.split.split.i.preheader ], [ %i.tx, %bb.z ]
  %i.ty = sub nsw i64 %.0177.i.ph, %i.ml
  %i.tz = icmp ugt i64 %i.ty, -4
  br i1 %i.tz, label %._crit_edge.i, label %.lr.ph.split.split.i

._crit_edge181.i:                                 ; preds = %._crit_edge.i
  %i.ua = add nsw i64 %.0154183.i, %i.oy          ; 2 uses
  %i.ub = icmp slt i64 %i.ua, %i.oa
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ub, label %.preheader.lr.ph.i, label %._crit_edge185.i, !llvm.loop !1035

._crit_edge.sink.split.i:                         ; preds = %.lr.ph.split.i, %.preheader.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.sk, i8 0, i64 %i.pd, i1 false), !tbaa !43
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.split.split.i.prol.loopexit, %bb.ae, %middle.block, %vec.epilog.middle.block, %._crit_edge.sink.split.i
  %i.uc = add nuw nsw i64 %.0153180.i, 1          ; 2 uses
  %exitcond216.not.i = icmp eq i64 %i.uc, %i.oc
  br i1 %exitcond216.not.i, label %._crit_edge181.i, label %.preheader.i, !llvm.loop !1036

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.split.i.prol.loopexit, %bb.ae
  %.0177.i = phi i64 [ %i.ve, %bb.ae ], [ %.0177.i.unr, %.lr.ph.split.split.i.prol.loopexit ] ; 6 uses
  %i.ud = mul nsw i64 %.0177.i, %i.ot
  %i.ue = add i64 %i.ud, %i.ru                    ; 3 uses
  %i.uf = icmp sgt i64 %i.ue, -1
  %.not167.i = icmp slt i64 %i.ue, %i.mo
  %or.cond168.i = select i1 %i.uf, i1 %.not167.i, i1 false
  br i1 %or.cond168.i, label %bb.aa, label %.lr.ph.split.split.i.1

bb.aa:                                            ; preds = %.lr.ph.split.split.i
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.ue
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !43
  br label %.lr.ph.split.split.i.1

.lr.ph.split.split.i.1:                           ; preds = %bb.aa, %.lr.ph.split.split.i
  %.sink.i8 = phi float [ %i.uh, %bb.aa ], [ 0.000000e+00, %.lr.ph.split.split.i ]
  %i.ui = getelementptr [4 x i8], ptr %i.sk, i64 %.0177.i
  store float %.sink.i8, ptr %i.ui, align 4, !tbaa !43
  %i.uj = add nuw nsw i64 %.0177.i, 1             ; 2 uses
  %i.uk = mul nsw i64 %i.uj, %i.ot
  %i.ul = add i64 %i.uk, %i.ru                    ; 3 uses
  %i.um = icmp sgt i64 %i.ul, -1
  %.not167.i.1 = icmp slt i64 %i.ul, %i.mo
  %or.cond168.i.1 = select i1 %i.um, i1 %.not167.i.1, i1 false
  br i1 %or.cond168.i.1, label %bb.ab, label %.lr.ph.split.split.i.2

bb.ab:                                            ; preds = %.lr.ph.split.split.i.1
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.ul
  %i.uo = load float, ptr %i.un, align 4, !tbaa !43
  br label %.lr.ph.split.split.i.2

.lr.ph.split.split.i.2:                           ; preds = %bb.ab, %.lr.ph.split.split.i.1
  %.sink.i8.1 = phi float [ %i.uo, %bb.ab ], [ 0.000000e+00, %.lr.ph.split.split.i.1 ]
  %i.up = getelementptr [4 x i8], ptr %i.sk, i64 %i.uj
  store float %.sink.i8.1, ptr %i.up, align 4, !tbaa !43
  %i.uq = add nuw nsw i64 %.0177.i, 2             ; 2 uses
  %i.ur = mul nsw i64 %i.uq, %i.ot
  %i.us = add i64 %i.ur, %i.ru                    ; 3 uses
  %i.ut = icmp sgt i64 %i.us, -1
  %.not167.i.2 = icmp slt i64 %i.us, %i.mo
  %or.cond168.i.2 = select i1 %i.ut, i1 %.not167.i.2, i1 false
  br i1 %or.cond168.i.2, label %bb.ac, label %.lr.ph.split.split.i.3

bb.ac:                                            ; preds = %.lr.ph.split.split.i.2
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.us
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !43
  br label %.lr.ph.split.split.i.3

.lr.ph.split.split.i.3:                           ; preds = %bb.ac, %.lr.ph.split.split.i.2
  %.sink.i8.2 = phi float [ %i.uv, %bb.ac ], [ 0.000000e+00, %.lr.ph.split.split.i.2 ]
  %i.uw = getelementptr [4 x i8], ptr %i.sk, i64 %i.uq
  store float %.sink.i8.2, ptr %i.uw, align 4, !tbaa !43
  %i.ux = add nuw nsw i64 %.0177.i, 3             ; 2 uses
  %i.uy = mul nsw i64 %i.ux, %i.ot
  %i.uz = add i64 %i.uy, %i.ru                    ; 3 uses
  %i.va = icmp sgt i64 %i.uz, -1
  %.not167.i.3 = icmp slt i64 %i.uz, %i.mo
  %or.cond168.i.3 = select i1 %i.va, i1 %.not167.i.3, i1 false
  br i1 %or.cond168.i.3, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.split.split.i.3
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.uz
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !43
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.split.split.i.3
  %.sink.i8.3 = phi float [ %i.vc, %bb.ad ], [ 0.000000e+00, %.lr.ph.split.split.i.3 ]
  %i.vd = getelementptr [4 x i8], ptr %i.sk, i64 %i.ux
  store float %.sink.i8.3, ptr %i.vd, align 4, !tbaa !43
  %i.ve = add nuw nsw i64 %.0177.i, 4             ; 2 uses
  %exitcond.not.i9.3 = icmp eq i64 %i.ve, %i.ml
  br i1 %exitcond.not.i9.3, label %._crit_edge.i, label %.lr.ph.split.split.i, !llvm.loop !1037

bb.af:                                            ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6660, ptr noundef nonnull @.str.2) #17
  unreachable

_ZL31ggml_compute_forward_im2col_f16PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge196.i, %._crit_edge264.split274.us.split.us.us.us.i, %.preheader174.lr.ph.split.split.split.i, %.preheader174.lr.ph.i, %bb.x, %.preheader200.lr.ph.split.split.split.i, %.preheader200.lr.ph.i, %bb.g
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
  %.fr299 = freeze i32 %i.au
  %i.av = icmp eq i32 %.fr299, 1                  ; 8 uses
  %i.aw = load i32, ptr %0, align 8, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !36
  %i.az = select i1 %i.av, i64 %i.y, i64 %i.w     ; 12 uses
  %i.ba = select i1 %i.av, i64 %i.w, i64 %i.u     ; 19 uses
  %i.bb = select i1 %i.av, i64 %i.u, i64 1        ; 5 uses
  %i.bc = select i1 %i.av, i64 %i.q, i64 1        ; 5 uses
  %.fr300 = freeze i64 %i.m
  %i.bd = select i1 %i.av, i64 %.fr300, i64 1     ; 3 uses
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
  br i1 %i.bj, label %.lr.ph, label %._crit_edge278.split

.lr.ph:                                           ; preds = %bb.i
  %2 = sext i32 %i.aw to i64                      ; 18 uses
  %3 = mul i64 %i.bc, %i.ba
  %factor.op.mul256.reass = mul i64 %3, %i.o      ; 4 uses
  %i.bk = icmp sle i64 %i.ba, %2
  %factor.op.mul = mul i64 %i.bc, %i.o            ; 2 uses
  %i.bl = icmp slt i64 %i.bb, 1
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
  %brmerge = select i1 %i.bk, i1 true, i1 %i.bl
  %brmerge298 = select i1 %brmerge, i1 true, i1 %i.bm
  br i1 %brmerge298, label %._crit_edge278.split, label %.lr.ph.split.split.split

.lr.ph.split.split.split:                         ; preds = %.lr.ph
  %i.ca = icmp sgt i64 %i.bc, 0
  br i1 %i.ca, label %.lr.ph.split.split.split.split.us, label %.preheader185.lr.ph.preheader

.preheader185.lr.ph.preheader:                    ; preds = %.lr.ph.split.split.split
  %i.cb = mul i64 %i.bb, %i.s
  %i.cc = shl i64 %i.cb, 2                        ; 5 uses
  %xtraiter = and i64 %i.az, 3                    ; 3 uses
  %i.cd = icmp ult i64 %i.az, 4
  br i1 %i.cd, label %.preheader185.lr.ph.epil.preheader, label %.preheader185.lr.ph.preheader.new

.preheader185.lr.ph.preheader.new:                ; preds = %.preheader185.lr.ph.preheader
  %unroll_iter = and i64 %i.az, 9223372036854775804
  br label %.preheader185.lr.ph

.lr.ph.split.split.split.split.us:                ; preds = %.lr.ph.split.split.split
  br i1 %i.bn, label %.lr.ph.split.split.split.split.us.split.us, label %.preheader185.lr.ph.us.preheader

.preheader185.lr.ph.us.preheader:                 ; preds = %.lr.ph.split.split.split.split.us
  %i.ce = mul i64 %i.bb, %i.s
  %i.cf = shl i64 %i.ce, 2                        ; 5 uses
  %xtraiter355 = and i64 %i.az, 3                 ; 3 uses
  %i.cg = icmp ult i64 %i.az, 4
  br i1 %i.cg, label %.preheader185.lr.ph.us.epil.preheader, label %.preheader185.lr.ph.us.preheader.new

.preheader185.lr.ph.us.preheader.new:             ; preds = %.preheader185.lr.ph.us.preheader
  %unroll_iter359 = and i64 %i.az, 9223372036854775804
  br label %.preheader185.lr.ph.us

.lr.ph.split.split.split.split.us.split.us:       ; preds = %.lr.ph.split.split.split.split.us
  br i1 %i.av, label %.preheader185.lr.ph.us.us.us, label %.lr.ph.split.split.split.split.us.split.us.split

.preheader185.lr.ph.us.us.us:                     ; preds = %.lr.ph.split.split.split.split.us.split.us, %._crit_edge.split271.us.split.us.split.us.us.us.us
  %.0166276.us.us.us = phi i64 [ %i.dt, %._crit_edge.split271.us.split.us.split.us.us.us.us ], [ 0, %.lr.ph.split.split.split.split.us.split.us ] ; 3 uses
  %i.ch = mul nuw nsw i64 %.0166276.us.us.us, %i.bd
  %i.ci = mul nsw i64 %.0166276.us.us.us, %i.bw
  %i.cj = getelementptr i8, ptr %i.bi, i64 %i.ci
  br label %.preheader185.us.us.us.us.us.us

.preheader185.us.us.us.us.us.us:                  ; preds = %._crit_edge241.split253.us.split.us.split.us.us.us.us.us.us.us, %.preheader185.lr.ph.us.us.us
  %.0164257.us.us.us.us.us.us = phi i64 [ %2, %.preheader185.lr.ph.us.us.us ], [ %i.dr, %._crit_edge241.split253.us.split.us.split.us.us.us.us.us.us.us ] ; 3 uses
  %factor.op.mul225.reass.us.us.us.us.us.us = mul i64 %factor.op.mul, %.0164257.us.us.us.us.us.us
  %i.ck = mul nsw i64 %.0164257.us.us.us.us.us.us, %i.by
  %i.cl = getelementptr i8, ptr %i.cj, i64 %i.ck
  br label %.preheader184.us.us.us.us.us.us.us.us.us

.preheader184.us.us.us.us.us.us.us.us.us:         ; preds = %._crit_edge.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us, %.preheader185.us.us.us.us.us.us
  %.0163240.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader185.us.us.us.us.us.us ], [ %i.dq, %._crit_edge.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.cm = add nsw i64 %.0163240.us.us.us.us.us.us.us.us.us, %i.br
  %i.cn = mul nuw nsw i64 %.0163240.us.us.us.us.us.us.us.us.us, %i.s
  %i.co = getelementptr [4 x i8], ptr %i.cl, i64 %i.cn
  br label %.preheader183.us.us.us.us.us.us.us.us.us.us.us.us

.preheader183.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge206.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader184.us.us.us.us.us.us.us.us.us
  %.0162226.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader184.us.us.us.us.us.us.us.us.us ], [ %i.dp, %._crit_edge206.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.cp = add nsw i64 %.0162226.us.us.us.us.us.us.us.us.us.us.us.us, %i.bo
  br label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader183.us.us.us.us.us.us.us.us.us.us.us.us
  %.0159205.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader183.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.dn, %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %.0160204.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ 0.000000e+00, %.preheader183.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ]
  %i.cq = mul i64 %.0159205.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.bs
  %i.cr = sub i64 %i.cm, %i.cq                    ; 2 uses
  %i.cs = mul nuw nsw i64 %.0159205.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.o
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %.0158191.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.dm, %bb.n ] ; 3 uses
  %.1161190.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ %.0160204.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.n ] ; 4 uses
  %.reass193.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = mul i64 %.0158191.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %factor.op.mul192
  %i.ct = add i64 %i.cp, %.reass193.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us ; 2 uses
  %i.cu = srem i64 %i.ct, %i.bq
  %i.cv = sdiv i64 %i.ct, %i.bq                   ; 3 uses
  %.not.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp eq i64 %i.cu, 0
  br i1 %.not.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.cw = srem i64 %i.cr, %i.bt
  %i.cx = sdiv i64 %i.cr, %i.bt                   ; 3 uses
  %.not175.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp ne i64 %i.cw, 0
  %i.cy = icmp slt i64 %i.cv, 0
  %or.cond377 = select i1 %.not175.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, i1 true, i1 %i.cy
  br i1 %or.cond377, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cz = icmp slt i64 %i.cv, %i.k
  %i.da = icmp sgt i64 %i.cx, -1
  %or.cond.not181.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = and i1 %i.cz, %i.da
  %.not176.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp slt i64 %i.cx, %i.bd
  %or.cond177.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = and i1 %or.cond.not181.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %.not176.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  br i1 %or.cond177.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.db = load ptr, ptr %i.bu, align 8, !tbaa !37
  %i.dc = add i64 %i.cx, %i.ch
  %i.dd = mul i64 %i.dc, %i.k
  %i.de = add nsw i64 %i.dd, %i.cv
  %i.df = mul nsw i64 %factor.op.mul256.reass, %i.de
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.df
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %factor.op.mul225.reass.us.us.us.us.us.us
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %i.cs
  %i.dj = getelementptr [4 x i8], ptr %i.di, i64 %.0158191.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !43
  %i.dl = fadd float %.1161190.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.dk
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ %.1161190.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.j ], [ %.1161190.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.k ], [ %i.dl, %bb.m ], [ %.1161190.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.l ] ; 3 uses
  %i.dm = add nuw nsw i64 %.0158191.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond312.not = icmp eq i64 %i.dm, %i.o
  br i1 %exitcond312.not, label %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.j, !llvm.loop !1044

._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %bb.n
  %i.dn = add nuw nsw i64 %.0159205.us.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond313.not = icmp eq i64 %i.dn, %i.bc
  br i1 %exitcond313.not, label %._crit_edge206.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !1045

._crit_edge206.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.do = getelementptr [4 x i8], ptr %i.co, i64 %.0162226.us.us.us.us.us.us.us.us.us.us.us.us
  store float %.3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.us, ptr %i.do, align 4, !tbaa !43
  %i.dp = add nuw nsw i64 %.0162226.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond314.not = icmp eq i64 %i.dp, %i.s
  br i1 %exitcond314.not, label %._crit_edge.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us, label %.preheader183.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !1046

._crit_edge.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge206.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.dq = add nuw nsw i64 %.0163240.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond315.not = icmp eq i64 %i.dq, %i.bb
  br i1 %exitcond315.not, label %._crit_edge241.split253.us.split.us.split.us.us.us.us.us.us.us, label %.preheader184.us.us.us.us.us.us.us.us.us, !llvm.loop !1047

._crit_edge241.split253.us.split.us.split.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.us.split.us.split.us.us.us.us.us.us.us.us.us.us
  %i.dr = add nsw i64 %.0164257.us.us.us.us.us.us, %i.bz ; 2 uses
  %i.ds = icmp slt i64 %i.dr, %i.ba
  br i1 %i.ds, label %.preheader185.us.us.us.us.us.us, label %._crit_edge.split271.us.split.us.split.us.us.us.us, !llvm.loop !1048

._crit_edge.split271.us.split.us.split.us.us.us.us: ; preds = %._crit_edge241.split253.us.split.us.split.us.us.us.us.us.us.us
  %i.dt = add nuw nsw i64 %.0166276.us.us.us, 1   ; 2 uses
  %exitcond316.not = icmp eq i64 %i.dt, %i.az
  br i1 %exitcond316.not, label %._crit_edge278.split, label %.preheader185.lr.ph.us.us.us, !llvm.loop !1049

.lr.ph.split.split.split.split.us.split.us.split: ; preds = %.lr.ph.split.split.split.split.us.split.us
  br i1 %.not176, label %.preheader185.lr.ph.us.us.us294.preheader, label %.preheader185.lr.ph.us.us.preheader

.preheader185.lr.ph.us.us.us294.preheader:        ; preds = %.lr.ph.split.split.split.split.us.split.us.split
  %xtraiter367 = and i64 %i.o, 1
  %i.du = icmp eq i64 %i.o, 1
  %unroll_iter372 = and i64 %i.o, 9223372036854775806
  %lcmp.mod369.not = icmp eq i64 %xtraiter367, 0
  %lcmp.mod371 = trunc i64 %i.o to i1
  br label %.preheader185.lr.ph.us.us.us294

.preheader185.lr.ph.us.us.preheader:              ; preds = %.lr.ph.split.split.split.split.us.split.us.split
  %i.dv = shl i64 %i.s, 2                         ; 5 uses
  %xtraiter361 = and i64 %i.az, 3                 ; 3 uses
  %i.dw = icmp ult i64 %i.az, 4
  br i1 %i.dw, label %.preheader185.lr.ph.us.us.epil.preheader, label %.preheader185.lr.ph.us.us.preheader.new

.preheader185.lr.ph.us.us.preheader.new:          ; preds = %.preheader185.lr.ph.us.us.preheader
  %unroll_iter365 = and i64 %i.az, 9223372036854775804
  br label %.preheader185.lr.ph.us.us

.preheader185.lr.ph.us.us.us294:                  ; preds = %.preheader185.lr.ph.us.us.us294.preheader, %._crit_edge.split271.us.split.us.split.split.us.us.us.us
  %.0166276.us.us.us295 = phi i64 [ %i.gd, %._crit_edge.split271.us.split.us.split.split.us.us.us.us ], [ 0, %.preheader185.lr.ph.us.us.us294.preheader ] ; 3 uses
  %.reass.us = mul i64 %.0166276.us.us.us295, %i.k ; 3 uses
  %i.dx = mul nsw i64 %.0166276.us.us.us295, %i.bw
  %i.dy = getelementptr i8, ptr %i.bi, i64 %i.dx
  br label %.preheader185.us.us.us272.us.us.us

.preheader185.us.us.us272.us.us.us:               ; preds = %._crit_edge241.split253.us.split.us.split.split.us.us.us.us.us.us.us, %.preheader185.lr.ph.us.us.us294
  %.0164257.us.us.us273.us.us.us = phi i64 [ %2, %.preheader185.lr.ph.us.us.us294 ], [ %i.gb, %._crit_edge241.split253.us.split.us.split.split.us.us.us.us.us.us.us ] ; 3 uses
  %factor.op.mul225.reass.us.us.us274.us.us.us = mul i64 %factor.op.mul, %.0164257.us.us.us273.us.us.us ; 3 uses
  %i.dz = mul nsw i64 %.0164257.us.us.us273.us.us.us, %i.by
  %i.ea = getelementptr i8, ptr %i.dy, i64 %i.dz
  br label %.preheader184.us.us.us254.us.us.us.us.us.us

.preheader184.us.us.us254.us.us.us.us.us.us:      ; preds = %._crit_edge.split.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us, %.preheader185.us.us.us272.us.us.us
  %.0163240.us.us.us255.us.us.us.us.us.us = phi i64 [ 0, %.preheader185.us.us.us272.us.us.us ], [ %i.ga, %._crit_edge.split.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %i.eb = mul nuw nsw i64 %.0163240.us.us.us255.us.us.us.us.us.us, %i.s
  %i.ec = getelementptr [4 x i8], ptr %i.ea, i64 %i.eb
  br label %.preheader183.us.us.us237.us.us.us.us.us.us.us.us.us

.preheader183.us.us.us237.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge206.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader184.us.us.us254.us.us.us.us.us.us
  %.0162226.us.us.us238.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader184.us.us.us254.us.us.us.us.us.us ], [ %i.fz, %._crit_edge206.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.ed = add nsw i64 %.0162226.us.us.us238.us.us.us.us.us.us.us.us.us, %i.bo ; 3 uses
  br label %.preheader.us.us220.us.us.us.us.us.us.us.us.us.us.us.us

.preheader.us.us220.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.split.us216.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader183.us.us.us237.us.us.us.us.us.us.us.us.us
  %.0159205.us.us221.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader183.us.us.us237.us.us.us.us.us.us.us.us.us ], [ %i.fx, %._crit_edge.split.split.us216.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %.0160204.us.us222.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ 0.000000e+00, %.preheader183.us.us.us237.us.us.us.us.us.us.us.us.us ], [ %.3.us215.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa, %._crit_edge.split.split.us216.us.us.us.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %i.ee = mul nuw nsw i64 %.0159205.us.us221.us.us.us.us.us.us.us.us.us.us.us.us, %i.o ; 3 uses
  br i1 %i.du, label %.epil.preheader, label %.preheader.us.us220.us.us.us.us.us.us.us.us.us.us.us.us.new

.preheader.us.us220.us.us.us.us.us.us.us.us.us.us.us.us.new: ; preds = %.preheader.us.us220.us.us.us.us.us.us.us.us.us.us.us.us, %bb.t
  %.0158191.us211.us.us.us.us.us.us.us.us.us.us.us.us.us = phi i64 [ %i.fi, %bb.t ], [ 0, %.preheader.us.us220.us.us.us.us.us.us.us.us.us.us.us.us ] ; 4 uses
  %.1161190.us212.us.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ %.3.us215.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %bb.t ], [ %.0160204.us.us222.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us220.us.us.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %niter373 = phi i64 [ %niter373.next.1, %bb.t ], [ 0, %.preheader.us.us220.us.us.us.us.us.us.us.us.us.us.us.us ]
  %.reass193.us213.us.us.us.us.us.us.us.us.us.us.us.us.us = mul i64 %.0158191.us211.us.us.us.us.us.us.us.us.us.us.us.us.us, %factor.op.mul192
  %i.ef = add i64 %i.ed, %.reass193.us213.us.us.us.us.us.us.us.us.us.us.us.us.us ; 2 uses
  %i.eg = srem i64 %i.ef, %i.bq
  %i.eh = sdiv i64 %i.ef, %i.bq                   ; 3 uses
  %.not.us214.us.us.us.us.us.us.us.us.us.us.us.us.us = icmp eq i64 %i.eg, 0
  br i1 %.not.us214.us.us.us.us.us.us.us.us.us.us.us.us.us, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.preheader.us.us220.us.us.us.us.us.us.us.us.us.us.us.us.new
  %i.ei = icmp sgt i64 %i.eh, -1
  %i.ej = icmp slt i64 %i.eh, %i.k
  %or.cond = select i1 %i.ei, i1 %i.ej, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ek = load ptr, ptr %i.bu, align 8, !tbaa !37
  %i.el = add nsw i64 %.reass.us, %i.eh
  %i.em = mul nsw i64 %factor.op.mul256.reass, %i.el
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.em
  %i.eo = getelementptr [4 x i8], ptr %i.en, i64 %factor.op.mul225.reass.us.us.us274.us.us.us
  %i.ep = getelementptr [4 x i8], ptr %i.eo, i64 %i.ee
  %i.eq = getelementptr [4 x i8], ptr %i.ep, i64 %.0158191.us211.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.er = load float, ptr %i.eq, align 4, !tbaa !43
  %i.es = fadd float %.1161190.us212.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.er
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.preheader.us.us220.us.us.us.us.us.us.us.us.us.us.us.us.new
  %.3.us215.us.us.us.us.us.us.us.us.us.us.us.us.us = phi float [ %.1161190.us212.us.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us220.us.us.us.us.us.us.us.us.us.us.us.us.new ], [ %.1161190.us212.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.o ], [ %i.es, %bb.p ] ; 3 uses
  %i.et = or disjoint i64 %.0158191.us211.us.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %.reass193.us213.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = mul i64 %i.et, %factor.op.mul192
  %i.eu = add i64 %i.ed, %.reass193.us213.us.us.us.us.us.us.us.us.us.us.us.us.us.1 ; 2 uses
  %i.ev = srem i64 %i.eu, %i.bq
  %i.ew = sdiv i64 %i.eu, %i.bq                   ; 3 uses
  %.not.us214.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = icmp eq i64 %i.ev, 0
  br i1 %.not.us214.us.us.us.us.us.us.us.us.us.us.us.us.us.1, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ex = icmp sgt i64 %i.ew, -1
  %i.ey = icmp slt i64 %i.ew, %i.k
  %or.cond.1 = select i1 %i.ex, i1 %i.ey, i1 false
  br i1 %or.cond.1, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ez = load ptr, ptr %i.bu, align 8, !tbaa !37
  %i.fa = add nsw i64 %.reass.us, %i.ew
  %i.fb = mul nsw i64 %factor.op.mul256.reass, %i.fa
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.fb
  %i.fd = getelementptr [4 x i8], ptr %i.fc, i64 %factor.op.mul225.reass.us.us.us274.us.us.us
  %i.fe = getelementptr [4 x i8], ptr %i.fd, i64 %i.ee
  %i.ff = getelementptr [4 x i8], ptr %i.fe, i64 %i.et
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !43
  %i.fh = fadd float %.3.us215.us.us.us.us.us.us.us.us.us.us.us.us.us, %i.fg
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.3.us215.us.us.us.us.us.us.us.us.us.us.us.us.us.1 = phi float [ %.3.us215.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.q ], [ %.3.us215.us.us.us.us.us.us.us.us.us.us.us.us.us, %bb.r ], [ %i.fh, %bb.s ] ; 3 uses
  %i.fi = add nuw nsw i64 %.0158191.us211.us.us.us.us.us.us.us.us.us.us.us.us.us, 2 ; 2 uses
  %niter373.next.1 = add nuw nsw i64 %niter373, 2 ; 2 uses
  %niter373.ncmp.1 = icmp eq i64 %niter373.next.1, %unroll_iter372
  br i1 %niter373.ncmp.1, label %._crit_edge.split.split.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, label %.preheader.us.us220.us.us.us.us.us.us.us.us.us.us.us.us.new, !llvm.loop !1044

._crit_edge.split.split.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa: ; preds = %bb.t
  br i1 %lcmp.mod369.not, label %._crit_edge.split.split.us216.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.split.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, %.preheader.us.us220.us.us.us.us.us.us.us.us.us.us.us.us
  %.0158191.us211.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi i64 [ 0, %.preheader.us.us220.us.us.us.us.us.us.us.us.us.us.us.us ], [ %i.fi, %._crit_edge.split.split.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  %.1161190.us212.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi float [ %.0160204.us.us222.us.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us220.us.us.us.us.us.us.us.us.us.us.us.us ], [ %.3.us215.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %._crit_edge.split.split.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod371)
  %.reass193.us213.us.us.us.us.us.us.us.us.us.us.us.us.us.epil = mul i64 %.0158191.us211.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %factor.op.mul192
  %i.fj = add i64 %i.ed, %.reass193.us213.us.us.us.us.us.us.us.us.us.us.us.us.us.epil ; 2 uses
  %i.fk = srem i64 %i.fj, %i.bq
  %i.fl = sdiv i64 %i.fj, %i.bq                   ; 3 uses
  %.not.us214.us.us.us.us.us.us.us.us.us.us.us.us.us.epil = icmp eq i64 %i.fk, 0
  br i1 %.not.us214.us.us.us.us.us.us.us.us.us.us.us.us.us.epil, label %bb.u, label %._crit_edge.split.split.us216.us.us.us.us.us.us.us.us.us.us.us.us.us

bb.u:                                             ; preds = %.epil.preheader
  %i.fm = icmp sgt i64 %i.fl, -1
  %i.fn = icmp slt i64 %i.fl, %i.k
  %or.cond.epil = select i1 %i.fm, i1 %i.fn, i1 false
  br i1 %or.cond.epil, label %bb.v, label %._crit_edge.split.split.us216.us.us.us.us.us.us.us.us.us.us.us.us.us

bb.v:                                             ; preds = %bb.u
  %i.fo = load ptr, ptr %i.bu, align 8, !tbaa !37
  %i.fp = add nsw i64 %.reass.us, %i.fl
  %i.fq = mul nsw i64 %factor.op.mul256.reass, %i.fp
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.fq
  %i.fs = getelementptr [4 x i8], ptr %i.fr, i64 %factor.op.mul225.reass.us.us.us274.us.us.us
  %i.ft = getelementptr [4 x i8], ptr %i.fs, i64 %i.ee
  %i.fu = getelementptr [4 x i8], ptr %i.ft, i64 %.0158191.us211.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !43
  %i.fw = fadd float %.1161190.us212.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %i.fv
  br label %._crit_edge.split.split.us216.us.us.us.us.us.us.us.us.us.us.us.us.us

._crit_edge.split.split.us216.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %.epil.preheader, %bb.u, %bb.v, %._crit_edge.split.split.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa
  %.3.us215.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa = phi float [ %.3.us215.us.us.us.us.us.us.us.us.us.us.us.us.us.1, %._crit_edge.split.split.us216.us.us.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ], [ %.1161190.us212.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %.epil.preheader ], [ %.1161190.us212.us.us.us.us.us.us.us.us.us.us.us.us.us.epil.init, %bb.u ], [ %i.fw, %bb.v ] ; 2 uses
  %i.fx = add nuw nsw i64 %.0159205.us.us221.us.us.us.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond308.not = icmp eq i64 %i.fx, %i.bc
  br i1 %exitcond308.not, label %._crit_edge206.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us, label %.preheader.us.us220.us.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !1045

._crit_edge206.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.split.us216.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.fy = getelementptr [4 x i8], ptr %i.ec, i64 %.0162226.us.us.us238.us.us.us.us.us.us.us.us.us
  store float %.3.us215.us.us.us.us.us.us.us.us.us.us.us.us.us.lcssa, ptr %i.fy, align 4, !tbaa !43
  %i.fz = add nuw nsw i64 %.0162226.us.us.us238.us.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond309.not = icmp eq i64 %i.fz, %i.s
  br i1 %exitcond309.not, label %._crit_edge.split.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us, label %.preheader183.us.us.us237.us.us.us.us.us.us.us.us.us, !llvm.loop !1046

._crit_edge.split.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge206.split.us.split.split.us.us.us.us.us.us.us.us.us.us.us.us.us
  %i.ga = add nuw nsw i64 %.0163240.us.us.us255.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond310.not = icmp eq i64 %i.ga, %i.bb
  br i1 %exitcond310.not, label %._crit_edge241.split253.us.split.us.split.split.us.us.us.us.us.us.us, label %.preheader184.us.us.us254.us.us.us.us.us.us, !llvm.loop !1047

._crit_edge241.split253.us.split.us.split.split.us.us.us.us.us.us.us: ; preds = %._crit_edge.split.us.split.us.split.split.us.us.us.us.us.us.us.us.us.us
  %i.gb = add nsw i64 %.0164257.us.us.us273.us.us.us, %i.bz ; 2 uses
  %i.gc = icmp slt i64 %i.gb, %i.ba
  br i1 %i.gc, label %.preheader185.us.us.us272.us.us.us, label %._crit_edge.split271.us.split.us.split.split.us.us.us.us, !llvm.loop !1048

._crit_edge.split271.us.split.us.split.split.us.us.us.us: ; preds = %._crit_edge241.split253.us.split.us.split.split.us.us.us.us.us.us.us
  %i.gd = add nuw nsw i64 %.0166276.us.us.us295, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %i.gd, %i.az
  br i1 %exitcond311.not, label %._crit_edge278.split, label %.preheader185.lr.ph.us.us.us294, !llvm.loop !1049

.preheader185.lr.ph.us.us:                        ; preds = %._crit_edge.split271.us.split.us.split.split.us289.us.3, %.preheader185.lr.ph.us.us.preheader.new
  %.0166276.us.us = phi i64 [ 0, %.preheader185.lr.ph.us.us.preheader.new ], [ %i.hf, %._crit_edge.split271.us.split.us.split.split.us289.us.3 ] ; 5 uses
  %niter366 = phi i64 [ 0, %.preheader185.lr.ph.us.us.preheader.new ], [ %niter366.next.3, %._crit_edge.split271.us.split.us.split.split.us289.us.3 ]
  %i.ge = mul nsw i64 %.0166276.us.us, %i.bw
  %i.gf = getelementptr i8, ptr %i.bi, i64 %i.ge
  br label %.preheader185.us.us.us287.us

.preheader185.us.us.us287.us:                     ; preds = %.preheader185.us.us.us287.us, %.preheader185.lr.ph.us.us
  %.0164257.us.us.us288.us = phi i64 [ %2, %.preheader185.lr.ph.us.us ], [ %i.gi, %.preheader185.us.us.us287.us ] ; 2 uses
  %i.gg = mul i64 %.0164257.us.us.us288.us, %i.by
  %i.gh = getelementptr i8, ptr %i.gf, i64 %i.gg
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gh, i8 0, i64 %i.dv, i1 false), !tbaa !43
  %i.gi = add nsw i64 %.0164257.us.us.us288.us, %i.bz ; 2 uses
  %i.gj = icmp slt i64 %i.gi, %i.ba
  br i1 %i.gj, label %.preheader185.us.us.us287.us, label %._crit_edge.split271.us.split.us.split.split.us289.us, !llvm.loop !1048

._crit_edge.split271.us.split.us.split.split.us289.us: ; preds = %.preheader185.us.us.us287.us
  %i.gk = or disjoint i64 %.0166276.us.us, 1
  %i.gl = mul nsw i64 %i.gk, %i.bw
  %i.gm = getelementptr i8, ptr %i.bi, i64 %i.gl
  br label %.preheader185.us.us.us287.us.1

.preheader185.us.us.us287.us.1:                   ; preds = %.preheader185.us.us.us287.us.1, %._crit_edge.split271.us.split.us.split.split.us289.us
  %.0164257.us.us.us288.us.1 = phi i64 [ %2, %._crit_edge.split271.us.split.us.split.split.us289.us ], [ %i.gp, %.preheader185.us.us.us287.us.1 ] ; 2 uses
  %i.gn = mul i64 %.0164257.us.us.us288.us.1, %i.by
  %i.go = getelementptr i8, ptr %i.gm, i64 %i.gn
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.go, i8 0, i64 %i.dv, i1 false), !tbaa !43
  %i.gp = add nsw i64 %.0164257.us.us.us288.us.1, %i.bz ; 2 uses
  %i.gq = icmp slt i64 %i.gp, %i.ba
  br i1 %i.gq, label %.preheader185.us.us.us287.us.1, label %._crit_edge.split271.us.split.us.split.split.us289.us.1, !llvm.loop !1048

._crit_edge.split271.us.split.us.split.split.us289.us.1: ; preds = %.preheader185.us.us.us287.us.1
  %i.gr = or disjoint i64 %.0166276.us.us, 2
  %i.gs = mul nsw i64 %i.gr, %i.bw
  %i.gt = getelementptr i8, ptr %i.bi, i64 %i.gs
  br label %.preheader185.us.us.us287.us.2

.preheader185.us.us.us287.us.2:                   ; preds = %.preheader185.us.us.us287.us.2, %._crit_edge.split271.us.split.us.split.split.us289.us.1
  %.0164257.us.us.us288.us.2 = phi i64 [ %2, %._crit_edge.split271.us.split.us.split.split.us289.us.1 ], [ %i.gw, %.preheader185.us.us.us287.us.2 ] ; 2 uses
  %i.gu = mul i64 %.0164257.us.us.us288.us.2, %i.by
  %i.gv = getelementptr i8, ptr %i.gt, i64 %i.gu
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gv, i8 0, i64 %i.dv, i1 false), !tbaa !43
  %i.gw = add nsw i64 %.0164257.us.us.us288.us.2, %i.bz ; 2 uses
  %i.gx = icmp slt i64 %i.gw, %i.ba
  br i1 %i.gx, label %.preheader185.us.us.us287.us.2, label %._crit_edge.split271.us.split.us.split.split.us289.us.2, !llvm.loop !1048

._crit_edge.split271.us.split.us.split.split.us289.us.2: ; preds = %.preheader185.us.us.us287.us.2
  %i.gy = or disjoint i64 %.0166276.us.us, 3
  %i.gz = mul nsw i64 %i.gy, %i.bw
  %i.ha = getelementptr i8, ptr %i.bi, i64 %i.gz
  br label %.preheader185.us.us.us287.us.3

.preheader185.us.us.us287.us.3:                   ; preds = %.preheader185.us.us.us287.us.3, %._crit_edge.split271.us.split.us.split.split.us289.us.2
  %.0164257.us.us.us288.us.3 = phi i64 [ %2, %._crit_edge.split271.us.split.us.split.split.us289.us.2 ], [ %i.hd, %.preheader185.us.us.us287.us.3 ] ; 2 uses
  %i.hb = mul i64 %.0164257.us.us.us288.us.3, %i.by
end_hunk_0
