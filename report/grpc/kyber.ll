Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/kyber?download=true
inline.NumInlined: 107
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZL13matrix_expandP6matrixPKh:bb.a
  %or.cond.i = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = add nsw i32 %.2.i, 1
  %i.ae = sext i32 %.2.i to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.ae
  store i16 %i.v, ptr %i.af, align 2, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.3.i = phi i32 [ %i.ad, %bb.h ], [ %.2.i, %bb.g ] ; 3 uses
  %i.ag = add nuw nsw i64 %.020.i, 3
  %i.ah = icmp samesign ult i64 %.020.i, 165
  %i.ai = icmp slt i32 %.3.i, 256                 ; 2 uses
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %i.aj, label %bb.e, label %bb.d, !llvm.loop !42

_ZL26scalar_from_keccak_vartimeP6scalarP19BORINGSSL_keccak_st.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  store i8 %i.e, ptr %i.c, align 16, !tbaa !17
  store i8 1, ptr %i.d, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @BORINGSSL_keccak_init(ptr noundef nonnull %2, i32 noundef 2) #9
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %2, ptr noundef nonnull %i.b, i64 noundef 34) #9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 512 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.p, %_ZL26scalar_from_keccak_vartimeP6scalarP19BORINGSSL_keccak_st.exit
  %.01821.i.1 = phi i32 [ 0, %_ZL26scalar_from_keccak_vartimeP6scalarP19BORINGSSL_keccak_st.exit ], [ %.3.i.1, %bb.p ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i64 noundef 168) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %bb.j
  %.020.i.1 = phi i64 [ 0, %bb.j ], [ %i.bl, %bb.o ] ; 3 uses
  %.119.i.1 = phi i32 [ %.01821.i.1, %bb.j ], [ %.3.i.1, %bb.o ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %.020.i.1 ; 3 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !17
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !17
  %i.aq = zext i8 %i.ap to i32                    ; 2 uses
  %i.ar = shl nuw nsw i32 %i.aq, 8
  %i.as = and i32 %i.ar, 3840
  %i.at = or disjoint i32 %i.as, %i.an            ; 2 uses
  %i.au = lshr i32 %i.aq, 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !17
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 4
  %i.az = or disjoint i32 %i.ay, %i.au            ; 2 uses
  %i.ba = trunc nuw nsw i32 %i.az to i16
  %i.bb = icmp samesign ult i32 %i.at, 3329
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = trunc nuw nsw i32 %i.at to i16
  %i.bd = add nsw i32 %.119.i.1, 1
  %i.be = sext i32 %.119.i.1 to i64
  %i.bf = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %i.be
  store i16 %i.bc, ptr %i.bf, align 2, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2.i.1 = phi i32 [ %i.bd, %bb.l ], [ %.119.i.1, %bb.k ] ; 4 uses
  %i.bg = icmp samesign ult i32 %i.az, 3329
  %i.bh = icmp slt i32 %.2.i.1, 256
  %or.cond.i.1 = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %or.cond.i.1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = add nsw i32 %.2.i.1, 1
  %i.bj = sext i32 %.2.i.1 to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.ak, i64 %i.bj
  store i16 %i.ba, ptr %i.bk, align 2, !tbaa !19
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.3.i.1 = phi i32 [ %i.bi, %bb.n ], [ %.2.i.1, %bb.m ] ; 3 uses
  %i.bl = add nuw nsw i64 %.020.i.1, 3
  %i.bm = icmp samesign ult i64 %.020.i.1, 165
  %i.bn = icmp slt i32 %.3.i.1, 256               ; 2 uses
  %i.bo = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %i.bo, label %bb.k, label %bb.p, !llvm.loop !42

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %i.bn, label %bb.j, label %_ZL26scalar_from_keccak_vartimeP6scalarP19BORINGSSL_keccak_st.exit.1, !llvm.loop !41

_ZL26scalar_from_keccak_vartimeP6scalarP19BORINGSSL_keccak_st.exit.1: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  store i8 %i.e, ptr %i.c, align 16, !tbaa !17
  store i8 2, ptr %i.d, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @BORINGSSL_keccak_init(ptr noundef nonnull %2, i32 noundef 2) #9
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %2, ptr noundef nonnull %i.b, i64 noundef 34) #9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 1024 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.w, %_ZL26scalar_from_keccak_vartimeP6scalarP19BORINGSSL_keccak_st.exit.1
  %.01821.i.2 = phi i32 [ 0, %_ZL26scalar_from_keccak_vartimeP6scalarP19BORINGSSL_keccak_st.exit.1 ], [ %.3.i.2, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i64 noundef 168) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.v, %bb.q
  %.020.i.2 = phi i64 [ 0, %bb.q ], [ %i.cq, %bb.v ] ; 3 uses
  %.119.i.2 = phi i32 [ %.01821.i.2, %bb.q ], [ %.3.i.2, %bb.v ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.020.i.2 ; 3 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17
  %i.bs = zext i8 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !17
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = shl nuw nsw i32 %i.bv, 8
  %i.bx = and i32 %i.bw, 3840
  %i.by = or disjoint i32 %i.bx, %i.bs            ; 2 uses
  %i.bz = lshr i32 %i.bv, 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !17
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 4
  %i.ce = or disjoint i32 %i.cd, %i.bz            ; 2 uses
  %i.cf = trunc nuw nsw i32 %i.ce to i16
  %i.cg = icmp samesign ult i32 %i.by, 3329
  br i1 %i.cg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ch = trunc nuw nsw i32 %i.by to i16
  %i.ci = add nsw i32 %.119.i.2, 1
  %i.cj = sext i32 %.119.i.2 to i64
  %i.ck = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.cj
  store i16 %i.ch, ptr %i.ck, align 2, !tbaa !19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.2.i.2 = phi i32 [ %i.ci, %bb.s ], [ %.119.i.2, %bb.r ] ; 4 uses
  %i.cl = icmp samesign ult i32 %i.ce, 3329
  %i.cm = icmp slt i32 %.2.i.2, 256
  %or.cond.i.2 = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond.i.2, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cn = add nsw i32 %.2.i.2, 1
  %i.co = sext i32 %.2.i.2 to i64
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.co
  store i16 %i.cf, ptr %i.cp, align 2, !tbaa !19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.3.i.2 = phi i32 [ %i.cn, %bb.u ], [ %.2.i.2, %bb.t ] ; 3 uses
  %i.cq = add nuw nsw i64 %.020.i.2, 3
  %i.cr = icmp samesign ult i64 %.020.i.2, 165
  %i.cs = icmp slt i32 %.3.i.2, 256               ; 2 uses
  %i.ct = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %i.ct, label %bb.r, label %bb.w, !llvm.loop !42

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %i.cs, label %bb.q, label %_ZL26scalar_from_keccak_vartimeP6scalarP19BORINGSSL_keccak_st.exit.2, !llvm.loop !41

_ZL26scalar_from_keccak_vartimeP6scalarP19BORINGSSL_keccak_st.exit.2: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !43
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL28vector_generate_secret_eta_2P6vectorPhPKh(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
vector.ph:
  %i.a = alloca [128 x i8], align 16              ; 12 uses
  %i.b = alloca [33 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i8, ptr %1, align 1, !tbaa !17      ; 2 uses
  %i.e = add i8 %i.d, 1
  store i8 %i.e, ptr %1, align 1, !tbaa !17
  store i8 %i.d, ptr %i.c, align 16, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @BORINGSSL_keccak(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull %i.b, i64 noundef 33, i32 noundef 3) #9
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %wide.load = load <4 x i8>, ptr %i.f, align 4, !tbaa !17 ; 2 uses
  %i.g = zext <4 x i8> %wide.load to <4 x i32>    ; 4 uses
  %i.h = and <4 x i32> %i.g, splat (i32 1)
  %i.i = lshr <4 x i32> %i.g, splat (i32 1)
  %i.j = and <4 x i32> %i.i, splat (i32 1)
  %i.k = shl <4 x i32> %i.g, splat (i32 29)
  %i.l = ashr <4 x i32> %i.k, splat (i32 31)
  %i.m = shl <4 x i32> %i.g, splat (i32 28)
  %i.n = ashr <4 x i32> %i.m, splat (i32 31)
  %i.o = add nuw nsw <4 x i32> %i.j, %i.h
  %i.p = add nsw <4 x i32> %i.o, %i.n
  %i.q = add nsw <4 x i32> %i.p, %i.l             ; 2 uses
  %3 = and <4 x i32> %i.q, splat (i32 32768)
  %4 = icmp eq <4 x i32> %3, zeroinitializer
  %i.r = select <4 x i1> %4, <4 x i32> zeroinitializer, <4 x i32> splat (i32 3329)
  %i.s = add nsw <4 x i32> %i.r, %i.q
  %i.t = trunc nsw <4 x i32> %i.s to <4 x i16>
  %.idx = shl nuw i64 %index, 2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.v = lshr <4 x i8> %wide.load, splat (i8 4)
  %i.w = zext nneg <4 x i8> %i.v to <4 x i16>     ; 4 uses
  %i.x = and <4 x i16> %i.w, splat (i16 1)
  %i.y = lshr <4 x i16> %i.w, splat (i16 1)
  %i.z = and <4 x i16> %i.y, splat (i16 1)
  %i.aa = shl <4 x i16> %i.w, splat (i16 13)
  %i.ab = ashr <4 x i16> %i.aa, splat (i16 15)
  %i.ac = lshr <4 x i16> %i.w, splat (i16 3)
  %i.ad = sub nsw <4 x i16> %i.x, %i.ac
  %i.ae = add nsw <4 x i16> %i.ad, %i.z
  %i.af = add nsw <4 x i16> %i.ae, %i.ab          ; 2 uses
  %i.ag = icmp slt <4 x i16> %i.af, zeroinitializer
  %i.ah = select <4 x i1> %i.ag, <4 x i16> splat (i16 3329), <4 x i16> zeroinitializer
  %i.ai = add nsw <4 x i16> %i.ah, %i.af
  %interleaved.vec = shufflevector <4 x i16> %i.t, <4 x i16> %i.ai, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.u, align 2, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, 128
  br i1 %i.aj, label %_ZL52scalar_centered_binomial_distribution_eta_2_with_prfP6scalarPKh.exit, label %vector.body, !llvm.loop !44

_ZL52scalar_centered_binomial_distribution_eta_2_with_prfP6scalarPKh.exit: ; preds = %vector.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ak = load i8, ptr %1, align 1, !tbaa !17     ; 2 uses
  %i.al = add i8 %i.ak, 1
  store i8 %i.al, ptr %1, align 1, !tbaa !17
  store i8 %i.ak, ptr %i.c, align 16, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @BORINGSSL_keccak(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull %i.b, i64 noundef 33, i32 noundef 3) #9
  br label %vector.body8

vector.body8:                                     ; preds = %vector.body8, %_ZL52scalar_centered_binomial_distribution_eta_2_with_prfP6scalarPKh.exit
  %index9 = phi i64 [ 0, %_ZL52scalar_centered_binomial_distribution_eta_2_with_prfP6scalarPKh.exit ], [ %index.next12, %vector.body8 ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 %index9
  %wide.load10 = load <4 x i8>, ptr %i.an, align 4, !tbaa !17 ; 2 uses
  %i.ao = zext <4 x i8> %wide.load10 to <4 x i32> ; 4 uses
  %i.ap = and <4 x i32> %i.ao, splat (i32 1)
  %i.aq = lshr <4 x i32> %i.ao, splat (i32 1)
  %i.ar = and <4 x i32> %i.aq, splat (i32 1)
  %i.as = shl <4 x i32> %i.ao, splat (i32 29)
  %i.at = ashr <4 x i32> %i.as, splat (i32 31)
  %i.au = shl <4 x i32> %i.ao, splat (i32 28)
  %i.av = ashr <4 x i32> %i.au, splat (i32 31)
  %i.aw = add nuw nsw <4 x i32> %i.ar, %i.ap
  %i.ax = add nsw <4 x i32> %i.aw, %i.av
  %i.ay = add nsw <4 x i32> %i.ax, %i.at          ; 2 uses
  %5 = and <4 x i32> %i.ay, splat (i32 32768)
  %6 = icmp eq <4 x i32> %5, zeroinitializer
  %i.az = select <4 x i1> %6, <4 x i32> zeroinitializer, <4 x i32> splat (i32 3329)
  %i.ba = add nsw <4 x i32> %i.az, %i.ay
  %i.bb = trunc nsw <4 x i32> %i.ba to <4 x i16>
  %.idx21 = shl nuw i64 %index9, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx21
  %i.bd = lshr <4 x i8> %wide.load10, splat (i8 4)
  %i.be = zext nneg <4 x i8> %i.bd to <4 x i16>   ; 4 uses
  %i.bf = and <4 x i16> %i.be, splat (i16 1)
  %i.bg = lshr <4 x i16> %i.be, splat (i16 1)
  %i.bh = and <4 x i16> %i.bg, splat (i16 1)
  %i.bi = shl <4 x i16> %i.be, splat (i16 13)
  %i.bj = ashr <4 x i16> %i.bi, splat (i16 15)
  %i.bk = lshr <4 x i16> %i.be, splat (i16 3)
  %i.bl = sub nsw <4 x i16> %i.bf, %i.bk
  %i.bm = add nsw <4 x i16> %i.bl, %i.bh
  %i.bn = add nsw <4 x i16> %i.bm, %i.bj          ; 2 uses
  %i.bo = icmp slt <4 x i16> %i.bn, zeroinitializer
  %i.bp = select <4 x i1> %i.bo, <4 x i16> splat (i16 3329), <4 x i16> zeroinitializer
  %i.bq = add nsw <4 x i16> %i.bp, %i.bn
  %interleaved.vec11 = shufflevector <4 x i16> %i.bb, <4 x i16> %i.bq, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec11, ptr %i.bc, align 2, !tbaa !19
  %index.next12 = add nuw i64 %index9, 4          ; 2 uses
  %i.br = icmp eq i64 %index.next12, 128
  br i1 %i.br, label %_ZL52scalar_centered_binomial_distribution_eta_2_with_prfP6scalarPKh.exit.1, label %vector.body8, !llvm.loop !45

_ZL52scalar_centered_binomial_distribution_eta_2_with_prfP6scalarPKh.exit.1: ; preds = %vector.body8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.bs = load i8, ptr %1, align 1, !tbaa !17     ; 2 uses
  %i.bt = add i8 %i.bs, 1
  store i8 %i.bt, ptr %1, align 1, !tbaa !17
  store i8 %i.bs, ptr %i.c, align 16, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1024
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @BORINGSSL_keccak(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull %i.b, i64 noundef 33, i32 noundef 3) #9
  br label %vector.body15

vector.body15:                                    ; preds = %vector.body15, %_ZL52scalar_centered_binomial_distribution_eta_2_with_prfP6scalarPKh.exit.1
  %index16 = phi i64 [ 0, %_ZL52scalar_centered_binomial_distribution_eta_2_with_prfP6scalarPKh.exit.1 ], [ %index.next19, %vector.body15 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.bv, align 4, !tbaa !17 ; 2 uses
  %i.bw = zext <4 x i8> %wide.load17 to <4 x i32> ; 4 uses
  %i.bx = and <4 x i32> %i.bw, splat (i32 1)
  %i.by = lshr <4 x i32> %i.bw, splat (i32 1)
  %i.bz = and <4 x i32> %i.by, splat (i32 1)
  %i.ca = shl <4 x i32> %i.bw, splat (i32 29)
  %i.cb = ashr <4 x i32> %i.ca, splat (i32 31)
  %i.cc = shl <4 x i32> %i.bw, splat (i32 28)
  %i.cd = ashr <4 x i32> %i.cc, splat (i32 31)
  %i.ce = add nuw nsw <4 x i32> %i.bz, %i.bx
  %i.cf = add nsw <4 x i32> %i.ce, %i.cd
  %i.cg = add nsw <4 x i32> %i.cf, %i.cb          ; 2 uses
  %7 = and <4 x i32> %i.cg, splat (i32 32768)
  %8 = icmp eq <4 x i32> %7, zeroinitializer
  %i.ch = select <4 x i1> %8, <4 x i32> zeroinitializer, <4 x i32> splat (i32 3329)
  %i.ci = add nsw <4 x i32> %i.ch, %i.cg
  %i.cj = trunc nsw <4 x i32> %i.ci to <4 x i16>
  %.idx22 = shl nuw i64 %index16, 2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx22
  %i.cl = lshr <4 x i8> %wide.load17, splat (i8 4)
  %i.cm = zext nneg <4 x i8> %i.cl to <4 x i16>   ; 4 uses
  %i.cn = and <4 x i16> %i.cm, splat (i16 1)
  %i.co = lshr <4 x i16> %i.cm, splat (i16 1)
  %i.cp = and <4 x i16> %i.co, splat (i16 1)
  %i.cq = shl <4 x i16> %i.cm, splat (i16 13)
  %i.cr = ashr <4 x i16> %i.cq, splat (i16 15)
  %i.cs = lshr <4 x i16> %i.cm, splat (i16 3)
  %i.ct = sub nsw <4 x i16> %i.cn, %i.cs
  %i.cu = add nsw <4 x i16> %i.ct, %i.cp
  %i.cv = add nsw <4 x i16> %i.cu, %i.cr          ; 2 uses
  %i.cw = icmp slt <4 x i16> %i.cv, zeroinitializer
  %i.cx = select <4 x i1> %i.cw, <4 x i16> splat (i16 3329), <4 x i16> zeroinitializer
  %i.cy = add nsw <4 x i16> %i.cx, %i.cv
  %interleaved.vec18 = shufflevector <4 x i16> %i.cj, <4 x i16> %i.cy, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec18, ptr %i.ck, align 2, !tbaa !19
  %index.next19 = add nuw i64 %index16, 4         ; 2 uses
  %i.cz = icmp eq i64 %index.next19, 128
  br i1 %i.cz, label %_ZL52scalar_centered_binomial_distribution_eta_2_with_prfP6scalarPKh.exit.2, label %vector.body15, !llvm.loop !46

_ZL52scalar_centered_binomial_distribution_eta_2_with_prfP6scalarPKh.exit.2: ; preds = %vector.body15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL10vector_nttP6vector(ptr nofree noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  br label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %bb.a, %._crit_edge39.i
  %.041.i = phi i32 [ 256, %bb.a ], [ %i.a, %._crit_edge39.i ] ; 3 uses
  %.02940.i = phi i32 [ 1, %bb.a ], [ %i.f, %._crit_edge39.i ] ; 2 uses
  %i.a = lshr i32 %.041.i, 1                      ; 3 uses
  %i.b = and i32 %.041.i, 510
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = zext nneg i32 %i.a to i64                ; 4 uses
  %i.e = zext nneg i32 %.02940.i to i64           ; 2 uses
  %invariant.gep47.i = getelementptr inbounds nuw [2 x i8], ptr @_ZL9kNTTRoots, i64 %i.e
  %.not.i = icmp eq i32 %i.a, 0
  %invariant.gep.i = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.d ; 2 uses
  br i1 %.not.i, label %._crit_edge39.i, label %.lr.ph.i.preheader.preheader

.lr.ph.i.preheader.preheader:                     ; preds = %.lr.ph38.i
  %min.iters.check = icmp samesign ult i32 %.041.i, 16
  %n.vec = and i64 %i.d, 248                      ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br label %.lr.ph.i.preheader

._crit_edge39.i:                                  ; preds = %._crit_edge.i.loopexit, %.lr.ph38.i
  %i.f = shl i32 %.02940.i, 1                     ; 2 uses
  %i.g = icmp slt i32 %i.f, 128
  br i1 %i.g, label %.lr.ph38.i, label %_ZL10scalar_nttP6scalar.exit, !llvm.loop !47

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.preheader, %._crit_edge.i.loopexit
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.i.loopexit ], [ %i.d, %.lr.ph.i.preheader.preheader ] ; 2 uses
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %._crit_edge.i.loopexit ], [ 0, %.lr.ph.i.preheader.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i.loopexit ], [ 0, %.lr.ph.i.preheader.preheader ] ; 4 uses
  %gep48.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep47.i, i64 %indvars.iv44.i
  %i.h = load i16, ptr %gep48.i, align 2, !tbaa !19
  %i.i = zext i16 %i.h to i32                     ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.j = add nuw i64 %indvars.iv.i, %n.vec
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = add nuw i64 %indvars.iv.i, %index        ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i, i64 %i.k ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.l, align 2, !tbaa !19
  %i.m = zext <8 x i16> %wide.load to <8 x i32>
  %i.n = mul nuw <8 x i32> %broadcast.splat, %i.m ; 2 uses
  %i.o = zext <8 x i32> %i.n to <8 x i64>
  %i.p = mul nuw nsw <8 x i64> %i.o, splat (i64 5039)
  %i.q = lshr <8 x i64> %i.p, splat (i64 24)
  %i.r = trunc nuw nsw <8 x i64> %i.q to <8 x i32>
  %i.s = mul <8 x i32> %i.r, splat (i32 62207)
  %i.t = add <8 x i32> %i.s, %i.n
  %i.u = trunc <8 x i32> %i.t to <8 x i16>        ; 2 uses
  %i.v = add <8 x i16> %i.u, splat (i16 -3329)    ; 2 uses
  %i.w = icmp slt <8 x i16> %i.v, zeroinitializer
  %i.x = select <8 x i1> %i.w, <8 x i16> %i.u, <8 x i16> zeroinitializer
  %i.y = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.v, <8 x i16> zeroinitializer)
  %i.z = or <8 x i16> %i.x, %i.y                  ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.k ; 2 uses
  %wide.load10 = load <8 x i16>, ptr %i.aa, align 2, !tbaa !19 ; 2 uses
  %i.ab = add <8 x i16> %i.z, %wide.load10        ; 2 uses
  %i.ac = add <8 x i16> %i.ab, splat (i16 -3329)  ; 2 uses
  %i.ad = icmp slt <8 x i16> %i.ac, zeroinitializer
  %i.ae = select <8 x i1> %i.ad, <8 x i16> %i.ab, <8 x i16> zeroinitializer
  %i.af = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ac, <8 x i16> zeroinitializer)
  %i.ag = or <8 x i16> %i.ae, %i.af
  store <8 x i16> %i.ag, ptr %i.aa, align 2, !tbaa !19
  %i.ah = sub <8 x i16> %wide.load10, %i.z        ; 3 uses
  %i.ai = add <8 x i16> %i.ah, splat (i16 3329)
  %i.aj = icmp slt <8 x i16> %i.ah, zeroinitializer
  %i.ak = select <8 x i1> %i.aj, <8 x i16> %i.ai, <8 x i16> zeroinitializer
  %i.al = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ah, <8 x i16> zeroinitializer)
  %i.am = or <8 x i16> %i.ak, %i.al
  store <8 x i16> %i.am, ptr %i.l, align 2, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.loopexit, label %.lr.ph.i.preheader39

.lr.ph.i.preheader39:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv42.i.ph = phi i64 [ %indvars.iv.i, %.lr.ph.i.preheader ], [ %i.j, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, %i.c
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next45.i, %i.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.c
  br i1 %exitcond.not.i, label %._crit_edge39.i, label %.lr.ph.i.preheader, !llvm.loop !49

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader39, %.lr.ph.i
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %.lr.ph.i ], [ %indvars.iv42.i.ph, %.lr.ph.i.preheader39 ] ; 3 uses
  %gep.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv42.i ; 2 uses
  %i.ao = load i16, ptr %gep.i, align 2, !tbaa !19
  %i.ap = zext i16 %i.ao to i32
  %i.aq = mul nuw i32 %i.ap, %i.i                 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = mul nuw nsw i64 %i.ar, 5039
  %i.at = lshr i64 %i.as, 24
  %i.au = trunc nuw nsw i64 %i.at to i32
  %.neg.i.i = mul i32 %i.au, 62207
  %i.av = add i32 %.neg.i.i, %i.aq
  %i.aw = trunc i32 %i.av to i16                  ; 2 uses
  %i.ax = add i16 %i.aw, -3329                    ; 2 uses
  %isneg.i.i.i = icmp slt i16 %i.ax, 0
  %i.ay = select i1 %isneg.i.i.i, i16 %i.aw, i16 0
  %i.az = tail call i16 @llvm.smax.i16(i16 %i.ax, i16 0)
  %i.ba = or i16 %i.ay, %i.az                     ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv42.i ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !19 ; 2 uses
  %i.bd = add i16 %i.ba, %i.bc                    ; 2 uses
  %i.be = add i16 %i.bd, -3329                    ; 2 uses
  %isneg.i.i = icmp slt i16 %i.be, 0
  %i.bf = select i1 %isneg.i.i, i16 %i.bd, i16 0
  %i.bg = tail call i16 @llvm.smax.i16(i16 %i.be, i16 0)
  %i.bh = or i16 %i.bf, %i.bg
  store i16 %i.bh, ptr %i.bb, align 2, !tbaa !19
  %i.bi = sub i16 %i.bc, %i.ba                    ; 3 uses
  %i.bj = add i16 %i.bi, 3329
  %isneg.i33.i = icmp slt i16 %i.bi, 0
  %i.bk = select i1 %isneg.i33.i, i16 %i.bj, i16 0
  %i.bl = tail call i16 @llvm.smax.i16(i16 %i.bi, i16 0)
  %i.bm = or i16 %i.bk, %i.bl
  store i16 %i.bm, ptr %gep.i, align 2, !tbaa !19
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next43.i, %indvars.iv
  br i1 %exitcond.not, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !50

_ZL10scalar_nttP6scalar.exit:                     ; preds = %._crit_edge39.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  br label %.lr.ph38.i.1

.lr.ph38.i.1:                                     ; preds = %_ZL10scalar_nttP6scalar.exit, %._crit_edge39.i.1
  %.041.i.1 = phi i32 [ 256, %_ZL10scalar_nttP6scalar.exit ], [ %i.bo, %._crit_edge39.i.1 ] ; 3 uses
  %.02940.i.1 = phi i32 [ 1, %_ZL10scalar_nttP6scalar.exit ], [ %i.dz, %._crit_edge39.i.1 ] ; 2 uses
  %i.bo = lshr i32 %.041.i.1, 1                   ; 3 uses
  %i.bp = and i32 %.041.i.1, 510
  %i.bq = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.br = zext nneg i32 %i.bo to i64              ; 4 uses
  %i.bs = zext nneg i32 %.02940.i.1 to i64        ; 2 uses
  %invariant.gep47.i.1 = getelementptr inbounds nuw [2 x i8], ptr @_ZL9kNTTRoots, i64 %i.bs
  %.not.i.1 = icmp eq i32 %i.bo, 0
  %invariant.gep.i.1 = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.br ; 2 uses
  br i1 %.not.i.1, label %._crit_edge39.i.1, label %.lr.ph.i.preheader.1.preheader

.lr.ph.i.preheader.1.preheader:                   ; preds = %.lr.ph38.i.1
  %min.iters.check12 = icmp samesign ult i32 %.041.i.1, 16
  %n.vec14 = and i64 %i.br, 248                   ; 3 uses
  %cmp.n23 = icmp eq i64 %n.vec14, %i.br
  br label %.lr.ph.i.preheader.1

.lr.ph.i.preheader.1:                             ; preds = %.lr.ph.i.preheader.1.preheader, %._crit_edge.i.loopexit.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %._crit_edge.i.loopexit.1 ], [ %i.br, %.lr.ph.i.preheader.1.preheader ] ; 2 uses
  %indvars.iv44.i.1 = phi i64 [ %indvars.iv.next45.i.1, %._crit_edge.i.loopexit.1 ], [ 0, %.lr.ph.i.preheader.1.preheader ] ; 2 uses
  %indvars.iv.i.1 = phi i64 [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.1 ], [ 0, %.lr.ph.i.preheader.1.preheader ] ; 4 uses
  %gep48.i.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep47.i.1, i64 %indvars.iv44.i.1
  %i.bt = load i16, ptr %gep48.i.1, align 2, !tbaa !19
  %i.bu = zext i16 %i.bt to i32                   ; 2 uses
  br i1 %min.iters.check12, label %.lr.ph.i.1.preheader, label %vector.ph13

