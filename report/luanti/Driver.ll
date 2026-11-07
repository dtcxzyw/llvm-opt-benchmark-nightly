Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/Driver?download=true
inline.NumInlined: 2295
inline.NumDeleted: 773
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN5video18COpenGL3DriverBase21setRenderStates2DModeEbbb:bb.a
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i
  store i32 770, ptr %i.cp, align 4, !tbaa !193
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv.i
  store i32 771, ptr %i.cq, align 4, !tbaa !193
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.i
  store i32 770, ptr %i.cr, align 4, !tbaa !193
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i
  store i32 771, ptr %i.cs, align 4, !tbaa !193
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !209
  %i.cu = zext i32 %i.ct to i64
  %i.cv = icmp samesign ult i64 %indvars.iv.next.i, %i.cu
  br i1 %i.cv, label %bb.w, label %._crit_edge.i17, !llvm.loop !3

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit: ; preds = %bb.u, %._crit_edge.i17
  %i.cw = phi ptr [ %i.bo, %bb.u ], [ %.pre32, %._crit_edge.i17 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 80 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !210
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !193
  %.not.i19 = icmp ne i32 %i.cz, 32774
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 128 ; 2 uses
  %i.db = load i8, ptr %i.da, align 8, !range !144
  %i.dc = trunc nuw i8 %i.db to i1
  %or.cond.i20 = select i1 %.not.i19, i1 true, i1 %i.dc
  br i1 %or.cond.i20, label %bb.x, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setBlendEquationEj.exit

bb.x:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 720), align 8, !tbaa !216
  tail call void %i.dd(i32 noundef 32774), !inline_history !6
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 72 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !209
  %.not9.i21 = icmp eq i32 %i.df, 0
  br i1 %.not9.i21, label %._crit_edge.i25, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.x
  %i.dg = load ptr, ptr %i.cx, align 8, !tbaa !210
  br label %bb.y

._crit_edge.i25:                                  ; preds = %bb.y, %bb.x
  store i8 0, ptr %i.da, align 8, !tbaa !312
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setBlendEquationEj.exit

bb.y:                                             ; preds = %bb.y, %.lr.ph.i22
  %indvars.iv.i23 = phi i64 [ 0, %.lr.ph.i22 ], [ %indvars.iv.next.i24, %bb.y ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.i23
  store i32 32774, ptr %i.dh, align 4, !tbaa !193
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %i.di = load i32, ptr %i.de, align 8, !tbaa !209
  %i.dj = zext i32 %i.di to i64
  %i.dk = icmp samesign ult i64 %indvars.iv.next.i24, %i.dj
  br i1 %i.dk, label %bb.y, label %._crit_edge.i25, !llvm.loop !7

bb.z:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit
  %.not.i26 = icmp ne i8 %i.bf, 0
  %or.cond.i27 = select i1 %.not.i26, i1 true, i1 %i.bi
  br i1 %or.cond.i27, label %bb.aa, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setBlendEquationEj.exit

bb.aa:                                            ; preds = %bb.z
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 224), align 8
  tail call void %i.dl(i32 noundef 3042), !inline_history !1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !209 ; 2 uses
  %.not9.i28 = icmp eq i32 %i.dn, 0
  br i1 %.not9.i28, label %._crit_edge.i30, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.aa
  %i.do = load ptr, ptr %i.bd, align 8, !tbaa !215
  %i.dp = zext i32 %i.dn to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.do, i8 0, i64 %i.dp, i1 false), !tbaa !218
  br label %._crit_edge.i30

._crit_edge.i30:                                  ; preds = %.lr.ph.i29, %bb.aa
  store i8 0, ptr %i.bg, align 2, !tbaa !230
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setBlendEquationEj.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setBlendEquationEj.exit: ; preds = %._crit_edge.i30, %bb.z, %._crit_edge.i25, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit
  %i.dq = load ptr, ptr %i.al, align 8, !tbaa !139
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !181
  store ptr %i.ds, ptr %i.ag, align 8, !tbaa !159
  %i.dt = load ptr, ptr %0, align 8, !tbaa !35
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = load ptr, ptr %i.du, align 8
  tail call void %i.dv(ptr noundef nonnull align 8 dereferenceable(2528) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(64) @_ZN4core14IdentityMatrixE)
  br i1 %2, label %.sink.split, label %bb.ab

.sink.split:                                      ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setBlendEquationEj.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !313, !range !144, !noundef !145
  %i.dy = trunc nuw i8 %i.dx to i1
  %. = select i1 %i.dy, i64 624, i64 752
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 %.
  tail call void @_ZN5video18COpenGL3DriverBase22setTextureRenderStatesERKNS_9SMaterialEb(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr noundef nonnull align 8 dereferenceable(127) %i.dz, i1 noundef zeroext false)
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setBlendEquationEj.exit
  %i.ea = load ptr, ptr %i.af, align 8, !tbaa !232 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !35
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = tail call noundef zeroext i1 %i.ee(ptr noundef nonnull align 8 dereferenceable(84) %i.ea, ptr noundef nonnull %i.eb, i32 noundef 0) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase11draw2DImageEPKNS_8ITextureERKN4core8vector2dIiEERKNS4_4rectIiEEPSB_NS_6SColorEb(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef %4, i32 %5, i1 noundef zeroext %6) unnamed_addr #3 align 2 {
bb.a:
  %7 = alloca [4 x %"class.video::SColor"], align 16 ; 4 uses
  %8 = alloca %"class.core::rect", align 8        ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !314  ; 2 uses
  %i.c = load i32, ptr %3, align 4, !tbaa !315    ; 2 uses
  %.not.i = icmp sge i32 %i.b, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp sge i32 %i.e, %i.g
  %i.i = select i1 %.not.i, i1 %i.h, i1 false
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.j = insertelement <4 x i32> poison, i32 %5, i64 0
  %i.k = shufflevector <4 x i32> %i.j, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.k, ptr %7, align 16, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.l = sub i32 %i.b, %i.c
  %i.m = sub i32 %i.e, %i.g
  %i.n = load i64, ptr %2, align 4                ; 3 uses
  store i64 %i.n, ptr %8, align 8, !tbaa !193
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = trunc i64 %i.n to i32
  %i.q = add nsw i32 %i.l, %i.p
  %i.r = lshr i64 %i.n, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = add nsw i32 %i.m, %i.s
  store i32 %i.q, ptr %i.o, align 8, !tbaa !316
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %i.t, ptr %i.u, align 4, !tbaa !317
  %i.v = load ptr, ptr %0, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 416
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef %4, ptr noundef nonnull %7, i1 noundef zeroext %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase11draw2DImageEPKNS_8ITextureERKN4core4rectIiEES8_PS7_PKNS_6SColorEb(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5, i1 noundef zeroext %6) unnamed_addr #3 align 2 {
bb.a:
  %7 = alloca [4 x %"struct.video::S3DVertex"], align 16 ; 39 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.b = load i8, ptr %i.a, align 1, !tbaa !318, !range !144, !noundef !145
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load <2 x i32>, ptr %3, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.val = load i32, ptr %i.f, align 4             ; 2 uses
  %.val144 = load i32, ptr %i.g, align 4          ; 2 uses
  %i.h = select i1 %i.c, i32 %.val, i32 %.val144
  %i.i = load <4 x i32>, ptr %3, align 4
  %i.j = shufflevector <4 x i32> %i.i, <4 x i32> poison, <2 x i32> <i32 2, i32 poison>
  %i.k = insertelement <2 x i32> %i.j, i32 %i.h, i64 1
  %i.l = sitofp <2 x i32> %i.k to <2 x float>
  %i.m = select i1 %i.c, i32 %.val144, i32 %.val
  %i.n = load <2 x i32>, ptr %i.d, align 4, !tbaa !193
  %i.o = uitofp <2 x i32> %i.n to <2 x float>
  %i.p = fdiv <2 x float> splat (float 1.000000e+00), %i.o ; 2 uses
  %i.q = insertelement <2 x i32> %i.e, i32 %i.m, i64 1
  %i.r = sitofp <2 x i32> %i.q to <2 x float>
  %i.s = fmul <2 x float> %i.p, %i.l              ; 4 uses
  %i.t = fmul <2 x float> %i.p, %i.r              ; 4 uses
  %.not54 = icmp eq ptr %5, null                  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !313, !range !144, !noundef !145
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.z = tail call noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.y, ptr noundef nonnull align 8 dereferenceable(127) %i.x) ; 0 uses
  %.pre.i = load i8, ptr %i.u, align 8, !tbaa !313
  %i.aa = trunc nuw i8 %.pre.i to i1
  br i1 %i.aa, label %.thread.i, label %_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit

.thread.i:                                        ; preds = %bb.c, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 750 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 2
  %i.ae = and i8 %i.ad, -13
  store i8 %i.ae, ptr %i.ac, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 748 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 4
  %i.ah = and i16 %i.ag, -16
  store i16 %i.ah, ptr %i.af, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.aj = tail call noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.ai, ptr noundef nonnull align 8 dereferenceable(127) %i.ab) ; 0 uses
  br label %_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit

_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit: ; preds = %bb.c, %.thread.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2200
  store ptr %1, ptr %i.ak, align 8, !tbaa !159
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !139
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = tail call noundef zeroext i1 @_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE(ptr noundef nonnull align 8 dereferenceable(52) %i.an, i32 noundef 0, ptr noundef nonnull %1, i32 noundef 0)
  br i1 %i.ao, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit
  br i1 %.not54, label %.cont111, label %.cont121

.cont121:                                         ; preds = %bb.d
  %.else.val124 = load i32, ptr %5, align 4, !tbaa !319
  %.not147 = icmp ugt i32 %.else.val124, -16777217
  br i1 %.not147, label %.cont117, label %.cont111

.cont117:                                         ; preds = %.cont121
  %.sroa.gep91 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.else.val120 = load i32, ptr %.sroa.gep91, align 4, !tbaa !319
  %.not148 = icmp ugt i32 %.else.val120, -16777217
  br i1 %.not148, label %.cont113, label %.cont111

.cont113:                                         ; preds = %.cont117
  %.sroa.gep93 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.else.val116 = load i32, ptr %.sroa.gep93, align 4, !tbaa !319
  %.not149 = icmp ugt i32 %.else.val116, -16777217
  br i1 %.not149, label %.else112, label %.cont111

.else112:                                         ; preds = %.cont113
  %.sroa.gep96 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.else.val = load i32, ptr %.sroa.gep96, align 4, !tbaa !319
  %i.ap = icmp ult i32 %.else.val, -16777216
  br label %.cont111

.cont111:                                         ; preds = %.else112, %bb.d, %.cont113, %.cont117, %.cont121
  %i.aq = phi i1 [ true, %.cont113 ], [ true, %.cont117 ], [ true, %.cont121 ], [ %i.ap, %.else112 ], [ false, %bb.d ]
  tail call void @_ZN5video18COpenGL3DriverBase21setRenderStates2DModeEbbb(ptr noundef nonnull align 8 dereferenceable(2528) %0, i1 noundef zeroext %i.aq, i1 noundef zeroext true, i1 noundef zeroext %6)
  %i.ar = load ptr, ptr %0, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 496
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.at(ptr noundef nonnull align 8 dereferenceable(933) %0)
  %.not55 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not55, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.cont111
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !314
  %i.ax = load i32, ptr %4, align 4, !tbaa !315
  %.not.i = icmp sge i32 %i.aw, %i.ax
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp sge i32 %i.az, %i.bb
  %i.bd = select i1 %.not.i, i1 %i.bc, i1 false
  br i1 %i.bd, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 232), align 8, !tbaa !190
  tail call void %i.be(i32 noundef 3089)
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 104), align 8, !tbaa !320
  %i.bg = load i32, ptr %4, align 4, !tbaa !315   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !305
  %i.bj = load i32, ptr %i.ay, align 4, !tbaa !321 ; 2 uses
  %i.bk = sub i32 %i.bi, %i.bj
  %i.bl = load i32, ptr %i.av, align 4, !tbaa !314
  %i.bm = sub nsw i32 %i.bl, %i.bg
  %i.bn = load i32, ptr %i.ba, align 4, !tbaa !322
  %i.bo = sub nsw i32 %i.bj, %i.bn
  tail call void %i.bf(i32 noundef %i.bg, i32 noundef %i.bk, i32 noundef %i.bm, i32 noundef %i.bo)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.cont111
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load <2 x i32>, ptr %i.bp, align 4, !tbaa !193
  %i.br = load <2 x i32>, ptr %2, align 4, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(38) %7, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bs, align 8, !tbaa !319
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.bt, align 4, !tbaa !42
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 2 uses
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %.ptr.1, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bw, align 16, !tbaa !319
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 68
  store <2 x float> zeroinitializer, ptr %i.bx, align 4, !tbaa !42
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 76
  store i16 0, ptr %i.by, align 4, !tbaa !326
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(38) %.ptr.2, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.bz, align 8, !tbaa !319
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 108
  store <2 x float> zeroinitializer, ptr %i.ca, align 4, !tbaa !42
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 116
  store i16 0, ptr %i.cb, align 4, !tbaa !326
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %7, i64 120 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %.ptr.3, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.cc, align 16, !tbaa !319
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 148
  store <2 x float> zeroinitializer, ptr %i.cd, align 4, !tbaa !42
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 156
  store i16 0, ptr %i.ce, align 4, !tbaa !326
  %i.cf = sitofp <2 x i32> %i.bq to <2 x float>   ; 3 uses
  %i.cg = sitofp <2 x i32> %i.br to <2 x float>   ; 4 uses
  br i1 %.not54, label %.cont.critedge, label %.else126

