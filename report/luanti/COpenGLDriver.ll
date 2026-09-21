Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/COpenGLDriver?download=true
inline.NumInlined: 2450
inline.NumDeleted: 748
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN5video13COpenGLDriver21setRenderStates3DModeEv:bb.a

.sink.split.i.i:                                  ; preds = %bb.j, %bb.i
  %.sink.i.i = phi ptr [ %i.be, %bb.i ], [ %i.bg, %bb.j ]
  tail call void %.sink.i.i(i32 noundef 33984), !inline_history !3
  br label %_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i

_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i: ; preds = %.sink.split.i.i, %bb.j
  store i32 33984, ptr %i.az, align 4, !tbaa !210
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit: ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit, %_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i
  tail call void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 8448)
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !134
  tail call void @_ZN5video19COpenGLCacheHandler13setMatrixModeEj(ptr noundef nonnull align 8 dereferenceable(216) %i.bh, i32 noundef 5888)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2928
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2880
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2896
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %i.bn = load <4 x float>, ptr %i.bj, align 8, !tbaa !138, !noalias !397 ; 4 uses
  %i.bo = load <4 x float>, ptr %i.bi, align 8, !tbaa !138, !noalias !397 ; 4 uses
  %i.bp = load <4 x float>, ptr %i.bk, align 8, !tbaa !138, !noalias !397 ; 4 uses
  %i.bq = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.br = fmul <4 x float> %i.bq, %i.bp
  %i.bs = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bo, <4 x float> %i.bs, <4 x float> %i.br)
  %i.bu = load <4 x float>, ptr %i.bl, align 8, !tbaa !138, !noalias !397 ; 4 uses
  %i.bv = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bu, <4 x float> %i.bv, <4 x float> %i.bt)
  %i.bx = load <4 x float>, ptr %i.bm, align 8, !tbaa !138, !noalias !397 ; 4 uses
  %i.by = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bx, <4 x float> %i.by, <4 x float> %i.bw)
  store <4 x float> %i.bz, ptr %1, align 16, !tbaa !138, !alias.scope !397
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cc = load <4 x float>, ptr %i.ca, align 8, !tbaa !138, !noalias !397 ; 4 uses
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ce = fmul <4 x float> %i.bp, %i.cd
  %i.cf = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bo, <4 x float> %i.cf, <4 x float> %i.ce)
  %i.ch = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bu, <4 x float> %i.ch, <4 x float> %i.cg)
  %i.cj = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bx, <4 x float> %i.cj, <4 x float> %i.ci)
  store <4 x float> %i.ck, ptr %i.cb, align 16, !tbaa !138, !alias.scope !397
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2960
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cn = load <4 x float>, ptr %i.cl, align 8, !tbaa !138, !noalias !397 ; 4 uses
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cp = fmul <4 x float> %i.bp, %i.co
  %i.cq = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bo, <4 x float> %i.cq, <4 x float> %i.cp)
  %i.cs = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bu, <4 x float> %i.cs, <4 x float> %i.cr)
  %i.cu = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bx, <4 x float> %i.cu, <4 x float> %i.ct)
  store <4 x float> %i.cv, ptr %i.cm, align 16, !tbaa !138, !alias.scope !397
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 2976
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cy = load <4 x float>, ptr %i.cw, align 8, !tbaa !138, !noalias !397 ; 4 uses
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.da = fmul <4 x float> %i.bp, %i.cz
  %i.db = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bo, <4 x float> %i.db, <4 x float> %i.da)
  %i.dd = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bu, <4 x float> %i.dd, <4 x float> %i.dc)
  %i.df = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bx, <4 x float> %i.df, <4 x float> %i.de)
  store <4 x float> %i.dg, ptr %i.cx, align 16, !tbaa !138, !alias.scope !397
  call void @glLoadMatrixf(ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %i.dh = load ptr, ptr %i.c, align 8, !tbaa !134
  call void @_ZN5video19COpenGLCacheHandler13setMatrixModeEj(ptr noundef nonnull align 8 dereferenceable(216) %i.dh, i32 noundef 5889)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 2992
  call void @glLoadMatrixf(ptr noundef nonnull %i.di)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 3348
  store i8 1, ptr %i.dj, align 4, !tbaa !141
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1213
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !169, !range !154, !noundef !155
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit
  call void @glHint(i32 noundef 33008, i32 noundef 4354)
  br label %bb.l

bb.l:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit, %bb.k, %bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 3348 ; 3 uses
  %i.do = load i8, ptr %i.dn, align 4, !tbaa !141, !range !154, !noundef !155
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 3480
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %i.ds = call noundef zeroext i1 @_ZNK5video9SMaterialneERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.dq, ptr noundef nonnull align 8 dereferenceable(127) %i.dr)
  br i1 %i.ds, label %bb.n, label %bb.ad

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 3480 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 3576
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !214 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 3352 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 3448 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !215 ; 2 uses
  %.not1 = icmp eq i32 %i.dv, %i.dy
  br i1 %.not1, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !216
  %i.ec = load ptr, ptr %i.dz, align 8, !tbaa !217 ; 2 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = sdiv exact i64 %i.ef, 40                ; 2 uses
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = icmp ult i32 %i.dv, %i.eh
  br i1 %i.ei, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ej = zext i32 %i.dv to i64                   ; 2 uses
  %i.ek = icmp ugt i64 %i.eg, %i.ej
  br i1 %i.ek, label %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj) #36
  unreachable

_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit: ; preds = %bb.p
  %i.el = getelementptr inbounds nuw [40 x i8], ptr %i.ec, i64 %i.ej
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !220 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !31
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(8) %i.en)
  %.pre12 = load i32, ptr %i.dx, align 8, !tbaa !215
  br label %bb.r

bb.r:                                             ; preds = %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit, %bb.o, %bb.n
  %i.er = phi i32 [ %.pre12, %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit ], [ %i.dy, %bb.o ], [ %i.dv, %bb.n ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !216
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !217 ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = sdiv exact i64 %i.ey, 40                ; 2 uses
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = icmp ult i32 %i.er, %i.fa
  br i1 %i.fb, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.fc = zext i32 %i.er to i64                   ; 2 uses
  %i.fd = icmp ugt i64 %i.ez, %i.fc
  br i1 %i.fd, label %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit7, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj) #36
  unreachable

_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit7: ; preds = %bb.s
  %i.fe = getelementptr inbounds nuw [40 x i8], ptr %i.ev, i64 %i.fc
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !220 ; 2 uses
  %i.fh = load i8, ptr %i.dn, align 4, !tbaa !141, !range !154, !noundef !155
  %i.fi = trunc nuw i8 %i.fh to i1
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.fk = load ptr, ptr %i.fg, align 8, !tbaa !31
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %i.fg, ptr noundef nonnull align 8 dereferenceable(127) %i.dw, ptr noundef nonnull align 8 dereferenceable(127) %i.dt, i1 noundef zeroext %i.fi, ptr noundef nonnull %i.fj)
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.18, i32 noundef 2)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit7
  %i.fm = call noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.dt, ptr noundef nonnull align 8 dereferenceable(127) %i.dw) ; 0 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !134 ; 4 uses
  %i.fp = load ptr, ptr %i.dt, align 8, !tbaa !150
  %.not.i8 = icmp ne ptr %i.fp, null
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8
  %.not7.i = icmp eq ptr %i.fr, null
  %or.cond.i9 = select i1 %.not.i8, i1 %.not7.i, i1 false
  br i1 %or.cond.i9, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store ptr null, ptr %i.dt, align 8, !tbaa !150
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 3504 ; 2 uses
  %2 = load ptr, ptr %i.fs, align 8, !tbaa !150
  %.not.1.i = icmp ne ptr %2, null
  %3 = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.ft = load ptr, ptr %3, align 8
  %.not.1.i.a = icmp eq ptr %i.ft, null
  %or.cond12.i = select i1 %.not.1.i, i1 %.not.1.i.a, i1 false
  br i1 %or.cond12.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store ptr null, ptr %i.fs, align 8, !tbaa !150
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 3528 ; 2 uses
  %4 = load ptr, ptr %i.fu, align 8, !tbaa !150
  %.not.2.i = icmp ne ptr %4, null
  %5 = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %i.fv = load ptr, ptr %5, align 8
  %.not.2.i.a = icmp eq ptr %i.fv, null
  %or.cond14.i = select i1 %.not.2.i, i1 %.not.2.i.a, i1 false
  br i1 %or.cond14.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr null, ptr %i.fu, align 8, !tbaa !150
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 3552 ; 2 uses
  %6 = load ptr, ptr %i.fw, align 8, !tbaa !150
  %.not.3.i = icmp ne ptr %6, null
  %7 = getelementptr inbounds nuw i8, ptr %i.fo, i64 56
  %i.fx = load ptr, ptr %7, align 8
  %.not.3.i.a = icmp eq ptr %i.fx, null
  %or.cond16.i = select i1 %.not.3.i, i1 %.not.3.i.a, i1 false
  br i1 %or.cond16.i, label %bb.ac, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit

