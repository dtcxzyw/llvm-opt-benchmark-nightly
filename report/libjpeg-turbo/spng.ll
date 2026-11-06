Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/spng?download=true
inline.NumInlined: 350
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@encode_row:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph85, %bb.e
  %.06883 = phi ptr [ %i.ad, %.lr.ph85 ], [ %spec.select79, %bb.e ] ; 3 uses
  %.07082 = phi i32 [ %i.ab, %.lr.ph85 ], [ %spec.select, %bb.e ] ; 2 uses
  %.07281 = phi i32 [ 0, %.lr.ph85 ], [ %i.bg, %bb.e ] ; 2 uses
  %i.ao = mul i32 %i.an, %.07281
  %i.ap = add i32 %i.ao, %i.al                    ; 2 uses
  %i.aq = udiv i32 %i.ap, %.zext
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !51
  %i.au = zext i8 %i.at to i32
  %i.av = mul i32 %i.ap, %i.l
  %i.aw = and i32 %i.av, 7
  %i.ax = sub nsw i32 %i.ab, %i.aw
  %i.ay = lshr i32 %i.au, %i.ax
  %i.az = and i32 %i.ay, %i.aa
  %i.ba = shl nuw nsw i32 %i.az, %.07082
  %i.bb = load i8, ptr %.06883, align 1, !tbaa !51
  %i.bc = trunc i32 %i.ba to i8
  %i.bd = or i8 %i.bb, %i.bc
  store i8 %i.bd, ptr %.06883, align 1, !tbaa !51
  %i.be = sub nsw i32 %.07082, %i.l               ; 2 uses
  %i.bf = icmp ugt i32 %i.be, 7                   ; 2 uses
  %spec.select = select i1 %i.bf, i32 %i.ab, i32 %i.be
  %spec.select79.idx = zext i1 %i.bf to i64
  %spec.select79 = getelementptr inbounds nuw i8, ptr %.06883, i64 %spec.select79.idx
  %i.bg = add nuw i32 %.07281, 1                  ; 2 uses
  %i.bh = load i32, ptr %i.ag, align 8, !tbaa !59
  %i.bi = icmp ult i32 %i.bg, %i.bh
  br i1 %i.bi, label %bb.e, label %._crit_edge86, !llvm.loop !326

._crit_edge86:                                    ; preds = %bb.e, %bb.d
  %i.bj = load ptr, ptr %i.ac, align 8, !tbaa !54
  br label %.sink.split

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.bk = mul nuw i64 %indvars.iv, %i.w
  %i.bl = add nuw i64 %i.bk, %i.t
  %i.bm = mul i64 %i.bl, %i.x
  %i.bn = load ptr, ptr %i.y, align 8, !tbaa !54
  %i.bo = trunc nuw i64 %indvars.iv to i32
  %i.bp = mul i32 %i.i, %i.bo
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %i.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr nonnull align 1 %i.bs, i64 %i.x, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = load i32, ptr %i.p, align 8, !tbaa !59
  %i.bu = zext i32 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %bb.f, label %._crit_edge, !llvm.loop !327

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 2752
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !54
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %._crit_edge86, %._crit_edge
  %.sink = phi ptr [ %i.bj, %._crit_edge86 ], [ %i.bx, %._crit_edge ], [ %1, %bb.b ]
  %i.by = tail call fastcc i32 @encode_scanline(ptr noundef %0, ptr noundef %.sink, i64 noundef %2)
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  %.2 = phi i32 [ 80, %bb.a ], [ %i.by, %.sink.split ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 85) i32 @spng_encode_chunks(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %bb.cw, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50   ; 3 uses
  switch i32 %i.h, label %bb.d [
    i32 0, label %bb.cw
    i32 1, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.cw

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.j = load i16, ptr %i.i, align 4              ; 3 uses
  %i.k = and i16 %i.j, 16
  %.not22 = icmp eq i16 %i.k, 0
  br i1 %.not22, label %bb.cw, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ult i32 %i.h, 4
  br i1 %i.l, label %bb.f, label %bb.cr

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 16 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 1
  %.not24 = icmp eq i32 %i.o, 0
  br i1 %.not24, label %bb.cw, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3352 ; 39 uses
  %i.q = and i16 %i.j, 1
  %.not.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !201
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !98
  %i.v = tail call i32 %i.s(ptr noundef nonnull %0, ptr noundef %i.u, ptr noundef nonnull @spng_signature, i64 noundef 8) #28, !inline_history !328 ; 2 uses
  %.not38.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not38.not.i.i, label %.thread.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.v, i32 -2)
  store i32 0, ptr %i.g, align 8, !tbaa !50
  br label %write_chunks_before_idat.exit.thread

bb.j:                                             ; preds = %bb.g
  %i.w = and i16 %i.j, 2
  %.not61.i.i.i = icmp eq i16 %i.w, 0
  br i1 %.not61.i.i.i, label %write_chunks_before_idat.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !202  ; 2 uses
  %i.z = add nuw i64 %i.y, 8                      ; 2 uses
  %i.aa = icmp ugt i64 %i.y, -9
  br i1 %i.aa, label %write_chunks_before_idat.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !203 ; 2 uses
  %i.ad = icmp ugt i64 %i.z, %i.ac
  br i1 %i.ad, label %bb.m, label %..thread46_crit_edge.i.i

..thread46_crit_edge.i.i:                         ; preds = %bb.l
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !204
  br label %.thread46.i.i

bb.m:                                             ; preds = %bb.l
  %spec.store.select1.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 16384)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.0.i.i.i = phi i64 [ %spec.store.select1.i.i.i, %bb.m ], [ %i.af, %bb.n ] ; 4 uses
  %i.ae = icmp ult i64 %.0.i.i.i, %i.z
  %i.af = shl i64 %.0.i.i.i, 1
  br i1 %i.ae, label %bb.n, label %bb.o, !llvm.loop !7

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !205
  %i.ai = getelementptr i8, ptr %0, i64 168
  %.val.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !153
  %i.aj = tail call ptr %.val.i.i.i(ptr noundef %i.ah, i64 noundef %.0.i.i.i) #28, !inline_history !329 ; 3 uses
  %.not62.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not62.i.i.i, label %write_chunks_before_idat.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !205
  store i64 %.0.i.i.i, ptr %i.ab, align 8, !tbaa !203
  %i.ak = load i64, ptr %i.x, align 8, !tbaa !202
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.al, ptr %i.am, align 8, !tbaa !204
  br label %.thread46.i.i

.thread46.i.i:                                    ; preds = %bb.p, %..thread46_crit_edge.i.i
  %i.an = phi ptr [ %.pre.i.i, %..thread46_crit_edge.i.i ], [ %i.al, %bb.p ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i64 727905341920923785, ptr %i.an, align 1
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !204
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !204
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread46.i.i, %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !202 ; 2 uses
  %i.at = add i64 %i.as, 8
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !202
  %i.au = icmp ugt i64 %i.as, -9
  br i1 %i.au, label %write_chunks_before_idat.exit.thread, label %write_data.exit.i

write_data.exit.i:                                ; preds = %.thread.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !183
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3353 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3354 ; 4 uses
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 3355 ; 2 uses
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.aw)
  store i32 %2, ptr %i.p, align 8, !tbaa !51
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 3356 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !184
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3357 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 3358
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.bb)
  store i32 %3, ptr %i.az, align 4, !tbaa !51
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 3360 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 381 ; 3 uses
  %i.bh = load <4 x i8>, ptr %i.be, align 4, !tbaa !51
  store <4 x i8> %i.bh, ptr %i.bf, align 8, !tbaa !51
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !104
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 3364 ; 2 uses
  store i8 %i.bj, ptr %i.bk, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.bl = call fastcc i32 @write_header(ptr noundef nonnull %0, ptr noundef nonnull @type_ihdr, i64 noundef 13, ptr noundef %i.a) ; 2 uses
  %.not.i542.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i542.i, label %write_chunk.exit.i, label %write_chunk.exit.thread.i

write_chunk.exit.thread.i:                        ; preds = %write_data.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %write_chunks_before_idat.exit.thread

