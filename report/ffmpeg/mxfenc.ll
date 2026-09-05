Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mxfenc?download=true
inline.NumInlined: 242
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@mxf_write_packet:bb.a
  %i.afr = and i32 %i.afq, 511                    ; 2 uses
  %i.afs = icmp samesign ugt i32 %i.afr, 492
  %i.aft = sub nuw nsw i32 1024, %i.afr
  %i.afu = sub i32 492, %i.afp
  %i.afv = and i32 %i.afu, 511
  %.0.i224 = select i1 %i.afs, i32 %i.aft, i32 %i.afv
  %i.afw = add i32 %.0.i224, %i.afq
  %i.afx = zext i32 %i.afw to i64
  %i.afy = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.afz = load i64, ptr %i.afy, align 8, !tbaa !106
  %i.aga = add i64 %i.afz, %i.afx
  store i64 %i.aga, ptr %i.afy, align 8, !tbaa !106
  br label %mxf_write_opatom_packet.exit

mxf_write_opatom_packet.exit:                     ; preds = %.loopexit.i220, %bb.fp, %bb.ec, %mxf_write_klv_fill.exit.i, %bb.dw, %bb.ft, %bb.eo, %bb.en, %bb.ei, %mxf_write_klv_fill.exit, %bb.ef, %bb.fi, %bb.dp, %bb.de, %.split136.us.thread.i, %mxf_parse_prores_frame.exit, %mxf_parse_dnxhd_frame.exit, %bb.aj, %bb.h, %bb.c
  %.0 = phi i32 [ -1, %bb.dp ], [ %i.ae, %bb.h ], [ %i.yp, %bb.eo ], [ %i.yc, %bb.ei ], [ %i.yn, %bb.en ], [ -1163346256, %bb.fi ], [ -1094995529, %bb.c ], [ %i.xl, %bb.ef ], [ %i.ya, %mxf_write_klv_fill.exit ], [ -1, %bb.aj ], [ -1, %mxf_parse_dnxhd_frame.exit ], [ -1, %mxf_parse_prores_frame.exit ], [ %i.wi, %mxf_write_klv_fill.exit.i ], [ -1, %.split136.us.thread.i ], [ -1, %bb.de ], [ 0, %bb.ft ], [ 0, %bb.ec ], [ %i.vt, %bb.dw ], [ 0, %bb.fp ], [ 0, %.loopexit.i220 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @mxf_write_footer(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 18 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !50
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.i = icmp eq ptr %i.h, @ff_mxf_opatom_muxer
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !119
  %.not56 = icmp eq ptr %i.k, null
  br i1 %.not56, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.m = load i32, ptr %i.l, align 4, !tbaa !112
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !54
  %i.p = add i32 %i.o, %i.m
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 %i.q, ptr %i.r, align 8, !tbaa !120
  %i.s = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 0, i32 noundef 1) #13
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = and i32 %i.t, 511                        ; 2 uses
  %i.v = icmp samesign ugt i32 %i.u, 492
  %i.w = sub nuw nsw i32 1024, %i.u
  %i.x = sub i32 0, %i.t
  %i.y = and i32 %i.x, 511
  %.0.i.i = select i1 %i.v, i32 %i.w, i32 %i.y    ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not.i, label %mxf_write_klv_fill.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !31
  tail call void @avio_write(ptr noundef %i.z, ptr noundef nonnull @klv_fill_key, i32 noundef 16) #13
  %i.aa = add nsw i32 %.0.i.i, -20                ; 2 uses
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !31  ; 2 uses
  tail call void @avio_w8(ptr noundef %i.ab, i32 noundef 131) #13
  tail call void @avio_wb24(ptr noundef %i.ab, i32 noundef %i.aa) #13
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.ad = zext i32 %i.aa to i64
  tail call void @ffio_fill(ptr noundef %i.ac, i32 noundef 0, i64 noundef %i.ad) #13
  br label %mxf_write_klv_fill.exit

mxf_write_klv_fill.exit:                          ; preds = %bb.d, %bb.e
  %i.ae = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 0, i32 noundef 1) #13
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !121
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 124 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !53
  %.not57 = icmp eq i32 %i.ah, 0
  br i1 %.not57, label %bb.h, label %bb.f

bb.f:                                             ; preds = %mxf_write_klv_fill.exit
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.aj = icmp eq ptr %i.ai, @ff_mxf_opatom_muxer
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = tail call fastcc i32 @mxf_write_partition(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @footer_partition_key, i32 noundef 0) ; 2 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.loopexit, label %bb.k

bb.h:                                             ; preds = %bb.f, %mxf_write_klv_fill.exit
  %i.am = tail call fastcc i32 @mxf_write_partition(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 2, ptr noundef nonnull @footer_partition_key, i32 noundef 0) ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.ap = tail call i64 @avio_seek(ptr noundef %i.ao, i64 noundef 0, i32 noundef 1) #13
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %i.ar = and i32 %i.aq, 511                      ; 2 uses
  %i.as = icmp samesign ugt i32 %i.ar, 492
  %i.at = sub nuw nsw i32 1024, %i.ar
  %i.au = sub i32 0, %i.aq
  %i.av = and i32 %i.au, 511
  %.0.i.i60 = select i1 %i.as, i32 %i.at, i32 %i.av ; 2 uses
  %.not.i61 = icmp eq i32 %.0.i.i60, 0
  br i1 %.not.i61, label %mxf_write_klv_fill.exit62, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !31
  tail call void @avio_write(ptr noundef %i.aw, ptr noundef nonnull @klv_fill_key, i32 noundef 16) #13
  %i.ax = add nsw i32 %.0.i.i60, -20              ; 2 uses
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !31  ; 2 uses
  tail call void @avio_w8(ptr noundef %i.ay, i32 noundef 131) #13
  tail call void @avio_wb24(ptr noundef %i.ay, i32 noundef %i.ax) #13
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.ba = zext i32 %i.ax to i64
  tail call void @ffio_fill(ptr noundef %i.az, i32 noundef 0, i64 noundef %i.ba) #13
  br label %mxf_write_klv_fill.exit62

mxf_write_klv_fill.exit62:                        ; preds = %bb.i, %bb.j
  %i.bb = tail call fastcc i32 @mxf_write_index_table_segment(ptr noundef nonnull %0) ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %mxf_write_klv_fill.exit62, %bb.g
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.be = tail call i64 @avio_seek(ptr noundef %i.bd, i64 noundef 0, i32 noundef 1) #13
  %i.bf = trunc i64 %i.be to i32                  ; 2 uses
  %i.bg = and i32 %i.bf, 511                      ; 2 uses
  %i.bh = icmp samesign ugt i32 %i.bg, 492
  %i.bi = sub nuw nsw i32 1024, %i.bg
  %i.bj = sub i32 0, %i.bf
  %i.bk = and i32 %i.bj, 511
  %.0.i.i63 = select i1 %i.bh, i32 %i.bi, i32 %i.bk ; 2 uses
  %.not.i64 = icmp eq i32 %.0.i.i63, 0
  br i1 %.not.i64, label %mxf_write_klv_fill.exit65, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !31
  tail call void @avio_write(ptr noundef %i.bl, ptr noundef nonnull @klv_fill_key, i32 noundef 16) #13
  %i.bm = add nsw i32 %.0.i.i63, -20              ; 2 uses
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !31  ; 2 uses
  tail call void @avio_w8(ptr noundef %i.bn, i32 noundef 131) #13
  tail call void @avio_wb24(ptr noundef %i.bn, i32 noundef %i.bm) #13
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.bp = zext i32 %i.bm to i64
  tail call void @ffio_fill(ptr noundef %i.bo, i32 noundef 0, i64 noundef %i.bp) #13
  br label %mxf_write_klv_fill.exit65

mxf_write_klv_fill.exit65:                        ; preds = %bb.k, %bb.l
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !30  ; 4 uses
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !31  ; 13 uses
  %i.bs = tail call i64 @avio_seek(ptr noundef %i.br, i64 noundef 0, i32 noundef 1) #13, !inline_history !181
  tail call void @avio_write(ptr noundef %i.br, ptr noundef nonnull @ff_mxf_random_index_pack_key, i32 noundef 16) #13, !inline_history !181
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 72 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !122 ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = mul nuw nsw i64 %i.bv, 12
  %i.bx = add nuw nsw i64 %i.bw, 28               ; 2 uses
  %i.by = icmp ult i32 %i.bu, 9
  %i.bz = trunc i64 %i.bx to i32                  ; 4 uses
  br i1 %i.by, label %klv_ber_length.exit.thread.i.i, label %klv_ber_length.exit.i.i

klv_ber_length.exit.i.i:                          ; preds = %mxf_write_klv_fill.exit65
  %.not.i.i.i.i = icmp ult i32 %i.bz, 65536       ; 2 uses
  %i.ca = lshr i32 %i.bz, 16
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.bz, i32 %i.ca ; 3 uses
  %spec.select12.i.i.i.i = select i1 %.not.i.i.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i.i = icmp samesign ult i32 %spec.select.i.i.i.i, 256 ; 2 uses
  %i.cb = lshr i32 %spec.select.i.i.i.i, 8
  %i.cc = or disjoint i32 %spec.select12.i.i.i.i, 8
  %.110.i.i.i.i = select i1 %.not11.i.i.i.i, i32 %spec.select.i.i.i.i, i32 %i.cb
  %.1.i.i.i.i = select i1 %.not11.i.i.i.i, i32 %spec.select12.i.i.i.i, i32 %i.cc ; 2 uses
  %i.cd = zext nneg i32 %.110.i.i.i.i to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !61  ; 2 uses
  %i.cg = zext i8 %i.cf to i32
  %i.ch = add nuw nsw i32 %.1.i.i.i.i, %i.cg
  %i.ci = lshr i32 %i.ch, 3
  %i.cj = add nuw nsw i32 %i.ci, 129
  tail call void @avio_w8(ptr noundef %i.br, i32 noundef %i.cj) #13, !inline_history !181
  %i.ck = zext nneg i32 %.1.i.i.i.i to i64
  %i.cl = zext i8 %i.cf to i64
  %i.cm = add nuw nsw i64 %i.cl, %i.ck
  %i.cn = lshr i64 %i.cm, 3
  %i.co = add nuw nsw i64 %i.cn, 1
  br label %bb.m

klv_ber_length.exit.thread.i.i:                   ; preds = %mxf_write_klv_fill.exit65
  tail call void @avio_w8(ptr noundef %i.br, i32 noundef %i.bz) #13, !inline_history !181
  br label %klv_encode_ber_length.exit.i

bb.m:                                             ; preds = %bb.m, %klv_ber_length.exit.i.i
  %indvars.iv.i.i = phi i64 [ %i.co, %klv_ber_length.exit.i.i ], [ %indvars.iv.next.i.i, %bb.m ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.cp = shl nsw i64 %indvars.iv.next.i.i, 3
  %1 = and i64 %i.cp, 4294967288
  %i.cq = lshr i64 %i.bx, %1
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cr, 255
  tail call void @avio_w8(ptr noundef %i.br, i32 noundef %i.cs) #13, !inline_history !181
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 0
  br i1 %.not.i.i, label %klv_encode_ber_length.exit.i, label %bb.m, !llvm.loop !0

klv_encode_ber_length.exit.i:                     ; preds = %bb.m, %klv_ber_length.exit.thread.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bq, i64 124
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !53
  %.not.i66 = icmp eq i32 %i.cu, 0
  br i1 %.not.i66, label %bb.o, label %bb.n

bb.n:                                             ; preds = %klv_encode_ber_length.exit.i
  %i.cv = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.cw = icmp eq ptr %i.cv, @ff_mxf_opatom_muxer
  br i1 %i.cw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %klv_encode_ber_length.exit.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink.i = phi i32 [ 0, %bb.o ], [ 1, %bb.n ]
  tail call void @avio_wb32(ptr noundef %i.br, i32 noundef %.sink.i) #13, !inline_history !181
  tail call void @avio_wb64(ptr noundef %i.br, i64 noundef 0) #13, !inline_history !181
  %i.cx = load i32, ptr %i.bt, align 8, !tbaa !122
  %.not24.i = icmp eq i32 %i.cx, 0
  br i1 %.not24.i, label %mxf_write_random_index_pack.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 2 uses
  tail call void @avio_wb32(ptr noundef %i.br, i32 noundef 1) #13, !inline_history !181
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !119
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.i
  %i.db = load i64, ptr %i.da, align 8, !tbaa !123
  tail call void @avio_wb64(ptr noundef %i.br, i64 noundef %i.db) #13, !inline_history !181
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dc = load i32, ptr %i.bt, align 8, !tbaa !122
  %i.dd = zext i32 %i.dc to i64
  %i.de = icmp samesign ult i64 %indvars.iv.next.i, %i.dd
  br i1 %i.de, label %bb.q, label %mxf_write_random_index_pack.exit, !llvm.loop !182

mxf_write_random_index_pack.exit:                 ; preds = %bb.q, %bb.p
  tail call void @avio_wb32(ptr noundef %i.br, i32 noundef 0) #13, !inline_history !181
  %i.df = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !121
  tail call void @avio_wb64(ptr noundef %i.br, i64 noundef %i.dg) #13, !inline_history !181
  %i.dh = tail call i64 @avio_seek(ptr noundef %i.br, i64 noundef 0, i32 noundef 1) #13, !inline_history !181
  %i.di = sub i64 %i.dh, %i.bs
  %i.dj = trunc i64 %i.di to i32
  %i.dk = add i32 %i.dj, 4
  tail call void @avio_wb32(ptr noundef %i.br, i32 noundef %i.dk) #13, !inline_history !181
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 144
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !185
  %i.do = and i32 %i.dn, 1
  %.not58 = icmp eq i32 %i.do, 0
  br i1 %.not58, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %mxf_write_random_index_pack.exit
  %i.dp = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.dq = icmp eq ptr %i.dp, @ff_mxf_opatom_muxer
  br i1 %i.dq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !119
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !123
  %i.du = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.dt, i32 noundef 0) #13 ; 0 uses
  %i.dv = tail call fastcc i32 @mxf_write_opatom_body_partition(ptr noundef nonnull %0) ; 2 uses
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dx = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.dy = load i32, ptr %i.ag, align 4, !tbaa !53
  %.not59 = icmp eq i32 %i.dy, 0
  br i1 %.not59, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dz = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.ea = icmp eq ptr %i.dz, @ff_mxf_opatom_muxer
  br i1 %i.ea, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eb = tail call fastcc i32 @mxf_write_partition(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 2, ptr noundef nonnull @header_closed_partition_key, i32 noundef 1) ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ed = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.ee = tail call i64 @avio_seek(ptr noundef %i.ed, i64 noundef 0, i32 noundef 1) #13
  %i.ef = trunc i64 %i.ee to i32                  ; 2 uses
  %i.eg = and i32 %i.ef, 511                      ; 2 uses
  %i.eh = icmp samesign ugt i32 %i.eg, 492
  %i.ei = sub nuw nsw i32 1024, %i.eg
  %i.ej = sub i32 0, %i.ef
  %i.ek = and i32 %i.ej, 511
  %.0.i.i67 = select i1 %i.eh, i32 %i.ei, i32 %i.ek ; 2 uses
  %.not.i68 = icmp eq i32 %.0.i.i67, 0
  br i1 %.not.i68, label %mxf_write_klv_fill.exit69, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.el = load ptr, ptr %i.c, align 8, !tbaa !31
  tail call void @avio_write(ptr noundef %i.el, ptr noundef nonnull @klv_fill_key, i32 noundef 16) #13
  %i.em = add nsw i32 %.0.i.i67, -20              ; 2 uses
  %i.en = load ptr, ptr %i.c, align 8, !tbaa !31  ; 2 uses
  tail call void @avio_w8(ptr noundef %i.en, i32 noundef 131) #13
  tail call void @avio_wb24(ptr noundef %i.en, i32 noundef %i.em) #13
  %i.eo = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.ep = zext i32 %i.em to i64
  tail call void @ffio_fill(ptr noundef %i.eo, i32 noundef 0, i64 noundef %i.ep) #13
  br label %mxf_write_klv_fill.exit69

mxf_write_klv_fill.exit69:                        ; preds = %bb.w, %bb.x
  %i.eq = tail call fastcc i32 @mxf_write_index_table_segment(ptr noundef nonnull %0) ; 2 uses
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %.loopexit, label %bb.z

bb.y:                                             ; preds = %bb.u, %bb.t
  %i.es = tail call fastcc i32 @mxf_write_partition(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @header_closed_partition_key, i32 noundef 1) ; 2 uses
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y, %mxf_write_klv_fill.exit69
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !122
  %.not71 = icmp eq i32 %i.ev, 0
  br i1 %.not71, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !119
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !123
  %i.fa = add i64 %i.ez, 44
  %i.fb = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.fa, i32 noundef 0) #13 ; 0 uses
  %i.fc = load i64, ptr %i.af, align 8, !tbaa !121
  tail call void @avio_wb64(ptr noundef %i.d, i64 noundef %i.fc) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fd = load i32, ptr %i.eu, align 8, !tbaa !122
  %i.fe = zext i32 %i.fd to i64
  %i.ff = icmp samesign ult i64 %indvars.iv.next, %i.fe
  br i1 %i.ff, label %bb.aa, label %.loopexit, !llvm.loop !183

