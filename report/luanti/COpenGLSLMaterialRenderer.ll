Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/COpenGLSLMaterialRenderer?download=true
inline.NumInlined: 385
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5video25COpenGLSLMaterialRenderer11linkProgramEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %_ZN5video23COpenGLExtensionHandler17extGlGetProgramivEjjPi.exit26.thread

_ZN5video23COpenGLExtensionHandler17extGlGetProgramivEjjPi.exit26.thread: ; preds = %bb.f, %_ZN5video23COpenGLExtensionHandler17extGlGetProgramivEjjPi.exit26, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.y

bb.y:                                             ; preds = %_ZN5video23COpenGLExtensionHandler17extGlGetProgramivEjjPi.exit26.thread, %_ZN5video23COpenGLExtensionHandler17extGlGetProgramivEjjPi.exit23.thread
  %.not19.not95 = phi i1 [ true, %_ZN5video23COpenGLExtensionHandler17extGlGetProgramivEjjPi.exit26.thread ], [ false, %_ZN5video23COpenGLExtensionHandler17extGlGetProgramivEjjPi.exit23.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ %.not19.not95, %bb.y ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5video25COpenGLSLMaterialRenderer8OnRenderEPNS_25IMaterialRendererServicesENS_13E_VERTEX_TYPEE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr nofree readnone captures(none) %1, i32 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4
  %.not1 = icmp eq i32 %i.d, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not1
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !36
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.e, i32 noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video25COpenGLSLMaterialRenderer13OnSetMaterialERKNS_9SMaterialES3_bPNS_25IMaterialRendererServicesE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(127) %1, ptr noundef nonnull align 8 dereferenceable(127) %2, i1 noundef zeroext %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.c = tail call noundef i32 @_ZNK5video13COpenGLDriver21getFixedPipelineStateEv(ptr noundef nonnull align 8 dereferenceable(3992) %i.b)
  %i.d = icmp eq i32 %i.c, 0
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !30
  %. = select i1 %i.d, i32 2, i32 1
  tail call void @_ZN5video13COpenGLDriver21setFixedPipelineStateENS0_29E_OPENGL_FIXED_PIPELINE_STATEE(ptr noundef nonnull align 8 dereferenceable(3992) %i.e, i32 noundef %.)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.g = tail call noundef ptr @_ZNK5video13COpenGLDriver15getCacheHandlerEv(ptr noundef nonnull align 8 dereferenceable(3992) %i.f) ; 28 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !143
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !143
  %i.l = icmp ne i32 %i.i, %i.k
  %or.cond = or i1 %3, %i.l
  br i1 %or.cond, label %bb.b, label %_ZN5video23COpenGLExtensionHandler15irrGlUseProgramEj.exit

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !47   ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %_ZN5video23COpenGLExtensionHandler15irrGlUseProgramEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1680
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !67   ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZN5video23COpenGLExtensionHandler15irrGlUseProgramEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.q(i32 noundef %i.n), !inline_history !1
  br label %_ZN5video23COpenGLExtensionHandler15irrGlUseProgramEj.exit

_ZN5video23COpenGLExtensionHandler15irrGlUseProgramEj.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 872
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(3992) %i.r, ptr noundef nonnull align 8 dereferenceable(127) %1, ptr noundef nonnull align 8 dereferenceable(127) %2, i1 noundef zeroext %3)
  tail call void @_ZN5video19COpenGLCacheHandler12setAlphaTestEb(ptr noundef nonnull align 8 dereferenceable(216) %i.g, i1 noundef zeroext false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i8, ptr %i.v, align 8, !tbaa !32, !range !68, !noundef !69
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %bb.l

bb.e:                                             ; preds = %_ZN5video23COpenGLExtensionHandler15irrGlUseProgramEj.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 120 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !77, !range !68, !noundef !69
  %.not.i17 = icmp eq i8 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 130 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 2, !range !68
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i = select i1 %.not.i17, i1 true, i1 %i.ad
  br i1 %or.cond.i, label %bb.f, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 232), align 8
  tail call void %i.ae(i32 noundef 3042), !inline_history !2
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !78 ; 2 uses
  %.not9.i = icmp eq i32 %i.ag, 0
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !76
  %i.ai = zext i32 %i.ag to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ah, i8 1, i64 %i.ai, i1 false), !tbaa !77
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  store i8 0, ptr %i.ab, align 2, !tbaa !79
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit: ; preds = %bb.e, %._crit_edge.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !80
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !39
  %.not.i18 = icmp eq i32 %i.al, 770
  br i1 %.not.i18, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !81
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !39
  %.not18.i = icmp eq i32 %i.ao, 771
  br i1 %.not18.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !82
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !39
  %.not19.i = icmp eq i32 %i.ar, 770
  br i1 %.not19.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !83
  %i.au = load i32, ptr %i.at, align 4, !tbaa !39
  %.not20.i = icmp ne i32 %i.au, 771
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 129
  %i.aw = load i8, ptr %i.av, align 1, !range !68
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond.i21 = select i1 %.not20.i, i1 true, i1 %i.ax
  br i1 %or.cond.i21, label %bb.j, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 256), align 8, !tbaa !92
  tail call void %i.ay(i32 noundef 770, i32 noundef 771), !inline_history !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !78
  %.not24.i = icmp eq i32 %i.ba, 0
  br i1 %.not24.i, label %._crit_edge.i20, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.j
  %i.bb = load ptr, ptr %i.aj, align 8, !tbaa !80
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !81
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !82
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !83
  br label %bb.k

