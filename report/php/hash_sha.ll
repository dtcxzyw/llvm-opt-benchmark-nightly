Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/hash_sha?download=true
inline.NumInlined: 13
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@PHP_SHA384Update:._crit_edge
  tail call fastcc void @SHA512Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.r)
  %i.u = add nuw nsw i64 %i.q, 127
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.031 = phi i64 [ %i.x, %.lr.ph ], [ %i.q, %bb.a ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.031
  tail call fastcc void @SHA512Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.w)
  %i.x = add i64 %.031, 128                       ; 2 uses
  %i.y = add i64 %.031, 255
  %i.z = icmp ult i64 %i.y, %2
  br i1 %i.z, label %.lr.ph, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %._crit_edge
  %.028 = phi i32 [ %i.e, %._crit_edge ], [ 0, %bb.a ], [ 0, %.lr.ph ]
  %.1 = phi i64 [ 0, %._crit_edge ], [ %i.q, %bb.a ], [ %i.x, %.lr.ph ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = zext nneg i32 %.028 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.1
  %i.ae = sub i64 %2, %.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr align 1 %i.ad, i64 %i.ae, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @SHA512Transform(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i64], align 16              ; 5 uses
  %i.b = alloca [80 x i64], align 16              ; 5 uses
  %i.c = load i64, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !18   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv24.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next25.i, %bb.b ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 7
  %i.t = load i8, ptr %i.s, align 1, !tbaa !16
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.w = load i8, ptr %i.v, align 1, !tbaa !16
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 8
  %i.z = or disjoint i64 %i.y, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ac = zext i8 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 16
  %i.ae = or disjoint i64 %i.z, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !16
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 24
  %i.aj = or disjoint i64 %i.ae, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16
  %i.am = zext i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 32
  %i.ao = or disjoint i64 %i.aj, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 40
  %i.at = or i64 %i.ao, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16
  %i.aw = zext i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 48
  %i.ay = or i64 %i.at, %i.ax
  %i.az = load i8, ptr %i.r, align 1, !tbaa !16
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw i64 %i.ba, 56
  %i.bc = or i64 %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv24.i
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !18
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8
  %exitcond.not.i = icmp eq i64 %indvars.iv.next25.i, 16
  br i1 %exitcond.not.i, label %SHADecode64.exit.preheader, label %bb.b, !llvm.loop !21

SHADecode64.exit.preheader:                       ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, ptr noundef nonnull align 16 dereferenceable(128) %i.a, i64 128, i1 false), !tbaa !18
  br label %.preheader88

.preheader88:                                     ; preds = %SHADecode64.exit.preheader, %.preheader88
  %indvars.iv = phi i64 [ 16, %SHADecode64.exit.preheader ], [ %indvars.iv.next, %.preheader88 ] ; 2 uses
  %i.be = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv ; 5 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !18 ; 5 uses
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 45)
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 3)
  %i.bj = xor i64 %i.bh, %i.bi
  %i.bk = lshr i64 %i.bg, 6
  %i.bl = xor i64 %i.bj, %i.bk
  %i.bm = getelementptr i8, ptr %i.be, i64 -56
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.bo = add i64 %i.bl, %i.bn
  %i.bp = getelementptr i8, ptr %i.be, i64 -120
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !18 ; 5 uses
  %i.br = tail call i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 63)
  %i.bs = tail call i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 56)
  %i.bt = xor i64 %i.br, %i.bs
  %i.bu = lshr i64 %i.bq, 7
  %i.bv = xor i64 %i.bt, %i.bu
  %i.bw = getelementptr i8, ptr %i.be, i64 -128
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !18
  %i.by = add i64 %i.bo, %i.bx
  %i.bz = add i64 %i.by, %i.bv
  store i64 %i.bz, ptr %i.be, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond.not, label %.preheader, label %.preheader88, !llvm.loop !22

