Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/Driver?download=true
inline.NumInlined: 2295
inline.NumDeleted: 773
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN5video18COpenGL3DriverBase21setRenderStates3DModeEv:bb.a
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !212
  %i.y = load i32, ptr %i.x, align 4, !tbaa !193
  %.not18.i = icmp eq i32 %i.y, 771
  br i1 %.not18.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !213
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !193
  %.not19.i = icmp eq i32 %i.ab, 770
  br i1 %.not19.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !214
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !193
  %.not20.i = icmp ne i32 %i.ae, 771
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 129
  %i.ag = load i8, ptr %i.af, align 1, !range !144
  %i.ah = trunc nuw i8 %i.ag to i1
  %or.cond.i7 = select i1 %.not20.i, i1 true, i1 %i.ah
  br i1 %or.cond.i7, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 256), align 8, !tbaa !217
  tail call void %i.ai(i32 noundef 770, i32 noundef 771), !inline_history !2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 72 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !209
  %.not24.i = icmp eq i32 %i.ak, 0
  br i1 %.not24.i, label %._crit_edge.i6, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %bb.h
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !211
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !212
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !213
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !214
  br label %bb.i

._crit_edge.i6:                                   ; preds = %bb.i, %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 129
  store i8 0, ptr %i.as, align 1, !tbaa !231
  br label %.thread

bb.i:                                             ; preds = %bb.i, %.lr.ph.i5
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i5 ], [ %indvars.iv.next.i, %bb.i ] ; 5 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i
  store i32 770, ptr %i.at, align 4, !tbaa !193
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i
  store i32 771, ptr %i.au, align 4, !tbaa !193
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i
  store i32 770, ptr %i.av, align 4, !tbaa !193
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i
  store i32 771, ptr %i.aw, align 4, !tbaa !193
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ax = load i32, ptr %i.aj, align 8, !tbaa !209
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next.i, %i.ay
  br i1 %i.az, label %bb.i, label %._crit_edge.i6, !llvm.loop !3

.thread:                                          ; preds = %._crit_edge.i6, %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1228
  store i8 1, ptr %i.ba, align 4, !tbaa !146
  br label %bb.l

bb.j:                                             ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1228
  %.pre12 = load i8, ptr %.phi.trans.insert, align 4, !tbaa !146, !range !144
  %i.bb = trunc nuw i8 %.pre12 to i1
  br i1 %i.bb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.be = tail call noundef zeroext i1 @_ZNK5video9SMaterialneERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.bc, ptr noundef nonnull align 8 dereferenceable(127) %i.bd)
  br i1 %i.be, label %bb.l, label %bb.ae

bb.l:                                             ; preds = %.thread, %bb.k, %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1228 ; 2 uses
  %i.bg = load i32, ptr %i.d, align 8, !tbaa !152
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !232 ; 3 uses
  %.not2 = icmp eq ptr %i.bj, null
  br i1 %.not2, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(68) %i.bj)
  store ptr null, ptr %i.bi, align 8, !tbaa !232
  br label %bb.s

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !233 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2296
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !234
  %.not3 = icmp eq i32 %i.bo, %i.bq
  br i1 %.not3, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !235
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !236 ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = sdiv exact i64 %i.bx, 40                ; 2 uses
  %i.bz = trunc i64 %i.by to i32
  %i.ca = icmp ult i32 %i.bo, %i.bz
  br i1 %i.ca, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cb = zext i32 %i.bo to i64                   ; 2 uses
  %i.cc = icmp ugt i64 %i.by, %i.cb
  br i1 %i.cc, label %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj) #36
  unreachable

_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit: ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %i.bu, i64 %i.cb
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !239 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !35
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  tail call void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.p, %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit, %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 2200 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 2296
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !234 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !235
  %i.cp = load ptr, ptr %i.cm, align 8, !tbaa !236 ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = sdiv exact i64 %i.cs, 40                ; 2 uses
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = icmp ult i32 %i.cl, %i.cu
  br i1 %i.cv, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cw = zext i32 %i.cl to i64                   ; 2 uses
  %i.cx = icmp ugt i64 %i.ct, %i.cw
  br i1 %i.cx, label %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit8, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj) #36
  unreachable

