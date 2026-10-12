Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mxfdec?download=true
inline.NumInlined: 142
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 78
begin_hunk_0_@mxf_read_packet:bb.a
bb.h:                                             ; preds = %bb.g
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !251
  %i.bk = call i32 @av_aes_init(ptr noundef nonnull %i.bi, ptr noundef %i.bj, i32 noundef 128, i32 noundef 1) #12 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e, %mxf_match_uid.exit
  %i.bl = call i32 @avio_r8(ptr noundef %i.ax) #12 ; 3 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = and i32 %i.bl, 128
  %.not.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = and i32 %i.bl, 127                      ; 3 uses
  %i.bp = icmp samesign ult i32 %i.bo, 9
  br i1 %i.bp, label %bb.k, label %mxf_decrypt_triplet.exit.thread

bb.k:                                             ; preds = %bb.j
  %.not2425.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not2425.i.i, label %klv_decode_ber_length.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %.01527.i.i = phi i32 [ %i.bq, %.lr.ph.i.i ], [ %i.bo, %bb.k ]
  %.01626.i.i = phi i64 [ %i.bu, %.lr.ph.i.i ], [ 0, %bb.k ]
  %i.bq = add nsw i32 %.01527.i.i, -1             ; 2 uses
  %i.br = shl i64 %.01626.i.i, 8
  %i.bs = call i32 @avio_r8(ptr noundef %i.ax) #12
  %i.bt = sext i32 %i.bs to i64
  %i.bu = or i64 %i.br, %i.bt                     ; 2 uses
  %.not24.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not24.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.i
  %.2.i.i = phi i64 [ %i.bm, %bb.i ], [ %i.bu, %.lr.ph.i.i ]
  %.2.fr.i.i = freeze i64 %.2.i.i                 ; 2 uses
  %i.bv = icmp slt i64 %.2.fr.i.i, 0
  br i1 %i.bv, label %mxf_decrypt_triplet.exit.thread, label %klv_decode_ber_length.exit.i

klv_decode_ber_length.exit.i:                     ; preds = %.loopexit.i.i, %bb.k
  %.118.i.i = phi i64 [ %.2.fr.i.i, %.loopexit.i.i ], [ 0, %bb.k ]
  %i.bw = call i64 @avio_skip(ptr noundef %i.ax, i64 noundef %.118.i.i) #12 ; 0 uses
  %i.bx = call i32 @avio_r8(ptr noundef %i.ax) #12 ; 2 uses
  %i.by = and i32 %i.bx, 128
  %.not.i88.i = icmp eq i32 %i.by, 0
  br i1 %.not.i88.i, label %klv_decode_ber_length.exit99.i, label %bb.l

bb.l:                                             ; preds = %klv_decode_ber_length.exit.i
  %i.bz = and i32 %i.bx, 127                      ; 2 uses
  %i.ca = add nsw i32 %i.bz, -9
  %or.cond.i = icmp ult i32 %i.ca, -8
  br i1 %or.cond.i, label %klv_decode_ber_length.exit99.i, label %.lr.ph.i91.i

.lr.ph.i91.i:                                     ; preds = %bb.l, %.lr.ph.i91.i
  %.01527.i92.i = phi i32 [ %i.cb, %.lr.ph.i91.i ], [ %i.bz, %bb.l ]
  %i.cb = add nsw i32 %.01527.i92.i, -1           ; 2 uses
  %i.cc = call i32 @avio_r8(ptr noundef %i.ax) #12 ; 0 uses
  %.not24.i94.i = icmp eq i32 %i.cb, 0
  br i1 %.not24.i94.i, label %klv_decode_ber_length.exit99.i, label %.lr.ph.i91.i, !llvm.loop !1

klv_decode_ber_length.exit99.i:                   ; preds = %.lr.ph.i91.i, %bb.l, %klv_decode_ber_length.exit.i
  %i.cd = call i64 @avio_rb64(ptr noundef %i.ax) #12 ; 4 uses
  %i.ce = call i32 @avio_r8(ptr noundef %i.ax) #12 ; 2 uses
  %i.cf = and i32 %i.ce, 128
  %.not.i100.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i100.i, label %klv_decode_ber_length.exit111.i, label %bb.m

bb.m:                                             ; preds = %klv_decode_ber_length.exit99.i
  %i.cg = and i32 %i.ce, 127                      ; 2 uses
  %i.ch = add nsw i32 %i.cg, -9
  %or.cond148.i = icmp ult i32 %i.ch, -8
  br i1 %or.cond148.i, label %klv_decode_ber_length.exit111.i, label %.lr.ph.i103.i

.lr.ph.i103.i:                                    ; preds = %bb.m, %.lr.ph.i103.i
  %.01527.i104.i = phi i32 [ %i.ci, %.lr.ph.i103.i ], [ %i.cg, %bb.m ]
  %i.ci = add nsw i32 %.01527.i104.i, -1          ; 2 uses
  %i.cj = call i32 @avio_r8(ptr noundef %i.ax) #12 ; 0 uses
  %.not24.i106.i = icmp eq i32 %i.ci, 0
  br i1 %.not24.i106.i, label %klv_decode_ber_length.exit111.i, label %.lr.ph.i103.i, !llvm.loop !1

klv_decode_ber_length.exit111.i:                  ; preds = %.lr.ph.i103.i, %bb.m, %klv_decode_ber_length.exit99.i
  %i.ck = call i32 @avio_read(ptr noundef %i.ax, ptr noundef nonnull %2, i32 noundef 16) #12 ; 0 uses
  %i.cl = load i64, ptr %2, align 16
  %i.cm = xor i64 %i.cl, 72341273208098310
  %i.cn = getelementptr i8, ptr %2, i64 8
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = zext i32 %i.co to i64
  %i.cq = xor i64 %i.cp, 16974093
  %i.cr = or i64 %i.cm, %i.cq
  %i.cs = icmp ne i64 %i.cr, 0
  %i.ct = zext i1 %i.cs to i32
  %.not82.i = icmp eq i32 %i.ct, 0
  br i1 %.not82.i, label %bb.n, label %mxf_decrypt_triplet.exit.thread

bb.n:                                             ; preds = %klv_decode_ber_length.exit111.i
  %i.cu = load i64, ptr %i.k, align 16, !tbaa !50
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !110 ; 2 uses
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i112.i, label %find_body_sid_by_absolute_offset.exit.i

.lr.ph.i112.i:                                    ; preds = %bb.n
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !111 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i112.i
  %.018.i.i = phi i32 [ %i.cw, %.lr.ph.i112.i ], [ %..0.i.i, %bb.o ] ; 2 uses
  %.01417.i.i = phi i32 [ -1, %.lr.ph.i112.i ], [ %.014..i.i, %bb.o ] ; 2 uses
  %i.da = add nsw i32 %.01417.i.i, %.018.i.i
  %i.db = ashr i32 %i.da, 1                       ; 3 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [136 x i8], ptr %i.cz, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 80
  %i.df = load i64, ptr %i.de, align 8, !tbaa !124
  %.not.i113.i = icmp sgt i64 %i.df, %i.cu        ; 2 uses
  %.014..i.i = select i1 %.not.i113.i, i32 %.01417.i.i, i32 %i.db ; 4 uses
  %..0.i.i = select i1 %.not.i113.i, i32 %i.db, i32 %.018.i.i ; 2 uses
  %i.dg = sub nsw i32 %..0.i.i, %.014..i.i
  %i.dh = icmp sgt i32 %i.dg, 1
  br i1 %i.dh, label %bb.o, label %._crit_edge.i.i, !llvm.loop !243

._crit_edge.i.i:                                  ; preds = %bb.o
  %i.di = icmp eq i32 %.014..i.i, -1
  br i1 %i.di, label %find_body_sid_by_absolute_offset.exit.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.dj = zext nneg i32 %.014..i.i to i64
  %i.dk = getelementptr inbounds nuw [136 x i8], ptr %i.cz, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 28
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !112
  br label %find_body_sid_by_absolute_offset.exit.i

