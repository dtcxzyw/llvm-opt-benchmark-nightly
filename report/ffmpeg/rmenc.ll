Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/rmenc?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@rv10_write_header:bb.a
  %spec.select244 = select i1 %.not, i32 7, i32 3
  tail call void @avio_wb16(ptr noundef %i.d, i32 noundef %spec.select244) #7
  tail call void @avio_wl32(ptr noundef %i.d, i32 noundef 1414418243) #7
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 8 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !77
  %i.aj = load ptr, ptr @ff_rm_metadata, align 16, !tbaa !78 ; 2 uses
  %i.ak = tail call ptr @av_dict_get(ptr noundef %i.ai, ptr noundef %i.aj, ptr noundef null, i32 noundef 0) #7 ; 2 uses
  %.not243 = icmp eq ptr %i.ak, null
  br i1 %.not243, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !80
  %i.an = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #9
  %i.ao = trunc i64 %i.an to i32
  %i.ap = add i32 %i.ao, 18
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1221 = phi i32 [ %i.ap, %bb.d ], [ 18, %bb.c ] ; 2 uses
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !77
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_rm_metadata, i64 8), align 8, !tbaa !78 ; 2 uses
  %i.as = tail call ptr @av_dict_get(ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef null, i32 noundef 0) #7 ; 2 uses
  %.not243.1 = icmp eq ptr %i.as, null
  br i1 %.not243.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !80
  %i.av = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #9
  %i.aw = trunc i64 %i.av to i32
  %i.ax = add i32 %.1221, %i.aw
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1221.1 = phi i32 [ %i.ax, %bb.f ], [ %.1221, %bb.e ] ; 2 uses
  %i.ay = load ptr, ptr %i.ah, align 8, !tbaa !77
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_rm_metadata, i64 16), align 16, !tbaa !78 ; 2 uses
  %i.ba = tail call ptr @av_dict_get(ptr noundef %i.ay, ptr noundef %i.az, ptr noundef null, i32 noundef 0) #7 ; 2 uses
  %.not243.2 = icmp eq ptr %i.ba, null
  br i1 %.not243.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !80
  %i.bd = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bc) #9
  %i.be = trunc i64 %i.bd to i32
  %i.bf = add i32 %.1221.1, %i.be
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1221.2 = phi i32 [ %i.bf, %bb.h ], [ %.1221.1, %bb.g ] ; 2 uses
  %i.bg = load ptr, ptr %i.ah, align 8, !tbaa !77
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_rm_metadata, i64 24), align 8, !tbaa !78 ; 2 uses
  %i.bi = tail call ptr @av_dict_get(ptr noundef %i.bg, ptr noundef %i.bh, ptr noundef null, i32 noundef 0) #7 ; 2 uses
  %.not243.3 = icmp eq ptr %i.bi, null
  br i1 %.not243.3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !80
  %i.bl = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bk) #9
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = add i32 %.1221.2, %i.bm
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1221.3 = phi i32 [ %i.bn, %bb.j ], [ %.1221.2, %bb.i ]
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef %.1221.3) #7
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef 0) #7
  %i.bo = load ptr, ptr %i.ah, align 8, !tbaa !77
  %i.bp = tail call ptr @av_dict_get(ptr noundef %i.bo, ptr noundef %i.aj, ptr noundef null, i32 noundef 0) #7 ; 2 uses
  %.not242 = icmp eq ptr %i.bp, null
  br i1 %.not242, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !80
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bs = phi ptr [ %i.br, %bb.l ], [ @.str.8, %bb.k ] ; 3 uses
  %i.bt = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.bs) #9
  %i.bu = trunc i64 %i.bt to i32
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef %i.bu) #7
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !56  ; 2 uses
  %.not6.i = icmp eq i8 %i.bv, 0
  br i1 %.not6.i, label %put_str.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %i.bw = phi i8 [ %i.bz, %.lr.ph.i ], [ %i.bv, %bb.m ]
  %.07.i = phi ptr [ %i.bx, %.lr.ph.i ], [ %i.bs, %bb.m ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.07.i, i64 1 ; 2 uses
  %i.by = sext i8 %i.bw to i32
  tail call void @avio_w8(ptr noundef nonnull %i.d, i32 noundef %i.by) #7
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !56  ; 2 uses
  %.not.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i, label %put_str.exit, label %.lr.ph.i, !llvm.loop !74

put_str.exit:                                     ; preds = %.lr.ph.i, %bb.m
  %i.ca = load ptr, ptr %i.ah, align 8, !tbaa !77
  %i.cb = tail call ptr @av_dict_get(ptr noundef %i.ca, ptr noundef %i.ar, ptr noundef null, i32 noundef 0) #7 ; 2 uses
  %.not242.1 = icmp eq ptr %i.cb, null
  br i1 %.not242.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %put_str.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !80
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %put_str.exit
  %i.ce = phi ptr [ %i.cd, %bb.n ], [ @.str.8, %put_str.exit ] ; 3 uses
  %i.cf = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ce) #9
  %i.cg = trunc i64 %i.cf to i32
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef %i.cg) #7
  %i.ch = load i8, ptr %i.ce, align 1, !tbaa !56  ; 2 uses
  %.not6.i.1 = icmp eq i8 %i.ch, 0
  br i1 %.not6.i.1, label %put_str.exit.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.o, %.lr.ph.i.1
  %i.ci = phi i8 [ %i.cl, %.lr.ph.i.1 ], [ %i.ch, %bb.o ]
  %.07.i.1 = phi ptr [ %i.cj, %.lr.ph.i.1 ], [ %i.ce, %bb.o ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.07.i.1, i64 1 ; 2 uses
  %i.ck = sext i8 %i.ci to i32
  tail call void @avio_w8(ptr noundef nonnull %i.d, i32 noundef %i.ck) #7
  %i.cl = load i8, ptr %i.cj, align 1, !tbaa !56  ; 2 uses
  %.not.i.1 = icmp eq i8 %i.cl, 0
  br i1 %.not.i.1, label %put_str.exit.1, label %.lr.ph.i.1, !llvm.loop !74

put_str.exit.1:                                   ; preds = %.lr.ph.i.1, %bb.o
  %i.cm = load ptr, ptr %i.ah, align 8, !tbaa !77
  %i.cn = tail call ptr @av_dict_get(ptr noundef %i.cm, ptr noundef %i.az, ptr noundef null, i32 noundef 0) #7 ; 2 uses
  %.not242.2 = icmp eq ptr %i.cn, null
  br i1 %.not242.2, label %bb.q, label %bb.p

bb.p:                                             ; preds = %put_str.exit.1
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !80
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %put_str.exit.1
  %i.cq = phi ptr [ %i.cp, %bb.p ], [ @.str.8, %put_str.exit.1 ] ; 3 uses
  %i.cr = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.cq) #9
  %i.cs = trunc i64 %i.cr to i32
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef %i.cs) #7
  %i.ct = load i8, ptr %i.cq, align 1, !tbaa !56  ; 2 uses
  %.not6.i.2 = icmp eq i8 %i.ct, 0
  br i1 %.not6.i.2, label %put_str.exit.2, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.q, %.lr.ph.i.2
  %i.cu = phi i8 [ %i.cx, %.lr.ph.i.2 ], [ %i.ct, %bb.q ]
  %.07.i.2 = phi ptr [ %i.cv, %.lr.ph.i.2 ], [ %i.cq, %bb.q ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.07.i.2, i64 1 ; 2 uses
  %i.cw = sext i8 %i.cu to i32
  tail call void @avio_w8(ptr noundef nonnull %i.d, i32 noundef %i.cw) #7
  %i.cx = load i8, ptr %i.cv, align 1, !tbaa !56  ; 2 uses
  %.not.i.2 = icmp eq i8 %i.cx, 0
  br i1 %.not.i.2, label %put_str.exit.2, label %.lr.ph.i.2, !llvm.loop !74

put_str.exit.2:                                   ; preds = %.lr.ph.i.2, %bb.q
  %i.cy = load ptr, ptr %i.ah, align 8, !tbaa !77
  %i.cz = tail call ptr @av_dict_get(ptr noundef %i.cy, ptr noundef %i.bh, ptr noundef null, i32 noundef 0) #7 ; 2 uses
  %.not242.3 = icmp eq ptr %i.cz, null
  br i1 %.not242.3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %put_str.exit.2
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !80
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %put_str.exit.2
  %i.dc = phi ptr [ %i.db, %bb.r ], [ @.str.8, %put_str.exit.2 ] ; 3 uses
  %i.dd = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.dc) #9
  %i.de = trunc i64 %i.dd to i32
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef %i.de) #7
  %i.df = load i8, ptr %i.dc, align 1, !tbaa !56  ; 2 uses
  %.not6.i.3 = icmp eq i8 %i.df, 0
  br i1 %.not6.i.3, label %put_str.exit.3, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.s, %.lr.ph.i.3
  %i.dg = phi i8 [ %i.dj, %.lr.ph.i.3 ], [ %i.df, %bb.s ]
  %.07.i.3 = phi ptr [ %i.dh, %.lr.ph.i.3 ], [ %i.dc, %bb.s ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.07.i.3, i64 1 ; 2 uses
  %i.di = sext i8 %i.dg to i32
  tail call void @avio_w8(ptr noundef nonnull %i.d, i32 noundef %i.di) #7
  %i.dj = load i8, ptr %i.dh, align 1, !tbaa !56  ; 2 uses
  %.not.i.3 = icmp eq i8 %i.dj, 0
  br i1 %.not.i.3, label %put_str.exit.3, label %.lr.ph.i.3, !llvm.loop !74

put_str.exit.3:                                   ; preds = %.lr.ph.i.3, %bb.s
  %i.dk = load i32, ptr %i.e, align 4, !tbaa !26
  %.not286 = icmp eq i32 %i.dk, 0
  br i1 %.not286, label %._crit_edge284, label %.lr.ph283

.lr.ph283:                                        ; preds = %put_str.exit.3, %.thread
  %indvars.iv300 = phi i64 [ %indvars.iv.next301, %.thread ], [ 0, %put_str.exit.3 ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %indvars.iv300 ; 9 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 40 ; 13 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !43
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !44
  %i.dp = icmp eq i32 %i.do, 1                    ; 4 uses
  %.str.10..str.12 = select i1 %i.dp, ptr @.str.10, ptr @.str.12
  %.str.9..str.11 = select i1 %i.dp, ptr @.str.9, ptr @.str.11
  %. = select i1 %i.dp, i32 73, i32 34            ; 2 uses
  tail call void @avio_wl32(ptr noundef nonnull %i.d, i32 noundef 1380992077) #7
  %narrow = add nuw nsw i32 %., 82
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef %narrow) #7
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef 0) #7
  %i.dq = trunc nuw nsw i64 %indvars.iv300 to i32
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef %i.dq) #7
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 12 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !42
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef %i.ds) #7
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !42
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef %i.dt) #7
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !50
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef %i.dv) #7
  %i.dw = load i32, ptr %i.dl, align 8, !tbaa !51 ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph283
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !61
  %i.ea = sdiv i32 %i.dz, %i.dw
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph283, %bb.t
  %.1219 = phi i32 [ %i.ea, %bb.t ], [ 0, %.lr.ph283 ]
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef %.1219) #7
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef 0) #7
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef 0) #7
  %i.eb = load i32, ptr %i.ae, align 8, !tbaa !59
  %i.ec = and i32 %i.eb, 1
  %.not239 = icmp eq i32 %i.ec, 0
  br i1 %.not239, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !52 ; 2 uses
  %.not240 = icmp eq i32 %i.ee, 0
  br i1 %.not240, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = tail call i64 @av_rescale_q_rnd(i64 noundef %i.ef, i64 4294968296, i64 %i.eh, i32 noundef 0) #8
  %i.ej = trunc i64 %i.ei to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w
  %.sink = phi i32 [ %i.ej, %bb.w ], [ 3600000, %bb.v ], [ 3600000, %bb.u ]
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef %.sink) #7
  tail call void @avio_w8(ptr noundef nonnull %i.d, i32 noundef 16) #7
  br label %.lr.ph.i248