vector.ph13:                                      ; preds = %.lr.ph.i.preheader.1
  %i.bv = add nuw i64 %indvars.iv.i.1, %n.vec14
  %broadcast.splatinsert15 = insertelement <8 x i32> poison, i32 %i.bu, i64 0
end_hunk_0
begin_hunk_1_@_ZL10vector_nttP6vector:bb.a
  %i.eo = mul nuw <8 x i32> %broadcast.splat30, %i.en ; 2 uses
  %i.ep = zext <8 x i32> %i.eo to <8 x i64>
  %i.eq = mul nuw nsw <8 x i64> %i.ep, splat (i64 5039)
  %i.er = lshr <8 x i64> %i.eq, splat (i64 24)
  %i.es = trunc nuw nsw <8 x i64> %i.er to <8 x i32>
  %i.et = mul <8 x i32> %i.es, splat (i32 62207)
  %i.eu = add <8 x i32> %i.et, %i.eo
  %i.ev = trunc <8 x i32> %i.eu to <8 x i16>      ; 2 uses
  %i.ew = add <8 x i16> %i.ev, splat (i16 -3329)  ; 2 uses
  %i.ex = icmp slt <8 x i16> %i.ew, zeroinitializer
  %i.ey = select <8 x i1> %i.ex, <8 x i16> %i.ev, <8 x i16> zeroinitializer
  %i.ez = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ew, <8 x i16> zeroinitializer)
  %i.fa = or <8 x i16> %i.ey, %i.ez               ; 2 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.eb, i64 %i.el ; 2 uses
  %wide.load34 = load <8 x i16>, ptr %i.fb, align 2, !tbaa !19 ; 2 uses
  %i.fc = add <8 x i16> %i.fa, %wide.load34       ; 2 uses
  %i.fd = add <8 x i16> %i.fc, splat (i16 -3329)  ; 2 uses
  %i.fe = icmp slt <8 x i16> %i.fd, zeroinitializer
  %i.ff = select <8 x i1> %i.fe, <8 x i16> %i.fc, <8 x i16> zeroinitializer
  %i.fg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fd, <8 x i16> zeroinitializer)
  %i.fh = or <8 x i16> %i.ff, %i.fg
  store <8 x i16> %i.fh, ptr %i.fb, align 2, !tbaa !19
  %i.fi = sub <8 x i16> %wide.load34, %i.fa       ; 3 uses
  %i.fj = add <8 x i16> %i.fi, splat (i16 3329)
  %i.fk = icmp slt <8 x i16> %i.fi, zeroinitializer
  %i.fl = select <8 x i1> %i.fk, <8 x i16> %i.fj, <8 x i16> zeroinitializer
  %i.fm = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fi, <8 x i16> zeroinitializer)
  %i.fn = or <8 x i16> %i.fl, %i.fm
  store <8 x i16> %i.fn, ptr %i.em, align 2, !tbaa !19
  %index.next35 = add nuw i64 %index32, 8         ; 2 uses
  %i.fo = icmp eq i64 %index.next35, %n.vec28
  br i1 %i.fo, label %middle.block36, label %vector.body31, !llvm.loop !53