.loopexit:                                        ; preds = %bb.aa, %bb.z, %mxf_write_random_index_pack.exit, %bb.y, %mxf_write_klv_fill.exit69, %bb.v, %bb.s, %mxf_write_klv_fill.exit62, %bb.h, %bb.g, %bb.a, %bb.c
  %.048 = phi i32 [ %i.ak, %bb.g ], [ %i.am, %bb.h ], [ %i.bb, %mxf_write_klv_fill.exit62 ], [ %i.eq, %mxf_write_klv_fill.exit69 ], [ %i.es, %bb.y ], [ %i.dv, %bb.s ], [ %i.eb, %bb.v ], [ -1313558101, %bb.a ], [ -1313558101, %bb.c ], [ 0, %mxf_write_random_index_pack.exit ], [ 0, %bb.z ], [ 0, %bb.aa ]
  ret i32 %.048
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 2) i32 @mxf_interleave(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !37
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !42   ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !190  ; 3 uses
  %i.l = add nsw i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !190
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.k, ptr %i.m, align 8, !tbaa !124
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.n, align 8, !tbaa !191
  %i.o = tail call i32 @ff_interleave_add_packet(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @mxf_compare_timestamps) #13 ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %bb.c, label %mxf_interleave_get_packet.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !104  ; 4 uses
  %.not71.i = icmp eq i32 %i.r, 0
  br i1 %.not71.i, label %mxf_interleave_get_packet.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 8 uses
  %wide.trip.count.i = zext i32 %i.r to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.u = icmp ult i32 %i.r, 4
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
end_hunk_0
begin_hunk_1_@mxf_write_partition:bb.a
  %i.ex = sext <4 x i1> %i.ew to <4 x i32>
  %i.ey = getelementptr inbounds nuw i8, ptr %i.co, i64 208
  %wide.load143.1 = load <4 x i8>, ptr %i.ey, align 8, !tbaa !61
  %i.ez = icmp ne <4 x i8> %wide.load143.1, zeroinitializer
  %i.fa = sext <4 x i1> %i.ez to <4 x i32>
  %i.fb = add nsw <4 x i32> %i.ex, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.co, i64 216
  %wide.load143.2 = load <4 x i8>, ptr %i.fc, align 8, !tbaa !61
  %i.fd = icmp ne <4 x i8> %wide.load143.2, zeroinitializer
  %i.fe = sext <4 x i1> %i.fd to <4 x i32>
  %i.ff = add nsw <4 x i32> %i.fb, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.co, i64 224
  %wide.load143.3 = load <4 x i8>, ptr %i.fg, align 8, !tbaa !61
  %i.fh = icmp ne <4 x i8> %wide.load143.3, zeroinitializer
  %i.fi = sext <4 x i1> %i.fh to <4 x i32>
  %i.fj = add nsw <4 x i32> %i.ff, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.co, i64 232
  %wide.load143.4 = load <4 x i8>, ptr %i.fk, align 8, !tbaa !61
  %i.fl = icmp ne <4 x i8> %wide.load143.4, zeroinitializer
  %i.fm = sext <4 x i1> %i.fl to <4 x i32>
  %i.fn = add nsw <4 x i32> %i.fj, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.co, i64 240
  %wide.load143.5 = load <4 x i8>, ptr %i.fo, align 8, !tbaa !61
  %i.fp = icmp ne <4 x i8> %wide.load143.5, zeroinitializer
  %i.fq = sext <4 x i1> %i.fp to <4 x i32>
  %i.fr = add nsw <4 x i32> %i.fn, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.co, i64 248
  %wide.load143.6 = load <4 x i8>, ptr %i.fs, align 8, !tbaa !61
  %i.ft = icmp ne <4 x i8> %wide.load143.6, zeroinitializer
  %i.fu = sext <4 x i1> %i.ft to <4 x i32>
  %i.fv = add nsw <4 x i32> %i.fr, %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.co, i64 256
  %wide.load143.7 = load <4 x i8>, ptr %i.fw, align 8, !tbaa !61
  %i.fx = icmp ne <4 x i8> %wide.load143.7, zeroinitializer
  %i.fy = sext <4 x i1> %i.fx to <4 x i32>
  %i.fz = add <4 x i32> %i.fv, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.co, i64 264
  %wide.load143.8 = load <4 x i8>, ptr %i.ga, align 8, !tbaa !61
  %i.gb = icmp ne <4 x i8> %wide.load143.8, zeroinitializer
  %i.gc = sext <4 x i1> %i.gb to <4 x i32>
  %i.gd = add <4 x i32> %i.fz, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.co, i64 272
  %wide.load143.9 = load <4 x i8>, ptr %i.ge, align 8, !tbaa !61
  %i.gf = icmp ne <4 x i8> %wide.load143.9, zeroinitializer
  %i.gg = sext <4 x i1> %i.gf to <4 x i32>
  %i.gh = add <4 x i32> %i.gd, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.co, i64 280
  %wide.load143.10 = load <4 x i8>, ptr %i.gi, align 8, !tbaa !61
  %i.gj = icmp ne <4 x i8> %wide.load143.10, zeroinitializer
  %i.gk = sext <4 x i1> %i.gj to <4 x i32>
  %i.gl = add <4 x i32> %i.gh, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.co, i64 288
  %wide.load143.11 = load <4 x i8>, ptr %i.gm, align 8, !tbaa !61
  %i.gn = icmp ne <4 x i8> %wide.load143.11, zeroinitializer
  %i.go = sext <4 x i1> %i.gn to <4 x i32>
  %i.gp = add <4 x i32> %i.gl, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.co, i64 296
  %wide.load143.12 = load <4 x i8>, ptr %i.gq, align 8, !tbaa !61
  %i.gr = icmp ne <4 x i8> %wide.load143.12, zeroinitializer
  %i.gs = sext <4 x i1> %i.gr to <4 x i32>
  %i.gt = add <4 x i32> %i.gp, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.co, i64 304
  %wide.load143.13 = load <4 x i8>, ptr %i.gu, align 8, !tbaa !61
  %i.gv = icmp ne <4 x i8> %wide.load143.13, zeroinitializer
  %i.gw = sext <4 x i1> %i.gv to <4 x i32>
  %i.gx = add <4 x i32> %i.gt, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.co, i64 312
  %wide.load143.14 = load <4 x i8>, ptr %i.gy, align 8, !tbaa !61
  %i.gz = icmp ne <4 x i8> %wide.load143.14, zeroinitializer
  %i.ha = sext <4 x i1> %i.gz to <4 x i32>
  %i.hb = add <4 x i32> %i.gx, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.co, i64 320
  %wide.load143.15 = load <4 x i8>, ptr %i.hc, align 8, !tbaa !61
  %i.hd = icmp ne <4 x i8> %wide.load143.15, zeroinitializer
  %i.he = sext <4 x i1> %i.hd to <4 x i32>
  %i.hf = add <4 x i32> %i.hb, %i.he
  %wide.load = load <4 x i8>, ptr %i.eu, align 4, !tbaa !61
  %.not145 = icmp eq <4 x i8> %wide.load, zeroinitializer
  %i.hg = select <4 x i1> %.not145, <4 x i32> <i32 129, i32 0, i32 0, i32 0>, <4 x i32> <i32 128, i32 -1, i32 -1, i32 -1>
  %i.hh = getelementptr inbounds nuw i8, ptr %i.co, i64 204
  %wide.load.1 = load <4 x i8>, ptr %i.hh, align 4, !tbaa !61
  %i.hi = icmp ne <4 x i8> %wide.load.1, zeroinitializer
  %i.hj = sext <4 x i1> %i.hi to <4 x i32>
  %i.hk = add nsw <4 x i32> %i.hg, %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.co, i64 212
  %wide.load.2 = load <4 x i8>, ptr %i.hl, align 4, !tbaa !61
  %i.hm = icmp ne <4 x i8> %wide.load.2, zeroinitializer
  %i.hn = sext <4 x i1> %i.hm to <4 x i32>
  %i.ho = add nsw <4 x i32> %i.hk, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.co, i64 220
  %wide.load.3 = load <4 x i8>, ptr %i.hp, align 4, !tbaa !61
  %i.hq = icmp ne <4 x i8> %wide.load.3, zeroinitializer
  %i.hr = sext <4 x i1> %i.hq to <4 x i32>
  %i.hs = add nsw <4 x i32> %i.ho, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.co, i64 228
  %wide.load.4 = load <4 x i8>, ptr %i.ht, align 4, !tbaa !61
  %i.hu = icmp ne <4 x i8> %wide.load.4, zeroinitializer
  %i.hv = sext <4 x i1> %i.hu to <4 x i32>
  %i.hw = add nsw <4 x i32> %i.hs, %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.co, i64 236
  %wide.load.5 = load <4 x i8>, ptr %i.hx, align 4, !tbaa !61
  %i.hy = icmp ne <4 x i8> %wide.load.5, zeroinitializer
  %i.hz = sext <4 x i1> %i.hy to <4 x i32>
  %i.ia = add nsw <4 x i32> %i.hw, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.co, i64 244
  %wide.load.6 = load <4 x i8>, ptr %i.ib, align 4, !tbaa !61
  %i.ic = icmp ne <4 x i8> %wide.load.6, zeroinitializer
  %i.id = sext <4 x i1> %i.ic to <4 x i32>
  %i.ie = add <4 x i32> %i.ia, %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %i.co, i64 252
  %wide.load.7 = load <4 x i8>, ptr %i.if, align 4, !tbaa !61
  %i.ig = icmp ne <4 x i8> %wide.load.7, zeroinitializer
  %i.ih = sext <4 x i1> %i.ig to <4 x i32>
  %i.ii = add <4 x i32> %i.ie, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.co, i64 260
  %wide.load.8 = load <4 x i8>, ptr %i.ij, align 4, !tbaa !61
  %i.ik = icmp ne <4 x i8> %wide.load.8, zeroinitializer
  %i.il = sext <4 x i1> %i.ik to <4 x i32>
  %i.im = add <4 x i32> %i.ii, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.co, i64 268
  %wide.load.9 = load <4 x i8>, ptr %i.in, align 4, !tbaa !61
  %i.io = icmp ne <4 x i8> %wide.load.9, zeroinitializer
  %i.ip = sext <4 x i1> %i.io to <4 x i32>
  %i.iq = add <4 x i32> %i.im, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.co, i64 276
  %wide.load.10 = load <4 x i8>, ptr %i.ir, align 4, !tbaa !61
  %i.is = icmp ne <4 x i8> %wide.load.10, zeroinitializer
  %i.it = sext <4 x i1> %i.is to <4 x i32>
  %i.iu = add <4 x i32> %i.iq, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.co, i64 284
  %wide.load.11 = load <4 x i8>, ptr %i.iv, align 4, !tbaa !61
  %i.iw = icmp ne <4 x i8> %wide.load.11, zeroinitializer
  %i.ix = sext <4 x i1> %i.iw to <4 x i32>
  %i.iy = add <4 x i32> %i.iu, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.co, i64 292
  %wide.load.12 = load <4 x i8>, ptr %i.iz, align 4, !tbaa !61
  %i.ja = icmp ne <4 x i8> %wide.load.12, zeroinitializer
  %i.jb = sext <4 x i1> %i.ja to <4 x i32>
  %i.jc = add <4 x i32> %i.iy, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.co, i64 300
  %wide.load.13 = load <4 x i8>, ptr %i.jd, align 4, !tbaa !61
  %i.je = icmp ne <4 x i8> %wide.load.13, zeroinitializer
  %i.jf = sext <4 x i1> %i.je to <4 x i32>
  %i.jg = add <4 x i32> %i.jc, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.co, i64 308
  %wide.load.14 = load <4 x i8>, ptr %i.jh, align 4, !tbaa !61
  %i.ji = icmp ne <4 x i8> %wide.load.14, zeroinitializer
  %i.jj = sext <4 x i1> %i.ji to <4 x i32>
  %i.jk = add <4 x i32> %i.jg, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.co, i64 316
  %wide.load.15 = load <4 x i8>, ptr %i.jl, align 4, !tbaa !61
  %i.jm = icmp ne <4 x i8> %wide.load.15, zeroinitializer
  %i.jn = sext <4 x i1> %i.jm to <4 x i32>
  %i.jo = add <4 x i32> %i.jk, %i.jn
  %bin.rdx = add <4 x i32> %i.hf, %i.jo
  %i.jp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %i.jq = getelementptr inbounds nuw i8, ptr %i.co, i64 324
  %i.jr = load i8, ptr %i.jq, align 4, !tbaa !61
  %.not92.i = icmp ne i8 %i.jr, 0
  %i.js = sext i1 %.not92.i to i32
  %spec.select97.i = add nsw i32 %i.jp, %i.js     ; 2 uses
  tail call void @avio_write(ptr noundef %i.cp, ptr noundef nonnull @primer_pack_key, i32 noundef 16) #13
  %i.jt = mul nsw i32 %spec.select97.i, 18
  %i.ju = add nsw i32 %i.jt, 8                    ; 6 uses
  %i.jv = sext i32 %i.ju to i64
  %i.jw = icmp ult i32 %i.ju, 128
  br i1 %i.jw, label %klv_ber_length.exit.thread.i.i, label %klv_ber_length.exit.i.i

klv_ber_length.exit.i.i:                          ; preds = %vector.ph
  %.not.i.i.i.i = icmp ult i32 %i.ju, 65536       ; 2 uses
  %i.jx = lshr i32 %i.ju, 16
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.ju, i32 %i.jx ; 3 uses
  %spec.select12.i.i.i.i = select i1 %.not.i.i.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i.i = icmp samesign ult i32 %spec.select.i.i.i.i, 256 ; 2 uses
  %i.jy = lshr i32 %spec.select.i.i.i.i, 8
  %i.jz = or disjoint i32 %spec.select12.i.i.i.i, 8
  %.110.i.i.i.i = select i1 %.not11.i.i.i.i, i32 %spec.select.i.i.i.i, i32 %i.jy
  %.1.i.i.i.i = select i1 %.not11.i.i.i.i, i32 %spec.select12.i.i.i.i, i32 %i.jz ; 2 uses
  %i.ka = zext nneg i32 %.110.i.i.i.i to i64
  %i.kb = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !61  ; 2 uses
  %i.kd = zext i8 %i.kc to i32
  %i.ke = add nuw nsw i32 %.1.i.i.i.i, %i.kd
  %i.kf = lshr i32 %i.ke, 3
  %i.kg = add nuw nsw i32 %i.kf, 129
  tail call void @avio_w8(ptr noundef %i.cp, i32 noundef %i.kg) #13
  %i.kh = zext nneg i32 %.1.i.i.i.i to i64
  %i.ki = zext i8 %i.kc to i64
  %i.kj = add nuw nsw i64 %i.ki, %i.kh
  %i.kk = lshr i64 %i.kj, 3
  %i.kl = add nuw nsw i64 %i.kk, 1
  br label %bb.ae

klv_ber_length.exit.thread.i.i:                   ; preds = %vector.ph
  tail call void @avio_w8(ptr noundef %i.cp, i32 noundef %i.ju) #13
  br label %klv_encode_ber_length.exit.i

bb.ae:                                            ; preds = %bb.ae, %klv_ber_length.exit.i.i
  %indvars.iv.i.i = phi i64 [ %i.kl, %klv_ber_length.exit.i.i ], [ %indvars.iv.next.i.i, %bb.ae ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.km = shl nsw i64 %indvars.iv.next.i.i, 3
  %5 = and i64 %i.km, 4294967288
  %i.kn = lshr i64 %i.jv, %5
  %i.ko = trunc i64 %i.kn to i32
  %i.kp = and i32 %i.ko, 255
  tail call void @avio_w8(ptr noundef %i.cp, i32 noundef %i.kp) #13
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 0
  br i1 %.not.i.i, label %klv_encode_ber_length.exit.i, label %bb.ae, !llvm.loop !0

klv_encode_ber_length.exit.i:                     ; preds = %bb.ae, %klv_ber_length.exit.thread.i.i
  tail call void @avio_wb32(ptr noundef %i.cp, i32 noundef %spec.select97.i) #13
  tail call void @avio_wb32(ptr noundef %i.cp, i32 noundef 18) #13
  br label %bb.af

bb.af:                                            ; preds = %bb.ah, %klv_encode_ber_length.exit.i
  %indvars.iv265.i = phi i64 [ 0, %klv_encode_ber_length.exit.i ], [ %indvars.iv.next266.i, %bb.ah ] ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv265.i
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !61
  %i.ks = icmp eq i8 %i.kr, 0
  br i1 %i.ks, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.kt = getelementptr inbounds nuw [20 x i8], ptr @mxf_local_tag_batch, i64 %indvars.iv265.i ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !144
  tail call void @avio_wb16(ptr noundef %i.cp, i32 noundef %i.ku) #13
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  tail call void @avio_write(ptr noundef %i.cp, ptr noundef nonnull %i.kv, i32 noundef 16) #13
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %indvars.iv.next266.i = add nuw nsw i64 %indvars.iv265.i, 1 ; 2 uses
  %exitcond268.not.i = icmp eq i64 %indvars.iv.next266.i, 129
  br i1 %exitcond268.not.i, label %mxf_write_primer_pack.exit, label %bb.af, !llvm.loop !234

mxf_write_primer_pack.exit:                       ; preds = %bb.ah
  %i.kw = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.kx = tail call i64 @avio_seek(ptr noundef %i.kw, i64 noundef 0, i32 noundef 1) #13
  %i.ky = trunc i64 %i.kx to i32                  ; 2 uses
  %i.kz = and i32 %i.ky, 511                      ; 2 uses
  %i.la = icmp samesign ugt i32 %i.kz, 492
  %i.lb = sub nuw nsw i32 1024, %i.kz
  %i.lc = sub i32 0, %i.ky
  %i.ld = and i32 %i.lc, 511
  %.0.i.i115 = select i1 %i.la, i32 %i.lb, i32 %i.ld ; 2 uses
  %.not.i116 = icmp eq i32 %.0.i.i115, 0
  br i1 %.not.i116, label %mxf_write_klv_fill.exit117, label %bb.ai

bb.ai:                                            ; preds = %mxf_write_primer_pack.exit
  %i.le = load ptr, ptr %i.c, align 8, !tbaa !31
  tail call void @avio_write(ptr noundef %i.le, ptr noundef nonnull @klv_fill_key, i32 noundef 16) #13
  %i.lf = add nsw i32 %.0.i.i115, -20             ; 2 uses
  %i.lg = load ptr, ptr %i.c, align 8, !tbaa !31  ; 2 uses
  tail call void @avio_w8(ptr noundef %i.lg, i32 noundef 131) #13
  tail call void @avio_wb24(ptr noundef %i.lg, i32 noundef %i.lf) #13
  %i.lh = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.li = zext i32 %i.lf to i64
  tail call void @ffio_fill(ptr noundef %i.lh, i32 noundef 0, i64 noundef %i.li) #13
  br label %mxf_write_klv_fill.exit117

mxf_write_klv_fill.exit117:                       ; preds = %mxf_write_primer_pack.exit, %bb.ai
  tail call fastcc void @mxf_write_header_metadata_sets(ptr noundef nonnull %0)
  %i.lj = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.lk = tail call i64 @avio_seek(ptr noundef %i.lj, i64 noundef 0, i32 noundef 1) #13 ; 3 uses
  %i.ll = sub nsw i64 %i.lk, %i.cn
  %i.lm = trunc i64 %i.lk to i32                  ; 2 uses
  %i.ln = and i32 %i.lm, 511                      ; 2 uses
  %i.lo = icmp samesign ugt i32 %i.ln, 492
  %i.lp = sub nuw nsw i32 1024, %i.ln
  %i.lq = sub i32 0, %i.lm
  %i.lr = and i32 %i.lq, 511
  %.0.i118 = select i1 %i.lo, i32 %i.lp, i32 %i.lr
  %i.ls = trunc i64 %i.ll to i32
  %i.lt = add i32 %.0.i118, %i.ls
  %i.lu = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.bk, i32 noundef 0) #13 ; 0 uses
  %i.lv = zext i32 %i.lt to i64
  tail call void @avio_wb64(ptr noundef %i.d, i64 noundef %i.lv) #13
  %i.lw = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.lk, i32 noundef 0) #13 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %mxf_write_klv_fill.exit117, %bb.s
  br i1 %.not100, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @avio_write_marker(ptr noundef %i.d, i64 noundef -9223372036854775808, i32 noundef 5) #13
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.g
  %.0 = phi i32 [ %i.ae, %bb.g ], [ 0, %bb.ak ], [ 0, %bb.aj ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mxf_write_klv_fill(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = tail call i64 @avio_seek(ptr noundef %i.b, i64 noundef 0, i32 noundef 1) #13
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = and i32 %i.d, 511                        ; 2 uses
  %i.f = icmp samesign ugt i32 %i.e, 492
  %i.g = sub nuw nsw i32 1024, %i.e
  %i.h = sub i32 0, %i.d
  %i.i = and i32 %i.h, 511
  %.0.i = select i1 %i.f, i32 %i.g, i32 %i.i      ; 2 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !31
  tail call void @avio_write(ptr noundef %i.j, ptr noundef nonnull @klv_fill_key, i32 noundef 16) #13
  %i.k = add nsw i32 %.0.i, -20                   ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  tail call void @avio_w8(ptr noundef %i.l, i32 noundef 131) #13
  tail call void @avio_wb24(ptr noundef %i.l, i32 noundef %i.k) #13
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.n = zext i32 %i.k to i64
  tail call void @ffio_fill(ptr noundef %i.m, i32 noundef 0, i64 noundef %i.n) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1163346256, 1) i32 @mxf_write_index_table_segment(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 40 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 6 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !238  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 8 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !54
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.81, i32 noundef %i.h) #13
  %i.i = load i32, ptr %i.g, align 8, !tbaa !54
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.k = load i32, ptr %i.j, align 4, !tbaa !53
  %.not212 = icmp eq i32 %i.k, 0
  br i1 %.not212, label %bb.ag, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @avio_write(ptr noundef %i.d, ptr noundef nonnull @index_table_segment_key, i32 noundef 16) #13
  tail call void @avio_w8(ptr noundef %i.d, i32 noundef 131) #13
  tail call void @avio_wb24(ptr noundef %i.d, i32 noundef 0) #13
  %i.l = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef 0, i32 noundef 1) #13 ; 2 uses
  %.val245 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val246 = load ptr, ptr %i.c, align 8, !tbaa !31
  tail call fastcc void @mxf_write_local_tag(ptr %.val245, ptr %.val246, i32 noundef 16, i32 noundef 15370)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !112
  tail call void @avio_write(ptr noundef %i.d, ptr noundef nonnull @uuid_base, i32 noundef 10) #13
  tail call void @avio_wb16(ptr noundef %i.d, i32 noundef 15) #13
  tail call void @avio_wb32(ptr noundef %i.d, i32 noundef %i.n) #13
  %.val243 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val244 = load ptr, ptr %i.c, align 8, !tbaa !31
  tail call fastcc void @mxf_write_local_tag(ptr %.val243, ptr %.val244, i32 noundef 8, i32 noundef 16139)
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !129
  tail call void @avio_wb32(ptr noundef %i.d, i32 noundef %i.q) #13
  %i.r = load i32, ptr %i.o, align 4, !tbaa !131
  tail call void @avio_wb32(ptr noundef %i.d, i32 noundef %i.r) #13
  %.val241 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val242 = load ptr, ptr %i.c, align 8, !tbaa !31
  tail call fastcc void @mxf_write_local_tag(ptr %.val241, ptr %.val242, i32 noundef 8, i32 noundef 16140)
  %i.s = load i32, ptr %i.m, align 4, !tbaa !112
  %i.t = sext i32 %i.s to i64
  tail call void @avio_wb64(ptr noundef %i.d, i64 noundef %i.t) #13
  %.val239 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val240 = load ptr, ptr %i.c, align 8, !tbaa !31
  tail call fastcc void @mxf_write_local_tag(ptr %.val239, ptr %.val240, i32 noundef 8, i32 noundef 16141)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 124 ; 6 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !53
  %.not213 = icmp eq i32 %i.v, 0
  br i1 %.not213, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.g, align 8, !tbaa !54
  %i.x = zext i32 %i.w to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi i64 [ %i.x, %bb.d ], [ 0, %bb.c ]
  tail call void @avio_wb64(ptr noundef %i.d, i64 noundef %.sink) #13
  %.val237 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val238 = load ptr, ptr %i.c, align 8, !tbaa !31
  tail call fastcc void @mxf_write_local_tag(ptr %.val237, ptr %.val238, i32 noundef 4, i32 noundef 16133)
  %i.y = load i32, ptr %i.u, align 4, !tbaa !53
  tail call void @avio_wb32(ptr noundef %i.d, i32 noundef %i.y) #13
  %.val235 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val236 = load ptr, ptr %i.c, align 8, !tbaa !31
  tail call fastcc void @mxf_write_local_tag(ptr %.val235, ptr %.val236, i32 noundef 4, i32 noundef 16134)
  tail call void @avio_wb32(ptr noundef %i.d, i32 noundef 2) #13
  %.val233 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val234 = load ptr, ptr %i.c, align 8, !tbaa !31
  tail call fastcc void @mxf_write_local_tag(ptr %.val233, ptr %.val234, i32 noundef 4, i32 noundef 16135)
  tail call void @avio_wb32(ptr noundef %i.d, i32 noundef 1) #13
  %.val231 = load ptr, ptr %i.a, align 8, !tbaa !30
