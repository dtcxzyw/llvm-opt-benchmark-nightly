Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 551
begin_hunk_0_@aes_nohw_decrypt:bb.a
  %i.cc = xor <2 x i64> %i.ap, %i.cb
  store <2 x i64> %i.cc, ptr %i.h, align 16, !tbaa !76
  %i.cd = xor <2 x i64> %i.by, %i.ap
  store <2 x i64> %i.cd, ptr %i.l, align 16, !tbaa !76
  %i.ce = add nuw nsw i64 %.01113.i, 1
  %exitcond.not = icmp eq i64 %.01113.i, %i.c
  br i1 %exitcond.not, label %aes_nohw_expand_round_keys.exit, label %.preheader.i, !llvm.loop !0

aes_nohw_expand_round_keys.exit:                  ; preds = %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  %.sroa.0.0.copyload.i4 = load <2 x i64>, ptr %0, align 1 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.phi.trans.insert10.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.phi.trans.insert12.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.phi.trans.insert14.i = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %.phi.trans.insert16.i = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %.phi.trans.insert18.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %.phi.trans.insert20.i = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.cf = bitcast <2 x i64> %.sroa.0.0.copyload.i4 to <4 x i32> ; 3 uses
  %i.cg = lshr <4 x i32> %i.cf, splat (i32 1)
  %.inner = and <4 x i32> %i.cg, splat (i32 1431655765) ; 2 uses
  %i.ch = shl nuw <4 x i32> %.inner, splat (i32 1)
  %i.ci = bitcast <4 x i32> %i.ch to <2 x i64>
  %i.cj = xor <2 x i64> %.sroa.0.0.copyload.i4, %i.ci ; 2 uses
  %i.ck = bitcast <2 x i64> %i.cj to <4 x i32>    ; 2 uses
  %i.cl = lshr <4 x i32> %i.ck, splat (i32 2)
  %.inner12 = and <4 x i32> %i.cl, splat (i32 858993459) ; 2 uses
  %i.cm = shl nuw <4 x i32> %.inner12, splat (i32 2)
  %i.cn = bitcast <4 x i32> %i.cm to <2 x i64>
  %i.co = xor <2 x i64> %i.cj, %i.cn              ; 2 uses
  %i.cp = lshr <4 x i32> %i.cf, splat (i32 3)
  %.inner13 = and <4 x i32> %i.cp, splat (i32 286331153) ; 2 uses
  %i.cq = shl nuw nsw <4 x i32> %.inner13, splat (i32 2)
  %.inner14 = xor <4 x i32> %.inner, %i.cq        ; 2 uses
  %i.cr = bitcast <2 x i64> %i.co to <4 x i32>
  %i.cs = lshr <4 x i32> %i.cr, splat (i32 4)
  %i.ct = bitcast <4 x i32> %i.cs to <2 x i64>
  %i.cu = and <2 x i64> %i.ct, splat (i64 1085102592571150095) ; 2 uses
  %i.cv = bitcast <2 x i64> %i.cu to <4 x i32>
  %i.cw = shl nuw <4 x i32> %i.cv, splat (i32 4)
  %i.cx = bitcast <4 x i32> %i.cw to <2 x i64>
  %i.cy = xor <2 x i64> %i.co, %i.cx
  store <2 x i64> %i.cy, ptr %4, align 16, !tbaa !76
  store <2 x i64> %i.cu, ptr %.phi.trans.insert14.i, align 16, !tbaa !76
  %i.cz = lshr <4 x i32> %.inner14, splat (i32 4)
  %i.da = bitcast <4 x i32> %i.cz to <2 x i64>
  %i.db = and <2 x i64> %i.da, splat (i64 361700864190383365) ; 2 uses
  %i.dc = bitcast <2 x i64> %i.db to <4 x i32>
  %i.dd = shl nuw nsw <4 x i32> %i.dc, splat (i32 4)
  %.inner17 = xor <4 x i32> %.inner14, %i.dd
  store <4 x i32> %.inner17, ptr %.phi.trans.insert.i, align 16, !tbaa !76
  store <2 x i64> %i.db, ptr %.phi.trans.insert16.i, align 16, !tbaa !76
  %i.de = lshr <4 x i32> %i.ck, splat (i32 6)
  %i.df = bitcast <4 x i32> %i.de to <2 x i64>
  %i.dg = and <2 x i64> %i.df, splat (i64 217020518514230019) ; 2 uses
  %i.dh = bitcast <2 x i64> %i.dg to <4 x i32>
  %i.di = shl nuw nsw <4 x i32> %i.dh, splat (i32 4)
  %.inner19 = xor <4 x i32> %.inner12, %i.di
  store <4 x i32> %.inner19, ptr %.phi.trans.insert10.i, align 16, !tbaa !76
  store <2 x i64> %i.dg, ptr %.phi.trans.insert18.i, align 16, !tbaa !76
  %i.dj = lshr <4 x i32> %i.cf, splat (i32 7)
  %i.dk = bitcast <4 x i32> %i.dj to <2 x i64>
  %i.dl = and <2 x i64> %i.dk, splat (i64 72340172838076673) ; 2 uses
  %i.dm = bitcast <2 x i64> %i.dl to <4 x i32>
  %i.dn = shl nuw nsw <4 x i32> %i.dm, splat (i32 4)
  %.inner21 = xor <4 x i32> %.inner13, %i.dn
  store <4 x i32> %.inner21, ptr %.phi.trans.insert12.i, align 16, !tbaa !76
  store <2 x i64> %i.dl, ptr %.phi.trans.insert20.i, align 16, !tbaa !76
  call fastcc void @aes_nohw_decrypt_batch(ptr noundef %3, i64 noundef %i.c, ptr noundef %4)
  %.sroa.0.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16
  %.sroa.0.i.sroa.6.0.copyload6 = load <4 x i32>, ptr %.phi.trans.insert.i, align 16
  %.sroa.0.i.sroa.8.0.copyload = load <2 x i64>, ptr %.phi.trans.insert10.i, align 16
  %.sroa.0.i.sroa.10.0.copyload7 = load <4 x i32>, ptr %.phi.trans.insert12.i, align 16
  %.sroa.0.i.sroa.12.0.copyload = load <2 x i64>, ptr %.phi.trans.insert14.i, align 16
  %.sroa.0.i.sroa.14.0.copyload8 = load <4 x i32>, ptr %.phi.trans.insert16.i, align 16
  %.sroa.0.i.sroa.16.0.copyload = load <2 x i64>, ptr %.phi.trans.insert18.i, align 16
  %.sroa.0.i.sroa.18.0.copyload9 = load <4 x i32>, ptr %.phi.trans.insert20.i, align 16, !tbaa !76
  %i.do = shl <4 x i32> %.sroa.0.i.sroa.6.0.copyload6, splat (i32 1)
  %i.dp = bitcast <4 x i32> %i.do to <2 x i64>
  %i.dq = and <2 x i64> %i.dp, splat (i64 -6148914691236517206)
  %i.dr = and <2 x i64> %.sroa.0.i.sroa.0.0.copyload, splat (i64 6148914691236517205)
  %i.ds = or disjoint <2 x i64> %i.dq, %i.dr      ; 2 uses
  %i.dt = shl <4 x i32> %.sroa.0.i.sroa.10.0.copyload7, splat (i32 1)
  %i.du = bitcast <4 x i32> %i.dt to <2 x i64>
  %i.dv = and <2 x i64> %i.du, splat (i64 2459565876494606882)
  %i.dw = and <2 x i64> %.sroa.0.i.sroa.8.0.copyload, splat (i64 1229782938247303441)
  %i.dx = or disjoint <2 x i64> %i.dv, %i.dw
  %i.dy = shl <4 x i32> %.sroa.0.i.sroa.14.0.copyload8, splat (i32 1)
  %i.dz = bitcast <4 x i32> %i.dy to <2 x i64>
  %i.ea = and <2 x i64> %i.dz, splat (i64 -6148914691236517206)
  %i.eb = and <2 x i64> %.sroa.0.i.sroa.12.0.copyload, splat (i64 6148914691236517205)
  %i.ec = or disjoint <2 x i64> %i.ea, %i.eb
  %i.ed = shl <4 x i32> %.sroa.0.i.sroa.18.0.copyload9, splat (i32 1)
  %i.ee = bitcast <4 x i32> %i.ed to <2 x i64>
  %i.ef = and <2 x i64> %i.ee, splat (i64 2459565876494606882)
  %i.eg = and <2 x i64> %.sroa.0.i.sroa.16.0.copyload, splat (i64 1229782938247303441)
  %i.eh = or disjoint <2 x i64> %i.ef, %i.eg
  %i.ei = bitcast <2 x i64> %i.ds to <4 x i32>
  %i.ej = lshr <4 x i32> %i.ei, splat (i32 2)
  %i.ek = bitcast <4 x i32> %i.ej to <2 x i64>
  %.masked = and <2 x i64> %i.ek, splat (i64 3689348814741910323)
  %i.el = xor <2 x i64> %.masked, %i.dx
  %i.em = bitcast <2 x i64> %i.el to <4 x i32>
  %i.en = shl nuw <4 x i32> %i.em, splat (i32 2)
  %i.eo = bitcast <4 x i32> %i.en to <2 x i64>
  %i.ep = xor <2 x i64> %i.ds, %i.eo              ; 2 uses
  %i.eq = bitcast <2 x i64> %i.ec to <4 x i32>    ; 2 uses
  %i.er = lshr <4 x i32> %i.eq, splat (i32 2)
  %i.es = bitcast <4 x i32> %i.er to <2 x i64>
  %.masked10 = and <2 x i64> %i.es, splat (i64 3689348814741910323)
  %i.et = xor <2 x i64> %.masked10, %i.eh
  %i.eu = bitcast <2 x i64> %i.et to <4 x i32>
  %i.ev = shl <4 x i32> %i.eu, splat (i32 6)
  %i.ew = shl <4 x i32> %i.eq, splat (i32 4)
  %i.ex = bitcast <2 x i64> %i.ep to <4 x i32>
  %i.ey = xor <4 x i32> %i.ew, %i.ex
  %i.ez = xor <4 x i32> %i.ev, %i.ey
  %i.fa = bitcast <4 x i32> %i.ez to <2 x i64>
  %i.fb = and <2 x i64> %i.fa, splat (i64 -1085102592571150096)
  %i.fc = xor <2 x i64> %i.fb, %i.ep
  store <2 x i64> %i.fc, ptr %1, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  ret void
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
    i32 192, label %bb.d
    i32 256, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i32 10, ptr %i.f, align 4, !tbaa !75
  %.sroa.0.0.copyload29.i = load <2 x i64>, ptr %0, align 1 ; 2 uses
  store <2 x i64> %.sroa.0.0.copyload29.i, ptr %2, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.032.i = phi i64 [ 1, %bb.b ], [ %i.ab, %bb.c ] ; 3 uses
  %.sroa.0.031.i = phi <2 x i64> [ %.sroa.0.0.copyload29.i, %bb.b ], [ %i.z, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.e, <2 x i64> %.sroa.0.031.i)
  %i.g = getelementptr i8, ptr @aes_nohw_rcon, i64 %.032.i
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
  %.reass.i = xor <2 x i64> %i.r, %.sroa.0.031.i  ; 2 uses
  %i.s = bitcast <2 x i64> %.reass.i to <16 x i8> ; 3 uses
  %i.t = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.s, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.u = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.s, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.v = xor <16 x i8> %i.t, %i.u
  %i.w = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.s, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.x = xor <16 x i8> %i.v, %i.w
  %i.y = bitcast <16 x i8> %i.x to <2 x i64>
  %i.z = xor <2 x i64> %.reass.i, %i.y            ; 2 uses
  %.idx.i = shl nuw nsw i64 %.032.i, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i
  store <2 x i64> %i.z, ptr %i.aa, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  %i.ab = add nuw nsw i64 %.032.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ab, 11
  br i1 %exitcond.not.i, label %aes_nohw_setup_key_128.exit, label %bb.c, !llvm.loop !1

bb.d:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i32 12, ptr %i.ac, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull readonly align 1 dereferenceable(16) %0, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 1
  store i64 %i.ae, ptr %i.c, align 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0147.i = phi ptr [ %i.b, %bb.d ], [ %.0138146.i, %bb.e ] ; 7 uses
  %.0138146.i = phi ptr [ %i.c, %bb.d ], [ %.0147.i, %bb.e ] ; 10 uses
  %.0140145.i = phi i64 [ 0, %bb.d ], [ %i.cz, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  %.0138.val.i = load <2 x i64>, ptr %.0138146.i, align 16, !tbaa !76
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.d, <2 x i64> %.0138.val.i)
  %i.af = shl nuw nsw i64 %.0140145.i, 1
  %i.ag = getelementptr inbounds nuw i8, ptr @aes_nohw_rcon, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !76
  %i.ai = zext i8 %i.ah to i32
  %i.aj = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.ai, i64 0
  %i.ak = bitcast <4 x i32> %i.aj to <2 x i64>
  %i.al = load <2 x i64>, ptr %.0138146.i, align 16, !tbaa !76
  %i.am = load <2 x i64>, ptr %.0147.i, align 16  ; 2 uses
  %i.an = xor <2 x i64> %i.am, %i.ak
  %i.ao = shufflevector <2 x i64> <i64 poison, i64 0>, <2 x i64> %i.an, <2 x i32> <i32 1, i32 2>
  %i.ap = or <2 x i64> %i.al, %i.ao               ; 2 uses
  store <2 x i64> %i.ap, ptr %.0138146.i, align 16, !tbaa !76
  %i.aq = load <4 x i32>, ptr %i.d, align 16, !tbaa !76 ; 2 uses
  %i.ar = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aq, <4 x i32> %i.aq, <4 x i32> <i32 24, i32 24, i32 24, i32 poison>)
  %i.as = bitcast <4 x i32> %i.ar to <16 x i8>
  %i.at = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.as, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.au = bitcast <16 x i8> %i.at to <2 x i64>
  %i.av = and <2 x i64> %i.au, <i64 0, i64 4294967295>
  %i.aw = xor <2 x i64> %i.av, %i.ap              ; 2 uses
  %i.ax = bitcast <2 x i64> %i.aw to <16 x i8>
  %i.ay = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ax, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.az = bitcast <16 x i8> %i.ay to <2 x i64>
  %i.ba = and <2 x i64> %i.az, <i64 0, i64 -4294967296>
  %i.bb = xor <2 x i64> %i.ba, %i.aw              ; 2 uses
  store <2 x i64> %i.bb, ptr %.0138146.i, align 16, !tbaa !76
  %i.bc = bitcast <2 x i64> %i.am to <16 x i8>
  %i.bd = shufflevector <16 x i8> %i.bc, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %.cast144.i = bitcast <2 x i64> %i.bb to <16 x i8> ; 2 uses
  %i.be = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %.cast144.i, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bf = or <16 x i8> %i.be, %i.bd
  %i.bg = shufflevector <16 x i8> %.cast144.i, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bh = xor <16 x i8> %i.bf, %i.bg              ; 4 uses
  %i.bi = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bh, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bj = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bh, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bk = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bh, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.bl = xor <16 x i8> %i.bi, %i.bj
  %i.bm = xor <16 x i8> %i.bl, %i.bk
  %i.bn = xor <16 x i8> %i.bm, %i.bh
  store <16 x i8> %i.bn, ptr %.0147.i, align 16, !tbaa !76
  %.idx.i7 = mul nuw nsw i64 %.0140145.i, 48
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i7 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bp, ptr noundef nonnull align 16 dereferenceable(16) %.0138146.i, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bq, ptr noundef nonnull align 16 dereferenceable(16) %.0147.i, i64 16, i1 false)
  %.0.val.i = load <2 x i64>, ptr %.0147.i, align 16, !tbaa !76
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.d, <2 x i64> %.0.val.i)
  %i.br = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !76
  %i.bt = zext i8 %i.bs to i32
  %i.bu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bt, i64 0
  %i.bv = bitcast <4 x i32> %i.bu to <2 x i64>
  %i.bw = load <16 x i8>, ptr %.0138146.i, align 16, !tbaa !76
  %i.bx = shufflevector <16 x i8> %i.bw, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.by = load <16 x i8>, ptr %.0147.i, align 16, !tbaa !76 ; 2 uses
  %i.bz = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.by, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ca = or <16 x i8> %i.bz, %i.bx
  %i.cb = bitcast <16 x i8> %i.ca to <2 x i64>
  %i.cc = xor <2 x i64> %i.cb, %i.bv              ; 2 uses
  store <2 x i64> %i.cc, ptr %.0138146.i, align 16, !tbaa !76
  %i.cd = load <4 x i32>, ptr %i.d, align 16, !tbaa !76 ; 2 uses
  %i.ce = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.cd, <4 x i32> %i.cd, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.cf = bitcast <4 x i32> %i.ce to <16 x i8>
  %i.cg = shufflevector <16 x i8> %i.cf, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ch = bitcast <16 x i8> %i.cg to <2 x i64>
  %i.ci = xor <2 x i64> %i.cc, %i.ch              ; 2 uses
  %i.cj = bitcast <2 x i64> %i.ci to <16 x i8>    ; 3 uses
  %i.ck = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.cj, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.cl = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.cj, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.cm = xor <16 x i8> %i.ck, %i.cl
  %i.cn = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.cj, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.co = xor <16 x i8> %i.cm, %i.cn
  %i.cp = bitcast <16 x i8> %i.co to <2 x i64>
  %i.cq = xor <2 x i64> %i.ci, %i.cp              ; 2 uses
  store <2 x i64> %i.cq, ptr %.0138146.i, align 16, !tbaa !76
  %i.cr = shufflevector <16 x i8> %i.by, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %.cast.i = bitcast <2 x i64> %i.cq to <16 x i8>
  %i.cs = shufflevector <16 x i8> %.cast.i, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ct = xor <16 x i8> %i.cs, %i.cr              ; 2 uses
  %i.cu = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ct, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.cv = xor <16 x i8> %i.cu, %i.ct
  %i.cw = bitcast <16 x i8> %i.cv to <2 x i64>
  %i.cx = and <2 x i64> %i.cw, <i64 -1, i64 0>
  store <2 x i64> %i.cx, ptr %.0147.i, align 16, !tbaa !76
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cy, ptr noundef nonnull align 16 dereferenceable(16) %.0138146.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  %i.cz = add nuw nsw i64 %.0140145.i, 1          ; 2 uses
  %exitcond.not.i8 = icmp eq i64 %i.cz, 4
  br i1 %exitcond.not.i8, label %aes_nohw_setup_key_192.exit, label %bb.e, !llvm.loop !647

