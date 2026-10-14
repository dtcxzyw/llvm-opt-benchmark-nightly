Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/kem_mlkem768_ref?download=true
inline.NumInlined: 68
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 80
loop-unroll.NumUnrolled: 86
begin_hunk_0_@gen_matrix:bb.a
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1.i27.1 = phi i32 [ %i.dq, %bb.r ], [ %.02528.i25.1, %bb.q ] ; 4 uses
  %i.dt = icmp ult i32 %.1.i27.1, %i.cz
  %i.du = icmp samesign ult i16 %i.do, 3329
  %or.cond.i28.1 = select i1 %i.dt, i1 %i.du, i1 false
  br i1 %or.cond.i28.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dv = add nuw nsw i32 %.1.i27.1, 1
  %i.dw = zext nneg i32 %.1.i27.1 to i64
  %i.dx = getelementptr [2 x i8], ptr %i.cy, i64 %i.dw
  store i16 %i.do, ptr %i.dx, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2.i29.1 = phi i32 [ %i.dv, %bb.t ], [ %.1.i27.1, %bb.s ] ; 3 uses
  %i.dy = icmp ult i32 %.2.i29.1, %i.cz
  %indvars.iv.next.i30.1 = add nuw nsw i64 %indvars.iv.i24.1, 3
  %i.dz = icmp samesign ult i64 %indvars.iv.i24.1, 166
  %i.ea = select i1 %i.dy, i1 %i.dz, i1 false
  %indvars.iv.next31.i31.1 = add nuw nsw i64 %indvars.iv30.i23.1, 3
  br i1 %i.ea, label %bb.q, label %rej_uniform.exit32.1, !llvm.loop !52

rej_uniform.exit32.1:                             ; preds = %bb.u
  %i.eb = add i32 %.2.i29.1, %.02233.1            ; 2 uses
  %i.ec = icmp ult i32 %i.eb, 256
  br i1 %i.ec, label %.lr.ph.1, label %rej_uniform.exit._crit_edge.1, !llvm.loop !53

rej_uniform.exit._crit_edge.1:                    ; preds = %rej_uniform.exit32.1, %rej_uniform.exit.preheader.1
  %spec.select63 = select i1 %.not, i8 2, i8 %i.e
  %spec.select64 = select i1 %.not, i8 %i.e, i8 2
  store i8 %spec.select63, ptr %i.c, align 16
  store i8 %spec.select64, ptr %i.d, align 1
  %i.ed = call i32 @crypto_xof_shake128_init(ptr noundef nonnull %3) #4 ; 0 uses
  %i.ee = call i32 @crypto_xof_shake128_update(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i64 noundef 34) #4 ; 0 uses
  %i.ef = call i32 @crypto_xof_shake128_squeeze(ptr noundef nonnull %3, ptr noundef nonnull %i.a, i64 noundef 504) #4 ; 0 uses
  %i.eg = getelementptr i8, ptr %i.f, i64 1024    ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %rej_uniform.exit._crit_edge.1
  %indvars.iv30.i.2 = phi i64 [ 0, %rej_uniform.exit._crit_edge.1 ], [ %indvars.iv.next31.i.2, %bb.z ] ; 2 uses
  %indvars.iv.i.2 = phi i64 [ 3, %rej_uniform.exit._crit_edge.1 ], [ %indvars.iv.next.i.2, %bb.z ] ; 2 uses
  %.02528.i.2 = phi i32 [ 0, %rej_uniform.exit._crit_edge.1 ], [ %.2.i.2, %bb.z ] ; 3 uses
  %i.eh = getelementptr i8, ptr %i.a, i64 %indvars.iv30.i.2 ; 3 uses
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = zext i8 %i.ei to i16
  %i.ek = getelementptr i8, ptr %i.eh, i64 1
  %i.el = load i8, ptr %i.ek, align 1             ; 2 uses
  %i.em = zext i8 %i.el to i16
  %i.en = shl nuw i16 %i.em, 8
  %.masked.i.2 = and i16 %i.en, 3840
  %i.eo = or disjoint i16 %.masked.i.2, %i.ej     ; 2 uses
  %i.ep = lshr i8 %i.el, 4
  %i.eq = zext nneg i8 %i.ep to i16
  %i.er = getelementptr i8, ptr %i.eh, i64 2
  %i.es = load i8, ptr %i.er, align 1
  %i.et = zext i8 %i.es to i16
  %i.eu = shl nuw nsw i16 %i.et, 4
  %i.ev = or disjoint i16 %i.eu, %i.eq            ; 2 uses
  %i.ew = icmp samesign ult i16 %i.eo, 3329
  br i1 %i.ew, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ex = add nuw nsw i32 %.02528.i.2, 1
  %i.ey = zext nneg i32 %.02528.i.2 to i64
  %i.ez = getelementptr [2 x i8], ptr %i.eg, i64 %i.ey
  store i16 %i.eo, ptr %i.ez, align 2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1.i.2 = phi i32 [ %i.ex, %bb.w ], [ %.02528.i.2, %bb.v ] ; 4 uses
  %i.fa = icmp ult i32 %.1.i.2, 256
  %i.fb = icmp samesign ult i16 %i.ev, 3329
  %or.cond.i.2 = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond.i.2, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fc = add nuw nsw i32 %.1.i.2, 1
  %i.fd = zext nneg i32 %.1.i.2 to i64
  %i.fe = getelementptr [2 x i8], ptr %i.eg, i64 %i.fd
  store i16 %i.ev, ptr %i.fe, align 2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.2.i.2 = phi i32 [ %i.fc, %bb.y ], [ %.1.i.2, %bb.x ] ; 3 uses
  %i.ff = icmp ult i32 %.2.i.2, 256               ; 2 uses
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 3
  %i.fg = icmp samesign ult i64 %indvars.iv.i.2, 502
  %i.fh = select i1 %i.ff, i1 %i.fg, i1 false
  %indvars.iv.next31.i.2 = add nuw nsw i64 %indvars.iv30.i.2, 3
  br i1 %i.fh, label %bb.v, label %rej_uniform.exit.preheader.2, !llvm.loop !52

