Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 84
begin_hunk_0_@stbi__jpeg_decode_block_prog_ac:bb.a
.loopexit228:                                     ; preds = %bb.at, %bb.az, %bb.ba, %bb.ay
  %i.go = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.7, ptr %i.go, align 8, !tbaa !39
  br label %.critedge

stbi__jpeg_huff_decode.exit182:                   ; preds = %bb.bb, %bb.au
  %i.gp = phi i32 [ %i.gm, %bb.bb ], [ %i.ft, %bb.au ]
  %i.gq = phi i32 [ %i.gl, %bb.bb ], [ %i.fu, %bb.au ] ; 6 uses
  %.pn = phi i64 [ %i.gn, %bb.bb ], [ %i.fn, %bb.au ]
  %.1.i177.in.in = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.pn
  %.1.i177.in = load i8, ptr %.1.i177.in.in, align 1, !tbaa !37 ; 2 uses
  %.1.i177 = zext i8 %.1.i177.in to i32           ; 2 uses
  %i.gr = and i32 %.1.i177, 15
  %i.gs = lshr i32 %.1.i177, 4                    ; 9 uses
  switch i32 %i.gr, label %bb.bi [
    i32 0, label %bb.bc
    i32 1, label %bb.bj
  ]

bb.bc:                                            ; preds = %stbi__jpeg_huff_decode.exit182
  %i.gt = icmp ult i8 %.1.i177.in, -16
  br i1 %i.gt, label %bb.bd, label %stbi__jpeg_get_bit.exit190.thread

bb.bd:                                            ; preds = %bb.bc
  %notmask = shl nsw i32 -1, %i.gs                ; 2 uses
  %i.gu = xor i32 %notmask, -1                    ; 2 uses
  store i32 %i.gu, ptr %i.j, align 4, !tbaa !104
  %.not156 = icmp eq i32 %i.gs, 0
  br i1 %.not156, label %stbi__jpeg_get_bit.exit190.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gv = icmp slt i32 %i.gq, %i.gs
  br i1 %i.gv, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pre.i185 = load i32, ptr %i.du, align 4, !tbaa !95
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.gw = phi i32 [ %.pre.i185, %bb.bf ], [ %i.gq, %bb.be ] ; 3 uses
  %i.gx = icmp slt i32 %i.gw, %i.gs
  br i1 %i.gx, label %stbi__jpeg_get_bits.exit186, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gy = load i32, ptr %i.dv, align 8, !tbaa !96 ; 2 uses
  %i.gz = tail call i32 @llvm.fshl.i32(i32 %i.gy, i32 %i.gy, i32 %i.gs) ; 2 uses
  %i.ha = and i32 %i.gz, %notmask
  store i32 %i.ha, ptr %i.dv, align 8, !tbaa !96
  %i.hb = and i32 %i.gz, %i.gu
  %i.hc = sub nuw nsw i32 %i.gw, %i.gs            ; 2 uses
  store i32 %i.hc, ptr %i.du, align 4, !tbaa !95
  br label %stbi__jpeg_get_bits.exit186

stbi__jpeg_get_bits.exit186:                      ; preds = %bb.bg, %bb.bh
  %i.hd = phi i32 [ %i.hc, %bb.bh ], [ %i.gw, %bb.bg ]
  %.0.i184 = phi i32 [ %i.hb, %bb.bh ], [ 0, %bb.bg ]
  %i.he = load i32, ptr %i.j, align 4, !tbaa !104
  %i.hf = add nsw i32 %i.he, %.0.i184
  store i32 %i.hf, ptr %i.j, align 4, !tbaa !104
  br label %stbi__jpeg_get_bit.exit190.thread

bb.bi:                                            ; preds = %stbi__jpeg_huff_decode.exit182
  %i.hg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @stbi__g_failure_reason)
  store ptr @.str.7, ptr %i.hg, align 8, !tbaa !39
  br label %.critedge

bb.bj:                                            ; preds = %stbi__jpeg_huff_decode.exit182
  %i.hh = icmp slt i32 %i.gq, 1
  br i1 %i.hh, label %bb.bk, label %stbi__jpeg_get_bit.exit190

bb.bk:                                            ; preds = %bb.bj
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pr.i189 = load i32, ptr %i.du, align 4, !tbaa !95 ; 3 uses
  %i.hi = icmp slt i32 %.pr.i189, 1
  br i1 %i.hi, label %stbi__jpeg_get_bit.exit190.thread, label %.stbi__jpeg_get_bit.exit190_crit_edge

.stbi__jpeg_get_bit.exit190_crit_edge:            ; preds = %bb.bk
  %.pre270 = load i32, ptr %i.dv, align 8, !tbaa !96
  br label %stbi__jpeg_get_bit.exit190

stbi__jpeg_get_bit.exit190:                       ; preds = %.stbi__jpeg_get_bit.exit190_crit_edge, %bb.bj
  %i.hj = phi i32 [ %.pre270, %.stbi__jpeg_get_bit.exit190_crit_edge ], [ %i.gp, %bb.bj ] ; 2 uses
  %i.hk = phi i32 [ %.pr.i189, %.stbi__jpeg_get_bit.exit190_crit_edge ], [ %i.gq, %bb.bj ]
  %i.hl = shl i32 %i.hj, 1
  store i32 %i.hl, ptr %i.dv, align 8, !tbaa !96
  %i.hm = add nsw i32 %i.hk, -1                   ; 2 uses
  store i32 %i.hm, ptr %i.du, align 4, !tbaa !95
  %.not154327 = icmp slt i32 %i.hj, 0
  %spec.select = select i1 %.not154327, i32 %i.ea, i32 %i.eb
  br label %stbi__jpeg_get_bit.exit190.thread

