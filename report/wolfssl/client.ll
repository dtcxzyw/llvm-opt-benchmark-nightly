Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/client?download=true
inline.NumInlined: 45
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ClientBenchmarkThroughput:bb.a
  call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.195) #26
  unreachable

current_time.exit139:                             ; preds = %bb.x
  %i.bu = load i64, ptr %16, align 8, !tbaa !34
  %i.bv = sitofp i64 %i.bu to double
  %i.bw = load i64, ptr %i.am, align 8, !tbaa !35
  %i.bx = sitofp i64 %i.bw to double
  %i.by = fdiv double %i.bx, 1.000000e+06
  %i.bz = fadd double %i.by, %i.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.ca = fsub double %i.bz, %i.bk
  %i.cb = fadd double %.0115184, %i.ca            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  store i64 2, ptr %15, align 8, !tbaa !34
  store i64 0, ptr %i.an, align 8, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %13, i8 0, i64 128, i1 false), !tbaa !36
  %i.cc = load i64, ptr %i.at, align 8, !tbaa !36
  %i.cd = or i64 %i.cc, %i.aq
  store i64 %i.cd, ptr %i.at, align 8, !tbaa !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %14, i8 0, i64 128, i1 false), !tbaa !36
  %i.ce = load i64, ptr %i.av, align 8, !tbaa !36
  %i.cf = or i64 %i.ce, %i.aq
  store i64 %i.cf, ptr %i.av, align 8, !tbaa !36
  %i.cg = call i32 @select(i32 noundef %i.au, ptr noundef nonnull %13, ptr noundef null, ptr noundef nonnull %14, ptr noundef nonnull %15) #21
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %bb.z, label %tcp_select.exit.thread

bb.z:                                             ; preds = %current_time.exit139
  %i.ci = load i64, ptr %i.at, align 8, !tbaa !36
  %i.cj = and i64 %i.ci, %i.aq
  %.not33.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not33.i.i, label %tcp_select.exit.thread, label %bb.aa

tcp_select.exit.thread:                           ; preds = %bb.z, %current_time.exit139
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.ck = call i32 @gettimeofday(ptr noundef nonnull %12, ptr noundef null) #21
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %bb.ab, label %current_time.exit140

bb.ab:                                            ; preds = %bb.aa
  call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.195) #26
  unreachable

current_time.exit140:                             ; preds = %bb.aa
  %i.cm = load i64, ptr %12, align 8, !tbaa !34
  %i.cn = sitofp i64 %i.cm to double
  %i.co = load i64, ptr %i.aw, align 8, !tbaa !35
  %i.cp = sitofp i64 %i.co to double
  %i.cq = fdiv double %i.cp, 1.000000e+06
  %i.cr = fadd double %i.cq, %i.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.cs = icmp sgt i32 %i.bc, 0
  br i1 %i.cs, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %current_time.exit140, %bb.ah
  %.0104183 = phi i32 [ %.1105, %bb.ah ], [ 0, %current_time.exit140 ] ; 4 uses
  %.3182 = phi i32 [ %.4, %bb.ah ], [ %.2149, %current_time.exit140 ]
  %i.ct = zext nneg i32 %.0104183 to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ct
  %i.cv = sub nsw i32 %i.bc, %.0104183
  %i.cw = call i32 @wolfSSL_read(ptr noundef nonnull %i.k, ptr noundef nonnull %i.cu, i32 noundef %i.cv) #21 ; 2 uses
  %i.cx = icmp slt i32 %i.cw, 1
  br i1 %i.cx, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %.lr.ph
  %i.cy = call i32 @wolfSSL_get_error(ptr noundef nonnull %i.k, i32 noundef 0) #21 ; 3 uses
  %i.cz = add i32 %i.cy, -4
  %or.cond4 = icmp ult i32 %i.cz, -2
  br i1 %or.cond4, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %.b128 = load i1, ptr @quieter, align 4
  br i1 %.b128, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.db = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.da, ptr noundef nonnull @.str.199, i32 noundef %i.cy) #28 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call fastcc void @err_sys(ptr noundef nonnull @.str.187) #26
  unreachable

