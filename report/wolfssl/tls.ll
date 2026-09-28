Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/tls?download=true
inline.NumInlined: 365
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@TLS_hmac:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.x = load i8, ptr %i.w, align 1, !tbaa !84
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 %i.x, ptr %i.y, align 1, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.aa = lshr i32 %3, 8
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %i.z, align 1, !tbaa !63
  %i.ac = trunc i32 %3 to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !60
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1364
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !61
  %i.ai = call i32 @wc_HmacInit(ptr noundef nonnull %8, ptr noundef %i.af, i32 noundef %i.ah) #15 ; 2 uses
  %.not78 = icmp eq i32 %i.ai, 0
  br i1 %.not78, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.aj = call ptr @wolfSSL_GetMacSecret(ptr noundef nonnull %0, i32 noundef %6) #15
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !82
  %switch.tableidx = add i8 %i.al, -2             ; 2 uses
  %i.am = icmp ult i8 %switch.tableidx, 4
  br i1 %i.am, label %switch.lookup, label %wolfSSL_GetHmacType.exit

switch.lookup:                                    ; preds = %bb.h
  %i.an = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.TLS_hmac, i64 %i.an
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %wolfSSL_GetHmacType.exit

wolfSSL_GetHmacType.exit:                         ; preds = %bb.h, %switch.lookup
  %.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -1, %bb.h ]
  %i.ao = load i8, ptr %i.c, align 1, !tbaa !76
  %i.ap = zext i8 %i.ao to i32
  %i.aq = call i32 @wc_HmacSetKey(ptr noundef nonnull %8, i32 noundef %.0.i, ptr noundef %i.aj, i32 noundef %i.ap) #15 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %.thread

bb.i:                                             ; preds = %wolfSSL_GetHmacType.exit
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = call fastcc i32 @Hmac_UpdateFinal_CT(ptr noundef %8, ptr noundef %1, ptr noundef %2, i32 noundef %.150, i32 noundef %i.e, ptr noundef %i.a, i32 noundef 13)
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.at = call i32 @wc_HmacUpdate(ptr noundef nonnull %8, ptr noundef nonnull %i.a, i32 noundef 13) #15 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.av = call i32 @wc_HmacUpdate(ptr noundef nonnull %8, ptr noundef %2, i32 noundef %3) #15 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ax = call i32 @wc_HmacFinal(ptr noundef nonnull %8, ptr noundef %1) #15
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.j, %bb.m, %bb.l, %wolfSSL_GetHmacType.exit
  %.152 = phi i32 [ %i.as, %bb.j ], [ %i.ax, %bb.m ], [ %i.av, %bb.l ], [ %i.aq, %wolfSSL_GetHmacType.exit ], [ %i.at, %bb.k ]
  call void @wc_HmacFree(ptr noundef nonnull %8) #15
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.f, %bb.g, %bb.a, %.thread
  %.154 = phi i32 [ %i.ai, %bb.g ], [ -173, %bb.a ], [ -173, %bb.f ], [ %.152, %.thread ], [ -132, %bb.d ], [ -132, %bb.c ], [ -132, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret i32 %.154
}

