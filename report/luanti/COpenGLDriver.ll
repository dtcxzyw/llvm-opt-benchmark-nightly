Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/COpenGLDriver?download=true
inline.NumInlined: 2450
inline.NumDeleted: 748
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN5video13COpenGLDriver23createMaterialRenderersEv:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 1, ptr %i.c, align 8, !tbaa !143
  store ptr getelementptr inbounds nuw inrange(-24, 64) (i8, ptr @_ZTVN5video29COpenGLMaterialRenderer_SOLIDE, i64 24), ptr %i.a, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5video29COpenGLMaterialRenderer_SOLIDE, i64 112), ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.d, align 8, !tbaa !175
  %i.e = tail call noundef i32 @_ZN5video11CNullDriver26addAndDropMaterialRendererEPNS_17IMaterialRendererE(ptr noundef nonnull align 8 dereferenceable(933) %0, ptr noundef nonnull %i.a) ; 0 uses
  %i.f = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #35 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 1, ptr %i.h, align 8, !tbaa !143
  store ptr getelementptr inbounds nuw inrange(-24, 64) (i8, ptr @_ZTVN5video49COpenGLMaterialRenderer_TRANSPARENT_ALPHA_CHANNELE, i64 24), ptr %i.f, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5video49COpenGLMaterialRenderer_TRANSPARENT_ALPHA_CHANNELE, i64 112), ptr %i.g, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %0, ptr %i.i, align 8, !tbaa !179
  %i.j = tail call noundef i32 @_ZN5video11CNullDriver26addAndDropMaterialRendererEPNS_17IMaterialRendererE(ptr noundef nonnull align 8 dereferenceable(933) %0, ptr noundef nonnull %i.f) ; 0 uses
  %i.k = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #35 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i32 1, ptr %i.m, align 8, !tbaa !143
  store ptr getelementptr inbounds nuw inrange(-24, 64) (i8, ptr @_ZTVN5video53COpenGLMaterialRenderer_TRANSPARENT_ALPHA_CHANNEL_REFE, i64 24), ptr %i.k, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5video53COpenGLMaterialRenderer_TRANSPARENT_ALPHA_CHANNEL_REFE, i64 112), ptr %i.l, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.n, align 8, !tbaa !181
  %i.o = tail call noundef i32 @_ZN5video11CNullDriver26addAndDropMaterialRendererEPNS_17IMaterialRendererE(ptr noundef nonnull align 8 dereferenceable(933) %0, ptr noundef nonnull %i.k) ; 0 uses
  %i.p = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #35 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 1, ptr %i.r, align 8, !tbaa !143
  store ptr getelementptr inbounds nuw inrange(-24, 64) (i8, ptr @_ZTVN5video48COpenGLMaterialRenderer_TRANSPARENT_VERTEX_ALPHAE, i64 24), ptr %i.p, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5video48COpenGLMaterialRenderer_TRANSPARENT_VERTEX_ALPHAE, i64 112), ptr %i.q, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %0, ptr %i.s, align 8, !tbaa !183
  %i.t = tail call noundef i32 @_ZN5video11CNullDriver26addAndDropMaterialRendererEPNS_17IMaterialRendererE(ptr noundef nonnull align 8 dereferenceable(933) %0, ptr noundef nonnull %i.p) ; 0 uses
  %i.u = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #35 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 1, ptr %i.w, align 8, !tbaa !143
  store ptr getelementptr inbounds nuw inrange(-24, 64) (i8, ptr @_ZTVN5video40COpenGLMaterialRenderer_ONETEXTURE_BLENDE, i64 24), ptr %i.u, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5video40COpenGLMaterialRenderer_ONETEXTURE_BLENDE, i64 112), ptr %i.v, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %0, ptr %i.x, align 8, !tbaa !185
  %i.y = tail call noundef i32 @_ZN5video11CNullDriver26addAndDropMaterialRendererEPNS_17IMaterialRendererE(ptr noundef nonnull align 8 dereferenceable(933) %0, ptr noundef nonnull %i.u) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video13COpenGLDriver21setRenderStates3DModeEv(ptr noundef nonnull align 8 dereferenceable(3992) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.core::CMatrix4", align 16   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3344 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !118
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2824 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187
  %i.g = load i8, ptr %i.f, align 1, !tbaa !159, !range !132, !noundef !133
  %.not.i = icmp ne i8 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 130 ; 2 uses
  %i.i = load i8, ptr %i.h, align 2, !range !132
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.j
  br i1 %or.cond.i, label %bb.c, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 224), align 8
  tail call void %i.k(i32 noundef 3042), !inline_history !193
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.m = load i32, ptr %i.l, align 8, !tbaa !194  ; 2 uses
  %.not9.i = icmp eq i32 %i.m, 0
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !187
  %i.o = zext i32 %i.m to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 0, i64 %i.o, i1 false), !tbaa !159
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  store i8 0, ptr %i.h, align 2, !tbaa !195
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !10
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit: ; preds = %bb.b, %._crit_edge.i
  %i.p = phi ptr [ %i.d, %bb.b ], [ %.pre, %._crit_edge.i ]
  tail call void @_ZN5video19COpenGLCacheHandler12setAlphaTestEb(ptr noundef nonnull align 8 dereferenceable(216) %i.p, i1 noundef zeroext false)
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !10   ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !196
  %i.t = load i32, ptr %i.s, align 4, !tbaa !161
  %.not.i2 = icmp eq i32 %i.t, 770
  br i1 %.not.i2, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !197
  %i.w = load i32, ptr %i.v, align 4, !tbaa !161
  %.not18.i = icmp eq i32 %i.w, 771
  br i1 %.not18.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !198
  %i.z = load i32, ptr %i.y, align 4, !tbaa !161
  %.not19.i = icmp eq i32 %i.z, 770
  br i1 %.not19.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !199
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !161
  %.not20.i = icmp ne i32 %i.ac, 771
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 129
  %i.ae = load i8, ptr %i.ad, align 1, !range !132
  %i.af = trunc nuw i8 %i.ae to i1
  %or.cond.i5 = select i1 %.not20.i, i1 true, i1 %i.af
  br i1 %or.cond.i5, label %bb.g, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 256), align 8, !tbaa !200
  tail call void %i.ag(i32 noundef 770, i32 noundef 771), !inline_history !208
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !194
  %.not24.i = icmp eq i32 %i.ai, 0
  br i1 %.not24.i, label %._crit_edge.i4, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %bb.g
  %i.aj = load ptr, ptr %i.r, align 8, !tbaa !196
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !197
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !198
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !199
  br label %bb.h

