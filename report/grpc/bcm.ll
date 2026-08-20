inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 186
loop-unroll.NumRuntimeUnrolled: 132
loop-unroll.NumUnrolled: 371
begin_hunk_0_@_ZL20aes_unwrap_key_innerPK10aes_key_stPhS2_PKhm:bb.a
  %i.dw = bitcast <2 x i64> %i.dv to <4 x i32>
  %i.dx = shl nuw nsw <4 x i32> %i.dw, splat (i32 4)
  %.inner56 = xor <4 x i32> %.inner53, %i.dx
  store <4 x i32> %.inner56, ptr %.phi.trans.insert.i.i, align 16, !tbaa !13
  store <2 x i64> %i.dv, ptr %.phi.trans.insert16.i.i, align 16, !tbaa !13
  %i.dy = lshr <4 x i32> %i.de, splat (i32 6)
  %i.dz = bitcast <4 x i32> %i.dy to <2 x i64>
  %i.ea = and <2 x i64> %i.dz, splat (i64 217020518514230019) ; 2 uses
  %i.eb = bitcast <2 x i64> %i.ea to <4 x i32>
  %i.ec = shl nuw nsw <4 x i32> %i.eb, splat (i32 4)
  %.inner58 = xor <4 x i32> %.inner51, %i.ec
  store <4 x i32> %.inner58, ptr %.phi.trans.insert10.i.i, align 16, !tbaa !13
  store <2 x i64> %i.ea, ptr %.phi.trans.insert18.i.i, align 16, !tbaa !13
  %i.ed = lshr <4 x i32> %i.cz, splat (i32 7)
  %i.ee = bitcast <4 x i32> %i.ed to <2 x i64>
  %i.ef = and <2 x i64> %i.ee, splat (i64 72340172838076673) ; 2 uses
  %i.eg = bitcast <2 x i64> %i.ef to <4 x i32>
  %i.eh = shl nuw nsw <4 x i32> %i.eg, splat (i32 4)
  %.inner60 = xor <4 x i32> %.inner52, %i.eh
  store <4 x i32> %.inner60, ptr %.phi.trans.insert12.i.i, align 16, !tbaa !13
  store <2 x i64> %i.ef, ptr %.phi.trans.insert20.i.i, align 16, !tbaa !13
  call fastcc void @_ZL22aes_nohw_decrypt_batchPK17AES_NOHW_SCHEDULEmP14AES_NOHW_BATCH(ptr noundef %5, i64 noundef %i.n, ptr noundef %6)
  %.sroa.0.i.sroa.0.0.copyload.i = load <2 x i64>, ptr %6, align 16
  %.sroa.0.i.sroa.6.0.copyload6.i = load <4 x i32>, ptr %.phi.trans.insert.i.i, align 16
  %.sroa.0.i.sroa.8.0.copyload.i = load <2 x i64>, ptr %.phi.trans.insert10.i.i, align 16
  %.sroa.0.i.sroa.10.0.copyload7.i = load <4 x i32>, ptr %.phi.trans.insert12.i.i, align 16
  %.sroa.0.i.sroa.12.0.copyload.i = load <2 x i64>, ptr %.phi.trans.insert14.i.i, align 16
  %.sroa.0.i.sroa.14.0.copyload8.i = load <4 x i32>, ptr %.phi.trans.insert16.i.i, align 16
  %.sroa.0.i.sroa.16.0.copyload.i = load <2 x i64>, ptr %.phi.trans.insert18.i.i, align 16
  %.sroa.0.i.sroa.18.0.copyload9.i = load <4 x i32>, ptr %.phi.trans.insert20.i.i, align 16, !tbaa !13
  %i.ei = shl <4 x i32> %.sroa.0.i.sroa.6.0.copyload6.i, splat (i32 1)
  %i.ej = bitcast <4 x i32> %i.ei to <2 x i64>
  %i.ek = and <2 x i64> %i.ej, splat (i64 -6148914691236517206)
  %i.el = and <2 x i64> %.sroa.0.i.sroa.0.0.copyload.i, splat (i64 6148914691236517205)
  %i.em = or disjoint <2 x i64> %i.ek, %i.el      ; 2 uses
  %i.en = shl <4 x i32> %.sroa.0.i.sroa.10.0.copyload7.i, splat (i32 1)
  %i.eo = bitcast <4 x i32> %i.en to <2 x i64>
  %i.ep = and <2 x i64> %i.eo, splat (i64 2459565876494606882)
  %i.eq = and <2 x i64> %.sroa.0.i.sroa.8.0.copyload.i, splat (i64 1229782938247303441)
  %i.er = or disjoint <2 x i64> %i.ep, %i.eq
  %i.es = shl <4 x i32> %.sroa.0.i.sroa.14.0.copyload8.i, splat (i32 1)
  %i.et = bitcast <4 x i32> %i.es to <2 x i64>
  %i.eu = and <2 x i64> %i.et, splat (i64 -6148914691236517206)
  %i.ev = and <2 x i64> %.sroa.0.i.sroa.12.0.copyload.i, splat (i64 6148914691236517205)
  %i.ew = or disjoint <2 x i64> %i.eu, %i.ev
  %i.ex = shl <4 x i32> %.sroa.0.i.sroa.18.0.copyload9.i, splat (i32 1)
  %i.ey = bitcast <4 x i32> %i.ex to <2 x i64>
  %i.ez = and <2 x i64> %i.ey, splat (i64 2459565876494606882)
  %i.fa = and <2 x i64> %.sroa.0.i.sroa.16.0.copyload.i, splat (i64 1229782938247303441)
  %i.fb = or disjoint <2 x i64> %i.ez, %i.fa
  %i.fc = bitcast <2 x i64> %i.em to <4 x i32>
  %i.fd = lshr <4 x i32> %i.fc, splat (i32 2)
  %i.fe = bitcast <4 x i32> %i.fd to <2 x i64>
  %.masked.i = and <2 x i64> %i.fe, splat (i64 3689348814741910323)
  %i.ff = xor <2 x i64> %.masked.i, %i.er
  %i.fg = bitcast <2 x i64> %i.ff to <4 x i32>
  %i.fh = shl nuw <4 x i32> %i.fg, splat (i32 2)
  %i.fi = bitcast <4 x i32> %i.fh to <2 x i64>
  %i.fj = xor <2 x i64> %i.em, %i.fi              ; 2 uses
  %i.fk = bitcast <2 x i64> %i.ew to <4 x i32>    ; 2 uses
  %i.fl = lshr <4 x i32> %i.fk, splat (i32 2)
  %i.fm = bitcast <4 x i32> %i.fl to <2 x i64>
  %.masked10.i = and <2 x i64> %i.fm, splat (i64 3689348814741910323)
  %i.fn = xor <2 x i64> %.masked10.i, %i.fb
  %i.fo = bitcast <2 x i64> %i.fn to <4 x i32>
  %i.fp = shl <4 x i32> %i.fo, splat (i32 6)
  %i.fq = shl <4 x i32> %i.fk, splat (i32 4)
  %i.fr = bitcast <2 x i64> %i.fj to <4 x i32>
  %i.fs = xor <4 x i32> %i.fq, %i.fr
  %i.ft = xor <4 x i32> %i.fs, %i.fp
  %i.fu = bitcast <4 x i32> %i.ft to <2 x i64>
  %i.fv = and <2 x i64> %i.fu, splat (i64 -1085102592571150096)
  %i.fw = xor <2 x i64> %i.fv, %i.fj              ; 2 uses
  %i.fx = bitcast <2 x i64> %i.fw to <16 x i8>    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  %.sroa.0.8.vec.extract = shufflevector <16 x i8> %i.fx, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x i8> %.sroa.0.8.vec.extract, ptr %i.l, align 1
  %i.fy = add nsw i64 %.02740, -1                 ; 2 uses
  %.not30 = icmp eq i64 %i.fy, 0
  br i1 %.not30, label %._crit_edge, label %bb.b, !llvm.loop !155