end_hunk_1
begin_hunk_2_@mxf_write_essence_container_refs:bb.a
  %i.h = zext i1 %i.g to i32
  %i.i = add nuw nsw i32 %i.f, %i.h
  tail call void @avio_wb32(ptr noundef %i.d, i32 noundef %i.i) #13
  tail call void @avio_wb32(ptr noundef %i.d, i32 noundef 16) #13
  %i.j = load i32, ptr %i.e, align 8, !tbaa !114
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.55, i32 noundef %i.j) #13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !104  ; 2 uses
  %.not24 = icmp eq i32 %i.l, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.n = phi i32 [ %i.l, %.lr.ph ], [ %i.z, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 23
  %i.u = load i8, ptr %i.t, align 1, !tbaa !61
  %.not = icmp eq i8 %i.u, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !77
  tail call void @avio_write(ptr noundef %i.d, ptr noundef %i.w, i32 noundef 16) #13
  %i.x = load i32, ptr %i.e, align 8, !tbaa !114
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %.thread22, label %._crit_edge26

._crit_edge26:                                    ; preds = %bb.c
  %.pre = load i32, ptr %i.k, align 4, !tbaa !104
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge26, %bb.b
  %i.z = phi i32 [ %.pre, %._crit_edge26 ], [ %i.n, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.b, label %._crit_edge, !llvm.loop !242

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.pr = load i32, ptr %i.e, align 8, !tbaa !114
  %i.ac = icmp sgt i32 %.pr, 1
  br i1 %i.ac, label %bb.e, label %.thread22

bb.e:                                             ; preds = %._crit_edge
  tail call void @avio_write(ptr noundef %i.d, ptr noundef nonnull @multiple_desc_ul, i32 noundef 16) #13
  br label %.thread22

.thread22:                                        ; preds = %bb.c, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mxf_write_header_metadata_sets(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca [3 x %struct.MXFPackage], align 16  ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 67 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %1, i8 0, i64 72, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !149
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 2, ptr %i.e, align 16, !tbaa !149
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 1, ptr %i.f, align 4, !tbaa !259
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.d, ptr %i.g, align 16, !tbaa !260
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.j = call ptr @av_dict_get(ptr noundef %i.i, ptr noundef nonnull @.str.57, ptr noundef null, i32 noundef 0) #13 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !136
  store ptr %i.l, ptr %1, align 16, !tbaa !261
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.n = call ptr @av_dict_get(ptr noundef %i.m, ptr noundef nonnull @.str.58, ptr noundef null, i32 noundef 0) #13 ; 2 uses
  %.not38 = icmp eq ptr %i.n, null
  br i1 %.not38, label %.preheader, label %.loopexit179.sink.split

.preheader:                                       ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !104
  %.not223 = icmp eq i32 %i.p, 0
  br i1 %.not223, label %.loopexit179, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = load i32, ptr %i.o, align 4, !tbaa !104
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.e, label %.loopexit179, !llvm.loop !243

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !134
  %i.z = call ptr @av_dict_get(ptr noundef %i.y, ptr noundef nonnull @.str.58, ptr noundef null, i32 noundef 0) #13 ; 2 uses
  %.not39 = icmp eq ptr %i.z, null
  br i1 %.not39, label %bb.d, label %.loopexit179.sink.split

.loopexit179.sink.split:                          ; preds = %bb.e, %bb.c
  %.lcssa346.sink = phi ptr [ %i.n, %bb.c ], [ %i.z, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.lcssa346.sink, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !136
  store ptr %i.ab, ptr %i.d, align 8, !tbaa !261
  br label %.loopexit179

.loopexit179:                                     ; preds = %bb.d, %.loopexit179.sink.split, %.preheader
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.ad = call ptr @av_dict_get(ptr noundef %i.ac, ptr noundef nonnull @.str.59, ptr noundef null, i32 noundef 0) #13 ; 2 uses
  %.not40 = icmp eq ptr %i.ad, null
  br i1 %.not40, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit179
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !136
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 16, !tbaa !261
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 2, ptr %i.ah, align 8, !tbaa !149
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 2, ptr %i.ai, align 4, !tbaa !259
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !260
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit179
  %.029 = phi i32 [ 3, %bb.f ], [ 2, %.loopexit179 ] ; 3 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 79 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31 ; 21 uses
  call void @avio_write(ptr noundef %i.am, ptr noundef nonnull @header_metadata_key, i32 noundef 13) #13, !inline_history !244
  call void @avio_wb24(ptr noundef %i.am, i32 noundef 77568) #13, !inline_history !244
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !114 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 1
  %i.aq = zext i1 %i.ap to i32
  %i.ar = add nuw nsw i32 %i.ao, %i.aq
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 4
  %i.au = add nsw i64 %i.at, 138                  ; 3 uses
  %i.av = icmp ult i64 %i.au, 128
  %i.aw = trunc i64 %i.au to i32                  ; 4 uses
  br i1 %i.av, label %klv_ber_length.exit.thread.i.i, label %klv_ber_length.exit.i.i

klv_ber_length.exit.i.i:                          ; preds = %bb.g
  %.not.i.i.i.i = icmp ult i32 %i.aw, 65536       ; 2 uses
  %i.ax = lshr i32 %i.aw, 16
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, i32 %i.aw, i32 %i.ax ; 3 uses
  %spec.select12.i.i.i.i = select i1 %.not.i.i.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i.i = icmp samesign ult i32 %spec.select.i.i.i.i, 256 ; 2 uses
  %i.ay = lshr i32 %spec.select.i.i.i.i, 8
  %i.az = or disjoint i32 %spec.select12.i.i.i.i, 8
  %.110.i.i.i.i = select i1 %.not11.i.i.i.i, i32 %spec.select.i.i.i.i, i32 %i.ay
  %.1.i.i.i.i = select i1 %.not11.i.i.i.i, i32 %spec.select12.i.i.i.i, i32 %i.az ; 2 uses
  %i.ba = zext nneg i32 %.110.i.i.i.i to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !61  ; 2 uses
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %.1.i.i.i.i, %i.bd
  %i.bf = lshr i32 %i.be, 3
  %i.bg = add nuw nsw i32 %i.bf, 129
  call void @avio_w8(ptr noundef %i.am, i32 noundef %i.bg) #13, !inline_history !244
  %i.bh = zext nneg i32 %.1.i.i.i.i to i64
  %i.bi = zext i8 %i.bc to i64
  %i.bj = add nuw nsw i64 %i.bi, %i.bh
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1
  br label %bb.h

klv_ber_length.exit.thread.i.i:                   ; preds = %bb.g
  call void @avio_w8(ptr noundef %i.am, i32 noundef %i.aw) #13, !inline_history !244
  br label %mxf_write_preface.exit

bb.h:                                             ; preds = %bb.h, %klv_ber_length.exit.i.i
  %indvars.iv.i.i = phi i64 [ %i.bl, %klv_ber_length.exit.i.i ], [ %indvars.iv.next.i.i, %bb.h ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.bm = shl nsw i64 %indvars.iv.next.i.i, 3
  %2 = and i64 %i.bm, 4294967288
  %i.bn = lshr i64 %i.au, %2
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = and i32 %i.bo, 255
  call void @avio_w8(ptr noundef %i.am, i32 noundef %i.bp) #13, !inline_history !244
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 0
  br i1 %.not.i.i, label %mxf_write_preface.exit, label %bb.h, !llvm.loop !0

mxf_write_preface.exit:                           ; preds = %bb.h, %klv_ber_length.exit.thread.i.i
  %.val49.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val50.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val49.i, ptr %.val50.i, i32 noundef 16, i32 noundef 15370), !inline_history !244
  call void @avio_write(ptr noundef %i.am, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !244
  call void @avio_wb16(ptr noundef %i.am, i32 noundef 11) #13, !inline_history !244
  call void @avio_wb32(ptr noundef %i.am, i32 noundef 0) #13, !inline_history !244
  %.val47.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val48.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val47.i, ptr %.val48.i, i32 noundef 8, i32 noundef 15106), !inline_history !244
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !139
  call void @avio_wb64(ptr noundef %i.am, i64 noundef %i.br) #13, !inline_history !244
  %.val45.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val46.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val45.i, ptr %.val46.i, i32 noundef 2, i32 noundef 15109), !inline_history !244
  call void @avio_wb16(ptr noundef %i.am, i32 noundef 259) #13, !inline_history !244
  %.val43.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val44.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val43.i, ptr %.val44.i, i32 noundef 4, i32 noundef 15111), !inline_history !244
  call void @avio_wb32(ptr noundef %i.am, i32 noundef 1) #13, !inline_history !244
  %.val41.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val42.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val41.i, ptr %.val42.i, i32 noundef 24, i32 noundef 15110), !inline_history !244
  call void @avio_wb32(ptr noundef %i.am, i32 noundef 1) #13, !inline_history !244
  call void @avio_wb32(ptr noundef %i.am, i32 noundef 16) #13, !inline_history !244
  call void @avio_write(ptr noundef %i.am, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !244
  call void @avio_wb16(ptr noundef %i.am, i32 noundef 12) #13, !inline_history !244
  call void @avio_wb32(ptr noundef %i.am, i32 noundef 0) #13, !inline_history !244
  %.val39.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val40.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val39.i, ptr %.val40.i, i32 noundef 16, i32 noundef 15107), !inline_history !244
  call void @avio_write(ptr noundef %i.am, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !244
  call void @avio_wb16(ptr noundef %i.am, i32 noundef 13) #13, !inline_history !244
  call void @avio_wb32(ptr noundef %i.am, i32 noundef 0) #13, !inline_history !244
  %.val37.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val38.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val37.i, ptr %.val38.i, i32 noundef 16, i32 noundef 15113), !inline_history !244
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !51
  %i.bu = icmp eq ptr %i.bt, @ff_mxf_opatom_muxer
  %opatom_ul.op1a_ul.i = select i1 %i.bu, ptr @opatom_ul, ptr @op1a_ul
  call void @avio_write(ptr noundef %i.am, ptr noundef nonnull %opatom_ul.op1a_ul.i, i32 noundef 16) #13, !inline_history !244
  %i.bv = load i32, ptr %i.an, align 8, !tbaa !114 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 1
  %i.bx = zext i1 %i.bw to i32
  %i.by = add nuw nsw i32 %i.bv, %i.bx
  %i.bz = shl i32 %i.by, 4
  %i.ca = or disjoint i32 %i.bz, 8
  %.val35.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val36.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val35.i, ptr %.val36.i, i32 noundef %i.ca, i32 noundef 15114), !inline_history !244
  call fastcc void @mxf_write_essence_container_refs(ptr noundef nonnull %0), !inline_history !244
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val34.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val.i, ptr %.val34.i, i32 noundef 8, i32 noundef 15115), !inline_history !244
  call void @avio_wb64(ptr noundef %i.am, i64 noundef 0) #13, !inline_history !244
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.cc = load ptr, ptr %i.al, align 8, !tbaa !31 ; 13 uses
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.ce = call ptr @av_dict_get(ptr noundef %i.cd, ptr noundef nonnull @.str.61, ptr noundef null, i32 noundef 0) #13, !inline_history !245 ; 2 uses
  %i.cf = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.cg = call ptr @av_dict_get(ptr noundef %i.cf, ptr noundef nonnull @.str.62, ptr noundef null, i32 noundef 0) #13, !inline_history !245 ; 2 uses
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.ci = call ptr @av_dict_get(ptr noundef %i.ch, ptr noundef nonnull @.str.63, ptr noundef null, i32 noundef 0) #13, !inline_history !245 ; 2 uses
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %mxf_write_preface.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !136
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %mxf_write_preface.exit
  %i.cl = phi ptr [ %i.ck, %bb.i ], [ @.str.64, %mxf_write_preface.exit ] ; 4 uses
  %.not43.i = icmp eq ptr %i.cg, null
  br i1 %.not43.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !136
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.co = load ptr, ptr %i.bs, align 8, !tbaa !51
  %.not44.i = icmp eq ptr %i.co, @ff_mxf_opatom_muxer
  %i.cp = select i1 %.not44.i, ptr @.str.66, ptr @.str.65
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cq = phi ptr [ %i.cn, %bb.k ], [ %i.cp, %bb.l ] ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !137
  %i.ct = and i32 %i.cs, 1024
  %.not45.i = icmp eq i32 %i.ct, 0                ; 2 uses
  %.not46.i = icmp eq ptr %i.ci, null
  br i1 %.not46.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !136
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cw = select i1 %.not45.i, ptr @.str.70, ptr @.str.69
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cx = phi ptr [ %i.cv, %bb.n ], [ %i.cw, %bb.o ] ; 4 uses
  %i.cy = select i1 %.not45.i, ptr @.str.68, ptr @.str.67 ; 3 uses
  call void @avio_write(ptr noundef %i.cc, ptr noundef nonnull @header_metadata_key, i32 noundef 13) #13, !inline_history !245
  call void @avio_wb24(ptr noundef %i.cc, i32 noundef 77824) #13, !inline_history !245
  %.not.i.i41 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i41, label %mxf_utf16_local_tag_length.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = load i8, ptr %i.cl, align 1, !tbaa !61  ; 2 uses
  %.not50.i.i.i = icmp eq i8 %i.cz, 0
  br i1 %.not50.i.i.i, label %mxf_utf16len.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q, %bb.s
  %i.da = phi i8 [ %i.du, %bb.s ], [ %i.cz, %bb.q ] ; 2 uses
  %.02652.i.i.i = phi i64 [ %.228.i.i.i, %bb.s ], [ 0, %bb.q ] ; 2 uses
  %.02951.i.i.i = phi ptr [ %.23139.i.i.i, %bb.s ], [ %i.cl, %bb.q ]
  %i.db = getelementptr inbounds nuw i8, ptr %.02951.i.i.i, i64 1 ; 2 uses
  %i.dc = zext i8 %i.da to i32                    ; 3 uses
  %i.dd = and i32 %i.dc, 192
  %i.de = icmp eq i32 %i.dd, 128
  %i.df = icmp ugt i8 %i.da, -3
  %or.cond.i.i.i = or i1 %i.df, %i.de
  br i1 %or.cond.i.i.i, label %.thread42.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %i.dg = lshr i32 %i.dc, 1
  %i.dh = and i32 %i.dg, 64
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.r, %.preheader.preheader.i.i.i
  %.130.i.i.i = phi ptr [ %i.dj, %bb.r ], [ %i.db, %.preheader.preheader.i.i.i ] ; 3 uses
  %.024.i.i.i = phi i32 [ %i.do, %bb.r ], [ %i.dc, %.preheader.preheader.i.i.i ] ; 3 uses
  %.022.i.i.i = phi i32 [ %i.dp, %bb.r ], [ %i.dh, %.preheader.preheader.i.i.i ] ; 3 uses
  %i.di = and i32 %.022.i.i.i, %.024.i.i.i
  %.not34.i.i.i = icmp eq i32 %i.di, 0
  br i1 %.not34.i.i.i, label %.thread.i.i.i, label %bb.r

