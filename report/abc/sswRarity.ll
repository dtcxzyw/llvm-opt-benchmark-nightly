Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sswRarity?download=true
inline.NumInlined: 245
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 25
begin_hunk_0_@transpose32:.preheader
  %i.js = xor <4 x i32> %i.jq, %i.jr
  %i.jt = and <4 x i32> %i.js, splat (i32 1431655765) ; 2 uses
  %i.ju = shl nuw <4 x i32> %i.jt, splat (i32 1)
  %i.jv = shufflevector <4 x i32> %i.jt, <4 x i32> %i.ju, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.jw = xor <8 x i32> %i.jv, %i.jo
  store <8 x i32> %i.jw, ptr %i.e, align 4, !tbaa !53
  %i.jx = load i32, ptr %i.ah, align 4, !tbaa !53 ; 2 uses
  %i.jy = load i32, ptr %i.ai, align 4, !tbaa !53 ; 2 uses
  %i.jz = lshr i32 %i.jy, 1
  %i.ka = xor i32 %i.jz, %i.jx
  %i.kb = and i32 %i.ka, 1431655765               ; 2 uses
  %i.kc = xor i32 %i.kb, %i.jx
  store i32 %i.kc, ptr %i.ah, align 4, !tbaa !53
  %i.kd = shl nuw i32 %i.kb, 1
  %i.ke = xor i32 %i.kd, %i.jy
  store i32 %i.ke, ptr %i.ai, align 4, !tbaa !53
  %i.kf = load i32, ptr %i.ak, align 4, !tbaa !53 ; 2 uses
  %i.kg = load i32, ptr %i.am, align 4, !tbaa !53 ; 2 uses
  %i.kh = lshr i32 %i.kg, 1
  %i.ki = xor i32 %i.kh, %i.kf
  %i.kj = and i32 %i.ki, 1431655765               ; 2 uses
  %i.kk = xor i32 %i.kj, %i.kf
  store i32 %i.kk, ptr %i.ak, align 4, !tbaa !53
  %i.kl = shl nuw i32 %i.kj, 1
  %i.km = xor i32 %i.kl, %i.kg
  store i32 %i.km, ptr %i.am, align 4, !tbaa !53
  %i.kn = load i32, ptr %i.ao, align 4, !tbaa !53 ; 2 uses
  %i.ko = load i32, ptr %i.aq, align 4, !tbaa !53 ; 2 uses
  %i.kp = lshr i32 %i.ko, 1
  %i.kq = xor i32 %i.kp, %i.kn
  %i.kr = and i32 %i.kq, 1431655765               ; 2 uses
  %i.ks = xor i32 %i.kr, %i.kn
  store i32 %i.ks, ptr %i.ao, align 4, !tbaa !53
  %i.kt = shl nuw i32 %i.kr, 1
  %i.ku = xor i32 %i.kt, %i.ko
  store i32 %i.ku, ptr %i.aq, align 4, !tbaa !53
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @transpose64(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
.preheader:
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %bb.a
  %.02830 = phi i32 [ 0, %.preheader ], [ %i.n, %bb.a ] ; 3 uses
  %i.a = sext i32 %.02830 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  %i.d = sext i32 %.02830 to i64
  %i.e = getelementptr [8 x i8], ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 256      ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %i.h = lshr i64 %i.g, 32
  %.masked = and i64 %i.c, 4294967295
  %i.i = xor i64 %i.h, %.masked                   ; 2 uses
  %i.j = xor i64 %i.i, %i.c
  store i64 %i.j, ptr %i.b, align 8, !tbaa !50
  %i.k = shl nuw i64 %i.i, 32
  %i.l = xor i64 %i.k, %i.g
  store i64 %i.l, ptr %i.f, align 8, !tbaa !50
  %i.m = add nsw i32 %.02830, 33
  %i.n = and i32 %i.m, -33                        ; 2 uses
  %i.o = icmp slt i32 %i.n, 64
  br i1 %i.o, label %bb.a, label %.preheader.1, !llvm.loop !1

.preheader.1:                                     ; preds = %bb.a, %.preheader.1
  %.02830.1 = phi i32 [ %i.ad, %.preheader.1 ], [ 0, %bb.a ] ; 3 uses
  %i.p = sext i32 %.02830.1 to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !50   ; 2 uses
  %i.s = sext i32 %.02830.1 to i64
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 128      ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !50   ; 2 uses
  %i.w = lshr i64 %i.v, 16
  %i.x = xor i64 %i.w, %i.r
  %i.y = and i64 %i.x, 281470681808895            ; 2 uses
  %i.z = xor i64 %i.y, %i.r
  store i64 %i.z, ptr %i.q, align 8, !tbaa !50
  %i.aa = shl nuw i64 %i.y, 16
  %i.ab = xor i64 %i.aa, %i.v
  store i64 %i.ab, ptr %i.u, align 8, !tbaa !50
  %i.ac = add nsw i32 %.02830.1, 17
  %i.ad = and i32 %i.ac, -17                      ; 2 uses
  %i.ae = icmp slt i32 %i.ad, 64
  br i1 %i.ae, label %.preheader.1, label %.preheader.2, !llvm.loop !1

.preheader.2:                                     ; preds = %.preheader.1, %.preheader.2
  %.02830.2 = phi i32 [ %i.at, %.preheader.2 ], [ 0, %.preheader.1 ] ; 3 uses
  %i.af = sext i32 %.02830.2 to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %i.af ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !50 ; 2 uses
  %i.ai = sext i32 %.02830.2 to i64
  %i.aj = getelementptr [8 x i8], ptr %0, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 64     ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !50 ; 2 uses
  %i.am = lshr i64 %i.al, 8
  %i.an = xor i64 %i.am, %i.ah
  %i.ao = and i64 %i.an, 71777214294589695        ; 2 uses
  %i.ap = xor i64 %i.ao, %i.ah
  store i64 %i.ap, ptr %i.ag, align 8, !tbaa !50
  %i.aq = shl nuw i64 %i.ao, 8
  %i.ar = xor i64 %i.aq, %i.al
  store i64 %i.ar, ptr %i.ak, align 8, !tbaa !50
  %i.as = add nsw i32 %.02830.2, 9
  %i.at = and i32 %i.as, -9                       ; 2 uses
  %i.au = icmp slt i32 %i.at, 64
  br i1 %i.au, label %.preheader.2, label %.preheader.3, !llvm.loop !1

.preheader.3:                                     ; preds = %.preheader.2, %.preheader.3
  %.02830.3 = phi i32 [ %i.bj, %.preheader.3 ], [ 0, %.preheader.2 ] ; 3 uses
  %i.av = sext i32 %.02830.3 to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.av ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !50 ; 2 uses
  %i.ay = sext i32 %.02830.3 to i64
  %i.az = getelementptr [8 x i8], ptr %0, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 32     ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !50 ; 2 uses
  %i.bc = lshr i64 %i.bb, 4
  %i.bd = xor i64 %i.bc, %i.ax
  %i.be = and i64 %i.bd, 1085102592571150095      ; 2 uses
  %i.bf = xor i64 %i.be, %i.ax
  store i64 %i.bf, ptr %i.aw, align 8, !tbaa !50
  %i.bg = shl nuw i64 %i.be, 4
  %i.bh = xor i64 %i.bg, %i.bb
  store i64 %i.bh, ptr %i.ba, align 8, !tbaa !50
  %i.bi = add nsw i32 %.02830.3, 5
  %i.bj = and i32 %i.bi, -5                       ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 64
  br i1 %i.bk, label %.preheader.3, label %.preheader.4, !llvm.loop !1

.preheader.4:                                     ; preds = %.preheader.3, %.preheader.4
  %.02830.4 = phi i32 [ %i.bz, %.preheader.4 ], [ 0, %.preheader.3 ] ; 3 uses
  %i.bl = sext i32 %.02830.4 to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bl ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !50 ; 2 uses
  %i.bo = sext i32 %.02830.4 to i64
  %i.bp = getelementptr [8 x i8], ptr %0, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 16     ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !50 ; 2 uses
  %i.bs = lshr i64 %i.br, 2
  %i.bt = xor i64 %i.bs, %i.bn
  %i.bu = and i64 %i.bt, 3689348814741910323      ; 2 uses
  %i.bv = xor i64 %i.bu, %i.bn
  store i64 %i.bv, ptr %i.bm, align 8, !tbaa !50
  %i.bw = shl nuw i64 %i.bu, 2
  %i.bx = xor i64 %i.bw, %i.br
  store i64 %i.bx, ptr %i.bq, align 8, !tbaa !50
  %i.by = add nsw i32 %.02830.4, 3
  %i.bz = and i32 %i.by, -3                       ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 64
  br i1 %i.ca, label %.preheader.4, label %.preheader.5, !llvm.loop !1

.preheader.5:                                     ; preds = %.preheader.4, %.preheader.5
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.5 ], [ 0, %.preheader.4 ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !50 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !50 ; 2 uses
  %i.cg = lshr i64 %i.cf, 1
  %i.ch = xor i64 %i.cg, %i.cc
  %i.ci = and i64 %i.ch, 6148914691236517205      ; 2 uses
  %i.cj = xor i64 %i.ci, %i.cc
  store i64 %i.cj, ptr %i.cb, align 8, !tbaa !50
  %i.ck = shl nuw i64 %i.ci, 1
  %i.cl = xor i64 %i.ck, %i.cf
  store i64 %i.cl, ptr %i.ce, align 8, !tbaa !50
  %indvars.iv.next = or disjoint i64 %indvars.iv, 2 ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !50 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !50 ; 2 uses
  %i.cr = lshr i64 %i.cq, 1
  %i.cs = xor i64 %i.cr, %i.cn
  %i.ct = and i64 %i.cs, 6148914691236517205      ; 2 uses
  %i.cu = xor i64 %i.ct, %i.cn
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !50
  %i.cv = shl nuw i64 %i.ct, 1
  %i.cw = xor i64 %i.cv, %i.cq
  store i64 %i.cw, ptr %i.cp, align 8, !tbaa !50
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4
  %i.cx = icmp samesign ult i64 %indvars.iv.next, 62
  br i1 %i.cx, label %.preheader.5, label %bb.b, !llvm.loop !1

bb.b:                                             ; preds = %.preheader.5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @transpose64Simple(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 512)) %1) local_unnamed_addr #7 {
.preheader.preheader:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %1, i8 0, i64 512, i1 false), !tbaa !50
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.f
  %indvars.iv20 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next21, %bb.f ] ; 3 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv20 ; 2 uses
  %2 = and i64 %indvars.iv20, 4294967295
  %3 = xor i64 %2, 63
  %4 = shl nuw i64 1, %3                          ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %bb.e, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %bb.e ] ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50
  %i.c = shl nuw i64 1, %indvars.iv
  %i.d = and i64 %i.b, %i.c
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !50
  %i.g = or i64 %i.f, %4
  store i64 %i.g, ptr %i.e, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = load i64, ptr %i.a, align 8, !tbaa !50
  %i.i = shl nuw i64 2, %indvars.iv
  %i.j = and i64 %i.h, %i.i
  %.not.1 = icmp eq i64 %i.j, 0
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !50
  %i.n = or i64 %i.m, %4
  store i64 %i.n, ptr %i.l, align 8, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond.not.1, label %bb.f, label %bb.a, !llvm.loop !2

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %exitcond23.not = icmp eq i64 %indvars.iv.next21, 64
  br i1 %exitcond23.not, label %bb.g, label %.preheader, !llvm.loop !3