.preheader:                                       ; preds = %.preheader88, %.preheader
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %.preheader ], [ 0, %.preheader88 ] ; 3 uses
  %.08098 = phi i64 [ %.08197, %.preheader ], [ %i.q, %.preheader88 ]
  %.08197 = phi i64 [ %.08296, %.preheader ], [ %i.o, %.preheader88 ] ; 3 uses
  %.08296 = phi i64 [ %.08395, %.preheader ], [ %i.m, %.preheader88 ] ; 3 uses
  %.08395 = phi i64 [ %i.db, %.preheader ], [ %i.k, %.preheader88 ] ; 10 uses
  %.08494 = phi i64 [ %.08593, %.preheader ], [ %i.i, %.preheader88 ]
  %.08593 = phi i64 [ %.08692, %.preheader ], [ %i.g, %.preheader88 ] ; 4 uses
  %.08692 = phi i64 [ %.08791, %.preheader ], [ %i.e, %.preheader88 ] ; 4 uses
  %.08791 = phi i64 [ %i.dc, %.preheader ], [ %i.c, %.preheader88 ] ; 9 uses
  %i.ca = tail call i64 @llvm.fshl.i64(i64 %.08395, i64 %.08395, i64 50)
  %i.cb = tail call i64 @llvm.fshl.i64(i64 %.08395, i64 %.08395, i64 46)
  %i.cc = xor i64 %i.ca, %i.cb
  %i.cd = tail call i64 @llvm.fshl.i64(i64 %.08395, i64 %.08395, i64 23)
  %i.ce = xor i64 %i.cc, %i.cd
  %i.cf = add i64 %.08098, %i.ce
  %i.cg = and i64 %.08296, %.08395
  %i.ch = xor i64 %.08395, -1
  %i.ci = and i64 %.08197, %i.ch
  %i.cj = or i64 %i.ci, %i.cg
  %i.ck = add i64 %i.cf, %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @SHA512_K, i64 %indvars.iv103
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !18
  %i.cn = add i64 %i.ck, %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv103
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !18
  %i.cq = add i64 %i.cn, %i.cp                    ; 2 uses
  %i.cr = tail call i64 @llvm.fshl.i64(i64 %.08791, i64 %.08791, i64 36)
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %.08791, i64 %.08791, i64 30)
  %i.ct = xor i64 %i.cr, %i.cs
  %i.cu = tail call i64 @llvm.fshl.i64(i64 %.08791, i64 %.08791, i64 25)
  %i.cv = xor i64 %i.ct, %i.cu
  %i.cw = xor i64 %.08593, %.08692
  %i.cx = and i64 %i.cw, %.08791
  %i.cy = and i64 %.08593, %.08692
  %i.cz = xor i64 %i.cx, %i.cy
  %i.da = add i64 %i.cz, %i.cv
  %i.db = add i64 %i.cq, %.08494                  ; 2 uses
  %i.dc = add i64 %i.da, %i.cq                    ; 2 uses
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next104, 80
  br i1 %exitcond106.not, label %bb.c, label %.preheader, !llvm.loop !23