bb.r:                                             ; preds = %.preheader.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.130.i.i.i, i64 1 ; 2 uses
  %i.dk = load i8, ptr %.130.i.i.i, align 1, !tbaa !61
  %i.dl = zext i8 %i.dk to i32
  %i.dm = add nsw i32 %i.dl, -128                 ; 2 uses
  %.not35.i.i.i = icmp ult i32 %i.dm, 64
  %i.dn = shl i32 %.024.i.i.i, 6
  %i.do = add nuw nsw i32 %i.dm, %i.dn
  %i.dp = shl i32 %.022.i.i.i, 5
  br i1 %.not35.i.i.i, label %.preheader.i.i.i, label %.thread42.i.i.i, !llvm.loop !1

.thread.i.i.i:                                    ; preds = %.preheader.i.i.i
  %i.dq = shl i32 %.022.i.i.i, 1
  %i.dr = add i32 %i.dq, -128
  %i.ds = and i32 %i.dr, %.024.i.i.i
  %i.dt = icmp ult i32 %i.ds, 65536
  %.127.v.i.i.i = select i1 %i.dt, i64 1, i64 2
  %.127.i.i.i = add i64 %.127.v.i.i.i, %.02652.i.i.i
  br label %bb.s, !llvm.loop !2

.thread42.i.i.i:                                  ; preds = %bb.r, %.lr.ph.i.i.i
  %.23146.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i ], [ %i.dj, %bb.r ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.72) #13, !inline_history !245
  br label %bb.s

bb.s:                                             ; preds = %.thread42.i.i.i, %.thread.i.i.i
  %.23139.i.i.i = phi ptr [ %.23146.i.i.i, %.thread42.i.i.i ], [ %.130.i.i.i, %.thread.i.i.i ] ; 2 uses
  %.228.i.i.i = phi i64 [ %.02652.i.i.i, %.thread42.i.i.i ], [ %.127.i.i.i, %.thread.i.i.i ] ; 2 uses
  %i.du = load i8, ptr %.23139.i.i.i, align 1, !tbaa !61 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i, label %mxf_utf16len.exit.i.i, label %.lr.ph.i.i.i

mxf_utf16len.exit.i.i:                            ; preds = %bb.s
  %i.dv = add i64 %.228.i.i.i, 1                  ; 3 uses
  %i.dw = icmp ugt i64 %i.dv, 32766
  br i1 %i.dw, label %bb.t, label %mxf_utf16len.exit.thread.i.i

bb.t:                                             ; preds = %mxf_utf16len.exit.i.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.71, i64 noundef %i.dv) #13, !inline_history !245
  br label %mxf_utf16_local_tag_length.exit.i

mxf_utf16len.exit.thread.i.i:                     ; preds = %mxf_utf16len.exit.i.i, %bb.q
  %.026.lcssa.i8.i.i = phi i64 [ %i.dv, %mxf_utf16len.exit.i.i ], [ 1, %bb.q ]
  %.tr.i.i = trunc nuw nsw i64 %.026.lcssa.i8.i.i to i32
  %i.dx = shl nuw nsw i32 %.tr.i.i, 1
  %i.dy = add nuw nsw i32 %i.dx, 104
  br label %mxf_utf16_local_tag_length.exit.i

mxf_utf16_local_tag_length.exit.i:                ; preds = %mxf_utf16len.exit.thread.i.i, %bb.t, %bb.p
end_hunk_2
begin_hunk_3_@mxf_write_header_metadata_sets:bb.a
  %i.fa = load i8, ptr %i.cy, align 1, !tbaa !61  ; 2 uses
  %.not50.i.i90.i = icmp eq i8 %i.fa, 0
  br i1 %.not50.i.i90.i, label %mxf_utf16len.exit.thread.i108.i, label %.lr.ph.i.i91.i

.lr.ph.i.i91.i:                                   ; preds = %mxf_utf16_local_tag_length.exit88.i, %bb.z
  %i.fb = phi i8 [ %i.fv, %bb.z ], [ %i.fa, %mxf_utf16_local_tag_length.exit88.i ] ; 2 uses
  %.02652.i.i92.i = phi i64 [ %.228.i.i105.i, %bb.z ], [ 0, %mxf_utf16_local_tag_length.exit88.i ] ; 2 uses
  %.02951.i.i93.i = phi ptr [ %.23139.i.i104.i, %bb.z ], [ %i.cy, %mxf_utf16_local_tag_length.exit88.i ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.02951.i.i93.i, i64 1 ; 2 uses
  %i.fd = zext i8 %i.fb to i32                    ; 3 uses
  %i.fe = and i32 %i.fd, 192
  %i.ff = icmp eq i32 %i.fe, 128
  %i.fg = icmp ugt i8 %i.fb, -3
  %or.cond.i.i94.i = or i1 %i.fg, %i.ff
  br i1 %or.cond.i.i94.i, label %.thread42.i.i102.i, label %.preheader.preheader.i.i95.i

.preheader.preheader.i.i95.i:                     ; preds = %.lr.ph.i.i91.i
  %i.fh = lshr i32 %i.fd, 1
  %i.fi = and i32 %i.fh, 64
  br label %.preheader.i.i96.i

.preheader.i.i96.i:                               ; preds = %bb.y, %.preheader.preheader.i.i95.i
  %.130.i.i97.i = phi ptr [ %i.fk, %bb.y ], [ %i.fc, %.preheader.preheader.i.i95.i ] ; 3 uses
  %.024.i.i98.i = phi i32 [ %i.fp, %bb.y ], [ %i.fd, %.preheader.preheader.i.i95.i ] ; 3 uses
  %.022.i.i99.i = phi i32 [ %i.fq, %bb.y ], [ %i.fi, %.preheader.preheader.i.i95.i ] ; 3 uses
  %i.fj = and i32 %.022.i.i99.i, %.024.i.i98.i
  %.not34.i.i100.i = icmp eq i32 %i.fj, 0
  br i1 %.not34.i.i100.i, label %.thread.i.i112.i, label %bb.y

bb.y:                                             ; preds = %.preheader.i.i96.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.130.i.i97.i, i64 1 ; 2 uses
  %i.fl = load i8, ptr %.130.i.i97.i, align 1, !tbaa !61
  %i.fm = zext i8 %i.fl to i32
  %i.fn = add nsw i32 %i.fm, -128                 ; 2 uses
  %.not35.i.i101.i = icmp ult i32 %i.fn, 64
  %i.fo = shl i32 %.024.i.i98.i, 6
  %i.fp = add nuw nsw i32 %i.fn, %i.fo
  %i.fq = shl i32 %.022.i.i99.i, 5
  br i1 %.not35.i.i101.i, label %.preheader.i.i96.i, label %.thread42.i.i102.i, !llvm.loop !1

.thread.i.i112.i:                                 ; preds = %.preheader.i.i96.i
  %i.fr = shl i32 %.022.i.i99.i, 1
  %i.fs = add i32 %i.fr, -128
  %i.ft = and i32 %i.fs, %.024.i.i98.i
  %i.fu = icmp ult i32 %i.ft, 65536
  %.127.v.i.i113.i = select i1 %i.fu, i64 1, i64 2
  %.127.i.i114.i = add i64 %.127.v.i.i113.i, %.02652.i.i92.i
  br label %bb.z, !llvm.loop !2

.thread42.i.i102.i:                               ; preds = %bb.y, %.lr.ph.i.i91.i
  %.23146.i.i103.i = phi ptr [ %i.fc, %.lr.ph.i.i91.i ], [ %i.fk, %bb.y ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.72) #13, !inline_history !245
  br label %bb.z

bb.z:                                             ; preds = %.thread42.i.i102.i, %.thread.i.i112.i
  %.23139.i.i104.i = phi ptr [ %.23146.i.i103.i, %.thread42.i.i102.i ], [ %.130.i.i97.i, %.thread.i.i112.i ] ; 2 uses
  %.228.i.i105.i = phi i64 [ %.02652.i.i92.i, %.thread42.i.i102.i ], [ %.127.i.i114.i, %.thread.i.i112.i ] ; 2 uses
  %i.fv = load i8, ptr %.23139.i.i104.i, align 1, !tbaa !61 ; 2 uses
  %.not.i.i106.i = icmp eq i8 %i.fv, 0
  br i1 %.not.i.i106.i, label %mxf_utf16len.exit.i107.i, label %.lr.ph.i.i91.i

mxf_utf16len.exit.i107.i:                         ; preds = %bb.z
  %i.fw = add i64 %.228.i.i105.i, 1               ; 3 uses
  %i.fx = icmp ugt i64 %i.fw, 32766
  br i1 %i.fx, label %bb.aa, label %mxf_utf16len.exit.thread.i108.i

bb.aa:                                            ; preds = %mxf_utf16len.exit.i107.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.71, i64 noundef %i.fw) #13, !inline_history !245
  br label %mxf_utf16_local_tag_length.exit115.i

mxf_utf16len.exit.thread.i108.i:                  ; preds = %mxf_utf16len.exit.i107.i, %mxf_utf16_local_tag_length.exit88.i
  %.026.lcssa.i8.i109.i = phi i64 [ %i.fw, %mxf_utf16len.exit.i107.i ], [ 1, %mxf_utf16_local_tag_length.exit88.i ]
  %.tr.i110.i = trunc nuw nsw i64 %.026.lcssa.i8.i109.i to i32
  %i.fy = shl nuw nsw i32 %.tr.i110.i, 1
  %i.fz = add nuw nsw i32 %i.fy, 4
  br label %mxf_utf16_local_tag_length.exit115.i

mxf_utf16_local_tag_length.exit115.i:             ; preds = %mxf_utf16len.exit.thread.i108.i, %bb.aa
  %.0.i111.i = phi i32 [ 0, %bb.aa ], [ %i.fz, %mxf_utf16len.exit.thread.i108.i ]
  %i.ga = add nuw nsw i32 %i.ez, %.0.i111.i
  %.not.i116.i = icmp eq ptr %i.cx, null
  br i1 %.not.i116.i, label %mxf_utf16_local_tag_length.exit142.i, label %bb.ab

bb.ab:                                            ; preds = %mxf_utf16_local_tag_length.exit115.i
  %i.gb = load i8, ptr %i.cx, align 1, !tbaa !61  ; 2 uses
  %.not50.i.i117.i = icmp eq i8 %i.gb, 0
  br i1 %.not50.i.i117.i, label %mxf_utf16len.exit.thread.i135.i, label %.lr.ph.i.i118.i

.lr.ph.i.i118.i:                                  ; preds = %bb.ab, %bb.ad
  %i.gc = phi i8 [ %i.gw, %bb.ad ], [ %i.gb, %bb.ab ] ; 2 uses
  %.02652.i.i119.i = phi i64 [ %.228.i.i132.i, %bb.ad ], [ 0, %bb.ab ] ; 2 uses
  %.02951.i.i120.i = phi ptr [ %.23139.i.i131.i, %bb.ad ], [ %i.cx, %bb.ab ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.02951.i.i120.i, i64 1 ; 2 uses
  %i.ge = zext i8 %i.gc to i32                    ; 3 uses
  %i.gf = and i32 %i.ge, 192
  %i.gg = icmp eq i32 %i.gf, 128
  %i.gh = icmp ugt i8 %i.gc, -3
  %or.cond.i.i121.i = or i1 %i.gh, %i.gg
  br i1 %or.cond.i.i121.i, label %.thread42.i.i129.i, label %.preheader.preheader.i.i122.i

.preheader.preheader.i.i122.i:                    ; preds = %.lr.ph.i.i118.i
  %i.gi = lshr i32 %i.ge, 1
  %i.gj = and i32 %i.gi, 64
  br label %.preheader.i.i123.i

.preheader.i.i123.i:                              ; preds = %bb.ac, %.preheader.preheader.i.i122.i
  %.130.i.i124.i = phi ptr [ %i.gl, %bb.ac ], [ %i.gd, %.preheader.preheader.i.i122.i ] ; 3 uses
  %.024.i.i125.i = phi i32 [ %i.gq, %bb.ac ], [ %i.ge, %.preheader.preheader.i.i122.i ] ; 3 uses
  %.022.i.i126.i = phi i32 [ %i.gr, %bb.ac ], [ %i.gj, %.preheader.preheader.i.i122.i ] ; 3 uses
  %i.gk = and i32 %.022.i.i126.i, %.024.i.i125.i
  %.not34.i.i127.i = icmp eq i32 %i.gk, 0
  br i1 %.not34.i.i127.i, label %.thread.i.i139.i, label %bb.ac

bb.ac:                                            ; preds = %.preheader.i.i123.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.130.i.i124.i, i64 1 ; 2 uses
  %i.gm = load i8, ptr %.130.i.i124.i, align 1, !tbaa !61
  %i.gn = zext i8 %i.gm to i32
  %i.go = add nsw i32 %i.gn, -128                 ; 2 uses
  %.not35.i.i128.i = icmp ult i32 %i.go, 64
  %i.gp = shl i32 %.024.i.i125.i, 6
  %i.gq = add nuw nsw i32 %i.go, %i.gp
  %i.gr = shl i32 %.022.i.i126.i, 5
  br i1 %.not35.i.i128.i, label %.preheader.i.i123.i, label %.thread42.i.i129.i, !llvm.loop !1

.thread.i.i139.i:                                 ; preds = %.preheader.i.i123.i
  %i.gs = shl i32 %.022.i.i126.i, 1
  %i.gt = add i32 %i.gs, -128
  %i.gu = and i32 %i.gt, %.024.i.i125.i
  %i.gv = icmp ult i32 %i.gu, 65536
  %.127.v.i.i140.i = select i1 %i.gv, i64 1, i64 2
  %.127.i.i141.i = add i64 %.127.v.i.i140.i, %.02652.i.i119.i
  br label %bb.ad, !llvm.loop !2

.thread42.i.i129.i:                               ; preds = %bb.ac, %.lr.ph.i.i118.i
  %.23146.i.i130.i = phi ptr [ %i.gd, %.lr.ph.i.i118.i ], [ %i.gl, %bb.ac ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.72) #13, !inline_history !245
  br label %bb.ad

bb.ad:                                            ; preds = %.thread42.i.i129.i, %.thread.i.i139.i
  %.23139.i.i131.i = phi ptr [ %.23146.i.i130.i, %.thread42.i.i129.i ], [ %.130.i.i124.i, %.thread.i.i139.i ] ; 2 uses
  %.228.i.i132.i = phi i64 [ %.02652.i.i119.i, %.thread42.i.i129.i ], [ %.127.i.i141.i, %.thread.i.i139.i ] ; 2 uses
  %i.gw = load i8, ptr %.23139.i.i131.i, align 1, !tbaa !61 ; 2 uses
  %.not.i.i133.i = icmp eq i8 %i.gw, 0
  br i1 %.not.i.i133.i, label %mxf_utf16len.exit.i134.i, label %.lr.ph.i.i118.i

mxf_utf16len.exit.i134.i:                         ; preds = %bb.ad
  %i.gx = add i64 %.228.i.i132.i, 1               ; 3 uses
  %i.gy = icmp ugt i64 %i.gx, 32766
  br i1 %i.gy, label %bb.ae, label %mxf_utf16len.exit.thread.i135.i

bb.ae:                                            ; preds = %mxf_utf16len.exit.i134.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.71, i64 noundef %i.gx) #13, !inline_history !245
  br label %mxf_utf16_local_tag_length.exit142.i

