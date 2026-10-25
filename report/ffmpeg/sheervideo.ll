Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sheervideo?download=true
inline.NumInlined: 401
inline.NumDeleted: 14
begin_hunk_0_@llvm.lifetime.start.p0

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @av_fourcc_make_string(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @decode_rgb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 42 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.val.i.pre.i = load i64, ptr %2, align 8, !tbaa !38
  %i.f = add i32 %i.e, -1
  br label %bits_read_bit_be.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %.not.i.i = icmp ult ptr %i.h, %i.j
  br i1 %.not.i.i, label %bits_priv_refill_64_be.exit.i, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bits_read_bit_be.exit, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph204, label %.loopexit196

.lr.ph204:                                        ; preds = %.critedge.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.g

bits_priv_refill_64_be.exit.i:                    ; preds = %bb.b
  %i.r = load i64, ptr %i.h, align 1, !tbaa !29
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.t, ptr %i.g, align 8, !tbaa !36
  br label %bits_read_bit_be.exit

bits_read_bit_be.exit:                            ; preds = %bits_priv_refill_64_be.exit.i, %._crit_edge.i
  %i.u = phi i32 [ %i.f, %._crit_edge.i ], [ 63, %bits_priv_refill_64_be.exit.i ]
  %.val.i.i = phi i64 [ %.val.i.pre.i, %._crit_edge.i ], [ %i.s, %bits_priv_refill_64_be.exit.i ] ; 2 uses
  %i.v = shl i64 %.val.i.i, 1
  store i64 %i.v, ptr %2, align 8, !tbaa !38
  store i32 %i.u, ptr %i.d, align 8, !tbaa !37
  %i.w = icmp sgt i64 %.val.i.i, -1
  br i1 %i.w, label %.critedge.preheader, label %.preheader197

.preheader197:                                    ; preds = %bits_read_bit_be.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !32   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %.loopexit196

.lr.ph:                                           ; preds = %.preheader197
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bits_read_nz_be.exit116
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bits_read_nz_be.exit116 ] ; 2 uses
  %i.ac = load i32, ptr %i.d, align 8, !tbaa !37  ; 4 uses
  %i.ad = icmp ult i32 %i.ac, 8
  br i1 %i.ad, label %bb.d, label %.bits_read_nz_be.exit_crit_edge

.bits_read_nz_be.exit_crit_edge:                  ; preds = %bb.c
  %.val.i.i107.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 3 uses
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !35
  %.not.i.i108 = icmp ult ptr %i.ae, %i.af
  %.val.i.i107.pre231 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i108, label %bits_priv_refill_32_be.exit.i, label %bits_read_nz_be.exit

bits_priv_refill_32_be.exit.i:                    ; preds = %bb.d
  %i.ag = load i32, ptr %i.ae, align 1, !tbaa !29
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %i.ag)
  %i.ai = zext i32 %i.ah to i64
  %i.aj = sub nuw nsw i32 32, %i.ac
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 %i.ai, %i.ak
  %i.am = or i64 %i.al, %.val.i.i107.pre231
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store ptr %i.an, ptr %i.aa, align 8, !tbaa !36
  %i.ao = or disjoint i32 %i.ac, 32
  br label %bits_read_nz_be.exit

bits_read_nz_be.exit:                             ; preds = %.bits_read_nz_be.exit_crit_edge, %bb.d, %bits_priv_refill_32_be.exit.i
  %.val.i.i107 = phi i64 [ %i.am, %bits_priv_refill_32_be.exit.i ], [ %.val.i.i107.pre, %.bits_read_nz_be.exit_crit_edge ], [ %.val.i.i107.pre231, %bb.d ] ; 2 uses
  %i.ap = phi i32 [ %i.ao, %bits_priv_refill_32_be.exit.i ], [ %i.ac, %.bits_read_nz_be.exit_crit_edge ], [ 8, %bb.d ]
  %i.aq = lshr i64 %.val.i.i107, 56
  %i.ar = shl i64 %.val.i.i107, 8
  store i64 %i.ar, ptr %2, align 8, !tbaa !38
  %i.as = add i32 %i.ap, -8
  store i32 %i.as, ptr %i.d, align 8, !tbaa !37
  %i.at = trunc nuw i64 %i.aq to i8
  %i.au = shl nuw nsw i64 %indvars.iv, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.au ; 3 uses
  store i8 %i.at, ptr %i.av, align 1, !tbaa !29
  %i.aw = load i32, ptr %i.d, align 8, !tbaa !37  ; 4 uses
  %i.ax = icmp ult i32 %i.aw, 8
  br i1 %i.ax, label %bb.e, label %bits_read_nz_be.exit.bits_read_nz_be.exit112_crit_edge

bits_read_nz_be.exit.bits_read_nz_be.exit112_crit_edge: ; preds = %bits_read_nz_be.exit
  %.val.i.i109.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit112

bb.e:                                             ; preds = %bits_read_nz_be.exit
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 3 uses
  %i.az = load ptr, ptr %i.ab, align 8, !tbaa !35
  %.not.i.i110 = icmp ult ptr %i.ay, %i.az
  %.val.i.i109.pre233 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i110, label %bits_priv_refill_32_be.exit.i111, label %bits_read_nz_be.exit112

bits_priv_refill_32_be.exit.i111:                 ; preds = %bb.e
  %i.ba = load i32, ptr %i.ay, align 1, !tbaa !29
  %i.bb = tail call i32 @llvm.bswap.i32(i32 %i.ba)
  %i.bc = zext i32 %i.bb to i64
  %i.bd = sub nuw nsw i32 32, %i.aw
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl nuw i64 %i.bc, %i.be
  %i.bg = or i64 %i.bf, %.val.i.i109.pre233
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store ptr %i.bh, ptr %i.aa, align 8, !tbaa !36
  %i.bi = or disjoint i32 %i.aw, 32
  br label %bits_read_nz_be.exit112

bits_read_nz_be.exit112:                          ; preds = %bits_read_nz_be.exit.bits_read_nz_be.exit112_crit_edge, %bb.e, %bits_priv_refill_32_be.exit.i111
  %.val.i.i109 = phi i64 [ %i.bg, %bits_priv_refill_32_be.exit.i111 ], [ %.val.i.i109.pre, %bits_read_nz_be.exit.bits_read_nz_be.exit112_crit_edge ], [ %.val.i.i109.pre233, %bb.e ] ; 2 uses
  %i.bj = phi i32 [ %i.bi, %bits_priv_refill_32_be.exit.i111 ], [ %i.aw, %bits_read_nz_be.exit.bits_read_nz_be.exit112_crit_edge ], [ 8, %bb.e ]
  %i.bk = lshr i64 %.val.i.i109, 56
  %i.bl = shl i64 %.val.i.i109, 8
  store i64 %i.bl, ptr %2, align 8, !tbaa !38
  %i.bm = add i32 %i.bj, -8
  store i32 %i.bm, ptr %i.d, align 8, !tbaa !37
  %i.bn = trunc nuw i64 %i.bk to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !29
  %i.bp = load i32, ptr %i.d, align 8, !tbaa !37  ; 4 uses
  %i.bq = icmp ult i32 %i.bp, 8
  br i1 %i.bq, label %bb.f, label %bits_read_nz_be.exit112.bits_read_nz_be.exit116_crit_edge

bits_read_nz_be.exit112.bits_read_nz_be.exit116_crit_edge: ; preds = %bits_read_nz_be.exit112
  %.val.i.i113.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit116

bb.f:                                             ; preds = %bits_read_nz_be.exit112
  %i.br = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 3 uses
  %i.bs = load ptr, ptr %i.ab, align 8, !tbaa !35
  %.not.i.i114 = icmp ult ptr %i.br, %i.bs
  %.val.i.i113.pre235 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i114, label %bits_priv_refill_32_be.exit.i115, label %bits_read_nz_be.exit116

bits_priv_refill_32_be.exit.i115:                 ; preds = %bb.f
  %i.bt = load i32, ptr %i.br, align 1, !tbaa !29
  %i.bu = tail call i32 @llvm.bswap.i32(i32 %i.bt)
  %i.bv = zext i32 %i.bu to i64
  %i.bw = sub nuw nsw i32 32, %i.bp
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = shl nuw i64 %i.bv, %i.bx
  %i.bz = or i64 %i.by, %.val.i.i113.pre235
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store ptr %i.ca, ptr %i.aa, align 8, !tbaa !36
  %i.cb = or disjoint i32 %i.bp, 32
  br label %bits_read_nz_be.exit116

bits_read_nz_be.exit116:                          ; preds = %bits_read_nz_be.exit112.bits_read_nz_be.exit116_crit_edge, %bb.f, %bits_priv_refill_32_be.exit.i115
  %.val.i.i113 = phi i64 [ %i.bz, %bits_priv_refill_32_be.exit.i115 ], [ %.val.i.i113.pre, %bits_read_nz_be.exit112.bits_read_nz_be.exit116_crit_edge ], [ %.val.i.i113.pre235, %bb.f ] ; 2 uses
  %i.cc = phi i32 [ %i.cb, %bits_priv_refill_32_be.exit.i115 ], [ %i.bp, %bits_read_nz_be.exit112.bits_read_nz_be.exit116_crit_edge ], [ 8, %bb.f ]
  %i.cd = lshr i64 %.val.i.i113, 56
  %i.ce = shl i64 %.val.i.i113, 8
  store i64 %i.ce, ptr %2, align 8, !tbaa !38
  %i.cf = add i32 %i.cc, -8
  store i32 %i.cf, ptr %i.d, align 8, !tbaa !37
  %i.cg = trunc nuw i64 %i.cd to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ci = load i32, ptr %i.x, align 8, !tbaa !32  ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp slt i64 %indvars.iv.next, %i.cj
  br i1 %i.ck, label %bb.c, label %.loopexit196, !llvm.loop !55

bb.g:                                             ; preds = %.lr.ph204, %bits_read_vlc_be.exit139
  %indvars.iv222 = phi i64 [ 0, %.lr.ph204 ], [ %indvars.iv.next223, %bits_read_vlc_be.exit139 ] ; 2 uses
  %.sroa.7.0202 = phi i32 [ -128, %.lr.ph204 ], [ %i.jg, %bits_read_vlc_be.exit139 ]
  %.sroa.023.0201 = phi i32 [ -128, %.lr.ph204 ], [ %i.ix, %bits_read_vlc_be.exit139 ]
  %.sroa.524.0200 = phi i32 [ -128, %.lr.ph204 ], [ %i.jc, %bits_read_vlc_be.exit139 ]
  %i.cl = load ptr, ptr %i.n, align 8, !tbaa !44  ; 2 uses
  %i.cm = load i32, ptr %i.d, align 8, !tbaa !37  ; 5 uses
  %i.cn = icmp ult i32 %i.cm, 12
  br i1 %i.cn, label %bb.h, label %.bits_priv_refill_32_be.exit_crit_edge.i.i.i

.bits_priv_refill_32_be.exit_crit_edge.i.i.i:     ; preds = %bb.g
  %.val.pre.i.i.i = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_peek_be.exit.i

bb.h:                                             ; preds = %bb.g
  %i.co = load ptr, ptr %i.o, align 8, !tbaa !36  ; 3 uses
  %i.cp = load ptr, ptr %i.p, align 8, !tbaa !35
  %.not.i.i.i.i = icmp ult ptr %i.co, %i.cp
  %.val.pre4.i.i.i = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.i, label %bits_peek_be.exit.i

bb.i:                                             ; preds = %bb.h
  %i.cq = load i32, ptr %i.co, align 1, !tbaa !29
  %i.cr = tail call i32 @llvm.bswap.i32(i32 %i.cq)
  %i.cs = zext i32 %i.cr to i64
  %i.ct = sub nuw nsw i32 32, %i.cm
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = shl nuw i64 %i.cs, %i.cu
  %i.cw = or i64 %i.cv, %.val.pre4.i.i.i          ; 2 uses
  store i64 %i.cw, ptr %2, align 8, !tbaa !38
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store ptr %i.cx, ptr %i.o, align 8, !tbaa !36
  %i.cy = or disjoint i32 %i.cm, 32               ; 2 uses
  store i32 %i.cy, ptr %i.d, align 8, !tbaa !37
  br label %bits_peek_be.exit.i

bits_peek_be.exit.i:                              ; preds = %bb.i, %bb.h, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i
  %i.cz = phi i32 [ %i.cm, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.cy, %bb.i ], [ %i.cm, %bb.h ] ; 4 uses
  %i.da = phi i64 [ %.val.pre.i.i.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.cw, %bb.i ], [ %.val.pre4.i.i.i, %bb.h ] ; 3 uses
  %i.db = lshr i64 %i.da, 52
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.db ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !29
  %i.de = sext i16 %i.dd to i32                   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !29 ; 2 uses
  %i.dh = sext i16 %i.dg to i32                   ; 3 uses
  %i.di = icmp slt i16 %i.dg, 0
  br i1 %i.di, label %bb.j, label %bits_read_vlc_be.exit

bb.j:                                             ; preds = %bits_peek_be.exit.i
  %i.dj = shl i64 %i.da, 12                       ; 4 uses
  store i64 %i.dj, ptr %2, align 8, !tbaa !38
  %i.dk = add i32 %i.cz, -12                      ; 4 uses
  store i32 %i.dk, ptr %i.d, align 8, !tbaa !37
  %i.dl = sub nsw i32 0, %i.dh
  %i.dm = icmp ult i32 %i.dk, %i.dl
  br i1 %i.dm, label %bb.k, label %bits_priv_set_idx_be.exit.i

bb.k:                                             ; preds = %bb.j
  %i.dn = load ptr, ptr %i.o, align 8, !tbaa !36  ; 3 uses
  %i.do = load ptr, ptr %i.p, align 8, !tbaa !35
  %.not.i.i.i.i.i = icmp ult ptr %i.dn, %i.do
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bits_priv_set_idx_be.exit.i

bb.l:                                             ; preds = %bb.k
  %i.dp = load i32, ptr %i.dn, align 1, !tbaa !29
  %i.dq = tail call i32 @llvm.bswap.i32(i32 %i.dp)
  %i.dr = zext i32 %i.dq to i64
  %i.ds = sub nsw i32 44, %i.cz
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = shl i64 %i.dr, %i.dt
  %i.dv = or i64 %i.du, %i.dj                     ; 2 uses
  store i64 %i.dv, ptr %2, align 8, !tbaa !38
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store ptr %i.dw, ptr %i.o, align 8, !tbaa !36
  %i.dx = add nuw nsw i32 %i.cz, 20               ; 2 uses
  store i32 %i.dx, ptr %i.d, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i

bits_priv_set_idx_be.exit.i:                      ; preds = %bb.l, %bb.k, %bb.j
  %i.dy = phi i32 [ %i.dk, %bb.k ], [ %i.dx, %bb.l ], [ %i.dk, %bb.j ]
  %.val.i.i.i.i = phi i64 [ %i.dj, %bb.k ], [ %i.dv, %bb.l ], [ %i.dj, %bb.j ] ; 2 uses
  %i.dz = add nsw i32 %i.dh, 64
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = lshr i64 %.val.i.i.i.i, %i.ea
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = add i32 %i.ec, %i.de
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !29
  %i.ei = sext i16 %i.eh to i32
  %i.ej = load i16, ptr %i.ef, align 2, !tbaa !29
  %i.ek = zext i16 %i.ej to i32
  br label %bits_read_vlc_be.exit

bits_read_vlc_be.exit:                            ; preds = %bits_peek_be.exit.i, %bits_priv_set_idx_be.exit.i
  %i.el = phi i32 [ %i.dy, %bits_priv_set_idx_be.exit.i ], [ %i.cz, %bits_peek_be.exit.i ]
  %i.em = phi i64 [ %.val.i.i.i.i, %bits_priv_set_idx_be.exit.i ], [ %i.da, %bits_peek_be.exit.i ]
  %.023.i = phi i32 [ %i.ei, %bits_priv_set_idx_be.exit.i ], [ %i.dh, %bits_peek_be.exit.i ] ; 2 uses
  %.0.i117 = phi i32 [ %i.ek, %bits_priv_set_idx_be.exit.i ], [ %i.de, %bits_peek_be.exit.i ] ; 2 uses
  %i.en = zext nneg i32 %.023.i to i64
  %i.eo = shl i64 %i.em, %i.en                    ; 4 uses
  store i64 %i.eo, ptr %2, align 8, !tbaa !38
  %i.ep = sub i32 %i.el, %.023.i                  ; 6 uses
  store i32 %i.ep, ptr %i.d, align 8, !tbaa !37
  %i.eq = load ptr, ptr %i.q, align 8, !tbaa !44  ; 4 uses
  %i.er = icmp ult i32 %i.ep, 12
  br i1 %i.er, label %bb.m, label %bits_peek_be.exit.i120

bb.m:                                             ; preds = %bits_read_vlc_be.exit
  %i.es = load ptr, ptr %i.o, align 8, !tbaa !36  ; 3 uses
  %i.et = load ptr, ptr %i.p, align 8, !tbaa !35
  %.not.i.i.i.i126 = icmp ult ptr %i.es, %i.et
  br i1 %.not.i.i.i.i126, label %bb.n, label %bits_peek_be.exit.i120

bb.n:                                             ; preds = %bb.m
  %i.eu = load i32, ptr %i.es, align 1, !tbaa !29
  %i.ev = tail call i32 @llvm.bswap.i32(i32 %i.eu)
  %i.ew = zext i32 %i.ev to i64
  %i.ex = sub nuw nsw i32 32, %i.ep
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = shl nuw i64 %i.ew, %i.ey
  %i.fa = or i64 %i.ez, %i.eo                     ; 2 uses
  store i64 %i.fa, ptr %2, align 8, !tbaa !38
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store ptr %i.fb, ptr %i.o, align 8, !tbaa !36
  %i.fc = or disjoint i32 %i.ep, 32               ; 2 uses
  store i32 %i.fc, ptr %i.d, align 8, !tbaa !37
  br label %bits_peek_be.exit.i120

bits_peek_be.exit.i120:                           ; preds = %bits_read_vlc_be.exit, %bb.n, %bb.m
  %i.fd = phi i32 [ %i.ep, %bb.m ], [ %i.fc, %bb.n ], [ %i.ep, %bits_read_vlc_be.exit ] ; 4 uses
  %i.fe = phi i64 [ %i.eo, %bb.m ], [ %i.fa, %bb.n ], [ %i.eo, %bits_read_vlc_be.exit ] ; 3 uses
  %i.ff = lshr i64 %i.fe, 52
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.ff ; 2 uses
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !29
  %i.fi = sext i16 %i.fh to i32                   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !29 ; 2 uses
  %i.fl = sext i16 %i.fk to i32                   ; 3 uses
  %i.fm = icmp slt i16 %i.fk, 0
  br i1 %i.fm, label %bb.o, label %bits_read_vlc_be.exit128

bb.o:                                             ; preds = %bits_peek_be.exit.i120
  %i.fn = shl i64 %i.fe, 12                       ; 4 uses
  store i64 %i.fn, ptr %2, align 8, !tbaa !38
  %i.fo = add i32 %i.fd, -12                      ; 4 uses
  store i32 %i.fo, ptr %i.d, align 8, !tbaa !37
  %i.fp = sub nsw i32 0, %i.fl
  %i.fq = icmp ult i32 %i.fo, %i.fp
  br i1 %i.fq, label %bb.p, label %bits_priv_set_idx_be.exit.i123

bb.p:                                             ; preds = %bb.o
  %i.fr = load ptr, ptr %i.o, align 8, !tbaa !36  ; 3 uses
  %i.fs = load ptr, ptr %i.p, align 8, !tbaa !35
  %.not.i.i.i.i.i125 = icmp ult ptr %i.fr, %i.fs
  br i1 %.not.i.i.i.i.i125, label %bb.q, label %bits_priv_set_idx_be.exit.i123

bb.q:                                             ; preds = %bb.p
  %i.ft = load i32, ptr %i.fr, align 1, !tbaa !29
  %i.fu = tail call i32 @llvm.bswap.i32(i32 %i.ft)
  %i.fv = zext i32 %i.fu to i64
  %i.fw = sub nsw i32 44, %i.fd
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = shl i64 %i.fv, %i.fx
  %i.fz = or i64 %i.fy, %i.fn                     ; 2 uses
  store i64 %i.fz, ptr %2, align 8, !tbaa !38
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store ptr %i.ga, ptr %i.o, align 8, !tbaa !36
  %i.gb = add nuw nsw i32 %i.fd, 20               ; 2 uses
  store i32 %i.gb, ptr %i.d, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i123

bits_priv_set_idx_be.exit.i123:                   ; preds = %bb.q, %bb.p, %bb.o
  %i.gc = phi i32 [ %i.fo, %bb.p ], [ %i.gb, %bb.q ], [ %i.fo, %bb.o ]
  %.val.i.i.i.i124 = phi i64 [ %i.fn, %bb.p ], [ %i.fz, %bb.q ], [ %i.fn, %bb.o ] ; 2 uses
  %i.gd = add nsw i32 %i.fl, 64
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = lshr i64 %.val.i.i.i.i124, %i.ge
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = add i32 %i.gg, %i.fi
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.gi ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 2
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !29
  %i.gm = sext i16 %i.gl to i32
  %i.gn = load i16, ptr %i.gj, align 2, !tbaa !29
  %i.go = zext i16 %i.gn to i32
  br label %bits_read_vlc_be.exit128

bits_read_vlc_be.exit128:                         ; preds = %bits_peek_be.exit.i120, %bits_priv_set_idx_be.exit.i123
  %i.gp = phi i32 [ %i.gc, %bits_priv_set_idx_be.exit.i123 ], [ %i.fd, %bits_peek_be.exit.i120 ]
  %i.gq = phi i64 [ %.val.i.i.i.i124, %bits_priv_set_idx_be.exit.i123 ], [ %i.fe, %bits_peek_be.exit.i120 ]
  %.023.i121 = phi i32 [ %i.gm, %bits_priv_set_idx_be.exit.i123 ], [ %i.fl, %bits_peek_be.exit.i120 ] ; 2 uses
  %.0.i122 = phi i32 [ %i.go, %bits_priv_set_idx_be.exit.i123 ], [ %i.fi, %bits_peek_be.exit.i120 ]
  %i.gr = zext nneg i32 %.023.i121 to i64
  %i.gs = shl i64 %i.gq, %i.gr                    ; 4 uses
  store i64 %i.gs, ptr %2, align 8, !tbaa !38
  %i.gt = sub i32 %i.gp, %.023.i121               ; 6 uses
  store i32 %i.gt, ptr %i.d, align 8, !tbaa !37
  %i.gu = icmp ult i32 %i.gt, 12
  br i1 %i.gu, label %bb.r, label %bits_peek_be.exit.i131

bb.r:                                             ; preds = %bits_read_vlc_be.exit128
end_hunk_0
begin_hunk_1_@decode_rgb:bb.a
  %i.vy = load i32, ptr %i.jo, align 4, !tbaa !33
  %i.vz = icmp slt i32 %i.vx, %i.vy
  br i1 %i.vz, label %bb.w, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %.loopexit, %.loopexit196
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @decode_rgbi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 42 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.val.i.pre.i = load i64, ptr %2, align 8, !tbaa !38
  %i.f = add i32 %i.e, -1
  br label %bits_read_bit_be.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %.not.i.i = icmp ult ptr %i.h, %i.j
  br i1 %.not.i.i, label %bits_priv_refill_64_be.exit.i, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bits_read_bit_be.exit, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !32   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph184, label %.loopexit176

.lr.ph184:                                        ; preds = %.critedge.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.g

bits_priv_refill_64_be.exit.i:                    ; preds = %bb.b
  %i.r = load i64, ptr %i.h, align 1, !tbaa !29
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.t, ptr %i.g, align 8, !tbaa !36
  br label %bits_read_bit_be.exit

bits_read_bit_be.exit:                            ; preds = %bits_priv_refill_64_be.exit.i, %._crit_edge.i
  %i.u = phi i32 [ %i.f, %._crit_edge.i ], [ 63, %bits_priv_refill_64_be.exit.i ]
  %.val.i.i = phi i64 [ %.val.i.pre.i, %._crit_edge.i ], [ %i.s, %bits_priv_refill_64_be.exit.i ] ; 2 uses
  %i.v = shl i64 %.val.i.i, 1
  store i64 %i.v, ptr %2, align 8, !tbaa !38
  store i32 %i.u, ptr %i.d, align 8, !tbaa !37
  %i.w = icmp sgt i64 %.val.i.i, -1
  br i1 %i.w, label %.critedge.preheader, label %.preheader177

.preheader177:                                    ; preds = %bits_read_bit_be.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !32   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %.loopexit176

.lr.ph:                                           ; preds = %.preheader177
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bits_read_nz_be.exit96
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bits_read_nz_be.exit96 ] ; 2 uses
  %i.ac = load i32, ptr %i.d, align 8, !tbaa !37  ; 4 uses
  %i.ad = icmp ult i32 %i.ac, 8
  br i1 %i.ad, label %bb.d, label %.bits_read_nz_be.exit_crit_edge

.bits_read_nz_be.exit_crit_edge:                  ; preds = %bb.c
  %.val.i.i87.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 3 uses
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !35
  %.not.i.i88 = icmp ult ptr %i.ae, %i.af
  %.val.i.i87.pre208 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i88, label %bits_priv_refill_32_be.exit.i, label %bits_read_nz_be.exit

bits_priv_refill_32_be.exit.i:                    ; preds = %bb.d
  %i.ag = load i32, ptr %i.ae, align 1, !tbaa !29
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %i.ag)
  %i.ai = zext i32 %i.ah to i64
  %i.aj = sub nuw nsw i32 32, %i.ac
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 %i.ai, %i.ak
  %i.am = or i64 %i.al, %.val.i.i87.pre208
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store ptr %i.an, ptr %i.aa, align 8, !tbaa !36
  %i.ao = or disjoint i32 %i.ac, 32
  br label %bits_read_nz_be.exit

bits_read_nz_be.exit:                             ; preds = %.bits_read_nz_be.exit_crit_edge, %bb.d, %bits_priv_refill_32_be.exit.i
  %.val.i.i87 = phi i64 [ %i.am, %bits_priv_refill_32_be.exit.i ], [ %.val.i.i87.pre, %.bits_read_nz_be.exit_crit_edge ], [ %.val.i.i87.pre208, %bb.d ] ; 2 uses
  %i.ap = phi i32 [ %i.ao, %bits_priv_refill_32_be.exit.i ], [ %i.ac, %.bits_read_nz_be.exit_crit_edge ], [ 8, %bb.d ]
  %i.aq = lshr i64 %.val.i.i87, 56
  %i.ar = shl i64 %.val.i.i87, 8
  store i64 %i.ar, ptr %2, align 8, !tbaa !38
  %i.as = add i32 %i.ap, -8
  store i32 %i.as, ptr %i.d, align 8, !tbaa !37
  %i.at = trunc nuw i64 %i.aq to i8
  %i.au = shl nuw nsw i64 %indvars.iv, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.au ; 3 uses
  store i8 %i.at, ptr %i.av, align 1, !tbaa !29
  %i.aw = load i32, ptr %i.d, align 8, !tbaa !37  ; 4 uses
  %i.ax = icmp ult i32 %i.aw, 8
  br i1 %i.ax, label %bb.e, label %bits_read_nz_be.exit.bits_read_nz_be.exit92_crit_edge

bits_read_nz_be.exit.bits_read_nz_be.exit92_crit_edge: ; preds = %bits_read_nz_be.exit
  %.val.i.i89.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit92

bb.e:                                             ; preds = %bits_read_nz_be.exit
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 3 uses
  %i.az = load ptr, ptr %i.ab, align 8, !tbaa !35
  %.not.i.i90 = icmp ult ptr %i.ay, %i.az
  %.val.i.i89.pre210 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i90, label %bits_priv_refill_32_be.exit.i91, label %bits_read_nz_be.exit92

bits_priv_refill_32_be.exit.i91:                  ; preds = %bb.e
  %i.ba = load i32, ptr %i.ay, align 1, !tbaa !29
  %i.bb = tail call i32 @llvm.bswap.i32(i32 %i.ba)
  %i.bc = zext i32 %i.bb to i64
  %i.bd = sub nuw nsw i32 32, %i.aw
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl nuw i64 %i.bc, %i.be
  %i.bg = or i64 %i.bf, %.val.i.i89.pre210
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store ptr %i.bh, ptr %i.aa, align 8, !tbaa !36
  %i.bi = or disjoint i32 %i.aw, 32
  br label %bits_read_nz_be.exit92

bits_read_nz_be.exit92:                           ; preds = %bits_read_nz_be.exit.bits_read_nz_be.exit92_crit_edge, %bb.e, %bits_priv_refill_32_be.exit.i91
  %.val.i.i89 = phi i64 [ %i.bg, %bits_priv_refill_32_be.exit.i91 ], [ %.val.i.i89.pre, %bits_read_nz_be.exit.bits_read_nz_be.exit92_crit_edge ], [ %.val.i.i89.pre210, %bb.e ] ; 2 uses
  %i.bj = phi i32 [ %i.bi, %bits_priv_refill_32_be.exit.i91 ], [ %i.aw, %bits_read_nz_be.exit.bits_read_nz_be.exit92_crit_edge ], [ 8, %bb.e ]
  %i.bk = lshr i64 %.val.i.i89, 56
  %i.bl = shl i64 %.val.i.i89, 8
  store i64 %i.bl, ptr %2, align 8, !tbaa !38
  %i.bm = add i32 %i.bj, -8
  store i32 %i.bm, ptr %i.d, align 8, !tbaa !37
  %i.bn = trunc nuw i64 %i.bk to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !29
  %i.bp = load i32, ptr %i.d, align 8, !tbaa !37  ; 4 uses
  %i.bq = icmp ult i32 %i.bp, 8
  br i1 %i.bq, label %bb.f, label %bits_read_nz_be.exit92.bits_read_nz_be.exit96_crit_edge

bits_read_nz_be.exit92.bits_read_nz_be.exit96_crit_edge: ; preds = %bits_read_nz_be.exit92
  %.val.i.i93.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit96

bb.f:                                             ; preds = %bits_read_nz_be.exit92
  %i.br = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 3 uses
  %i.bs = load ptr, ptr %i.ab, align 8, !tbaa !35
  %.not.i.i94 = icmp ult ptr %i.br, %i.bs
  %.val.i.i93.pre212 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i94, label %bits_priv_refill_32_be.exit.i95, label %bits_read_nz_be.exit96

bits_priv_refill_32_be.exit.i95:                  ; preds = %bb.f
  %i.bt = load i32, ptr %i.br, align 1, !tbaa !29
  %i.bu = tail call i32 @llvm.bswap.i32(i32 %i.bt)
  %i.bv = zext i32 %i.bu to i64
  %i.bw = sub nuw nsw i32 32, %i.bp
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = shl nuw i64 %i.bv, %i.bx
  %i.bz = or i64 %i.by, %.val.i.i93.pre212
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store ptr %i.ca, ptr %i.aa, align 8, !tbaa !36
  %i.cb = or disjoint i32 %i.bp, 32
  br label %bits_read_nz_be.exit96

bits_read_nz_be.exit96:                           ; preds = %bits_read_nz_be.exit92.bits_read_nz_be.exit96_crit_edge, %bb.f, %bits_priv_refill_32_be.exit.i95
  %.val.i.i93 = phi i64 [ %i.bz, %bits_priv_refill_32_be.exit.i95 ], [ %.val.i.i93.pre, %bits_read_nz_be.exit92.bits_read_nz_be.exit96_crit_edge ], [ %.val.i.i93.pre212, %bb.f ] ; 2 uses
  %i.cc = phi i32 [ %i.cb, %bits_priv_refill_32_be.exit.i95 ], [ %i.bp, %bits_read_nz_be.exit92.bits_read_nz_be.exit96_crit_edge ], [ 8, %bb.f ]
  %i.cd = lshr i64 %.val.i.i93, 56
  %i.ce = shl i64 %.val.i.i93, 8
  store i64 %i.ce, ptr %2, align 8, !tbaa !38
  %i.cf = add i32 %i.cc, -8
  store i32 %i.cf, ptr %i.d, align 8, !tbaa !37
  %i.cg = trunc nuw i64 %i.cd to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ci = load i32, ptr %i.x, align 8, !tbaa !32  ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp slt i64 %indvars.iv.next, %i.cj
  br i1 %i.ck, label %bb.c, label %.loopexit176, !llvm.loop !60

bb.g:                                             ; preds = %.lr.ph184, %bits_read_vlc_be.exit119
  %indvars.iv199 = phi i64 [ 0, %.lr.ph184 ], [ %indvars.iv.next200, %bits_read_vlc_be.exit119 ] ; 2 uses
  %.sroa.012.0182 = phi i32 [ -128, %.lr.ph184 ], [ %i.ix, %bits_read_vlc_be.exit119 ]
  %.sroa.513.0181 = phi i32 [ -128, %.lr.ph184 ], [ %i.jc, %bits_read_vlc_be.exit119 ]
  %.sroa.7.0180 = phi i32 [ -128, %.lr.ph184 ], [ %i.jg, %bits_read_vlc_be.exit119 ]
  %i.cl = load ptr, ptr %i.n, align 8, !tbaa !44  ; 2 uses
  %i.cm = load i32, ptr %i.d, align 8, !tbaa !37  ; 5 uses
  %i.cn = icmp ult i32 %i.cm, 12
  br i1 %i.cn, label %bb.h, label %.bits_priv_refill_32_be.exit_crit_edge.i.i.i

.bits_priv_refill_32_be.exit_crit_edge.i.i.i:     ; preds = %bb.g
  %.val.pre.i.i.i = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_peek_be.exit.i

bb.h:                                             ; preds = %bb.g
  %i.co = load ptr, ptr %i.o, align 8, !tbaa !36  ; 3 uses
  %i.cp = load ptr, ptr %i.p, align 8, !tbaa !35
  %.not.i.i.i.i = icmp ult ptr %i.co, %i.cp
  %.val.pre4.i.i.i = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.i, label %bits_peek_be.exit.i

bb.i:                                             ; preds = %bb.h
  %i.cq = load i32, ptr %i.co, align 1, !tbaa !29
  %i.cr = tail call i32 @llvm.bswap.i32(i32 %i.cq)
  %i.cs = zext i32 %i.cr to i64
  %i.ct = sub nuw nsw i32 32, %i.cm
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = shl nuw i64 %i.cs, %i.cu
  %i.cw = or i64 %i.cv, %.val.pre4.i.i.i          ; 2 uses
  store i64 %i.cw, ptr %2, align 8, !tbaa !38
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store ptr %i.cx, ptr %i.o, align 8, !tbaa !36
  %i.cy = or disjoint i32 %i.cm, 32               ; 2 uses
  store i32 %i.cy, ptr %i.d, align 8, !tbaa !37
  br label %bits_peek_be.exit.i

bits_peek_be.exit.i:                              ; preds = %bb.i, %bb.h, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i
  %i.cz = phi i32 [ %i.cm, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.cy, %bb.i ], [ %i.cm, %bb.h ] ; 4 uses
  %i.da = phi i64 [ %.val.pre.i.i.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.cw, %bb.i ], [ %.val.pre4.i.i.i, %bb.h ] ; 3 uses
  %i.db = lshr i64 %i.da, 52
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.db ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !29
  %i.de = sext i16 %i.dd to i32                   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !29 ; 2 uses
  %i.dh = sext i16 %i.dg to i32                   ; 3 uses
  %i.di = icmp slt i16 %i.dg, 0
  br i1 %i.di, label %bb.j, label %bits_read_vlc_be.exit

bb.j:                                             ; preds = %bits_peek_be.exit.i
  %i.dj = shl i64 %i.da, 12                       ; 4 uses
  store i64 %i.dj, ptr %2, align 8, !tbaa !38
  %i.dk = add i32 %i.cz, -12                      ; 4 uses
  store i32 %i.dk, ptr %i.d, align 8, !tbaa !37
  %i.dl = sub nsw i32 0, %i.dh
  %i.dm = icmp ult i32 %i.dk, %i.dl
  br i1 %i.dm, label %bb.k, label %bits_priv_set_idx_be.exit.i

bb.k:                                             ; preds = %bb.j
  %i.dn = load ptr, ptr %i.o, align 8, !tbaa !36  ; 3 uses
  %i.do = load ptr, ptr %i.p, align 8, !tbaa !35
  %.not.i.i.i.i.i = icmp ult ptr %i.dn, %i.do
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bits_priv_set_idx_be.exit.i

bb.l:                                             ; preds = %bb.k
  %i.dp = load i32, ptr %i.dn, align 1, !tbaa !29
  %i.dq = tail call i32 @llvm.bswap.i32(i32 %i.dp)
  %i.dr = zext i32 %i.dq to i64
  %i.ds = sub nsw i32 44, %i.cz
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = shl i64 %i.dr, %i.dt
  %i.dv = or i64 %i.du, %i.dj                     ; 2 uses
  store i64 %i.dv, ptr %2, align 8, !tbaa !38
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store ptr %i.dw, ptr %i.o, align 8, !tbaa !36
  %i.dx = add nuw nsw i32 %i.cz, 20               ; 2 uses
  store i32 %i.dx, ptr %i.d, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i

bits_priv_set_idx_be.exit.i:                      ; preds = %bb.l, %bb.k, %bb.j
  %i.dy = phi i32 [ %i.dk, %bb.k ], [ %i.dx, %bb.l ], [ %i.dk, %bb.j ]
  %.val.i.i.i.i = phi i64 [ %i.dj, %bb.k ], [ %i.dv, %bb.l ], [ %i.dj, %bb.j ] ; 2 uses
  %i.dz = add nsw i32 %i.dh, 64
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = lshr i64 %.val.i.i.i.i, %i.ea
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = add i32 %i.ec, %i.de
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !29
  %i.ei = sext i16 %i.eh to i32
  %i.ej = load i16, ptr %i.ef, align 2, !tbaa !29
  %i.ek = zext i16 %i.ej to i32
  br label %bits_read_vlc_be.exit

bits_read_vlc_be.exit:                            ; preds = %bits_peek_be.exit.i, %bits_priv_set_idx_be.exit.i
  %i.el = phi i32 [ %i.dy, %bits_priv_set_idx_be.exit.i ], [ %i.cz, %bits_peek_be.exit.i ]
  %i.em = phi i64 [ %.val.i.i.i.i, %bits_priv_set_idx_be.exit.i ], [ %i.da, %bits_peek_be.exit.i ]
  %.023.i = phi i32 [ %i.ei, %bits_priv_set_idx_be.exit.i ], [ %i.dh, %bits_peek_be.exit.i ] ; 2 uses
  %.0.i97 = phi i32 [ %i.ek, %bits_priv_set_idx_be.exit.i ], [ %i.de, %bits_peek_be.exit.i ] ; 2 uses
  %i.en = zext nneg i32 %.023.i to i64
  %i.eo = shl i64 %i.em, %i.en                    ; 4 uses
  store i64 %i.eo, ptr %2, align 8, !tbaa !38
  %i.ep = sub i32 %i.el, %.023.i                  ; 6 uses
  store i32 %i.ep, ptr %i.d, align 8, !tbaa !37
  %i.eq = load ptr, ptr %i.q, align 8, !tbaa !44  ; 4 uses
  %i.er = icmp ult i32 %i.ep, 12
  br i1 %i.er, label %bb.m, label %bits_peek_be.exit.i100