_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit8: ; preds = %bb.t
  %i.cy = getelementptr inbounds nuw [40 x i8], ptr %i.cp, i64 %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !239 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.dc = load i8, ptr %i.bf, align 4, !tbaa !146, !range !144, !noundef !145
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.df = load ptr, ptr %i.da, align 8, !tbaa !35
  %i.dg = load ptr, ptr %i.df, align 8
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef nonnull align 8 dereferenceable(127) %i.cj, ptr noundef nonnull align 8 dereferenceable(127) %i.db, i1 noundef zeroext %i.dd, ptr noundef nonnull %i.de)
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  tail call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.55, i32 noundef 2)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 2328 ; 3 uses
  %i.di = tail call noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.dh, ptr noundef nonnull align 8 dereferenceable(127) %i.cj) ; 0 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !139 ; 4 uses
  %i.dl = load ptr, ptr %i.dh, align 8, !tbaa !159
  %.not.i9 = icmp ne ptr %i.dl, null
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8
  %.not7.i = icmp eq ptr %i.dn, null
  %or.cond.i10 = select i1 %.not.i9, i1 %.not7.i, i1 false
  br i1 %or.cond.i10, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %i.dh, align 8, !tbaa !159
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 2352 ; 2 uses
  %1 = load ptr, ptr %i.do, align 8, !tbaa !159
  %.not.1.i = icmp ne ptr %1, null
  %2 = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dp = load ptr, ptr %2, align 8
  %.not.1.i.a = icmp eq ptr %i.dp, null
  %or.cond12.i = select i1 %.not.1.i, i1 %.not.1.i.a, i1 false
  br i1 %or.cond12.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store ptr null, ptr %i.do, align 8, !tbaa !159
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 2 uses
  %3 = load ptr, ptr %i.dq, align 8, !tbaa !159
  %.not.2.i = icmp ne ptr %3, null
  %4 = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %i.dr = load ptr, ptr %4, align 8
  %.not.2.i.a = icmp eq ptr %i.dr, null
  %or.cond14.i = select i1 %.not.2.i, i1 %.not.2.i.a, i1 false
  br i1 %or.cond14.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store ptr null, ptr %i.dq, align 8, !tbaa !159
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 2400 ; 2 uses
  %5 = load ptr, ptr %i.ds, align 8, !tbaa !159
  %.not.3.i = icmp ne ptr %5, null
  %6 = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.dt = load ptr, ptr %6, align 8
  %.not.3.i.a = icmp eq ptr %i.dt, null
  %or.cond16.i = select i1 %.not.3.i, i1 %.not.3.i.a, i1 false
  br i1 %or.cond16.i, label %bb.ad, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit

bb.ad:                                            ; preds = %bb.ac
  store ptr null, ptr %i.ds, align 8, !tbaa !159
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit: ; preds = %bb.ac, %bb.ad
  store i8 0, ptr %i.bf, align 4, !tbaa !146
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit, %bb.k
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 2296
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !234 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !235
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !236 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = sdiv exact i64 %i.ec, 40                ; 2 uses
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = icmp ult i32 %i.dv, %i.ee
  br i1 %i.ef, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.eg = zext i32 %i.dv to i64                   ; 2 uses
  %i.eh = icmp ugt i64 %i.ed, %i.eg
  br i1 %i.eh, label %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit11, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj) #36
  unreachable

_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit11: ; preds = %bb.af
  %i.ei = getelementptr inbounds nuw [40 x i8], ptr %i.dz, i64 %i.eg
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !239 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !35
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = tail call noundef zeroext i1 %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef nonnull %i.el, i32 noundef 0) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit11, %bb.ae
  store i32 2, ptr %i.d, align 8, !tbaa !152
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %bb.ah
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase14loadShaderDataERKN4core6stringIcEES5_PPcS7_(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.core::string", align 8      ; 13 uses
  %6 = alloca %"class.core::string", align 8      ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2168 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !140
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !141
  store i8 0, ptr %i.d, align 8, !tbaa !142
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_ZN4core6stringIcEC2ERKS1_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %5, align 8, !tbaa !143    ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.d, align 8, !tbaa !142
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #33
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZN4core6stringIcED2Ev.exit279
  %common.resume.op = phi { ptr, i32 } [ %.pn75.pn.pn.pn.pn.pn.pn, %_ZN4core6stringIcED2Ev.exit279 ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4core6stringIcEC2ERKS1_.exit:                  ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !141  ; 2 uses
  %i.m = load i64, ptr %i.e, align 8, !tbaa !141
  %i.n = sub i64 4611686018427387903, %i.m
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %bb.c, label %_ZN4core6stringIcE6appendERKS1_.exit.i

bb.c:                                             ; preds = %_ZN4core6stringIcEC2ERKS1_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.93) #38
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN4core6stringIcE6appendERKS1_.exit.i:           ; preds = %_ZN4core6stringIcEC2ERKS1_.exit
  %i.p = load ptr, ptr %1, align 8, !tbaa !143
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.p, i64 noundef %i.l)
          to label %_ZN4core6stringIcEpLERKS1_.exit unwind label %bb.h ; 0 uses