find_body_sid_by_absolute_offset.exit.i:          ; preds = %bb.p, %._crit_edge.i.i, %bb.n
  %.016.i.i = phi i32 [ %i.dm, %bb.p ], [ 0, %._crit_edge.i.i ], [ 0, %bb.n ] ; 2 uses
  %i.dn = load i32, ptr %i.n, align 4, !tbaa !55  ; 3 uses
  %.not36.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not36.i.i, label %mxf_decrypt_triplet.exit.thread, label %.lr.ph.i114.i

.lr.ph.i114.i:                                    ; preds = %find_body_sid_by_absolute_offset.exit.i
  %i.do = load ptr, ptr %i.o, align 8, !tbaa !91  ; 3 uses
  %.not23.i.i = icmp eq i32 %.016.i.i, 0
  %wide.trip.count45.i.i = zext i32 %i.dn to i64  ; 2 uses
  br i1 %.not23.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i114.i, %bb.r
  %indvars.iv42.i.i = phi i64 [ %indvars.iv.next43.i.i, %bb.r ], [ 0, %.lr.ph.i114.i ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv42.i.i
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !93
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !99 ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.us.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.us.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.du = load i32, ptr %i.p, align 1
  %i.dv = load i32, ptr %i.dt, align 1
  %i.dw = icmp ne i32 %i.du, %i.dv
  %i.dx = zext i1 %i.dw to i32
  %.not25.us.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not25.us.i.i, label %.loopexit.loopexit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.split.us.i.i
  %indvars.iv.next43.i.i = add nuw nsw i64 %indvars.iv42.i.i, 1 ; 2 uses
  %exitcond46.not.i.i = icmp eq i64 %indvars.iv.next43.i.i, %wide.trip.count45.i.i
  br i1 %exitcond46.not.i.i, label %._crit_edge.i117.i, label %.lr.ph.split.us.i.i, !llvm.loop !244

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i114.i, %bb.u
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.u ], [ 0, %.lr.ph.i114.i ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.i.i
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !93
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !99 ; 3 uses
  %.not.i115.i = icmp eq ptr %i.eb, null
  br i1 %.not.i115.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 100
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !109 ; 2 uses
  %.not24.i116.i = icmp eq i32 %i.ed, 0
  %i.ee = icmp eq i32 %i.ed, %.016.i.i
  %or.cond.i.i = or i1 %.not24.i116.i, %i.ee
  br i1 %or.cond.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 64
  %i.eg = load i32, ptr %i.p, align 1
  %i.eh = load i32, ptr %i.ef, align 1
  %i.ei = icmp ne i32 %i.eg, %i.eh
  %i.ej = zext i1 %i.ei to i32
  %.not25.i.i = icmp eq i32 %i.ej, 0
  br i1 %.not25.i.i, label %.loopexit.loopexit37.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.lr.ph.split.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count45.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i117.i, label %.lr.ph.split.i.i, !llvm.loop !244

._crit_edge.i117.i:                               ; preds = %bb.u, %bb.r
  %i.ek = icmp eq i32 %i.dn, 1
  br i1 %i.ek, label %mxf_get_stream_index.exit.i, label %mxf_decrypt_triplet.exit.thread

.loopexit.loopexit.i.i:                           ; preds = %bb.q
  %i.el = trunc nuw nsw i64 %indvars.iv42.i.i to i32
  br label %bb.v

.loopexit.loopexit37.i.i:                         ; preds = %bb.t
  %i.em = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %bb.v

mxf_get_stream_index.exit.i:                      ; preds = %._crit_edge.i117.i
  %3 = load ptr, ptr %i.do, align 8, !tbaa !93
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !99
  %6 = icmp eq ptr %5, null
  br i1 %6, label %mxf_decrypt_triplet.exit.thread, label %bb.v

bb.v:                                             ; preds = %mxf_get_stream_index.exit.i, %.loopexit.loopexit37.i.i, %.loopexit.loopexit.i.i
  %.3.i149.i = phi i32 [ 0, %mxf_get_stream_index.exit.i ], [ %i.el, %.loopexit.loopexit.i.i ], [ %i.em, %.loopexit.loopexit37.i.i ]
  %i.en = call i32 @avio_r8(ptr noundef %i.ax) #12 ; 2 uses
  %i.eo = and i32 %i.en, 128
  %.not.i119.i = icmp eq i32 %i.eo, 0
  br i1 %.not.i119.i, label %klv_decode_ber_length.exit130.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ep = and i32 %i.en, 127                      ; 2 uses
  %i.eq = add nsw i32 %i.ep, -9
  %or.cond149.i = icmp ult i32 %i.eq, -8
  br i1 %or.cond149.i, label %klv_decode_ber_length.exit130.i, label %.lr.ph.i122.i

.lr.ph.i122.i:                                    ; preds = %bb.w, %.lr.ph.i122.i
  %.01527.i123.i = phi i32 [ %i.er, %.lr.ph.i122.i ], [ %i.ep, %bb.w ]
  %i.er = add nsw i32 %.01527.i123.i, -1          ; 2 uses
  %i.es = call i32 @avio_r8(ptr noundef %i.ax) #12 ; 0 uses
  %.not24.i125.i = icmp eq i32 %i.er, 0
  br i1 %.not24.i125.i, label %klv_decode_ber_length.exit130.i, label %.lr.ph.i122.i, !llvm.loop !1

klv_decode_ber_length.exit130.i:                  ; preds = %.lr.ph.i122.i, %bb.w, %bb.v
  %i.et = call i64 @avio_rb64(ptr noundef %i.ax) #12 ; 4 uses
  %i.eu = icmp ult i64 %i.et, %i.cd
  br i1 %i.eu, label %mxf_decrypt_triplet.exit.thread, label %bb.x

bb.x:                                             ; preds = %klv_decode_ber_length.exit130.i
  %i.ev = call i32 @avio_r8(ptr noundef %i.ax) #12 ; 3 uses
  %i.ew = sext i32 %i.ev to i64
  %i.ex = and i32 %i.ev, 128
  %.not.i131.i = icmp eq i32 %i.ex, 0
  br i1 %.not.i131.i, label %.loopexit.i138.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ey = and i32 %i.ev, 127                      ; 2 uses
  %i.ez = add nsw i32 %i.ey, -9
  %or.cond150.i = icmp ult i32 %i.ez, -8
  br i1 %or.cond150.i, label %mxf_decrypt_triplet.exit.thread, label %.lr.ph.i134.i

.lr.ph.i134.i:                                    ; preds = %bb.y, %.lr.ph.i134.i
  %.01527.i135.i = phi i32 [ %i.fa, %.lr.ph.i134.i ], [ %i.ey, %bb.y ]
  %.01626.i136.i = phi i64 [ %i.fe, %.lr.ph.i134.i ], [ 0, %bb.y ]
  %i.fa = add nsw i32 %.01527.i135.i, -1          ; 2 uses
  %i.fb = shl i64 %.01626.i136.i, 8
  %i.fc = call i32 @avio_r8(ptr noundef %i.ax) #12
  %i.fd = sext i32 %i.fc to i64
  %i.fe = or i64 %i.fb, %i.fd                     ; 2 uses
  %.not24.i137.i = icmp eq i32 %i.fa, 0
  br i1 %.not24.i137.i, label %.loopexit.i138.i, label %.lr.ph.i134.i, !llvm.loop !1

.loopexit.i138.i:                                 ; preds = %.lr.ph.i134.i, %bb.x
  %.2.i139.i = phi i64 [ %i.ew, %bb.x ], [ %i.fe, %.lr.ph.i134.i ]
  %.2.fr.i140.i = freeze i64 %.2.i139.i           ; 2 uses
  %or.cond151.i = icmp slt i64 %.2.fr.i140.i, 32
  br i1 %or.cond151.i, label %mxf_decrypt_triplet.exit.thread, label %bb.z

bb.z:                                             ; preds = %.loopexit.i138.i
  %i.ff = add nsw i64 %.2.fr.i140.i, -32          ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.et
  br i1 %i.fg, label %mxf_decrypt_triplet.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fh = trunc nuw nsw i64 %i.et to i32
  %.not83.i = icmp samesign ult i64 %i.et, 2147483648
  br i1 %.not83.i, label %bb.ab, label %mxf_decrypt_triplet.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.fi = call i32 @avio_read(ptr noundef %i.ax, ptr noundef nonnull %i.a, i32 noundef 16) #12 ; 0 uses
  %i.fj = call i32 @ffio_read_size(ptr noundef %i.ax, ptr noundef nonnull %i.b, i32 noundef 16) #12 ; 3 uses
  %i.fk = icmp slt i32 %i.fj, 16
  br i1 %i.fk, label %mxf_decrypt_triplet.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fl = load ptr, ptr %i.bb, align 8, !tbaa !250 ; 2 uses
  %.not84.i = icmp eq ptr %i.fl, null
  br i1 %.not84.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @av_aes_crypt(ptr noundef nonnull %i.fl, ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef nonnull %i.a, i32 noundef 1) #12
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fm = load i128, ptr %i.b, align 16
  %i.fn = icmp ne i128 %i.fm, 100134910581936977875206832245479655491
  %i.fo = zext i1 %i.fn to i32
  %.not86.i = icmp eq i32 %i.fo, 0
  br i1 %.not86.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.143) #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fp = trunc i64 %i.ff to i32
  %i.fq = call i32 @av_get_packet(ptr noundef %i.ax, ptr noundef %1, i32 noundef %i.fp) #12 ; 3 uses
  %i.fr = sext i32 %i.fq to i64                   ; 2 uses
  %i.fs = icmp slt i32 %i.fq, 0
  br i1 %i.fs, label %mxf_decrypt_triplet.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ft = icmp ugt i64 %i.cd, %i.fr
  br i1 %i.ft, label %mxf_decrypt_triplet.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fu = load ptr, ptr %i.bb, align 8, !tbaa !250 ; 2 uses
  %.not87.i = icmp eq ptr %i.fu, null
  br i1 %.not87.i, label %mxf_decrypt_triplet.exit.thread172, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fv = sub nuw nsw i64 %i.fr, %i.cd
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !253
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.cd ; 2 uses
  %i.fz = lshr i64 %i.fv, 4
  %i.ga = trunc nuw nsw i64 %i.fz to i32
  call void @av_aes_crypt(ptr noundef nonnull %i.fu, ptr noundef %i.fy, ptr noundef %i.fy, i32 noundef %i.ga, ptr noundef nonnull %i.a, i32 noundef 1) #12
  br label %mxf_decrypt_triplet.exit.thread172