write_chunk.exit.i:                               ; preds = %write_data.exit.i
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.bm, ptr noundef nonnull readonly align 8 dereferenceable(13) %i.p, i64 13, i1 false)
  %i.bn = tail call fastcc i32 @finish_chunk(ptr noundef nonnull %0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.not484.i = icmp eq i32 %i.bn, 0
  br i1 %.not484.i, label %bb.q, label %write_chunks_before_idat.exit

bb.q:                                             ; preds = %write_chunk.exit.i
  %i.bo = load i32, ptr %i.m, align 8             ; 2 uses
  %i.bp = and i32 %i.bo, 4
  %.not485.i = icmp eq i32 %i.bp, 0
  br i1 %.not485.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !112
  %4 = tail call i32 @llvm.bswap.i32(i32 %i.br)
  store i32 %4, ptr %i.p, align 8, !tbaa !51
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1420
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !113
  %5 = tail call i32 @llvm.bswap.i32(i32 %i.bt)
  store i32 %5, ptr %i.az, align 4, !tbaa !51
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !114
  %6 = tail call i32 @llvm.bswap.i32(i32 %i.bv)
  store i32 %6, ptr %i.bf, align 8, !tbaa !51
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1428
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !115
  %7 = tail call i32 @llvm.bswap.i32(i32 %i.bx)
  store i32 %7, ptr %i.bk, align 4, !tbaa !51
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 3368
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !116
  %8 = tail call i32 @llvm.bswap.i32(i32 %i.ca)
  store i32 %8, ptr %i.by, align 8, !tbaa !51
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 3372
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1436
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !117
  %9 = tail call i32 @llvm.bswap.i32(i32 %i.cd)
  store i32 %9, ptr %i.cb, align 4, !tbaa !51
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 3376
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !118
  %10 = tail call i32 @llvm.bswap.i32(i32 %i.cg)
  store i32 %10, ptr %i.ce, align 8, !tbaa !51
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 3380
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !119
  %11 = tail call i32 @llvm.bswap.i32(i32 %i.cj)
  store i32 %11, ptr %i.ch, align 4, !tbaa !51
  %i.ck = tail call fastcc i32 @write_chunk(ptr noundef nonnull %0, ptr noundef nonnull @type_chrm, ptr noundef nonnull %i.p, i64 noundef 32) ; 2 uses
  %.not486.i = icmp eq i32 %i.ck, 0
  br i1 %.not486.i, label %._crit_edge642.i, label %write_chunks_before_idat.exit

._crit_edge642.i:                                 ; preds = %bb.r
  %.pre.i = load i32, ptr %i.m, align 8
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge642.i, %bb.q
  %i.cl = phi i32 [ %.pre.i, %._crit_edge642.i ], [ %i.bo, %bb.q ] ; 2 uses
  %i.cm = and i32 %i.cl, 16
  %.not487.i = icmp eq i32 %i.cm, 0
  br i1 %.not487.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !120
  %12 = tail call i32 @llvm.bswap.i32(i32 %i.co)
  store i32 %12, ptr %i.p, align 8, !tbaa !51
  %i.cp = tail call fastcc i32 @write_chunk(ptr noundef nonnull %0, ptr noundef nonnull @type_gama, ptr noundef nonnull %i.p, i64 noundef 4) ; 2 uses
  %.not488.i = icmp eq i32 %i.cp, 0
  br i1 %.not488.i, label %._crit_edge643.i, label %write_chunks_before_idat.exit

._crit_edge643.i:                                 ; preds = %bb.t
  %.pre644.i = load i32, ptr %i.m, align 8
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge643.i, %bb.s
  %i.cq = phi i32 [ %.pre644.i, %._crit_edge643.i ], [ %i.cl, %bb.s ] ; 2 uses
  %i.cr = and i32 %i.cq, 8
  %.not489.i = icmp eq i32 %i.cr, 0
  br i1 %.not489.i, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !339
  %i.cv = tail call i64 @compressBound(i64 noundef %i.cu) #28 ; 2 uses
  store i64 %i.cv, ptr %i.b, align 8, !tbaa !95
  %i.cw = getelementptr i8, ptr %0, i64 160
  %.val535.i = load ptr, ptr %i.cw, align 8, !tbaa !143
  %i.cx = tail call ptr %.val535.i(i64 noundef %i.cv) #28, !inline_history !330 ; 6 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !206
  %i.db = load i64, ptr %i.ct, align 8, !tbaa !339
  %i.dc = call i32 @compress2(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.b, ptr noundef %i.da, i64 noundef %i.db, i32 noundef -1) #28
  %.not490.i = icmp eq i32 %i.dc, 0
  br i1 %.not490.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = getelementptr i8, ptr %0, i64 184
  %.val541.i = load ptr, ptr %i.dd, align 8, !tbaa !145
  call void %.val541.i(ptr noundef nonnull %i.cx) #28, !inline_history !331
  br label %.thread.i

bb.y:                                             ; preds = %bb.w
  %i.de = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cs) #29 ; 3 uses
  %i.df = add i64 %i.de, 2
  %i.dg = load i64, ptr %i.b, align 8, !tbaa !95  ; 2 uses
  %i.dh = add i64 %i.df, %i.dg                    ; 2 uses
  %i.di = icmp ugt i64 %i.dg, %i.dh
  br i1 %i.di, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr null, ptr %i.c, align 8, !tbaa !91
  %i.dj = call fastcc i32 @write_header(ptr noundef nonnull %0, ptr noundef nonnull @type_iccp, i64 noundef %i.dh, ptr noundef %i.c) ; 2 uses
  %.not491.i = icmp eq i32 %i.dj, 0
  br i1 %.not491.i, label %bb.aa, label %.thread549.i

.thread549.i:                                     ; preds = %bb.z
  %i.dk = getelementptr i8, ptr %0, i64 184
  %.val540.i = load ptr, ptr %i.dk, align 8, !tbaa !145
  call void %.val540.i(ptr noundef nonnull %i.cx) #28, !inline_history !331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %write_chunks_before_idat.exit.thread

.thread.i:                                        ; preds = %bb.y, %bb.x, %bb.v
  %.2427.ph.i = phi i32 [ 3, %bb.y ], [ 64, %bb.x ], [ 2, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %write_chunks_before_idat.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !91  ; 3 uses
  %i.dm = add i64 %i.de, 1                        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr nonnull align 8 %i.cs, i64 %i.dm, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dm
  store i8 0, ptr %i.dn, align 1, !tbaa !51
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.de
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 2
  %i.dq = load i64, ptr %i.b, align 8, !tbaa !95
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dp, ptr nonnull align 1 %i.cx, i64 %i.dq, i1 false)
  %i.dr = getelementptr i8, ptr %0, i64 184
  %.val539.i = load ptr, ptr %i.dr, align 8, !tbaa !145
  call void %.val539.i(ptr noundef nonnull %i.cx) #28, !inline_history !331
  %i.ds = call fastcc i32 @finish_chunk(ptr noundef nonnull %0) ; 2 uses
  %.not492.i = icmp eq i32 %i.ds, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br i1 %.not492.i, label %._crit_edge645.i, label %write_chunks_before_idat.exit

