inline.NumInlined: 59
inline.NumDeleted: 18
begin_hunk_0_@llvm.memcpy.p0.p0.i64
; Function Attrs: mustprogress uwtable
define hidden range(i32 -2147483648, 2147466624) i32 @mbedtls_rsa_pkcs1_encrypt(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17
  %cond = icmp eq i32 %i.b, 0
  br i1 %cond, label %bb.b, label %mbedtls_rsa_rsaes_pkcs1_v15_encrypt.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.e = icmp ugt i64 %3, -12
  %i.f = add nuw i64 %3, 11
  %i.g = icmp ult i64 %i.d, %i.f
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond.i, label %mbedtls_rsa_rsaes_pkcs1_v15_encrypt.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %5, align 1, !tbaa !22
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %mbedtls_rsa_rsaes_pkcs1_v15_encrypt.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 1
  %reass.sub.i = sub i64 %i.d, %3                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  store i8 2, ptr %i.i, align 1, !tbaa !22
  %.not52.i = icmp eq i64 %reass.sub.i, 3
  br i1 %.not52.i, label %._crit_edge.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.d
  %i.k = add i64 %reass.sub.i, -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.g, %.preheader.preheader.i
  %i.l = phi i64 [ %i.w, %bb.g ], [ %i.k, %.preheader.preheader.i ] ; 2 uses
  %.03553.i = phi ptr [ %i.v, %bb.g ], [ %i.j, %.preheader.preheader.i ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.preheader.i
  %.0.i = phi i32 [ %i.p, %bb.f ], [ 100, %.preheader.i ] ; 2 uses
  %i.m = tail call noundef i32 %1(ptr noundef %2, ptr noundef nonnull %.03553.i, i64 noundef 1), !inline_history !25 ; 3 uses
  %i.n = load i8, ptr %.03553.i, align 1, !tbaa !22
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %.0.i, -1                    ; 3 uses
  %i.q = icmp ne i32 %i.p, 0
  %i.r = icmp eq i32 %i.m, 0
  %or.cond3.i = and i1 %i.q, %i.r
  br i1 %or.cond3.i, label %bb.e, label %.critedge.i, !llvm.loop !23

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %.1.i = phi i32 [ %i.p, %bb.f ], [ %.0.i, %bb.e ]
  %i.s = icmp ne i32 %.1.i, 0
  %i.t = icmp eq i32 %i.m, 0
  %or.cond.not.i = and i1 %i.t, %i.s
  br i1 %or.cond.not.i, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %.critedge.i
  %i.u = add nsw i32 %i.m, -17536
  br label %mbedtls_rsa_rsaes_pkcs1_v15_encrypt.exit

bb.g:                                             ; preds = %.critedge.i
  %i.v = getelementptr inbounds nuw i8, ptr %.03553.i, i64 1 ; 2 uses
  %i.w = add i64 %i.l, -1
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %._crit_edge.i, label %.preheader.i

._crit_edge.i:                                    ; preds = %bb.g, %bb.d
  %.035.lcssa.i = phi ptr [ %i.j, %bb.d ], [ %i.v, %bb.g ] ; 2 uses
  store i8 0, ptr %.035.lcssa.i, align 1, !tbaa !22
  %.not45.i = icmp eq i64 %3, 0
  br i1 %.not45.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.x = getelementptr inbounds nuw i8, ptr %.035.lcssa.i, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr readonly align 1 %4, i64 %3, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %i.y = tail call i32 @mbedtls_rsa_public(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %5)
  br label %mbedtls_rsa_rsaes_pkcs1_v15_encrypt.exit

mbedtls_rsa_rsaes_pkcs1_v15_encrypt.exit:         ; preds = %bb.i, %.thread.i, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -16640, %bb.a ], [ %i.y, %bb.i ], [ -16512, %bb.b ], [ %i.u, %.thread.i ], [ -16512, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden range(i32 -2147483648, 2147466496) i32 @mbedtls_rsa_rsaes_pkcs1_v15_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17
  %.not = icmp ne i32 %i.e, 0
  %i.f = add i64 %i.c, -1025
  %or.cond = icmp ult i64 %i.f, -1009
  %or.cond19 = select i1 %.not, i1 true, i1 %or.cond
  br i1 %or.cond19, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @mbedtls_rsa_private(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %4, ptr noundef nonnull %i.a) ; 2 uses
  %.not18 = icmp eq i32 %i.g, 0
  br i1 %.not18, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.a, align 16, !tbaa !22
  %i.i = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !22
  %i.l = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.m = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.n = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.o = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.057.i = phi i64 [ 2, %bb.c ], [ %i.ag, %bb.d ] ; 2 uses
  %.04956.i = phi i64 [ %i.o, %bb.c ], [ %i.ac, %bb.d ]
  %.05055.i = phi i64 [ 0, %bb.c ], [ %i.af, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %.057.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !22
  %i.r = zext i8 %i.q to i64
  %i.s = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.t = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.u = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.v = xor i64 %i.s, %i.r
  %i.w = xor i64 %i.v, %i.t
  %i.x = xor i64 %i.w, %i.u                       ; 2 uses
  %i.y = sub i64 0, %i.x
  %i.z = lshr i64 %i.x, 1
  %i.aa = sub nsw i64 0, %i.z
  %i.ab = or i64 %i.aa, %i.y
  %isnotneg.i.i = icmp sgt i64 %i.ab, -1
  %i.ac = select i1 %isnotneg.i.i, i64 -1, i64 %.04956.i ; 3 uses
  %i.ad = and i64 %i.ac, 1
  %i.ae = xor i64 %i.ad, 1
  %i.af = add i64 %i.ae, %.05055.i                ; 3 uses
  %i.ag = add nuw nsw i64 %.057.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.c
  br i1 %exitcond.not.i, label %bb.e, label %bb.d, !llvm.loop !26

bb.e:                                             ; preds = %bb.d
  %i.ah = add nsw i64 %i.c, -11                   ; 2 uses
  %i.ai = call i64 @llvm.umin.i64(i64 %6, i64 %i.ah) ; 7 uses
  %i.aj = zext i8 %i.h to i64
  %i.ak = xor i64 %i.i, %i.aj                     ; 2 uses
  %i.al = sub i64 0, %i.ak
  %i.am = lshr i64 %i.ak, 1
  %i.an = sub nsw i64 0, %i.am
  %i.ao = xor i8 %i.k, 2
  %i.ap = zext i8 %i.ao to i64
  %i.aq = xor i64 %i.l, %i.ap
  %i.ar = xor i64 %i.aq, %i.m
  %i.as = xor i64 %i.ar, %i.n                     ; 2 uses
  %i.at = sub i64 0, %i.as
  %i.au = lshr i64 %i.as, 1
  %i.av = sub nsw i64 0, %i.au
  %i.aw = or i64 %i.an, %i.al
  %i.ax = or i64 %i.aw, %i.at
  %.neg.i.i54.i = or i64 %i.ax, %i.av
  %i.ay = ashr i64 %.neg.i.i54.i, 63
  %i.az = xor i64 %i.ac, -1
  %i.ba = or i64 %i.ay, %i.az
  %i.bb = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.bc = xor i64 %i.bb, %i.af                    ; 2 uses
  %i.bd = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10 ; 3 uses
  %i.be = xor i64 %i.bd, 8
  %i.bf = xor i64 %i.bc, %i.bd
  %i.bg = lshr i64 %i.bf, 63
  %i.bh = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10 ; 2 uses
  %i.bi = xor i64 %i.bg, %i.bh
  %i.bj = sub i64 0, %i.bi
  %i.bk = lshr i64 %i.bh, 1
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = or i64 %i.bj, %i.bl
  %.neg.i.i.i.i = ashr i64 %i.bm, 63              ; 2 uses
  %i.bn = sub i64 %i.bc, %i.be
  %i.bo = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.bp = xor i64 %i.bo, %.neg.i.i.i.i
  %i.bq = xor i64 %i.bp, -1
  %i.br = and i64 %.neg.i.i.i.i, %i.bd
  %i.bs = and i64 %i.bn, %i.bq
  %i.bt = or i64 %i.bs, %i.br
  %i.bu = lshr i64 %i.bt, 63
  %i.bv = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10 ; 2 uses
  %i.bw = xor i64 %i.bu, %i.bv
  %i.bx = sub i64 0, %i.bw
  %i.by = lshr i64 %i.bv, 1
  %i.bz = sub nsw i64 0, %i.by
  %i.ca = or i64 %i.bx, %i.bz
  %.neg.i10.i.i.i = ashr i64 %i.ca, 63
  %i.cb = or i64 %i.ba, %.neg.i10.i.i.i           ; 5 uses
  %i.cc = add nuw nsw i64 %i.c, 4294967293
  %i.cd = sub i64 %i.cc, %i.af
  %7 = and i64 %i.cd, 4294967295
  %i.ce = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.cf = xor i64 %i.ce, %i.cb
  %i.cg = xor i64 %i.cf, -1
  %i.ch = and i64 %i.cb, %i.ai
  %i.ci = and i64 %7, %i.cg
  %i.cj = or i64 %i.ci, %i.ch                     ; 2 uses
  %i.ck = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.cl = xor i64 %i.ck, %i.ai                    ; 2 uses
  %i.cm = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10 ; 3 uses
  %i.cn = xor i64 %i.cj, %i.cm
  %i.co = xor i64 %i.cl, %i.cm
  %i.cp = lshr i64 %i.co, 63
  %i.cq = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10 ; 2 uses
  %i.cr = xor i64 %i.cp, %i.cq
  %i.cs = sub i64 0, %i.cr
  %i.ct = lshr i64 %i.cq, 1
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = or i64 %i.cs, %i.cu
  %.neg.i.i.i52.i = ashr i64 %i.cv, 63            ; 2 uses
  %i.cw = sub i64 %i.cl, %i.cn
  %i.cx = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.cy = xor i64 %i.cx, %.neg.i.i.i52.i
  %i.cz = xor i64 %i.cy, -1
  %i.da = and i64 %.neg.i.i.i52.i, %i.cm
  %i.db = and i64 %i.cw, %i.cz
  %i.dc = or i64 %i.db, %i.da
  %i.dd = lshr i64 %i.dc, 63
  %i.de = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10 ; 2 uses
  %i.df = xor i64 %i.dd, %i.de
  %i.dg = sub i64 0, %i.df
  %i.dh = lshr i64 %i.de, 1
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = or i64 %i.dg, %i.di
  %.neg.i10.i.i53.i = ashr i64 %i.dj, 63          ; 4 uses
  %i.dk = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.dl = or i64 %.neg.i10.i.i53.i, %i.cb
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  call void @_Z21mbedtls_ct_zeroize_ifmPvm(i64 noundef %i.dl, ptr noundef nonnull %i.dm, i64 noundef %i.ah)
  %i.dn = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !10
  %i.do = xor i64 %i.dn, %.neg.i10.i.i53.i
  %i.dp = xor i64 %i.do, -1
  %i.dq = and i64 %.neg.i10.i.i53.i, %i.ai
  %i.dr = and i64 %i.cj, %i.dp
  %i.ds = or i64 %i.dr, %i.dq                     ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.c
  %i.du = sub nsw i64 0, %i.ai
  %i.dv = getelementptr inbounds i8, ptr %i.dt, i64 %i.du ; 2 uses
  %i.dw = sub nsw i64 %i.ai, %i.ds
  call void @_Z23mbedtls_ct_memmove_leftPvmm(ptr noundef nonnull %i.dv, i64 noundef %i.ai, i64 noundef %i.dw)
  %.not.i = icmp eq i64 %6, 0
  br i1 %.not.i, label %_ZL36mbedtls_ct_rsaes_pkcs1_v15_unpaddingPhmS_mPm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr nonnull align 1 %i.dv, i64 %i.ai, i1 false)
  br label %_ZL36mbedtls_ct_rsaes_pkcs1_v15_unpaddingPhmS_mPm.exit

_ZL36mbedtls_ct_rsaes_pkcs1_v15_unpaddingPhmS_mPm.exit: ; preds = %bb.e, %bb.f
  %i.dx = xor i64 %i.cb, %i.dk
  %i.dy = and i64 %i.dx, 17408
  %i.dz = xor i64 %i.dy, 17408
  %i.ea = and i64 %.neg.i10.i.i53.i, %i.dz
  %i.eb = and i64 %i.cb, 16640
  %i.ec = or i64 %i.ea, %i.eb
  %i.ed = trunc nuw nsw i64 %i.ec to i32
  %i.ee = sub nsw i32 0, %i.ed
  store i64 %i.ds, ptr %3, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %_ZL36mbedtls_ct_rsaes_pkcs1_v15_unpaddingPhmS_mPm.exit
  %.015 = phi i32 [ %i.g, %bb.b ], [ %i.ee, %_ZL36mbedtls_ct_rsaes_pkcs1_v15_unpaddingPhmS_mPm.exit ]
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 1024)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.0 = phi i32 [ %.015, %bb.g ], [ -16512, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden range(i32 -2147483648, 2147466496) i32 @mbedtls_rsa_pkcs1_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17
  %cond = icmp eq i32 %i.b, 0
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @mbedtls_rsa_rsaes_pkcs1_v15_decrypt(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ -16640, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden range(i32 -2147483648, 2147466624) i32 @mbedtls_rsa_rsassa_pkcs1_v15_sign(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = or i32 %4, %3
  %or.cond = icmp ne i32 %i.a, 0
  %i.b = icmp eq ptr %5, null
  %or.cond3 = and i1 %or.cond, %i.b
  br i1 %or.cond3, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !12
  %i.g = tail call fastcc noundef i32 @_ZL27rsa_rsassa_pkcs1_v15_encode17mbedtls_md_type_tjPKhmPh(i32 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %i.f, ptr noundef %6) ; 2 uses
  %.not46 = icmp eq i32 %i.g, 0
  br i1 %.not46, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %i.i = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.h) #10 ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.h) #10 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.i) #9
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.m = tail call i32 @mbedtls_rsa_private(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %6, ptr noundef nonnull %i.i) ; 2 uses
  %.not47 = icmp eq i32 %i.m, 0
  br i1 %.not47, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @mbedtls_rsa_public(ptr noundef nonnull %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k) ; 2 uses
  %.not48 = icmp eq i32 %i.n, 0
  br i1 %.not48, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.o = load i64, ptr %i.e, align 8, !tbaa !12
  %i.p = tail call noundef i32 @_Z17mbedtls_ct_memcmpPKvS0_m(ptr noundef nonnull %i.k, ptr noundef %6, i64 noundef %i.o)
  %.not49 = icmp eq i32 %i.p, 0
  br i1 %.not49, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.q = load i64, ptr %i.e, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr nonnull align 1 %i.i, i64 %i.q, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.j
  %.0 = phi i32 [ %i.m, %bb.g ], [ %i.n, %bb.h ], [ 0, %bb.j ], [ -17152, %bb.i ] ; 2 uses
  %i.r = load i64, ptr %i.e, align 8, !tbaa !12
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.i, i64 noundef %i.r)
  %i.s = load i64, ptr %i.e, align 8, !tbaa !12
  tail call void @_Z24mbedtls_zeroize_and_freePvm(ptr noundef nonnull %i.k, i64 noundef %i.s)
  %.not50 = icmp eq i32 %.0, 0
  br i1 %.not50, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = load i64, ptr %i.e, align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 33, i64 %i.t, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.d, %bb.c, %bb.b, %bb.a, %bb.f
  %.040 = phi i32 [ -16, %bb.d ], [ -16512, %bb.a ], [ -16512, %bb.b ], [ %i.g, %bb.c ], [ -16, %bb.f ], [ %.0, %bb.l ], [ 0, %bb.k ]
  ret i32 %.040
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 -16512, 1) i32 @_ZL27rsa_rsassa_pkcs1_v15_encode17mbedtls_md_type_tjPKhmPh(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 0, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr null, ptr %i.b, align 8, !tbaa !7
  %.not = icmp eq i32 %0, 0                       ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @mbedtls_md_info_from_type(i32 noundef %0)
  %i.d = tail call zeroext i8 @mbedtls_md_get_size(ptr noundef %i.c) ; 2 uses
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext i8 %i.d to i32
  %i.g = call i32 @mbedtls_oid_get_oid_by_md(i32 noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %.not70 = icmp eq i32 %i.g, 0
  %.not71 = icmp eq i32 %1, %i.f
  %or.cond = and i1 %.not71, %.not70
  br i1 %or.cond, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.h = add nuw nsw i32 %1, 8
  %i.i = zext nneg i32 %i.h to i64
  %i.j = load i64, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.k = add i64 %i.j, %i.i
  %i.l = icmp ugt i64 %i.k, 127
  br i1 %i.l, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nuw nsw i32 %1, 10
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = add i64 %i.j, %i.n                       ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = icmp ult i64 %3, %i.o
  %or.cond73 = or i1 %i.p, %i.q
  br i1 %or.cond73, label %.critedge, label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.r = zext i32 %1 to i64                       ; 2 uses
  %i.s = icmp ult i64 %3, %i.r
  br i1 %i.s, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = phi i64 [ %i.j, %bb.e ], [ 0, %bb.f ]    ; 4 uses
  %.pn = phi i64 [ %i.o, %bb.e ], [ %i.r, %bb.f ]
  %.161 = sub nuw i64 %3, %.pn                    ; 3 uses
  %i.u = icmp ult i64 %.161, 11
  br i1 %i.u, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = add i64 %.161, -3                        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 0, ptr %4, align 1, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 3 uses
  store i8 1, ptr %i.w, align 1, !tbaa !22
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 -1, i64 %i.v, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  store i8 0, ptr %i.y, align 1, !tbaa !22
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = zext i32 %1 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %2, i64 %i.aa, i1 false)
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i8 48, ptr %i.z, align 1, !tbaa !22
  %i.ac = zext i32 %1 to i64                      ; 3 uses
  %i.ad = add nuw nsw i64 %i.ac, 8
  %i.ae = add i64 %i.ad, %i.t
  %i.af = trunc i64 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %.161 ; 5 uses
  store i8 %i.af, ptr %i.ab, align 1, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 48, ptr %i.ag, align 1, !tbaa !22
  %i.ai = trunc i64 %i.t to i8                    ; 2 uses
  %i.aj = add i8 %i.ai, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !22
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  store i8 6, ptr %i.ak, align 1, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  store i8 %i.ai, ptr %i.al, align 1, !tbaa !22
end_hunk_0