mxf_decrypt_triplet.exit.thread172:               ; preds = %bb.ai, %bb.aj
  call void @av_shrink_packet(ptr noundef %1, i32 noundef %i.fh) #12
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %.3.i149.i, ptr %i.gb, align 4, !tbaa !254
  %i.gc = call i64 @avio_seek(ptr noundef %i.ax, i64 noundef 0, i32 noundef 1) #12
  %i.gd = sub i64 %i.ba, %i.gc
  %i.ge = call i64 @avio_skip(ptr noundef %i.ax, i64 noundef %i.gd) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.thread185

mxf_decrypt_triplet.exit.thread:                  ; preds = %bb.y, %bb.g, %klv_decode_ber_length.exit111.i, %mxf_get_stream_index.exit.i, %klv_decode_ber_length.exit130.i, %.loopexit.i138.i, %bb.ag, %bb.aa, %bb.z, %bb.ah, %find_body_sid_by_absolute_offset.exit.i, %._crit_edge.i117.i, %.loopexit.i.i, %bb.j
  %.0.i.ph = phi i32 [ -1094995529, %bb.j ], [ -1094995529, %.loopexit.i.i ], [ -1094995529, %._crit_edge.i117.i ], [ -1094995529, %find_body_sid_by_absolute_offset.exit.i ], [ -1094995529, %bb.ah ], [ -1094995529, %bb.z ], [ -1094995529, %bb.aa ], [ %i.fq, %bb.ag ], [ -1094995529, %.loopexit.i138.i ], [ -1094995529, %klv_decode_ber_length.exit130.i ], [ -1094995529, %mxf_get_stream_index.exit.i ], [ -1094995529, %klv_decode_ber_length.exit111.i ], [ -12, %bb.g ], [ -1094995529, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ak

mxf_decrypt_triplet.exit:                         ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.gf = icmp slt i32 %i.fj, 0
  br i1 %i.gf, label %bb.ak, label %.thread185

bb.ak:                                            ; preds = %mxf_decrypt_triplet.exit.thread, %mxf_decrypt_triplet.exit
  %.0.i171 = phi i32 [ %.0.i.ph, %mxf_decrypt_triplet.exit.thread ], [ %i.fj, %mxf_decrypt_triplet.exit ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.138) #12
  br label %.thread185

bb.al:                                            ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !tbaa.struct !54
  %i.gg = load i64, ptr %i.j, align 16, !tbaa !46
  %i.gh = sub nsw i64 %i.gg, %i.v
  br label %mxf_match_uid.exit.thread

mxf_match_uid.exit.thread:                        ; preds = %bb.d, %bb.al
  %.0106 = phi i64 [ %i.gh, %bb.al ], [ %i.ad, %bb.d ] ; 4 uses
  %.0105 = phi i64 [ %i.v, %bb.al ], [ %i.af, %bb.d ] ; 5 uses
  %i.gi = load i64, ptr %2, align 16
  %i.gj = xor i64 %i.gi, 72341273208098310
  %i.gk = getelementptr i8, ptr %2, i64 8
  %i.gl = load i32, ptr %i.gk, align 8
  %i.gm = zext i32 %i.gl to i64
  %i.gn = xor i64 %i.gm, 16974093
  %i.go = or i64 %i.gj, %i.gn
  %i.gp = icmp ne i64 %i.go, 0
  %i.gq = zext i1 %i.gp to i32
  %.not130 = icmp eq i32 %i.gq, 0
  br i1 %.not130, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %mxf_match_uid.exit.thread
  %i.gr = load i64, ptr %2, align 16
  %i.gs = xor i64 %i.gr, 720859619549449734
  %i.gt = getelementptr i8, ptr %2, i64 8
  %i.gu = load i32, ptr %i.gt, align 8
  %i.gv = zext i32 %i.gu to i64
  %i.gw = xor i64 %i.gv, 16977678
  %i.gx = or i64 %i.gs, %i.gw
  %i.gy = icmp ne i64 %i.gx, 0
  %i.gz = zext i1 %i.gy to i32
  %.not132 = icmp eq i32 %i.gz, 0
  br i1 %.not132, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ha = load i64, ptr %2, align 16
  %i.hb = xor i64 %i.ha, 72341273208098310
  %i.hc = getelementptr i8, ptr %2, i64 8
  %i.hd = load i32, ptr %i.hc, align 8
  %i.he = zext i32 %i.hd to i64
  %i.hf = xor i64 %i.he, 16974862
  %i.hg = or i64 %i.hb, %i.hf
  %i.hh = icmp ne i64 %i.hg, 0
  %i.hi = zext i1 %i.hh to i32
  %.not134 = icmp eq i32 %i.hi, 0
  br i1 %.not134, label %bb.ao, label %bb.da

bb.ao:                                            ; preds = %bb.an, %bb.am, %mxf_match_uid.exit.thread
  %i.hj = load i64, ptr %i.k, align 16, !tbaa !50
  %i.hk = load i32, ptr %i.l, align 8, !tbaa !110 ; 2 uses
  %i.hl = icmp sgt i32 %i.hk, 0
  br i1 %i.hl, label %.lr.ph.i141, label %find_body_sid_by_absolute_offset.exit

.lr.ph.i141:                                      ; preds = %bb.ao
  %i.hm = load ptr, ptr %i.m, align 8, !tbaa !111 ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.i141
  %.018.i = phi i32 [ %i.hk, %.lr.ph.i141 ], [ %..0.i, %bb.ap ] ; 2 uses
  %.01417.i = phi i32 [ -1, %.lr.ph.i141 ], [ %.014..i, %bb.ap ] ; 2 uses
  %i.hn = add nsw i32 %.01417.i, %.018.i
  %i.ho = ashr i32 %i.hn, 1                       ; 3 uses
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [136 x i8], ptr %i.hm, i64 %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 80
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !124
  %.not.i142 = icmp sgt i64 %i.hs, %i.hj          ; 2 uses
  %.014..i = select i1 %.not.i142, i32 %.01417.i, i32 %i.ho ; 4 uses
  %..0.i = select i1 %.not.i142, i32 %i.ho, i32 %.018.i ; 2 uses
  %i.ht = sub nsw i32 %..0.i, %.014..i
  %i.hu = icmp sgt i32 %i.ht, 1
  br i1 %i.hu, label %bb.ap, label %._crit_edge.i, !llvm.loop !243

._crit_edge.i:                                    ; preds = %bb.ap
  %i.hv = icmp eq i32 %.014..i, -1
  br i1 %i.hv, label %find_body_sid_by_absolute_offset.exit, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.i
  %i.hw = zext nneg i32 %.014..i to i64
  %i.hx = getelementptr inbounds nuw [136 x i8], ptr %i.hm, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 28
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !112
  br label %find_body_sid_by_absolute_offset.exit

find_body_sid_by_absolute_offset.exit:            ; preds = %bb.ao, %._crit_edge.i, %bb.aq
  %.016.i = phi i32 [ %i.hz, %bb.aq ], [ 0, %._crit_edge.i ], [ 0, %bb.ao ] ; 2 uses
  %i.ia = load i32, ptr %i.n, align 4, !tbaa !55  ; 3 uses
  %.not36.i = icmp eq i32 %i.ia, 0
  br i1 %.not36.i, label %mxf_get_stream_index.exit.thread, label %.lr.ph.i143

.lr.ph.i143:                                      ; preds = %find_body_sid_by_absolute_offset.exit
  %i.ib = load ptr, ptr %i.o, align 8, !tbaa !91  ; 3 uses
  %.not23.i = icmp eq i32 %.016.i, 0
  %wide.trip.count45.i = zext i32 %i.ia to i64    ; 2 uses
  br i1 %.not23.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i143, %bb.as
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %bb.as ], [ 0, %.lr.ph.i143 ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv42.i
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !93 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !99 ; 3 uses
  %.not.us.i = icmp eq ptr %i.if, null
  br i1 %.not.us.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.split.us.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 64
  %i.ih = load i32, ptr %i.p, align 1
  %i.ii = load i32, ptr %i.ig, align 1
  %i.ij = icmp ne i32 %i.ih, %i.ii
  %i.ik = zext i1 %i.ij to i32
  %.not25.us.i = icmp eq i32 %i.ik, 0
  br i1 %.not25.us.i, label %.loopexit.loopexit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph.split.us.i
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next43.i, %wide.trip.count45.i
  br i1 %exitcond46.not.i, label %._crit_edge.i149, label %.lr.ph.split.us.i, !llvm.loop !244

.lr.ph.split.i:                                   ; preds = %.lr.ph.i143, %bb.av
  %indvars.iv.i144 = phi i64 [ %indvars.iv.next.i147, %bb.av ], [ 0, %.lr.ph.i143 ] ; 3 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv.i144
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !93 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !99 ; 4 uses
  %.not.i145 = icmp eq ptr %i.io, null
  br i1 %.not.i145, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.lr.ph.split.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 100
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !109 ; 2 uses
  %.not24.i = icmp eq i32 %i.iq, 0
  %i.ir = icmp eq i32 %i.iq, %.016.i
  %or.cond.i146 = or i1 %.not24.i, %i.ir
  br i1 %or.cond.i146, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 64
  %i.it = load i32, ptr %i.p, align 1
  %i.iu = load i32, ptr %i.is, align 1
  %i.iv = icmp ne i32 %i.it, %i.iu
  %i.iw = zext i1 %i.iv to i32
  %.not25.i = icmp eq i32 %i.iw, 0
  br i1 %.not25.i, label %.loopexit.loopexit37.i, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %.lr.ph.split.i
  %indvars.iv.next.i147 = add nuw nsw i64 %indvars.iv.i144, 1 ; 2 uses
  %exitcond.not.i148 = icmp eq i64 %indvars.iv.next.i147, %wide.trip.count45.i
  br i1 %exitcond.not.i148, label %._crit_edge.i149, label %.lr.ph.split.i, !llvm.loop !244

._crit_edge.i149:                                 ; preds = %bb.av, %bb.as
  %i.ix = icmp eq i32 %i.ia, 1
  br i1 %i.ix, label %mxf_get_stream_index.exit, label %mxf_get_stream_index.exit.thread

.loopexit.loopexit.i:                             ; preds = %bb.ar
  %i.iy = trunc nuw nsw i64 %indvars.iv42.i to i32
  br label %bb.aw

.loopexit.loopexit37.i:                           ; preds = %bb.au
  %i.iz = trunc nuw nsw i64 %indvars.iv.i144 to i32
  br label %bb.aw

mxf_get_stream_index.exit:                        ; preds = %._crit_edge.i149
  %7 = load ptr, ptr %i.ib, align 8, !tbaa !93    ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8, !tbaa !99       ; 2 uses
  %10 = icmp eq ptr %9, null
  br i1 %10, label %mxf_get_stream_index.exit.thread, label %bb.aw

mxf_get_stream_index.exit.thread:                 ; preds = %find_body_sid_by_absolute_offset.exit, %._crit_edge.i149, %mxf_get_stream_index.exit
  %i.ja = load i32, ptr %i.p, align 4, !tbaa !19
  %i.jb = call i32 @llvm.bswap.i32(i32 %i.ja)
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.139, i32 noundef %i.jb) #12
  br label %bb.da