bb.ac:                                            ; preds = %bb.ab
  store ptr null, ptr %i.fw, align 8, !tbaa !150
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit: ; preds = %bb.ab, %bb.ac
  store i8 0, ptr %i.dn, align 4, !tbaa !141
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit, %bb.m
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 3448
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !215 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !216
  %i.gd = load ptr, ptr %i.ga, align 8, !tbaa !217 ; 2 uses
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = sdiv exact i64 %i.gg, 40                ; 2 uses
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = icmp ult i32 %i.fz, %i.gi
  br i1 %i.gj, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.gk = zext i32 %i.fz to i64                   ; 2 uses
  %i.gl = icmp ugt i64 %i.gh, %i.gk
  br i1 %i.gl, label %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit10, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj) #36
  unreachable

_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit10: ; preds = %bb.ae
  %i.gm = getelementptr inbounds nuw [40 x i8], ptr %i.gd, i64 %i.gk
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !220 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.gq = load ptr, ptr %i.go, align 8, !tbaa !31
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = call noundef zeroext i1 %i.gs(ptr noundef nonnull align 8 dereferenceable(8) %i.go, ptr noundef nonnull %i.gp, i32 noundef 0) ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit10, %bb.ad
  store i32 2, ptr %i.a, align 8, !tbaa !140
  ret void
}

declare noundef i32 @_ZN5video11CNullDriver26addAndDropMaterialRendererEPNS_17IMaterialRendererE(ptr noundef nonnull align 8 dereferenceable(933), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5video13COpenGLDriver10beginSceneEtNS_6SColorEfhRKNS_17SExposedVideoDataEPN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(3992) %0, i16 noundef zeroext %1, i32 %2, float noundef %3, i8 noundef zeroext %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5video11CNullDriver10beginSceneEtNS_6SColorEfhRKNS_17SExposedVideoDataEPN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(933) %0, i16 noundef zeroext %1, i32 %2, float noundef %3, i8 noundef zeroext %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef %6) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %5, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 688
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(3992) %0, i16 noundef zeroext %1, i32 %2, float noundef %3, i8 noundef zeroext %4)
  ret i1 true
}

declare noundef zeroext i1 @_ZN5video11CNullDriver10beginSceneEtNS_6SColorEfhRKNS_17SExposedVideoDataEPN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(933), i16 noundef zeroext, i32, float noundef, i8 noundef zeroext, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5video13COpenGLDriver8endSceneEv(ptr noundef nonnull align 8 dereferenceable(3992) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5video11CNullDriver8endSceneEv(ptr noundef nonnull align 8 dereferenceable(933) %0) ; 0 uses
  tail call void @glFlush()
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3984
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161  ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ %i.g, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN5video11CNullDriver8endSceneEv(ptr noundef nonnull align 8 dereferenceable(933)) unnamed_addr #1

declare void @glFlush() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5video13COpenGLDriver12getTransformENS_22E_TRANSFORMATION_STATEE(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(3992) %0, i32 noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video13COpenGLDriver12setTransformENS_22E_TRANSFORMATION_STATEERKN4core8CMatrix4IfEE(ptr noundef nonnull align 8 dereferenceable(3992) initializes((3349, 3350)) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2864 ; 2 uses
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false), !tbaa.struct !221
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3349
  store i8 1, ptr %i.d, align 1, !tbaa !142
  switch i32 %1, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134
  tail call void @_ZN5video19COpenGLCacheHandler13setMatrixModeEj(ptr noundef nonnull align 8 dereferenceable(216) %i.f, i32 noundef 5888)
  tail call void @glLoadMatrixf(ptr noundef nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2928
  tail call void @glMultMatrixf(ptr noundef nonnull %i.g)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  tail call void @_ZN5video19COpenGLCacheHandler13setMatrixModeEj(ptr noundef nonnull align 8 dereferenceable(216) %i.i, i32 noundef 5889)
  tail call void @glLoadMatrixf(ptr noundef nonnull %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

declare void @_ZN5video19COpenGLCacheHandler13setMatrixModeEj(ptr noundef nonnull align 8 dereferenceable(216), i32 noundef) local_unnamed_addr #1

declare void @glLoadMatrixf(ptr noundef) local_unnamed_addr #1

declare void @glMultMatrixf(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5video13COpenGLDriver26updateVertexHardwareBufferEPNS0_20SHWBufferLink_openglE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(3992) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp ne ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1180
  %i.b = load i8, ptr %i.a, align 4, !range !154
  %i.c = trunc nuw i8 %i.b to i1
  %or.cond = select i1 %.not, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN4core5arrayIcED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !224  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__dynamic_cast(ptr nonnull %i.e, ptr nonnull @_ZTIN5scene8HWBufferE, ptr nonnull @_ZTIN5scene13IVertexBufferE, i64 0) #32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ] ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(28) %i.h) ; 6 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(28) %i.h) ; 7 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(28) %i.h)
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(28) %i.h)
  %i.y = mul i32 %i.x, %i.p                       ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !225
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !225
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1175
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !169, !range !154, !noundef !155
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1293
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !169, !range !154, !noundef !155
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.loopexit, label %bb.f
end_hunk_0
begin_hunk_1_@_ZN5video13COpenGLDriver14getColorBufferEPKvjNS_13E_VERTEX_TYPEE:bb.a
bb.a:
  %i.a = shl i32 %2, 2                            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3312 ; 5 uses
  %i.c = zext i32 %i.a to i64                     ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3320 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !276  ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !162  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.c
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw nsw i64 %i.c, %i.i
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(25) %i.b, i64 noundef %i.k)
  br label %_ZN4core5arrayIhE8set_usedEj.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.i, %i.c
  br i1 %i.l, label %bb.d, label %_ZN4core5arrayIhE8set_usedEj.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.m
  br i1 %.not.i.i.i, label %_ZN4core5arrayIhE8set_usedEj.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.d
  store ptr %i.m, ptr %i.d, align 8, !tbaa !276
  br label %_ZN4core5arrayIhE8set_usedEj.exit

_ZN4core5arrayIhE8set_usedEj.exit:                ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i
  switch i32 %3, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %.preheader29
    i32 2, label %.preheader31
  ]

.preheader31:                                     ; preds = %_ZN4core5arrayIhE8set_usedEj.exit
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.preheader29:                                     ; preds = %_ZN4core5arrayIhE8set_usedEj.exit
  %.not41 = icmp eq i32 %i.a, 0
  br i1 %.not41, label %.loopexit, label %.lr.ph37

.preheader:                                       ; preds = %_ZN4core5arrayIhE8set_usedEj.exit
  %.not42 = icmp eq i32 %i.a, 0
  br i1 %.not42, label %.loopexit, label %.lr.ph40

.lr.ph40:                                         ; preds = %.preheader, %_ZN4core5arrayIhEixEj.exit
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %_ZN4core5arrayIhEixEj.exit ], [ 0, %.preheader ] ; 3 uses
  %.02539 = phi ptr [ %i.aj, %_ZN4core5arrayIhEixEj.exit ], [ %1, %.preheader ] ; 2 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !276
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !162  ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ugt i64 %i.r, %indvars.iv49
  br i1 %i.s, label %_ZN4core5arrayIhEixEj.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph40
  tail call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIhEixEj) #36
  unreachable