bb.m:                                             ; preds = %bits_read_vlc_be.exit
  %i.es = load ptr, ptr %i.o, align 8, !tbaa !36  ; 3 uses
  %i.et = load ptr, ptr %i.p, align 8, !tbaa !35
  %.not.i.i.i.i106 = icmp ult ptr %i.es, %i.et
  br i1 %.not.i.i.i.i106, label %bb.n, label %bits_peek_be.exit.i100

bb.n:                                             ; preds = %bb.m
  %i.eu = load i32, ptr %i.es, align 1, !tbaa !29
  %i.ev = tail call i32 @llvm.bswap.i32(i32 %i.eu)
  %i.ew = zext i32 %i.ev to i64
  %i.ex = sub nuw nsw i32 32, %i.ep
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = shl nuw i64 %i.ew, %i.ey
  %i.fa = or i64 %i.ez, %i.eo                     ; 2 uses
  store i64 %i.fa, ptr %2, align 8, !tbaa !38
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store ptr %i.fb, ptr %i.o, align 8, !tbaa !36
  %i.fc = or disjoint i32 %i.ep, 32               ; 2 uses
  store i32 %i.fc, ptr %i.d, align 8, !tbaa !37
  br label %bits_peek_be.exit.i100

bits_peek_be.exit.i100:                           ; preds = %bits_read_vlc_be.exit, %bb.n, %bb.m
  %i.fd = phi i32 [ %i.ep, %bb.m ], [ %i.fc, %bb.n ], [ %i.ep, %bits_read_vlc_be.exit ] ; 4 uses
  %i.fe = phi i64 [ %i.eo, %bb.m ], [ %i.fa, %bb.n ], [ %i.eo, %bits_read_vlc_be.exit ] ; 3 uses
  %i.ff = lshr i64 %i.fe, 52
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.ff ; 2 uses
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !29
  %i.fi = sext i16 %i.fh to i32                   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !29 ; 2 uses
  %i.fl = sext i16 %i.fk to i32                   ; 3 uses
  %i.fm = icmp slt i16 %i.fk, 0
  br i1 %i.fm, label %bb.o, label %bits_read_vlc_be.exit108

bb.o:                                             ; preds = %bits_peek_be.exit.i100
  %i.fn = shl i64 %i.fe, 12                       ; 4 uses
  store i64 %i.fn, ptr %2, align 8, !tbaa !38
  %i.fo = add i32 %i.fd, -12                      ; 4 uses
  store i32 %i.fo, ptr %i.d, align 8, !tbaa !37
  %i.fp = sub nsw i32 0, %i.fl
  %i.fq = icmp ult i32 %i.fo, %i.fp
  br i1 %i.fq, label %bb.p, label %bits_priv_set_idx_be.exit.i103

bb.p:                                             ; preds = %bb.o
  %i.fr = load ptr, ptr %i.o, align 8, !tbaa !36  ; 3 uses
  %i.fs = load ptr, ptr %i.p, align 8, !tbaa !35
  %.not.i.i.i.i.i105 = icmp ult ptr %i.fr, %i.fs
  br i1 %.not.i.i.i.i.i105, label %bb.q, label %bits_priv_set_idx_be.exit.i103

bb.q:                                             ; preds = %bb.p
  %i.ft = load i32, ptr %i.fr, align 1, !tbaa !29
  %i.fu = tail call i32 @llvm.bswap.i32(i32 %i.ft)
  %i.fv = zext i32 %i.fu to i64
  %i.fw = sub nsw i32 44, %i.fd
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = shl i64 %i.fv, %i.fx
  %i.fz = or i64 %i.fy, %i.fn                     ; 2 uses
  store i64 %i.fz, ptr %2, align 8, !tbaa !38
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store ptr %i.ga, ptr %i.o, align 8, !tbaa !36
  %i.gb = add nuw nsw i32 %i.fd, 20               ; 2 uses
  store i32 %i.gb, ptr %i.d, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i103

bits_priv_set_idx_be.exit.i103:                   ; preds = %bb.q, %bb.p, %bb.o
  %i.gc = phi i32 [ %i.fo, %bb.p ], [ %i.gb, %bb.q ], [ %i.fo, %bb.o ]
  %.val.i.i.i.i104 = phi i64 [ %i.fn, %bb.p ], [ %i.fz, %bb.q ], [ %i.fn, %bb.o ] ; 2 uses
  %i.gd = add nsw i32 %i.fl, 64
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = lshr i64 %.val.i.i.i.i104, %i.ge
  %i.gg = trunc i64 %i.gf to i32
  %i.gh = add i32 %i.gg, %i.fi
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.gi ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 2
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !29
  %i.gm = sext i16 %i.gl to i32
  %i.gn = load i16, ptr %i.gj, align 2, !tbaa !29
  %i.go = zext i16 %i.gn to i32
  br label %bits_read_vlc_be.exit108

bits_read_vlc_be.exit108:                         ; preds = %bits_peek_be.exit.i100, %bits_priv_set_idx_be.exit.i103
  %i.gp = phi i32 [ %i.gc, %bits_priv_set_idx_be.exit.i103 ], [ %i.fd, %bits_peek_be.exit.i100 ]
  %i.gq = phi i64 [ %.val.i.i.i.i104, %bits_priv_set_idx_be.exit.i103 ], [ %i.fe, %bits_peek_be.exit.i100 ]
  %.023.i101 = phi i32 [ %i.gm, %bits_priv_set_idx_be.exit.i103 ], [ %i.fl, %bits_peek_be.exit.i100 ] ; 2 uses
  %.0.i102 = phi i32 [ %i.go, %bits_priv_set_idx_be.exit.i103 ], [ %i.fi, %bits_peek_be.exit.i100 ]
  %i.gr = zext nneg i32 %.023.i101 to i64
  %i.gs = shl i64 %i.gq, %i.gr                    ; 4 uses
  store i64 %i.gs, ptr %2, align 8, !tbaa !38
  %i.gt = sub i32 %i.gp, %.023.i101               ; 6 uses
  store i32 %i.gt, ptr %i.d, align 8, !tbaa !37
  %i.gu = icmp ult i32 %i.gt, 12
  br i1 %i.gu, label %bb.r, label %bits_peek_be.exit.i111

bb.r:                                             ; preds = %bits_read_vlc_be.exit108
end_hunk_1
begin_hunk_2_@decode_argb:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.h

bits_priv_refill_64_be.exit.i:                    ; preds = %bb.b
  %i.r = load i64, ptr %i.h, align 1, !tbaa !29
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.t, ptr %i.g, align 8, !tbaa !36
  br label %bits_read_bit_be.exit

bits_read_bit_be.exit:                            ; preds = %bits_priv_refill_64_be.exit.i, %._crit_edge.i
  %i.u = phi i32 [ %i.f, %._crit_edge.i ], [ 63, %bits_priv_refill_64_be.exit.i ]
  %.val.i.i = phi i64 [ %.val.i.pre.i, %._crit_edge.i ], [ %i.s, %bits_priv_refill_64_be.exit.i ] ; 2 uses
  %i.v = shl i64 %.val.i.i, 1
  store i64 %i.v, ptr %2, align 8, !tbaa !38
  store i32 %i.u, ptr %i.d, align 8, !tbaa !37
  %i.w = icmp sgt i64 %.val.i.i, -1
  br i1 %i.w, label %.critedge.preheader, label %.preheader249

.preheader249:                                    ; preds = %bits_read_bit_be.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !32   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %.loopexit248

.lr.ph:                                           ; preds = %.preheader249
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bits_read_nz_be.exit142
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bits_read_nz_be.exit142 ] ; 2 uses
  %i.ac = load i32, ptr %i.d, align 8, !tbaa !37  ; 4 uses
  %i.ad = icmp ult i32 %i.ac, 8
  br i1 %i.ad, label %bb.d, label %.bits_read_nz_be.exit_crit_edge

.bits_read_nz_be.exit_crit_edge:                  ; preds = %bb.c
  %.val.i.i129.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 3 uses
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !35
  %.not.i.i130 = icmp ult ptr %i.ae, %i.af
  %.val.i.i129.pre286 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i130, label %bits_priv_refill_32_be.exit.i, label %bits_read_nz_be.exit

bits_priv_refill_32_be.exit.i:                    ; preds = %bb.d
  %i.ag = load i32, ptr %i.ae, align 1, !tbaa !29
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %i.ag)
  %i.ai = zext i32 %i.ah to i64
  %i.aj = sub nuw nsw i32 32, %i.ac
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 %i.ai, %i.ak
  %i.am = or i64 %i.al, %.val.i.i129.pre286
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store ptr %i.an, ptr %i.aa, align 8, !tbaa !36
  %i.ao = or disjoint i32 %i.ac, 32
  br label %bits_read_nz_be.exit

bits_read_nz_be.exit:                             ; preds = %.bits_read_nz_be.exit_crit_edge, %bb.d, %bits_priv_refill_32_be.exit.i
  %.val.i.i129 = phi i64 [ %i.am, %bits_priv_refill_32_be.exit.i ], [ %.val.i.i129.pre, %.bits_read_nz_be.exit_crit_edge ], [ %.val.i.i129.pre286, %bb.d ] ; 2 uses
  %i.ap = phi i32 [ %i.ao, %bits_priv_refill_32_be.exit.i ], [ %i.ac, %.bits_read_nz_be.exit_crit_edge ], [ 8, %bb.d ]
  %i.aq = lshr i64 %.val.i.i129, 56
  %i.ar = shl i64 %.val.i.i129, 8
  store i64 %i.ar, ptr %2, align 8, !tbaa !38
  %i.as = add i32 %i.ap, -8
  store i32 %i.as, ptr %i.d, align 8, !tbaa !37
  %i.at = trunc nuw i64 %i.aq to i8
  %i.au = shl nuw nsw i64 %indvars.iv, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.au ; 4 uses
  store i8 %i.at, ptr %i.av, align 1, !tbaa !29
  %i.aw = load i32, ptr %i.d, align 8, !tbaa !37  ; 4 uses
  %i.ax = icmp ult i32 %i.aw, 8
  br i1 %i.ax, label %bb.e, label %bits_read_nz_be.exit.bits_read_nz_be.exit134_crit_edge

bits_read_nz_be.exit.bits_read_nz_be.exit134_crit_edge: ; preds = %bits_read_nz_be.exit
  %.val.i.i131.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit134

bb.e:                                             ; preds = %bits_read_nz_be.exit
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 3 uses
  %i.az = load ptr, ptr %i.ab, align 8, !tbaa !35
  %.not.i.i132 = icmp ult ptr %i.ay, %i.az
  %.val.i.i131.pre288 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i132, label %bits_priv_refill_32_be.exit.i133, label %bits_read_nz_be.exit134

bits_priv_refill_32_be.exit.i133:                 ; preds = %bb.e
  %i.ba = load i32, ptr %i.ay, align 1, !tbaa !29
  %i.bb = tail call i32 @llvm.bswap.i32(i32 %i.ba)
  %i.bc = zext i32 %i.bb to i64
  %i.bd = sub nuw nsw i32 32, %i.aw
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl nuw i64 %i.bc, %i.be
  %i.bg = or i64 %i.bf, %.val.i.i131.pre288
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store ptr %i.bh, ptr %i.aa, align 8, !tbaa !36
  %i.bi = or disjoint i32 %i.aw, 32
  br label %bits_read_nz_be.exit134

bits_read_nz_be.exit134:                          ; preds = %bits_read_nz_be.exit.bits_read_nz_be.exit134_crit_edge, %bb.e, %bits_priv_refill_32_be.exit.i133
  %.val.i.i131 = phi i64 [ %i.bg, %bits_priv_refill_32_be.exit.i133 ], [ %.val.i.i131.pre, %bits_read_nz_be.exit.bits_read_nz_be.exit134_crit_edge ], [ %.val.i.i131.pre288, %bb.e ] ; 2 uses
  %i.bj = phi i32 [ %i.bi, %bits_priv_refill_32_be.exit.i133 ], [ %i.aw, %bits_read_nz_be.exit.bits_read_nz_be.exit134_crit_edge ], [ 8, %bb.e ]
  %i.bk = lshr i64 %.val.i.i131, 56
  %i.bl = shl i64 %.val.i.i131, 8
  store i64 %i.bl, ptr %2, align 8, !tbaa !38
  %i.bm = add i32 %i.bj, -8
  store i32 %i.bm, ptr %i.d, align 8, !tbaa !37
  %i.bn = trunc nuw i64 %i.bk to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !29
  %i.bp = load i32, ptr %i.d, align 8, !tbaa !37  ; 4 uses
  %i.bq = icmp ult i32 %i.bp, 8
  br i1 %i.bq, label %bb.f, label %bits_read_nz_be.exit134.bits_read_nz_be.exit138_crit_edge

bits_read_nz_be.exit134.bits_read_nz_be.exit138_crit_edge: ; preds = %bits_read_nz_be.exit134
  %.val.i.i135.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit138

bb.f:                                             ; preds = %bits_read_nz_be.exit134
  %i.br = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 3 uses
  %i.bs = load ptr, ptr %i.ab, align 8, !tbaa !35
  %.not.i.i136 = icmp ult ptr %i.br, %i.bs
  %.val.i.i135.pre290 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i136, label %bits_priv_refill_32_be.exit.i137, label %bits_read_nz_be.exit138

bits_priv_refill_32_be.exit.i137:                 ; preds = %bb.f
  %i.bt = load i32, ptr %i.br, align 1, !tbaa !29
  %i.bu = tail call i32 @llvm.bswap.i32(i32 %i.bt)
  %i.bv = zext i32 %i.bu to i64
  %i.bw = sub nuw nsw i32 32, %i.bp
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = shl nuw i64 %i.bv, %i.bx
  %i.bz = or i64 %i.by, %.val.i.i135.pre290
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store ptr %i.ca, ptr %i.aa, align 8, !tbaa !36
  %i.cb = or disjoint i32 %i.bp, 32
  br label %bits_read_nz_be.exit138

bits_read_nz_be.exit138:                          ; preds = %bits_read_nz_be.exit134.bits_read_nz_be.exit138_crit_edge, %bb.f, %bits_priv_refill_32_be.exit.i137
  %.val.i.i135 = phi i64 [ %i.bz, %bits_priv_refill_32_be.exit.i137 ], [ %.val.i.i135.pre, %bits_read_nz_be.exit134.bits_read_nz_be.exit138_crit_edge ], [ %.val.i.i135.pre290, %bb.f ] ; 2 uses
  %i.cc = phi i32 [ %i.cb, %bits_priv_refill_32_be.exit.i137 ], [ %i.bp, %bits_read_nz_be.exit134.bits_read_nz_be.exit138_crit_edge ], [ 8, %bb.f ]
  %i.cd = lshr i64 %.val.i.i135, 56
  %i.ce = shl i64 %.val.i.i135, 8
  store i64 %i.ce, ptr %2, align 8, !tbaa !38
  %i.cf = add i32 %i.cc, -8
  store i32 %i.cf, ptr %i.d, align 8, !tbaa !37
  %i.cg = trunc nuw i64 %i.cd to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !29
  %i.ci = load i32, ptr %i.d, align 8, !tbaa !37  ; 4 uses
  %i.cj = icmp ult i32 %i.ci, 8
  br i1 %i.cj, label %bb.g, label %bits_read_nz_be.exit138.bits_read_nz_be.exit142_crit_edge

bits_read_nz_be.exit138.bits_read_nz_be.exit142_crit_edge: ; preds = %bits_read_nz_be.exit138
  %.val.i.i139.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit142

bb.g:                                             ; preds = %bits_read_nz_be.exit138
  %i.ck = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 3 uses
  %i.cl = load ptr, ptr %i.ab, align 8, !tbaa !35
  %.not.i.i140 = icmp ult ptr %i.ck, %i.cl
  %.val.i.i139.pre292 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i140, label %bits_priv_refill_32_be.exit.i141, label %bits_read_nz_be.exit142

bits_priv_refill_32_be.exit.i141:                 ; preds = %bb.g
  %i.cm = load i32, ptr %i.ck, align 1, !tbaa !29
  %i.cn = tail call i32 @llvm.bswap.i32(i32 %i.cm)
  %i.co = zext i32 %i.cn to i64
  %i.cp = sub nuw nsw i32 32, %i.ci
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = shl nuw i64 %i.co, %i.cq
  %i.cs = or i64 %i.cr, %.val.i.i139.pre292
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store ptr %i.ct, ptr %i.aa, align 8, !tbaa !36
  %i.cu = or disjoint i32 %i.ci, 32
  br label %bits_read_nz_be.exit142

bits_read_nz_be.exit142:                          ; preds = %bits_read_nz_be.exit138.bits_read_nz_be.exit142_crit_edge, %bb.g, %bits_priv_refill_32_be.exit.i141
  %.val.i.i139 = phi i64 [ %i.cs, %bits_priv_refill_32_be.exit.i141 ], [ %.val.i.i139.pre, %bits_read_nz_be.exit138.bits_read_nz_be.exit142_crit_edge ], [ %.val.i.i139.pre292, %bb.g ] ; 2 uses
  %i.cv = phi i32 [ %i.cu, %bits_priv_refill_32_be.exit.i141 ], [ %i.ci, %bits_read_nz_be.exit138.bits_read_nz_be.exit142_crit_edge ], [ 8, %bb.g ]
  %i.cw = lshr i64 %.val.i.i139, 56
  %i.cx = shl i64 %.val.i.i139, 8
  store i64 %i.cx, ptr %2, align 8, !tbaa !38
  %i.cy = add i32 %i.cv, -8
  store i32 %i.cy, ptr %i.d, align 8, !tbaa !37
  %i.cz = trunc nuw i64 %i.cw to i8
  %i.da = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = load i32, ptr %i.x, align 8, !tbaa !32  ; 2 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp slt i64 %indvars.iv.next, %i.dc
  br i1 %i.dd, label %bb.c, label %.loopexit248, !llvm.loop !81

bb.h:                                             ; preds = %.lr.ph257, %bits_read_vlc_be.exit176
  %indvars.iv277 = phi i64 [ 0, %.lr.ph257 ], [ %indvars.iv.next278, %bits_read_vlc_be.exit176 ] ; 2 uses
  %.sroa.026.0255 = phi i32 [ -128, %.lr.ph257 ], [ %i.lt, %bits_read_vlc_be.exit176 ]
  %.sroa.527.0254 = phi i32 [ -128, %.lr.ph257 ], [ %i.lx, %bits_read_vlc_be.exit176 ]
  %.sroa.7.0253 = phi i32 [ -128, %.lr.ph257 ], [ %i.mb, %bits_read_vlc_be.exit176 ]
  %.sroa.9.0252 = phi i32 [ -128, %.lr.ph257 ], [ %i.mf, %bits_read_vlc_be.exit176 ]
  %i.de = load ptr, ptr %i.n, align 8, !tbaa !44  ; 6 uses
  %i.df = load i32, ptr %i.d, align 8, !tbaa !37  ; 5 uses
  %i.dg = icmp ult i32 %i.df, 12
  br i1 %i.dg, label %bb.i, label %.bits_priv_refill_32_be.exit_crit_edge.i.i.i

.bits_priv_refill_32_be.exit_crit_edge.i.i.i:     ; preds = %bb.h
  %.val.pre.i.i.i = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_peek_be.exit.i

bb.i:                                             ; preds = %bb.h
  %i.dh = load ptr, ptr %i.o, align 8, !tbaa !36  ; 3 uses
  %i.di = load ptr, ptr %i.p, align 8, !tbaa !35
  %.not.i.i.i.i = icmp ult ptr %i.dh, %i.di
  %.val.pre4.i.i.i = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.j, label %bits_peek_be.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dj = load i32, ptr %i.dh, align 1, !tbaa !29
  %i.dk = tail call i32 @llvm.bswap.i32(i32 %i.dj)
  %i.dl = zext i32 %i.dk to i64
  %i.dm = sub nuw nsw i32 32, %i.df
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = shl nuw i64 %i.dl, %i.dn
  %i.dp = or i64 %i.do, %.val.pre4.i.i.i          ; 2 uses
  store i64 %i.dp, ptr %2, align 8, !tbaa !38
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store ptr %i.dq, ptr %i.o, align 8, !tbaa !36
  %i.dr = or disjoint i32 %i.df, 32               ; 2 uses
  store i32 %i.dr, ptr %i.d, align 8, !tbaa !37
  br label %bits_peek_be.exit.i

bits_peek_be.exit.i:                              ; preds = %bb.j, %bb.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i
  %i.ds = phi i32 [ %i.df, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.dr, %bb.j ], [ %i.df, %bb.i ] ; 4 uses
  %i.dt = phi i64 [ %.val.pre.i.i.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.dp, %bb.j ], [ %.val.pre4.i.i.i, %bb.i ] ; 3 uses
  %i.du = lshr i64 %i.dt, 52
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.du ; 2 uses
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !29
  %i.dx = sext i16 %i.dw to i32                   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !29 ; 2 uses
  %i.ea = sext i16 %i.dz to i32                   ; 3 uses
  %i.eb = icmp slt i16 %i.dz, 0
  br i1 %i.eb, label %bb.k, label %bits_read_vlc_be.exit

bb.k:                                             ; preds = %bits_peek_be.exit.i
  %i.ec = shl i64 %i.dt, 12                       ; 4 uses
  store i64 %i.ec, ptr %2, align 8, !tbaa !38
  %i.ed = add i32 %i.ds, -12                      ; 4 uses
  store i32 %i.ed, ptr %i.d, align 8, !tbaa !37
  %i.ee = sub nsw i32 0, %i.ea
  %i.ef = icmp ult i32 %i.ed, %i.ee
  br i1 %i.ef, label %bb.l, label %bits_priv_set_idx_be.exit.i

bb.l:                                             ; preds = %bb.k
  %i.eg = load ptr, ptr %i.o, align 8, !tbaa !36  ; 3 uses
  %i.eh = load ptr, ptr %i.p, align 8, !tbaa !35
  %.not.i.i.i.i.i = icmp ult ptr %i.eg, %i.eh
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bits_priv_set_idx_be.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ei = load i32, ptr %i.eg, align 1, !tbaa !29
  %i.ej = tail call i32 @llvm.bswap.i32(i32 %i.ei)
  %i.ek = zext i32 %i.ej to i64
  %i.el = sub nsw i32 44, %i.ds
  %i.em = zext nneg i32 %i.el to i64
  %i.en = shl i64 %i.ek, %i.em
  %i.eo = or i64 %i.en, %i.ec                     ; 2 uses
  store i64 %i.eo, ptr %2, align 8, !tbaa !38
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store ptr %i.ep, ptr %i.o, align 8, !tbaa !36
  %i.eq = add nuw nsw i32 %i.ds, 20               ; 2 uses
  store i32 %i.eq, ptr %i.d, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i

bits_priv_set_idx_be.exit.i:                      ; preds = %bb.m, %bb.l, %bb.k
  %i.er = phi i32 [ %i.ed, %bb.l ], [ %i.eq, %bb.m ], [ %i.ed, %bb.k ]
  %.val.i.i.i.i = phi i64 [ %i.ec, %bb.l ], [ %i.eo, %bb.m ], [ %i.ec, %bb.k ] ; 2 uses
  %i.es = add nsw i32 %i.ea, 64
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = lshr i64 %.val.i.i.i.i, %i.et
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = add i32 %i.ev, %i.dx
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.ex ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !29
  %i.fb = sext i16 %i.fa to i32
  %i.fc = load i16, ptr %i.ey, align 2, !tbaa !29
  %i.fd = zext i16 %i.fc to i32
  br label %bits_read_vlc_be.exit

bits_read_vlc_be.exit:                            ; preds = %bits_peek_be.exit.i, %bits_priv_set_idx_be.exit.i
  %i.fe = phi i32 [ %i.er, %bits_priv_set_idx_be.exit.i ], [ %i.ds, %bits_peek_be.exit.i ]
  %i.ff = phi i64 [ %.val.i.i.i.i, %bits_priv_set_idx_be.exit.i ], [ %i.dt, %bits_peek_be.exit.i ]
  %.023.i = phi i32 [ %i.fb, %bits_priv_set_idx_be.exit.i ], [ %i.ea, %bits_peek_be.exit.i ] ; 2 uses
  %.0.i143 = phi i32 [ %i.fd, %bits_priv_set_idx_be.exit.i ], [ %i.dx, %bits_peek_be.exit.i ]
  %i.fg = zext nneg i32 %.023.i to i64
  %i.fh = shl i64 %i.ff, %i.fg                    ; 4 uses
  store i64 %i.fh, ptr %2, align 8, !tbaa !38
  %i.fi = sub i32 %i.fe, %.023.i                  ; 6 uses
  store i32 %i.fi, ptr %i.d, align 8, !tbaa !37
  %i.fj = load ptr, ptr %i.q, align 8, !tbaa !44  ; 2 uses
  %i.fk = icmp ult i32 %i.fi, 12
  br i1 %i.fk, label %bb.n, label %bits_peek_be.exit.i146

bb.n:                                             ; preds = %bits_read_vlc_be.exit
  %i.fl = load ptr, ptr %i.o, align 8, !tbaa !36  ; 3 uses
  %i.fm = load ptr, ptr %i.p, align 8, !tbaa !35
  %.not.i.i.i.i152 = icmp ult ptr %i.fl, %i.fm
  br i1 %.not.i.i.i.i152, label %bb.o, label %bits_peek_be.exit.i146

bb.o:                                             ; preds = %bb.n
  %i.fn = load i32, ptr %i.fl, align 1, !tbaa !29
  %i.fo = tail call i32 @llvm.bswap.i32(i32 %i.fn)
  %i.fp = zext i32 %i.fo to i64
  %i.fq = sub nuw nsw i32 32, %i.fi
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = shl nuw i64 %i.fp, %i.fr
  %i.ft = or i64 %i.fs, %i.fh                     ; 2 uses
  store i64 %i.ft, ptr %2, align 8, !tbaa !38
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store ptr %i.fu, ptr %i.o, align 8, !tbaa !36
  %i.fv = or disjoint i32 %i.fi, 32               ; 2 uses
  store i32 %i.fv, ptr %i.d, align 8, !tbaa !37
  br label %bits_peek_be.exit.i146

bits_peek_be.exit.i146:                           ; preds = %bits_read_vlc_be.exit, %bb.o, %bb.n
  %i.fw = phi i32 [ %i.fi, %bb.n ], [ %i.fv, %bb.o ], [ %i.fi, %bits_read_vlc_be.exit ] ; 4 uses
  %i.fx = phi i64 [ %i.fh, %bb.n ], [ %i.ft, %bb.o ], [ %i.fh, %bits_read_vlc_be.exit ] ; 3 uses
  %i.fy = lshr i64 %i.fx, 52
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fy ; 2 uses
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !29
  %i.gb = sext i16 %i.ga to i32                   ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !29 ; 2 uses
  %i.ge = sext i16 %i.gd to i32                   ; 3 uses
  %i.gf = icmp slt i16 %i.gd, 0
  br i1 %i.gf, label %bb.p, label %bits_read_vlc_be.exit154

bb.p:                                             ; preds = %bits_peek_be.exit.i146
  %i.gg = shl i64 %i.fx, 12                       ; 4 uses
  store i64 %i.gg, ptr %2, align 8, !tbaa !38
  %i.gh = add i32 %i.fw, -12                      ; 4 uses
  store i32 %i.gh, ptr %i.d, align 8, !tbaa !37
  %i.gi = sub nsw i32 0, %i.ge
  %i.gj = icmp ult i32 %i.gh, %i.gi
  br i1 %i.gj, label %bb.q, label %bits_priv_set_idx_be.exit.i149

bb.q:                                             ; preds = %bb.p
  %i.gk = load ptr, ptr %i.o, align 8, !tbaa !36  ; 3 uses
  %i.gl = load ptr, ptr %i.p, align 8, !tbaa !35
  %.not.i.i.i.i.i151 = icmp ult ptr %i.gk, %i.gl
  br i1 %.not.i.i.i.i.i151, label %bb.r, label %bits_priv_set_idx_be.exit.i149

bb.r:                                             ; preds = %bb.q
  %i.gm = load i32, ptr %i.gk, align 1, !tbaa !29
  %i.gn = tail call i32 @llvm.bswap.i32(i32 %i.gm)
  %i.go = zext i32 %i.gn to i64
  %i.gp = sub nsw i32 44, %i.fw
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = shl i64 %i.go, %i.gq
  %i.gs = or i64 %i.gr, %i.gg                     ; 2 uses
  store i64 %i.gs, ptr %2, align 8, !tbaa !38
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  store ptr %i.gt, ptr %i.o, align 8, !tbaa !36
  %i.gu = add nuw nsw i32 %i.fw, 20               ; 2 uses
  store i32 %i.gu, ptr %i.d, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i149

bits_priv_set_idx_be.exit.i149:                   ; preds = %bb.r, %bb.q, %bb.p
  %i.gv = phi i32 [ %i.gh, %bb.q ], [ %i.gu, %bb.r ], [ %i.gh, %bb.p ]
  %.val.i.i.i.i150 = phi i64 [ %i.gg, %bb.q ], [ %i.gs, %bb.r ], [ %i.gg, %bb.p ] ; 2 uses
  %i.gw = add nsw i32 %i.ge, 64
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = lshr i64 %.val.i.i.i.i150, %i.gx
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = add i32 %i.gz, %i.gb
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 2
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !29
  %i.hf = sext i16 %i.he to i32
  %i.hg = load i16, ptr %i.hc, align 2, !tbaa !29
  %i.hh = zext i16 %i.hg to i32
  br label %bits_read_vlc_be.exit154

bits_read_vlc_be.exit154:                         ; preds = %bits_peek_be.exit.i146, %bits_priv_set_idx_be.exit.i149
  %i.hi = phi i32 [ %i.gv, %bits_priv_set_idx_be.exit.i149 ], [ %i.fw, %bits_peek_be.exit.i146 ]
  %i.hj = phi i64 [ %.val.i.i.i.i150, %bits_priv_set_idx_be.exit.i149 ], [ %i.fx, %bits_peek_be.exit.i146 ]
  %.023.i147 = phi i32 [ %i.hf, %bits_priv_set_idx_be.exit.i149 ], [ %i.ge, %bits_peek_be.exit.i146 ] ; 2 uses
  %.0.i148 = phi i32 [ %i.hh, %bits_priv_set_idx_be.exit.i149 ], [ %i.gb, %bits_peek_be.exit.i146 ] ; 2 uses
  %i.hk = zext nneg i32 %.023.i147 to i64
  %i.hl = shl i64 %i.hj, %i.hk                    ; 4 uses
  store i64 %i.hl, ptr %2, align 8, !tbaa !38
  %i.hm = sub i32 %i.hi, %.023.i147               ; 6 uses
  store i32 %i.hm, ptr %i.d, align 8, !tbaa !37
  %i.hn = icmp ult i32 %i.hm, 12
  br i1 %i.hn, label %bb.s, label %bits_peek_be.exit.i157

bb.s:                                             ; preds = %bits_read_vlc_be.exit154
end_hunk_2
begin_hunk_3_@decode_argbi:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.h

bits_priv_refill_64_be.exit.i:                    ; preds = %bb.b
  %i.r = load i64, ptr %i.h, align 1, !tbaa !29
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.t, ptr %i.g, align 8, !tbaa !36
  br label %bits_read_bit_be.exit

bits_read_bit_be.exit:                            ; preds = %bits_priv_refill_64_be.exit.i, %._crit_edge.i
  %i.u = phi i32 [ %i.f, %._crit_edge.i ], [ 63, %bits_priv_refill_64_be.exit.i ]
  %.val.i.i = phi i64 [ %.val.i.pre.i, %._crit_edge.i ], [ %i.s, %bits_priv_refill_64_be.exit.i ] ; 2 uses
  %i.v = shl i64 %.val.i.i, 1
  store i64 %i.v, ptr %2, align 8, !tbaa !38
  store i32 %i.u, ptr %i.d, align 8, !tbaa !37
  %i.w = icmp sgt i64 %.val.i.i, -1
  br i1 %i.w, label %.critedge.preheader, label %.preheader225

.preheader225:                                    ; preds = %bits_read_bit_be.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !32   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %.loopexit224

.lr.ph:                                           ; preds = %.preheader225
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bits_read_nz_be.exit118
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bits_read_nz_be.exit118 ] ; 2 uses
  %i.ac = load i32, ptr %i.d, align 8, !tbaa !37  ; 4 uses
  %i.ad = icmp ult i32 %i.ac, 8
  br i1 %i.ad, label %bb.d, label %.bits_read_nz_be.exit_crit_edge

.bits_read_nz_be.exit_crit_edge:                  ; preds = %bb.c
  %.val.i.i105.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 3 uses
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !35
  %.not.i.i106 = icmp ult ptr %i.ae, %i.af
  %.val.i.i105.pre258 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i106, label %bits_priv_refill_32_be.exit.i, label %bits_read_nz_be.exit

bits_priv_refill_32_be.exit.i:                    ; preds = %bb.d
  %i.ag = load i32, ptr %i.ae, align 1, !tbaa !29
  %i.ah = tail call i32 @llvm.bswap.i32(i32 %i.ag)
  %i.ai = zext i32 %i.ah to i64
  %i.aj = sub nuw nsw i32 32, %i.ac
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 %i.ai, %i.ak
  %i.am = or i64 %i.al, %.val.i.i105.pre258
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store ptr %i.an, ptr %i.aa, align 8, !tbaa !36
  %i.ao = or disjoint i32 %i.ac, 32
  br label %bits_read_nz_be.exit

bits_read_nz_be.exit:                             ; preds = %.bits_read_nz_be.exit_crit_edge, %bb.d, %bits_priv_refill_32_be.exit.i
  %.val.i.i105 = phi i64 [ %i.am, %bits_priv_refill_32_be.exit.i ], [ %.val.i.i105.pre, %.bits_read_nz_be.exit_crit_edge ], [ %.val.i.i105.pre258, %bb.d ] ; 2 uses
  %i.ap = phi i32 [ %i.ao, %bits_priv_refill_32_be.exit.i ], [ %i.ac, %.bits_read_nz_be.exit_crit_edge ], [ 8, %bb.d ]
  %i.aq = lshr i64 %.val.i.i105, 56
  %i.ar = shl i64 %.val.i.i105, 8
  store i64 %i.ar, ptr %2, align 8, !tbaa !38
  %i.as = add i32 %i.ap, -8
  store i32 %i.as, ptr %i.d, align 8, !tbaa !37
  %i.at = trunc nuw i64 %i.aq to i8
  %i.au = shl nuw nsw i64 %indvars.iv, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.au ; 4 uses
  store i8 %i.at, ptr %i.av, align 1, !tbaa !29
  %i.aw = load i32, ptr %i.d, align 8, !tbaa !37  ; 4 uses
  %i.ax = icmp ult i32 %i.aw, 8
  br i1 %i.ax, label %bb.e, label %bits_read_nz_be.exit.bits_read_nz_be.exit110_crit_edge

bits_read_nz_be.exit.bits_read_nz_be.exit110_crit_edge: ; preds = %bits_read_nz_be.exit
  %.val.i.i107.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit110

bb.e:                                             ; preds = %bits_read_nz_be.exit
  %i.ay = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 3 uses
  %i.az = load ptr, ptr %i.ab, align 8, !tbaa !35
  %.not.i.i108 = icmp ult ptr %i.ay, %i.az
  %.val.i.i107.pre260 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i108, label %bits_priv_refill_32_be.exit.i109, label %bits_read_nz_be.exit110

bits_priv_refill_32_be.exit.i109:                 ; preds = %bb.e
  %i.ba = load i32, ptr %i.ay, align 1, !tbaa !29
  %i.bb = tail call i32 @llvm.bswap.i32(i32 %i.ba)
  %i.bc = zext i32 %i.bb to i64
  %i.bd = sub nuw nsw i32 32, %i.aw
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl nuw i64 %i.bc, %i.be
  %i.bg = or i64 %i.bf, %.val.i.i107.pre260
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store ptr %i.bh, ptr %i.aa, align 8, !tbaa !36
  %i.bi = or disjoint i32 %i.aw, 32
  br label %bits_read_nz_be.exit110

bits_read_nz_be.exit110:                          ; preds = %bits_read_nz_be.exit.bits_read_nz_be.exit110_crit_edge, %bb.e, %bits_priv_refill_32_be.exit.i109
  %.val.i.i107 = phi i64 [ %i.bg, %bits_priv_refill_32_be.exit.i109 ], [ %.val.i.i107.pre, %bits_read_nz_be.exit.bits_read_nz_be.exit110_crit_edge ], [ %.val.i.i107.pre260, %bb.e ] ; 2 uses
  %i.bj = phi i32 [ %i.bi, %bits_priv_refill_32_be.exit.i109 ], [ %i.aw, %bits_read_nz_be.exit.bits_read_nz_be.exit110_crit_edge ], [ 8, %bb.e ]
  %i.bk = lshr i64 %.val.i.i107, 56
  %i.bl = shl i64 %.val.i.i107, 8
  store i64 %i.bl, ptr %2, align 8, !tbaa !38
  %i.bm = add i32 %i.bj, -8
  store i32 %i.bm, ptr %i.d, align 8, !tbaa !37
  %i.bn = trunc nuw i64 %i.bk to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !29
  %i.bp = load i32, ptr %i.d, align 8, !tbaa !37  ; 4 uses
  %i.bq = icmp ult i32 %i.bp, 8
  br i1 %i.bq, label %bb.f, label %bits_read_nz_be.exit110.bits_read_nz_be.exit114_crit_edge

bits_read_nz_be.exit110.bits_read_nz_be.exit114_crit_edge: ; preds = %bits_read_nz_be.exit110
  %.val.i.i111.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit114

bb.f:                                             ; preds = %bits_read_nz_be.exit110
  %i.br = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 3 uses
  %i.bs = load ptr, ptr %i.ab, align 8, !tbaa !35
  %.not.i.i112 = icmp ult ptr %i.br, %i.bs
  %.val.i.i111.pre262 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i112, label %bits_priv_refill_32_be.exit.i113, label %bits_read_nz_be.exit114

bits_priv_refill_32_be.exit.i113:                 ; preds = %bb.f
  %i.bt = load i32, ptr %i.br, align 1, !tbaa !29
  %i.bu = tail call i32 @llvm.bswap.i32(i32 %i.bt)
  %i.bv = zext i32 %i.bu to i64
  %i.bw = sub nuw nsw i32 32, %i.bp
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = shl nuw i64 %i.bv, %i.bx
  %i.bz = or i64 %i.by, %.val.i.i111.pre262
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store ptr %i.ca, ptr %i.aa, align 8, !tbaa !36
  %i.cb = or disjoint i32 %i.bp, 32
  br label %bits_read_nz_be.exit114

bits_read_nz_be.exit114:                          ; preds = %bits_read_nz_be.exit110.bits_read_nz_be.exit114_crit_edge, %bb.f, %bits_priv_refill_32_be.exit.i113
  %.val.i.i111 = phi i64 [ %i.bz, %bits_priv_refill_32_be.exit.i113 ], [ %.val.i.i111.pre, %bits_read_nz_be.exit110.bits_read_nz_be.exit114_crit_edge ], [ %.val.i.i111.pre262, %bb.f ] ; 2 uses
  %i.cc = phi i32 [ %i.cb, %bits_priv_refill_32_be.exit.i113 ], [ %i.bp, %bits_read_nz_be.exit110.bits_read_nz_be.exit114_crit_edge ], [ 8, %bb.f ]
  %i.cd = lshr i64 %.val.i.i111, 56
  %i.ce = shl i64 %.val.i.i111, 8
  store i64 %i.ce, ptr %2, align 8, !tbaa !38
  %i.cf = add i32 %i.cc, -8
  store i32 %i.cf, ptr %i.d, align 8, !tbaa !37
  %i.cg = trunc nuw i64 %i.cd to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !29
  %i.ci = load i32, ptr %i.d, align 8, !tbaa !37  ; 4 uses
  %i.cj = icmp ult i32 %i.ci, 8
  br i1 %i.cj, label %bb.g, label %bits_read_nz_be.exit114.bits_read_nz_be.exit118_crit_edge