_ZN4core6stringIcEpLERKS1_.exit:                  ; preds = %_ZN4core6stringIcE6appendERKS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.r, ptr %6, align 8, !tbaa !140
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !141
  store i8 0, ptr %i.r, align 8, !tbaa !142
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_ZN4core6stringIcEC2ERKS1_.exit87 unwind label %bb.d

bb.d:                                             ; preds = %_ZN4core6stringIcEpLERKS1_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %6, align 8, !tbaa !143    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.r
  br i1 %i.v, label %.body, label %.body.sink.split

_ZN4core6stringIcEC2ERKS1_.exit87:                ; preds = %_ZN4core6stringIcEpLERKS1_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !141  ; 2 uses
  %i.y = load i64, ptr %i.s, align 8, !tbaa !141
  %i.z = sub i64 4611686018427387903, %i.y
  %i.aa = icmp ult i64 %i.z, %i.x
  br i1 %i.aa, label %bb.e, label %_ZN4core6stringIcE6appendERKS1_.exit.i88

bb.e:                                             ; preds = %_ZN4core6stringIcEC2ERKS1_.exit87
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.93) #38
          to label %.noexc89 unwind label %bb.i

.noexc89:                                         ; preds = %bb.e
  unreachable

_ZN4core6stringIcE6appendERKS1_.exit.i88:         ; preds = %_ZN4core6stringIcEC2ERKS1_.exit87
  %i.ab = load ptr, ptr %2, align 8, !tbaa !143
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %i.ab, i64 noundef %i.x)
          to label %_ZN4core6stringIcEpLERKS1_.exit91 unwind label %bb.i ; 0 uses

_ZN4core6stringIcEpLERKS1_.exit91:                ; preds = %_ZN4core6stringIcE6appendERKS1_.exit.i88
  store ptr null, ptr %3, align 8, !tbaa !187
  store ptr null, ptr %4, align 8, !tbaa !187
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !461 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !35
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.f unwind label %bb.j       ; 8 uses

bb.f:                                             ; preds = %_ZN4core6stringIcEpLERKS1_.exit91
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %.noexc.i, label %bb.m

.noexc.i:                                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ai, ptr %7, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i64 75, ptr %i.b, align 8, !tbaa !462
  %i.aj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc92 unwind label %bb.k   ; 3 uses

.noexc92:                                         ; preds = %.noexc.i
  store ptr %i.aj, ptr %7, align 8, !tbaa !143
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !462 ; 3 uses
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(75) %i.aj, ptr noundef nonnull align 1 dereferenceable(75) @.str.18, i64 75, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !141
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  store i8 0, ptr %i.am, align 1, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.an = load ptr, ptr %5, align 8, !tbaa !143   ; 2 uses
  %i.ao = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #34 ; 2 uses
  %i.ap = load i64, ptr %i.al, align 8, !tbaa !141
  %i.aq = sub i64 4611686018427387903, %i.ap
  %i.ar = icmp ult i64 %i.aq, %i.ao
  br i1 %i.ar, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %.noexc92
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %i.an, i64 noundef %i.ao)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit unwind label %bb.l ; 2 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !141
  %i.av = icmp eq i64 %i.au, 4611686018427387903
  br i1 %i.av, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
end_hunk_0
begin_hunk_1_@_ZN5video18COpenGL3DriverBase11drawGenericEPKvS2_jNS_13E_VERTEX_TYPEEN5scene16E_PRIMITIVE_TYPEENS_12E_INDEX_TYPEE:bb.a
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
  ]

bb.c:                                             ; preds = %switch.lookup, %switch.lookup
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 440), align 8, !tbaa !306
  tail call void %i.d(i32 noundef 0, i32 noundef 0, i32 noundef %3)
  br label %bb.j

bb.d:                                             ; preds = %switch.lookup
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 448), align 8, !tbaa !488
  %i.f = add i32 %3, 1
  tail call void %i.e(i32 noundef 3, i32 noundef %i.f, i32 noundef %switch.select26, ptr noundef %2)
  br label %bb.j