mxf_utf16len.exit.thread.i135.i:                  ; preds = %mxf_utf16len.exit.i134.i, %bb.ab
  %.026.lcssa.i8.i136.i = phi i64 [ %i.gx, %mxf_utf16len.exit.i134.i ], [ 1, %bb.ab ]
  %.tr.i137.i = trunc nuw nsw i64 %.026.lcssa.i8.i136.i to i32
  %i.gz = shl nuw nsw i32 %.tr.i137.i, 1
  %i.ha = add nuw nsw i32 %i.gz, 4
  br label %mxf_utf16_local_tag_length.exit142.i

mxf_utf16_local_tag_length.exit142.i:             ; preds = %mxf_utf16len.exit.thread.i135.i, %bb.ae, %mxf_utf16_local_tag_length.exit115.i
  %.0.i138.i = phi i32 [ 0, %bb.ae ], [ %i.ha, %mxf_utf16len.exit.thread.i135.i ], [ 0, %mxf_utf16_local_tag_length.exit115.i ]
  %i.hb = add nuw nsw i32 %i.ga, %.0.i138.i       ; 6 uses
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = icmp ult i32 %i.hb, 128
  br i1 %i.hd, label %klv_ber_length.exit.thread.i.i56, label %klv_ber_length.exit.i.i42

klv_ber_length.exit.i.i42:                        ; preds = %mxf_utf16_local_tag_length.exit142.i
  %.not.i.i.i.i43 = icmp ult i32 %i.hb, 65536     ; 2 uses
  %i.he = lshr i32 %i.hb, 16
  %spec.select.i.i.i.i44 = select i1 %.not.i.i.i.i43, i32 %i.hb, i32 %i.he ; 3 uses
  %spec.select12.i.i.i.i45 = select i1 %.not.i.i.i.i43, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i.i46 = icmp samesign ult i32 %spec.select.i.i.i.i44, 256 ; 2 uses
  %i.hf = lshr i32 %spec.select.i.i.i.i44, 8
  %i.hg = or disjoint i32 %spec.select12.i.i.i.i45, 8
  %.110.i.i.i.i47 = select i1 %.not11.i.i.i.i46, i32 %spec.select.i.i.i.i44, i32 %i.hf
  %.1.i.i.i.i48 = select i1 %.not11.i.i.i.i46, i32 %spec.select12.i.i.i.i45, i32 %i.hg ; 2 uses
  %i.hh = zext nneg i32 %.110.i.i.i.i47 to i64
  %i.hi = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !61  ; 2 uses
  %i.hk = zext i8 %i.hj to i32
  %i.hl = add nuw nsw i32 %.1.i.i.i.i48, %i.hk
  %i.hm = lshr i32 %i.hl, 3
  %i.hn = add nuw nsw i32 %i.hm, 129
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.hn) #13, !inline_history !245
  %i.ho = zext nneg i32 %.1.i.i.i.i48 to i64
  %i.hp = zext i8 %i.hj to i64
  %i.hq = add nuw nsw i64 %i.hp, %i.ho
  %i.hr = lshr i64 %i.hq, 3
  %i.hs = add nuw nsw i64 %i.hr, 1
  br label %bb.af

klv_ber_length.exit.thread.i.i56:                 ; preds = %mxf_utf16_local_tag_length.exit142.i
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.hb) #13, !inline_history !245
  br label %mxf_write_identification.exit

bb.af:                                            ; preds = %bb.af, %klv_ber_length.exit.i.i42
  %indvars.iv.i.i49 = phi i64 [ %i.hs, %klv_ber_length.exit.i.i42 ], [ %indvars.iv.next.i.i50, %bb.af ]
  %indvars.iv.next.i.i50 = add nsw i64 %indvars.iv.i.i49, -1 ; 3 uses
  %i.ht = shl nsw i64 %indvars.iv.next.i.i50, 3
  %3 = and i64 %i.ht, 4294967288
  %i.hu = lshr i64 %i.hc, %3
  %i.hv = trunc nuw nsw i64 %i.hu to i32
  %i.hw = and i32 %i.hv, 255
  call void @avio_w8(ptr noundef %i.cc, i32 noundef %i.hw) #13, !inline_history !245
  %.not.i143.i = icmp eq i64 %indvars.iv.next.i.i50, 0
  br i1 %.not.i143.i, label %mxf_write_identification.exit, label %bb.af, !llvm.loop !0

mxf_write_identification.exit:                    ; preds = %bb.af, %klv_ber_length.exit.thread.i.i56
  %.val56.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val57.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val56.i, ptr %.val57.i, i32 noundef 16, i32 noundef 15370), !inline_history !245
  call void @avio_write(ptr noundef %i.cc, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !245
  call void @avio_wb16(ptr noundef %i.cc, i32 noundef 12) #13, !inline_history !245
  call void @avio_wb32(ptr noundef %i.cc, i32 noundef 0) #13, !inline_history !245
  %.val54.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val55.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val54.i, ptr %.val55.i, i32 noundef 16, i32 noundef 15369), !inline_history !245
  call void @avio_write(ptr noundef %i.cc, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !245
  call void @avio_wb16(ptr noundef %i.cc, i32 noundef 12) #13, !inline_history !245
  call void @avio_wb32(ptr noundef %i.cc, i32 noundef 1) #13, !inline_history !245
  call fastcc void @mxf_write_local_tag_utf16(ptr noundef nonnull readonly %0, i32 noundef 15361, ptr noundef %i.cl), !inline_history !245
  call fastcc void @mxf_write_local_tag_utf16(ptr noundef nonnull readonly %0, i32 noundef 15362, ptr noundef %i.cq), !inline_history !245
  %.val52.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val53.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val52.i, ptr %.val53.i, i32 noundef 10, i32 noundef 15363), !inline_history !245
  %.val60.i = load ptr, ptr %i.al, align 8, !tbaa !31 ; 5 uses
  %.val61.i = load i32, ptr %i.cr, align 8, !tbaa !137
  %i.hx = and i32 %.val61.i, 1024                 ; 2 uses
  %.not.i144.i = icmp eq i32 %i.hx, 0             ; 2 uses
  %..i.i = select i1 %.not.i144.i, i32 63, i32 0
  %.lobit.i.i = lshr exact i32 %i.hx, 10
  %.3.i.i = xor i32 %.lobit.i.i, 1
  %.4.i.i = select i1 %.not.i144.i, i32 100, i32 0
  call void @avio_wb16(ptr noundef %.val60.i, i32 noundef %..i.i) #13, !inline_history !245
  call void @avio_wb16(ptr noundef %.val60.i, i32 noundef %.3.i.i) #13, !inline_history !245
  call void @avio_wb16(ptr noundef %.val60.i, i32 noundef %.4.i.i) #13, !inline_history !245
  call void @avio_wb16(ptr noundef %.val60.i, i32 noundef 0) #13, !inline_history !245
  call void @avio_wb16(ptr noundef %.val60.i, i32 noundef 0) #13, !inline_history !245
  call fastcc void @mxf_write_local_tag_utf16(ptr noundef nonnull readonly %0, i32 noundef 15364, ptr noundef %i.cx), !inline_history !245
  call fastcc void @mxf_write_local_tag_utf16(ptr noundef nonnull readonly %0, i32 noundef 15368, ptr noundef nonnull %i.cy), !inline_history !245
  %.val50.i51 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val51.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val50.i51, ptr %.val51.i, i32 noundef 16, i32 noundef 15365), !inline_history !245
  call void @avio_write(ptr noundef %i.cc, ptr noundef nonnull @product_uid, i32 noundef 16) #13, !inline_history !245
  %.val48.i52 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val49.i53 = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val48.i52, ptr %.val49.i53, i32 noundef 8, i32 noundef 15366), !inline_history !245
  %i.hy = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !139
  call void @avio_wb64(ptr noundef %i.cc, i64 noundef %i.hz) #13, !inline_history !245
  %.val.i54 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val47.i55 = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val.i54, ptr %.val47.i55, i32 noundef 10, i32 noundef 15367), !inline_history !245
  %.val58.i = load ptr, ptr %i.al, align 8, !tbaa !31 ; 5 uses
  %.val59.i = load i32, ptr %i.cr, align 8, !tbaa !137
  %i.ia = and i32 %.val59.i, 1024                 ; 2 uses
  %.not.i145.i = icmp eq i32 %i.ia, 0             ; 2 uses
  %..i146.i = select i1 %.not.i145.i, i32 63, i32 0
  %.lobit.i147.i = lshr exact i32 %i.ia, 10
  %.3.i148.i = xor i32 %.lobit.i147.i, 1
  %.4.i149.i = select i1 %.not.i145.i, i32 100, i32 0
  call void @avio_wb16(ptr noundef %.val58.i, i32 noundef %..i146.i) #13, !inline_history !245
  call void @avio_wb16(ptr noundef %.val58.i, i32 noundef %.3.i148.i) #13, !inline_history !245
  call void @avio_wb16(ptr noundef %.val58.i, i32 noundef %.4.i149.i) #13, !inline_history !245
  call void @avio_wb16(ptr noundef %.val58.i, i32 noundef 0) #13, !inline_history !245
  call void @avio_wb16(ptr noundef %.val58.i, i32 noundef 0) #13, !inline_history !245
  %i.ib = load ptr, ptr %i.al, align 8, !tbaa !31 ; 16 uses
  call void @avio_write(ptr noundef %i.ib, ptr noundef nonnull @header_metadata_key, i32 noundef 13) #13
  call void @avio_wb24(ptr noundef %i.ib, i32 noundef 71680) #13
  %i.ic = shl nuw nsw i32 %.029, 4                ; 2 uses
  %i.id = add nuw nsw i32 %i.ic, 60
  call void @avio_w8(ptr noundef %i.ib, i32 noundef %i.id) #13
  %.val23.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val24.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val23.i, ptr %.val24.i, i32 noundef 16, i32 noundef 15370)
  call void @avio_write(ptr noundef %i.ib, ptr noundef nonnull @uuid_base, i32 noundef 10) #13
  call void @avio_wb16(ptr noundef %i.ib, i32 noundef 13) #13
  call void @avio_wb32(ptr noundef %i.ib, i32 noundef 0) #13
  %i.ie = or disjoint i32 %i.ic, 8
  %.val21.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val22.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val21.i, ptr %.val22.i, i32 noundef %i.ie, i32 noundef 6401)
  call void @avio_wb32(ptr noundef %i.ib, i32 noundef range(i32 2, 4) %.029) #13
  call void @avio_wb32(ptr noundef %i.ib, i32 noundef 16) #13
  %wide.trip.count.i = zext nneg i32 %.029 to i64 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %mxf_write_identification.exit
  %indvars.iv.i = phi i64 [ 0, %mxf_write_identification.exit ], [ %indvars.iv.next.i, %bb.ag ] ; 2 uses
  %i.if = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !149
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 12
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !259
  call void @avio_write(ptr noundef %i.ib, ptr noundef nonnull @uuid_base, i32 noundef 10) #13
  call void @avio_wb16(ptr noundef %i.ib, i32 noundef %i.ih) #13
  call void @avio_wb32(ptr noundef %i.ib, i32 noundef %i.ij) #13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %mxf_write_content_storage.exit, label %bb.ag, !llvm.loop !246

mxf_write_content_storage.exit:                   ; preds = %bb.ag
  %.val.i58 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val20.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val.i58, ptr %.val20.i, i32 noundef 24, i32 noundef 6402)
  call void @avio_wb32(ptr noundef %i.ib, i32 noundef 1) #13
  call void @avio_wb32(ptr noundef %i.ib, i32 noundef 16) #13
  call void @avio_write(ptr noundef %i.ib, ptr noundef nonnull @uuid_base, i32 noundef 10) #13
  call void @avio_wb16(ptr noundef %i.ib, i32 noundef 16) #13
  call void @avio_wb32(ptr noundef %i.ib, i32 noundef 0) #13
  %i.ik = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  store i32 0, ptr %i.ik, align 4, !tbaa !150
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 9 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.pre = load i32, ptr %i.il, align 4, !tbaa !104
  br label %bb.ah

bb.ah:                                            ; preds = %mxf_write_content_storage.exit, %.loopexit
  %i.in = phi i32 [ %.pre, %mxf_write_content_storage.exit ], [ %i.aad, %.loopexit ] ; 3 uses
  %indvars.iv258 = phi i64 [ 0, %mxf_write_content_storage.exit ], [ %indvars.iv.next259, %.loopexit ] ; 2 uses
  %i.io = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv258 ; 7 uses
  %i.ip = load ptr, ptr %i.a, align 8, !tbaa !30  ; 8 uses
  %i.iq = load ptr, ptr %i.al, align 8, !tbaa !31 ; 32 uses
  %i.ir = add i32 %i.in, 1                        ; 4 uses
  %i.is = load ptr, ptr %i.io, align 8, !tbaa !261 ; 3 uses
  %.not.i.i59 = icmp eq ptr %i.is, null
  br i1 %.not.i.i59, label %mxf_utf16_local_tag_length.exit.i81, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.it = load i8, ptr %i.is, align 1, !tbaa !61  ; 2 uses
  %.not50.i.i.i60 = icmp eq i8 %i.it, 0
  br i1 %.not50.i.i.i60, label %mxf_utf16len.exit.thread.i.i78, label %.lr.ph.i.i.i61

.lr.ph.i.i.i61:                                   ; preds = %bb.ai, %bb.ak
  %i.iu = phi i8 [ %i.jo, %bb.ak ], [ %i.it, %bb.ai ] ; 2 uses
  %.02652.i.i.i62 = phi i64 [ %.228.i.i.i75, %bb.ak ], [ 0, %bb.ai ] ; 2 uses
  %.02951.i.i.i63 = phi ptr [ %.23139.i.i.i74, %bb.ak ], [ %i.is, %bb.ai ]
  %i.iv = getelementptr inbounds nuw i8, ptr %.02951.i.i.i63, i64 1 ; 2 uses
  %i.iw = zext i8 %i.iu to i32                    ; 3 uses
  %i.ix = and i32 %i.iw, 192
  %i.iy = icmp eq i32 %i.ix, 128
  %i.iz = icmp ugt i8 %i.iu, -3
  %or.cond.i.i.i64 = or i1 %i.iz, %i.iy
  br i1 %or.cond.i.i.i64, label %.thread42.i.i.i72, label %.preheader.preheader.i.i.i65

.preheader.preheader.i.i.i65:                     ; preds = %.lr.ph.i.i.i61
  %i.ja = lshr i32 %i.iw, 1
  %i.jb = and i32 %i.ja, 64
  br label %.preheader.i.i.i66

.preheader.i.i.i66:                               ; preds = %bb.aj, %.preheader.preheader.i.i.i65
  %.130.i.i.i67 = phi ptr [ %i.jd, %bb.aj ], [ %i.iv, %.preheader.preheader.i.i.i65 ] ; 3 uses
  %.024.i.i.i68 = phi i32 [ %i.ji, %bb.aj ], [ %i.iw, %.preheader.preheader.i.i.i65 ] ; 3 uses
  %.022.i.i.i69 = phi i32 [ %i.jj, %bb.aj ], [ %i.jb, %.preheader.preheader.i.i.i65 ] ; 3 uses
  %i.jc = and i32 %.022.i.i.i69, %.024.i.i.i68
  %.not34.i.i.i70 = icmp eq i32 %i.jc, 0
  br i1 %.not34.i.i.i70, label %.thread.i.i.i98, label %bb.aj

bb.aj:                                            ; preds = %.preheader.i.i.i66
  %i.jd = getelementptr inbounds nuw i8, ptr %.130.i.i.i67, i64 1 ; 2 uses
  %i.je = load i8, ptr %.130.i.i.i67, align 1, !tbaa !61
  %i.jf = zext i8 %i.je to i32
  %i.jg = add nsw i32 %i.jf, -128                 ; 2 uses
  %.not35.i.i.i71 = icmp ult i32 %i.jg, 64
  %i.jh = shl i32 %.024.i.i.i68, 6
  %i.ji = add nuw nsw i32 %i.jg, %i.jh
  %i.jj = shl i32 %.022.i.i.i69, 5
  br i1 %.not35.i.i.i71, label %.preheader.i.i.i66, label %.thread42.i.i.i72, !llvm.loop !1

.thread.i.i.i98:                                  ; preds = %.preheader.i.i.i66
  %i.jk = shl i32 %.022.i.i.i69, 1
  %i.jl = add i32 %i.jk, -128
  %i.jm = and i32 %i.jl, %.024.i.i.i68
  %i.jn = icmp ult i32 %i.jm, 65536
  %.127.v.i.i.i99 = select i1 %i.jn, i64 1, i64 2
  %.127.i.i.i100 = add i64 %.127.v.i.i.i99, %.02652.i.i.i62
  br label %bb.ak, !llvm.loop !2

.thread42.i.i.i72:                                ; preds = %bb.aj, %.lr.ph.i.i.i61
  %.23146.i.i.i73 = phi ptr [ %i.iv, %.lr.ph.i.i.i61 ], [ %i.jd, %bb.aj ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.72) #13, !inline_history !247
  br label %bb.ak