aes_nohw_setup_key_192.exit:                      ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  br label %aes_nohw_setup_key_128.exit

bb.f:                                             ; preds = %bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i32 14, ptr %i.da, align 4, !tbaa !75
  %.sroa.055.0.copyload58.i = load <2 x i64>, ptr %0, align 1 ; 2 uses
  store <2 x i64> %.sroa.055.0.copyload58.i, ptr %2, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload54.i = load <2 x i64>, ptr %i.db, align 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x i64> %.sroa.0.0.copyload54.i, ptr %i.dc, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.063.i = phi i64 [ 2, %bb.f ], [ %i.el, %bb.h ] ; 4 uses
  %.sroa.0.062.i = phi <2 x i64> [ %.sroa.0.0.copyload54.i, %bb.f ], [ %i.ej, %bb.h ] ; 2 uses
  %.sroa.055.061.i = phi <2 x i64> [ %.sroa.055.0.copyload58.i, %bb.f ], [ %i.dw, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.a, <2 x i64> %.sroa.0.062.i)
  %i.dd = lshr exact i64 %.063.i, 1
  %i.de = getelementptr i8, ptr @aes_nohw_rcon, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 -1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !76
  %i.dh = zext i8 %i.dg to i32
  %i.di = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.dh, i64 0
  %i.dj = bitcast <4 x i32> %i.di to <2 x i64>
  %i.dk = load <4 x i32>, ptr %i.a, align 16, !tbaa !76 ; 2 uses
  %i.dl = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dk, <4 x i32> %i.dk, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.dm = bitcast <4 x i32> %i.dl to <16 x i8>
  %i.dn = shufflevector <16 x i8> %i.dm, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.do = bitcast <16 x i8> %i.dn to <2 x i64>
  %invariant.op.i9 = xor <2 x i64> %.sroa.055.061.i, %i.dj
  %.reass.i10 = xor <2 x i64> %invariant.op.i9, %i.do ; 2 uses
  %i.dp = bitcast <2 x i64> %.reass.i10 to <16 x i8> ; 3 uses
  %i.dq = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dp, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.dr = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dp, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ds = xor <16 x i8> %i.dq, %i.dr
  %i.dt = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dp, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.du = xor <16 x i8> %i.ds, %i.dt
  %i.dv = bitcast <16 x i8> %i.du to <2 x i64>
  %i.dw = xor <2 x i64> %.reass.i10, %i.dv        ; 3 uses
  %.idx.i11 = shl nuw nsw i64 %.063.i, 4
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i11 ; 2 uses
  store <2 x i64> %i.dw, ptr %i.dx, align 4
  %.not.i = icmp eq i64 %.063.i, 14
  br i1 %.not.i, label %aes_nohw_setup_key_256.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.a, <2 x i64> %i.dw)
  %i.dy = load <16 x i8>, ptr %i.a, align 16, !tbaa !76
  %i.dz = shufflevector <16 x i8> %i.dy, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ea = bitcast <16 x i8> %i.dz to <2 x i64>
  %i.eb = xor <2 x i64> %.sroa.0.062.i, %i.ea     ; 2 uses
  %i.ec = bitcast <2 x i64> %i.eb to <16 x i8>    ; 3 uses
  %i.ed = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ec, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ee = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ec, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ef = xor <16 x i8> %i.ed, %i.ee
  %i.eg = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ec, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.eh = xor <16 x i8> %i.ef, %i.eg
  %i.ei = bitcast <16 x i8> %i.eh to <2 x i64>
  %i.ej = xor <2 x i64> %i.eb, %i.ei              ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <2 x i64> %i.ej, ptr %i.ek, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.el = add nuw nsw i64 %.063.i, 2
  br label %bb.g

aes_nohw_setup_key_256.exit:                      ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %aes_nohw_setup_key_128.exit

aes_nohw_setup_key_128.exit:                      ; preds = %bb.c, %bb.a, %aes_nohw_setup_key_256.exit, %aes_nohw_setup_key_192.exit
  %.0 = phi i32 [ 0, %aes_nohw_setup_key_256.exit ], [ 1, %bb.a ], [ 0, %aes_nohw_setup_key_192.exit ], [ 0, %bb.c ]
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
  %i.ay = xor <2 x i64> %i.ap, %i.au              ; 4 uses
  %i.az = xor <2 x i64> %i.as, %i.at              ; 3 uses
  %i.ba = xor <2 x i64> %i.an, %i.az              ; 5 uses
  %i.bb = xor <2 x i64> %i.ba, %i.ar              ; 2 uses
  %i.bc = xor <2 x i64> %i.aw, %i.av              ; 3 uses
  %i.bd = xor <2 x i64> %i.ba, %i.au              ; 2 uses
  %i.be = xor <2 x i64> %i.ba, %i.ao              ; 3 uses
  %i.bf = xor <2 x i64> %i.be, %i.ay              ; 2 uses
  %i.bg = xor <2 x i64> %i.bc, %i.aq              ; 2 uses
  %i.bh = xor <2 x i64> %i.bg, %i.ap              ; 4 uses
  %i.bi = xor <2 x i64> %i.bg, %i.at              ; 2 uses
  %i.bj = xor <2 x i64> %i.bh, %i.an              ; 2 uses
  %i.bk = xor <2 x i64> %i.bh, %i.az              ; 4 uses
  %i.bl = xor <2 x i64> %i.bi, %i.ax              ; 5 uses
  %i.bm = xor <2 x i64> %i.bl, %i.an              ; 2 uses
  %i.bn = xor <2 x i64> %i.bl, %i.bk              ; 2 uses
  %i.bo = xor <2 x i64> %i.bl, %i.az              ; 4 uses
  %i.bp = and <2 x i64> %i.bh, %i.bc              ; 2 uses
  %i.bq = and <2 x i64> %i.bj, %i.bf
  %i.br = and <2 x i64> %i.bb, %i.an
  %i.bs = and <2 x i64> %i.bo, %i.aw              ; 2 uses
  %i.bt = and <2 x i64> %i.be, %i.ba
  %i.bu = and <2 x i64> %i.bm, %i.bd
  %i.bv = and <2 x i64> %i.bl, %i.ax              ; 2 uses
  %i.bw = and <2 x i64> %i.bn, %i.av
  %i.bx = xor <2 x i64> %i.bw, %i.bv              ; 2 uses
  %i.by = and <2 x i64> %i.bk, %i.ay
  %i.bz = xor <2 x i64> %i.bv, %i.by              ; 2 uses
  %i.ca = xor <2 x i64> %i.bi, %i.bq
  %i.cb = xor <2 x i64> %i.ca, %i.bp
  %i.cc = xor <2 x i64> %i.cb, %i.bx              ; 2 uses
  %i.cd = xor <2 x i64> %i.br, %i.ay
  %i.ce = xor <2 x i64> %i.cd, %i.bp
  %i.cf = xor <2 x i64> %i.ce, %i.bk
  %i.cg = xor <2 x i64> %i.cf, %i.bz              ; 3 uses
  %i.ch = xor <2 x i64> %i.bt, %i.aw
  %i.ci = xor <2 x i64> %i.ch, %i.bs
  %i.cj = xor <2 x i64> %i.ci, %i.bx              ; 2 uses
end_hunk_0
begin_hunk_1_@mlkem512_check_pk:bb.a
  br i1 %.not.i.i.i, label %mlk_poly_tobytes_native.exit.i.i, label %mlk_poly_tobytes_native.exit.thread.i.i

mlk_poly_tobytes_native.exit.thread.i.i:          ; preds = %bb.a
  call void @mlkem_ntttobytes_avx2_asm(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #46
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73
  br label %mlkem_poly_tobytes.exit.i

mlk_poly_tobytes_native.exit.i.i:                 ; preds = %bb.a, %mlk_poly_tobytes_native.exit.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %mlk_poly_tobytes_native.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %.idx.i.i.i = shl nuw nsw i64 %indvars.iv.i.i.i, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i ; 2 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !131  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.g = load i16, ptr %i.f, align 2, !tbaa !131  ; 2 uses
  %i.h = trunc i16 %i.e to i8
  %i.i = mul nuw nsw i64 %indvars.iv.i.i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.i ; 3 uses
  store i8 %i.h, ptr %i.j, align 2, !tbaa !76
  %i.k = lshr i16 %i.e, 8
  %i.l = shl i16 %i.g, 4
  %i.m = or i16 %i.l, %i.k
  %i.n = trunc i16 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.n, ptr %i.o, align 1, !tbaa !76
  %i.p = lshr i16 %i.g, 4
  %i.q = trunc i16 %i.p to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 %i.q, ptr %i.r, align 2, !tbaa !76
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.1 = shl nuw nsw i64 %indvars.iv.next.i.i.i, 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i.i.1 ; 2 uses
  %i.t = load i16, ptr %i.s, align 4, !tbaa !131  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.v = load i16, ptr %i.u, align 2, !tbaa !131  ; 2 uses
  %i.w = trunc i16 %i.t to i8
  %i.x = mul nuw nsw i64 %indvars.iv.next.i.i.i, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x ; 3 uses
  store i8 %i.w, ptr %i.y, align 1, !tbaa !76
  %i.z = lshr i16 %i.t, 8
  %i.aa = shl i16 %i.v, 4
  %i.ab = or i16 %i.aa, %i.z
  %i.ac = trunc i16 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 %i.ac, ptr %i.ad, align 2, !tbaa !76
  %i.ae = lshr i16 %i.v, 4
  %i.af = trunc i16 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !76
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, 128
  br i1 %exitcond.not.i.i.i.1, label %mlkem_poly_tobytes.exit.i, label %mlk_poly_tobytes_native.exit.i.i, !llvm.loop !42

mlkem_poly_tobytes.exit.i:                        ; preds = %mlk_poly_tobytes_native.exit.i.i, %mlk_poly_tobytes_native.exit.thread.i.i
  %i.ah = phi i32 [ %.pre, %mlk_poly_tobytes_native.exit.thread.i.i ], [ %i.b, %mlk_poly_tobytes_native.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 384 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 3 uses
  %i.ak = and i32 %i.ah, 32
  %.not.i.i.1.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.1.i, label %mlk_poly_tobytes_native.exit.i.1.i, label %mlk_poly_tobytes_native.exit.thread.i.1.i

mlk_poly_tobytes_native.exit.thread.i.1.i:        ; preds = %mlkem_poly_tobytes.exit.i
  call void @mlkem_ntttobytes_avx2_asm(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj) #46
  br label %vector.body.preheader

mlk_poly_tobytes_native.exit.i.1.i:               ; preds = %mlkem_poly_tobytes.exit.i, %mlk_poly_tobytes_native.exit.i.1.i
  %indvars.iv.i.i.1.i = phi i64 [ %indvars.iv.next.i.i.1.i.1, %mlk_poly_tobytes_native.exit.i.1.i ], [ 0, %mlkem_poly_tobytes.exit.i ] ; 4 uses
  %.idx.i.i.1.i = shl nuw nsw i64 %indvars.iv.i.i.1.i, 2
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i.1.i ; 2 uses
  %i.am = load i16, ptr %i.al, align 8, !tbaa !131 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !131 ; 2 uses
  %i.ap = trunc i16 %i.am to i8
  %i.aq = mul nuw nsw i64 %indvars.iv.i.i.1.i, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aq ; 3 uses
  store i8 %i.ap, ptr %i.ar, align 2, !tbaa !76
  %i.as = lshr i16 %i.am, 8
  %i.at = shl i16 %i.ao, 4
  %i.au = or i16 %i.at, %i.as
  %i.av = trunc i16 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !76
  %i.ax = lshr i16 %i.ao, 4
  %i.ay = trunc i16 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store i8 %i.ay, ptr %i.az, align 2, !tbaa !76
  %indvars.iv.next.i.i.1.i = or disjoint i64 %indvars.iv.i.i.1.i, 1 ; 2 uses
  %.idx.i.i.1.i.1 = shl nuw nsw i64 %indvars.iv.next.i.i.1.i, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i.1.i.1 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !131 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !131 ; 2 uses
  %i.be = trunc i16 %i.bb to i8
  %i.bf = mul nuw nsw i64 %indvars.iv.next.i.i.1.i, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bf ; 3 uses
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !76
  %i.bh = lshr i16 %i.bb, 8
  %i.bi = shl i16 %i.bd, 4
  %i.bj = or i16 %i.bi, %i.bh
  %i.bk = trunc i16 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %i.bk, ptr %i.bl, align 2, !tbaa !76
  %i.bm = lshr i16 %i.bd, 4
  %i.bn = trunc i16 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !76
  %indvars.iv.next.i.i.1.i.1 = add nuw nsw i64 %indvars.iv.i.i.1.i, 2 ; 2 uses
  %exitcond.not.i.i.1.i.1 = icmp eq i64 %indvars.iv.next.i.i.1.i.1, 128
  br i1 %exitcond.not.i.i.1.i.1, label %vector.body.preheader, label %mlk_poly_tobytes_native.exit.i.1.i, !llvm.loop !42

vector.body.preheader:                            ; preds = %mlk_poly_tobytes_native.exit.i.1.i, %mlk_poly_tobytes_native.exit.thread.i.1.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ 0, %vector.body.preheader ], [ %index.next.1, %vector.body ] ; 4 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.body.preheader ], [ %i.cl, %vector.body ]
  %vec.phi14 = phi <4 x i32> [ zeroinitializer, %vector.body.preheader ], [ %i.cm, %vector.body ]
  %vec.phi15 = phi <4 x i8> [ zeroinitializer, %vector.body.preheader ], [ %i.cj, %vector.body ]
  %vec.phi16 = phi <4 x i8> [ zeroinitializer, %vector.body.preheader ], [ %i.ck, %vector.body ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %wide.load = load <4 x i8>, ptr %i.bp, align 1, !tbaa !76
  %wide.load17 = load <4 x i8>, ptr %i.bq, align 1, !tbaa !76
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %wide.load18 = load <4 x i8>, ptr %i.br, align 16, !tbaa !76
  %wide.load19 = load <4 x i8>, ptr %i.bs, align 4, !tbaa !76
  %i.bt = xor <4 x i8> %wide.load18, %wide.load   ; 2 uses
  %i.bu = xor <4 x i8> %wide.load19, %wide.load17 ; 2 uses
  %i.bv = zext <4 x i8> %i.bt to <4 x i32>
  %i.bw = zext <4 x i8> %i.bu to <4 x i32>
  %i.bx = or <4 x i8> %i.bt, %vec.phi15
  %i.by = or <4 x i8> %i.bu, %vec.phi16
  %i.bz = xor <4 x i32> %vec.phi, %i.bv
  %i.ca = xor <4 x i32> %vec.phi14, %i.bw
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %index.next ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %wide.load.1 = load <4 x i8>, ptr %i.cb, align 1, !tbaa !76
  %wide.load17.1 = load <4 x i8>, ptr %i.cc, align 1, !tbaa !76
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %index.next ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %wide.load18.1 = load <4 x i8>, ptr %i.cd, align 8, !tbaa !76
  %wide.load19.1 = load <4 x i8>, ptr %i.ce, align 4, !tbaa !76
  %i.cf = xor <4 x i8> %wide.load18.1, %wide.load.1 ; 2 uses
  %i.cg = xor <4 x i8> %wide.load19.1, %wide.load17.1 ; 2 uses
  %i.ch = zext <4 x i8> %i.cf to <4 x i32>
  %i.ci = zext <4 x i8> %i.cg to <4 x i32>
  %i.cj = or <4 x i8> %i.cf, %i.bx                ; 2 uses
  %i.ck = or <4 x i8> %i.cg, %i.by                ; 2 uses
  %i.cl = xor <4 x i32> %i.bz, %i.ch              ; 2 uses
  %i.cm = xor <4 x i32> %i.ca, %i.ci              ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.cn = icmp eq i64 %index.next.1, 768
  br i1 %i.cn, label %mlk_ct_memcmp.exit, label %vector.body, !llvm.loop !2207

mlk_ct_memcmp.exit:                               ; preds = %vector.body
  %bin.rdx20 = or <4 x i8> %i.ck, %i.cj
  %i.co = call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %bin.rdx20)
  %bin.rdx = xor <4 x i32> %i.cm, %i.cl
  %i.cp = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %i.cq = zext i8 %i.co to i32
  %i.cr = sub nsw i32 0, %i.cq
  %i.cs = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.cr) #46, !srcloc !458
  %i.ct = lshr i32 %i.cs, 16
  %i.cu = trunc nuw i32 %i.cp to i8
  %i.cv = xor i32 %i.ct, %i.cp
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.cw) #46, !srcloc !459
  %.not = icmp eq i8 %i.cx, %i.cu
  %i.cy = select i1 %.not, i32 0, i32 -4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 768) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %1, i64 noundef 1024) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  ret i32 %i.cy
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ml_kem_512_check_sk(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne i64 %1, 1632
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @mlkem512_check_sk(ptr noundef nonnull %0)
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -5, 1) i32 @mlkem512_check_sk(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.keccak_ctx_st, align 8      ; 11 uses
  %i.a = alloca [32 x i8], align 32               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 768
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %1, i8 0, i64 200, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 0, ptr %i.c, align 8, !tbaa !444
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 393
  store i8 0, ptr %i.d, align 1, !tbaa !445
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i64 136, ptr %i.e, align 8, !tbaa !446
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 32, ptr %i.f, align 8, !tbaa !447
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i8 6, ptr %i.g, align 8, !tbaa !448
  %i.h = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %1, ptr noundef nonnull readonly %i.b, i64 noundef 800)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %mlk_sha3_256.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @SHA3_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %1) ; 0 uses
  %.pre = load i8, ptr %i.a, align 32, !tbaa !76
  br label %mlk_sha3_256.exit