bits_read_nz_be.exit114.bits_read_nz_be.exit118_crit_edge: ; preds = %bits_read_nz_be.exit114
  %.val.i.i115.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit118

bb.g:                                             ; preds = %bits_read_nz_be.exit114
  %i.ck = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 3 uses
  %i.cl = load ptr, ptr %i.ab, align 8, !tbaa !35
  %.not.i.i116 = icmp ult ptr %i.ck, %i.cl
  %.val.i.i115.pre264 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i116, label %bits_priv_refill_32_be.exit.i117, label %bits_read_nz_be.exit118

bits_priv_refill_32_be.exit.i117:                 ; preds = %bb.g
  %i.cm = load i32, ptr %i.ck, align 1, !tbaa !29
  %i.cn = tail call i32 @llvm.bswap.i32(i32 %i.cm)
  %i.co = zext i32 %i.cn to i64
  %i.cp = sub nuw nsw i32 32, %i.ci
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = shl nuw i64 %i.co, %i.cq
  %i.cs = or i64 %i.cr, %.val.i.i115.pre264
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store ptr %i.ct, ptr %i.aa, align 8, !tbaa !36
  %i.cu = or disjoint i32 %i.ci, 32
  br label %bits_read_nz_be.exit118

bits_read_nz_be.exit118:                          ; preds = %bits_read_nz_be.exit114.bits_read_nz_be.exit118_crit_edge, %bb.g, %bits_priv_refill_32_be.exit.i117
  %.val.i.i115 = phi i64 [ %i.cs, %bits_priv_refill_32_be.exit.i117 ], [ %.val.i.i115.pre, %bits_read_nz_be.exit114.bits_read_nz_be.exit118_crit_edge ], [ %.val.i.i115.pre264, %bb.g ] ; 2 uses
  %i.cv = phi i32 [ %i.cu, %bits_priv_refill_32_be.exit.i117 ], [ %i.ci, %bits_read_nz_be.exit114.bits_read_nz_be.exit118_crit_edge ], [ 8, %bb.g ]
  %i.cw = lshr i64 %.val.i.i115, 56
  %i.cx = shl i64 %.val.i.i115, 8
  store i64 %i.cx, ptr %2, align 8, !tbaa !38
  %i.cy = add i32 %i.cv, -8
  store i32 %i.cy, ptr %i.d, align 8, !tbaa !37
  %i.cz = trunc nuw i64 %i.cw to i8
  %i.da = getelementptr inbounds nuw i8, ptr %i.av, i64 3
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = load i32, ptr %i.x, align 8, !tbaa !32  ; 2 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp slt i64 %indvars.iv.next, %i.dc
  br i1 %i.dd, label %bb.c, label %.loopexit224, !llvm.loop !86

bb.h:                                             ; preds = %.lr.ph233, %bits_read_vlc_be.exit152
  %indvars.iv249 = phi i64 [ 0, %.lr.ph233 ], [ %indvars.iv.next250, %bits_read_vlc_be.exit152 ] ; 2 uses
  %.sroa.014.0231 = phi i32 [ -128, %.lr.ph233 ], [ %i.lt, %bits_read_vlc_be.exit152 ]
  %.sroa.515.0230 = phi i32 [ -128, %.lr.ph233 ], [ %i.lx, %bits_read_vlc_be.exit152 ]
  %.sroa.7.0229 = phi i32 [ -128, %.lr.ph233 ], [ %i.mb, %bits_read_vlc_be.exit152 ]
  %.sroa.9.0228 = phi i32 [ -128, %.lr.ph233 ], [ %i.mf, %bits_read_vlc_be.exit152 ]
  %i.de = load ptr, ptr %i.n, align 8, !tbaa !44  ; 6 uses
  %i.df = load i32, ptr %i.d, align 8, !tbaa !37  ; 5 uses
  %i.dg = icmp ult i32 %i.df, 12
  br i1 %i.dg, label %bb.i, label %.bits_priv_refill_32_be.exit_crit_edge.i.i.i

.bits_priv_refill_32_be.exit_crit_edge.i.i.i:     ; preds = %bb.h
  %.val.pre.i.i.i = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_peek_be.exit.i

bb.i:                                             ; preds = %bb.h
  %i.dh = load ptr, ptr %i.o, align 8, !tbaa !36  ; 3 uses
  %i.di = load ptr, ptr %i.p, align 8, !tbaa !35
  %.not.i.i.i.i = icmp ult ptr %i.dh, %i.di
  %.val.pre4.i.i.i = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.j, label %bits_peek_be.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dj = load i32, ptr %i.dh, align 1, !tbaa !29
  %i.dk = tail call i32 @llvm.bswap.i32(i32 %i.dj)
  %i.dl = zext i32 %i.dk to i64
  %i.dm = sub nuw nsw i32 32, %i.df
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = shl nuw i64 %i.dl, %i.dn
  %i.dp = or i64 %i.do, %.val.pre4.i.i.i          ; 2 uses
  store i64 %i.dp, ptr %2, align 8, !tbaa !38
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store ptr %i.dq, ptr %i.o, align 8, !tbaa !36
  %i.dr = or disjoint i32 %i.df, 32               ; 2 uses
  store i32 %i.dr, ptr %i.d, align 8, !tbaa !37
  br label %bits_peek_be.exit.i

bits_peek_be.exit.i:                              ; preds = %bb.j, %bb.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i
  %i.ds = phi i32 [ %i.df, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.dr, %bb.j ], [ %i.df, %bb.i ] ; 4 uses
  %i.dt = phi i64 [ %.val.pre.i.i.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.dp, %bb.j ], [ %.val.pre4.i.i.i, %bb.i ] ; 3 uses
  %i.du = lshr i64 %i.dt, 52
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.du ; 2 uses
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !29
  %i.dx = sext i16 %i.dw to i32                   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !29 ; 2 uses
  %i.ea = sext i16 %i.dz to i32                   ; 3 uses
  %i.eb = icmp slt i16 %i.dz, 0
  br i1 %i.eb, label %bb.k, label %bits_read_vlc_be.exit

bb.k:                                             ; preds = %bits_peek_be.exit.i
  %i.ec = shl i64 %i.dt, 12                       ; 4 uses
  store i64 %i.ec, ptr %2, align 8, !tbaa !38
  %i.ed = add i32 %i.ds, -12                      ; 4 uses
  store i32 %i.ed, ptr %i.d, align 8, !tbaa !37
  %i.ee = sub nsw i32 0, %i.ea
  %i.ef = icmp ult i32 %i.ed, %i.ee
  br i1 %i.ef, label %bb.l, label %bits_priv_set_idx_be.exit.i

bb.l:                                             ; preds = %bb.k
  %i.eg = load ptr, ptr %i.o, align 8, !tbaa !36  ; 3 uses
  %i.eh = load ptr, ptr %i.p, align 8, !tbaa !35
  %.not.i.i.i.i.i = icmp ult ptr %i.eg, %i.eh
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bits_priv_set_idx_be.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ei = load i32, ptr %i.eg, align 1, !tbaa !29
  %i.ej = tail call i32 @llvm.bswap.i32(i32 %i.ei)
  %i.ek = zext i32 %i.ej to i64
  %i.el = sub nsw i32 44, %i.ds
  %i.em = zext nneg i32 %i.el to i64
  %i.en = shl i64 %i.ek, %i.em
  %i.eo = or i64 %i.en, %i.ec                     ; 2 uses
  store i64 %i.eo, ptr %2, align 8, !tbaa !38
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store ptr %i.ep, ptr %i.o, align 8, !tbaa !36
  %i.eq = add nuw nsw i32 %i.ds, 20               ; 2 uses
  store i32 %i.eq, ptr %i.d, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i

bits_priv_set_idx_be.exit.i:                      ; preds = %bb.m, %bb.l, %bb.k
  %i.er = phi i32 [ %i.ed, %bb.l ], [ %i.eq, %bb.m ], [ %i.ed, %bb.k ]
  %.val.i.i.i.i = phi i64 [ %i.ec, %bb.l ], [ %i.eo, %bb.m ], [ %i.ec, %bb.k ] ; 2 uses
  %i.es = add nsw i32 %i.ea, 64
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = lshr i64 %.val.i.i.i.i, %i.et
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = add i32 %i.ev, %i.dx
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.ex ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !29
  %i.fb = sext i16 %i.fa to i32
  %i.fc = load i16, ptr %i.ey, align 2, !tbaa !29
  %i.fd = zext i16 %i.fc to i32
  br label %bits_read_vlc_be.exit

bits_read_vlc_be.exit:                            ; preds = %bits_peek_be.exit.i, %bits_priv_set_idx_be.exit.i
  %i.fe = phi i32 [ %i.er, %bits_priv_set_idx_be.exit.i ], [ %i.ds, %bits_peek_be.exit.i ]
  %i.ff = phi i64 [ %.val.i.i.i.i, %bits_priv_set_idx_be.exit.i ], [ %i.dt, %bits_peek_be.exit.i ]
  %.023.i = phi i32 [ %i.fb, %bits_priv_set_idx_be.exit.i ], [ %i.ea, %bits_peek_be.exit.i ] ; 2 uses
  %.0.i119 = phi i32 [ %i.fd, %bits_priv_set_idx_be.exit.i ], [ %i.dx, %bits_peek_be.exit.i ]
  %i.fg = zext nneg i32 %.023.i to i64
  %i.fh = shl i64 %i.ff, %i.fg                    ; 4 uses
  store i64 %i.fh, ptr %2, align 8, !tbaa !38
  %i.fi = sub i32 %i.fe, %.023.i                  ; 6 uses
  store i32 %i.fi, ptr %i.d, align 8, !tbaa !37
  %i.fj = load ptr, ptr %i.q, align 8, !tbaa !44  ; 2 uses
  %i.fk = icmp ult i32 %i.fi, 12
  br i1 %i.fk, label %bb.n, label %bits_peek_be.exit.i122

bb.n:                                             ; preds = %bits_read_vlc_be.exit
  %i.fl = load ptr, ptr %i.o, align 8, !tbaa !36  ; 3 uses
  %i.fm = load ptr, ptr %i.p, align 8, !tbaa !35
  %.not.i.i.i.i128 = icmp ult ptr %i.fl, %i.fm
  br i1 %.not.i.i.i.i128, label %bb.o, label %bits_peek_be.exit.i122

bb.o:                                             ; preds = %bb.n
  %i.fn = load i32, ptr %i.fl, align 1, !tbaa !29
  %i.fo = tail call i32 @llvm.bswap.i32(i32 %i.fn)
  %i.fp = zext i32 %i.fo to i64
  %i.fq = sub nuw nsw i32 32, %i.fi
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = shl nuw i64 %i.fp, %i.fr
  %i.ft = or i64 %i.fs, %i.fh                     ; 2 uses
  store i64 %i.ft, ptr %2, align 8, !tbaa !38
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store ptr %i.fu, ptr %i.o, align 8, !tbaa !36
  %i.fv = or disjoint i32 %i.fi, 32               ; 2 uses
  store i32 %i.fv, ptr %i.d, align 8, !tbaa !37
  br label %bits_peek_be.exit.i122

bits_peek_be.exit.i122:                           ; preds = %bits_read_vlc_be.exit, %bb.o, %bb.n
  %i.fw = phi i32 [ %i.fi, %bb.n ], [ %i.fv, %bb.o ], [ %i.fi, %bits_read_vlc_be.exit ] ; 4 uses
  %i.fx = phi i64 [ %i.fh, %bb.n ], [ %i.ft, %bb.o ], [ %i.fh, %bits_read_vlc_be.exit ] ; 3 uses
  %i.fy = lshr i64 %i.fx, 52
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.fy ; 2 uses
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !29
  %i.gb = sext i16 %i.ga to i32                   ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !29 ; 2 uses
  %i.ge = sext i16 %i.gd to i32                   ; 3 uses
  %i.gf = icmp slt i16 %i.gd, 0
  br i1 %i.gf, label %bb.p, label %bits_read_vlc_be.exit130

bb.p:                                             ; preds = %bits_peek_be.exit.i122
  %i.gg = shl i64 %i.fx, 12                       ; 4 uses
  store i64 %i.gg, ptr %2, align 8, !tbaa !38
  %i.gh = add i32 %i.fw, -12                      ; 4 uses
  store i32 %i.gh, ptr %i.d, align 8, !tbaa !37
  %i.gi = sub nsw i32 0, %i.ge
  %i.gj = icmp ult i32 %i.gh, %i.gi
  br i1 %i.gj, label %bb.q, label %bits_priv_set_idx_be.exit.i125

bb.q:                                             ; preds = %bb.p
  %i.gk = load ptr, ptr %i.o, align 8, !tbaa !36  ; 3 uses
  %i.gl = load ptr, ptr %i.p, align 8, !tbaa !35
  %.not.i.i.i.i.i127 = icmp ult ptr %i.gk, %i.gl
  br i1 %.not.i.i.i.i.i127, label %bb.r, label %bits_priv_set_idx_be.exit.i125

bb.r:                                             ; preds = %bb.q
  %i.gm = load i32, ptr %i.gk, align 1, !tbaa !29
  %i.gn = tail call i32 @llvm.bswap.i32(i32 %i.gm)
  %i.go = zext i32 %i.gn to i64
  %i.gp = sub nsw i32 44, %i.fw
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = shl i64 %i.go, %i.gq
  %i.gs = or i64 %i.gr, %i.gg                     ; 2 uses
  store i64 %i.gs, ptr %2, align 8, !tbaa !38
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  store ptr %i.gt, ptr %i.o, align 8, !tbaa !36
  %i.gu = add nuw nsw i32 %i.fw, 20               ; 2 uses
  store i32 %i.gu, ptr %i.d, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i125

bits_priv_set_idx_be.exit.i125:                   ; preds = %bb.r, %bb.q, %bb.p
  %i.gv = phi i32 [ %i.gh, %bb.q ], [ %i.gu, %bb.r ], [ %i.gh, %bb.p ]
  %.val.i.i.i.i126 = phi i64 [ %i.gg, %bb.q ], [ %i.gs, %bb.r ], [ %i.gg, %bb.p ] ; 2 uses
  %i.gw = add nsw i32 %i.ge, 64
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = lshr i64 %.val.i.i.i.i126, %i.gx
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = add i32 %i.gz, %i.gb
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 2
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !29
  %i.hf = sext i16 %i.he to i32
  %i.hg = load i16, ptr %i.hc, align 2, !tbaa !29
  %i.hh = zext i16 %i.hg to i32
  br label %bits_read_vlc_be.exit130

bits_read_vlc_be.exit130:                         ; preds = %bits_peek_be.exit.i122, %bits_priv_set_idx_be.exit.i125
  %i.hi = phi i32 [ %i.gv, %bits_priv_set_idx_be.exit.i125 ], [ %i.fw, %bits_peek_be.exit.i122 ]
  %i.hj = phi i64 [ %.val.i.i.i.i126, %bits_priv_set_idx_be.exit.i125 ], [ %i.fx, %bits_peek_be.exit.i122 ]
  %.023.i123 = phi i32 [ %i.hf, %bits_priv_set_idx_be.exit.i125 ], [ %i.ge, %bits_peek_be.exit.i122 ] ; 2 uses
  %.0.i124 = phi i32 [ %i.hh, %bits_priv_set_idx_be.exit.i125 ], [ %i.gb, %bits_peek_be.exit.i122 ] ; 2 uses
  %i.hk = zext nneg i32 %.023.i123 to i64
  %i.hl = shl i64 %i.hj, %i.hk                    ; 4 uses
  store i64 %i.hl, ptr %2, align 8, !tbaa !38
  %i.hm = sub i32 %i.hi, %.023.i123               ; 6 uses
  store i32 %i.hm, ptr %i.d, align 8, !tbaa !37
  %i.hn = icmp ult i32 %i.hm, 12
  br i1 %i.hn, label %bb.s, label %bits_peek_be.exit.i133

bb.s:                                             ; preds = %bits_read_vlc_be.exit130
end_hunk_3
begin_hunk_4_@decode_aybr:bb.a
  store i32 %i.t, ptr %i.j, align 8, !tbaa !37
  %.not = icmp sgt i64 %.val.i.i, -1
  br i1 %.not, label %bits_read_bit_be.exit.thread, label %.preheader267

.preheader267:                                    ; preds = %bits_read_bit_be.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !32   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %.loopexit266

.lr.ph:                                           ; preds = %.preheader267
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bits_read_nz_be.exit158
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bits_read_nz_be.exit158 ] ; 5 uses
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !37  ; 4 uses
  %i.ab = icmp ult i32 %i.aa, 8
  br i1 %i.ab, label %bb.d, label %.bits_read_nz_be.exit_crit_edge

.bits_read_nz_be.exit_crit_edge:                  ; preds = %bb.c
  %.val.i.i145.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !36  ; 3 uses
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !35
  %.not.i.i146 = icmp ult ptr %i.ac, %i.ad
  %.val.i.i145.pre310 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i146, label %bits_priv_refill_32_be.exit.i, label %bits_read_nz_be.exit

bits_priv_refill_32_be.exit.i:                    ; preds = %bb.d
  %i.ae = load i32, ptr %i.ac, align 1, !tbaa !29
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ag = zext i32 %i.af to i64
  %i.ah = sub nuw nsw i32 32, %i.aa
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw i64 %i.ag, %i.ai
  %i.ak = or i64 %i.aj, %.val.i.i145.pre310
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store ptr %i.al, ptr %i.y, align 8, !tbaa !36
  %i.am = or disjoint i32 %i.aa, 32
  br label %bits_read_nz_be.exit

bits_read_nz_be.exit:                             ; preds = %.bits_read_nz_be.exit_crit_edge, %bb.d, %bits_priv_refill_32_be.exit.i
  %.val.i.i145 = phi i64 [ %i.ak, %bits_priv_refill_32_be.exit.i ], [ %.val.i.i145.pre, %.bits_read_nz_be.exit_crit_edge ], [ %.val.i.i145.pre310, %bb.d ] ; 2 uses
  %i.an = phi i32 [ %i.am, %bits_priv_refill_32_be.exit.i ], [ %i.aa, %.bits_read_nz_be.exit_crit_edge ], [ 8, %bb.d ]
  %i.ao = lshr i64 %.val.i.i145, 56
  %i.ap = shl i64 %.val.i.i145, 8
  store i64 %i.ap, ptr %2, align 8, !tbaa !38
  %i.aq = add i32 %i.an, -8
  store i32 %i.aq, ptr %i.j, align 8, !tbaa !37
  %i.ar = trunc nuw i64 %i.ao to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !29
  %i.at = load i32, ptr %i.j, align 8, !tbaa !37  ; 4 uses
  %i.au = icmp ult i32 %i.at, 8
  br i1 %i.au, label %bb.e, label %bits_read_nz_be.exit.bits_read_nz_be.exit150_crit_edge

bits_read_nz_be.exit.bits_read_nz_be.exit150_crit_edge: ; preds = %bits_read_nz_be.exit
  %.val.i.i147.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit150

bb.e:                                             ; preds = %bits_read_nz_be.exit
  %i.av = load ptr, ptr %i.y, align 8, !tbaa !36  ; 3 uses
  %i.aw = load ptr, ptr %i.z, align 8, !tbaa !35
  %.not.i.i148 = icmp ult ptr %i.av, %i.aw
  %.val.i.i147.pre312 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i148, label %bits_priv_refill_32_be.exit.i149, label %bits_read_nz_be.exit150

bits_priv_refill_32_be.exit.i149:                 ; preds = %bb.e
  %i.ax = load i32, ptr %i.av, align 1, !tbaa !29
  %i.ay = tail call i32 @llvm.bswap.i32(i32 %i.ax)
  %i.az = zext i32 %i.ay to i64
  %i.ba = sub nuw nsw i32 32, %i.at
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl nuw i64 %i.az, %i.bb
  %i.bd = or i64 %i.bc, %.val.i.i147.pre312
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store ptr %i.be, ptr %i.y, align 8, !tbaa !36
  %i.bf = or disjoint i32 %i.at, 32
  br label %bits_read_nz_be.exit150

bits_read_nz_be.exit150:                          ; preds = %bits_read_nz_be.exit.bits_read_nz_be.exit150_crit_edge, %bb.e, %bits_priv_refill_32_be.exit.i149
  %.val.i.i147 = phi i64 [ %i.bd, %bits_priv_refill_32_be.exit.i149 ], [ %.val.i.i147.pre, %bits_read_nz_be.exit.bits_read_nz_be.exit150_crit_edge ], [ %.val.i.i147.pre312, %bb.e ] ; 2 uses
  %i.bg = phi i32 [ %i.bf, %bits_priv_refill_32_be.exit.i149 ], [ %i.at, %bits_read_nz_be.exit.bits_read_nz_be.exit150_crit_edge ], [ 8, %bb.e ]
  %i.bh = lshr i64 %.val.i.i147, 56
  %i.bi = shl i64 %.val.i.i147, 8
  store i64 %i.bi, ptr %2, align 8, !tbaa !38
  %i.bj = add i32 %i.bg, -8
  store i32 %i.bj, ptr %i.j, align 8, !tbaa !37
  %i.bk = trunc nuw i64 %i.bh to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !29
  %i.bm = load i32, ptr %i.j, align 8, !tbaa !37  ; 4 uses
  %i.bn = icmp ult i32 %i.bm, 8
  br i1 %i.bn, label %bb.f, label %bits_read_nz_be.exit150.bits_read_nz_be.exit154_crit_edge

bits_read_nz_be.exit150.bits_read_nz_be.exit154_crit_edge: ; preds = %bits_read_nz_be.exit150
  %.val.i.i151.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit154

bb.f:                                             ; preds = %bits_read_nz_be.exit150
  %i.bo = load ptr, ptr %i.y, align 8, !tbaa !36  ; 3 uses
  %i.bp = load ptr, ptr %i.z, align 8, !tbaa !35
  %.not.i.i152 = icmp ult ptr %i.bo, %i.bp
  %.val.i.i151.pre314 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i152, label %bits_priv_refill_32_be.exit.i153, label %bits_read_nz_be.exit154

bits_priv_refill_32_be.exit.i153:                 ; preds = %bb.f
  %i.bq = load i32, ptr %i.bo, align 1, !tbaa !29
  %i.br = tail call i32 @llvm.bswap.i32(i32 %i.bq)
  %i.bs = zext i32 %i.br to i64
  %i.bt = sub nuw nsw i32 32, %i.bm
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl nuw i64 %i.bs, %i.bu
  %i.bw = or i64 %i.bv, %.val.i.i151.pre314
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store ptr %i.bx, ptr %i.y, align 8, !tbaa !36
  %i.by = or disjoint i32 %i.bm, 32
  br label %bits_read_nz_be.exit154

bits_read_nz_be.exit154:                          ; preds = %bits_read_nz_be.exit150.bits_read_nz_be.exit154_crit_edge, %bb.f, %bits_priv_refill_32_be.exit.i153
  %.val.i.i151 = phi i64 [ %i.bw, %bits_priv_refill_32_be.exit.i153 ], [ %.val.i.i151.pre, %bits_read_nz_be.exit150.bits_read_nz_be.exit154_crit_edge ], [ %.val.i.i151.pre314, %bb.f ] ; 2 uses
  %i.bz = phi i32 [ %i.by, %bits_priv_refill_32_be.exit.i153 ], [ %i.bm, %bits_read_nz_be.exit150.bits_read_nz_be.exit154_crit_edge ], [ 8, %bb.f ]
  %i.ca = lshr i64 %.val.i.i151, 56
  %i.cb = shl i64 %.val.i.i151, 8
  store i64 %i.cb, ptr %2, align 8, !tbaa !38
  %i.cc = add i32 %i.bz, -8
  store i32 %i.cc, ptr %i.j, align 8, !tbaa !37
  %i.cd = trunc nuw i64 %i.ca to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !29
  %i.cf = load i32, ptr %i.j, align 8, !tbaa !37  ; 4 uses
  %i.cg = icmp ult i32 %i.cf, 8
  br i1 %i.cg, label %bb.g, label %bits_read_nz_be.exit154.bits_read_nz_be.exit158_crit_edge

bits_read_nz_be.exit154.bits_read_nz_be.exit158_crit_edge: ; preds = %bits_read_nz_be.exit154
  %.val.i.i155.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit158

bb.g:                                             ; preds = %bits_read_nz_be.exit154
  %i.ch = load ptr, ptr %i.y, align 8, !tbaa !36  ; 3 uses
  %i.ci = load ptr, ptr %i.z, align 8, !tbaa !35
  %.not.i.i156 = icmp ult ptr %i.ch, %i.ci
  %.val.i.i155.pre316 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i156, label %bits_priv_refill_32_be.exit.i157, label %bits_read_nz_be.exit158

bits_priv_refill_32_be.exit.i157:                 ; preds = %bb.g
  %i.cj = load i32, ptr %i.ch, align 1, !tbaa !29
  %i.ck = tail call i32 @llvm.bswap.i32(i32 %i.cj)
  %i.cl = zext i32 %i.ck to i64
  %i.cm = sub nuw nsw i32 32, %i.cf
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = shl nuw i64 %i.cl, %i.cn
  %i.cp = or i64 %i.co, %.val.i.i155.pre316
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store ptr %i.cq, ptr %i.y, align 8, !tbaa !36
  %i.cr = or disjoint i32 %i.cf, 32
  br label %bits_read_nz_be.exit158

bits_read_nz_be.exit158:                          ; preds = %bits_read_nz_be.exit154.bits_read_nz_be.exit158_crit_edge, %bb.g, %bits_priv_refill_32_be.exit.i157
  %.val.i.i155 = phi i64 [ %i.cp, %bits_priv_refill_32_be.exit.i157 ], [ %.val.i.i155.pre, %bits_read_nz_be.exit154.bits_read_nz_be.exit158_crit_edge ], [ %.val.i.i155.pre316, %bb.g ] ; 2 uses
  %i.cs = phi i32 [ %i.cr, %bits_priv_refill_32_be.exit.i157 ], [ %i.cf, %bits_read_nz_be.exit154.bits_read_nz_be.exit158_crit_edge ], [ 8, %bb.g ]
  %i.ct = lshr i64 %.val.i.i155, 56
  %i.cu = shl i64 %.val.i.i155, 8
  store i64 %i.cu, ptr %2, align 8, !tbaa !38
  %i.cv = add i32 %i.cs, -8
  store i32 %i.cv, ptr %i.j, align 8, !tbaa !37
  %i.cw = trunc nuw i64 %i.ct to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = load i32, ptr %i.v, align 8, !tbaa !32  ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next, %i.cz
  br i1 %i.da, label %bb.c, label %.loopexit266, !llvm.loop !91

bits_read_bit_be.exit.thread:                     ; preds = %bb.b, %bits_read_bit_be.exit
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !32 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph275, label %.loopexit266

.lr.ph275:                                        ; preds = %bits_read_bit_be.exit.thread
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !31
  %.not143 = icmp eq i32 %i.df, 0
  %i.dg = select i1 %.not143, i32 -146, i32 125
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 16 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph275, %bits_read_vlc_be.exit192
  %indvars.iv301 = phi i64 [ 0, %.lr.ph275 ], [ %indvars.iv.next302, %bits_read_vlc_be.exit192 ] ; 5 uses
  %.sroa.020.0274 = phi i32 [ 125, %.lr.ph275 ], [ %i.ma, %bits_read_vlc_be.exit192 ]
  %.sroa.521.0273 = phi i32 [ %i.dg, %.lr.ph275 ], [ %i.md, %bits_read_vlc_be.exit192 ]
  %.sroa.822.0272 = phi i32 [ -128, %.lr.ph275 ], [ %i.mg, %bits_read_vlc_be.exit192 ]
  %.sroa.1123.0271 = phi i32 [ -128, %.lr.ph275 ], [ %i.mj, %bits_read_vlc_be.exit192 ]
  %i.dl = load ptr, ptr %i.dh, align 8, !tbaa !44 ; 6 uses
  %i.dm = load i32, ptr %i.j, align 8, !tbaa !37  ; 5 uses
  %i.dn = icmp ult i32 %i.dm, 12
  br i1 %i.dn, label %bb.i, label %.bits_priv_refill_32_be.exit_crit_edge.i.i.i

.bits_priv_refill_32_be.exit_crit_edge.i.i.i:     ; preds = %bb.h
  %.val.pre.i.i.i = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_peek_be.exit.i

bb.i:                                             ; preds = %bb.h
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !36 ; 3 uses
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !35
  %.not.i.i.i.i = icmp ult ptr %i.do, %i.dp
  %.val.pre4.i.i.i = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.j, label %bits_peek_be.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dq = load i32, ptr %i.do, align 1, !tbaa !29
  %i.dr = tail call i32 @llvm.bswap.i32(i32 %i.dq)
  %i.ds = zext i32 %i.dr to i64
  %i.dt = sub nuw nsw i32 32, %i.dm
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = shl nuw i64 %i.ds, %i.du
  %i.dw = or i64 %i.dv, %.val.pre4.i.i.i          ; 2 uses
  store i64 %i.dw, ptr %2, align 8, !tbaa !38
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store ptr %i.dx, ptr %i.di, align 8, !tbaa !36
  %i.dy = or disjoint i32 %i.dm, 32               ; 2 uses
  store i32 %i.dy, ptr %i.j, align 8, !tbaa !37
  br label %bits_peek_be.exit.i

bits_peek_be.exit.i:                              ; preds = %bb.j, %bb.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i
  %i.dz = phi i32 [ %i.dm, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.dy, %bb.j ], [ %i.dm, %bb.i ] ; 4 uses
  %i.ea = phi i64 [ %.val.pre.i.i.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.dw, %bb.j ], [ %.val.pre4.i.i.i, %bb.i ] ; 3 uses
  %i.eb = lshr i64 %i.ea, 52
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.eb ; 2 uses
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !29
  %i.ee = sext i16 %i.ed to i32                   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !29 ; 2 uses
  %i.eh = sext i16 %i.eg to i32                   ; 3 uses
  %i.ei = icmp slt i16 %i.eg, 0
  br i1 %i.ei, label %bb.k, label %bits_read_vlc_be.exit

bb.k:                                             ; preds = %bits_peek_be.exit.i
  %i.ej = shl i64 %i.ea, 12                       ; 4 uses
  store i64 %i.ej, ptr %2, align 8, !tbaa !38
  %i.ek = add i32 %i.dz, -12                      ; 4 uses
  store i32 %i.ek, ptr %i.j, align 8, !tbaa !37
  %i.el = sub nsw i32 0, %i.eh
  %i.em = icmp ult i32 %i.ek, %i.el
  br i1 %i.em, label %bb.l, label %bits_priv_set_idx_be.exit.i

bb.l:                                             ; preds = %bb.k
  %i.en = load ptr, ptr %i.di, align 8, !tbaa !36 ; 3 uses
  %i.eo = load ptr, ptr %i.dj, align 8, !tbaa !35
  %.not.i.i.i.i.i = icmp ult ptr %i.en, %i.eo
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bits_priv_set_idx_be.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ep = load i32, ptr %i.en, align 1, !tbaa !29
  %i.eq = tail call i32 @llvm.bswap.i32(i32 %i.ep)
  %i.er = zext i32 %i.eq to i64
  %i.es = sub nsw i32 44, %i.dz
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = shl i64 %i.er, %i.et
  %i.ev = or i64 %i.eu, %i.ej                     ; 2 uses
  store i64 %i.ev, ptr %2, align 8, !tbaa !38
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store ptr %i.ew, ptr %i.di, align 8, !tbaa !36
  %i.ex = add nuw nsw i32 %i.dz, 20               ; 2 uses
  store i32 %i.ex, ptr %i.j, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i

bits_priv_set_idx_be.exit.i:                      ; preds = %bb.m, %bb.l, %bb.k
  %i.ey = phi i32 [ %i.ek, %bb.l ], [ %i.ex, %bb.m ], [ %i.ek, %bb.k ]
  %.val.i.i.i.i = phi i64 [ %i.ej, %bb.l ], [ %i.ev, %bb.m ], [ %i.ej, %bb.k ] ; 2 uses
  %i.ez = add nsw i32 %i.eh, 64
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = lshr i64 %.val.i.i.i.i, %i.fa
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = add i32 %i.fc, %i.ee
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !29
  %i.fi = sext i16 %i.fh to i32
  %i.fj = load i16, ptr %i.ff, align 2, !tbaa !29
  %i.fk = zext i16 %i.fj to i32
  br label %bits_read_vlc_be.exit

bits_read_vlc_be.exit:                            ; preds = %bits_peek_be.exit.i, %bits_priv_set_idx_be.exit.i
  %i.fl = phi i32 [ %i.ey, %bits_priv_set_idx_be.exit.i ], [ %i.dz, %bits_peek_be.exit.i ]
  %i.fm = phi i64 [ %.val.i.i.i.i, %bits_priv_set_idx_be.exit.i ], [ %i.ea, %bits_peek_be.exit.i ]
  %.023.i = phi i32 [ %i.fi, %bits_priv_set_idx_be.exit.i ], [ %i.eh, %bits_peek_be.exit.i ] ; 2 uses
  %.0.i159 = phi i32 [ %i.fk, %bits_priv_set_idx_be.exit.i ], [ %i.ee, %bits_peek_be.exit.i ]
  %i.fn = zext nneg i32 %.023.i to i64
  %i.fo = shl i64 %i.fm, %i.fn                    ; 4 uses
  store i64 %i.fo, ptr %2, align 8, !tbaa !38
  %i.fp = sub i32 %i.fl, %.023.i                  ; 6 uses
  store i32 %i.fp, ptr %i.j, align 8, !tbaa !37
  %i.fq = load ptr, ptr %i.dk, align 8, !tbaa !44 ; 2 uses
  %i.fr = icmp ult i32 %i.fp, 12
  br i1 %i.fr, label %bb.n, label %bits_peek_be.exit.i162

bb.n:                                             ; preds = %bits_read_vlc_be.exit
  %i.fs = load ptr, ptr %i.di, align 8, !tbaa !36 ; 3 uses
  %i.ft = load ptr, ptr %i.dj, align 8, !tbaa !35
  %.not.i.i.i.i168 = icmp ult ptr %i.fs, %i.ft
  br i1 %.not.i.i.i.i168, label %bb.o, label %bits_peek_be.exit.i162

bb.o:                                             ; preds = %bb.n
  %i.fu = load i32, ptr %i.fs, align 1, !tbaa !29
  %i.fv = tail call i32 @llvm.bswap.i32(i32 %i.fu)
  %i.fw = zext i32 %i.fv to i64
  %i.fx = sub nuw nsw i32 32, %i.fp
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = shl nuw i64 %i.fw, %i.fy
  %i.ga = or i64 %i.fz, %i.fo                     ; 2 uses
  store i64 %i.ga, ptr %2, align 8, !tbaa !38
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store ptr %i.gb, ptr %i.di, align 8, !tbaa !36
  %i.gc = or disjoint i32 %i.fp, 32               ; 2 uses
  store i32 %i.gc, ptr %i.j, align 8, !tbaa !37
  br label %bits_peek_be.exit.i162

bits_peek_be.exit.i162:                           ; preds = %bits_read_vlc_be.exit, %bb.o, %bb.n
  %i.gd = phi i32 [ %i.fp, %bb.n ], [ %i.gc, %bb.o ], [ %i.fp, %bits_read_vlc_be.exit ] ; 4 uses
  %i.ge = phi i64 [ %i.fo, %bb.n ], [ %i.ga, %bb.o ], [ %i.fo, %bits_read_vlc_be.exit ] ; 3 uses
  %i.gf = lshr i64 %i.ge, 52
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.gf ; 2 uses
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !29
  %i.gi = sext i16 %i.gh to i32                   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !29 ; 2 uses
  %i.gl = sext i16 %i.gk to i32                   ; 3 uses
  %i.gm = icmp slt i16 %i.gk, 0
  br i1 %i.gm, label %bb.p, label %bits_read_vlc_be.exit170

bb.p:                                             ; preds = %bits_peek_be.exit.i162
  %i.gn = shl i64 %i.ge, 12                       ; 4 uses
  store i64 %i.gn, ptr %2, align 8, !tbaa !38
  %i.go = add i32 %i.gd, -12                      ; 4 uses
  store i32 %i.go, ptr %i.j, align 8, !tbaa !37
  %i.gp = sub nsw i32 0, %i.gl
  %i.gq = icmp ult i32 %i.go, %i.gp
  br i1 %i.gq, label %bb.q, label %bits_priv_set_idx_be.exit.i165

bb.q:                                             ; preds = %bb.p
  %i.gr = load ptr, ptr %i.di, align 8, !tbaa !36 ; 3 uses
  %i.gs = load ptr, ptr %i.dj, align 8, !tbaa !35
  %.not.i.i.i.i.i167 = icmp ult ptr %i.gr, %i.gs
  br i1 %.not.i.i.i.i.i167, label %bb.r, label %bits_priv_set_idx_be.exit.i165

bb.r:                                             ; preds = %bb.q
  %i.gt = load i32, ptr %i.gr, align 1, !tbaa !29
  %i.gu = tail call i32 @llvm.bswap.i32(i32 %i.gt)
  %i.gv = zext i32 %i.gu to i64
  %i.gw = sub nsw i32 44, %i.gd
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = shl i64 %i.gv, %i.gx
  %i.gz = or i64 %i.gy, %i.gn                     ; 2 uses
  store i64 %i.gz, ptr %2, align 8, !tbaa !38
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  store ptr %i.ha, ptr %i.di, align 8, !tbaa !36
  %i.hb = add nuw nsw i32 %i.gd, 20               ; 2 uses
  store i32 %i.hb, ptr %i.j, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i165

bits_priv_set_idx_be.exit.i165:                   ; preds = %bb.r, %bb.q, %bb.p
  %i.hc = phi i32 [ %i.go, %bb.q ], [ %i.hb, %bb.r ], [ %i.go, %bb.p ]
  %.val.i.i.i.i166 = phi i64 [ %i.gn, %bb.q ], [ %i.gz, %bb.r ], [ %i.gn, %bb.p ] ; 2 uses
  %i.hd = add nsw i32 %i.gl, 64
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = lshr i64 %.val.i.i.i.i166, %i.he
  %i.hg = trunc i64 %i.hf to i32
  %i.hh = add i32 %i.hg, %i.gi
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.hi ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !29
  %i.hm = sext i16 %i.hl to i32
  %i.hn = load i16, ptr %i.hj, align 2, !tbaa !29
  %i.ho = zext i16 %i.hn to i32
  br label %bits_read_vlc_be.exit170