.else126:                                         ; preds = %bb.g
  %.sroa.03.0.copyload.else.val = load i32, ptr %5, align 4, !tbaa !193
  store <2 x float> %i.cg, ptr %7, align 16, !tbaa !42
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.582.0..sroa_idx, align 8, !tbaa !42
  store i32 %.sroa.03.0.copyload.else.val, ptr %i.bs, align 8, !tbaa !193
  %i.ch = extractelement <2 x float> %i.t, i64 0
  store float %i.ch, ptr %i.bt, align 4, !tbaa !42
  %i.ci = extractelement <2 x float> %i.s, i64 1
  store float %i.ci, ptr %i.bu, align 16, !tbaa !42
  store i16 0, ptr %i.bv, align 4, !tbaa !182
  %.sroa.gep99 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.02.0.copyload.else.val = load i32, ptr %.sroa.gep99, align 4, !tbaa !193
  br label %.cont

.cont.critedge:                                   ; preds = %bb.g
  store <2 x float> %i.cg, ptr %7, align 16, !tbaa !42
  %.sroa.582.0..sroa_idx.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.582.0..sroa_idx.c, align 8, !tbaa !42
  store i32 -1, ptr %i.bs, align 8, !tbaa !193
  %i.cj = extractelement <2 x float> %i.t, i64 0
  store float %i.cj, ptr %i.bt, align 4, !tbaa !42
  %i.ck = extractelement <2 x float> %i.s, i64 1
  store float %i.ck, ptr %i.bu, align 16, !tbaa !42
  store i16 0, ptr %i.bv, align 4, !tbaa !182
  br label %.cont

.cont:                                            ; preds = %.cont.critedge, %.else126
  %.sroa.02.0.copyload = phi i32 [ -1, %.cont.critedge ], [ %.sroa.02.0.copyload.else.val, %.else126 ]
  %i.cl = extractelement <2 x float> %i.cf, i64 0
  store float %i.cl, ptr %.ptr.1, align 8, !tbaa !42
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.cm = extractelement <2 x float> %i.cg, i64 1
  store float %i.cm, ptr %.sroa.470.0..sroa_idx, align 4, !tbaa !42
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.571.0..sroa_idx, align 16, !tbaa !42
  %.sroa.975.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 %.sroa.02.0.copyload, ptr %.sroa.975.0..sroa_idx, align 16, !tbaa !193
  %.sroa.1076.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 68
  store <2 x float> %i.s, ptr %.sroa.1076.0..sroa_idx, align 4, !tbaa !42
  %.sroa.1278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 76
  store i16 0, ptr %.sroa.1278.0..sroa_idx, align 4, !tbaa !182
  br i1 %.not54, label %.cont.cont, label %.cont.else

.cont.else:                                       ; preds = %.cont
  %.sroa.gep102 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.01.0.copyload.else.val = load i32, ptr %.sroa.gep102, align 4, !tbaa !193
  br label %.cont.cont

.cont.cont:                                       ; preds = %.cont, %.cont.else
  %.sroa.01.0.copyload = phi i32 [ -1, %.cont ], [ %.sroa.01.0.copyload.else.val, %.cont.else ]
  store <2 x float> %i.cf, ptr %.ptr.2, align 16, !tbaa !42
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 88
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.560.0..sroa_idx, align 8, !tbaa !42
  %.sroa.964.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 104
  store i32 %.sroa.01.0.copyload, ptr %.sroa.964.0..sroa_idx, align 8, !tbaa !193
  %.sroa.1065.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 108
  %i.cn = extractelement <2 x float> %i.s, i64 0
  store float %i.cn, ptr %.sroa.1065.0..sroa_idx, align 4, !tbaa !42
  %.sroa.1166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.co = extractelement <2 x float> %i.t, i64 1
  store float %i.co, ptr %.sroa.1166.0..sroa_idx, align 16, !tbaa !42
  %.sroa.1267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 116
  store i16 0, ptr %.sroa.1267.0..sroa_idx, align 4, !tbaa !182
  br i1 %.not54, label %.cont.cont.cont, label %.cont.cont.else

.cont.cont.else:                                  ; preds = %.cont.cont
  %.sroa.gep105 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.0.0.copyload.else.val = load i32, ptr %.sroa.gep105, align 4, !tbaa !193
  br label %.cont.cont.cont

.cont.cont.cont:                                  ; preds = %.cont.cont, %.cont.cont.else
  %.sroa.0.0.copyload = phi i32 [ -1, %.cont.cont ], [ %.sroa.0.0.copyload.else.val, %.cont.cont.else ]
  %i.cp = extractelement <2 x float> %i.cg, i64 0
  store float %i.cp, ptr %.ptr.3, align 8, !tbaa !42
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 124
  %i.cq = extractelement <2 x float> %i.cf, i64 1
  store float %i.cq, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !42
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 128
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !42
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 144
  store i32 %.sroa.0.0.copyload, ptr %.sroa.9.0..sroa_idx, align 16, !tbaa !193
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 148
  store <2 x float> %i.t, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !42
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 156
  store i16 0, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !182
  %i.cr = ptrtoint ptr %7 to i64
  call void @_ZN5video18COpenGL3DriverBase9beginDrawERKNS_10VertexTypeEm(ptr noundef nonnull readonly align 8 dereferenceable(2528) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) @_ZN5videoL9vt2DImageE, i64 noundef %i.cr)
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 440), align 8, !tbaa !306
  call void %i.cs(i32 noundef 6, i32 noundef 0, i32 noundef 4), !inline_history !327
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL9vt2DImageE, i64 8), align 8, !tbaa !307 ; 2 uses
  %i.cu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL9vt2DImageE, i64 16), align 8, !tbaa !307 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.ct, %i.cu
  br i1 %.not7.i.i.i, label %_ZN5video18COpenGL3DriverBase8drawQuadERKNS_10VertexTypeERA4_KNS_9S3DVertexE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.cont.cont.cont, %.lr.ph.i.i.i
  %.sroa.04.08.i.i.i = phi ptr [ %i.cy, %.lr.ph.i.i.i ], [ %i.ct, %.cont.cont.cont ] ; 2 uses
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 984), align 8, !tbaa !276
  %i.cw = load i8, ptr %.sroa.04.08.i.i.i, align 4, !tbaa !310
  %i.cx = zext i8 %i.cw to i32
  call void %i.cv(i32 noundef %i.cx), !inline_history !328
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cy, %i.cu
  br i1 %.not.i.i.i, label %_ZN5video18COpenGL3DriverBase8drawQuadERKNS_10VertexTypeERA4_KNS_9S3DVertexE.exit, label %.lr.ph.i.i.i

_ZN5video18COpenGL3DriverBase8drawQuadERKNS_10VertexTypeERA4_KNS_9S3DVertexE.exit: ; preds = %.lr.ph.i.i.i, %.cont.cont.cont
  br i1 %.not55, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5video18COpenGL3DriverBase8drawQuadERKNS_10VertexTypeERA4_KNS_9S3DVertexE.exit
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 224), align 8, !tbaa !219
  call void %i.cz(i32 noundef 3089)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5video18COpenGL3DriverBase8drawQuadERKNS_10VertexTypeERA4_KNS_9S3DVertexE.exit
  %i.da = call noundef zeroext i1 @_ZN5video18COpenGL3DriverBase11testGLErrorEPKci(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr noundef nonnull @.str.10, i32 noundef 789) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.j

bb.j:                                             ; preds = %_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit, %bb.e, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv(ptr noundef nonnull align 8 dereferenceable(2528) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !313, !range !144, !noundef !145
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.f = tail call noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.e, ptr noundef nonnull align 8 dereferenceable(127) %i.d) ; 0 uses
  %.pre = load i8, ptr %i.a, align 8, !tbaa !313
  %i.g = trunc nuw i8 %.pre to i1
  br i1 %i.g, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 750 ; 2 uses
  %i.j = load i8, ptr %i.i, align 2
  %i.k = and i8 %i.j, -13
  store i8 %i.k, ptr %i.i, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 748 ; 2 uses
  %i.m = load i16, ptr %i.l, align 4
  %i.n = and i16 %i.m, -16
  store i16 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.p = tail call noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.o, ptr noundef nonnull align 8 dereferenceable(127) %i.h) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase8drawQuadERKNS_10VertexTypeERA4_KNS_9S3DVertexE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2528) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(160) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  tail call void @_ZN5video18COpenGL3DriverBase9beginDrawERKNS_10VertexTypeEm(ptr noundef nonnull readonly align 8 dereferenceable(2528) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 noundef %i.a)
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 440), align 8, !tbaa !306
  tail call void %i.b(i32 noundef 6, i32 noundef 0, i32 noundef 4), !inline_history !329
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !307  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !307  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not7.i.i, label %_ZN5video18COpenGL3DriverBase10drawArraysEjRKNS_10VertexTypeEPKvi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.04.08.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 984), align 8, !tbaa !276
  %i.h = load i8, ptr %.sroa.04.08.i.i, align 4, !tbaa !310
  %i.i = zext i8 %i.h to i32
  tail call void %i.g(i32 noundef %i.i), !inline_history !330
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i.i, label %_ZN5video18COpenGL3DriverBase10drawArraysEjRKNS_10VertexTypeEPKvi.exit, label %.lr.ph.i.i

_ZN5video18COpenGL3DriverBase10drawArraysEjRKNS_10VertexTypeEPKvi.exit: ; preds = %.lr.ph.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase11draw2DImageEPKNS_8ITextureEjb(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr noundef %1, i32 %2, i1 noundef zeroext %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca [4 x %"struct.video::S3DVertex"], align 16 ; 26 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !313, !range !144, !noundef !145
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.f = tail call noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.e, ptr noundef nonnull align 8 dereferenceable(127) %i.d) ; 0 uses
  %.pre.i = load i8, ptr %i.a, align 8, !tbaa !313
  %i.g = trunc nuw i8 %.pre.i to i1
  br i1 %i.g, label %.thread.i, label %_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit

.thread.i:                                        ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 750 ; 2 uses
  %i.j = load i8, ptr %i.i, align 2
  %i.k = and i8 %i.j, -13
  store i8 %i.k, ptr %i.i, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 748 ; 2 uses
  %i.m = load i16, ptr %i.l, align 4
  %i.n = and i16 %i.m, -16
  store i16 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.p = tail call noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.o, ptr noundef nonnull align 8 dereferenceable(127) %i.h) ; 0 uses
  br label %_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit

_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit: ; preds = %bb.c, %.thread.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2200
  store ptr %1, ptr %i.q, align 8, !tbaa !159
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !139
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = tail call noundef zeroext i1 @_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE(ptr noundef nonnull align 8 dereferenceable(52) %i.t, i32 noundef 0, ptr noundef nonnull %1, i32 noundef 0)
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit
  tail call void @_ZN5video18COpenGL3DriverBase21setRenderStates2DModeEbbb(ptr noundef nonnull align 8 dereferenceable(2528) %0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(38) %4, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i16 0, ptr %i.y, align 4, !tbaa !326
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 76
  store i16 0, ptr %i.aa, align 4, !tbaa !326
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(38) %.ptr.2, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 116
  store i16 0, ptr %i.ab, align 4, !tbaa !326
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 156
  store i16 0, ptr %i.ad, align 4, !tbaa !326
  store <2 x float> <float -1.000000e+00, float 1.000000e+00>, ptr %4, align 16, !tbaa !42
  store <2 x float> splat (float 1.000000e+00), ptr %.ptr.1, align 8, !tbaa !42
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %.ptr.2, align 16, !tbaa !42
  store <2 x float> splat (float -1.000000e+00), ptr %.ptr.3, align 8, !tbaa !42
  %i.ae = select i1 %3, float 1.000000e+00, float 0.000000e+00 ; 3 uses
  store i32 0, ptr %i.w, align 4, !tbaa !42
  store float %i.ae, ptr %i.x, align 16, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i32 1065353216, ptr %i.af, align 4, !tbaa !42
  %.sroa_idx16 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store float %i.ae, ptr %.sroa_idx16, align 8, !tbaa !42
  %i.ag = fsub float 1.000000e+00, %i.ae          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 108
  store i32 1065353216, ptr %i.ah, align 4, !tbaa !42
  %.sroa_idx13 = getelementptr inbounds nuw i8, ptr %4, i64 112
  store float %i.ag, ptr %.sroa_idx13, align 16, !tbaa !42
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 148
  store i32 0, ptr %i.ai, align 4, !tbaa !42
  %.sroa_idx11 = getelementptr inbounds nuw i8, ptr %4, i64 152
  store float %i.ag, ptr %.sroa_idx11, align 8, !tbaa !42
  store i32 -1, ptr %i.v, align 8, !tbaa !193
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 -1, ptr %i.aj, align 16, !tbaa !193
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i32 -1, ptr %i.ak, align 8, !tbaa !193
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 144
  store i32 -1, ptr %i.al, align 16, !tbaa !193
  %i.am = ptrtoint ptr %4 to i64
  call void @_ZN5video18COpenGL3DriverBase9beginDrawERKNS_10VertexTypeEm(ptr noundef nonnull readonly align 8 dereferenceable(2528) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) @_ZN5videoL9vt2DImageE, i64 noundef %i.am)
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 440), align 8, !tbaa !306
  call void %i.an(i32 noundef 6, i32 noundef 0, i32 noundef 4), !inline_history !327
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL9vt2DImageE, i64 8), align 8, !tbaa !307 ; 2 uses
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL9vt2DImageE, i64 16), align 8, !tbaa !307 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not7.i.i.i, label %_ZN5video18COpenGL3DriverBase8drawQuadERKNS_10VertexTypeERA4_KNS_9S3DVertexE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.sroa.04.08.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %i.ao, %bb.d ] ; 2 uses
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 984), align 8, !tbaa !276
  %i.ar = load i8, ptr %.sroa.04.08.i.i.i, align 4, !tbaa !310
  %i.as = zext i8 %i.ar to i32
  call void %i.aq(i32 noundef %i.as), !inline_history !328
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %i.ap
  br i1 %.not.i.i.i, label %_ZN5video18COpenGL3DriverBase8drawQuadERKNS_10VertexTypeERA4_KNS_9S3DVertexE.exit, label %.lr.ph.i.i.i