_ZN4core5arrayIhEixEj.exit:                       ; preds = %.lr.ph40
  %i.t = getelementptr inbounds nuw i8, ptr %.02539, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv49 ; 4 uses
  %i.v = load i32, ptr %i.t, align 4, !tbaa !156
  %i.w = lshr i32 %i.v, 16
  %i.x = trunc i32 %i.w to i8
  store i8 %i.x, ptr %i.u, align 1, !tbaa !137
  %i.y = load i32, ptr %i.t, align 4, !tbaa !156
  %i.z = lshr i32 %i.y, 8
  %i.aa = trunc i32 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !137
  %i.ac = load i32, ptr %i.t, align 4, !tbaa !156
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !137
  %i.af = load i32, ptr %i.t, align 4, !tbaa !156
  %i.ag = lshr i32 %i.af, 24
  %i.ah = trunc nuw i32 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !137
  %i.aj = getelementptr inbounds nuw i8, ptr %.02539, i64 40
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 4 ; 2 uses
  %i.ak = icmp samesign ult i64 %indvars.iv.next50, %i.c
  br i1 %i.ak, label %.lr.ph40, label %.loopexit, !llvm.loop !438

.lr.ph37:                                         ; preds = %.preheader29, %_ZN4core5arrayIhEixEj.exit27
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %_ZN4core5arrayIhEixEj.exit27 ], [ 0, %.preheader29 ] ; 3 uses
  %.02436 = phi ptr [ %i.bh, %_ZN4core5arrayIhEixEj.exit27 ], [ %1, %.preheader29 ] ; 2 uses
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !276
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !162 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp ugt i64 %i.ap, %indvars.iv46
  br i1 %i.aq, label %_ZN4core5arrayIhEixEj.exit27, label %bb.f

bb.f:                                             ; preds = %.lr.ph37
  tail call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIhEixEj) #36
  unreachable

_ZN4core5arrayIhEixEj.exit27:                     ; preds = %.lr.ph37
  %i.ar = getelementptr inbounds nuw i8, ptr %.02436, i64 24 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv46 ; 4 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !156
  %i.au = lshr i32 %i.at, 16
  %i.av = trunc i32 %i.au to i8
  store i8 %i.av, ptr %i.as, align 1, !tbaa !137
  %i.aw = load i32, ptr %i.ar, align 4, !tbaa !156
  %i.ax = lshr i32 %i.aw, 8
  %i.ay = trunc i32 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !137
  %i.ba = load i32, ptr %i.ar, align 4, !tbaa !156
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !137
  %i.bd = load i32, ptr %i.ar, align 4, !tbaa !156
  %i.be = lshr i32 %i.bd, 24
  %i.bf = trunc nuw i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !137
  %i.bh = getelementptr inbounds nuw i8, ptr %.02436, i64 48
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 4 ; 2 uses
  %i.bi = icmp samesign ult i64 %indvars.iv.next47, %i.c
  br i1 %i.bi, label %.lr.ph37, label %.loopexit, !llvm.loop !439

.lr.ph:                                           ; preds = %.preheader31, %_ZN4core5arrayIhEixEj.exit28
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4core5arrayIhEixEj.exit28 ], [ 0, %.preheader31 ] ; 3 uses
  %.034 = phi ptr [ %i.cf, %_ZN4core5arrayIhEixEj.exit28 ], [ %1, %.preheader31 ] ; 2 uses
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !276
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !162 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = icmp ugt i64 %i.bn, %indvars.iv
  br i1 %i.bo, label %_ZN4core5arrayIhEixEj.exit28, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIhEixEj) #36
  unreachable

_ZN4core5arrayIhEixEj.exit28:                     ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %.034, i64 24 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv ; 4 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !156
  %i.bs = lshr i32 %i.br, 16
  %i.bt = trunc i32 %i.bs to i8
  store i8 %i.bt, ptr %i.bq, align 1, !tbaa !137
  %i.bu = load i32, ptr %i.bp, align 4, !tbaa !156
  %i.bv = lshr i32 %i.bu, 8
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !137
  %i.by = load i32, ptr %i.bp, align 4, !tbaa !156
  %i.bz = trunc i32 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !137
  %i.cb = load i32, ptr %i.bp, align 4, !tbaa !156
  %i.cc = lshr i32 %i.cb, 24
  %i.cd = trunc nuw i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 3
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !137
  %i.cf = getelementptr inbounds nuw i8, ptr %.034, i64 64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.cg = icmp samesign ult i64 %indvars.iv.next, %i.c
  br i1 %i.cg, label %.lr.ph, label %.loopexit, !llvm.loop !440

.loopexit:                                        ; preds = %_ZN4core5arrayIhEixEj.exit28, %_ZN4core5arrayIhEixEj.exit27, %_ZN4core5arrayIhEixEj.exit, %.preheader31, %.preheader29, %.preheader, %_ZN4core5arrayIhE8set_usedEj.exit
  ret void
}