bb.aw:                                            ; preds = %.loopexit.loopexit.i, %.loopexit.loopexit37.i, %mxf_get_stream_index.exit
  %11 = phi ptr [ %9, %mxf_get_stream_index.exit ], [ %i.if, %.loopexit.loopexit.i ], [ %i.io, %.loopexit.loopexit37.i ]
  %12 = phi ptr [ %7, %mxf_get_stream_index.exit ], [ %i.id, %.loopexit.loopexit.i ], [ %i.im, %.loopexit.loopexit37.i ] ; 5 uses
  %.3.i178 = phi i32 [ 0, %mxf_get_stream_index.exit ], [ %i.iy, %.loopexit.loopexit.i ], [ %i.iz, %.loopexit.loopexit37.i ] ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %12, i64 68
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !255
  %i.je = icmp eq i32 %i.jd, 48
  br i1 %i.je, label %bb.da, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %13 = zext nneg i32 %.3.i178 to i64             ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.jf = call fastcc i64 @mxf_set_current_edit_unit(ptr noundef %i.d, ptr noundef nonnull %12, i64 noundef %.0105, i32 noundef 1) ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %11, i64 104
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !108
  %.not135 = icmp eq i32 %i.jh, 1
  br i1 %.not135, label %bb.bf, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ji = icmp slt i64 %i.jf, 1
  br i1 %i.ji, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.jj = load i64, ptr %i.j, align 16, !tbaa !46
  %i.jk = load i64, ptr %i.i, align 8, !tbaa !49
  %i.jl = sub i64 %i.jj, %i.jk
  %i.jm = icmp eq i64 %i.jl, %.0105
  %i.jn = icmp sgt i64 %.0106, 33554432
  %or.cond = select i1 %i.jm, i1 %i.jn, i1 false
  br i1 %or.cond, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.jo = getelementptr inbounds nuw i8, ptr %12, i64 808
  store i32 1, ptr %i.jo, align 8, !tbaa !138
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef nonnull %0, ptr noundef nonnull @.str.140) #12
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.jp = call i64 @llvm.smin.i64(i64 %.0106, i64 33554432)
  br label %.thread

bb.bc:                                            ; preds = %bb.ay
  %i.jq = sub nsw i64 %i.jf, %.0105               ; 3 uses
  %i.jr = icmp slt i64 %i.jq, 1
  br i1 %i.jr, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %spec.select = call i64 @llvm.smin.i64(i64 %i.jq, i64 %.0106)
  br label %.thread