rej_uniform.exit.preheader.2:                     ; preds = %bb.z
  br i1 %i.ff, label %.lr.ph.2, label %rej_uniform.exit._crit_edge.2

.lr.ph.2:                                         ; preds = %rej_uniform.exit.preheader.2, %rej_uniform.exit32.2
  %.02233.2 = phi i32 [ %i.gn, %rej_uniform.exit32.2 ], [ %.2.i.2, %rej_uniform.exit.preheader.2 ] ; 3 uses
  %i.fi = call i32 @crypto_xof_shake128_squeeze(ptr noundef nonnull %3, ptr noundef nonnull %i.a, i64 noundef 168) #4 ; 0 uses
  %i.fj = zext nneg i32 %.02233.2 to i64
  %i.fk = getelementptr [2 x i8], ptr %i.eg, i64 %i.fj ; 2 uses
  %i.fl = sub nuw nsw i32 256, %.02233.2          ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %.lr.ph.2
  %indvars.iv30.i23.2 = phi i64 [ 0, %.lr.ph.2 ], [ %indvars.iv.next31.i31.2, %bb.ae ] ; 2 uses
  %indvars.iv.i24.2 = phi i64 [ 3, %.lr.ph.2 ], [ %indvars.iv.next.i30.2, %bb.ae ] ; 2 uses
  %.02528.i25.2 = phi i32 [ 0, %.lr.ph.2 ], [ %.2.i29.2, %bb.ae ] ; 3 uses
  %i.fm = getelementptr i8, ptr %i.a, i64 %indvars.iv30.i23.2 ; 3 uses
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = zext i8 %i.fn to i16
  %i.fp = getelementptr i8, ptr %i.fm, i64 1
  %i.fq = load i8, ptr %i.fp, align 1             ; 2 uses
  %i.fr = zext i8 %i.fq to i16
  %i.fs = shl nuw i16 %i.fr, 8
  %.masked.i26.2 = and i16 %i.fs, 3840
  %i.ft = or disjoint i16 %.masked.i26.2, %i.fo   ; 2 uses
  %i.fu = lshr i8 %i.fq, 4
  %i.fv = zext nneg i8 %i.fu to i16
  %i.fw = getelementptr i8, ptr %i.fm, i64 2
  %i.fx = load i8, ptr %i.fw, align 1
  %i.fy = zext i8 %i.fx to i16
  %i.fz = shl nuw nsw i16 %i.fy, 4
  %i.ga = or disjoint i16 %i.fz, %i.fv            ; 2 uses
  %i.gb = icmp samesign ult i16 %i.ft, 3329
  br i1 %i.gb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gc = add nuw nsw i32 %.02528.i25.2, 1
  %i.gd = zext nneg i32 %.02528.i25.2 to i64
  %i.ge = getelementptr [2 x i8], ptr %i.fk, i64 %i.gd
  store i16 %i.ft, ptr %i.ge, align 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.i27.2 = phi i32 [ %i.gc, %bb.ab ], [ %.02528.i25.2, %bb.aa ] ; 4 uses
  %i.gf = icmp ult i32 %.1.i27.2, %i.fl
  %i.gg = icmp samesign ult i16 %i.ga, 3329
  %or.cond.i28.2 = select i1 %i.gf, i1 %i.gg, i1 false
  br i1 %or.cond.i28.2, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gh = add nuw nsw i32 %.1.i27.2, 1
  %i.gi = zext nneg i32 %.1.i27.2 to i64
  %i.gj = getelementptr [2 x i8], ptr %i.fk, i64 %i.gi
  store i16 %i.ga, ptr %i.gj, align 2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.2.i29.2 = phi i32 [ %i.gh, %bb.ad ], [ %.1.i27.2, %bb.ac ] ; 3 uses
  %i.gk = icmp ult i32 %.2.i29.2, %i.fl
  %indvars.iv.next.i30.2 = add nuw nsw i64 %indvars.iv.i24.2, 3
  %i.gl = icmp samesign ult i64 %indvars.iv.i24.2, 166
  %i.gm = select i1 %i.gk, i1 %i.gl, i1 false
  %indvars.iv.next31.i31.2 = add nuw nsw i64 %indvars.iv30.i23.2, 3
  br i1 %i.gm, label %bb.aa, label %rej_uniform.exit32.2, !llvm.loop !52