_ZN5video18COpenGL3DriverBase8drawQuadERKNS_10VertexTypeERA4_KNS_9S3DVertexE.exit: ; preds = %.lr.ph.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.e

bb.e:                                             ; preds = %_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit, %bb.a, %_ZN5video18COpenGL3DriverBase8drawQuadERKNS_10VertexTypeERA4_KNS_9S3DVertexE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase16draw2DImageBatchEPKNS_8ITextureERKN4core5arrayINS4_8vector2dIiEEEERKNS5_INS4_4rectIiEEEEPKSC_NS_6SColorEb(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 %5, i1 noundef zeroext %6) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !313, !range !144, !noundef !145
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.f = tail call noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.e, ptr noundef nonnull align 8 dereferenceable(127) %i.d) ; 0 uses
  %.pre.i = load i8, ptr %i.a, align 8, !tbaa !313
  %i.g = trunc nuw i8 %.pre.i to i1
  br i1 %i.g, label %.thread.i, label %_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit

.thread.i:                                        ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 750 ; 2 uses
  %i.j = load i8, ptr %i.i, align 2
  %i.k = and i8 %i.j, -13
  store i8 %i.k, ptr %i.i, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 748 ; 2 uses
  %i.m = load i16, ptr %i.l, align 4
  %i.n = and i16 %i.m, -16
  store i16 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.p = tail call noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.o, ptr noundef nonnull align 8 dereferenceable(127) %i.h) ; 0 uses
  br label %_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit

_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit: ; preds = %bb.c, %.thread.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2200
  store ptr %1, ptr %i.q, align 8, !tbaa !159
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !139
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = tail call noundef zeroext i1 @_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE(ptr noundef nonnull align 8 dereferenceable(52) %i.t, i32 noundef 0, ptr noundef nonnull %1, i32 noundef 0)
  br i1 %i.u, label %bb.d, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit

bb.d:                                             ; preds = %_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit
  %i.v = icmp ult i32 %5, -16777216
  tail call void @_ZN5video18COpenGL3DriverBase21setRenderStates2DModeEbbb(ptr noundef nonnull align 8 dereferenceable(2528) %0, i1 noundef zeroext %i.v, i1 noundef zeroext true, i1 noundef zeroext %6)
  %i.w = load ptr, ptr %0, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 496
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.y(ptr noundef nonnull align 8 dereferenceable(933) %0)
  %.not41 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not41, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !314
  %i.ac = load i32, ptr %4, align 4, !tbaa !315
  %.not.i = icmp sge i32 %i.ab, %i.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp sge i32 %i.ae, %i.ag
  %i.ai = select i1 %.not.i, i1 %i.ah, i1 false
  br i1 %i.ai, label %bb.f, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 232), align 8, !tbaa !190
  tail call void %i.aj(i32 noundef 3089)
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 104), align 8, !tbaa !320
  %i.al = load i32, ptr %4, align 4, !tbaa !315   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !305
  %i.ao = load i32, ptr %i.ad, align 4, !tbaa !321 ; 2 uses
  %i.ap = sub i32 %i.an, %i.ao
  %i.aq = load i32, ptr %i.aa, align 4, !tbaa !314
  %i.ar = sub nsw i32 %i.aq, %i.al
  %i.as = load i32, ptr %i.af, align 4, !tbaa !322
  %i.at = sub nsw i32 %i.ao, %i.as
  tail call void %i.ak(i32 noundef %i.al, i32 noundef %i.ap, i32 noundef %i.ar, i32 noundef %i.at)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !506
  %i.aw = load ptr, ptr %2, align 8, !tbaa !507
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = lshr exact i64 %i.az, 3
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !510
  %i.be = load ptr, ptr %3, align 8, !tbaa !511
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = lshr exact i64 %i.bh, 4
  %i.bj = trunc i64 %i.bi to i32
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.bb, i32 %i.bj) ; 4 uses
  %i.bk = mul i32 %.sroa.speculated, 6            ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2472
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !163
  %.not42 = icmp ugt i64 %i.bm, %i.bp
  br i1 %.not42, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.10, i32 noundef 852, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5video18COpenGL3DriverBase16draw2DImageBatchEPKNS_8ITextureERKN4core5arrayINS4_8vector2dIiEEEERKNS5_INS4_4rectIiEEEEPKSC_NS_6SColorEb) #36
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bq = shl i32 %.sroa.speculated, 2            ; 2 uses
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %.not267 = icmp eq i32 %i.bq, 0
  br i1 %.not267, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.i
  %i.bs = mul nuw nsw i64 %i.br, 40
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #37
          to label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %.loopexit.split-lp ; 2 uses

_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.br
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.i
  %.sroa.0223.4 = phi ptr [ %i.bt, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.i ] ; 4 uses
  %.sroa.43.4 = phi ptr [ %i.bu, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !318, !range !144, !noundef !145
  %i.bx = trunc nuw i8 %i.bw to i1                ; 2 uses
  %.not353 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not353, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bz = load <2 x i32>, ptr %i.by, align 4, !tbaa !193
  %i.ca = uitofp <2 x i32> %i.bz to <2 x float>
  %i.cb = fdiv <2 x float> splat (float 1.000000e+00), %i.ca ; 2 uses
  %wide.trip.count = zext i32 %.sroa.speculated to i64
  %i.cc = extractelement <2 x float> %i.cb, i64 0 ; 2 uses
  %i.cd = extractelement <2 x float> %i.cb, i64 1 ; 2 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE12emplace_backIJRfS5_ffffRNS0_6SColorERKfS9_EEERS1_DpOT_.exit65, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit
  %.sroa.0223.0.lcssa = phi ptr [ %.sroa.0223.4, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit ], [ %.sroa.0223.8, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE12emplace_backIJRfS5_ffffRNS0_6SColorERKfS9_EEERS1_DpOT_.exit65 ] ; 9 uses
  %.sroa.19.0.lcssa = phi ptr [ %.sroa.0223.4, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit ], [ %.sroa.19.5, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE12emplace_backIJRfS5_ffffRNS0_6SColorERKfS9_EEERS1_DpOT_.exit65 ]
  %.sroa.43.0.lcssa = phi ptr [ %.sroa.43.4, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit ], [ %.sroa.43.8, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE12emplace_backIJRfS5_ffffRNS0_6SColorERKfS9_EEERS1_DpOT_.exit65 ] ; 7 uses
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 792), align 8, !tbaa !272
  %i.cf = load i32, ptr %i.bn, align 8, !tbaa !162
  invoke void %i.ce(i32 noundef 34963, i32 noundef %i.cf)
          to label %bb.ac unwind label %.loopexit.split-lp

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE12emplace_backIJRfS5_ffffRNS0_6SColorERKfS9_EEERS1_DpOT_.exit65
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE12emplace_backIJRfS5_ffffRNS0_6SColorERKfS9_EEERS1_DpOT_.exit65 ] ; 5 uses
  %.sroa.43.0349 = phi ptr [ %.sroa.43.4, %.lr.ph.preheader ], [ %.sroa.43.8, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE12emplace_backIJRfS5_ffffRNS0_6SColorERKfS9_EEERS1_DpOT_.exit65 ] ; 6 uses
  %.sroa.19.0348 = phi ptr [ %.sroa.0223.4, %.lr.ph.preheader ], [ %.sroa.19.5, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE12emplace_backIJRfS5_ffffRNS0_6SColorERKfS9_EEERS1_DpOT_.exit65 ] ; 9 uses
  %.sroa.0223.0347 = phi ptr [ %.sroa.0223.4, %.lr.ph.preheader ], [ %.sroa.0223.8, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE12emplace_backIJRfS5_ffffRNS0_6SColorERKfS9_EEERS1_DpOT_.exit65 ] ; 7 uses
  %i.cg = load ptr, ptr %i.au, align 8, !tbaa !506
  %i.ch = load ptr, ptr %2, align 8, !tbaa !507   ; 2 uses
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 3
  %i.cm = icmp ugt i64 %i.cl, %indvars.iv
  br i1 %i.cm, label %_ZNK4core5arrayINS_8vector2dIiEEEixEj.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 199, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4core5arrayINS_8vector2dIiEEEixEj) #36
  unreachable

_ZNK4core5arrayINS_8vector2dIiEEEixEj.exit:       ; preds = %.lr.ph
  %i.cn = load ptr, ptr %i.bc, align 8, !tbaa !510
  %i.co = load ptr, ptr %3, align 8, !tbaa !511   ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 4
  %i.ct = icmp ugt i64 %i.cs, %indvars.iv
  br i1 %i.ct, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK4core5arrayINS_8vector2dIiEEEixEj.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 199, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4core5arrayINS_4rectIiEEEixEj) #36
  unreachable

bb.l:                                             ; preds = %_ZNK4core5arrayINS_8vector2dIiEEEixEj.exit
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv
  %i.cv = load i64, ptr %i.cu, align 4, !tbaa !193 ; 2 uses
  %.sroa.6222.0.extract.shift = lshr i64 %i.cv, 32
  %.sroa.6222.0.extract.trunc = trunc nuw i64 %.sroa.6222.0.extract.shift to i32 ; 2 uses
  %.sroa.0220.0.extract.trunc = trunc i64 %i.cv to i32 ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %indvars.iv ; 4 uses
  %.sroa.0213.0.copyload = load i32, ptr %i.cw, align 4, !tbaa !193 ; 2 uses
  %.sroa.6215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %.sroa.6215.0.copyload = load i32, ptr %.sroa.6215.0..sroa_idx, align 4, !tbaa !193 ; 3 uses
  %.sroa.8217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.8217.0.copyload = load i32, ptr %.sroa.8217.0..sroa_idx, align 4, !tbaa !193 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !193 ; 3 uses
  %i.cx = sitofp i32 %.sroa.0213.0.copyload to float
  %i.cy = fmul float %i.cc, %i.cx                 ; 4 uses
  %i.cz = select i1 %i.bx, i32 %.sroa.10.0.copyload, i32 %.sroa.6215.0.copyload
  %i.da = sitofp i32 %i.cz to float
  %i.db = fmul float %i.cd, %i.da                 ; 4 uses
  %i.dc = sitofp i32 %.sroa.8217.0.copyload to float
  %i.dd = fmul float %i.cc, %i.dc                 ; 4 uses
  %i.de = select i1 %i.bx, i32 %.sroa.6215.0.copyload, i32 %.sroa.10.0.copyload
  %i.df = sitofp i32 %i.de to float
  %i.dg = fmul float %i.cd, %i.df                 ; 4 uses
  %i.dh = sub i32 %.sroa.0220.0.extract.trunc, %.sroa.0213.0.copyload
  %i.di = add i32 %i.dh, %.sroa.8217.0.copyload
  %i.dj = sub i32 %.sroa.6222.0.extract.trunc, %.sroa.6215.0.copyload
  %i.dk = add i32 %i.dj, %.sroa.10.0.copyload
  %i.dl = sitofp i32 %.sroa.0220.0.extract.trunc to float ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5video18COpenGL3DriverBase16draw2DImageBatchEPKNS_8ITextureERKN4core5arrayINS4_8vector2dIiEEEERKNS5_INS4_4rectIiEEEEPKSC_NS_6SColorEb:bb.a
  %lpad.loopexit.split-lp505 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp274.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i82, %bb.s
  %lpad.loopexit.split-lp507 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp279.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i105, %bb.w
  %lpad.loopexit.split-lp510 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp284.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i128, %bb.aa
  %lpad.loopexit.split-lp513 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ac:                                            ; preds = %._crit_edge
  %i.hx = ptrtoint ptr %.sroa.0223.0.lcssa to i64 ; 3 uses
  invoke void @_ZN5video18COpenGL3DriverBase9beginDrawERKNS_10VertexTypeEm(ptr noundef nonnull readonly align 8 dereferenceable(2528) %0, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5videoL9vt2DImageE, i64 noundef %i.hx)
          to label %.noexc66.a unwind label %.loopexit.split-lp

