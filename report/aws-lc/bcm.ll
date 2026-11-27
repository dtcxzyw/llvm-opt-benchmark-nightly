Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6926
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 333
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 552
begin_hunk_0_@aes_nohw_decrypt:bb.a
  %i.bc = bitcast <4 x i32> %i.bb to <2 x i64>
  %i.bd = xor <2 x i64> %i.ao, %i.bc
  %i.be = and <2 x i64> %i.bd, splat (i64 1085102592571150095) ; 2 uses
  %i.bf = bitcast <2 x i64> %i.be to <4 x i32>
  %i.bg = shl nuw <4 x i32> %i.bf, splat (i32 4)
  %i.bh = bitcast <4 x i32> %i.bg to <2 x i64>
  %i.bi = xor <2 x i64> %i.ao, %i.bh
  store <2 x i64> %i.bi, ptr %i.f, align 16, !tbaa !78
  %i.bj = xor <2 x i64> %i.be, %i.ao
  store <2 x i64> %i.bj, ptr %i.j, align 16, !tbaa !78
  %i.bk = bitcast <2 x i64> %i.af to <4 x i32>
  %i.bl = lshr <4 x i32> %i.bk, splat (i32 4)
  %i.bm = bitcast <4 x i32> %i.bl to <2 x i64>
  %i.bn = xor <2 x i64> %i.af, %i.bm
  %i.bo = and <2 x i64> %i.bn, splat (i64 1085102592571150095) ; 2 uses
  %i.bp = bitcast <2 x i64> %i.bo to <4 x i32>
  %i.bq = shl nuw <4 x i32> %i.bp, splat (i32 4)
  %i.br = bitcast <4 x i32> %i.bq to <2 x i64>
  %i.bs = xor <2 x i64> %i.af, %i.br
  store <2 x i64> %i.bs, ptr %i.g, align 16, !tbaa !78
  %i.bt = xor <2 x i64> %i.bo, %i.af
  store <2 x i64> %i.bt, ptr %i.k, align 16, !tbaa !78
  %i.bu = bitcast <2 x i64> %i.ap to <4 x i32>
  %i.bv = lshr <4 x i32> %i.bu, splat (i32 4)
  %i.bw = bitcast <4 x i32> %i.bv to <2 x i64>
  %i.bx = xor <2 x i64> %i.ap, %i.bw
  %i.by = and <2 x i64> %i.bx, splat (i64 1085102592571150095) ; 2 uses
  %i.bz = bitcast <2 x i64> %i.by to <4 x i32>
  %i.ca = shl nuw <4 x i32> %i.bz, splat (i32 4)
  %i.cb = bitcast <4 x i32> %i.ca to <2 x i64>
  %i.cc = xor <2 x i64> %i.ap, %i.cb
  store <2 x i64> %i.cc, ptr %i.h, align 16, !tbaa !78
  %i.cd = xor <2 x i64> %i.by, %i.ap
  store <2 x i64> %i.cd, ptr %i.l, align 16, !tbaa !78
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
  store <2 x i64> %i.cy, ptr %4, align 16, !tbaa !78
  store <2 x i64> %i.cu, ptr %.phi.trans.insert14.i, align 16, !tbaa !78
  %i.cz = lshr <4 x i32> %.inner14, splat (i32 4)
  %i.da = bitcast <4 x i32> %i.cz to <2 x i64>
  %i.db = and <2 x i64> %i.da, splat (i64 361700864190383365) ; 2 uses
  %i.dc = bitcast <2 x i64> %i.db to <4 x i32>
  %i.dd = shl nuw nsw <4 x i32> %i.dc, splat (i32 4)
  %.inner17 = xor <4 x i32> %.inner14, %i.dd
  store <4 x i32> %.inner17, ptr %.phi.trans.insert.i, align 16, !tbaa !78
  store <2 x i64> %i.db, ptr %.phi.trans.insert16.i, align 16, !tbaa !78
  %i.de = lshr <4 x i32> %i.ck, splat (i32 6)
  %i.df = bitcast <4 x i32> %i.de to <2 x i64>
  %i.dg = and <2 x i64> %i.df, splat (i64 217020518514230019) ; 2 uses
  %i.dh = bitcast <2 x i64> %i.dg to <4 x i32>
  %i.di = shl nuw nsw <4 x i32> %i.dh, splat (i32 4)
  %.inner19 = xor <4 x i32> %.inner12, %i.di
  store <4 x i32> %.inner19, ptr %.phi.trans.insert10.i, align 16, !tbaa !78
  store <2 x i64> %i.dg, ptr %.phi.trans.insert18.i, align 16, !tbaa !78
  %i.dj = lshr <4 x i32> %i.cf, splat (i32 7)
  %i.dk = bitcast <4 x i32> %i.dj to <2 x i64>
  %i.dl = and <2 x i64> %i.dk, splat (i64 72340172838076673) ; 2 uses
  %i.dm = bitcast <2 x i64> %i.dl to <4 x i32>
  %i.dn = shl nuw nsw <4 x i32> %i.dm, splat (i32 4)
  %.inner21 = xor <4 x i32> %.inner13, %i.dn
  store <4 x i32> %.inner21, ptr %.phi.trans.insert12.i, align 16, !tbaa !78
  store <2 x i64> %i.dl, ptr %.phi.trans.insert20.i, align 16, !tbaa !78
  call fastcc void @aes_nohw_decrypt_batch(ptr noundef %3, i64 noundef %i.c, ptr noundef %4)
  %.sroa.0.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !78
  %.sroa.0.i.sroa.6.0.copyload6 = load <4 x i32>, ptr %.phi.trans.insert.i, align 16, !tbaa !78
  %.sroa.0.i.sroa.8.0.copyload = load <2 x i64>, ptr %.phi.trans.insert10.i, align 16, !tbaa !78
  %.sroa.0.i.sroa.10.0.copyload7 = load <4 x i32>, ptr %.phi.trans.insert12.i, align 16, !tbaa !78
  %.sroa.0.i.sroa.12.0.copyload = load <2 x i64>, ptr %.phi.trans.insert14.i, align 16, !tbaa !78
  %.sroa.0.i.sroa.14.0.copyload8 = load <4 x i32>, ptr %.phi.trans.insert16.i, align 16, !tbaa !78
  %.sroa.0.i.sroa.16.0.copyload = load <2 x i64>, ptr %.phi.trans.insert18.i, align 16, !tbaa !78
  %.sroa.0.i.sroa.18.0.copyload9 = load <4 x i32>, ptr %.phi.trans.insert20.i, align 16, !tbaa !78
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
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !75 ; 2 uses
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
  %i.b = alloca [1 x <2 x i64>], align 16         ; 6 uses
  %i.c = alloca [1 x <2 x i64>], align 16         ; 4 uses
  switch i32 %1, label %aes_nohw_setup_key_128.exit [
    i32 128, label %bb.b
    i32 192, label %bb.c
    i32 256, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i32 10, ptr %i.d, align 4, !tbaa !77
  %.sroa.0.0.copyload29.i = load <2 x i64>, ptr %0, align 1 ; 2 uses
  store <2 x i64> %.sroa.0.0.copyload29.i, ptr %2, align 4
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i, %bb.b
  %.031.i = phi i64 [ 1, %bb.b ], [ %i.aa, %.critedge.i ] ; 3 uses
  %.sroa.0.030.i = phi <2 x i64> [ %.sroa.0.0.copyload29.i, %bb.b ], [ %i.y, %.critedge.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.c, <2 x i64> %.sroa.0.030.i)
  %i.e = getelementptr i8, ptr @aes_nohw_rcon, i64 %.031.i
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !78
  %i.h = zext i8 %i.g to i32
  %i.i = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.h, i64 0
  %i.j = bitcast <4 x i32> %i.i to <2 x i64>
  %i.k = load <4 x i32>, ptr %i.c, align 16, !tbaa !78 ; 2 uses
  %i.l = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.k, <4 x i32> %i.k, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.m = bitcast <4 x i32> %i.l to <16 x i8>
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.o = bitcast <16 x i8> %i.n to <2 x i64>
  %i.p = xor <2 x i64> %i.j, %i.o
  %i.q = xor <2 x i64> %i.p, %.sroa.0.030.i       ; 2 uses
  %i.r = bitcast <2 x i64> %i.q to <16 x i8>      ; 3 uses
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.t = shufflevector <16 x i8> %i.r, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.u = xor <16 x i8> %i.s, %i.t
  %i.v = shufflevector <16 x i8> %i.r, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.w = xor <16 x i8> %i.u, %i.v
  %i.x = bitcast <16 x i8> %i.w to <2 x i64>
  %i.y = xor <2 x i64> %i.q, %i.x                 ; 2 uses
  %.idx.i = shl nuw nsw i64 %.031.i, 4
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i
  store <2 x i64> %i.y, ptr %i.z, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  %i.aa = add nuw nsw i64 %.031.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, 11
  br i1 %exitcond.not.i, label %aes_nohw_setup_key_128.exit, label %.critedge.i, !llvm.loop !1

bb.c:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i32 12, ptr %i.ab, align 4, !tbaa !77
  %.sroa.0152.0.copyload153.i = load <16 x i8>, ptr %0, align 1 ; 2 uses
  store <16 x i8> %.sroa.0152.0.copyload153.i, ptr %2, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 1
  %.sroa.0.8.vec.insert.i = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ad, i64 0
  br label %.critedge.i7

.critedge.i7:                                     ; preds = %.critedge.i7, %bb.c
  %.0149.sroa.i = phi <16 x i8> [ %.sroa.0152.0.copyload153.i, %bb.c ], [ %12, %.critedge.i7 ] ; 2 uses
  %.0138148.sroa.in.i = phi <2 x i64> [ %.sroa.0.8.vec.insert.i, %bb.c ], [ %i.cf, %.critedge.i7 ] ; 2 uses
  %.0140147.i = phi i64 [ 0, %bb.c ], [ %i.ch, %.critedge.i7 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.b, <2 x i64> %.0138148.sroa.in.i)
  %i.ae = shl nuw nsw i64 %.0140147.i, 1
  %i.af = getelementptr inbounds nuw i8, ptr @aes_nohw_rcon, i64 %i.ae ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !78
  %i.ah = zext i8 %i.ag to i32
  %i.ai = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.ah, i64 0
  %3 = bitcast <4 x i32> %i.ai to <16 x i8>
  %4 = xor <16 x i8> %.0149.sroa.i, %3
  %5 = shufflevector <16 x i8> %4, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = bitcast <16 x i8> %5 to <2 x i64>
  %7 = or <2 x i64> %.0138148.sroa.in.i, %6
  %i.aj = load <4 x i32>, ptr %i.b, align 16, !tbaa !78 ; 2 uses
  %i.ak = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.aj, <4 x i32> %i.aj, <4 x i32> <i32 24, i32 24, i32 24, i32 poison>)
  %i.al = bitcast <4 x i32> %i.ak to <16 x i8>
  %i.am = shufflevector <16 x i8> %i.al, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.an = bitcast <16 x i8> %i.am to <2 x i64>
  %i.ao = and <2 x i64> %i.an, <i64 0, i64 4294967295>
  %i.ap = xor <2 x i64> %7, %i.ao                 ; 2 uses
  %i.aq = bitcast <2 x i64> %i.ap to <16 x i8>
  %i.ar = shufflevector <16 x i8> %i.aq, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.as = bitcast <16 x i8> %i.ar to <2 x i64>
  %i.at = and <2 x i64> %i.as, <i64 0, i64 -4294967296>
  %i.au = xor <2 x i64> %i.at, %i.ap              ; 2 uses
  %i.av = bitcast <2 x i64> %i.au to <16 x i8>    ; 3 uses
  %i.aw = shufflevector <16 x i8> %.0149.sroa.i, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ax = shufflevector <16 x i8> %i.av, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ay = or <16 x i8> %i.ax, %i.aw
  %i.az = shufflevector <16 x i8> %i.av, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ba = xor <16 x i8> %i.ay, %i.az              ; 4 uses
  %i.bb = shufflevector <16 x i8> %i.ba, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.bc = shufflevector <16 x i8> %i.ba, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bd = shufflevector <16 x i8> %i.ba, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.be = xor <16 x i8> %i.bb, %i.bc
  %i.bf = xor <16 x i8> %i.be, %i.bd
  %i.bg = xor <16 x i8> %i.bf, %i.ba              ; 4 uses
  %.idx.i8 = mul nuw nsw i64 %.0140147.i, 48
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <2 x i64> %i.au, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store <16 x i8> %i.bg, ptr %i.bj, align 4
  %.0.val.value.i = bitcast <16 x i8> %i.bg to <2 x i64>
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.b, <2 x i64> %.0.val.value.i)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !78
  %i.bm = shufflevector <16 x i8> %i.av, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.bn = shufflevector <16 x i8> %i.bg, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bo = or <16 x i8> %i.bn, %i.bm
  %i.bp = zext i8 %i.bl to i32
  %i.bq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bp, i64 0
  %i.br = load <4 x i32>, ptr %i.b, align 16, !tbaa !78 ; 2 uses
  %i.bs = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.br, <4 x i32> %i.br, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.bt = bitcast <4 x i32> %i.bs to <16 x i8>
  %i.bu = shufflevector <16 x i8> %i.bt, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %8 = bitcast <4 x i32> %i.bq to <16 x i8>
  %9 = xor <16 x i8> %i.bu, %8
  %10 = xor <16 x i8> %9, %i.bo                   ; 4 uses
  %i.bv = shufflevector <16 x i8> %10, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.bw = shufflevector <16 x i8> %10, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bx = shufflevector <16 x i8> %10, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.by = xor <16 x i8> %i.bw, %i.bv
  %11 = xor <16 x i8> %i.by, %i.bx
  %12 = xor <16 x i8> %11, %10                    ; 3 uses
  %i.bz = shufflevector <16 x i8> %i.bg, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.ca = shufflevector <16 x i8> %12, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.cb = xor <16 x i8> %i.ca, %i.bz              ; 2 uses
  %i.cc = shufflevector <16 x i8> %i.cb, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.cd = xor <16 x i8> %i.cc, %i.cb
  %i.ce = bitcast <16 x i8> %i.cd to <2 x i64>
  %i.cf = and <2 x i64> %i.ce, <i64 -1, i64 0>
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store <16 x i8> %12, ptr %i.cg, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  %i.ch = add nuw nsw i64 %.0140147.i, 1          ; 2 uses
  %exitcond.not.i9 = icmp eq i64 %i.ch, 4
  br i1 %exitcond.not.i9, label %aes_nohw_setup_key_128.exit, label %.critedge.i7, !llvm.loop !649