rej_uniform.exit32.2:                             ; preds = %bb.ae
  %i.gn = add i32 %.2.i29.2, %.02233.2            ; 2 uses
  %i.go = icmp ult i32 %i.gn, 256
  br i1 %i.go, label %.lr.ph.2, label %rej_uniform.exit._crit_edge.2, !llvm.loop !53

rej_uniform.exit._crit_edge.2:                    ; preds = %rej_uniform.exit32.2, %rej_uniform.exit.preheader.2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.af, label %.preheader, !llvm.loop !54

bb.af:                                            ; preds = %rej_uniform.exit._crit_edge.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define internal fastcc void @poly_getnoise_eta2(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i8 noundef zeroext %2) unnamed_addr #0 {
vector.ph:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %3 = alloca %struct.crypto_xof_shake256_state, align 16 ; 6 uses
  %i.b = alloca [33 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 noundef 32, i1 noundef false) #4
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 %2, ptr %i.c, align 16
  %i.d = call i32 @crypto_xof_shake256_init(ptr noundef nonnull %3) #4 ; 0 uses
  %i.e = call i32 @crypto_xof_shake256_update(ptr noundef nonnull %3, ptr noundef nonnull %i.b, i64 noundef 33) #4 ; 0 uses
  %i.f = call i32 @crypto_xof_shake256_squeeze(ptr noundef nonnull %3, ptr noundef nonnull %i.a, i64 noundef 128) #4 ; 0 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl nuw nsw i64 %index, 2
  %i.h = getelementptr i8, ptr %i.a, i64 %i.g
  %wide.load = load <4 x i32>, ptr %i.h, align 16 ; 2 uses
  %i.i = and <4 x i32> %wide.load, splat (i32 1431655765)
  %i.j = lshr <4 x i32> %wide.load, splat (i32 1)
  %i.k = and <4 x i32> %i.j, splat (i32 1431655765)
  %i.l = add nuw <4 x i32> %i.k, %i.i             ; 12 uses
  %i.m = shl nuw nsw i64 %index, 4
  %i.n = getelementptr i8, ptr %0, i64 %i.m
  %i.o = lshr <4 x i32> %i.l, splat (i32 4)
  %i.p = lshr <4 x i32> %i.l, splat (i32 8)
  %i.q = lshr <4 x i32> %i.l, splat (i32 12)
  %4 = lshr <4 x i32> %i.l, splat (i32 18)
  %5 = and <4 x i32> %4, splat (i32 3)
  %6 = lshr <4 x i32> %i.l, splat (i32 22)
  %7 = and <4 x i32> %6, splat (i32 3)
  %8 = lshr <4 x i32> %i.l, splat (i32 26)
  %9 = and <4 x i32> %8, splat (i32 3)
  %10 = lshr <4 x i32> %i.l, splat (i32 30)
  %11 = shufflevector <4 x i32> %i.l, <4 x i32> %i.o, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %12 = shufflevector <4 x i32> %i.p, <4 x i32> %i.q, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %13 = shufflevector <8 x i32> %11, <8 x i32> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %14 = and <16 x i32> %13, splat (i32 3)
  %15 = shufflevector <4 x i32> %i.l, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.r = shufflevector <4 x i32> %i.l, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %16 = shufflevector <8 x i32> %15, <8 x i32> %i.r, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %17 = lshr <16 x i32> %16, <i32 2, i32 2, i32 2, i32 2, i32 6, i32 6, i32 6, i32 6, i32 10, i32 10, i32 10, i32 10, i32 14, i32 14, i32 14, i32 14>
  %18 = and <16 x i32> %17, splat (i32 3)
  %19 = sub nsw <16 x i32> %14, %18
  %20 = shufflevector <4 x i32> %i.l, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %21 = shufflevector <4 x i32> %i.l, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %22 = shufflevector <8 x i32> %20, <8 x i32> %21, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %23 = lshr <16 x i32> %22, <i32 16, i32 16, i32 16, i32 16, i32 20, i32 20, i32 20, i32 20, i32 24, i32 24, i32 24, i32 24, i32 28, i32 28, i32 28, i32 28>
  %24 = and <16 x i32> %23, splat (i32 3)
  %i.s = shufflevector <4 x i32> %5, <4 x i32> %7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %25 = shufflevector <4 x i32> %9, <4 x i32> %10, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.t = shufflevector <8 x i32> %i.s, <8 x i32> %25, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %26 = sub nsw <16 x i32> %24, %i.t
  %i.u = shufflevector <16 x i32> %19, <16 x i32> %26, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %interleaved.vec = trunc nsw <32 x i32> %i.u to <32 x i16>
  store <32 x i16> %interleaved.vec, ptr %i.n, align 2
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, 32
  br i1 %i.v, label %poly_cbd_eta2.exit, label %vector.body, !llvm.loop !55