.noexc66.a:                                       ; preds = %bb.ac
  %i.hy = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.hz = sub i64 %i.hy, %i.hx
  %i.ia = sdiv exact i64 %i.hz, 40
  %i.ib = trunc i64 %i.ia to i32
  %i.ic = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 552), align 8, !tbaa !331
  %i.id = add nsw i32 %i.ib, -1
  invoke void %i.ic(i32 noundef 4, i32 noundef 0, i32 noundef %i.id, i32 noundef %i.bk, i32 noundef 5123, ptr noundef null)
          to label %.noexc67.a unwind label %.loopexit.split-lp, !inline_history !521

.noexc67.a:                                       ; preds = %.noexc66.a
  %i.ie = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL9vt2DImageE, i64 8), align 8, !tbaa !307 ; 2 uses
  %i.if = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL9vt2DImageE, i64 16), align 8, !tbaa !307 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ie, %i.if
  br i1 %.not7.i.i, label %_ZN5video18COpenGL3DriverBase12drawElementsEjRKNS_10VertexTypeEPKviPKti.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc67.a, %.noexc68
  %.sroa.04.08.i.i = phi ptr [ %i.ij, %.noexc68 ], [ %i.ie, %.noexc67.a ] ; 2 uses
  %i.ig = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 984), align 8, !tbaa !276
  %i.ih = load i8, ptr %.sroa.04.08.i.i, align 4, !tbaa !310
  %i.ii = zext i8 %i.ih to i32
  invoke void %i.ig(i32 noundef %i.ii)
          to label %.noexc68 unwind label %.loopexit, !inline_history !521

.noexc68:                                         ; preds = %.lr.ph.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ij, %i.if
  br i1 %.not.i.i, label %_ZN5video18COpenGL3DriverBase12drawElementsEjRKNS_10VertexTypeEPKviPKti.exit, label %.lr.ph.i.i

_ZN5video18COpenGL3DriverBase12drawElementsEjRKNS_10VertexTypeEPKviPKti.exit: ; preds = %.noexc68, %.noexc67.a
  %i.ik = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 792), align 8, !tbaa !272
  invoke void %i.ik(i32 noundef 34963, i32 noundef 0)
          to label %bb.ad unwind label %.loopexit.split-lp

bb.ad:                                            ; preds = %_ZN5video18COpenGL3DriverBase12drawElementsEjRKNS_10VertexTypeEPKviPKti.exit
  br i1 %.not41, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.il = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 224), align 8, !tbaa !219
  invoke void %i.il(i32 noundef 3089)
          to label %bb.af unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %._crit_edge, %_ZN5video18COpenGL3DriverBase12drawElementsEjRKNS_10VertexTypeEPKviPKti.exit, %bb.ae, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i, %bb.ac, %.noexc66.a
  %.sroa.0223.2.ph = phi ptr [ %.sroa.0223.0.lcssa, %._crit_edge ], [ %.sroa.0223.0.lcssa, %bb.ac ], [ %.sroa.0223.0.lcssa, %.noexc66.a ], [ null, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.0223.0.lcssa, %_ZN5video18COpenGL3DriverBase12drawElementsEjRKNS_10VertexTypeEPKviPKti.exit ], [ %.sroa.0223.0.lcssa, %bb.ae ]
  %.sroa.43.2.ph = phi ptr [ %.sroa.43.0.lcssa, %._crit_edge ], [ %.sroa.43.0.lcssa, %bb.ac ], [ %.sroa.43.0.lcssa, %.noexc66.a ], [ null, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i ], [ %.sroa.43.0.lcssa, %_ZN5video18COpenGL3DriverBase12drawElementsEjRKNS_10VertexTypeEPKviPKti.exit ], [ %.sroa.43.0.lcssa, %bb.ae ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.not.i.i.i = icmp eq ptr %.sroa.0223.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.im = ptrtoint ptr %.sroa.43.0.lcssa to i64
  %i.in = sub i64 %i.im, %i.hx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0223.0.lcssa, i64 noundef %i.in) #33
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit

_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit: ; preds = %bb.ag, %bb.af, %bb.e, %_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit, %bb.a
  ret void

bb.ah:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit.split-lp284.loopexit.split-lp, %.loopexit.split-lp279.loopexit.split-lp, %.loopexit.split-lp274.loopexit.split-lp, %.loopexit.split-lp269.loopexit.split-lp
  %.sroa.0223.3 = phi ptr [ %.sroa.0223.7, %.loopexit.split-lp284.loopexit.split-lp ], [ %.sroa.0223.6, %.loopexit.split-lp279.loopexit.split-lp ], [ %.sroa.0223.0347, %.loopexit.split-lp269.loopexit.split-lp ], [ %.sroa.0223.5, %.loopexit.split-lp274.loopexit.split-lp ], [ %.sroa.0223.2.ph, %.loopexit.split-lp ], [ %.sroa.0223.0.lcssa, %.loopexit ] ; 3 uses
  %.sroa.43.3 = phi ptr [ %.sroa.43.7, %.loopexit.split-lp284.loopexit.split-lp ], [ %.sroa.19.3, %.loopexit.split-lp279.loopexit.split-lp ], [ %.sroa.43.0349, %.loopexit.split-lp269.loopexit.split-lp ], [ %.sroa.43.5, %.loopexit.split-lp274.loopexit.split-lp ], [ %.sroa.43.2.ph, %.loopexit.split-lp ], [ %.sroa.43.0.lcssa, %.loopexit ]
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp513, %.loopexit.split-lp284.loopexit.split-lp ], [ %lpad.loopexit.split-lp510, %.loopexit.split-lp279.loopexit.split-lp ], [ %lpad.loopexit.split-lp505, %.loopexit.split-lp269.loopexit.split-lp ], [ %lpad.loopexit.split-lp507, %.loopexit.split-lp274.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i69 = icmp eq ptr %.sroa.0223.3, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit70, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.io = ptrtoint ptr %.sroa.43.3 to i64
  %i.ip = ptrtoint ptr %.sroa.0223.3 to i64
  %i.iq = sub i64 %i.io, %i.ip
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0223.3, i64 noundef %i.iq) #33
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit70

_ZNSt6vectorIN5video9S3DVertexESaIS1_EED2Ev.exit70: ; preds = %bb.ah, %bb.ai
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase12drawElementsEjRKNS_10VertexTypeEPKviPKti(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2528) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  tail call void @_ZN5video18COpenGL3DriverBase9beginDrawERKNS_10VertexTypeEm(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.a)
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 552), align 8, !tbaa !331
  %i.c = add nsw i32 %4, -1
  tail call void %i.b(i32 noundef %1, i32 noundef 0, i32 noundef %i.c, i32 noundef %6, i32 noundef 5123, ptr noundef %5)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !307  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !307  ; 2 uses
  %.not7.i = icmp eq ptr %i.e, %i.g
  br i1 %.not7.i, label %_ZN5video18COpenGL3DriverBase7endDrawERKNS_10VertexTypeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.04.08.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 984), align 8, !tbaa !276
  %i.i = load i8, ptr %.sroa.04.08.i, align 4, !tbaa !310
  %i.j = zext i8 %i.i to i32
  tail call void %i.h(i32 noundef %i.j), !inline_history !311
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i, label %_ZN5video18COpenGL3DriverBase7endDrawERKNS_10VertexTypeE.exit, label %.lr.ph.i

_ZN5video18COpenGL3DriverBase7endDrawERKNS_10VertexTypeE.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase15draw2DRectangleENS_6SColorERKN4core4rectIiEEPS5_(ptr noundef nonnull align 8 dereferenceable(2528) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 %1, i32 %1, i32 %1, i32 %1, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase15draw2DRectangleERKN4core4rectIiEENS_6SColorES6_S6_S6_PS4_(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, i32 %2, i32 %3, i32 %4, i32 %5, ptr nofree noundef readonly captures(address_is_null) %6) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca [4 x %"struct.video::S3DVertex"], align 16 ; 27 uses
  %.sroa.051.0.copyload = load i32, ptr %1, align 4, !tbaa !193 ; 2 uses
  %.sroa.854.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.854.0.copyload = load i32, ptr %.sroa.854.0..sroa_idx, align 4, !tbaa !193 ; 2 uses
  %.sroa.1357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.1357.0.copyload = load i32, ptr %.sroa.1357.0..sroa_idx, align 4, !tbaa !193 ; 2 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.18.0.copyload = load i32, ptr %.sroa.18.0..sroa_idx, align 4, !tbaa !193 ; 2 uses
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %_ZN4core4rectIiE11clipAgainstERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !314  ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %.sroa.1357.0.copyload)
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !321  ; 2 uses
  %.sroa.18.1 = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %.sroa.18.0.copyload)
  %i.e = load i32, ptr %6, align 4, !tbaa !315    ; 2 uses
  %.sroa.1357.2 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %spec.select)
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !322  ; 2 uses
  %.sroa.18.2 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %.sroa.18.1)
  %.sroa.051.1 = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %.sroa.051.0.copyload)
  %.sroa.854.1 = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %.sroa.854.0.copyload)
  %.sroa.051.2 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %.sroa.051.1)
  %spec.select74 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %.sroa.854.1)
  br label %_ZN4core4rectIiE11clipAgainstERKS1_.exit

_ZN4core4rectIiE11clipAgainstERKS1_.exit:         ; preds = %bb.b, %bb.a
  %.sroa.051.0 = phi i32 [ %.sroa.051.0.copyload, %bb.a ], [ %.sroa.051.2, %bb.b ] ; 2 uses
  %.sroa.854.0 = phi i32 [ %.sroa.854.0.copyload, %bb.a ], [ %spec.select74, %bb.b ] ; 2 uses
  %.sroa.1357.0 = phi i32 [ %.sroa.1357.0.copyload, %bb.a ], [ %.sroa.1357.2, %bb.b ] ; 2 uses
  %.sroa.18.0 = phi i32 [ %.sroa.18.0.copyload, %bb.a ], [ %.sroa.18.2, %bb.b ] ; 2 uses
  %.not.i = icmp sge i32 %.sroa.1357.0, %.sroa.051.0
  %i.h = icmp sge i32 %.sroa.18.0, %.sroa.854.0
  %i.i = select i1 %.not.i, i1 %i.h, i1 false
  br i1 %i.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_ZN4core4rectIiE11clipAgainstERKS1_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !313, !range !144, !noundef !145
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.o = tail call noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.n, ptr noundef nonnull align 8 dereferenceable(127) %i.m) ; 0 uses
  %.pre.i = load i8, ptr %i.j, align 8, !tbaa !313
  %i.p = trunc nuw i8 %.pre.i to i1
  br i1 %i.p, label %.thread.i, label %_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 750 ; 2 uses
  %i.s = load i8, ptr %i.r, align 2
  %i.t = and i8 %i.s, -13
  store i8 %i.t, ptr %i.r, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 748 ; 2 uses
  %i.v = load i16, ptr %i.u, align 4
  %i.w = and i16 %i.v, -16
  store i16 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.y = tail call noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.x, ptr noundef nonnull align 8 dereferenceable(127) %i.q) ; 0 uses
  br label %_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit

_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit: ; preds = %bb.d, %.thread.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2200
  store ptr null, ptr %i.z, align 8, !tbaa !159
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !139 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ad = load i32, ptr %i.ac, align 8
  %.not75 = icmp eq i32 %i.ad, 0
  br i1 %.not75, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !240, !nonnull !145, !align !241
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 172 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !224
  %.not.i.i = icmp eq i32 %i.ah, 33984
  br i1 %.not.i.i, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 584), align 8, !tbaa !225
  tail call void %i.ai(i32 noundef 33984), !inline_history !8
  store i32 33984, ptr %i.ag, align 4, !tbaa !224
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit.i

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit.i: ; preds = %bb.f, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !181 ; 4 uses
  %.not.i16 = icmp eq ptr %i.ak, null
  br i1 %.not.i16, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE.exit, label %.split.i

.split.i:                                         ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  %i.am = load i32, ptr %i.al, align 8, !tbaa !255
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 520), align 8, !tbaa !256
  tail call void %i.an(i32 noundef %i.am, i32 noundef 0), !inline_history !332
  store ptr null, ptr %i.aj, align 8, !tbaa !181
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !35
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.ak, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !167 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #36
  unreachable