.thread:                                          ; preds = %bb.bb, %bb.bd
  %.0 = phi i64 [ %i.jp, %bb.bb ], [ %spec.select, %bb.bd ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 16 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !54
  store i64 %.0105, ptr %i.k, align 16, !tbaa !50
  store i64 %.0, ptr %i.i, align 8, !tbaa !49
  %i.js = add i64 %.0, %.0105
  store i64 %i.js, ptr %i.j, align 16, !tbaa !46
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.141, i64 noundef %i.jq) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  br label %.thread185

bb.bf:                                            ; preds = %.thread, %bb.ax
  %i.jt = load i8, ptr %i.p, align 4, !tbaa !19
  %i.ju = icmp eq i8 %i.jt, 6
  %i.jv = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.jw = load i8, ptr %i.jv, align 1
  %i.jx = icmp eq i8 %i.jw, 1
  %or.cond7 = select i1 %i.ju, i1 %i.jx, i1 false
  %i.jy = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.jz = load i8, ptr %i.jy, align 2
  %i.ka = icmp eq i8 %i.jz, 16
  %or.cond12 = select i1 %or.cond7, i1 %i.ka, i1 false
  br i1 %or.cond12, label %bb.bg, label %bb.bn

bb.bg:                                            ; preds = %bb.bf
  %i.kb = load ptr, ptr %i.o, align 8, !tbaa !91
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %13
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !93
  %i.ke = load i64, ptr %i.i, align 8, !tbaa !49  ; 2 uses
  %i.kf = icmp sgt i64 %i.ke, 61444
  br i1 %i.kf, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kg = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.kh = trunc i64 %i.ke to i32
  %i.ki = call i32 @av_get_packet(ptr noundef %i.kg, ptr noundef %1, i32 noundef %i.kh) #12 ; 3 uses
  %i.kj = icmp slt i32 %i.ki, 0
  br i1 %i.kj, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !113 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 132
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !118 ; 4 uses
  %i.kp = icmp sgt i32 %i.ko, 8
  br i1 %i.kp, label %bb.bm, label %.preheader38.i

.preheader38.i:                                   ; preds = %bb.bi
  %i.kq = load ptr, ptr %i.kk, align 8, !tbaa !253 ; 5 uses
  %i.kr = zext nneg i32 %i.ki to i64              ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.kr
  %i.kt = ptrtoint ptr %i.ks to i64
  %gepdiff.i = add nsw i64 %i.kr, -4
  %i.ku = shl nsw i32 %i.ko, 2
  %i.kv = sext i32 %i.ku to i64
  %.not44.i = icmp sge i64 %gepdiff.i, %i.kv
  %i.kw = icmp sgt i32 %i.ko, 0
  %or.cond.i151 = and i1 %i.kw, %.not44.i
  br i1 %or.cond.i151, label %.preheader.i.preheader, label %mxf_get_d10_aes3_packet.exit

.preheader.i.preheader:                           ; preds = %.preheader38.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i152
  %.pre.i = phi i32 [ %.pre53.i, %._crit_edge.i152 ], [ %i.ko, %.preheader.i.preheader ] ; 2 uses
  %i.ky = phi ptr [ %i.la, %._crit_edge.i152 ], [ %i.km, %.preheader.i.preheader ] ; 2 uses
  %.03546.i = phi ptr [ %.1.lcssa.i, %._crit_edge.i152 ], [ %i.kq, %.preheader.i.preheader ] ; 2 uses
  %.03645.i = phi ptr [ %i.le, %._crit_edge.i152 ], [ %i.kx, %.preheader.i.preheader ] ; 2 uses
  %i.kz = icmp sgt i32 %.pre.i, 0
  br i1 %i.kz, label %.lr.ph.i154, label %._crit_edge.i152

._crit_edge.i152:                                 ; preds = %bb.bl, %.preheader.i
  %.pre53.i = phi i32 [ %.pre.i, %.preheader.i ], [ %i.mc, %bb.bl ] ; 2 uses
  %i.la = phi ptr [ %i.ky, %.preheader.i ], [ %i.ma, %bb.bl ]
  %.137.lcssa.i = phi ptr [ %.03645.i, %.preheader.i ], [ %i.lj, %bb.bl ]
  %.1.lcssa.i = phi ptr [ %.03546.i, %.preheader.i ], [ %i.ly, %bb.bl ] ; 2 uses
  %i.lb = shl nsw i32 %.pre53.i, 2                ; 2 uses
  %i.lc = sub nsw i32 32, %i.lb
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds i8, ptr %.137.lcssa.i, i64 %i.ld ; 2 uses
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = sub i64 %i.kt, %i.lf
  %i.lh = sext i32 %i.lb to i64
  %.not.i153 = icmp slt i64 %i.lg, %i.lh
  br i1 %.not.i153, label %._crit_edge47.loopexit.i, label %.preheader.i, !llvm.loop !245

.lr.ph.i154:                                      ; preds = %.preheader.i, %bb.bl
  %i.li = phi ptr [ %i.ma, %bb.bl ], [ %i.ky, %.preheader.i ]
  %.041.i = phi i32 [ %i.lz, %bb.bl ], [ 0, %.preheader.i ]
  %.140.i = phi ptr [ %i.ly, %bb.bl ], [ %.03546.i, %.preheader.i ] ; 5 uses
  %.13739.i = phi ptr [ %i.lj, %bb.bl ], [ %.03645.i, %.preheader.i ] ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.13739.i, i64 4 ; 2 uses
  %i.lk = load i32, ptr %.13739.i, align 1, !tbaa !19 ; 4 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 56
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !140
  %i.ln = icmp eq i32 %i.lm, 24
  br i1 %i.ln, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph.i154
  %i.lo = lshr i32 %i.lk, 4
  %i.lp = trunc i32 %i.lo to i8
  store i8 %i.lp, ptr %.140.i, align 1, !tbaa !19
  %i.lq = lshr i32 %i.lk, 12
  %i.lr = trunc i32 %i.lq to i8
  %i.ls = getelementptr inbounds nuw i8, ptr %.140.i, i64 1
  store i8 %i.lr, ptr %i.ls, align 1, !tbaa !19
  %i.lt = lshr i32 %i.lk, 20
  %i.lu = trunc i32 %i.lt to i8
  %i.lv = getelementptr inbounds nuw i8, ptr %.140.i, i64 2
  store i8 %i.lu, ptr %i.lv, align 1, !tbaa !19
  br label %bb.bl

bb.bk:                                            ; preds = %.lr.ph.i154
  %i.lw = lshr i32 %i.lk, 12
  %i.lx = trunc i32 %i.lw to i16
  store i16 %i.lx, ptr %.140.i, align 1, !tbaa !19
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.sink.i = phi i64 [ 2, %bb.bk ], [ 3, %bb.bj ]
  %i.ly = getelementptr inbounds nuw i8, ptr %.140.i, i64 %.sink.i ; 2 uses
  %i.lz = add nuw nsw i32 %.041.i, 1              ; 2 uses
  %i.ma = load ptr, ptr %i.kl, align 8, !tbaa !113 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 132
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !118 ; 2 uses
  %i.md = icmp slt i32 %i.lz, %i.mc
  br i1 %i.md, label %.lr.ph.i154, label %._crit_edge.i152, !llvm.loop !246

._crit_edge47.loopexit.i:                         ; preds = %._crit_edge.i152
  %.pre52.i = load ptr, ptr %i.kk, align 8, !tbaa !253
  br label %mxf_get_d10_aes3_packet.exit

mxf_get_d10_aes3_packet.exit:                     ; preds = %.preheader38.i, %._crit_edge47.loopexit.i
  %i.me = phi ptr [ %i.kq, %.preheader38.i ], [ %.pre52.i, %._crit_edge47.loopexit.i ]
  %.035.lcssa.i = phi ptr [ %i.kq, %.preheader38.i ], [ %.1.lcssa.i, %._crit_edge47.loopexit.i ]
  %i.mf = ptrtoint ptr %.035.lcssa.i to i64
  %i.mg = ptrtoint ptr %i.me to i64
  %i.mh = sub i64 %i.mf, %i.mg
  %i.mi = trunc i64 %i.mh to i32
  call void @av_shrink_packet(ptr noundef nonnull %1, i32 noundef %i.mi) #12
  br label %mxf_get_eia608_packet.exit