._crit_edge.i20:                                  ; preds = %bb.k, %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 129
  store i8 0, ptr %i.bi, align 1, !tbaa !93
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.k:                                             ; preds = %bb.k, %.lr.ph.i19
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i19 ], [ %indvars.iv.next.i, %bb.k ] ; 5 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i
  store i32 770, ptr %i.bj, align 4, !tbaa !39
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i
  store i32 771, ptr %i.bk, align 4, !tbaa !39
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  store i32 770, ptr %i.bl, align 4, !tbaa !39
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i
  store i32 771, ptr %i.bm, align 4, !tbaa !39
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bn = load i32, ptr %i.az, align 8, !tbaa !78
  %i.bo = zext i32 %i.bn to i64
  %i.bp = icmp samesign ult i64 %indvars.iv.next.i, %i.bo
  br i1 %i.bp, label %bb.k, label %._crit_edge.i20, !llvm.loop !4

bb.l:                                             ; preds = %_ZN5video23COpenGLExtensionHandler15irrGlUseProgramEj.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !33, !range !68, !noundef !69
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.m, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !144 ; 4 uses
  %5 = lshr i32 %i.bu, 4
  %i.bv = trunc i32 %5 to i8
  %6 = and i8 %i.bv, 15                           ; 2 uses
  %7 = trunc i32 %i.bu to i8
  %i.bw = and i8 %7, 15                           ; 2 uses
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call noundef zeroext i1 %i.ca(ptr noundef nonnull align 8 dereferenceable(3992) %i.bx, i32 noundef 34)
  br i1 %i.cb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cc = lshr i32 %i.bu, 8
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = and i8 %i.cd, 15
  %i.cf = lshr i32 %i.bu, 12
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = and i8 %i.cg, 15
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.cj = tail call noundef i32 @_ZNK5video13COpenGLDriver10getGLBlendENS_14E_BLEND_FACTORE(ptr noundef nonnull align 8 dereferenceable(3992) %i.ci, i8 noundef zeroext %6)
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.cl = tail call noundef i32 @_ZNK5video13COpenGLDriver10getGLBlendENS_14E_BLEND_FACTORE(ptr noundef nonnull align 8 dereferenceable(3992) %i.ck, i8 noundef zeroext %i.bw)
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.cn = tail call noundef i32 @_ZNK5video13COpenGLDriver10getGLBlendENS_14E_BLEND_FACTORE(ptr noundef nonnull align 8 dereferenceable(3992) %i.cm, i8 noundef zeroext %i.ch)
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.cp = tail call noundef i32 @_ZNK5video13COpenGLDriver10getGLBlendENS_14E_BLEND_FACTORE(ptr noundef nonnull align 8 dereferenceable(3992) %i.co, i8 noundef zeroext %i.ce)
  tail call void @_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE20setBlendFuncSeparateEjjjj(ptr noundef nonnull align 8 dereferenceable(192) %i.g, i32 noundef %i.cj, i32 noundef %i.cl, i32 noundef %i.cn, i32 noundef %i.cp)
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit32