bb.h:                                             ; preds = %.split.i
  %i.av = add nsw i32 %i.at, -1                   ; 2 uses
  store i32 %i.av, ptr %i.as, align 8, !tbaa !167
  %.not.i69.i = icmp eq i32 %i.av, 0
  br i1 %.not.i69.i, label %bb.i, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE.exit

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(12) %i.ar) #34, !inline_history !333
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE.exit: ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit.i, %bb.h, %bb.i, %_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit
  %i.az = icmp ult i32 %2, -16777216
  %i.ba = icmp ult i32 %3, -16777216
  %or.cond = select i1 %i.az, i1 true, i1 %i.ba
  %i.bb = icmp ult i32 %4, -16777216
  %or.cond73 = select i1 %or.cond, i1 true, i1 %i.bb
  %i.bc = icmp ult i32 %5, -16777216
  %i.bd = select i1 %or.cond73, i1 true, i1 %i.bc
  tail call void @_ZN5video18COpenGL3DriverBase21setRenderStates2DModeEbbb(ptr noundef nonnull align 8 dereferenceable(2528) %0, i1 noundef zeroext %i.bd, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 36
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %7, i64 80
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.bh = sitofp i32 %.sroa.051.0 to float        ; 2 uses
  %i.bi = sitofp i32 %.sroa.1357.0 to float       ; 2 uses
  %i.bj = sitofp i32 %.sroa.18.0 to float         ; 2 uses
  %i.bk = sitofp i32 %.sroa.854.0 to float        ; 2 uses
  store float %i.bh, ptr %7, align 16, !tbaa !42
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.bk, ptr %.sroa.441.0..sroa_idx, align 4, !tbaa !42
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.542.0..sroa_idx, align 8, !tbaa !42
  store i32 %2, ptr %i.be, align 8, !tbaa !193
  store <2 x float> zeroinitializer, ptr %i.bf, align 4, !tbaa !42
  store i16 0, ptr %i.bg, align 4, !tbaa !182
  store float %i.bi, ptr %.ptr.1, align 8, !tbaa !42
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 44
  store float %i.bk, ptr %.sroa.430.0..sroa_idx, align 4, !tbaa !42
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.531.0..sroa_idx, align 16, !tbaa !42
  %.sroa.935.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 %3, ptr %.sroa.935.0..sroa_idx, align 16, !tbaa !193
  %.sroa.1036.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 68
  store <2 x float> zeroinitializer, ptr %.sroa.1036.0..sroa_idx, align 4, !tbaa !42
  %.sroa.1238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 76
  store i16 0, ptr %.sroa.1238.0..sroa_idx, align 4, !tbaa !182
  store float %i.bi, ptr %.ptr.2, align 16, !tbaa !42
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 84
  store float %i.bj, ptr %.sroa.419.0..sroa_idx, align 4, !tbaa !42
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 88
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.520.0..sroa_idx, align 8, !tbaa !42
  %.sroa.924.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 104
  store i32 %5, ptr %.sroa.924.0..sroa_idx, align 8, !tbaa !193
  %.sroa.1025.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 108
  store <2 x float> zeroinitializer, ptr %.sroa.1025.0..sroa_idx, align 4, !tbaa !42
  %.sroa.1227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 116
  store i16 0, ptr %.sroa.1227.0..sroa_idx, align 4, !tbaa !182
  store float %i.bh, ptr %.ptr.3, align 8, !tbaa !42
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 124
  store float %i.bj, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !42
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 128
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !42
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 144
  store i32 %4, ptr %.sroa.9.0..sroa_idx, align 16, !tbaa !193
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 148
  store <2 x float> zeroinitializer, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !42
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 156
  store i16 0, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !182
  %i.bl = ptrtoint ptr %7 to i64
  call void @_ZN5video18COpenGL3DriverBase9beginDrawERKNS_10VertexTypeEm(ptr noundef nonnull readonly align 8 dereferenceable(2528) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) @_ZN5videoL11vtPrimitiveE, i64 noundef %i.bl)
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 440), align 8, !tbaa !306
  call void %i.bm(i32 noundef 6, i32 noundef 0, i32 noundef 4), !inline_history !327
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL11vtPrimitiveE, i64 8), align 8, !tbaa !307 ; 2 uses
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL11vtPrimitiveE, i64 16), align 8, !tbaa !307 ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.bn, %i.bo
  br i1 %.not7.i.i.i, label %_ZN5video18COpenGL3DriverBase8drawQuadERKNS_10VertexTypeERA4_KNS_9S3DVertexE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE.exit, %.lr.ph.i.i.i
  %.sroa.04.08.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i ], [ %i.bn, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE.exit ] ; 2 uses
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 984), align 8, !tbaa !276
  %i.bq = load i8, ptr %.sroa.04.08.i.i.i, align 4, !tbaa !310
  %i.br = zext i8 %i.bq to i32
  call void %i.bp(i32 noundef %i.br), !inline_history !328
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, %i.bo
  br i1 %.not.i.i.i, label %_ZN5video18COpenGL3DriverBase8drawQuadERKNS_10VertexTypeERA4_KNS_9S3DVertexE.exit, label %.lr.ph.i.i.i

_ZN5video18COpenGL3DriverBase8drawQuadERKNS_10VertexTypeERA4_KNS_9S3DVertexE.exit: ; preds = %.lr.ph.i.i.i, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.j

bb.j:                                             ; preds = %_ZN4core4rectIiE11clipAgainstERKS1_.exit, %_ZN5video18COpenGL3DriverBase8drawQuadERKNS_10VertexTypeERA4_KNS_9S3DVertexE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase10draw2DLineERKN4core8vector2dIiEES5_NS_6SColorE(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, i32 %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [2 x %"struct.video::S3DVertex"], align 16 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !313, !range !144, !noundef !145
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.f = tail call noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.e, ptr noundef nonnull align 8 dereferenceable(127) %i.d) ; 0 uses
  %.pre.i = load i8, ptr %i.a, align 8, !tbaa !313
  %i.g = trunc nuw i8 %.pre.i to i1
  br i1 %i.g, label %.thread.i, label %_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 750 ; 2 uses
  %i.j = load i8, ptr %i.i, align 2
  %i.k = and i8 %i.j, -13
  store i8 %i.k, ptr %i.i, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 748 ; 2 uses
  %i.m = load i16, ptr %i.l, align 4
  %i.n = and i16 %i.m, -16
  store i16 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.p = tail call noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.o, ptr noundef nonnull align 8 dereferenceable(127) %i.h) ; 0 uses
  br label %_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit

_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit: ; preds = %bb.b, %.thread.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2200
  store ptr null, ptr %i.q, align 8, !tbaa !159
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !139  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load i32, ptr %i.t, align 8
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !240, !nonnull !145, !align !241
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 172 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !224
  %.not.i.i11 = icmp eq i32 %i.y, 33984
  br i1 %.not.i.i11, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 584), align 8, !tbaa !225
  tail call void %i.z(i32 noundef 33984), !inline_history !8
  store i32 33984, ptr %i.x, align 4, !tbaa !224
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit.i

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit.i: ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !181 ; 4 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE.exit, label %.split.i

.split.i:                                         ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !255
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 520), align 8, !tbaa !256
  tail call void %i.ae(i32 noundef %i.ad, i32 noundef 0), !inline_history !332
  store ptr null, ptr %i.aa, align 8, !tbaa !181
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ab, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !167 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #36
  unreachable

bb.f:                                             ; preds = %.split.i
  %i.am = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.am, ptr %i.aj, align 8, !tbaa !167
  %.not.i69.i = icmp eq i32 %i.am, 0
  br i1 %.not.i69.i, label %bb.g, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE.exit

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(12) %i.ai) #34, !inline_history !333
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE.exit: ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit.i, %bb.f, %bb.g, %_ZN5video18COpenGL3DriverBase16chooseMaterial2DEv.exit
  %i.aq = icmp ult i32 %3, -16777216
  tail call void @_ZN5video18COpenGL3DriverBase21setRenderStates2DModeEbbb(ptr noundef nonnull align 8 dereferenceable(2528) %0, i1 noundef zeroext %i.aq, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 36
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.au = load <2 x i32>, ptr %1, align 4, !tbaa !193
  %i.av = sitofp <2 x i32> %i.au to <2 x float>
  store <2 x float> %i.av, ptr %4, align 16, !tbaa !42
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.515.0..sroa_idx, align 8, !tbaa !42
  store i32 %3, ptr %i.ar, align 8, !tbaa !193
  store <2 x float> zeroinitializer, ptr %i.as, align 4, !tbaa !42
  store i16 0, ptr %i.at, align 4, !tbaa !182
  %i.aw = load <2 x i32>, ptr %2, align 4, !tbaa !193
  %i.ax = sitofp <2 x i32> %i.aw to <2 x float>
  store <2 x float> %i.ax, ptr %.ptr.1, align 8, !tbaa !42
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !42
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 %3, ptr %.sroa.9.0..sroa_idx, align 16, !tbaa !193
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 68
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !42
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 76
  store i16 0, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !182
  %i.ay = ptrtoint ptr %4 to i64
  call void @_ZN5video18COpenGL3DriverBase9beginDrawERKNS_10VertexTypeEm(ptr noundef nonnull readonly align 8 dereferenceable(2528) %0, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5videoL11vtPrimitiveE, i64 noundef %i.ay)
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 440), align 8, !tbaa !306
  call void %i.az(i32 noundef 1, i32 noundef 0, i32 noundef 2), !inline_history !329
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL11vtPrimitiveE, i64 8), align 8, !tbaa !307 ; 2 uses
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN5videoL11vtPrimitiveE, i64 16), align 8, !tbaa !307 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.ba, %i.bb
  br i1 %.not7.i.i, label %_ZN5video18COpenGL3DriverBase10drawArraysEjRKNS_10VertexTypeEPKvi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE.exit, %.lr.ph.i.i
  %.sroa.04.08.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %i.ba, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE.exit ] ; 2 uses
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 984), align 8, !tbaa !276
  %i.bd = load i8, ptr %.sroa.04.08.i.i, align 4, !tbaa !310
  %i.be = zext i8 %i.bd to i32
  call void %i.bc(i32 noundef %i.be), !inline_history !330
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, %i.bb
  br i1 %.not.i.i, label %_ZN5video18COpenGL3DriverBase10drawArraysEjRKNS_10VertexTypeEPKvi.exit, label %.lr.ph.i.i

_ZN5video18COpenGL3DriverBase10drawArraysEjRKNS_10VertexTypeEPKvi.exit: ; preds = %.lr.ph.i.i, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase10drawArraysEjRKNS_10VertexTypeEPKvi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2528) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  tail call void @_ZN5video18COpenGL3DriverBase9beginDrawERKNS_10VertexTypeEm(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.a)
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 440), align 8, !tbaa !306
  tail call void %i.b(i32 noundef %1, i32 noundef 0, i32 noundef %4)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !307  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !307  ; 2 uses
  %.not7.i = icmp eq ptr %i.d, %i.f
  br i1 %.not7.i, label %_ZN5video18COpenGL3DriverBase7endDrawERKNS_10VertexTypeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.04.08.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 984), align 8, !tbaa !276
  %i.h = load i8, ptr %.sroa.04.08.i, align 4, !tbaa !310
  %i.i = zext i8 %i.h to i32
  tail call void %i.g(i32 noundef %i.i), !inline_history !311
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i, label %_ZN5video18COpenGL3DriverBase7endDrawERKNS_10VertexTypeE.exit, label %.lr.ph.i

_ZN5video18COpenGL3DriverBase7endDrawERKNS_10VertexTypeE.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase9beginDrawERKNS_10VertexTypeEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2528) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !307  ; 2 uses
  %.not27 = icmp eq ptr %i.b, %i.d
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1225
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.024.028 = phi ptr [ %i.b, %.lr.ph ], [ %i.be, %bb.h ] ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.024.028, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !522
  %i.h = icmp eq i8 %i.g, 2
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.e, align 1, !tbaa !185
  %i.j = icmp ult i8 %i.i, 3
  br i1 %i.j, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 992), align 8, !tbaa !274
  %i.l = load i8, ptr %.sroa.024.028, align 4, !tbaa !310
  %i.m = zext i8 %i.l to i32
  tail call void %i.k(i32 noundef %i.m)
  %i.n = load i8, ptr %i.f, align 4, !tbaa !522
  switch i8 %i.n, label %bb.h [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
end_hunk_1
begin_hunk_2_@_ZN5video18COpenGL3DriverBase20setBasicRenderStatesERKNS_9SMaterialES3_b:bb.a
.thread155:                                       ; preds = %.thread154..thread155_crit_edge, %bb.cc
  %i.lt = phi i16 [ %.pre176, %.thread154..thread155_crit_edge ], [ %.pre177, %bb.cc ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.lv = load i16, ptr %i.lu, align 4
  %i.lw = xor i16 %i.lt, %i.lv
  %i.lx = and i16 %i.lw, 240
  %.not49 = icmp eq i16 %i.lx, 0
  br i1 %.not49, label %bb.ce, label %._crit_edge174

._crit_edge174:                                   ; preds = %bb.cc, %.thread155
  %i.ly = phi i16 [ %i.lt, %.thread155 ], [ %.pre177, %bb.cc ]
  %i.lz = and i16 %i.ly, 64
  %.not50 = icmp eq i16 %i.lz, 0
  br i1 %.not50, label %bb.cd, label %.sink.split

bb.cd:                                            ; preds = %._crit_edge174
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.mb = load i16, ptr %i.ma, align 4
  %i.mc = and i16 %i.mb, 64
  %.not51 = icmp eq i16 %i.mc, 0
  br i1 %.not51, label %bb.ce, label %.sink.split

.sink.split:                                      ; preds = %bb.cd, %._crit_edge174
  %.sink.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @GL, i64 232), %._crit_edge174 ], [ getelementptr inbounds nuw (i8, ptr @GL, i64 224), %bb.cd ]
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !376
  tail call void %.sink(i32 noundef 32926)
  br label %bb.ce

