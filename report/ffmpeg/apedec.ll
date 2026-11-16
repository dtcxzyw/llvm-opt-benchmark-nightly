Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/apedec?download=true
inline.NumInlined: 91
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 30
begin_hunk_0_@predictor_decode_stereo_3930:bb.a
  %.not29 = icmp eq i32 %1, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !79
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.t = phi ptr [ %.promoted, %.lr.ph ], [ %i.dx, %bb.d ] ; 9 uses
  %.in = phi i32 [ %1, %.lr.ph ], [ %i.u, %bb.d ]
  %.031 = phi ptr [ %i.e, %.lr.ph ], [ %i.du, %bb.d ] ; 3 uses
  %.02430 = phi ptr [ %i.c, %.lr.ph ], [ %i.bv, %bb.d ] ; 3 uses
  %i.u = add nsw i32 %.in, -1                     ; 2 uses
  %i.v = load i32, ptr %.031, align 4, !tbaa !59  ; 3 uses
  %i.w = load i32, ptr %.02430, align 4, !tbaa !59 ; 3 uses
  %i.x = load i32, ptr %i.f, align 8, !tbaa !59   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  store i32 %i.x, ptr %i.y, align 4, !tbaa !59
  %i.z = getelementptr i8, ptr %i.t, i64 196
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !59  ; 2 uses
  %i.ab = sub i32 %i.x, %i.aa                     ; 2 uses
  %i.ac = getelementptr i8, ptr %i.t, i64 192
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !59 ; 2 uses
  %i.ae = sub i32 %i.aa, %i.ad                    ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 188
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !59
  %i.ah = sub i32 %i.ad, %i.ag                    ; 2 uses
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !59  ; 2 uses
  %i.aj = mul i32 %i.ai, %i.x
  %i.ak = load i32, ptr %i.h, align 4, !tbaa !59  ; 2 uses
  %i.al = mul i32 %i.ak, %i.ab
  %i.am = add i32 %i.al, %i.aj
  %i.an = load i32, ptr %i.i, align 8, !tbaa !59  ; 2 uses
  %i.ao = mul i32 %i.an, %i.ae
  %i.ap = add i32 %i.am, %i.ao
  %i.aq = load i32, ptr %i.j, align 4, !tbaa !59  ; 2 uses
  %i.ar = mul i32 %i.aq, %i.ah
  %i.as = add i32 %i.ap, %i.ar
  %i.at = ashr i32 %i.as, 9
  %i.au = add nsw i32 %i.at, %i.v                 ; 2 uses
  store i32 %i.au, ptr %i.f, align 8, !tbaa !59
  %i.av = load i32, ptr %i.k, align 8, !tbaa !59
  %i.aw = mul i32 %i.av, 31
  %i.ax = ashr i32 %i.aw, 5
  %i.ay = add nsw i32 %i.au, %i.ax                ; 2 uses
  store i32 %i.ay, ptr %i.k, align 8, !tbaa !59
  %.lobit.i = lshr i32 %i.v, 31
  %i.az = icmp sgt i32 %i.v, 0
  %.neg.i = sext i1 %i.az to i32
  %i.ba = add nsw i32 %.lobit.i, %.neg.i          ; 4 uses
  %i.bb = lshr i32 %i.x, 30
  %i.bc = and i32 %i.bb, 2
  %i.bd = add nsw i32 %i.bc, -1
  %i.be = mul nsw i32 %i.bd, %i.ba
  %i.bf = add i32 %i.ai, %i.be
  store i32 %i.bf, ptr %i.g, align 8, !tbaa !59
  %i.bg = lshr i32 %i.ab, 30
  %i.bh = and i32 %i.bg, 2
  %i.bi = add nsw i32 %i.bh, -1
  %i.bj = mul nsw i32 %i.bi, %i.ba
  %i.bk = add i32 %i.bj, %i.ak
  store i32 %i.bk, ptr %i.h, align 4, !tbaa !59
  %i.bl = lshr i32 %i.ae, 30
  %i.bm = and i32 %i.bl, 2
  %i.bn = add nsw i32 %i.bm, -1
  %i.bo = mul nsw i32 %i.bn, %i.ba
  %i.bp = add i32 %i.bo, %i.an
  store i32 %i.bp, ptr %i.i, align 8, !tbaa !59
  %i.bq = lshr i32 %i.ah, 30
  %i.br = and i32 %i.bq, 2
  %i.bs = add nsw i32 %i.br, -1
  %i.bt = mul nsw i32 %i.bs, %i.ba
  %i.bu = add i32 %i.bt, %i.aq
  store i32 %i.bu, ptr %i.j, align 4, !tbaa !59
  store i32 %i.ay, ptr %.02430, align 4, !tbaa !59
  %i.bv = getelementptr inbounds nuw i8, ptr %.02430, i64 4
  %i.bw = load i32, ptr %i.l, align 4, !tbaa !59  ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !59
  %i.by = getelementptr i8, ptr %i.t, i64 132
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !59 ; 2 uses
  %i.ca = sub i32 %i.bw, %i.bz                    ; 2 uses
  %i.cb = getelementptr i8, ptr %i.t, i64 128
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !59 ; 2 uses
  %i.cd = sub i32 %i.bz, %i.cc                    ; 2 uses
  %i.ce = getelementptr i8, ptr %i.t, i64 124
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !59
  %i.cg = sub i32 %i.cc, %i.cf                    ; 2 uses
  %i.ch = load i32, ptr %i.m, align 8, !tbaa !59  ; 2 uses
  %i.ci = mul i32 %i.ch, %i.bw
  %i.cj = load i32, ptr %i.n, align 4, !tbaa !59  ; 2 uses
  %i.ck = mul i32 %i.cj, %i.ca
  %i.cl = add i32 %i.ck, %i.ci
  %i.cm = load i32, ptr %i.o, align 8, !tbaa !59  ; 2 uses
  %i.cn = mul i32 %i.cm, %i.cd
  %i.co = add i32 %i.cl, %i.cn
  %i.cp = load i32, ptr %i.p, align 4, !tbaa !59  ; 2 uses
  %i.cq = mul i32 %i.cp, %i.cg
  %i.cr = add i32 %i.co, %i.cq
  %i.cs = ashr i32 %i.cr, 9
  %i.ct = add nsw i32 %i.cs, %i.w                 ; 2 uses
  store i32 %i.ct, ptr %i.l, align 4, !tbaa !59
  %i.cu = load i32, ptr %i.q, align 4, !tbaa !59
  %i.cv = mul i32 %i.cu, 31
  %i.cw = ashr i32 %i.cv, 5
  %i.cx = add nsw i32 %i.ct, %i.cw                ; 2 uses
  store i32 %i.cx, ptr %i.q, align 4, !tbaa !59
  %.lobit.i27 = lshr i32 %i.w, 31
  %i.cy = icmp sgt i32 %i.w, 0
  %.neg.i28 = sext i1 %i.cy to i32
  %i.cz = add nsw i32 %.lobit.i27, %.neg.i28      ; 4 uses
  %i.da = lshr i32 %i.bw, 30
  %i.db = and i32 %i.da, 2
  %i.dc = add nsw i32 %i.db, -1
  %i.dd = mul nsw i32 %i.dc, %i.cz
  %i.de = add i32 %i.ch, %i.dd
  store i32 %i.de, ptr %i.m, align 8, !tbaa !59
  %i.df = lshr i32 %i.ca, 30
  %i.dg = and i32 %i.df, 2
  %i.dh = add nsw i32 %i.dg, -1
  %i.di = mul nsw i32 %i.dh, %i.cz
  %i.dj = add i32 %i.di, %i.cj
  store i32 %i.dj, ptr %i.n, align 4, !tbaa !59
  %i.dk = lshr i32 %i.cd, 30
  %i.dl = and i32 %i.dk, 2
  %i.dm = add nsw i32 %i.dl, -1
  %i.dn = mul nsw i32 %i.dm, %i.cz
  %i.do = add i32 %i.dn, %i.cm
  store i32 %i.do, ptr %i.o, align 8, !tbaa !59
  %i.dp = lshr i32 %i.cg, 30
  %i.dq = and i32 %i.dp, 2
  %i.dr = add nsw i32 %i.dq, -1
  %i.ds = mul nsw i32 %i.dr, %i.cz
  %i.dt = add i32 %i.ds, %i.cp
  store i32 %i.dt, ptr %i.p, align 4, !tbaa !59
  store i32 %i.cx, ptr %.031, align 4, !tbaa !59
  %i.du = getelementptr inbounds nuw i8, ptr %.031, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 4 uses
  store ptr %i.dv, ptr %i.a, align 8, !tbaa !79
  %i.dw = icmp eq ptr %i.dv, %i.r
  br i1 %i.dw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.s, ptr noundef nonnull align 4 dereferenceable(200) %i.dv, i64 200, i1 false)
  store ptr %i.s, ptr %i.a, align 8, !tbaa !79
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.dx = phi ptr [ %i.s, %bb.c ], [ %i.dv, %bb.b ]
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !242

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @predictor_decode_mono_3950(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2448 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 2 uses
  tail call fastcc void @ape_apply_filters(ptr noundef %0, ptr noundef %i.c, ptr noundef null, i32 noundef %1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2456 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  %.not60 = icmp eq i32 %1, 0
  br i1 %.not60, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %sext = shl i64 %i.e, 32
  %.pre = ashr exact i64 %sext, 32
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2504 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2512 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2520 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2528 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6744
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2648 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2472 ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !82
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.n = phi ptr [ %.promoted, %.lr.ph ], [ %i.bk, %bb.d ] ; 8 uses
  %.in = phi i32 [ %1, %.lr.ph ], [ %i.o, %bb.d ]
  %.062 = phi i32 [ %i.f, %.lr.ph ], [ %i.am, %bb.d ] ; 2 uses
  %.05361 = phi ptr [ %i.c, %.lr.ph ], [ %i.br, %bb.d ] ; 3 uses
  %i.o = add nsw i32 %.in, -1                     ; 2 uses
  %i.p = load i32, ptr %.05361, align 4, !tbaa !59 ; 3 uses
  %i.q = sext i32 %.062 to i64                    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 400
  store i64 %i.q, ptr %i.r, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 392 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !81
  %i.u = sub i64 %i.q, %i.t                       ; 3 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !81
  %i.v = load i64, ptr %i.g, align 8, !tbaa !81
  %i.w = mul i64 %i.v, %i.q
  %i.x = load i64, ptr %i.h, align 8, !tbaa !81
  %i.y = mul i64 %i.x, %i.u
  %i.z = add i64 %i.y, %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 384
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !81
  %i.ac = load i64, ptr %i.i, align 8, !tbaa !81
  %i.ad = mul i64 %i.ac, %i.ab
  %i.ae = add i64 %i.z, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 376
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !81
  %i.ah = load i64, ptr %i.j, align 8, !tbaa !81
  %i.ai = mul i64 %i.ah, %i.ag
  %i.aj = add i64 %i.ae, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %i.al = ashr i32 %i.ak, 10
  %i.am = add i32 %i.al, %i.p                     ; 2 uses
  %2 = trunc i64 %i.u to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 2 uses
  %3 = insertelement <2 x i32> poison, i32 %2, i64 0
  %4 = insertelement <2 x i32> %3, i32 %.062, i64 1 ; 2 uses
  %5 = lshr <2 x i32> %4, splat (i32 31)
  %6 = icmp sgt <2 x i32> %4, zeroinitializer
  %7 = sext <2 x i1> %6 to <2 x i32>
  %8 = add nsw <2 x i32> %5, %7
  %9 = sext <2 x i32> %8 to <2 x i64>             ; 2 uses
  store <2 x i64> %9, ptr %i.an, align 8, !tbaa !81
  %.lobit.i58 = lshr i32 %i.p, 31
  %i.ao = icmp sgt i32 %i.p, 0
  %.neg.i59 = sext i1 %i.ao to i32
  %i.ap = add nsw i32 %.lobit.i58, %.neg.i59
  %i.aq = sext i32 %i.ap to i64                   ; 4 uses
  %10 = extractelement <2 x i64> %9, i64 1
  %i.ar = mul nsw i64 %10, %i.aq
  %i.as = load i64, ptr %i.g, align 8, !tbaa !81
  %i.at = add i64 %i.as, %i.ar
  store i64 %i.at, ptr %i.g, align 8, !tbaa !81
  %i.au = load i64, ptr %i.an, align 8, !tbaa !81
  %i.av = mul nsw i64 %i.au, %i.aq
  %i.aw = load i64, ptr %i.h, align 8, !tbaa !81
  %i.ax = add i64 %i.aw, %i.av
  store i64 %i.ax, ptr %i.h, align 8, !tbaa !81
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !81
  %i.ba = mul nsw i64 %i.az, %i.aq
  %i.bb = load i64, ptr %i.i, align 8, !tbaa !81
  %i.bc = add i64 %i.bb, %i.ba
  store i64 %i.bc, ptr %i.i, align 8, !tbaa !81
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !81
  %i.bf = mul nsw i64 %i.be, %i.aq
  %i.bg = load i64, ptr %i.j, align 8, !tbaa !81
  %i.bh = add i64 %i.bg, %i.bf
  store i64 %i.bh, ptr %i.j, align 8, !tbaa !81
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !82
  %i.bj = icmp eq ptr %i.bi, %i.k
  br i1 %i.bj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.l, ptr noundef nonnull align 8 dereferenceable(400) %i.bi, i64 400, i1 false)
  store ptr %i.l, ptr %i.a, align 8, !tbaa !82
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bk = phi ptr [ %i.l, %bb.c ], [ %i.bi, %bb.b ]
  %i.bl = sext i32 %i.am to i64                   ; 2 uses
  %i.bm = load i64, ptr %i.m, align 8, !tbaa !81
  %i.bn = mul nsw i64 %i.bm, 31
  %i.bo = ashr i64 %i.bn, 5
  %i.bp = add nsw i64 %i.bo, %i.bl                ; 2 uses
  store i64 %i.bp, ptr %i.m, align 8, !tbaa !81
  %i.bq = trunc i64 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %.05361, i64 4
  store i32 %i.bq, ptr %.05361, align 4, !tbaa !59
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !243

._crit_edge:                                      ; preds = %bb.d, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.bl, %bb.d ]
  store i64 %.pre-phi, ptr %i.d, align 8, !tbaa !81
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @predictor_decode_stereo_3950(ptr noundef %0, i32 noundef %1) #1 {
bb.a:
  %2 = alloca %struct.APEPredictor64, align 8     ; 32 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2448 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7160 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7168 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !69
  tail call fastcc void @ape_apply_filters(ptr noundef %0, ptr noundef %i.c, ptr noundef %i.e, i32 noundef %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7572 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !44
  %.not197 = icmp eq i32 %i.g, -1                 ; 4 uses
  br i1 %.not197, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4696) %2, ptr noundef nonnull align 8 dereferenceable(4696) %i.a, i64 4696, i1 false), !tbaa.struct !246
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 7192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.k = sext i32 %1 to i64
  %i.l = shl nsw i64 %i.k, 2                      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.j, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 7200
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !69
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.n, ptr align 4 %i.o, i64 %i.l, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.086 = phi i32 [ 2, %bb.b ], [ 1, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 7192 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 7200 ; 2 uses
  %.sroa.gep113 = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %.sroa.gep114 = getelementptr inbounds nuw i8, ptr %0, i64 2648 ; 3 uses
  %.not182 = icmp eq i32 %1, 0
  %.sroa.gep146 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.gep147 = getelementptr inbounds nuw i8, ptr %0, i64 2456
  %.sroa.gep149 = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.gep150 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %.sroa.gep149.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.gep150.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 2512
  %.sroa.gep149.sroa.gep152 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.gep150.sroa.gep153 = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %.sroa.gep149.sroa.gep155 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.gep150.sroa.gep156 = getelementptr inbounds nuw i8, ptr %0, i64 2528
  %.sroa.gep158 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.gep159 = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %.sroa.gep158.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.gep159.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %.sroa.gep161 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.gep162 = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %.sroa.gep164 = getelementptr inbounds nuw i8, ptr %2, i64 120
  %.sroa.gep165 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  %.sroa.gep164.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 128
  %.sroa.gep165.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 2576
  %.sroa.gep164.sroa.gep167 = getelementptr inbounds nuw i8, ptr %2, i64 136
  %.sroa.gep165.sroa.gep168 = getelementptr inbounds nuw i8, ptr %0, i64 2584
  %.sroa.gep164.sroa.gep170 = getelementptr inbounds nuw i8, ptr %2, i64 144
  %.sroa.gep165.sroa.gep171 = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %.sroa.gep164.sroa.gep173 = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.sroa.gep165.sroa.gep174 = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %.sroa.gep116.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.gep117.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 2464
  %.sroa.gep119.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.gep120.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %.sroa.gep119.sroa.gep.sroa.gep125 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.gep120.sroa.gep.sroa.gep126 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  %.sroa.gep119.sroa.gep.sroa.gep122 = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.sroa.gep120.sroa.gep.sroa.gep123 = getelementptr inbounds nuw i8, ptr %0, i64 2552
  %.sroa.gep119.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.sroa.gep120.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 2560
  %.sroa.gep131.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.gep132.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 2496
  %.sroa.gep134.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 160
  %.sroa.gep135.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %.sroa.gep134.sroa.gep.sroa.gep143 = getelementptr inbounds nuw i8, ptr %2, i64 168
  %.sroa.gep135.sroa.gep.sroa.gep144 = getelementptr inbounds nuw i8, ptr %0, i64 2616
  %.sroa.gep134.sroa.gep.sroa.gep140 = getelementptr inbounds nuw i8, ptr %2, i64 176
  %.sroa.gep135.sroa.gep.sroa.gep141 = getelementptr inbounds nuw i8, ptr %0, i64 2624
  %.sroa.gep134.sroa.gep.sroa.gep137 = getelementptr inbounds nuw i8, ptr %2, i64 184
  %.sroa.gep135.sroa.gep.sroa.gep138 = getelementptr inbounds nuw i8, ptr %0, i64 2632
  %.sroa.gep134.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 192
  %.sroa.gep135.sroa.gep.sroa.gep = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 4296
  %.sroa.gep112 = getelementptr inbounds nuw i8, ptr %0, i64 6744
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %.not182, label %.loopexit.us, label %.lr.ph

.loopexit.us:                                     ; preds = %bb.c
  store ptr %.sroa.gep114, ptr %i.a, align 8, !tbaa !82
  br i1 %.not197, label %.loopexit.us.1, label %.critedge

.loopexit.us.1:                                   ; preds = %.loopexit.us
  store ptr %.sroa.gep113, ptr %2, align 8, !tbaa !82
  br label %.split187.us

.split187.us:                                     ; preds = %..loopexit_crit_edge, %.loopexit.us.1
  br i1 %.not197, label %bb.l, label %.critedge

.lr.ph:                                           ; preds = %bb.c, %..loopexit_crit_edge
  %.085185 = phi i32 [ %i.ko, %..loopexit_crit_edge ], [ 0, %bb.c ] ; 2 uses
  %i.s = load i32, ptr %i.f, align 4, !tbaa !44
  %i.t = icmp slt i32 %i.s, 1
  %i.u = icmp eq i32 %.085185, 0                  ; 30 uses
  %.not181 = and i1 %i.u, %i.t                    ; 3 uses
  %.081.in = select i1 %i.u, ptr %i.b, ptr %i.p
  %.080.in = select i1 %i.u, ptr %i.d, ptr %i.q
  %.0 = select i1 %i.u, ptr %i.a, ptr %2          ; 4 uses
  %.080 = load ptr, ptr %.080.in, align 8, !tbaa !69
  %.081 = load ptr, ptr %.081.in, align 8, !tbaa !69
  %.0.sroa.sel115 = select i1 %i.u, ptr %.sroa.gep114, ptr %.sroa.gep113 ; 5 uses
  store ptr %.0.sroa.sel115, ptr %.0, align 8, !tbaa !82
  %.0.sroa.sel148 = select i1 %i.u, ptr %.sroa.gep147, ptr %.sroa.gep146 ; 2 uses
  %.0.sroa.sel151 = select i1 %i.u, ptr %.sroa.gep150, ptr %.sroa.gep149 ; 3 uses
  %.0.sroa.sel151.sroa.sel = select i1 %i.u, ptr %.sroa.gep150.sroa.gep, ptr %.sroa.gep149.sroa.gep ; 3 uses
  %.0.sroa.sel151.sroa.sel154 = select i1 %i.u, ptr %.sroa.gep150.sroa.gep153, ptr %.sroa.gep149.sroa.gep152 ; 3 uses
  %.0.sroa.sel151.sroa.sel157 = select i1 %i.u, ptr %.sroa.gep150.sroa.gep156, ptr %.sroa.gep149.sroa.gep155 ; 3 uses
  %.0.sroa.sel160 = select i1 %i.u, ptr %.sroa.gep159, ptr %.sroa.gep158 ; 4 uses
  %.0.sroa.sel160.sroa.sel = select i1 %i.u, ptr %.sroa.gep159.sroa.gep, ptr %.sroa.gep158.sroa.gep ; 4 uses
  %.0.sroa.sel163 = select i1 %i.u, ptr %.sroa.gep162, ptr %.sroa.gep161 ; 2 uses
  %.0.sroa.sel166 = select i1 %i.u, ptr %.sroa.gep165, ptr %.sroa.gep164 ; 2 uses
  %.0.sroa.sel166.sroa.sel = select i1 %i.u, ptr %.sroa.gep165.sroa.gep, ptr %.sroa.gep164.sroa.gep ; 2 uses
  %.0.sroa.sel166.sroa.sel169 = select i1 %i.u, ptr %.sroa.gep165.sroa.gep168, ptr %.sroa.gep164.sroa.gep167 ; 2 uses
  %.0.sroa.sel166.sroa.sel172 = select i1 %i.u, ptr %.sroa.gep165.sroa.gep171, ptr %.sroa.gep164.sroa.gep170 ; 2 uses
  %.0.sroa.sel166.sroa.sel175 = select i1 %i.u, ptr %.sroa.gep165.sroa.gep174, ptr %.sroa.gep164.sroa.gep173 ; 2 uses
  %.0.sroa.sel118.sroa.sel = select i1 %i.u, ptr %.sroa.gep117.sroa.gep, ptr %.sroa.gep116.sroa.gep ; 2 uses
  %.0.sroa.sel121.sroa.sel = select i1 %i.u, ptr %.sroa.gep120.sroa.gep, ptr %.sroa.gep119.sroa.gep ; 3 uses
  %.0.sroa.sel121.sroa.sel.sroa.sel127 = select i1 %i.u, ptr %.sroa.gep120.sroa.gep.sroa.gep126, ptr %.sroa.gep119.sroa.gep.sroa.gep125 ; 3 uses
  %.0.sroa.sel121.sroa.sel.sroa.sel124 = select i1 %i.u, ptr %.sroa.gep120.sroa.gep.sroa.gep123, ptr %.sroa.gep119.sroa.gep.sroa.gep122 ; 3 uses
  %.0.sroa.sel121.sroa.sel.sroa.sel = select i1 %i.u, ptr %.sroa.gep120.sroa.gep.sroa.gep, ptr %.sroa.gep119.sroa.gep.sroa.gep ; 3 uses
  %.0.sroa.sel133.sroa.sel = select i1 %i.u, ptr %.sroa.gep132.sroa.gep, ptr %.sroa.gep131.sroa.gep ; 2 uses
  %.0.sroa.sel136.sroa.sel = select i1 %i.u, ptr %.sroa.gep135.sroa.gep, ptr %.sroa.gep134.sroa.gep ; 2 uses
  %.0.sroa.sel136.sroa.sel.sroa.sel145 = select i1 %i.u, ptr %.sroa.gep135.sroa.gep.sroa.gep144, ptr %.sroa.gep134.sroa.gep.sroa.gep143 ; 2 uses
  %.0.sroa.sel136.sroa.sel.sroa.sel142 = select i1 %i.u, ptr %.sroa.gep135.sroa.gep.sroa.gep141, ptr %.sroa.gep134.sroa.gep.sroa.gep140 ; 2 uses
  %.0.sroa.sel136.sroa.sel.sroa.sel139 = select i1 %i.u, ptr %.sroa.gep135.sroa.gep.sroa.gep138, ptr %.sroa.gep134.sroa.gep.sroa.gep137 ; 2 uses
  %.0.sroa.sel136.sroa.sel.sroa.sel = select i1 %i.u, ptr %.sroa.gep135.sroa.gep.sroa.gep, ptr %.sroa.gep134.sroa.gep.sroa.gep ; 2 uses
  %.0.sroa.sel = select i1 %i.u, ptr %.sroa.gep112, ptr %.sroa.gep
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %i.v = phi ptr [ %.0.sroa.sel115, %.lr.ph ], [ %i.kn, %bb.k ] ; 36 uses
  %.in = phi i32 [ %1, %.lr.ph ], [ %i.w, %bb.k ]
  %.1184 = phi ptr [ %.080, %.lr.ph ], [ %i.ka, %bb.k ] ; 3 uses
  %.182183 = phi ptr [ %.081, %.lr.ph ], [ %i.jz, %bb.k ] ; 3 uses
  %i.w = add nsw i32 %.in, -1                     ; 2 uses
  %i.x = load i32, ptr %.182183, align 4, !tbaa !59 ; 4 uses
  %i.y = load i64, ptr %.0.sroa.sel148, align 8, !tbaa !81 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 400
  store i64 %i.y, ptr %i.z, align 8, !tbaa !81
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 392 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !81
  %i.ad = sub i64 %i.y, %i.ac                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !81
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 136 ; 2 uses
  %i.af = trunc i64 %i.ad to i32
  %i.ag = insertelement <2 x i32> poison, i32 %i.af, i64 0
  %i.ah = trunc i64 %i.y to i32
  %i.ai = insertelement <2 x i32> %i.ag, i32 %i.ah, i64 1 ; 2 uses
  %i.aj = lshr <2 x i32> %i.ai, splat (i32 31)
  %i.ak = icmp sgt <2 x i32> %i.ai, zeroinitializer
  %i.al = sext <2 x i1> %i.ak to <2 x i32>
  %i.am = add nsw <2 x i32> %i.aj, %i.al
  %i.an = sext <2 x i32> %i.am to <2 x i64>
  store <2 x i64> %i.an, ptr %i.ae, align 8, !tbaa !81
  %i.ao = load i64, ptr %.0.sroa.sel151, align 8, !tbaa !81
  %i.ap = mul i64 %i.ao, %i.y
  %i.aq = load i64, ptr %.0.sroa.sel151.sroa.sel, align 8, !tbaa !81
  %i.ar = mul i64 %i.aq, %i.ad
  %i.as = add i64 %i.ar, %i.ap
  %i.at = getelementptr i8, ptr %i.v, i64 384
  %i.au = load i64, ptr %i.at, align 8, !tbaa !81
  %i.av = load i64, ptr %.0.sroa.sel151.sroa.sel154, align 8, !tbaa !81
  %i.aw = mul i64 %i.av, %i.au
  %i.ax = add i64 %i.as, %i.aw
  %i.ay = getelementptr i8, ptr %i.v, i64 376
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !81
  %i.ba = load i64, ptr %.0.sroa.sel151.sroa.sel157, align 8, !tbaa !81
  %i.bb = mul i64 %i.ba, %i.az
  %i.bc = add i64 %i.ax, %i.bb                    ; 2 uses
  %i.bd = load i64, ptr %.0.sroa.sel160.sroa.sel, align 8, !tbaa !81
end_hunk_0
