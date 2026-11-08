Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 333
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 552
begin_hunk_0_@aes_nohw_decrypt:bb.a
}

; Function Attrs: nounwind uwtable
define i32 @AES_set_encrypt_key(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.g [
    i32 256, label %bb.b
    i32 192, label %bb.b
    i32 128, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 2 uses
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @aes_hw_set_encrypt_key(ptr noundef %0, i32 noundef %1, ptr noundef %2) #46
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.d = and i32 %i.a, 512
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @vpaes_set_encrypt_key(ptr noundef %0, i32 noundef %1, ptr noundef %2) #46
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i32 @aes_nohw_set_encrypt_key(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ %i.f, %bb.f ], [ %i.c, %bb.c ], [ %i.e, %bb.e ], [ -2, %bb.a ]
  ret i32 %.0
}

declare i32 @aes_hw_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @vpaes_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 0, 2) i32 @aes_nohw_set_encrypt_key(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [1 x <2 x i64>], align 16         ; 7 uses
  %i.b = alloca [1 x <2 x i64>], align 16         ; 4 uses
  %i.c = alloca [1 x <2 x i64>], align 16         ; 5 uses
  %i.d = alloca [1 x <2 x i64>], align 16         ; 6 uses
  %i.e = alloca [1 x <2 x i64>], align 16         ; 4 uses
  switch i32 %1, label %aes_nohw_setup_key_128.exit [
    i32 128, label %bb.b
    i32 192, label %bb.c
    i32 256, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i32 10, ptr %i.f, align 4, !tbaa !75
  %.sroa.0.0.copyload29.i = load <2 x i64>, ptr %0, align 1 ; 2 uses
  store <2 x i64> %.sroa.0.0.copyload29.i, ptr %2, align 4
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i, %bb.b
  %.031.i = phi i64 [ 1, %bb.b ], [ %i.ac, %.critedge.i ] ; 3 uses
  %.sroa.0.030.i = phi <2 x i64> [ %.sroa.0.0.copyload29.i, %bb.b ], [ %i.aa, %.critedge.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.e, <2 x i64> %.sroa.0.030.i)
  %i.g = getelementptr i8, ptr @aes_nohw_rcon, i64 %.031.i
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !76
  %i.j = zext i8 %i.i to i32
  %i.k = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.j, i64 0
  %i.l = bitcast <4 x i32> %i.k to <2 x i64>
  %i.m = load <4 x i32>, ptr %i.e, align 16, !tbaa !76 ; 2 uses
  %i.n = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.m, <4 x i32> %i.m, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.o = bitcast <4 x i32> %i.n to <16 x i8>
  %i.p = shufflevector <16 x i8> %i.o, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.q = bitcast <16 x i8> %i.p to <2 x i64>
  %i.r = xor <2 x i64> %i.l, %i.q
  %i.s = xor <2 x i64> %i.r, %.sroa.0.030.i       ; 2 uses
  %i.t = bitcast <2 x i64> %i.s to <16 x i8>      ; 3 uses
  %i.u = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.t, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.v = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.t, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.w = xor <16 x i8> %i.u, %i.v
  %i.x = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.t, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.y = xor <16 x i8> %i.w, %i.x
  %i.z = bitcast <16 x i8> %i.y to <2 x i64>
  %i.aa = xor <2 x i64> %i.s, %i.z                ; 2 uses
  %.idx.i = shl nuw nsw i64 %.031.i, 4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i
  store <2 x i64> %i.aa, ptr %i.ab, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  %i.ac = add nuw nsw i64 %.031.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, 11
  br i1 %exitcond.not.i, label %aes_nohw_setup_key_128.exit, label %.critedge.i, !llvm.loop !1

bb.c:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i32 12, ptr %i.ad, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull readonly align 1 dereferenceable(16) %0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i64, ptr %i.ae, align 1
  store i64 %i.af, ptr %i.c, align 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  br label %.critedge.i7

.critedge.i7:                                     ; preds = %.critedge.i7, %bb.c
  %.0149.i = phi ptr [ %i.b, %bb.c ], [ %.0138148.i, %.critedge.i7 ] ; 7 uses
  %.0138148.i = phi ptr [ %i.c, %bb.c ], [ %.0149.i, %.critedge.i7 ] ; 10 uses
  %.0140147.i = phi i64 [ 0, %bb.c ], [ %i.cy, %.critedge.i7 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  %.0138.val.i = load <2 x i64>, ptr %.0138148.i, align 16, !tbaa !76
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.d, <2 x i64> %.0138.val.i)
  %i.ag = shl nuw nsw i64 %.0140147.i, 1
  %i.ah = getelementptr inbounds nuw i8, ptr @aes_nohw_rcon, i64 %i.ag ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !76
  %i.aj = load <2 x i64>, ptr %.0138148.i, align 16, !tbaa !76
  %i.ak = load <2 x i64>, ptr %.0149.i, align 16  ; 2 uses
  %i.al = zext i8 %i.ai to i32
  %i.am = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.al, i64 0
  %i.an = bitcast <4 x i32> %i.am to <2 x i64>
  %i.ao = xor <2 x i64> %i.ak, %i.an
  %i.ap = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.ao, <2 x i32> <i32 1, i32 2>
  %i.aq = or <2 x i64> %i.aj, %i.ap               ; 2 uses
  store <2 x i64> %i.aq, ptr %.0138148.i, align 16, !tbaa !76
  %i.ar = load <4 x i32>, ptr %i.d, align 16, !tbaa !76 ; 2 uses
  %i.as = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ar, <4 x i32> %i.ar, <4 x i32> <i32 24, i32 24, i32 24, i32 poison>)
  %i.at = bitcast <4 x i32> %i.as to <16 x i8>
  %i.au = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.at, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.av = bitcast <16 x i8> %i.au to <2 x i64>
  %i.aw = and <2 x i64> %i.av, <i64 0, i64 4294967295>
  %i.ax = xor <2 x i64> %i.aw, %i.aq              ; 2 uses
  %i.ay = bitcast <2 x i64> %i.ax to <16 x i8>
  %i.az = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ay, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ba = bitcast <16 x i8> %i.az to <2 x i64>
  %i.bb = and <2 x i64> %i.ba, <i64 0, i64 -4294967296>
  %i.bc = xor <2 x i64> %i.bb, %i.ax              ; 2 uses
  store <2 x i64> %i.bc, ptr %.0138148.i, align 16, !tbaa !76
  %i.bd = bitcast <2 x i64> %i.ak to <16 x i8>
  %i.be = shufflevector <16 x i8> %i.bd, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %.cast144.i = bitcast <2 x i64> %i.bc to <16 x i8> ; 2 uses
  %i.bf = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.cast144.i, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bg = or <16 x i8> %i.bf, %i.be
  %i.bh = shufflevector <16 x i8> %.cast144.i, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bi = xor <16 x i8> %i.bg, %i.bh              ; 4 uses
  %i.bj = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bi, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bk = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bi, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bl = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bi, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.bm = xor <16 x i8> %i.bj, %i.bk
  %i.bn = xor <16 x i8> %i.bm, %i.bl
  %i.bo = xor <16 x i8> %i.bn, %i.bi
  store <16 x i8> %i.bo, ptr %.0149.i, align 16, !tbaa !76
  %.idx.i8 = mul nuw nsw i64 %.0140147.i, 48
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bq, ptr noundef nonnull align 16 dereferenceable(16) %.0138148.i, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.br, ptr noundef nonnull align 16 dereferenceable(16) %.0149.i, i64 16, i1 false)
  %.0.val.i = load <2 x i64>, ptr %.0149.i, align 16, !tbaa !76
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.d, <2 x i64> %.0.val.i)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !76
  %i.bu = load <16 x i8>, ptr %.0138148.i, align 16, !tbaa !76
  %i.bv = shufflevector <16 x i8> %i.bu, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bw = load <16 x i8>, ptr %.0149.i, align 16, !tbaa !76 ; 2 uses
  %i.bx = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bw, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.by = or <16 x i8> %i.bx, %i.bv
  %i.bz = bitcast <16 x i8> %i.by to <2 x i64>
  %i.ca = zext i8 %i.bt to i32
  %i.cb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ca, i64 0
  %i.cc = bitcast <4 x i32> %i.cb to <2 x i64>
  %i.cd = xor <2 x i64> %i.bz, %i.cc              ; 2 uses
  store <2 x i64> %i.cd, ptr %.0138148.i, align 16, !tbaa !76
  %i.ce = load <4 x i32>, ptr %i.d, align 16, !tbaa !76 ; 2 uses
  %i.cf = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ce, <4 x i32> %i.ce, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.cg = bitcast <4 x i32> %i.cf to <16 x i8>
  %i.ch = shufflevector <16 x i8> %i.cg, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ci = bitcast <16 x i8> %i.ch to <2 x i64>
  %i.cj = xor <2 x i64> %i.cd, %i.ci              ; 2 uses
  %i.ck = bitcast <2 x i64> %i.cj to <16 x i8>    ; 3 uses
  %i.cl = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ck, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.cm = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ck, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cn = xor <16 x i8> %i.cl, %i.cm
  %i.co = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ck, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.cp = xor <16 x i8> %i.cn, %i.co
  %i.cq = bitcast <16 x i8> %i.cp to <2 x i64>
  %i.cr = xor <2 x i64> %i.cj, %i.cq              ; 2 uses
  store <2 x i64> %i.cr, ptr %.0138148.i, align 16, !tbaa !76
  %i.cs = shufflevector <16 x i8> %i.bw, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %.cast.i = bitcast <2 x i64> %i.cr to <16 x i8>
  %i.ct = shufflevector <16 x i8> %.cast.i, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.cu = xor <16 x i8> %i.ct, %i.cs              ; 2 uses
  %i.cv = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.cu, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.cw = xor <16 x i8> %i.cv, %i.cu
  %3 = bitcast <16 x i8> %i.cw to <2 x i64>
  %4 = and <2 x i64> %3, <i64 -1, i64 0>
  store <2 x i64> %4, ptr %.0149.i, align 16, !tbaa !76
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cx, ptr noundef nonnull align 16 dereferenceable(16) %.0138148.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  %i.cy = add nuw nsw i64 %.0140147.i, 1          ; 2 uses
  %exitcond.not.i9 = icmp eq i64 %i.cy, 4
  br i1 %exitcond.not.i9, label %aes_nohw_setup_key_192.exit, label %.critedge.i7, !llvm.loop !647