bb.ce:                                            ; preds = %.sink.split, %bb.cd, %.thread155
  tail call void @_ZN5video18COpenGL3DriverBase22setTextureRenderStatesERKNS_9SMaterialEb(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr noundef nonnull align 8 dereferenceable(127) %1, i1 noundef zeroext %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE20setBlendFuncSeparateEjjjj(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, %3
  %.not26 = icmp eq i32 %2, %4
  %or.cond = and i1 %.not, %.not26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.c = load i32, ptr %i.b, align 4, !tbaa !193
  %.not.i = icmp eq i32 %i.c, %1                  ; 2 uses
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !212
  %i.f = load i32, ptr %i.e, align 4, !tbaa !193
  %.not28 = icmp eq i32 %i.f, %2
  br i1 %.not28, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !213
  %i.i = load i32, ptr %i.h, align 4, !tbaa !193
  %.not29 = icmp eq i32 %i.i, %3
  br i1 %.not29, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !214
  %i.l = load i32, ptr %i.k, align 4, !tbaa !193
  %.not30 = icmp ne i32 %i.l, %4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.n = load i8, ptr %i.m, align 1, !range !144
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond33 = select i1 %.not30, i1 true, i1 %i.o
  br i1 %or.cond33, label %bb.f, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 656), align 8, !tbaa !555
  tail call void %i.p(i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4), !inline_history !553
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !209
  %.not35 = icmp eq i32 %i.r, 0
  br i1 %.not35, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !212
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !213
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !214
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  store i32 %1, ptr %i.z, align 4, !tbaa !193
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  store i32 %2, ptr %i.aa, align 4, !tbaa !193
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  store i32 %3, ptr %i.ab, align 4, !tbaa !193
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  store i32 %4, ptr %i.ac, align 4, !tbaa !193
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load i32, ptr %i.q, align 8, !tbaa !209
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp samesign ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %bb.g, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, !llvm.loop !554

bb.h:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !212
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !193
  %.not18.i = icmp eq i32 %i.ai, %2
  br i1 %.not18.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !213
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !193
  %.not19.i = icmp eq i32 %i.al, %1
  br i1 %.not19.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !214
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !193
  %.not20.i = icmp ne i32 %i.ao, %2
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.aq = load i8, ptr %i.ap, align 1, !range !144
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i = select i1 %.not20.i, i1 true, i1 %i.ar
  br i1 %or.cond.i, label %bb.l, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 256), align 8, !tbaa !217
  tail call void %i.as(i32 noundef %1, i32 noundef %2), !inline_history !2
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !209
  %.not24.i = icmp eq i32 %i.au, 0
  br i1 %.not24.i, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !211
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !212
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !213
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !214
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.m ] ; 5 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.i
  store i32 %1, ptr %i.bc, align 4, !tbaa !193
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.i
  store i32 %2, ptr %i.bd, align 4, !tbaa !193
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.i
  store i32 %1, ptr %i.be, align 4, !tbaa !193
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i
  store i32 %2, ptr %i.bf, align 4, !tbaa !193
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bg = load i32, ptr %i.at, align 8, !tbaa !209
  %i.bh = zext i32 %i.bg to i64
  %i.bi = icmp samesign ult i64 %indvars.iv.next.i, %i.bh
  br i1 %i.bi, label %bb.m, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, !llvm.loop !3

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split: ; preds = %bb.g, %bb.m, %bb.l, %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 0, ptr %i.bj, align 1, !tbaa !231
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit: ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, %bb.k, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZNK5video18COpenGL3DriverBase10getGLBlendENS_14E_BLEND_FACTORE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(2528) %0, i8 noundef zeroext %1) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = zext i8 %1 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @_ZZNK5video18COpenGL3DriverBase10getGLBlendENS_14E_BLEND_FACTOREE10blendTable, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !193
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase22setTextureRenderStatesERKNS_9SMaterialEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2528) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(127) %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 964
  %i.b = load i8, ptr %i.a, align 4, !tbaa !366   ; 2 uses
  %.not105107 = icmp eq i8 %i.b, 0
  br i1 %.not105107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1022
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1023 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.i = zext i8 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.thread
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %i.j, %_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.thread ] ; 3 uses
  %i.j = add nsw i64 %indvars.iv, -1              ; 4 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !139  ; 2 uses
  %i.l = icmp slt i64 %indvars.iv, 5
  br i1 %i.l, label %_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit, label %_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.thread

_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.j
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !181  ; 21 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.q = load i32, ptr %i.p, align 8, !tbaa !255  ; 7 uses
  %i.r = add nuw nsw i64 %indvars.iv, 33983       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 172 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !224
  %i.u = zext i32 %i.t to i64
  %.not.i = icmp eq i64 %i.r, %i.u
  br i1 %.not.i, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 584), align 8, !tbaa !225
  %i.w = trunc nuw nsw i64 %i.r to i32            ; 2 uses
  tail call void %i.v(i32 noundef %i.w), !inline_history !4
  store i32 %i.w, ptr %i.s, align 4, !tbaa !224
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit: ; preds = %bb.c, %bb.d
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.j ; 15 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 201 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 209 ; 2 uses
  br i1 %2, label %.thread, label %bb.e

.thread:                                          ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit
  store i8 0, ptr %i.z, align 1, !tbaa !557
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 209
  br label %._crit_edge112

bb.e:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit
  %.pre = load i8, ptr %i.z, align 1, !tbaa !557, !range !144
  %i.ab = trunc nuw i8 %.pre to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 209 ; 3 uses
  br i1 %i.ab, label %bb.f, label %._crit_edge112

._crit_edge112:                                   ; preds = %.thread, %bb.e
  %i.ad = phi ptr [ %i.aa, %.thread ], [ %i.ac, %bb.e ]
  %.phi.trans.insert113 = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %.pre114 = load i8, ptr %.phi.trans.insert113, align 1, !tbaa !369
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !369 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 207
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !558
  %.not87 = icmp eq i8 %i.af, %i.ah
  br i1 %.not87, label %bb.j, label %bb.g

bb.g:                                             ; preds = %._crit_edge112, %bb.f
  %i.ai = phi ptr [ %i.ad, %._crit_edge112 ], [ %i.ac, %bb.f ]
  %i.aj = phi i8 [ %.pre114, %._crit_edge112 ], [ %i.af, %bb.f ] ; 2 uses
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !361
  switch i8 %i.aj, label %bb.h [
    i8 0, label %bb.i
    i8 1, label %.fold.split
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.10, i32 noundef 1383, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5video18COpenGL3DriverBase22setTextureRenderStatesERKNS_9SMaterialEb) #36
  unreachable

.fold.split:                                      ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %.fold.split
  %i.al = phi i32 [ 9728, %bb.g ], [ 9729, %.fold.split ]
  tail call void %i.ak(i32 noundef %i.q, i32 noundef 10240, i32 noundef %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 207
  store i8 %i.aj, ptr %i.am, align 1, !tbaa !558
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.an = phi ptr [ %i.ai, %bb.i ], [ %i.ac, %bb.f ] ; 7 uses
  %i.ao = load i8, ptr %i.d, align 2
  %i.ap = icmp slt i8 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %._crit_edge115

._crit_edge115:                                   ; preds = %bb.j
  %.pre116 = load i8, ptr %i.an, align 1, !tbaa !557, !range !144
  br label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !342, !range !144, !noundef !145
  %i.as = trunc nuw i8 %i.ar to i1
  %.pre117 = load i8, ptr %i.an, align 1, !tbaa !557, !range !144 ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.at = trunc nuw i8 %.pre117 to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.av = load i8, ptr %i.au, align 2, !tbaa !368 ; 4 uses
  br i1 %i.at, label %bb.m, label %._crit_edge121

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 206
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !559
  %.not89 = icmp eq i8 %i.av, %i.ax
  br i1 %.not89, label %bb.n, label %._crit_edge121

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !560, !range !144, !noundef !145
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.u, label %._crit_edge121

._crit_edge121:                                   ; preds = %bb.l, %bb.n, %bb.m
  %i.bb = icmp ult i8 %i.av, 4
  br i1 %i.bb, label %switch.lookup, label %bb.o

bb.o:                                             ; preds = %._crit_edge121
  tail call void @__assert_fail(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.10, i32 noundef 1395, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5video18COpenGL3DriverBase22setTextureRenderStatesERKNS_9SMaterialEb) #36
  unreachable

switch.lookup:                                    ; preds = %._crit_edge121
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !361
  %switch.idx.cast = zext nneg i8 %i.av to i32
  %switch.offset = or disjoint i32 %switch.idx.cast, 9984
  tail call void %i.bc(i32 noundef %i.q, i32 noundef 10241, i32 noundef %switch.offset)
  br label %.sink.split

bb.p:                                             ; preds = %._crit_edge115, %bb.k
  %i.bd = phi i8 [ %.pre116, %._crit_edge115 ], [ %.pre117, %bb.k ]
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !368 ; 3 uses
  br i1 %i.be, label %bb.q, label %._crit_edge118

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 206
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !559
  %.not88 = icmp eq i8 %i.bg, %i.bi
  br i1 %.not88, label %bb.r, label %._crit_edge118

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !560, !range !144, !noundef !145
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %._crit_edge118, label %bb.u

._crit_edge118:                                   ; preds = %bb.p, %bb.r, %bb.q
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !361
  %i.bn = and i8 %i.bg, -3
  switch i8 %i.bn, label %bb.s [
    i8 0, label %bb.t
    i8 1, label %.fold.split104
  ]

bb.s:                                             ; preds = %._crit_edge118
  tail call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.10, i32 noundef 1405, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5video18COpenGL3DriverBase22setTextureRenderStatesERKNS_9SMaterialEb) #36
  unreachable

.fold.split104:                                   ; preds = %._crit_edge118
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge118, %.fold.split104
  %i.bo = phi i32 [ 9728, %._crit_edge118 ], [ 9729, %.fold.split104 ]
  tail call void %i.bm(i32 noundef %i.q, i32 noundef 10241, i32 noundef %i.bo)
  br label %.sink.split

.sink.split:                                      ; preds = %switch.lookup, %bb.t
  %.sink155 = phi i8 [ %i.bg, %bb.t ], [ %i.av, %switch.lookup ]
  %.sink = phi i8 [ 0, %bb.t ], [ 1, %switch.lookup ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 206
  store i8 %.sink155, ptr %i.bp, align 2, !tbaa !559
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  store i8 %.sink, ptr %i.bq, align 8, !tbaa !560
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.r, %bb.n
  %i.br = load i8, ptr %i.e, align 2, !tbaa !561, !range !144, !noundef !145
  %i.bs = trunc nuw i8 %i.br to i1
  %.pre131.pre139 = load i8, ptr %i.an, align 1, !tbaa !557, !range !144 ; 2 uses
  br i1 %i.bs, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.bt = trunc nuw i8 %.pre131.pre139 to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 13
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !377 ; 3 uses
  br i1 %i.bt, label %bb.w, label %._crit_edge124

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 204
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !562
  %.not90 = icmp eq i8 %i.bv, %i.bx
  br i1 %.not90, label %.thread152, label %._crit_edge124

._crit_edge124:                                   ; preds = %bb.v, %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %i.x, i64 13
  %.not91 = icmp eq i8 %i.bv, 0
  br i1 %.not91, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge124
  %i.bz = sitofp i8 %i.bv to float
  %i.ca = fmul nnan float %i.bz, 1.250000e-01     ; 2 uses
  %i.cb = load float, ptr %i.f, align 8, !tbaa !563 ; 3 uses
  %i.cc = fneg float %i.cb                        ; 2 uses
  %i.cd = fcmp olt float %i.ca, %i.cc
  %i.ce = select i1 %i.cd, float %i.cc, float %i.ca ; 2 uses
  %i.cf = fcmp olt float %i.ce, %i.cb
  %i.cg = select i1 %i.cf, float %i.ce, float %i.cb
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge124, %bb.x
  %.sink157 = phi float [ %i.cg, %bb.x ], [ 0.000000e+00, %._crit_edge124 ]
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 112), align 8, !tbaa !564
  tail call void %i.ch(i32 noundef %i.q, i32 noundef 34049, float noundef %.sink157)
  %i.ci = load i8, ptr %i.by, align 1, !tbaa !377
  %i.cj = getelementptr inbounds nuw i8, ptr %i.o, i64 204
  store i8 %i.ci, ptr %i.cj, align 4, !tbaa !562
  %.pre131.pre = load i8, ptr %i.an, align 1, !tbaa !557, !range !144
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.u
  %.pre131 = phi i8 [ %.pre131.pre, %bb.y ], [ %.pre131.pre139, %bb.u ] ; 2 uses
  %i.ck = load i8, ptr %i.g, align 1, !tbaa !565, !range !144, !noundef !145
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %5, label %bb.ae

.thread152:                                       ; preds = %bb.w
  %3 = load i8, ptr %i.g, align 1, !tbaa !565, !range !144, !noundef !145
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %bb.ab, label %.thread152.a

5:                                                ; preds = %bb.z
  %6 = trunc nuw i8 %.pre131 to i1
  br i1 %6, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %5
  %i.cm = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !370
  br label %._crit_edge127