bits_read_vlc_be.exit170:                         ; preds = %bits_peek_be.exit.i162, %bits_priv_set_idx_be.exit.i165
  %i.hp = phi i32 [ %i.hc, %bits_priv_set_idx_be.exit.i165 ], [ %i.gd, %bits_peek_be.exit.i162 ]
  %i.hq = phi i64 [ %.val.i.i.i.i166, %bits_priv_set_idx_be.exit.i165 ], [ %i.ge, %bits_peek_be.exit.i162 ]
  %.023.i163 = phi i32 [ %i.hm, %bits_priv_set_idx_be.exit.i165 ], [ %i.gl, %bits_peek_be.exit.i162 ] ; 2 uses
  %.0.i164 = phi i32 [ %i.ho, %bits_priv_set_idx_be.exit.i165 ], [ %i.gi, %bits_peek_be.exit.i162 ]
  %i.hr = zext nneg i32 %.023.i163 to i64
  %i.hs = shl i64 %i.hq, %i.hr                    ; 4 uses
  store i64 %i.hs, ptr %2, align 8, !tbaa !38
  %i.ht = sub i32 %i.hp, %.023.i163               ; 6 uses
  store i32 %i.ht, ptr %i.j, align 8, !tbaa !37
  %i.hu = icmp ult i32 %i.ht, 12
  br i1 %i.hu, label %bb.s, label %bits_peek_be.exit.i173

bb.s:                                             ; preds = %bits_read_vlc_be.exit170
end_hunk_4
begin_hunk_5_@decode_aybri:bb.a
  store i32 %i.t, ptr %i.j, align 8, !tbaa !37
  %.not = icmp sgt i64 %.val.i.i, -1
  br i1 %.not, label %bits_read_bit_be.exit.thread, label %.preheader243

.preheader243:                                    ; preds = %bits_read_bit_be.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !32   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %.loopexit242

.lr.ph:                                           ; preds = %.preheader243
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bits_read_nz_be.exit134
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bits_read_nz_be.exit134 ] ; 5 uses
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !37  ; 4 uses
  %i.ab = icmp ult i32 %i.aa, 8
  br i1 %i.ab, label %bb.d, label %.bits_read_nz_be.exit_crit_edge

.bits_read_nz_be.exit_crit_edge:                  ; preds = %bb.c
  %.val.i.i121.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !36  ; 3 uses
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !35
  %.not.i.i122 = icmp ult ptr %i.ac, %i.ad
  %.val.i.i121.pre282 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i122, label %bits_priv_refill_32_be.exit.i, label %bits_read_nz_be.exit

bits_priv_refill_32_be.exit.i:                    ; preds = %bb.d
  %i.ae = load i32, ptr %i.ac, align 1, !tbaa !29
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.ae)
  %i.ag = zext i32 %i.af to i64
  %i.ah = sub nuw nsw i32 32, %i.aa
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw i64 %i.ag, %i.ai
  %i.ak = or i64 %i.aj, %.val.i.i121.pre282
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store ptr %i.al, ptr %i.y, align 8, !tbaa !36
  %i.am = or disjoint i32 %i.aa, 32
  br label %bits_read_nz_be.exit

bits_read_nz_be.exit:                             ; preds = %.bits_read_nz_be.exit_crit_edge, %bb.d, %bits_priv_refill_32_be.exit.i
  %.val.i.i121 = phi i64 [ %i.ak, %bits_priv_refill_32_be.exit.i ], [ %.val.i.i121.pre, %.bits_read_nz_be.exit_crit_edge ], [ %.val.i.i121.pre282, %bb.d ] ; 2 uses
  %i.an = phi i32 [ %i.am, %bits_priv_refill_32_be.exit.i ], [ %i.aa, %.bits_read_nz_be.exit_crit_edge ], [ 8, %bb.d ]
  %i.ao = lshr i64 %.val.i.i121, 56
  %i.ap = shl i64 %.val.i.i121, 8
  store i64 %i.ap, ptr %2, align 8, !tbaa !38
  %i.aq = add i32 %i.an, -8
  store i32 %i.aq, ptr %i.j, align 8, !tbaa !37
  %i.ar = trunc nuw i64 %i.ao to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !29
  %i.at = load i32, ptr %i.j, align 8, !tbaa !37  ; 4 uses
  %i.au = icmp ult i32 %i.at, 8
  br i1 %i.au, label %bb.e, label %bits_read_nz_be.exit.bits_read_nz_be.exit126_crit_edge

bits_read_nz_be.exit.bits_read_nz_be.exit126_crit_edge: ; preds = %bits_read_nz_be.exit
  %.val.i.i123.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit126

bb.e:                                             ; preds = %bits_read_nz_be.exit
  %i.av = load ptr, ptr %i.y, align 8, !tbaa !36  ; 3 uses
  %i.aw = load ptr, ptr %i.z, align 8, !tbaa !35
  %.not.i.i124 = icmp ult ptr %i.av, %i.aw
  %.val.i.i123.pre284 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i124, label %bits_priv_refill_32_be.exit.i125, label %bits_read_nz_be.exit126

bits_priv_refill_32_be.exit.i125:                 ; preds = %bb.e
  %i.ax = load i32, ptr %i.av, align 1, !tbaa !29
  %i.ay = tail call i32 @llvm.bswap.i32(i32 %i.ax)
  %i.az = zext i32 %i.ay to i64
  %i.ba = sub nuw nsw i32 32, %i.at
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl nuw i64 %i.az, %i.bb
  %i.bd = or i64 %i.bc, %.val.i.i123.pre284
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store ptr %i.be, ptr %i.y, align 8, !tbaa !36
  %i.bf = or disjoint i32 %i.at, 32
  br label %bits_read_nz_be.exit126

bits_read_nz_be.exit126:                          ; preds = %bits_read_nz_be.exit.bits_read_nz_be.exit126_crit_edge, %bb.e, %bits_priv_refill_32_be.exit.i125
  %.val.i.i123 = phi i64 [ %i.bd, %bits_priv_refill_32_be.exit.i125 ], [ %.val.i.i123.pre, %bits_read_nz_be.exit.bits_read_nz_be.exit126_crit_edge ], [ %.val.i.i123.pre284, %bb.e ] ; 2 uses
  %i.bg = phi i32 [ %i.bf, %bits_priv_refill_32_be.exit.i125 ], [ %i.at, %bits_read_nz_be.exit.bits_read_nz_be.exit126_crit_edge ], [ 8, %bb.e ]
  %i.bh = lshr i64 %.val.i.i123, 56
  %i.bi = shl i64 %.val.i.i123, 8
  store i64 %i.bi, ptr %2, align 8, !tbaa !38
  %i.bj = add i32 %i.bg, -8
  store i32 %i.bj, ptr %i.j, align 8, !tbaa !37
  %i.bk = trunc nuw i64 %i.bh to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !29
  %i.bm = load i32, ptr %i.j, align 8, !tbaa !37  ; 4 uses
  %i.bn = icmp ult i32 %i.bm, 8
  br i1 %i.bn, label %bb.f, label %bits_read_nz_be.exit126.bits_read_nz_be.exit130_crit_edge

bits_read_nz_be.exit126.bits_read_nz_be.exit130_crit_edge: ; preds = %bits_read_nz_be.exit126
  %.val.i.i127.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit130

bb.f:                                             ; preds = %bits_read_nz_be.exit126
  %i.bo = load ptr, ptr %i.y, align 8, !tbaa !36  ; 3 uses
  %i.bp = load ptr, ptr %i.z, align 8, !tbaa !35
  %.not.i.i128 = icmp ult ptr %i.bo, %i.bp
  %.val.i.i127.pre286 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i128, label %bits_priv_refill_32_be.exit.i129, label %bits_read_nz_be.exit130

bits_priv_refill_32_be.exit.i129:                 ; preds = %bb.f
  %i.bq = load i32, ptr %i.bo, align 1, !tbaa !29
  %i.br = tail call i32 @llvm.bswap.i32(i32 %i.bq)
  %i.bs = zext i32 %i.br to i64
  %i.bt = sub nuw nsw i32 32, %i.bm
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = shl nuw i64 %i.bs, %i.bu
  %i.bw = or i64 %i.bv, %.val.i.i127.pre286
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store ptr %i.bx, ptr %i.y, align 8, !tbaa !36
  %i.by = or disjoint i32 %i.bm, 32
  br label %bits_read_nz_be.exit130

bits_read_nz_be.exit130:                          ; preds = %bits_read_nz_be.exit126.bits_read_nz_be.exit130_crit_edge, %bb.f, %bits_priv_refill_32_be.exit.i129
  %.val.i.i127 = phi i64 [ %i.bw, %bits_priv_refill_32_be.exit.i129 ], [ %.val.i.i127.pre, %bits_read_nz_be.exit126.bits_read_nz_be.exit130_crit_edge ], [ %.val.i.i127.pre286, %bb.f ] ; 2 uses
  %i.bz = phi i32 [ %i.by, %bits_priv_refill_32_be.exit.i129 ], [ %i.bm, %bits_read_nz_be.exit126.bits_read_nz_be.exit130_crit_edge ], [ 8, %bb.f ]
  %i.ca = lshr i64 %.val.i.i127, 56
  %i.cb = shl i64 %.val.i.i127, 8
  store i64 %i.cb, ptr %2, align 8, !tbaa !38
  %i.cc = add i32 %i.bz, -8
  store i32 %i.cc, ptr %i.j, align 8, !tbaa !37
  %i.cd = trunc nuw i64 %i.ca to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !29
  %i.cf = load i32, ptr %i.j, align 8, !tbaa !37  ; 4 uses
  %i.cg = icmp ult i32 %i.cf, 8
  br i1 %i.cg, label %bb.g, label %bits_read_nz_be.exit130.bits_read_nz_be.exit134_crit_edge

bits_read_nz_be.exit130.bits_read_nz_be.exit134_crit_edge: ; preds = %bits_read_nz_be.exit130
  %.val.i.i131.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit134

bb.g:                                             ; preds = %bits_read_nz_be.exit130
  %i.ch = load ptr, ptr %i.y, align 8, !tbaa !36  ; 3 uses
  %i.ci = load ptr, ptr %i.z, align 8, !tbaa !35
  %.not.i.i132 = icmp ult ptr %i.ch, %i.ci
  %.val.i.i131.pre288 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i132, label %bits_priv_refill_32_be.exit.i133, label %bits_read_nz_be.exit134

bits_priv_refill_32_be.exit.i133:                 ; preds = %bb.g
  %i.cj = load i32, ptr %i.ch, align 1, !tbaa !29
  %i.ck = tail call i32 @llvm.bswap.i32(i32 %i.cj)
  %i.cl = zext i32 %i.ck to i64
  %i.cm = sub nuw nsw i32 32, %i.cf
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = shl nuw i64 %i.cl, %i.cn
  %i.cp = or i64 %i.co, %.val.i.i131.pre288
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store ptr %i.cq, ptr %i.y, align 8, !tbaa !36
  %i.cr = or disjoint i32 %i.cf, 32
  br label %bits_read_nz_be.exit134

bits_read_nz_be.exit134:                          ; preds = %bits_read_nz_be.exit130.bits_read_nz_be.exit134_crit_edge, %bb.g, %bits_priv_refill_32_be.exit.i133
  %.val.i.i131 = phi i64 [ %i.cp, %bits_priv_refill_32_be.exit.i133 ], [ %.val.i.i131.pre, %bits_read_nz_be.exit130.bits_read_nz_be.exit134_crit_edge ], [ %.val.i.i131.pre288, %bb.g ] ; 2 uses
  %i.cs = phi i32 [ %i.cr, %bits_priv_refill_32_be.exit.i133 ], [ %i.cf, %bits_read_nz_be.exit130.bits_read_nz_be.exit134_crit_edge ], [ 8, %bb.g ]
  %i.ct = lshr i64 %.val.i.i131, 56
  %i.cu = shl i64 %.val.i.i131, 8
  store i64 %i.cu, ptr %2, align 8, !tbaa !38
  %i.cv = add i32 %i.cs, -8
  store i32 %i.cv, ptr %i.j, align 8, !tbaa !37
  %i.cw = trunc nuw i64 %i.ct to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = load i32, ptr %i.v, align 8, !tbaa !32  ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next, %i.cz
  br i1 %i.da, label %bb.c, label %.loopexit242, !llvm.loop !96

bits_read_bit_be.exit.thread:                     ; preds = %bb.b, %bits_read_bit_be.exit
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !32 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph251, label %.loopexit242

.lr.ph251:                                        ; preds = %bits_read_bit_be.exit.thread
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !31
  %.not119 = icmp eq i32 %i.df, 0
  %i.dg = select i1 %.not119, i32 -146, i32 125
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 16 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph251, %bits_read_vlc_be.exit168
  %indvars.iv273 = phi i64 [ 0, %.lr.ph251 ], [ %indvars.iv.next274, %bits_read_vlc_be.exit168 ] ; 5 uses
  %.sroa.08.0250 = phi i32 [ 125, %.lr.ph251 ], [ %i.ma, %bits_read_vlc_be.exit168 ]
  %.sroa.59.0249 = phi i32 [ %i.dg, %.lr.ph251 ], [ %i.md, %bits_read_vlc_be.exit168 ]
  %.sroa.810.0248 = phi i32 [ -128, %.lr.ph251 ], [ %i.mg, %bits_read_vlc_be.exit168 ]
  %.sroa.1111.0247 = phi i32 [ -128, %.lr.ph251 ], [ %i.mj, %bits_read_vlc_be.exit168 ]
  %i.dl = load ptr, ptr %i.dh, align 8, !tbaa !44 ; 6 uses
  %i.dm = load i32, ptr %i.j, align 8, !tbaa !37  ; 5 uses
  %i.dn = icmp ult i32 %i.dm, 12
  br i1 %i.dn, label %bb.i, label %.bits_priv_refill_32_be.exit_crit_edge.i.i.i

.bits_priv_refill_32_be.exit_crit_edge.i.i.i:     ; preds = %bb.h
  %.val.pre.i.i.i = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_peek_be.exit.i

bb.i:                                             ; preds = %bb.h
  %i.do = load ptr, ptr %i.di, align 8, !tbaa !36 ; 3 uses
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !35
  %.not.i.i.i.i = icmp ult ptr %i.do, %i.dp
  %.val.pre4.i.i.i = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.j, label %bits_peek_be.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dq = load i32, ptr %i.do, align 1, !tbaa !29
  %i.dr = tail call i32 @llvm.bswap.i32(i32 %i.dq)
  %i.ds = zext i32 %i.dr to i64
  %i.dt = sub nuw nsw i32 32, %i.dm
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = shl nuw i64 %i.ds, %i.du
  %i.dw = or i64 %i.dv, %.val.pre4.i.i.i          ; 2 uses
  store i64 %i.dw, ptr %2, align 8, !tbaa !38
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store ptr %i.dx, ptr %i.di, align 8, !tbaa !36
  %i.dy = or disjoint i32 %i.dm, 32               ; 2 uses
  store i32 %i.dy, ptr %i.j, align 8, !tbaa !37
  br label %bits_peek_be.exit.i

bits_peek_be.exit.i:                              ; preds = %bb.j, %bb.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i
  %i.dz = phi i32 [ %i.dm, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.dy, %bb.j ], [ %i.dm, %bb.i ] ; 4 uses
  %i.ea = phi i64 [ %.val.pre.i.i.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.dw, %bb.j ], [ %.val.pre4.i.i.i, %bb.i ] ; 3 uses
  %i.eb = lshr i64 %i.ea, 52
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.eb ; 2 uses
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !29
  %i.ee = sext i16 %i.ed to i32                   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !29 ; 2 uses
  %i.eh = sext i16 %i.eg to i32                   ; 3 uses
  %i.ei = icmp slt i16 %i.eg, 0
  br i1 %i.ei, label %bb.k, label %bits_read_vlc_be.exit

bb.k:                                             ; preds = %bits_peek_be.exit.i
  %i.ej = shl i64 %i.ea, 12                       ; 4 uses
  store i64 %i.ej, ptr %2, align 8, !tbaa !38
  %i.ek = add i32 %i.dz, -12                      ; 4 uses
  store i32 %i.ek, ptr %i.j, align 8, !tbaa !37
  %i.el = sub nsw i32 0, %i.eh
  %i.em = icmp ult i32 %i.ek, %i.el
  br i1 %i.em, label %bb.l, label %bits_priv_set_idx_be.exit.i

bb.l:                                             ; preds = %bb.k
  %i.en = load ptr, ptr %i.di, align 8, !tbaa !36 ; 3 uses
  %i.eo = load ptr, ptr %i.dj, align 8, !tbaa !35
  %.not.i.i.i.i.i = icmp ult ptr %i.en, %i.eo
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bits_priv_set_idx_be.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ep = load i32, ptr %i.en, align 1, !tbaa !29
  %i.eq = tail call i32 @llvm.bswap.i32(i32 %i.ep)
  %i.er = zext i32 %i.eq to i64
  %i.es = sub nsw i32 44, %i.dz
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = shl i64 %i.er, %i.et
  %i.ev = or i64 %i.eu, %i.ej                     ; 2 uses
  store i64 %i.ev, ptr %2, align 8, !tbaa !38
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store ptr %i.ew, ptr %i.di, align 8, !tbaa !36
  %i.ex = add nuw nsw i32 %i.dz, 20               ; 2 uses
  store i32 %i.ex, ptr %i.j, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i

bits_priv_set_idx_be.exit.i:                      ; preds = %bb.m, %bb.l, %bb.k
  %i.ey = phi i32 [ %i.ek, %bb.l ], [ %i.ex, %bb.m ], [ %i.ek, %bb.k ]
  %.val.i.i.i.i = phi i64 [ %i.ej, %bb.l ], [ %i.ev, %bb.m ], [ %i.ej, %bb.k ] ; 2 uses
  %i.ez = add nsw i32 %i.eh, 64
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = lshr i64 %.val.i.i.i.i, %i.fa
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = add i32 %i.fc, %i.ee
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.fe ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !29
  %i.fi = sext i16 %i.fh to i32
  %i.fj = load i16, ptr %i.ff, align 2, !tbaa !29
  %i.fk = zext i16 %i.fj to i32
  br label %bits_read_vlc_be.exit

bits_read_vlc_be.exit:                            ; preds = %bits_peek_be.exit.i, %bits_priv_set_idx_be.exit.i
  %i.fl = phi i32 [ %i.ey, %bits_priv_set_idx_be.exit.i ], [ %i.dz, %bits_peek_be.exit.i ]
  %i.fm = phi i64 [ %.val.i.i.i.i, %bits_priv_set_idx_be.exit.i ], [ %i.ea, %bits_peek_be.exit.i ]
  %.023.i = phi i32 [ %i.fi, %bits_priv_set_idx_be.exit.i ], [ %i.eh, %bits_peek_be.exit.i ] ; 2 uses
  %.0.i135 = phi i32 [ %i.fk, %bits_priv_set_idx_be.exit.i ], [ %i.ee, %bits_peek_be.exit.i ]
  %i.fn = zext nneg i32 %.023.i to i64
  %i.fo = shl i64 %i.fm, %i.fn                    ; 4 uses
  store i64 %i.fo, ptr %2, align 8, !tbaa !38
  %i.fp = sub i32 %i.fl, %.023.i                  ; 6 uses
  store i32 %i.fp, ptr %i.j, align 8, !tbaa !37
  %i.fq = load ptr, ptr %i.dk, align 8, !tbaa !44 ; 2 uses
  %i.fr = icmp ult i32 %i.fp, 12
  br i1 %i.fr, label %bb.n, label %bits_peek_be.exit.i138

bb.n:                                             ; preds = %bits_read_vlc_be.exit
  %i.fs = load ptr, ptr %i.di, align 8, !tbaa !36 ; 3 uses
  %i.ft = load ptr, ptr %i.dj, align 8, !tbaa !35
  %.not.i.i.i.i144 = icmp ult ptr %i.fs, %i.ft
  br i1 %.not.i.i.i.i144, label %bb.o, label %bits_peek_be.exit.i138

bb.o:                                             ; preds = %bb.n
  %i.fu = load i32, ptr %i.fs, align 1, !tbaa !29
  %i.fv = tail call i32 @llvm.bswap.i32(i32 %i.fu)
  %i.fw = zext i32 %i.fv to i64
  %i.fx = sub nuw nsw i32 32, %i.fp
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = shl nuw i64 %i.fw, %i.fy
  %i.ga = or i64 %i.fz, %i.fo                     ; 2 uses
  store i64 %i.ga, ptr %2, align 8, !tbaa !38
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store ptr %i.gb, ptr %i.di, align 8, !tbaa !36
  %i.gc = or disjoint i32 %i.fp, 32               ; 2 uses
  store i32 %i.gc, ptr %i.j, align 8, !tbaa !37
  br label %bits_peek_be.exit.i138

bits_peek_be.exit.i138:                           ; preds = %bits_read_vlc_be.exit, %bb.o, %bb.n
  %i.gd = phi i32 [ %i.fp, %bb.n ], [ %i.gc, %bb.o ], [ %i.fp, %bits_read_vlc_be.exit ] ; 4 uses
  %i.ge = phi i64 [ %i.fo, %bb.n ], [ %i.ga, %bb.o ], [ %i.fo, %bits_read_vlc_be.exit ] ; 3 uses
  %i.gf = lshr i64 %i.ge, 52
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.gf ; 2 uses
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !29
  %i.gi = sext i16 %i.gh to i32                   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !29 ; 2 uses
  %i.gl = sext i16 %i.gk to i32                   ; 3 uses
  %i.gm = icmp slt i16 %i.gk, 0
  br i1 %i.gm, label %bb.p, label %bits_read_vlc_be.exit146

bb.p:                                             ; preds = %bits_peek_be.exit.i138
  %i.gn = shl i64 %i.ge, 12                       ; 4 uses
  store i64 %i.gn, ptr %2, align 8, !tbaa !38
  %i.go = add i32 %i.gd, -12                      ; 4 uses
  store i32 %i.go, ptr %i.j, align 8, !tbaa !37
  %i.gp = sub nsw i32 0, %i.gl
  %i.gq = icmp ult i32 %i.go, %i.gp
  br i1 %i.gq, label %bb.q, label %bits_priv_set_idx_be.exit.i141

bb.q:                                             ; preds = %bb.p
  %i.gr = load ptr, ptr %i.di, align 8, !tbaa !36 ; 3 uses
  %i.gs = load ptr, ptr %i.dj, align 8, !tbaa !35
  %.not.i.i.i.i.i143 = icmp ult ptr %i.gr, %i.gs
  br i1 %.not.i.i.i.i.i143, label %bb.r, label %bits_priv_set_idx_be.exit.i141

bb.r:                                             ; preds = %bb.q
  %i.gt = load i32, ptr %i.gr, align 1, !tbaa !29
  %i.gu = tail call i32 @llvm.bswap.i32(i32 %i.gt)
  %i.gv = zext i32 %i.gu to i64
  %i.gw = sub nsw i32 44, %i.gd
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = shl i64 %i.gv, %i.gx
  %i.gz = or i64 %i.gy, %i.gn                     ; 2 uses
  store i64 %i.gz, ptr %2, align 8, !tbaa !38
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  store ptr %i.ha, ptr %i.di, align 8, !tbaa !36
  %i.hb = add nuw nsw i32 %i.gd, 20               ; 2 uses
  store i32 %i.hb, ptr %i.j, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i141

bits_priv_set_idx_be.exit.i141:                   ; preds = %bb.r, %bb.q, %bb.p
  %i.hc = phi i32 [ %i.go, %bb.q ], [ %i.hb, %bb.r ], [ %i.go, %bb.p ]
  %.val.i.i.i.i142 = phi i64 [ %i.gn, %bb.q ], [ %i.gz, %bb.r ], [ %i.gn, %bb.p ] ; 2 uses
  %i.hd = add nsw i32 %i.gl, 64
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = lshr i64 %.val.i.i.i.i142, %i.he
  %i.hg = trunc i64 %i.hf to i32
  %i.hh = add i32 %i.hg, %i.gi
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.hi ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 2
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !29
  %i.hm = sext i16 %i.hl to i32
  %i.hn = load i16, ptr %i.hj, align 2, !tbaa !29
  %i.ho = zext i16 %i.hn to i32
  br label %bits_read_vlc_be.exit146

bits_read_vlc_be.exit146:                         ; preds = %bits_peek_be.exit.i138, %bits_priv_set_idx_be.exit.i141
  %i.hp = phi i32 [ %i.hc, %bits_priv_set_idx_be.exit.i141 ], [ %i.gd, %bits_peek_be.exit.i138 ]
  %i.hq = phi i64 [ %.val.i.i.i.i142, %bits_priv_set_idx_be.exit.i141 ], [ %i.ge, %bits_peek_be.exit.i138 ]
  %.023.i139 = phi i32 [ %i.hm, %bits_priv_set_idx_be.exit.i141 ], [ %i.gl, %bits_peek_be.exit.i138 ] ; 2 uses
  %.0.i140 = phi i32 [ %i.ho, %bits_priv_set_idx_be.exit.i141 ], [ %i.gi, %bits_peek_be.exit.i138 ]
  %i.hr = zext nneg i32 %.023.i139 to i64
  %i.hs = shl i64 %i.hq, %i.hr                    ; 4 uses
  store i64 %i.hs, ptr %2, align 8, !tbaa !38
  %i.ht = sub i32 %i.hp, %.023.i139               ; 6 uses
  store i32 %i.ht, ptr %i.j, align 8, !tbaa !37
  %i.hu = icmp ult i32 %i.ht, 12
  br i1 %i.hu, label %bb.s, label %bits_peek_be.exit.i149

bb.s:                                             ; preds = %bits_read_vlc_be.exit146
end_hunk_5
begin_hunk_6_@decode_aybri:bb.a
; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @decode_ybr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 42 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !37   ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.val.i.pre.i = load i64, ptr %2, align 8, !tbaa !38
  %i.j = add i32 %i.i, -1
  br label %bits_read_bit_be.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %.not.i.i = icmp ult ptr %i.l, %i.n
  br i1 %.not.i.i, label %bits_priv_refill_64_be.exit.i, label %bits_read_bit_be.exit.thread

bits_priv_refill_64_be.exit.i:                    ; preds = %bb.b
  %i.o = load i64, ptr %i.l, align 1, !tbaa !29
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.q, ptr %i.k, align 8, !tbaa !36
  br label %bits_read_bit_be.exit

bits_read_bit_be.exit:                            ; preds = %._crit_edge.i, %bits_priv_refill_64_be.exit.i
  %i.r = phi i32 [ %i.j, %._crit_edge.i ], [ 63, %bits_priv_refill_64_be.exit.i ]
  %.val.i.i = phi i64 [ %.val.i.pre.i, %._crit_edge.i ], [ %i.p, %bits_priv_refill_64_be.exit.i ] ; 2 uses
  %i.s = shl i64 %.val.i.i, 1
  store i64 %i.s, ptr %2, align 8, !tbaa !38
  store i32 %i.r, ptr %i.h, align 8, !tbaa !37
  %.not = icmp sgt i64 %.val.i.i, -1
  br i1 %.not, label %bits_read_bit_be.exit.thread, label %.preheader209

.preheader209:                                    ; preds = %bits_read_bit_be.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !32   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %.loopexit208

.lr.ph:                                           ; preds = %.preheader209
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bits_read_nz_be.exit126
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bits_read_nz_be.exit126 ] ; 4 uses
  %i.y = load i32, ptr %i.h, align 8, !tbaa !37   ; 4 uses
  %i.z = icmp ult i32 %i.y, 8
  br i1 %i.z, label %bb.d, label %.bits_read_nz_be.exit_crit_edge

.bits_read_nz_be.exit_crit_edge:                  ; preds = %bb.c
  %.val.i.i117.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !36  ; 3 uses
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !35
  %.not.i.i118 = icmp ult ptr %i.aa, %i.ab
  %.val.i.i117.pre247 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i118, label %bits_priv_refill_32_be.exit.i, label %bits_read_nz_be.exit

bits_priv_refill_32_be.exit.i:                    ; preds = %bb.d
  %i.ac = load i32, ptr %i.aa, align 1, !tbaa !29
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ac)
  %i.ae = zext i32 %i.ad to i64
  %i.af = sub nuw nsw i32 32, %i.y
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw i64 %i.ae, %i.ag
  %i.ai = or i64 %i.ah, %.val.i.i117.pre247
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store ptr %i.aj, ptr %i.w, align 8, !tbaa !36
  %i.ak = or disjoint i32 %i.y, 32
  br label %bits_read_nz_be.exit

bits_read_nz_be.exit:                             ; preds = %.bits_read_nz_be.exit_crit_edge, %bb.d, %bits_priv_refill_32_be.exit.i
  %.val.i.i117 = phi i64 [ %i.ai, %bits_priv_refill_32_be.exit.i ], [ %.val.i.i117.pre, %.bits_read_nz_be.exit_crit_edge ], [ %.val.i.i117.pre247, %bb.d ] ; 2 uses
  %i.al = phi i32 [ %i.ak, %bits_priv_refill_32_be.exit.i ], [ %i.y, %.bits_read_nz_be.exit_crit_edge ], [ 8, %bb.d ]
  %i.am = lshr i64 %.val.i.i117, 56
  %i.an = shl i64 %.val.i.i117, 8
  store i64 %i.an, ptr %2, align 8, !tbaa !38
  %i.ao = add i32 %i.al, -8
  store i32 %i.ao, ptr %i.h, align 8, !tbaa !37
  %i.ap = trunc nuw i64 %i.am to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !29
  %i.ar = load i32, ptr %i.h, align 8, !tbaa !37  ; 4 uses
  %i.as = icmp ult i32 %i.ar, 8
  br i1 %i.as, label %bb.e, label %bits_read_nz_be.exit.bits_read_nz_be.exit122_crit_edge

bits_read_nz_be.exit.bits_read_nz_be.exit122_crit_edge: ; preds = %bits_read_nz_be.exit
  %.val.i.i119.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit122

bb.e:                                             ; preds = %bits_read_nz_be.exit
  %i.at = load ptr, ptr %i.w, align 8, !tbaa !36  ; 3 uses
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !35
  %.not.i.i120 = icmp ult ptr %i.at, %i.au
  %.val.i.i119.pre249 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i120, label %bits_priv_refill_32_be.exit.i121, label %bits_read_nz_be.exit122

bits_priv_refill_32_be.exit.i121:                 ; preds = %bb.e
  %i.av = load i32, ptr %i.at, align 1, !tbaa !29
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.av)
  %i.ax = zext i32 %i.aw to i64
  %i.ay = sub nuw nsw i32 32, %i.ar
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl nuw i64 %i.ax, %i.az
  %i.bb = or i64 %i.ba, %.val.i.i119.pre249
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store ptr %i.bc, ptr %i.w, align 8, !tbaa !36
  %i.bd = or disjoint i32 %i.ar, 32
  br label %bits_read_nz_be.exit122

bits_read_nz_be.exit122:                          ; preds = %bits_read_nz_be.exit.bits_read_nz_be.exit122_crit_edge, %bb.e, %bits_priv_refill_32_be.exit.i121
  %.val.i.i119 = phi i64 [ %i.bb, %bits_priv_refill_32_be.exit.i121 ], [ %.val.i.i119.pre, %bits_read_nz_be.exit.bits_read_nz_be.exit122_crit_edge ], [ %.val.i.i119.pre249, %bb.e ] ; 2 uses
  %i.be = phi i32 [ %i.bd, %bits_priv_refill_32_be.exit.i121 ], [ %i.ar, %bits_read_nz_be.exit.bits_read_nz_be.exit122_crit_edge ], [ 8, %bb.e ]
  %i.bf = lshr i64 %.val.i.i119, 56
  %i.bg = shl i64 %.val.i.i119, 8
  store i64 %i.bg, ptr %2, align 8, !tbaa !38
  %i.bh = add i32 %i.be, -8
  store i32 %i.bh, ptr %i.h, align 8, !tbaa !37
  %i.bi = trunc nuw i64 %i.bf to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !29
  %i.bk = load i32, ptr %i.h, align 8, !tbaa !37  ; 4 uses
  %i.bl = icmp ult i32 %i.bk, 8
  br i1 %i.bl, label %bb.f, label %bits_read_nz_be.exit122.bits_read_nz_be.exit126_crit_edge

bits_read_nz_be.exit122.bits_read_nz_be.exit126_crit_edge: ; preds = %bits_read_nz_be.exit122
  %.val.i.i123.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit126

bb.f:                                             ; preds = %bits_read_nz_be.exit122
  %i.bm = load ptr, ptr %i.w, align 8, !tbaa !36  ; 3 uses
  %i.bn = load ptr, ptr %i.x, align 8, !tbaa !35
  %.not.i.i124 = icmp ult ptr %i.bm, %i.bn
  %.val.i.i123.pre251 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i124, label %bits_priv_refill_32_be.exit.i125, label %bits_read_nz_be.exit126

bits_priv_refill_32_be.exit.i125:                 ; preds = %bb.f
  %i.bo = load i32, ptr %i.bm, align 1, !tbaa !29
  %i.bp = tail call i32 @llvm.bswap.i32(i32 %i.bo)
  %i.bq = zext i32 %i.bp to i64
  %i.br = sub nuw nsw i32 32, %i.bk
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl nuw i64 %i.bq, %i.bs
  %i.bu = or i64 %i.bt, %.val.i.i123.pre251
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store ptr %i.bv, ptr %i.w, align 8, !tbaa !36
  %i.bw = or disjoint i32 %i.bk, 32
  br label %bits_read_nz_be.exit126

bits_read_nz_be.exit126:                          ; preds = %bits_read_nz_be.exit122.bits_read_nz_be.exit126_crit_edge, %bb.f, %bits_priv_refill_32_be.exit.i125
  %.val.i.i123 = phi i64 [ %i.bu, %bits_priv_refill_32_be.exit.i125 ], [ %.val.i.i123.pre, %bits_read_nz_be.exit122.bits_read_nz_be.exit126_crit_edge ], [ %.val.i.i123.pre251, %bb.f ] ; 2 uses
  %i.bx = phi i32 [ %i.bw, %bits_priv_refill_32_be.exit.i125 ], [ %i.bk, %bits_read_nz_be.exit122.bits_read_nz_be.exit126_crit_edge ], [ 8, %bb.f ]
  %i.by = lshr i64 %.val.i.i123, 56
  %i.bz = shl i64 %.val.i.i123, 8
  store i64 %i.bz, ptr %2, align 8, !tbaa !38
  %i.ca = add i32 %i.bx, -8
  store i32 %i.ca, ptr %i.h, align 8, !tbaa !37
  %i.cb = trunc nuw i64 %i.by to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cd = load i32, ptr %i.t, align 8, !tbaa !32  ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %indvars.iv.next, %i.ce
  br i1 %i.cf, label %bb.c, label %.loopexit208, !llvm.loop !101

bits_read_bit_be.exit.thread:                     ; preds = %bb.b, %bits_read_bit_be.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !32 ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph216, label %.loopexit208

.lr.ph216:                                        ; preds = %bits_read_bit_be.exit.thread
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !31
  %.not115 = icmp eq i32 %i.ck, 0
  %i.cl = select i1 %.not115, i32 -146, i32 125
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 12 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph216, %bits_read_vlc_be.exit149
  %indvars.iv238 = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next239, %bits_read_vlc_be.exit149 ] ; 4 uses
  %.sroa.017.0214 = phi i32 [ %i.cl, %.lr.ph216 ], [ %i.jc, %bits_read_vlc_be.exit149 ]
  %.sroa.518.0213 = phi i32 [ -128, %.lr.ph216 ], [ %i.jf, %bits_read_vlc_be.exit149 ]
  %.sroa.819.0212 = phi i32 [ -128, %.lr.ph216 ], [ %i.ji, %bits_read_vlc_be.exit149 ]
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !44 ; 2 uses
  %i.cr = load i32, ptr %i.h, align 8, !tbaa !37  ; 5 uses
  %i.cs = icmp ult i32 %i.cr, 12
  br i1 %i.cs, label %bb.h, label %.bits_priv_refill_32_be.exit_crit_edge.i.i.i

.bits_priv_refill_32_be.exit_crit_edge.i.i.i:     ; preds = %bb.g
  %.val.pre.i.i.i = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_peek_be.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !36 ; 3 uses
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !35
  %.not.i.i.i.i = icmp ult ptr %i.ct, %i.cu
  %.val.pre4.i.i.i = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.i, label %bits_peek_be.exit.i

bb.i:                                             ; preds = %bb.h
  %i.cv = load i32, ptr %i.ct, align 1, !tbaa !29
  %i.cw = tail call i32 @llvm.bswap.i32(i32 %i.cv)
  %i.cx = zext i32 %i.cw to i64
  %i.cy = sub nuw nsw i32 32, %i.cr
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = shl nuw i64 %i.cx, %i.cz
  %i.db = or i64 %i.da, %.val.pre4.i.i.i          ; 2 uses
  store i64 %i.db, ptr %2, align 8, !tbaa !38
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store ptr %i.dc, ptr %i.cn, align 8, !tbaa !36
  %i.dd = or disjoint i32 %i.cr, 32               ; 2 uses
  store i32 %i.dd, ptr %i.h, align 8, !tbaa !37
  br label %bits_peek_be.exit.i

bits_peek_be.exit.i:                              ; preds = %bb.i, %bb.h, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i
  %i.de = phi i32 [ %i.cr, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.dd, %bb.i ], [ %i.cr, %bb.h ] ; 4 uses
  %i.df = phi i64 [ %.val.pre.i.i.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.db, %bb.i ], [ %.val.pre4.i.i.i, %bb.h ] ; 3 uses
  %i.dg = lshr i64 %i.df, 52
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dg ; 2 uses
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !29
  %i.dj = sext i16 %i.di to i32                   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !29 ; 2 uses
  %i.dm = sext i16 %i.dl to i32                   ; 3 uses
  %i.dn = icmp slt i16 %i.dl, 0
  br i1 %i.dn, label %bb.j, label %bits_read_vlc_be.exit

bb.j:                                             ; preds = %bits_peek_be.exit.i
  %i.do = shl i64 %i.df, 12                       ; 4 uses
  store i64 %i.do, ptr %2, align 8, !tbaa !38
  %i.dp = add i32 %i.de, -12                      ; 4 uses
  store i32 %i.dp, ptr %i.h, align 8, !tbaa !37
  %i.dq = sub nsw i32 0, %i.dm
  %i.dr = icmp ult i32 %i.dp, %i.dq
  br i1 %i.dr, label %bb.k, label %bits_priv_set_idx_be.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ds = load ptr, ptr %i.cn, align 8, !tbaa !36 ; 3 uses
  %i.dt = load ptr, ptr %i.co, align 8, !tbaa !35
  %.not.i.i.i.i.i = icmp ult ptr %i.ds, %i.dt
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bits_priv_set_idx_be.exit.i

bb.l:                                             ; preds = %bb.k
  %i.du = load i32, ptr %i.ds, align 1, !tbaa !29
  %i.dv = tail call i32 @llvm.bswap.i32(i32 %i.du)
  %i.dw = zext i32 %i.dv to i64
  %i.dx = sub nsw i32 44, %i.de
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = shl i64 %i.dw, %i.dy
  %i.ea = or i64 %i.dz, %i.do                     ; 2 uses
  store i64 %i.ea, ptr %2, align 8, !tbaa !38
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store ptr %i.eb, ptr %i.cn, align 8, !tbaa !36
  %i.ec = add nuw nsw i32 %i.de, 20               ; 2 uses
  store i32 %i.ec, ptr %i.h, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i

bits_priv_set_idx_be.exit.i:                      ; preds = %bb.l, %bb.k, %bb.j
  %i.ed = phi i32 [ %i.dp, %bb.k ], [ %i.ec, %bb.l ], [ %i.dp, %bb.j ]
  %.val.i.i.i.i = phi i64 [ %i.do, %bb.k ], [ %i.ea, %bb.l ], [ %i.do, %bb.j ] ; 2 uses
  %i.ee = add nsw i32 %i.dm, 64
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = lshr i64 %.val.i.i.i.i, %i.ef
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = add i32 %i.eh, %i.dj
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  %i.em = load i16, ptr %i.el, align 2, !tbaa !29
  %i.en = sext i16 %i.em to i32
  %i.eo = load i16, ptr %i.ek, align 2, !tbaa !29
  %i.ep = zext i16 %i.eo to i32
  br label %bits_read_vlc_be.exit