bb.d:                                             ; preds = %bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 240
  store i32 14, ptr %i.ci, align 4, !tbaa !77
  %.sroa.059.0.copyload62.i = load <2 x i64>, ptr %0, align 1 ; 2 uses
  store <2 x i64> %.sroa.059.0.copyload62.i, ptr %2, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload58.i = load <2 x i64>, ptr %i.cj, align 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x i64> %.sroa.0.0.copyload58.i, ptr %i.ck, align 4
  br label %.critedge.i10

.critedge.i10:                                    ; preds = %.critedge52.i, %bb.d
  %.065.i = phi i64 [ 2, %bb.d ], [ %i.dv, %.critedge52.i ] ; 4 uses
  %.sroa.0.064.i = phi <2 x i64> [ %.sroa.0.0.copyload58.i, %bb.d ], [ %i.dt, %.critedge52.i ] ; 2 uses
  %.sroa.059.063.i = phi <2 x i64> [ %.sroa.059.0.copyload62.i, %bb.d ], [ %i.dg, %.critedge52.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.a, <2 x i64> %.sroa.0.064.i)
  %i.cl = lshr exact i64 %.065.i, 1
  %i.cm = getelementptr i8, ptr @aes_nohw_rcon, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 -1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !78
  %i.cp = zext i8 %i.co to i32
  %i.cq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cp, i64 0
  %i.cr = bitcast <4 x i32> %i.cq to <2 x i64>
  %i.cs = xor <2 x i64> %.sroa.059.063.i, %i.cr
  %i.ct = load <4 x i32>, ptr %i.a, align 16, !tbaa !78 ; 2 uses
  %i.cu = tail call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ct, <4 x i32> %i.ct, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 24>)
  %i.cv = bitcast <4 x i32> %i.cu to <16 x i8>
  %i.cw = shufflevector <16 x i8> %i.cv, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.cx = bitcast <16 x i8> %i.cw to <2 x i64>
  %i.cy = xor <2 x i64> %i.cs, %i.cx              ; 2 uses
  %i.cz = bitcast <2 x i64> %i.cy to <16 x i8>    ; 3 uses
  %i.da = shufflevector <16 x i8> %i.cz, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.db = shufflevector <16 x i8> %i.cz, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dc = xor <16 x i8> %i.da, %i.db
  %i.dd = shufflevector <16 x i8> %i.cz, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.de = xor <16 x i8> %i.dc, %i.dd
  %i.df = bitcast <16 x i8> %i.de to <2 x i64>
  %i.dg = xor <2 x i64> %i.cy, %i.df              ; 3 uses
  %.idx.i11 = shl nuw nsw i64 %.065.i, 4
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i11 ; 2 uses
  store <2 x i64> %i.dg, ptr %i.dh, align 4
  %.not.i = icmp eq i64 %.065.i, 14
  br i1 %.not.i, label %aes_nohw_setup_key_256.exit, label %.critedge52.i