bb.bm:                                            ; preds = %bb.bg, %bb.bh, %bb.bi
  %.022.i.ph = phi i32 [ -1094995529, %bb.bi ], [ %i.ki, %bb.bh ], [ -1094995529, %bb.bg ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.142) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  br label %.thread185

bb.bn:                                            ; preds = %bb.bf
  %i.mj = getelementptr inbounds nuw i8, ptr %i.d, i64 600
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !141
  %.not136 = icmp eq i32 %i.mk, 0
  br i1 %.not136, label %._crit_edge, label %bb.bo

._crit_edge:                                      ; preds = %bb.bn
  %.pre = load i64, ptr %i.i, align 8, !tbaa !49
  br label %bb.cj

bb.bo:                                            ; preds = %bb.bn
  %i.ml = load ptr, ptr %i.o, align 8, !tbaa !91
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %13
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !93
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !113
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !117
  %i.ms = icmp eq i32 %i.mr, 94218
  %.pre247 = load i64, ptr %i.i, align 8, !tbaa !49 ; 2 uses
  br i1 %i.ms, label %bb.bp, label %bb.cj

bb.bp:                                            ; preds = %bb.bo
  %i.mt = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.mu = call i32 @avio_rb16(ptr noundef %i.mt) #12 ; 4 uses
  %i.mv = icmp sgt i32 %i.mu, 1
  br i1 %i.mv, label %.thread17.i, label %bb.bq

.thread17.i:                                      ; preds = %bb.bp
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.153, i32 noundef %i.mu) #12
  br label %.lr.ph.i155.preheader

bb.bq:                                            ; preds = %bb.bp
  %i.mw = icmp eq i32 %i.mu, 1
  br i1 %i.mw, label %.lr.ph.i155.preheader, label %mxf_get_eia608_packet.exit

.lr.ph.i155.preheader:                            ; preds = %bb.bq, %.thread17.i
  br label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %.lr.ph.i155.preheader, %bb.ci
  %.0736.i = phi i32 [ %i.pe, %bb.ci ], [ 0, %.lr.ph.i155.preheader ]
  %.0745.i = phi i64 [ %i.ni, %bb.ci ], [ %.pre247, %.lr.ph.i155.preheader ] ; 3 uses
  %i.mx = icmp slt i64 %.0745.i, 6
  br i1 %i.mx, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.lr.ph.i155
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.154, i64 noundef %.0745.i) #12
  br label %.loopexit

bb.bs:                                            ; preds = %.lr.ph.i155
  %i.my = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.mz = call i32 @avio_rb16(ptr noundef %i.my) #12
  %i.na = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.nb = call i32 @avio_r8(ptr noundef %i.na) #12 ; 0 uses
  %i.nc = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.nd = call i32 @avio_r8(ptr noundef %i.nc) #12
  %i.ne = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.nf = call i32 @avio_rb16(ptr noundef %i.ne) #12
  %i.ng = add nsw i32 %i.nf, 14
  %i.nh = sext i32 %i.ng to i64
  %i.ni = sub nsw i64 %.0745.i, %i.nh             ; 2 uses
  %i.nj = and i32 %i.mz, -3
  %or.cond.not.i = icmp eq i32 %i.nj, 9
  br i1 %or.cond.not.i, label %bb.bt, label %bb.ci

bb.bt:                                            ; preds = %bb.bs
  %i.nk = add i32 %i.nd, -7
  %or.cond5.i = icmp ult i32 %i.nk, 3
  br i1 %or.cond5.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.155) #12
  br label %bb.ci

bb.bv:                                            ; preds = %bb.bt
  %i.nl = icmp slt i64 %i.ni, 0
  br i1 %i.nl, label %.loopexit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nm = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.nn = call i32 @avio_rb32(ptr noundef %i.nm) #12 ; 0 uses
  %i.no = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.np = call i32 @avio_rb32(ptr noundef %i.no) #12 ; 0 uses
  %i.nq = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.nr = call i32 @avio_r8(ptr noundef %i.nq) #12 ; 2 uses
  %i.ns = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.nt = call i32 @avio_r8(ptr noundef %i.ns) #12 ; 2 uses
  %i.nu = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.nv = call i32 @avio_r8(ptr noundef %i.nu) #12
  %i.nw = icmp ne i32 %i.nr, 97
  %i.nx = icmp ne i32 %i.nt, 1
  %or.cond7.i = select i1 %i.nw, i1 true, i1 %i.nx
  br i1 %or.cond7.i, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.156, i32 noundef %i.nr, i32 noundef %i.nt) #12
  br label %bb.ci

bb.by:                                            ; preds = %bb.bw
  %i.ny = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.nz = call i32 @avio_rb16(ptr noundef %i.ny) #12 ; 2 uses
  %.not.i157 = icmp eq i32 %i.nz, 38505
  br i1 %.not.i157, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.157, i32 noundef %i.nz) #12
  br label %.loopexit

bb.ca:                                            ; preds = %bb.by
  %i.oa = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.ob = call i32 @avio_r8(ptr noundef %i.oa) #12 ; 2 uses
  %i.oc = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.od = call i32 @avio_r8(ptr noundef %i.oc) #12 ; 0 uses
  %i.oe = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.of = call i32 @avio_r8(ptr noundef %i.oe) #12 ; 0 uses
  %i.og = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.oh = call i32 @avio_rb16(ptr noundef %i.og) #12 ; 0 uses
  %i.oi = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.oj = call i32 @avio_r8(ptr noundef %i.oi) #12 ; 2 uses
  %.not82.i158 = icmp eq i32 %i.oj, 114
  br i1 %.not82.i158, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.158, i32 noundef %i.oj) #12
  br label %.loopexit

bb.cc:                                            ; preds = %bb.ca
  %i.ok = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.ol = call i32 @avio_r8(ptr noundef %i.ok) #12
  %i.om = and i32 %i.ol, 31                       ; 2 uses
  %i.on = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.oo = mul nuw nsw i32 %i.om, 3                ; 3 uses
  %i.op = call i32 @av_get_packet(ptr noundef %i.on, ptr noundef %1, i32 noundef %i.oo) #12 ; 2 uses
  %i.oq = icmp slt i32 %i.op, 0
  br i1 %i.oq, label %.loopexit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.or = add nsw i32 %i.ob, -13
  %i.os = icmp slt i32 %i.or, %i.oo
  br i1 %i.os, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.159, i32 noundef %i.ob, i32 noundef %i.om) #12
  br label %.loopexit

bb.cf:                                            ; preds = %bb.cd
  %i.ot = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.ou = add nsw i32 %i.nv, -13
  %i.ov = sub i32 %i.ou, %i.oo
  %i.ow = sext i32 %i.ov to i64
  %i.ox = call i64 @avio_skip(ptr noundef %i.ot, i64 noundef %i.ow) #12 ; 0 uses
  %i.oy = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.oz = call i32 @avio_r8(ptr noundef %i.oy) #12 ; 2 uses
  %.not83.i159 = icmp eq i32 %i.oz, 116
  br i1 %.not83.i159, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.160, i32 noundef %i.oz) #12
  br label %.loopexit

bb.ch:                                            ; preds = %bb.cf
  %i.pa = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.pb = call i32 @avio_rb16(ptr noundef %i.pa) #12 ; 0 uses
  %i.pc = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.pd = call i32 @avio_r8(ptr noundef %i.pc) #12 ; 0 uses
  br label %mxf_get_eia608_packet.exit

bb.ci:                                            ; preds = %bb.bx, %bb.bu, %bb.bs
  %i.pe = add nuw nsw i32 %.0736.i, 1             ; 2 uses
  %exitcond.not.i156 = icmp eq i32 %i.pe, %i.mu
  br i1 %exitcond.not.i156, label %mxf_get_eia608_packet.exit, label %.lr.ph.i155, !llvm.loop !247