mlk_sha3_256.exit:                                ; preds = %bb.a, %bb.b
  %i.k = phi i8 [ undef, %bb.a ], [ %.pre, %bb.b ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %1, i64 noundef 400) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %3 = load <4 x i8>, ptr %i.m, align 1, !tbaa !76
  %4 = load <4 x i8>, ptr %2, align 1
  %i.p = load <8 x i8>, ptr %i.n, align 8, !tbaa !76
  %i.q = load <32 x i8>, ptr %i.l, align 1, !tbaa !76
  %i.r = load <16 x i8>, ptr %i.o, align 16, !tbaa !76
  %i.s = shufflevector <4 x i8> %3, <4 x i8> %4, <32 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.t = insertelement <32 x i8> %i.s, i8 %i.k, i64 0
  %i.u = shufflevector <16 x i8> %i.r, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.v = shufflevector <32 x i8> %i.t, <32 x i8> %i.u, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.w = shufflevector <8 x i8> %i.p, <8 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.x = shufflevector <32 x i8> %i.v, <32 x i8> %i.w, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.y = xor <32 x i8> %i.x, %i.q                 ; 2 uses
  %i.z = call i8 @llvm.vector.reduce.or.v32i8(<32 x i8> %i.y)
  %i.aa = call i8 @llvm.vector.reduce.xor.v32i8(<32 x i8> %i.y) ; 2 uses
  %i.ab = zext i8 %i.z to i32
  %i.ac = sub nsw i32 0, %i.ab
  %i.ad = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.ac) #46, !srcloc !458
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc i32 %i.ae to i8
  %i.ag = xor i8 %i.aa, %i.af
  %i.ah = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.ag) #46, !srcloc !459
  %.not = icmp eq i8 %i.ah, %i.aa
  %i.ai = select i1 %.not, i32 0, i32 -5
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %i.ai
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ml_kem_768_check_pk(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne i64 %1, 1184
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @mlkem768_check_pk(ptr noundef nonnull %0)
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -4, 1) i32 @mlkem768_check_pk(ptr noundef %0) unnamed_addr #0 {
vector.ph:
  %1 = alloca [1 x %struct.mlk_polyvec768], align 32 ; 6 uses
  %i.a = alloca [1152 x i8], align 32             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call fastcc void @mlkem768_polyvec_frombytes(ptr noundef %1, ptr noundef %0)
  call fastcc void @mlkem768_polyvec_reduce(ptr noundef %1)
  call fastcc void @mlkem768_polyvec_tobytes(ptr noundef nonnull %i.a, ptr noundef %1)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi14 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi15 = phi <4 x i8> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi16 = phi <4 x i8> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load = load <4 x i8>, ptr %i.b, align 1, !tbaa !76
  %wide.load17 = load <4 x i8>, ptr %i.c, align 1, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %wide.load18 = load <4 x i8>, ptr %i.d, align 16, !tbaa !76
  %wide.load19 = load <4 x i8>, ptr %i.e, align 4, !tbaa !76
  %i.f = xor <4 x i8> %wide.load18, %wide.load    ; 2 uses
  %i.g = xor <4 x i8> %wide.load19, %wide.load17  ; 2 uses
  %i.h = zext <4 x i8> %i.f to <4 x i32>
  %i.i = zext <4 x i8> %i.g to <4 x i32>
  %i.j = or <4 x i8> %i.f, %vec.phi15
  %i.k = or <4 x i8> %i.g, %vec.phi16
  %i.l = xor <4 x i32> %vec.phi, %i.h
  %i.m = xor <4 x i32> %vec.phi14, %i.i
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index.next ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %wide.load.1 = load <4 x i8>, ptr %i.n, align 1, !tbaa !76
  %wide.load17.1 = load <4 x i8>, ptr %i.o, align 1, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %index.next ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %wide.load18.1 = load <4 x i8>, ptr %i.p, align 8, !tbaa !76
  %wide.load19.1 = load <4 x i8>, ptr %i.q, align 4, !tbaa !76
  %i.r = xor <4 x i8> %wide.load18.1, %wide.load.1 ; 2 uses
  %i.s = xor <4 x i8> %wide.load19.1, %wide.load17.1 ; 2 uses
  %i.t = zext <4 x i8> %i.r to <4 x i32>
  %i.u = zext <4 x i8> %i.s to <4 x i32>
  %i.v = or <4 x i8> %i.r, %i.j                   ; 2 uses
  %i.w = or <4 x i8> %i.s, %i.k                   ; 2 uses
  %i.x = xor <4 x i32> %i.l, %i.t                 ; 2 uses
  %i.y = xor <4 x i32> %i.m, %i.u                 ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.z = icmp eq i64 %index.next.1, 1152
  br i1 %i.z, label %mlk_ct_memcmp.exit, label %vector.body, !llvm.loop !2208

mlk_ct_memcmp.exit:                               ; preds = %vector.body
  %bin.rdx20 = or <4 x i8> %i.w, %i.v
  %i.aa = call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %bin.rdx20)
  %bin.rdx = xor <4 x i32> %i.y, %i.x
  %i.ab = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %i.ac = zext i8 %i.aa to i32
  %i.ad = sub nsw i32 0, %i.ac
  %i.ae = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.ad) #46, !srcloc !458
  %i.af = lshr i32 %i.ae, 16
  %i.ag = trunc nuw i32 %i.ab to i8
  %i.ah = xor i32 %i.af, %i.ab
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.ai) #46, !srcloc !459
  %.not = icmp eq i8 %i.aj, %i.ag
  %i.ak = select i1 %.not, i32 0, i32 -4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 1152) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %1, i64 noundef 1536) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  ret i32 %i.ak
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ml_kem_768_check_sk(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne i64 %1, 2400
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @mlkem768_check_sk(ptr noundef nonnull %0)
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -5, 1) i32 @mlkem768_check_sk(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.keccak_ctx_st, align 8      ; 11 uses
  %i.a = alloca [32 x i8], align 32               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1152
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %1, i8 0, i64 200, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 0, ptr %i.c, align 8, !tbaa !444
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 393
  store i8 0, ptr %i.d, align 1, !tbaa !445
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i64 136, ptr %i.e, align 8, !tbaa !446
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 32, ptr %i.f, align 8, !tbaa !447
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i8 6, ptr %i.g, align 8, !tbaa !448
  %i.h = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %1, ptr noundef nonnull readonly %i.b, i64 noundef 1184)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %mlk_sha3_256.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @SHA3_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %1) ; 0 uses
  %.pre = load i8, ptr %i.a, align 32, !tbaa !76
  br label %mlk_sha3_256.exit

mlk_sha3_256.exit:                                ; preds = %bb.a, %bb.b
  %i.k = phi i8 [ undef, %bb.a ], [ %.pre, %bb.b ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %1, i64 noundef 400) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2336
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %3 = load <4 x i8>, ptr %i.m, align 1, !tbaa !76
  %4 = load <4 x i8>, ptr %2, align 1
  %i.p = load <8 x i8>, ptr %i.n, align 8, !tbaa !76
  %i.q = load <32 x i8>, ptr %i.l, align 1, !tbaa !76
  %i.r = load <16 x i8>, ptr %i.o, align 16, !tbaa !76
  %i.s = shufflevector <4 x i8> %3, <4 x i8> %4, <32 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.t = insertelement <32 x i8> %i.s, i8 %i.k, i64 0
  %i.u = shufflevector <16 x i8> %i.r, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.v = shufflevector <32 x i8> %i.t, <32 x i8> %i.u, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.w = shufflevector <8 x i8> %i.p, <8 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.x = shufflevector <32 x i8> %i.v, <32 x i8> %i.w, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.y = xor <32 x i8> %i.x, %i.q                 ; 2 uses
  %i.z = call i8 @llvm.vector.reduce.or.v32i8(<32 x i8> %i.y)
  %i.aa = call i8 @llvm.vector.reduce.xor.v32i8(<32 x i8> %i.y) ; 2 uses
  %i.ab = zext i8 %i.z to i32
  %i.ac = sub nsw i32 0, %i.ab
  %i.ad = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.ac) #46, !srcloc !458
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc i32 %i.ae to i8
  %i.ag = xor i8 %i.aa, %i.af
  %i.ah = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.ag) #46, !srcloc !459
  %.not = icmp eq i8 %i.ah, %i.aa
  %i.ai = select i1 %.not, i32 0, i32 -5
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %i.ai
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ml_kem_1024_check_pk(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne i64 %1, 1568
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @mlkem1024_check_pk(ptr noundef nonnull %0)
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -4, 1) i32 @mlkem1024_check_pk(ptr noundef %0) unnamed_addr #0 {
vector.ph:
  %1 = alloca [1 x %struct.mlk_polyvec1024], align 32 ; 6 uses
  %i.a = alloca [1536 x i8], align 32             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call fastcc void @mlkem1024_polyvec_frombytes(ptr noundef %1, ptr noundef %0)
  call fastcc void @mlkem1024_polyvec_reduce(ptr noundef %1)
  call fastcc void @mlkem1024_polyvec_tobytes(ptr noundef nonnull %i.a, ptr noundef %1)
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 4 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi14 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi15 = phi <4 x i8> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi16 = phi <4 x i8> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load = load <4 x i8>, ptr %i.b, align 1, !tbaa !76
  %wide.load17 = load <4 x i8>, ptr %i.c, align 1, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %wide.load18 = load <4 x i8>, ptr %i.d, align 16, !tbaa !76
  %wide.load19 = load <4 x i8>, ptr %i.e, align 4, !tbaa !76
  %i.f = xor <4 x i8> %wide.load18, %wide.load    ; 2 uses
  %i.g = xor <4 x i8> %wide.load19, %wide.load17  ; 2 uses
  %i.h = zext <4 x i8> %i.f to <4 x i32>
  %i.i = zext <4 x i8> %i.g to <4 x i32>
  %i.j = or <4 x i8> %i.f, %vec.phi15
  %i.k = or <4 x i8> %i.g, %vec.phi16
  %i.l = xor <4 x i32> %vec.phi, %i.h
  %i.m = xor <4 x i32> %vec.phi14, %i.i
  %index.next = or disjoint i64 %index, 8         ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %index.next ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %wide.load.1 = load <4 x i8>, ptr %i.n, align 1, !tbaa !76
  %wide.load17.1 = load <4 x i8>, ptr %i.o, align 1, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %index.next ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %wide.load18.1 = load <4 x i8>, ptr %i.p, align 8, !tbaa !76
  %wide.load19.1 = load <4 x i8>, ptr %i.q, align 4, !tbaa !76
  %i.r = xor <4 x i8> %wide.load18.1, %wide.load.1 ; 2 uses
  %i.s = xor <4 x i8> %wide.load19.1, %wide.load17.1 ; 2 uses
  %i.t = zext <4 x i8> %i.r to <4 x i32>
  %i.u = zext <4 x i8> %i.s to <4 x i32>
  %i.v = or <4 x i8> %i.r, %i.j                   ; 2 uses
  %i.w = or <4 x i8> %i.s, %i.k                   ; 2 uses
  %i.x = xor <4 x i32> %i.l, %i.t                 ; 2 uses
  %i.y = xor <4 x i32> %i.m, %i.u                 ; 2 uses
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.z = icmp eq i64 %index.next.1, 1536
  br i1 %i.z, label %mlk_ct_memcmp.exit, label %vector.body, !llvm.loop !2209

mlk_ct_memcmp.exit:                               ; preds = %vector.body
  %bin.rdx20 = or <4 x i8> %i.w, %i.v
  %i.aa = call i8 @llvm.vector.reduce.or.v4i8(<4 x i8> %bin.rdx20)
  %bin.rdx = xor <4 x i32> %i.y, %i.x
  %i.ab = call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %i.ac = zext i8 %i.aa to i32
  %i.ad = sub nsw i32 0, %i.ac
  %i.ae = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.ad) #46, !srcloc !458
  %i.af = lshr i32 %i.ae, 16
  %i.ag = trunc nuw i32 %i.ab to i8
  %i.ah = xor i32 %i.af, %i.ab
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.ai) #46, !srcloc !459
  %.not = icmp eq i8 %i.aj, %i.ag
  %i.ak = select i1 %.not, i32 0, i32 -4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 1536) #46
  call void @OPENSSL_cleanse(ptr noundef nonnull %1, i64 noundef 2048) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  ret i32 %i.ak
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ml_kem_1024_check_sk(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne i64 %1, 3168
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @mlkem1024_check_sk(ptr noundef nonnull %0)
  %i.d = icmp ne i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -5, 1) i32 @mlkem1024_check_sk(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.keccak_ctx_st, align 8      ; 11 uses
  %i.a = alloca [32 x i8], align 32               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1536
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %1, i8 0, i64 200, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 0, ptr %i.c, align 8, !tbaa !444
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 393
  store i8 0, ptr %i.d, align 1, !tbaa !445
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i64 136, ptr %i.e, align 8, !tbaa !446
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 32, ptr %i.f, align 8, !tbaa !447
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i8 6, ptr %i.g, align 8, !tbaa !448
  %i.h = call i32 @KeccakSponge_Absorb(ptr noundef nonnull %1, ptr noundef nonnull readonly %i.b, i64 noundef 1568)
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %mlk_sha3_256.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @SHA3_Final(ptr noundef nonnull %i.a, ptr noundef nonnull %1) ; 0 uses
  %.pre = load i8, ptr %i.a, align 32, !tbaa !76
  br label %mlk_sha3_256.exit

mlk_sha3_256.exit:                                ; preds = %bb.a, %bb.b
  %i.k = phi i8 [ undef, %bb.a ], [ %.pre, %bb.b ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %1, i64 noundef 400) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #46
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %3 = load <4 x i8>, ptr %i.m, align 1, !tbaa !76
  %4 = load <4 x i8>, ptr %2, align 1
  %i.p = load <8 x i8>, ptr %i.n, align 8, !tbaa !76
  %i.q = load <32 x i8>, ptr %i.l, align 1, !tbaa !76
  %i.r = load <16 x i8>, ptr %i.o, align 16, !tbaa !76
  %i.s = shufflevector <4 x i8> %3, <4 x i8> %4, <32 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.t = insertelement <32 x i8> %i.s, i8 %i.k, i64 0
  %i.u = shufflevector <16 x i8> %i.r, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.v = shufflevector <32 x i8> %i.t, <32 x i8> %i.u, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.w = shufflevector <8 x i8> %i.p, <8 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.x = shufflevector <32 x i8> %i.v, <32 x i8> %i.w, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.y = xor <32 x i8> %i.x, %i.q                 ; 2 uses
  %i.z = call i8 @llvm.vector.reduce.or.v32i8(<32 x i8> %i.y)
  %i.aa = call i8 @llvm.vector.reduce.xor.v32i8(<32 x i8> %i.y) ; 2 uses
  %i.ab = zext i8 %i.z to i32
  %i.ac = sub nsw i32 0, %i.ab
  %i.ad = call i32 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 -65535, 32768) %i.ac) #46, !srcloc !458
  %i.ae = lshr i32 %i.ad, 16
  %i.af = trunc i32 %i.ae to i8
  %i.ag = xor i8 %i.aa, %i.af
  %i.ah = call i8 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i8 %i.ag) #46, !srcloc !459
  %.not = icmp eq i8 %i.ah, %i.aa
  %i.ai = select i1 %.not, i32 0, i32 -5
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 32) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %i.ai
}