bb.ab:                                            ; preds = %.thread152, %5
  %7 = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %8 = load i8, ptr %7, align 4, !tbaa !370       ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.o, i64 205
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !566
  %.not92 = icmp eq i8 %8, %i.cp
  br i1 %.not92, label %.thread152.a, label %._crit_edge127

._crit_edge127:                                   ; preds = %bb.aa, %bb.ab
  %9 = phi i8 [ %i.cn, %bb.aa ], [ %8, %bb.ab ]   ; 2 uses
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !361
  %i.cr = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  %i.cs = icmp ugt i8 %9, 1
  br i1 %i.cs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge127
  %i.ct = load i8, ptr %i.h, align 8, !tbaa !142
  %i.cu = icmp ult i8 %i.ct, %9
  %i.cv = select i1 %i.cu, ptr %i.h, ptr %i.cr
  %i.cw = load i8, ptr %i.cv, align 4, !tbaa !142
  %i.cx = zext i8 %i.cw to i32
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge127, %bb.ac
  %i.cy = phi i32 [ %i.cx, %bb.ac ], [ 1, %._crit_edge127 ]
  tail call void %i.cq(i32 noundef %i.q, i32 noundef 34046, i32 noundef %i.cy)
  %i.cz = load i8, ptr %i.cr, align 4, !tbaa !370
  %i.da = getelementptr inbounds nuw i8, ptr %i.o, i64 205
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !566
  %.pre130 = load i8, ptr %i.an, align 1, !tbaa !557, !range !144
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.z
  %i.db = phi i8 [ %.pre130, %bb.ad ], [ %.pre131, %bb.z ]
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %.thread152.a, label %._crit_edge132

._crit_edge132:                                   ; preds = %bb.ae
  %.phi.trans.insert133 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre134 = load i16, ptr %.phi.trans.insert133, align 8
  br label %bb.af

.thread152.a:                                     ; preds = %.thread152, %bb.ab, %bb.ae
  %i.dd = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.de = load i16, ptr %i.dd, align 8            ; 2 uses
  %i.df = and i16 %i.de, 15
  %i.dg = load i8, ptr %i.y, align 1, !tbaa !567
  %i.dh = zext i8 %i.dg to i16
  %.not93 = icmp eq i16 %i.df, %i.dh
  br i1 %.not93, label %.thread153, label %bb.af

bb.af:                                            ; preds = %.thread152.a, %._crit_edge132
  %i.di = phi i16 [ %.pre134, %._crit_edge132 ], [ %i.de, %.thread152.a ]
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !361
  %i.dk = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.dl = trunc i16 %i.di to i8
  %i.dm = and i8 %i.dl, 15
  %.off.i = add nsw i8 %i.dm, -1
  %switch.i = icmp ult i8 %.off.i, 3
  %..i = select i1 %switch.i, i32 33071, i32 10497
  tail call void %i.dj(i32 noundef %i.q, i32 noundef 10242, i32 noundef %..i)
  %i.dn = load i16, ptr %i.dk, align 8
  %i.do = trunc i16 %i.dn to i8
  %i.dp = and i8 %i.do, 15
  store i8 %i.dp, ptr %i.y, align 1, !tbaa !567
  %.pre135 = load i8, ptr %i.an, align 1, !tbaa !557, !range !144
  %i.dq = trunc nuw i8 %.pre135 to i1
  br i1 %i.dq, label %.thread153, label %._crit_edge136

._crit_edge136:                                   ; preds = %bb.af
  %.phi.trans.insert137 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre138 = load i16, ptr %.phi.trans.insert137, align 8
  br label %bb.ag

.thread153:                                       ; preds = %.thread152.a, %bb.af
  %i.dr = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ds = load i16, ptr %i.dr, align 8            ; 2 uses
  %i.dt = lshr i16 %i.ds, 4
  %i.du = and i16 %i.dt, 15
  %i.dv = getelementptr inbounds nuw i8, ptr %i.o, i64 202
  %i.dw = load i8, ptr %i.dv, align 2, !tbaa !568
  %i.dx = zext i8 %i.dw to i16
  %.not94 = icmp eq i16 %i.du, %i.dx
  br i1 %.not94, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge136, %.thread153
  %i.dy = phi i16 [ %.pre138, %._crit_edge136 ], [ %i.ds, %.thread153 ]
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 128), align 8, !tbaa !361
  %i.ea = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.eb = trunc i16 %i.dy to i8
  %i.ec = lshr i8 %i.eb, 4
  %.off.i98 = add nsw i8 %i.ec, -1
  %switch.i99 = icmp ult i8 %.off.i98, 3
  %..i100 = select i1 %switch.i99, i32 33071, i32 10497
  tail call void %i.dz(i32 noundef %i.q, i32 noundef 10243, i32 noundef %..i100)
  %i.ed = load i16, ptr %i.ea, align 8
  %i.ee = trunc i16 %i.ed to i8
  %i.ef = lshr i8 %i.ee, 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.o, i64 202
  store i8 %i.ef, ptr %i.eg, align 2, !tbaa !568
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread153
  store i8 1, ptr %i.an, align 1, !tbaa !557
  br label %_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.thread

_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.thread: ; preds = %bb.b, %_ZNK5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit, %bb.ah
  %.not105.wide = icmp eq i64 %i.j, 0
  br i1 %.not105.wide, label %._crit_edge, label %bb.b, !llvm.loop !556
}

; Function Attrs: uwtable
define void @_ZThn936_N5video18COpenGL3DriverBase20setBasicRenderStatesERKNS_9SMaterialES3_b(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(127) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(127) %2, i1 noundef zeroext %3) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -936
  tail call void @_ZN5video18COpenGL3DriverBase20setBasicRenderStatesERKNS_9SMaterialES3_b(ptr noundef nonnull align 8 dereferenceable(2528) %i.a, ptr noundef nonnull align 8 dereferenceable(127) %1, ptr noundef nonnull align 8 dereferenceable(127) %2, i1 noundef zeroext %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 10497, 33072) i32 @_ZNK5video18COpenGL3DriverBase18getTextureWrapModeEh(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(2528) %0, i8 noundef zeroext %1) local_unnamed_addr #19 align 2 {
bb.a:
  %.off = add i8 %1, -1
  %switch = icmp ult i8 %.off, 3
  %. = select i1 %switch, i32 33071, i32 10497
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK5video18COpenGL3DriverBase7getNameEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2528) %0) unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !143
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase11setViewPortERKN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #3 align 2 {
_ZN4core4rectIiE11clipAgainstERKS1_.exit:
  %.sroa.06.0.copyload = load i32, ptr %1, align 4, !tbaa !193
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !193
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.17.0.copyload = load i32, ptr %.sroa.17.0..sroa_idx, align 4, !tbaa !193
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.22.0.copyload = load i32, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !193
  %i.a = load ptr, ptr %0, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(933) %0)
  %i.e = load i32, ptr %i.d, align 4, !tbaa !304  ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(933) %0)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !305  ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %.sroa.17.0.copyload)
  %.sroa.22.0 = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %.sroa.22.0.copyload)
  %.sroa.17.1 = tail call i32 @llvm.smax.i32(i32 %spec.select, i32 0) ; 2 uses
  %.sroa.22.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.22.0, i32 0) ; 3 uses
  %.sroa.06.0 = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %.sroa.06.0.copyload)
  %.sroa.10.0 = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %.sroa.10.0.copyload)
  %.sroa.06.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.06.0, i32 0) ; 5 uses
  %.sroa.10.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.10.0, i32 0) ; 2 uses
  %i.l = sub nsw i32 %.sroa.22.1, %.sroa.10.1     ; 4 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.a, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE11setViewportEiiii.exit

bb.a:                                             ; preds = %_ZN4core4rectIiE11clipAgainstERKS1_.exit
  %i.n = sub nsw i32 %.sroa.17.1, %.sroa.06.1     ; 4 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE11setViewportEiiii.exit

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !139  ; 4 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 496
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 4 dereferenceable(8) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(933) %0)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !305
  %i.x = sub i32 %i.w, %.sroa.22.1                ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 176 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !229
  %.not.i = icmp eq i32 %i.z, %.sroa.06.1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 180 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %.not12.i = icmp eq i32 %i.ab, %i.x
  %or.cond.i = select i1 %.not.i, i1 %.not12.i, i1 false
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 184 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %.not13.i = icmp eq i32 %i.ad, %i.n
  %or.cond17.i = select i1 %or.cond.i, i1 %.not13.i, i1 false
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 188 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %.not14.i = icmp eq i32 %i.af, %i.l
  %or.cond19.i = select i1 %or.cond17.i, i1 %.not14.i, i1 false
  br i1 %or.cond19.i, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE11setViewportEiiii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 432), align 8, !tbaa !228
  tail call void %i.ag(i32 noundef %.sroa.06.1, i32 noundef %i.x, i32 noundef %i.n, i32 noundef %i.l), !inline_history !13
  store i32 %.sroa.06.1, ptr %i.y, align 8, !tbaa !229
  store i32 %i.x, ptr %i.aa, align 4, !tbaa !207
  store i32 %i.n, ptr %i.ac, align 8, !tbaa !226
  store i32 %i.l, ptr %i.ae, align 4, !tbaa !227
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE11setViewportEiiii.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE11setViewportEiiii.exit: ; preds = %bb.c, %bb.b, %bb.a, %_ZN4core4rectIiE11clipAgainstERKS1_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 %.sroa.06.1, ptr %i.ah, align 8, !tbaa !193
  %.sroa.10.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i32 %.sroa.10.1, ptr %.sroa.10.0..sroa_idx11, align 4, !tbaa !193
  %.sroa.17.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 %.sroa.17.1, ptr %.sroa.17.0..sroa_idx17, align 8, !tbaa !193
  %.sroa.22.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 %.sroa.22.1, ptr %.sroa.22.0..sroa_idx21, align 4, !tbaa !193
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase14setViewPortRawEjj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2528) initializes((304, 320)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.d = load <4 x i32>, ptr %i.c, align 8
  %i.e = insertelement <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>, i32 %1, i64 2
  %i.f = insertelement <4 x i32> %i.e, i32 %2, i64 3
  %i.g = icmp eq <4 x i32> %i.d, %i.f
  %i.h = freeze <4 x i1> %i.g
  %i.i = bitcast <4 x i1> %i.h to i4
  %i.j = icmp eq i4 %i.i, -1
  br i1 %i.j, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE11setViewportEiiii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 432), align 8, !tbaa !228
  tail call void %i.n(i32 noundef 0, i32 noundef 0, i32 noundef %1, i32 noundef %2), !inline_history !13
end_hunk_2
begin_hunk_3_@_ZN5video23COpenGLCoreRenderTargetINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE6updateEv:bb.a
  %i.i = load i8, ptr %i.h, align 1, !range !144  ; 2 uses
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond = select i1 %i.g, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.b, label %bb.au

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !378
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !379
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 3                   ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !298  ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !296  ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = lshr exact i64 %i.z, 2                  ; 2 uses
  %i.ab = trunc i64 %i.aa to i32                  ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.s, i32 %i.ab) ; 3 uses
  %.not72 = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not72, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  %wide.trip.count = zext i32 %.sroa.speculated to i64
  br label %bb.d

.preheader.loopexit:                              ; preds = %bb.p
  %.pre79 = load ptr, ptr %i.u, align 8, !tbaa !298 ; 2 uses
  %.pre80 = load ptr, ptr %i.t, align 8, !tbaa !296 ; 2 uses
  %.pre82.a = ptrtoint ptr %.pre79 to i64
  %.pre83 = ptrtoint ptr %.pre80 to i64
  %.pre85 = sub i64 %.pre82.a, %.pre83            ; 2 uses
  %.pre87 = lshr exact i64 %.pre85, 2
  %.pre89 = trunc i64 %.pre87 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.c
  %.pre-phi90 = phi i32 [ %.pre89, %.preheader.loopexit ], [ %i.ab, %bb.c ]
  %.pre-phi86 = phi i64 [ %.pre85, %.preheader.loopexit ], [ %i.z, %bb.c ]
  %i.af = phi ptr [ %.pre80, %.preheader.loopexit ], [ %i.w, %bb.c ]
  %i.ag = phi ptr [ %.pre79, %.preheader.loopexit ], [ %i.v, %bb.c ]
  %i.ah = icmp ult i32 %.sroa.speculated, %.pre-phi90
  br i1 %i.ah, label %.lr.ph71.preheader, label %._crit_edge

.lr.ph71.preheader:                               ; preds = %.preheader
  %i.ai = and i64 %i.r, 4294967295
  %i.aj = and i64 %i.aa, 4294967295
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %i.aj)
  br label %.lr.ph71

bb.d:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 10 uses
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !378
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !379 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = icmp ugt i64 %i.ap, %indvars.iv
  br i1 %i.aq, label %_ZN4core5arrayIPN5video8ITextureEEixEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5video8ITextureEEixEj) #36
  unreachable

_ZN4core5arrayIPN5video8ITextureEEixEj.exit:      ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !383 ; 3 uses
  %.not46 = icmp eq ptr %i.as, null
  br i1 %.not46, label %_ZN4core5arrayIPN5video8ITextureEEixEj.exit..thread_crit_edge, label %bb.f