bb.ak:                                            ; preds = %.thread42.i.i.i72, %.thread.i.i.i98
  %.23139.i.i.i74 = phi ptr [ %.23146.i.i.i73, %.thread42.i.i.i72 ], [ %.130.i.i.i67, %.thread.i.i.i98 ] ; 2 uses
  %.228.i.i.i75 = phi i64 [ %.02652.i.i.i62, %.thread42.i.i.i72 ], [ %.127.i.i.i100, %.thread.i.i.i98 ] ; 2 uses
  %i.jo = load i8, ptr %.23139.i.i.i74, align 1, !tbaa !61 ; 2 uses
  %.not.i.i.i76 = icmp eq i8 %i.jo, 0
  br i1 %.not.i.i.i76, label %mxf_utf16len.exit.i.i77, label %.lr.ph.i.i.i61

mxf_utf16len.exit.i.i77:                          ; preds = %bb.ak
  %i.jp = add i64 %.228.i.i.i75, 1                ; 3 uses
  %i.jq = icmp ugt i64 %i.jp, 32766
  br i1 %i.jq, label %bb.al, label %mxf_utf16len.exit.thread.i.i78

bb.al:                                            ; preds = %mxf_utf16len.exit.i.i77
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.71, i64 noundef %i.jp) #13, !inline_history !247
  br label %mxf_utf16_local_tag_length.exit.i81

mxf_utf16len.exit.thread.i.i78:                   ; preds = %mxf_utf16len.exit.i.i77, %bb.ai
  %.026.lcssa.i8.i.i79 = phi i64 [ %i.jp, %mxf_utf16len.exit.i.i77 ], [ 1, %bb.ai ]
end_hunk_3
begin_hunk_4_@mxf_write_header_metadata_sets:bb.a
  br i1 %.not50.i.i.i.i.i, label %mxf_utf16len.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aq, %bb.as
  %i.km = phi i8 [ %i.lg, %bb.as ], [ %i.kl, %bb.aq ] ; 2 uses
  %.02652.i.i.i.i.i = phi i64 [ %.228.i.i.i.i.i, %bb.as ], [ 0, %bb.aq ] ; 2 uses
  %.02951.i.i.i.i.i = phi ptr [ %.23139.i.i.i.i.i, %bb.as ], [ %i.kg, %bb.aq ]
  %i.kn = getelementptr inbounds nuw i8, ptr %.02951.i.i.i.i.i, i64 1 ; 2 uses
  %i.ko = zext i8 %i.km to i32                    ; 3 uses
  %i.kp = and i32 %i.ko, 192
  %i.kq = icmp eq i32 %i.kp, 128
  %i.kr = icmp ugt i8 %i.km, -3
  %or.cond.i.i.i.i.i = or i1 %i.kr, %i.kq
  br i1 %or.cond.i.i.i.i.i, label %.thread42.i.i.i.i.i, label %.preheader.preheader.i.i.i.i.i

.preheader.preheader.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i
  %i.ks = lshr i32 %i.ko, 1
  %i.kt = and i32 %i.ks, 64
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ar, %.preheader.preheader.i.i.i.i.i
  %.130.i.i.i.i.i = phi ptr [ %i.kv, %bb.ar ], [ %i.kn, %.preheader.preheader.i.i.i.i.i ] ; 3 uses
  %.024.i.i.i.i.i = phi i32 [ %i.la, %bb.ar ], [ %i.ko, %.preheader.preheader.i.i.i.i.i ] ; 3 uses
  %.022.i.i.i.i.i = phi i32 [ %i.lb, %bb.ar ], [ %i.kt, %.preheader.preheader.i.i.i.i.i ] ; 3 uses
  %i.ku = and i32 %.022.i.i.i.i.i, %.024.i.i.i.i.i
  %.not34.i.i.i.i.i = icmp eq i32 %i.ku, 0
  br i1 %.not34.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.preheader.i.i.i.i.i
  %i.kv = getelementptr inbounds nuw i8, ptr %.130.i.i.i.i.i, i64 1 ; 2 uses
  %i.kw = load i8, ptr %.130.i.i.i.i.i, align 1, !tbaa !61
  %i.kx = zext i8 %i.kw to i32
  %i.ky = add nsw i32 %i.kx, -128                 ; 2 uses
  %.not35.i.i.i.i.i = icmp ult i32 %i.ky, 64
  %i.kz = shl i32 %.024.i.i.i.i.i, 6
  %i.la = add nuw nsw i32 %i.ky, %i.kz
  %i.lb = shl i32 %.022.i.i.i.i.i, 5
  br i1 %.not35.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.thread42.i.i.i.i.i, !llvm.loop !1

.thread.i.i.i.i.i:                                ; preds = %.preheader.i.i.i.i.i
  %i.lc = shl i32 %.022.i.i.i.i.i, 1
  %i.ld = add i32 %i.lc, -128
  %i.le = and i32 %i.ld, %.024.i.i.i.i.i
  %i.lf = icmp ult i32 %i.le, 65536
  %.127.v.i.i.i.i.i = select i1 %i.lf, i64 1, i64 2
  %.127.i.i.i.i.i = add i64 %.127.v.i.i.i.i.i, %.02652.i.i.i.i.i
  br label %bb.as, !llvm.loop !2

.thread42.i.i.i.i.i:                              ; preds = %bb.ar, %.lr.ph.i.i.i.i.i
  %.23146.i.i.i.i.i = phi ptr [ %i.kn, %.lr.ph.i.i.i.i.i ], [ %i.kv, %bb.ar ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.72) #13, !inline_history !247
  br label %bb.as

bb.as:                                            ; preds = %.thread42.i.i.i.i.i, %.thread.i.i.i.i.i
  %.23139.i.i.i.i.i = phi ptr [ %.23146.i.i.i.i.i, %.thread42.i.i.i.i.i ], [ %.130.i.i.i.i.i, %.thread.i.i.i.i.i ] ; 2 uses
  %.228.i.i.i.i.i = phi i64 [ %.02652.i.i.i.i.i, %.thread42.i.i.i.i.i ], [ %.127.i.i.i.i.i, %.thread.i.i.i.i.i ] ; 2 uses
  %i.lg = load i8, ptr %.23139.i.i.i.i.i, align 1, !tbaa !61 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.lg, 0
  br i1 %.not.i.i.i.i.i, label %mxf_utf16len.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

mxf_utf16len.exit.i.i.i.i:                        ; preds = %bb.as
  %i.lh = add i64 %.228.i.i.i.i.i, 1              ; 3 uses
  %i.li = icmp ugt i64 %i.lh, 32766
  br i1 %i.li, label %bb.at, label %mxf_utf16len.exit.thread.i.i.i.i

bb.at:                                            ; preds = %mxf_utf16len.exit.i.i.i.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.71, i64 noundef %i.lh) #13, !inline_history !247
  br label %mxf_utf16_local_tag_length.exit.i.i.i

mxf_utf16len.exit.thread.i.i.i.i:                 ; preds = %mxf_utf16len.exit.i.i.i.i, %bb.aq
  %.026.lcssa.i8.i.i.i.i = phi i64 [ %i.lh, %mxf_utf16len.exit.i.i.i.i ], [ 1, %bb.aq ]
  %.tr.i.i.i.i = trunc nuw nsw i64 %.026.lcssa.i8.i.i.i.i to i32
  %i.lj = shl nuw nsw i32 %.tr.i.i.i.i, 1
  %i.lk = add nuw nsw i32 %i.lj, 4
  br label %mxf_utf16_local_tag_length.exit.i.i.i

mxf_utf16_local_tag_length.exit.i.i.i:            ; preds = %mxf_utf16len.exit.thread.i.i.i.i, %bb.at
  %.0.i.i.i.i = phi i32 [ 0, %bb.at ], [ %i.lk, %mxf_utf16len.exit.thread.i.i.i.i ] ; 2 uses
  %.not.i27.i.i.i = icmp eq ptr %i.ki, null
  br i1 %.not.i27.i.i.i, label %mxf_write_tagged_value.exit.thread.i.i, label %bb.au

bb.au:                                            ; preds = %mxf_utf16_local_tag_length.exit.i.i.i
  %i.ll = load i8, ptr %i.ki, align 1, !tbaa !61  ; 2 uses
  %.not50.i.i28.i.i.i = icmp eq i8 %i.ll, 0
  br i1 %.not50.i.i28.i.i.i, label %mxf_utf16_local_tag_length.exit53.i.i.i, label %.lr.ph.i.i29.i.i.i

.lr.ph.i.i29.i.i.i:                               ; preds = %bb.au, %bb.aw
  %i.lm = phi i8 [ %i.mg, %bb.aw ], [ %i.ll, %bb.au ] ; 2 uses
  %.02652.i.i30.i.i.i = phi i64 [ %.228.i.i43.i.i.i, %bb.aw ], [ 0, %bb.au ] ; 2 uses
  %.02951.i.i31.i.i.i = phi ptr [ %.23139.i.i42.i.i.i, %bb.aw ], [ %i.ki, %bb.au ]
  %i.ln = getelementptr inbounds nuw i8, ptr %.02951.i.i31.i.i.i, i64 1 ; 2 uses
  %i.lo = zext i8 %i.lm to i32                    ; 3 uses
  %i.lp = and i32 %i.lo, 192
  %i.lq = icmp eq i32 %i.lp, 128
  %i.lr = icmp ugt i8 %i.lm, -3
  %or.cond.i.i32.i.i.i = or i1 %i.lr, %i.lq
  br i1 %or.cond.i.i32.i.i.i, label %.thread42.i.i40.i.i.i, label %.preheader.preheader.i.i33.i.i.i

.preheader.preheader.i.i33.i.i.i:                 ; preds = %.lr.ph.i.i29.i.i.i
  %i.ls = lshr i32 %i.lo, 1
  %i.lt = and i32 %i.ls, 64
  br label %.preheader.i.i34.i.i.i

.preheader.i.i34.i.i.i:                           ; preds = %bb.av, %.preheader.preheader.i.i33.i.i.i
  %.130.i.i35.i.i.i = phi ptr [ %i.lv, %bb.av ], [ %i.ln, %.preheader.preheader.i.i33.i.i.i ] ; 3 uses
  %.024.i.i36.i.i.i = phi i32 [ %i.ma, %bb.av ], [ %i.lo, %.preheader.preheader.i.i33.i.i.i ] ; 3 uses
  %.022.i.i37.i.i.i = phi i32 [ %i.mb, %bb.av ], [ %i.lt, %.preheader.preheader.i.i33.i.i.i ] ; 3 uses
  %i.lu = and i32 %.022.i.i37.i.i.i, %.024.i.i36.i.i.i
  %.not34.i.i38.i.i.i = icmp eq i32 %i.lu, 0
  br i1 %.not34.i.i38.i.i.i, label %.thread.i.i50.i.i.i, label %bb.av

bb.av:                                            ; preds = %.preheader.i.i34.i.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %.130.i.i35.i.i.i, i64 1 ; 2 uses
  %i.lw = load i8, ptr %.130.i.i35.i.i.i, align 1, !tbaa !61
  %i.lx = zext i8 %i.lw to i32
  %i.ly = add nsw i32 %i.lx, -128                 ; 2 uses
  %.not35.i.i39.i.i.i = icmp ult i32 %i.ly, 64
  %i.lz = shl i32 %.024.i.i36.i.i.i, 6
  %i.ma = add nuw nsw i32 %i.ly, %i.lz
  %i.mb = shl i32 %.022.i.i37.i.i.i, 5
  br i1 %.not35.i.i39.i.i.i, label %.preheader.i.i34.i.i.i, label %.thread42.i.i40.i.i.i, !llvm.loop !1

.thread.i.i50.i.i.i:                              ; preds = %.preheader.i.i34.i.i.i
  %i.mc = shl i32 %.022.i.i37.i.i.i, 1
  %i.md = add i32 %i.mc, -128
  %i.me = and i32 %i.md, %.024.i.i36.i.i.i
  %i.mf = icmp ult i32 %i.me, 65536
  %.127.v.i.i51.i.i.i = select i1 %i.mf, i64 1, i64 2
  %.127.i.i52.i.i.i = add i64 %.127.v.i.i51.i.i.i, %.02652.i.i30.i.i.i
  br label %bb.aw, !llvm.loop !2

.thread42.i.i40.i.i.i:                            ; preds = %bb.av, %.lr.ph.i.i29.i.i.i
  %.23146.i.i41.i.i.i = phi ptr [ %i.ln, %.lr.ph.i.i29.i.i.i ], [ %i.lv, %bb.av ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.72) #13, !inline_history !247
  br label %bb.aw

bb.aw:                                            ; preds = %.thread42.i.i40.i.i.i, %.thread.i.i50.i.i.i
  %.23139.i.i42.i.i.i = phi ptr [ %.23146.i.i41.i.i.i, %.thread42.i.i40.i.i.i ], [ %.130.i.i35.i.i.i, %.thread.i.i50.i.i.i ] ; 2 uses
  %.228.i.i43.i.i.i = phi i64 [ %.02652.i.i30.i.i.i, %.thread42.i.i40.i.i.i ], [ %.127.i.i52.i.i.i, %.thread.i.i50.i.i.i ] ; 2 uses
  %i.mg = load i8, ptr %.23139.i.i42.i.i.i, align 1, !tbaa !61 ; 2 uses
  %.not.i.i44.i.i.i = icmp eq i8 %i.mg, 0
  br i1 %.not.i.i44.i.i.i, label %mxf_utf16len.exit.i45.i.i.i, label %.lr.ph.i.i29.i.i.i

mxf_utf16len.exit.i45.i.i.i:                      ; preds = %bb.aw
  %i.mh = add i64 %.228.i.i43.i.i.i, 1            ; 3 uses
  %i.mi = icmp ugt i64 %i.mh, 32766
  br i1 %i.mi, label %bb.ax, label %mxf_utf16_local_tag_length.exit53.i.i.i

bb.ax:                                            ; preds = %mxf_utf16len.exit.i45.i.i.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.71, i64 noundef %i.mh) #13, !inline_history !247
  br label %mxf_write_tagged_value.exit.thread.i.i

mxf_utf16_local_tag_length.exit53.i.i.i:          ; preds = %mxf_utf16len.exit.i45.i.i.i, %bb.au
  %.026.lcssa.i8.i47.i.i.i = phi i64 [ %i.mh, %mxf_utf16len.exit.i45.i.i.i ], [ 1, %bb.au ]
  %i.mj = icmp eq i32 %.0.i.i.i.i, 0
  br i1 %i.mj, label %mxf_write_tagged_value.exit.thread.i.i, label %bb.ay

bb.ay:                                            ; preds = %mxf_utf16_local_tag_length.exit53.i.i.i
  %.tr.i48.i.i.i = trunc nuw nsw i64 %.026.lcssa.i8.i47.i.i.i to i32
  %i.mk = shl nuw nsw i32 %.tr.i48.i.i.i, 1
  %i.ml = add nuw nsw i32 %i.mk, 17               ; 2 uses
  call void @avio_write(ptr noundef %i.kk, ptr noundef nonnull @header_metadata_key, i32 noundef 13) #13, !inline_history !247
  call void @avio_wb24(ptr noundef %i.kk, i32 noundef 81664) #13, !inline_history !247
  %i.mm = add nuw nsw i32 %.0.i.i.i.i, 24
  %i.mn = add nuw nsw i32 %i.mm, %i.ml            ; 6 uses
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = icmp ult i32 %i.mn, 128
  br i1 %i.mp, label %klv_ber_length.exit.thread.i.i.i.i, label %klv_ber_length.exit.i.i.i.i

klv_ber_length.exit.i.i.i.i:                      ; preds = %bb.ay
  %.not.i.i.i.i.i.i = icmp ult i32 %i.mn, 65536   ; 2 uses
  %i.mq = lshr i32 %i.mn, 16
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 %i.mn, i32 %i.mq ; 3 uses
  %spec.select12.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i.i.i.i = icmp samesign ult i32 %spec.select.i.i.i.i.i.i, 256 ; 2 uses
  %i.mr = lshr i32 %spec.select.i.i.i.i.i.i, 8
  %i.ms = or disjoint i32 %spec.select12.i.i.i.i.i.i, 8
  %.110.i.i.i.i.i.i = select i1 %.not11.i.i.i.i.i.i, i32 %spec.select.i.i.i.i.i.i, i32 %i.mr
  %.1.i.i.i.i.i.i = select i1 %.not11.i.i.i.i.i.i, i32 %spec.select12.i.i.i.i.i.i, i32 %i.ms ; 2 uses
  %i.mt = zext nneg i32 %.110.i.i.i.i.i.i to i64
  %i.mu = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !61  ; 2 uses
  %i.mw = zext i8 %i.mv to i32
  %i.mx = add nuw nsw i32 %.1.i.i.i.i.i.i, %i.mw
  %i.my = lshr i32 %i.mx, 3
  %i.mz = add nuw nsw i32 %i.my, 129
  call void @avio_w8(ptr noundef %i.kk, i32 noundef %i.mz) #13, !inline_history !247
  %i.na = zext nneg i32 %.1.i.i.i.i.i.i to i64
  %i.nb = zext i8 %i.mv to i64
  %i.nc = add nuw nsw i64 %i.nb, %i.na
  %i.nd = lshr i64 %i.nc, 3
  %i.ne = add nuw nsw i64 %i.nd, 1
  br label %bb.az

klv_ber_length.exit.thread.i.i.i.i:               ; preds = %bb.ay
  call void @avio_w8(ptr noundef %i.kk, i32 noundef %i.mn) #13, !inline_history !247
  br label %.loopexit.i.i

bb.az:                                            ; preds = %bb.az, %klv_ber_length.exit.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %i.ne, %klv_ber_length.exit.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.az ]
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 3 uses
  %i.nf = shl nsw i64 %indvars.iv.next.i.i.i.i, 3
  %4 = and i64 %i.nf, 4294967288
  %i.ng = lshr i64 %i.mo, %4
  %i.nh = trunc nuw nsw i64 %i.ng to i32
  %i.ni = and i32 %i.nh, 255
  call void @avio_w8(ptr noundef %i.kk, i32 noundef %i.ni) #13, !inline_history !247
  %.not.i54.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 0
  br i1 %.not.i54.i.i.i, label %.loopexit.i.i, label %bb.az, !llvm.loop !0