; Function Attrs: nounwind uwtable
define hidden void @CRYPTO_ctr128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %6, align 4, !tbaa !73     ; 3 uses
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp ne i64 %2, 0
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.040.lcssa = phi i64 [ %2, %bb.a ], [ %i.ac, %.lr.ph ] ; 3 uses
  %.038.lcssa = phi ptr [ %1, %bb.a ], [ %i.ab, %.lr.ph ] ; 2 uses
  %.036.lcssa = phi ptr [ %0, %bb.a ], [ %i.v, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.ae, %.lr.ph ]
  %i.e = icmp ugt i64 %.040.lcssa, 15
  br i1 %i.e, label %.lr.ph54, label %._crit_edge

.lr.ph54:                                         ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 15 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 14 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 13 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 11 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.047 = phi i32 [ %i.ae, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %.03646 = phi ptr [ %i.v, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.03845 = phi ptr [ %i.ab, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.04044 = phi i64 [ %i.ac, %.lr.ph ], [ %2, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %.03646, i64 1 ; 2 uses
  %i.w = load i8, ptr %.03646, align 1, !tbaa !76
  %i.x = zext i32 %.047 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !76
  %i.aa = xor i8 %i.z, %i.w
  %i.ab = getelementptr inbounds nuw i8, ptr %.03845, i64 1 ; 2 uses
  store i8 %i.aa, ptr %.03845, align 1, !tbaa !76
  %i.ac = add i64 %.04044, -1                     ; 3 uses
  %i.ad = add i32 %.047, 1
  %i.ae = and i32 %i.ad, 15                       ; 3 uses
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = icmp ne i64 %i.ac, 0
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %.lr.ph, label %.preheader, !llvm.loop !2210

bb.b:                                             ; preds = %.lr.ph54, %bb.b
  %.13753 = phi ptr [ %.036.lcssa, %.lr.ph54 ], [ %i.do, %bb.b ] ; 3 uses
  %.13952 = phi ptr [ %.038.lcssa, %.lr.ph54 ], [ %i.dn, %bb.b ] ; 3 uses
  %.14151 = phi i64 [ %.040.lcssa, %.lr.ph54 ], [ %i.dm, %bb.b ]
  tail call void %7(ptr noundef %4, ptr noundef %5, ptr noundef %3) #46
  %i.ai = load i8, ptr %i.f, align 1, !tbaa !76
  %i.aj = zext i8 %i.ai to i32
  %i.ak = add nuw nsw i32 %i.aj, 1                ; 2 uses
  %i.al = trunc i32 %i.ak to i8
  store i8 %i.al, ptr %i.f, align 1, !tbaa !76
  %i.am = lshr i32 %i.ak, 8
  %i.an = load i8, ptr %i.g, align 1, !tbaa !76
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nuw nsw i32 %i.am, %i.ao            ; 2 uses
  %i.aq = trunc i32 %i.ap to i8
  store i8 %i.aq, ptr %i.g, align 1, !tbaa !76
  %i.ar = lshr i32 %i.ap, 8
  %i.as = load i8, ptr %i.h, align 1, !tbaa !76
  %i.at = zext i8 %i.as to i32
  %i.au = add nuw nsw i32 %i.ar, %i.at            ; 2 uses
  %i.av = trunc i32 %i.au to i8
  store i8 %i.av, ptr %i.h, align 1, !tbaa !76
  %i.aw = lshr i32 %i.au, 8
  %i.ax = load i8, ptr %i.i, align 1, !tbaa !76
  %i.ay = zext i8 %i.ax to i32
  %i.az = add nuw nsw i32 %i.aw, %i.ay            ; 2 uses
  %i.ba = trunc i32 %i.az to i8
  store i8 %i.ba, ptr %i.i, align 1, !tbaa !76
  %i.bb = lshr i32 %i.az, 8
  %i.bc = load i8, ptr %i.j, align 1, !tbaa !76
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %i.bb, %i.bd            ; 2 uses
  %i.bf = trunc i32 %i.be to i8
  store i8 %i.bf, ptr %i.j, align 1, !tbaa !76
  %i.bg = lshr i32 %i.be, 8
  %i.bh = load i8, ptr %i.k, align 1, !tbaa !76
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nuw nsw i32 %i.bg, %i.bi            ; 2 uses
  %i.bk = trunc i32 %i.bj to i8
  store i8 %i.bk, ptr %i.k, align 1, !tbaa !76
  %i.bl = lshr i32 %i.bj, 8
  %i.bm = load i8, ptr %i.l, align 1, !tbaa !76
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nuw nsw i32 %i.bl, %i.bn            ; 2 uses
  %i.bp = trunc i32 %i.bo to i8
  store i8 %i.bp, ptr %i.l, align 1, !tbaa !76
  %i.bq = lshr i32 %i.bo, 8
  %i.br = load i8, ptr %i.m, align 1, !tbaa !76
  %i.bs = zext i8 %i.br to i32
  %i.bt = add nuw nsw i32 %i.bq, %i.bs            ; 2 uses
  %i.bu = trunc i32 %i.bt to i8
  store i8 %i.bu, ptr %i.m, align 1, !tbaa !76
  %i.bv = lshr i32 %i.bt, 8
  %i.bw = load i8, ptr %i.n, align 1, !tbaa !76
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nuw nsw i32 %i.bv, %i.bx            ; 2 uses
  %i.bz = trunc i32 %i.by to i8
  store i8 %i.bz, ptr %i.n, align 1, !tbaa !76
  %i.ca = lshr i32 %i.by, 8
  %i.cb = load i8, ptr %i.o, align 1, !tbaa !76
  %i.cc = zext i8 %i.cb to i32
  %i.cd = add nuw nsw i32 %i.ca, %i.cc            ; 2 uses
  %i.ce = trunc i32 %i.cd to i8
  store i8 %i.ce, ptr %i.o, align 1, !tbaa !76
  %i.cf = lshr i32 %i.cd, 8
  %i.cg = load i8, ptr %i.p, align 1, !tbaa !76
  %i.ch = zext i8 %i.cg to i32
  %i.ci = add nuw nsw i32 %i.cf, %i.ch            ; 2 uses
  %i.cj = trunc i32 %i.ci to i8
  store i8 %i.cj, ptr %i.p, align 1, !tbaa !76
  %i.ck = lshr i32 %i.ci, 8
  %i.cl = load i8, ptr %i.q, align 1, !tbaa !76
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add nuw nsw i32 %i.ck, %i.cm            ; 2 uses
  %i.co = trunc i32 %i.cn to i8
  store i8 %i.co, ptr %i.q, align 1, !tbaa !76
  %i.cp = lshr i32 %i.cn, 8
  %i.cq = load i8, ptr %i.r, align 1, !tbaa !76
  %i.cr = zext i8 %i.cq to i32
  %i.cs = add nuw nsw i32 %i.cp, %i.cr            ; 2 uses
  %i.ct = trunc i32 %i.cs to i8
  store i8 %i.ct, ptr %i.r, align 1, !tbaa !76
  %i.cu = lshr i32 %i.cs, 8
  %i.cv = load i8, ptr %i.s, align 1, !tbaa !76
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add nuw nsw i32 %i.cu, %i.cw            ; 2 uses
  %i.cy = trunc i32 %i.cx to i8
  store i8 %i.cy, ptr %i.s, align 1, !tbaa !76
  %i.cz = lshr i32 %i.cx, 8
  %i.da = load i8, ptr %i.t, align 1, !tbaa !76
  %i.db = zext i8 %i.da to i32
  %i.dc = add nuw nsw i32 %i.cz, %i.db            ; 2 uses
  %i.dd = trunc i32 %i.dc to i8
  store i8 %i.dd, ptr %i.t, align 1, !tbaa !76
  %i.de = lshr i32 %i.dc, 8
  %i.df = load i8, ptr %4, align 1, !tbaa !76
  %i.dg = trunc nuw nsw i32 %i.de to i8
  %i.dh = add i8 %i.df, %i.dg
  store i8 %i.dh, ptr %4, align 1, !tbaa !76
  %.0.copyload.i.i = load i64, ptr %.13753, align 1
  %.0.copyload.i7.i = load i64, ptr %5, align 1
  %i.di = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.di, ptr %.13952, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.13952, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.13753, i64 8
  %.0.copyload.i.1.i = load i64, ptr %i.dk, align 1
  %.0.copyload.i7.1.i = load i64, ptr %i.u, align 1
  %i.dl = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.dl, ptr %i.dj, align 1
  %i.dm = add i64 %.14151, -16                    ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.13952, i64 16 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.13753, i64 16 ; 2 uses
  %i.dp = icmp ugt i64 %i.dm, 15
  br i1 %i.dp, label %bb.b, label %._crit_edge, !llvm.loop !2211

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %.141.lcssa = phi i64 [ %.040.lcssa, %.preheader ], [ %i.dm, %bb.b ] ; 5 uses
  %.139.lcssa = phi ptr [ %.038.lcssa, %.preheader ], [ %i.dn, %bb.b ] ; 3 uses
  %.137.lcssa = phi ptr [ %.036.lcssa, %.preheader ], [ %i.do, %bb.b ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ 0, %bb.b ] ; 4 uses
  %.not = icmp eq i64 %.141.lcssa, 0
end_hunk_1
begin_hunk_2_@PQDSA_KEY_set_raw_keypair_from_both:bb.a
  tail call void @OPENSSL_free(ptr noundef %.045) #46
  tail call void @OPENSSL_free(ptr noundef %.044) #46
  tail call void @OPENSSL_free(ptr noundef %.0) #46
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.c
  %.047 = phi i32 [ 0, %bb.c ], [ %.046, %bb.n ]
  ret i32 %.047
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @PQDSA_find_asn1_by_nid(i32 noundef %0) local_unnamed_addr #17 {
bb.a:
  %.off = add i32 %0, -994
  %switch = icmp ult i32 %.off, 3
  %pqdsa_asn1_meth. = select i1 %switch, ptr @pqdsa_asn1_meth, ptr null
  ret ptr %pqdsa_asn1_meth.
}

; Function Attrs: nounwind uwtable
define ptr @CTR_DRBG_new(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OPENSSL_malloc(i64 noundef 288) #46 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @CTR_DRBG_init(ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef %1, i64 noundef %2)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink = phi ptr [ null, %bb.a ], [ %i.a, %bb.b ]
  tail call void @OPENSSL_free(ptr noundef %.sink) #46
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ null, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CTR_DRBG_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [1 x <2 x i64>], align 16         ; 7 uses
  %i.b = alloca [48 x i8], align 16               ; 17 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.e = add i64 %i.c, 48
  %i.f = icmp ugt i64 %i.e, %i.d
  %i.g = add i64 %3, %i.d
  %i.h = icmp ugt i64 %i.g, %i.c
  %narrow.i = and i1 %i.f, %i.h
  %i.i = icmp ugt i64 %3, 48
  %or.cond = or i1 %i.i, %narrow.i
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(48) %1, i64 48, i1 false)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %.preheader, label %iter.check

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check27 = icmp ult i64 %3, 16
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %3, 12
  %n.vec = and i64 %3, 48                         ; 5 uses
  %wide.load = load <16 x i8>, ptr %2, align 1, !tbaa !76
  %wide.load28 = load <16 x i8>, ptr %i.b, align 16, !tbaa !76
  %i.k = xor <16 x i8> %wide.load28, %wide.load
  store <16 x i8> %i.k, ptr %i.b, align 16, !tbaa !76
  %i.l = icmp eq i64 %n.vec, 16
  br i1 %i.l, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.m, align 1, !tbaa !76
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load28.1 = load <16 x i8>, ptr %i.n, align 16, !tbaa !76
  %i.o = xor <16 x i8> %wide.load28.1, %wide.load.1
  store <16 x i8> %i.o, ptr %i.n, align 16, !tbaa !76
  %i.p = icmp eq i64 %n.vec, 32
  br i1 %i.p, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %wide.load.2 = load <16 x i8>, ptr %i.q, align 1, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %wide.load28.2 = load <16 x i8>, ptr %i.r, align 16, !tbaa !76
  %i.s = xor <16 x i8> %wide.load28.2, %wide.load.2
  store <16 x i8> %i.s, ptr %i.r, align 16, !tbaa !76
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !471

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec29 = and i64 %3, 60                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index30 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %index30
  %wide.load31 = load <4 x i8>, ptr %i.t, align 1, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 %index30 ; 2 uses
  %wide.load32 = load <4 x i8>, ptr %i.u, align 4, !tbaa !76
  %i.v = xor <4 x i8> %wide.load32, %wide.load31
  store <4 x i8> %i.v, ptr %i.u, align 4, !tbaa !76
  %index.next33 = add nuw i64 %index30, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next33, %n.vec29
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2317

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %3, %n.vec29
  br i1 %cmp.n34, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02024.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec29, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  %i.x = load <16 x i8>, ptr %i.b, align 16, !tbaa !76
  %i.y = xor <16 x i8> %i.x, <i8 83, i8 15, i8 -118, i8 -5, i8 -57, i8 69, i8 54, i8 -71, i8 -87, i8 99, i8 -76, i8 -15, i8 -60, i8 -53, i8 115, i8 -117>
  store <16 x i8> %i.y, ptr %i.b, align 16, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.aa = load <16 x i8>, ptr %i.z, align 16, !tbaa !76
  %i.ab = xor <16 x i8> %i.aa, <i8 -50, i8 -89, i8 64, i8 61, i8 77, i8 96, i8 107, i8 110, i8 7, i8 78, i8 -59, i8 -45, i8 -70, i8 -13, i8 -99, i8 24>
  store <16 x i8> %i.ab, ptr %i.z, align 16, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.ad = load <16 x i8>, ptr %i.ac, align 16, !tbaa !76
  %i.ae = xor <16 x i8> %i.ad, <i8 114, i8 96, i8 3, i8 -54, i8 55, i8 -90, i8 42, i8 116, i8 -47, i8 -94, i8 -11, i8 -114, i8 117, i8 6, i8 53, i8 -114>
  store <16 x i8> %i.ae, ptr %i.ac, align 16, !tbaa !76
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 2 uses
  %i.ah = and i32 %i.ag, 33554432
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.d, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02024 = phi i64 [ %i.an, %.lr.ph ], [ %.02024.ph, %.lr.ph.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 %.02024
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !76
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 %.02024 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !76
  %i.am = xor i8 %i.al, %i.aj
  store i8 %i.am, ptr %i.ak, align 1, !tbaa !76
  %i.an = add nuw nsw i64 %.02024, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %3
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !2318

bb.c:                                             ; preds = %.preheader
  %i.ao = call i32 @aes_hw_set_encrypt_key(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %0) #46 ; 0 uses
  br label %aes_ctr_set_key.exit

bb.d:                                             ; preds = %.preheader
  %i.ap = and i32 %i.ag, 512
  %.not28.i = icmp eq i32 %i.ap, 0
  br i1 %.not28.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = call i32 @vpaes_set_encrypt_key(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef %0) #46 ; 0 uses
  br label %aes_ctr_set_key.exit

bb.f:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 14, ptr %i.ar, align 4, !tbaa !75
  %.sroa.055.0.copyload58.i.i = load <2 x i64>, ptr %i.b, align 16 ; 2 uses
  store <2 x i64> %.sroa.055.0.copyload58.i.i, ptr %0, align 4
  %.sroa.0.0.copyload54.i.i = load <2 x i64>, ptr %i.z, align 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %.sroa.0.0.copyload54.i.i, ptr %i.as, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.063.i.i = phi i64 [ 2, %bb.f ], [ %i.cb, %bb.h ] ; 4 uses
  %.sroa.0.062.i.i = phi <2 x i64> [ %.sroa.0.0.copyload54.i.i, %bb.f ], [ %i.bz, %bb.h ] ; 2 uses
  %.sroa.055.061.i.i = phi <2 x i64> [ %.sroa.055.0.copyload58.i.i, %bb.f ], [ %i.bm, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.a, <2 x i64> %.sroa.0.062.i.i)
  %i.at = lshr exact i64 %.063.i.i, 1
  %i.au = getelementptr i8, ptr @aes_nohw_rcon, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !76
  %i.ax = zext i8 %i.aw to i32
  %i.ay = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ax, i64 0
  %i.az = bitcast <4 x i32> %i.ay to <2 x i64>
  %i.ba = load <4 x i32>, ptr %i.a, align 16, !tbaa !76 ; 2 uses
  %i.bb = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ba, <4 x i32> %i.ba, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.bc = bitcast <4 x i32> %i.bb to <16 x i8>
  %i.bd = shufflevector <16 x i8> %i.bc, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.be = bitcast <16 x i8> %i.bd to <2 x i64>
  %invariant.op.i9.i = xor <2 x i64> %.sroa.055.061.i.i, %i.az
  %.reass.i10.i = xor <2 x i64> %invariant.op.i9.i, %i.be ; 2 uses
  %i.bf = bitcast <2 x i64> %.reass.i10.i to <16 x i8> ; 3 uses
  %i.bg = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bf, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bh = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bf, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bi = xor <16 x i8> %i.bg, %i.bh
  %i.bj = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bf, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.bk = xor <16 x i8> %i.bi, %i.bj
  %i.bl = bitcast <16 x i8> %i.bk to <2 x i64>
  %i.bm = xor <2 x i64> %.reass.i10.i, %i.bl      ; 3 uses
  %.idx.i11.i = shl nuw nsw i64 %.063.i.i, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i11.i ; 2 uses
  store <2 x i64> %i.bm, ptr %i.bn, align 4
  %.not.i.i = icmp eq i64 %.063.i.i, 14
  br i1 %.not.i.i, label %aes_nohw_set_encrypt_key.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.a, <2 x i64> %i.bm)
  %i.bo = load <16 x i8>, ptr %i.a, align 16, !tbaa !76
  %i.bp = shufflevector <16 x i8> %i.bo, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bq = bitcast <16 x i8> %i.bp to <2 x i64>
  %i.br = xor <2 x i64> %.sroa.0.062.i.i, %i.bq   ; 2 uses
  %i.bs = bitcast <2 x i64> %i.br to <16 x i8>    ; 3 uses
  %i.bt = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bs, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bu = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bs, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bv = xor <16 x i8> %i.bt, %i.bu
  %i.bw = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bs, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.bx = xor <16 x i8> %i.bv, %i.bw
  %i.by = bitcast <16 x i8> %i.bx to <2 x i64>
  %i.bz = xor <2 x i64> %i.br, %i.by              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <2 x i64> %i.bz, ptr %i.ca, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.cb = add nuw nsw i64 %.063.i.i, 2
  br label %bb.g

aes_nohw_set_encrypt_key.exit:                    ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %aes_ctr_set_key.exit

aes_ctr_set_key.exit:                             ; preds = %bb.c, %bb.e, %aes_nohw_set_encrypt_key.exit
  %aes_hw_encrypt_wrapper.sink = phi ptr [ @aes_hw_encrypt_wrapper, %bb.c ], [ @vpaes_encrypt_wrapper, %bb.e ], [ @aes_nohw_encrypt_wrapper, %aes_nohw_set_encrypt_key.exit ]
  %.0.i = phi ptr [ @aes_hw_ctr32_encrypt_blocks_wrapper, %bb.c ], [ @vpaes_ctr32_encrypt_blocks_wrapper, %bb.e ], [ @aes_nohw_ctr32_encrypt_blocks_wrapper, %aes_nohw_set_encrypt_key.exit ]
  store ptr %aes_hw_encrypt_wrapper.sink, ptr %i.af, align 8, !tbaa !186
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %.0.i, ptr %i.cc, align 8, !tbaa !476
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.ac, i64 16, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 1, ptr %i.ce, align 8, !tbaa !477
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 48) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %aes_ctr_set_key.exit
  %.021 = phi i32 [ 1, %aes_ctr_set_key.exit ], [ 0, %bb.a ]
  ret i32 %.021
}

; Function Attrs: nounwind uwtable
define void @CTR_DRBG_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @OPENSSL_free(ptr noundef %0) #46
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CTR_DRBG_reseed(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 13 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = add i64 %i.b, 48
  %i.e = icmp ule i64 %i.d, %i.c
  %i.f = add i64 %3, %i.c
  %i.g = icmp ule i64 %i.f, %i.b
  %narrow.i.not = or i1 %i.e, %i.g
  br i1 %narrow.i.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %.not18 = icmp eq i64 %3, 0
  br i1 %.not18, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ugt i64 %3, 48
  br i1 %i.h, label %bb.e, label %iter.check

iter.check:                                       ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(48) %1, i64 48, i1 false)
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check23 = icmp ult i64 %3, 16
  br i1 %min.iters.check23, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %3, 12
  %n.vec = and i64 %3, 48                         ; 5 uses
  %wide.load = load <16 x i8>, ptr %2, align 1, !tbaa !76
  %wide.load24 = load <16 x i8>, ptr %i.a, align 16, !tbaa !76
  %i.j = xor <16 x i8> %wide.load24, %wide.load
  store <16 x i8> %i.j, ptr %i.a, align 16, !tbaa !76
  %i.k = icmp eq i64 %n.vec, 16
  br i1 %i.k, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.l, align 1, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %wide.load24.1 = load <16 x i8>, ptr %i.m, align 16, !tbaa !76
  %i.n = xor <16 x i8> %wide.load24.1, %wide.load.1
  store <16 x i8> %i.n, ptr %i.m, align 16, !tbaa !76
  %i.o = icmp eq i64 %n.vec, 32
  br i1 %i.o, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %wide.load.2 = load <16 x i8>, ptr %i.p, align 1, !tbaa !76
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %wide.load24.2 = load <16 x i8>, ptr %i.q, align 16, !tbaa !76
  %i.r = xor <16 x i8> %wide.load24.2, %wide.load.2
  store <16 x i8> %i.r, ptr %i.q, align 16, !tbaa !76
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !471

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %3, 60                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %index26
  %wide.load27 = load <4 x i8>, ptr %i.s, align 1, !tbaa !76
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %index26 ; 2 uses
  %wide.load28 = load <4 x i8>, ptr %i.t, align 4, !tbaa !76
  %i.u = xor <4 x i8> %wide.load28, %wide.load27
  store <4 x i8> %i.u, ptr %i.t, align 4, !tbaa !76
  %index.next29 = add nuw i64 %index26, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next29, %n.vec25
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2319

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %3, %n.vec25
  br i1 %cmp.n30, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.022 = phi i64 [ %i.ab, %vec.epilog.scalar.ph ], [ %.022.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %.022
  %i.x = load i8, ptr %i.w, align 1, !tbaa !76
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 %.022 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !76
  %i.aa = xor i8 %i.z, %i.x
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !76
  %i.ab = add nuw nsw i64 %.022, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %3
  br i1 %exitcond.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !2320

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.b
  %.016 = phi ptr [ %1, %bb.b ], [ %i.a, %middle.block ], [ %i.a, %vec.epilog.middle.block ], [ %i.a, %vec.epilog.scalar.ph ]
  %i.ac = call fastcc i32 @ctr_drbg_update(ptr noundef %0, ptr noundef %.016, i64 noundef 48)
  %.not19 = icmp eq i32 %i.ac, 0
  br i1 %.not19, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 1, ptr %i.ad, align 8, !tbaa !477
  br label %.sink.split

.sink.split:                                      ; preds = %.loopexit, %bb.d
  %.015.ph = phi i32 [ 1, %bb.d ], [ 0, %.loopexit ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 48) #46
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  %.015 = phi i32 [ 0, %bb.c ], [ %.015.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.1 = phi i32 [ %.015, %bb.e ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ctr_drbg_update(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [1 x <2 x i64>], align 16         ; 7 uses
  %i.b = alloca [48 x i8], align 16               ; 15 uses
  %i.c = icmp ugt i64 %2, 48
  br i1 %i.c, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %.0.copyload.i.i = load i32, ptr %i.d, align 1
  %i.g = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i)
  %i.h = add i32 %i.g, 1
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.h)
  store i32 %i.i, ptr %i.d, align 1
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !478
  call void %i.j(ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef %0) #46
  %.0.copyload.i.i.1 = load i32, ptr %i.d, align 4
  %i.k = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.1)
  %i.l = add i32 %i.k, 1
  %i.m = call noundef i32 @llvm.bswap.i32(i32 %i.l)
  store i32 %i.m, ptr %i.d, align 4
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !478
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void %i.n(ptr noundef nonnull %i.f, ptr noundef nonnull %i.o, ptr noundef %0) #46
  %.0.copyload.i.i.2 = load i32, ptr %i.d, align 4
  %i.p = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.2)
  %i.q = add i32 %i.p, 1
  %i.r = call noundef i32 @llvm.bswap.i32(i32 %i.q)
  store i32 %i.r, ptr %i.d, align 4
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !478
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call void %i.s(ptr noundef nonnull %i.f, ptr noundef nonnull %i.t, ptr noundef %0) #46
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i64 %2, 16
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %2, 12
  %n.vec = and i64 %2, 48                         ; 5 uses
  %wide.load = load <16 x i8>, ptr %1, align 1, !tbaa !76
  %wide.load25 = load <16 x i8>, ptr %i.b, align 16, !tbaa !76
  %i.v = xor <16 x i8> %wide.load25, %wide.load
  store <16 x i8> %i.v, ptr %i.b, align 16, !tbaa !76
  %i.w = icmp eq i64 %n.vec, 16
  br i1 %i.w, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load.1 = load <16 x i8>, ptr %i.x, align 1, !tbaa !76
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %wide.load25.1 = load <16 x i8>, ptr %i.y, align 16, !tbaa !76
  %i.z = xor <16 x i8> %wide.load25.1, %wide.load.1
  store <16 x i8> %i.z, ptr %i.y, align 16, !tbaa !76
  %i.aa = icmp eq i64 %n.vec, 32
  br i1 %i.aa, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %wide.load.2 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !76
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %wide.load25.2 = load <16 x i8>, ptr %i.ac, align 16, !tbaa !76
  %i.ad = xor <16 x i8> %wide.load25.2, %wide.load.2
  store <16 x i8> %i.ad, ptr %i.ac, align 16, !tbaa !76
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !471

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %2, 60                       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %index27
  %wide.load28 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !76
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 %index27 ; 2 uses
  %wide.load29 = load <4 x i8>, ptr %i.af, align 4, !tbaa !76
  %i.ag = xor <4 x i8> %wide.load29, %wide.load28
  store <4 x i8> %i.ag, ptr %i.af, align 4, !tbaa !76
  %index.next30 = add nuw i64 %index27, 4         ; 2 uses
  %i.ah = icmp eq i64 %index.next30, %n.vec26
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2321

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n31 = icmp eq i64 %2, %n.vec26
  br i1 %cmp.n31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec26, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 2 uses
  %i.aj = and i32 %i.ai, 33554432
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ak = call i32 @aes_hw_set_encrypt_key(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef nonnull %0) #46 ; 0 uses
  br label %aes_ctr_set_key.exit

bb.c:                                             ; preds = %._crit_edge
  %i.al = and i32 %i.ai, 512
  %.not28.i = icmp eq i32 %i.al, 0
  br i1 %.not28.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = call i32 @vpaes_set_encrypt_key(ptr noundef nonnull %i.b, i32 noundef 256, ptr noundef nonnull %0) #46 ; 0 uses
  br label %aes_ctr_set_key.exit

bb.e:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 14, ptr %i.an, align 8, !tbaa !75
  %.sroa.055.0.copyload58.i.i = load <2 x i64>, ptr %i.b, align 16 ; 2 uses
  store <2 x i64> %.sroa.055.0.copyload58.i.i, ptr %0, align 8
  %.sroa.0.0.copyload54.i.i = load <2 x i64>, ptr %i.o, align 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %.sroa.0.0.copyload54.i.i, ptr %i.ao, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.063.i.i = phi i64 [ 2, %bb.e ], [ %i.bx, %bb.g ] ; 4 uses
  %.sroa.0.062.i.i = phi <2 x i64> [ %.sroa.0.0.copyload54.i.i, %bb.e ], [ %i.bv, %bb.g ] ; 2 uses
  %.sroa.055.061.i.i = phi <2 x i64> [ %.sroa.055.0.copyload58.i.i, %bb.e ], [ %i.bi, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.a, <2 x i64> %.sroa.0.062.i.i)
  %i.ap = lshr exact i64 %.063.i.i, 1
  %i.aq = getelementptr i8, ptr @aes_nohw_rcon, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !76
  %i.at = zext i8 %i.as to i32
  %i.au = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.at, i64 0
  %i.av = bitcast <4 x i32> %i.au to <2 x i64>
  %i.aw = load <4 x i32>, ptr %i.a, align 16, !tbaa !76 ; 2 uses
  %i.ax = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aw, <4 x i32> %i.aw, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.ay = bitcast <4 x i32> %i.ax to <16 x i8>
  %i.az = shufflevector <16 x i8> %i.ay, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ba = bitcast <16 x i8> %i.az to <2 x i64>
  %invariant.op.i9.i = xor <2 x i64> %.sroa.055.061.i.i, %i.av
  %.reass.i10.i = xor <2 x i64> %invariant.op.i9.i, %i.ba ; 2 uses
  %i.bb = bitcast <2 x i64> %.reass.i10.i to <16 x i8> ; 3 uses
  %i.bc = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bb, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bd = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bb, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.be = xor <16 x i8> %i.bc, %i.bd
  %i.bf = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bb, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.bg = xor <16 x i8> %i.be, %i.bf
  %i.bh = bitcast <16 x i8> %i.bg to <2 x i64>
  %i.bi = xor <2 x i64> %.reass.i10.i, %i.bh      ; 3 uses
  %.idx.i11.i = shl nuw nsw i64 %.063.i.i, 4
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i11.i ; 2 uses
  store <2 x i64> %i.bi, ptr %i.bj, align 4
  %.not.i.i = icmp eq i64 %.063.i.i, 14
  br i1 %.not.i.i, label %aes_nohw_set_encrypt_key.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.a, <2 x i64> %i.bi)
  %i.bk = load <16 x i8>, ptr %i.a, align 16, !tbaa !76
  %i.bl = shufflevector <16 x i8> %i.bk, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bm = bitcast <16 x i8> %i.bl to <2 x i64>
  %i.bn = xor <2 x i64> %.sroa.0.062.i.i, %i.bm   ; 2 uses
  %i.bo = bitcast <2 x i64> %i.bn to <16 x i8>    ; 3 uses
  %i.bp = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bo, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bq = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bo, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.br = xor <16 x i8> %i.bp, %i.bq
  %i.bs = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bo, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.bt = xor <16 x i8> %i.br, %i.bs
  %i.bu = bitcast <16 x i8> %i.bt to <2 x i64>
  %i.bv = xor <2 x i64> %i.bn, %i.bu              ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <2 x i64> %i.bv, ptr %i.bw, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.bx = add nuw nsw i64 %.063.i.i, 2
  br label %bb.f