poly_cbd_eta2.exit:                               ; preds = %vector.body
  call void @sodium_memzero(ptr noundef nonnull %3, i64 noundef 256) #4
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 128) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable
define internal fastcc void @polyvec_ntt(ptr nofree noundef nonnull %0) unnamed_addr #3 {
bb.a:
  br label %vector.ph70

vector.ph70:                                      ; preds = %bb.a, %poly_ntt.exit
  %indvars.iv30 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next31, %poly_ntt.exit ] ; 2 uses
  %i.a = getelementptr [512 x i8], ptr %0, i64 %indvars.iv30 ; 40 uses
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph70
  %index72 = phi i64 [ 0, %vector.ph70 ], [ %index.next75, %vector.body71 ] ; 2 uses
  %i.b = getelementptr [2 x i8], ptr %i.a, i64 %index72 ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 256      ; 2 uses
  %wide.load73 = load <8 x i16>, ptr %i.c, align 2
  %i.d = sext <8 x i16> %wide.load73 to <8 x i32> ; 2 uses
  %i.e = mul nsw <8 x i32> %i.d, splat (i32 2571)
  %i.f = mul <8 x i32> %i.d, splat (i32 2064318464)
  %i.g = ashr exact <8 x i32> %i.f, splat (i32 16)
  %i.h = mul nsw <8 x i32> %i.g, splat (i32 -3329)
  %i.i = add nsw <8 x i32> %i.h, %i.e
  %i.j = lshr <8 x i32> %i.i, splat (i32 16)
  %i.k = trunc nuw <8 x i32> %i.j to <8 x i16>    ; 2 uses
  %wide.load74 = load <8 x i16>, ptr %i.b, align 2 ; 2 uses
  %i.l = sub <8 x i16> %wide.load74, %i.k
  store <8 x i16> %i.l, ptr %i.c, align 2
  %i.m = add <8 x i16> %wide.load74, %i.k
  store <8 x i16> %i.m, ptr %i.b, align 2
  %index.next75 = add nuw i64 %index72, 8         ; 2 uses
  %i.n = icmp eq i64 %index.next75, 128
  br i1 %i.n, label %vector.body64, label %vector.body71, !llvm.loop !56