bb.g:                                             ; preds = %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define void @TransposeTest() local_unnamed_addr #2 {
vector.ph:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [64 x i64], align 16              ; 37 uses
  %i.b = alloca [64 x i64], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.c = tail call i64 @Aig_ManRandom64(i32 noundef 1) #22 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x i64> <i64 -1, i64 0>, ptr %i.a, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.d, align 16, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <2 x i64> zeroinitializer, ptr %i.e, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.f, align 16, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <2 x i64> zeroinitializer, ptr %i.g, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.h, align 16, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <2 x i64> zeroinitializer, ptr %i.i, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.j, align 16, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <2 x i64> zeroinitializer, ptr %i.k, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.l, align 16, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <2 x i64> zeroinitializer, ptr %i.m, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.n, align 16, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <2 x i64> zeroinitializer, ptr %i.o, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.p, align 16, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <2 x i64> zeroinitializer, ptr %i.q, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.r, align 16, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store <2 x i64> zeroinitializer, ptr %i.s, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.t, align 16, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store <2 x i64> zeroinitializer, ptr %i.u, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.v, align 16, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store <2 x i64> zeroinitializer, ptr %i.w, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.x, align 16, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store <2 x i64> zeroinitializer, ptr %i.y, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.z, align 16, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store <2 x i64> zeroinitializer, ptr %i.aa, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.ab, align 16, !tbaa !50
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store <2 x i64> zeroinitializer, ptr %i.ac, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.ad, align 16, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store <2 x i64> zeroinitializer, ptr %i.ae, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.af, align 16, !tbaa !50
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store <2 x i64> zeroinitializer, ptr %i.ag, align 16, !tbaa !50
  store <2 x i64> zeroinitializer, ptr %i.ah, align 16, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ai = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #22
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %Abc_Clock.exit, label %bb.a