.lr.ph.i248:                                      ; preds = %bb.x, %.lr.ph.i248
  %i.ek = phi i8 [ %i.en, %.lr.ph.i248 ], [ 84, %bb.x ]
  %.07.i249 = phi ptr [ %i.el, %.lr.ph.i248 ], [ %.str.9..str.11, %bb.x ]
  %i.el = getelementptr inbounds nuw i8, ptr %.07.i249, i64 1 ; 2 uses
  %i.em = sext i8 %i.ek to i32
  tail call void @avio_w8(ptr noundef nonnull %i.d, i32 noundef %i.em) #7
  %i.en = load i8, ptr %i.el, align 1, !tbaa !56  ; 2 uses
  %.not.i250 = icmp eq i8 %i.en, 0
  br i1 %.not.i250, label %put_str8.exit, label %.lr.ph.i248, !llvm.loop !75

put_str8.exit:                                    ; preds = %.lr.ph.i248
  tail call void @avio_w8(ptr noundef nonnull %i.d, i32 noundef 20) #7
  %2 = select i1 %i.dp, i8 97, i8 118
  br label %.lr.ph.i252

.lr.ph.i252:                                      ; preds = %put_str8.exit, %.lr.ph.i252
  %i.eo = phi i8 [ %i.er, %.lr.ph.i252 ], [ %2, %put_str8.exit ]
  %.07.i253 = phi ptr [ %i.ep, %.lr.ph.i252 ], [ %.str.10..str.12, %put_str8.exit ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.07.i253, i64 1 ; 2 uses
  %i.eq = sext i8 %i.eo to i32
  tail call void @avio_w8(ptr noundef nonnull %i.d, i32 noundef %i.eq) #7
  %i.er = load i8, ptr %i.ep, align 1, !tbaa !56  ; 2 uses
  %.not.i254 = icmp eq i8 %i.er, 0
  br i1 %.not.i254, label %put_str8.exit255, label %.lr.ph.i252, !llvm.loop !75

put_str8.exit255:                                 ; preds = %.lr.ph.i252
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef %.) #7
  %i.es = load ptr, ptr %i.dm, align 8, !tbaa !43 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !44
  %i.eu = icmp eq i32 %i.et, 1
  br i1 %i.eu, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %put_str8.exit255
  %i.ev = tail call i32 @av_get_audio_frame_duration2(ptr noundef nonnull %i.es, i32 noundef 0) #7
  %i.ew = load ptr, ptr %i.dm, align 8, !tbaa !43 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 152
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !48 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !41
  %i.fb = sext i32 %i.ev to i64
  %i.fc = mul nsw i64 %i.fa, %i.fb
  %i.fd = shl nsw i32 %i.ey, 3
  %i.fe = sext i32 %i.fd to i64
  %i.ff = sdiv i64 %i.fc, %i.fe
  %i.fg = trunc i64 %i.ff to i32                  ; 2 uses
  tail call void @avio_write(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.14, i32 noundef 3) #7
  tail call void @avio_w8(ptr noundef nonnull %i.d, i32 noundef 253) #7
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef 262144) #7
  tail call void @avio_wl32(ptr noundef nonnull %i.d, i32 noundef 878801454) #7
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef 28652848) #7
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef 4) #7
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef 57) #7
  switch i32 %i.ey, label %bb.z [
    i32 48000, label %.lr.ph.i256
    i32 24000, label %.lr.ph.i256
    i32 12000, label %.lr.ph.i256
    i32 8000, label %bb.aa
    i32 16000, label %bb.aa
    i32 32000, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  br label %.lr.ph.i256

bb.aa:                                            ; preds = %bb.y, %bb.y, %bb.y
  br label %.lr.ph.i256

.lr.ph.i256:                                      ; preds = %bb.y, %bb.y, %bb.y, %bb.aa, %bb.z
  %.0204 = phi i32 [ 2, %bb.z ], [ 3, %bb.aa ], [ 1, %bb.y ], [ 1, %bb.y ], [ 1, %bb.y ]
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef %.0204) #7
  %i.fh = icmp eq i32 %i.fg, 557
  %spec.select245 = select i1 %i.fh, i32 556, i32 %i.fg ; 2 uses
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef %spec.select245) #7
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef 333120) #7
  %i.fi = load ptr, ptr %i.dm, align 8, !tbaa !43
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !41
  %i.fl = sdiv i64 %i.fk, 8
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = mul i32 %i.fm, 60
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef %i.fn) #7
  %i.fo = load ptr, ptr %i.dm, align 8, !tbaa !43
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !41
  %i.fr = sdiv i64 %i.fq, 8
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = mul i32 %i.fs, 60
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef %i.ft) #7
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef 1) #7
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef %spec.select245) #7
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef 0) #7
  %i.fu = load ptr, ptr %i.dm, align 8, !tbaa !43
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 152
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !48
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef %i.fw) #7
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef 16) #7
  %i.fx = load ptr, ptr %i.dm, align 8, !tbaa !43
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 132
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !81
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef %i.fz) #7
  tail call void @avio_w8(ptr noundef nonnull %i.d, i32 noundef 4) #7
  tail call void @avio_w8(ptr noundef nonnull %i.d, i32 noundef 73) #7
  tail call void @avio_w8(ptr noundef nonnull %i.d, i32 noundef 110) #7
  tail call void @avio_w8(ptr noundef nonnull %i.d, i32 noundef 116) #7
  tail call void @avio_w8(ptr noundef nonnull %i.d, i32 noundef 48) #7
  %i.ga = load ptr, ptr %i.dm, align 8, !tbaa !43
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !82
  %.not241.not = icmp eq i32 %i.gc, 0
  br i1 %.not241.not, label %bb.af, label %.thread266