vector.body64:                                    ; preds = %vector.body71, %vector.body64
  %index65 = phi i64 [ %index.next68, %vector.body64 ], [ 0, %vector.body71 ] ; 2 uses
  %i.o = getelementptr [2 x i8], ptr %i.a, i64 %index65 ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 128      ; 2 uses
  %wide.load66 = load <8 x i16>, ptr %i.p, align 2
  %i.q = sext <8 x i16> %wide.load66 to <8 x i32> ; 2 uses
  %i.r = mul nsw <8 x i32> %i.q, splat (i32 2970)
  %i.s = mul <8 x i32> %i.q, splat (i32 966393856)
  %i.t = ashr exact <8 x i32> %i.s, splat (i32 16)
  %i.u = mul nsw <8 x i32> %i.t, splat (i32 -3329)
  %i.v = add nsw <8 x i32> %i.u, %i.r
  %i.w = lshr <8 x i32> %i.v, splat (i32 16)
  %i.x = trunc nuw <8 x i32> %i.w to <8 x i16>    ; 2 uses
  %wide.load67 = load <8 x i16>, ptr %i.o, align 2 ; 2 uses
  %i.y = sub <8 x i16> %wide.load67, %i.x
  store <8 x i16> %i.y, ptr %i.p, align 2
  %i.z = add <8 x i16> %wide.load67, %i.x
  store <8 x i16> %i.z, ptr %i.o, align 2
  %index.next68 = add nuw i64 %index65, 8         ; 2 uses
  %i.aa = icmp eq i64 %index.next68, 64
  br i1 %i.aa, label %vector.body57, label %vector.body64, !llvm.loop !57

vector.body57:                                    ; preds = %vector.body64, %vector.body57
  %index58 = phi i64 [ %index.next61, %vector.body57 ], [ 0, %vector.body64 ] ; 2 uses
  %i.ab = getelementptr [2 x i8], ptr %i.a, i64 %index58 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 256    ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 384    ; 2 uses
  %wide.load59 = load <8 x i16>, ptr %i.ad, align 2
  %i.ae = sext <8 x i16> %wide.load59 to <8 x i32> ; 2 uses
  %i.af = mul nsw <8 x i32> %i.ae, splat (i32 1812)
  %i.ag = mul <8 x i32> %i.ae, splat (i32 51642368)
  %i.ah = ashr exact <8 x i32> %i.ag, splat (i32 16)
  %i.ai = mul nsw <8 x i32> %i.ah, splat (i32 -3329)
  %i.aj = add nsw <8 x i32> %i.ai, %i.af
  %i.ak = lshr <8 x i32> %i.aj, splat (i32 16)
  %i.al = trunc nuw <8 x i32> %i.ak to <8 x i16>  ; 2 uses
  %wide.load60 = load <8 x i16>, ptr %i.ac, align 2 ; 2 uses
  %i.am = sub <8 x i16> %wide.load60, %i.al
  store <8 x i16> %i.am, ptr %i.ad, align 2
  %i.an = add <8 x i16> %wide.load60, %i.al
  store <8 x i16> %i.an, ptr %i.ac, align 2
  %index.next61 = add nuw i64 %index58, 8         ; 2 uses
  %i.ao = icmp eq i64 %index.next61, 64
  br i1 %i.ao, label %vector.body50, label %vector.body57, !llvm.loop !58