aes_nohw_setup_key_192.exit:                      ; preds = %.critedge.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  br label %aes_nohw_setup_key_128.exit

bb.d:                                             ; preds = %bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i32 14, ptr %i.cz, align 4, !tbaa !75
  %.sroa.059.0.copyload62.i = load <2 x i64>, ptr %0, align 1 ; 2 uses
  store <2 x i64> %.sroa.059.0.copyload62.i, ptr %2, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload58.i = load <2 x i64>, ptr %i.da, align 1 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x i64> %.sroa.0.0.copyload58.i, ptr %i.db, align 4
  br label %.critedge.i10

.critedge.i10:                                    ; preds = %.critedge52.i, %bb.d
  %.065.i = phi i64 [ 2, %bb.d ], [ %i.em, %.critedge52.i ] ; 4 uses
  %.sroa.0.064.i = phi <2 x i64> [ %.sroa.0.0.copyload58.i, %bb.d ], [ %i.ek, %.critedge52.i ] ; 2 uses
  %.sroa.059.063.i = phi <2 x i64> [ %.sroa.059.0.copyload62.i, %bb.d ], [ %i.dx, %.critedge52.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.a, <2 x i64> %.sroa.0.064.i)
  %i.dc = lshr exact i64 %.065.i, 1
  %i.dd = getelementptr i8, ptr @aes_nohw_rcon, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 -1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !76
  %i.dg = zext i8 %i.df to i32
  %i.dh = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.dg, i64 0
  %i.di = bitcast <4 x i32> %i.dh to <2 x i64>
  %i.dj = xor <2 x i64> %.sroa.059.063.i, %i.di
  %i.dk = load <4 x i32>, ptr %i.a, align 16, !tbaa !76 ; 2 uses
  %i.dl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dk, <4 x i32> %i.dk, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.dm = bitcast <4 x i32> %i.dl to <16 x i8>
  %i.dn = shufflevector <16 x i8> %i.dm, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.do = bitcast <16 x i8> %i.dn to <2 x i64>
  %i.dp = xor <2 x i64> %i.dj, %i.do              ; 2 uses
  %i.dq = bitcast <2 x i64> %i.dp to <16 x i8>    ; 3 uses
  %i.dr = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dq, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ds = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dq, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.dt = xor <16 x i8> %i.dr, %i.ds
  %i.du = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dq, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.dv = xor <16 x i8> %i.dt, %i.du
  %i.dw = bitcast <16 x i8> %i.dv to <2 x i64>
  %i.dx = xor <2 x i64> %i.dp, %i.dw              ; 3 uses
  %.idx.i11 = shl nuw nsw i64 %.065.i, 4
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i11 ; 2 uses
  store <2 x i64> %i.dx, ptr %i.dy, align 4
  %.not.i = icmp eq i64 %.065.i, 14
  br i1 %.not.i, label %aes_nohw_setup_key_256.exit, label %.critedge52.i