aes_nohw_set_encrypt_key.exit:                    ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %aes_ctr_set_key.exit

aes_ctr_set_key.exit:                             ; preds = %bb.b, %bb.d, %aes_nohw_set_encrypt_key.exit
  %aes_hw_encrypt_wrapper.sink = phi ptr [ @aes_hw_encrypt_wrapper, %bb.b ], [ @vpaes_encrypt_wrapper, %bb.d ], [ @aes_nohw_encrypt_wrapper, %aes_nohw_set_encrypt_key.exit ]
  %.0.i = phi ptr [ @aes_hw_ctr32_encrypt_blocks_wrapper, %bb.b ], [ @vpaes_ctr32_encrypt_blocks_wrapper, %bb.d ], [ @aes_nohw_ctr32_encrypt_blocks_wrapper, %aes_nohw_set_encrypt_key.exit ]
  store ptr %aes_hw_encrypt_wrapper.sink, ptr %i.e, align 8, !tbaa !186
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %.0.i, ptr %i.by, align 8, !tbaa !476
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.t, i64 16, i1 false)
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 48) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  br label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.023 = phi i64 [ %i.ce, %.lr.ph ], [ %.023.ph, %.lr.ph.preheader ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %.023
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !76
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 %.023 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !76
  %i.cd = xor i8 %i.cc, %i.ca
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !76
  %i.ce = add nuw nsw i64 %.023, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ce, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2322

bb.h:                                             ; preds = %bb.a, %aes_ctr_set_key.exit
  %.019 = phi i32 [ 1, %aes_ctr_set_key.exit ], [ 0, %bb.a ]
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CTR_DRBG_generate(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = icmp ugt i64 %2, 65536
  br i1 %i.b, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !477
  %i.e = icmp ugt i64 %i.d, 281474976710656
  br i1 %i.e, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call fastcc i32 @ctr_drbg_update(ptr noundef nonnull %0, ptr noundef %3, i64 noundef %4)
  %.not54 = icmp eq i32 %i.f, 0
  br i1 %.not54, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = icmp samesign ugt i64 %2, 15
  br i1 %i.g, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph65, %.loopexit
  %.05063 = phi ptr [ %1, %.lr.ph65 ], [ %i.ag, %.loopexit ] ; 5 uses
  %.05162 = phi i64 [ %2, %.lr.ph65 ], [ %i.ah, %.loopexit ] ; 3 uses
  %i.l = icmp ult i64 %.05162, 8192
  %i.m = and i64 %.05162, 8176
  %spec.select = select i1 %i.l, i64 %i.m, i64 8192 ; 7 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !476  ; 2 uses
  %.not57 = icmp eq ptr %i.n, null
  br i1 %.not57, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.f
  %.not67 = icmp eq i64 %spec.select, 0
  br i1 %.not67, label %.loopexit, label %.lr.ph

bb.g:                                             ; preds = %bb.f
  %i.o = lshr exact i64 %spec.select, 4           ; 2 uses
  %i.p = icmp eq i64 %spec.select, 0
  br i1 %i.p, label %OPENSSL_memset.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr align 1 %.05063, i8 0, i64 %spec.select, i1 false)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !476
  br label %OPENSSL_memset.exit

OPENSSL_memset.exit:                              ; preds = %bb.g, %bb.h
  %i.q = phi ptr [ %i.n, %bb.g ], [ %.pre, %bb.h ]
  %.0.copyload.i.i = load i32, ptr %i.i, align 4
  %i.r = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i)
  %i.s = add i32 %i.r, 1
  %i.t = tail call noundef i32 @llvm.bswap.i32(i32 %i.s)
  store i32 %i.t, ptr %i.i, align 4
  tail call void %i.q(ptr noundef %.05063, ptr noundef %.05063, i64 noundef %i.o, ptr noundef nonnull %0, ptr noundef nonnull %i.j) #46
  %i.u = trunc nuw nsw i64 %i.o to i32
  %i.v = add nsw i32 %i.u, -1
  %.0.copyload.i.i58 = load i32, ptr %i.i, align 4
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i58)
  %i.x = add i32 %i.v, %i.w
  %i.y = tail call noundef i32 @llvm.bswap.i32(i32 %i.x)
  store i32 %i.y, ptr %i.i, align 4
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.061 = phi i64 [ %i.ae, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %.0.copyload.i.i59 = load i32, ptr %i.i, align 4
  %i.z = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i59)
  %i.aa = add i32 %i.z, 1
  %i.ab = tail call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  store i32 %i.ab, ptr %i.i, align 4
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !478
  %i.ad = getelementptr inbounds nuw i8, ptr %.05063, i64 %.061
  tail call void %i.ac(ptr noundef nonnull %i.j, ptr noundef %i.ad, ptr noundef nonnull %0) #46
  %i.ae = add nuw nsw i64 %.061, 16               ; 2 uses
  %i.af = icmp samesign ult i64 %i.ae, %spec.select
  br i1 %i.af, label %.lr.ph, label %.loopexit, !llvm.loop !2323

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %OPENSSL_memset.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.05063, i64 %spec.select ; 2 uses
  %i.ah = sub i64 %.05162, %spec.select           ; 3 uses
  %i.ai = icmp ugt i64 %i.ah, 15
  br i1 %i.ai, label %bb.f, label %._crit_edge, !llvm.loop !2324