bb.ag:                                            ; preds = %.lr.ph
  %i.dc = add nuw nsw i32 %i.cw, %.0104183
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ac, %bb.ag
  %.4 = phi i32 [ %i.cy, %bb.ac ], [ %.3182, %bb.ag ] ; 2 uses
  %.1105 = phi i32 [ %.0104183, %bb.ac ], [ %i.dc, %bb.ag ] ; 2 uses
  %i.dd = icmp slt i32 %.1105, %i.bc
  br i1 %i.dd, label %.lr.ph, label %._crit_edge, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.ah, %current_time.exit140
  %.3.lcssa = phi i32 [ %.2149, %current_time.exit140 ], [ %.4, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.de = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #21
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.ai, label %current_time.exit141

bb.ai:                                            ; preds = %._crit_edge
  call fastcc void @err_sys_with_errno(ptr noundef nonnull @.str.195) #26
  unreachable

current_time.exit141:                             ; preds = %._crit_edge
  %i.dg = load i64, ptr %11, align 8, !tbaa !34
  %i.dh = sitofp i64 %i.dg to double
  %i.di = load i64, ptr %i.ax, align 8, !tbaa !35
  %i.dj = sitofp i64 %i.di to double
  %i.dk = fdiv double %i.dj, 1.000000e+06
  %i.dl = fadd double %i.dk, %i.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.dm = fsub double %i.dl, %i.cr
  %i.dn = fadd double %.0110185, %i.dm
  br label %bb.aj

bb.aj:                                            ; preds = %tcp_select.exit.thread, %current_time.exit141
  %.1111 = phi double [ %i.dn, %current_time.exit141 ], [ %.0110185, %tcp_select.exit.thread ] ; 2 uses
  %.5 = phi i32 [ %.3.lcssa, %current_time.exit141 ], [ %.2149, %tcp_select.exit.thread ]
  %i.do = sext i32 %i.bc to i64                   ; 2 uses
  %bcmp = call i32 @bcmp(ptr nonnull %i.ad, ptr nonnull %i.ae, i64 %i.do)
  %.not134 = icmp eq i32 %bcmp, 0
  br i1 %.not134, label %bb.o, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @wolfSSL_Free(ptr noundef nonnull %i.ad) #21
  call void @wolfSSL_Free(ptr noundef nonnull %i.ae) #21
  call fastcc void @err_sys(ptr noundef nonnull @.str.200) #26
  unreachable

.thread151:                                       ; preds = %bb.o, %bb.v
  %.0115181 = phi double [ %.0115184, %bb.v ], [ %i.cb, %bb.o ]
  %.0110173 = phi double [ %.0110185, %bb.v ], [ %.1111, %bb.o ]
  %.7 = phi i32 [ %i.bp, %bb.v ], [ %.5, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call void @wolfSSL_Free(ptr noundef nonnull %i.ad) #21
  call void @wolfSSL_Free(ptr noundef nonnull %i.ae) #21
  %i.dp = fmul double %i.ab, 1.000000e+03
  br label %bb.ar

bb.al:                                            ; preds = %bb.l
  call fastcc void @err_sys(ptr noundef nonnull @.str.201) #26
  unreachable

bb.am:                                            ; preds = %current_time.exit137
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.202) #26
  unreachable

bb.an:                                            ; preds = %bb.i
  %i.dq = tail call i32 @wolfSSL_get_error(ptr noundef nonnull %i.k, i32 noundef 0) #21 ; 3 uses
  %.b = load i1, ptr @quieter, align 4
  br i1 %.b, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ds = sext i32 %i.dq to i64
  %i.dt = tail call ptr @wolfSSL_ERR_error_string(i64 noundef %i.ds, ptr noundef null) #21
  %i.du = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.63, i32 noundef %i.dq, ptr noundef %i.dt) #28 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.not131 = icmp eq i32 %8, 0
  br i1 %.not131, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.64) #26
  unreachable

bb.ar:                                            ; preds = %bb.ap, %.thread151
  %.0119 = phi double [ %i.dp, %.thread151 ], [ 0.000000e+00, %bb.ap ]
  %.3118 = phi double [ %.0115181, %.thread151 ], [ 0.000000e+00, %bb.ap ] ; 2 uses
  %.4114 = phi double [ %.0110173, %.thread151 ], [ 0.000000e+00, %bb.ap ] ; 2 uses
  %.8 = phi i32 [ %.7, %.thread151 ], [ %i.dq, %bb.ap ]
  %i.dv = call i32 @wolfSSL_shutdown(ptr noundef nonnull %i.k) #21 ; 0 uses
  call void @wolfSSL_free(ptr noundef nonnull %i.k) #21
  %i.dw = call i32 @close(i32 noundef %i.m) #21   ; 0 uses
  %.not136 = icmp eq i32 %8, 0
  br i1 %.not136, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dx = fmul double %.3118, 1.000000e+03
  %i.dy = uitofp i64 %5 to double
  %i.dz = fmul double %.4114, 1.000000e+03
  %i.ea = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ec = insertelement <2 x double> poison, double %.3118, i64 0
  %i.ed = insertelement <2 x double> %i.ec, double %.4114, i64 1
  %i.ee = fdiv <2 x double> %i.eb, %i.ed
  %i.ef = fmul <2 x double> %i.ee, splat (double f0x3F50000000000000) ; 2 uses
  %21 = extractelement <2 x double> %i.ef, i64 0
  %22 = fmul double %21, f0x3F50000000000000
  %i.eg = extractelement <2 x double> %i.ef, i64 1
  %23 = fmul double %i.eg, f0x3F50000000000000
  %i.eh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.203, i64 noundef %5, double noundef %.0119, double noundef %i.dx, double noundef %22, double noundef %i.dz, double noundef %23) ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %.0120 = phi i32 [ 0, %bb.as ], [ %.8, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0120
}