._crit_edge.i4:                                   ; preds = %bb.h, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 129
  store i8 0, ptr %i.aq, align 1, !tbaa !209
  %.pre11 = load ptr, ptr %i.c, align 8, !tbaa !10
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.h:                                             ; preds = %bb.h, %.lr.ph.i3
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i3 ], [ %indvars.iv.next.i, %bb.h ] ; 5 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i
  store i32 770, ptr %i.ar, align 4, !tbaa !161
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i
  store i32 771, ptr %i.as, align 4, !tbaa !161
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i
  store i32 770, ptr %i.at, align 4, !tbaa !161
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i
  store i32 771, ptr %i.au, align 4, !tbaa !161
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.av = load i32, ptr %i.ah, align 8, !tbaa !194
  %i.aw = zext i32 %i.av to i64
  %i.ax = icmp samesign ult i64 %indvars.iv.next.i, %i.aw
  br i1 %i.ax, label %bb.h, label %._crit_edge.i4, !llvm.loop !210

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit: ; preds = %bb.f, %._crit_edge.i4
  %i.ay = phi ptr [ %i.q, %bb.f ], [ %.pre11, %._crit_edge.i4 ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 172 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !211
  %.not.i6 = icmp eq i32 %i.ba, 33984
  br i1 %.not.i6, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !212 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1512
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !213 ; 2 uses
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %bb.j, label %.sink.split.i.i

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 1520
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !214 ; 2 uses
  %.not3.i.i = icmp eq ptr %i.bg, null
  br i1 %.not3.i.i, label %_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.j, %bb.i
  %.sink.i.i = phi ptr [ %i.be, %bb.i ], [ %i.bg, %bb.j ]
  tail call void %.sink.i.i(i32 noundef 33984), !inline_history !215
  br label %_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i

_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i: ; preds = %.sink.split.i.i, %bb.j
  store i32 33984, ptr %i.az, align 4, !tbaa !211
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit: ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit, %_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448)
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !10
  tail call void @_ZN5video19COpenGLCacheHandler13setMatrixModeEj(ptr noundef nonnull align 8 dereferenceable(216) %i.bh, i32 noundef 5888)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2928
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %2 = load <4 x float>, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2880
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2932
  %3 = load <4 x float>, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2896
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %4 = load <4 x float>, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2940
  %i.bq = load <4 x float>, ptr %i.bp, align 4
  %i.br = load <4 x float>, ptr %i.bi, align 8, !tbaa !116, !noalias !216 ; 4 uses
  %5 = load <4 x float>, ptr %i.bk, align 8, !tbaa !116, !noalias !216 ; 4 uses
  %i.bs = shufflevector <4 x float> %3, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bt = fmul <4 x float> %i.bs, %5
  %i.bu = shufflevector <4 x float> %2, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.bu, <4 x float> %i.bt)
  %i.bw = load <4 x float>, ptr %i.bm, align 8, !tbaa !116, !noalias !216 ; 4 uses
  %i.bx = shufflevector <4 x float> %4, <4 x float> poison, <4 x i32> zeroinitializer
  %i.by = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.bx, <4 x float> %i.bv)
  %i.bz = load <4 x float>, ptr %i.bo, align 8, !tbaa !116, !noalias !216 ; 4 uses
  %i.ca = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.ca, <4 x float> %i.by)
  store <4 x float> %i.cb, ptr %1, align 16, !tbaa !116, !alias.scope !216
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %6 = load <4 x float>, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 2948
  %7 = load <4 x float>, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %8 = load <4 x float>, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 2956
  %9 = load <4 x float>, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ci = fmul <4 x float> %5, %i.ch
  %i.cj = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.cj, <4 x float> %i.ci)
  %i.cl = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.cl, <4 x float> %i.ck)
  %i.cn = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.cn, <4 x float> %i.cm)
  store <4 x float> %i.co, ptr %i.cg, align 16, !tbaa !116, !alias.scope !216
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 2960
  %10 = load <4 x float>, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 2964
  %11 = load <4 x float>, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %12 = load <4 x float>, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 2972
  %13 = load <4 x float>, ptr %i.cs, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cu = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cv = fmul <4 x float> %5, %i.cu
  %i.cw = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.cw, <4 x float> %i.cv)
  %i.cy = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.cy, <4 x float> %i.cx)
  %i.da = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.da, <4 x float> %i.cz)
  store <4 x float> %i.db, ptr %i.ct, align 16, !tbaa !116, !alias.scope !216
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 2976
  %14 = load <4 x float>, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 2980
  %15 = load <4 x float>, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 2984
  %16 = load <4 x float>, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 2988
  %17 = load <4 x float>, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dh = shufflevector <4 x float> %15, <4 x float> poison, <4 x i32> zeroinitializer
  %i.di = fmul <4 x float> %5, %i.dh
  %i.dj = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.br, <4 x float> %i.dj, <4 x float> %i.di)
  %i.dl = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.dl, <4 x float> %i.dk)
  %i.dn = shufflevector <4 x float> %17, <4 x float> poison, <4 x i32> zeroinitializer
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.dn, <4 x float> %i.dm)
  store <4 x float> %i.do, ptr %i.dg, align 16, !tbaa !116, !alias.scope !216
  call void @glLoadMatrixf(ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %i.dp = load ptr, ptr %i.c, align 8, !tbaa !10
  call void @_ZN5video19COpenGLCacheHandler13setMatrixModeEj(ptr noundef nonnull align 8 dereferenceable(216) %i.dp, i32 noundef 5889)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 2992
  call void @glLoadMatrixf(ptr noundef nonnull %i.dq)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 3348
  store i8 1, ptr %i.dr, align 4, !tbaa !119
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1213
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !159, !range !132, !noundef !133
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit
  call void @glHint(i32 noundef 33008, i32 noundef 4354)
  br label %bb.l

bb.l:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit, %bb.k, %bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 3348 ; 3 uses
  %i.dw = load i8, ptr %i.dv, align 4, !tbaa !119, !range !132, !noundef !133
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 3480
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %i.ea = call noundef zeroext i1 @_ZNK5video9SMaterialneERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.dy, ptr noundef nonnull align 8 dereferenceable(127) %i.dz)
  br i1 %i.ea, label %bb.n, label %bb.ad

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 3480 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 3576
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !219 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 3352 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 3448 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !220 ; 2 uses
  %.not1 = icmp eq i32 %i.ed, %i.eg
  br i1 %.not1, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !221
  %i.ek = load ptr, ptr %i.eh, align 8, !tbaa !222 ; 2 uses
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = sdiv exact i64 %i.en, 40                ; 2 uses
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = icmp ult i32 %i.ed, %i.ep
  br i1 %i.eq, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.er = zext i32 %i.ed to i64                   ; 2 uses
  %i.es = icmp ugt i64 %i.eo, %i.er
  br i1 %i.es, label %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj) #36
  unreachable