middle.block36:                                   ; preds = %vector.body31
  br i1 %cmp.n37, label %._crit_edge.i.loopexit.2, label %.lr.ph.i.2.preheader

.lr.ph.i.2.preheader:                             ; preds = %.lr.ph.i.preheader.2, %middle.block36
  %indvars.iv42.i.2.ph = phi i64 [ %indvars.iv.i.2, %.lr.ph.i.preheader.2 ], [ %i.ek, %middle.block36 ]
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.2.preheader, %.lr.ph.i.2
  %indvars.iv42.i.2 = phi i64 [ %indvars.iv.next43.i.2, %.lr.ph.i.2 ], [ %indvars.iv42.i.2.ph, %.lr.ph.i.2.preheader ] ; 3 uses
  %gep.i.2 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.2, i64 %indvars.iv42.i.2 ; 2 uses
  %i.fp = load i16, ptr %gep.i.2, align 2, !tbaa !19
  %i.fq = zext i16 %i.fp to i32
  %i.fr = mul nuw i32 %i.fq, %i.ej                ; 2 uses
  %i.fs = zext i32 %i.fr to i64
  %i.ft = mul nuw nsw i64 %i.fs, 5039
  %i.fu = lshr i64 %i.ft, 24
  %i.fv = trunc nuw nsw i64 %i.fu to i32
  %.neg.i.i.2 = mul i32 %i.fv, 62207
  %i.fw = add i32 %.neg.i.i.2, %i.fr
  %i.fx = trunc i32 %i.fw to i16                  ; 2 uses
  %i.fy = add i16 %i.fx, -3329                    ; 2 uses
  %isneg.i.i.i.2 = icmp slt i16 %i.fy, 0
  %i.fz = select i1 %isneg.i.i.i.2, i16 %i.fx, i16 0
  %i.ga = tail call i16 @llvm.smax.i16(i16 %i.fy, i16 0)
  %i.gb = or i16 %i.fz, %i.ga                     ; 2 uses
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.eb, i64 %indvars.iv42.i.2 ; 2 uses
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !19 ; 2 uses
  %i.ge = add i16 %i.gb, %i.gd                    ; 2 uses
  %i.gf = add i16 %i.ge, -3329                    ; 2 uses
  %isneg.i.i.2 = icmp slt i16 %i.gf, 0
  %i.gg = select i1 %isneg.i.i.2, i16 %i.ge, i16 0
  %i.gh = tail call i16 @llvm.smax.i16(i16 %i.gf, i16 0)
  %i.gi = or i16 %i.gg, %i.gh
  store i16 %i.gi, ptr %i.gc, align 2, !tbaa !19
  %i.gj = sub i16 %i.gd, %i.gb                    ; 3 uses
  %i.gk = add i16 %i.gj, 3329
  %isneg.i33.i.2 = icmp slt i16 %i.gj, 0
  %i.gl = select i1 %isneg.i33.i.2, i16 %i.gk, i16 0
  %i.gm = tail call i16 @llvm.smax.i16(i16 %i.gj, i16 0)
  %i.gn = or i16 %i.gl, %i.gm
  store i16 %i.gn, ptr %gep.i.2, align 2, !tbaa !19
  %indvars.iv.next43.i.2 = add nuw nsw i64 %indvars.iv42.i.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next43.i.2, %indvars.iv.2
  br i1 %exitcond.2.not, label %._crit_edge.i.loopexit.2, label %.lr.ph.i.2, !llvm.loop !54