bits_read_vlc_be.exit:                            ; preds = %bits_peek_be.exit.i, %bits_priv_set_idx_be.exit.i
  %i.eq = phi i32 [ %i.ed, %bits_priv_set_idx_be.exit.i ], [ %i.de, %bits_peek_be.exit.i ]
  %i.er = phi i64 [ %.val.i.i.i.i, %bits_priv_set_idx_be.exit.i ], [ %i.df, %bits_peek_be.exit.i ]
  %.023.i = phi i32 [ %i.en, %bits_priv_set_idx_be.exit.i ], [ %i.dm, %bits_peek_be.exit.i ] ; 2 uses
  %.0.i127 = phi i32 [ %i.ep, %bits_priv_set_idx_be.exit.i ], [ %i.dj, %bits_peek_be.exit.i ]
  %i.es = zext nneg i32 %.023.i to i64
  %i.et = shl i64 %i.er, %i.es                    ; 4 uses
  store i64 %i.et, ptr %2, align 8, !tbaa !38
  %i.eu = sub i32 %i.eq, %.023.i                  ; 6 uses
  store i32 %i.eu, ptr %i.h, align 8, !tbaa !37
  %i.ev = load ptr, ptr %i.cp, align 8, !tbaa !44 ; 4 uses
  %i.ew = icmp ult i32 %i.eu, 12
  br i1 %i.ew, label %bb.m, label %bits_peek_be.exit.i130

bb.m:                                             ; preds = %bits_read_vlc_be.exit
  %i.ex = load ptr, ptr %i.cn, align 8, !tbaa !36 ; 3 uses
  %i.ey = load ptr, ptr %i.co, align 8, !tbaa !35
  %.not.i.i.i.i136 = icmp ult ptr %i.ex, %i.ey
  br i1 %.not.i.i.i.i136, label %bb.n, label %bits_peek_be.exit.i130

bb.n:                                             ; preds = %bb.m
  %i.ez = load i32, ptr %i.ex, align 1, !tbaa !29
  %i.fa = tail call i32 @llvm.bswap.i32(i32 %i.ez)
  %i.fb = zext i32 %i.fa to i64
  %i.fc = sub nuw nsw i32 32, %i.eu
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = shl nuw i64 %i.fb, %i.fd
  %i.ff = or i64 %i.fe, %i.et                     ; 2 uses
  store i64 %i.ff, ptr %2, align 8, !tbaa !38
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store ptr %i.fg, ptr %i.cn, align 8, !tbaa !36
  %i.fh = or disjoint i32 %i.eu, 32               ; 2 uses
  store i32 %i.fh, ptr %i.h, align 8, !tbaa !37
  br label %bits_peek_be.exit.i130

bits_peek_be.exit.i130:                           ; preds = %bits_read_vlc_be.exit, %bb.n, %bb.m
  %i.fi = phi i32 [ %i.eu, %bb.m ], [ %i.fh, %bb.n ], [ %i.eu, %bits_read_vlc_be.exit ] ; 4 uses
  %i.fj = phi i64 [ %i.et, %bb.m ], [ %i.ff, %bb.n ], [ %i.et, %bits_read_vlc_be.exit ] ; 3 uses
  %i.fk = lshr i64 %i.fj, 52
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fk ; 2 uses
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !29
  %i.fn = sext i16 %i.fm to i32                   ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !29 ; 2 uses
  %i.fq = sext i16 %i.fp to i32                   ; 3 uses
  %i.fr = icmp slt i16 %i.fp, 0
  br i1 %i.fr, label %bb.o, label %bits_read_vlc_be.exit138

bb.o:                                             ; preds = %bits_peek_be.exit.i130
  %i.fs = shl i64 %i.fj, 12                       ; 4 uses
  store i64 %i.fs, ptr %2, align 8, !tbaa !38
  %i.ft = add i32 %i.fi, -12                      ; 4 uses
  store i32 %i.ft, ptr %i.h, align 8, !tbaa !37
  %i.fu = sub nsw i32 0, %i.fq
  %i.fv = icmp ult i32 %i.ft, %i.fu
  br i1 %i.fv, label %bb.p, label %bits_priv_set_idx_be.exit.i133

bb.p:                                             ; preds = %bb.o
  %i.fw = load ptr, ptr %i.cn, align 8, !tbaa !36 ; 3 uses
  %i.fx = load ptr, ptr %i.co, align 8, !tbaa !35
  %.not.i.i.i.i.i135 = icmp ult ptr %i.fw, %i.fx
  br i1 %.not.i.i.i.i.i135, label %bb.q, label %bits_priv_set_idx_be.exit.i133

bb.q:                                             ; preds = %bb.p
  %i.fy = load i32, ptr %i.fw, align 1, !tbaa !29
  %i.fz = tail call i32 @llvm.bswap.i32(i32 %i.fy)
  %i.ga = zext i32 %i.fz to i64
  %i.gb = sub nsw i32 44, %i.fi
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = shl i64 %i.ga, %i.gc
  %i.ge = or i64 %i.gd, %i.fs                     ; 2 uses
  store i64 %i.ge, ptr %2, align 8, !tbaa !38
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store ptr %i.gf, ptr %i.cn, align 8, !tbaa !36
  %i.gg = add nuw nsw i32 %i.fi, 20               ; 2 uses
  store i32 %i.gg, ptr %i.h, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i133

bits_priv_set_idx_be.exit.i133:                   ; preds = %bb.q, %bb.p, %bb.o
  %i.gh = phi i32 [ %i.ft, %bb.p ], [ %i.gg, %bb.q ], [ %i.ft, %bb.o ]
  %.val.i.i.i.i134 = phi i64 [ %i.fs, %bb.p ], [ %i.ge, %bb.q ], [ %i.fs, %bb.o ] ; 2 uses
  %i.gi = add nsw i32 %i.fq, 64
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = lshr i64 %.val.i.i.i.i134, %i.gj
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = add i32 %i.gl, %i.fn
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !29
  %i.gr = sext i16 %i.gq to i32
  %i.gs = load i16, ptr %i.go, align 2, !tbaa !29
  %i.gt = zext i16 %i.gs to i32
  br label %bits_read_vlc_be.exit138

bits_read_vlc_be.exit138:                         ; preds = %bits_peek_be.exit.i130, %bits_priv_set_idx_be.exit.i133
  %i.gu = phi i32 [ %i.gh, %bits_priv_set_idx_be.exit.i133 ], [ %i.fi, %bits_peek_be.exit.i130 ]
  %i.gv = phi i64 [ %.val.i.i.i.i134, %bits_priv_set_idx_be.exit.i133 ], [ %i.fj, %bits_peek_be.exit.i130 ]
  %.023.i131 = phi i32 [ %i.gr, %bits_priv_set_idx_be.exit.i133 ], [ %i.fq, %bits_peek_be.exit.i130 ] ; 2 uses
  %.0.i132 = phi i32 [ %i.gt, %bits_priv_set_idx_be.exit.i133 ], [ %i.fn, %bits_peek_be.exit.i130 ]
  %i.gw = zext nneg i32 %.023.i131 to i64
  %i.gx = shl i64 %i.gv, %i.gw                    ; 4 uses
  store i64 %i.gx, ptr %2, align 8, !tbaa !38
  %i.gy = sub i32 %i.gu, %.023.i131               ; 6 uses
  store i32 %i.gy, ptr %i.h, align 8, !tbaa !37
  %i.gz = icmp ult i32 %i.gy, 12
  br i1 %i.gz, label %bb.r, label %bits_peek_be.exit.i141

bb.r:                                             ; preds = %bits_read_vlc_be.exit138
end_hunk_6
begin_hunk_7_@decode_ybr:bb.a
; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @decode_ybri(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !40     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 42 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !37   ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.b, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a
  %.val.i.pre.i = load i64, ptr %2, align 8, !tbaa !38
  %i.j = add i32 %i.i, -1
  br label %bits_read_bit_be.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %.not.i.i = icmp ult ptr %i.l, %i.n
  br i1 %.not.i.i, label %bits_priv_refill_64_be.exit.i, label %bits_read_bit_be.exit.thread

bits_priv_refill_64_be.exit.i:                    ; preds = %bb.b
  %i.o = load i64, ptr %i.l, align 1, !tbaa !29
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.q, ptr %i.k, align 8, !tbaa !36
  br label %bits_read_bit_be.exit

bits_read_bit_be.exit:                            ; preds = %._crit_edge.i, %bits_priv_refill_64_be.exit.i
  %i.r = phi i32 [ %i.j, %._crit_edge.i ], [ 63, %bits_priv_refill_64_be.exit.i ]
  %.val.i.i = phi i64 [ %.val.i.pre.i, %._crit_edge.i ], [ %i.p, %bits_priv_refill_64_be.exit.i ] ; 2 uses
  %i.s = shl i64 %.val.i.i, 1
  store i64 %i.s, ptr %2, align 8, !tbaa !38
  store i32 %i.r, ptr %i.h, align 8, !tbaa !37
  %.not = icmp sgt i64 %.val.i.i, -1
  br i1 %.not, label %bits_read_bit_be.exit.thread, label %.preheader189

.preheader189:                                    ; preds = %bits_read_bit_be.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !32   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph, label %.loopexit188

.lr.ph:                                           ; preds = %.preheader189
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bits_read_nz_be.exit106
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bits_read_nz_be.exit106 ] ; 4 uses
  %i.y = load i32, ptr %i.h, align 8, !tbaa !37   ; 4 uses
  %i.z = icmp ult i32 %i.y, 8
  br i1 %i.z, label %bb.d, label %.bits_read_nz_be.exit_crit_edge

.bits_read_nz_be.exit_crit_edge:                  ; preds = %bb.c
  %.val.i.i97.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !36  ; 3 uses
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !35
  %.not.i.i98 = icmp ult ptr %i.aa, %i.ab
  %.val.i.i97.pre224 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i98, label %bits_priv_refill_32_be.exit.i, label %bits_read_nz_be.exit

bits_priv_refill_32_be.exit.i:                    ; preds = %bb.d
  %i.ac = load i32, ptr %i.aa, align 1, !tbaa !29
  %i.ad = tail call i32 @llvm.bswap.i32(i32 %i.ac)
  %i.ae = zext i32 %i.ad to i64
  %i.af = sub nuw nsw i32 32, %i.y
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw i64 %i.ae, %i.ag
  %i.ai = or i64 %i.ah, %.val.i.i97.pre224
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store ptr %i.aj, ptr %i.w, align 8, !tbaa !36
  %i.ak = or disjoint i32 %i.y, 32
  br label %bits_read_nz_be.exit

bits_read_nz_be.exit:                             ; preds = %.bits_read_nz_be.exit_crit_edge, %bb.d, %bits_priv_refill_32_be.exit.i
  %.val.i.i97 = phi i64 [ %i.ai, %bits_priv_refill_32_be.exit.i ], [ %.val.i.i97.pre, %.bits_read_nz_be.exit_crit_edge ], [ %.val.i.i97.pre224, %bb.d ] ; 2 uses
  %i.al = phi i32 [ %i.ak, %bits_priv_refill_32_be.exit.i ], [ %i.y, %.bits_read_nz_be.exit_crit_edge ], [ 8, %bb.d ]
  %i.am = lshr i64 %.val.i.i97, 56
  %i.an = shl i64 %.val.i.i97, 8
  store i64 %i.an, ptr %2, align 8, !tbaa !38
  %i.ao = add i32 %i.al, -8
  store i32 %i.ao, ptr %i.h, align 8, !tbaa !37
  %i.ap = trunc nuw i64 %i.am to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !29
  %i.ar = load i32, ptr %i.h, align 8, !tbaa !37  ; 4 uses
  %i.as = icmp ult i32 %i.ar, 8
  br i1 %i.as, label %bb.e, label %bits_read_nz_be.exit.bits_read_nz_be.exit102_crit_edge

bits_read_nz_be.exit.bits_read_nz_be.exit102_crit_edge: ; preds = %bits_read_nz_be.exit
  %.val.i.i99.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit102

bb.e:                                             ; preds = %bits_read_nz_be.exit
  %i.at = load ptr, ptr %i.w, align 8, !tbaa !36  ; 3 uses
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !35
  %.not.i.i100 = icmp ult ptr %i.at, %i.au
  %.val.i.i99.pre226 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i100, label %bits_priv_refill_32_be.exit.i101, label %bits_read_nz_be.exit102

bits_priv_refill_32_be.exit.i101:                 ; preds = %bb.e
  %i.av = load i32, ptr %i.at, align 1, !tbaa !29
  %i.aw = tail call i32 @llvm.bswap.i32(i32 %i.av)
  %i.ax = zext i32 %i.aw to i64
  %i.ay = sub nuw nsw i32 32, %i.ar
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl nuw i64 %i.ax, %i.az
  %i.bb = or i64 %i.ba, %.val.i.i99.pre226
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store ptr %i.bc, ptr %i.w, align 8, !tbaa !36
  %i.bd = or disjoint i32 %i.ar, 32
  br label %bits_read_nz_be.exit102

bits_read_nz_be.exit102:                          ; preds = %bits_read_nz_be.exit.bits_read_nz_be.exit102_crit_edge, %bb.e, %bits_priv_refill_32_be.exit.i101
  %.val.i.i99 = phi i64 [ %i.bb, %bits_priv_refill_32_be.exit.i101 ], [ %.val.i.i99.pre, %bits_read_nz_be.exit.bits_read_nz_be.exit102_crit_edge ], [ %.val.i.i99.pre226, %bb.e ] ; 2 uses
  %i.be = phi i32 [ %i.bd, %bits_priv_refill_32_be.exit.i101 ], [ %i.ar, %bits_read_nz_be.exit.bits_read_nz_be.exit102_crit_edge ], [ 8, %bb.e ]
  %i.bf = lshr i64 %.val.i.i99, 56
  %i.bg = shl i64 %.val.i.i99, 8
  store i64 %i.bg, ptr %2, align 8, !tbaa !38
  %i.bh = add i32 %i.be, -8
  store i32 %i.bh, ptr %i.h, align 8, !tbaa !37
  %i.bi = trunc nuw i64 %i.bf to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !29
  %i.bk = load i32, ptr %i.h, align 8, !tbaa !37  ; 4 uses
  %i.bl = icmp ult i32 %i.bk, 8
  br i1 %i.bl, label %bb.f, label %bits_read_nz_be.exit102.bits_read_nz_be.exit106_crit_edge

bits_read_nz_be.exit102.bits_read_nz_be.exit106_crit_edge: ; preds = %bits_read_nz_be.exit102
  %.val.i.i103.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit106

bb.f:                                             ; preds = %bits_read_nz_be.exit102
  %i.bm = load ptr, ptr %i.w, align 8, !tbaa !36  ; 3 uses
  %i.bn = load ptr, ptr %i.x, align 8, !tbaa !35
  %.not.i.i104 = icmp ult ptr %i.bm, %i.bn
  %.val.i.i103.pre228 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i104, label %bits_priv_refill_32_be.exit.i105, label %bits_read_nz_be.exit106

bits_priv_refill_32_be.exit.i105:                 ; preds = %bb.f
  %i.bo = load i32, ptr %i.bm, align 1, !tbaa !29
  %i.bp = tail call i32 @llvm.bswap.i32(i32 %i.bo)
  %i.bq = zext i32 %i.bp to i64
  %i.br = sub nuw nsw i32 32, %i.bk
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl nuw i64 %i.bq, %i.bs
  %i.bu = or i64 %i.bt, %.val.i.i103.pre228
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store ptr %i.bv, ptr %i.w, align 8, !tbaa !36
  %i.bw = or disjoint i32 %i.bk, 32
  br label %bits_read_nz_be.exit106

bits_read_nz_be.exit106:                          ; preds = %bits_read_nz_be.exit102.bits_read_nz_be.exit106_crit_edge, %bb.f, %bits_priv_refill_32_be.exit.i105
  %.val.i.i103 = phi i64 [ %i.bu, %bits_priv_refill_32_be.exit.i105 ], [ %.val.i.i103.pre, %bits_read_nz_be.exit102.bits_read_nz_be.exit106_crit_edge ], [ %.val.i.i103.pre228, %bb.f ] ; 2 uses
  %i.bx = phi i32 [ %i.bw, %bits_priv_refill_32_be.exit.i105 ], [ %i.bk, %bits_read_nz_be.exit102.bits_read_nz_be.exit106_crit_edge ], [ 8, %bb.f ]
  %i.by = lshr i64 %.val.i.i103, 56
  %i.bz = shl i64 %.val.i.i103, 8
  store i64 %i.bz, ptr %2, align 8, !tbaa !38
  %i.ca = add i32 %i.bx, -8
  store i32 %i.ca, ptr %i.h, align 8, !tbaa !37
  %i.cb = trunc nuw i64 %i.by to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cd = load i32, ptr %i.t, align 8, !tbaa !32  ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = icmp slt i64 %indvars.iv.next, %i.ce
  br i1 %i.cf, label %bb.c, label %.loopexit188, !llvm.loop !106

bits_read_bit_be.exit.thread:                     ; preds = %bb.b, %bits_read_bit_be.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !32 ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph196, label %.loopexit188

.lr.ph196:                                        ; preds = %bits_read_bit_be.exit.thread
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !31
  %.not95 = icmp eq i32 %i.ck, 0
  %i.cl = select i1 %.not95, i32 -146, i32 125
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 12 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph196, %bits_read_vlc_be.exit129
  %indvars.iv215 = phi i64 [ 0, %.lr.ph196 ], [ %indvars.iv.next216, %bits_read_vlc_be.exit129 ] ; 4 uses
  %.sroa.06.0195 = phi i32 [ %i.cl, %.lr.ph196 ], [ %i.jc, %bits_read_vlc_be.exit129 ]
  %.sroa.57.0194 = phi i32 [ -128, %.lr.ph196 ], [ %i.jf, %bits_read_vlc_be.exit129 ]
  %.sroa.88.0193 = phi i32 [ -128, %.lr.ph196 ], [ %i.ji, %bits_read_vlc_be.exit129 ]
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !44 ; 2 uses
  %i.cr = load i32, ptr %i.h, align 8, !tbaa !37  ; 5 uses
  %i.cs = icmp ult i32 %i.cr, 12
  br i1 %i.cs, label %bb.h, label %.bits_priv_refill_32_be.exit_crit_edge.i.i.i

.bits_priv_refill_32_be.exit_crit_edge.i.i.i:     ; preds = %bb.g
  %.val.pre.i.i.i = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_peek_be.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !36 ; 3 uses
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !35
  %.not.i.i.i.i = icmp ult ptr %i.ct, %i.cu
  %.val.pre4.i.i.i = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.i, label %bits_peek_be.exit.i

bb.i:                                             ; preds = %bb.h
  %i.cv = load i32, ptr %i.ct, align 1, !tbaa !29
  %i.cw = tail call i32 @llvm.bswap.i32(i32 %i.cv)
  %i.cx = zext i32 %i.cw to i64
  %i.cy = sub nuw nsw i32 32, %i.cr
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = shl nuw i64 %i.cx, %i.cz
  %i.db = or i64 %i.da, %.val.pre4.i.i.i          ; 2 uses
  store i64 %i.db, ptr %2, align 8, !tbaa !38
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store ptr %i.dc, ptr %i.cn, align 8, !tbaa !36
  %i.dd = or disjoint i32 %i.cr, 32               ; 2 uses
  store i32 %i.dd, ptr %i.h, align 8, !tbaa !37
  br label %bits_peek_be.exit.i

bits_peek_be.exit.i:                              ; preds = %bb.i, %bb.h, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i
  %i.de = phi i32 [ %i.cr, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.dd, %bb.i ], [ %i.cr, %bb.h ] ; 4 uses
  %i.df = phi i64 [ %.val.pre.i.i.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.db, %bb.i ], [ %.val.pre4.i.i.i, %bb.h ] ; 3 uses
  %i.dg = lshr i64 %i.df, 52
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dg ; 2 uses
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !29
  %i.dj = sext i16 %i.di to i32                   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !29 ; 2 uses
  %i.dm = sext i16 %i.dl to i32                   ; 3 uses
  %i.dn = icmp slt i16 %i.dl, 0
  br i1 %i.dn, label %bb.j, label %bits_read_vlc_be.exit

bb.j:                                             ; preds = %bits_peek_be.exit.i
  %i.do = shl i64 %i.df, 12                       ; 4 uses
  store i64 %i.do, ptr %2, align 8, !tbaa !38
  %i.dp = add i32 %i.de, -12                      ; 4 uses
  store i32 %i.dp, ptr %i.h, align 8, !tbaa !37
  %i.dq = sub nsw i32 0, %i.dm
  %i.dr = icmp ult i32 %i.dp, %i.dq
  br i1 %i.dr, label %bb.k, label %bits_priv_set_idx_be.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ds = load ptr, ptr %i.cn, align 8, !tbaa !36 ; 3 uses
  %i.dt = load ptr, ptr %i.co, align 8, !tbaa !35
  %.not.i.i.i.i.i = icmp ult ptr %i.ds, %i.dt
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bits_priv_set_idx_be.exit.i

bb.l:                                             ; preds = %bb.k
  %i.du = load i32, ptr %i.ds, align 1, !tbaa !29
  %i.dv = tail call i32 @llvm.bswap.i32(i32 %i.du)
  %i.dw = zext i32 %i.dv to i64
  %i.dx = sub nsw i32 44, %i.de
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = shl i64 %i.dw, %i.dy
  %i.ea = or i64 %i.dz, %i.do                     ; 2 uses
  store i64 %i.ea, ptr %2, align 8, !tbaa !38
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store ptr %i.eb, ptr %i.cn, align 8, !tbaa !36
  %i.ec = add nuw nsw i32 %i.de, 20               ; 2 uses
  store i32 %i.ec, ptr %i.h, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i

bits_priv_set_idx_be.exit.i:                      ; preds = %bb.l, %bb.k, %bb.j
  %i.ed = phi i32 [ %i.dp, %bb.k ], [ %i.ec, %bb.l ], [ %i.dp, %bb.j ]
  %.val.i.i.i.i = phi i64 [ %i.do, %bb.k ], [ %i.ea, %bb.l ], [ %i.do, %bb.j ] ; 2 uses
  %i.ee = add nsw i32 %i.dm, 64
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = lshr i64 %.val.i.i.i.i, %i.ef
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = add i32 %i.eh, %i.dj
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  %i.em = load i16, ptr %i.el, align 2, !tbaa !29
  %i.en = sext i16 %i.em to i32
  %i.eo = load i16, ptr %i.ek, align 2, !tbaa !29
  %i.ep = zext i16 %i.eo to i32
  br label %bits_read_vlc_be.exit

bits_read_vlc_be.exit:                            ; preds = %bits_peek_be.exit.i, %bits_priv_set_idx_be.exit.i
  %i.eq = phi i32 [ %i.ed, %bits_priv_set_idx_be.exit.i ], [ %i.de, %bits_peek_be.exit.i ]
  %i.er = phi i64 [ %.val.i.i.i.i, %bits_priv_set_idx_be.exit.i ], [ %i.df, %bits_peek_be.exit.i ]
  %.023.i = phi i32 [ %i.en, %bits_priv_set_idx_be.exit.i ], [ %i.dm, %bits_peek_be.exit.i ] ; 2 uses
  %.0.i107 = phi i32 [ %i.ep, %bits_priv_set_idx_be.exit.i ], [ %i.dj, %bits_peek_be.exit.i ]
  %i.es = zext nneg i32 %.023.i to i64
  %i.et = shl i64 %i.er, %i.es                    ; 4 uses
  store i64 %i.et, ptr %2, align 8, !tbaa !38
  %i.eu = sub i32 %i.eq, %.023.i                  ; 6 uses
  store i32 %i.eu, ptr %i.h, align 8, !tbaa !37
  %i.ev = load ptr, ptr %i.cp, align 8, !tbaa !44 ; 4 uses
  %i.ew = icmp ult i32 %i.eu, 12
  br i1 %i.ew, label %bb.m, label %bits_peek_be.exit.i110

bb.m:                                             ; preds = %bits_read_vlc_be.exit
  %i.ex = load ptr, ptr %i.cn, align 8, !tbaa !36 ; 3 uses
  %i.ey = load ptr, ptr %i.co, align 8, !tbaa !35
  %.not.i.i.i.i116 = icmp ult ptr %i.ex, %i.ey
  br i1 %.not.i.i.i.i116, label %bb.n, label %bits_peek_be.exit.i110

bb.n:                                             ; preds = %bb.m
  %i.ez = load i32, ptr %i.ex, align 1, !tbaa !29
  %i.fa = tail call i32 @llvm.bswap.i32(i32 %i.ez)
  %i.fb = zext i32 %i.fa to i64
  %i.fc = sub nuw nsw i32 32, %i.eu
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = shl nuw i64 %i.fb, %i.fd
  %i.ff = or i64 %i.fe, %i.et                     ; 2 uses
  store i64 %i.ff, ptr %2, align 8, !tbaa !38
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store ptr %i.fg, ptr %i.cn, align 8, !tbaa !36
  %i.fh = or disjoint i32 %i.eu, 32               ; 2 uses
  store i32 %i.fh, ptr %i.h, align 8, !tbaa !37
  br label %bits_peek_be.exit.i110

bits_peek_be.exit.i110:                           ; preds = %bits_read_vlc_be.exit, %bb.n, %bb.m
  %i.fi = phi i32 [ %i.eu, %bb.m ], [ %i.fh, %bb.n ], [ %i.eu, %bits_read_vlc_be.exit ] ; 4 uses
  %i.fj = phi i64 [ %i.et, %bb.m ], [ %i.ff, %bb.n ], [ %i.et, %bits_read_vlc_be.exit ] ; 3 uses
  %i.fk = lshr i64 %i.fj, 52
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fk ; 2 uses
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !29
  %i.fn = sext i16 %i.fm to i32                   ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !29 ; 2 uses
  %i.fq = sext i16 %i.fp to i32                   ; 3 uses
  %i.fr = icmp slt i16 %i.fp, 0
  br i1 %i.fr, label %bb.o, label %bits_read_vlc_be.exit118

bb.o:                                             ; preds = %bits_peek_be.exit.i110
  %i.fs = shl i64 %i.fj, 12                       ; 4 uses
  store i64 %i.fs, ptr %2, align 8, !tbaa !38
  %i.ft = add i32 %i.fi, -12                      ; 4 uses
  store i32 %i.ft, ptr %i.h, align 8, !tbaa !37
  %i.fu = sub nsw i32 0, %i.fq
  %i.fv = icmp ult i32 %i.ft, %i.fu
  br i1 %i.fv, label %bb.p, label %bits_priv_set_idx_be.exit.i113

bb.p:                                             ; preds = %bb.o
  %i.fw = load ptr, ptr %i.cn, align 8, !tbaa !36 ; 3 uses
  %i.fx = load ptr, ptr %i.co, align 8, !tbaa !35
  %.not.i.i.i.i.i115 = icmp ult ptr %i.fw, %i.fx
  br i1 %.not.i.i.i.i.i115, label %bb.q, label %bits_priv_set_idx_be.exit.i113

bb.q:                                             ; preds = %bb.p
  %i.fy = load i32, ptr %i.fw, align 1, !tbaa !29
  %i.fz = tail call i32 @llvm.bswap.i32(i32 %i.fy)
  %i.ga = zext i32 %i.fz to i64
  %i.gb = sub nsw i32 44, %i.fi
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = shl i64 %i.ga, %i.gc
  %i.ge = or i64 %i.gd, %i.fs                     ; 2 uses
  store i64 %i.ge, ptr %2, align 8, !tbaa !38
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store ptr %i.gf, ptr %i.cn, align 8, !tbaa !36
  %i.gg = add nuw nsw i32 %i.fi, 20               ; 2 uses
  store i32 %i.gg, ptr %i.h, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i113

bits_priv_set_idx_be.exit.i113:                   ; preds = %bb.q, %bb.p, %bb.o
  %i.gh = phi i32 [ %i.ft, %bb.p ], [ %i.gg, %bb.q ], [ %i.ft, %bb.o ]
  %.val.i.i.i.i114 = phi i64 [ %i.fs, %bb.p ], [ %i.ge, %bb.q ], [ %i.fs, %bb.o ] ; 2 uses
  %i.gi = add nsw i32 %i.fq, 64
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = lshr i64 %.val.i.i.i.i114, %i.gj
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = add i32 %i.gl, %i.fn
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !29
  %i.gr = sext i16 %i.gq to i32
  %i.gs = load i16, ptr %i.go, align 2, !tbaa !29
  %i.gt = zext i16 %i.gs to i32
  br label %bits_read_vlc_be.exit118

bits_read_vlc_be.exit118:                         ; preds = %bits_peek_be.exit.i110, %bits_priv_set_idx_be.exit.i113
  %i.gu = phi i32 [ %i.gh, %bits_priv_set_idx_be.exit.i113 ], [ %i.fi, %bits_peek_be.exit.i110 ]
  %i.gv = phi i64 [ %.val.i.i.i.i114, %bits_priv_set_idx_be.exit.i113 ], [ %i.fj, %bits_peek_be.exit.i110 ]
  %.023.i111 = phi i32 [ %i.gr, %bits_priv_set_idx_be.exit.i113 ], [ %i.fq, %bits_peek_be.exit.i110 ] ; 2 uses
  %.0.i112 = phi i32 [ %i.gt, %bits_priv_set_idx_be.exit.i113 ], [ %i.fn, %bits_peek_be.exit.i110 ]
  %i.gw = zext nneg i32 %.023.i111 to i64
  %i.gx = shl i64 %i.gv, %i.gw                    ; 4 uses
  store i64 %i.gx, ptr %2, align 8, !tbaa !38
  %i.gy = sub i32 %i.gu, %.023.i111               ; 6 uses
  store i32 %i.gy, ptr %i.h, align 8, !tbaa !37
  %i.gz = icmp ult i32 %i.gy, 12
  br i1 %i.gz, label %bb.r, label %bits_peek_be.exit.i121

bb.r:                                             ; preds = %bits_read_vlc_be.exit118
end_hunk_7
begin_hunk_8_@decode_byry:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 16 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.h

bits_priv_refill_64_be.exit.i:                    ; preds = %bb.b
  %i.v = load i64, ptr %i.l, align 1, !tbaa !29
  %i.w = tail call noundef i64 @llvm.bswap.i64(i64 %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.x, ptr %i.k, align 8, !tbaa !36
  br label %bits_read_bit_be.exit

bits_read_bit_be.exit:                            ; preds = %bits_priv_refill_64_be.exit.i, %._crit_edge.i
  %i.y = phi i32 [ %i.j, %._crit_edge.i ], [ 63, %bits_priv_refill_64_be.exit.i ]
  %.val.i.i = phi i64 [ %.val.i.pre.i, %._crit_edge.i ], [ %i.w, %bits_priv_refill_64_be.exit.i ] ; 2 uses
  %i.z = shl i64 %.val.i.i, 1
  store i64 %i.z, ptr %2, align 8, !tbaa !38
  store i32 %i.y, ptr %i.h, align 8, !tbaa !37
  %i.aa = icmp sgt i64 %.val.i.i, -1
  br i1 %i.aa, label %.critedge.preheader, label %.preheader253

.preheader253:                                    ; preds = %bits_read_bit_be.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %.loopexit252

.lr.ph:                                           ; preds = %.preheader253
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bits_read_nz_be.exit146
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bits_read_nz_be.exit146 ] ; 3 uses
  %i.ag = load i32, ptr %i.h, align 8, !tbaa !37  ; 4 uses
  %i.ah = icmp ult i32 %i.ag, 8
  br i1 %i.ah, label %bb.d, label %.bits_read_nz_be.exit_crit_edge

.bits_read_nz_be.exit_crit_edge:                  ; preds = %bb.c
  %.val.i.i133.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 3 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !35
  %.not.i.i134 = icmp ult ptr %i.ai, %i.aj
  %.val.i.i133.pre291 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i134, label %bits_priv_refill_32_be.exit.i, label %bits_read_nz_be.exit

bits_priv_refill_32_be.exit.i:                    ; preds = %bb.d
  %i.ak = load i32, ptr %i.ai, align 1, !tbaa !29
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = zext i32 %i.al to i64
  %i.an = sub nuw nsw i32 32, %i.ag
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = shl nuw i64 %i.am, %i.ao
  %i.aq = or i64 %i.ap, %.val.i.i133.pre291
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store ptr %i.ar, ptr %i.ae, align 8, !tbaa !36
  %i.as = or disjoint i32 %i.ag, 32
  br label %bits_read_nz_be.exit

bits_read_nz_be.exit:                             ; preds = %.bits_read_nz_be.exit_crit_edge, %bb.d, %bits_priv_refill_32_be.exit.i
  %.val.i.i133 = phi i64 [ %i.aq, %bits_priv_refill_32_be.exit.i ], [ %.val.i.i133.pre, %.bits_read_nz_be.exit_crit_edge ], [ %.val.i.i133.pre291, %bb.d ] ; 2 uses
  %i.at = phi i32 [ %i.as, %bits_priv_refill_32_be.exit.i ], [ %i.ag, %.bits_read_nz_be.exit_crit_edge ], [ 8, %bb.d ]
  %i.au = lshr i64 %.val.i.i133, 56
  %i.av = shl i64 %.val.i.i133, 8
  store i64 %i.av, ptr %2, align 8, !tbaa !38
  %i.aw = add i32 %i.at, -8
  store i32 %i.aw, ptr %i.h, align 8, !tbaa !37
  %i.ax = trunc nuw i64 %i.au to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv ; 2 uses
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !29
  %i.az = load i32, ptr %i.h, align 8, !tbaa !37  ; 4 uses
  %i.ba = icmp ult i32 %i.az, 8
  br i1 %i.ba, label %bb.e, label %bits_read_nz_be.exit.bits_read_nz_be.exit138_crit_edge

bits_read_nz_be.exit.bits_read_nz_be.exit138_crit_edge: ; preds = %bits_read_nz_be.exit
  %.val.i.i135.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit138

bb.e:                                             ; preds = %bits_read_nz_be.exit
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 3 uses
  %i.bc = load ptr, ptr %i.af, align 8, !tbaa !35
  %.not.i.i136 = icmp ult ptr %i.bb, %i.bc
  %.val.i.i135.pre293 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i136, label %bits_priv_refill_32_be.exit.i137, label %bits_read_nz_be.exit138

bits_priv_refill_32_be.exit.i137:                 ; preds = %bb.e
  %i.bd = load i32, ptr %i.bb, align 1, !tbaa !29
  %i.be = tail call i32 @llvm.bswap.i32(i32 %i.bd)
  %i.bf = zext i32 %i.be to i64
  %i.bg = sub nuw nsw i32 32, %i.az
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw i64 %i.bf, %i.bh
  %i.bj = or i64 %i.bi, %.val.i.i135.pre293
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store ptr %i.bk, ptr %i.ae, align 8, !tbaa !36
  %i.bl = or disjoint i32 %i.az, 32
  br label %bits_read_nz_be.exit138

bits_read_nz_be.exit138:                          ; preds = %bits_read_nz_be.exit.bits_read_nz_be.exit138_crit_edge, %bb.e, %bits_priv_refill_32_be.exit.i137
  %.val.i.i135 = phi i64 [ %i.bj, %bits_priv_refill_32_be.exit.i137 ], [ %.val.i.i135.pre, %bits_read_nz_be.exit.bits_read_nz_be.exit138_crit_edge ], [ %.val.i.i135.pre293, %bb.e ] ; 2 uses
  %i.bm = phi i32 [ %i.bl, %bits_priv_refill_32_be.exit.i137 ], [ %i.az, %bits_read_nz_be.exit.bits_read_nz_be.exit138_crit_edge ], [ 8, %bb.e ]
  %i.bn = lshr i64 %.val.i.i135, 56
  %i.bo = shl i64 %.val.i.i135, 8
  store i64 %i.bo, ptr %2, align 8, !tbaa !38
  %i.bp = add i32 %i.bm, -8
  store i32 %i.bp, ptr %i.h, align 8, !tbaa !37
  %i.bq = trunc nuw i64 %i.bn to i8
  %i.br = lshr exact i64 %indvars.iv, 1           ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.br
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !29
  %i.bt = load i32, ptr %i.h, align 8, !tbaa !37  ; 4 uses
  %i.bu = icmp ult i32 %i.bt, 8
  br i1 %i.bu, label %bb.f, label %bits_read_nz_be.exit138.bits_read_nz_be.exit142_crit_edge

bits_read_nz_be.exit138.bits_read_nz_be.exit142_crit_edge: ; preds = %bits_read_nz_be.exit138
  %.val.i.i139.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit142

bb.f:                                             ; preds = %bits_read_nz_be.exit138
  %i.bv = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 3 uses
  %i.bw = load ptr, ptr %i.af, align 8, !tbaa !35
  %.not.i.i140 = icmp ult ptr %i.bv, %i.bw
  %.val.i.i139.pre295 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i140, label %bits_priv_refill_32_be.exit.i141, label %bits_read_nz_be.exit142

bits_priv_refill_32_be.exit.i141:                 ; preds = %bb.f
  %i.bx = load i32, ptr %i.bv, align 1, !tbaa !29
  %i.by = tail call i32 @llvm.bswap.i32(i32 %i.bx)
  %i.bz = zext i32 %i.by to i64
  %i.ca = sub nuw nsw i32 32, %i.bt
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl nuw i64 %i.bz, %i.cb
  %i.cd = or i64 %i.cc, %.val.i.i139.pre295
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store ptr %i.ce, ptr %i.ae, align 8, !tbaa !36
  %i.cf = or disjoint i32 %i.bt, 32
  br label %bits_read_nz_be.exit142

bits_read_nz_be.exit142:                          ; preds = %bits_read_nz_be.exit138.bits_read_nz_be.exit142_crit_edge, %bb.f, %bits_priv_refill_32_be.exit.i141
  %.val.i.i139 = phi i64 [ %i.cd, %bits_priv_refill_32_be.exit.i141 ], [ %.val.i.i139.pre, %bits_read_nz_be.exit138.bits_read_nz_be.exit142_crit_edge ], [ %.val.i.i139.pre295, %bb.f ] ; 2 uses
  %i.cg = phi i32 [ %i.cf, %bits_priv_refill_32_be.exit.i141 ], [ %i.bt, %bits_read_nz_be.exit138.bits_read_nz_be.exit142_crit_edge ], [ 8, %bb.f ]
  %i.ch = lshr i64 %.val.i.i139, 56
  %i.ci = shl i64 %.val.i.i139, 8
  store i64 %i.ci, ptr %2, align 8, !tbaa !38
  %i.cj = add i32 %i.cg, -8
  store i32 %i.cj, ptr %i.h, align 8, !tbaa !37
  %i.ck = trunc nuw i64 %i.ch to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !29
  %i.cm = load i32, ptr %i.h, align 8, !tbaa !37  ; 4 uses
  %i.cn = icmp ult i32 %i.cm, 8
  br i1 %i.cn, label %bb.g, label %bits_read_nz_be.exit142.bits_read_nz_be.exit146_crit_edge

bits_read_nz_be.exit142.bits_read_nz_be.exit146_crit_edge: ; preds = %bits_read_nz_be.exit142
  %.val.i.i143.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit146