declare void @_ZN5video19COpenGLCacheHandler14setClientStateEbbbb(ptr noundef nonnull align 8 dereferenceable(216), i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

declare void @glColorPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @glNormalPointer(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @glTexCoordPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN5video19COpenGLCacheHandler22setClientActiveTextureEj(ptr noundef nonnull align 8 dereferenceable(216), i32 noundef) local_unnamed_addr #1

declare void @glEnableClientState(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN5video13COpenGLDriver11renderArrayEPKvjN5scene16E_PRIMITIVE_TYPEENS_12E_INDEX_TYPEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3992) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 4 uses
  %switch.selectcmp = icmp eq i32 %4, 1
  %switch.select = select i1 %switch.selectcmp, i32 5125, i32 0
  %switch.selectcmp24 = icmp eq i32 %4, 0
  %switch.select25 = select i1 %switch.selectcmp24, i32 5123, i32 %switch.select ; 6 uses
  switch i32 %3, label %bb.v [
    i32 0, label %bb.b
    i32 7, label %bb.b
    i32 1, label %bb.p
    i32 2, label %bb.q
    i32 3, label %bb.r
    i32 4, label %bb.s
    i32 5, label %bb.t
    i32 6, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %5 = icmp eq i32 %3, 7                          ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1106 ; 3 uses
  %i.c = load i8, ptr %i.b, align 2, !range !154
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %5, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @glEnable(i32 noundef 34913)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3460
  %i.f = load float, ptr %i.e, align 4, !tbaa !443 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 972
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.i = load float, ptr %i.g, align 4, !tbaa !138 ; 2 uses
  %i.j = fcmp olt float %i.f, %i.i
  %i.k = select i1 %i.j, float %i.i, float %i.f   ; 2 uses
  %i.l = load float, ptr %i.h, align 8, !tbaa !138 ; 2 uses
  %i.m = fcmp olt float %i.k, %i.l
  %i.n = select i1 %i.m, float %i.k, float %i.l   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) @__const._ZN5video13COpenGLDriver11renderArrayEPKvjN5scene16E_PRIMITIVE_TYPEENS_12E_INDEX_TYPEE.att, i64 12, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2016
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !444  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZN5video23COpenGLExtensionHandler21extGlPointParameterfvEiPKf.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void %i.p(i32 noundef 33065, ptr noundef nonnull %i.a), !inline_history !441
  br label %_ZN5video23COpenGLExtensionHandler21extGlPointParameterfvEiPKf.exit

_ZN5video23COpenGLExtensionHandler21extGlPointParameterfvEiPKf.exit: ; preds = %bb.d, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2008 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !445  ; 2 uses
  %.not.i26 = icmp eq ptr %i.r, null
  br i1 %.not.i26, label %_ZN5video23COpenGLExtensionHandler20extGlPointParameterfEif.exit28, label %_ZN5video23COpenGLExtensionHandler20extGlPointParameterfEif.exit

_ZN5video23COpenGLExtensionHandler20extGlPointParameterfEif.exit: ; preds = %_ZN5video23COpenGLExtensionHandler21extGlPointParameterfvEiPKf.exit
  call void %i.r(i32 noundef 33063, float noundef %i.n), !inline_history !442
  %.pr = load ptr, ptr %i.q, align 8, !tbaa !445  ; 2 uses
  %.not.i27 = icmp eq ptr %.pr, null
  br i1 %.not.i27, label %_ZN5video23COpenGLExtensionHandler20extGlPointParameterfEif.exit28, label %bb.f

bb.f:                                             ; preds = %_ZN5video23COpenGLExtensionHandler20extGlPointParameterfEif.exit
  call void %.pr(i32 noundef 33064, float noundef 1.000000e+00), !inline_history !442
  br label %_ZN5video23COpenGLExtensionHandler20extGlPointParameterfEif.exit28

_ZN5video23COpenGLExtensionHandler20extGlPointParameterfEif.exit28: ; preds = %_ZN5video23COpenGLExtensionHandler21extGlPointParameterfvEiPKf.exit, %_ZN5video23COpenGLExtensionHandler20extGlPointParameterfEif.exit, %bb.f
  call void @glPointSize(float noundef %i.n)
  br i1 %5, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZN5video23COpenGLExtensionHandler20extGlPointParameterfEif.exit28
  %i.s = load i8, ptr %i.b, align 2, !tbaa !169, !range !154, !noundef !155
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !134  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 172 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !210
  %.not.i29 = icmp eq i32 %i.x, 33984
  br i1 %.not.i29, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !211  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1512
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !212 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %bb.j, label %.sink.split.i.i

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 1520
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !213 ; 2 uses
  %.not3.i.i = icmp eq ptr %i.ad, null
  br i1 %.not3.i.i, label %_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.j, %bb.i
  %.sink.i.i = phi ptr [ %i.ab, %bb.i ], [ %i.ad, %bb.j ]
  call void %.sink.i.i(i32 noundef 33984), !inline_history !3
  br label %_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i

_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i: ; preds = %.sink.split.i.i, %bb.j
  store i32 33984, ptr %i.w, align 4, !tbaa !210
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit: ; preds = %bb.h, %_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i
  call void @glTexEnvf(i32 noundef 34913, i32 noundef 34914, float noundef 1.000000e+00)
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit
  call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %2)
  %i.ae = load i8, ptr %i.b, align 2, !tbaa !169, !range !154, !noundef !155
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @glDisable(i32 noundef 34913)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !134 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 172 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !210
  %.not.i30 = icmp eq i32 %i.aj, 33984
  br i1 %.not.i30, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit36, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !211 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1512
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !212 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.an, null
  br i1 %.not.i.i31, label %bb.n, label %.sink.split.i.i32

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 1520
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !213 ; 2 uses
  %.not3.i.i35 = icmp eq ptr %i.ap, null
  br i1 %.not3.i.i35, label %_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i34, label %.sink.split.i.i32

.sink.split.i.i32:                                ; preds = %bb.n, %bb.m
  %.sink.i.i33 = phi ptr [ %i.an, %bb.m ], [ %i.ap, %bb.n ]
  call void %.sink.i.i33(i32 noundef 33984), !inline_history !3
  br label %_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i34

_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i34: ; preds = %.sink.split.i.i32, %bb.n
  store i32 33984, ptr %i.ai, align 4, !tbaa !210
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit36

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit36: ; preds = %bb.l, %_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i34
  call void @glTexEnvf(i32 noundef 34913, i32 noundef 34914, float noundef 0.000000e+00)
  br label %bb.o

.critedge:                                        ; preds = %_ZN5video23COpenGLExtensionHandler20extGlPointParameterfEif.exit28
  call void @glDrawArrays(i32 noundef 0, i32 noundef 0, i32 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit36, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.v

bb.p:                                             ; preds = %bb.a
  %i.aq = add i32 %2, 1
  tail call void @glDrawElements(i32 noundef 3, i32 noundef %i.aq, i32 noundef %switch.select25, ptr noundef %1)
  br label %bb.v

bb.q:                                             ; preds = %bb.a
  tail call void @glDrawElements(i32 noundef 2, i32 noundef %2, i32 noundef %switch.select25, ptr noundef %1)
  br label %bb.v

bb.r:                                             ; preds = %bb.a
  %i.ar = shl i32 %2, 1
  tail call void @glDrawElements(i32 noundef 1, i32 noundef %i.ar, i32 noundef %switch.select25, ptr noundef %1)
  br label %bb.v

bb.s:                                             ; preds = %bb.a
  %i.as = add i32 %2, 2
  tail call void @glDrawElements(i32 noundef 5, i32 noundef %i.as, i32 noundef %switch.select25, ptr noundef %1)
  br label %bb.v

bb.t:                                             ; preds = %bb.a
  %i.at = add i32 %2, 2
  tail call void @glDrawElements(i32 noundef 6, i32 noundef %i.at, i32 noundef %switch.select25, ptr noundef %1)
  br label %bb.v

bb.u:                                             ; preds = %bb.a
  %i.au = mul i32 %2, 3
  tail call void @glDrawElements(i32 noundef 4, i32 noundef %i.au, i32 noundef %switch.select25, ptr noundef %1)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.a
  ret void
}

declare void @glDisableClientState(i32 noundef) local_unnamed_addr #1

declare void @glEnable(i32 noundef) local_unnamed_addr #1

declare void @glPointSize(float noundef) local_unnamed_addr #1

declare void @glTexEnvf(i32 noundef, i32 noundef, float noundef) local_unnamed_addr #1

declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @glDisable(i32 noundef) local_unnamed_addr #1

declare void @glDrawElements(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN5video13COpenGLDriver25draw2DVertexPrimitiveListEPKvjS2_jNS_13E_VERTEX_TYPEEN5scene16E_PRIMITIVE_TYPEENS_12E_INDEX_TYPEE(ptr noundef nonnull align 8 dereferenceable(3992) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ne i32 %4, 0
  %i.b = icmp ne i32 %2, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.an

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK5video11CNullDriver19checkPrimitiveCountEj(ptr noundef nonnull align 8 dereferenceable(933) %0, i32 noundef %4)
  br i1 %i.c, label %bb.c, label %bb.an

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5video11CNullDriver25draw2DVertexPrimitiveListEPKvjS2_jNS_13E_VERTEX_TYPEEN5scene16E_PRIMITIVE_TYPEENS_12E_INDEX_TYPEE(ptr noundef nonnull align 8 dereferenceable(933) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  %.not = icmp eq ptr %1, null                    ; 8 uses
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1175
  %i.e = load i8, ptr %i.d, align 1, !tbaa !169, !range !154, !noundef !155
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1293
  %i.h = load i8, ptr %i.g, align 1, !tbaa !169, !range !154, !noundef !155
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5video13COpenGLDriver14getColorBufferEPKvjNS_13E_VERTEX_TYPEE(ptr noundef nonnull align 8 dereferenceable(3992) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %5)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2824 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !134
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3352 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !150
  %i.o = tail call noundef zeroext i1 @_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE(ptr noundef nonnull align 8 dereferenceable(52) %i.l, i32 noundef 0, ptr noundef %i.n, i32 noundef 0) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3448
  %i.q = load i32, ptr %i.p, align 8, !tbaa !215  ; 3 uses
  %i.r = icmp eq i32 %i.q, 4
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3456
  %i.t = load i32, ptr %i.s, align 8, !tbaa !446  ; 2 uses
  %i.u = and i32 %i.t, 1048576
  %i.v = icmp ne i32 %i.u, 0
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !150
  %i.x = icmp ne ptr %i.w, null
  %i.y = and i32 %i.t, 2097152
  %i.z = icmp ne i32 %i.y, 0
  tail call void @_ZN5video13COpenGLDriver21setRenderStates2DModeEbbb(ptr noundef nonnull align 8 dereferenceable(3992) %0, i1 noundef zeroext %i.v, i1 noundef zeroext %i.x, i1 noundef zeroext %i.z)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aa = icmp eq i32 %i.q, 3
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !150
  %i.ac = icmp ne ptr %i.ab, null
  %i.ad = icmp eq i32 %i.q, 1
  tail call void @_ZN5video13COpenGLDriver21setRenderStates2DModeEbbb(ptr noundef nonnull align 8 dereferenceable(3992) %0, i1 noundef zeroext %i.aa, i1 noundef zeroext %i.ac, i1 noundef zeroext %i.ad)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !134
  %switch.selectcmp.case1 = icmp ne i32 %6, 7
  %switch.selectcmp.case2 = icmp ne i32 %6, 0
  %switch.selectcmp.not = and i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  tail call void @_ZN5video19COpenGLCacheHandler14setClientStateEbbbb(ptr noundef nonnull align 8 dereferenceable(216) %i.ae, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext %switch.selectcmp.not)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1175
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !169, !range !154, !noundef !155
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  br i1 %.not, label %bb.p, label %bb.m

.thread:                                          ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1293
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !169, !range !154, !noundef !155
  %i.ak = trunc nuw i8 %i.aj to i1                ; 2 uses
  %i.al = select i1 %i.ak, i32 32993, i32 4
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.thread
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.l
  switch i32 %5, label %bb.ai [
    i32 0, label %.thread64
    i32 1, label %.thread65
    i32 2, label %.thread66
  ]

.thread64:                                        ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @glColorPointer(i32 noundef 32993, i32 noundef 5121, i32 noundef 40, ptr noundef nonnull %i.am)
  br label %bb.r

.thread65:                                        ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @glColorPointer(i32 noundef 32993, i32 noundef 5121, i32 noundef 48, ptr noundef nonnull %i.an)
  br label %bb.z

end_hunk_1
begin_hunk_2_@_ZN5video13COpenGLDriver21setRenderStates2DModeEbbb:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 88 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !197
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !170
  %.not.i = icmp eq i32 %i.bg, 770
  br i1 %.not.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !198
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !170
  %.not18.i = icmp eq i32 %i.bj, 771
  br i1 %.not18.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !199
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !170
  %.not19.i = icmp eq i32 %i.bm, 770
  br i1 %.not19.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !200
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !170
  %.not20.i = icmp ne i32 %i.bp, 771
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 129
  %i.br = load i8, ptr %i.bq, align 1, !range !154
  %i.bs = trunc nuw i8 %i.br to i1
  %or.cond.i = select i1 %.not20.i, i1 true, i1 %i.bs
  br i1 %or.cond.i, label %bb.o, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 256), align 8, !tbaa !208
  call void %i.bt(i32 noundef 770, i32 noundef 771), !inline_history !1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 72 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !195
  %.not24.i = icmp eq i32 %i.bv, 0
  br i1 %.not24.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.bw = load ptr, ptr %i.be, align 8, !tbaa !197
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !198
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !199
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !200
  br label %bb.p

._crit_edge.i:                                    ; preds = %bb.p, %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bd, i64 129
  store i8 0, ptr %i.cd, align 1, !tbaa !209
  %.pre47 = load ptr, ptr %i.bc, align 8, !tbaa !134
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.p:                                             ; preds = %bb.p, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.p ] ; 5 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.i
  store i32 770, ptr %i.ce, align 4, !tbaa !170
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i
  store i32 771, ptr %i.cf, align 4, !tbaa !170
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.i
  store i32 770, ptr %i.cg, align 4, !tbaa !170
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.i
  store i32 771, ptr %i.ch, align 4, !tbaa !170
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ci = load i32, ptr %i.bu, align 8, !tbaa !195
  %i.cj = zext i32 %i.ci to i64
  %i.ck = icmp samesign ult i64 %indvars.iv.next.i, %i.cj
  br i1 %i.ck, label %bb.p, label %._crit_edge.i, !llvm.loop !2

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit: ; preds = %bb.n, %._crit_edge.i
  %i.cl = phi ptr [ %i.bd, %bb.n ], [ %.pre47, %._crit_edge.i ] ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 80 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !292
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !170
  %.not.i18 = icmp ne i32 %i.co, 32774
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 128 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !range !154
  %i.cr = trunc nuw i8 %i.cq to i1
  %or.cond.i19 = select i1 %.not.i18, i1 true, i1 %i.cr
  br i1 %or.cond.i19, label %bb.q, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setBlendEquationEj.exit

bb.q:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !211 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2536
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !293 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i, label %bb.r, label %.sink.split.i.i

bb.r:                                             ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 2528
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !294 ; 2 uses
  %.not3.i.i = icmp eq ptr %i.cx, null
  br i1 %.not3.i.i, label %_ZN5video23COpenGLExtensionHandler18irrGlBlendEquationEj.exit.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.r, %bb.q
  %.sink.i.i = phi ptr [ %i.cv, %bb.q ], [ %i.cx, %bb.r ]
  call void %.sink.i.i(i32 noundef 32774), !inline_history !10
  br label %_ZN5video23COpenGLExtensionHandler18irrGlBlendEquationEj.exit.i

_ZN5video23COpenGLExtensionHandler18irrGlBlendEquationEj.exit.i: ; preds = %.sink.split.i.i, %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 72 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !195
  %.not9.i = icmp eq i32 %i.cz, 0
  br i1 %.not9.i, label %._crit_edge.i23, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %_ZN5video23COpenGLExtensionHandler18irrGlBlendEquationEj.exit.i
  %i.da = load ptr, ptr %i.cm, align 8, !tbaa !292
  br label %bb.s

._crit_edge.i23:                                  ; preds = %bb.s, %_ZN5video23COpenGLExtensionHandler18irrGlBlendEquationEj.exit.i
  store i8 0, ptr %i.cp, align 8, !tbaa !295
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setBlendEquationEj.exit

bb.s:                                             ; preds = %bb.s, %.lr.ph.i20
  %indvars.iv.i21 = phi i64 [ 0, %.lr.ph.i20 ], [ %indvars.iv.next.i22, %bb.s ] ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.i21
  store i32 32774, ptr %i.db, align 4, !tbaa !170
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 2 uses
  %i.dc = load i32, ptr %i.cy, align 8, !tbaa !195
  %i.dd = zext i32 %i.dc to i64
  %i.de = icmp samesign ult i64 %indvars.iv.next.i22, %i.dd
  br i1 %i.de, label %bb.s, label %._crit_edge.i23, !llvm.loop !11

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setBlendEquationEj.exit: ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit, %._crit_edge.i23
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1213
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !169, !range !154, !noundef !155
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setBlendEquationEj.exit
  call void @glHint(i32 noundef 33008, i32 noundef 4353)
  br label %bb.u

bb.u:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setBlendEquationEj.exit, %bb.t, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !454, !range !154, !noundef !155
  %i.dk = trunc nuw i8 %i.dj to i1
  %.v = select i1 %i.dk, i64 624, i64 752
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 %.v
  call void @_ZN5video9SMaterialC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %5, ptr noundef nonnull align 8 dereferenceable(127) %i.dl)
  br i1 %2, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.dm = load ptr, ptr %0, align 8, !tbaa !31
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.do = load ptr, ptr %i.dn, align 8
  invoke void %i.do(ptr noundef nonnull align 8 dereferenceable(3992) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(64) @_ZN4core14IdentityMatrixE)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.f, align 1, !tbaa !142
  br label %bb.z

bb.x:                                             ; preds = %.invoke63, %.invoke62, %.invoke61, %.invoke, %.sink.split.i.i40, %bb.an, %bb.ak, %bb.bb, %bb.ba, %bb.aw, %bb.av, %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit37, %bb.al, %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit, %bb.aa, %bb.z, %bb.y, %bb.v
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5video9SMaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(127) dereferenceable(127) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %i.dp

bb.y:                                             ; preds = %bb.u
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !134
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = invoke noundef zeroext i1 @_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCache3setEjPKNS_8ITextureENS_17ESetTextureActiveE(ptr noundef nonnull align 8 dereferenceable(52) %i.ds, i32 noundef 0, ptr noundef null, i32 noundef 0)
          to label %bb.z unwind label %bb.x       ; 0 uses

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 3480 ; 4 uses
  %i.dv = load ptr, ptr %0, align 8, !tbaa !31
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 872
  %i.dx = load ptr, ptr %i.dw, align 8
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(3992) %0, ptr noundef nonnull align 8 dereferenceable(127) %5, ptr noundef nonnull align 8 dereferenceable(127) %i.du, i1 noundef zeroext %or.cond17)
          to label %bb.aa unwind label %bb.x