.loopexit:                                        ; preds = %bb.bv, %bb.bz, %bb.cc, %bb.cg, %bb.ce, %bb.br, %bb.cb
  %.ph = phi i32 [ -1094995529, %bb.bz ], [ -1094995529, %bb.cb ], [ -1094995529, %bb.br ], [ -1094995529, %bb.ce ], [ -1094995529, %bb.cg ], [ %i.op, %bb.cc ], [ -1094995529, %bb.bv ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  br label %.thread185

bb.cj:                                            ; preds = %._crit_edge, %bb.bo
  %i.pf = phi i64 [ %.pre, %._crit_edge ], [ %.pre247, %bb.bo ]
  %i.pg = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.ph = trunc i64 %i.pf to i32
  %i.pi = call i32 @av_get_packet(ptr noundef %i.pg, ptr noundef %1, i32 noundef %i.ph) #12 ; 2 uses
  %i.pj = icmp slt i32 %i.pi, 0
  br i1 %i.pj, label %bb.ck, label %mxf_get_eia608_packet.exit

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  br label %.thread185

mxf_get_eia608_packet.exit:                       ; preds = %bb.ci, %bb.ch, %bb.bq, %mxf_get_d10_aes3_packet.exit, %bb.cj
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %.3.i178, ptr %i.pk, align 4, !tbaa !254
  %i.pl = load i64, ptr %i.k, align 16, !tbaa !50
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.pl, ptr %i.pm, align 8, !tbaa !256
  %i.pn = getelementptr i8, ptr %12, i64 16
  %.val = load ptr, ptr %i.pn, align 8, !tbaa !113 ; 4 uses
  %.val139 = load ptr, ptr %14, align 8, !tbaa !99 ; 7 uses
  %i.po = load i32, ptr %.val, align 8, !tbaa !116
  switch i32 %i.po, label %bb.cy [
    i32 0, label %bb.cl
    i32 1, label %bb.cp
  ]

bb.cl:                                            ; preds = %mxf_get_eia608_packet.exit
  %i.pp = getelementptr inbounds nuw i8, ptr %.val139, i64 96
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !102
  %i.pr = getelementptr inbounds nuw i8, ptr %i.d, i64 588
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !76 ; 2 uses
  %i.pt = icmp sgt i32 %i.ps, 0
  br i1 %i.pt, label %.lr.ph.i.i163, label %mxf_find_index_table.exit.thread.i

.lr.ph.i.i163:                                    ; preds = %bb.cl
  %i.pu = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !77
  %wide.trip.count.i.i = zext nneg i32 %i.ps to i64
  br label %bb.cn

bb.cm:                                            ; preds = %bb.cn
  %indvars.iv.next.i.i165 = add nuw nsw i64 %indvars.iv.i.i164, 1 ; 2 uses
  %exitcond.not.i.i166 = icmp eq i64 %indvars.iv.next.i.i165, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i166, label %mxf_find_index_table.exit.thread.i, label %bb.cn, !llvm.loop !0

bb.cn:                                            ; preds = %bb.cm, %.lr.ph.i.i163
  %indvars.iv.i.i164 = phi i64 [ 0, %.lr.ph.i.i163 ], [ %indvars.iv.next.i.i165, %bb.cm ] ; 2 uses
  %i.pw = getelementptr inbounds nuw [64 x i8], ptr %i.pv, i64 %indvars.iv.i.i164 ; 4 uses
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !103
  %i.py = icmp eq i32 %i.px, %i.pq
  br i1 %i.py, label %mxf_find_index_table.exit.i, label %bb.cm

mxf_find_index_table.exit.i:                      ; preds = %bb.cn
  %i.pz = getelementptr inbounds nuw i8, ptr %.val139, i64 80
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !142 ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !83
  %i.qd = sext i32 %i.qc to i64
  %i.qe = icmp ult i64 %i.qa, %i.qd
  br i1 %i.qe, label %bb.co, label %mxf_find_index_table.exit.thread.i

bb.co:                                            ; preds = %mxf_find_index_table.exit.i
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !90
  %i.qh = add i64 %i.qg, %i.qa
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.qh, ptr %i.qi, align 8, !tbaa !257
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pw, i64 24
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !84
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.qk, i64 %i.qa
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !53
  br label %mxf_find_index_table.exit.thread._crit_edge.sink.split.i

mxf_find_index_table.exit.thread.i:               ; preds = %bb.cm, %mxf_find_index_table.exit.i, %bb.cl
  %i.qn = getelementptr inbounds nuw i8, ptr %.val139, i64 76
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !143
  %.not37.i = icmp eq i32 %i.qo, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val139, i64 80
  %.pre.i162 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !142 ; 3 uses
  br i1 %.not37.i, label %mxf_find_index_table.exit.thread._crit_edge.i, label %mxf_find_index_table.exit.thread._crit_edge.sink.split.i

mxf_find_index_table.exit.thread._crit_edge.sink.split.i: ; preds = %mxf_find_index_table.exit.thread.i, %bb.co
  %.pre.sink.i = phi i64 [ %i.qm, %bb.co ], [ %.pre.i162, %mxf_find_index_table.exit.thread.i ]
  %.ph.i = phi i64 [ %i.qa, %bb.co ], [ %.pre.i162, %mxf_find_index_table.exit.thread.i ]
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.pre.sink.i, ptr %i.qp, align 8, !tbaa !258
  br label %mxf_find_index_table.exit.thread._crit_edge.i

mxf_find_index_table.exit.thread._crit_edge.i:    ; preds = %mxf_find_index_table.exit.thread._crit_edge.sink.split.i, %mxf_find_index_table.exit.thread.i
  %i.qq = phi i64 [ %.pre.i162, %mxf_find_index_table.exit.thread.i ], [ %.ph.i, %mxf_find_index_table.exit.thread._crit_edge.sink.split.i ]
  %i.qr = getelementptr inbounds nuw i8, ptr %.val139, i64 80
  %i.qs = add i64 %i.qq, 1
  store i64 %i.qs, ptr %i.qr, align 8, !tbaa !142
  br label %mxf_set_pts.exit

bb.cp:                                            ; preds = %mxf_get_eia608_packet.exit
  %i.qt = getelementptr inbounds nuw i8, ptr %i.d, i64 472 ; 2 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !44
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 48
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !91
  %15 = sext i32 %.3.i178 to i64
  %i.qx = getelementptr inbounds [8 x i8], ptr %i.qw, i64 %15
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !93 ; 4 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 24 ; 2 uses
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !99 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.rc = load i32, ptr %i.rb, align 8, !tbaa !140 ; 2 uses
  %.not.i.i160 = icmp eq i32 %i.rc, 0
  br i1 %.not.i.i160, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.rd = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !117
  %i.rf = call i32 @av_get_bits_per_sample(i32 noundef %i.re) #12
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.0.in.i.i = phi i32 [ %i.rc, %bb.cp ], [ %i.rf, %bb.cq ] ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ra, i64 80 ; 2 uses
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !142 ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.rh, ptr %i.ri, align 8, !tbaa !258
  %i.rj = getelementptr inbounds nuw i8, ptr %.val, i64 132
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !118 ; 2 uses
  %i.rl = icmp slt i32 %i.rk, 1
  %i.rm = icmp slt i32 %.0.in.i.i, 1
  %or.cond.i.i161 = select i1 %i.rl, i1 true, i1 %i.rm
  br i1 %or.cond.i.i161, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %.0.i.i = zext nneg i32 %.0.in.i.i to i64
  %i.rn = zext nneg i32 %i.rk to i64
  %i.ro = mul nuw nsw i64 %i.rn, %.0.i.i          ; 2 uses
  %i.rp = icmp samesign ult i64 %i.ro, 8
  br i1 %i.rp, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qy, i64 32
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ra, i64 68
  %i.rs = load i64, ptr %i.rr, align 4            ; 2 uses
  %.sroa.01.0.insert.insert.i.i.i = call i64 @llvm.fshl.i64(i64 %i.rs, i64 %i.rs, i64 32)
  %i.rt = load i64, ptr %i.rq, align 8            ; 3 uses
  %i.ru = call i64 @av_rescale_q(i64 noundef %i.rh, i64 %i.rt, i64 %.sroa.01.0.insert.insert.i.i.i) #13
  %i.rv = add nsw i64 %i.ru, 1                    ; 2 uses
  %i.rw = load ptr, ptr %i.qz, align 8, !tbaa !99
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 68 ; 2 uses
  %i.ry = load i64, ptr %i.rx, align 4            ; 4 uses
  %.sroa.01.0.insert.insert.i33.i.i.i = call i64 @llvm.fshl.i64(i64 %i.ry, i64 %i.ry, i64 32) ; 4 uses
  %.sroa.015.0.extract.trunc.i.i.i = trunc i64 %.sroa.01.0.insert.insert.i33.i.i.i to i32
  %.sroa.5.0.extract.shift.i.i.i = lshr i64 %.sroa.01.0.insert.insert.i33.i.i.i, 32
  %.sroa.5.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.5.0.extract.shift.i.i.i to i32
  %.sroa.01.0.insert.insert.i.i.i.i = call i64 @llvm.fshl.i64(i64 %i.rt, i64 %i.rt, i64 32) ; 5 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.01.0.insert.insert.i.i.i.i to i32 ; 2 uses
  %.sroa.8.0.extract.shift.i.i.i = lshr i64 %.sroa.01.0.insert.insert.i.i.i.i, 32
  %.sroa.8.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.8.0.extract.shift.i.i.i to i32 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !113
  %i.sb = load i32, ptr %i.sa, align 8, !tbaa !116
  %.not.i.i.i = icmp eq i32 %i.sb, 1
  br i1 %.not.i.i.i, label %bb.cu, label %mxf_set_audio_pts.exit.i

bb.cu:                                            ; preds = %bb.ct
  %i.sc = sdiv i32 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.8.0.extract.trunc.i.i.i
  %i.sd = icmp eq i32 %i.sc, 48000
  br i1 %i.sd, label %.sink.split.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %sext.i.i.i = shl i64 %.sroa.01.0.insert.insert.i.i.i.i, 32
  %i.se = ashr exact i64 %sext.i.i.i, 32
  %sext29.i.i.i = shl i64 %.sroa.01.0.insert.insert.i33.i.i.i, 32
  %i.sf = ashr exact i64 %sext29.i.i.i, 32
  %i.sg = mul nsw i64 %i.sf, %i.se
  %i.sh = ashr i64 %.sroa.01.0.insert.insert.i33.i.i.i, 32
  %i.si = ashr i64 %.sroa.01.0.insert.insert.i.i.i.i, 32
  %i.sj = mul nsw i64 %i.sh, %i.si
  %i.sk = srem i64 %i.sg, %i.sj
  %.not32.i.i.i = icmp eq i64 %i.sk, 0
  br i1 %.not32.i.i.i, label %.sink.split.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.sl = load ptr, ptr %i.qt, align 8, !tbaa !44
  %i.sm = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.sn = load i32, ptr %i.sm, align 8, !tbaa !120
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.sl, i32 noundef 24, ptr noundef nonnull @.str.152, i32 noundef %i.sn, i32 noundef %.sroa.015.0.extract.trunc.i.i.i, i32 noundef %.sroa.5.0.extract.trunc.i.i.i, i32 noundef %.sroa.0.0.extract.trunc.i.i.i, i32 noundef %.sroa.8.0.extract.trunc.i.i.i) #12
  %.pre.i.i.i = load i64, ptr %i.rx, align 4
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.cw, %bb.cv, %bb.cu
  %.sink.i.i.i = phi i64 [ %i.ry, %bb.cu ], [ %.pre.i.i.i, %bb.cw ], [ %i.ry, %bb.cv ]
  %i.so = call i64 @av_rescale_q(i64 noundef %i.rv, i64 %.sroa.01.0.insert.insert.i.i.i.i, i64 %.sink.i.i.i) #13
  br label %mxf_set_audio_pts.exit.i