bb.g:                                             ; preds = %bits_read_nz_be.exit142
  %i.co = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 3 uses
  %i.cp = load ptr, ptr %i.af, align 8, !tbaa !35
  %.not.i.i144 = icmp ult ptr %i.co, %i.cp
  %.val.i.i143.pre297 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i144, label %bits_priv_refill_32_be.exit.i145, label %bits_read_nz_be.exit146

bits_priv_refill_32_be.exit.i145:                 ; preds = %bb.g
  %i.cq = load i32, ptr %i.co, align 1, !tbaa !29
  %i.cr = tail call i32 @llvm.bswap.i32(i32 %i.cq)
  %i.cs = zext i32 %i.cr to i64
  %i.ct = sub nuw nsw i32 32, %i.cm
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = shl nuw i64 %i.cs, %i.cu
  %i.cw = or i64 %i.cv, %.val.i.i143.pre297
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store ptr %i.cx, ptr %i.ae, align 8, !tbaa !36
  %i.cy = or disjoint i32 %i.cm, 32
  br label %bits_read_nz_be.exit146

bits_read_nz_be.exit146:                          ; preds = %bits_read_nz_be.exit142.bits_read_nz_be.exit146_crit_edge, %bb.g, %bits_priv_refill_32_be.exit.i145
  %.val.i.i143 = phi i64 [ %i.cw, %bits_priv_refill_32_be.exit.i145 ], [ %.val.i.i143.pre, %bits_read_nz_be.exit142.bits_read_nz_be.exit146_crit_edge ], [ %.val.i.i143.pre297, %bb.g ] ; 2 uses
  %i.cz = phi i32 [ %i.cy, %bits_priv_refill_32_be.exit.i145 ], [ %i.cm, %bits_read_nz_be.exit142.bits_read_nz_be.exit146_crit_edge ], [ 8, %bb.g ]
  %i.da = lshr i64 %.val.i.i143, 56
  %i.db = shl i64 %.val.i.i143, 8
  store i64 %i.db, ptr %2, align 8, !tbaa !38
  %i.dc = add i32 %i.cz, -8
  store i32 %i.dc, ptr %i.h, align 8, !tbaa !37
  %i.dd = trunc nuw i64 %i.da to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.br
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.df = load i32, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %bb.c, label %.loopexit252, !llvm.loop !127

bb.h:                                             ; preds = %.lr.ph260, %bits_read_vlc_be.exit180
  %indvars.iv282 = phi i64 [ 0, %.lr.ph260 ], [ %indvars.iv.next283, %bits_read_vlc_be.exit180 ] ; 3 uses
  %.sroa.018.0258 = phi i32 [ 125, %.lr.ph260 ], [ %i.me, %bits_read_vlc_be.exit180 ]
  %.sroa.720.0257 = phi i32 [ -128, %.lr.ph260 ], [ %i.ma, %bits_read_vlc_be.exit180 ]
  %.sroa.9.0256 = phi i32 [ -128, %.lr.ph260 ], [ %i.mh, %bits_read_vlc_be.exit180 ]
  %i.di = load ptr, ptr %i.r, align 8, !tbaa !44  ; 4 uses
  %i.dj = load i32, ptr %i.h, align 8, !tbaa !37  ; 5 uses
  %i.dk = icmp ult i32 %i.dj, 12
  br i1 %i.dk, label %bb.i, label %.bits_priv_refill_32_be.exit_crit_edge.i.i.i

.bits_priv_refill_32_be.exit_crit_edge.i.i.i:     ; preds = %bb.h
  %.val.pre.i.i.i = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_peek_be.exit.i

bb.i:                                             ; preds = %bb.h
  %i.dl = load ptr, ptr %i.s, align 8, !tbaa !36  ; 3 uses
  %i.dm = load ptr, ptr %i.t, align 8, !tbaa !35
  %.not.i.i.i.i = icmp ult ptr %i.dl, %i.dm
  %.val.pre4.i.i.i = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.j, label %bits_peek_be.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dn = load i32, ptr %i.dl, align 1, !tbaa !29
  %i.do = tail call i32 @llvm.bswap.i32(i32 %i.dn)
  %i.dp = zext i32 %i.do to i64
  %i.dq = sub nuw nsw i32 32, %i.dj
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = shl nuw i64 %i.dp, %i.dr
  %i.dt = or i64 %i.ds, %.val.pre4.i.i.i          ; 2 uses
  store i64 %i.dt, ptr %2, align 8, !tbaa !38
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store ptr %i.du, ptr %i.s, align 8, !tbaa !36
  %i.dv = or disjoint i32 %i.dj, 32               ; 2 uses
  store i32 %i.dv, ptr %i.h, align 8, !tbaa !37
  br label %bits_peek_be.exit.i

bits_peek_be.exit.i:                              ; preds = %bb.j, %bb.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i
  %i.dw = phi i32 [ %i.dj, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.dv, %bb.j ], [ %i.dj, %bb.i ] ; 4 uses
  %i.dx = phi i64 [ %.val.pre.i.i.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.dt, %bb.j ], [ %.val.pre4.i.i.i, %bb.i ] ; 3 uses
  %i.dy = lshr i64 %i.dx, 52
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dy ; 2 uses
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !29
  %i.eb = sext i16 %i.ea to i32                   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !29 ; 2 uses
  %i.ee = sext i16 %i.ed to i32                   ; 3 uses
  %i.ef = icmp slt i16 %i.ed, 0
  br i1 %i.ef, label %bb.k, label %bits_read_vlc_be.exit

bb.k:                                             ; preds = %bits_peek_be.exit.i
  %i.eg = shl i64 %i.dx, 12                       ; 4 uses
  store i64 %i.eg, ptr %2, align 8, !tbaa !38
  %i.eh = add i32 %i.dw, -12                      ; 4 uses
  store i32 %i.eh, ptr %i.h, align 8, !tbaa !37
  %i.ei = sub nsw i32 0, %i.ee
  %i.ej = icmp ult i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.l, label %bits_priv_set_idx_be.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ek = load ptr, ptr %i.s, align 8, !tbaa !36  ; 3 uses
  %i.el = load ptr, ptr %i.t, align 8, !tbaa !35
  %.not.i.i.i.i.i = icmp ult ptr %i.ek, %i.el
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bits_priv_set_idx_be.exit.i

bb.m:                                             ; preds = %bb.l
  %i.em = load i32, ptr %i.ek, align 1, !tbaa !29
  %i.en = tail call i32 @llvm.bswap.i32(i32 %i.em)
  %i.eo = zext i32 %i.en to i64
  %i.ep = sub nsw i32 44, %i.dw
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = shl i64 %i.eo, %i.eq
  %i.es = or i64 %i.er, %i.eg                     ; 2 uses
  store i64 %i.es, ptr %2, align 8, !tbaa !38
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store ptr %i.et, ptr %i.s, align 8, !tbaa !36
  %i.eu = add nuw nsw i32 %i.dw, 20               ; 2 uses
  store i32 %i.eu, ptr %i.h, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i

bits_priv_set_idx_be.exit.i:                      ; preds = %bb.m, %bb.l, %bb.k
  %i.ev = phi i32 [ %i.eh, %bb.l ], [ %i.eu, %bb.m ], [ %i.eh, %bb.k ]
  %.val.i.i.i.i = phi i64 [ %i.eg, %bb.l ], [ %i.es, %bb.m ], [ %i.eg, %bb.k ] ; 2 uses
  %i.ew = add nsw i32 %i.ee, 64
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = lshr i64 %.val.i.i.i.i, %i.ex
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = add i32 %i.ez, %i.eb
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !29
  %i.ff = sext i16 %i.fe to i32
  %i.fg = load i16, ptr %i.fc, align 2, !tbaa !29
  %i.fh = zext i16 %i.fg to i32
  br label %bits_read_vlc_be.exit

bits_read_vlc_be.exit:                            ; preds = %bits_peek_be.exit.i, %bits_priv_set_idx_be.exit.i
  %i.fi = phi i32 [ %i.ev, %bits_priv_set_idx_be.exit.i ], [ %i.dw, %bits_peek_be.exit.i ]
  %i.fj = phi i64 [ %.val.i.i.i.i, %bits_priv_set_idx_be.exit.i ], [ %i.dx, %bits_peek_be.exit.i ]
  %.023.i = phi i32 [ %i.ff, %bits_priv_set_idx_be.exit.i ], [ %i.ee, %bits_peek_be.exit.i ] ; 2 uses
  %.0.i147 = phi i32 [ %i.fh, %bits_priv_set_idx_be.exit.i ], [ %i.eb, %bits_peek_be.exit.i ]
  %i.fk = zext nneg i32 %.023.i to i64
  %i.fl = shl i64 %i.fj, %i.fk                    ; 4 uses
  store i64 %i.fl, ptr %2, align 8, !tbaa !38
  %i.fm = sub i32 %i.fi, %.023.i                  ; 6 uses
  store i32 %i.fm, ptr %i.h, align 8, !tbaa !37
  %i.fn = load ptr, ptr %i.u, align 8, !tbaa !44  ; 4 uses
  %i.fo = icmp ult i32 %i.fm, 12
  br i1 %i.fo, label %bb.n, label %bits_peek_be.exit.i150

bb.n:                                             ; preds = %bits_read_vlc_be.exit
  %i.fp = load ptr, ptr %i.s, align 8, !tbaa !36  ; 3 uses
  %i.fq = load ptr, ptr %i.t, align 8, !tbaa !35
  %.not.i.i.i.i156 = icmp ult ptr %i.fp, %i.fq
  br i1 %.not.i.i.i.i156, label %bb.o, label %bits_peek_be.exit.i150

bb.o:                                             ; preds = %bb.n
  %i.fr = load i32, ptr %i.fp, align 1, !tbaa !29
  %i.fs = tail call i32 @llvm.bswap.i32(i32 %i.fr)
  %i.ft = zext i32 %i.fs to i64
  %i.fu = sub nuw nsw i32 32, %i.fm
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = shl nuw i64 %i.ft, %i.fv
  %i.fx = or i64 %i.fw, %i.fl                     ; 2 uses
  store i64 %i.fx, ptr %2, align 8, !tbaa !38
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store ptr %i.fy, ptr %i.s, align 8, !tbaa !36
  %i.fz = or disjoint i32 %i.fm, 32               ; 2 uses
  store i32 %i.fz, ptr %i.h, align 8, !tbaa !37
  br label %bits_peek_be.exit.i150

bits_peek_be.exit.i150:                           ; preds = %bits_read_vlc_be.exit, %bb.o, %bb.n
  %i.ga = phi i32 [ %i.fm, %bb.n ], [ %i.fz, %bb.o ], [ %i.fm, %bits_read_vlc_be.exit ] ; 4 uses
  %i.gb = phi i64 [ %i.fl, %bb.n ], [ %i.fx, %bb.o ], [ %i.fl, %bits_read_vlc_be.exit ] ; 3 uses
  %i.gc = lshr i64 %i.gb, 52
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.gc ; 2 uses
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !29
  %i.gf = sext i16 %i.ge to i32                   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !29 ; 2 uses
  %i.gi = sext i16 %i.gh to i32                   ; 3 uses
  %i.gj = icmp slt i16 %i.gh, 0
  br i1 %i.gj, label %bb.p, label %bits_read_vlc_be.exit158

bb.p:                                             ; preds = %bits_peek_be.exit.i150
  %i.gk = shl i64 %i.gb, 12                       ; 4 uses
  store i64 %i.gk, ptr %2, align 8, !tbaa !38
  %i.gl = add i32 %i.ga, -12                      ; 4 uses
  store i32 %i.gl, ptr %i.h, align 8, !tbaa !37
  %i.gm = sub nsw i32 0, %i.gi
  %i.gn = icmp ult i32 %i.gl, %i.gm
  br i1 %i.gn, label %bb.q, label %bits_priv_set_idx_be.exit.i153

bb.q:                                             ; preds = %bb.p
  %i.go = load ptr, ptr %i.s, align 8, !tbaa !36  ; 3 uses
  %i.gp = load ptr, ptr %i.t, align 8, !tbaa !35
  %.not.i.i.i.i.i155 = icmp ult ptr %i.go, %i.gp
  br i1 %.not.i.i.i.i.i155, label %bb.r, label %bits_priv_set_idx_be.exit.i153

bb.r:                                             ; preds = %bb.q
  %i.gq = load i32, ptr %i.go, align 1, !tbaa !29
  %i.gr = tail call i32 @llvm.bswap.i32(i32 %i.gq)
  %i.gs = zext i32 %i.gr to i64
  %i.gt = sub nsw i32 44, %i.ga
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = shl i64 %i.gs, %i.gu
  %i.gw = or i64 %i.gv, %i.gk                     ; 2 uses
  store i64 %i.gw, ptr %2, align 8, !tbaa !38
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store ptr %i.gx, ptr %i.s, align 8, !tbaa !36
  %i.gy = add nuw nsw i32 %i.ga, 20               ; 2 uses
  store i32 %i.gy, ptr %i.h, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i153

bits_priv_set_idx_be.exit.i153:                   ; preds = %bb.r, %bb.q, %bb.p
  %i.gz = phi i32 [ %i.gl, %bb.q ], [ %i.gy, %bb.r ], [ %i.gl, %bb.p ]
  %.val.i.i.i.i154 = phi i64 [ %i.gk, %bb.q ], [ %i.gw, %bb.r ], [ %i.gk, %bb.p ] ; 2 uses
  %i.ha = add nsw i32 %i.gi, 64
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = lshr i64 %.val.i.i.i.i154, %i.hb
  %i.hd = trunc i64 %i.hc to i32
  %i.he = add i32 %i.hd, %i.gf
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.hf ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 2
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !29
  %i.hj = sext i16 %i.hi to i32
  %i.hk = load i16, ptr %i.hg, align 2, !tbaa !29
  %i.hl = zext i16 %i.hk to i32
  br label %bits_read_vlc_be.exit158

bits_read_vlc_be.exit158:                         ; preds = %bits_peek_be.exit.i150, %bits_priv_set_idx_be.exit.i153
  %i.hm = phi i32 [ %i.gz, %bits_priv_set_idx_be.exit.i153 ], [ %i.ga, %bits_peek_be.exit.i150 ]
  %i.hn = phi i64 [ %.val.i.i.i.i154, %bits_priv_set_idx_be.exit.i153 ], [ %i.gb, %bits_peek_be.exit.i150 ]
  %.023.i151 = phi i32 [ %i.hj, %bits_priv_set_idx_be.exit.i153 ], [ %i.gi, %bits_peek_be.exit.i150 ] ; 2 uses
  %.0.i152 = phi i32 [ %i.hl, %bits_priv_set_idx_be.exit.i153 ], [ %i.gf, %bits_peek_be.exit.i150 ]
  %i.ho = zext nneg i32 %.023.i151 to i64
  %i.hp = shl i64 %i.hn, %i.ho                    ; 4 uses
  store i64 %i.hp, ptr %2, align 8, !tbaa !38
  %i.hq = sub i32 %i.hm, %.023.i151               ; 6 uses
  store i32 %i.hq, ptr %i.h, align 8, !tbaa !37
  %i.hr = icmp ult i32 %i.hq, 12
  br i1 %i.hr, label %bb.s, label %bits_peek_be.exit.i161

bb.s:                                             ; preds = %bits_read_vlc_be.exit158
end_hunk_8
begin_hunk_9_@decode_byryi:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 16 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.h

bits_priv_refill_64_be.exit.i:                    ; preds = %bb.b
  %i.v = load i64, ptr %i.l, align 1, !tbaa !29
  %i.w = tail call noundef i64 @llvm.bswap.i64(i64 %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.x, ptr %i.k, align 8, !tbaa !36
  br label %bits_read_bit_be.exit

bits_read_bit_be.exit:                            ; preds = %bits_priv_refill_64_be.exit.i, %._crit_edge.i
  %i.y = phi i32 [ %i.j, %._crit_edge.i ], [ 63, %bits_priv_refill_64_be.exit.i ]
  %.val.i.i = phi i64 [ %.val.i.pre.i, %._crit_edge.i ], [ %i.w, %bits_priv_refill_64_be.exit.i ] ; 2 uses
  %i.z = shl i64 %.val.i.i, 1
  store i64 %i.z, ptr %2, align 8, !tbaa !38
  store i32 %i.y, ptr %i.h, align 8, !tbaa !37
  %i.aa = icmp sgt i64 %.val.i.i, -1
  br i1 %i.aa, label %.critedge.preheader, label %.preheader231

.preheader231:                                    ; preds = %bits_read_bit_be.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %.loopexit230

.lr.ph:                                           ; preds = %.preheader231
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bits_read_nz_be.exit124
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bits_read_nz_be.exit124 ] ; 3 uses
  %i.ag = load i32, ptr %i.h, align 8, !tbaa !37  ; 4 uses
  %i.ah = icmp ult i32 %i.ag, 8
  br i1 %i.ah, label %bb.d, label %.bits_read_nz_be.exit_crit_edge

.bits_read_nz_be.exit_crit_edge:                  ; preds = %bb.c
  %.val.i.i111.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 3 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !35
  %.not.i.i112 = icmp ult ptr %i.ai, %i.aj
  %.val.i.i111.pre266 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i112, label %bits_priv_refill_32_be.exit.i, label %bits_read_nz_be.exit

bits_priv_refill_32_be.exit.i:                    ; preds = %bb.d
  %i.ak = load i32, ptr %i.ai, align 1, !tbaa !29
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = zext i32 %i.al to i64
  %i.an = sub nuw nsw i32 32, %i.ag
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = shl nuw i64 %i.am, %i.ao
  %i.aq = or i64 %i.ap, %.val.i.i111.pre266
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store ptr %i.ar, ptr %i.ae, align 8, !tbaa !36
  %i.as = or disjoint i32 %i.ag, 32
  br label %bits_read_nz_be.exit

bits_read_nz_be.exit:                             ; preds = %.bits_read_nz_be.exit_crit_edge, %bb.d, %bits_priv_refill_32_be.exit.i
  %.val.i.i111 = phi i64 [ %i.aq, %bits_priv_refill_32_be.exit.i ], [ %.val.i.i111.pre, %.bits_read_nz_be.exit_crit_edge ], [ %.val.i.i111.pre266, %bb.d ] ; 2 uses
  %i.at = phi i32 [ %i.as, %bits_priv_refill_32_be.exit.i ], [ %i.ag, %.bits_read_nz_be.exit_crit_edge ], [ 8, %bb.d ]
  %i.au = lshr i64 %.val.i.i111, 56
  %i.av = shl i64 %.val.i.i111, 8
  store i64 %i.av, ptr %2, align 8, !tbaa !38
  %i.aw = add i32 %i.at, -8
  store i32 %i.aw, ptr %i.h, align 8, !tbaa !37
  %i.ax = trunc nuw i64 %i.au to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv ; 2 uses
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !29
  %i.az = load i32, ptr %i.h, align 8, !tbaa !37  ; 4 uses
  %i.ba = icmp ult i32 %i.az, 8
  br i1 %i.ba, label %bb.e, label %bits_read_nz_be.exit.bits_read_nz_be.exit116_crit_edge

bits_read_nz_be.exit.bits_read_nz_be.exit116_crit_edge: ; preds = %bits_read_nz_be.exit
  %.val.i.i113.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit116

bb.e:                                             ; preds = %bits_read_nz_be.exit
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 3 uses
  %i.bc = load ptr, ptr %i.af, align 8, !tbaa !35
  %.not.i.i114 = icmp ult ptr %i.bb, %i.bc
  %.val.i.i113.pre268 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i114, label %bits_priv_refill_32_be.exit.i115, label %bits_read_nz_be.exit116

bits_priv_refill_32_be.exit.i115:                 ; preds = %bb.e
  %i.bd = load i32, ptr %i.bb, align 1, !tbaa !29
  %i.be = tail call i32 @llvm.bswap.i32(i32 %i.bd)
  %i.bf = zext i32 %i.be to i64
  %i.bg = sub nuw nsw i32 32, %i.az
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw i64 %i.bf, %i.bh
  %i.bj = or i64 %i.bi, %.val.i.i113.pre268
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store ptr %i.bk, ptr %i.ae, align 8, !tbaa !36
  %i.bl = or disjoint i32 %i.az, 32
  br label %bits_read_nz_be.exit116

bits_read_nz_be.exit116:                          ; preds = %bits_read_nz_be.exit.bits_read_nz_be.exit116_crit_edge, %bb.e, %bits_priv_refill_32_be.exit.i115
  %.val.i.i113 = phi i64 [ %i.bj, %bits_priv_refill_32_be.exit.i115 ], [ %.val.i.i113.pre, %bits_read_nz_be.exit.bits_read_nz_be.exit116_crit_edge ], [ %.val.i.i113.pre268, %bb.e ] ; 2 uses
  %i.bm = phi i32 [ %i.bl, %bits_priv_refill_32_be.exit.i115 ], [ %i.az, %bits_read_nz_be.exit.bits_read_nz_be.exit116_crit_edge ], [ 8, %bb.e ]
  %i.bn = lshr i64 %.val.i.i113, 56
  %i.bo = shl i64 %.val.i.i113, 8
  store i64 %i.bo, ptr %2, align 8, !tbaa !38
  %i.bp = add i32 %i.bm, -8
  store i32 %i.bp, ptr %i.h, align 8, !tbaa !37
  %i.bq = trunc nuw i64 %i.bn to i8
  %i.br = lshr exact i64 %indvars.iv, 1           ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.br
  store i8 %i.bq, ptr %i.bs, align 1, !tbaa !29
  %i.bt = load i32, ptr %i.h, align 8, !tbaa !37  ; 4 uses
  %i.bu = icmp ult i32 %i.bt, 8
  br i1 %i.bu, label %bb.f, label %bits_read_nz_be.exit116.bits_read_nz_be.exit120_crit_edge

bits_read_nz_be.exit116.bits_read_nz_be.exit120_crit_edge: ; preds = %bits_read_nz_be.exit116
  %.val.i.i117.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit120

bb.f:                                             ; preds = %bits_read_nz_be.exit116
  %i.bv = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 3 uses
  %i.bw = load ptr, ptr %i.af, align 8, !tbaa !35
  %.not.i.i118 = icmp ult ptr %i.bv, %i.bw
  %.val.i.i117.pre270 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i118, label %bits_priv_refill_32_be.exit.i119, label %bits_read_nz_be.exit120

bits_priv_refill_32_be.exit.i119:                 ; preds = %bb.f
  %i.bx = load i32, ptr %i.bv, align 1, !tbaa !29
  %i.by = tail call i32 @llvm.bswap.i32(i32 %i.bx)
  %i.bz = zext i32 %i.by to i64
  %i.ca = sub nuw nsw i32 32, %i.bt
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl nuw i64 %i.bz, %i.cb
  %i.cd = or i64 %i.cc, %.val.i.i117.pre270
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store ptr %i.ce, ptr %i.ae, align 8, !tbaa !36
  %i.cf = or disjoint i32 %i.bt, 32
  br label %bits_read_nz_be.exit120

bits_read_nz_be.exit120:                          ; preds = %bits_read_nz_be.exit116.bits_read_nz_be.exit120_crit_edge, %bb.f, %bits_priv_refill_32_be.exit.i119
  %.val.i.i117 = phi i64 [ %i.cd, %bits_priv_refill_32_be.exit.i119 ], [ %.val.i.i117.pre, %bits_read_nz_be.exit116.bits_read_nz_be.exit120_crit_edge ], [ %.val.i.i117.pre270, %bb.f ] ; 2 uses
  %i.cg = phi i32 [ %i.cf, %bits_priv_refill_32_be.exit.i119 ], [ %i.bt, %bits_read_nz_be.exit116.bits_read_nz_be.exit120_crit_edge ], [ 8, %bb.f ]
  %i.ch = lshr i64 %.val.i.i117, 56
  %i.ci = shl i64 %.val.i.i117, 8
  store i64 %i.ci, ptr %2, align 8, !tbaa !38
  %i.cj = add i32 %i.cg, -8
  store i32 %i.cj, ptr %i.h, align 8, !tbaa !37
  %i.ck = trunc nuw i64 %i.ch to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !29
  %i.cm = load i32, ptr %i.h, align 8, !tbaa !37  ; 4 uses
  %i.cn = icmp ult i32 %i.cm, 8
  br i1 %i.cn, label %bb.g, label %bits_read_nz_be.exit120.bits_read_nz_be.exit124_crit_edge

bits_read_nz_be.exit120.bits_read_nz_be.exit124_crit_edge: ; preds = %bits_read_nz_be.exit120
  %.val.i.i121.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit124

bb.g:                                             ; preds = %bits_read_nz_be.exit120
  %i.co = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 3 uses
  %i.cp = load ptr, ptr %i.af, align 8, !tbaa !35
  %.not.i.i122 = icmp ult ptr %i.co, %i.cp
  %.val.i.i121.pre272 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i122, label %bits_priv_refill_32_be.exit.i123, label %bits_read_nz_be.exit124

bits_priv_refill_32_be.exit.i123:                 ; preds = %bb.g
  %i.cq = load i32, ptr %i.co, align 1, !tbaa !29
  %i.cr = tail call i32 @llvm.bswap.i32(i32 %i.cq)
  %i.cs = zext i32 %i.cr to i64
  %i.ct = sub nuw nsw i32 32, %i.cm
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = shl nuw i64 %i.cs, %i.cu
  %i.cw = or i64 %i.cv, %.val.i.i121.pre272
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store ptr %i.cx, ptr %i.ae, align 8, !tbaa !36
  %i.cy = or disjoint i32 %i.cm, 32
  br label %bits_read_nz_be.exit124

bits_read_nz_be.exit124:                          ; preds = %bits_read_nz_be.exit120.bits_read_nz_be.exit124_crit_edge, %bb.g, %bits_priv_refill_32_be.exit.i123
  %.val.i.i121 = phi i64 [ %i.cw, %bits_priv_refill_32_be.exit.i123 ], [ %.val.i.i121.pre, %bits_read_nz_be.exit120.bits_read_nz_be.exit124_crit_edge ], [ %.val.i.i121.pre272, %bb.g ] ; 2 uses
  %i.cz = phi i32 [ %i.cy, %bits_priv_refill_32_be.exit.i123 ], [ %i.cm, %bits_read_nz_be.exit120.bits_read_nz_be.exit124_crit_edge ], [ 8, %bb.g ]
  %i.da = lshr i64 %.val.i.i121, 56
  %i.db = shl i64 %.val.i.i121, 8
  store i64 %i.db, ptr %2, align 8, !tbaa !38
  %i.dc = add i32 %i.cz, -8
  store i32 %i.dc, ptr %i.h, align 8, !tbaa !37
  %i.dd = trunc nuw i64 %i.da to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.br
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.df = load i32, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp slt i64 %indvars.iv.next, %i.dg
  br i1 %i.dh, label %bb.c, label %.loopexit230, !llvm.loop !132

bb.h:                                             ; preds = %.lr.ph238, %bits_read_vlc_be.exit158
  %indvars.iv257 = phi i64 [ 0, %.lr.ph238 ], [ %indvars.iv.next258, %bits_read_vlc_be.exit158 ] ; 3 uses
  %.sroa.09.0236 = phi i32 [ 125, %.lr.ph238 ], [ %i.me, %bits_read_vlc_be.exit158 ]
  %.sroa.711.0235 = phi i32 [ -128, %.lr.ph238 ], [ %i.ma, %bits_read_vlc_be.exit158 ]
  %.sroa.9.0234 = phi i32 [ -128, %.lr.ph238 ], [ %i.mh, %bits_read_vlc_be.exit158 ]
  %i.di = load ptr, ptr %i.r, align 8, !tbaa !44  ; 4 uses
  %i.dj = load i32, ptr %i.h, align 8, !tbaa !37  ; 5 uses
  %i.dk = icmp ult i32 %i.dj, 12
  br i1 %i.dk, label %bb.i, label %.bits_priv_refill_32_be.exit_crit_edge.i.i.i

.bits_priv_refill_32_be.exit_crit_edge.i.i.i:     ; preds = %bb.h
  %.val.pre.i.i.i = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_peek_be.exit.i

bb.i:                                             ; preds = %bb.h
  %i.dl = load ptr, ptr %i.s, align 8, !tbaa !36  ; 3 uses
  %i.dm = load ptr, ptr %i.t, align 8, !tbaa !35
  %.not.i.i.i.i = icmp ult ptr %i.dl, %i.dm
  %.val.pre4.i.i.i = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.j, label %bits_peek_be.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dn = load i32, ptr %i.dl, align 1, !tbaa !29
  %i.do = tail call i32 @llvm.bswap.i32(i32 %i.dn)
  %i.dp = zext i32 %i.do to i64
  %i.dq = sub nuw nsw i32 32, %i.dj
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = shl nuw i64 %i.dp, %i.dr
  %i.dt = or i64 %i.ds, %.val.pre4.i.i.i          ; 2 uses
  store i64 %i.dt, ptr %2, align 8, !tbaa !38
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store ptr %i.du, ptr %i.s, align 8, !tbaa !36
  %i.dv = or disjoint i32 %i.dj, 32               ; 2 uses
  store i32 %i.dv, ptr %i.h, align 8, !tbaa !37
  br label %bits_peek_be.exit.i

bits_peek_be.exit.i:                              ; preds = %bb.j, %bb.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i
  %i.dw = phi i32 [ %i.dj, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.dv, %bb.j ], [ %i.dj, %bb.i ] ; 4 uses
  %i.dx = phi i64 [ %.val.pre.i.i.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.dt, %bb.j ], [ %.val.pre4.i.i.i, %bb.i ] ; 3 uses
  %i.dy = lshr i64 %i.dx, 52
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dy ; 2 uses
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !29
  %i.eb = sext i16 %i.ea to i32                   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !29 ; 2 uses
  %i.ee = sext i16 %i.ed to i32                   ; 3 uses
  %i.ef = icmp slt i16 %i.ed, 0
  br i1 %i.ef, label %bb.k, label %bits_read_vlc_be.exit

bb.k:                                             ; preds = %bits_peek_be.exit.i
  %i.eg = shl i64 %i.dx, 12                       ; 4 uses
  store i64 %i.eg, ptr %2, align 8, !tbaa !38
  %i.eh = add i32 %i.dw, -12                      ; 4 uses
  store i32 %i.eh, ptr %i.h, align 8, !tbaa !37
  %i.ei = sub nsw i32 0, %i.ee
  %i.ej = icmp ult i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.l, label %bits_priv_set_idx_be.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ek = load ptr, ptr %i.s, align 8, !tbaa !36  ; 3 uses
  %i.el = load ptr, ptr %i.t, align 8, !tbaa !35
  %.not.i.i.i.i.i = icmp ult ptr %i.ek, %i.el
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bits_priv_set_idx_be.exit.i

bb.m:                                             ; preds = %bb.l
  %i.em = load i32, ptr %i.ek, align 1, !tbaa !29
  %i.en = tail call i32 @llvm.bswap.i32(i32 %i.em)
  %i.eo = zext i32 %i.en to i64
  %i.ep = sub nsw i32 44, %i.dw
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = shl i64 %i.eo, %i.eq
  %i.es = or i64 %i.er, %i.eg                     ; 2 uses
  store i64 %i.es, ptr %2, align 8, !tbaa !38
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store ptr %i.et, ptr %i.s, align 8, !tbaa !36
  %i.eu = add nuw nsw i32 %i.dw, 20               ; 2 uses
  store i32 %i.eu, ptr %i.h, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i

bits_priv_set_idx_be.exit.i:                      ; preds = %bb.m, %bb.l, %bb.k
  %i.ev = phi i32 [ %i.eh, %bb.l ], [ %i.eu, %bb.m ], [ %i.eh, %bb.k ]
  %.val.i.i.i.i = phi i64 [ %i.eg, %bb.l ], [ %i.es, %bb.m ], [ %i.eg, %bb.k ] ; 2 uses
  %i.ew = add nsw i32 %i.ee, 64
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = lshr i64 %.val.i.i.i.i, %i.ex
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = add i32 %i.ez, %i.eb
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !29
  %i.ff = sext i16 %i.fe to i32
  %i.fg = load i16, ptr %i.fc, align 2, !tbaa !29
  %i.fh = zext i16 %i.fg to i32
  br label %bits_read_vlc_be.exit

bits_read_vlc_be.exit:                            ; preds = %bits_peek_be.exit.i, %bits_priv_set_idx_be.exit.i
  %i.fi = phi i32 [ %i.ev, %bits_priv_set_idx_be.exit.i ], [ %i.dw, %bits_peek_be.exit.i ]
  %i.fj = phi i64 [ %.val.i.i.i.i, %bits_priv_set_idx_be.exit.i ], [ %i.dx, %bits_peek_be.exit.i ]
  %.023.i = phi i32 [ %i.ff, %bits_priv_set_idx_be.exit.i ], [ %i.ee, %bits_peek_be.exit.i ] ; 2 uses
  %.0.i125 = phi i32 [ %i.fh, %bits_priv_set_idx_be.exit.i ], [ %i.eb, %bits_peek_be.exit.i ]
  %i.fk = zext nneg i32 %.023.i to i64
  %i.fl = shl i64 %i.fj, %i.fk                    ; 4 uses
  store i64 %i.fl, ptr %2, align 8, !tbaa !38
  %i.fm = sub i32 %i.fi, %.023.i                  ; 6 uses
  store i32 %i.fm, ptr %i.h, align 8, !tbaa !37
  %i.fn = load ptr, ptr %i.u, align 8, !tbaa !44  ; 4 uses
  %i.fo = icmp ult i32 %i.fm, 12
  br i1 %i.fo, label %bb.n, label %bits_peek_be.exit.i128

bb.n:                                             ; preds = %bits_read_vlc_be.exit
  %i.fp = load ptr, ptr %i.s, align 8, !tbaa !36  ; 3 uses
  %i.fq = load ptr, ptr %i.t, align 8, !tbaa !35
  %.not.i.i.i.i134 = icmp ult ptr %i.fp, %i.fq
  br i1 %.not.i.i.i.i134, label %bb.o, label %bits_peek_be.exit.i128

bb.o:                                             ; preds = %bb.n
  %i.fr = load i32, ptr %i.fp, align 1, !tbaa !29
  %i.fs = tail call i32 @llvm.bswap.i32(i32 %i.fr)
  %i.ft = zext i32 %i.fs to i64
  %i.fu = sub nuw nsw i32 32, %i.fm
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = shl nuw i64 %i.ft, %i.fv
  %i.fx = or i64 %i.fw, %i.fl                     ; 2 uses
  store i64 %i.fx, ptr %2, align 8, !tbaa !38
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store ptr %i.fy, ptr %i.s, align 8, !tbaa !36
  %i.fz = or disjoint i32 %i.fm, 32               ; 2 uses
  store i32 %i.fz, ptr %i.h, align 8, !tbaa !37
  br label %bits_peek_be.exit.i128

bits_peek_be.exit.i128:                           ; preds = %bits_read_vlc_be.exit, %bb.o, %bb.n
  %i.ga = phi i32 [ %i.fm, %bb.n ], [ %i.fz, %bb.o ], [ %i.fm, %bits_read_vlc_be.exit ] ; 4 uses
  %i.gb = phi i64 [ %i.fl, %bb.n ], [ %i.fx, %bb.o ], [ %i.fl, %bits_read_vlc_be.exit ] ; 3 uses
  %i.gc = lshr i64 %i.gb, 52
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.gc ; 2 uses
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !29
  %i.gf = sext i16 %i.ge to i32                   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !29 ; 2 uses
  %i.gi = sext i16 %i.gh to i32                   ; 3 uses
  %i.gj = icmp slt i16 %i.gh, 0
  br i1 %i.gj, label %bb.p, label %bits_read_vlc_be.exit136

bb.p:                                             ; preds = %bits_peek_be.exit.i128
  %i.gk = shl i64 %i.gb, 12                       ; 4 uses
  store i64 %i.gk, ptr %2, align 8, !tbaa !38
  %i.gl = add i32 %i.ga, -12                      ; 4 uses
  store i32 %i.gl, ptr %i.h, align 8, !tbaa !37
  %i.gm = sub nsw i32 0, %i.gi
  %i.gn = icmp ult i32 %i.gl, %i.gm
  br i1 %i.gn, label %bb.q, label %bits_priv_set_idx_be.exit.i131

bb.q:                                             ; preds = %bb.p
  %i.go = load ptr, ptr %i.s, align 8, !tbaa !36  ; 3 uses
  %i.gp = load ptr, ptr %i.t, align 8, !tbaa !35
  %.not.i.i.i.i.i133 = icmp ult ptr %i.go, %i.gp
  br i1 %.not.i.i.i.i.i133, label %bb.r, label %bits_priv_set_idx_be.exit.i131

bb.r:                                             ; preds = %bb.q
  %i.gq = load i32, ptr %i.go, align 1, !tbaa !29
  %i.gr = tail call i32 @llvm.bswap.i32(i32 %i.gq)
  %i.gs = zext i32 %i.gr to i64
  %i.gt = sub nsw i32 44, %i.ga
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = shl i64 %i.gs, %i.gu
  %i.gw = or i64 %i.gv, %i.gk                     ; 2 uses
  store i64 %i.gw, ptr %2, align 8, !tbaa !38
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store ptr %i.gx, ptr %i.s, align 8, !tbaa !36
  %i.gy = add nuw nsw i32 %i.ga, 20               ; 2 uses
  store i32 %i.gy, ptr %i.h, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i131

bits_priv_set_idx_be.exit.i131:                   ; preds = %bb.r, %bb.q, %bb.p
  %i.gz = phi i32 [ %i.gl, %bb.q ], [ %i.gy, %bb.r ], [ %i.gl, %bb.p ]
  %.val.i.i.i.i132 = phi i64 [ %i.gk, %bb.q ], [ %i.gw, %bb.r ], [ %i.gk, %bb.p ] ; 2 uses
  %i.ha = add nsw i32 %i.gi, 64
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = lshr i64 %.val.i.i.i.i132, %i.hb
  %i.hd = trunc i64 %i.hc to i32
  %i.he = add i32 %i.hd, %i.gf
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.hf ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 2
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !29
  %i.hj = sext i16 %i.hi to i32
  %i.hk = load i16, ptr %i.hg, align 2, !tbaa !29
  %i.hl = zext i16 %i.hk to i32
  br label %bits_read_vlc_be.exit136

bits_read_vlc_be.exit136:                         ; preds = %bits_peek_be.exit.i128, %bits_priv_set_idx_be.exit.i131
  %i.hm = phi i32 [ %i.gz, %bits_priv_set_idx_be.exit.i131 ], [ %i.ga, %bits_peek_be.exit.i128 ]
  %i.hn = phi i64 [ %.val.i.i.i.i132, %bits_priv_set_idx_be.exit.i131 ], [ %i.gb, %bits_peek_be.exit.i128 ]
  %.023.i129 = phi i32 [ %i.hj, %bits_priv_set_idx_be.exit.i131 ], [ %i.gi, %bits_peek_be.exit.i128 ] ; 2 uses
  %.0.i130 = phi i32 [ %i.hl, %bits_priv_set_idx_be.exit.i131 ], [ %i.gf, %bits_peek_be.exit.i128 ]
  %i.ho = zext nneg i32 %.023.i129 to i64
  %i.hp = shl i64 %i.hn, %i.ho                    ; 4 uses
  store i64 %i.hp, ptr %2, align 8, !tbaa !38
  %i.hq = sub i32 %i.hm, %.023.i129               ; 6 uses
  store i32 %i.hq, ptr %i.h, align 8, !tbaa !37
  %i.hr = icmp ult i32 %i.hq, 12
  br i1 %i.hr, label %bb.s, label %bits_peek_be.exit.i139