.thread266:                                       ; preds = %.lr.ph.i256
  tail call void @avio_w8(ptr noundef nonnull %i.d, i32 noundef 4) #7
  %i.gd = load ptr, ptr %i.dm, align 8, !tbaa !43
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !82
  tail call void @avio_wl32(ptr noundef nonnull %i.d, i32 noundef %i.gf) #7
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef 0) #7
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef 0) #7
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef 0) #7
  tail call void @avio_w8(ptr noundef nonnull %i.d, i32 noundef 0) #7
  br label %.thread

bb.ab:                                            ; preds = %put_str8.exit255
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef 34) #7
  tail call void @avio_wl32(ptr noundef nonnull %i.d, i32 noundef 1329875286) #7
  %i.gg = load ptr, ptr %i.dm, align 8, !tbaa !43
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !55
  %i.gj = icmp eq i32 %i.gi, 5
  %.324 = select i1 %i.gj, i32 808539730, i32 808605266
  tail call void @avio_wl32(ptr noundef nonnull %i.d, i32 noundef %.324) #7
  %i.gk = load ptr, ptr %i.dm, align 8, !tbaa !43
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 72
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !83
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef %i.gm) #7
  %i.gn = load ptr, ptr %i.dm, align 8, !tbaa !43
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 76
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !84
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef %i.gp) #7
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !85
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dl, i64 20 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !86
  %i.gu = sdiv i32 %i.gr, %i.gt                   ; 3 uses
  %i.gv = icmp sgt i32 %i.gu, 65535
  br i1 %i.gv, label %.thread263, label %bb.ac