.critedge52.i:                                    ; preds = %.critedge.i10
  call fastcc void @aes_nohw_sub_block(ptr noundef %i.a, <2 x i64> %i.dg)
  %i.di = load <16 x i8>, ptr %i.a, align 16, !tbaa !78
  %i.dj = shufflevector <16 x i8> %i.di, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.dk = bitcast <16 x i8> %i.dj to <2 x i64>
  %i.dl = xor <2 x i64> %.sroa.0.064.i, %i.dk     ; 2 uses
  %i.dm = bitcast <2 x i64> %i.dl to <16 x i8>    ; 3 uses
  %i.dn = shufflevector <16 x i8> %i.dm, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11>
  %i.do = shufflevector <16 x i8> %i.dm, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dp = xor <16 x i8> %i.dn, %i.do
  %i.dq = shufflevector <16 x i8> %i.dm, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 0, i32 1, i32 2, i32 3>
  %i.dr = xor <16 x i8> %i.dp, %i.dq
  %i.ds = bitcast <16 x i8> %i.dr to <2 x i64>
  %i.dt = xor <2 x i64> %i.dl, %i.ds              ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <2 x i64> %i.dt, ptr %i.du, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.dv = add nuw nsw i64 %.065.i, 2
  br label %.critedge.i10

aes_nohw_setup_key_256.exit:                      ; preds = %.critedge.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %aes_nohw_setup_key_128.exit