bb.c:                                             ; preds = %bb.a, %.split.us
  %.0 = phi i32 [ 1, %.split.us ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @AES_wrap_key_padded(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = add i64 %5, 7
  %i.c = and i64 %i.b, -8                         ; 4 uses
  store i64 0, ptr %2, align 8, !tbaa !94
  %i.d = add i64 %5, -4294967296
  %or.cond39 = icmp ult i64 %i.d, -4294967295
  %i.e = add nuw nsw i64 %i.c, 8
  %i.f = icmp ult i64 %3, %i.e
  %or.cond41 = select i1 %or.cond39, i1 true, i1 %i.f
  br i1 %or.cond41, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i32 -1504093786, ptr %i.a, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = trunc nuw i64 %5 to i32
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.h)
  store i32 %i.i, ptr %i.g, align 4
  %i.j = icmp samesign ult i64 %5, 9
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.k, ptr align 1 %4, i64 %5, i1 false)
  call void @aes_nohw_encrypt(ptr noundef nonnull readonly %i.a, ptr noundef %1, ptr noundef readonly %0)
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.l = tail call ptr @OPENSSL_malloc(i64 noundef %i.c) #36 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  store i64 0, ptr %i.o, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %4, i64 %5, i1 false)
  %i.p = call i32 @AES_wrap_key(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.l, i64 noundef %i.c) ; 2 uses
  call void @OPENSSL_free(ptr noundef nonnull %i.l) #36
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = zext nneg i32 %i.p to i64
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.f
  %.sink = phi i64 [ %i.r, %bb.f ], [ 16, %bb.c ]
  store i64 %.sink, ptr %2, align 8, !tbaa !94
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.d, %bb.e
  %.2 = phi i32 [ 0, %bb.e ], [ 0, %bb.d ], [ 1, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.3 = phi i32 [ %.2, %bb.g ], [ 0, %bb.a ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare ptr @OPENSSL_malloc(i64 noundef) local_unnamed_addr #7

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @AES_unwrap_key_padded(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  store i64 0, ptr %2, align 8, !tbaa !94
  %i.c = icmp ult i64 %5, 16
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %5, -8                           ; 2 uses
  %i.e = icmp ult i64 %3, %i.d
  br i1 %i.e, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.f = icmp eq i64 %5, 16
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @aes_nohw_decrypt(ptr noundef readonly %4, ptr noundef nonnull %i.b, ptr noundef readonly %0)
  %i.g = load i64, ptr %i.b, align 16
  store i64 %i.g, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8
  store i64 %i.i, ptr %1, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = call fastcc noundef i32 @_ZL20aes_unwrap_key_innerPK10aes_key_stPhS2_PKhm(ptr noundef %0, ptr noundef %1, ptr noundef %i.a, ptr noundef %4, i64 noundef %5)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.a, ptr noundef nonnull @_ZL16kPaddingConstant, i64 noundef 4) #36
  %i.l = icmp eq i32 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.0.copyload.i = load i32, ptr %i.m, align 4    ; 2 uses
  %i.n = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i)
  %i.o = zext i32 %i.n to i64                     ; 6 uses
  %i.p = icmp ne i32 %.0.copyload.i, 0
  %i.q = and i1 %i.l, %i.p
  %i.r = add nsw i64 %i.o, -1
  %i.s = add i64 %5, -9                           ; 3 uses
  %.unshifted = xor i64 %i.r, %i.s
  %i.t = icmp ult i64 %.unshifted, 8
  %i.u = and i1 %i.q, %i.t
  %i.v = sext i1 %i.u to i64                      ; 2 uses
  %i.w = add i64 %5, -15                          ; 3 uses
  %i.x = icmp ult i64 %i.w, %i.d
  br i1 %i.x, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.y = sub i64 %i.w, %i.o
  %i.z = sub i64 14, %5
  %i.aa = and i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %6 = load i8, ptr %i.ab, align 1, !tbaa !13
  %isnotneg.i.i.inv.1.a = icmp slt i64 %i.aa, 0
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %isnotneg.i.i.inv.1.a, i1 true, i1 %7
  %i.ac = add i64 %5, -14                         ; 2 uses
  %i.ad = sub i64 %i.ac, %i.o
  %i.ae = sub i64 13, %5
  %i.af = and i64 %i.ad, %i.ae
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  %10 = load i8, ptr %9, align 1, !tbaa !13
  %isnotneg.i.i.inv.1 = icmp slt i64 %i.af, 0
  %.fr45 = freeze i8 %10
  %11 = icmp eq i8 %.fr45, 0
  %12 = or i1 %isnotneg.i.i.inv.1, %11
  %13 = insertelement <4 x i64> poison, i64 %5, i64 0
  %14 = shufflevector <4 x i64> %13, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %15 = add <4 x i64> %14, <i64 -13, i64 -12, i64 -11, i64 -10> ; 2 uses
  %16 = sub <4 x i64> <i64 12, i64 11, i64 10, i64 9>, %14
  %17 = extractelement <4 x i64> %15, i64 0
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 %17
  %19 = insertelement <4 x i64> poison, i64 %i.o, i64 0
  %20 = shufflevector <4 x i64> %19, <4 x i64> poison, <4 x i32> zeroinitializer
  %21 = sub <4 x i64> %15, %20
  %22 = and <4 x i64> %21, %16
  %23 = load <4 x i8>, ptr %18, align 1, !tbaa !13
  %.fr44 = freeze <4 x i8> %23
  %i.ag = sub i64 %i.s, %i.o
  %i.ah = sub i64 8, %5
  %i.ai = and i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.s
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13
  %isnotneg.i.i.inv.5 = icmp slt i64 %i.ai, 0
  %i.al = icmp eq i8 %i.ak, 0
  %i.am = select i1 %isnotneg.i.i.inv.5, i1 true, i1 %i.al
  %24 = icmp sgt <4 x i64> %22, splat (i64 -1)
  %25 = icmp ne <4 x i8> %.fr44, zeroinitializer
  %26 = and <4 x i1> %24, %25
  %27 = bitcast <4 x i1> %26 to i4
  %i.an = icmp eq i4 %27, 0
  %i.ao = select i1 %i.an, i1 %i.am, i1 false
  %28 = freeze i1 %i.ao
  %29 = and i1 %28, %12
  %i.ap = select i1 %29, i1 %8, i1 false
  %i.aq = select i1 %i.ap, i64 %i.v, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.f
  %.032.lcssa = phi i64 [ %i.v, %bb.f ], [ %i.aq, %.lr.ph.preheader ] ; 2 uses
  %i.ar = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.032.lcssa) #38, !srcloc !156
  %i.as = and i64 %i.ar, %i.o
  store i64 %i.as, ptr %2, align 8, !tbaa !94
  %i.at = trunc nsw i64 %.032.lcssa to i32
  %i.au = and i32 %i.at, 1
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e
  %.033 = phi i32 [ 0, %bb.e ], [ %i.au, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.g
  %.1 = phi i32 [ %.033, %bb.g ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define void @AES_ctr128_encrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #5 {
bb.a:
  tail call void @CRYPTO_ctr128_encrypt_ctr32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull @aes_nohw_ctr32_encrypt_blocks)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @AES_ecb_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @aes_nohw_encrypt(ptr noundef readonly %0, ptr noundef %1, ptr noundef readonly %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @aes_nohw_decrypt(ptr noundef readonly %0, ptr noundef %1, ptr noundef readonly %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @AES_cbc_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  tail call void @aes_nohw_cbc_encrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @AES_ofb128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !18     ; 3 uses
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp ne i64 %2, 0
  %i.d = and i1 %i.c, %i.b
  br i1 %i.d, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.a
  %.038.lcssa.i = phi i64 [ %2, %bb.a ], [ %i.n, %.lr.ph.i ] ; 3 uses
  %.036.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %.034.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.a, %bb.a ], [ %i.p, %.lr.ph.i ]
  %i.e = icmp ugt i64 %.038.lcssa.i, 15
  br i1 %i.e, label %.lr.ph52.i, label %._crit_edge.i

.lr.ph52.i:                                       ; preds = %.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.045.i = phi i32 [ %i.p, %.lr.ph.i ], [ %i.a, %bb.a ] ; 2 uses
  %.03444.i = phi ptr [ %i.g, %.lr.ph.i ], [ %0, %bb.a ] ; 2 uses
  %.03643.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %.03842.i = phi i64 [ %i.n, %.lr.ph.i ], [ %2, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.03444.i, i64 1 ; 2 uses
  %i.h = load i8, ptr %.03444.i, align 1, !tbaa !13
  %i.i = zext i32 %.045.i to i64
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %i.l = xor i8 %i.k, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %.03643.i, i64 1 ; 2 uses
  store i8 %i.l, ptr %.03643.i, align 1, !tbaa !13
  %i.n = add i64 %.03842.i, -1                    ; 3 uses
  %i.o = add i32 %.045.i, 1
  %i.p = and i32 %i.o, 15                         ; 3 uses
  %i.q = icmp ne i32 %i.p, 0
  %i.r = icmp ne i64 %i.n, 0
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph.i, label %.preheader.i, !llvm.loop !157

bb.b:                                             ; preds = %bb.b, %.lr.ph52.i
  %.13551.i = phi ptr [ %.034.lcssa.i, %.lr.ph52.i ], [ %i.z, %bb.b ] ; 3 uses
  %.13750.i = phi ptr [ %.036.lcssa.i, %.lr.ph52.i ], [ %i.y, %bb.b ] ; 3 uses
  %.13949.i = phi i64 [ %.038.lcssa.i, %.lr.ph52.i ], [ %i.x, %bb.b ]
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %.0.copyload.i.i.i = load i64, ptr %.13551.i, align 1
  %.0.copyload.i7.i.i = load i64, ptr %4, align 1
  %i.t = xor i64 %.0.copyload.i7.i.i, %.0.copyload.i.i.i
  store i64 %i.t, ptr %.13750.i, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.13750.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.13551.i, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.v, align 1
  %.0.copyload.i7.1.i.i = load i64, ptr %i.f, align 1
  %i.w = xor i64 %.0.copyload.i7.1.i.i, %.0.copyload.i.1.i.i
  store i64 %i.w, ptr %i.u, align 1
  %i.x = add i64 %.13949.i, -16                   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.13750.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.13551.i, i64 16 ; 2 uses
  %i.aa = icmp ugt i64 %i.x, 15
  br i1 %i.aa, label %bb.b, label %._crit_edge.i, !llvm.loop !158

._crit_edge.i:                                    ; preds = %bb.b, %.preheader.i
  %.139.lcssa.i = phi i64 [ %.038.lcssa.i, %.preheader.i ], [ %i.x, %bb.b ] ; 5 uses
  %.137.lcssa.i = phi ptr [ %.036.lcssa.i, %.preheader.i ], [ %i.y, %bb.b ] ; 3 uses
  %.135.lcssa.i = phi ptr [ %.034.lcssa.i, %.preheader.i ], [ %i.z, %bb.b ] ; 3 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ 0, %bb.b ] ; 4 uses
  %.not.i = icmp eq i64 %.139.lcssa.i, 0
  br i1 %.not.i, label %CRYPTO_ofb128_encrypt.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  tail call void @aes_nohw_encrypt(ptr noundef readonly %4, ptr noundef %4, ptr noundef readonly %3)
  %xtraiter = and i64 %.139.lcssa.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.c
  %i.ab = add nsw i64 %.139.lcssa.i, -1
  %i.ac = zext i32 %.1.lcssa.i to i64             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 %i.ac
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !13
  %i.ah = xor i8 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.ac
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !13
  %i.aj = add i32 %.1.lcssa.i, 1                  ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.c
  %.lcssa.unr = phi i32 [ poison, %bb.c ], [ %i.aj, %.prol.loopexit.unr-lcssa ]
  %.258.i.unr = phi i32 [ %.1.lcssa.i, %bb.c ], [ %i.aj, %.prol.loopexit.unr-lcssa ]
  %.24057.i.unr = phi i64 [ %.139.lcssa.i, %bb.c ], [ %i.ab, %.prol.loopexit.unr-lcssa ]
  %i.ak = icmp eq i64 %.139.lcssa.i, 1
  br i1 %i.ak, label %CRYPTO_ofb128_encrypt.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.258.i = phi i32 [ %i.bb, %.new ], [ %.258.i.unr, %.prol.loopexit ] ; 3 uses
  %.24057.i = phi i64 [ %i.at, %.new ], [ %.24057.i.unr, %.prol.loopexit ]
  %i.al = zext i32 %.258.i to i64                 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 %i.al
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.aq = xor i8 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.al
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !13
  %i.as = add i32 %.258.i, 1
  %i.at = add i64 %.24057.i, -2                   ; 2 uses
  %i.au = zext i32 %i.as to i64                   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 %i.au
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !13
  %i.az = xor i8 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.au
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !13
  %i.bb = add i32 %.258.i, 2                      ; 2 uses
  %.not41.i.1 = icmp eq i64 %i.at, 0
  br i1 %.not41.i.1, label %CRYPTO_ofb128_encrypt.exit, label %.new, !llvm.loop !159

CRYPTO_ofb128_encrypt.exit:                       ; preds = %.prol.loopexit, %.new, %._crit_edge.i
  %.3.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.bb, %.new ]
  store i32 %.3.i, ptr %5, align 4, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @CRYPTO_ofb128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !18     ; 3 uses
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp ne i64 %2, 0
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.038.lcssa = phi i64 [ %2, %bb.a ], [ %i.n, %.lr.ph ] ; 3 uses
  %.036.lcssa = phi ptr [ %1, %bb.a ], [ %i.m, %.lr.ph ] ; 2 uses
  %.034.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.p, %.lr.ph ]
  %i.e = icmp ugt i64 %.038.lcssa, 15
  br i1 %i.e, label %.lr.ph52, label %._crit_edge

.lr.ph52:                                         ; preds = %.preheader
end_hunk_0