.thread263:                                       ; preds = %bb.ab
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.d, i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %i.gu) #7
  br label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef %i.gu) #7
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef 0) #7
  %i.gw = load i32, ptr %i.gq, align 8, !tbaa !85
  %i.gx = load i32, ptr %i.gs, align 4, !tbaa !86
  %i.gy = sdiv i32 %i.gw, %i.gx
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef %i.gy) #7
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef 0) #7
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef 8) #7
  %i.gz = load ptr, ptr %i.dm, align 8, !tbaa !43
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !55
  %i.hc = icmp eq i32 %i.hb, 5
  br i1 %i.hc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef 268435456) #7
  br label %.thread

bb.ae:                                            ; preds = %bb.ac
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef 537931777) #7
  br label %.thread

bb.af:                                            ; preds = %.lr.ph.i256
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.17) #7
  br label %bb.ai

.thread:                                          ; preds = %bb.ae, %bb.ad, %.thread266
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1 ; 2 uses
  %i.hd = load i32, ptr %i.e, align 4, !tbaa !26
  %i.he = zext i32 %i.hd to i64
  %i.hf = icmp samesign ult i64 %indvars.iv.next301, %i.he
  br i1 %i.hf, label %.lr.ph283, label %._crit_edge284, !llvm.loop !76