bb.e:                                             ; preds = %switch.lookup
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 448), align 8, !tbaa !488
  tail call void %i.g(i32 noundef 2, i32 noundef %3, i32 noundef %switch.select26, ptr noundef %2)
  br label %bb.j

bb.f:                                             ; preds = %switch.lookup
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 448), align 8, !tbaa !488
  %i.i = shl i32 %3, 1
  tail call void %i.h(i32 noundef 1, i32 noundef %i.i, i32 noundef %switch.select26, ptr noundef %2)
  br label %bb.j

bb.g:                                             ; preds = %switch.lookup
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 448), align 8, !tbaa !488
  %i.k = add i32 %3, 2
  tail call void %i.j(i32 noundef 5, i32 noundef %i.k, i32 noundef %switch.select26, ptr noundef %2)
  br label %bb.j

bb.h:                                             ; preds = %switch.lookup
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 448), align 8, !tbaa !488
  %i.m = add i32 %3, 2
  tail call void %i.l(i32 noundef 6, i32 noundef %i.m, i32 noundef %switch.select26, ptr noundef %2)
  br label %bb.j

bb.i:                                             ; preds = %switch.lookup
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 448), align 8, !tbaa !488
  %i.o = mul i32 %3, 3
  tail call void %i.n(i32 noundef 4, i32 noundef %i.o, i32 noundef %switch.select26, ptr noundef %2)
  br label %bb.j

bb.j:                                             ; preds = %switch.lookup, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %switch.load, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !307  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %switch.load, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !307  ; 2 uses
  %.not7.i = icmp eq ptr %i.q, %i.s
  br i1 %.not7.i, label %_ZN5video18COpenGL3DriverBase7endDrawERKNS_10VertexTypeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.sroa.04.08.i = phi ptr [ %i.w, %.lr.ph.i ], [ %i.q, %bb.j ] ; 2 uses
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 984), align 8, !tbaa !276
  %i.u = load i8, ptr %.sroa.04.08.i, align 4, !tbaa !310
  %i.v = zext i8 %i.u to i32
  tail call void %i.t(i32 noundef %i.v), !inline_history !311
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.w, %i.s
  br i1 %.not.i, label %_ZN5video18COpenGL3DriverBase7endDrawERKNS_10VertexTypeE.exit, label %.lr.ph.i