bb.aa:                                            ; preds = %bb.z
  %i.dy = invoke noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.du, ptr noundef nonnull align 8 dereferenceable(127) %5)
          to label %bb.ab unwind label %bb.x      ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 2824 ; 5 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !134 ; 10 uses
  %i.eb = load ptr, ptr %i.du, align 8, !tbaa !150
  %.not.i24 = icmp ne ptr %i.eb, null
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8
  %.not7.i = icmp eq ptr %i.ed, null
  %or.cond.i25 = select i1 %.not.i24, i1 %.not7.i, i1 false
  br i1 %or.cond.i25, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr null, ptr %i.du, align 8, !tbaa !150
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 3504 ; 2 uses
  %6 = load ptr, ptr %i.ee, align 8, !tbaa !150
  %.not.1.i = icmp ne ptr %6, null
  %7 = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ef = load ptr, ptr %7, align 8
  %.not.1.i.a = icmp eq ptr %i.ef, null
  %or.cond12.i = select i1 %.not.1.i, i1 %.not.1.i.a, i1 false
  br i1 %or.cond12.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store ptr null, ptr %i.ee, align 8, !tbaa !150
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 3528 ; 2 uses
  %8 = load ptr, ptr %i.eg, align 8, !tbaa !150
  %.not.2.i = icmp ne ptr %8, null
  %9 = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.eh = load ptr, ptr %9, align 8
  %.not.2.i.a = icmp eq ptr %i.eh, null
  %or.cond14.i = select i1 %.not.2.i, i1 %.not.2.i.a, i1 false
  br i1 %or.cond14.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store ptr null, ptr %i.eg, align 8, !tbaa !150
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 3552 ; 2 uses
  %10 = load ptr, ptr %i.ei, align 8, !tbaa !150
  %.not.3.i = icmp ne ptr %10, null
  %11 = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.ej = load ptr, ptr %11, align 8
  %.not.3.i.a = icmp eq ptr %i.ej, null
  %or.cond16.i = select i1 %.not.3.i, i1 %.not.3.i.a, i1 false
  br i1 %or.cond16.i, label %bb.ai, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit

bb.ai:                                            ; preds = %bb.ah
  store ptr null, ptr %i.ei, align 8, !tbaa !150
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit: ; preds = %bb.ah, %bb.ai
  %i.ek = and i1 %2, %3                           ; 2 uses
  %or.cond = or i1 %1, %i.ek
  %i.el = getelementptr inbounds nuw i8, ptr %i.ea, i64 120 ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !194
  %i.en = load i8, ptr %i.em, align 1, !tbaa !169, !range !154, !noundef !155 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 130 ; 3 uses
  %i.ep = load i8, ptr %i.eo, align 2, !range !154
  %i.eq = trunc nuw i8 %i.ep to i1                ; 2 uses
  br i1 %or.cond, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit
  %.not.i26 = icmp eq i8 %i.en, 0
  %or.cond.i27 = select i1 %.not.i26, i1 true, i1 %i.eq
  br i1 %or.cond.i27, label %bb.ak, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit

bb.ak:                                            ; preds = %bb.aj
  %i.er = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 232), align 8
  invoke void %i.er(i32 noundef 3042)
          to label %.noexc unwind label %bb.x, !inline_history !0

.noexc:                                           ; preds = %bb.ak
  %i.es = getelementptr inbounds nuw i8, ptr %i.ea, i64 72
  %i.et = load i32, ptr %i.es, align 8, !tbaa !195 ; 2 uses
  %.not9.i28 = icmp eq i32 %i.et, 0
  br i1 %.not9.i28, label %._crit_edge.i30, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.noexc
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !194
  %i.ev = zext i32 %i.et to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.eu, i8 1, i64 %i.ev, i1 false), !tbaa !169
  br label %._crit_edge.i30

._crit_edge.i30:                                  ; preds = %.lr.ph.i29, %.noexc
  store i8 0, ptr %i.eo, align 2, !tbaa !196
  %.pre49 = load ptr, ptr %i.dz, align 8, !tbaa !134
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit: ; preds = %._crit_edge.i30, %bb.aj
  %i.ew = phi ptr [ %.pre49, %._crit_edge.i30 ], [ %i.ea, %bb.aj ]
  invoke void @_ZN5video19COpenGLCacheHandler12setAlphaTestEb(ptr noundef nonnull align 8 dereferenceable(216) %i.ew, i1 noundef zeroext true)
          to label %bb.al unwind label %bb.x

bb.al:                                            ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit
  %i.ex = load ptr, ptr %i.dz, align 8, !tbaa !134
  invoke void @_ZN5video19COpenGLCacheHandler12setAlphaFuncEjf(ptr noundef nonnull align 8 dereferenceable(216) %i.ex, i32 noundef 516, float noundef 0.000000e+00)
          to label %bb.ao unwind label %bb.x

bb.am:                                            ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit
  %.not.i31 = icmp ne i8 %i.en, 0
  %or.cond.i32 = select i1 %.not.i31, i1 true, i1 %i.eq
  br i1 %or.cond.i32, label %bb.an, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit37

bb.an:                                            ; preds = %bb.am
  %i.ey = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 224), align 8
  invoke void %i.ey(i32 noundef 3042)
          to label %.noexc36 unwind label %bb.x, !inline_history !0

.noexc36:                                         ; preds = %bb.an
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ea, i64 72
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !195 ; 2 uses
  %.not9.i33 = icmp eq i32 %i.fa, 0
  br i1 %.not9.i33, label %._crit_edge.i35, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %.noexc36
  %i.fb = load ptr, ptr %i.el, align 8, !tbaa !194
  %i.fc = zext i32 %i.fa to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.fb, i8 0, i64 %i.fc, i1 false), !tbaa !169
  br label %._crit_edge.i35

._crit_edge.i35:                                  ; preds = %.lr.ph.i34, %.noexc36
  store i8 0, ptr %i.eo, align 2, !tbaa !196
  %.pre48 = load ptr, ptr %i.dz, align 8, !tbaa !134
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit37

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit37: ; preds = %._crit_edge.i35, %bb.am
  %i.fd = phi ptr [ %.pre48, %._crit_edge.i35 ], [ %i.ea, %bb.am ]
  invoke void @_ZN5video19COpenGLCacheHandler12setAlphaTestEb(ptr noundef nonnull align 8 dereferenceable(216) %i.fd, i1 noundef zeroext false)
          to label %bb.ao unwind label %bb.x

bb.ao:                                            ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit37, %bb.al
  br i1 %2, label %bb.ap, label %bb.bc

bb.ap:                                            ; preds = %bb.ao
  %i.fe = load ptr, ptr %i.dz, align 8, !tbaa !134 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 172 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !210
  %.not.i38 = icmp eq i32 %i.fg, 33984
  br i1 %.not.i38, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !211 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 1512
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !212 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i39, label %bb.ar, label %.sink.split.i.i40

bb.ar:                                            ; preds = %bb.aq
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 1520
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !213 ; 2 uses
  %.not3.i.i42 = icmp eq ptr %i.fm, null
  br i1 %.not3.i.i42, label %_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i, label %.sink.split.i.i40

.sink.split.i.i40:                                ; preds = %bb.ar, %bb.aq
  %.sink.i.i41 = phi ptr [ %i.fk, %bb.aq ], [ %i.fm, %bb.ar ]
  invoke void %.sink.i.i41(i32 noundef 33984)
          to label %_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i unwind label %bb.x, !inline_history !453

_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i: ; preds = %.sink.split.i.i40, %bb.ar
  store i32 33984, ptr %i.ff, align 4, !tbaa !210
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit: ; preds = %_ZN5video23COpenGLExtensionHandler18irrGlActiveTextureEj.exit.i, %bb.ap
  br i1 %i.ek, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit
  br i1 %1, label %.invoke, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 1150
  %i.fo = load i8, ptr %i.fn, align 2, !tbaa !169, !range !154, !noundef !155
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1277
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !169, !range !154, !noundef !155
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.av, label %.invoke

bb.av:                                            ; preds = %bb.au, %bb.at
  invoke void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 34160)
          to label %bb.aw unwind label %bb.x

bb.aw:                                            ; preds = %bb.av
  invoke void @glTexEnvi(i32 noundef 8960, i32 noundef 34162, i32 noundef 7681)
          to label %.invoke63 unwind label %bb.x