._crit_edge645.i:                                 ; preds = %bb.aa
  %.pre646.i = load i32, ptr %i.m, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge645.i, %bb.u
  %i.dt = phi i32 [ %.pre646.i, %._crit_edge645.i ], [ %i.cq, %bb.u ] ; 2 uses
  %i.du = and i32 %i.dt, 32
  %.not493.i = icmp eq i32 %i.du, 0
  br i1 %.not493.i, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dv = load i8, ptr %i.bg, align 1, !tbaa !108
  switch i8 %i.dv, label %write_chunks_before_idat.exit.thread [
    i8 0, label %bb.ad
    i8 2, label %bb.ae
    i8 3, label %bb.ae
    i8 4, label %bb.af
    i8 6, label %bb.ag
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1548
  %i.dx = load i8, ptr %i.dw, align 4, !tbaa !121
  store i8 %i.dx, ptr %i.p, align 8, !tbaa !51
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac, %bb.ac
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1549
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !122
  store i8 %i.dz, ptr %i.p, align 8, !tbaa !51
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 1550
  %i.eb = load i8, ptr %i.ea, align 2, !tbaa !123
  store i8 %i.eb, ptr %i.ax, align 1, !tbaa !51
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1551
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !124
  store i8 %i.ed, ptr %i.ay, align 2, !tbaa !51
  br label %bb.ah

bb.af:                                            ; preds = %bb.ac
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1548
  %i.ef = load i8, ptr %i.ee, align 4, !tbaa !121
  store i8 %i.ef, ptr %i.p, align 8, !tbaa !51
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !125
  store i8 %i.eh, ptr %i.ax, align 1, !tbaa !51
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 1549
  %i.ej = load <4 x i8>, ptr %i.ei, align 1, !tbaa !51
  store <4 x i8> %i.ej, ptr %i.p, align 8, !tbaa !51
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %.0411.i = phi i64 [ 1, %bb.ad ], [ 3, %bb.ae ], [ 2, %bb.af ], [ 4, %bb.ag ]
  %i.ek = call fastcc i32 @write_chunk(ptr noundef nonnull %0, ptr noundef nonnull @type_sbit, ptr noundef nonnull %i.p, i64 noundef %.0411.i) ; 2 uses
  %.not494.i = icmp eq i32 %i.ek, 0
  br i1 %.not494.i, label %._crit_edge647.i, label %write_chunks_before_idat.exit

._crit_edge647.i:                                 ; preds = %bb.ah
  %.pre648.i = load i32, ptr %i.m, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge647.i, %bb.ab
  %i.el = phi i32 [ %.pre648.i, %._crit_edge647.i ], [ %i.dt, %bb.ab ]
  %i.em = and i32 %i.el, 64
  %.not495.i = icmp eq i32 %i.em, 0
  br i1 %.not495.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1553
  %i.eo = call fastcc i32 @write_chunk(ptr noundef nonnull %0, ptr noundef nonnull @type_srgb, ptr noundef nonnull %i.en, i64 noundef 1) ; 2 uses
  %.not496.i = icmp eq i32 %i.eo, 0
  br i1 %.not496.i, label %bb.ak, label %write_chunks_before_idat.exit

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ep = call fastcc i32 @write_unknown_chunks(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %.not497.i = icmp eq i32 %i.ep, 0
  br i1 %.not497.i, label %bb.al, label %write_chunks_before_idat.exit

bb.al:                                            ; preds = %bb.ak
  %i.eq = load i32, ptr %i.m, align 8             ; 2 uses
  %i.er = and i32 %i.eq, 2
  %.not498.i = icmp eq i32 %i.er, 0
  br i1 %.not498.i, label %bb.an, label %.preheader583.i

.preheader583.i:                                  ; preds = %bb.al
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.et = load i32, ptr %i.es, align 4, !tbaa !111 ; 5 uses
  %.not610.i = icmp eq i32 %i.et, 0
  br i1 %.not610.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader583.i
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %wide.trip.count.i = zext i32 %i.et to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ev = icmp eq i32 %i.et, 1
  br i1 %i.ev, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.am ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.am ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.i ; 3 uses
  %i.ex = load i8, ptr %i.ew, align 4, !tbaa !81
  %i.ey = trunc nuw i64 %indvars.iv.i to i32
  %i.ez = mul i32 %i.ey, 3                        ; 3 uses
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.fa
  store i8 %i.ex, ptr %i.fb, align 1, !tbaa !51
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !82
  %i.fe = or disjoint i32 %i.ez, 1
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ff
  store i8 %i.fd, ptr %i.fg, align 1, !tbaa !51
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ew, i64 2
  %i.fi = load i8, ptr %i.fh, align 2, !tbaa !83
  %i.fj = add i32 %i.ez, 2
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.fk
  store i8 %i.fi, ptr %i.fl, align 1, !tbaa !51
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.next.i ; 3 uses
  %i.fn = load i8, ptr %i.fm, align 4, !tbaa !81
  %i.fo = trunc nuw i64 %indvars.iv.next.i to i32
  %i.fp = mul i32 %i.fo, 3                        ; 3 uses
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.fq
  store i8 %i.fn, ptr %i.fr, align 1, !tbaa !51
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !82
  %i.fu = add i32 %i.fp, 1
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.fv
  store i8 %i.ft, ptr %i.fw, align 1, !tbaa !51
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.fy = load i8, ptr %i.fx, align 2, !tbaa !83
  %i.fz = add i32 %i.fp, 2
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ga
  store i8 %i.fy, ptr %i.gb, align 1, !tbaa !51
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.am, !llvm.loop !332

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.am
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod100 = trunc i32 %i.et to i1
  call void @llvm.assume(i1 %lcmp.mod100)
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.i.epil.init ; 3 uses
  %i.gd = load i8, ptr %i.gc, align 4, !tbaa !81
  %i.ge = trunc nuw i64 %indvars.iv.i.epil.init to i32
  %i.gf = mul i32 %i.ge, 3                        ; 3 uses
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.gg
  store i8 %i.gd, ptr %i.gh, align 1, !tbaa !51
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !82
  %i.gk = add i32 %i.gf, 1
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.gl
  store i8 %i.gj, ptr %i.gm, align 1, !tbaa !51
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.go = load i8, ptr %i.gn, align 2, !tbaa !83
  %i.gp = add i32 %i.gf, 2
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.gq
  store i8 %i.go, ptr %i.gr, align 1, !tbaa !51
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.preheader583.i
  %i.gs = mul i32 %i.et, 3
  %i.gt = zext i32 %i.gs to i64
  %i.gu = call fastcc i32 @write_chunk(ptr noundef nonnull %0, ptr noundef nonnull @type_plte, ptr noundef nonnull %i.p, i64 noundef %i.gt) ; 2 uses
  %.not499.i = icmp eq i32 %i.gu, 0
  br i1 %.not499.i, label %._crit_edge._crit_edge.i, label %write_chunks_before_idat.exit

._crit_edge._crit_edge.i:                         ; preds = %._crit_edge.i
  %.pre649.i = load i32, ptr %i.m, align 8
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge._crit_edge.i, %bb.al
  %i.gv = phi i32 [ %.pre649.i, %._crit_edge._crit_edge.i ], [ %i.eq, %bb.al ] ; 2 uses
  %i.gw = and i32 %i.gv, 256
  %.not500.i = icmp eq i32 %i.gw, 0
  br i1 %.not500.i, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gx = load i8, ptr %i.bg, align 1, !tbaa !108
  switch i8 %i.gx, label %write_chunks_before_idat.exit.thread [
    i8 0, label %bb.ap
    i8 4, label %bb.ap
    i8 2, label %bb.aq
    i8 6, label %bb.aq
    i8 3, label %bb.ar
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.gz = load i16, ptr %i.gy, align 8, !tbaa !127 ; 2 uses
  %i.ha = lshr i16 %i.gz, 8
  %i.hb = trunc nuw i16 %i.ha to i8
  store i8 %i.hb, ptr %i.p, align 8, !tbaa !51
  %i.hc = trunc i16 %i.gz to i8
  store i8 %i.hc, ptr %i.ax, align 1, !tbaa !51
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao, %bb.ao
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 1570
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !128 ; 2 uses
  %i.hf = lshr i16 %i.he, 8
  %i.hg = trunc nuw i16 %i.hf to i8
  store i8 %i.hg, ptr %i.p, align 8, !tbaa !51
  %i.hh = trunc i16 %i.he to i8
  store i8 %i.hh, ptr %i.ax, align 1, !tbaa !51
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 1572
  %i.hj = load i16, ptr %i.hi, align 4, !tbaa !129 ; 2 uses
  %i.hk = lshr i16 %i.hj, 8
  %i.hl = trunc nuw i16 %i.hk to i8
  store i8 %i.hl, ptr %i.ay, align 2, !tbaa !51
  %i.hm = trunc i16 %i.hj to i8
  store i8 %i.hm, ptr %1, align 1, !tbaa !51
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 1574
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !130 ; 2 uses
  %i.hp = lshr i16 %i.ho, 8
  %i.hq = trunc nuw i16 %i.hp to i8
  store i8 %i.hq, ptr %i.az, align 4, !tbaa !51
  %i.hr = trunc i16 %i.ho to i8
  store i8 %i.hr, ptr %i.bc, align 1, !tbaa !51
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.ht = load i16, ptr %i.hs, align 8, !tbaa !131
  %i.hu = trunc i16 %i.ht to i8
  store i8 %i.hu, ptr %i.p, align 8, !tbaa !51
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.1412.i = phi i64 [ 2, %bb.ap ], [ 6, %bb.aq ], [ 1, %bb.ar ]
  %i.hv = call fastcc i32 @write_chunk(ptr noundef nonnull %0, ptr noundef nonnull @type_bkgd, ptr noundef nonnull %i.p, i64 noundef %.1412.i) ; 2 uses
  %.not501.i = icmp eq i32 %i.hv, 0
  br i1 %.not501.i, label %._crit_edge650.i, label %write_chunks_before_idat.exit

._crit_edge650.i:                                 ; preds = %bb.as
  %.pre651.i = load i32, ptr %i.m, align 8
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge650.i, %bb.an
  %i.hw = phi i32 [ %.pre651.i, %._crit_edge650.i ], [ %i.gv, %bb.an ] ; 2 uses
  %i.hx = and i32 %i.hw, 512
  %.not502.i = icmp eq i32 %i.hx, 0
  br i1 %.not502.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !111 ; 5 uses
  %i.ia = shl i32 %i.hz, 1
  %i.ib = zext i32 %i.ia to i64
  %.not611.i = icmp eq i32 %i.hz, 0
  br i1 %.not611.i, label %._crit_edge595.i, label %.lr.ph594.i

.lr.ph594.i:                                      ; preds = %bb.au
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 1578 ; 3 uses
  %wide.trip.count628.i = zext i32 %i.hz to i64   ; 2 uses
  %xtraiter102 = and i64 %wide.trip.count628.i, 1
  %i.id = icmp eq i32 %i.hz, 1
  br i1 %i.id, label %.epil.preheader101, label %.lr.ph594.i.new

.lr.ph594.i.new:                                  ; preds = %.lr.ph594.i
  %unroll_iter105 = and i64 %wide.trip.count628.i, 4294967294
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph594.i.new
  %indvars.iv625.i = phi i64 [ 0, %.lr.ph594.i.new ], [ %indvars.iv.next626.i.1, %bb.av ] ; 4 uses
  %niter106 = phi i64 [ 0, %.lr.ph594.i.new ], [ %niter106.next.1, %bb.av ]
  %i.ie = shl nuw nsw i64 %indvars.iv625.i, 1
  %i.if = and i64 %i.ie, 4294967292
  %i.ig = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.if ; 2 uses
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %indvars.iv625.i
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !74 ; 2 uses
  %i.ij = lshr i16 %i.ii, 8
  %i.ik = trunc nuw i16 %i.ij to i8
  store i8 %i.ik, ptr %i.ig, align 1, !tbaa !51
  %i.il = trunc i16 %i.ii to i8
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  store i8 %i.il, ptr %i.im, align 1, !tbaa !51
  %indvars.iv.next626.i = or disjoint i64 %indvars.iv625.i, 1 ; 2 uses
  %i.in = shl nuw nsw i64 %indvars.iv.next626.i, 1
  %i.io = and i64 %i.in, 4294967294
  %i.ip = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.io ; 2 uses
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %indvars.iv.next626.i
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !74 ; 2 uses
  %i.is = lshr i16 %i.ir, 8
  %i.it = trunc nuw i16 %i.is to i8
  store i8 %i.it, ptr %i.ip, align 1, !tbaa !51
  %i.iu = trunc i16 %i.ir to i8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !51
  %indvars.iv.next626.i.1 = add nuw nsw i64 %indvars.iv625.i, 2 ; 2 uses
  %niter106.next.1 = add i64 %niter106, 2         ; 2 uses
  %niter106.ncmp.1 = icmp eq i64 %niter106.next.1, %unroll_iter105
  br i1 %niter106.ncmp.1, label %._crit_edge595.i.loopexit.unr-lcssa, label %bb.av, !llvm.loop !333

._crit_edge595.i.loopexit.unr-lcssa:              ; preds = %bb.av
  %lcmp.mod103.not = icmp eq i64 %xtraiter102, 0
  br i1 %lcmp.mod103.not, label %._crit_edge595.i, label %.epil.preheader101

.epil.preheader101:                               ; preds = %._crit_edge595.i.loopexit.unr-lcssa, %.lr.ph594.i
  %indvars.iv625.i.epil.init = phi i64 [ 0, %.lr.ph594.i ], [ %indvars.iv.next626.i.1, %._crit_edge595.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod104 = trunc i32 %i.hz to i1
  call void @llvm.assume(i1 %lcmp.mod104)
  %i.iw = shl nuw nsw i64 %indvars.iv625.i.epil.init, 1
  %i.ix = and i64 %i.iw, 4294967294
  %i.iy = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ix ; 2 uses
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.ic, i64 %indvars.iv625.i.epil.init
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !74 ; 2 uses
  %i.jb = lshr i16 %i.ja, 8
  %i.jc = trunc nuw i16 %i.jb to i8
  store i8 %i.jc, ptr %i.iy, align 1, !tbaa !51
  %i.jd = trunc i16 %i.ja to i8
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 1
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !51
  br label %._crit_edge595.i

._crit_edge595.i:                                 ; preds = %.epil.preheader101, %._crit_edge595.i.loopexit.unr-lcssa, %bb.au
  %i.jf = call fastcc i32 @write_chunk(ptr noundef nonnull %0, ptr noundef nonnull @type_hist, ptr noundef nonnull %i.p, i64 noundef %i.ib) ; 2 uses
  %.not503.i = icmp eq i32 %i.jf, 0
  br i1 %.not503.i, label %._crit_edge595._crit_edge.i, label %write_chunks_before_idat.exit

._crit_edge595._crit_edge.i:                      ; preds = %._crit_edge595.i
  %.pre652.i = load i32, ptr %i.m, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %._crit_edge595._crit_edge.i, %bb.at
  %i.jg = phi i32 [ %.pre652.i, %._crit_edge595._crit_edge.i ], [ %i.hw, %bb.at ] ; 3 uses
  %i.jh = and i32 %i.jg, 1024
  %.not504.i = icmp eq i32 %i.jh, 0
  br i1 %.not504.i, label %.thread551.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ji = load i8, ptr %i.bg, align 1, !tbaa !108
  switch i8 %i.ji, label %.thread551.i [
    i8 0, label %bb.ay
    i8 2, label %bb.az
    i8 3, label %bb.ba
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 2092
  %i.jk = load i16, ptr %i.jj, align 4, !tbaa !85 ; 2 uses
  %i.jl = lshr i16 %i.jk, 8
  %i.jm = trunc nuw i16 %i.jl to i8
  store i8 %i.jm, ptr %i.p, align 8, !tbaa !51
  %i.jn = trunc i16 %i.jk to i8
  store i8 %i.jn, ptr %i.ax, align 1, !tbaa !51
  %i.jo = call fastcc i32 @write_chunk(ptr noundef nonnull %0, ptr noundef nonnull @type_trns, ptr noundef nonnull %i.p, i64 noundef 2)
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 2094
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !132 ; 2 uses
  %i.jr = lshr i16 %i.jq, 8
  %i.js = trunc nuw i16 %i.jr to i8
  store i8 %i.js, ptr %i.p, align 8, !tbaa !51
  %i.jt = trunc i16 %i.jq to i8
  store i8 %i.jt, ptr %i.ax, align 1, !tbaa !51
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.jv = load i16, ptr %i.ju, align 8, !tbaa !133 ; 2 uses
  %i.jw = lshr i16 %i.jv, 8
  %i.jx = trunc nuw i16 %i.jw to i8
  store i8 %i.jx, ptr %i.ay, align 2, !tbaa !51
  %i.jy = trunc i16 %i.jv to i8
  store i8 %i.jy, ptr %1, align 1, !tbaa !51
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 2098
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !134 ; 2 uses
  %i.kb = lshr i16 %i.ka, 8
  %i.kc = trunc nuw i16 %i.kb to i8
  store i8 %i.kc, ptr %i.az, align 4, !tbaa !51
  %i.kd = trunc i16 %i.ka to i8
  store i8 %i.kd, ptr %i.bc, align 1, !tbaa !51
  %i.ke = call fastcc i32 @write_chunk(ptr noundef nonnull %0, ptr noundef nonnull @type_trns, ptr noundef nonnull %i.p, i64 noundef 6)
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ax
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 2104
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 2100
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !135
  %i.ki = zext i32 %i.kh to i64
  %i.kj = call fastcc i32 @write_chunk(ptr noundef nonnull %0, ptr noundef nonnull @type_trns, ptr noundef nonnull %i.kf, i64 noundef %i.ki)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %.3424.i = phi i32 [ %i.jo, %bb.ay ], [ %i.ke, %bb.az ], [ %i.kj, %bb.ba ] ; 2 uses
  %.not505.i = icmp eq i32 %.3424.i, 0
  br i1 %.not505.i, label %..thread551_crit_edge.i, label %write_chunks_before_idat.exit

..thread551_crit_edge.i:                          ; preds = %bb.bb
  %.pre653.i = load i32, ptr %i.m, align 8
  br label %.thread551.i

.thread551.i:                                     ; preds = %..thread551_crit_edge.i, %bb.ax, %bb.aw
  %i.kk = phi i32 [ %.pre653.i, %..thread551_crit_edge.i ], [ %i.jg, %bb.ax ], [ %i.jg, %bb.aw ] ; 2 uses
  %i.kl = and i32 %i.kk, 2048
  %.not506.i = icmp eq i32 %i.kl, 0
  br i1 %.not506.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.thread551.i
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 2360
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !136
  %13 = call i32 @llvm.bswap.i32(i32 %i.kn)
  store i32 %13, ptr %i.p, align 8, !tbaa !51
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 2364
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !137
  %14 = call i32 @llvm.bswap.i32(i32 %i.kp)
  store i32 %14, ptr %i.az, align 4, !tbaa !51
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 2368
  %i.kr = load i8, ptr %i.kq, align 8, !tbaa !138
  store i8 %i.kr, ptr %i.bf, align 8, !tbaa !51
  %i.ks = call fastcc i32 @write_chunk(ptr noundef nonnull %0, ptr noundef nonnull @type_phys, ptr noundef nonnull %i.p, i64 noundef 9) ; 2 uses
  %.not507.i = icmp eq i32 %i.ks, 0
  br i1 %.not507.i, label %._crit_edge654.i, label %write_chunks_before_idat.exit

._crit_edge654.i:                                 ; preds = %bb.bc
  %.pre655.i = load i32, ptr %i.m, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge654.i, %.thread551.i
  %i.kt = phi i32 [ %.pre655.i, %._crit_edge654.i ], [ %i.kk, %.thread551.i ] ; 3 uses
  %i.ku = and i32 %i.kt, 4096
  %.not508.i = icmp eq i32 %i.ku, 0
  br i1 %.not508.i, label %bb.bn, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store ptr null, ptr %i.d, align 8, !tbaa !91
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 2372 ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !164
  %.not511600.not.i = icmp eq i32 %i.kw, 0
  br i1 %.not511600.not.i, label %.thread559.i, label %.lr.ph603.i

.lr.ph603.i:                                      ; preds = %bb.be
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 2376
  br label %bb.bf

.thread559.loopexit.i:                            ; preds = %bb.bl
  %.pre656.pre.i = load i32, ptr %i.m, align 8
  br label %.thread559.i

.thread559.i:                                     ; preds = %.thread559.loopexit.i, %bb.be
  %.pre656.i = phi i32 [ %.pre656.pre.i, %.thread559.loopexit.i ], [ %i.kt, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.bn

bb.bf:                                            ; preds = %bb.bl, %.lr.ph603.i
  %indvars.iv636.i = phi i64 [ 0, %.lr.ph603.i ], [ %indvars.iv.next637.i, %bb.bl ] ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !165
  %i.kz = getelementptr inbounds nuw [96 x i8], ptr %i.ky, i64 %indvars.iv636.i ; 8 uses
  %i.la = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kz) #29 ; 2 uses
  %i.lb = add i64 %i.la, 1                        ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 80 ; 2 uses
  %i.ld = load i8, ptr %i.lc, align 8, !tbaa !169
  switch i8 %i.ld, label %bb.bh [
    i8 8, label %.sink.split.i
    i8 16, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bg, %bb.bf
  %.sink714.i = phi i32 [ 10, %bb.bg ], [ 6, %bb.bf ]
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 84
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !170
  %i.lg = mul i32 %i.lf, %.sink714.i
  %i.lh = or disjoint i32 %i.lg, 1
  %i.li = zext i32 %i.lh to i64
  %i.lj = add i64 %i.lb, %i.li
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split.i, %bb.bf
  %.2413.i = phi i64 [ %i.lb, %bb.bf ], [ %i.lj, %.sink.split.i ]
  %i.lk = call fastcc i32 @write_header(ptr noundef nonnull %0, ptr noundef nonnull @type_splt, i64 noundef %.2413.i, ptr noundef %i.d) ; 2 uses
  %.not509.i = icmp eq i32 %i.lk, 0
  br i1 %.not509.i, label %bb.bi, label %.thread557.i

.thread557.i:                                     ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %write_chunks_before_idat.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.ll = load ptr, ptr %i.d, align 8, !tbaa !91  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ll, ptr nonnull align 8 %i.kz, i64 %i.lb, i1 false)
  %i.lm = getelementptr i8, ptr %i.ll, i64 %i.la  ; 2 uses
  %i.ln = getelementptr i8, ptr %i.lm, i64 2      ; 6 uses
  store ptr %i.ln, ptr %i.d, align 8, !tbaa !91
  %i.lo = load i8, ptr %i.lc, align 8, !tbaa !169 ; 2 uses
  %i.lp = getelementptr i8, ptr %i.lm, i64 1
  store i8 %i.lo, ptr %i.lp, align 1, !tbaa !51
  switch i8 %i.lo, label %.thread561.i [
    i8 8, label %.preheader.i
    i8 16, label %.preheader581.i
  ]

.preheader581.i:                                  ; preds = %bb.bi
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kz, i64 84 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !170
  %.not612.i = icmp eq i32 %i.lr, 0
  br i1 %.not612.i, label %.loopexit.i, label %.lr.ph597.i

.lr.ph597.i:                                      ; preds = %.preheader581.i
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kz, i64 88 ; 5 uses
  br label %bb.bk

.preheader.i:                                     ; preds = %bb.bi
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kz, i64 84 ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !170
  %.not613.i = icmp eq i32 %i.lu, 0
  br i1 %.not613.i, label %.loopexit.i, label %.lr.ph599.i

.lr.ph599.i:                                      ; preds = %.preheader.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kz, i64 88 ; 5 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.lr.ph599.i
  %indvars.iv633.i = phi i64 [ 0, %.lr.ph599.i ], [ %indvars.iv.next634.i, %bb.bj ] ; 7 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !168
  %i.lx = getelementptr inbounds nuw [10 x i8], ptr %i.lw, i64 %indvars.iv633.i
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !172
  %i.lz = trunc i16 %i.ly to i8
  %i.ma = trunc nuw i64 %indvars.iv633.i to i32
  %i.mb = mul i32 %i.ma, 6                        ; 4 uses
  %i.mc = zext i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.mc ; 3 uses
  store i8 %i.lz, ptr %i.md, align 1, !tbaa !51
  %i.me = load ptr, ptr %i.lv, align 8, !tbaa !168
  %i.mf = getelementptr inbounds nuw [10 x i8], ptr %i.me, i64 %indvars.iv633.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 2
  %i.mh = load i16, ptr %i.mg, align 2, !tbaa !173
  %i.mi = trunc i16 %i.mh to i8
  %i.mj = or disjoint i32 %i.mb, 1
  %i.mk = zext i32 %i.mj to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.mk
  store i8 %i.mi, ptr %i.ml, align 1, !tbaa !51
  %i.mm = load ptr, ptr %i.lv, align 8, !tbaa !168
  %i.mn = getelementptr inbounds nuw [10 x i8], ptr %i.mm, i64 %indvars.iv633.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !174
  %i.mq = trunc i16 %i.mp to i8
  %i.mr = add i32 %i.mb, 2
  %i.ms = zext i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.ms
  store i8 %i.mq, ptr %i.mt, align 1, !tbaa !51
  %i.mu = load ptr, ptr %i.lv, align 8, !tbaa !168
  %i.mv = getelementptr inbounds nuw [10 x i8], ptr %i.mu, i64 %indvars.iv633.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 6
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !175
  %i.my = trunc i16 %i.mx to i8
  %i.mz = add i32 %i.mb, 3
  %i.na = zext i32 %i.mz to i64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.na
  store i8 %i.my, ptr %i.nb, align 1, !tbaa !51
  %i.nc = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  %i.nd = load ptr, ptr %i.lv, align 8, !tbaa !168
  %i.ne = getelementptr inbounds nuw [10 x i8], ptr %i.nd, i64 %indvars.iv633.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !176 ; 2 uses
  %i.nh = lshr i16 %i.ng, 8
  %i.ni = trunc nuw i16 %i.nh to i8
  store i8 %i.ni, ptr %i.nc, align 1, !tbaa !51
  %i.nj = trunc i16 %i.ng to i8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.md, i64 5
  store i8 %i.nj, ptr %i.nk, align 1, !tbaa !51
  %indvars.iv.next634.i = add nuw nsw i64 %indvars.iv633.i, 1 ; 2 uses
  %i.nl = load i32, ptr %i.lt, align 4, !tbaa !170
  %i.nm = zext i32 %i.nl to i64
  %i.nn = icmp samesign ult i64 %indvars.iv.next634.i, %i.nm
  br i1 %i.nn, label %bb.bj, label %.loopexit.i, !llvm.loop !334

bb.bk:                                            ; preds = %bb.bk, %.lr.ph597.i
  %indvars.iv630.i = phi i64 [ 0, %.lr.ph597.i ], [ %indvars.iv.next631.i, %bb.bk ] ; 7 uses
  %i.no = mul nuw nsw i64 %indvars.iv630.i, 10
  %i.np = and i64 %i.no, 4294967294
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.np ; 10 uses
  %i.nr = load ptr, ptr %i.ls, align 8, !tbaa !168
  %i.ns = getelementptr inbounds nuw [10 x i8], ptr %i.nr, i64 %indvars.iv630.i
  %i.nt = load i16, ptr %i.ns, align 2, !tbaa !172 ; 2 uses
  %i.nu = lshr i16 %i.nt, 8
  %i.nv = trunc nuw i16 %i.nu to i8
  store i8 %i.nv, ptr %i.nq, align 1, !tbaa !51
  %i.nw = trunc i16 %i.nt to i8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nq, i64 1
  store i8 %i.nw, ptr %i.nx, align 1, !tbaa !51
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nq, i64 2
  %i.nz = load ptr, ptr %i.ls, align 8, !tbaa !168
  %i.oa = getelementptr inbounds nuw [10 x i8], ptr %i.nz, i64 %indvars.iv630.i
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 2
  %i.oc = load i16, ptr %i.ob, align 2, !tbaa !173 ; 2 uses
  %i.od = lshr i16 %i.oc, 8
  %i.oe = trunc nuw i16 %i.od to i8
  store i8 %i.oe, ptr %i.ny, align 1, !tbaa !51
  %i.of = trunc i16 %i.oc to i8
  %i.og = getelementptr inbounds nuw i8, ptr %i.nq, i64 3
  store i8 %i.of, ptr %i.og, align 1, !tbaa !51
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  %i.oi = load ptr, ptr %i.ls, align 8, !tbaa !168
  %i.oj = getelementptr inbounds nuw [10 x i8], ptr %i.oi, i64 %indvars.iv630.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.ol = load i16, ptr %i.ok, align 2, !tbaa !174 ; 2 uses
  %i.om = lshr i16 %i.ol, 8
  %i.on = trunc nuw i16 %i.om to i8
  store i8 %i.on, ptr %i.oh, align 1, !tbaa !51
  %i.oo = trunc i16 %i.ol to i8
  %i.op = getelementptr inbounds nuw i8, ptr %i.nq, i64 5
  store i8 %i.oo, ptr %i.op, align 1, !tbaa !51
  %i.oq = getelementptr inbounds nuw i8, ptr %i.nq, i64 6
end_hunk_0
begin_hunk_1_@spng_encode_chunks:bb.a
  %indvars.iv.next640.i = add nuw nsw i64 %indvars.iv639.i, 1 ; 2 uses
  %i.qo = load i32, ptr %i.qd, align 4, !tbaa !151
  %i.qp = zext i32 %i.qo to i64
  %.not523.i = icmp samesign ult i64 %indvars.iv.next640.i, %i.qp
  br i1 %.not523.i, label %bb.bs, label %._crit_edge609.loopexit.i, !llvm.loop !337

bb.bs:                                            ; preds = %bb.br, %.lr.ph608.i
  %indvars.iv639.i = phi i64 [ 0, %.lr.ph608.i ], [ %indvars.iv.next640.i, %bb.br ] ; 2 uses
  %i.qq = load ptr, ptr %i.qf, align 8, !tbaa !152
  %i.qr = getelementptr inbounds nuw [144 x i8], ptr %i.qq, i64 %indvars.iv639.i ; 9 uses
  %i.qs = load i32, ptr %i.qr, align 8, !tbaa !155 ; 2 uses
  %i.qt = sext i32 %i.qs to i64
  %i.qu = getelementptr inbounds [8 x i8], ptr @__const.write_chunks_before_idat.text_type_array, i64 %i.qt
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !91
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qr, i64 8 ; 2 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !159
  %i.qy = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.qx) #29 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qr, i64 16 ; 3 uses
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !160
  %i.rb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ra) #29 ; 5 uses
  %i.rc = add i64 %i.qy, 1                        ; 4 uses
  switch i32 %i.qs, label %bb.by [
    i32 2, label %bb.bt
    i32 3, label %bb.bu
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.rd = add i64 %i.qy, 2
  br label %bb.by

bb.bu:                                            ; preds = %bb.bs
  %i.re = getelementptr inbounds nuw i8, ptr %i.qr, i64 40
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !162 ; 2 uses
  %.not515.i = icmp eq ptr %i.rf, null
  br i1 %.not515.i, label %.thread578.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qr, i64 48
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !163 ; 2 uses
  %.not516.i = icmp eq ptr %i.rh, null
  br i1 %.not516.i, label %.thread578.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ri = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.rf) #29 ; 3 uses
  %i.rj = add i64 %i.ri, %i.rc                    ; 2 uses
  %i.rk = icmp ult i64 %i.rj, %i.ri
  br i1 %i.rk, label %.thread578.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.rl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.rh) #29 ; 3 uses
  %i.rm = add i64 %i.rl, %i.rj                    ; 3 uses
  %i.rn = icmp ult i64 %i.rm, %i.rl
  %i.ro = add nuw i64 %i.rm, 4
  %i.rp = icmp ugt i64 %i.rm, -5
  %or.cond.i = or i1 %i.rn, %i.rp
  br i1 %or.cond.i, label %.thread578.i, label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bt, %bb.bs
  %.3414.i = phi i64 [ %i.rd, %bb.bt ], [ %i.ro, %bb.bx ], [ %i.rc, %bb.bs ] ; 2 uses
  %.0405.i = phi i64 [ 0, %bb.bt ], [ %i.ri, %bb.bx ], [ 0, %bb.bs ]
  %.0404.i = phi i64 [ 0, %bb.bt ], [ %i.rl, %bb.bx ], [ 0, %bb.bs ]
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qr, i64 32 ; 3 uses
  %i.rr = load i8, ptr %i.rq, align 8, !tbaa !157
  %.not517.i = icmp eq i8 %i.rr, 0
  br i1 %.not517.i, label %bb.cd, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.rs = call fastcc i32 @spng__deflate_init(ptr noundef nonnull %0, ptr noundef %i.qg) ; 2 uses
  %.not518.i = icmp eq i32 %i.rs, 0
  br i1 %.not518.i, label %bb.ca, label %.thread578.i

bb.ca:                                            ; preds = %bb.bz
  %i.rt = call i64 @deflateBound(ptr noundef nonnull %i.qh, i64 noundef %i.rb) #28 ; 2 uses
  %.val.i = load ptr, ptr %i.qi, align 8, !tbaa !143
  %i.ru = call ptr %.val.i(i64 noundef %i.rt) #28, !inline_history !330 ; 4 uses
  %i.rv = icmp eq ptr %i.ru, null
  br i1 %i.rv, label %.thread578.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.rw = load ptr, ptr %i.qz, align 8, !tbaa !160
  store ptr %i.rw, ptr %i.qh, align 8, !tbaa !70
  %i.rx = trunc i64 %i.rb to i32
  store i32 %i.rx, ptr %i.qj, align 8, !tbaa !68
  store ptr %i.ru, ptr %i.qk, align 8, !tbaa !65
  %i.ry = trunc i64 %i.rt to i32
  store i32 %i.ry, ptr %i.ql, align 8, !tbaa !64
  %i.rz = call i32 @deflate(ptr noundef nonnull %i.qh, i32 noundef 4) #28
  %.not519.i = icmp eq i32 %i.rz, 1
  br i1 %.not519.i, label %bb.cc, label %.thread578.sink.split.i

bb.cc:                                            ; preds = %bb.cb
  %i.sa = load i64, ptr %i.qm, align 8, !tbaa !207 ; 3 uses
  %i.sb = add i64 %i.sa, %.3414.i                 ; 2 uses
  %.not580.i = icmp ult i64 %i.sb, %i.sa
  br i1 %.not580.i, label %.thread578.i, label %bb.ce

bb.cd:                                            ; preds = %bb.by
  %i.sc = add i64 %.3414.i, %i.rb                 ; 2 uses
  %i.sd = icmp ult i64 %i.sc, %i.rb
  br i1 %i.sd, label %.thread578.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.5416.i = phi i64 [ %i.sb, %bb.cc ], [ %i.sc, %bb.cd ]
  %.0406.i = phi ptr [ %i.ru, %bb.cc ], [ null, %bb.cd ] ; 3 uses
  %.1.i = phi i64 [ %i.sa, %bb.cc ], [ 0, %bb.cd ]
  %i.se = call fastcc i32 @write_header(ptr noundef nonnull %0, ptr noundef %i.qv, i64 noundef %.5416.i, ptr noundef %i.e) ; 2 uses
  %.not520.i = icmp eq i32 %i.se, 0
  br i1 %.not520.i, label %bb.cf, label %.thread578.sink.split.i

bb.cf:                                            ; preds = %bb.ce
  %i.sf = load ptr, ptr %i.e, align 8, !tbaa !91  ; 2 uses
  %i.sg = load ptr, ptr %i.qw, align 8, !tbaa !159
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sf, ptr align 1 %i.sg, i64 %i.rc, i1 false)
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.rc ; 7 uses
  store ptr %i.sh, ptr %i.e, align 8, !tbaa !91
  %i.si = load i32, ptr %i.qr, align 8, !tbaa !155
  switch i32 %i.si, label %bb.ci [
    i32 3, label %bb.cg
    i32 2, label %bb.ch
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.sj = load i8, ptr %i.rq, align 8, !tbaa !157
  store i8 %i.sj, ptr %i.sh, align 1, !tbaa !51
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 1
  store i8 0, ptr %i.sk, align 1, !tbaa !51
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sh, i64 2 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.qr, i64 40
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !162
  %i.so = add i64 %.0405.i, 1                     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sl, ptr align 1 %i.sn, i64 %i.so, i1 false)
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.so ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.qr, i64 48
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !163
  %i.ss = add i64 %.0404.i, 1                     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sp, ptr align 1 %i.sr, i64 %i.ss, i1 false)
  %i.st = getelementptr inbounds nuw i8, ptr %i.sp, i64 %i.ss
  br label %.sink.split715.i