vector.body50:                                    ; preds = %vector.body57
  %i.ap = getelementptr i8, ptr %i.a, i64 64      ; 2 uses
  %wide.load52 = load <8 x i16>, ptr %i.ap, align 2
  %i.aq = sext <8 x i16> %wide.load52 to <8 x i32> ; 2 uses
  %i.ar = mul nsw <8 x i32> %i.aq, splat (i32 1493)
  %i.as = mul <8 x i32> %i.aq, splat (i32 886374400)
  %i.at = ashr exact <8 x i32> %i.as, splat (i32 16)
  %i.au = mul nsw <8 x i32> %i.at, splat (i32 -3329)
  %i.av = add nsw <8 x i32> %i.au, %i.ar
  %i.aw = lshr <8 x i32> %i.av, splat (i32 16)
  %i.ax = trunc nuw <8 x i32> %i.aw to <8 x i16>  ; 2 uses
  %wide.load53 = load <8 x i16>, ptr %i.a, align 2 ; 2 uses
  %i.ay = sub <8 x i16> %wide.load53, %i.ax
  store <8 x i16> %i.ay, ptr %i.ap, align 2
  %i.az = add <8 x i16> %wide.load53, %i.ax
  store <8 x i16> %i.az, ptr %i.a, align 2
  %i.ba = getelementptr i8, ptr %i.a, i64 16      ; 2 uses
  %i.bb = getelementptr i8, ptr %i.a, i64 80      ; 2 uses
  %wide.load52.1 = load <8 x i16>, ptr %i.bb, align 2
  %i.bc = sext <8 x i16> %wide.load52.1 to <8 x i32> ; 2 uses
  %i.bd = mul nsw <8 x i32> %i.bc, splat (i32 1493)
  %i.be = mul <8 x i32> %i.bc, splat (i32 886374400)
  %i.bf = ashr exact <8 x i32> %i.be, splat (i32 16)
  %i.bg = mul nsw <8 x i32> %i.bf, splat (i32 -3329)
  %i.bh = add nsw <8 x i32> %i.bg, %i.bd
  %i.bi = lshr <8 x i32> %i.bh, splat (i32 16)
  %i.bj = trunc nuw <8 x i32> %i.bi to <8 x i16>  ; 2 uses
  %wide.load53.1 = load <8 x i16>, ptr %i.ba, align 2 ; 2 uses
  %i.bk = sub <8 x i16> %wide.load53.1, %i.bj
  store <8 x i16> %i.bk, ptr %i.bb, align 2
  %i.bl = add <8 x i16> %wide.load53.1, %i.bj
  store <8 x i16> %i.bl, ptr %i.ba, align 2
  %i.bm = getelementptr i8, ptr %i.a, i64 32      ; 2 uses
  %i.bn = getelementptr i8, ptr %i.a, i64 96      ; 2 uses
  %wide.load52.2 = load <8 x i16>, ptr %i.bn, align 2
  %i.bo = sext <8 x i16> %wide.load52.2 to <8 x i32> ; 2 uses
  %i.bp = mul nsw <8 x i32> %i.bo, splat (i32 1493)
  %i.bq = mul <8 x i32> %i.bo, splat (i32 886374400)
  %i.br = ashr exact <8 x i32> %i.bq, splat (i32 16)
  %i.bs = mul nsw <8 x i32> %i.br, splat (i32 -3329)
  %i.bt = add nsw <8 x i32> %i.bs, %i.bp
  %i.bu = lshr <8 x i32> %i.bt, splat (i32 16)
  %i.bv = trunc nuw <8 x i32> %i.bu to <8 x i16>  ; 2 uses
  %wide.load53.2 = load <8 x i16>, ptr %i.bm, align 2 ; 2 uses
  %i.bw = sub <8 x i16> %wide.load53.2, %i.bv
  store <8 x i16> %i.bw, ptr %i.bn, align 2
  %i.bx = add <8 x i16> %wide.load53.2, %i.bv
  store <8 x i16> %i.bx, ptr %i.bm, align 2
  %i.by = getelementptr i8, ptr %i.a, i64 48      ; 2 uses
  %i.bz = getelementptr i8, ptr %i.a, i64 112     ; 2 uses
  %wide.load52.3 = load <8 x i16>, ptr %i.bz, align 2
  %i.ca = sext <8 x i16> %wide.load52.3 to <8 x i32> ; 2 uses
  %i.cb = mul nsw <8 x i32> %i.ca, splat (i32 1493)
  %i.cc = mul <8 x i32> %i.ca, splat (i32 886374400)
  %i.cd = ashr exact <8 x i32> %i.cc, splat (i32 16)
  %i.ce = mul nsw <8 x i32> %i.cd, splat (i32 -3329)
  %i.cf = add nsw <8 x i32> %i.ce, %i.cb
  %i.cg = lshr <8 x i32> %i.cf, splat (i32 16)
  %i.ch = trunc nuw <8 x i32> %i.cg to <8 x i16>  ; 2 uses
  %wide.load53.3 = load <8 x i16>, ptr %i.by, align 2 ; 2 uses
  %i.ci = sub <8 x i16> %wide.load53.3, %i.ch
  store <8 x i16> %i.ci, ptr %i.bz, align 2
  %i.cj = add <8 x i16> %wide.load53.3, %i.ch
  store <8 x i16> %i.cj, ptr %i.by, align 2
  %i.ck = getelementptr i8, ptr %i.a, i64 128     ; 2 uses
  %i.cl = getelementptr i8, ptr %i.a, i64 192     ; 2 uses
  %wide.load45 = load <8 x i16>, ptr %i.cl, align 2
  %i.cm = sext <8 x i16> %wide.load45 to <8 x i32> ; 2 uses
  %i.cn = mul nsw <8 x i32> %i.cm, splat (i32 1422)
  %i.co = mul <8 x i32> %i.cm, splat (i32 -812777472)
  %i.cp = ashr exact <8 x i32> %i.co, splat (i32 16)
  %i.cq = mul nsw <8 x i32> %i.cp, splat (i32 -3329)
  %i.cr = add nsw <8 x i32> %i.cq, %i.cn
  %i.cs = lshr <8 x i32> %i.cr, splat (i32 16)
  %i.ct = trunc nuw <8 x i32> %i.cs to <8 x i16>  ; 2 uses
  %wide.load46 = load <8 x i16>, ptr %i.ck, align 2 ; 2 uses
  %i.cu = sub <8 x i16> %wide.load46, %i.ct
  store <8 x i16> %i.cu, ptr %i.cl, align 2
  %i.cv = add <8 x i16> %wide.load46, %i.ct
  store <8 x i16> %i.cv, ptr %i.ck, align 2
  %i.cw = getelementptr i8, ptr %i.a, i64 144     ; 2 uses
  %i.cx = getelementptr i8, ptr %i.a, i64 208     ; 2 uses
  %wide.load45.1 = load <8 x i16>, ptr %i.cx, align 2
  %i.cy = sext <8 x i16> %wide.load45.1 to <8 x i32> ; 2 uses
  %i.cz = mul nsw <8 x i32> %i.cy, splat (i32 1422)
  %i.da = mul <8 x i32> %i.cy, splat (i32 -812777472)
  %i.db = ashr exact <8 x i32> %i.da, splat (i32 16)
  %i.dc = mul nsw <8 x i32> %i.db, splat (i32 -3329)
  %i.dd = add nsw <8 x i32> %i.dc, %i.cz
  %i.de = lshr <8 x i32> %i.dd, splat (i32 16)
  %i.df = trunc nuw <8 x i32> %i.de to <8 x i16>  ; 2 uses
  %wide.load46.1 = load <8 x i16>, ptr %i.cw, align 2 ; 2 uses
  %i.dg = sub <8 x i16> %wide.load46.1, %i.df
  store <8 x i16> %i.dg, ptr %i.cx, align 2
  %i.dh = add <8 x i16> %wide.load46.1, %i.df
  store <8 x i16> %i.dh, ptr %i.cw, align 2
  %i.di = getelementptr i8, ptr %i.a, i64 160     ; 2 uses
  %i.dj = getelementptr i8, ptr %i.a, i64 224     ; 2 uses
  %wide.load45.2 = load <8 x i16>, ptr %i.dj, align 2
  %i.dk = sext <8 x i16> %wide.load45.2 to <8 x i32> ; 2 uses
  %i.dl = mul nsw <8 x i32> %i.dk, splat (i32 1422)
  %i.dm = mul <8 x i32> %i.dk, splat (i32 -812777472)
  %i.dn = ashr exact <8 x i32> %i.dm, splat (i32 16)
  %i.do = mul nsw <8 x i32> %i.dn, splat (i32 -3329)
  %i.dp = add nsw <8 x i32> %i.do, %i.dl
  %i.dq = lshr <8 x i32> %i.dp, splat (i32 16)
  %i.dr = trunc nuw <8 x i32> %i.dq to <8 x i16>  ; 2 uses
  %wide.load46.2 = load <8 x i16>, ptr %i.di, align 2 ; 2 uses
end_hunk_0