bb.c:                                             ; preds = %.preheader
  %i.dd = add i64 %i.dc, %i.c
  store i64 %i.dd, ptr %0, align 8, !tbaa !18
  %i.de = add i64 %.08791, %i.e
  store i64 %i.de, ptr %i.d, align 8, !tbaa !18
  %i.df = add i64 %.08692, %i.g
  store i64 %i.df, ptr %i.f, align 8, !tbaa !18
  %i.dg = add i64 %.08593, %i.i
  store i64 %i.dg, ptr %i.h, align 8, !tbaa !18
  %i.dh = add i64 %i.db, %i.k
  store i64 %i.dh, ptr %i.j, align 8, !tbaa !18
  %i.di = add i64 %.08395, %i.m
  store i64 %i.di, ptr %i.l, align 8, !tbaa !18
  %i.dj = add i64 %.08296, %i.o
  store i64 %i.dj, ptr %i.n, align 8, !tbaa !18
  %i.dk = add i64 %.08197, %i.q
  store i64 %i.dk, ptr %i.p, align 8, !tbaa !18
  call void @explicit_bzero(ptr noundef nonnull %i.a, i64 noundef 128) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_SHA384Final(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %2 = bitcast i64 %i.c to <8 x i8>
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %3, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %4 = bitcast i64 %i.f to <8 x i8>
  %5 = shufflevector <8 x i8> %4, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %5, ptr %i.a, align 16, !tbaa !16
  %i.g = trunc i64 %i.c to i32
  %i.h = lshr i32 %i.g, 3
  %i.i = and i32 %i.h, 127                        ; 5 uses
  %i.j = icmp samesign ult i32 %i.i, 112
  %.v = select i1 %i.j, i32 112, i32 240
  %i.k = sub nsw i32 %.v, %i.i                    ; 2 uses
  %i.l = zext i32 %i.k to i64                     ; 4 uses
  %i.m = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.n = add i64 %i.m, %i.c                       ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !18
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = zext i1 %i.o to i64
  %i.q = add i64 %i.f, %i.p
  store i64 %i.q, ptr %i.e, align 8, !tbaa !18
  %i.r = sub nuw nsw i32 128, %i.i                ; 2 uses
  %.not.i = icmp ult i32 %i.k, %i.r
  br i1 %.not.i, label %PHP_SHA384Update.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = zext nneg i32 %i.r to i64                ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.u = zext nneg i32 %i.i to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull align 16 dereferenceable(1) @PADDING, i64 %i.s, i1 false)
  tail call fastcc void @SHA512Transform(ptr noundef nonnull %1, ptr noundef nonnull %i.t)
  %i.w = add nuw nsw i64 %i.s, 127
  %i.x = icmp samesign ult i64 %i.w, %i.l
  br i1 %i.x, label %.lr.ph.i, label %PHP_SHA384Update.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.031.i = phi i64 [ %i.z, %.lr.ph.i ], [ %i.s, %bb.b ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.031.i
  tail call fastcc void @SHA512Transform(ptr noundef nonnull %1, ptr noundef nonnull readonly %i.y)
  %i.z = add nuw nsw i64 %.031.i, 128             ; 2 uses
  %i.aa = add nuw nsw i64 %.031.i, 255
  %i.ab = icmp samesign ult i64 %i.aa, %i.l
  br i1 %i.ab, label %.lr.ph.i, label %PHP_SHA384Update.exit, !llvm.loop !0

PHP_SHA384Update.exit:                            ; preds = %.lr.ph.i, %bb.a, %bb.b
  %.028.i = phi i32 [ %i.i, %bb.a ], [ 0, %bb.b ], [ 0, %.lr.ph.i ]
  %.1.i = phi i64 [ 0, %bb.a ], [ %i.s, %bb.b ], [ %i.z, %.lr.ph.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.ad = zext nneg i32 %.028.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.1.i
  %i.ag = sub i64 %i.l, %.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %i.af, i64 %i.ag, i1 false)
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = lshr i32 %i.ai, 3
  %i.ak = and i32 %i.aj, 127                      ; 4 uses
  %i.al = add i64 %i.ah, 128
  store i64 %i.al, ptr %i.b, align 8, !tbaa !18
  %i.am = icmp ugt i64 %i.ah, -129
  %i.an = load i64, ptr %i.e, align 8, !tbaa !18
  %i.ao = zext i1 %i.am to i64
  %i.ap = add i64 %i.an, %i.ao
  store i64 %i.ap, ptr %i.e, align 8, !tbaa !18
  %.not.i25 = icmp samesign ult i32 %i.ak, 112
  br i1 %.not.i25, label %PHP_SHA384Update.exit30, label %bb.c

bb.c:                                             ; preds = %PHP_SHA384Update.exit
  %i.aq = sub nuw nsw i32 128, %i.ak
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = zext nneg i32 %i.ak to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.a, i64 %i.ar, i1 false)
  tail call fastcc void @SHA512Transform(ptr noundef nonnull %1, ptr noundef nonnull %i.ac)
  br label %PHP_SHA384Update.exit30