._crit_edge.i.loopexit.2:                         ; preds = %.lr.ph.i.2, %middle.block36
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, %i.ef
  %indvars.iv.next45.i.2 = add nuw nsw i64 %indvars.iv44.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next45.i.2, %i.eh
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, %i.ef
  br i1 %exitcond.not.i.2, label %._crit_edge39.i.2, label %.lr.ph.i.preheader.2, !llvm.loop !49

._crit_edge39.i.2:                                ; preds = %._crit_edge.i.loopexit.2, %.lr.ph38.i.2, %bb.b
  %i.go = shl i32 %.02940.i.2, 1                  ; 2 uses
  %i.gp = icmp slt i32 %i.go, 128
  br i1 %i.gp, label %bb.b, label %_ZL10scalar_nttP6scalar.exit.2, !llvm.loop !47

_ZL10scalar_nttP6scalar.exit.2:                   ; preds = %._crit_edge39.i.2
  ret void
}

declare i32 @CBB_init_fixed(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @KYBER_public_from_private(ptr nofree noundef writeonly captures(none) initializes((0, 6208)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6208) %0, ptr noundef nonnull align 2 dereferenceable(6208) %1, i64 6208, i1 false), !tbaa.struct !55
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define void @KYBER_encap(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = call i32 @RAND_bytes(ptr noundef nonnull %i.c, i64 noundef 32) #9 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @BORINGSSL_keccak(ptr noundef nonnull %i.b, i64 noundef 64, ptr noundef nonnull %i.a, i64 noundef 64, i32 noundef 1) #9
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call fastcc void @_ZL11encrypt_cpaPhPKN12_GLOBAL__N_110public_keyEPKhS5_(ptr noundef %0, ptr noundef readonly %2, ptr noundef nonnull readonly %i.c, ptr noundef %i.g)
  call void @BORINGSSL_keccak(ptr noundef nonnull %i.g, i64 noundef 32, ptr noundef %0, i64 noundef 1088, i32 noundef 0) #9
  call void @BORINGSSL_keccak(ptr noundef %1, i64 noundef 32, ptr noundef nonnull %i.b, i64 noundef 64, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @KYBER_encap_external_entropy(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(32) %3, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @BORINGSSL_keccak(ptr noundef nonnull %i.b, i64 noundef 64, ptr noundef nonnull %i.a, i64 noundef 64, i32 noundef 1) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call fastcc void @_ZL11encrypt_cpaPhPKN12_GLOBAL__N_110public_keyEPKhS5_(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %i.e)
  call void @BORINGSSL_keccak(ptr noundef nonnull %i.e, i64 noundef 32, ptr noundef %0, i64 noundef 1088, i32 noundef 0) #9
  call void @BORINGSSL_keccak(ptr noundef %1, i64 noundef 32, ptr noundef nonnull %i.b, i64 noundef 64, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL11encrypt_cpaPhPKN12_GLOBAL__N_110public_keyEPKhS5_(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
vector.ph:
  %4 = alloca %struct.scalar, align 2             ; 12 uses
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %5 = alloca %struct.vector, align 2             ; 8 uses
  %6 = alloca %struct.vector, align 2             ; 6 uses
  %i.c = alloca [33 x i8], align 16               ; 5 uses
  %7 = alloca %struct.scalar, align 2             ; 4 uses
  %8 = alloca %struct.vector, align 2             ; 21 uses
  %9 = alloca %struct.scalar, align 2             ; 15 uses
  %10 = alloca %struct.scalar, align 2            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 0, ptr %i.b, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call fastcc void @_ZL28vector_generate_secret_eta_2P6vectorPhPKh(ptr noundef nonnull %5, ptr noundef %i.b, ptr noundef %3)
  call fastcc void @_ZL10vector_nttP6vector(ptr noundef nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call fastcc void @_ZL28vector_generate_secret_eta_2P6vectorPhPKh(ptr noundef nonnull %6, ptr noundef %i.b, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %3, i64 32, i1 false)
  %i.d = load i8, ptr %i.b, align 1, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %i.d, ptr %i.e, align 16, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @BORINGSSL_keccak(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull %i.c, i64 noundef 33, i32 noundef 3) #9
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %wide.load = load <4 x i8>, ptr %i.f, align 4, !tbaa !17 ; 2 uses
  %i.g = zext <4 x i8> %wide.load to <4 x i32>    ; 4 uses
  %i.h = and <4 x i32> %i.g, splat (i32 1)
  %i.i = lshr <4 x i32> %i.g, splat (i32 1)
  %i.j = and <4 x i32> %i.i, splat (i32 1)
  %i.k = shl <4 x i32> %i.g, splat (i32 29)
  %i.l = ashr <4 x i32> %i.k, splat (i32 31)
  %i.m = shl <4 x i32> %i.g, splat (i32 28)
  %i.n = ashr <4 x i32> %i.m, splat (i32 31)
  %i.o = add nuw nsw <4 x i32> %i.j, %i.h
  %i.p = add nsw <4 x i32> %i.o, %i.n
  %i.q = add nsw <4 x i32> %i.p, %i.l             ; 2 uses
  %11 = and <4 x i32> %i.q, splat (i32 32768)
  %12 = icmp eq <4 x i32> %11, zeroinitializer
  %i.r = select <4 x i1> %12, <4 x i32> zeroinitializer, <4 x i32> splat (i32 3329)
  %i.s = add nsw <4 x i32> %i.r, %i.q
  %i.t = trunc nsw <4 x i32> %i.s to <4 x i16>
  %.idx = shl nuw i64 %index, 2
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 %.idx
  %i.v = lshr <4 x i8> %wide.load, splat (i8 4)
  %i.w = zext nneg <4 x i8> %i.v to <4 x i16>     ; 4 uses
  %i.x = and <4 x i16> %i.w, splat (i16 1)
  %i.y = lshr <4 x i16> %i.w, splat (i16 1)
  %i.z = and <4 x i16> %i.y, splat (i16 1)
  %i.aa = shl <4 x i16> %i.w, splat (i16 13)
  %i.ab = ashr <4 x i16> %i.aa, splat (i16 15)
  %i.ac = lshr <4 x i16> %i.w, splat (i16 3)
  %i.ad = sub nsw <4 x i16> %i.x, %i.ac
  %i.ae = add nsw <4 x i16> %i.ad, %i.z
  %i.af = add nsw <4 x i16> %i.ae, %i.ab          ; 2 uses
  %i.ag = icmp slt <4 x i16> %i.af, zeroinitializer
  %i.ah = select <4 x i1> %i.ag, <4 x i16> splat (i16 3329), <4 x i16> zeroinitializer
  %i.ai = add nsw <4 x i16> %i.ah, %i.af
  %interleaved.vec = shufflevector <4 x i16> %i.t, <4 x i16> %i.ai, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.u, align 2, !tbaa !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, 128
  br i1 %i.aj, label %_ZL52scalar_centered_binomial_distribution_eta_2_with_prfP6scalarPKh.exit, label %vector.body, !llvm.loop !56

_ZL52scalar_centered_binomial_distribution_eta_2_with_prfP6scalarPKh.exit: ; preds = %vector.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1600
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1536) %8, i8 0, i64 1536, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 512
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 1024
  br label %.preheader.i

.preheader.i:                                     ; preds = %_ZL10scalar_addP6scalarPKS_.exit.2.i, %_ZL52scalar_centered_binomial_distribution_eta_2_with_prfP6scalarPKh.exit
  %indvars.iv.i8 = phi i64 [ 0, %_ZL52scalar_centered_binomial_distribution_eta_2_with_prfP6scalarPKh.exit ], [ %indvars.iv.next.i9, %_ZL10scalar_addP6scalarPKS_.exit.2.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw [1536 x i8], ptr %i.ak, i64 %indvars.iv.i8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %.preheader.i
  %index152 = phi i64 [ 0, %.preheader.i ], [ %index.next161, %vector.body151 ] ; 3 uses
  %i.ao = shl nuw nsw i64 %index152, 1            ; 3 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ao
  %wide.vec153 = load <8 x i16>, ptr %i.ap, align 2, !tbaa !19
  %i.aq = freeze <8 x i16> %wide.vec153           ; 2 uses
  %i.ar = bitcast <8 x i16> %i.aq to <4 x i32>
  %i.as = bitcast <8 x i16> %i.aq to <4 x i32>
  %i.at = and <4 x i32> %i.as, splat (i32 65535)  ; 2 uses
  %i.au = lshr <4 x i32> %i.ar, splat (i32 16)    ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ao
  %wide.vec156 = load <8 x i16>, ptr %i.av, align 2, !tbaa !19
  %i.aw = freeze <8 x i16> %wide.vec156           ; 2 uses
  %i.ax = bitcast <8 x i16> %i.aw to <4 x i32>
  %i.ay = bitcast <8 x i16> %i.aw to <4 x i32>
  %i.az = and <4 x i32> %i.ay, splat (i32 65535)  ; 2 uses
  %i.ba = lshr <4 x i32> %i.ax, splat (i32 16)    ; 2 uses
  %i.bb = mul nuw <4 x i32> %i.az, %i.at
  %i.bc = mul nuw <4 x i32> %i.ba, %i.au          ; 2 uses
  %i.bd = mul nuw <4 x i32> %i.ba, %i.at
  %i.be = mul nuw <4 x i32> %i.au, %i.az
  %i.bf = zext <4 x i32> %i.bc to <4 x i64>
  %i.bg = mul nuw nsw <4 x i64> %i.bf, splat (i64 5039)
  %i.bh = lshr <4 x i64> %i.bg, splat (i64 24)
  %i.bi = trunc nuw nsw <4 x i64> %i.bh to <4 x i32>
  %i.bj = mul <4 x i32> %i.bi, splat (i32 62207)
  %i.bk = add <4 x i32> %i.bj, %i.bc
  %i.bl = trunc <4 x i32> %i.bk to <4 x i16>      ; 2 uses
  %i.bm = add <4 x i16> %i.bl, splat (i16 -3329)  ; 2 uses
  %i.bn = icmp slt <4 x i16> %i.bm, zeroinitializer
  %i.bo = select <4 x i1> %i.bn, <4 x i16> %i.bl, <4 x i16> zeroinitializer
  %i.bp = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.bm, <4 x i16> zeroinitializer)
  %i.bq = or <4 x i16> %i.bo, %i.bp
  %i.br = zext <4 x i16> %i.bq to <4 x i32>
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr @_ZL9kModRoots, i64 %index152
  %wide.load159 = load <4 x i16>, ptr %i.bs, align 8, !tbaa !19
  %i.bt = zext <4 x i16> %wide.load159 to <4 x i32>
  %i.bu = mul nuw <4 x i32> %i.br, %i.bt
  %i.bv = add <4 x i32> %i.bu, %i.bb              ; 2 uses
  %i.bw = zext <4 x i32> %i.bv to <4 x i64>
  %i.bx = mul nuw nsw <4 x i64> %i.bw, splat (i64 5039)
  %i.by = lshr <4 x i64> %i.bx, splat (i64 24)
  %i.bz = trunc nuw nsw <4 x i64> %i.by to <4 x i32>
  %i.ca = mul <4 x i32> %i.bz, splat (i32 62207)
  %i.cb = add <4 x i32> %i.ca, %i.bv
  %i.cc = trunc <4 x i32> %i.cb to <4 x i16>      ; 2 uses
  %i.cd = add <4 x i16> %i.cc, splat (i16 -3329)  ; 2 uses
  %i.ce = icmp slt <4 x i16> %i.cd, zeroinitializer
  %i.cf = select <4 x i1> %i.ce, <4 x i16> %i.cc, <4 x i16> zeroinitializer
  %i.cg = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.cd, <4 x i16> zeroinitializer)
  %i.ch = or <4 x i16> %i.cf, %i.cg
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ao
  %i.cj = add <4 x i32> %i.bd, %i.be              ; 2 uses
  %i.ck = zext <4 x i32> %i.cj to <4 x i64>
  %i.cl = mul nuw nsw <4 x i64> %i.ck, splat (i64 5039)
  %i.cm = lshr <4 x i64> %i.cl, splat (i64 24)
  %i.cn = trunc nuw nsw <4 x i64> %i.cm to <4 x i32>
  %i.co = mul <4 x i32> %i.cn, splat (i32 62207)
  %i.cp = add <4 x i32> %i.co, %i.cj
  %i.cq = trunc <4 x i32> %i.cp to <4 x i16>      ; 2 uses
  %i.cr = add <4 x i16> %i.cq, splat (i16 -3329)  ; 2 uses
  %i.cs = icmp slt <4 x i16> %i.cr, zeroinitializer
  %i.ct = select <4 x i1> %i.cs, <4 x i16> %i.cq, <4 x i16> zeroinitializer
  %i.cu = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.cr, <4 x i16> zeroinitializer)
  %i.cv = or <4 x i16> %i.ct, %i.cu
  %interleaved.vec160 = shufflevector <4 x i16> %i.ch, <4 x i16> %i.cv, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec160, ptr %i.ci, align 2, !tbaa !19
  %index.next161 = add nuw i64 %index152, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next161, 128
  br i1 %i.cw, label %_ZL11scalar_multP6scalarPKS_S2_.exit.i.preheader, label %vector.body151, !llvm.loop !57

_ZL11scalar_multP6scalarPKS_S2_.exit.i.preheader: ; preds = %vector.body151
  %i.cx = getelementptr inbounds nuw [512 x i8], ptr %8, i64 %indvars.iv.i8 ; 3 uses
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %_ZL11scalar_multP6scalarPKS_S2_.exit.i.preheader
  %index143 = phi i64 [ 0, %_ZL11scalar_multP6scalarPKS_S2_.exit.i.preheader ], [ %index.next148, %vector.body142 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %index143 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %wide.load144 = load <8 x i16>, ptr %i.cy, align 2, !tbaa !19
  %wide.load145 = load <8 x i16>, ptr %i.cz, align 2, !tbaa !19
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %index143 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load146 = load <8 x i16>, ptr %i.da, align 2, !tbaa !19
  %wide.load147 = load <8 x i16>, ptr %i.db, align 2, !tbaa !19
  %i.dc = add <8 x i16> %wide.load146, %wide.load144 ; 2 uses
  %i.dd = add <8 x i16> %wide.load147, %wide.load145 ; 2 uses
  %i.de = add <8 x i16> %i.dc, splat (i16 -3329)  ; 2 uses
  %i.df = add <8 x i16> %i.dd, splat (i16 -3329)  ; 2 uses
  %i.dg = icmp slt <8 x i16> %i.de, zeroinitializer
  %i.dh = icmp slt <8 x i16> %i.df, zeroinitializer
  %i.di = select <8 x i1> %i.dg, <8 x i16> %i.dc, <8 x i16> zeroinitializer
  %i.dj = select <8 x i1> %i.dh, <8 x i16> %i.dd, <8 x i16> zeroinitializer
  %i.dk = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.de, <8 x i16> zeroinitializer)
  %i.dl = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.df, <8 x i16> zeroinitializer)
  %i.dm = or <8 x i16> %i.di, %i.dk
  %i.dn = or <8 x i16> %i.dj, %i.dl
  store <8 x i16> %i.dm, ptr %i.cy, align 2, !tbaa !19
  store <8 x i16> %i.dn, ptr %i.cz, align 2, !tbaa !19
  %index.next148 = add nuw i64 %index143, 16      ; 2 uses
  %i.do = icmp eq i64 %index.next148, 256
  br i1 %i.do, label %_ZL10scalar_addP6scalarPKS_.exit.i, label %vector.body142, !llvm.loop !58

_ZL10scalar_addP6scalarPKS_.exit.i:               ; preds = %vector.body142
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.dp = getelementptr inbounds nuw i8, ptr %i.an, i64 512
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %_ZL10scalar_addP6scalarPKS_.exit.i
  %index130 = phi i64 [ 0, %_ZL10scalar_addP6scalarPKS_.exit.i ], [ %index.next139, %vector.body129 ] ; 3 uses
  %i.dq = shl nuw nsw i64 %index130, 1            ; 3 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %i.dq
  %wide.vec131 = load <8 x i16>, ptr %i.dr, align 2, !tbaa !19
  %i.ds = freeze <8 x i16> %wide.vec131           ; 2 uses
  %i.dt = bitcast <8 x i16> %i.ds to <4 x i32>
  %i.du = bitcast <8 x i16> %i.ds to <4 x i32>
  %i.dv = and <4 x i32> %i.du, splat (i32 65535)  ; 2 uses
  %i.dw = lshr <4 x i32> %i.dt, splat (i32 16)    ; 2 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.dq
  %wide.vec134 = load <8 x i16>, ptr %i.dx, align 2, !tbaa !19
  %i.dy = freeze <8 x i16> %wide.vec134           ; 2 uses
  %i.dz = bitcast <8 x i16> %i.dy to <4 x i32>
  %i.ea = bitcast <8 x i16> %i.dy to <4 x i32>
  %i.eb = and <4 x i32> %i.ea, splat (i32 65535)  ; 2 uses
  %i.ec = lshr <4 x i32> %i.dz, splat (i32 16)    ; 2 uses
  %i.ed = mul nuw <4 x i32> %i.eb, %i.dv
  %i.ee = mul nuw <4 x i32> %i.ec, %i.dw          ; 2 uses
  %i.ef = mul nuw <4 x i32> %i.ec, %i.dv
  %i.eg = mul nuw <4 x i32> %i.dw, %i.eb
  %i.eh = zext <4 x i32> %i.ee to <4 x i64>
  %i.ei = mul nuw nsw <4 x i64> %i.eh, splat (i64 5039)
  %i.ej = lshr <4 x i64> %i.ei, splat (i64 24)
  %i.ek = trunc nuw nsw <4 x i64> %i.ej to <4 x i32>
  %i.el = mul <4 x i32> %i.ek, splat (i32 62207)
  %i.em = add <4 x i32> %i.el, %i.ee
  %i.en = trunc <4 x i32> %i.em to <4 x i16>      ; 2 uses
  %i.eo = add <4 x i16> %i.en, splat (i16 -3329)  ; 2 uses
  %i.ep = icmp slt <4 x i16> %i.eo, zeroinitializer
  %i.eq = select <4 x i1> %i.ep, <4 x i16> %i.en, <4 x i16> zeroinitializer
  %i.er = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.eo, <4 x i16> zeroinitializer)
  %i.es = or <4 x i16> %i.eq, %i.er
  %i.et = zext <4 x i16> %i.es to <4 x i32>
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr @_ZL9kModRoots, i64 %index130
  %wide.load137 = load <4 x i16>, ptr %i.eu, align 8, !tbaa !19
  %i.ev = zext <4 x i16> %wide.load137 to <4 x i32>
  %i.ew = mul nuw <4 x i32> %i.et, %i.ev
  %i.ex = add <4 x i32> %i.ew, %i.ed              ; 2 uses
  %i.ey = zext <4 x i32> %i.ex to <4 x i64>
  %i.ez = mul nuw nsw <4 x i64> %i.ey, splat (i64 5039)
  %i.fa = lshr <4 x i64> %i.ez, splat (i64 24)
  %i.fb = trunc nuw nsw <4 x i64> %i.fa to <4 x i32>
  %i.fc = mul <4 x i32> %i.fb, splat (i32 62207)
  %i.fd = add <4 x i32> %i.fc, %i.ex
  %i.fe = trunc <4 x i32> %i.fd to <4 x i16>      ; 2 uses
  %i.ff = add <4 x i16> %i.fe, splat (i16 -3329)  ; 2 uses
  %i.fg = icmp slt <4 x i16> %i.ff, zeroinitializer
  %i.fh = select <4 x i1> %i.fg, <4 x i16> %i.fe, <4 x i16> zeroinitializer
  %i.fi = call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ff, <4 x i16> zeroinitializer)
  %i.fj = or <4 x i16> %i.fh, %i.fi
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.dq
end_hunk_1