bb.s:                                             ; preds = %bits_read_vlc_be.exit136
end_hunk_9
begin_hunk_10_@decode_ybyr:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.h

bits_priv_refill_64_be.exit.i:                    ; preds = %bb.b
  %i.v = load i64, ptr %i.l, align 1, !tbaa !29
  %i.w = tail call noundef i64 @llvm.bswap.i64(i64 %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.x, ptr %i.k, align 8, !tbaa !36
  br label %bits_read_bit_be.exit

bits_read_bit_be.exit:                            ; preds = %bits_priv_refill_64_be.exit.i, %._crit_edge.i
  %i.y = phi i32 [ %i.j, %._crit_edge.i ], [ 63, %bits_priv_refill_64_be.exit.i ]
  %.val.i.i = phi i64 [ %.val.i.pre.i, %._crit_edge.i ], [ %i.w, %bits_priv_refill_64_be.exit.i ] ; 2 uses
  %i.z = shl i64 %.val.i.i, 1
  store i64 %i.z, ptr %2, align 8, !tbaa !38
  store i32 %i.y, ptr %i.h, align 8, !tbaa !37
  %i.aa = icmp sgt i64 %.val.i.i, -1
  br i1 %i.aa, label %.critedge.preheader, label %.preheader253

.preheader253:                                    ; preds = %bits_read_bit_be.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %.loopexit252

.lr.ph:                                           ; preds = %.preheader253
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bits_read_nz_be.exit146
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bits_read_nz_be.exit146 ] ; 3 uses
  %i.ag = load i32, ptr %i.h, align 8, !tbaa !37  ; 4 uses
  %i.ah = icmp ult i32 %i.ag, 8
  br i1 %i.ah, label %bb.d, label %.bits_read_nz_be.exit_crit_edge

.bits_read_nz_be.exit_crit_edge:                  ; preds = %bb.c
  %.val.i.i133.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit

bb.d:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 3 uses
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !35
  %.not.i.i134 = icmp ult ptr %i.ai, %i.aj
  %.val.i.i133.pre291 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i134, label %bits_priv_refill_32_be.exit.i, label %bits_read_nz_be.exit

bits_priv_refill_32_be.exit.i:                    ; preds = %bb.d
  %i.ak = load i32, ptr %i.ai, align 1, !tbaa !29
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = zext i32 %i.al to i64
  %i.an = sub nuw nsw i32 32, %i.ag
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = shl nuw i64 %i.am, %i.ao
  %i.aq = or i64 %i.ap, %.val.i.i133.pre291
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store ptr %i.ar, ptr %i.ae, align 8, !tbaa !36
  %i.as = or disjoint i32 %i.ag, 32
  br label %bits_read_nz_be.exit

bits_read_nz_be.exit:                             ; preds = %.bits_read_nz_be.exit_crit_edge, %bb.d, %bits_priv_refill_32_be.exit.i
  %.val.i.i133 = phi i64 [ %i.aq, %bits_priv_refill_32_be.exit.i ], [ %.val.i.i133.pre, %.bits_read_nz_be.exit_crit_edge ], [ %.val.i.i133.pre291, %bb.d ] ; 2 uses
  %i.at = phi i32 [ %i.as, %bits_priv_refill_32_be.exit.i ], [ %i.ag, %.bits_read_nz_be.exit_crit_edge ], [ 8, %bb.d ]
  %i.au = lshr i64 %.val.i.i133, 56
  %i.av = shl i64 %.val.i.i133, 8
  store i64 %i.av, ptr %2, align 8, !tbaa !38
  %i.aw = add i32 %i.at, -8
  store i32 %i.aw, ptr %i.h, align 8, !tbaa !37
  %i.ax = trunc nuw i64 %i.au to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv ; 2 uses
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !29
  %i.az = load i32, ptr %i.h, align 8, !tbaa !37  ; 4 uses
  %i.ba = icmp ult i32 %i.az, 8
  br i1 %i.ba, label %bb.e, label %bits_read_nz_be.exit.bits_read_nz_be.exit138_crit_edge

bits_read_nz_be.exit.bits_read_nz_be.exit138_crit_edge: ; preds = %bits_read_nz_be.exit
  %.val.i.i135.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit138

bb.e:                                             ; preds = %bits_read_nz_be.exit
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 3 uses
  %i.bc = load ptr, ptr %i.af, align 8, !tbaa !35
  %.not.i.i136 = icmp ult ptr %i.bb, %i.bc
  %.val.i.i135.pre293 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i136, label %bits_priv_refill_32_be.exit.i137, label %bits_read_nz_be.exit138

bits_priv_refill_32_be.exit.i137:                 ; preds = %bb.e
  %i.bd = load i32, ptr %i.bb, align 1, !tbaa !29
  %i.be = tail call i32 @llvm.bswap.i32(i32 %i.bd)
  %i.bf = zext i32 %i.be to i64
  %i.bg = sub nuw nsw i32 32, %i.az
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw i64 %i.bf, %i.bh
  %i.bj = or i64 %i.bi, %.val.i.i135.pre293
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store ptr %i.bk, ptr %i.ae, align 8, !tbaa !36
  %i.bl = or disjoint i32 %i.az, 32
  br label %bits_read_nz_be.exit138

bits_read_nz_be.exit138:                          ; preds = %bits_read_nz_be.exit.bits_read_nz_be.exit138_crit_edge, %bb.e, %bits_priv_refill_32_be.exit.i137
  %.val.i.i135 = phi i64 [ %i.bj, %bits_priv_refill_32_be.exit.i137 ], [ %.val.i.i135.pre, %bits_read_nz_be.exit.bits_read_nz_be.exit138_crit_edge ], [ %.val.i.i135.pre293, %bb.e ] ; 2 uses
  %i.bm = phi i32 [ %i.bl, %bits_priv_refill_32_be.exit.i137 ], [ %i.az, %bits_read_nz_be.exit.bits_read_nz_be.exit138_crit_edge ], [ 8, %bb.e ]
  %i.bn = lshr i64 %.val.i.i135, 56
  %i.bo = shl i64 %.val.i.i135, 8
  store i64 %i.bo, ptr %2, align 8, !tbaa !38
  %i.bp = add i32 %i.bm, -8
  store i32 %i.bp, ptr %i.h, align 8, !tbaa !37
  %i.bq = trunc nuw i64 %i.bn to i8
  %i.br = xor i8 %i.bq, -128
  %i.bs = lshr exact i64 %indvars.iv, 1           ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs
  store i8 %i.br, ptr %i.bt, align 1, !tbaa !29
  %i.bu = load i32, ptr %i.h, align 8, !tbaa !37  ; 4 uses
  %i.bv = icmp ult i32 %i.bu, 8
  br i1 %i.bv, label %bb.f, label %bits_read_nz_be.exit138.bits_read_nz_be.exit142_crit_edge

bits_read_nz_be.exit138.bits_read_nz_be.exit142_crit_edge: ; preds = %bits_read_nz_be.exit138
  %.val.i.i139.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit142

bb.f:                                             ; preds = %bits_read_nz_be.exit138
  %i.bw = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 3 uses
  %i.bx = load ptr, ptr %i.af, align 8, !tbaa !35
  %.not.i.i140 = icmp ult ptr %i.bw, %i.bx
  %.val.i.i139.pre295 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i140, label %bits_priv_refill_32_be.exit.i141, label %bits_read_nz_be.exit142

bits_priv_refill_32_be.exit.i141:                 ; preds = %bb.f
  %i.by = load i32, ptr %i.bw, align 1, !tbaa !29
  %i.bz = tail call i32 @llvm.bswap.i32(i32 %i.by)
  %i.ca = zext i32 %i.bz to i64
  %i.cb = sub nuw nsw i32 32, %i.bu
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = shl nuw i64 %i.ca, %i.cc
  %i.ce = or i64 %i.cd, %.val.i.i139.pre295
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store ptr %i.cf, ptr %i.ae, align 8, !tbaa !36
  %i.cg = or disjoint i32 %i.bu, 32
  br label %bits_read_nz_be.exit142

bits_read_nz_be.exit142:                          ; preds = %bits_read_nz_be.exit138.bits_read_nz_be.exit142_crit_edge, %bb.f, %bits_priv_refill_32_be.exit.i141
  %.val.i.i139 = phi i64 [ %i.ce, %bits_priv_refill_32_be.exit.i141 ], [ %.val.i.i139.pre, %bits_read_nz_be.exit138.bits_read_nz_be.exit142_crit_edge ], [ %.val.i.i139.pre295, %bb.f ] ; 2 uses
  %i.ch = phi i32 [ %i.cg, %bits_priv_refill_32_be.exit.i141 ], [ %i.bu, %bits_read_nz_be.exit138.bits_read_nz_be.exit142_crit_edge ], [ 8, %bb.f ]
  %i.ci = lshr i64 %.val.i.i139, 56
  %i.cj = shl i64 %.val.i.i139, 8
  store i64 %i.cj, ptr %2, align 8, !tbaa !38
  %i.ck = add i32 %i.ch, -8
  store i32 %i.ck, ptr %i.h, align 8, !tbaa !37
  %i.cl = trunc nuw i64 %i.ci to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !29
  %i.cn = load i32, ptr %i.h, align 8, !tbaa !37  ; 4 uses
  %i.co = icmp ult i32 %i.cn, 8
  br i1 %i.co, label %bb.g, label %bits_read_nz_be.exit142.bits_read_nz_be.exit146_crit_edge

bits_read_nz_be.exit142.bits_read_nz_be.exit146_crit_edge: ; preds = %bits_read_nz_be.exit142
  %.val.i.i143.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit146

bb.g:                                             ; preds = %bits_read_nz_be.exit142
  %i.cp = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 3 uses
  %i.cq = load ptr, ptr %i.af, align 8, !tbaa !35
  %.not.i.i144 = icmp ult ptr %i.cp, %i.cq
  %.val.i.i143.pre297 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i144, label %bits_priv_refill_32_be.exit.i145, label %bits_read_nz_be.exit146

bits_priv_refill_32_be.exit.i145:                 ; preds = %bb.g
  %i.cr = load i32, ptr %i.cp, align 1, !tbaa !29
  %i.cs = tail call i32 @llvm.bswap.i32(i32 %i.cr)
  %i.ct = zext i32 %i.cs to i64
  %i.cu = sub nuw nsw i32 32, %i.cn
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = shl nuw i64 %i.ct, %i.cv
  %i.cx = or i64 %i.cw, %.val.i.i143.pre297
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store ptr %i.cy, ptr %i.ae, align 8, !tbaa !36
  %i.cz = or disjoint i32 %i.cn, 32
  br label %bits_read_nz_be.exit146

bits_read_nz_be.exit146:                          ; preds = %bits_read_nz_be.exit142.bits_read_nz_be.exit146_crit_edge, %bb.g, %bits_priv_refill_32_be.exit.i145
  %.val.i.i143 = phi i64 [ %i.cx, %bits_priv_refill_32_be.exit.i145 ], [ %.val.i.i143.pre, %bits_read_nz_be.exit142.bits_read_nz_be.exit146_crit_edge ], [ %.val.i.i143.pre297, %bb.g ] ; 2 uses
  %i.da = phi i32 [ %i.cz, %bits_priv_refill_32_be.exit.i145 ], [ %i.cn, %bits_read_nz_be.exit142.bits_read_nz_be.exit146_crit_edge ], [ 8, %bb.g ]
  %i.db = lshr i64 %.val.i.i143, 56
  %i.dc = shl i64 %.val.i.i143, 8
  store i64 %i.dc, ptr %2, align 8, !tbaa !38
  %i.dd = add i32 %i.da, -8
  store i32 %i.dd, ptr %i.h, align 8, !tbaa !37
  %i.de = trunc nuw i64 %i.db to i8
  %i.df = xor i8 %i.de, -128
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bs
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dh = load i32, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp slt i64 %indvars.iv.next, %i.di
  br i1 %i.dj, label %bb.c, label %.loopexit252, !llvm.loop !137

bb.h:                                             ; preds = %.lr.ph260, %bits_read_vlc_be.exit180
  %indvars.iv282 = phi i64 [ 0, %.lr.ph260 ], [ %indvars.iv.next283, %bits_read_vlc_be.exit180 ] ; 3 uses
  %.sroa.018.0258 = phi i32 [ -128, %.lr.ph260 ], [ %i.mg, %bits_read_vlc_be.exit180 ]
  %.sroa.720.0257 = phi i32 [ 128, %.lr.ph260 ], [ %i.mc, %bits_read_vlc_be.exit180 ]
  %.sroa.9.0256 = phi i32 [ 128, %.lr.ph260 ], [ %i.mj, %bits_read_vlc_be.exit180 ]
  %i.dk = load ptr, ptr %i.r, align 8, !tbaa !44  ; 4 uses
  %i.dl = load i32, ptr %i.h, align 8, !tbaa !37  ; 5 uses
  %i.dm = icmp ult i32 %i.dl, 12
  br i1 %i.dm, label %bb.i, label %.bits_priv_refill_32_be.exit_crit_edge.i.i.i

.bits_priv_refill_32_be.exit_crit_edge.i.i.i:     ; preds = %bb.h
  %.val.pre.i.i.i = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_peek_be.exit.i

bb.i:                                             ; preds = %bb.h
  %i.dn = load ptr, ptr %i.s, align 8, !tbaa !36  ; 3 uses
  %i.do = load ptr, ptr %i.t, align 8, !tbaa !35
  %.not.i.i.i.i = icmp ult ptr %i.dn, %i.do
  %.val.pre4.i.i.i = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.j, label %bits_peek_be.exit.i

bb.j:                                             ; preds = %bb.i
  %i.dp = load i32, ptr %i.dn, align 1, !tbaa !29
  %i.dq = tail call i32 @llvm.bswap.i32(i32 %i.dp)
  %i.dr = zext i32 %i.dq to i64
  %i.ds = sub nuw nsw i32 32, %i.dl
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = shl nuw i64 %i.dr, %i.dt
  %i.dv = or i64 %i.du, %.val.pre4.i.i.i          ; 2 uses
  store i64 %i.dv, ptr %2, align 8, !tbaa !38
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store ptr %i.dw, ptr %i.s, align 8, !tbaa !36
  %i.dx = or disjoint i32 %i.dl, 32               ; 2 uses
  store i32 %i.dx, ptr %i.h, align 8, !tbaa !37
  br label %bits_peek_be.exit.i

bits_peek_be.exit.i:                              ; preds = %bb.j, %bb.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i
  %i.dy = phi i32 [ %i.dl, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.dx, %bb.j ], [ %i.dl, %bb.i ] ; 4 uses
  %i.dz = phi i64 [ %.val.pre.i.i.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.dv, %bb.j ], [ %.val.pre4.i.i.i, %bb.i ] ; 3 uses
  %i.ea = lshr i64 %i.dz, 52
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.ea ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !29
  %i.ed = sext i16 %i.ec to i32                   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !29 ; 2 uses
  %i.eg = sext i16 %i.ef to i32                   ; 3 uses
  %i.eh = icmp slt i16 %i.ef, 0
  br i1 %i.eh, label %bb.k, label %bits_read_vlc_be.exit

bb.k:                                             ; preds = %bits_peek_be.exit.i
  %i.ei = shl i64 %i.dz, 12                       ; 4 uses
  store i64 %i.ei, ptr %2, align 8, !tbaa !38
  %i.ej = add i32 %i.dy, -12                      ; 4 uses
  store i32 %i.ej, ptr %i.h, align 8, !tbaa !37
  %i.ek = sub nsw i32 0, %i.eg
  %i.el = icmp ult i32 %i.ej, %i.ek
  br i1 %i.el, label %bb.l, label %bits_priv_set_idx_be.exit.i

bb.l:                                             ; preds = %bb.k
  %i.em = load ptr, ptr %i.s, align 8, !tbaa !36  ; 3 uses
  %i.en = load ptr, ptr %i.t, align 8, !tbaa !35
  %.not.i.i.i.i.i = icmp ult ptr %i.em, %i.en
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bits_priv_set_idx_be.exit.i

bb.m:                                             ; preds = %bb.l
  %i.eo = load i32, ptr %i.em, align 1, !tbaa !29
  %i.ep = tail call i32 @llvm.bswap.i32(i32 %i.eo)
  %i.eq = zext i32 %i.ep to i64
  %i.er = sub nsw i32 44, %i.dy
  %i.es = zext nneg i32 %i.er to i64
  %i.et = shl i64 %i.eq, %i.es
  %i.eu = or i64 %i.et, %i.ei                     ; 2 uses
  store i64 %i.eu, ptr %2, align 8, !tbaa !38
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store ptr %i.ev, ptr %i.s, align 8, !tbaa !36
  %i.ew = add nuw nsw i32 %i.dy, 20               ; 2 uses
  store i32 %i.ew, ptr %i.h, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i

bits_priv_set_idx_be.exit.i:                      ; preds = %bb.m, %bb.l, %bb.k
  %i.ex = phi i32 [ %i.ej, %bb.l ], [ %i.ew, %bb.m ], [ %i.ej, %bb.k ]
  %.val.i.i.i.i = phi i64 [ %i.ei, %bb.l ], [ %i.eu, %bb.m ], [ %i.ei, %bb.k ] ; 2 uses
  %i.ey = add nsw i32 %i.eg, 64
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = lshr i64 %.val.i.i.i.i, %i.ez
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = add i32 %i.fb, %i.ed
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !29
  %i.fh = sext i16 %i.fg to i32
  %i.fi = load i16, ptr %i.fe, align 2, !tbaa !29
  %i.fj = zext i16 %i.fi to i32
  br label %bits_read_vlc_be.exit

bits_read_vlc_be.exit:                            ; preds = %bits_peek_be.exit.i, %bits_priv_set_idx_be.exit.i
  %i.fk = phi i32 [ %i.ex, %bits_priv_set_idx_be.exit.i ], [ %i.dy, %bits_peek_be.exit.i ]
  %i.fl = phi i64 [ %.val.i.i.i.i, %bits_priv_set_idx_be.exit.i ], [ %i.dz, %bits_peek_be.exit.i ]
  %.023.i = phi i32 [ %i.fh, %bits_priv_set_idx_be.exit.i ], [ %i.eg, %bits_peek_be.exit.i ] ; 2 uses
  %.0.i147 = phi i32 [ %i.fj, %bits_priv_set_idx_be.exit.i ], [ %i.ed, %bits_peek_be.exit.i ]
  %i.fm = zext nneg i32 %.023.i to i64
  %i.fn = shl i64 %i.fl, %i.fm                    ; 4 uses
  store i64 %i.fn, ptr %2, align 8, !tbaa !38
  %i.fo = sub i32 %i.fk, %.023.i                  ; 6 uses
  store i32 %i.fo, ptr %i.h, align 8, !tbaa !37
  %i.fp = load ptr, ptr %i.u, align 8, !tbaa !44  ; 4 uses
  %i.fq = icmp ult i32 %i.fo, 12
  br i1 %i.fq, label %bb.n, label %bits_peek_be.exit.i150

bb.n:                                             ; preds = %bits_read_vlc_be.exit
  %i.fr = load ptr, ptr %i.s, align 8, !tbaa !36  ; 3 uses
  %i.fs = load ptr, ptr %i.t, align 8, !tbaa !35
  %.not.i.i.i.i156 = icmp ult ptr %i.fr, %i.fs
  br i1 %.not.i.i.i.i156, label %bb.o, label %bits_peek_be.exit.i150

bb.o:                                             ; preds = %bb.n
  %i.ft = load i32, ptr %i.fr, align 1, !tbaa !29
  %i.fu = tail call i32 @llvm.bswap.i32(i32 %i.ft)
  %i.fv = zext i32 %i.fu to i64
  %i.fw = sub nuw nsw i32 32, %i.fo
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = shl nuw i64 %i.fv, %i.fx
  %i.fz = or i64 %i.fy, %i.fn                     ; 2 uses
  store i64 %i.fz, ptr %2, align 8, !tbaa !38
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store ptr %i.ga, ptr %i.s, align 8, !tbaa !36
  %i.gb = or disjoint i32 %i.fo, 32               ; 2 uses
  store i32 %i.gb, ptr %i.h, align 8, !tbaa !37
  br label %bits_peek_be.exit.i150

bits_peek_be.exit.i150:                           ; preds = %bits_read_vlc_be.exit, %bb.o, %bb.n
  %i.gc = phi i32 [ %i.fo, %bb.n ], [ %i.gb, %bb.o ], [ %i.fo, %bits_read_vlc_be.exit ] ; 4 uses
  %i.gd = phi i64 [ %i.fn, %bb.n ], [ %i.fz, %bb.o ], [ %i.fn, %bits_read_vlc_be.exit ] ; 3 uses
  %i.ge = lshr i64 %i.gd, 52
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.ge ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !29
  %i.gh = sext i16 %i.gg to i32                   ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 2
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !29 ; 2 uses
  %i.gk = sext i16 %i.gj to i32                   ; 3 uses
  %i.gl = icmp slt i16 %i.gj, 0
  br i1 %i.gl, label %bb.p, label %bits_read_vlc_be.exit158

bb.p:                                             ; preds = %bits_peek_be.exit.i150
  %i.gm = shl i64 %i.gd, 12                       ; 4 uses
  store i64 %i.gm, ptr %2, align 8, !tbaa !38
  %i.gn = add i32 %i.gc, -12                      ; 4 uses
  store i32 %i.gn, ptr %i.h, align 8, !tbaa !37
  %i.go = sub nsw i32 0, %i.gk
  %i.gp = icmp ult i32 %i.gn, %i.go
  br i1 %i.gp, label %bb.q, label %bits_priv_set_idx_be.exit.i153

bb.q:                                             ; preds = %bb.p
  %i.gq = load ptr, ptr %i.s, align 8, !tbaa !36  ; 3 uses
  %i.gr = load ptr, ptr %i.t, align 8, !tbaa !35
  %.not.i.i.i.i.i155 = icmp ult ptr %i.gq, %i.gr
  br i1 %.not.i.i.i.i.i155, label %bb.r, label %bits_priv_set_idx_be.exit.i153

bb.r:                                             ; preds = %bb.q
  %i.gs = load i32, ptr %i.gq, align 1, !tbaa !29
  %i.gt = tail call i32 @llvm.bswap.i32(i32 %i.gs)
  %i.gu = zext i32 %i.gt to i64
  %i.gv = sub nsw i32 44, %i.gc
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = shl i64 %i.gu, %i.gw
  %i.gy = or i64 %i.gx, %i.gm                     ; 2 uses
  store i64 %i.gy, ptr %2, align 8, !tbaa !38
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  store ptr %i.gz, ptr %i.s, align 8, !tbaa !36
  %i.ha = add nuw nsw i32 %i.gc, 20               ; 2 uses
  store i32 %i.ha, ptr %i.h, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i153

bits_priv_set_idx_be.exit.i153:                   ; preds = %bb.r, %bb.q, %bb.p
  %i.hb = phi i32 [ %i.gn, %bb.q ], [ %i.ha, %bb.r ], [ %i.gn, %bb.p ]
  %.val.i.i.i.i154 = phi i64 [ %i.gm, %bb.q ], [ %i.gy, %bb.r ], [ %i.gm, %bb.p ] ; 2 uses
  %i.hc = add nsw i32 %i.gk, 64
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = lshr i64 %.val.i.i.i.i154, %i.hd
  %i.hf = trunc i64 %i.he to i32
  %i.hg = add i32 %i.hf, %i.gh
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.hh ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !29
  %i.hl = sext i16 %i.hk to i32
  %i.hm = load i16, ptr %i.hi, align 2, !tbaa !29
  %i.hn = zext i16 %i.hm to i32
  br label %bits_read_vlc_be.exit158

bits_read_vlc_be.exit158:                         ; preds = %bits_peek_be.exit.i150, %bits_priv_set_idx_be.exit.i153
  %i.ho = phi i32 [ %i.hb, %bits_priv_set_idx_be.exit.i153 ], [ %i.gc, %bits_peek_be.exit.i150 ]
  %i.hp = phi i64 [ %.val.i.i.i.i154, %bits_priv_set_idx_be.exit.i153 ], [ %i.gd, %bits_peek_be.exit.i150 ]
  %.023.i151 = phi i32 [ %i.hl, %bits_priv_set_idx_be.exit.i153 ], [ %i.gk, %bits_peek_be.exit.i150 ] ; 2 uses
  %.0.i152 = phi i32 [ %i.hn, %bits_priv_set_idx_be.exit.i153 ], [ %i.gh, %bits_peek_be.exit.i150 ]
  %i.hq = zext nneg i32 %.023.i151 to i64
  %i.hr = shl i64 %i.hp, %i.hq                    ; 4 uses
  store i64 %i.hr, ptr %2, align 8, !tbaa !38
  %i.hs = sub i32 %i.ho, %.023.i151               ; 6 uses
  store i32 %i.hs, ptr %i.h, align 8, !tbaa !37
  %i.ht = icmp ult i32 %i.hs, 12
  br i1 %i.ht, label %bb.s, label %bits_peek_be.exit.i161
end_hunk_10
begin_hunk_11_@decode_c82p:bb.a
  br label %bits_read_nz_be.exit191

bb.e:                                             ; preds = %bits_read_nz_be.exit
  %i.bd = load ptr, ptr %i.ag, align 8, !tbaa !36 ; 3 uses
  %i.be = load ptr, ptr %i.ah, align 8, !tbaa !35
  %.not.i.i189 = icmp ult ptr %i.bd, %i.be
  %.val.i.i188.pre411 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i189, label %bits_priv_refill_32_be.exit.i190, label %bits_read_nz_be.exit191

bits_priv_refill_32_be.exit.i190:                 ; preds = %bb.e
  %i.bf = load i32, ptr %i.bd, align 1, !tbaa !29
  %i.bg = tail call i32 @llvm.bswap.i32(i32 %i.bf)
  %i.bh = zext i32 %i.bg to i64
  %i.bi = sub nuw nsw i32 32, %i.bb
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw i64 %i.bh, %i.bj
  %i.bl = or i64 %i.bk, %.val.i.i188.pre411
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store ptr %i.bm, ptr %i.ag, align 8, !tbaa !36
  %i.bn = or disjoint i32 %i.bb, 32
  br label %bits_read_nz_be.exit191

bits_read_nz_be.exit191:                          ; preds = %bits_read_nz_be.exit.bits_read_nz_be.exit191_crit_edge, %bb.e, %bits_priv_refill_32_be.exit.i190
  %.val.i.i188 = phi i64 [ %i.bl, %bits_priv_refill_32_be.exit.i190 ], [ %.val.i.i188.pre, %bits_read_nz_be.exit.bits_read_nz_be.exit191_crit_edge ], [ %.val.i.i188.pre411, %bb.e ] ; 2 uses
  %i.bo = phi i32 [ %i.bn, %bits_priv_refill_32_be.exit.i190 ], [ %i.bb, %bits_read_nz_be.exit.bits_read_nz_be.exit191_crit_edge ], [ 8, %bb.e ]
  %i.bp = lshr i64 %.val.i.i188, 56
  %i.bq = shl i64 %.val.i.i188, 8
  store i64 %i.bq, ptr %2, align 8, !tbaa !38
  %i.br = add i32 %i.bo, -8
  store i32 %i.br, ptr %i.j, align 8, !tbaa !37
  %i.bs = trunc nuw i64 %i.bp to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !29
  %i.bu = load i32, ptr %i.j, align 8, !tbaa !37  ; 4 uses
  %i.bv = icmp ult i32 %i.bu, 8
  br i1 %i.bv, label %bb.f, label %bits_read_nz_be.exit191.bits_read_nz_be.exit195_crit_edge

bits_read_nz_be.exit191.bits_read_nz_be.exit195_crit_edge: ; preds = %bits_read_nz_be.exit191
  %.val.i.i192.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit195

bb.f:                                             ; preds = %bits_read_nz_be.exit191
  %i.bw = load ptr, ptr %i.ag, align 8, !tbaa !36 ; 3 uses
  %i.bx = load ptr, ptr %i.ah, align 8, !tbaa !35
  %.not.i.i193 = icmp ult ptr %i.bw, %i.bx
  %.val.i.i192.pre413 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i193, label %bits_priv_refill_32_be.exit.i194, label %bits_read_nz_be.exit195

bits_priv_refill_32_be.exit.i194:                 ; preds = %bb.f
  %i.by = load i32, ptr %i.bw, align 1, !tbaa !29
  %i.bz = tail call i32 @llvm.bswap.i32(i32 %i.by)
  %i.ca = zext i32 %i.bz to i64
  %i.cb = sub nuw nsw i32 32, %i.bu
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = shl nuw i64 %i.ca, %i.cc
  %i.ce = or i64 %i.cd, %.val.i.i192.pre413
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store ptr %i.cf, ptr %i.ag, align 8, !tbaa !36
  %i.cg = or disjoint i32 %i.bu, 32
  br label %bits_read_nz_be.exit195

bits_read_nz_be.exit195:                          ; preds = %bits_read_nz_be.exit191.bits_read_nz_be.exit195_crit_edge, %bb.f, %bits_priv_refill_32_be.exit.i194
  %.val.i.i192 = phi i64 [ %i.ce, %bits_priv_refill_32_be.exit.i194 ], [ %.val.i.i192.pre, %bits_read_nz_be.exit191.bits_read_nz_be.exit195_crit_edge ], [ %.val.i.i192.pre413, %bb.f ] ; 2 uses
  %i.ch = phi i32 [ %i.cg, %bits_priv_refill_32_be.exit.i194 ], [ %i.bu, %bits_read_nz_be.exit191.bits_read_nz_be.exit195_crit_edge ], [ 8, %bb.f ]
  %i.ci = lshr i64 %.val.i.i192, 56
  %i.cj = shl i64 %.val.i.i192, 8
  store i64 %i.cj, ptr %2, align 8, !tbaa !38
  %i.ck = add i32 %i.ch, -8
  store i32 %i.ck, ptr %i.j, align 8, !tbaa !37
  %i.cl = trunc nuw i64 %i.ci to i8
  %i.cm = lshr exact i64 %indvars.iv, 1           ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cm
  store i8 %i.cl, ptr %i.cn, align 1, !tbaa !29
  %i.co = load i32, ptr %i.j, align 8, !tbaa !37  ; 4 uses
  %i.cp = icmp ult i32 %i.co, 8
  br i1 %i.cp, label %bb.g, label %bits_read_nz_be.exit195.bits_read_nz_be.exit199_crit_edge

bits_read_nz_be.exit195.bits_read_nz_be.exit199_crit_edge: ; preds = %bits_read_nz_be.exit195
  %.val.i.i196.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit199

bb.g:                                             ; preds = %bits_read_nz_be.exit195
  %i.cq = load ptr, ptr %i.ag, align 8, !tbaa !36 ; 3 uses
  %i.cr = load ptr, ptr %i.ah, align 8, !tbaa !35
  %.not.i.i197 = icmp ult ptr %i.cq, %i.cr
  %.val.i.i196.pre415 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i197, label %bits_priv_refill_32_be.exit.i198, label %bits_read_nz_be.exit199

bits_priv_refill_32_be.exit.i198:                 ; preds = %bb.g
  %i.cs = load i32, ptr %i.cq, align 1, !tbaa !29
  %i.ct = tail call i32 @llvm.bswap.i32(i32 %i.cs)
  %i.cu = zext i32 %i.ct to i64
  %i.cv = sub nuw nsw i32 32, %i.co
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = shl nuw i64 %i.cu, %i.cw
  %i.cy = or i64 %i.cx, %.val.i.i196.pre415
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store ptr %i.cz, ptr %i.ag, align 8, !tbaa !36
  %i.da = or disjoint i32 %i.co, 32
  br label %bits_read_nz_be.exit199

bits_read_nz_be.exit199:                          ; preds = %bits_read_nz_be.exit195.bits_read_nz_be.exit199_crit_edge, %bb.g, %bits_priv_refill_32_be.exit.i198
  %.val.i.i196 = phi i64 [ %i.cy, %bits_priv_refill_32_be.exit.i198 ], [ %.val.i.i196.pre, %bits_read_nz_be.exit195.bits_read_nz_be.exit199_crit_edge ], [ %.val.i.i196.pre415, %bb.g ] ; 2 uses
  %i.db = phi i32 [ %i.da, %bits_priv_refill_32_be.exit.i198 ], [ %i.co, %bits_read_nz_be.exit195.bits_read_nz_be.exit199_crit_edge ], [ 8, %bb.g ]
  %i.dc = lshr i64 %.val.i.i196, 56
  %i.dd = shl i64 %.val.i.i196, 8
  store i64 %i.dd, ptr %2, align 8, !tbaa !38
  %i.de = add i32 %i.db, -8
  store i32 %i.de, ptr %i.j, align 8, !tbaa !37
  %i.df = trunc nuw i64 %i.dc to i8
  %i.dg = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.dg
  store i8 %i.df, ptr %i.dh, align 1, !tbaa !29
  %i.di = load i32, ptr %i.j, align 8, !tbaa !37  ; 4 uses
  %i.dj = icmp ult i32 %i.di, 8
  br i1 %i.dj, label %bb.h, label %bits_read_nz_be.exit199.bits_read_nz_be.exit203_crit_edge

bits_read_nz_be.exit199.bits_read_nz_be.exit203_crit_edge: ; preds = %bits_read_nz_be.exit199
  %.val.i.i200.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit203

bb.h:                                             ; preds = %bits_read_nz_be.exit199
  %i.dk = load ptr, ptr %i.ag, align 8, !tbaa !36 ; 3 uses
  %i.dl = load ptr, ptr %i.ah, align 8, !tbaa !35
  %.not.i.i201 = icmp ult ptr %i.dk, %i.dl
  %.val.i.i200.pre417 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i201, label %bits_priv_refill_32_be.exit.i202, label %bits_read_nz_be.exit203

bits_priv_refill_32_be.exit.i202:                 ; preds = %bb.h
  %i.dm = load i32, ptr %i.dk, align 1, !tbaa !29
  %i.dn = tail call i32 @llvm.bswap.i32(i32 %i.dm)
  %i.do = zext i32 %i.dn to i64
  %i.dp = sub nuw nsw i32 32, %i.di
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = shl nuw i64 %i.do, %i.dq
  %i.ds = or i64 %i.dr, %.val.i.i200.pre417
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store ptr %i.dt, ptr %i.ag, align 8, !tbaa !36
  %i.du = or disjoint i32 %i.di, 32
  br label %bits_read_nz_be.exit203

bits_read_nz_be.exit203:                          ; preds = %bits_read_nz_be.exit199.bits_read_nz_be.exit203_crit_edge, %bb.h, %bits_priv_refill_32_be.exit.i202
  %.val.i.i200 = phi i64 [ %i.ds, %bits_priv_refill_32_be.exit.i202 ], [ %.val.i.i200.pre, %bits_read_nz_be.exit199.bits_read_nz_be.exit203_crit_edge ], [ %.val.i.i200.pre417, %bb.h ] ; 2 uses
  %i.dv = phi i32 [ %i.du, %bits_priv_refill_32_be.exit.i202 ], [ %i.di, %bits_read_nz_be.exit199.bits_read_nz_be.exit203_crit_edge ], [ 8, %bb.h ]
  %i.dw = lshr i64 %.val.i.i200, 56
  %i.dx = shl i64 %.val.i.i200, 8
  store i64 %i.dx, ptr %2, align 8, !tbaa !38
  %i.dy = add i32 %i.dv, -8
  store i32 %i.dy, ptr %i.j, align 8, !tbaa !37
  %i.dz = trunc nuw i64 %i.dw to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dg
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !29
  %i.eb = load i32, ptr %i.j, align 8, !tbaa !37  ; 4 uses
  %i.ec = icmp ult i32 %i.eb, 8
  br i1 %i.ec, label %bb.i, label %bits_read_nz_be.exit203.bits_read_nz_be.exit207_crit_edge

bits_read_nz_be.exit203.bits_read_nz_be.exit207_crit_edge: ; preds = %bits_read_nz_be.exit203
  %.val.i.i204.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit207

bb.i:                                             ; preds = %bits_read_nz_be.exit203
  %i.ed = load ptr, ptr %i.ag, align 8, !tbaa !36 ; 3 uses
  %i.ee = load ptr, ptr %i.ah, align 8, !tbaa !35
  %.not.i.i205 = icmp ult ptr %i.ed, %i.ee
  %.val.i.i204.pre419 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i205, label %bits_priv_refill_32_be.exit.i206, label %bits_read_nz_be.exit207

bits_priv_refill_32_be.exit.i206:                 ; preds = %bb.i
  %i.ef = load i32, ptr %i.ed, align 1, !tbaa !29
  %i.eg = tail call i32 @llvm.bswap.i32(i32 %i.ef)
  %i.eh = zext i32 %i.eg to i64
  %i.ei = sub nuw nsw i32 32, %i.eb
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = shl nuw i64 %i.eh, %i.ej
  %i.el = or i64 %i.ek, %.val.i.i204.pre419
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store ptr %i.em, ptr %i.ag, align 8, !tbaa !36
  %i.en = or disjoint i32 %i.eb, 32
  br label %bits_read_nz_be.exit207

bits_read_nz_be.exit207:                          ; preds = %bits_read_nz_be.exit203.bits_read_nz_be.exit207_crit_edge, %bb.i, %bits_priv_refill_32_be.exit.i206
  %.val.i.i204 = phi i64 [ %i.el, %bits_priv_refill_32_be.exit.i206 ], [ %.val.i.i204.pre, %bits_read_nz_be.exit203.bits_read_nz_be.exit207_crit_edge ], [ %.val.i.i204.pre419, %bb.i ] ; 2 uses
  %i.eo = phi i32 [ %i.en, %bits_priv_refill_32_be.exit.i206 ], [ %i.eb, %bits_read_nz_be.exit203.bits_read_nz_be.exit207_crit_edge ], [ 8, %bb.i ]
  %i.ep = lshr i64 %.val.i.i204, 56
  %i.eq = shl i64 %.val.i.i204, 8
  store i64 %i.eq, ptr %2, align 8, !tbaa !38
  %i.er = add i32 %i.eo, -8
  store i32 %i.er, ptr %i.j, align 8, !tbaa !37
  %i.es = trunc nuw i64 %i.ep to i8
  %i.et = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cm
  store i8 %i.es, ptr %i.et, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.eu = load i32, ptr %i.ad, align 8, !tbaa !32 ; 2 uses
  %i.ev = sext i32 %i.eu to i64
  %i.ew = icmp slt i64 %indvars.iv.next, %i.ev
  br i1 %i.ew, label %bb.c, label %.loopexit365, !llvm.loop !142

bb.j:                                             ; preds = %.lr.ph374, %bits_read_vlc_be.exit263
  %indvars.iv400 = phi i64 [ 0, %.lr.ph374 ], [ %indvars.iv.next401, %bits_read_vlc_be.exit263 ] ; 5 uses
  %.sroa.1131.0372 = phi i32 [ 125, %.lr.ph374 ], [ %i.sj, %bits_read_vlc_be.exit263 ]
  %.sroa.9.0371 = phi i32 [ -128, %.lr.ph374 ], [ %i.sg, %bits_read_vlc_be.exit263 ]
  %.sroa.730.0370 = phi i32 [ -128, %.lr.ph374 ], [ %i.rv, %bits_read_vlc_be.exit263 ]
  %.sroa.028.0369 = phi i32 [ 125, %.lr.ph374 ], [ %i.rz, %bits_read_vlc_be.exit263 ]
  %i.ex = load ptr, ptr %i.t, align 8, !tbaa !44  ; 8 uses
  %i.ey = load i32, ptr %i.j, align 8, !tbaa !37  ; 5 uses
  %i.ez = icmp ult i32 %i.ey, 12
  br i1 %i.ez, label %bb.k, label %.bits_priv_refill_32_be.exit_crit_edge.i.i.i