bb.o:                                             ; preds = %bb.m
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.cr = tail call noundef i32 @_ZNK5video13COpenGLDriver10getGLBlendENS_14E_BLEND_FACTORE(ptr noundef nonnull align 8 dereferenceable(3992) %i.cq, i8 noundef zeroext %6) ; 5 uses
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ct = tail call noundef i32 @_ZNK5video13COpenGLDriver10getGLBlendENS_14E_BLEND_FACTORE(ptr noundef nonnull align 8 dereferenceable(3992) %i.cs, i8 noundef zeroext %i.bw) ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !80
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !39
  %.not.i22 = icmp eq i32 %i.cw, %i.cr
  br i1 %.not.i22, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !81
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !39
  %.not18.i28 = icmp eq i32 %i.cz, %i.ct
  br i1 %.not18.i28, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !82
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !39
  %.not19.i29 = icmp eq i32 %i.dc, %i.cr
  br i1 %.not19.i29, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !83
  %i.df = load i32, ptr %i.de, align 4, !tbaa !39
  %.not20.i30 = icmp ne i32 %i.df, %i.ct
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 129
  %i.dh = load i8, ptr %i.dg, align 1, !range !68
  %i.di = trunc nuw i8 %i.dh to i1
  %or.cond.i31 = select i1 %.not20.i30, i1 true, i1 %i.di
  br i1 %or.cond.i31, label %bb.s, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit32

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 256), align 8, !tbaa !92
  tail call void %i.dj(i32 noundef %i.cr, i32 noundef %i.ct), !inline_history !3
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !78
  %.not24.i23 = icmp eq i32 %i.dl, 0
  br i1 %.not24.i23, label %._crit_edge.i27, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %bb.s
  %i.dm = load ptr, ptr %i.cu, align 8, !tbaa !80
  %i.dn = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !81
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !82
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !83
  br label %bb.t

._crit_edge.i27:                                  ; preds = %bb.t, %bb.s
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 129
  store i8 0, ptr %i.dt, align 1, !tbaa !93
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit32

bb.t:                                             ; preds = %bb.t, %.lr.ph.i24
  %indvars.iv.i25 = phi i64 [ 0, %.lr.ph.i24 ], [ %indvars.iv.next.i26, %bb.t ] ; 5 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.i25
  store i32 %i.cr, ptr %i.du, align 4, !tbaa !39
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.i25
  store i32 %i.ct, ptr %i.dv, align 4, !tbaa !39
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv.i25
  store i32 %i.cr, ptr %i.dw, align 4, !tbaa !39
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.i25
  store i32 %i.ct, ptr %i.dx, align 4, !tbaa !39
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i25, 1 ; 2 uses
  %i.dy = load i32, ptr %i.dk, align 8, !tbaa !78
  %i.dz = zext i32 %i.dy to i64
  %i.ea = icmp samesign ult i64 %indvars.iv.next.i26, %i.dz
  br i1 %i.ea, label %bb.t, label %._crit_edge.i27, !llvm.loop !4

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit32: ; preds = %._crit_edge.i27, %bb.r, %bb.n
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 120 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !76
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !77, !range !68, !noundef !69
  %.not.i33 = icmp eq i8 %i.ed, 0
  %i.ee = getelementptr inbounds nuw i8, ptr %i.g, i64 130 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 2, !range !68
  %i.eg = trunc nuw i8 %i.ef to i1
  %or.cond.i34 = select i1 %.not.i33, i1 true, i1 %i.eg
  br i1 %or.cond.i34, label %bb.u, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.u:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit32
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 232), align 8
  tail call void %i.eh(i32 noundef 3042), !inline_history !2
  %i.ei = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !78 ; 2 uses
  %.not9.i35 = icmp eq i32 %i.ej, 0
  br i1 %.not9.i35, label %._crit_edge.i37, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.u
  %i.ek = load ptr, ptr %i.eb, align 8, !tbaa !76
  %i.el = zext i32 %i.ej to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ek, i8 1, i64 %i.el, i1 false), !tbaa !77
  br label %._crit_edge.i37