stbi__jpeg_get_bit.exit190.thread:                ; preds = %stbi__jpeg_get_bit.exit190, %bb.bk, %bb.bd, %stbi__jpeg_get_bits.exit186, %bb.bc
  %i.hn = phi i32 [ %i.hm, %stbi__jpeg_get_bit.exit190 ], [ %i.gq, %bb.bc ], [ %i.gq, %bb.bd ], [ %i.hd, %stbi__jpeg_get_bits.exit186 ], [ %.pr.i189, %bb.bk ] ; 2 uses
  %.0115 = phi i32 [ %i.gs, %stbi__jpeg_get_bit.exit190 ], [ %i.gs, %bb.bc ], [ 64, %bb.bd ], [ 64, %stbi__jpeg_get_bits.exit186 ], [ %i.gs, %bb.bk ]
  %.0 = phi i32 [ %spec.select, %stbi__jpeg_get_bit.exit190 ], [ 0, %bb.bc ], [ 0, %bb.bd ], [ 0, %stbi__jpeg_get_bits.exit186 ], [ %i.eb, %bb.bk ]
  %i.ho = load i32, ptr %i.ec, align 8, !tbaa !100 ; 3 uses
  %.not157254 = icmp sgt i32 %.6, %i.ho
  br i1 %.not157254, label %.loopexit226, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %stbi__jpeg_get_bit.exit190.thread
  %i.hp = sext i32 %.6 to i64
  br label %.lr.ph257

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %stbi__jpeg_get_bit.exit194.thread
  %i.hq = phi i32 [ %i.ho, %.lr.ph257.preheader ], [ %i.ip, %stbi__jpeg_get_bit.exit194.thread ]
  %i.hr = phi i32 [ %i.hn, %.lr.ph257.preheader ], [ %i.io, %stbi__jpeg_get_bit.exit194.thread ] ; 4 uses
  %indvars.iv267 = phi i64 [ %i.hp, %.lr.ph257.preheader ], [ %indvars.iv.next268, %stbi__jpeg_get_bit.exit194.thread ] ; 3 uses
  %.1256 = phi i32 [ %.0115, %.lr.ph257.preheader ], [ %.3, %stbi__jpeg_get_bit.exit194.thread ] ; 7 uses
  %indvars.iv.next268 = add nsw i64 %indvars.iv267, 1 ; 3 uses
  %i.hs = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %indvars.iv267
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !37
  %i.hu = zext i8 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.hu ; 5 uses
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !74
  %.not158 = icmp eq i16 %i.hw, 0
  br i1 %.not158, label %bb.br, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph257
  %i.hx = icmp slt i32 %i.hr, 1
  br i1 %i.hx, label %bb.bm, label %stbi__jpeg_get_bit.exit194

bb.bm:                                            ; preds = %bb.bl
  tail call void @stbi__grow_buffer_unsafe(ptr noundef nonnull %0)
  %.pr.i193 = load i32, ptr %i.du, align 4, !tbaa !95 ; 3 uses
  %i.hy = icmp slt i32 %.pr.i193, 1
  br i1 %i.hy, label %stbi__jpeg_get_bit.exit194.thread, label %stbi__jpeg_get_bit.exit194

stbi__jpeg_get_bit.exit194:                       ; preds = %bb.bl, %bb.bm
  %i.hz = phi i32 [ %.pr.i193, %bb.bm ], [ %i.hr, %bb.bl ]
  %i.ia = load i32, ptr %i.dv, align 8, !tbaa !96 ; 2 uses
  %i.ib = shl i32 %i.ia, 1
  store i32 %i.ib, ptr %i.dv, align 8, !tbaa !96
  %i.ic = add nsw i32 %i.hz, -1                   ; 5 uses
  store i32 %i.ic, ptr %i.du, align 4, !tbaa !95
  %.not159 = icmp sgt i32 %i.ia, -1
  br i1 %.not159, label %stbi__jpeg_get_bit.exit194.thread, label %bb.bn

bb.bn:                                            ; preds = %stbi__jpeg_get_bit.exit194
  %i.id = load i16, ptr %i.hv, align 2, !tbaa !74 ; 4 uses
  %i.ie = sext i16 %i.id to i32
  %i.if = and i32 %i.ea, %i.ie
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.bo, label %stbi__jpeg_get_bit.exit194.thread

bb.bo:                                            ; preds = %bb.bn
  %i.ih = icmp sgt i16 %i.id, 0
  br i1 %i.ih, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.ii = add i16 %i.id, %i.ed
  store i16 %i.ii, ptr %i.hv, align 2, !tbaa !74
  br label %stbi__jpeg_get_bit.exit194.thread

bb.bq:                                            ; preds = %bb.bo
  %i.ij = sub i16 %i.id, %i.ed
  store i16 %i.ij, ptr %i.hv, align 2, !tbaa !74
  br label %stbi__jpeg_get_bit.exit194.thread

bb.br:                                            ; preds = %.lr.ph257
  %i.ik = icmp eq i32 %.1256, 0
  br i1 %i.ik, label %.thread223, label %bb.bs

.thread223:                                       ; preds = %bb.br
  %i.il = trunc nsw i64 %indvars.iv.next268 to i32
  %i.im = trunc i32 %.0 to i16
  store i16 %i.im, ptr %i.hv, align 2, !tbaa !74
  br label %.loopexit226

bb.bs:                                            ; preds = %bb.br
  %i.in = add nsw i32 %.1256, -1
  br label %stbi__jpeg_get_bit.exit194.thread

stbi__jpeg_get_bit.exit194.thread:                ; preds = %bb.bm, %bb.bs, %bb.bn, %bb.bq, %bb.bp, %stbi__jpeg_get_bit.exit194
  %i.io = phi i32 [ %i.hr, %bb.bs ], [ %i.ic, %bb.bp ], [ %i.ic, %bb.bq ], [ %i.ic, %bb.bn ], [ %i.ic, %stbi__jpeg_get_bit.exit194 ], [ %.pr.i193, %bb.bm ] ; 2 uses
  %.3 = phi i32 [ %i.in, %bb.bs ], [ %.1256, %bb.bp ], [ %.1256, %bb.bq ], [ %.1256, %bb.bn ], [ %.1256, %stbi__jpeg_get_bit.exit194 ], [ %.1256, %bb.bm ]
  %i.ip = load i32, ptr %i.ec, align 8, !tbaa !100 ; 3 uses
  %i.iq = sext i32 %i.ip to i64
  %.not157.not = icmp slt i64 %indvars.iv267, %i.iq
  br i1 %.not157.not, label %.lr.ph257, label %.loopexit226.loopexit

.loopexit226.loopexit:                            ; preds = %stbi__jpeg_get_bit.exit194.thread
  %i.ir = trunc nsw i64 %indvars.iv.next268 to i32
  br label %.loopexit226

.loopexit226:                                     ; preds = %.loopexit226.loopexit, %stbi__jpeg_get_bit.exit190.thread, %.thread223
  %i.is = phi i32 [ %i.hq, %.thread223 ], [ %i.ho, %stbi__jpeg_get_bit.exit190.thread ], [ %i.ip, %.loopexit226.loopexit ]
  %i.it = phi i32 [ %i.hr, %.thread223 ], [ %i.hn, %stbi__jpeg_get_bit.exit190.thread ], [ %i.io, %.loopexit226.loopexit ]
  %.9 = phi i32 [ %i.il, %.thread223 ], [ %.6, %stbi__jpeg_get_bit.exit190.thread ], [ %i.ir, %.loopexit226.loopexit ] ; 2 uses
  %.not161 = icmp sgt i32 %.9, %i.is
  br i1 %.not161, label %.critedge, label %bb.aq, !llvm.loop !307