.bits_priv_refill_32_be.exit_crit_edge.i.i.i:     ; preds = %bb.j
  %.val.pre.i.i.i = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_peek_be.exit.i

bb.k:                                             ; preds = %bb.j
  %i.fa = load ptr, ptr %i.u, align 8, !tbaa !36  ; 3 uses
  %i.fb = load ptr, ptr %i.v, align 8, !tbaa !35
  %.not.i.i.i.i = icmp ult ptr %i.fa, %i.fb
  %.val.pre4.i.i.i = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.l, label %bits_peek_be.exit.i

bb.l:                                             ; preds = %bb.k
  %i.fc = load i32, ptr %i.fa, align 1, !tbaa !29
  %i.fd = tail call i32 @llvm.bswap.i32(i32 %i.fc)
  %i.fe = zext i32 %i.fd to i64
  %i.ff = sub nuw nsw i32 32, %i.ey
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = shl nuw i64 %i.fe, %i.fg
  %i.fi = or i64 %i.fh, %.val.pre4.i.i.i          ; 2 uses
  store i64 %i.fi, ptr %2, align 8, !tbaa !38
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  store ptr %i.fj, ptr %i.u, align 8, !tbaa !36
  %i.fk = or disjoint i32 %i.ey, 32               ; 2 uses
  store i32 %i.fk, ptr %i.j, align 8, !tbaa !37
  br label %bits_peek_be.exit.i

bits_peek_be.exit.i:                              ; preds = %bb.l, %bb.k, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i
  %i.fl = phi i32 [ %i.ey, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.fk, %bb.l ], [ %i.ey, %bb.k ] ; 4 uses
  %i.fm = phi i64 [ %.val.pre.i.i.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.fi, %bb.l ], [ %.val.pre4.i.i.i, %bb.k ] ; 3 uses
  %i.fn = lshr i64 %i.fm, 52
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fn ; 2 uses
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !29
  %i.fq = sext i16 %i.fp to i32                   ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 2
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !29 ; 2 uses
  %i.ft = sext i16 %i.fs to i32                   ; 3 uses
  %i.fu = icmp slt i16 %i.fs, 0
  br i1 %i.fu, label %bb.m, label %bits_read_vlc_be.exit

bb.m:                                             ; preds = %bits_peek_be.exit.i
  %i.fv = shl i64 %i.fm, 12                       ; 4 uses
  store i64 %i.fv, ptr %2, align 8, !tbaa !38
  %i.fw = add i32 %i.fl, -12                      ; 4 uses
  store i32 %i.fw, ptr %i.j, align 8, !tbaa !37
  %i.fx = sub nsw i32 0, %i.ft
  %i.fy = icmp ult i32 %i.fw, %i.fx
  br i1 %i.fy, label %bb.n, label %bits_priv_set_idx_be.exit.i

bb.n:                                             ; preds = %bb.m
  %i.fz = load ptr, ptr %i.u, align 8, !tbaa !36  ; 3 uses
  %i.ga = load ptr, ptr %i.v, align 8, !tbaa !35
  %.not.i.i.i.i.i = icmp ult ptr %i.fz, %i.ga
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bits_priv_set_idx_be.exit.i

bb.o:                                             ; preds = %bb.n
  %i.gb = load i32, ptr %i.fz, align 1, !tbaa !29
  %i.gc = tail call i32 @llvm.bswap.i32(i32 %i.gb)
  %i.gd = zext i32 %i.gc to i64
  %i.ge = sub nsw i32 44, %i.fl
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = shl i64 %i.gd, %i.gf
  %i.gh = or i64 %i.gg, %i.fv                     ; 2 uses
  store i64 %i.gh, ptr %2, align 8, !tbaa !38
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  store ptr %i.gi, ptr %i.u, align 8, !tbaa !36
  %i.gj = add nuw nsw i32 %i.fl, 20               ; 2 uses
  store i32 %i.gj, ptr %i.j, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i

bits_priv_set_idx_be.exit.i:                      ; preds = %bb.o, %bb.n, %bb.m
  %i.gk = phi i32 [ %i.fw, %bb.n ], [ %i.gj, %bb.o ], [ %i.fw, %bb.m ]
  %.val.i.i.i.i = phi i64 [ %i.fv, %bb.n ], [ %i.gh, %bb.o ], [ %i.fv, %bb.m ] ; 2 uses
  %i.gl = add nsw i32 %i.ft, 64
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = lshr i64 %.val.i.i.i.i, %i.gm
  %i.go = trunc i64 %i.gn to i32
  %i.gp = add i32 %i.go, %i.fq
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.gq ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 2
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !29
  %i.gu = sext i16 %i.gt to i32
  %i.gv = load i16, ptr %i.gr, align 2, !tbaa !29
  %i.gw = zext i16 %i.gv to i32
  br label %bits_read_vlc_be.exit

bits_read_vlc_be.exit:                            ; preds = %bits_peek_be.exit.i, %bits_priv_set_idx_be.exit.i
  %i.gx = phi i32 [ %i.gk, %bits_priv_set_idx_be.exit.i ], [ %i.fl, %bits_peek_be.exit.i ]
  %i.gy = phi i64 [ %.val.i.i.i.i, %bits_priv_set_idx_be.exit.i ], [ %i.fm, %bits_peek_be.exit.i ]
  %.023.i = phi i32 [ %i.gu, %bits_priv_set_idx_be.exit.i ], [ %i.ft, %bits_peek_be.exit.i ] ; 2 uses
  %.0.i208 = phi i32 [ %i.gw, %bits_priv_set_idx_be.exit.i ], [ %i.fq, %bits_peek_be.exit.i ]
  %i.gz = zext nneg i32 %.023.i to i64
  %i.ha = shl i64 %i.gy, %i.gz                    ; 4 uses
  store i64 %i.ha, ptr %2, align 8, !tbaa !38
  %i.hb = sub i32 %i.gx, %.023.i                  ; 6 uses
  store i32 %i.hb, ptr %i.j, align 8, !tbaa !37
  %i.hc = load ptr, ptr %i.w, align 8, !tbaa !44  ; 4 uses
  %i.hd = icmp ult i32 %i.hb, 12
  br i1 %i.hd, label %bb.p, label %bits_peek_be.exit.i211

bb.p:                                             ; preds = %bits_read_vlc_be.exit
  %i.he = load ptr, ptr %i.u, align 8, !tbaa !36  ; 3 uses
  %i.hf = load ptr, ptr %i.v, align 8, !tbaa !35
  %.not.i.i.i.i217 = icmp ult ptr %i.he, %i.hf
  br i1 %.not.i.i.i.i217, label %bb.q, label %bits_peek_be.exit.i211

bb.q:                                             ; preds = %bb.p
  %i.hg = load i32, ptr %i.he, align 1, !tbaa !29
  %i.hh = tail call i32 @llvm.bswap.i32(i32 %i.hg)
  %i.hi = zext i32 %i.hh to i64
  %i.hj = sub nuw nsw i32 32, %i.hb
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = shl nuw i64 %i.hi, %i.hk
  %i.hm = or i64 %i.hl, %i.ha                     ; 2 uses
  store i64 %i.hm, ptr %2, align 8, !tbaa !38
  %i.hn = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  store ptr %i.hn, ptr %i.u, align 8, !tbaa !36
  %i.ho = or disjoint i32 %i.hb, 32               ; 2 uses
  store i32 %i.ho, ptr %i.j, align 8, !tbaa !37
  br label %bits_peek_be.exit.i211

bits_peek_be.exit.i211:                           ; preds = %bits_read_vlc_be.exit, %bb.q, %bb.p
  %i.hp = phi i32 [ %i.hb, %bb.p ], [ %i.ho, %bb.q ], [ %i.hb, %bits_read_vlc_be.exit ] ; 4 uses
  %i.hq = phi i64 [ %i.ha, %bb.p ], [ %i.hm, %bb.q ], [ %i.ha, %bits_read_vlc_be.exit ] ; 3 uses
  %i.hr = lshr i64 %i.hq, 52
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hr ; 2 uses
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !29
  %i.hu = sext i16 %i.ht to i32                   ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 2
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !29 ; 2 uses
  %i.hx = sext i16 %i.hw to i32                   ; 3 uses
  %i.hy = icmp slt i16 %i.hw, 0
  br i1 %i.hy, label %bb.r, label %bits_read_vlc_be.exit219

bb.r:                                             ; preds = %bits_peek_be.exit.i211
  %i.hz = shl i64 %i.hq, 12                       ; 4 uses
  store i64 %i.hz, ptr %2, align 8, !tbaa !38
  %i.ia = add i32 %i.hp, -12                      ; 4 uses
  store i32 %i.ia, ptr %i.j, align 8, !tbaa !37
  %i.ib = sub nsw i32 0, %i.hx
  %i.ic = icmp ult i32 %i.ia, %i.ib
  br i1 %i.ic, label %bb.s, label %bits_priv_set_idx_be.exit.i214

bb.s:                                             ; preds = %bb.r
  %i.id = load ptr, ptr %i.u, align 8, !tbaa !36  ; 3 uses
  %i.ie = load ptr, ptr %i.v, align 8, !tbaa !35
  %.not.i.i.i.i.i216 = icmp ult ptr %i.id, %i.ie
  br i1 %.not.i.i.i.i.i216, label %bb.t, label %bits_priv_set_idx_be.exit.i214

bb.t:                                             ; preds = %bb.s
  %i.if = load i32, ptr %i.id, align 1, !tbaa !29
  %i.ig = tail call i32 @llvm.bswap.i32(i32 %i.if)
  %i.ih = zext i32 %i.ig to i64
  %i.ii = sub nsw i32 44, %i.hp
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = shl i64 %i.ih, %i.ij
  %i.il = or i64 %i.ik, %i.hz                     ; 2 uses
  store i64 %i.il, ptr %2, align 8, !tbaa !38
  %i.im = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  store ptr %i.im, ptr %i.u, align 8, !tbaa !36
  %i.in = add nuw nsw i32 %i.hp, 20               ; 2 uses
  store i32 %i.in, ptr %i.j, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i214

bits_priv_set_idx_be.exit.i214:                   ; preds = %bb.t, %bb.s, %bb.r
  %i.io = phi i32 [ %i.ia, %bb.s ], [ %i.in, %bb.t ], [ %i.ia, %bb.r ]
  %.val.i.i.i.i215 = phi i64 [ %i.hz, %bb.s ], [ %i.il, %bb.t ], [ %i.hz, %bb.r ] ; 2 uses
  %i.ip = add nsw i32 %i.hx, 64
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = lshr i64 %.val.i.i.i.i215, %i.iq
  %i.is = trunc i64 %i.ir to i32
  %i.it = add i32 %i.is, %i.hu
  %i.iu = zext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.iu ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 2
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !29
  %i.iy = sext i16 %i.ix to i32
  %i.iz = load i16, ptr %i.iv, align 2, !tbaa !29
  %i.ja = zext i16 %i.iz to i32
  br label %bits_read_vlc_be.exit219

bits_read_vlc_be.exit219:                         ; preds = %bits_peek_be.exit.i211, %bits_priv_set_idx_be.exit.i214
  %i.jb = phi i32 [ %i.io, %bits_priv_set_idx_be.exit.i214 ], [ %i.hp, %bits_peek_be.exit.i211 ]
  %i.jc = phi i64 [ %.val.i.i.i.i215, %bits_priv_set_idx_be.exit.i214 ], [ %i.hq, %bits_peek_be.exit.i211 ]
  %.023.i212 = phi i32 [ %i.iy, %bits_priv_set_idx_be.exit.i214 ], [ %i.hx, %bits_peek_be.exit.i211 ] ; 2 uses
  %.0.i213 = phi i32 [ %i.ja, %bits_priv_set_idx_be.exit.i214 ], [ %i.hu, %bits_peek_be.exit.i211 ]
  %i.jd = zext nneg i32 %.023.i212 to i64
  %i.je = shl i64 %i.jc, %i.jd                    ; 4 uses
  store i64 %i.je, ptr %2, align 8, !tbaa !38
  %i.jf = sub i32 %i.jb, %.023.i212               ; 6 uses
  store i32 %i.jf, ptr %i.j, align 8, !tbaa !37
  %i.jg = icmp ult i32 %i.jf, 12
  br i1 %i.jg, label %bb.u, label %bits_peek_be.exit.i222

end_hunk_11
begin_hunk_12_@decode_c82i:bb.a
  br label %bits_read_nz_be.exit82

bb.e:                                             ; preds = %bits_read_nz_be.exit
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !36  ; 3 uses
  %i.bf = load ptr, ptr %i.o, align 8, !tbaa !35
  %.not.i.i80 = icmp ult ptr %i.be, %i.bf
  %.val.i.i79.pre180 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i80, label %bits_priv_refill_32_be.exit.i81, label %bits_read_nz_be.exit82

bits_priv_refill_32_be.exit.i81:                  ; preds = %bb.e
  %i.bg = load i32, ptr %i.be, align 1, !tbaa !29
  %i.bh = tail call i32 @llvm.bswap.i32(i32 %i.bg)
  %i.bi = zext i32 %i.bh to i64
  %i.bj = sub nuw nsw i32 32, %i.bc
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw i64 %i.bi, %i.bk
  %i.bm = or i64 %i.bl, %.val.i.i79.pre180
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store ptr %i.bn, ptr %i.n, align 8, !tbaa !36
  %i.bo = or disjoint i32 %i.bc, 32
  br label %bits_read_nz_be.exit82

bits_read_nz_be.exit82:                           ; preds = %bits_read_nz_be.exit.bits_read_nz_be.exit82_crit_edge, %bb.e, %bits_priv_refill_32_be.exit.i81
  %.val.i.i79 = phi i64 [ %i.bm, %bits_priv_refill_32_be.exit.i81 ], [ %.val.i.i79.pre, %bits_read_nz_be.exit.bits_read_nz_be.exit82_crit_edge ], [ %.val.i.i79.pre180, %bb.e ] ; 2 uses
  %i.bp = phi i32 [ %i.bo, %bits_priv_refill_32_be.exit.i81 ], [ %i.bc, %bits_read_nz_be.exit.bits_read_nz_be.exit82_crit_edge ], [ 8, %bb.e ]
  %i.bq = lshr i64 %.val.i.i79, 56
  %i.br = shl i64 %.val.i.i79, 8
  store i64 %i.br, ptr %2, align 8, !tbaa !38
  %i.bs = add i32 %i.bp, -8
  store i32 %i.bs, ptr %i.m, align 8, !tbaa !37
  %i.bt = trunc nuw i64 %i.bq to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %.0170, i64 %indvars.iv
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !29
  %i.bv = load i32, ptr %i.m, align 8, !tbaa !37  ; 4 uses
  %i.bw = icmp ult i32 %i.bv, 8
  br i1 %i.bw, label %bb.f, label %bits_read_nz_be.exit82.bits_read_nz_be.exit86_crit_edge

bits_read_nz_be.exit82.bits_read_nz_be.exit86_crit_edge: ; preds = %bits_read_nz_be.exit82
  %.val.i.i83.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit86

bb.f:                                             ; preds = %bits_read_nz_be.exit82
  %i.bx = load ptr, ptr %i.n, align 8, !tbaa !36  ; 3 uses
  %i.by = load ptr, ptr %i.o, align 8, !tbaa !35
  %.not.i.i84 = icmp ult ptr %i.bx, %i.by
  %.val.i.i83.pre182 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i84, label %bits_priv_refill_32_be.exit.i85, label %bits_read_nz_be.exit86

bits_priv_refill_32_be.exit.i85:                  ; preds = %bb.f
  %i.bz = load i32, ptr %i.bx, align 1, !tbaa !29
  %i.ca = tail call i32 @llvm.bswap.i32(i32 %i.bz)
  %i.cb = zext i32 %i.ca to i64
  %i.cc = sub nuw nsw i32 32, %i.bv
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 %i.cb, %i.cd
  %i.cf = or i64 %i.ce, %.val.i.i83.pre182
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store ptr %i.cg, ptr %i.n, align 8, !tbaa !36
  %i.ch = or disjoint i32 %i.bv, 32
  br label %bits_read_nz_be.exit86

bits_read_nz_be.exit86:                           ; preds = %bits_read_nz_be.exit82.bits_read_nz_be.exit86_crit_edge, %bb.f, %bits_priv_refill_32_be.exit.i85
  %.val.i.i83 = phi i64 [ %i.cf, %bits_priv_refill_32_be.exit.i85 ], [ %.val.i.i83.pre, %bits_read_nz_be.exit82.bits_read_nz_be.exit86_crit_edge ], [ %.val.i.i83.pre182, %bb.f ] ; 2 uses
  %i.ci = phi i32 [ %i.ch, %bits_priv_refill_32_be.exit.i85 ], [ %i.bv, %bits_read_nz_be.exit82.bits_read_nz_be.exit86_crit_edge ], [ 8, %bb.f ]
  %i.cj = lshr i64 %.val.i.i83, 56
  %i.ck = shl i64 %.val.i.i83, 8
  store i64 %i.ck, ptr %2, align 8, !tbaa !38
  %i.cl = add i32 %i.ci, -8
  store i32 %i.cl, ptr %i.m, align 8, !tbaa !37
  %i.cm = trunc nuw i64 %i.cj to i8
  %i.cn = lshr exact i64 %indvars.iv, 1           ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.072168, i64 %i.cn
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !29
  %i.cp = load i32, ptr %i.m, align 8, !tbaa !37  ; 4 uses
  %i.cq = icmp ult i32 %i.cp, 8
  br i1 %i.cq, label %bb.g, label %bits_read_nz_be.exit86.bits_read_nz_be.exit90_crit_edge

bits_read_nz_be.exit86.bits_read_nz_be.exit90_crit_edge: ; preds = %bits_read_nz_be.exit86
  %.val.i.i87.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit90

bb.g:                                             ; preds = %bits_read_nz_be.exit86
  %i.cr = load ptr, ptr %i.n, align 8, !tbaa !36  ; 3 uses
  %i.cs = load ptr, ptr %i.o, align 8, !tbaa !35
  %.not.i.i88 = icmp ult ptr %i.cr, %i.cs
  %.val.i.i87.pre184 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i88, label %bits_priv_refill_32_be.exit.i89, label %bits_read_nz_be.exit90

bits_priv_refill_32_be.exit.i89:                  ; preds = %bb.g
  %i.ct = load i32, ptr %i.cr, align 1, !tbaa !29
  %i.cu = tail call i32 @llvm.bswap.i32(i32 %i.ct)
  %i.cv = zext i32 %i.cu to i64
  %i.cw = sub nuw nsw i32 32, %i.cp
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = shl nuw i64 %i.cv, %i.cx
  %i.cz = or i64 %i.cy, %.val.i.i87.pre184
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store ptr %i.da, ptr %i.n, align 8, !tbaa !36
  %i.db = or disjoint i32 %i.cp, 32
  br label %bits_read_nz_be.exit90

bits_read_nz_be.exit90:                           ; preds = %bits_read_nz_be.exit86.bits_read_nz_be.exit90_crit_edge, %bb.g, %bits_priv_refill_32_be.exit.i89
  %.val.i.i87 = phi i64 [ %i.cz, %bits_priv_refill_32_be.exit.i89 ], [ %.val.i.i87.pre, %bits_read_nz_be.exit86.bits_read_nz_be.exit90_crit_edge ], [ %.val.i.i87.pre184, %bb.g ] ; 2 uses
  %i.dc = phi i32 [ %i.db, %bits_priv_refill_32_be.exit.i89 ], [ %i.cp, %bits_read_nz_be.exit86.bits_read_nz_be.exit90_crit_edge ], [ 8, %bb.g ]
  %i.dd = lshr i64 %.val.i.i87, 56
  %i.de = shl i64 %.val.i.i87, 8
  store i64 %i.de, ptr %2, align 8, !tbaa !38
  %i.df = add i32 %i.dc, -8
  store i32 %i.df, ptr %i.m, align 8, !tbaa !37
  %i.dg = trunc nuw i64 %i.dd to i8
  %i.dh = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.074164, i64 %i.dh
  store i8 %i.dg, ptr %i.di, align 1, !tbaa !29
  %i.dj = load i32, ptr %i.m, align 8, !tbaa !37  ; 4 uses
  %i.dk = icmp ult i32 %i.dj, 8
  br i1 %i.dk, label %bb.h, label %bits_read_nz_be.exit90.bits_read_nz_be.exit94_crit_edge

bits_read_nz_be.exit90.bits_read_nz_be.exit94_crit_edge: ; preds = %bits_read_nz_be.exit90
  %.val.i.i91.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit94

bb.h:                                             ; preds = %bits_read_nz_be.exit90
  %i.dl = load ptr, ptr %i.n, align 8, !tbaa !36  ; 3 uses
  %i.dm = load ptr, ptr %i.o, align 8, !tbaa !35
  %.not.i.i92 = icmp ult ptr %i.dl, %i.dm
  %.val.i.i91.pre186 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i92, label %bits_priv_refill_32_be.exit.i93, label %bits_read_nz_be.exit94

bits_priv_refill_32_be.exit.i93:                  ; preds = %bb.h
  %i.dn = load i32, ptr %i.dl, align 1, !tbaa !29
  %i.do = tail call i32 @llvm.bswap.i32(i32 %i.dn)
  %i.dp = zext i32 %i.do to i64
  %i.dq = sub nuw nsw i32 32, %i.dj
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = shl nuw i64 %i.dp, %i.dr
  %i.dt = or i64 %i.ds, %.val.i.i91.pre186
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  store ptr %i.du, ptr %i.n, align 8, !tbaa !36
  %i.dv = or disjoint i32 %i.dj, 32
  br label %bits_read_nz_be.exit94

bits_read_nz_be.exit94:                           ; preds = %bits_read_nz_be.exit90.bits_read_nz_be.exit94_crit_edge, %bb.h, %bits_priv_refill_32_be.exit.i93
  %.val.i.i91 = phi i64 [ %i.dt, %bits_priv_refill_32_be.exit.i93 ], [ %.val.i.i91.pre, %bits_read_nz_be.exit90.bits_read_nz_be.exit94_crit_edge ], [ %.val.i.i91.pre186, %bb.h ] ; 2 uses
  %i.dw = phi i32 [ %i.dv, %bits_priv_refill_32_be.exit.i93 ], [ %i.dj, %bits_read_nz_be.exit90.bits_read_nz_be.exit94_crit_edge ], [ 8, %bb.h ]
  %i.dx = lshr i64 %.val.i.i91, 56
  %i.dy = shl i64 %.val.i.i91, 8
  store i64 %i.dy, ptr %2, align 8, !tbaa !38
  %i.dz = add i32 %i.dw, -8
  store i32 %i.dz, ptr %i.m, align 8, !tbaa !37
  %i.ea = trunc nuw i64 %i.dx to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %.0170, i64 %i.dh
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !29
  %i.ec = load i32, ptr %i.m, align 8, !tbaa !37  ; 4 uses
  %i.ed = icmp ult i32 %i.ec, 8
  br i1 %i.ed, label %bb.i, label %bits_read_nz_be.exit94.bits_read_nz_be.exit98_crit_edge

bits_read_nz_be.exit94.bits_read_nz_be.exit98_crit_edge: ; preds = %bits_read_nz_be.exit94
  %.val.i.i95.pre = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_read_nz_be.exit98

bb.i:                                             ; preds = %bits_read_nz_be.exit94
  %i.ee = load ptr, ptr %i.n, align 8, !tbaa !36  ; 3 uses
  %i.ef = load ptr, ptr %i.o, align 8, !tbaa !35
  %.not.i.i96 = icmp ult ptr %i.ee, %i.ef
  %.val.i.i95.pre188 = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i96, label %bits_priv_refill_32_be.exit.i97, label %bits_read_nz_be.exit98

bits_priv_refill_32_be.exit.i97:                  ; preds = %bb.i
  %i.eg = load i32, ptr %i.ee, align 1, !tbaa !29
  %i.eh = tail call i32 @llvm.bswap.i32(i32 %i.eg)
  %i.ei = zext i32 %i.eh to i64
  %i.ej = sub nuw nsw i32 32, %i.ec
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl nuw i64 %i.ei, %i.ek
  %i.em = or i64 %i.el, %.val.i.i95.pre188
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store ptr %i.en, ptr %i.n, align 8, !tbaa !36
  %i.eo = or disjoint i32 %i.ec, 32
  br label %bits_read_nz_be.exit98

bits_read_nz_be.exit98:                           ; preds = %bits_read_nz_be.exit94.bits_read_nz_be.exit98_crit_edge, %bb.i, %bits_priv_refill_32_be.exit.i97
  %.val.i.i95 = phi i64 [ %i.em, %bits_priv_refill_32_be.exit.i97 ], [ %.val.i.i95.pre, %bits_read_nz_be.exit94.bits_read_nz_be.exit98_crit_edge ], [ %.val.i.i95.pre188, %bb.i ] ; 2 uses
  %i.ep = phi i32 [ %i.eo, %bits_priv_refill_32_be.exit.i97 ], [ %i.ec, %bits_read_nz_be.exit94.bits_read_nz_be.exit98_crit_edge ], [ 8, %bb.i ]
  %i.eq = lshr i64 %.val.i.i95, 56
  %i.er = shl i64 %.val.i.i95, 8
  store i64 %i.er, ptr %2, align 8, !tbaa !38
  %i.es = add i32 %i.ep, -8
  store i32 %i.es, ptr %i.m, align 8, !tbaa !37
  %i.et = trunc nuw i64 %i.eq to i8
  %i.eu = getelementptr inbounds nuw i8, ptr %.073166, i64 %i.cn
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ev = load i32, ptr %i.p, align 8, !tbaa !32
  %i.ew = sext i32 %i.ev to i64
  %i.ex = icmp slt i64 %indvars.iv.next, %i.ew
  br i1 %i.ex, label %.lr.ph, label %.loopexit, !llvm.loop !147

.lr.ph162:                                        ; preds = %.critedge.preheader, %bits_read_vlc_be.exit154
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %bits_read_vlc_be.exit154 ], [ 0, %.critedge.preheader ] ; 5 uses
  %.sroa.0.0160 = phi i32 [ %i.rw, %bits_read_vlc_be.exit154 ], [ 125, %.critedge.preheader ]
  %.sroa.7.0159 = phi i32 [ %i.sa, %bits_read_vlc_be.exit154 ], [ -128, %.critedge.preheader ]
  %.sroa.9.0158 = phi i32 [ %i.se, %bits_read_vlc_be.exit154 ], [ -128, %.critedge.preheader ]
  %.sroa.11.0157 = phi i32 [ %i.sk, %bits_read_vlc_be.exit154 ], [ 125, %.critedge.preheader ]
  %i.ey = load ptr, ptr %i.q, align 8, !tbaa !44  ; 8 uses
  %i.ez = load i32, ptr %i.m, align 8, !tbaa !37  ; 5 uses
  %i.fa = icmp ult i32 %i.ez, 12
  br i1 %i.fa, label %bb.j, label %.bits_priv_refill_32_be.exit_crit_edge.i.i.i

.bits_priv_refill_32_be.exit_crit_edge.i.i.i:     ; preds = %.lr.ph162
  %.val.pre.i.i.i = load i64, ptr %2, align 8, !tbaa !38
  br label %bits_peek_be.exit.i

bb.j:                                             ; preds = %.lr.ph162
  %i.fb = load ptr, ptr %i.n, align 8, !tbaa !36  ; 3 uses
  %i.fc = load ptr, ptr %i.o, align 8, !tbaa !35
  %.not.i.i.i.i = icmp ult ptr %i.fb, %i.fc
  %.val.pre4.i.i.i = load i64, ptr %2, align 8, !tbaa !38 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.k, label %bits_peek_be.exit.i

bb.k:                                             ; preds = %bb.j
  %i.fd = load i32, ptr %i.fb, align 1, !tbaa !29
  %i.fe = tail call i32 @llvm.bswap.i32(i32 %i.fd)
  %i.ff = zext i32 %i.fe to i64
  %i.fg = sub nuw nsw i32 32, %i.ez
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = shl nuw i64 %i.ff, %i.fh
  %i.fj = or i64 %i.fi, %.val.pre4.i.i.i          ; 2 uses
  store i64 %i.fj, ptr %2, align 8, !tbaa !38
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store ptr %i.fk, ptr %i.n, align 8, !tbaa !36
  %i.fl = or disjoint i32 %i.ez, 32               ; 2 uses
  store i32 %i.fl, ptr %i.m, align 8, !tbaa !37
  br label %bits_peek_be.exit.i

bits_peek_be.exit.i:                              ; preds = %bb.k, %bb.j, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i
  %i.fm = phi i32 [ %i.ez, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.fl, %bb.k ], [ %i.ez, %bb.j ] ; 4 uses
  %i.fn = phi i64 [ %.val.pre.i.i.i, %.bits_priv_refill_32_be.exit_crit_edge.i.i.i ], [ %i.fj, %bb.k ], [ %.val.pre4.i.i.i, %bb.j ] ; 3 uses
  %i.fo = lshr i64 %i.fn, 52
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fo ; 2 uses
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !29
  %i.fr = sext i16 %i.fq to i32                   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !29 ; 2 uses
  %i.fu = sext i16 %i.ft to i32                   ; 3 uses
  %i.fv = icmp slt i16 %i.ft, 0
  br i1 %i.fv, label %bb.l, label %bits_read_vlc_be.exit

bb.l:                                             ; preds = %bits_peek_be.exit.i
  %i.fw = shl i64 %i.fn, 12                       ; 4 uses
  store i64 %i.fw, ptr %2, align 8, !tbaa !38
  %i.fx = add i32 %i.fm, -12                      ; 4 uses
  store i32 %i.fx, ptr %i.m, align 8, !tbaa !37
  %i.fy = sub nsw i32 0, %i.fu
  %i.fz = icmp ult i32 %i.fx, %i.fy
  br i1 %i.fz, label %bb.m, label %bits_priv_set_idx_be.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ga = load ptr, ptr %i.n, align 8, !tbaa !36  ; 3 uses
  %i.gb = load ptr, ptr %i.o, align 8, !tbaa !35
  %.not.i.i.i.i.i = icmp ult ptr %i.ga, %i.gb
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bits_priv_set_idx_be.exit.i

bb.n:                                             ; preds = %bb.m
  %i.gc = load i32, ptr %i.ga, align 1, !tbaa !29
  %i.gd = tail call i32 @llvm.bswap.i32(i32 %i.gc)
  %i.ge = zext i32 %i.gd to i64
  %i.gf = sub nsw i32 44, %i.fm
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = shl i64 %i.ge, %i.gg
  %i.gi = or i64 %i.gh, %i.fw                     ; 2 uses
  store i64 %i.gi, ptr %2, align 8, !tbaa !38
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store ptr %i.gj, ptr %i.n, align 8, !tbaa !36
  %i.gk = add nuw nsw i32 %i.fm, 20               ; 2 uses
  store i32 %i.gk, ptr %i.m, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i

bits_priv_set_idx_be.exit.i:                      ; preds = %bb.n, %bb.m, %bb.l
  %i.gl = phi i32 [ %i.fx, %bb.m ], [ %i.gk, %bb.n ], [ %i.fx, %bb.l ]
  %.val.i.i.i.i = phi i64 [ %i.fw, %bb.m ], [ %i.gi, %bb.n ], [ %i.fw, %bb.l ] ; 2 uses
  %i.gm = add nsw i32 %i.fu, 64
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = lshr i64 %.val.i.i.i.i, %i.gn
  %i.gp = trunc i64 %i.go to i32
  %i.gq = add i32 %i.gp, %i.fr
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.gr ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !29
  %i.gv = sext i16 %i.gu to i32
  %i.gw = load i16, ptr %i.gs, align 2, !tbaa !29
  %i.gx = zext i16 %i.gw to i32
  br label %bits_read_vlc_be.exit

bits_read_vlc_be.exit:                            ; preds = %bits_peek_be.exit.i, %bits_priv_set_idx_be.exit.i
  %i.gy = phi i32 [ %i.gl, %bits_priv_set_idx_be.exit.i ], [ %i.fm, %bits_peek_be.exit.i ]
  %i.gz = phi i64 [ %.val.i.i.i.i, %bits_priv_set_idx_be.exit.i ], [ %i.fn, %bits_peek_be.exit.i ]
  %.023.i = phi i32 [ %i.gv, %bits_priv_set_idx_be.exit.i ], [ %i.fu, %bits_peek_be.exit.i ] ; 2 uses
  %.0.i99 = phi i32 [ %i.gx, %bits_priv_set_idx_be.exit.i ], [ %i.fr, %bits_peek_be.exit.i ]
  %i.ha = zext nneg i32 %.023.i to i64
  %i.hb = shl i64 %i.gz, %i.ha                    ; 4 uses
  store i64 %i.hb, ptr %2, align 8, !tbaa !38
  %i.hc = sub i32 %i.gy, %.023.i                  ; 6 uses
  store i32 %i.hc, ptr %i.m, align 8, !tbaa !37
  %i.hd = load ptr, ptr %i.r, align 8, !tbaa !44  ; 4 uses
  %i.he = icmp ult i32 %i.hc, 12
  br i1 %i.he, label %bb.o, label %bits_peek_be.exit.i102

bb.o:                                             ; preds = %bits_read_vlc_be.exit
  %i.hf = load ptr, ptr %i.n, align 8, !tbaa !36  ; 3 uses
  %i.hg = load ptr, ptr %i.o, align 8, !tbaa !35
  %.not.i.i.i.i108 = icmp ult ptr %i.hf, %i.hg
  br i1 %.not.i.i.i.i108, label %bb.p, label %bits_peek_be.exit.i102

bb.p:                                             ; preds = %bb.o
  %i.hh = load i32, ptr %i.hf, align 1, !tbaa !29
  %i.hi = tail call i32 @llvm.bswap.i32(i32 %i.hh)
  %i.hj = zext i32 %i.hi to i64
  %i.hk = sub nuw nsw i32 32, %i.hc
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = shl nuw i64 %i.hj, %i.hl
  %i.hn = or i64 %i.hm, %i.hb                     ; 2 uses
  store i64 %i.hn, ptr %2, align 8, !tbaa !38
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  store ptr %i.ho, ptr %i.n, align 8, !tbaa !36
  %i.hp = or disjoint i32 %i.hc, 32               ; 2 uses
  store i32 %i.hp, ptr %i.m, align 8, !tbaa !37
  br label %bits_peek_be.exit.i102

bits_peek_be.exit.i102:                           ; preds = %bits_read_vlc_be.exit, %bb.p, %bb.o
  %i.hq = phi i32 [ %i.hc, %bb.o ], [ %i.hp, %bb.p ], [ %i.hc, %bits_read_vlc_be.exit ] ; 4 uses
  %i.hr = phi i64 [ %i.hb, %bb.o ], [ %i.hn, %bb.p ], [ %i.hb, %bits_read_vlc_be.exit ] ; 3 uses
  %i.hs = lshr i64 %i.hr, 52
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.hs ; 2 uses
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !29
  %i.hv = sext i16 %i.hu to i32                   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 2
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !29 ; 2 uses
  %i.hy = sext i16 %i.hx to i32                   ; 3 uses
  %i.hz = icmp slt i16 %i.hx, 0
  br i1 %i.hz, label %bb.q, label %bits_read_vlc_be.exit110

bb.q:                                             ; preds = %bits_peek_be.exit.i102
  %i.ia = shl i64 %i.hr, 12                       ; 4 uses
  store i64 %i.ia, ptr %2, align 8, !tbaa !38
  %i.ib = add i32 %i.hq, -12                      ; 4 uses
  store i32 %i.ib, ptr %i.m, align 8, !tbaa !37
  %i.ic = sub nsw i32 0, %i.hy
  %i.id = icmp ult i32 %i.ib, %i.ic
  br i1 %i.id, label %bb.r, label %bits_priv_set_idx_be.exit.i105

bb.r:                                             ; preds = %bb.q
  %i.ie = load ptr, ptr %i.n, align 8, !tbaa !36  ; 3 uses
  %i.if = load ptr, ptr %i.o, align 8, !tbaa !35
  %.not.i.i.i.i.i107 = icmp ult ptr %i.ie, %i.if
  br i1 %.not.i.i.i.i.i107, label %bb.s, label %bits_priv_set_idx_be.exit.i105

bb.s:                                             ; preds = %bb.r
  %i.ig = load i32, ptr %i.ie, align 1, !tbaa !29
  %i.ih = tail call i32 @llvm.bswap.i32(i32 %i.ig)
  %i.ii = zext i32 %i.ih to i64
  %i.ij = sub nsw i32 44, %i.hq
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = shl i64 %i.ii, %i.ik
  %i.im = or i64 %i.il, %i.ia                     ; 2 uses
  store i64 %i.im, ptr %2, align 8, !tbaa !38
  %i.in = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  store ptr %i.in, ptr %i.n, align 8, !tbaa !36
  %i.io = add nuw nsw i32 %i.hq, 20               ; 2 uses
  store i32 %i.io, ptr %i.m, align 8, !tbaa !37
  br label %bits_priv_set_idx_be.exit.i105

bits_priv_set_idx_be.exit.i105:                   ; preds = %bb.s, %bb.r, %bb.q
  %i.ip = phi i32 [ %i.ib, %bb.r ], [ %i.io, %bb.s ], [ %i.ib, %bb.q ]
  %.val.i.i.i.i106 = phi i64 [ %i.ia, %bb.r ], [ %i.im, %bb.s ], [ %i.ia, %bb.q ] ; 2 uses
  %i.iq = add nsw i32 %i.hy, 64
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = lshr i64 %.val.i.i.i.i106, %i.ir
  %i.it = trunc i64 %i.is to i32
  %i.iu = add i32 %i.it, %i.hv
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.iv ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !29
  %i.iz = sext i16 %i.iy to i32
  %i.ja = load i16, ptr %i.iw, align 2, !tbaa !29
  %i.jb = zext i16 %i.ja to i32
  br label %bits_read_vlc_be.exit110

bits_read_vlc_be.exit110:                         ; preds = %bits_peek_be.exit.i102, %bits_priv_set_idx_be.exit.i105
  %i.jc = phi i32 [ %i.ip, %bits_priv_set_idx_be.exit.i105 ], [ %i.hq, %bits_peek_be.exit.i102 ]
  %i.jd = phi i64 [ %.val.i.i.i.i106, %bits_priv_set_idx_be.exit.i105 ], [ %i.hr, %bits_peek_be.exit.i102 ]
  %.023.i103 = phi i32 [ %i.iz, %bits_priv_set_idx_be.exit.i105 ], [ %i.hy, %bits_peek_be.exit.i102 ] ; 2 uses
  %.0.i104 = phi i32 [ %i.jb, %bits_priv_set_idx_be.exit.i105 ], [ %i.hv, %bits_peek_be.exit.i102 ]
  %i.je = zext nneg i32 %.023.i103 to i64
  %i.jf = shl i64 %i.jd, %i.je                    ; 4 uses
  store i64 %i.jf, ptr %2, align 8, !tbaa !38
  %i.jg = sub i32 %i.jc, %.023.i103               ; 6 uses
  store i32 %i.jg, ptr %i.m, align 8, !tbaa !37
  %i.jh = icmp ult i32 %i.jg, 12
  br i1 %i.jh, label %bb.t, label %bits_peek_be.exit.i113

end_hunk_12