bb.ch:                                            ; preds = %bb.cf
  store i8 0, ptr %i.sh, align 1, !tbaa !51
  %i.su = getelementptr inbounds nuw i8, ptr %i.sh, i64 1
  br label %.sink.split715.i

.sink.split715.i:                                 ; preds = %bb.ch, %bb.cg
  %.sink.i = phi ptr [ %i.su, %bb.ch ], [ %i.st, %bb.cg ] ; 2 uses
  store ptr %.sink.i, ptr %i.e, align 8, !tbaa !91
  br label %bb.ci

bb.ci:                                            ; preds = %.sink.split715.i, %bb.cf
  %i.sv = phi ptr [ %i.sh, %bb.cf ], [ %.sink.i, %.sink.split715.i ] ; 2 uses
  %i.sw = load i8, ptr %i.rq, align 8, !tbaa !157
  %.not521.i = icmp eq i8 %i.sw, 0
  br i1 %.not521.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sv, ptr align 1 %.0406.i, i64 %.1.i, i1 false)
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.sx = load ptr, ptr %i.qz, align 8, !tbaa !160
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sv, ptr align 1 %i.sx, i64 %i.rb, i1 false)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.val536.i = load ptr, ptr %i.qn, align 8, !tbaa !145
  call void %.val536.i(ptr noundef %.0406.i) #28, !inline_history !331
  %i.sy = call fastcc i32 @finish_chunk(ptr noundef nonnull %0) ; 2 uses
  %.not522.i = icmp eq i32 %i.sy, 0
  br i1 %.not522.i, label %bb.br, label %.thread578.i