_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit: ; preds = %bb.p
  %i.et = getelementptr inbounds nuw [40 x i8], ptr %i.ek, i64 %i.er
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !223 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %i.ev)
  %.pre12 = load i32, ptr %i.ef, align 8, !tbaa !220
  br label %bb.r

bb.r:                                             ; preds = %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit, %bb.o, %bb.n
  %i.ez = phi i32 [ %.pre12, %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit ], [ %i.eg, %bb.o ], [ %i.ed, %bb.n ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !221
  %i.fd = load ptr, ptr %i.fa, align 8, !tbaa !222 ; 2 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = sdiv exact i64 %i.fg, 40                ; 2 uses
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = icmp ult i32 %i.ez, %i.fi
  br i1 %i.fj, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.fk = zext i32 %i.ez to i64                   ; 2 uses
  %i.fl = icmp ugt i64 %i.fh, %i.fk
  br i1 %i.fl, label %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit7, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj) #36
  unreachable

_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit7: ; preds = %bb.s
  %i.fm = getelementptr inbounds nuw [40 x i8], ptr %i.fd, i64 %i.fk
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !223 ; 2 uses
  %i.fp = load i8, ptr %i.dv, align 4, !tbaa !119, !range !132, !noundef !133
  %i.fq = trunc nuw i8 %i.fp to i1
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.fs = load ptr, ptr %i.fo, align 8, !tbaa !8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(8) %i.fo, ptr noundef nonnull align 8 dereferenceable(127) %i.ee, ptr noundef nonnull align 8 dereferenceable(127) %i.eb, i1 noundef zeroext %i.fq, ptr noundef nonnull %i.fr)
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.18, i32 noundef 2)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit7
  %i.fu = call noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.eb, ptr noundef nonnull align 8 dereferenceable(127) %i.ee) ; 0 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !10 ; 4 uses
  %i.fx = load ptr, ptr %i.eb, align 8, !tbaa !123
  %.not.i8 = icmp ne ptr %i.fx, null
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.fz = load ptr, ptr %i.fy, align 8
  %.not7.i = icmp eq ptr %i.fz, null
  %or.cond.i9 = select i1 %.not.i8, i1 %.not7.i, i1 false
  br i1 %or.cond.i9, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store ptr null, ptr %i.eb, align 8, !tbaa !123
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 3504 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !123
  %.not.1.i = icmp eq ptr %i.gb, null
  br i1 %.not.1.i, label %bb.z, label %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.1.i