bb.ax:                                            ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE16setActiveTextureEj.exit
  br i1 %1, label %bb.ay, label %.invoke

bb.ay:                                            ; preds = %bb.ax
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 1150
  %i.fu = load i8, ptr %i.ft, align 2, !tbaa !169, !range !154, !noundef !155
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 1277
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !169, !range !154, !noundef !155
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.ba, label %.invoke

bb.ba:                                            ; preds = %bb.az, %bb.ay
  invoke void @glTexEnvi(i32 noundef 8960, i32 noundef 8704, i32 noundef 34160)
          to label %bb.bb unwind label %bb.x

bb.bb:                                            ; preds = %bb.ba
  invoke void @glTexEnvi(i32 noundef 8960, i32 noundef 34162, i32 noundef 7681)
          to label %.invoke63 unwind label %bb.x

.invoke63:                                        ; preds = %bb.bb, %bb.aw
  %i.fz = phi i32 [ 5890, %bb.aw ], [ 34167, %bb.bb ]
  invoke void @glTexEnvi(i32 noundef 8960, i32 noundef 34184, i32 noundef %i.fz)
          to label %.invoke62 unwind label %bb.x

.invoke62:                                        ; preds = %.invoke63
  invoke void @glTexEnvi(i32 noundef 8960, i32 noundef 34161, i32 noundef 8448)
          to label %.invoke61 unwind label %bb.x

.invoke61:                                        ; preds = %.invoke62
  invoke void @glTexEnvi(i32 noundef 8960, i32 noundef 34176, i32 noundef 5890)
          to label %.invoke unwind label %bb.x

.invoke:                                          ; preds = %.invoke61, %bb.ax, %bb.az, %bb.au, %bb.as
  %i.ga = phi i32 [ 8704, %bb.az ], [ 34177, %.invoke61 ], [ 8704, %bb.au ], [ 8704, %bb.ax ], [ 8704, %bb.as ]
  %i.gb = phi i32 [ 8448, %bb.az ], [ 34167, %.invoke61 ], [ 8448, %bb.au ], [ 8448, %bb.ax ], [ 8448, %bb.as ]
  invoke void @glTexEnvi(i32 noundef 8960, i32 noundef %i.ga, i32 noundef %i.gb)
          to label %bb.bc unwind label %bb.x

bb.bc:                                            ; preds = %.invoke, %bb.ao
  store i32 1, ptr %i.d, align 8, !tbaa !140
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !164 ; 2 uses
  %.not.i.i44 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i44, label %_ZN5video14SMaterialLayerD2Ev.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef 64) #31
  br label %_ZN5video14SMaterialLayerD2Ev.exit.i

_ZN5video14SMaterialLayerD2Ev.exit.i:             ; preds = %bb.bd, %bb.bc
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !164 ; 2 uses
  %.not.i.1.i = icmp eq ptr %i.gf, null
  br i1 %.not.i.1.i, label %_ZN5video14SMaterialLayerD2Ev.exit.1.i, label %bb.be

bb.be:                                            ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef 64) #31
  br label %_ZN5video14SMaterialLayerD2Ev.exit.1.i
end_hunk_2
begin_hunk_3_@_ZN5video9SMaterialaSERKS0_:bb.a

bb.l:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.1
  br i1 %.not19.i.2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bh, ptr noundef nonnull align 4 dereferenceable(64) %i.bj, i64 64, i1 false), !tbaa.struct !221
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.2

bb.n:                                             ; preds = %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 64) #31
  store ptr null, ptr %i.bg, align 8, !tbaa !164
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.2

bb.o:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.1
  br i1 %.not19.i.2, label %_ZN5video14SMaterialLayeraSERKS0_.exit.2, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #35 ; 2 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !164
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bk, ptr noundef nonnull align 4 dereferenceable(64) %i.bl, i64 64, i1 false), !tbaa.struct !221
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !164
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.2

_ZN5video14SMaterialLayeraSERKS0_.exit.2:         ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bn = load i16, ptr %i.bm, align 8
  %i.bo = and i16 %i.bn, 15
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bq = load i16, ptr %i.bp, align 8
  %i.br = and i16 %i.bq, -16
  %i.bs = or disjoint i16 %i.br, %i.bo            ; 2 uses
  store i16 %i.bs, ptr %i.bp, align 8
  %i.bt = load i16, ptr %i.bm, align 8
  %i.bu = and i16 %i.bt, 240
  %i.bv = and i16 %i.bs, -241
  %i.bw = or disjoint i16 %i.bv, %i.bu            ; 2 uses
  store i16 %i.bw, ptr %i.bp, align 8
  %i.bx = load i16, ptr %i.bm, align 8
  %i.by = and i16 %i.bx, 3840
  %i.bz = and i16 %i.bw, -3841
  %i.ca = or disjoint i16 %i.bz, %i.by
  store i16 %i.ca, ptr %i.bp, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.cd = load <4 x i8>, ptr %i.cb, align 2, !tbaa !137
  store <4 x i8> %i.cd, ptr %i.cc, align 2, !tbaa !137
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !150
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !150
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !164 ; 3 uses
  %.not.i.3 = icmp eq ptr %i.ci, null
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !164 ; 2 uses
  %.not19.i.3 = icmp eq ptr %i.ck, null           ; 2 uses
  br i1 %.not.i.3, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.2
  br i1 %.not19.i.3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ci, ptr noundef nonnull align 4 dereferenceable(64) %i.ck, i64 64, i1 false), !tbaa.struct !221
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.3

bb.s:                                             ; preds = %bb.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 64) #31
  store ptr null, ptr %i.ch, align 8, !tbaa !164
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.3

bb.t:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.2
  br i1 %.not19.i.3, label %_ZN5video14SMaterialLayeraSERKS0_.exit.3, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #35 ; 2 uses
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !164
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.cl, ptr noundef nonnull align 4 dereferenceable(64) %i.cm, i64 64, i1 false), !tbaa.struct !221
  store ptr %i.cl, ptr %i.ch, align 8, !tbaa !164
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.3

_ZN5video14SMaterialLayeraSERKS0_.exit.3:         ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.co = load i16, ptr %i.cn, align 8
  %i.cp = and i16 %i.co, 15
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.cr = load i16, ptr %i.cq, align 8
  %i.cs = and i16 %i.cr, -16
  %i.ct = or disjoint i16 %i.cs, %i.cp            ; 2 uses
  store i16 %i.ct, ptr %i.cq, align 8
  %i.cu = load i16, ptr %i.cn, align 8
  %i.cv = and i16 %i.cu, 240
  %i.cw = and i16 %i.ct, -241
  %i.cx = or disjoint i16 %i.cw, %i.cv            ; 2 uses
  store i16 %i.cx, ptr %i.cq, align 8
  %i.cy = load i16, ptr %i.cn, align 8
  %i.cz = and i16 %i.cy, 3840
  %i.da = and i16 %i.cx, -3841
  %i.db = or disjoint i16 %i.da, %i.cz
  store i16 %i.db, ptr %i.cq, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.de = load <4 x i8>, ptr %i.dc, align 2, !tbaa !137
  store <4 x i8> %i.de, ptr %i.dd, align 2, !tbaa !137
  br label %.split7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5video17SOverrideMaterial5applyERNS_9SMaterialE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(127) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 146
  %i.b = load i8, ptr %i.a, align 2, !tbaa !478, !range !154, !noundef !155
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !479  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !479  ; 2 uses
  %.not7989 = icmp eq ptr %i.e, %i.g
  br i1 %.not7989, label %.preheader88, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.promoted = load i32, ptr %i.h, align 8
  br label %bb.c