_ZN5video18COpenGL3DriverBase7endDrawERKNS_10VertexTypeE.exit: ; preds = %.lr.ph.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase25draw2DVertexPrimitiveListEPKvjS2_jNS_13E_VERTEX_TYPEEN5scene16E_PRIMITIVE_TYPEENS_12E_INDEX_TYPEE(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp ne i32 %4, 0
  %i.b = icmp ne i32 %2, 0
  %or.cond = and i1 %i.b, %i.a
  %i.c = icmp ne ptr %1, null
  %or.cond3 = and i1 %i.c, %or.cond
  br i1 %or.cond3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZNK5video11CNullDriver19checkPrimitiveCountEj(ptr noundef nonnull align 8 dereferenceable(933) %0, i32 noundef %4)
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5video11CNullDriver25draw2DVertexPrimitiveListEPKvjS2_jNS_13E_VERTEX_TYPEEN5scene16E_PRIMITIVE_TYPEENS_12E_INDEX_TYPEE(ptr noundef nonnull align 8 dereferenceable(933) %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2296
  %i.g = load i32, ptr %i.f, align 8, !tbaa !234  ; 2 uses
  %i.h = icmp eq i32 %i.g, 3
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !159
  %i.j = icmp ne ptr %i.i, null
  %i.k = icmp eq i32 %i.g, 1
  tail call void @_ZN5video18COpenGL3DriverBase21setRenderStates2DModeEbbb(ptr noundef nonnull align 8 dereferenceable(2528) %0, i1 noundef zeroext %i.h, i1 noundef zeroext %i.j, i1 noundef zeroext %i.k)
  tail call void @_ZN5video18COpenGL3DriverBase11drawGenericEPKvS2_jNS_13E_VERTEX_TYPEEN5scene16E_PRIMITIVE_TYPEENS_12E_INDEX_TYPEE(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

declare void @_ZN5video11CNullDriver25draw2DVertexPrimitiveListEPKvjS2_jNS_13E_VERTEX_TYPEEN5scene16E_PRIMITIVE_TYPEENS_12E_INDEX_TYPEE(ptr noundef nonnull align 8 dereferenceable(933), ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN5video18COpenGL3DriverBase21setRenderStates2DModeEbbb(ptr noundef nonnull align 8 dereferenceable(2528) %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1229
  %i.b = load i8, ptr %i.a, align 1, !tbaa !147, !range !144, !noundef !145
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.in.v = select i1 %2, i64 1696, i64 1704
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.d = load ptr, ptr %.in, align 8, !tbaa !489  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2160 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !152
  switch i32 %i.f, label %bb.f [
    i32 1, label %bb.g
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.h = load i32, ptr %i.g, align 8, !tbaa !233  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !235
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !236  ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 40                  ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp ult i32 %i.h, %i.q
  br i1 %i.r, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = zext i32 %i.h to i64                     ; 2 uses
  %i.t = icmp ugt i64 %i.p, %i.s
  br i1 %i.t, label %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj) #36
  unreachable

_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit: ; preds = %bb.d
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !239  ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %_ZN4core5arrayIN5video11CNullDriver17SMaterialRendererEEixEj.exit
  store i32 1, ptr %i.e, align 8, !tbaa !152
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !232 ; 4 uses
  %.not10 = icmp eq ptr %i.ab, null
  %.not11 = icmp eq ptr %i.ab, %i.d
  %or.cond12 = select i1 %.not10, i1 true, i1 %.not11
  br i1 %or.cond12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(68) %i.ab)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  store ptr %i.d, ptr %i.af, align 8, !tbaa !232
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2200 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2328 ; 4 uses
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(84) %i.d, ptr noundef nonnull align 8 dereferenceable(127) %i.ag, ptr noundef nonnull align 8 dereferenceable(127) %i.ah, i1 noundef zeroext true, ptr noundef null)
  %i.ak = tail call noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.ah, ptr noundef nonnull align 8 dereferenceable(127) %i.ag) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !139 ; 9 uses
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !159
  %.not.i = icmp ne ptr %i.an, null
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8
  %.not7.i = icmp eq ptr %i.ap, null
  %or.cond.i = select i1 %.not.i, i1 %.not7.i, i1 false
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.ah, align 8, !tbaa !159
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2352 ; 2 uses
  %4 = load ptr, ptr %i.aq, align 8, !tbaa !159
  %.not.1.i = icmp ne ptr %4, null
  %5 = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ar = load ptr, ptr %5, align 8
  %.not.1.i.a = icmp eq ptr %i.ar, null
  %or.cond12.i = select i1 %.not.1.i, i1 %.not.1.i.a, i1 false
  br i1 %or.cond12.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store ptr null, ptr %i.aq, align 8, !tbaa !159
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 2 uses
  %6 = load ptr, ptr %i.as, align 8, !tbaa !159
  %.not.2.i = icmp ne ptr %6, null
  %7 = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.at = load ptr, ptr %7, align 8
  %.not.2.i.a = icmp eq ptr %i.at, null
  %or.cond14.i = select i1 %.not.2.i, i1 %.not.2.i.a, i1 false
  br i1 %or.cond14.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.as, align 8, !tbaa !159
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2400 ; 2 uses
  %8 = load ptr, ptr %i.au, align 8, !tbaa !159
  %.not.3.i = icmp ne ptr %8, null
  %9 = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.av = load ptr, ptr %9, align 8
  %.not.3.i.a = icmp eq ptr %i.av, null
  %or.cond16.i = select i1 %.not.3.i, i1 %.not.3.i.a, i1 false
  br i1 %or.cond16.i, label %bb.p, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %i.au, align 8, !tbaa !159
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit: ; preds = %bb.o, %bb.p
  %i.aw = and i1 %2, %3
  %or.cond = or i1 %1, %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 120 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !215
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !218, !range !144, !noundef !145 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 130 ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 2, !range !144
  %i.bc = trunc nuw i8 %i.bb to i1                ; 2 uses
  br i1 %or.cond, label %bb.q, label %bb.z

bb.q:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit
  %.not.i13 = icmp eq i8 %i.az, 0
  %or.cond.i14 = select i1 %.not.i13, i1 true, i1 %i.bc
  br i1 %or.cond.i14, label %bb.r, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit

bb.r:                                             ; preds = %bb.q
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 232), align 8
  tail call void %i.bd(i32 noundef 3042), !inline_history !1
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !209 ; 2 uses
  %.not9.i = icmp eq i32 %i.bf, 0
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !215
  %i.bh = zext i32 %i.bf to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bg, i8 1, i64 %i.bh, i1 false), !tbaa !218
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.r
  store i8 0, ptr %i.ba, align 2, !tbaa !230
  %.pre = load ptr, ptr %i.al, align 8, !tbaa !139
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit: ; preds = %bb.q, %._crit_edge.i
  %i.bi = phi ptr [ %i.am, %bb.q ], [ %.pre, %._crit_edge.i ] ; 11 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 88 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !211
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !193
  %.not.i15 = icmp eq i32 %i.bl, 770
  br i1 %.not.i15, label %bb.s, label %bb.v