._crit_edge.i37:                                  ; preds = %.lr.ph.i36, %bb.u
  store i8 0, ptr %i.ee, align 2, !tbaa !79
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit: ; preds = %._crit_edge.i37, %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit32, %._crit_edge.i20, %bb.i, %bb.l
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !31 ; 3 uses
  %.not16 = icmp eq ptr %i.en, null
  br i1 %.not16, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !16
  %i.ep = load ptr, ptr %i.eo, align 8
  tail call void %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull align 8 dereferenceable(127) %1)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit
  ret void
}

declare noundef i32 @_ZNK5video13COpenGLDriver21getFixedPipelineStateEv(ptr noundef nonnull align 8 dereferenceable(3992)) local_unnamed_addr #10

declare void @_ZN5video13COpenGLDriver21setFixedPipelineStateENS0_29E_OPENGL_FIXED_PIPELINE_STATEE(ptr noundef nonnull align 8 dereferenceable(3992), i32 noundef) local_unnamed_addr #10

declare noundef ptr @_ZNK5video13COpenGLDriver15getCacheHandlerEv(ptr noundef nonnull align 8 dereferenceable(3992)) local_unnamed_addr #10

declare void @_ZN5video19COpenGLCacheHandler12setAlphaTestEb(ptr noundef nonnull align 8 dereferenceable(216), i1 noundef zeroext) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE20setBlendFuncSeparateEjjjj(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, %3
  %.not26 = icmp eq i32 %2, %4
  %or.cond = and i1 %.not, %.not26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = load i32, ptr %i.b, align 4, !tbaa !39
  %.not.i34 = icmp eq i32 %i.c, %1                ; 2 uses
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i34, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39
  %.not28 = icmp eq i32 %i.f, %2
  br i1 %.not28, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39
  %.not29 = icmp eq i32 %i.i, %3
  br i1 %.not29, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39
  %.not30 = icmp ne i32 %i.l, %4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.n = load i8, ptr %i.m, align 1, !range !68
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond33 = select i1 %.not30, i1 true, i1 %i.o
  br i1 %or.cond33, label %bb.f, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !147  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2520
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !148  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 2512
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !149  ; 2 uses
  %.not9.i = icmp eq ptr %i.u, null
  br i1 %.not9.i, label %_ZN5video23COpenGLExtensionHandler22irrGlBlendFuncSeparateEjjjj.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.f
  %.sink.i = phi ptr [ %i.s, %bb.f ], [ %i.u, %bb.g ]
  tail call void %.sink.i(i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4), !inline_history !145
  br label %_ZN5video23COpenGLExtensionHandler22irrGlBlendFuncSeparateEjjjj.exit

_ZN5video23COpenGLExtensionHandler22irrGlBlendFuncSeparateEjjjj.exit: ; preds = %bb.g, %.sink.split.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !78
  %.not36 = icmp eq i32 %i.w, 0
  br i1 %.not36, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5video23COpenGLExtensionHandler22irrGlBlendFuncSeparateEjjjj.exit
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !81
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !82
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !83
  br label %bb.h

end_hunk_0