bb.cx:                                            ; preds = %bb.cs
  %i.sp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !259
  %i.sr = sext i32 %i.sq to i64
  %i.ss = lshr i64 %i.ro, 3
  %i.st = sdiv i64 %i.sr, %i.ss
  %i.su = add i64 %i.st, %i.rh
  br label %mxf_set_audio_pts.exit.i

mxf_set_audio_pts.exit.i:                         ; preds = %bb.cx, %.sink.split.i.i.i, %bb.ct
  %storemerge.i.i = phi i64 [ %i.su, %bb.cx ], [ %i.rv, %bb.ct ], [ %i.so, %.sink.split.i.i.i ]
  store i64 %storemerge.i.i, ptr %i.rg, align 8, !tbaa !142
  br label %mxf_set_pts.exit

bb.cy:                                            ; preds = %mxf_get_eia608_packet.exit
  %.not.i167 = icmp eq ptr %.val139, null
  br i1 %.not.i167, label %mxf_set_pts.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.sv = getelementptr inbounds nuw i8, ptr %.val139, i64 80 ; 2 uses
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !142 ; 3 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.sw, ptr %i.sx, align 8, !tbaa !258
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.sw, ptr %i.sy, align 8, !tbaa !257
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 1, ptr %i.sz, align 8, !tbaa !260
  %i.ta = add i64 %i.sw, 1
  store i64 %i.ta, ptr %i.sv, align 8, !tbaa !142
  br label %mxf_set_pts.exit

mxf_set_pts.exit:                                 ; preds = %mxf_find_index_table.exit.thread._crit_edge.i, %mxf_set_audio_pts.exit.i, %bb.cy, %bb.cz
  %i.tb = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.tc = load i64, ptr %i.j, align 16, !tbaa !46
  %i.td = call i64 @avio_seek(ptr noundef %i.tb, i64 noundef %i.tc, i32 noundef 0) #12 ; 0 uses
  br label %.thread185

bb.da:                                            ; preds = %bb.an, %bb.aw, %mxf_get_stream_index.exit.thread
  %i.te = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.tf = call i64 @avio_skip(ptr noundef %i.te, i64 noundef %.0106) #12 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  br label %bb.b

bb.db:                                            ; preds = %bb.c
  %i.tg = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.th = call i32 @avio_feof(ptr noundef %i.tg) #12
  %.not137 = icmp eq i32 %i.th, 0
  %i.ti = select i1 %.not137, i32 %i.ab, i32 -541478725
  br label %.thread185

.thread185:                                       ; preds = %.loopexit, %mxf_set_pts.exit, %bb.be, %bb.bm, %bb.ck, %mxf_decrypt_triplet.exit.thread172, %mxf_decrypt_triplet.exit, %bb.ak, %bb.db
  %.5 = phi i32 [ %i.ti, %bb.db ], [ 0, %mxf_decrypt_triplet.exit.thread172 ], [ 0, %mxf_decrypt_triplet.exit ], [ %.0.i171, %bb.ak ], [ %.ph, %.loopexit ], [ 0, %mxf_set_pts.exit ], [ -1094995529, %bb.be ], [ %.022.i.ph, %bb.bm ], [ %i.pi, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mxf_read_close(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @av_freep(ptr noundef nonnull %i.d) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !55   ; 3 uses
  %.not46 = icmp eq i32 %i.f, 0
  br i1 %.not46, label %.preheader39, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !91   ; 9 uses
  %wide.trip.count = zext i32 %i.f to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.i = icmp ult i32 %i.f, 8
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967288
  br label %bb.c

.preheader39.loopexit.unr-lcssa:                  ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader39, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader39.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %.preheader39.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.epil
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr null, ptr %i.l, align 8, !tbaa !99
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader39, label %bb.b, !llvm.loop !261

.preheader39:                                     ; preds = %.preheader39.loopexit.unr-lcssa, %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  br label %bb.e

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.c ] ; 9 uses
end_hunk_0