.critedge:                                        ; preds = %stbi__jpeg_get_bit.exit.thread, %.loopexit226, %bb.aj, %bb.al, %bb.ai, %.loopexit, %bb.j, %bb.e, %bb.bi, %.loopexit228, %bb.b
  %.9135 = phi i32 [ 0, %bb.b ], [ 1, %.loopexit226 ], [ 0, %bb.bi ], [ 0, %.loopexit228 ], [ 1, %bb.e ], [ 0, %.loopexit ], [ 1, %bb.al ], [ 0, %bb.j ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ 1, %stbi__jpeg_get_bit.exit.thread ]
  ret i32 %.9135
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i8 @stbi__clamp(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  %.06 = tail call i32 @llvm.umin.i32(i32 %1, i32 255)
  %.0 = trunc nuw i32 %.06 to i8
  ret i8 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbi__idct_block(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #18 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  br label %bb.b

.preheader:                                       ; preds = %bb.i
  %i.b = sext i32 %1 to i64
  br label %bb.j

bb.b:                                             ; preds = %bb.a, %bb.i
  %.0219 = phi i32 [ 0, %bb.a ], [ %i.do, %bb.i ]
  %.0199218 = phi ptr [ %i.a, %bb.a ], [ %i.dq, %bb.i ] ; 17 uses
  %.0202217 = phi ptr [ %2, %bb.a ], [ %i.dp, %bb.i ] ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0202217, i64 16
  %i.d = load i16, ptr %i.c, align 2, !tbaa !74   ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.0202217, i64 32
  %i.g = load i16, ptr %i.f, align 2, !tbaa !74   ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0202217, i64 48
  %i.j = load i16, ptr %i.i, align 2, !tbaa !74
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0202217, i64 64
  %i.m = load i16, ptr %i.l, align 2, !tbaa !74
  %i.n = icmp eq i16 %i.m, 0
  br i1 %i.n, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.0202217, i64 80
  %i.p = load i16, ptr %i.o, align 2, !tbaa !74
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.0202217, i64 96
  %i.s = load i16, ptr %i.r, align 2, !tbaa !74
  %i.t = icmp eq i16 %i.s, 0
  br i1 %i.t, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.0202217, i64 112
  %i.v = load i16, ptr %i.u, align 2, !tbaa !74
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.x = load i16, ptr %.0202217, align 2, !tbaa !74
  %i.y = sext i16 %i.x to i32
  %i.z = shl nsw i32 %i.y, 2                      ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0199218, i64 224
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %.0199218, i64 192
  store i32 %i.z, ptr %i.ab, align 4, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %.0199218, i64 160
  store i32 %i.z, ptr %i.ac, align 4, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %.0199218, i64 128
  store i32 %i.z, ptr %i.ad, align 4, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %.0199218, i64 96
  store i32 %i.z, ptr %i.ae, align 4, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %.0199218, i64 64
  store i32 %i.z, ptr %i.af, align 4, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %.0199218, i64 32
  store i32 %i.z, ptr %i.ag, align 4, !tbaa !40
  store i32 %i.z, ptr %.0199218, align 4, !tbaa !40
  br label %bb.i

._crit_edge:                                      ; preds = %bb.b, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ah = phi i16 [ %i.g, %bb.b ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.ai = sext i16 %i.ah to i32                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0202217, i64 96
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !74
  %i.al = sext i16 %i.ak to i32                   ; 2 uses
  %i.am = add nsw i32 %i.al, %i.ai
  %i.an = mul nsw i32 %i.am, 2217                 ; 2 uses
  %i.ao = mul nsw i32 %i.al, -7567
  %i.ap = add nsw i32 %i.an, %i.ao                ; 2 uses
  %i.aq = mul nsw i32 %i.ai, 3135
  %i.ar = add nsw i32 %i.an, %i.aq                ; 2 uses
  %i.as = load i16, ptr %.0202217, align 2, !tbaa !74
  %i.at = sext i16 %i.as to i32                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0202217, i64 64
  %i.av = load i16, ptr %i.au, align 2, !tbaa !74
  %i.aw = sext i16 %i.av to i32                   ; 2 uses
  %i.ax = add nsw i32 %i.aw, %i.at
  %i.ay = shl nsw i32 %i.ax, 12                   ; 2 uses
  %i.az = sub nsw i32 %i.at, %i.aw
  %i.ba = shl nsw i32 %i.az, 12                   ; 2 uses
  %i.bb = sub nsw i32 %i.ay, %i.ar
  %i.bc = sub nsw i32 %i.ba, %i.ap
  %i.bd = getelementptr inbounds nuw i8, ptr %.0202217, i64 112
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !74
  %i.bf = sext i16 %i.be to i32                   ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0202217, i64 80
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !74
  %i.bi = sext i16 %i.bh to i32                   ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0202217, i64 48
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !74
  %i.bl = sext i16 %i.bk to i32                   ; 3 uses
  %i.bm = sext i16 %i.d to i32                    ; 3 uses
  %i.bn = add nsw i32 %i.bl, %i.bf                ; 2 uses
  %i.bo = add nsw i32 %i.bi, %i.bm                ; 2 uses
  %i.bp = add nsw i32 %i.bf, %i.bm
  %i.bq = add nsw i32 %i.bl, %i.bi
  %i.br = add nsw i32 %i.bn, %i.bo
  %i.bs = mul nsw i32 %i.br, 4816                 ; 2 uses
  %i.bt = mul nsw i32 %i.bf, 1223
  %i.bu = mul nsw i32 %i.bi, 8410
  %i.bv = mul nsw i32 %i.bl, 12586
  %i.bw = mul nsw i32 %i.bm, 6149
  %i.bx = mul nsw i32 %i.bp, -3685
  %i.by = add nsw i32 %i.bs, %i.bx                ; 2 uses
  %i.bz = mul nsw i32 %i.bq, -10497
  %i.ca = add nsw i32 %i.bs, %i.bz                ; 2 uses
  %i.cb = mul nsw i32 %i.bn, -8034                ; 2 uses
  %i.cc = mul nsw i32 %i.bo, -1597                ; 2 uses
  %i.cd = add nsw i32 %i.cc, %i.bw
  %i.ce = add nsw i32 %i.cd, %i.by                ; 2 uses
  %i.cf = add nsw i32 %i.cb, %i.bv
  %i.cg = add i32 %i.cf, %i.ca                    ; 2 uses
  %i.ch = add nsw i32 %i.cc, %i.bu
  %i.ci = add nsw i32 %i.ch, %i.ca                ; 2 uses
  %i.cj = add nsw i32 %i.cb, %i.bt
  %i.ck = add nsw i32 %i.cj, %i.by                ; 2 uses
  %i.cl = add nsw i32 %i.ar, 512
  %i.cm = add nsw i32 %i.cl, %i.ay                ; 2 uses
  %i.cn = add nsw i32 %i.ap, 512
  %i.co = add nsw i32 %i.cn, %i.ba                ; 2 uses
  %i.cp = add nsw i32 %i.bc, 512                  ; 2 uses
  %i.cq = add nsw i32 %i.bb, 512                  ; 2 uses
  %i.cr = add nsw i32 %i.ce, %i.cm
  %i.cs = ashr i32 %i.cr, 10
  store i32 %i.cs, ptr %.0199218, align 4, !tbaa !40
  %i.ct = sub nsw i32 %i.cm, %i.ce
  %i.cu = ashr i32 %i.ct, 10
  %i.cv = getelementptr inbounds nuw i8, ptr %.0199218, i64 224
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !40
  %i.cw = add nsw i32 %i.cg, %i.co
  %i.cx = ashr i32 %i.cw, 10
  %i.cy = getelementptr inbounds nuw i8, ptr %.0199218, i64 32
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !40
  %i.cz = sub nsw i32 %i.co, %i.cg
  %i.da = ashr i32 %i.cz, 10
  %i.db = getelementptr inbounds nuw i8, ptr %.0199218, i64 192
  store i32 %i.da, ptr %i.db, align 4, !tbaa !40
  %i.dc = add nsw i32 %i.ci, %i.cp
  %i.dd = ashr i32 %i.dc, 10
  %i.de = getelementptr inbounds nuw i8, ptr %.0199218, i64 64
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !40
  %i.df = sub nsw i32 %i.cp, %i.ci
  %i.dg = ashr i32 %i.df, 10
  %i.dh = getelementptr inbounds nuw i8, ptr %.0199218, i64 160
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !40
  %i.di = add nsw i32 %i.ck, %i.cq
  %i.dj = ashr i32 %i.di, 10
  %i.dk = getelementptr inbounds nuw i8, ptr %.0199218, i64 96
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !40
  %i.dl = sub nsw i32 %i.cq, %i.ck
  %i.dm = ashr i32 %i.dl, 10
  %i.dn = getelementptr inbounds nuw i8, ptr %.0199218, i64 128
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.do = add nuw nsw i32 %.0219, 1               ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0202217, i64 2
  %i.dq = getelementptr inbounds nuw i8, ptr %.0199218, i64 4
  %exitcond.not = icmp eq i32 %i.do, 8
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !308

bb.j:                                             ; preds = %.preheader, %bb.j
  %.1222 = phi i32 [ 0, %.preheader ], [ %i.dx, %bb.j ]
  %.1200221 = phi ptr [ %i.a, %.preheader ], [ %i.dy, %bb.j ] ; 9 uses
  %.0201220 = phi ptr [ %0, %.preheader ], [ %i.dz, %bb.j ] ; 9 uses
  %3 = getelementptr inbounds nuw i8, ptr %.1200221, i64 8
  %4 = load i32, ptr %3, align 4, !tbaa !40       ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.1200221, i64 24
  %6 = load i32, ptr %5, align 4, !tbaa !40       ; 2 uses
  %7 = add nsw i32 %6, %4
  %8 = mul nsw i32 %7, 2217                       ; 2 uses
  %9 = mul nsw i32 %6, -7567
  %10 = add nsw i32 %8, %9                        ; 2 uses
  %11 = mul nsw i32 %4, 3135
  %12 = add nsw i32 %8, %11                       ; 2 uses
  %13 = load i32, ptr %.1200221, align 4, !tbaa !40 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %.1200221, i64 16
  %15 = load i32, ptr %14, align 4, !tbaa !40     ; 2 uses
  %16 = add nsw i32 %15, %13
  %17 = shl nsw i32 %16, 12                       ; 2 uses
  %18 = sub nsw i32 %13, %15
  %19 = shl nsw i32 %18, 12                       ; 2 uses
  %20 = sub nsw i32 %17, %12
  %21 = sub nsw i32 %19, %10
  %i.dr = getelementptr inbounds nuw i8, ptr %.1200221, i64 28
  %22 = load i32, ptr %i.dr, align 4, !tbaa !40   ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1200221, i64 20
  %23 = load i32, ptr %i.ds, align 4, !tbaa !40   ; 3 uses
  %24 = getelementptr inbounds nuw i8, ptr %.1200221, i64 12
  %i.dt = load i32, ptr %24, align 4, !tbaa !40   ; 3 uses
  %25 = getelementptr inbounds nuw i8, ptr %.1200221, i64 4
  %i.du = load i32, ptr %25, align 4, !tbaa !40   ; 3 uses
  %26 = add nsw i32 %i.dt, %22                    ; 2 uses
  %27 = add nsw i32 %i.du, %23                    ; 2 uses
  %28 = add nsw i32 %i.du, %22
  %29 = add nsw i32 %i.dt, %23
  %30 = add nsw i32 %27, %26
  %31 = mul nsw i32 %30, 4816                     ; 2 uses
  %32 = mul nsw i32 %22, 1223
  %33 = mul nsw i32 %23, 8410
  %34 = mul nsw i32 %i.dt, 12586
  %35 = mul nsw i32 %i.du, 6149
  %36 = mul nsw i32 %28, -3685
  %37 = add nsw i32 %31, %36                      ; 2 uses
  %38 = mul nsw i32 %29, -10497
  %i.dv = add nsw i32 %31, %38                    ; 2 uses
  %39 = mul nsw i32 %26, -8034                    ; 2 uses
  %i.dw = mul nsw i32 %27, -1597                  ; 2 uses
  %40 = add i32 %i.dw, %35
  %41 = add i32 %40, %37                          ; 2 uses
  %42 = add i32 %39, %34
  %43 = add i32 %42, %i.dv                        ; 2 uses
  %44 = add i32 %i.dw, %33
  %45 = add i32 %44, %i.dv                        ; 2 uses
  %46 = add i32 %39, %32
  %47 = add i32 %46, %37                          ; 2 uses
  %48 = add i32 %12, 16842752
  %49 = add i32 %48, %17                          ; 2 uses
  %50 = add i32 %10, 16842752
  %51 = add i32 %50, %19                          ; 2 uses
  %52 = add nsw i32 %21, 16842752                 ; 2 uses
  %53 = add nsw i32 %20, 16842752                 ; 2 uses
  %54 = add nsw i32 %41, %49
  %55 = ashr i32 %54, 17
  %56 = tail call i32 @llvm.smax.i32(i32 %55, i32 0)
  %.06.i = tail call i32 @llvm.umin.i32(i32 %56, i32 255)
  %.0.i = trunc nuw i32 %.06.i to i8
  store i8 %.0.i, ptr %.0201220, align 1, !tbaa !37
  %57 = sub nsw i32 %49, %41
  %58 = ashr i32 %57, 17
  %59 = tail call i32 @llvm.smax.i32(i32 %58, i32 0)
  %.06.i203 = tail call i32 @llvm.umin.i32(i32 %59, i32 255)
  %.0.i204 = trunc nuw i32 %.06.i203 to i8
  %60 = getelementptr inbounds nuw i8, ptr %.0201220, i64 7
  store i8 %.0.i204, ptr %60, align 1, !tbaa !37
  %61 = add nsw i32 %43, %51
  %62 = ashr i32 %61, 17
  %63 = tail call i32 @llvm.smax.i32(i32 %62, i32 0)
  %.06.i205 = tail call i32 @llvm.umin.i32(i32 %63, i32 255)
  %.0.i206 = trunc nuw i32 %.06.i205 to i8
  %64 = getelementptr inbounds nuw i8, ptr %.0201220, i64 1
  store i8 %.0.i206, ptr %64, align 1, !tbaa !37
  %65 = sub nsw i32 %51, %43
  %66 = ashr i32 %65, 17
  %67 = tail call i32 @llvm.smax.i32(i32 %66, i32 0)
  %.06.i207 = tail call i32 @llvm.umin.i32(i32 %67, i32 255)
  %.0.i208 = trunc nuw i32 %.06.i207 to i8
  %68 = getelementptr inbounds nuw i8, ptr %.0201220, i64 6
  store i8 %.0.i208, ptr %68, align 1, !tbaa !37
  %69 = add nsw i32 %45, %52
  %70 = ashr i32 %69, 17
  %71 = tail call i32 @llvm.smax.i32(i32 %70, i32 0)
  %.06.i209 = tail call i32 @llvm.umin.i32(i32 %71, i32 255)
  %.0.i210 = trunc nuw i32 %.06.i209 to i8
  %72 = getelementptr inbounds nuw i8, ptr %.0201220, i64 2
  store i8 %.0.i210, ptr %72, align 1, !tbaa !37
  %73 = sub nsw i32 %52, %45
  %74 = ashr i32 %73, 17
  %75 = tail call i32 @llvm.smax.i32(i32 %74, i32 0)
  %.06.i211 = tail call i32 @llvm.umin.i32(i32 %75, i32 255)
  %.0.i212 = trunc nuw i32 %.06.i211 to i8
  %76 = getelementptr inbounds nuw i8, ptr %.0201220, i64 5
  store i8 %.0.i212, ptr %76, align 1, !tbaa !37
  %77 = add nsw i32 %47, %53
  %78 = ashr i32 %77, 17
  %79 = tail call i32 @llvm.smax.i32(i32 %78, i32 0)
  %.06.i213 = tail call i32 @llvm.umin.i32(i32 %79, i32 255)
  %.0.i214 = trunc nuw i32 %.06.i213 to i8
  %80 = getelementptr inbounds nuw i8, ptr %.0201220, i64 3
  store i8 %.0.i214, ptr %80, align 1, !tbaa !37
  %81 = sub nsw i32 %53, %47
  %82 = ashr i32 %81, 17
  %83 = tail call i32 @llvm.smax.i32(i32 %82, i32 0)
  %.06.i215 = tail call i32 @llvm.umin.i32(i32 %83, i32 255)
  %.0.i216 = trunc nuw i32 %.06.i215 to i8
  %84 = getelementptr inbounds nuw i8, ptr %.0201220, i64 4
  store i8 %.0.i216, ptr %84, align 1, !tbaa !37
  %i.dx = add nuw nsw i32 %.1222, 1               ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.1200221, i64 32
  %i.dz = getelementptr inbounds i8, ptr %.0201220, i64 %i.b
  %exitcond223.not = icmp eq i32 %i.dx, 8
  br i1 %exitcond223.not, label %bb.k, label %bb.j, !llvm.loop !309

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbi__idct_simd(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #23 {
bb.a:
  %i.a = load <8 x i16>, ptr %2, align 16, !tbaa !37 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load <8 x i16>, ptr %i.b, align 16, !tbaa !37 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load <8 x i16>, ptr %i.d, align 16, !tbaa !37 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load <8 x i16>, ptr %i.f, align 16, !tbaa !37 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.i = load <8 x i16>, ptr %i.h, align 16, !tbaa !37 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = load <8 x i16>, ptr %i.j, align 16, !tbaa !37 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.m = load <8 x i16>, ptr %i.l, align 16, !tbaa !37 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.o = load <8 x i16>, ptr %i.n, align 16, !tbaa !37 ; 3 uses
  %i.p = shufflevector <8 x i16> %i.e, <8 x i16> %i.m, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.q = shufflevector <8 x i16> %i.e, <8 x i16> %i.m, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.r = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.p, <8 x i16> <i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350>) ; 2 uses
  %i.s = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.q, <8 x i16> <i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350>) ; 2 uses
  %i.t = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.p, <8 x i16> <i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217>) ; 2 uses
  %i.u = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.q, <8 x i16> <i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217>) ; 2 uses
  %i.v = add <8 x i16> %i.i, %i.a                 ; 2 uses
  %i.w = sub <8 x i16> %i.a, %i.i                 ; 2 uses
  %i.x = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.v, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.y = bitcast <8 x i16> %i.x to <4 x i32>
  %i.z = ashr exact <4 x i32> %i.y, splat (i32 4) ; 2 uses
  %i.aa = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.v, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ab = bitcast <8 x i16> %i.aa to <4 x i32>
  %i.ac = ashr exact <4 x i32> %i.ab, splat (i32 4) ; 2 uses
  %i.ad = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.w, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ae = bitcast <8 x i16> %i.ad to <4 x i32>
  %i.af = ashr exact <4 x i32> %i.ae, splat (i32 4) ; 2 uses
  %i.ag = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.w, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ah = bitcast <8 x i16> %i.ag to <4 x i32>
  %i.ai = ashr exact <4 x i32> %i.ah, splat (i32 4) ; 2 uses
  %i.aj = sub <4 x i32> %i.z, %i.t
  %i.ak = sub <4 x i32> %i.ac, %i.u
  %i.al = sub <4 x i32> %i.af, %i.r
  %i.am = sub <4 x i32> %i.ai, %i.s
  %i.an = shufflevector <8 x i16> %i.o, <8 x i16> %i.g, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ao = shufflevector <8 x i16> %i.o, <8 x i16> %i.g, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ap = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.an, <8 x i16> <i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034>)
  %i.aq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ao, <8 x i16> <i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034>)
  %i.ar = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.an, <8 x i16> <i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552>)
  %i.as = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ao, <8 x i16> <i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552>)
  %i.at = shufflevector <8 x i16> %i.k, <8 x i16> %i.c, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.au = shufflevector <8 x i16> %i.k, <8 x i16> %i.c, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.av = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.at, <8 x i16> <i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597>)
  %i.aw = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.au, <8 x i16> <i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597>)
  %i.ax = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.at, <8 x i16> <i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552>)
  %i.ay = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.au, <8 x i16> <i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552>)
  %i.az = add <8 x i16> %i.o, %i.c                ; 2 uses
  %i.ba = add <8 x i16> %i.k, %i.g                ; 2 uses
  %i.bb = shufflevector <8 x i16> %i.az, <8 x i16> %i.ba, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.bc = shufflevector <8 x i16> %i.az, <8 x i16> %i.ba, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bb, <8 x i16> <i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816>) ; 2 uses
  %i.be = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bc, <8 x i16> <i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816>) ; 2 uses
  %i.bf = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bb, <8 x i16> <i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681>) ; 2 uses
  %i.bg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bc, <8 x i16> <i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681>) ; 2 uses
  %i.bh = add <4 x i32> %i.bd, %i.ap              ; 2 uses
  %i.bi = add <4 x i32> %i.be, %i.aq              ; 2 uses
  %i.bj = add <4 x i32> %i.bf, %i.av              ; 2 uses
  %i.bk = add <4 x i32> %i.bg, %i.aw              ; 2 uses
  %i.bl = add <4 x i32> %i.bf, %i.ar              ; 2 uses
  %i.bm = add <4 x i32> %i.bg, %i.as              ; 2 uses
  %i.bn = add <4 x i32> %i.bd, %i.ax              ; 2 uses
  %i.bo = add <4 x i32> %i.be, %i.ay              ; 2 uses
  %i.bp = or disjoint <4 x i32> %i.z, splat (i32 512)
  %i.bq = add <4 x i32> %i.bp, %i.t               ; 2 uses
  %i.br = or disjoint <4 x i32> %i.ac, splat (i32 512)
  %i.bs = add <4 x i32> %i.br, %i.u               ; 2 uses
  %i.bt = add <4 x i32> %i.bn, %i.bq
  %i.bu = add <4 x i32> %i.bo, %i.bs
  %i.bv = sub <4 x i32> %i.bq, %i.bn
  %i.bw = sub <4 x i32> %i.bs, %i.bo
  %i.bx = ashr <4 x i32> %i.bt, splat (i32 10)
  %i.by = ashr <4 x i32> %i.bu, splat (i32 10)
  %i.bz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bx, <4 x i32> %i.by) ; 2 uses
  %i.ca = ashr <4 x i32> %i.bv, splat (i32 10)
  %i.cb = ashr <4 x i32> %i.bw, splat (i32 10)
  %i.cc = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ca, <4 x i32> %i.cb) ; 2 uses
  %i.cd = add <4 x i32> %i.r, splat (i32 512)
  %i.ce = add <4 x i32> %i.cd, %i.af              ; 2 uses
  %i.cf = or disjoint <4 x i32> %i.ai, splat (i32 512)
  %i.cg = add <4 x i32> %i.cf, %i.s               ; 2 uses
  %i.ch = add <4 x i32> %i.bl, %i.ce
  %i.ci = add <4 x i32> %i.bm, %i.cg
  %i.cj = sub <4 x i32> %i.ce, %i.bl
  %i.ck = sub <4 x i32> %i.cg, %i.bm
  %i.cl = ashr <4 x i32> %i.ch, splat (i32 10)
  %i.cm = ashr <4 x i32> %i.ci, splat (i32 10)
  %i.cn = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cl, <4 x i32> %i.cm) ; 2 uses
  %i.co = ashr <4 x i32> %i.cj, splat (i32 10)
  %i.cp = ashr <4 x i32> %i.ck, splat (i32 10)
  %i.cq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.co, <4 x i32> %i.cp) ; 2 uses
  %i.cr = add <4 x i32> %i.al, splat (i32 512)    ; 2 uses
  %i.cs = add <4 x i32> %i.am, splat (i32 512)    ; 2 uses
  %i.ct = add <4 x i32> %i.bj, %i.cr
  %i.cu = add <4 x i32> %i.bk, %i.cs
  %i.cv = sub <4 x i32> %i.cr, %i.bj
  %i.cw = sub <4 x i32> %i.cs, %i.bk
  %i.cx = ashr <4 x i32> %i.ct, splat (i32 10)
  %i.cy = ashr <4 x i32> %i.cu, splat (i32 10)
  %i.cz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cx, <4 x i32> %i.cy) ; 2 uses
  %i.da = ashr <4 x i32> %i.cv, splat (i32 10)
  %i.db = ashr <4 x i32> %i.cw, splat (i32 10)
  %i.dc = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.da, <4 x i32> %i.db) ; 2 uses
  %i.dd = add <4 x i32> %i.aj, splat (i32 512)    ; 2 uses
  %i.de = add <4 x i32> %i.ak, splat (i32 512)    ; 2 uses
  %i.df = add <4 x i32> %i.bh, %i.dd
  %i.dg = add <4 x i32> %i.bi, %i.de
  %i.dh = sub <4 x i32> %i.dd, %i.bh
  %i.di = sub <4 x i32> %i.de, %i.bi
  %i.dj = ashr <4 x i32> %i.df, splat (i32 10)
  %i.dk = ashr <4 x i32> %i.dg, splat (i32 10)
  %i.dl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dj, <4 x i32> %i.dk) ; 2 uses
  %i.dm = ashr <4 x i32> %i.dh, splat (i32 10)
  %i.dn = ashr <4 x i32> %i.di, splat (i32 10)
  %i.do = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dm, <4 x i32> %i.dn) ; 2 uses
  %i.dp = shufflevector <8 x i16> %i.bz, <8 x i16> %i.do, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.dq = shufflevector <8 x i16> %i.bz, <8 x i16> %i.do, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dr = shufflevector <8 x i16> %i.cn, <8 x i16> %i.dc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ds = shufflevector <8 x i16> %i.cn, <8 x i16> %i.dc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dt = shufflevector <8 x i16> %i.cz, <8 x i16> %i.cq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.du = shufflevector <8 x i16> %i.cz, <8 x i16> %i.cq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dv = shufflevector <8 x i16> %i.dl, <8 x i16> %i.cc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.dw = shufflevector <8 x i16> %i.dl, <8 x i16> %i.cc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dx = shufflevector <8 x i16> %i.dp, <8 x i16> %i.dt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.dy = shufflevector <8 x i16> %i.dp, <8 x i16> %i.dt, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dz = shufflevector <8 x i16> %i.dr, <8 x i16> %i.dv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ea = shufflevector <8 x i16> %i.dr, <8 x i16> %i.dv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.eb = shufflevector <8 x i16> %i.dq, <8 x i16> %i.du, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ec = shufflevector <8 x i16> %i.dq, <8 x i16> %i.du, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ed = shufflevector <8 x i16> %i.ds, <8 x i16> %i.dw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ee = shufflevector <8 x i16> %i.ds, <8 x i16> %i.dw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ef = shufflevector <8 x i16> %i.dx, <8 x i16> %i.dz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.eg = shufflevector <8 x i16> %i.dx, <8 x i16> %i.dz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.eh = shufflevector <8 x i16> %i.dy, <8 x i16> %i.ea, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ei = shufflevector <8 x i16> %i.dy, <8 x i16> %i.ea, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.ej = shufflevector <8 x i16> %i.eb, <8 x i16> %i.ed, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ek = shufflevector <8 x i16> %i.eb, <8 x i16> %i.ed, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.el = shufflevector <8 x i16> %i.ec, <8 x i16> %i.ee, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.em = shufflevector <8 x i16> %i.ec, <8 x i16> %i.ee, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.en = shufflevector <8 x i16> %i.eh, <8 x i16> %i.el, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.eo = shufflevector <8 x i16> %i.eh, <8 x i16> %i.el, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ep = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.en, <8 x i16> <i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350>) ; 2 uses
  %i.eq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.eo, <8 x i16> <i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350>) ; 2 uses
  %i.er = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.en, <8 x i16> <i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217>) ; 2 uses
  %i.es = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.eo, <8 x i16> <i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217>) ; 2 uses
  %i.et = add <8 x i16> %i.ef, %i.ej              ; 2 uses
  %i.eu = sub <8 x i16> %i.ef, %i.ej              ; 2 uses
  %i.ev = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.et, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ew = bitcast <8 x i16> %i.ev to <4 x i32>
  %i.ex = ashr exact <4 x i32> %i.ew, splat (i32 4) ; 2 uses
  %i.ey = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.et, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ez = bitcast <8 x i16> %i.ey to <4 x i32>
  %i.fa = ashr exact <4 x i32> %i.ez, splat (i32 4) ; 2 uses
  %i.fb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fc = bitcast <8 x i16> %i.fb to <4 x i32>
  %i.fd = ashr exact <4 x i32> %i.fc, splat (i32 4) ; 2 uses
  %i.fe = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.eu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ff = bitcast <8 x i16> %i.fe to <4 x i32>
  %i.fg = ashr exact <4 x i32> %i.ff, splat (i32 4) ; 2 uses
  %i.fh = sub <4 x i32> %i.ex, %i.er
  %i.fi = sub <4 x i32> %i.fa, %i.es
  %i.fj = sub <4 x i32> %i.fd, %i.ep
  %i.fk = sub <4 x i32> %i.fg, %i.eq
  %i.fl = shufflevector <8 x i16> %i.em, <8 x i16> %i.ei, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.fm = shufflevector <8 x i16> %i.em, <8 x i16> %i.ei, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fl, <8 x i16> <i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034>)
  %i.fo = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fm, <8 x i16> <i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034>)
  %i.fp = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fl, <8 x i16> <i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552>)
  %i.fq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fm, <8 x i16> <i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552>)
  %i.fr = shufflevector <8 x i16> %i.ek, <8 x i16> %i.eg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.fs = shufflevector <8 x i16> %i.ek, <8 x i16> %i.eg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ft = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fr, <8 x i16> <i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597>)
  %i.fu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fs, <8 x i16> <i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597>)
  %i.fv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fr, <8 x i16> <i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552>)
  %i.fw = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fs, <8 x i16> <i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552>)
  %i.fx = add <8 x i16> %i.eg, %i.em              ; 2 uses
  %i.fy = add <8 x i16> %i.ei, %i.ek              ; 2 uses
  %i.fz = shufflevector <8 x i16> %i.fx, <8 x i16> %i.fy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ga = shufflevector <8 x i16> %i.fx, <8 x i16> %i.fy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fz, <8 x i16> <i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816>) ; 2 uses
  %i.gc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ga, <8 x i16> <i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816>) ; 2 uses
  %i.gd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fz, <8 x i16> <i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681>) ; 2 uses