_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.1.i: ; preds = %bb.x
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !170
  %.not7.1.i = icmp eq ptr %i.gd, null
  br i1 %.not7.1.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.1.i
  store ptr null, ptr %i.ga, align 8, !tbaa !123
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.1.i, %bb.x
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 3528 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !123
  %.not.2.i = icmp eq ptr %i.gf, null
  br i1 %.not.2.i, label %bb.ab, label %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.2.i

_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.2.i: ; preds = %bb.z
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !170
  %.not7.2.i = icmp eq ptr %i.gh, null
  br i1 %.not7.2.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.2.i
  store ptr null, ptr %i.ge, align 8, !tbaa !123
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.2.i, %bb.z
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 3552 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !123
  %.not.3.i = icmp eq ptr %i.gj, null
  br i1 %.not.3.i, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit, label %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.3.i

_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.3.i: ; preds = %bb.ab
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fw, i64 56
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !170
  %.not7.3.i = icmp eq ptr %i.gl, null
  br i1 %.not7.3.i, label %bb.ac, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit

bb.ac:                                            ; preds = %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.3.i
  store ptr null, ptr %i.gi, align 8, !tbaa !123
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit: ; preds = %bb.ab, %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCacheixEi.exit.3.i, %bb.ac
  store i8 0, ptr %i.dv, align 4, !tbaa !119
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit, %bb.m
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 3448
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !220 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !221
  %i.gr = load ptr, ptr %i.go, align 8, !tbaa !222 ; 2 uses
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = sub i64 %i.gs, %i.gt
  %i.gv = sdiv exact i64 %i.gu, 40                ; 2 uses
  %i.gw = trunc i64 %i.gv to i32
  %i.gx = icmp ult i32 %i.gn, %i.gw
  br i1 %i.gx, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.gy = zext i32 %i.gn to i64                   ; 2 uses
  %i.gz = icmp ugt i64 %i.gv, %i.gy
  br i1 %i.gz, label %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit10, label %bb.af
end_hunk_0
begin_hunk_1_@_ZN5video13COpenGLDriver22setTextureRenderStatesERKNS_9SMaterialEb:bb.a
._crit_edge:                                      ; preds = %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3getEj.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3getEj.exit.thread
  %indvars.iv = phi i64 [ %i.ak, %.lr.ph ], [ %i.al, %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3getEj.exit.thread ] ; 5 uses
  %i.al = add nsw i64 %indvars.iv, -1             ; 21 uses
  %i.am = load i32, ptr %i.d, align 8, !tbaa !129
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !10  ; 3 uses
  %i.ao = icmp slt i64 %indvars.iv, 5
  br i1 %i.ao, label %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3getEj.exit, label %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3getEj.exit.thread

_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3getEj.exit: ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.al
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !170 ; 24 uses
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3getEj.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3getEj.exit
  %i.as = add nuw nsw i64 %indvars.iv, 33983      ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 172 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !211
  %i.av = zext i32 %i.au to i64
  %.not.i = icmp eq i64 %i.as, %i.av
  br i1 %.not.i, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !212 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1512
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !213 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %bb.e, label %.sink.split.i.i

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 1520
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !214 ; 2 uses
  %.not3.i.i = icmp eq ptr %i.bb, null
  br i1 %.not3.i.i, label %._ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i_crit_edge, label %.sink.split.i.i

._ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i_crit_edge: ; preds = %bb.e
  %.pre220 = trunc nuw nsw i64 %i.as to i32
  br label %_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i

.sink.split.i.i:                                  ; preds = %bb.e, %bb.d
  %.sink.i.i = phi ptr [ %i.az, %bb.d ], [ %i.bb, %bb.e ]
  %i.bc = trunc nuw nsw i64 %i.as to i32          ; 2 uses
  call void %.sink.i.i(i32 noundef %i.bc), !inline_history !215
  br label %_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i

_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i: ; preds = %._ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i_crit_edge, %.sink.split.i.i
  %.pre-phi221 = phi i32 [ %.pre220, %._ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i_crit_edge ], [ %i.bc, %.sink.split.i.i ]
  store i32 %.pre-phi221, ptr %i.at, align 4, !tbaa !211
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit: ; preds = %bb.c, %_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i
  %.wide = icmp eq i64 %i.al, 0
  br i1 %.wide, label %bb.f, label %switch.early.test

switch.early.test:                                ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit
  switch i32 %i.am, label %bb.y [
    i32 3, label %bb.f
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %switch.early.test, %switch.early.test, %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 105
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !389, !range !132, !noundef !133
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !10
  call void @_ZN5video19COpenGLCacheHandler13setMatrixModeEj(ptr noundef nonnull align 8 dereferenceable(216) %i.bg, i32 noundef 5890)
  br i1 %i.bf, label %bb.w, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %indvars.iv ; 19 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2992 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 3040
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !116
  %i.bl = call noundef float @llvm.fabs.f32(float %i.bk)
  %i.bm = fcmp ugt float %i.bl, f0x358637BD
  br i1 %i.bm, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 3044
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !116
  %i.bp = call noundef float @llvm.fabs.f32(float %i.bo)
  %i.bq = fcmp ugt float %i.bp, f0x358637BD
  br i1 %i.bq, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 3048
  %i.bs = load float, ptr %i.br, align 8, !tbaa !116
  %i.bt = call noundef float @llvm.fabs.f32(float %i.bs)
  %i.bu = fcmp ugt float %i.bt, f0x358637BD
  br i1 %i.bu, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 3052
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !116
  %i.bx = fadd float %i.bw, -1.000000e+00
  %i.by = call noundef float @llvm.fabs.f32(float %i.bx)
  %i.bz = fcmp ugt float %i.by, f0x358637BD
  br i1 %i.bz, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = load float, ptr %i.bi, align 8, !tbaa !116
  %i.cb = fadd float %i.ca, -1.000000e+00
  %i.cc = call noundef float @llvm.fabs.f32(float %i.cb)
  %i.cd = fcmp ugt float %i.cc, f0x358637BD
  br i1 %i.cd, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 2996
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !116
  %i.cg = call noundef float @llvm.fabs.f32(float %i.cf)
  %i.ch = fcmp ugt float %i.cg, f0x358637BD
  br i1 %i.ch, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bh, i64 3000
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !116
  %i.ck = call noundef float @llvm.fabs.f32(float %i.cj)
  %i.cl = fcmp ugt float %i.ck, f0x358637BD
  br i1 %i.cl, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bh, i64 3004
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !116
  %i.co = call noundef float @llvm.fabs.f32(float %i.cn)
  %i.cp = fcmp ugt float %i.co, f0x358637BD
  br i1 %i.cp, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 3008
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !116
  %i.cs = call noundef float @llvm.fabs.f32(float %i.cr)
  %i.ct = fcmp ugt float %i.cs, f0x358637BD
  br i1 %i.ct, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bh, i64 3012
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !116
  %i.cw = fadd float %i.cv, -1.000000e+00
  %i.cx = call noundef float @llvm.fabs.f32(float %i.cw)
  %i.cy = fcmp ugt float %i.cx, f0x358637BD
  br i1 %i.cy, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bh, i64 3016
  %i.da = load float, ptr %i.cz, align 8, !tbaa !116
  %i.db = call noundef float @llvm.fabs.f32(float %i.da)
  %i.dc = fcmp ugt float %i.db, f0x358637BD
  br i1 %i.dc, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bh, i64 3020
  %i.de = load float, ptr %i.dd, align 4, !tbaa !116
  %i.df = call noundef float @llvm.fabs.f32(float %i.de)
  %i.dg = fcmp ugt float %i.df, f0x358637BD
  br i1 %i.dg, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bh, i64 3024
  %i.di = load float, ptr %i.dh, align 8, !tbaa !116
  %i.dj = call noundef float @llvm.fabs.f32(float %i.di)
  %i.dk = fcmp ugt float %i.dj, f0x358637BD
  br i1 %i.dk, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bh, i64 3028
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !116
  %i.dn = call noundef float @llvm.fabs.f32(float %i.dm)
  %i.do = fcmp ugt float %i.dn, f0x358637BD
  br i1 %i.do, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bh, i64 3032
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !116
  %i.dr = fadd float %i.dq, -1.000000e+00
  %i.ds = call noundef float @llvm.fabs.f32(float %i.dr)
  %i.dt = fcmp ugt float %i.ds, f0x358637BD
  br i1 %i.dt, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit

_ZNK4core8CMatrix4IfE10isIdentityEv.exit:         ; preds = %bb.u
  %i.du = getelementptr inbounds nuw i8, ptr %i.bh, i64 3036
  %i.dv = load float, ptr %i.du, align 4, !tbaa !116
  %i.dw = call noundef float @llvm.fabs.f32(float %i.dv)
  %i.dx = fcmp ugt float %i.dw, f0x358637BD
  br i1 %i.dx, label %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNK4core8CMatrix4IfE10isIdentityEv.exit
  call void @glLoadIdentity()
  br label %bb.y

bb.w:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.dy = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %indvars.iv ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 2992
  %i.ea = load float, ptr %i.m, align 8, !tbaa !116, !noalias !467
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 3008
  %3 = load <4 x float>, ptr %i.n, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 3024
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 3040
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 2996
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 3028
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 3044
  %4 = load <4 x float>, ptr %i.p, align 8
  %5 = load <4 x float>, ptr %i.q, align 4
  %6 = load <4 x float>, ptr %i.r, align 8
  %7 = load <4 x float>, ptr %i.s, align 4
  %i.eh = load float, ptr %i.t, align 8, !tbaa !116, !noalias !467 ; 2 uses
  %8 = load <4 x float>, ptr %i.u, align 4
  %i.ei = load float, ptr %i.v, align 8, !tbaa !116, !noalias !467 ; 2 uses
  %i.ej = load float, ptr %i.w, align 4, !tbaa !116, !noalias !467 ; 2 uses
  %i.ek = load <2 x float>, ptr %i.o, align 8, !tbaa !116, !noalias !467 ; 2 uses
  %i.el = load <2 x float>, ptr %i.dz, align 8, !tbaa !116, !noalias !467 ; 3 uses
  %i.em = load float, ptr %i.ee, align 4, !tbaa !116, !noalias !467 ; 2 uses
  %i.en = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ep = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.ea, i64 0
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.er = load <2 x float>, ptr %i.ec, align 8, !tbaa !116, !noalias !467 ; 3 uses
  %i.es = load float, ptr %i.ef, align 4, !tbaa !116, !noalias !467 ; 2 uses
  %i.et = shufflevector <2 x float> %i.er, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ev = shufflevector <2 x float> %i.ek, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ex = load <2 x float>, ptr %i.ed, align 8, !tbaa !116, !noalias !467 ; 3 uses
  %i.ey = load float, ptr %i.eg, align 4, !tbaa !116, !noalias !467 ; 2 uses
  %i.ez = shufflevector <2 x float> %i.ex, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fb = shufflevector <2 x float> %i.ek, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fd = extractelement <2 x float> %i.el, i64 0
  %i.fe = extractelement <2 x float> %i.er, i64 0
  %i.ff = extractelement <2 x float> %i.ex, i64 0
  %i.fg = load <2 x float>, ptr %i.eb, align 8, !tbaa !116, !noalias !467 ; 3 uses
  %i.fh = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> zeroinitializer
  %i.fi = fmul <2 x float> %i.fg, %i.fh
  %i.fj = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> zeroinitializer
  %i.fk = fmul <2 x float> %i.fg, %i.fj           ; 2 uses
  %i.fl = shufflevector <2 x float> %i.fg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fm = shufflevector <4 x float> %3, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.fn = fmul <4 x float> %i.fl, %i.fm
  %i.fo = shufflevector <4 x float> %i.fn, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eo, <4 x float> %i.eq, <4 x float> %i.fo)
  %i.fq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %i.ew, <4 x float> %i.fp)
  %i.fr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> %i.fc, <4 x float> %i.fq)
  %i.fs = insertelement <2 x float> %i.el, float %i.em, i64 1
  %i.ft = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> zeroinitializer
  %i.fu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.ft, <2 x float> %i.fi)
  %i.fv = insertelement <2 x float> %i.er, float %i.es, i64 1
  %i.fw = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> zeroinitializer
  %i.fx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.fw, <2 x float> %i.fu)
  %i.fy = insertelement <2 x float> %i.ex, float %i.ey, i64 1
  %i.fz = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ga = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.fz, <2 x float> %i.fx)
  %i.gb = extractelement <2 x float> %i.fk, i64 0
  %i.gc = call float @llvm.fmuladd.f32(float %i.fd, float %i.eh, float %i.gb)
  %i.gd = call float @llvm.fmuladd.f32(float %i.fe, float %i.ei, float %i.gc)
  %i.ge = call float @llvm.fmuladd.f32(float %i.ff, float %i.ej, float %i.gd)
  %i.gf = extractelement <2 x float> %i.fk, i64 1
  %i.gg = call float @llvm.fmuladd.f32(float %i.em, float %i.eh, float %i.gf)
  %i.gh = call float @llvm.fmuladd.f32(float %i.es, float %i.ei, float %i.gg)
  %i.gi = call float @llvm.fmuladd.f32(float %i.ey, float %i.ej, float %i.gh)
  store <4 x float> %i.fr, ptr %i.a, align 16, !tbaa !116
  store <2 x float> %i.ga, ptr %i.g, align 16, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.i, align 8, !tbaa !116
  store float %i.ge, ptr %i.j, align 16, !tbaa !116
  br label %bb.x

