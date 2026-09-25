Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/Driver?download=true
inline.NumInlined: 2295
inline.NumDeleted: 773
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN5video23COpenGLCoreRenderTargetINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE6updateEv:bb.a
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

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4, !tbaa !193
  %i.es = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 888), align 8, !tbaa !587
  call void %i.es(i32 noundef 1, ptr noundef nonnull %i.b), !inline_history !583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !293 ; 2 uses
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.ao, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 36064, ptr %i.a, align 4, !tbaa !193
  %i.ew = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 888), align 8, !tbaa !587
  call void %i.ew(i32 noundef 1, ptr noundef nonnull %i.a), !inline_history !583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !298 ; 2 uses
  %i.fa = load ptr, ptr %i.ex, align 8, !tbaa !296 ; 3 uses
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = lshr exact i64 %i.fd, 2
  %i.ff = trunc i64 %i.fe to i32                  ; 3 uses
  store i32 %i.ff, ptr %i.d, align 4, !tbaa !193
  %i.fg = icmp ult i32 %i.er, %i.ff
  %i.fh = select i1 %i.fg, ptr %i.c, ptr %i.d
  %i.fi = tail call i32 @llvm.umin.i32(i32 %i.er, i32 %i.ff)
  %i.fj = icmp ult i32 %i.eu, %i.fi
  %i.fk = select i1 %i.fj, ptr %i.et, ptr %i.fh
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fm = icmp eq ptr %i.fa, %i.ez
  %spec.select.i = select i1 %i.fm, ptr null, ptr %i.fa
  %i.fn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 888), align 8, !tbaa !587
  tail call void %i.fn(i32 noundef %i.fl, ptr noundef %spec.select.i), !inline_history !584
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.ap
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !291
  %i.fq = call noundef zeroext i1 @_ZN5video18COpenGL3DriverBase11testGLErrorEPKci(ptr noundef nonnull align 8 dereferenceable(2528) %i.fp, ptr noundef nonnull @.str.102, i32 noundef 288) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.au

bb.au:                                            ; preds = %bb.a, %bb.am, %bb.an, %bb.at
  ret void

bb.av:                                            ; preds = %bb.aa, %bb.n
  %.sink = phi ptr [ %i.dh, %bb.aa ], [ %i.bp, %bb.n ]
  %.pn = phi { ptr, i32 } [ %i.di, %bb.aa ], [ %i.bq, %bb.n ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase12clearBuffersEtNS_6SColorEfh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2528) %0, i16 noundef zeroext %1, i32 %2, float noundef %3, i8 noundef zeroext %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !200
  %i.e = load i8, ptr %i.d, align 1, !tbaa !142   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.g = load i8, ptr %i.f, align 8, !tbaa !205, !range !144, !noundef !145 ; 3 uses
  %i.h = zext i16 %1 to i32                       ; 3 uses
  %i.i = and i32 %i.h, 1
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ne i8 %i.e, 15
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !144
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %bb.c, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 208), align 8, !tbaa !220
  tail call void %i.m(i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1), !inline_history !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !209
  %.not18.i = icmp eq i32 %i.o, 0
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  store i8 0, ptr %i.j, align 8, !tbaa !201
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !200
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.i
  store i8 15, ptr %i.q, align 1, !tbaa !142
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.r = load i32, ptr %i.n, align 8, !tbaa !209
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ult i64 %indvars.iv.next.i, %i.s
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !12

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit: ; preds = %bb.b, %._crit_edge.i
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 176), align 8, !tbaa !588
  %5 = bitcast i32 %2 to <4 x i8>
  %6 = shufflevector <4 x i8> %5, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.v = uitofp <4 x i8> %6 to <4 x float>
  %i.w = fmul nnan <4 x float> %i.v, splat (float f0x3B808081) ; 4 uses
  %i.x = extractelement <4 x float> %i.w, i64 0
  %i.y = extractelement <4 x float> %i.w, i64 1
  %i.z = extractelement <4 x float> %i.w, i64 2
  %i.aa = extractelement <4 x float> %i.w, i64 3
  tail call void %i.u(float noundef %i.x, float noundef %i.y, float noundef %i.z, float noundef %i.aa)
  br label %bb.d

bb.d:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit, %bb.a
  %.0 = phi i32 [ 16384, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit ], [ 0, %bb.a ] ; 2 uses
  %i.ab = and i32 %i.h, 2
  %.not10 = icmp eq i32 %i.ab, 0
  br i1 %.not10, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !139
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 160 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !205, !range !144, !noundef !145
  %.not.i13.not = icmp eq i8 %i.ae, 0
  br i1 %.not.i13.not, label %bb.f, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 216), align 8, !tbaa !223
  tail call void %i.af(i8 noundef zeroext 1), !inline_history !10
  store i8 1, ptr %i.ad, align 8, !tbaa !205
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit: ; preds = %bb.e, %bb.f
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 3192), align 8, !tbaa !192
  tail call void %i.ag(float noundef %3)
  %i.ah = or disjoint i32 %.0, 256
  br label %bb.g