.thread578.sink.split.i:                          ; preds = %bb.ce, %bb.cb
  %.0406.lcssa.sink.i = phi ptr [ %i.ru, %bb.cb ], [ %.0406.i, %bb.ce ]
  %.12.ph.ph.i = phi i32 [ 64, %bb.cb ], [ %i.se, %bb.ce ]
  %.val537.i = load ptr, ptr %i.qn, align 8, !tbaa !145
  call void %.val537.i(ptr noundef %.0406.lcssa.sink.i) #28, !inline_history !338
  br label %.thread578.i

.thread578.i:                                     ; preds = %bb.cl, %bb.cd, %bb.cc, %bb.ca, %bb.bz, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %.thread578.sink.split.i
  %.12.ph.i = phi i32 [ %.12.ph.ph.i, %.thread578.sink.split.i ], [ 3, %bb.bx ], [ 3, %bb.bw ], [ 80, %bb.bu ], [ %i.rs, %bb.bz ], [ 3, %bb.cc ], [ 3, %bb.cd ], [ 2, %bb.ca ], [ %i.sy, %bb.cl ], [ 80, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %write_chunks_before_idat.exit.thread

._crit_edge609.loopexit.i:                        ; preds = %bb.br
  %.pre659.pre.i = load i32, ptr %i.m, align 8
  br label %._crit_edge609.i

._crit_edge609.i:                                 ; preds = %._crit_edge609.loopexit.i, %bb.bq
  %.pre659.i = phi i32 [ %.pre659.pre.i, %._crit_edge609.loopexit.i ], [ %i.qb, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  br label %bb.cm

bb.cm:                                            ; preds = %._crit_edge609.i, %bb.bp
  %i.sz = phi i32 [ %.pre659.i, %._crit_edge609.i ], [ %i.qb, %bb.bp ] ; 2 uses
  %i.ta = and i32 %i.sz, 16384
  %.not524.i = icmp eq i32 %i.ta, 0
  br i1 %.not524.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 2392
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !139
  %15 = call i32 @llvm.bswap.i32(i32 %i.tc)
  store i32 %15, ptr %i.p, align 8, !tbaa !51
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 2396
  %i.te = load i32, ptr %i.td, align 4, !tbaa !140
  %16 = call i32 @llvm.bswap.i32(i32 %i.te)
  store i32 %16, ptr %i.az, align 4, !tbaa !51
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.tg = load i8, ptr %i.tf, align 8, !tbaa !141
  store i8 %i.tg, ptr %i.bf, align 8, !tbaa !51
  %i.th = call fastcc i32 @write_chunk(ptr noundef nonnull %0, ptr noundef nonnull @type_offs, ptr noundef nonnull %i.p, i64 noundef 9) ; 2 uses
  %.not525.i = icmp eq i32 %i.th, 0
  br i1 %.not525.i, label %._crit_edge660.i, label %write_chunks_before_idat.exit

._crit_edge660.i:                                 ; preds = %bb.cn
  %.pre661.i = load i32, ptr %i.m, align 8
  br label %bb.co

bb.co:                                            ; preds = %._crit_edge660.i, %bb.cm
  %i.ti = phi i32 [ %.pre661.i, %._crit_edge660.i ], [ %i.sz, %bb.cm ]
  %i.tj = and i32 %i.ti, 32768
  %.not526.i = icmp eq i32 %i.tj, 0
  br i1 %.not526.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !208
  %i.tn = load i64, ptr %i.tk, align 8, !tbaa !342
  %i.to = call fastcc i32 @write_chunk(ptr noundef nonnull %0, ptr noundef nonnull @type_exif, ptr noundef %i.tm, i64 noundef %i.tn) ; 2 uses
  %.not527.i = icmp eq i32 %i.to, 0
  br i1 %.not527.i, label %bb.cq, label %write_chunks_before_idat.exit

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.tp = call fastcc i32 @write_unknown_chunks(ptr noundef nonnull %0, i32 noundef 2)
  br label %write_chunks_before_idat.exit

write_chunks_before_idat.exit:                    ; preds = %write_chunk.exit.i, %bb.r, %bb.t, %bb.aa, %bb.ah, %bb.aj, %bb.ak, %._crit_edge.i, %bb.as, %._crit_edge595.i, %bb.bb, %bb.bc, %.thread565.i, %bb.bm, %bb.bo, %bb.cn, %bb.cp, %bb.cq
  %.14.i = phi i32 [ %i.th, %bb.cn ], [ %i.tp, %bb.cq ], [ %i.ds, %bb.aa ], [ %i.pm, %.thread565.i ], [ %i.bn, %write_chunk.exit.i ], [ %i.ck, %bb.r ], [ %i.cp, %bb.t ], [ %i.to, %bb.cp ], [ %i.ek, %bb.ah ], [ %i.eo, %bb.aj ], [ %i.ep, %bb.ak ], [ %i.gu, %._crit_edge.i ], [ %i.pl, %bb.bm ], [ %i.hv, %bb.as ], [ %i.jf, %._crit_edge595.i ], [ %.3424.i, %bb.bb ], [ %i.ks, %bb.bc ], [ %i.qa, %bb.bo ] ; 2 uses
  %.not25 = icmp eq i32 %.14.i, 0
  br i1 %.not25, label %bb.cv, label %write_chunks_before_idat.exit.thread

write_chunks_before_idat.exit.thread:             ; preds = %bb.j, %bb.k, %bb.o, %.thread557.i, %.thread549.i, %.thread.i, %write_chunk.exit.thread.i, %.thread578.i, %bb.ao, %bb.ac, %bb.i, %.thread.i.i, %write_chunks_before_idat.exit
  %.14.i28 = phi i32 [ %.14.i, %write_chunks_before_idat.exit ], [ 3, %.thread.i.i ], [ %i.lk, %.thread557.i ], [ %i.dj, %.thread549.i ], [ %.2427.ph.i, %.thread.i ], [ %i.bl, %write_chunk.exit.thread.i ], [ %.12.ph.i, %.thread578.i ], [ 80, %bb.ao ], [ 80, %bb.ac ], [ %spec.store.select.i.i, %bb.i ], [ 83, %bb.j ], [ 3, %bb.k ], [ 2, %bb.o ]
  store i32 0, ptr %i.g, align 8, !tbaa !50
  br label %bb.cw

bb.cr:                                            ; preds = %bb.e
  switch i32 %i.h, label %bb.cu [
    i32 4, label %bb.cw
    i32 6, label %bb.cs
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.tq = tail call fastcc i32 @write_chunks_after_idat(ptr noundef %0) ; 2 uses
  %.not23 = icmp eq i32 %i.tq, 0
  br i1 %.not23, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  store i32 0, ptr %i.g, align 8, !tbaa !50
  br label %bb.cw

bb.cu:                                            ; preds = %bb.cr
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cs, %write_chunks_before_idat.exit
  %storemerge = phi i32 [ 4, %write_chunks_before_idat.exit ], [ 9, %bb.cs ]
  store i32 %storemerge, ptr %i.g, align 8, !tbaa !50
  br label %bb.cw

bb.cw:                                            ; preds = %write_chunks_before_idat.exit.thread, %bb.ct, %bb.cu, %bb.cv, %bb.f, %bb.cr, %bb.d, %bb.b, %bb.a, %bb.c
  %.1 = phi i32 [ 1, %bb.a ], [ 83, %bb.c ], [ 81, %bb.d ], [ 70, %bb.b ], [ %.14.i28, %write_chunks_before_idat.exit.thread ], [ 0, %bb.cv ], [ 84, %bb.cu ], [ 15, %bb.f ], [ %i.tq, %bb.ct ], [ 0, %bb.cr ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2, 84) i32 @write_chunks_after_idat(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 65536
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %write_unknown_chunks.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2424 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !177  ; 2 uses
  %.not33.i = icmp eq i32 %i.g, 0
  br i1 %.not33.i, label %write_unknown_chunks.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !178
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %i.j = phi i32 [ %i.v, %bb.g ], [ %i.g, %.lr.ph.preheader.i ]
  %.01529.i = phi i32 [ %i.w, %bb.g ], [ 0, %.lr.ph.preheader.i ]
  %.01628.i = phi ptr [ %i.x, %bb.g ], [ %i.i, %.lr.ph.preheader.i ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.01628.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !180
  %.not19.i = icmp eq i32 %i.l, 8
  br i1 %.not19.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.01628.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !182  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01628.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !181  ; 3 uses
  %i.q = icmp ne i64 %i.p, 0                      ; 2 uses
  %i.r = icmp eq ptr %i.n, null
  %or.cond3.i.i = and i1 %i.r, %i.q
  br i1 %or.cond3.i.i, label %write_unknown_chunks.exit.thread11, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.s = call fastcc i32 @write_header(ptr noundef nonnull %0, ptr noundef nonnull %.01628.i, i64 noundef %i.p, ptr noundef %i.b) ; 2 uses
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %bb.e, label %write_chunk.exit.thread24.i

write_chunk.exit.thread24.i:                      ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %write_unknown_chunks.exit.thread11

bb.e:                                             ; preds = %bb.d
  br i1 %i.q, label %bb.f, label %write_chunk.exit.i

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr readonly align 1 %i.n, i64 %i.p, i1 false)
  br label %write_chunk.exit.i

write_chunk.exit.i:                               ; preds = %bb.f, %bb.e
  %i.u = tail call fastcc i32 @finish_chunk(ptr noundef nonnull %0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %.not20.i = icmp eq i32 %i.u, 0
  br i1 %.not20.i, label %write_chunk.exit._crit_edge.i, label %write_unknown_chunks.exit.thread11

write_chunk.exit._crit_edge.i:                    ; preds = %write_chunk.exit.i
  %.pre.i = load i32, ptr %i.f, align 8, !tbaa !177
  br label %bb.g

bb.g:                                             ; preds = %write_chunk.exit._crit_edge.i, %.lr.ph.i
  %i.v = phi i32 [ %.pre.i, %write_chunk.exit._crit_edge.i ], [ %i.j, %.lr.ph.i ] ; 2 uses
  %i.w = add nuw i32 %.01529.i, 1                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01628.i, i64 32
  %i.y = icmp ult i32 %i.w, %i.v
  br i1 %i.y, label %.lr.ph.i, label %write_unknown_chunks.exit.thread, !llvm.loop !8

write_unknown_chunks.exit.thread:                 ; preds = %bb.g, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @__const.write_iend.iend_chunk, i64 12, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.aa = load i16, ptr %i.z, align 4             ; 2 uses
  %i.ab = and i16 %i.aa, 1
  %.not.i.i7 = icmp eq i16 %i.ab, 0
  br i1 %.not.i.i7, label %bb.j, label %bb.h

bb.h:                                             ; preds = %write_unknown_chunks.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !201
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !98
  %i.ag = call i32 %i.ad(ptr noundef nonnull %0, ptr noundef %i.af, ptr noundef nonnull %i.a, i64 noundef 12) #28, !inline_history !343 ; 2 uses
  %.not38.not.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not38.not.i.i, label %.thread.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %spec.store.select.i.i = call i32 @llvm.umax.i32(i32 %i.ag, i32 -2)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.ah, align 8, !tbaa !50
  br label %write_iend.exit

bb.j:                                             ; preds = %write_unknown_chunks.exit.thread
  %i.ai = and i16 %i.aa, 2
  %.not61.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not61.i.i.i, label %.thread64.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !202 ; 2 uses
  %i.al = add nuw i64 %i.ak, 12                   ; 2 uses
  %i.am = icmp ugt i64 %i.ak, -13
  br i1 %i.am, label %.thread64.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !203 ; 2 uses
  %i.ap = icmp ugt i64 %i.al, %i.ao
  br i1 %i.ap, label %bb.m, label %..thread46_crit_edge.i.i

..thread46_crit_edge.i.i:                         ; preds = %bb.l
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !204
  br label %.thread46.i.i

bb.m:                                             ; preds = %bb.l
  %spec.store.select1.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 16384)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.0.i.i.i = phi i64 [ %spec.store.select1.i.i.i, %bb.m ], [ %i.ar, %bb.n ] ; 4 uses
  %i.aq = icmp ult i64 %.0.i.i.i, %i.al
  %i.ar = shl i64 %.0.i.i.i, 1
  br i1 %i.aq, label %bb.n, label %bb.o, !llvm.loop !7
end_hunk_1
begin_hunk_2_@text_undo:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !152
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1556 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !151
  %i.e = add i32 %i.d, -1
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %i.f ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !159
  %i.j = getelementptr i8, ptr %0, i64 184        ; 2 uses
  %.val13 = load ptr, ptr %i.j, align 8, !tbaa !145
  tail call void %.val13(ptr noundef %i.i) #28, !inline_history !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.l = load i8, ptr %i.k, align 8, !tbaa !157
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !160
  %.val = load ptr, ptr %i.j, align 8, !tbaa !145
  tail call void %.val(ptr noundef %i.n) #28, !inline_history !9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !161  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !149
  %i.q = freeze i64 %.pre                         ; 3 uses
  %i.r = add i64 %i.p, -1
  %or.cond.not = icmp ult i64 %i.r, %i.q
  br i1 %or.cond.not, label %bb.d, label %decrease_cache_usage.exit

bb.d:                                             ; preds = %bb.c
  %i.s = sub nuw i64 %i.q, %i.p                   ; 2 uses
  store i64 %i.s, ptr %.phi.trans.insert, align 8, !tbaa !149
  br label %decrease_cache_usage.exit

decrease_cache_usage.exit:                        ; preds = %bb.c, %bb.d
  %i.t = phi i64 [ %i.q, %bb.c ], [ %i.s, %bb.d ] ; 2 uses
  %i.u = icmp ult i64 %i.t, 144
  br i1 %i.u, label %decrease_cache_usage.exit16, label %bb.e

bb.e:                                             ; preds = %decrease_cache_usage.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.w = add i64 %i.t, -144
  store i64 %i.w, ptr %i.v, align 8, !tbaa !149
  br label %decrease_cache_usage.exit16

decrease_cache_usage.exit16:                      ; preds = %decrease_cache_usage.exit, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.x = load i32, ptr %i.c, align 4, !tbaa !151
  %i.y = add i32 %i.x, -1
  store i32 %i.y, ptr %i.c, align 4, !tbaa !151
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @splt_undo(ptr nofree noundef captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2376
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2372 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !164
  %i.e = add i32 %i.d, -1
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %i.b, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !168
  %i.j = getelementptr i8, ptr %0, i64 184
  %.val = load ptr, ptr %i.j, align 8, !tbaa !145
  tail call void %.val(ptr noundef %i.i) #28, !inline_history !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !149  ; 3 uses
  %i.m = icmp ult i64 %i.l, 96
  br i1 %i.m, label %decrease_cache_usage.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = add i64 %i.l, -96                        ; 2 uses
  store i64 %i.n, ptr %i.k, align 8, !tbaa !149
  br label %decrease_cache_usage.exit

decrease_cache_usage.exit:                        ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.l, %bb.a ], [ %i.n, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 84
  %i.q = load i32, ptr %i.p, align 4, !tbaa !170  ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = mul nuw nsw i64 %i.r, 10                 ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  %i.t = icmp ugt i64 %i.s, %i.o
  %or.cond = select i1 %.not, i1 true, i1 %i.t
  br i1 %or.cond, label %decrease_cache_usage.exit10, label %bb.c

bb.c:                                             ; preds = %decrease_cache_usage.exit
  %i.u = sub nuw i64 %i.o, %i.s
  store i64 %i.u, ptr %i.k, align 8, !tbaa !149
  br label %decrease_cache_usage.exit10

decrease_cache_usage.exit10:                      ; preds = %decrease_cache_usage.exit, %bb.c
  store ptr null, ptr %i.h, align 8, !tbaa !168
  %i.v = load i32, ptr %i.c, align 4, !tbaa !164
  %i.w = add i32 %i.v, -1
  store i32 %i.w, ptr %i.c, align 4, !tbaa !164
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define internal void @chunk_undo(ptr nofree noundef captures(address_is_null) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !178
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2424 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !177
  %i.e = add i32 %i.d, -1
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !182
  %i.j = getelementptr i8, ptr %0, i64 184
  %.val = load ptr, ptr %i.j, align 8, !tbaa !145
  tail call void %.val(ptr noundef %i.i) #28, !inline_history !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !181  ; 3 uses
  %i.m = icmp eq ptr %0, null
  %i.n = icmp eq i64 %i.l, 0
  %or.cond.i.not16 = or i1 %i.m, %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !149  ; 3 uses
  %i.q = icmp ugt i64 %i.l, %i.p
  %or.cond = select i1 %or.cond.i.not16, i1 true, i1 %i.q
  br i1 %or.cond, label %decrease_cache_usage.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = sub nuw i64 %i.p, %i.l                   ; 2 uses
  store i64 %i.r, ptr %i.o, align 8, !tbaa !149
  br label %decrease_cache_usage.exit

decrease_cache_usage.exit:                        ; preds = %bb.a, %bb.b
  %i.s = phi i64 [ %i.p, %bb.a ], [ %i.r, %bb.b ] ; 2 uses
  %i.t = icmp ult i64 %i.s, 32
  br i1 %i.t, label %decrease_cache_usage.exit11, label %bb.c

bb.c:                                             ; preds = %decrease_cache_usage.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.v = add i64 %i.s, -32
  store i64 %i.v, ptr %i.u, align 8, !tbaa !149
  br label %decrease_cache_usage.exit11

decrease_cache_usage.exit11:                      ; preds = %decrease_cache_usage.exit, %bb.c
  store ptr null, ptr %i.h, align 8, !tbaa !182
  %i.w = load i32, ptr %i.c, align 8, !tbaa !177
  %i.x = add i32 %i.w, -1
  store i32 %i.x, ptr %i.c, align 8, !tbaa !177
  ret void
}

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal ptr @spng__zalloc(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) #3 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = zext i32 %2 to i64
  %i.c = mul nuw i64 %i.b, %i.a
  %i.d = getelementptr i8, ptr %0, i64 160
  %.val = load ptr, ptr %i.d, align 8, !tbaa !143
  %i.e = tail call ptr %.val(i64 noundef %i.c) #28, !inline_history !6
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal void @spng__zfree(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 184
  %.val = load ptr, ptr %i.a, align 8, !tbaa !145
  tail call void %.val(ptr noundef %1) #28, !inline_history !9
  ret void
}

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare i32 @inflateValidate(ptr noundef, i32 noundef) local_unnamed_addr #12

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2, 84) i32 @finish_chunk(ptr noundef nonnull %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.b = load i16, ptr %i.a, align 4
  %i.c = and i16 %i.b, 1
  %.not = icmp eq i16 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %.051.in = select i1 %.not, ptr %i.e, ptr %i.d
  %.051 = load ptr, ptr %.051.in, align 8, !tbaa !91 ; 3 uses
  %.050 = getelementptr inbounds nuw i8, ptr %.051, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !107
  %1 = tail call i32 @llvm.bswap.i32(i32 %i.g)
  store i32 %1, ptr %.051, align 1, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %.051, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.j = load i32, ptr %i.i, align 4
  store i32 %i.j, ptr %i.h, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !423
  %i.m = zext i32 %i.l to i64
  %i.n = load i32, ptr %i.f, align 8, !tbaa !107
  %i.o = tail call i64 @crc32(i64 noundef %i.m, ptr noundef nonnull %.050, i32 noundef %i.n) #28 ; 5 uses
  %i.p = trunc i64 %i.o to i32
  store i32 %i.p, ptr %i.k, align 8, !tbaa !423
  %i.q = load i32, ptr %i.f, align 8, !tbaa !107
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.050, i64 %i.r ; 4 uses
  %i.t = lshr i64 %i.o, 24
  %i.u = trunc i64 %i.t to i8
  store i8 %i.u, ptr %i.s, align 1, !tbaa !51
  %i.v = lshr i64 %i.o, 16
  %i.w = trunc i64 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 %i.w, ptr %i.x, align 1, !tbaa !51
  %i.y = lshr i64 %i.o, 8
  %i.z = trunc i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !51
  %i.ab = trunc i64 %i.o to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !51
  %i.ad = load i16, ptr %i.a, align 4
  %i.ae = and i16 %i.ad, 1
  %.not57 = icmp eq i16 %i.ae, 0
  %i.af = load i32, ptr %i.f, align 8, !tbaa !107 ; 3 uses
  br i1 %.not57, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = add i32 %i.af, 12                       ; 2 uses
  %.not5866 = icmp eq i32 %i.ag, 0
  br i1 %.not5866, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !99
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.an = getelementptr i8, ptr %0, i64 168
  br label %bb.d

bb.c:                                             ; preds = %.thread.i
  %i.ao = sub nuw i32 %.04768, %spec.select       ; 2 uses
  %.not58 = icmp eq i32 %i.ao, 0
  br i1 %.not58, label %.thread, label %bb.d, !llvm.loop !420

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.04569 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.c ]
  %.04768 = phi i32 [ %i.ag, %.lr.ph ], [ %i.ao, %bb.c ] ; 2 uses
  %.04967 = phi ptr [ %i.ah, %.lr.ph ], [ %i.aq, %bb.c ]
  %i.ap = zext nneg i32 %.04569 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.04967, i64 %i.ap ; 3 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.04768, i32 8192) ; 3 uses
  %i.ar = zext nneg i32 %spec.select to i64       ; 7 uses
  %i.as = load i16, ptr %i.a, align 4             ; 2 uses
  %i.at = and i16 %i.as, 1
  %.not.i = icmp eq i16 %i.at, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = load ptr, ptr %i.ai, align 8, !tbaa !201
  %i.av = load ptr, ptr %i.aj, align 8, !tbaa !98
  %i.aw = tail call i32 %i.au(ptr noundef nonnull %0, ptr noundef %i.av, ptr noundef %i.aq, i64 noundef range(i64 1, 8193) %i.ar) #28, !inline_history !421 ; 2 uses
  %.not38.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not38.not.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.aw, i32 -2)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.ax, align 8, !tbaa !50
  br label %.thread

bb.g:                                             ; preds = %bb.d
  %i.ay = and i16 %i.as, 2
  %.not61.i.i = icmp eq i16 %i.ay, 0
  br i1 %.not61.i.i, label %.thread64.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = load i64, ptr %i.ak, align 8, !tbaa !202
  %i.ba = add i64 %i.az, %i.ar                    ; 3 uses
  %i.bb = icmp ult i64 %i.ba, %i.ar
  br i1 %i.bb, label %.thread64.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = load i64, ptr %i.al, align 8, !tbaa !203 ; 2 uses
  %i.bd = icmp ugt i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.j, label %..thread46_crit_edge.i

..thread46_crit_edge.i:                           ; preds = %bb.i
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !204
  br label %.thread46.i

bb.j:                                             ; preds = %bb.i
  %spec.store.select1.i.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 16384)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.0.i.i = phi i64 [ %spec.store.select1.i.i, %bb.j ], [ %i.bf, %bb.k ] ; 4 uses
  %i.be = icmp ult i64 %.0.i.i, %i.ba
  %i.bf = shl i64 %.0.i.i, 1
  br i1 %i.be, label %bb.k, label %bb.l, !llvm.loop !7

bb.l:                                             ; preds = %bb.k
  %i.bg = load ptr, ptr %i.am, align 8, !tbaa !205
  %.val.i.i = load ptr, ptr %i.an, align 8, !tbaa !153
  %i.bh = tail call ptr %.val.i.i(ptr noundef %i.bg, i64 noundef %.0.i.i) #28, !inline_history !422 ; 3 uses
  %.not62.i.i = icmp eq ptr %i.bh, null
  br i1 %.not62.i.i, label %.thread64.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.bh, ptr %i.am, align 8, !tbaa !205
  store i64 %.0.i.i, ptr %i.al, align 8, !tbaa !203
  %i.bi = load i64, ptr %i.ak, align 8, !tbaa !202
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi ; 2 uses
  store ptr %i.bj, ptr %i.e, align 8, !tbaa !204
  br label %.thread46.i

.thread46.i:                                      ; preds = %bb.m, %..thread46_crit_edge.i
  %i.bk = phi ptr [ %.pre.i, %..thread46_crit_edge.i ], [ %i.bj, %bb.m ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, i64 range(i64 1, 8193) %i.ar, i1 false)
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !204
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ar
  store ptr %i.bm, ptr %i.e, align 8, !tbaa !204
  br label %.thread.i

.thread64.i.i:                                    ; preds = %bb.l, %bb.h, %bb.g
  %.4.i.ph.i = phi i32 [ 83, %bb.g ], [ 3, %bb.h ], [ 2, %bb.l ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.bn, align 8, !tbaa !50
  br label %.thread

.thread.i:                                        ; preds = %.thread46.i, %bb.e
  %i.bo = load i64, ptr %i.ak, align 8, !tbaa !202
  %i.bp = add i64 %i.bo, %i.ar                    ; 2 uses
  store i64 %i.bp, ptr %i.ak, align 8, !tbaa !202
  %i.bq = icmp ult i64 %i.bp, %i.ar
  br i1 %i.bq, label %.thread, label %bb.c

bb.n:                                             ; preds = %bb.a
  %i.br = zext i32 %i.af to i64                   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !202
  %i.bu = add i64 %i.bt, %i.br                    ; 4 uses
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !202
  %i.bv = icmp ult i64 %i.bu, %i.br
  br i1 %i.bv, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = add i64 %i.bu, 12
  store i64 %i.bw, ptr %i.bs, align 8, !tbaa !202
  %i.bx = icmp ugt i64 %i.bu, -13
  br i1 %i.bx, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = add i32 %i.af, 12
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !204
  %i.ca = zext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  store ptr %i.cb, ptr %i.e, align 8, !tbaa !204
  br label %.thread

.thread:                                          ; preds = %bb.c, %.thread.i, %bb.b, %bb.p, %bb.f, %.thread64.i.i, %bb.n, %bb.o
  %.3 = phi i32 [ %.4.i.ph.i, %.thread64.i.i ], [ 3, %bb.o ], [ 3, %bb.n ], [ 0, %bb.p ], [ %spec.store.select.i, %bb.f ], [ 0, %bb.b ], [ 0, %bb.c ], [ 3, %.thread.i ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2, 84) i32 @write_chunk(ptr noundef nonnull %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i64 %3, 0                        ; 2 uses
  %i.d = icmp eq ptr %2, null
  %or.cond3 = and i1 %i.d, %i.c
  br i1 %or.cond3, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.e = call fastcc i32 @write_header(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %3, ptr noundef %i.a) ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !91
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %2, i64 %3, i1 false)
  br label %bb.f
end_hunk_2