declare i32 @wc_HmacInit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @wolfSSL_GetMacSecret(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_HmacSetKey(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Hmac_UpdateFinal_CT(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 256) %4, ptr noundef nonnull %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %7 = alloca [1 x %struct.wc_HashAlg], align 16  ; 7 uses
  %i.a = alloca [8 x i8], align 1                 ; 11 uses
  %i.b = alloca [144 x i8], align 16              ; 15 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.e = add nsw i32 %4, -65
  %or.cond = icmp ult i32 %i.e, -64
  br i1 %or.cond, label %Hmac_HashUpdate.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 6 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !156   ; 2 uses
  %switch.tableidx = add i8 %i.g, -4              ; 5 uses
  %i.h = icmp ult i8 %switch.tableidx, 5
  %switch.shifted = lshr i8 29, %switch.tableidx
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond215 = select i1 %i.h, i1 %switch.lobit, i1 false
  br i1 %or.cond215, label %switch.lookup, label %Hmac_HashUpdate.exit.thread

switch.lookup:                                    ; preds = %bb.b
  %i.i = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.Hmac_UpdateFinal_CT, i64 %i.i
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 3 uses
  %i.j = zext nneg i8 %switch.tableidx to i64
  %switch.gep209 = getelementptr inbounds nuw i8, ptr @switch.table.Hmac_UpdateFinal_CT.30, i64 %i.j
  %switch.load210 = load i8, ptr %switch.gep209, align 1 ; 2 uses
  %switch.ext211 = zext i8 %switch.load210 to i32 ; 14 uses
  %i.k = zext nneg i8 %switch.tableidx to i64
  %switch.gep212 = getelementptr inbounds nuw i8, ptr @switch.table.Hmac_UpdateFinal_CT.31, i64 %i.k
  %switch.load213 = load i8, ptr %switch.gep212, align 1
  %switch.ext214 = zext i8 %switch.load213 to i32 ; 3 uses
  %i.l = add nsw i32 %switch.ext211, -1           ; 4 uses
  %i.m = add i32 %3, 12
  %i.n = sub i32 %i.m, %4                         ; 4 uses
  %i.o = add nsw i32 %i.n, %switch.ext214
  %i.p = and i32 %i.o, %i.l
  %i.q = xor i32 %switch.ext214, -1
  %i.r = add nsw i32 %i.p, %i.q
  %i.s = lshr i32 %i.r, 31
  %i.t = add i32 %i.l, %i.n
  %i.u = ashr i32 %i.t, %switch.ext
  %i.v = add nsw i32 %i.s, %i.u                   ; 4 uses
  %i.w = add nsw i32 %i.v, -6                     ; 2 uses
  %i.x = add i32 %3, -1
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !63
  %i.ab = zext i8 %i.aa to i32
  %i.ac = sub i32 %i.n, %i.ab                     ; 4 uses
  %i.ad = and i32 %i.ac, %i.l                     ; 3 uses
  %i.ae = shl nuw nsw i32 %switch.ext211, 1
  %i.af = add nuw nsw i32 %i.ad, %switch.ext214
  %i.ag = sub nsw i32 %i.ae, %i.af
  %i.ah = and i32 %i.ag, %i.l
  %i.ai = add i32 %i.ac, 1
  %i.aj = add i32 %i.ai, %i.ah
  %i.ak = ashr i32 %i.aj, %switch.ext             ; 2 uses
  %i.al = lshr i32 %i.ac, %switch.ext             ; 2 uses
  %i.am = add i32 %i.ac, %switch.ext211           ; 2 uses
  %i.an = lshr i32 %i.am, 29
  store i8 0, ptr %i.a, align 1, !tbaa !63
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.ao, align 1, !tbaa !63
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.ap, align 1, !tbaa !63
  %i.aq = trunc nuw nsw i32 %i.an to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !63
  %i.as = shl i32 %i.am, 3                        ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.au = lshr i32 %i.as, 24
  %i.av = trunc nuw i32 %i.au to i8
  store i8 %i.av, ptr %i.at, align 1, !tbaa !63
  %i.aw = lshr i32 %i.as, 16
  %i.ax = trunc i32 %i.aw to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !63
  %i.az = lshr i32 %i.as, 8
  %i.ba = trunc i32 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !63
  %i.bc = trunc i32 %i.as to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !63
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 4 uses
  switch i8 %i.g, label %Hmac_HashUpdate.exit.thread [
    i8 4, label %bb.c
    i8 6, label %bb.d
    i8 7, label %bb.e
    i8 8, label %bb.f
  ]

bb.c:                                             ; preds = %switch.lookup
  %i.bf = tail call i32 @wc_ShaUpdate(ptr noundef nonnull %0, ptr noundef nonnull %i.be, i32 noundef %switch.ext211) #15
  br label %Hmac_HashUpdate.exit

bb.d:                                             ; preds = %switch.lookup
  %i.bg = tail call i32 @wc_Sha256Update(ptr noundef nonnull %0, ptr noundef nonnull %i.be, i32 noundef %switch.ext211) #15
  br label %Hmac_HashUpdate.exit

bb.e:                                             ; preds = %switch.lookup
  %i.bh = tail call i32 @wc_Sha384Update(ptr noundef nonnull %0, ptr noundef nonnull %i.be, i32 noundef %switch.ext211) #15
  br label %Hmac_HashUpdate.exit

bb.f:                                             ; preds = %switch.lookup
  %i.bi = tail call i32 @wc_Sha512Update(ptr noundef nonnull %0, ptr noundef nonnull %i.be, i32 noundef %switch.ext211) #15
  br label %Hmac_HashUpdate.exit

Hmac_HashUpdate.exit:                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.bi, %bb.f ], [ %i.bf, %bb.c ], [ %i.bg, %bb.d ], [ %i.bh, %bb.e ] ; 2 uses
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.g, label %Hmac_HashUpdate.exit.thread

bb.g:                                             ; preds = %Hmac_HashUpdate.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 5 uses
  %i.bk = zext nneg i32 %4 to i64                 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.bj, i8 0, i64 %i.bk, i1 false)
  %i.bl = icmp sgt i32 %i.v, 6
  br i1 %i.bl, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.bm = load i8, ptr %i.f, align 8, !tbaa !156
  switch i8 %i.bm, label %Hmac_HashUpdate.exit.thread [
    i8 4, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.k
    i8 8, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.bn = tail call i32 @wc_ShaUpdate(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %6) #15
  br label %Hmac_HashUpdate.exit147

bb.j:                                             ; preds = %bb.h
  %i.bo = tail call i32 @wc_Sha256Update(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %6) #15
  br label %Hmac_HashUpdate.exit147

bb.k:                                             ; preds = %bb.h
  %i.bp = tail call i32 @wc_Sha384Update(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %6) #15
  br label %Hmac_HashUpdate.exit147

bb.l:                                             ; preds = %bb.h
  %i.bq = tail call i32 @wc_Sha512Update(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %6) #15
  br label %Hmac_HashUpdate.exit147

Hmac_HashUpdate.exit147:                          ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i146 = phi i32 [ %i.bq, %bb.l ], [ %i.bn, %bb.i ], [ %i.bo, %bb.j ], [ %i.bp, %bb.k ] ; 2 uses
  %.not141 = icmp eq i32 %.0.i146, 0
  br i1 %.not141, label %bb.m, label %Hmac_HashUpdate.exit.thread

bb.m:                                             ; preds = %Hmac_HashUpdate.exit147
  %i.br = mul nuw nsw i32 %i.w, %switch.ext211
  %i.bs = add nsw i32 %i.br, -13                  ; 4 uses
  %i.bt = load i8, ptr %i.f, align 8, !tbaa !156
  switch i8 %i.bt, label %Hmac_HashUpdate.exit.thread [
    i8 4, label %bb.n
    i8 6, label %bb.o
    i8 7, label %bb.p
    i8 8, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.bu = tail call i32 @wc_ShaUpdate(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.bs) #15
  br label %Hmac_HashUpdate.exit149

bb.o:                                             ; preds = %bb.m
  %i.bv = tail call i32 @wc_Sha256Update(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.bs) #15
  br label %Hmac_HashUpdate.exit149

bb.p:                                             ; preds = %bb.m
  %i.bw = tail call i32 @wc_Sha384Update(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.bs) #15
  br label %Hmac_HashUpdate.exit149

bb.q:                                             ; preds = %bb.m
  %i.bx = tail call i32 @wc_Sha512Update(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %i.bs) #15
  br label %Hmac_HashUpdate.exit149

Hmac_HashUpdate.exit149:                          ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i148 = phi i32 [ %i.bx, %bb.q ], [ %i.bu, %bb.n ], [ %i.bv, %bb.o ], [ %i.bw, %bb.p ] ; 2 uses
  %.not142 = icmp eq i32 %.0.i148, 0
  br i1 %.not142, label %.thread192, label %Hmac_HashUpdate.exit.thread

.thread192:                                       ; preds = %Hmac_HashUpdate.exit149
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.bk, i1 false)
  br label %.lr.ph175

bb.r:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %i.bk, i1 false)
  %i.by = icmp sgt i32 %i.v, 0
  br i1 %i.by, label %.lr.ph175, label %._crit_edge176