.loopexit.i.i:                                    ; preds = %bb.az, %klv_ber_length.exit.thread.i.i.i.i
  %.val25.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val26.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val25.i.i.i, ptr %.val26.i.i.i, i32 noundef 16, i32 noundef 15370), !inline_history !247
  %i.nj = getelementptr inbounds nuw i8, ptr %i.kj, i64 172 ; 3 uses
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !262
  call void @avio_write(ptr noundef %i.kk, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !247
  call void @avio_wb16(ptr noundef %i.kk, i32 noundef 18) #13, !inline_history !247
  call void @avio_wb32(ptr noundef %i.kk, i32 noundef %i.nk) #13, !inline_history !247
  call fastcc void @mxf_write_local_tag_utf16(ptr noundef nonnull readonly %0, i32 noundef 20481, ptr noundef nonnull %i.kg), !inline_history !247
  %.val.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val24.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val.i.i.i, ptr %.val24.i.i.i, i32 noundef %i.ml, i32 noundef 20483), !inline_history !247
  call void @avio_write(ptr noundef %i.kk, ptr noundef nonnull @mxf_indirect_value_utf16le, i32 noundef 17) #13, !inline_history !247
  %i.nl = call i32 @avio_put_str16le(ptr noundef %i.kk, ptr noundef nonnull %i.ki) #13, !inline_history !247 ; 0 uses
  %i.nm = load i32, ptr %i.nj, align 4, !tbaa !262
  %i.nn = add i32 %i.nm, 1
  store i32 %i.nn, ptr %i.nj, align 4, !tbaa !262
  %i.no = add nsw i32 %.026.i.i, 1
  br label %mxf_write_tagged_value.exit.thread.i.i

mxf_write_tagged_value.exit.thread.i.i:           ; preds = %.loopexit.i.i, %mxf_utf16_local_tag_length.exit53.i.i.i, %bb.ax, %mxf_utf16_local_tag_length.exit.i.i.i
  %i.np = phi i32 [ %i.no, %.loopexit.i.i ], [ %.026.i.i, %mxf_utf16_local_tag_length.exit53.i.i.i ], [ %.026.i.i, %bb.ax ], [ %.026.i.i, %mxf_utf16_local_tag_length.exit.i.i.i ] ; 2 uses
  %i.nq = call ptr @av_dict_get(ptr noundef %i.jy, ptr noundef nonnull @.str.74, ptr noundef nonnull %i.kc, i32 noundef 2) #13, !inline_history !247 ; 2 uses
  %.not.i132.i = icmp eq ptr %i.nq, null
  br i1 %.not.i132.i, label %mxf_write_user_comments.exit.i, label %bb.ao, !llvm.loop !248

mxf_write_user_comments.exit.i:                   ; preds = %mxf_write_tagged_value.exit.thread.i.i, %bb.ap, %bb.an, %bb.am
  %.0107.i = phi i32 [ 0, %bb.am ], [ %.026.i.i, %bb.ap ], [ 0, %bb.an ], [ %i.np, %mxf_write_tagged_value.exit.thread.i.i ] ; 3 uses
  call void @avio_write(ptr noundef %i.iq, ptr noundef nonnull @header_metadata_key, i32 noundef 13) #13, !inline_history !247
  call void @avio_wb24(ptr noundef %i.iq, i32 noundef 79360) #13, !inline_history !247
  %i.nr = add nuw nsw i32 %.0.i.i82, 92
  %i.ns = add i32 %.0107.i, %i.ir
  %i.nt = shl i32 %i.ns, 4
  %i.nu = add i32 %i.nr, %i.nt
  %i.nv = sext i32 %i.nu to i64
  %i.nw = load i32, ptr %i.jw, align 8, !tbaa !126
  %i.nx = sext i32 %i.nw to i64
  %i.ny = mul nsw i64 %i.nx, 12
  %i.nz = add nsw i64 %i.ny, %i.nv                ; 3 uses
  %i.oa = icmp ult i64 %i.nz, 128
  %i.ob = trunc i64 %i.nz to i32                  ; 4 uses
  br i1 %i.oa, label %klv_encode_ber_length.exit.sink.split.i, label %klv_ber_length.exit.i.i89

klv_ber_length.exit.i.i89:                        ; preds = %mxf_write_user_comments.exit.i
  %.not.i.i.i.i90 = icmp ult i32 %i.ob, 65536     ; 2 uses
  %i.oc = lshr i32 %i.ob, 16
  %spec.select.i.i.i.i91 = select i1 %.not.i.i.i.i90, i32 %i.ob, i32 %i.oc ; 3 uses
  %spec.select12.i.i.i.i92 = select i1 %.not.i.i.i.i90, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i.i93 = icmp samesign ult i32 %spec.select.i.i.i.i91, 256 ; 2 uses
  %i.od = lshr i32 %spec.select.i.i.i.i91, 8
  %i.oe = or disjoint i32 %spec.select12.i.i.i.i92, 8
  %.110.i.i.i.i94 = select i1 %.not11.i.i.i.i93, i32 %spec.select.i.i.i.i91, i32 %i.od
  %.1.i.i.i.i95 = select i1 %.not11.i.i.i.i93, i32 %spec.select12.i.i.i.i92, i32 %i.oe ; 2 uses
  %i.of = zext nneg i32 %.110.i.i.i.i94 to i64
  %i.og = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.of
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !61  ; 2 uses
  %i.oi = zext i8 %i.oh to i32
  %i.oj = add nuw nsw i32 %.1.i.i.i.i95, %i.oi
  %i.ok = lshr i32 %i.oj, 3
  %i.ol = add nuw nsw i32 %i.ok, 129
  call void @avio_w8(ptr noundef %i.iq, i32 noundef %i.ol) #13, !inline_history !247
  %i.om = zext nneg i32 %.1.i.i.i.i95 to i64
  %i.on = zext i8 %i.oh to i64
  %i.oo = add nuw nsw i64 %i.on, %i.om
  %i.op = lshr i64 %i.oo, 3
  %i.oq = add nuw nsw i64 %i.op, 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %klv_ber_length.exit.i.i89
  %indvars.iv.i.i96 = phi i64 [ %i.oq, %klv_ber_length.exit.i.i89 ], [ %indvars.iv.next.i.i97, %bb.ba ]
  %indvars.iv.next.i.i97 = add nsw i64 %indvars.iv.i.i96, -1 ; 3 uses
  %i.or = shl nsw i64 %indvars.iv.next.i.i97, 3
  %5 = and i64 %i.or, 4294967288
  %i.os = lshr i64 %i.nz, %5
  %i.ot = trunc i64 %i.os to i32
  %i.ou = and i32 %i.ot, 255
  call void @avio_w8(ptr noundef %i.iq, i32 noundef %i.ou) #13, !inline_history !247
  %.not.i133.i = icmp eq i64 %indvars.iv.next.i.i97, 0
  br i1 %.not.i133.i, label %klv_encode_ber_length.exit.i, label %bb.ba, !llvm.loop !0

bb.bb:                                            ; preds = %mxf_utf16_local_tag_length.exit.i81
  call void @avio_write(ptr noundef %i.iq, ptr noundef nonnull @header_metadata_key, i32 noundef 13) #13, !inline_history !247
  call void @avio_wb24(ptr noundef %i.iq, i32 noundef 79616) #13, !inline_history !247
  %i.ov = shl nsw i32 %i.ir, 4
  %i.ow = add i32 %i.ov, 112
  %i.ox = add i32 %i.ow, %.0.i.i82
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ip, i64 184
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !126
  %i.pb = sext i32 %i.pa to i64
  %i.pc = mul nsw i64 %i.pb, 12
  %i.pd = add nsw i64 %i.pc, %i.oy                ; 3 uses
  %i.pe = icmp ult i64 %i.pd, 128
  %i.pf = trunc i64 %i.pd to i32                  ; 4 uses
  br i1 %i.pe, label %klv_encode_ber_length.exit.sink.split.i, label %klv_ber_length.exit.i135.i

klv_ber_length.exit.i135.i:                       ; preds = %bb.bb
  %.not.i.i.i136.i = icmp ult i32 %i.pf, 65536    ; 2 uses
  %i.pg = lshr i32 %i.pf, 16
  %spec.select.i.i.i137.i = select i1 %.not.i.i.i136.i, i32 %i.pf, i32 %i.pg ; 3 uses
  %spec.select12.i.i.i138.i = select i1 %.not.i.i.i136.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i139.i = icmp samesign ult i32 %spec.select.i.i.i137.i, 256 ; 2 uses
  %i.ph = lshr i32 %spec.select.i.i.i137.i, 8
  %i.pi = or disjoint i32 %spec.select12.i.i.i138.i, 8
  %.110.i.i.i140.i = select i1 %.not11.i.i.i139.i, i32 %spec.select.i.i.i137.i, i32 %i.ph
  %.1.i.i.i141.i = select i1 %.not11.i.i.i139.i, i32 %spec.select12.i.i.i138.i, i32 %i.pi ; 2 uses
  %i.pj = zext nneg i32 %.110.i.i.i140.i to i64
  %i.pk = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.pj
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !61  ; 2 uses
  %i.pm = zext i8 %i.pl to i32
  %i.pn = add nuw nsw i32 %.1.i.i.i141.i, %i.pm
  %i.po = lshr i32 %i.pn, 3
  %i.pp = add nuw nsw i32 %i.po, 129
  call void @avio_w8(ptr noundef %i.iq, i32 noundef %i.pp) #13, !inline_history !247
  %i.pq = zext nneg i32 %.1.i.i.i141.i to i64
  %i.pr = zext i8 %i.pl to i64
  %i.ps = add nuw nsw i64 %i.pr, %i.pq
  %i.pt = lshr i64 %i.ps, 3
  %i.pu = add nuw nsw i64 %i.pt, 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %klv_ber_length.exit.i135.i
  %indvars.iv.i142.i = phi i64 [ %i.pu, %klv_ber_length.exit.i135.i ], [ %indvars.iv.next.i143.i, %bb.bc ]
  %indvars.iv.next.i143.i = add nsw i64 %indvars.iv.i142.i, -1 ; 3 uses
  %i.pv = shl nsw i64 %indvars.iv.next.i143.i, 3
  %6 = and i64 %i.pv, 4294967288
  %i.pw = lshr i64 %i.pd, %6
  %i.px = trunc i64 %i.pw to i32
  %i.py = and i32 %i.px, 255
  call void @avio_w8(ptr noundef %i.iq, i32 noundef %i.py) #13, !inline_history !247
  %.not.i144.i83 = icmp eq i64 %indvars.iv.next.i143.i, 0
  br i1 %.not.i144.i83, label %klv_encode_ber_length.exit.i, label %bb.bc, !llvm.loop !0

klv_encode_ber_length.exit.sink.split.i:          ; preds = %bb.bb, %mxf_write_user_comments.exit.i
  %.sink.i = phi i32 [ %i.ob, %mxf_write_user_comments.exit.i ], [ %i.pf, %bb.bb ]
  %.1108.ph.i = phi i32 [ %.0107.i, %mxf_write_user_comments.exit.i ], [ 0, %bb.bb ]
  call void @avio_w8(ptr noundef %i.iq, i32 noundef %.sink.i) #13, !inline_history !247
  br label %klv_encode_ber_length.exit.i

klv_encode_ber_length.exit.i:                     ; preds = %bb.bc, %bb.ba, %klv_encode_ber_length.exit.sink.split.i
  %.1108.i = phi i32 [ %.1108.ph.i, %klv_encode_ber_length.exit.sink.split.i ], [ %.0107.i, %bb.ba ], [ 0, %bb.bc ] ; 5 uses
  %.val130.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val131.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val130.i, ptr %.val131.i, i32 noundef 16, i32 noundef 15370), !inline_history !247
  %i.pz = load i32, ptr %i.jt, align 8, !tbaa !149
  %i.qa = getelementptr inbounds nuw i8, ptr %i.io, i64 12 ; 4 uses
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !259
  call void @avio_write(ptr noundef %i.iq, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !247
  call void @avio_wb16(ptr noundef %i.iq, i32 noundef %i.pz) #13, !inline_history !247
  call void @avio_wb32(ptr noundef %i.iq, i32 noundef %i.qb) #13, !inline_history !247
  %i.qc = load i32, ptr %i.jt, align 8, !tbaa !149
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.73, i32 noundef %i.qc) #13, !inline_history !247
  %.val128.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val129.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val128.i, ptr %.val129.i, i32 noundef 32, i32 noundef 17409), !inline_history !247
  %i.qd = load i32, ptr %i.qa, align 4, !tbaa !259
  %i.qe = load ptr, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.qf = load ptr, ptr %i.al, align 8, !tbaa !31
  call void @avio_write(ptr noundef %i.qf, ptr noundef nonnull @umid_ul, i32 noundef 13) #13, !inline_history !247
  %i.qg = load ptr, ptr %i.al, align 8, !tbaa !31
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 144
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !115
  call void @avio_wb24(ptr noundef %i.qg, i32 noundef %i.qi) #13, !inline_history !247
  %i.qj = load ptr, ptr %i.al, align 8, !tbaa !31
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qe, i64 148
  call void @avio_write(ptr noundef %i.qj, ptr noundef nonnull %i.qk, i32 noundef 15) #13, !inline_history !247
  %i.ql = load ptr, ptr %i.al, align 8, !tbaa !31
  call void @avio_w8(ptr noundef %i.ql, i32 noundef %i.qd) #13, !inline_history !247
  %.not115.i = icmp eq i32 %.0.i.i82, 0
  br i1 %.not115.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %klv_encode_ber_length.exit.i
  %i.qm = load ptr, ptr %i.io, align 8, !tbaa !261
  call fastcc void @mxf_write_local_tag_utf16(ptr noundef nonnull %0, i32 noundef 17410, ptr noundef %i.qm), !inline_history !247
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %klv_encode_ber_length.exit.i
  %.val126.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val127.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val126.i, ptr %.val127.i, i32 noundef 8, i32 noundef 17413), !inline_history !247
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ip, i64 48 ; 2 uses
  %i.qo = load i64, ptr %i.qn, align 8, !tbaa !139
  call void @avio_wb64(ptr noundef %i.iq, i64 noundef %i.qo) #13, !inline_history !247
  %.val124.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val125.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val124.i, ptr %.val125.i, i32 noundef 8, i32 noundef 17412), !inline_history !247
  %i.qp = load i64, ptr %i.qn, align 8, !tbaa !139
  call void @avio_wb64(ptr noundef %i.iq, i64 noundef %i.qp) #13, !inline_history !247
  %i.qq = shl nsw i32 %i.ir, 4
  %i.qr = or disjoint i32 %i.qq, 8
  %.val122.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val123.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val122.i, ptr %.val123.i, i32 noundef %i.qr, i32 noundef 17411), !inline_history !247
  call void @avio_wb32(ptr noundef %i.iq, i32 noundef %i.ir) #13, !inline_history !247
  call void @avio_wb32(ptr noundef %i.iq, i32 noundef 16) #13, !inline_history !247
  %i.qs = icmp ult i32 %i.in, 2147483647
  br i1 %i.qs, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.be
  %i.qt = getelementptr inbounds nuw i8, ptr %i.ip, i64 188
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.lr.ph.i
  %.0109181.i = phi i32 [ 0, %.lr.ph.i ], [ %i.qw, %bb.bf ] ; 3 uses
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !150
  %i.qv = add nsw i32 %i.qu, %.0109181.i
  call void @avio_write(ptr noundef %i.iq, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !247
  call void @avio_wb16(ptr noundef %i.iq, i32 noundef 9) #13, !inline_history !247
  call void @avio_wb32(ptr noundef %i.iq, i32 noundef %i.qv) #13, !inline_history !247
  %i.qw = add nuw nsw i32 %.0109181.i, 1
  %exitcond.not.i87 = icmp eq i32 %.0109181.i, %i.in
  br i1 %exitcond.not.i87, label %._crit_edge.i, label %bb.bf, !llvm.loop !249

._crit_edge.i:                                    ; preds = %bb.bf, %bb.be
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ip, i64 184
  %i.qy = load i32, ptr %i.qx, align 8, !tbaa !126
  %.not116.i = icmp eq i32 %i.qy, 0
  br i1 %.not116.i, label %.loopexit.i, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.i
  %i.qz = shl nsw i32 %.1108.i, 4
  %i.ra = or disjoint i32 %i.qz, 8
  %.val120.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val121.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val120.i, ptr %.val121.i, i32 noundef %i.ra, i32 noundef 17414), !inline_history !247
  call void @avio_wb32(ptr noundef %i.iq, i32 noundef %.1108.i) #13, !inline_history !247
  call void @avio_wb32(ptr noundef %i.iq, i32 noundef 16) #13, !inline_history !247
  %i.rb = icmp sgt i32 %.1108.i, 0
  br i1 %i.rb, label %.lr.ph184.i, label %.loopexit.i

