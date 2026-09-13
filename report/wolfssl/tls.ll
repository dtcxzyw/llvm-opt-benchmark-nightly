Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/tls?download=true
inline.NumInlined: 365
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@Hmac_UpdateFinal_CT:bb.a
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
  %i.bk = zext nneg i32 %4 to i64                 ; 9 uses
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
  %min.iters.check = icmp samesign ult i32 %4, 4
  %min.iters.check197 = icmp samesign ult i32 %4, 32
  %i.cg = and i64 %i.bk, 28
  %n.vec = and i64 %i.bk, 96                      ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bk
  %min.epilog.iters.check = icmp eq i64 %i.cg, 0
  %n.vec201 = and i64 %i.bk, 124                  ; 3 uses
  %cmp.n208 = icmp eq i64 %n.vec201, %i.bk
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph175, %._crit_edge
  %.0125173 = phi i32 [ %i.bz, %.lr.ph175 ], [ %i.dg, %._crit_edge ]
  %.0129172 = phi i32 [ %.0123194, %.lr.ph175 ], [ %i.ev, %._crit_edge ] ; 4 uses
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
  %indvars.iv = phi i64 [ 0, %bb.s ], [ %indvars.iv.next, %bb.y ] ; 6 uses
  %.1126170 = phi i32 [ %.0125173, %bb.s ], [ %i.dg, %bb.y ] ; 5 uses
  %i.ct = trunc nuw nsw i64 %indvars.iv to i32
  %8 = xor i32 %i.ct, -1
  %i.cu = add nsw i32 %i.ad, %8
  %.neg7.i151 = and i32 %i.cu, %.neg7.i
  %9 = trunc i64 %indvars.iv to i32
  %10 = add i32 %9, %i.cc                         ; 2 uses
  %i.cv = and i32 %.neg7.i151, %10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cw = lshr i32 %10, 31
  %i.cx = trunc nuw nsw i32 %i.cw to i8
  %i.cy = add nsw i8 %i.cx, -1
  store volatile i8 %i.cy, ptr %i.c, align 1, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.0..0..0..0.6 = load volatile i8, ptr %i.c, align 1, !tbaa !63
  %i.cz = and i8 %.0..0..0..0.6, %i.cl
  store volatile i8 %i.cz, ptr %i.d, align 1, !tbaa !63
  %i.da = icmp ult i32 %.1126170, %6
  br i1 %i.da, label %.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = icmp ult i32 %.1126170, %i.n
  br i1 %i.db, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dc = sub nuw i32 %.1126170, %6
  br label %.sink.split