bb.a:                                             ; preds = %vector.ph
  %i.ak = load i64, ptr %3, align 8, !tbaa !62
  %.neg21 = mul i64 %i.ak, -1000000
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !63
  %.neg = sdiv i64 %i.am, -1000
  %.neg22 = add i64 %.neg, %.neg21
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %vector.ph, %bb.a
  %.0.i.neg = phi i64 [ %.neg22, %bb.a ], [ 1, %vector.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.b

bb.b:                                             ; preds = %Abc_Clock.exit, %transpose64Simple.exit
  %.127 = phi i32 [ 0, %Abc_Clock.exit ], [ %i.ba, %transpose64Simple.exit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.b, i8 0, i64 512, i1 false), !tbaa !50
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.b
  %indvars.iv20.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next21.i, %bb.h ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv20.i
  %4 = xor i64 %indvars.iv20.i, 63
  %5 = shl nuw i64 1, %4                          ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !50 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.1, %bb.g ] ; 5 uses
  %i.ap = shl nuw i64 1, %indvars.iv.i
  %i.aq = and i64 %i.ao, %i.ap
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.as = load i64, ptr %i.ar, align 16, !tbaa !50
  %i.at = or i64 %i.as, %5
  store i64 %i.at, ptr %i.ar, align 16, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = shl nuw i64 2, %indvars.iv.i
  %i.av = and i64 %i.ao, %i.au
  %.not.i.1 = icmp eq i64 %i.av, 0
  br i1 %.not.i.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !50
  %i.az = or i64 %i.ay, %5
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 64
  br i1 %exitcond.not.i.1, label %bb.h, label %bb.c, !llvm.loop !2

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 64
  br i1 %exitcond23.not.i, label %transpose64Simple.exit, label %.preheader.i, !llvm.loop !3