.lr.ph184.i:                                      ; preds = %bb.bg
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ip, i64 172
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph184.i
  %.1110182.i = phi i32 [ 0, %.lr.ph184.i ], [ %i.rg, %bb.bh ] ; 2 uses
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !262
  %i.re = sub nsw i32 %.1110182.i, %.1108.i
  %i.rf = add i32 %i.re, %i.rd
  call void @avio_write(ptr noundef %i.iq, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !247
  call void @avio_wb16(ptr noundef %i.iq, i32 noundef 18) #13, !inline_history !247
  call void @avio_wb32(ptr noundef %i.iq, i32 noundef %i.rf) #13, !inline_history !247
  %i.rg = add nuw nsw i32 %.1110182.i, 1          ; 2 uses
  %exitcond205.not.i = icmp eq i32 %i.rg, %.1108.i
  br i1 %exitcond205.not.i, label %.loopexit.i, label %bb.bh, !llvm.loop !250

.loopexit.i:                                      ; preds = %bb.bh, %bb.bg, %._crit_edge.i
  %i.rh = load i32, ptr %i.jt, align 8, !tbaa !149
  %i.ri = icmp eq i32 %i.rh, 2
  br i1 %i.ri, label %bb.bi, label %mxf_write_multi_descriptor.exit.i

bb.bi:                                            ; preds = %.loopexit.i
  %i.rj = load i32, ptr %i.qa, align 4, !tbaa !259
  switch i32 %i.rj, label %mxf_write_multi_descriptor.exit.i [
    i32 1, label %bb.bj
    i32 2, label %bb.bp
  ]

bb.bj:                                            ; preds = %bb.bi
  %.val118.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val119.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val118.i, ptr %.val119.i, i32 noundef 16, i32 noundef 18177), !inline_history !247
  %i.rk = load i32, ptr %i.il, align 4, !tbaa !104
  %i.rl = icmp ugt i32 %i.rk, 1
  call void @avio_write(ptr noundef %i.iq, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !247
  br i1 %i.rl, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  call void @avio_wb16(ptr noundef %i.iq, i32 noundef 7) #13, !inline_history !247
  call void @avio_wb32(ptr noundef %i.iq, i32 noundef 0) #13, !inline_history !247
  %i.rm = load ptr, ptr %i.a, align 8, !tbaa !30  ; 3 uses
  %i.rn = load ptr, ptr %i.al, align 8, !tbaa !31 ; 16 uses
  call void @avio_write(ptr noundef %i.rn, ptr noundef nonnull @header_metadata_key, i32 noundef 13) #13, !inline_history !247
  call void @avio_wb24(ptr noundef %i.rn, i32 noundef 82944) #13, !inline_history !247
  %i.ro = load i32, ptr %i.il, align 4, !tbaa !104 ; 2 uses
  %i.rp = zext i32 %i.ro to i64
  %i.rq = shl nuw nsw i64 %i.rp, 4
  %i.rr = add nuw nsw i64 %i.rq, 64               ; 2 uses
  %i.rs = icmp ult i32 %i.ro, 4
  %i.rt = trunc i64 %i.rr to i32                  ; 4 uses
  br i1 %i.rs, label %klv_ber_length.exit.thread.i.i.i, label %klv_ber_length.exit.i.i.i

klv_ber_length.exit.i.i.i:                        ; preds = %bb.bk
  %.not.i.i.i.i149.i = icmp ult i32 %i.rt, 65536  ; 2 uses
  %i.ru = lshr i32 %i.rt, 16
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i149.i, i32 %i.rt, i32 %i.ru ; 3 uses
  %spec.select12.i.i.i.i.i = select i1 %.not.i.i.i.i149.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i.i.i.i = icmp samesign ult i32 %spec.select.i.i.i.i.i, 256 ; 2 uses
  %i.rv = lshr i32 %spec.select.i.i.i.i.i, 8
  %i.rw = or disjoint i32 %spec.select12.i.i.i.i.i, 8
  %.110.i.i.i.i.i = select i1 %.not11.i.i.i.i.i, i32 %spec.select.i.i.i.i.i, i32 %i.rv
  %.1.i.i.i.i.i = select i1 %.not11.i.i.i.i.i, i32 %spec.select12.i.i.i.i.i, i32 %i.rw ; 2 uses
  %i.rx = zext nneg i32 %.110.i.i.i.i.i to i64
  %i.ry = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.rx
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !61  ; 2 uses
  %i.sa = zext i8 %i.rz to i32
  %i.sb = add nuw nsw i32 %.1.i.i.i.i.i, %i.sa
  %i.sc = lshr i32 %i.sb, 3
  %i.sd = add nuw nsw i32 %i.sc, 129
  call void @avio_w8(ptr noundef %i.rn, i32 noundef %i.sd) #13, !inline_history !247
  %i.se = zext nneg i32 %.1.i.i.i.i.i to i64
  %i.sf = zext i8 %i.rz to i64
  %i.sg = add nuw nsw i64 %i.sf, %i.se
  %i.sh = lshr i64 %i.sg, 3
  %i.si = add nuw nsw i64 %i.sh, 1
  br label %bb.bl

klv_ber_length.exit.thread.i.i.i:                 ; preds = %bb.bk
  call void @avio_w8(ptr noundef %i.rn, i32 noundef %i.rt) #13, !inline_history !247
  br label %klv_encode_ber_length.exit.i.i

bb.bl:                                            ; preds = %bb.bl, %klv_ber_length.exit.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.si, %klv_ber_length.exit.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.bl ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.sj = shl nsw i64 %indvars.iv.next.i.i.i, 3
  %7 = and i64 %i.sj, 4294967288
  %i.sk = lshr i64 %i.rr, %7
  %i.sl = trunc i64 %i.sk to i32
  %i.sm = and i32 %i.sl, 255
  call void @avio_w8(ptr noundef %i.rn, i32 noundef %i.sm) #13, !inline_history !247
  %.not.i.i150.i = icmp eq i64 %indvars.iv.next.i.i.i, 0
  br i1 %.not.i.i150.i, label %klv_encode_ber_length.exit.i.i, label %bb.bl, !llvm.loop !0

klv_encode_ber_length.exit.i.i:                   ; preds = %bb.bl, %klv_ber_length.exit.thread.i.i.i
  %.val32.i.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val33.i.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val32.i.i, ptr %.val33.i.i, i32 noundef 16, i32 noundef 15370), !inline_history !247
  call void @avio_write(ptr noundef %i.rn, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !247
  call void @avio_wb16(ptr noundef %i.rn, i32 noundef 7) #13, !inline_history !247
  call void @avio_wb32(ptr noundef %i.rn, i32 noundef 0) #13, !inline_history !247
  %.val30.i.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val31.i.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val30.i.i, ptr %.val31.i.i, i32 noundef 8, i32 noundef 12289), !inline_history !247
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rm, i64 20
  %i.so = getelementptr inbounds nuw i8, ptr %i.rm, i64 24
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !129
  call void @avio_wb32(ptr noundef %i.rn, i32 noundef %i.sp) #13, !inline_history !247
  %i.sq = load i32, ptr %i.sn, align 4, !tbaa !131
  call void @avio_wb32(ptr noundef %i.rn, i32 noundef %i.sq) #13, !inline_history !247
  %.val28.i.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val29.i.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val28.i.i, ptr %.val29.i.i, i32 noundef 16, i32 noundef 12292), !inline_history !247
  %i.sr = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %i.ss = load i32, ptr %i.sr, align 8, !tbaa !114
  %i.st = icmp sgt i32 %i.ss, 1
  br i1 %i.st, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %klv_encode_ber_length.exit.i.i
  %i.su = load ptr, ptr %i.im, align 8, !tbaa !32
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !39
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 24
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !42
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 40
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !77
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %klv_encode_ber_length.exit.i.i
  %.026.i151.i = phi ptr [ %i.sz, %bb.bm ], [ @multiple_desc_ul, %klv_encode_ber_length.exit.i.i ]
  call void @avio_write(ptr noundef %i.rn, ptr noundef %.026.i151.i, i32 noundef 16) #13, !inline_history !247
  %i.ta = load i32, ptr %i.il, align 4, !tbaa !104
  %i.tb = shl i32 %i.ta, 4
  %i.tc = or disjoint i32 %i.tb, 8
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val27.i.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val.i.i, ptr %.val27.i.i, i32 noundef %i.tc, i32 noundef 16129), !inline_history !247
  %i.td = load i32, ptr %i.il, align 4, !tbaa !104
  call void @avio_wb32(ptr noundef %i.rn, i32 noundef %i.td) #13, !inline_history !247
  call void @avio_wb32(ptr noundef %i.rn, i32 noundef 16) #13, !inline_history !247
  %i.te = load i32, ptr %i.il, align 4, !tbaa !104
  %.not.i152.i = icmp eq i32 %i.te, 0
  br i1 %.not.i152.i, label %mxf_write_multi_descriptor.exit.i, label %.lr.ph.i153.i

.lr.ph.i153.i:                                    ; preds = %bb.bn, %.lr.ph.i153.i
  %.034.i.i = phi i32 [ %i.tf, %.lr.ph.i153.i ], [ 0, %bb.bn ] ; 2 uses
  call void @avio_write(ptr noundef %i.rn, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !247
  call void @avio_wb16(ptr noundef %i.rn, i32 noundef 14) #13, !inline_history !247
  call void @avio_wb32(ptr noundef %i.rn, i32 noundef %.034.i.i) #13, !inline_history !247
  %i.tf = add nuw nsw i32 %.034.i.i, 1            ; 2 uses
  %i.tg = load i32, ptr %i.il, align 4, !tbaa !104
  %i.th = icmp ult i32 %i.tf, %i.tg
  br i1 %i.th, label %.lr.ph.i153.i, label %mxf_write_multi_descriptor.exit.i, !llvm.loop !251

bb.bo:                                            ; preds = %bb.bj
  call void @avio_wb16(ptr noundef %i.iq, i32 noundef 14) #13, !inline_history !247
  br label %mxf_write_multi_descriptor.exit.sink.split.i

bb.bp:                                            ; preds = %bb.bi
  %.val.i86 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val117.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val.i86, ptr %.val117.i, i32 noundef 16, i32 noundef 18177), !inline_history !247
  call void @avio_write(ptr noundef %i.iq, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !247
  call void @avio_wb16(ptr noundef %i.iq, i32 noundef 19) #13, !inline_history !247
  call void @avio_wb32(ptr noundef %i.iq, i32 noundef 0) #13, !inline_history !247
  %i.ti = load ptr, ptr %i.al, align 8, !tbaa !31 ; 6 uses
  call void @avio_write(ptr noundef %i.ti, ptr noundef nonnull @header_metadata_key, i32 noundef 13) #13, !inline_history !247
  call void @avio_wb24(ptr noundef %i.ti, i32 noundef 77312) #13, !inline_history !247
  call void @avio_w8(ptr noundef %i.ti, i32 noundef 20) #13, !inline_history !247
  %.val.i154.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val5.i.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val.i154.i, ptr %.val5.i.i, i32 noundef 16, i32 noundef 15370), !inline_history !247
  call void @avio_write(ptr noundef %i.ti, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !247
  call void @avio_wb16(ptr noundef %i.ti, i32 noundef 19) #13, !inline_history !247
  br label %mxf_write_multi_descriptor.exit.sink.split.i

mxf_write_multi_descriptor.exit.sink.split.i:     ; preds = %bb.bp, %bb.bo
  %.sink242.i = phi ptr [ %i.ti, %bb.bp ], [ %i.iq, %bb.bo ]
  call void @avio_wb32(ptr noundef %.sink242.i, i32 noundef 0) #13, !inline_history !247
  br label %mxf_write_multi_descriptor.exit.i

mxf_write_multi_descriptor.exit.i:                ; preds = %.lr.ph.i153.i, %mxf_write_multi_descriptor.exit.sink.split.i, %bb.bn, %bb.bi, %.loopexit.i
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ip, i64 112 ; 3 uses
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !140
  call fastcc void @mxf_write_track(ptr noundef nonnull %0, ptr noundef %i.tk, ptr noundef nonnull readonly %i.io), !inline_history !247
  %i.tl = load ptr, ptr %i.tj, align 8, !tbaa !140 ; 2 uses
  %i.tm = load ptr, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.tn = load ptr, ptr %i.al, align 8, !tbaa !31 ; 11 uses
  call void @avio_write(ptr noundef %i.tn, ptr noundef nonnull @header_metadata_key, i32 noundef 13) #13, !inline_history !252
  call void @avio_wb24(ptr noundef %i.tn, i32 noundef 69376) #13, !inline_history !252
  call void @avio_w8(ptr noundef %i.tn, i32 noundef 80) #13, !inline_history !252
  %.val16.i129 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val17.i130 = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val16.i129, ptr %.val17.i130, i32 noundef 16, i32 noundef 15370), !inline_history !252
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 188 ; 2 uses
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !150
  call void @avio_write(ptr noundef %i.tn, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !252
  call void @avio_wb16(ptr noundef %i.tn, i32 noundef 6) #13, !inline_history !252
  call void @avio_wb32(ptr noundef %i.tn, i32 noundef %i.tp) #13, !inline_history !252
  call fastcc void @mxf_write_common_fields(ptr noundef nonnull readonly %0, ptr noundef readonly %i.tl), !inline_history !252
  %.val.i131 = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val15.i132 = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val.i131, ptr %.val15.i132, i32 noundef 24, i32 noundef 4097), !inline_history !252
  call void @avio_wb32(ptr noundef %i.tn, i32 noundef 1) #13, !inline_history !252
  call void @avio_wb32(ptr noundef %i.tn, i32 noundef 16) #13, !inline_history !252
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tm, i64 112
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !140
  %i.ts = icmp eq ptr %i.tl, %i.tr
  %..i133 = select i1 %i.ts, i32 4, i32 3
  %i.tt = load i32, ptr %i.to, align 4, !tbaa !150
  call void @avio_write(ptr noundef %i.tn, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !252
  call void @avio_wb16(ptr noundef %i.tn, i32 noundef %..i133) #13, !inline_history !252
  call void @avio_wb32(ptr noundef %i.tn, i32 noundef %i.tt) #13, !inline_history !252
  %i.tu = load ptr, ptr %i.tj, align 8, !tbaa !140
  %i.tv = load ptr, ptr %i.a, align 8, !tbaa !30  ; 4 uses
  %i.tw = load ptr, ptr %i.al, align 8, !tbaa !31 ; 9 uses
  call void @avio_write(ptr noundef %i.tw, ptr noundef nonnull @header_metadata_key, i32 noundef 13) #13, !inline_history !253
  call void @avio_wb24(ptr noundef %i.tw, i32 noundef 70656) #13, !inline_history !253
  call void @avio_w8(ptr noundef %i.tw, i32 noundef 75) #13, !inline_history !253
  %.val23.i.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val24.i.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val23.i.i, ptr %.val24.i.i, i32 noundef 16, i32 noundef 15370), !inline_history !253
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tv, i64 188
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !150
  call void @avio_write(ptr noundef %i.tw, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !253
  call void @avio_wb16(ptr noundef %i.tw, i32 noundef 4) #13, !inline_history !253
  call void @avio_wb32(ptr noundef %i.tw, i32 noundef %i.ty) #13, !inline_history !253
  call fastcc void @mxf_write_common_fields(ptr noundef nonnull readonly %0, ptr noundef readonly %i.tu), !inline_history !253
  %.val21.i.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val22.i.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val21.i.i, ptr %.val22.i.i, i32 noundef 8, i32 noundef 5377), !inline_history !253
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tv, i64 88
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !264
  %i.ub = sext i32 %i.ua to i64
  call void @avio_wb64(ptr noundef %i.tw, i64 noundef %i.ub) #13, !inline_history !253
  %.val19.i.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val20.i.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val19.i.i, ptr %.val20.i.i, i32 noundef 2, i32 noundef 5378), !inline_history !253
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tv, i64 120
  %i.ud = load i32, ptr %i.uc, align 8, !tbaa !151
  call void @avio_wb16(ptr noundef %i.tw, i32 noundef %i.ud) #13, !inline_history !253
  %.val.i155.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %.val18.i.i = load ptr, ptr %i.al, align 8, !tbaa !31
  call fastcc void @mxf_write_local_tag(ptr %.val.i155.i, ptr %.val18.i.i, i32 noundef 1, i32 noundef 5379), !inline_history !253
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tv, i64 92
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !265
  %i.ug = and i32 %i.uf, 1
  call void @avio_w8(ptr noundef %i.tw, i32 noundef %i.ug) #13, !inline_history !253
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ip, i64 188 ; 4 uses
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !150
  %i.uj = add nsw i32 %i.ui, 1
  store i32 %i.uj, ptr %i.uh, align 4, !tbaa !150
  %i.uk = load i32, ptr %i.il, align 4, !tbaa !104
  %.not190.i = icmp eq i32 %i.uk, 0
  br i1 %.not190.i, label %.loopexit, label %.lr.ph186.i

.lr.ph186.i:                                      ; preds = %mxf_write_multi_descriptor.exit.i
  %i.ul = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 2 uses
  br label %mxf_lookup_local_tag.exit.i163

mxf_lookup_local_tag.exit.i163:                   ; preds = %.lr.ph186.i, %.thread163.i
  %indvars.iv.i84 = phi i64 [ 0, %.lr.ph186.i ], [ %indvars.iv.next.i85, %.thread163.i ] ; 2 uses
  %i.um = load ptr, ptr %i.im, align 8, !tbaa !32
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %indvars.iv.i84
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !39 ; 13 uses
  call fastcc void @mxf_write_track(ptr noundef nonnull %0, ptr noundef %i.uo, ptr noundef nonnull readonly %i.io), !inline_history !247
  %i.up = load ptr, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.uq = load ptr, ptr %i.al, align 8, !tbaa !31 ; 11 uses
  call void @avio_write(ptr noundef %i.uq, ptr noundef nonnull @header_metadata_key, i32 noundef 13) #13, !inline_history !252
  call void @avio_wb24(ptr noundef %i.uq, i32 noundef 69376) #13, !inline_history !252
  call void @avio_w8(ptr noundef %i.uq, i32 noundef 80) #13, !inline_history !252
  %.val16.i125 = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ur = getelementptr inbounds nuw i8, ptr %.val16.i125, i64 196
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !61
  %i.ut = icmp eq i8 %i.us, 0
  br i1 %i.ut, label %mxf_write_local_tag.exit164, label %bb.bq

bb.bq:                                            ; preds = %mxf_lookup_local_tag.exit.i163
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.47, i32 noundef 700) #13
  call void @abort() #14
  unreachable

mxf_write_local_tag.exit164:                      ; preds = %mxf_lookup_local_tag.exit.i163
  %.val17.i126 = load ptr, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  call void @avio_wb16(ptr noundef %.val17.i126, i32 noundef 15370) #13
  call void @avio_wb16(ptr noundef %.val17.i126, i32 noundef 16) #13
  %i.uu = getelementptr inbounds nuw i8, ptr %i.up, i64 188 ; 2 uses
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !150
  call void @avio_write(ptr noundef %i.uq, ptr noundef nonnull @uuid_base, i32 noundef 10) #13, !inline_history !252
end_hunk_4