._crit_edge:                                      ; preds = %.loopexit, %bb.e
  %.051.lcssa = phi i64 [ %2, %bb.e ], [ %i.ah, %.loopexit ] ; 2 uses
  %.050.lcssa = phi ptr [ %1, %bb.e ], [ %i.ag, %.loopexit ]
  %.not55 = icmp eq i64 %.051.lcssa, 0
  br i1 %.not55, label %bb.i, label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %.0.copyload.i.i60 = load i32, ptr %i.aj, align 4
  %i.ak = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i60)
  %i.al = add i32 %i.ak, 1
  %i.am = tail call noundef i32 @llvm.bswap.i32(i32 %i.al)
  store i32 %i.am, ptr %i.aj, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !478
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void %i.ao(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.a, ptr noundef nonnull %0) #46
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.050.lcssa, ptr nonnull readonly align 16 %i.a, i64 %.051.lcssa, i1 false)
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 16) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %bb.i

bb.i:                                             ; preds = %OPENSSL_memcpy.exit, %._crit_edge
  %i.aq = call fastcc i32 @ctr_drbg_update(ptr noundef nonnull %0, ptr noundef %3, i64 noundef %4)
  %.not56 = icmp eq i32 %i.aq, 0
  br i1 %.not56, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !477
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.c, align 8, !tbaa !477
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.d, %bb.b, %bb.a, %bb.j
end_hunk_2
begin_hunk_3_@check_test:bb.a
  %i.h = load i8, ptr %i.g, align 1, !tbaa !76    ; 2 uses
  %i.i = zext i8 %i.f to i64
  %i.j = zext i8 %i.h to i64
  %i.k = icmp eq i8 %i.f, %i.h
  %.neg.i.i.i.i = sext i1 %i.k to i64             ; 2 uses
  %i.l = xor i64 %.neg.i.i.i.i, -1
  %i.m = sub nsw i64 %i.i, %i.j
  %i.n = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.l) #47, !srcloc !81
  %i.o = and i64 %i.m, %i.n
  %i.p = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i.i.i) #47, !srcloc !81
  %i.q = and i64 %i.p, %.018.i.i
  %i.r = or i64 %i.q, %i.o                        ; 2 uses
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %OPENSSL_memcmp.exit.i, label %.lr.ph.i.i, !llvm.loop !20

OPENSSL_memcmp.exit.i:                            ; preds = %.lr.ph.i.i
  %i.s = and i64 %i.r, 4294967295
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %check_test_optional_abort.exit, label %.preheader.i

.preheader.i:                                     ; preds = %OPENSSL_memcmp.exit.i, %.preheader.i
  %.010.i.i = phi i64 [ %i.ab, %.preheader.i ], [ 0, %OPENSSL_memcmp.exit.i ] ; 2 uses
  %.089.i.i = phi i64 [ %i.aa, %.preheader.i ], [ 0, %OPENSSL_memcmp.exit.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.089.i.i
  %i.u = sub i64 5120, %.089.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.010.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !76
  %i.x = zext i8 %i.w to i32
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.126, i32 noundef %i.x) #46
  %i.z = sext i32 %i.y to i64
  %i.aa = add i64 %.089.i.i, %i.z
  %i.ab = add nuw nsw i64 %.010.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ab, %2
  br i1 %exitcond.not.i.i, label %hexdump.exit.i, label %.preheader.i, !llvm.loop !2389

hexdump.exit.i:                                   ; preds = %.preheader.i, %hexdump.exit.i
  %.010.i9.i = phi i64 [ %i.ak, %hexdump.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %.089.i10.i = phi i64 [ %i.aj, %hexdump.exit.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 %.089.i10.i
  %i.ad = sub i64 5120, %.089.i10.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.010.i9.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !76
  %i.ag = zext i8 %i.af to i32
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.126, i32 noundef %i.ag) #46
  %i.ai = sext i32 %i.ah to i64
  %i.aj = add i64 %.089.i10.i, %i.ai
  %i.ak = add nuw nsw i64 %.010.i9.i, 1           ; 2 uses
  %exitcond.not.i11.i = icmp eq i64 %i.ak, %2
  br i1 %exitcond.not.i11.i, label %hexdump.exit12.i, label %hexdump.exit.i, !llvm.loop !2389

hexdump.exit12.i:                                 ; preds = %hexdump.exit.i
  %i.al = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 10315, ptr noundef nonnull @.str.124, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #46 ; 0 uses
  call void @AWS_LC_FIPS_failure(ptr noundef nonnull %i.c)
  br label %check_test_optional_abort.exit

check_test_optional_abort.exit:                   ; preds = %OPENSSL_memcmp.exit.i, %hexdump.exit12.i
  %.0.i = phi i32 [ 0, %hexdump.exit12.i ], [ 1, %OPENSSL_memcmp.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %.0.i
}

; Function Attrs: noinline nounwind uwtable
define hidden range(i32 0, 2) i32 @boringssl_self_test_hmac_sha256() local_unnamed_addr #32 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  store i32 0, ptr %i.b, align 4, !tbaa !73
  tail call void @CRYPTO_once(ptr noundef nonnull @EVP_sha256_once, ptr noundef nonnull @EVP_sha256_init) #46
  %i.c = call ptr @HMAC(ptr noundef nonnull @EVP_sha256_storage, ptr noundef nonnull @boringssl_self_test_hmac_sha256.kInput, i64 noundef 16, ptr noundef nonnull @boringssl_self_test_hmac_sha256.kInput, i64 noundef 16, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.d = load i32, ptr %i.b, align 4, !tbaa !73
  %i.e = icmp eq i32 %i.d, 32
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call fastcc i32 @check_test(ptr noundef nonnull @boringssl_self_test_hmac_sha256.kPlaintextHMACSHA256, ptr noundef %i.a, i64 noundef 32, ptr noundef nonnull @.str.55)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ 0, %bb.a ], [ %i.f, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BORINGSSL_self_test() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @boringssl_self_test_fast()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @boringssl_self_test_rsa()
  %.not1 = icmp eq i32 %i.b, 0
  br i1 %.not1, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc i32 @boringssl_self_test_ecc()
  %.not2 = icmp eq i32 %i.c, 0
  br i1 %.not2, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call fastcc i32 @boringssl_self_test_ffdh()
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call fastcc i32 @boringssl_self_test_ml_kem()
  %.not4 = icmp eq i32 %i.e, 0
  br i1 %.not4, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call fastcc i32 @boringssl_self_test_ml_dsa()
  %.not5 = icmp eq i32 %i.f, 0
  br i1 %.not5, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call fastcc i32 @boringssl_self_test_eddsa()
  %.not6 = icmp eq i32 %i.g, 0
  br i1 %.not6, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call fastcc i32 @boringssl_self_test_hasheddsa()
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0 = phi i32 [ 0, %bb.a ], [ %i.h, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @boringssl_self_test_fast() unnamed_addr #33 {
bb.a:
  %i.a = alloca [1 x <2 x i64>], align 16         ; 4 uses
  %i.b = alloca [1 x <2 x i64>], align 16         ; 4 uses
  %i.c = alloca [1 x <2 x i64>], align 16         ; 4 uses
  %i.d = alloca [1 x <2 x i64>], align 16         ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %0 = alloca %struct.evp_aead_ctx_st, align 8    ; 11 uses
  %1 = alloca %struct.aes_key_st, align 16        ; 28 uses
  %i.g = alloca [16 x i8], align 16               ; 8 uses
  %i.h = alloca [256 x i8], align 16              ; 26 uses
  %i.i = alloca i64, align 8                      ; 7 uses
  %i.j = alloca [24 x i8], align 16               ; 3 uses
  %2 = alloca %struct.ctr_drbg_state_st, align 8  ; 6 uses
  %3 = alloca %struct.ctr_drbg_state_st, align 8  ; 2 uses
  %i.k = alloca [32 x i8], align 16               ; 2 uses
  %i.l = alloca [32 x i8], align 16               ; 2 uses
  %i.m = alloca i64, align 8                      ; 2 uses
  %i.n = alloca [32 x i8], align 16               ; 2 uses
  %i.o = alloca [25 x i8], align 16               ; 2 uses
  %i.p = alloca [256 x i8], align 16              ; 2 uses
  %i.q = alloca [16 x i8], align 16               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(584) %0, i8 0, i64 584, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 2 uses
  %i.s = and i32 %i.r, 33554432
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = call i32 @aes_hw_set_encrypt_key(ptr noundef nonnull @boringssl_self_test_fast.kAESKey, i32 noundef 128, ptr noundef nonnull %1) #46
  br label %AES_set_encrypt_key.exit

bb.c:                                             ; preds = %bb.a
  %i.u = and i32 %i.r, 512
  %.not15.i = icmp eq i32 %i.u, 0
  br i1 %.not15.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = call i32 @vpaes_set_encrypt_key(ptr noundef nonnull @boringssl_self_test_fast.kAESKey, i32 noundef 128, ptr noundef nonnull %1) #46
  br label %AES_set_encrypt_key.exit

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i32 10, ptr %i.w, align 16, !tbaa !75
  store <2 x i64> <i64 8233538267676569410, i64 8747480453917995129>, ptr %1, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.032.i.i = phi i64 [ 1, %bb.e ], [ %i.as, %bb.f ] ; 3 uses
  %.sroa.0.031.i.i = phi <2 x i64> [ <i64 8233538267676569410, i64 8747480453917995129>, %bb.e ], [ %i.aq, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.d, <2 x i64> %.sroa.0.031.i.i)
  %i.x = getelementptr i8, ptr @aes_nohw_rcon, i64 %.032.i.i
  %i.y = getelementptr i8, ptr %i.x, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !76
  %i.aa = zext i8 %i.z to i32
  %i.ab = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.aa, i64 0
  %i.ac = bitcast <4 x i32> %i.ab to <2 x i64>
  %i.ad = load <4 x i32>, ptr %i.d, align 16, !tbaa !76 ; 2 uses
  %i.ae = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ad, <4 x i32> %i.ad, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.af = bitcast <4 x i32> %i.ae to <16 x i8>
  %i.ag = shufflevector <16 x i8> %i.af, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ah = bitcast <16 x i8> %i.ag to <2 x i64>
  %i.ai = xor <2 x i64> %i.ac, %i.ah
  %.reass.i.i = xor <2 x i64> %i.ai, %.sroa.0.031.i.i ; 2 uses
  %i.aj = bitcast <2 x i64> %.reass.i.i to <16 x i8> ; 3 uses
  %i.ak = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.aj, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.al = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.aj, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.am = xor <16 x i8> %i.ak, %i.al
  %i.an = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.aj, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.ao = xor <16 x i8> %i.am, %i.an
  %i.ap = bitcast <16 x i8> %i.ao to <2 x i64>
  %i.aq = xor <2 x i64> %.reass.i.i, %i.ap        ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %.032.i.i, 4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i
  store <2 x i64> %i.aq, ptr %i.ar, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  %i.as = add nuw nsw i64 %.032.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.as, 11
  br i1 %exitcond.not.i.i, label %AES_set_encrypt_key.exit.thread, label %bb.f, !llvm.loop !1

AES_set_encrypt_key.exit:                         ; preds = %bb.b, %bb.d
  %.0.i = phi i32 [ %i.v, %bb.d ], [ %i.t, %bb.b ]
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %AES_set_encrypt_key.exit.thread, label %bb.g

bb.g:                                             ; preds = %AES_set_encrypt_key.exit
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !188
  %fwrite44 = call i64 @fwrite(ptr nonnull @.str.127, i64 28, i64 1, ptr %i.at) #52 ; 0 uses
  br label %bb.bw

AES_set_encrypt_key.exit.thread:                  ; preds = %bb.f, %AES_set_encrypt_key.exit
  call void @AES_cbc_encrypt(ptr noundef nonnull @boringssl_self_test_fast.kAESCBCEncPlaintext, ptr noundef nonnull %i.h, i64 noundef 32, ptr noundef nonnull %1, ptr noundef nonnull %i.g, i32 noundef 1)
  %i.au = call fastcc i32 @check_test(ptr noundef nonnull @boringssl_self_test_fast.kAESCBCEncCiphertext, ptr noundef %i.h, i64 noundef 32, ptr noundef nonnull @.str.128)
  %.not6 = icmp eq i32 %i.au, 0
  br i1 %.not6, label %bb.bw, label %bb.h

bb.h:                                             ; preds = %AES_set_encrypt_key.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 3 uses
  %i.aw = and i32 %i.av, 33554432
  %.not.i45 = icmp eq i32 %i.aw, 0
  br i1 %.not.i45, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = call i32 @aes_hw_set_decrypt_key(ptr noundef nonnull @boringssl_self_test_fast.kAESKey, i32 noundef 128, ptr noundef nonnull %1) #46
  br label %AES_set_decrypt_key.exit

bb.j:                                             ; preds = %bb.h
  %i.ay = and i32 %i.av, 512
  %.not15.i47 = icmp eq i32 %i.ay, 0
  br i1 %.not15.i47, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = call i32 @vpaes_set_decrypt_key(ptr noundef nonnull @boringssl_self_test_fast.kAESKey, i32 noundef 128, ptr noundef nonnull %1) #46
  br label %AES_set_decrypt_key.exit

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i32 10, ptr %i.ba, align 16, !tbaa !75
  store <2 x i64> <i64 8233538267676569410, i64 8747480453917995129>, ptr %1, align 16
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.032.i.i62 = phi i64 [ 1, %bb.l ], [ %i.bw, %bb.m ] ; 3 uses
  %.sroa.0.031.i.i63 = phi <2 x i64> [ <i64 8233538267676569410, i64 8747480453917995129>, %bb.l ], [ %i.bu, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.c, <2 x i64> %.sroa.0.031.i.i63)
  %i.bb = getelementptr i8, ptr @aes_nohw_rcon, i64 %.032.i.i62
  %i.bc = getelementptr i8, ptr %i.bb, i64 -1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !76
  %i.be = zext i8 %i.bd to i32
  %i.bf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.be, i64 0
  %i.bg = bitcast <4 x i32> %i.bf to <2 x i64>
  %i.bh = load <4 x i32>, ptr %i.c, align 16, !tbaa !76 ; 2 uses
  %i.bi = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.bh, <4 x i32> %i.bh, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.bj = bitcast <4 x i32> %i.bi to <16 x i8>
  %i.bk = shufflevector <16 x i8> %i.bj, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bl = bitcast <16 x i8> %i.bk to <2 x i64>
  %i.bm = xor <2 x i64> %i.bg, %i.bl
  %.reass.i.i64 = xor <2 x i64> %i.bm, %.sroa.0.031.i.i63 ; 2 uses
  %i.bn = bitcast <2 x i64> %.reass.i.i64 to <16 x i8> ; 3 uses
  %i.bo = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bn, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.bp = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bn, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bq = xor <16 x i8> %i.bo, %i.bp
  %i.br = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.bn, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.bs = xor <16 x i8> %i.bq, %i.br
  %i.bt = bitcast <16 x i8> %i.bs to <2 x i64>
  %i.bu = xor <2 x i64> %.reass.i.i64, %i.bt      ; 2 uses
  %.idx.i.i65 = shl nuw nsw i64 %.032.i.i62, 4
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i65
  store <2 x i64> %i.bu, ptr %i.bv, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  %i.bw = add nuw nsw i64 %.032.i.i62, 1          ; 2 uses
  %exitcond.not.i.i66 = icmp eq i64 %i.bw, 11
  br i1 %exitcond.not.i.i66, label %AES_set_decrypt_key.exit.thread, label %bb.m, !llvm.loop !1

AES_set_decrypt_key.exit:                         ; preds = %bb.i, %bb.k
  %.0.i46 = phi i32 [ %i.az, %bb.k ], [ %i.ax, %bb.i ]
  %.not7 = icmp eq i32 %.0.i46, 0
  br i1 %.not7, label %AES_set_decrypt_key.exit.AES_set_decrypt_key.exit.thread_crit_edge, label %bb.n

AES_set_decrypt_key.exit.AES_set_decrypt_key.exit.thread_crit_edge: ; preds = %AES_set_decrypt_key.exit
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73
  br label %AES_set_decrypt_key.exit.thread

bb.n:                                             ; preds = %AES_set_decrypt_key.exit
  %i.bx = load ptr, ptr @stderr, align 8, !tbaa !188
  %fwrite43 = call i64 @fwrite(ptr nonnull @.str.129, i64 28, i64 1, ptr %i.bx) #52 ; 0 uses
  br label %bb.bw

AES_set_decrypt_key.exit.thread:                  ; preds = %bb.m, %AES_set_decrypt_key.exit.AES_set_decrypt_key.exit.thread_crit_edge
  %i.by = phi i32 [ %.pre, %AES_set_decrypt_key.exit.AES_set_decrypt_key.exit.thread_crit_edge ], [ %i.av, %bb.m ] ; 2 uses
  %i.bz = and i32 %i.by, 33554432
  %.not.i48 = icmp eq i32 %i.bz, 0
  br i1 %.not.i48, label %bb.p, label %bb.o

bb.o:                                             ; preds = %AES_set_decrypt_key.exit.thread
  call void @aes_hw_cbc_encrypt(ptr noundef nonnull @boringssl_self_test_fast.kAESCBCDecCiphertext, ptr noundef nonnull %i.h, i64 noundef 32, ptr noundef nonnull %1, ptr noundef nonnull %i.g, i32 noundef 0) #46
  br label %AES_cbc_encrypt.exit

bb.p:                                             ; preds = %AES_set_decrypt_key.exit.thread
  %i.ca = and i32 %i.by, 512
  %.not22.i = icmp eq i32 %i.ca, 0
  br i1 %.not22.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @aes_nohw_cbc_encrypt(ptr noundef nonnull @boringssl_self_test_fast.kAESCBCDecCiphertext, ptr noundef nonnull %i.h, i64 noundef 32, ptr noundef nonnull %1, ptr noundef nonnull %i.g, i32 noundef 0)
  br label %AES_cbc_encrypt.exit

bb.r:                                             ; preds = %bb.p
  call void @CRYPTO_cbc128_decrypt(ptr noundef nonnull @boringssl_self_test_fast.kAESCBCDecCiphertext, ptr noundef nonnull %i.h, i64 noundef 32, ptr noundef nonnull %1, ptr noundef nonnull %i.g, ptr noundef nonnull @AES_decrypt)
  br label %AES_cbc_encrypt.exit

AES_cbc_encrypt.exit:                             ; preds = %bb.o, %bb.q, %bb.r
  %i.cb = call fastcc i32 @check_test(ptr noundef nonnull @boringssl_self_test_fast.kAESCBCDecPlaintext, ptr noundef %i.h, i64 noundef 32, ptr noundef nonnull @.str.130)
  %.not8 = icmp eq i32 %i.cb, 0
  br i1 %.not8, label %bb.bw, label %bb.s

bb.s:                                             ; preds = %AES_cbc_encrypt.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  call void @CRYPTO_once(ptr noundef nonnull @EVP_aead_aes_128_gcm_once, ptr noundef nonnull @EVP_aead_aes_128_gcm_init) #46
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @EVP_aead_aes_128_gcm_storage, i64 16), align 8, !tbaa !145 ; 2 uses
  %.not.i49 = icmp eq ptr %i.cc, null
  br i1 %.not.i49, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 124, ptr noundef nonnull @.str.14, i32 noundef 59) #46
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.cd = load i8, ptr @EVP_aead_aes_128_gcm_storage, align 8, !tbaa !141
  %.not.i.i = icmp eq i8 %i.cd, 16
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 120, ptr noundef nonnull @.str.14, i32 noundef 73) #46
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store ptr @EVP_aead_aes_128_gcm_storage, ptr %0, align 8, !tbaa !148
  %i.ce = call i32 %i.cc(ptr noundef nonnull %0, ptr noundef nonnull @boringssl_self_test_fast.kAESKey, i64 noundef 16, i64 noundef 0) #46, !inline_history !149
  %.not24.i.i = icmp eq i32 %i.ce, 0
  br i1 %.not24.i.i, label %bb.x, label %EVP_AEAD_CTX_init.exit