aes_nohw_setup_key_128.exit:                      ; preds = %.critedge.i7, %.critedge.i, %bb.a, %aes_nohw_setup_key_256.exit
  %.0 = phi i32 [ 0, %aes_nohw_setup_key_256.exit ], [ 1, %bb.a ], [ 0, %.critedge.i ], [ 0, %.critedge.i7 ]
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
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !75 ; 2 uses
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
  %i.a = load <2 x i64>, ptr %2, align 16, !tbaa !78
  %i.b = load <2 x i64>, ptr %0, align 16, !tbaa !78
  %i.c = xor <2 x i64> %i.b, %i.a                 ; 3 uses
  store <2 x i64> %i.c, ptr %2, align 16, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.e = load <2 x i64>, ptr %i.d, align 16, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load <2 x i64>, ptr %i.f, align 16, !tbaa !78
  %i.h = xor <2 x i64> %i.g, %i.e                 ; 3 uses
  store <2 x i64> %i.h, ptr %i.d, align 16, !tbaa !78
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 9 uses
  %i.j = load <2 x i64>, ptr %i.i, align 16, !tbaa !78
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load <2 x i64>, ptr %i.k, align 16, !tbaa !78
  %i.m = xor <2 x i64> %i.l, %i.j                 ; 3 uses
  store <2 x i64> %i.m, ptr %i.i, align 16, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 9 uses
  %i.o = load <2 x i64>, ptr %i.n, align 16, !tbaa !78
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load <2 x i64>, ptr %i.p, align 16, !tbaa !78
  %i.r = xor <2 x i64> %i.q, %i.o                 ; 3 uses
  store <2 x i64> %i.r, ptr %i.n, align 16, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 9 uses
  %i.t = load <2 x i64>, ptr %i.s, align 16, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load <2 x i64>, ptr %i.u, align 16, !tbaa !78
  %i.w = xor <2 x i64> %i.v, %i.t                 ; 3 uses
  store <2 x i64> %i.w, ptr %i.s, align 16, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 9 uses
  %i.y = load <2 x i64>, ptr %i.x, align 16, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load <2 x i64>, ptr %i.z, align 16, !tbaa !78
  %i.ab = xor <2 x i64> %i.aa, %i.y               ; 3 uses
  store <2 x i64> %i.ab, ptr %i.x, align 16, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 9 uses
  %i.ad = load <2 x i64>, ptr %i.ac, align 16, !tbaa !78
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.af = load <2 x i64>, ptr %i.ae, align 16, !tbaa !78
  %i.ag = xor <2 x i64> %i.af, %i.ad              ; 3 uses
  store <2 x i64> %i.ag, ptr %i.ac, align 16, !tbaa !78
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 8 uses
  %i.ai = load <2 x i64>, ptr %i.ah, align 16, !tbaa !78
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ak = load <2 x i64>, ptr %i.aj, align 16, !tbaa !78
  %i.al = xor <2 x i64> %i.ak, %i.ai              ; 2 uses
  %i.am = icmp samesign ugt i64 %1, 1
  br i1 %i.am, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %aes_nohw_shift_rows.exit18, %bb.a
  %i.an = phi <2 x i64> [ %i.c, %bb.a ], [ %i.qo, %aes_nohw_shift_rows.exit18 ] ; 5 uses
  %i.ao = phi <2 x i64> [ %i.h, %bb.a ], [ %i.qr, %aes_nohw_shift_rows.exit18 ] ; 2 uses
  %i.ap = phi <2 x i64> [ %i.m, %bb.a ], [ %i.qu, %aes_nohw_shift_rows.exit18 ] ; 3 uses
  %i.aq = phi <2 x i64> [ %i.r, %bb.a ], [ %i.qx, %aes_nohw_shift_rows.exit18 ]
  %i.ar = phi <2 x i64> [ %i.w, %bb.a ], [ %i.ra, %aes_nohw_shift_rows.exit18 ] ; 3 uses
  %i.as = phi <2 x i64> [ %i.ab, %bb.a ], [ %i.rd, %aes_nohw_shift_rows.exit18 ]
  %i.at = phi <2 x i64> [ %i.ag, %bb.a ], [ %i.rg, %aes_nohw_shift_rows.exit18 ] ; 2 uses
  %i.au = phi <2 x i64> [ %i.al, %bb.a ], [ %i.rj, %aes_nohw_shift_rows.exit18 ] ; 5 uses
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
  %i.ck = xor <2 x i64> %i.cj, %i.bo              ; 2 uses
  %i.cl = xor <2 x i64> %i.bu, %i.au
  %i.cm = xor <2 x i64> %i.cl, %i.bs
  %i.cn = xor <2 x i64> %i.cm, %i.bz              ; 2 uses
  %i.co = xor <2 x i64> %i.cn, %i.bo              ; 3 uses
  %i.cp = xor <2 x i64> %i.cc, %i.cg              ; 2 uses
  %i.cq = and <2 x i64> %i.ck, %i.cc              ; 3 uses
  %i.cr = xor <2 x i64> %i.cq, %i.co              ; 2 uses
  %i.cs = and <2 x i64> %i.cr, %i.cp
  %i.ct = xor <2 x i64> %i.cs, %i.cg              ; 5 uses
  %i.cu = xor <2 x i64> %i.cn, %i.cj
  %i.cv = xor <2 x i64> %i.cq, %i.cg
  %i.cw = and <2 x i64> %i.cv, %i.cu              ; 2 uses
  %i.cx = xor <2 x i64> %i.cw, %i.co              ; 4 uses
  %i.cy = xor <2 x i64> %i.cw, %i.cq
  %i.cz = and <2 x i64> %i.cy, %i.co              ; 2 uses
  %i.da = xor <2 x i64> %i.cz, %i.ck              ; 3 uses
  %i.db = xor <2 x i64> %i.da, %i.cx              ; 3 uses
  %i.dc = xor <2 x i64> %i.cz, %i.cr
  %i.dd = and <2 x i64> %i.dc, %i.ct
  %i.de = xor <2 x i64> %i.dd, %i.cp              ; 4 uses
  %i.df = xor <2 x i64> %i.de, %i.db              ; 3 uses
  %i.dg = xor <2 x i64> %i.cx, %i.ct              ; 3 uses
  %i.dh = xor <2 x i64> %i.de, %i.ct              ; 2 uses
  %i.di = xor <2 x i64> %i.df, %i.dg              ; 2 uses
  %i.dj = and <2 x i64> %i.da, %i.bh
  %i.dk = and <2 x i64> %i.db, %i.bj
  %i.dl = and <2 x i64> %i.cx, %i.an              ; 2 uses
  %i.dm = and <2 x i64> %i.dh, %i.bo              ; 2 uses
  %i.dn = and <2 x i64> %i.de, %i.ba              ; 2 uses
  %i.do = and <2 x i64> %i.ct, %i.bm              ; 2 uses
  %i.dp = and <2 x i64> %i.dg, %i.bl
  %i.dq = and <2 x i64> %i.di, %i.bn              ; 2 uses
  %i.dr = and <2 x i64> %i.df, %i.bk
  %i.ds = and <2 x i64> %i.da, %i.bc
  %i.dt = and <2 x i64> %i.db, %i.bf              ; 2 uses
  %i.du = and <2 x i64> %i.cx, %i.bb
  %i.dv = and <2 x i64> %i.dh, %i.aw              ; 2 uses
  %i.dw = and <2 x i64> %i.de, %i.be
  %i.dx = and <2 x i64> %i.ct, %i.bd
  %i.dy = and <2 x i64> %i.dg, %i.ax
  %i.dz = and <2 x i64> %i.di, %i.av              ; 2 uses
  %i.ea = and <2 x i64> %i.df, %i.ay
  %i.eb = xor <2 x i64> %i.dz, %i.dy              ; 2 uses
  %i.ec = xor <2 x i64> %i.dt, %i.du
end_hunk_0