transpose64Simple.exit:                           ; preds = %bb.h
  %i.ba = add nuw nsw i32 %.127, 1                ; 2 uses
  %exitcond31.not = icmp eq i32 %i.ba, 100001
  br i1 %exitcond31.not, label %bb.i, label %bb.b, !llvm.loop !125

bb.i:                                             ; preds = %transpose64Simple.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.bb = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #22
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %Abc_Clock.exit16, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = load i64, ptr %2, align 8, !tbaa !62
  %i.be = mul nsw i64 %i.bd, 1000000
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !63
  %i.bh = sdiv i64 %i.bg, 1000
  %i.bi = add nsw i64 %i.bh, %i.be
  br label %Abc_Clock.exit16

Abc_Clock.exit16:                                 ; preds = %bb.i, %bb.j
  %.0.i15 = phi i64 [ %i.bi, %bb.j ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.bj = add i64 %.0.i15, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1)
  %i.bk = sitofp i64 %i.bj to double
  %i.bl = fdiv double %i.bk, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.32, double noundef %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.bm = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #22
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %Abc_Clock.exit18, label %bb.k

bb.k:                                             ; preds = %Abc_Clock.exit16
  %i.bo = load i64, ptr %1, align 8, !tbaa !62
  %.neg24 = mul i64 %i.bo, -1000000
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !63
  %.neg23 = sdiv i64 %i.bq, -1000
  %.neg25 = add i64 %.neg23, %.neg24
  br label %Abc_Clock.exit18