_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread:  ; preds = %bb.t, %bb.u, %bb.p, %bb.q, %bb.r, %bb.l, %bb.m, %bb.n, %bb.h, %bb.i, %bb.j, %bb.g, %bb.k, %bb.o, %bb.s, %_ZNK4core8CMatrix4IfE10isIdentityEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.gj = load <2 x float>, ptr %i.bi, align 8, !tbaa !116
  store <2 x float> %i.gj, ptr %i.a, align 16, !tbaa !116
  store <2 x float> zeroinitializer, ptr %i.f, align 8, !tbaa !116
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bh, i64 3008
  %i.gl = load <2 x float>, ptr %i.gk, align 8, !tbaa !116
  store <2 x float> %i.gl, ptr %i.g, align 16, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.i, align 8, !tbaa !116
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bh, i64 3024
  %i.gn = load float, ptr %i.gm, align 8, !tbaa !116
  store float %i.gn, ptr %i.j, align 16, !tbaa !116
  %i.go = getelementptr inbounds nuw i8, ptr %i.bh, i64 3028
  %i.gp = load float, ptr %i.go, align 4, !tbaa !116
  br label %bb.x

bb.x:                                             ; preds = %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread, %bb.w
  %storemerge = phi float [ %i.gp, %_ZNK4core8CMatrix4IfE10isIdentityEv.exit.thread ], [ %i.gi, %bb.w ]
  store float %storemerge, ptr %i.k, align 4, !tbaa !116
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.l, align 8, !tbaa !116
  call void @glLoadMatrixf(ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.y

bb.y:                                             ; preds = %switch.early.test, %bb.v, %bb.x
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ar, i64 120
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !345 ; 7 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ar, i64 201 ; 2 uses
  br i1 %2, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ar, i64 209
  store i8 0, ptr %i.gt, align 1, !tbaa !470
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gu = load i16, ptr %i.x, align 4, !tbaa !319
  %i.gv = icmp ugt i16 %i.gu, 200
  br i1 %i.gv, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ar, i64 209
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !470, !range !132, !noundef !133
  %i.gy = trunc nuw i8 %i.gx to i1
  %i.gz = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.al
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 13
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !471 ; 3 uses
  br i1 %i.gy, label %bb.ac, label %._crit_edge182

bb.ac:                                            ; preds = %bb.ab
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ar, i64 204
  %i.hd = load i8, ptr %i.hc, align 4, !tbaa !472
  %.not133 = icmp eq i8 %i.hb, %i.hd
  br i1 %.not133, label %bb.aj, label %._crit_edge182

._crit_edge182:                                   ; preds = %bb.ab, %bb.ac
  %i.he = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.al
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 13
  %.not134 = icmp eq i8 %i.hb, 0
  br i1 %.not134, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge182
  %i.hg = sitofp i8 %i.hb to float
  %i.hh = fmul nnan float %i.hg, 1.250000e-01     ; 2 uses
  %i.hi = load float, ptr %i.z, align 8, !tbaa !473 ; 3 uses
  %i.hj = fneg float %i.hi                        ; 2 uses
  %i.hk = fcmp olt float %i.hh, %i.hj
  %i.hl = select i1 %i.hk, float %i.hj, float %i.hh ; 2 uses
  %i.hm = fcmp olt float %i.hl, %i.hi
  %i.hn = select i1 %i.hm, float %i.hl, float %i.hi
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge182, %bb.ad
  %.sink = phi float [ %i.hn, %bb.ad ], [ 0.000000e+00, %._crit_edge182 ]
  call void @glTexParameterf(i32 noundef %i.gr, i32 noundef 34049, float noundef %.sink)
  %i.ho = load i8, ptr %i.hf, align 1, !tbaa !471
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ar, i64 204
  store i8 %i.ho, ptr %i.hp, align 4, !tbaa !472
  br label %bb.aj

bb.af:                                            ; preds = %bb.aa
  %i.hq = load i8, ptr %i.y, align 1, !tbaa !159, !range !132, !noundef !133
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.hs = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.al
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 13
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !471 ; 2 uses
  %.not132 = icmp eq i8 %i.hu, 0
  br i1 %.not132, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hv = sitofp i8 %i.hu to float
  %i.hw = fmul nnan float %i.hv, 1.250000e-01     ; 2 uses
  %i.hx = load float, ptr %i.z, align 8, !tbaa !473 ; 3 uses
  %i.hy = fneg float %i.hx                        ; 2 uses
  %i.hz = fcmp olt float %i.hw, %i.hy
  %i.ia = select i1 %i.hz, float %i.hy, float %i.hw ; 2 uses
  %i.ib = fcmp olt float %i.ia, %i.hx
  %i.ic = select i1 %i.ib, float %i.ia, float %i.hx
  call void @glTexEnvf(i32 noundef 34048, i32 noundef 34049, float noundef %i.ic)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void @glTexEnvf(i32 noundef 34048, i32 noundef 34049, float noundef 0.000000e+00)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.af, %bb.ai, %bb.ah, %bb.ac, %bb.ae
  %i.id = getelementptr inbounds nuw i8, ptr %i.ar, i64 209 ; 8 uses
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !470, !range !132, !noundef !133
  %i.if = trunc nuw i8 %i.ie to i1
  %i.ig = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.al
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 11
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !428 ; 3 uses
  br i1 %i.if, label %bb.ak, label %._crit_edge184

bb.ak:                                            ; preds = %bb.aj
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ar, i64 207
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !474
  %.not135 = icmp eq i8 %i.ii, %i.ik
  br i1 %.not135, label %bb.an, label %._crit_edge184

._crit_edge184:                                   ; preds = %bb.aj, %bb.ak
  switch i8 %i.ii, label %bb.al [
    i8 0, label %bb.am
    i8 1, label %.fold.split
  ]

bb.al:                                            ; preds = %._crit_edge184
  call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.5, i32 noundef 1968, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5video13COpenGLDriver22setTextureRenderStatesERKNS_9SMaterialEb) #36
  unreachable