_ZN4core5arrayIPN5video8ITextureEEixEj.exit..thread_crit_edge: ; preds = %_ZN4core5arrayIPN5video8ITextureEEixEj.exit
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !298
  %.pre77 = load ptr, ptr %i.t, align 8, !tbaa !296
  br label %.thread

bb.f:                                             ; preds = %_ZN4core5arrayIPN5video8ITextureEEixEj.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 124
  %i.au = load i32, ptr %i.at, align 4, !tbaa !257 ; 2 uses
  %.not47 = icmp eq i32 %i.au, 0
  %.pre76 = load ptr, ptr %i.u, align 8, !tbaa !298 ; 2 uses
  %.pre78 = load ptr, ptr %i.t, align 8, !tbaa !296 ; 3 uses
  br i1 %.not47, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = trunc nuw i64 %indvars.iv to i32
  %i.aw = add i32 %i.av, 36064                    ; 2 uses
  %i.ax = ptrtoint ptr %.pre76 to i64
  %i.ay = ptrtoint ptr %.pre78 to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 2
  %i.bb = icmp ugt i64 %i.ba, %indvars.iv
  br i1 %i.bb, label %_ZN4core5arrayIjEixEj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #36
  unreachable

_ZN4core5arrayIjEixEj.exit:                       ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.pre78, i64 %indvars.iv
  store i32 %i.aw, ptr %i.bc, align 4, !tbaa !193
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 108
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !343
  switch i32 %i.be, label %bb.l [
    i32 0, label %_ZN4core5arrayIjEixEj.exit52
    i32 1, label %bb.i
    i32 2, label %bb.j
  ]

bb.i:                                             ; preds = %_ZN4core5arrayIjEixEj.exit
  br label %_ZN4core5arrayIjEixEj.exit52

bb.j:                                             ; preds = %_ZN4core5arrayIjEixEj.exit
  %i.bf = load ptr, ptr %i.ad, align 8, !tbaa !387
  %i.bg = load ptr, ptr %i.ac, align 8, !tbaa !388 ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2
  %i.bl = icmp ugt i64 %i.bk, %indvars.iv
  br i1 %i.bl, label %_ZN4core5arrayIN5video14E_CUBE_SURFACEEEixEj.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video14E_CUBE_SURFACEEEixEj) #36
  unreachable

_ZN4core5arrayIN5video14E_CUBE_SURFACEEEixEj.exit: ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !390
  %i.bo = add nsw i32 %i.bn, 34069
  br label %_ZN4core5arrayIjEixEj.exit52

bb.l:                                             ; preds = %_ZN4core5arrayIjEixEj.exit
  %i.bp = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull @.str.140)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.bp, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #38
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_ZN4core5arrayIjEixEj.exit52:                     ; preds = %bb.i, %_ZN4core5arrayIN5video14E_CUBE_SURFACEEEixEj.exit, %_ZN4core5arrayIjEixEj.exit
  %.036 = phi i32 [ %i.bo, %_ZN4core5arrayIN5video14E_CUBE_SURFACEEEixEj.exit ], [ 37120, %bb.i ], [ 3553, %_ZN4core5arrayIjEixEj.exit ]
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 2216), align 8, !tbaa !391
  tail call void %i.br(i32 noundef 36160, i32 noundef %i.aw, i32 noundef %.036, i32 noundef %i.au, i32 noundef 0), !inline_history !17
  %i.bs = load ptr, ptr %i.ae, align 8, !tbaa !291
  %i.bt = tail call noundef zeroext i1 @_ZN5video18COpenGL3DriverBase11testGLErrorEPKci(ptr noundef nonnull align 8 dereferenceable(2528) %i.bs, ptr noundef nonnull @.str.102, i32 noundef 191) ; 0 uses
  br label %bb.p

.thread:                                          ; preds = %_ZN4core5arrayIPN5video8ITextureEEixEj.exit..thread_crit_edge, %bb.f
  %i.bu = phi ptr [ %.pre77, %_ZN4core5arrayIPN5video8ITextureEEixEj.exit..thread_crit_edge ], [ %.pre78, %bb.f ] ; 2 uses
  %i.bv = phi ptr [ %.pre, %_ZN4core5arrayIPN5video8ITextureEEixEj.exit..thread_crit_edge ], [ %.pre76, %bb.f ]
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 2
  %i.ca = icmp ugt i64 %i.bz, %indvars.iv
  br i1 %i.ca, label %_ZN4core5arrayIjEixEj.exit53, label %bb.o

bb.o:                                             ; preds = %.thread
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #36
  unreachable

_ZN4core5arrayIjEixEj.exit53:                     ; preds = %.thread
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !193
  %.not48 = icmp eq i32 %i.cc, 0
  br i1 %.not48, label %bb.p, label %_ZN4core5arrayIjEixEj.exit55

_ZN4core5arrayIjEixEj.exit55:                     ; preds = %_ZN4core5arrayIjEixEj.exit53
  store i32 0, ptr %i.cb, align 4, !tbaa !193
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 2216), align 8, !tbaa !391
  tail call void %i.cd(i32 noundef 36160, i32 noundef 0, i32 noundef 3553, i32 noundef 0, i32 noundef 0), !inline_history !17
  tail call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.141, i32 noundef 3)
  br label %bb.p

bb.p:                                             ; preds = %_ZN4core5arrayIjEixEj.exit53, %_ZN4core5arrayIjEixEj.exit55, %_ZN4core5arrayIjEixEj.exit52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.loopexit, label %bb.d, !llvm.loop !581

._crit_edge:                                      ; preds = %bb.s, %.preheader
  store i8 0, ptr %i.e, align 2, !tbaa !386
  %.pre81 = load i8, ptr %i.h, align 1, !tbaa !392
  br label %bb.t

.lr.ph71:                                         ; preds = %.lr.ph71.preheader, %bb.s
  %i.ce = phi ptr [ %i.af, %.lr.ph71.preheader ], [ %i.cu, %bb.s ] ; 3 uses
  %i.cf = phi ptr [ %i.ag, %.lr.ph71.preheader ], [ %i.cv, %bb.s ] ; 2 uses
  %indvars.iv74 = phi i64 [ %umin, %.lr.ph71.preheader ], [ %indvars.iv.next75, %bb.s ] ; 5 uses
  %i.cg = phi i64 [ %.pre-phi86, %.lr.ph71.preheader ], [ %.pre-phi96, %bb.s ]
  %i.ch = ashr exact i64 %i.cg, 2
  %i.ci = icmp ugt i64 %i.ch, %indvars.iv74
  br i1 %i.ci, label %_ZN4core5arrayIjEixEj.exit56, label %bb.q

bb.q:                                             ; preds = %.lr.ph71
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #36
  unreachable

_ZN4core5arrayIjEixEj.exit56:                     ; preds = %.lr.ph71
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv74
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !193 ; 2 uses
  %.not45 = icmp eq i32 %i.ck, 0
  br i1 %.not45, label %_ZN4core5arrayIjEixEj.exit56._crit_edge, label %_ZN4core5arrayIjEixEj.exit57

_ZN4core5arrayIjEixEj.exit56._crit_edge:          ; preds = %_ZN4core5arrayIjEixEj.exit56
  %.pre91 = ptrtoint ptr %i.cf to i64
  %.pre93 = ptrtoint ptr %i.ce to i64
  %.pre95 = sub i64 %.pre91, %.pre93
  br label %bb.s

_ZN4core5arrayIjEixEj.exit57:                     ; preds = %_ZN4core5arrayIjEixEj.exit56
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 2216), align 8, !tbaa !391
  tail call void %i.cl(i32 noundef 36160, i32 noundef %i.ck, i32 noundef 3553, i32 noundef 0, i32 noundef 0), !inline_history !17
  %i.cm = load ptr, ptr %i.u, align 8, !tbaa !298 ; 2 uses
  %i.cn = load ptr, ptr %i.t, align 8, !tbaa !296 ; 3 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp                    ; 2 uses
  %i.cr = ashr exact i64 %i.cq, 2
  %i.cs = icmp ugt i64 %i.cr, %indvars.iv74
  br i1 %i.cs, label %_ZN4core5arrayIjEixEj.exit58, label %bb.r

bb.r:                                             ; preds = %_ZN4core5arrayIjEixEj.exit57
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIjEixEj) #36
  unreachable

_ZN4core5arrayIjEixEj.exit58:                     ; preds = %_ZN4core5arrayIjEixEj.exit57
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv74
  store i32 0, ptr %i.ct, align 4, !tbaa !193
  br label %bb.s

bb.s:                                             ; preds = %_ZN4core5arrayIjEixEj.exit56._crit_edge, %_ZN4core5arrayIjEixEj.exit58
  %.pre-phi96 = phi i64 [ %.pre95, %_ZN4core5arrayIjEixEj.exit56._crit_edge ], [ %i.cq, %_ZN4core5arrayIjEixEj.exit58 ] ; 2 uses
  %i.cu = phi ptr [ %i.ce, %_ZN4core5arrayIjEixEj.exit56._crit_edge ], [ %i.cn, %_ZN4core5arrayIjEixEj.exit58 ]
  %i.cv = phi ptr [ %i.cf, %_ZN4core5arrayIjEixEj.exit56._crit_edge ], [ %i.cm, %_ZN4core5arrayIjEixEj.exit58 ]
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.cw = lshr exact i64 %.pre-phi96, 2
  %i.cx = and i64 %i.cw, 4294967295
  %i.cy = icmp samesign ult i64 %indvars.iv.next75, %i.cx
  br i1 %i.cy, label %.lr.ph71, label %._crit_edge, !llvm.loop !582

bb.t:                                             ; preds = %._crit_edge, %bb.b
  %i.cz = phi i8 [ %.pre81, %._crit_edge ], [ %i.i, %bb.b ]
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.u, label %bb.am

bb.u:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !393 ; 4 uses
  %.not = icmp eq ptr %i.dc, null
  br i1 %.not, label %.thread65, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !340 ; 2 uses
  %.off.i = add i32 %i.de, -15
  %switch.i = icmp ult i32 %.off.i, 4
  br i1 %switch.i, label %bb.w, label %.thread65

bb.w:                                             ; preds = %bb.v
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 108
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !343
  switch i32 %i.dg, label %bb.y [
    i32 0, label %bb.ab
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.dh = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull @.str.140)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @__cxa_throw(ptr nonnull %i.dh, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #38
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ab:                                            ; preds = %bb.w, %bb.x
  %.0 = phi i32 [ 37120, %bb.x ], [ 3553, %bb.w ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 124
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !257 ; 2 uses
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 2216), align 8, !tbaa !391
  tail call void %i.dl(i32 noundef 36160, i32 noundef 36096, i32 noundef %.0, i32 noundef %i.dk, i32 noundef 0), !inline_history !17
  %i.dm = icmp eq i32 %i.de, 18
  br i1 %i.dm, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 2216), align 8, !tbaa !391
  tail call void %i.dn(i32 noundef 36160, i32 noundef 36128, i32 noundef %.0, i32 noundef %i.dk, i32 noundef 0), !inline_history !17
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 1, ptr %i.do, align 1, !tbaa !585
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !585, !range !144, !noundef !145
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 2216), align 8, !tbaa !391
  tail call void %i.ds(i32 noundef 36160, i32 noundef 36128, i32 noundef %.0, i32 noundef 0, i32 noundef 0), !inline_history !17
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  store i8 0, ptr %i.dp, align 1, !tbaa !585
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %i.dt, align 8, !tbaa !586
  br label %bb.al

.thread65:                                        ; preds = %bb.u, %bb.v
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 8, !tbaa !586, !range !144, !noundef !145
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.thread65
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 2216), align 8, !tbaa !391
  tail call void %i.dx(i32 noundef 36160, i32 noundef 36096, i32 noundef 3553, i32 noundef 0, i32 noundef 0), !inline_history !17
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread65
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !585, !range !144, !noundef !145
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 2216), align 8, !tbaa !391
  tail call void %i.eb(i32 noundef 36160, i32 noundef 36128, i32 noundef 3553, i32 noundef 0, i32 noundef 0), !inline_history !17
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  store i8 0, ptr %i.du, align 8, !tbaa !586
  store i8 0, ptr %i.dy, align 1, !tbaa !585
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ag
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !291
  %i.ee = tail call noundef zeroext i1 @_ZN5video18COpenGL3DriverBase11testGLErrorEPKci(ptr noundef nonnull align 8 dereferenceable(2528) %i.ed, ptr noundef nonnull @.str.102, i32 noundef 268) ; 0 uses
  store i8 0, ptr %i.h, align 1, !tbaa !392
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.t
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !292
  %.not43 = icmp eq i32 %i.eg, 0
  br i1 %.not43, label %bb.au, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !295
  %.not44 = icmp eq i32 %i.ei, 0
  br i1 %.not44, label %bb.au, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !378
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !379
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = lshr exact i64 %i.ep, 3
  %i.er = trunc i64 %i.eq to i32                  ; 4 uses
  store i32 %i.er, ptr %i.c, align 4, !tbaa !193
  switch i32 %i.er, label %bb.aq [
    i32 0, label %bb.ap
    i32 1, label %bb.ar
  ]

end_hunk_3