bb.x:                                             ; preds = %bb.t, %bb.v, %bb.w
  store ptr null, ptr %0, align 8, !tbaa !148
  %i.cf = load ptr, ptr @stderr, align 8, !tbaa !188
  %fwrite = call i64 @fwrite(ptr nonnull @.str.131, i64 42, i64 1, ptr %i.cf) #52 ; 0 uses
  br label %bb.bw

EVP_AEAD_CTX_init.exit:                           ; preds = %bb.w
  call void @CRYPTO_once(ptr noundef nonnull @EVP_aead_aes_128_gcm_once, ptr noundef nonnull @EVP_aead_aes_128_gcm_init) #46
  %i.cg = load i8, ptr getelementptr inbounds nuw (i8, ptr @EVP_aead_aes_128_gcm_storage, i64 1), align 1, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ch = ptrtoint ptr %i.h to i64
  %i.ci = icmp ult ptr %i.h, inttoptr (i64 add (i64 ptrtoint (ptr @boringssl_self_test_fast.kAESGCMEncPlaintext to i64), i64 32) to ptr)
  %i.cj = add i64 %i.ch, 256
  %i.ck = icmp ugt i64 %i.cj, ptrtoint (ptr @boringssl_self_test_fast.kAESGCMEncPlaintext to i64)
  %narrow.i.not.i.not32.i = and i1 %i.ci, %i.ck
  br i1 %narrow.i.not.i.not32.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %EVP_AEAD_CTX_init.exit
  call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 115, ptr noundef nonnull @.str.14, i32 noundef 182) #46
  br label %EVP_AEAD_CTX_seal.exit.thread

bb.z:                                             ; preds = %EVP_AEAD_CTX_init.exit
  %i.cl = load ptr, ptr %0, align 8, !tbaa !148
  %i.cm = zext i8 %i.cg to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !154
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.cq = call i32 %i.co(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.f, i64 noundef 224, ptr noundef nonnull %i.j, i64 noundef %i.cm, ptr noundef nonnull @boringssl_self_test_fast.kAESGCMEncPlaintext, i64 noundef 32, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #46, !inline_history !2390
  %.not29.i = icmp eq i32 %i.cq, 0
  br i1 %.not29.i, label %EVP_AEAD_CTX_seal.exit.thread, label %bb.aa

EVP_AEAD_CTX_seal.exit.thread:                    ; preds = %bb.y, %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.h, i8 0, i64 256, i1 false)
  store i64 0, ptr %i.i, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cr = load i64, ptr %i.f, align 8, !tbaa !80
  %i.cs = add i64 %i.cr, 32
  store i64 %i.cs, ptr %i.i, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ct = call fastcc i32 @check_test(ptr noundef nonnull @boringssl_self_test_fast.kAESGCMCiphertext, ptr noundef %i.h, i64 noundef 48, ptr noundef nonnull @.str.132)
  %.not11 = icmp eq i32 %i.ct, 0
  br i1 %.not11, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %EVP_AEAD_CTX_seal.exit.thread, %bb.aa
  %i.cu = load ptr, ptr @stderr, align 8, !tbaa !188
  %fwrite12 = call i64 @fwrite(ptr nonnull @.str.133, i64 42, i64 1, ptr %i.cu) #52 ; 0 uses
  br label %bb.bw

bb.ac:                                            ; preds = %bb.aa
  call void @CRYPTO_once(ptr noundef nonnull @EVP_aead_aes_128_gcm_once, ptr noundef nonnull @EVP_aead_aes_128_gcm_init) #46
  %i.cv = load i8, ptr getelementptr inbounds nuw (i8, ptr @EVP_aead_aes_128_gcm_storage, i64 1), align 1, !tbaa !142
  %i.cw = zext i8 %i.cv to i64
  %i.cx = call i32 @EVP_AEAD_CTX_open(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i64 noundef 256, ptr noundef nonnull %i.j, i64 noundef %i.cw, ptr noundef nonnull @boringssl_self_test_fast.kAESGCMDecCiphertext, i64 noundef 48, ptr noundef null, i64 noundef 0)
  %.not13 = icmp eq i32 %i.cx, 0
  br i1 %.not13, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cy = call fastcc i32 @check_test(ptr noundef nonnull @boringssl_self_test_fast.kAESGCMDecPlaintext, ptr noundef %i.h, i64 noundef 32, ptr noundef nonnull @.str.134)
  %.not14 = icmp eq i32 %i.cy, 0
  br i1 %.not14, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @AWS_LC_FIPS_failure(ptr noundef nonnull @.str.135)
  br label %bb.bw

bb.af:                                            ; preds = %bb.ad
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 2 uses
  %i.da = and i32 %i.cz, 33554432
  %.not.i52 = icmp eq i32 %i.da, 0
  br i1 %.not.i52, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.db = call i32 @aes_hw_set_decrypt_key(ptr noundef nonnull @boringssl_self_test_fast.kAESKWPUnwrapKey, i32 noundef 128, ptr noundef nonnull %1) #46
  br label %AES_set_decrypt_key.exit55

bb.ah:                                            ; preds = %bb.af
  %i.dc = and i32 %i.cz, 512
  %.not15.i54 = icmp eq i32 %i.dc, 0
  br i1 %.not15.i54, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dd = call i32 @vpaes_set_decrypt_key(ptr noundef nonnull @boringssl_self_test_fast.kAESKWPUnwrapKey, i32 noundef 128, ptr noundef nonnull %1) #46
  br label %AES_set_decrypt_key.exit55

bb.aj:                                            ; preds = %bb.ah
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i32 10, ptr %i.de, align 16, !tbaa !75
  store <2 x i64> <i64 4332162333478762560, i64 -723564139084471781>, ptr %1, align 16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %bb.aj
  %.032.i.i69 = phi i64 [ 1, %bb.aj ], [ %i.ea, %bb.ak ] ; 3 uses
  %.sroa.0.031.i.i70 = phi <2 x i64> [ <i64 4332162333478762560, i64 -723564139084471781>, %bb.aj ], [ %i.dy, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.b, <2 x i64> %.sroa.0.031.i.i70)
  %i.df = getelementptr i8, ptr @aes_nohw_rcon, i64 %.032.i.i69
  %i.dg = getelementptr i8, ptr %i.df, i64 -1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !76
  %i.di = zext i8 %i.dh to i32
  %i.dj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.di, i64 0
  %i.dk = bitcast <4 x i32> %i.dj to <2 x i64>
  %i.dl = load <4 x i32>, ptr %i.b, align 16, !tbaa !76 ; 2 uses
  %i.dm = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.dl, <4 x i32> %i.dl, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.dn = bitcast <4 x i32> %i.dm to <16 x i8>
  %i.do = shufflevector <16 x i8> %i.dn, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.dp = bitcast <16 x i8> %i.do to <2 x i64>
  %i.dq = xor <2 x i64> %i.dk, %i.dp
  %.reass.i.i71 = xor <2 x i64> %i.dq, %.sroa.0.031.i.i70 ; 2 uses
  %i.dr = bitcast <2 x i64> %.reass.i.i71 to <16 x i8> ; 3 uses
  %i.ds = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dr, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.dt = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dr, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.du = xor <16 x i8> %i.ds, %i.dt
  %i.dv = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.dr, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.dw = xor <16 x i8> %i.du, %i.dv
  %i.dx = bitcast <16 x i8> %i.dw to <2 x i64>
  %i.dy = xor <2 x i64> %.reass.i.i71, %i.dx      ; 2 uses
  %.idx.i.i72 = shl nuw nsw i64 %.032.i.i69, 4
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i72
  store <2 x i64> %i.dy, ptr %i.dz, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  %i.ea = add nuw nsw i64 %.032.i.i69, 1          ; 2 uses
  %exitcond.not.i.i73 = icmp eq i64 %i.ea, 11
  br i1 %exitcond.not.i.i73, label %AES_set_decrypt_key.exit55.thread, label %bb.ak, !llvm.loop !1

AES_set_decrypt_key.exit55:                       ; preds = %bb.ag, %bb.ai
  %.0.i53 = phi i32 [ %i.dd, %bb.ai ], [ %i.db, %bb.ag ]
  %.not15 = icmp eq i32 %.0.i53, 0
  br i1 %.not15, label %AES_set_decrypt_key.exit55.thread, label %bb.al

bb.al:                                            ; preds = %AES_set_decrypt_key.exit55
  %i.eb = load ptr, ptr @stderr, align 8, !tbaa !188
  %fwrite42 = call i64 @fwrite(ptr nonnull @.str.129, i64 28, i64 1, ptr %i.eb) #52 ; 0 uses
  br label %bb.bw