declare ptr @wolfSSL_new(ptr noundef) local_unnamed_addr #7

declare i32 @wolfSSL_use_certificate_chain_file_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @wolfSSL_use_PrivateKey_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @SetKeyShare(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = icmp eq i32 %1, 0
  switch i32 %1, label %bb.e [
    i32 2, label %bb.b
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = tail call i32 @wolfSSL_UseKeyShare(ptr noundef nonnull %0, i16 noundef zeroext 23) #21
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 23, ptr %i.a, align 16, !tbaa !10
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.204) #26
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c
  %.1 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ]        ; 3 uses
  %or.cond3 = icmp ult i32 %1, 2
  br i1 %or.cond3, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.e = tail call i32 @wolfSSL_UseKeyShare(ptr noundef nonnull %0, i16 noundef zeroext 256) #21
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = add nuw nsw i32 %.1, 1
  %i.h = zext nneg i32 %.1 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h
  store i32 256, ptr %i.i, align 4, !tbaa !10
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.205) #26
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.e
  %.3 = phi i32 [ %i.g, %bb.g ], [ %.1, %bb.e ]   ; 3 uses
  %i.j = icmp eq i32 %1, 3
  %or.cond5 = or i1 %i.b, %i.j
  %i.k = icmp ne i32 %2, 0
  %or.cond15 = and i1 %or.cond5, %i.k
  br i1 %or.cond15, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(18) @.str.206) #22
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(19) @.str.207) #22
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.208) #26
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i32 [ 4587, %bb.j ], [ 4589, %bb.k ]  ; 2 uses
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.209, ptr noundef nonnull %3) ; 0 uses
  %i.q = trunc nuw nsw i32 %.0 to i16
  %i.r = tail call i32 @wolfSSL_UseKeyShare(ptr noundef nonnull %0, i16 noundef zeroext %i.q) #21
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.t = zext nneg i32 %.3 to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t
  store i32 %.0, ptr %i.u, align 4, !tbaa !10
  %i.v = add nuw nsw i32 %.3, 1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.210) #26
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.n
  %.5 = phi i32 [ %i.v, %bb.n ], [ %.3, %bb.i ]   ; 2 uses
  %i.w = icmp ne i32 %4, 0
  %i.x = icmp ne i32 %.5, 0
  %or.cond7 = and i1 %i.w, %i.x
  br i1 %or.cond7, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.y = call i32 @wolfSSL_set_groups(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %.5) #21
  %.not = icmp eq i32 %i.y, 1
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call fastcc void @err_sys(ptr noundef nonnull @.str.212) #26
  unreachable

bb.s:                                             ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare i32 @wolfSSL_NoKeyShares(ptr noundef) local_unnamed_addr #7

declare i32 @wolfSSL_SetEnableDhKeyTest(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @wolfSSL_AllowEncryptThenMac(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @tcp_connect(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i16 noundef zeroext %2, i32 noundef %3, ptr noundef nonnull %4) unnamed_addr #10 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct.sockaddr_in, align 4        ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.c = zext i16 %2 to i32
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.213, ptr noundef %1, i32 noundef %i.c) #28 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__ctype_b_loc() #27
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.g = load i8, ptr %1, align 1, !tbaa !16
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2, !tbaa !23
  %i.k = and i16 %i.j, 1024
  %.not18.i = icmp eq i16 %i.k, 0
  br i1 %.not18.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @gethostbyname(ptr noundef nonnull %1) #21 ; 3 uses
  %.not19.i = icmp eq ptr %i.l, null
  br i1 %.not19.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @err_sys(ptr noundef nonnull @.str.217) #26
  unreachable

bb.e:                                             ; preds = %bb.a
  store i16 2, ptr %5, align 4, !tbaa !26
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %2)
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %rev.i.i, ptr %i.m, align 2, !tbaa !27
  br label %build_addr.exit

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30
  %i.t = sext i32 %i.s to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 1 %i.q, i64 %i.t, i1 false)
  store i16 2, ptr %5, align 4, !tbaa !26
  %rev.i22.i = tail call noundef i16 @llvm.bswap.i16(i16 %2)
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %rev.i22.i, ptr %i.u, align 2, !tbaa !27
  br label %build_addr.exit

bb.g:                                             ; preds = %bb.b
  store i16 2, ptr %5, align 4, !tbaa !26
  %rev.i2226.i = tail call noundef i16 @llvm.bswap.i16(i16 %2)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %rev.i2226.i, ptr %i.v, align 2, !tbaa !27
  %i.w = tail call i32 @inet_addr(ptr noundef nonnull %1) #21
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.w, ptr %i.x, align 4, !tbaa !31
  br label %build_addr.exit

build_addr.exit:                                  ; preds = %bb.e, %bb.f, %bb.g
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.split, label %.thread.i

.split:                                           ; preds = %build_addr.exit
  %i.y = tail call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #21 ; 2 uses
  store i32 %i.y, ptr %0, align 4, !tbaa !10
end_hunk_0