.lr.ph175:                                        ; preds = %.thread192, %bb.r
  %.0123194 = phi i32 [ %i.w, %.thread192 ], [ 0, %bb.r ] ; 2 uses
  %i.bz = mul nuw nsw i32 %.0123194, %switch.ext211
  %i.ca = xor i32 %i.al, -1
  %i.cb = xor i32 %i.ak, -1
  %i.cc = xor i32 %i.ad, -1
  %i.cd = add nsw i32 %switch.ext211, -8          ; 2 uses
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = zext nneg i32 %i.cd to i64
  %wide.trip.count = zext i8 %switch.load210 to i64
  %wide.trip.count182 = zext nneg i32 %4 to i64   ; 6 uses
  %min.iters.check = icmp samesign ult i32 %4, 4
  %min.iters.check197 = icmp samesign ult i32 %4, 32
  %i.cg = and i64 %wide.trip.count182, 28
  %n.vec = and i64 %wide.trip.count182, 96        ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count182
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  %n.vec201 = and i64 %wide.trip.count182, 124    ; 3 uses
  %cmp.n208 = icmp eq i64 %n.vec201, %wide.trip.count182
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph175, %._crit_edge
  %.0125173 = phi i32 [ %i.bz, %.lr.ph175 ], [ %i.di, %._crit_edge ]
  %.0129172 = phi i32 [ %.0123194, %.lr.ph175 ], [ %i.ex, %._crit_edge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ch = add i32 %.0129172, %i.ca
  %i.ci = xor i32 %.0129172, -1                   ; 2 uses
  %i.cj = add i32 %i.al, %i.ci
  %.neg7.i = and i32 %i.ch, %i.cj                 ; 2 uses
  %i.ck = ashr i32 %.neg7.i, 31
  %i.cl = trunc nsw i32 %i.ck to i8               ; 2 uses
  %i.cm = add i32 %.0129172, %i.cb
  %i.cn = add i32 %i.ak, %i.ci
  %.neg7.i150 = and i32 %i.cm, %i.cn              ; 2 uses
  %i.co = ashr i32 %.neg7.i150, 31
  %i.cp = trunc nsw i32 %i.co to i8               ; 4 uses
  %i.cq = xor i8 %i.cp, -1
  %i.cr = or i8 %i.cl, %i.cq
  %i.cs = icmp slt i32 %.neg7.i150, 0
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.y
  %indvars.iv = phi i64 [ 0, %bb.s ], [ %indvars.iv.next, %bb.y ] ; 5 uses
  %.1126170 = phi i32 [ %.0125173, %bb.s ], [ %i.di, %bb.y ] ; 5 uses
  %i.ct = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.cu = add i32 %i.ct, %i.cc                    ; 2 uses
  %i.cv = xor i32 %i.ct, -1
  %i.cw = add i32 %i.ad, %i.cv
  %.neg7.i151 = and i32 %i.cw, %.neg7.i
  %i.cx = and i32 %.neg7.i151, %i.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cy = lshr i32 %i.cu, 31
  %i.cz = trunc nuw nsw i32 %i.cy to i8
  %i.da = add nsw i8 %i.cz, -1
  store volatile i8 %i.da, ptr %i.c, align 1, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.0..0..0..0.6 = load volatile i8, ptr %i.c, align 1, !tbaa !63
  %i.db = and i8 %.0..0..0..0.6, %i.cl
  store volatile i8 %i.db, ptr %i.d, align 1, !tbaa !63
  %i.dc = icmp ult i32 %.1126170, %6
  br i1 %i.dc, label %.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dd = icmp ult i32 %.1126170, %i.n
  br i1 %i.dd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.de = sub nuw i32 %.1126170, %6
  br label %.sink.split

.sink.split:                                      ; preds = %bb.t, %bb.v
  %.sink = phi i32 [ %i.de, %bb.v ], [ %.1126170, %bb.t ]
  %.sink195 = phi ptr [ %2, %bb.v ], [ %5, %bb.t ]
  %i.df = zext i32 %.sink to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %.sink195, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !63
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.u
  %.0 = phi i8 [ 0, %bb.u ], [ %i.dh, %.sink.split ]
  %i.di = add i32 %.1126170, 1                    ; 2 uses
  %i.dj = icmp slt i32 %i.cx, 0
  %i.dk = select i1 %i.dj, i8 -128, i8 %.0
  %.0..0..0..0. = load volatile i8, ptr %i.d, align 1, !tbaa !63
  %i.dl = xor i8 %.0..0..0..0., -1
  %i.dm = and i8 %i.dk, %i.dl                     ; 2 uses
  %i.dn = and i8 %i.dm, %i.cr
  %.not145 = icmp samesign ult i64 %indvars.iv, %i.cf
  br i1 %.not145, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = sub nsw i64 %indvars.iv, %i.ce
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !63
  %i.dr = select i1 %i.cs, i8 %i.dq, i8 %i.dm
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1 = phi i8 [ %i.dr, %bb.x ], [ %i.dn, %bb.w ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %.1, ptr %i.ds, align 1, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.z, label %bb.t, !llvm.loop !150

bb.z:                                             ; preds = %bb.y
  %i.dt = load i8, ptr %i.f, align 8, !tbaa !156
  switch i8 %i.dt, label %.thread [
    i8 4, label %bb.aa
    i8 6, label %bb.ab
    i8 7, label %bb.ac
    i8 8, label %bb.ad
  ]

bb.aa:                                            ; preds = %bb.z
  %i.du = call i32 @wc_ShaUpdate(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %switch.ext211) #15
  br label %Hmac_HashUpdate.exit153

bb.ab:                                            ; preds = %bb.z
  %i.dv = call i32 @wc_Sha256Update(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %switch.ext211) #15
  br label %Hmac_HashUpdate.exit153

bb.ac:                                            ; preds = %bb.z
  %i.dw = call i32 @wc_Sha384Update(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %switch.ext211) #15
  br label %Hmac_HashUpdate.exit153

bb.ad:                                            ; preds = %bb.z
  %i.dx = call i32 @wc_Sha512Update(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %switch.ext211) #15
  br label %Hmac_HashUpdate.exit153

Hmac_HashUpdate.exit153:                          ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.0.i152 = phi i32 [ %i.dx, %bb.ad ], [ %i.du, %bb.aa ], [ %i.dv, %bb.ab ], [ %i.dw, %bb.ac ] ; 2 uses
  %.not143 = icmp eq i32 %.0.i152, 0
  br i1 %.not143, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %Hmac_HashUpdate.exit153
  %i.dy = load i8, ptr %i.f, align 8, !tbaa !156
  switch i8 %i.dy, label %.thread [
    i8 4, label %bb.af
    i8 6, label %bb.ag
    i8 7, label %bb.ah
    i8 8, label %bb.ai
  ]

bb.af:                                            ; preds = %bb.ae
  %i.dz = call i32 @wc_ShaFinalRaw(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #15
  br label %Hmac_HashFinalRaw.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ea = call i32 @wc_Sha256FinalRaw(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #15
  br label %Hmac_HashFinalRaw.exit

bb.ah:                                            ; preds = %bb.ae
  %i.eb = call i32 @wc_Sha384FinalRaw(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #15
  br label %Hmac_HashFinalRaw.exit

bb.ai:                                            ; preds = %bb.ae
  %i.ec = call i32 @wc_Sha512FinalRaw(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #15
  br label %Hmac_HashFinalRaw.exit

Hmac_HashFinalRaw.exit:                           ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.0.i154 = phi i32 [ %i.ec, %bb.ai ], [ %i.dz, %bb.af ], [ %i.ea, %bb.ag ], [ %i.eb, %bb.ah ] ; 2 uses
  %.not144 = icmp eq i32 %.0.i154, 0
  br i1 %.not144, label %iter.check, label %.thread

iter.check:                                       ; preds = %Hmac_HashFinalRaw.exit
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check197, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.cp, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load = load <16 x i8>, ptr %i.ed, align 16, !tbaa !63
  %wide.load198 = load <16 x i8>, ptr %i.ee, align 16, !tbaa !63
  %i.ef = and <16 x i8> %wide.load, %broadcast.splat
  %i.eg = and <16 x i8> %wide.load198, %broadcast.splat
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %wide.load199 = load <16 x i8>, ptr %i.eh, align 1, !tbaa !63
  %wide.load200 = load <16 x i8>, ptr %i.ei, align 1, !tbaa !63
  %i.ej = or <16 x i8> %wide.load199, %i.ef
  %i.ek = or <16 x i8> %wide.load200, %i.eg
  store <16 x i8> %i.ej, ptr %i.eh, align 1, !tbaa !63
  store <16 x i8> %i.ek, ptr %i.ei, align 1, !tbaa !63
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !157

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert202 = insertelement <4 x i8> poison, i8 %i.cp, i64 0
  %broadcast.splat203 = shufflevector <4 x i8> %broadcast.splatinsert202, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index204 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next207, %vec.epilog.vector.body ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 %index204
  %wide.load205 = load <4 x i8>, ptr %i.em, align 4, !tbaa !63
  %i.en = and <4 x i8> %wide.load205, %broadcast.splat203
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index204 ; 2 uses
  %wide.load206 = load <4 x i8>, ptr %i.eo, align 1, !tbaa !63
  %i.ep = or <4 x i8> %wide.load206, %i.en
  store <4 x i8> %i.ep, ptr %i.eo, align 1, !tbaa !63
  %index.next207 = add nuw i64 %index204, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next207, %n.vec201
  br i1 %i.eq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !152

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n208, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv179.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec201, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %.lr.ph ], [ %indvars.iv179.ph, %.lr.ph.preheader ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv179
  %i.es = load i8, ptr %i.er, align 1, !tbaa !63
  %i.et = and i8 %i.es, %i.cp
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv179 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !63
  %i.ew = or i8 %i.ev, %i.et
  store i8 %i.ew, ptr %i.eu, align 1, !tbaa !63
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count182
  br i1 %exitcond183.not, label %._crit_edge, label %.lr.ph, !llvm.loop !153

.thread:                                          ; preds = %Hmac_HashFinalRaw.exit, %Hmac_HashUpdate.exit153, %bb.z, %bb.ae
  %.1131.ph = phi i32 [ -173, %bb.z ], [ %.0.i154, %Hmac_HashFinalRaw.exit ], [ %.0.i152, %Hmac_HashUpdate.exit153 ], [ -173, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %Hmac_HashUpdate.exit.thread

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.ex = add nuw nsw i32 %.0129172, 1            ; 2 uses
  %i.ey = icmp slt i32 %i.ex, %i.v
  br i1 %i.ey, label %bb.s, label %._crit_edge176, !llvm.loop !154

._crit_edge176:                                   ; preds = %._crit_edge, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.ez = load i8, ptr %i.f, align 8, !tbaa !156
  %i.fa = zext i8 %i.ez to i32                    ; 7 uses
  %i.fb = call i32 @wc_HashGetDigestSize(i32 noundef %i.fa) #15 ; 2 uses
  %i.fc = call i32 @wc_HashGetBlockSize(i32 noundef %i.fa) #15 ; 2 uses
  %i.fd = icmp sgt i32 %i.fb, -1
  %i.fe = icmp sgt i32 %i.fc, -1
  %or.cond.i = select i1 %i.fd, i1 %i.fe, i1 false
  br i1 %or.cond.i, label %bb.aj, label %Hmac_OuterHash.exit

bb.aj:                                            ; preds = %._crit_edge176
  %i.ff = call i32 @wc_HashInit(ptr noundef nonnull %7, i32 noundef %i.fa) #15 ; 2 uses
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %bb.ak, label %Hmac_OuterHash.exit

bb.ak:                                            ; preds = %bb.aj
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.fi = call i32 @wc_HashUpdate(ptr noundef nonnull %7, i32 noundef %i.fa, ptr noundef nonnull %i.fh, i32 noundef %i.fc) #15 ; 2 uses
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.al, label %.thread21.i

bb.al:                                            ; preds = %bb.ak
  %i.fk = call i32 @wc_HashUpdate(ptr noundef nonnull %7, i32 noundef %i.fa, ptr noundef nonnull %i.bj, i32 noundef %i.fb) #15 ; 2 uses
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.am, label %.thread21.i

bb.am:                                            ; preds = %bb.al
  %i.fm = call i32 @wc_HashFinal(ptr noundef nonnull %7, i32 noundef %i.fa, ptr noundef %1) #15
  br label %.thread21.i

.thread21.i:                                      ; preds = %bb.am, %bb.al, %bb.ak
  %.2.i = phi i32 [ %i.fm, %bb.am ], [ %i.fk, %bb.al ], [ %i.fi, %bb.ak ]
  %i.fn = call i32 @wc_HashFree(ptr noundef nonnull %7, i32 noundef %i.fa) #15 ; 0 uses
  br label %Hmac_OuterHash.exit

Hmac_OuterHash.exit:                              ; preds = %._crit_edge176, %bb.aj, %.thread21.i
  %.3.i = phi i32 [ %.2.i, %.thread21.i ], [ %i.ff, %bb.aj ], [ -173, %._crit_edge176 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %Hmac_HashUpdate.exit.thread

Hmac_HashUpdate.exit.thread:                      ; preds = %bb.b, %bb.m, %bb.h, %switch.lookup, %.thread, %Hmac_HashUpdate.exit149, %Hmac_HashUpdate.exit147, %Hmac_HashUpdate.exit, %bb.a, %Hmac_OuterHash.exit
  %.2 = phi i32 [ %.3.i, %Hmac_OuterHash.exit ], [ -173, %bb.a ], [ -173, %bb.b ], [ %.0.i, %Hmac_HashUpdate.exit ], [ %.0.i146, %Hmac_HashUpdate.exit147 ], [ %.1131.ph, %.thread ], [ %.0.i148, %Hmac_HashUpdate.exit149 ], [ -173, %bb.h ], [ -173, %switch.lookup ], [ -173, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.2
}

declare i32 @wc_HmacUpdate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_HmacFinal(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @wc_HmacFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -125, 1) i32 @TLSX_Append(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @wolfSSL_Malloc(i64 noundef 32) #15 ; 6 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %TLSX_New.exit.thread, label %TLSX_New.exit

TLSX_New.exit:                                    ; preds = %bb.a
  store i32 %1, ptr %i.a, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 0, ptr %i.c, align 4, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %i.d, align 8, !tbaa !73
  %.01923 = load ptr, ptr %0, align 8, !tbaa !69  ; 2 uses
  %.not24 = icmp eq ptr %.01923, null
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %TLSX_New.exit, %bb.c
  %.01926 = phi ptr [ %.019, %bb.c ], [ %.01923, %TLSX_New.exit ] ; 3 uses
  %.025 = phi ptr [ %.1, %bb.c ], [ %0, %TLSX_New.exit ] ; 2 uses
  %i.e = load i32, ptr %.01926, align 8, !tbaa !71
  %i.f = icmp eq i32 %i.e, %1
  %i.g = getelementptr inbounds nuw i8, ptr %.01926, i64 24 ; 3 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73
  store ptr %i.h, ptr %.025, align 8, !tbaa !69
  store ptr null, ptr %i.g, align 8, !tbaa !73
  tail call void @TLSX_FreeAll(ptr noundef nonnull %.01926, ptr poison)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.1 = phi ptr [ %.025, %bb.b ], [ %i.g, %.lr.ph ] ; 3 uses
  %.019 = load ptr, ptr %.1, align 8, !tbaa !69   ; 2 uses
  %.not = icmp eq ptr %.019, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !158

._crit_edge:                                      ; preds = %bb.c, %TLSX_New.exit
  %.0.lcssa = phi ptr [ %0, %TLSX_New.exit ], [ %.1, %bb.c ]
  store ptr %i.a, ptr %.0.lcssa, align 8, !tbaa !69
  br label %TLSX_New.exit.thread

TLSX_New.exit.thread:                             ; preds = %bb.a, %._crit_edge
  %.021 = phi i32 [ 0, %._crit_edge ], [ -125, %bb.a ]
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define void @TLSX_FreeAll(ptr noundef %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.not27 = icmp eq ptr %0, null
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %TLSX_SNI_FreeAll.exit
  %.028 = phi ptr [ %i.b, %TLSX_SNI_FreeAll.exit ], [ %0, %bb.a ] ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.028, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = load i32, ptr %.028, align 8, !tbaa !71
  switch i32 %i.c, label %TLSX_SNI_FreeAll.exit [
    i32 0, label %bb.b
    i32 51, label %bb.i
    i32 13, label %bb.g
    i32 11, label %bb.f
    i32 10, label %bb.e
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  %.not1.i = icmp eq ptr %i.e, null
  br i1 %.not1.i, label %TLSX_SNI_FreeAll.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %TLSX_SNI_Free.exit.i
  %.02.i = phi ptr [ %i.g, %TLSX_SNI_Free.exit.i ], [ %i.e, %bb.b ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !91   ; 2 uses
  %i.h = load i8, ptr %.02.i, align 8, !tbaa !92
  %cond.i.i = icmp eq i8 %i.h, 0
  br i1 %cond.i.i, label %bb.c, label %TLSX_SNI_Free.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.02.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %TLSX_SNI_Free.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.j) #15
  br label %TLSX_SNI_Free.exit.i

TLSX_SNI_Free.exit.i:                             ; preds = %bb.d, %bb.c, %.lr.ph.i
  tail call void @wolfSSL_Free(ptr noundef nonnull %.02.i) #15
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %TLSX_SNI_FreeAll.exit, label %.lr.ph.i, !llvm.loop !159

bb.e:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87   ; 2 uses
  %.not1.i16 = icmp eq ptr %i.l, null
  br i1 %.not1.i16, label %TLSX_SNI_FreeAll.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.e, %.lr.ph.i17
  %.02.i18 = phi ptr [ %i.n, %.lr.ph.i17 ], [ %i.l, %bb.e ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02.i18, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !95   ; 2 uses
  tail call void @wolfSSL_Free(ptr noundef nonnull %.02.i18) #15
  %.not.i19 = icmp eq ptr %i.n, null
  br i1 %.not.i19, label %TLSX_SNI_FreeAll.exit, label %.lr.ph.i17, !llvm.loop !1

bb.f:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !87   ; 2 uses
  %.not1.i20 = icmp eq ptr %i.p, null
  br i1 %.not1.i20, label %TLSX_SNI_FreeAll.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %bb.f, %.lr.ph.i21
  %.02.i22 = phi ptr [ %i.r, %.lr.ph.i21 ], [ %i.p, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02.i22, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !98   ; 2 uses
  tail call void @wolfSSL_Free(ptr noundef nonnull %.02.i22) #15
  %.not.i23 = icmp eq ptr %i.r, null
  br i1 %.not.i23, label %TLSX_SNI_FreeAll.exit, label %.lr.ph.i21, !llvm.loop !160

bb.g:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !87   ; 2 uses
  %.not.i24 = icmp eq ptr %i.t, null
  br i1 %.not.i24, label %TLSX_SNI_FreeAll.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @wolfSSL_Free(ptr noundef nonnull %i.t) #15
end_hunk_0