.sink.split:                                      ; preds = %bb.t, %bb.v
  %.sink = phi i32 [ %i.dc, %bb.v ], [ %.1126170, %bb.t ]
  %.sink195 = phi ptr [ %2, %bb.v ], [ %5, %bb.t ]
  %i.dd = zext i32 %.sink to i64
  %i.de = getelementptr inbounds nuw i8, ptr %.sink195, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !63
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %bb.u
  %.0 = phi i8 [ 0, %bb.u ], [ %i.df, %.sink.split ]
  %i.dg = add i32 %.1126170, 1                    ; 2 uses
  %i.dh = icmp slt i32 %i.cv, 0
  %i.di = select i1 %i.dh, i8 -128, i8 %.0
  %.0..0..0..0. = load volatile i8, ptr %i.d, align 1, !tbaa !63
  %i.dj = xor i8 %.0..0..0..0., -1
  %i.dk = and i8 %i.di, %i.dj                     ; 2 uses
  %i.dl = and i8 %i.dk, %i.cr
  %.not145 = icmp samesign ult i64 %indvars.iv, %i.cf
  br i1 %.not145, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dm = sub nsw i64 %indvars.iv, %i.ce
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !63
  %i.dp = select i1 %i.cs, i8 %i.do, i8 %i.dk
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1 = phi i8 [ %i.dp, %bb.x ], [ %i.dl, %bb.w ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  store i8 %.1, ptr %i.dq, align 1, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.z, label %bb.t, !llvm.loop !150

bb.z:                                             ; preds = %bb.y
  %i.dr = load i8, ptr %i.f, align 8, !tbaa !156
  switch i8 %i.dr, label %.thread [
    i8 4, label %bb.aa
    i8 6, label %bb.ab
    i8 7, label %bb.ac
    i8 8, label %bb.ad
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ds = call i32 @wc_ShaUpdate(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %switch.ext211) #15
  br label %Hmac_HashUpdate.exit153

bb.ab:                                            ; preds = %bb.z
  %i.dt = call i32 @wc_Sha256Update(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %switch.ext211) #15
  br label %Hmac_HashUpdate.exit153

bb.ac:                                            ; preds = %bb.z
  %i.du = call i32 @wc_Sha384Update(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %switch.ext211) #15
  br label %Hmac_HashUpdate.exit153

bb.ad:                                            ; preds = %bb.z
  %i.dv = call i32 @wc_Sha512Update(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef %switch.ext211) #15
  br label %Hmac_HashUpdate.exit153

Hmac_HashUpdate.exit153:                          ; preds = %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.0.i152 = phi i32 [ %i.dv, %bb.ad ], [ %i.ds, %bb.aa ], [ %i.dt, %bb.ab ], [ %i.du, %bb.ac ] ; 2 uses
  %.not143 = icmp eq i32 %.0.i152, 0
  br i1 %.not143, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %Hmac_HashUpdate.exit153
  %i.dw = load i8, ptr %i.f, align 8, !tbaa !156
  switch i8 %i.dw, label %.thread [
    i8 4, label %bb.af
    i8 6, label %bb.ag
    i8 7, label %bb.ah
    i8 8, label %bb.ai
  ]

bb.af:                                            ; preds = %bb.ae
  %i.dx = call i32 @wc_ShaFinalRaw(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #15
  br label %Hmac_HashFinalRaw.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dy = call i32 @wc_Sha256FinalRaw(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #15
  br label %Hmac_HashFinalRaw.exit

bb.ah:                                            ; preds = %bb.ae
  %i.dz = call i32 @wc_Sha384FinalRaw(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #15
  br label %Hmac_HashFinalRaw.exit

bb.ai:                                            ; preds = %bb.ae
  %i.ea = call i32 @wc_Sha512FinalRaw(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #15
  br label %Hmac_HashFinalRaw.exit

Hmac_HashFinalRaw.exit:                           ; preds = %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.0.i154 = phi i32 [ %i.ea, %bb.ai ], [ %i.dx, %bb.af ], [ %i.dy, %bb.ag ], [ %i.dz, %bb.ah ] ; 2 uses
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

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load = load <16 x i8>, ptr %i.eb, align 16, !tbaa !63
  %wide.load198 = load <16 x i8>, ptr %i.ec, align 16, !tbaa !63
  %i.ed = and <16 x i8> %wide.load, %broadcast.splat
  %i.ee = and <16 x i8> %wide.load198, %broadcast.splat
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %wide.load199 = load <16 x i8>, ptr %i.ef, align 1, !tbaa !63
  %wide.load200 = load <16 x i8>, ptr %i.eg, align 1, !tbaa !63
  %i.eh = or <16 x i8> %wide.load199, %i.ed
  %i.ei = or <16 x i8> %wide.load200, %i.ee
  store <16 x i8> %i.eh, ptr %i.ef, align 1, !tbaa !63
  store <16 x i8> %i.ei, ptr %i.eg, align 1, !tbaa !63
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !151

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
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 %index204
  %wide.load205 = load <4 x i8>, ptr %i.ek, align 4, !tbaa !63
  %i.el = and <4 x i8> %wide.load205, %broadcast.splat203
  %i.em = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index204 ; 2 uses
  %wide.load206 = load <4 x i8>, ptr %i.em, align 1, !tbaa !63
  %i.en = or <4 x i8> %wide.load206, %i.el
  store <4 x i8> %i.en, ptr %i.em, align 1, !tbaa !63
  %index.next207 = add nuw i64 %index204, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next207, %n.vec201
  br i1 %i.eo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !152

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n208, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv179.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec201, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv179 = phi i64 [ %indvars.iv.next180, %.lr.ph ], [ %indvars.iv179.ph, %.lr.ph.preheader ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv179
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !63
  %i.er = and i8 %i.eq, %i.cp
  %i.es = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv179 ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !63
  %i.eu = or i8 %i.et, %i.er
  store i8 %i.eu, ptr %i.es, align 1, !tbaa !63
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next180, %i.bk
  br i1 %exitcond183.not, label %._crit_edge, label %.lr.ph, !llvm.loop !153

.thread:                                          ; preds = %Hmac_HashFinalRaw.exit, %Hmac_HashUpdate.exit153, %bb.z, %bb.ae
  %.1131.ph = phi i32 [ -173, %bb.z ], [ %.0.i154, %Hmac_HashFinalRaw.exit ], [ %.0.i152, %Hmac_HashUpdate.exit153 ], [ -173, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %Hmac_HashUpdate.exit.thread

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.ev = add nuw nsw i32 %.0129172, 1            ; 2 uses
  %i.ew = icmp slt i32 %i.ev, %i.v
end_hunk_0