.critedge52.i:                                    ; preds = %.critedge.i10
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.a, <2 x i64> %i.dx)
  %i.dz = load <16 x i8>, ptr %i.a, align 16, !tbaa !76
  %i.ea = shufflevector <16 x i8> %i.dz, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.eb = bitcast <16 x i8> %i.ea to <2 x i64>
  %i.ec = xor <2 x i64> %.sroa.0.064.i, %i.eb     ; 2 uses
  %i.ed = bitcast <2 x i64> %i.ec to <16 x i8>    ; 3 uses
  %i.ee = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ed, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ef = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ed, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.eg = xor <16 x i8> %i.ee, %i.ef
  %i.eh = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ed, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.ei = xor <16 x i8> %i.eg, %i.eh
  %i.ej = bitcast <16 x i8> %i.ei to <2 x i64>
  %i.ek = xor <2 x i64> %i.ec, %i.ej              ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store <2 x i64> %i.ek, ptr %i.el, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.em = add nuw nsw i64 %.065.i, 2
  br label %.critedge.i10

aes_nohw_setup_key_256.exit:                      ; preds = %.critedge.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %aes_nohw_setup_key_128.exit

aes_nohw_setup_key_128.exit:                      ; preds = %.critedge.i, %bb.a, %aes_nohw_setup_key_256.exit, %aes_nohw_setup_key_192.exit
  %.0 = phi i32 [ 0, %aes_nohw_setup_key_256.exit ], [ 1, %bb.a ], [ 0, %aes_nohw_setup_key_192.exit ], [ 0, %.critedge.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @AES_set_decrypt_key(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.g [
    i32 256, label %bb.b
    i32 192, label %bb.b
    i32 128, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 2 uses
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @aes_hw_set_decrypt_key(ptr noundef %0, i32 noundef %1, ptr noundef %2) #46
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.d = and i32 %i.a, 512
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @vpaes_set_decrypt_key(ptr noundef %0, i32 noundef %1, ptr noundef %2) #46
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.f = tail call range(i32 0, 2) i32 @aes_nohw_set_encrypt_key(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi i32 [ %i.f, %bb.f ], [ %i.c, %bb.c ], [ %i.e, %bb.e ], [ -2, %bb.a ]
  ret i32 %.0
}

declare i32 @aes_hw_set_decrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @vpaes_set_decrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 0, 2) i32 @aes_nohw_set_decrypt_key(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @aes_nohw_set_encrypt_key(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @aes_nohw_encrypt_batch(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, 4294967296) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = load <2 x i64>, ptr %2, align 16, !tbaa !76
  %i.b = load <2 x i64>, ptr %0, align 16, !tbaa !76
  %i.c = xor <2 x i64> %i.b, %i.a                 ; 3 uses
  store <2 x i64> %i.c, ptr %2, align 16, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.e = load <2 x i64>, ptr %i.d, align 16, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load <2 x i64>, ptr %i.f, align 16, !tbaa !76
  %i.h = xor <2 x i64> %i.g, %i.e                 ; 3 uses
  store <2 x i64> %i.h, ptr %i.d, align 16, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.j = load <2 x i64>, ptr %i.i, align 16, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load <2 x i64>, ptr %i.k, align 16, !tbaa !76
  %i.m = xor <2 x i64> %i.l, %i.j                 ; 3 uses
  store <2 x i64> %i.m, ptr %i.i, align 16, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  %i.o = load <2 x i64>, ptr %i.n, align 16, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load <2 x i64>, ptr %i.p, align 16, !tbaa !76
  %i.r = xor <2 x i64> %i.q, %i.o                 ; 3 uses
  store <2 x i64> %i.r, ptr %i.n, align 16, !tbaa !76
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.t = load <2 x i64>, ptr %i.s, align 16, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load <2 x i64>, ptr %i.u, align 16, !tbaa !76
  %i.w = xor <2 x i64> %i.v, %i.t                 ; 3 uses
  store <2 x i64> %i.w, ptr %i.s, align 16, !tbaa !76
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 6 uses
  %i.y = load <2 x i64>, ptr %i.x, align 16, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load <2 x i64>, ptr %i.z, align 16, !tbaa !76
  %i.ab = xor <2 x i64> %i.aa, %i.y               ; 3 uses
  store <2 x i64> %i.ab, ptr %i.x, align 16, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 6 uses
  %i.ad = load <2 x i64>, ptr %i.ac, align 16, !tbaa !76
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.af = load <2 x i64>, ptr %i.ae, align 16, !tbaa !76
  %i.ag = xor <2 x i64> %i.af, %i.ad              ; 3 uses
  store <2 x i64> %i.ag, ptr %i.ac, align 16, !tbaa !76
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 5 uses
  %i.ai = load <2 x i64>, ptr %i.ah, align 16, !tbaa !76
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ak = load <2 x i64>, ptr %i.aj, align 16, !tbaa !76
  %i.al = xor <2 x i64> %i.ak, %i.ai              ; 2 uses
  %i.am = icmp samesign ugt i64 %1, 1
  br i1 %i.am, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.an = phi <2 x i64> [ %i.c, %bb.a ], [ %i.aba, %.lr.ph ] ; 5 uses
  %i.ao = phi <2 x i64> [ %i.h, %bb.a ], [ %i.abd, %.lr.ph ] ; 2 uses
  %i.ap = phi <2 x i64> [ %i.m, %bb.a ], [ %i.abg, %.lr.ph ] ; 3 uses
  %i.aq = phi <2 x i64> [ %i.r, %bb.a ], [ %i.abj, %.lr.ph ]
  %i.ar = phi <2 x i64> [ %i.w, %bb.a ], [ %i.abm, %.lr.ph ] ; 3 uses
  %i.as = phi <2 x i64> [ %i.ab, %bb.a ], [ %i.abp, %.lr.ph ]
  %i.at = phi <2 x i64> [ %i.ag, %bb.a ], [ %i.abs, %.lr.ph ] ; 2 uses
  %i.au = phi <2 x i64> [ %i.al, %bb.a ], [ %i.abv, %.lr.ph ] ; 5 uses
  %i.av = xor <2 x i64> %i.ap, %i.ar              ; 3 uses
  %i.aw = xor <2 x i64> %i.ao, %i.au              ; 4 uses
  %i.ax = xor <2 x i64> %i.ar, %i.au              ; 3 uses
end_hunk_0