bb.g:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit, %bb.d
  %.1 = phi i32 [ %i.ah, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit ], [ %.0, %bb.d ] ; 3 uses
  %i.ai = and i32 %i.h, 4
  %.not11 = icmp eq i32 %i.ai, 0
  br i1 %.not11, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 184), align 8, !tbaa !589
  %i.ak = zext i8 %4 to i32
  tail call void %i.aj(i32 noundef %i.ak)
  %i.al = or i32 %.1, 1024
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not12 = icmp eq i32 %.1, 0
  br i1 %.not12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %.230 = phi i32 [ %i.al, %.thread ], [ %.1, %bb.h ]
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 168), align 8, !tbaa !590
  tail call void %i.am(i32 noundef %.230)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !139 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 136 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !200
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !142
  %.not.i14 = icmp ne i8 %i.aq, %i.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 144 ; 2 uses
  %i.as = load i8, ptr %i.ar, align 8, !range !144
  %i.at = trunc nuw i8 %i.as to i1
  %or.cond.i15 = select i1 %.not.i14, i1 true, i1 %i.at
  br i1 %or.cond.i15, label %bb.k, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit21

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 208), align 8, !tbaa !220
  %i.av = lshr i8 %i.e, 1
  %.lobit.i = and i8 %i.av, 1
  %i.aw = lshr i8 %i.e, 2
  %.lobit11.i = and i8 %i.aw, 1
  %i.ax = lshr i8 %i.e, 3
  %.lobit13.i = and i8 %i.ax, 1
  %i.ay = and i8 %i.e, 1
  tail call void %i.au(i8 noundef zeroext %.lobit.i, i8 noundef zeroext %.lobit11.i, i8 noundef zeroext %.lobit13.i, i8 noundef zeroext %i.ay), !inline_history !11
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 72 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !209
  %.not18.i16 = icmp eq i32 %i.ba, 0
  br i1 %.not18.i16, label %._crit_edge.i20, label %.lr.ph.i17

._crit_edge.i20:                                  ; preds = %.lr.ph.i17, %bb.k
  store i8 0, ptr %i.ar, align 8, !tbaa !201
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !139
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit21

.lr.ph.i17:                                       ; preds = %bb.k, %.lr.ph.i17
  %indvars.iv.i18 = phi i64 [ %indvars.iv.next.i19, %.lr.ph.i17 ], [ 0, %bb.k ] ; 2 uses
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !200
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i18
  store i8 %i.e, ptr %i.bc, align 1, !tbaa !142
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i18, 1 ; 2 uses
  %i.bd = load i32, ptr %i.az, align 8, !tbaa !209
  %i.be = zext i32 %i.bd to i64
  %i.bf = icmp samesign ult i64 %indvars.iv.next.i19, %i.be
  br i1 %i.bf, label %.lr.ph.i17, label %._crit_edge.i20, !llvm.loop !12

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit21: ; preds = %bb.j, %._crit_edge.i20
  %i.bg = phi ptr [ %i.an, %bb.j ], [ %.pre, %._crit_edge.i20 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 160 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !205, !range !144, !noundef !145
  %.not.i22 = icmp eq i8 %i.bi, %i.g
  br i1 %.not.i22, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit23, label %bb.l

bb.l:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit21
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 216), align 8, !tbaa !223
  tail call void %i.bj(i8 noundef zeroext %i.g), !inline_history !10
  store i8 %i.g, ptr %i.bh, align 8, !tbaa !205
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit23

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit23: ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit21, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5video18COpenGL3DriverBase16createScreenShotENS_13ECOLOR_FORMATENS_15E_RENDER_TARGETE(ptr noundef nonnull align 8 dereferenceable(2528) %0, i32 %1, i32 noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.b [
    i32 5, label %_ZNK17IReferenceCounted4dropEv.exit
    i32 2, label %_ZNK17IReferenceCounted4dropEv.exit
    i32 1, label %_ZNK17IReferenceCounted4dropEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  invoke void @_ZN5video6CImageC1ENS_13ECOLOR_FORMATERKN4core11dimension2dIjEE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #33
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !363  ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !167  ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #36
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.m, ptr %i.j, align 8, !tbaa !167
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZNK17IReferenceCounted4dropEv.exit.sink.split, label %_ZNK17IReferenceCounted4dropEv.exit

bb.h:                                             ; preds = %bb.d
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 320), align 8, !tbaa !394
  %i.o = load i32, ptr %i.b, align 8, !tbaa !384
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 6 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !385
  tail call void %i.n(i32 noundef 0, i32 noundef 0, i32 noundef %i.o, i32 noundef %i.q, i32 noundef 6408, i32 noundef 5121, ptr noundef nonnull %i.e)
  %i.r = tail call noundef zeroext i1 @_ZN5video18COpenGL3DriverBase11testGLErrorEPKci(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr noundef nonnull @.str.10, i32 noundef 1837) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !395  ; 2 uses
  %i.u = load i32, ptr %i.p, align 4, !tbaa !385
  %i.v = sext i32 %i.t to i64                     ; 7 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #37 ; 3 uses
  %i.x = load i32, ptr %i.p, align 4, !tbaa !385
  %.not83 = icmp eq i32 %i.x, 0
  br i1 %.not83, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.y = add i32 %i.u, -1
  %i.z = mul i32 %i.y, %i.t
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aa
  %i.ac = sub nsw i64 0, %i.v
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.06276 = phi i32 [ 0, %.lr.ph ], [ %i.af, %bb.i ]
  %.06375 = phi ptr [ %i.ab, %.lr.ph ], [ %i.ae, %bb.i ] ; 3 uses
  %.06474 = phi ptr [ %i.e, %.lr.ph ], [ %i.ad, %bb.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %.06474, i64 %i.v, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.06474, ptr align 1 %.06375, i64 %i.v, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.06375, ptr nonnull align 1 %i.w, i64 %i.v, i1 false)
  %i.ad = getelementptr inbounds i8, ptr %.06474, i64 %i.v
  %i.ae = getelementptr inbounds i8, ptr %.06375, i64 %i.ac
  %i.af = add i32 %.06276, 2                      ; 2 uses
  %i.ag = load i32, ptr %i.p, align 4, !tbaa !385
  %i.ah = icmp ult i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.i, label %._crit_edge, !llvm.loop !591
end_hunk_0