bb.s:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !212
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !193
  %.not18.i = icmp eq i32 %i.bo, 771
  br i1 %.not18.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !213
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !193
  %.not19.i = icmp eq i32 %i.br, 770
  br i1 %.not19.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !214
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !193
  %.not20.i = icmp ne i32 %i.bu, 771
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 129
  %i.bw = load i8, ptr %i.bv, align 1, !range !144
  %i.bx = trunc nuw i8 %i.bw to i1
  %or.cond.i18 = select i1 %.not20.i, i1 true, i1 %i.bx
  br i1 %or.cond.i18, label %bb.v, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 256), align 8, !tbaa !217
  tail call void %i.by(i32 noundef 770, i32 noundef 771), !inline_history !2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bi, i64 72 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !209
  %.not24.i = icmp eq i32 %i.ca, 0
  br i1 %.not24.i, label %._crit_edge.i17, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.v
  %i.cb = load ptr, ptr %i.bj, align 8, !tbaa !211
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !212
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !213
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !214
  br label %bb.w

._crit_edge.i17:                                  ; preds = %bb.w, %bb.v
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bi, i64 129
  store i8 0, ptr %i.ci, align 1, !tbaa !231
  %.pre32 = load ptr, ptr %i.al, align 8, !tbaa !139
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.w:                                             ; preds = %bb.w, %.lr.ph.i16
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i16 ], [ %indvars.iv.next.i, %bb.w ] ; 5 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.i
  store i32 770, ptr %i.cj, align 4, !tbaa !193
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.i
  store i32 771, ptr %i.ck, align 4, !tbaa !193
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i
  store i32 770, ptr %i.cl, align 4, !tbaa !193
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i
  store i32 771, ptr %i.cm, align 4, !tbaa !193
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cn = load i32, ptr %i.bz, align 8, !tbaa !209
  %i.co = zext i32 %i.cn to i64
  %i.cp = icmp samesign ult i64 %indvars.iv.next.i, %i.co
  br i1 %i.cp, label %bb.w, label %._crit_edge.i17, !llvm.loop !3

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit: ; preds = %bb.u, %._crit_edge.i17
  %i.cq = phi ptr [ %i.bi, %bb.u ], [ %.pre32, %._crit_edge.i17 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 80 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !210
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !193
  %.not.i19 = icmp ne i32 %i.ct, 32774
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 128 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 8, !range !144
  %i.cw = trunc nuw i8 %i.cv to i1
  %or.cond.i20 = select i1 %.not.i19, i1 true, i1 %i.cw
  br i1 %or.cond.i20, label %bb.x, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setBlendEquationEj.exit

bb.x:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 720), align 8, !tbaa !216
  tail call void %i.cx(i32 noundef 32774), !inline_history !6
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 72 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !209
  %.not9.i21 = icmp eq i32 %i.cz, 0
  br i1 %.not9.i21, label %._crit_edge.i25, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.x
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !210
  br label %bb.y

._crit_edge.i25:                                  ; preds = %bb.y, %bb.x
  store i8 0, ptr %i.cu, align 8, !tbaa !312
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setBlendEquationEj.exit

bb.y:                                             ; preds = %bb.y, %.lr.ph.i22
  %indvars.iv.i23 = phi i64 [ 0, %.lr.ph.i22 ], [ %indvars.iv.next.i24, %bb.y ] ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.i23
  store i32 32774, ptr %i.db, align 4, !tbaa !193
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %i.dc = load i32, ptr %i.cy, align 8, !tbaa !209
  %i.dd = zext i32 %i.dc to i64
  %i.de = icmp samesign ult i64 %indvars.iv.next.i24, %i.dd
  br i1 %i.de, label %bb.y, label %._crit_edge.i25, !llvm.loop !7

bb.z:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE20correctCacheMaterialERNS_9SMaterialE.exit
  %.not.i26 = icmp ne i8 %i.az, 0
  %or.cond.i27 = select i1 %.not.i26, i1 true, i1 %i.bc
  br i1 %or.cond.i27, label %bb.aa, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setBlendEquationEj.exit