PHP_SHA384Update.exit30:                          ; preds = %PHP_SHA384Update.exit, %bb.c
  %.028.i26 = phi i32 [ %i.ak, %PHP_SHA384Update.exit ], [ 0, %bb.c ]
  %.1.i27 = phi i64 [ 0, %PHP_SHA384Update.exit ], [ %i.ar, %bb.c ] ; 2 uses
  %i.au = zext nneg i32 %.028.i26 to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i27
  %i.ax = sub nuw nsw i64 16, %.1.i27
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull readonly align 1 %i.aw, i64 %i.ax, i1 false)
  %i.ay = load i64, ptr %1, align 8, !tbaa !18
  %i.az = lshr i64 %i.ay, 56
  %i.ba = trunc nuw i64 %i.az to i8
  store i8 %i.ba, ptr %0, align 1, !tbaa !16
  %i.bb = load i64, ptr %1, align 8, !tbaa !18
  %i.bc = lshr i64 %i.bb, 48
  %i.bd = trunc i64 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !16
  %i.bf = load i64, ptr %1, align 8, !tbaa !18
  %i.bg = lshr i64 %i.bf, 40
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !16
  %i.bj = load i64, ptr %1, align 8, !tbaa !18
  %i.bk = lshr i64 %i.bj, 32
  %i.bl = trunc i64 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !16
  %i.bn = load i64, ptr %1, align 8, !tbaa !18
  %i.bo = lshr i64 %i.bn, 24
  %i.bp = trunc i64 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !16
  %i.br = load i64, ptr %1, align 8, !tbaa !18
  %i.bs = lshr i64 %i.br, 16
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !16
  %i.bv = load i64, ptr %1, align 8, !tbaa !18
  %i.bw = lshr i64 %i.bv, 8
  %i.bx = trunc i64 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !16
  %i.bz = load i64, ptr %1, align 8, !tbaa !18
  %i.ca = trunc i64 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.ce = lshr i64 %i.cd, 56
  %i.cf = trunc nuw i64 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !16
  %i.ch = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.ci = lshr i64 %i.ch, 48
  %i.cj = trunc i64 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !16
  %i.cl = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.cm = lshr i64 %i.cl, 40
  %i.cn = trunc i64 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !16
  %i.cp = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.cq = lshr i64 %i.cp, 32
  %i.cr = trunc i64 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !16
  %i.ct = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.cu = lshr i64 %i.ct, 24
  %i.cv = trunc i64 %i.cu to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !16
  %i.cx = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.cy = lshr i64 %i.cx, 16
  %i.cz = trunc i64 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !16
  %i.db = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.dc = lshr i64 %i.db, 8
  %i.dd = trunc i64 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !16
  %i.df = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.dg = trunc i64 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !18
  %i.dk = lshr i64 %i.dj, 56
  %i.dl = trunc nuw i64 %i.dk to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !16
  %i.dn = load i64, ptr %i.di, align 8, !tbaa !18
  %i.do = lshr i64 %i.dn, 48
  %i.dp = trunc i64 %i.do to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !16
  %i.dr = load i64, ptr %i.di, align 8, !tbaa !18
  %i.ds = lshr i64 %i.dr, 40
  %i.dt = trunc i64 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !16
  %i.dv = load i64, ptr %i.di, align 8, !tbaa !18
  %i.dw = lshr i64 %i.dv, 32
  %i.dx = trunc i64 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !16
  %i.dz = load i64, ptr %i.di, align 8, !tbaa !18
  %i.ea = lshr i64 %i.dz, 24
  %i.eb = trunc i64 %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !16
  %i.ed = load i64, ptr %i.di, align 8, !tbaa !18
  %i.ee = lshr i64 %i.ed, 16
  %i.ef = trunc i64 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !16
  %i.eh = load i64, ptr %i.di, align 8, !tbaa !18
  %i.ei = lshr i64 %i.eh, 8
  %i.ej = trunc i64 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !16
  %i.el = load i64, ptr %i.di, align 8, !tbaa !18
  %i.em = trunc i64 %i.el to i8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.em, ptr %i.en, align 1, !tbaa !16
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !18
  %i.eq = lshr i64 %i.ep, 56
  %i.er = trunc nuw i64 %i.eq to i8