AES_set_decrypt_key.exit55.thread:                ; preds = %bb.ak, %AES_set_decrypt_key.exit55
  %i.ec = call i32 @AES_unwrap_key_padded(ptr noundef nonnull %1, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, i64 noundef 256, ptr noundef nonnull @boringssl_self_test_fast.kAESKWPUnwrapCiphertext, i64 noundef 40)
  %i.ed = icmp eq i32 %i.ec, 0
  %i.ee = load i64, ptr %i.i, align 8
  %i.ef = icmp ne i64 %i.ee, 32
  %or.cond = select i1 %i.ed, i1 true, i1 %i.ef
  br i1 %or.cond, label %bb.am, label %bb.an

bb.am:                                            ; preds = %AES_set_decrypt_key.exit55.thread
  call void @AWS_LC_FIPS_failure(ptr noundef nonnull @.str.136)
  br label %bb.bw

bb.an:                                            ; preds = %AES_set_decrypt_key.exit55.thread
  %i.eg = call fastcc i32 @check_test(ptr noundef nonnull @boringssl_self_test_fast.kAESKWPUnwrapPlaintext, ptr noundef %i.h, i64 noundef 32, ptr noundef nonnull @.str.137)
  %.not16 = icmp eq i32 %i.eg, 0
  br i1 %.not16, label %bb.bw, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eh = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !73 ; 2 uses
  %i.ei = and i32 %i.eh, 33554432
  %.not.i56 = icmp eq i32 %i.ei, 0
  br i1 %.not.i56, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ej = call i32 @aes_hw_set_encrypt_key(ptr noundef nonnull @boringssl_self_test_fast.kAESKWPWrapKey, i32 noundef 128, ptr noundef nonnull %1) #46
  br label %AES_set_encrypt_key.exit59

bb.aq:                                            ; preds = %bb.ao
  %i.ek = and i32 %i.eh, 512
  %.not15.i58 = icmp eq i32 %i.ek, 0
  br i1 %.not15.i58, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.el = call i32 @vpaes_set_encrypt_key(ptr noundef nonnull @boringssl_self_test_fast.kAESKWPWrapKey, i32 noundef 128, ptr noundef nonnull %1) #46
  br label %AES_set_encrypt_key.exit59

bb.as:                                            ; preds = %bb.aq
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i32 10, ptr %i.em, align 16, !tbaa !75
  store <2 x i64> <i64 -7496030850042503189, i64 1596835710945660011>, ptr %1, align 16
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %bb.as
  %.032.i.i76 = phi i64 [ 1, %bb.as ], [ %i.fi, %bb.at ] ; 3 uses
  %.sroa.0.031.i.i77 = phi <2 x i64> [ <i64 -7496030850042503189, i64 1596835710945660011>, %bb.as ], [ %i.fg, %bb.at ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.a, <2 x i64> %.sroa.0.031.i.i77)
  %i.en = getelementptr i8, ptr @aes_nohw_rcon, i64 %.032.i.i76
  %i.eo = getelementptr i8, ptr %i.en, i64 -1
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !76
  %i.eq = zext i8 %i.ep to i32
  %i.er = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.eq, i64 0
  %i.es = bitcast <4 x i32> %i.er to <2 x i64>
  %i.et = load <4 x i32>, ptr %i.a, align 16, !tbaa !76 ; 2 uses
  %i.eu = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.et, <4 x i32> %i.et, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.ev = bitcast <4 x i32> %i.eu to <16 x i8>
  %i.ew = shufflevector <16 x i8> %i.ev, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ex = bitcast <16 x i8> %i.ew to <2 x i64>
  %i.ey = xor <2 x i64> %i.es, %i.ex
  %.reass.i.i78 = xor <2 x i64> %i.ey, %.sroa.0.031.i.i77 ; 2 uses
  %i.ez = bitcast <2 x i64> %.reass.i.i78 to <16 x i8> ; 3 uses
  %i.fa = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ez, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.fb = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ez, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fc = xor <16 x i8> %i.fa, %i.fb
  %i.fd = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ez, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19>
  %i.fe = xor <16 x i8> %i.fc, %i.fd
  %i.ff = bitcast <16 x i8> %i.fe to <2 x i64>
  %i.fg = xor <2 x i64> %.reass.i.i78, %i.ff      ; 2 uses
  %.idx.i.i79 = shl nuw nsw i64 %.032.i.i76, 4
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i.i79
  store <2 x i64> %i.fg, ptr %i.fh, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.fi = add nuw nsw i64 %.032.i.i76, 1          ; 2 uses
  %exitcond.not.i.i80 = icmp eq i64 %i.fi, 11
  br i1 %exitcond.not.i.i80, label %AES_set_encrypt_key.exit59.thread, label %bb.at, !llvm.loop !1

AES_set_encrypt_key.exit59:                       ; preds = %bb.ap, %bb.ar
  %.0.i57 = phi i32 [ %i.el, %bb.ar ], [ %i.ej, %bb.ap ]
  %.not17 = icmp eq i32 %.0.i57, 0
  br i1 %.not17, label %AES_set_encrypt_key.exit59.thread, label %bb.au

bb.au:                                            ; preds = %AES_set_encrypt_key.exit59
  %i.fj = load ptr, ptr @stderr, align 8, !tbaa !188
  %fwrite41 = call i64 @fwrite(ptr nonnull @.str.127, i64 28, i64 1, ptr %i.fj) #52 ; 0 uses
  br label %bb.bw

AES_set_encrypt_key.exit59.thread:                ; preds = %bb.at, %AES_set_encrypt_key.exit59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.i, align 8, !tbaa !80
  store i32 -1504093786, ptr %i.e, align 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 536870912, ptr %i.fk, align 4
  %i.fl = call ptr @OPENSSL_malloc(i64 noundef 32) #46 ; 5 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %AES_wrap_key_padded.exit.thread, label %bb.av

bb.av:                                            ; preds = %AES_set_encrypt_key.exit59.thread
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  store i64 0, ptr %i.fn, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fl, ptr noundef nonnull align 16 dereferenceable(32) @boringssl_self_test_fast.kAESKWPWrapPlaintext, i64 32, i1 false)
  %i.fo = call i32 @AES_wrap_key(ptr noundef nonnull %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull %i.fl, i64 noundef 32) ; 3 uses
  call void @OPENSSL_free(ptr noundef nonnull %i.fl) #46
  %i.fp = icmp slt i32 %i.fo, 0
  br i1 %i.fp, label %AES_wrap_key_padded.exit.thread, label %AES_wrap_key_padded.exit

AES_wrap_key_padded.exit.thread:                  ; preds = %bb.av, %AES_set_encrypt_key.exit59.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aw

AES_wrap_key_padded.exit:                         ; preds = %bb.av
  %i.fq = zext nneg i32 %i.fo to i64
  store i64 %i.fq, ptr %i.i, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not98 = icmp eq i32 %i.fo, 40
  br i1 %.not98, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %AES_wrap_key_padded.exit.thread, %AES_wrap_key_padded.exit
  call void @AWS_LC_FIPS_failure(ptr noundef nonnull @.str.138)
  br label %bb.bw

bb.ax:                                            ; preds = %AES_wrap_key_padded.exit
  %i.fr = call fastcc i32 @check_test(ptr noundef nonnull @boringssl_self_test_fast.kAESKWPWrapCiphertext, ptr noundef %i.h, i64 noundef 40, ptr noundef nonnull @.str.139)
  %.not18 = icmp eq i32 %i.fr, 0
  br i1 %.not18, label %bb.bw, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fs = call ptr @SHA1(ptr noundef nonnull @boringssl_self_test_fast.kSHA1Input, i64 noundef 16, ptr noundef nonnull %i.h) ; 0 uses
  %i.ft = call fastcc i32 @check_test(ptr noundef nonnull @boringssl_self_test_fast.kSHA1Digest, ptr noundef %i.h, i64 noundef 20, ptr noundef nonnull @.str.140)
  %.not19 = icmp eq i32 %i.ft, 0
  br i1 %.not19, label %bb.bw, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fu = call fastcc i32 @boringssl_self_test_sha512()
  %.not20 = icmp eq i32 %i.fu, 0
  br i1 %.not20, label %bb.bw, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fv = call fastcc i32 @boringssl_self_test_sha3_256()
  %.not21 = icmp eq i32 %i.fv, 0
  br i1 %.not21, label %bb.bw, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fw = call fastcc i32 @boringssl_self_test_hkdf_sha256()
  %.not22 = icmp eq i32 %i.fw, 0
  br i1 %.not22, label %bb.bw, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fx = call i32 @CTR_DRBG_init(ptr noundef nonnull %2, ptr noundef nonnull @boringssl_self_test_fast.kDRBGEntropy, ptr noundef nonnull @boringssl_self_test_fast.kDRBGPersonalization, i64 noundef 18)
  %.not23 = icmp eq i32 %i.fx, 0
  br i1 %.not23, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fy = call i32 @CTR_DRBG_generate(ptr noundef nonnull %2, ptr noundef nonnull %i.h, i64 noundef 64, ptr noundef nonnull @boringssl_self_test_fast.kDRBGAD, i64 noundef 16)
  %.not24 = icmp eq i32 %i.fy, 0
  br i1 %.not24, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fz = call fastcc i32 @check_test(ptr noundef nonnull @boringssl_self_test_fast.kDRBGOutput, ptr noundef %i.h, i64 noundef 64, ptr noundef nonnull @.str.141)
  %.not25 = icmp eq i32 %i.fz, 0
  br i1 %.not25, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ga = call i32 @CTR_DRBG_reseed(ptr noundef nonnull %2, ptr noundef nonnull @boringssl_self_test_fast.kDRBGEntropy2, ptr noundef nonnull @boringssl_self_test_fast.kDRBGAD, i64 noundef 16)
  %.not26 = icmp eq i32 %i.ga, 0
  br i1 %.not26, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gb = call i32 @CTR_DRBG_generate(ptr noundef nonnull %2, ptr noundef nonnull %i.h, i64 noundef 64, ptr noundef nonnull @boringssl_self_test_fast.kDRBGAD, i64 noundef 16)
  %.not27 = icmp eq i32 %i.gb, 0
  br i1 %.not27, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gc = call fastcc i32 @check_test(ptr noundef nonnull @boringssl_self_test_fast.kDRBGReseedOutput, ptr noundef %i.h, i64 noundef 64, ptr noundef nonnull @.str.142)
  %.not28 = icmp eq i32 %i.gc, 0
  br i1 %.not28, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc
  call void @AWS_LC_FIPS_failure(ptr noundef nonnull @.str.143)
  br label %bb.bw

bb.bj:                                            ; preds = %bb.bh
  call void @OPENSSL_cleanse(ptr noundef nonnull %2, i64 noundef 288) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %3, i8 0, i64 288, i1 false)
  %i.gd = call fastcc i32 @check_test(ptr noundef nonnull %3, ptr noundef %2, i64 noundef 288, ptr noundef nonnull @.str.144)
  %.not29 = icmp eq i32 %i.gd, 0
  br i1 %.not29, label %bb.bw, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @CRYPTO_once(ptr noundef nonnull @EVP_sha256_once, ptr noundef nonnull @EVP_sha256_init) #46
  %i.ge = call i32 @CRYPTO_tls1_prf(ptr noundef nonnull @EVP_sha256_storage, ptr noundef nonnull %i.k, i64 noundef 32, ptr noundef nonnull @boringssl_self_test_fast.kTLSSecret, i64 noundef 32, ptr noundef nonnull @boringssl_self_test_fast.kTLSLabel, i64 noundef 15, ptr noundef nonnull @boringssl_self_test_fast.kTLSSeed1, i64 noundef 16, ptr noundef nonnull @boringssl_self_test_fast.kTLSSeed2, i64 noundef 16)
  %.not30 = icmp eq i32 %i.ge, 0
  br i1 %.not30, label %bb.bw, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gf = call fastcc i32 @check_test(ptr noundef nonnull @boringssl_self_test_fast.kTLSOutput, ptr noundef %i.k, i64 noundef 32, ptr noundef nonnull @.str.145)
  %.not31 = icmp eq i32 %i.gf, 0
  br i1 %.not31, label %bb.bw, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @CRYPTO_once(ptr noundef nonnull @EVP_sha256_once, ptr noundef nonnull @EVP_sha256_init) #46
  %i.gg = call i32 @HKDF_extract(ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull @EVP_sha256_storage, ptr noundef nonnull @boringssl_self_test_fast.kTLS13Secret, i64 noundef 32, ptr noundef nonnull @boringssl_self_test_fast.kTLS13Salt, i64 noundef 16)
  %i.gh = icmp eq i32 %i.gg, 0
  %i.gi = load i64, ptr %i.m, align 8
  %i.gj = icmp ne i64 %i.gi, 32
  %or.cond5 = select i1 %i.gh, i1 true, i1 %i.gj
  br i1 %or.cond5, label %bb.bw, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @CRYPTO_once(ptr noundef nonnull @EVP_sha256_once, ptr noundef nonnull @EVP_sha256_init) #46
  %i.gk = call i32 @CRYPTO_tls13_hkdf_expand_label(ptr noundef nonnull %i.n, i64 noundef 32, ptr noundef nonnull @EVP_sha256_storage, ptr noundef nonnull %i.l, i64 noundef 32, ptr noundef nonnull @boringssl_self_test_fast.kTLS13Label, i64 noundef 11, ptr noundef nonnull @boringssl_self_test_fast.kTLS13ClientHelloHash, i64 noundef 32)
  %.not32 = icmp eq i32 %i.gk, 0
  br i1 %.not32, label %bb.bw, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gl = call fastcc i32 @check_test(ptr noundef nonnull @boringssl_self_test_fast.kTLS13ExpandLabelOutput, ptr noundef %i.n, i64 noundef 32, ptr noundef nonnull @.str.146)
  %.not33 = icmp eq i32 %i.gl, 0
  br i1 %.not33, label %bb.bw, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @CRYPTO_once(ptr noundef nonnull @EVP_sha256_once, ptr noundef nonnull @EVP_sha256_init) #46
  %i.gm = call i32 @PKCS5_PBKDF2_HMAC(ptr noundef nonnull @boringssl_self_test_fast.kPBKDF2Password, i64 noundef 18, ptr noundef nonnull @boringssl_self_test_fast.kPBKDF2Salt, i64 noundef 36, i32 noundef 2, ptr noundef nonnull @EVP_sha256_storage, i64 noundef 25, ptr noundef nonnull %i.o)
  %.not34 = icmp eq i32 %i.gm, 0
  br i1 %.not34, label %bb.bw, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gn = call fastcc i32 @check_test(ptr noundef nonnull @boringssl_self_test_fast.kPBKDF2DerivedKey, ptr noundef %i.o, i64 noundef 25, ptr noundef nonnull @.str.147)
  %.not35 = icmp eq i32 %i.gn, 0
  br i1 %.not35, label %bb.bw, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @CRYPTO_once(ptr noundef nonnull @EVP_sha256_once, ptr noundef nonnull @EVP_sha256_init) #46
  %i.go = call i32 @SSKDF_digest(ptr noundef nonnull %i.p, i64 noundef 256, ptr noundef nonnull @EVP_sha256_storage, ptr noundef nonnull @boringssl_self_test_fast.kSSKDFDigestSharedSecret, i64 noundef 51, ptr noundef nonnull @boringssl_self_test_fast.kSSKDFDigestInfo, i64 noundef 32)
  %.not36 = icmp eq i32 %i.go, 0
  br i1 %.not36, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gp = call fastcc i32 @check_test(ptr noundef nonnull @boringssl_self_test_fast.kSSKDFDigestDerivedKey, ptr noundef %i.p, i64 noundef 256, ptr noundef nonnull @.str.148)
  %.not37 = icmp eq i32 %i.gp, 0
  br i1 %.not37, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.gq = load ptr, ptr @stderr, align 8, !tbaa !188
  %fwrite38 = call i64 @fwrite(ptr nonnull @.str.149, i64 21, i64 1, ptr %i.gq) #52 ; 0 uses
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  call void @CRYPTO_once(ptr noundef nonnull @EVP_sha256_once, ptr noundef nonnull @EVP_sha256_init) #46
  %i.gr = call i32 @KBKDF_ctr_hmac(ptr noundef nonnull %i.q, i64 noundef 16, ptr noundef nonnull @EVP_sha256_storage, ptr noundef nonnull @boringssl_self_test_fast.kKBKDF_ctr_hmac_secret, i64 noundef 32, ptr noundef nonnull @boringssl_self_test_fast.kKBKDF_ctr_hmac_info, i64 noundef 60)
  %.not39 = icmp eq i32 %i.gr, 0
  br i1 %.not39, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gs = call fastcc i32 @check_test(ptr noundef nonnull @boringssl_self_test_fast.kKBKDF_ctr_hmac_output, ptr noundef %i.q, i64 noundef 16, ptr noundef nonnull @.str.150)
  br label %bb.bw

end_hunk_3