._crit_edge284:                                   ; preds = %.thread, %put_str.exit.3
  %i.hg = tail call i64 @avio_seek(ptr noundef nonnull %i.d, i64 noundef 0, i32 noundef 1) #7
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  store i32 %i.hh, ptr %i.hi, align 8, !tbaa !60
  %i.hj = shl i64 %i.ac, 32
  %i.hk = ashr exact i64 %i.hj, 32
  %i.hl = tail call i64 @avio_seek(ptr noundef nonnull %i.d, i64 noundef %i.hk, i32 noundef 0) #7
  %i.hm = icmp sgt i64 %i.hl, -1
  br i1 %i.hm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %._crit_edge284
  %i.hn = load i32, ptr %i.hi, align 8, !tbaa !60
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef %i.hn) #7
  %i.ho = load i32, ptr %i.hi, align 8, !tbaa !60
  %i.hp = sext i32 %i.ho to i64
  %i.hq = tail call i64 @avio_seek(ptr noundef nonnull %i.d, i64 noundef %i.hp, i32 noundef 0) #7 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge284
  tail call void @avio_wl32(ptr noundef nonnull %i.d, i32 noundef 1096040772) #7
  %i.hr = add nsw i32 %1, 18
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef %i.hr) #7
  tail call void @avio_wb16(ptr noundef nonnull %i.d, i32 noundef 0) #7
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef %.0225.lcssa) #7
  tail call void @avio_wb32(ptr noundef nonnull %i.d, i32 noundef 0) #7
  br label %bb.ai

bb.ai:                                            ; preds = %bb.af, %.thread263, %bb.ah
  %.4 = phi i32 [ -1, %bb.af ], [ 0, %bb.ah ], [ -22, %.thread263 ]
  ret i32 %.4
}

declare void @avio_wb32(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @avio_wb16(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q_rnd(i64 noundef, i64, i64, i32 noundef) local_unnamed_addr #3

end_hunk_0