bb.aa:                                            ; preds = %bb.z
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 224), align 8
  tail call void %i.df(i32 noundef 3042), !inline_history !1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !209 ; 2 uses
  %.not9.i28 = icmp eq i32 %i.dh, 0
  br i1 %.not9.i28, label %._crit_edge.i30, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.aa
  %i.di = load ptr, ptr %i.ax, align 8, !tbaa !215
  %i.dj = zext i32 %i.dh to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.di, i8 0, i64 %i.dj, i1 false), !tbaa !218
  br label %._crit_edge.i30

._crit_edge.i30:                                  ; preds = %.lr.ph.i29, %bb.aa
  store i8 0, ptr %i.ba, align 2, !tbaa !230
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setBlendEquationEj.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setBlendEquationEj.exit: ; preds = %._crit_edge.i30, %bb.z, %._crit_edge.i25, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit
  %i.dk = load ptr, ptr %i.al, align 8, !tbaa !139
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !181
  store ptr %i.dm, ptr %i.ag, align 8, !tbaa !159
  %i.dn = load ptr, ptr %0, align 8, !tbaa !35
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load ptr, ptr %i.do, align 8
  tail call void %i.dp(ptr noundef nonnull align 8 dereferenceable(2528) %0, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(64) @_ZN4core14IdentityMatrixE)
  br i1 %2, label %.sink.split, label %bb.ab

.sink.split:                                      ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setBlendEquationEj.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !313, !range !144, !noundef !145
  %i.ds = trunc nuw i8 %i.dr to i1
  %. = select i1 %i.ds, i64 624, i64 752
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %.
  tail call void @_ZN5video18COpenGL3DriverBase22setTextureRenderStatesERKNS_9SMaterialEb(ptr noundef nonnull align 8 dereferenceable(2528) %0, ptr noundef nonnull align 8 dereferenceable(127) %i.dt, i1 noundef zeroext false)
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE16setBlendEquationEj.exit
  %i.du = load ptr, ptr %i.af, align 8, !tbaa !232 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !35
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = tail call noundef zeroext i1 %i.dy(ptr noundef nonnull align 8 dereferenceable(84) %i.du, ptr noundef nonnull %i.dv, i32 noundef 0) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}
end_hunk_1
begin_hunk_2_@_ZN5video9SMaterialaSERKS0_:bb.a

bb.l:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.1
  br i1 %.not19.i.2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bh, ptr noundef nonnull align 4 dereferenceable(64) %i.bj, i64 64, i1 false), !tbaa.struct !258
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.2

bb.n:                                             ; preds = %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 64) #33
  store ptr null, ptr %i.bg, align 8, !tbaa !176
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.2

bb.o:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.1
  br i1 %.not19.i.2, label %_ZN5video14SMaterialLayeraSERKS0_.exit.2, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37 ; 2 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bk, ptr noundef nonnull align 4 dereferenceable(64) %i.bl, i64 64, i1 false), !tbaa.struct !258
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !176
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
  %i.cd = load <4 x i8>, ptr %i.cb, align 2, !tbaa !142
  store <4 x i8> %i.cd, ptr %i.cc, align 2, !tbaa !142
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !159
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !159
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !176 ; 3 uses
  %.not.i.3 = icmp eq ptr %i.ci, null
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !176 ; 2 uses
  %.not19.i.3 = icmp eq ptr %i.ck, null           ; 2 uses
  br i1 %.not.i.3, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.2
  br i1 %.not19.i.3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ci, ptr noundef nonnull align 4 dereferenceable(64) %i.ck, i64 64, i1 false), !tbaa.struct !258
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.3

bb.s:                                             ; preds = %bb.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 64) #33
  store ptr null, ptr %i.ch, align 8, !tbaa !176
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.3