.fold.split:                                      ; preds = %._crit_edge184
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge184, %.fold.split
  %i.il = phi i32 [ 9728, %._crit_edge184 ], [ 9729, %.fold.split ]
  call void @glTexParameteri(i32 noundef %i.gr, i32 noundef 10240, i32 noundef %i.il)
  %i.im = getelementptr inbounds nuw i8, ptr %i.ar, i64 207
  store i8 %i.ii, ptr %i.im, align 1, !tbaa !474
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  %i.in = load i8, ptr %i.aa, align 2
  %i.io = icmp slt i8 %i.in, 0
  br i1 %i.io, label %bb.ao, label %._crit_edge188

._crit_edge188:                                   ; preds = %bb.an
  %.pre189 = load i8, ptr %i.id, align 1, !tbaa !470, !range !132
  br label %bb.at

bb.ao:                                            ; preds = %bb.an
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  %i.iq = load i8, ptr %i.ip, align 8, !tbaa !388, !range !132, !noundef !133
  %i.ir = trunc nuw i8 %i.iq to i1
  %.pre190 = load i8, ptr %i.id, align 1, !tbaa !470, !range !132 ; 2 uses
  br i1 %i.ir, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.is = trunc nuw i8 %.pre190 to i1
  %i.it = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.al
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 10
  %i.iv = load i8, ptr %i.iu, align 2, !tbaa !427 ; 4 uses
  br i1 %i.is, label %bb.aq, label %._crit_edge195

bb.aq:                                            ; preds = %bb.ap
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ar, i64 206
  %i.ix = load i8, ptr %i.iw, align 2, !tbaa !475
  %.not137 = icmp eq i8 %i.iv, %i.ix
  br i1 %.not137, label %bb.ar, label %._crit_edge195

bb.ar:                                            ; preds = %bb.aq
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ar, i64 208
  %i.iz = load i8, ptr %i.iy, align 8, !tbaa !476, !range !132, !noundef !133
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %bb.ax, label %._crit_edge195

._crit_edge195:                                   ; preds = %bb.ap, %bb.ar, %bb.aq
  %i.jb = icmp ult i8 %i.iv, 4
  br i1 %i.jb, label %switch.lookup, label %bb.as

bb.as:                                            ; preds = %._crit_edge195
  call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.5, i32 noundef 1980, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5video13COpenGLDriver22setTextureRenderStatesERKNS_9SMaterialEb) #36
end_hunk_1