Abc_Clock.exit18:                                 ; preds = %Abc_Clock.exit16, %bb.k
  %.0.i17.neg = phi i64 [ %.neg25, %bb.k ], [ 1, %Abc_Clock.exit16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.l

bb.l:                                             ; preds = %Abc_Clock.exit18, %bb.l
  %.228 = phi i32 [ 0, %Abc_Clock.exit18 ], [ %i.br, %bb.l ]
  call void @transpose64(ptr noundef nonnull %i.a)
  %i.br = add nuw nsw i32 %.228, 1                ; 2 uses
  %exitcond32.not = icmp eq i32 %i.br, 100001
  br i1 %exitcond32.not, label %bb.m, label %bb.l, !llvm.loop !126

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  %i.bs = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #22
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %Abc_Clock.exit20, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = load i64, ptr %0, align 8, !tbaa !62
  %i.bv = mul nsw i64 %i.bu, 1000000
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !63
  %i.by = sdiv i64 %i.bx, 1000
  %i.bz = add nsw i64 %i.by, %i.bv
  br label %Abc_Clock.exit20

Abc_Clock.exit20:                                 ; preds = %bb.m, %bb.n
  %.0.i19 = phi i64 [ %i.bz, %bb.n ], [ -1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %i.ca = add i64 %.0.i19, %.0.i17.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1)
  %i.cb = sitofp i64 %i.ca to double
  %i.cc = fdiv double %i.cb, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.32, double noundef %i.cc)
  br label %bb.o

bb.o:                                             ; preds = %Abc_Clock.exit20, %bb.q
  %indvars.iv33 = phi i64 [ 0, %Abc_Clock.exit20 ], [ %indvars.iv.next34, %bb.q ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv33
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !50
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv33
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !50
  %.not = icmp eq i64 %i.ce, %i.cg
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2)
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next34, 64
  br i1 %exitcond36.not, label %bb.r, label %bb.o, !llvm.loop !127

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Ssw_RarTranspose(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = alloca [64 x i64], align 16              ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = load ptr, ptr %0, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20   ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.preheader36.lr.ph, label %._crit_edge41.split

.preheader36.lr.ph:                               ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !64   ; 4 uses
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = getelementptr i8, ptr %0, i64 40
  br i1 %i.h, label %.preheader36.lr.ph.split, label %._crit_edge41.split

.preheader36.lr.ph.split:                         ; preds = %.preheader36.lr.ph
  %i.j = getelementptr i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 104
  %.val30 = load i32, ptr %i.m, align 8, !tbaa !57
  %i.n = getelementptr i8, ptr %i.l, i64 24
  %i.o = getelementptr i8, ptr %i.l, i64 112
  %.val34 = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.p = sext i32 %.val30 to i64
  %i.q = zext nneg i32 %i.g to i64                ; 4 uses
  %wide.trip.count54 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %i.g to i64
  %ident.check.not = icmp eq i32 %i.g, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  br label %.preheader36

.preheader36:                                     ; preds = %.preheader36.lr.ph.split, %._crit_edge
  %indvars.iv51 = phi i64 [ 0, %.preheader36.lr.ph.split ], [ %indvars.iv.next52, %._crit_edge ] ; 3 uses
  %i.aw = shl nuw nsw i64 %indvars.iv51, 6        ; 16 uses
  %i.ax = or disjoint i64 %i.aw, 63               ; 5 uses
  br label %.preheader35

.preheader35:                                     ; preds = %.preheader36, %middle.block
  %indvars.iv47 = phi i64 [ 0, %.preheader36 ], [ %indvars.iv.next48, %middle.block ] ; 3 uses
  %i.ay = shl nuw nsw i64 %indvars.iv47, 6
  %i.az = or disjoint i64 %i.ay, 63
  br label %bb.b

bb.b:                                             ; preds = %.preheader35, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader35 ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.ba = sub nuw nsw i64 %i.az, %indvars.iv      ; 2 uses
  %i.bb = icmp slt i64 %i.ba, %i.p
  br i1 %i.bb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_0