end_hunk_0
begin_hunk_1_@PHP_SHA384Final:bb.a
  %i.gh = load i64, ptr %i.fu, align 8, !tbaa !18
  %i.gi = lshr i64 %i.gh, 32
  %i.gj = trunc i64 %i.gi to i8
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !16
  %i.gl = load i64, ptr %i.fu, align 8, !tbaa !18
  %i.gm = lshr i64 %i.gl, 24
  %i.gn = trunc i64 %i.gm to i8
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !16
  %i.gp = load i64, ptr %i.fu, align 8, !tbaa !18
  %i.gq = lshr i64 %i.gp, 16
  %i.gr = trunc i64 %i.gq to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !16
  %i.gt = load i64, ptr %i.fu, align 8, !tbaa !18
  %i.gu = lshr i64 %i.gt, 8
  %i.gv = trunc i64 %i.gu to i8
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i8 %i.gv, ptr %i.gw, align 1, !tbaa !16
  %i.gx = load i64, ptr %i.fu, align 8, !tbaa !18
  %i.gy = trunc i64 %i.gx to i8
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !16
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !18
  %i.hc = lshr i64 %i.hb, 56
  %i.hd = trunc nuw i64 %i.hc to i8
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !16
  %i.hf = load i64, ptr %i.ha, align 8, !tbaa !18
  %i.hg = lshr i64 %i.hf, 48
  %i.hh = trunc i64 %i.hg to i8
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !16
  %i.hj = load i64, ptr %i.ha, align 8, !tbaa !18
  %i.hk = lshr i64 %i.hj, 40
  %i.hl = trunc i64 %i.hk to i8
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %i.hl, ptr %i.hm, align 1, !tbaa !16
  %i.hn = load i64, ptr %i.ha, align 8, !tbaa !18
  %i.ho = lshr i64 %i.hn, 32
  %i.hp = trunc i64 %i.ho to i8
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 43
  store i8 %i.hp, ptr %i.hq, align 1, !tbaa !16
  %i.hr = load i64, ptr %i.ha, align 8, !tbaa !18
  %i.hs = lshr i64 %i.hr, 24
  %i.ht = trunc i64 %i.hs to i8
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !16
  %i.hv = load i64, ptr %i.ha, align 8, !tbaa !18
  %i.hw = lshr i64 %i.hv, 16
  %i.hx = trunc i64 %i.hw to i8
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 %i.hx, ptr %i.hy, align 1, !tbaa !16
  %i.hz = load i64, ptr %i.ha, align 8, !tbaa !18
  %i.ia = lshr i64 %i.hz, 8
  %i.ib = trunc i64 %i.ia to i8
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 46
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !16
  %i.id = load i64, ptr %i.ha, align 8, !tbaa !18
  %i.ie = trunc i64 %i.id to i8
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 47
  store i8 %i.ie, ptr %i.if, align 1, !tbaa !16
  tail call void @explicit_bzero(ptr noundef nonnull %1, i64 noundef 208) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PHP_SHA512InitArgs(ptr nofree noundef writeonly captures(none) initializes((0, 80)) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i64 7640891576956012808, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -4942790177534073029, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4354685564936845355, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -6534734903238641935, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 5840696475078001361, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -7276294671716946913, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 2270897969802886507, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 6620516959819538809, ptr %i.h, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PHP_SHA512_256InitArgs(ptr nofree noundef writeonly captures(none) initializes((0, 80)) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i64 2463787394917988140, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -6965556091613846334, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2563595384472711505, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -7622211418569250115, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -7626776825740460061, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -4729309413028513390, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 3098927326965381290, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 1060366662362279074, ptr %i.h, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @PHP_SHA512_224InitArgs(ptr nofree noundef writeonly captures(none) initializes((0, 80)) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i64 -8341449602262348382, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8350123849800275158, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2160240930085379202, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 7466358040605728719, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1111592415079452072, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 8638871050018654530, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 4583966954114332360, ptr %i.g, align 8, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 1230299281376055969, ptr %i.h, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_SHA512Update(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #2 {
._crit_edge:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 3
  %i.e = and i32 %i.d, 127                        ; 3 uses
  %i.f = shl i64 %2, 3                            ; 2 uses
  %i.g = add i64 %i.b, %i.f                       ; 2 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !18
  %i.h = icmp ult i64 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
  %i.k = zext i1 %i.h to i64
  %i.l = add i64 %i.j, %i.k
  %i.m = lshr i64 %2, 61
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = add i64 %i.l, %i.m
  store i64 %i.o, ptr %i.n, align 8, !tbaa !18
  %i.p = sub nuw nsw i32 128, %i.e
  %i.q = zext nneg i32 %i.p to i64                ; 5 uses
  %.not = icmp ult i64 %2, %i.q
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.s = zext nneg i32 %i.e to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.q, i1 false)
  tail call fastcc void @SHA512Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.r)
  %i.u = add nuw nsw i64 %i.q, 127
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.031 = phi i64 [ %i.x, %.lr.ph ], [ %i.q, %bb.a ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.031
  tail call fastcc void @SHA512Transform(ptr noundef nonnull %0, ptr noundef nonnull %i.w)
  %i.x = add i64 %.031, 128                       ; 2 uses
  %i.y = add i64 %.031, 255
  %i.z = icmp ult i64 %i.y, %2
  br i1 %i.z, label %.lr.ph, label %.loopexit, !llvm.loop !1

bb.b:                                             ; preds = %._crit_edge
  %i.aa = zext nneg i32 %i.e to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %bb.b
  %.028 = phi i64 [ %i.aa, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph ]
  %.1 = phi i64 [ 0, %bb.b ], [ %i.q, %bb.a ], [ %i.x, %.lr.ph ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.028
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.1
  %i.ae = sub i64 %2, %.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr align 1 %i.ad, i64 %i.ae, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_SHA512Final(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %2 = bitcast i64 %i.c to <8 x i8>
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %3, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %4 = bitcast i64 %i.f to <8 x i8>
  %5 = shufflevector <8 x i8> %4, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %5, ptr %i.a, align 16, !tbaa !16
  %i.g = trunc i64 %i.c to i32
  %i.h = lshr i32 %i.g, 3
  %i.i = and i32 %i.h, 127                        ; 5 uses
  %i.j = icmp samesign ult i32 %i.i, 112
  %.v = select i1 %i.j, i32 112, i32 240
  %i.k = sub nsw i32 %.v, %i.i                    ; 2 uses
  %i.l = zext i32 %i.k to i64                     ; 4 uses
  %i.m = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.n = add i64 %i.m, %i.c                       ; 2 uses
  store i64 %i.n, ptr %i.b, align 8, !tbaa !18
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = zext i1 %i.o to i64
  %i.q = add i64 %i.f, %i.p
  store i64 %i.q, ptr %i.e, align 8, !tbaa !18
  %i.r = sub nuw nsw i32 128, %i.i                ; 2 uses
  %.not.i = icmp ult i32 %i.k, %i.r
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = zext nneg i32 %i.r to i64                ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.u = zext nneg i32 %i.i to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull align 16 dereferenceable(1) @PADDING, i64 %i.s, i1 false)
  tail call fastcc void @SHA512Transform(ptr noundef nonnull %1, ptr noundef nonnull %i.t)
  %i.w = add nuw nsw i64 %i.s, 127
  %i.x = icmp samesign ult i64 %i.w, %i.l
  br i1 %i.x, label %.lr.ph.i, label %PHP_SHA512Update.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.031.i = phi i64 [ %i.z, %.lr.ph.i ], [ %i.s, %bb.b ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.031.i
  tail call fastcc void @SHA512Transform(ptr noundef nonnull %1, ptr noundef nonnull readonly %i.y)
  %i.z = add nuw nsw i64 %.031.i, 128             ; 2 uses
  %i.aa = add nuw nsw i64 %.031.i, 255
  %i.ab = icmp samesign ult i64 %i.aa, %i.l
  br i1 %i.ab, label %.lr.ph.i, label %PHP_SHA512Update.exit, !llvm.loop !1

bb.c:                                             ; preds = %bb.a
  %i.ac = zext nneg i32 %i.i to i64
  br label %PHP_SHA512Update.exit

PHP_SHA512Update.exit:                            ; preds = %.lr.ph.i, %bb.b, %bb.c
  %.028.i = phi i64 [ %i.ac, %bb.c ], [ 0, %bb.b ], [ 0, %.lr.ph.i ]
  %.1.i = phi i64 [ 0, %bb.c ], [ %i.s, %bb.b ], [ %i.z, %.lr.ph.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.028.i
  %i.af = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.1.i
  %i.ag = sub i64 %i.l, %.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %i.af, i64 %i.ag, i1 false)
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = lshr i32 %i.ai, 3
  %i.ak = and i32 %i.aj, 127                      ; 4 uses
  %i.al = add i64 %i.ah, 128
  store i64 %i.al, ptr %i.b, align 8, !tbaa !18
  %i.am = icmp ugt i64 %i.ah, -129
  %i.an = load i64, ptr %i.e, align 8, !tbaa !18
  %i.ao = zext i1 %i.am to i64
  %i.ap = add i64 %i.an, %i.ao
  store i64 %i.ap, ptr %i.e, align 8, !tbaa !18
  %.not.i25 = icmp samesign ult i32 %i.ak, 112
  br i1 %.not.i25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %PHP_SHA512Update.exit
  %i.aq = sub nuw nsw i32 128, %i.ak
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = zext nneg i32 %i.ak to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.a, i64 %i.ar, i1 false)
  tail call fastcc void @SHA512Transform(ptr noundef nonnull %1, ptr noundef nonnull %i.ad)
  br label %PHP_SHA512Update.exit30

bb.e:                                             ; preds = %PHP_SHA512Update.exit
  %i.au = zext nneg i32 %i.ak to i64
  br label %PHP_SHA512Update.exit30

PHP_SHA512Update.exit30:                          ; preds = %bb.e, %bb.d
  %.028.i26 = phi i64 [ %i.au, %bb.e ], [ 0, %bb.d ]
  %.1.i27 = phi i64 [ 0, %bb.e ], [ %i.ar, %bb.d ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.028.i26
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i27
  %i.ax = sub nuw nsw i64 16, %.1.i27
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull readonly align 1 %i.aw, i64 %i.ax, i1 false)
  %i.ay = load i64, ptr %1, align 8, !tbaa !18
  %i.az = lshr i64 %i.ay, 56
  %i.ba = trunc nuw i64 %i.az to i8
  store i8 %i.ba, ptr %0, align 1, !tbaa !16
  %i.bb = load i64, ptr %1, align 8, !tbaa !18
  %i.bc = lshr i64 %i.bb, 48
  %i.bd = trunc i64 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !16
  %i.bf = load i64, ptr %1, align 8, !tbaa !18
  %i.bg = lshr i64 %i.bf, 40
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !16
  %i.bj = load i64, ptr %1, align 8, !tbaa !18
  %i.bk = lshr i64 %i.bj, 32
  %i.bl = trunc i64 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !16
  %i.bn = load i64, ptr %1, align 8, !tbaa !18
  %i.bo = lshr i64 %i.bn, 24
  %i.bp = trunc i64 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !16
  %i.br = load i64, ptr %1, align 8, !tbaa !18
  %i.bs = lshr i64 %i.br, 16
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !16
  %i.bv = load i64, ptr %1, align 8, !tbaa !18
  %i.bw = lshr i64 %i.bv, 8
  %i.bx = trunc i64 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !16
  %i.bz = load i64, ptr %1, align 8, !tbaa !18
  %i.ca = trunc i64 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.ce = lshr i64 %i.cd, 56
  %i.cf = trunc nuw i64 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !16
  %i.ch = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.ci = lshr i64 %i.ch, 48
  %i.cj = trunc i64 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !16
  %i.cl = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.cm = lshr i64 %i.cl, 40
  %i.cn = trunc i64 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !16
  %i.cp = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.cq = lshr i64 %i.cp, 32
  %i.cr = trunc i64 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !16
  %i.ct = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.cu = lshr i64 %i.ct, 24
  %i.cv = trunc i64 %i.cu to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !16
  %i.cx = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.cy = lshr i64 %i.cx, 16
  %i.cz = trunc i64 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !16
  %i.db = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.dc = lshr i64 %i.db, 8
  %i.dd = trunc i64 %i.dc to i8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !16
  %i.df = load i64, ptr %i.cc, align 8, !tbaa !18
  %i.dg = trunc i64 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !18
  %i.dk = lshr i64 %i.dj, 56
  %i.dl = trunc nuw i64 %i.dk to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !16
  %i.dn = load i64, ptr %i.di, align 8, !tbaa !18
  %i.do = lshr i64 %i.dn, 48
  %i.dp = trunc i64 %i.do to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !16
  %i.dr = load i64, ptr %i.di, align 8, !tbaa !18
  %i.ds = lshr i64 %i.dr, 40
  %i.dt = trunc i64 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !16
  %i.dv = load i64, ptr %i.di, align 8, !tbaa !18
  %i.dw = lshr i64 %i.dv, 32
  %i.dx = trunc i64 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !16
  %i.dz = load i64, ptr %i.di, align 8, !tbaa !18
  %i.ea = lshr i64 %i.dz, 24
  %i.eb = trunc i64 %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !16
  %i.ed = load i64, ptr %i.di, align 8, !tbaa !18
  %i.ee = lshr i64 %i.ed, 16
  %i.ef = trunc i64 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !16
  %i.eh = load i64, ptr %i.di, align 8, !tbaa !18
  %i.ei = lshr i64 %i.eh, 8
  %i.ej = trunc i64 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !16
  %i.el = load i64, ptr %i.di, align 8, !tbaa !18
  %i.em = trunc i64 %i.el to i8
end_hunk_1