.preheader88:                                     ; preds = %bb.e, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 126 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 126 ; 14 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 134
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 135
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 134
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 135
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 134
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 59
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 135
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 83
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 83
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 134
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 135
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 82
  br label %bb.n

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.bk = phi i32 [ %.promoted, %.lr.ph ], [ %i.bq, %bb.e ] ; 2 uses
  %.sroa.076.090 = phi ptr [ %i.e, %.lr.ph ], [ %i.br, %bb.e ] ; 3 uses
  %i.bl = load i32, ptr %.sroa.076.090, align 4, !tbaa !481 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 0
  %i.bn = icmp eq i32 %i.bl, %i.bk
  %or.cond = select i1 %i.bm, i1 true, i1 %i.bn
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.076.090, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !482 ; 2 uses
  store i32 %i.bp, ptr %i.h, align 8, !tbaa !327
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bq = phi i32 [ %i.bk, %bb.c ], [ %i.bp, %bb.d ]
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.076.090, i64 8 ; 2 uses
  %.not79 = icmp eq ptr %i.br, %i.g
  br i1 %.not79, label %.preheader88, label %bb.c

.preheader:                                       ; preds = %.loopexit81
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bu = icmp eq ptr %1, %0
  %i.bv = load i8, ptr %i.bs, align 4, !tbaa !169, !range !154, !noundef !155
  %i.bw = trunc nuw i8 %i.bv to i1                ; 2 uses
  br i1 %i.bu, label %.preheader.split.us.preheader, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  br i1 %i.bw, label %bb.ar, label %bb.ay

.preheader.split.us.preheader:                    ; preds = %.preheader
  br i1 %i.bw, label %_ZN5video14SMaterialLayeraSERKS0_.exit.us, label %bb.f

bb.f:                                             ; preds = %.preheader.split.us.preheader
  %i.bx = load i8, ptr %i.bt, align 8, !tbaa !169, !range !154, !noundef !155
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.g, label %_ZN5video14SMaterialLayeraSERKS0_.exit.us

bb.g:                                             ; preds = %bb.f
  %i.bz = load ptr, ptr %0, align 8, !tbaa !150
  store ptr %i.bz, ptr %1, align 8, !tbaa !150
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.us

_ZN5video14SMaterialLayeraSERKS0_.exit.us:        ; preds = %.preheader.split.us.preheader, %bb.g, %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !169, !range !154, !noundef !155
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZN5video14SMaterialLayeraSERKS0_.exit.us.1, label %bb.h

bb.h:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.us
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !169, !range !154, !noundef !155
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.i, label %_ZN5video14SMaterialLayeraSERKS0_.exit.us.1

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !150
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !150
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.us.1

_ZN5video14SMaterialLayeraSERKS0_.exit.us.1:      ; preds = %bb.i, %bb.h, %_ZN5video14SMaterialLayeraSERKS0_.exit.us
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !169, !range !154, !noundef !155
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %_ZN5video14SMaterialLayeraSERKS0_.exit.us.2, label %bb.j

bb.j:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.us.1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !169, !range !154, !noundef !155
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.k, label %_ZN5video14SMaterialLayeraSERKS0_.exit.us.2

bb.k:                                             ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !150
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !150
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.us.2

_ZN5video14SMaterialLayeraSERKS0_.exit.us.2:      ; preds = %bb.k, %bb.j, %_ZN5video14SMaterialLayeraSERKS0_.exit.us.1
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 143
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !169, !range !154, !noundef !155
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.us.2
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 139
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !169, !range !154, !noundef !155
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !150
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !150
  br label %.loopexit

bb.n:                                             ; preds = %.preheader88, %.loopexit81
  %.07095 = phi i32 [ 0, %.preheader88 ], [ %i.iw, %.loopexit81 ] ; 3 uses
  %i.db = shl nuw i32 1, %.07095
  %i.dc = load i32, ptr %i.i, align 8, !tbaa !483
  %i.dd = and i32 %i.dc, %i.db
  %.not = icmp eq i32 %i.dd, 0
  br i1 %.not, label %.loopexit81, label %.split

.split:                                           ; preds = %bb.n
  switch i32 %.07095, label %.loopexit81 [
    i32 0, label %bb.o
    i32 1, label %bb.p
    i32 4, label %bb.q
    i32 5, label %bb.r
    i32 6, label %bb.s
    i32 7, label %bb.t
    i32 8, label %.preheader80.preheader
    i32 9, label %.preheader82.preheader.a
    i32 10, label %.preheader84.preheader.a
    i32 11, label %bb.ag
    i32 13, label %.preheader86.preheader.a
    i32 14, label %bb.al
    i32 15, label %bb.am
    i32 17, label %bb.an
    i32 18, label %bb.ao
    i32 20, label %bb.ap
    i32 19, label %bb.aq
  ]

.preheader86.preheader.a:                         ; preds = %.split
  %i.de = load i8, ptr %i.r, align 4, !tbaa !169, !range !154, !noundef !155
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.ah, label %.preheader86.1

.preheader84.preheader.a:                         ; preds = %.split
  %i.dg = load i8, ptr %i.r, align 4, !tbaa !169, !range !154, !noundef !155
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.ac, label %.preheader84.1

.preheader82.preheader.a:                         ; preds = %.split
  %i.di = load i8, ptr %i.r, align 4, !tbaa !169, !range !154, !noundef !155
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.y, label %.preheader82.1

.preheader80.preheader:                           ; preds = %.split
  %i.dk = load i8, ptr %i.r, align 4, !tbaa !169, !range !154, !noundef !155
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.u, label %.preheader80.1

bb.o:                                             ; preds = %.split
  %i.dm = load i8, ptr %i.p, align 2
  %i.dn = and i8 %i.dm, 1
  %i.do = load i8, ptr %i.q, align 2
  %i.dp = and i8 %i.do, -2
  %i.dq = or disjoint i8 %i.dp, %i.dn
  store i8 %i.dq, ptr %i.q, align 2
  br label %.loopexit81

bb.p:                                             ; preds = %.split
  %i.dr = load i8, ptr %i.p, align 2
  %.lobit75 = and i8 %i.dr, 2
  %i.ds = load i8, ptr %i.q, align 2
  %i.dt = and i8 %i.ds, -3
  %i.du = or disjoint i8 %i.dt, %.lobit75
  store i8 %i.du, ptr %i.q, align 2
  br label %.loopexit81

bb.q:                                             ; preds = %.split
  %i.dv = load i16, ptr %i.n, align 4
  %i.dw = and i16 %i.dv, 15
  %i.dx = load i16, ptr %i.o, align 4
  %i.dy = and i16 %i.dx, -16
  %i.dz = or disjoint i16 %i.dy, %i.dw
  store i16 %i.dz, ptr %i.o, align 4
  br label %.loopexit81

bb.r:                                             ; preds = %.split
  %i.ea = load i8, ptr %i.p, align 2
  %i.eb = and i8 %i.ea, 12
  %i.ec = load i8, ptr %i.q, align 2
  %i.ed = and i8 %i.ec, -13
  %i.ee = or disjoint i8 %i.ed, %i.eb
  store i8 %i.ee, ptr %i.q, align 2
  br label %.loopexit81

bb.s:                                             ; preds = %.split
  %i.ef = load i8, ptr %i.p, align 2
  %.lobit74 = and i8 %i.ef, 16
  %i.eg = load i8, ptr %i.q, align 2
  %i.eh = and i8 %i.eg, -17
  %i.ei = or disjoint i8 %i.eh, %.lobit74
  store i8 %i.ei, ptr %i.q, align 2
  br label %.loopexit81

bb.t:                                             ; preds = %.split
  %i.ej = load i8, ptr %i.p, align 2
  %.lobit73 = and i8 %i.ej, 32
  %i.ek = load i8, ptr %i.q, align 2
  %i.el = and i8 %i.ek, -33
  %i.em = or disjoint i8 %i.el, %.lobit73
  store i8 %i.em, ptr %i.q, align 2
  br label %.loopexit81

bb.u:                                             ; preds = %.preheader80.preheader
  %i.en = load i8, ptr %i.az, align 2, !tbaa !328
  store i8 %i.en, ptr %i.ba, align 2, !tbaa !328
  br label %.preheader80.1

.preheader80.1:                                   ; preds = %.preheader80.preheader, %bb.u
  %i.eo = load i8, ptr %i.bb, align 1, !tbaa !169, !range !154, !noundef !155
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.v, label %.preheader80.2

bb.v:                                             ; preds = %.preheader80.1
  %i.eq = load i8, ptr %i.bc, align 2, !tbaa !328
end_hunk_3