bb.t:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.2
  br i1 %.not19.i.3, label %_ZN5video14SMaterialLayeraSERKS0_.exit.3, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #37 ; 2 uses
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.cl, ptr noundef nonnull align 4 dereferenceable(64) %i.cm, i64 64, i1 false), !tbaa.struct !258
  store ptr %i.cl, ptr %i.ch, align 8, !tbaa !176
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
  %i.de = load <4 x i8>, ptr %i.dc, align 2, !tbaa !142
  store <4 x i8> %i.de, ptr %i.dd, align 2, !tbaa !142
  br label %.split7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5video17SOverrideMaterial5applyERNS_9SMaterialE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(127) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 146
  %i.b = load i8, ptr %i.a, align 2, !tbaa !536, !range !144, !noundef !145
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !537  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !537  ; 2 uses
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
  %i.bl = load i32, ptr %.sroa.076.090, align 4, !tbaa !539 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 0
  %i.bn = icmp eq i32 %i.bl, %i.bk
  %or.cond = select i1 %i.bm, i1 true, i1 %i.bn
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.076.090, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !540 ; 2 uses
  store i32 %i.bp, ptr %i.h, align 8, !tbaa !367
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
  %i.bv = load i8, ptr %i.bs, align 4, !tbaa !218, !range !144, !noundef !145
  %i.bw = trunc nuw i8 %i.bv to i1                ; 2 uses
  br i1 %i.bu, label %.preheader.split.us.preheader, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  br i1 %i.bw, label %bb.ar, label %bb.ay

.preheader.split.us.preheader:                    ; preds = %.preheader
  br i1 %i.bw, label %_ZN5video14SMaterialLayeraSERKS0_.exit.us, label %bb.f

bb.f:                                             ; preds = %.preheader.split.us.preheader
  %i.bx = load i8, ptr %i.bt, align 8, !tbaa !218, !range !144, !noundef !145
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.g, label %_ZN5video14SMaterialLayeraSERKS0_.exit.us

bb.g:                                             ; preds = %bb.f
  %i.bz = load ptr, ptr %0, align 8, !tbaa !159
  store ptr %i.bz, ptr %1, align 8, !tbaa !159
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.us

_ZN5video14SMaterialLayeraSERKS0_.exit.us:        ; preds = %.preheader.split.us.preheader, %bb.g, %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !218, !range !144, !noundef !145
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZN5video14SMaterialLayeraSERKS0_.exit.us.1, label %bb.h

bb.h:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.us
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !218, !range !144, !noundef !145
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.i, label %_ZN5video14SMaterialLayeraSERKS0_.exit.us.1

bb.i:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !159
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !159
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.us.1

_ZN5video14SMaterialLayeraSERKS0_.exit.us.1:      ; preds = %bb.i, %bb.h, %_ZN5video14SMaterialLayeraSERKS0_.exit.us
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !218, !range !144, !noundef !145
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %_ZN5video14SMaterialLayeraSERKS0_.exit.us.2, label %bb.j

bb.j:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.us.1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !218, !range !144, !noundef !145
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.k, label %_ZN5video14SMaterialLayeraSERKS0_.exit.us.2

bb.k:                                             ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !159
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !159
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.us.2

_ZN5video14SMaterialLayeraSERKS0_.exit.us.2:      ; preds = %bb.k, %bb.j, %_ZN5video14SMaterialLayeraSERKS0_.exit.us.1
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 143
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !218, !range !144, !noundef !145
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.us.2
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 139
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !218, !range !144, !noundef !145
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !159
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !159
  br label %.loopexit

bb.n:                                             ; preds = %.preheader88, %.loopexit81
  %.07095 = phi i32 [ 0, %.preheader88 ], [ %i.iw, %.loopexit81 ] ; 3 uses
  %i.db = shl nuw i32 1, %.07095
  %i.dc = load i32, ptr %i.i, align 8, !tbaa !541
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
  %i.de = load i8, ptr %i.r, align 4, !tbaa !218, !range !144, !noundef !145
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.ah, label %.preheader86.1

.preheader84.preheader.a:                         ; preds = %.split
  %i.dg = load i8, ptr %i.r, align 4, !tbaa !218, !range !144, !noundef !145
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.ac, label %.preheader84.1

.preheader82.preheader.a:                         ; preds = %.split
  %i.di = load i8, ptr %i.r, align 4, !tbaa !218, !range !144, !noundef !145
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.y, label %.preheader82.1

.preheader80.preheader:                           ; preds = %.split
  %i.dk = load i8, ptr %i.r, align 4, !tbaa !218, !range !144, !noundef !145
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
  %i.en = load i8, ptr %i.az, align 2, !tbaa !368
  store i8 %i.en, ptr %i.ba, align 2, !tbaa !368
  br label %.preheader80.1

.preheader80.1:                                   ; preds = %.preheader80.preheader, %bb.u
  %i.eo = load i8, ptr %i.bb, align 1, !tbaa !218, !range !144, !noundef !145
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.v, label %.preheader80.2

bb.v:                                             ; preds = %.preheader80.1
  %i.eq = load i8, ptr %i.bc, align 2, !tbaa !368
end_hunk_2