end_hunk_0
begin_hunk_1_@stbi_info_from_callbacks:bb.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi_is_16_bit_from_memory(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.stbi__png, align 8          ; 7 uses
  %3 = alloca %struct.stbi__context, align 8      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.b, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i32 0, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 208
  store ptr %0, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %0, ptr %i.e, align 8, !tbaa !29
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 216
  store ptr %i.g, ptr %i.h, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.g, ptr %i.i, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr %3, ptr %2, align 8, !tbaa !44
  %i.j = call i32 @stbi__parse_png_file(ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0)
  %.not.i.i.i = icmp ne i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load i32, ptr %i.k, align 8
  %.not1.i.i = icmp eq i32 %i.l, 16
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %.not1.i.i, i1 false
  br i1 %or.cond.i.i, label %stbi__png_is16.exit.i, label %bb.b

stbi__png_is16.exit.i:                            ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %stbi__is_16_main.exit

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !39
  store <2 x ptr> %i.p, ptr %i.o, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.q = call i32 @stbi__psd_is16(ptr noundef nonnull %3)
  %.not3.i = icmp eq i32 %i.q, 0
  br i1 %.not3.i, label %bb.c, label %stbi__is_16_main.exit

bb.c:                                             ; preds = %bb.b
  %i.r = call i32 @stbi__pnm_info(ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null)
  %.not.i = icmp eq i32 %i.r, 16
  %..i = zext i1 %.not.i to i32
  br label %stbi__is_16_main.exit

stbi__is_16_main.exit:                            ; preds = %stbi__png_is16.exit.i, %bb.b, %bb.c
  %.0.i = phi i32 [ 1, %bb.b ], [ 1, %stbi__png_is16.exit.i ], [ %..i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @stbi_is_16_bit_from_callbacks(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.stbi__png, align 8          ; 7 uses
  %3 = alloca %struct.stbi__context, align 8      ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !33
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %1, ptr %i.b, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 3 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !29
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.j = call i32 %i.i(ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef 128) #37, !inline_history !38 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !27
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !27
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !37
  br label %stbi__start_callbacks.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %stbi__start_callbacks.exit

stbi__start_callbacks.exit:                       ; preds = %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %.sink.i.i, ptr %i.w, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 216
  store ptr %.sink.i.i, ptr %i.x, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  store ptr %3, ptr %2, align 8, !tbaa !44
  %i.y = call i32 @stbi__parse_png_file(ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0)
  %.not.i.i.i = icmp ne i32 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load i32, ptr %i.z, align 8
  %.not1.i.i = icmp eq i32 %i.aa, 16
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %.not1.i.i, i1 false
  br i1 %or.cond.i.i, label %stbi__png_is16.exit.i, label %bb.d

stbi__png_is16.exit.i:                            ; preds = %stbi__start_callbacks.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %stbi__is_16_main.exit

bb.d:                                             ; preds = %stbi__start_callbacks.exit
  %i.ab = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %i.ae = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !39
  store <2 x ptr> %i.ae, ptr %i.ad, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.af = call i32 @stbi__psd_is16(ptr noundef nonnull %3)
  %.not3.i = icmp eq i32 %i.af, 0
  br i1 %.not3.i, label %bb.e, label %stbi__is_16_main.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = call i32 @stbi__pnm_info(ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef null)
  %.not.i = icmp eq i32 %i.ag, 16
  %..i = zext i1 %.not.i to i32
  br label %stbi__is_16_main.exit

stbi__is_16_main.exit:                            ; preds = %stbi__png_is16.exit.i, %bb.d, %bb.e
  %.0.i = phi i32 [ 1, %bb.d ], [ 1, %stbi__png_is16.exit.i ], [ %..i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16>, <8 x i16>) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulh.w(<8 x i16>, <8 x i16>) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umax.v16i32(<16 x i32>, <16 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #21

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #35 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #37 = { nounwind }
attributes #38 = { nounwind allocsize(0) }
attributes #39 = { nounwind allocsize(1) }

!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{!0, !66}
!1 = distinct !{!1, !66}
!2 = distinct !{!2, !66}
!3 = distinct !{!3, !66}
!4 = distinct !{!4, !66}
!5 = distinct !{!5, !66}
!6 = distinct !{!6, !66}
!7 = distinct !{!7, !66}
!8 = distinct !{!8, !66}
!9 = distinct !{!9, !66}
!10 = distinct !{!10, !66}
!11 = distinct !{!11, !66}
!12 = distinct !{!12, !66}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"any pointer", !17, i64 0}
!22 = !{!"", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!"p1 omnipotent char", !21, i64 0}
!24 = !{!"", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !22, i64 16, !21, i64 40, !18, i64 48, !18, i64 52, !17, i64 56, !18, i64 184, !23, i64 192, !23, i64 200, !23, i64 208, !23, i64 216}
!25 = !{!24, !21, i64 16}
!26 = !{!24, !18, i64 48}
!27 = !{!24, !18, i64 184}
!28 = !{!24, !23, i64 208}
!29 = !{!24, !23, i64 192}
!30 = !{!24, !23, i64 216}
!31 = !{!24, !23, i64 200}
!32 = !{!21, !21, i64 0}
!33 = !{i64 0, i64 8, !32, i64 8, i64 8, !32, i64 16, i64 8, !32}
!34 = !{!24, !21, i64 40}
!35 = !{!24, !18, i64 52}
!36 = !{ptr @stbi__refill_buffer}
!37 = !{!17, !17, i64 0}
!38 = !{ptr @stbi__start_callbacks, ptr @stbi__refill_buffer}
!39 = !{!23, !23, i64 0}
!40 = !{!18, !18, i64 0}
!41 = !{!"", !18, i64 0, !18, i64 4, !18, i64 8}
!42 = !{!41, !18, i64 0}
!43 = !{!"", !21, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !18, i64 32}
!44 = !{!43, !21, i64 0}
!45 = !{!"", !18, i64 0, !18, i64 4, !23, i64 8, !23, i64 16, !23, i64 24, !18, i64 32, !18, i64 36, !18, i64 40, !18, i64 44, !18, i64 48, !17, i64 52, !17, i64 1076, !17, i64 2100, !23, i64 34872, !18, i64 34880, !18, i64 34884, !18, i64 34888, !18, i64 34892, !18, i64 34896, !18, i64 34900, !18, i64 34904, !18, i64 34908, !18, i64 34912, !18, i64 34916, !18, i64 34920}
!46 = !{!45, !18, i64 0}
!47 = !{!45, !18, i64 4}
!48 = !{!45, !23, i64 8}
!49 = !{!45, !23, i64 24}
!50 = !{!45, !23, i64 16}
!51 = !{ptr @stbi__check_png_header, ptr @stbi__get8, ptr @stbi__refill_buffer}
!52 = !{!"", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28, !18, i64 32}
!53 = !{!52, !18, i64 28}
!54 = !{!24, !18, i64 4}
!55 = !{!24, !18, i64 0}
!56 = !{!52, !18, i64 12}
!57 = !{!52, !18, i64 16}
!58 = !{!52, !18, i64 20}
!59 = !{!52, !18, i64 24}
!60 = !{!52, !18, i64 8}
!61 = !{!52, !18, i64 0}
!62 = !{!52, !18, i64 4}
!63 = !{!52, !18, i64 32}
!64 = !{!24, !18, i64 8}
!65 = !{ptr @stbi__get8, ptr @stbi__refill_buffer}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!24, !21, i64 24}
!68 = !{ptr @stbi__skip}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!"branch_weights", i32 4, i32 28}
!73 = !{!"short", !17, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!24, !21, i64 32}
!76 = !{ptr @stbi__at_eof}
!77 = !{!"", !21, i64 0, !17, i64 8, !17, i64 6728, !17, i64 13448, !17, i64 13960, !18, i64 18056, !18, i64 18060, !18, i64 18064, !18, i64 18068, !18, i64 18072, !18, i64 18076, !17, i64 18080, !18, i64 18464, !18, i64 18468, !17, i64 18472, !18, i64 18476, !18, i64 18480, !18, i64 18484, !18, i64 18488, !18, i64 18492, !18, i64 18496, !18, i64 18500, !18, i64 18504, !18, i64 18508, !18, i64 18512, !18, i64 18516, !17, i64 18520, !18, i64 18536, !18, i64 18540, !21, i64 18544, !21, i64 18552, !21, i64 18560}
!78 = !{!77, !21, i64 0}
!79 = !{!77, !21, i64 18544}
!80 = !{!77, !21, i64 18552}
!81 = !{!77, !21, i64 18560}
!82 = !{!77, !18, i64 18508}
!83 = !{!77, !17, i64 18472}
!84 = !{ptr @stbi__getn}
!85 = !{!"float", !17, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{!"llvm.loop.unswitch.partial.disable"}
!88 = !{!"branch_weights", i32 4, i32 12}
!89 = !{ptr @stbi__start_file, ptr @stbi__start_callbacks, ptr @stbi__refill_buffer}
!90 = !{!"p1 int", !21, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!45, !18, i64 34920}
!93 = !{!"llvm.loop.peeled.count", i32 1}
!94 = !{!77, !18, i64 18476}
!95 = !{!77, !18, i64 18468}
!96 = !{!77, !18, i64 18464}
!97 = !{!"p1 short", !21, i64 0}
!98 = !{!"", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !18, i64 36, !18, i64 40, !23, i64 48, !21, i64 56, !21, i64 64, !23, i64 72, !97, i64 80, !18, i64 88, !18, i64 92}
!99 = !{!98, !18, i64 24}
!100 = !{!77, !18, i64 18488}
!101 = !{!77, !18, i64 18492}
!102 = !{!77, !18, i64 18496}
!103 = !{!77, !18, i64 18484}
!104 = !{!77, !18, i64 18500}
!105 = !{!77, !18, i64 18536}
!106 = !{!77, !18, i64 18540}
!107 = !{!77, !18, i64 18480}
!108 = !{!77, !18, i64 18516}
!109 = !{!98, !18, i64 28}
!110 = !{!98, !18, i64 32}
!111 = !{!98, !18, i64 20}
!112 = !{!98, !18, i64 16}
!113 = !{!98, !18, i64 12}
!114 = !{!98, !23, i64 48}
!115 = !{!98, !18, i64 36}
!116 = !{!77, !18, i64 18068}
!117 = !{!77, !18, i64 18064}
!118 = !{!98, !18, i64 8}
!119 = !{!98, !18, i64 4}
!120 = !{!98, !97, i64 80}
!121 = !{!98, !18, i64 88}
!122 = !{!77, !18, i64 18504}
!123 = !{!98, !18, i64 0}
!124 = !{!98, !21, i64 56}
!125 = !{!98, !21, i64 64}
!126 = !{!98, !23, i64 72}
!127 = !{!77, !18, i64 18512}
!128 = !{!"", !17, i64 0, !17, i64 1024, !17, i64 1056, !17, i64 1124, !17, i64 1156, !17, i64 1444}
!129 = !{!"", !23, i64 0, !23, i64 8, !18, i64 16, !18, i64 20, !18, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !18, i64 56, !128, i64 60, !128, i64 2080}
!130 = !{!129, !23, i64 0}
!131 = !{!129, !23, i64 8}
!132 = !{!129, !18, i64 24}
!133 = !{!129, !18, i64 16}
!134 = !{!129, !18, i64 20}
!135 = !{!129, !23, i64 32}
!136 = !{!129, !18, i64 56}
!137 = !{!129, !23, i64 40}
!138 = !{!129, !23, i64 48}
!139 = !{!43, !23, i64 24}
!140 = !{!24, !18, i64 12}
!141 = !{!43, !18, i64 32}
!142 = !{!43, !23, i64 8}
!143 = !{!43, !23, i64 16}
end_hunk_1
