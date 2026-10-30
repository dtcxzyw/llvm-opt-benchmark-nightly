Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CSceneManager?download=true
inline.NumInlined: 1664
inline.NumDeleted: 524
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN5scene13CSceneManagerC2EPN5video12IVideoDriverEPN3gui14ICursorControlEPNS_10IMeshCacheE:bb.a
  br label %bb.ao

bb.al:                                            ; preds = %bb.s
  %i.gr = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef 64) #32
  br label %bb.ao

bb.am:                                            ; preds = %bb.y
  %i.gs = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef 264) #32
  br label %bb.ao

bb.an:                                            ; preds = %.invoke, %_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EE9push_backEOS2_.exit34, %_ZNKSt6vectorIPN5scene11IMeshLoaderESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i36, %bb.j, %bb.g, %_ZNKSt6vectorIPN5scene11IMeshLoaderESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.l, %_ZNKSt6vectorIPN5scene11IMeshLoaderESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i26, %_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EE9push_backEOS2_.exit, %_ZNKSt6vectorIPN5scene11IMeshLoaderESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i46, %_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EE9push_backEOS2_.exit44
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.an, %bb.aj
  %.pn21 = phi { ptr, i32 } [ %i.gt, %bb.an ], [ %i.gr, %bb.al ], [ %i.gq, %bb.ak ], [ %i.gs, %bb.am ], [ %i.gp, %bb.aj ]
  %i.gu = load ptr, ptr %i.bg, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i55 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !101
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = ptrtoint ptr %i.gu to i64
  %i.gz = sub i64 %i.gx, %i.gy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef %i.gz) #32
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit: ; preds = %bb.ao, %bb.ap
  %i.ha = load ptr, ptr %i.bf, align 8, !tbaa !99 ; 3 uses
  %.not.i.i.i56 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i56, label %_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !96
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = ptrtoint ptr %i.ha to i64
  %i.hf = sub i64 %i.hd, %i.he
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.hf) #32
  br label %_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit, %bb.aq
  %i.hg = load ptr, ptr %i.be, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i57 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit58, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EED2Ev.exit
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !101
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.hg to i64
  %i.hl = sub i64 %i.hj, %i.hk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hl) #32
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit58

_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit58: ; preds = %_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EED2Ev.exit, %bb.ar
  %i.hm = load ptr, ptr %i.bd, align 8, !tbaa !102 ; 3 uses
  %.not.i.i.i59 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i59, label %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit58
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !103
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hm to i64
  %i.hr = sub i64 %i.hp, %i.hq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hr) #32
  br label %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EED2Ev.exit

_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit58, %bb.as
  %i.hs = load ptr, ptr %i.bc, align 8, !tbaa !102 ; 3 uses
  %.not.i.i.i60 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EED2Ev.exit61, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EED2Ev.exit
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !103
  %i.hv = ptrtoint ptr %i.hu to i64
  %i.hw = ptrtoint ptr %i.hs to i64
  %i.hx = sub i64 %i.hv, %i.hw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef %i.hx) #32
  br label %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EED2Ev.exit61

_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EED2Ev.exit61: ; preds = %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EED2Ev.exit, %bb.at
  %i.hy = load ptr, ptr %i.bb, align 8, !tbaa !104 ; 3 uses
  %.not.i.i.i62 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN5scene13CSceneManager16DefaultNodeEntryESaIS2_EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EED2Ev.exit61
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !105
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %i.hy to i64
  %i.id = sub i64 %i.ib, %i.ic
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef %i.id) #32
  br label %_ZNSt6vectorIN5scene13CSceneManager16DefaultNodeEntryESaIS2_EED2Ev.exit

_ZNSt6vectorIN5scene13CSceneManager16DefaultNodeEntryESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EED2Ev.exit61, %bb.au
  %i.ie = load ptr, ptr %i.ba, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit64, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN5scene13CSceneManager16DefaultNodeEntryESaIS2_EED2Ev.exit
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !101
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = ptrtoint ptr %i.ie to i64
  %i.ij = sub i64 %i.ih, %i.ii
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ie, i64 noundef %i.ij) #32
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit64

_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit64: ; preds = %_ZNSt6vectorIN5scene13CSceneManager16DefaultNodeEntryESaIS2_EED2Ev.exit, %bb.av
  %i.ik = load ptr, ptr %i.az, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit66, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit64
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !101
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = ptrtoint ptr %i.ik to i64
  %i.ip = sub i64 %i.in, %i.io
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.ip) #32
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit66

_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit66: ; preds = %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit64, %bb.aw
  tail call void @_ZN5scene10ISceneNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(218) %i.h, ptr noundef nonnull %i.i) #33
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i, %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit66
  %.pn21.pn = phi { ptr, i32 } [ %.pn21, %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit66 ], [ %i.ak, %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i ]
  resume { ptr, i32 } %.pn21.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN5scene22CSceneCollisionManagerC1EPNS_13ISceneManagerEPN5video12IVideoDriverE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZN5scene16CXMeshFileLoaderC1EPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(162), ptr noundef) unnamed_addr #5

declare void @_ZN5scene18COBJMeshFileLoaderC1EPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #5

declare void @_ZN5scene18CB3DMeshFileLoaderC1EPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(247), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene10ISceneNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.a, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8, !tbaa !14
  %i.g = load ptr, ptr %0, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(218) %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %.09.i.i, align 8, !tbaa !24 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #32
  %.not.i.i = icmp eq ptr %i.l, %i.j
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !17, !range !106, !noundef !107
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.m, align 8, !tbaa !17
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !111  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.r, align 8, !tbaa !112
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #32
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.c, %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  ret void

bb.d:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene13CSceneManagerC1EPN5video12IVideoDriverEPN3gui14ICursorControlEPNS_10IMeshCacheE(ptr noundef nonnull align 8 dereferenceable(504) initializes((0, 16), (48, 49), (56, 156), (488, 500)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 1, ptr %i.b, align 8, !tbaa !86
  store ptr getelementptr inbounds nuw inrange(-24, 288) (i8, ptr @_ZTCN5scene13CSceneManagerE0_NS_13ISceneManagerE, i64 24), ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 288) (i8, ptr @_ZTCN5scene13CSceneManagerE8_NS_10ISceneNodeE, i64 24), ptr %i.c, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN5scene13CSceneManagerE8_NS_10ISceneNodeE, i64 336), ptr %i.a, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.f, i8 0, i64 56, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116
  store float 1.000000e+00, ptr %i.g, align 4, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store float 1.000000e+00, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float 1.000000e+00, ptr %i.i, align 4, !tbaa !19
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.k, align 8, !tbaa !19
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store float 1.000000e+00, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.l, ptr %i.m, align 8, !tbaa !23
  store ptr %i.l, ptr %i.l, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %i.n, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.o, align 8, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.q, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i16 1, ptr %i.r, align 4, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 222
  store i16 0, ptr %i.s, align 2, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 1, ptr %i.t, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 225
  store i8 0, ptr %i.u, align 1, !tbaa !50
  invoke void @_ZN5scene10ISceneNode22updateAbsolutePositionEv(ptr noundef nonnull align 8 dereferenceable(218) %i.c)
          to label %_ZN5scene10ISceneNodeC2EPS0_PNS_13ISceneManagerEiRKN4core8vector3dIfEES8_S8_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.w, %i.l
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.w, %bb.b ] ; 2 uses
  %i.x = load ptr, ptr %.09.i.i.i, align 8, !tbaa !24 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #32
  %.not.i.i.i = icmp eq ptr %i.x, %i.l
  br i1 %.not.i.i.i, label %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.y) #33
  br label %.body

_ZN5scene10ISceneNodeC2EPS0_PNS_13ISceneManagerEiRKN4core8vector3dIfEES8_S8_.exit: ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr getelementptr inbounds nuw inrange(-24, 320) (i8, ptr @_ZTVN5scene13CSceneManagerE, i64 24), ptr %0, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene13CSceneManagerE, i64 680), ptr %i.a, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-24, 288) (i8, ptr @_ZTVN5scene13CSceneManagerE, i64 368), ptr %i.c, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store ptr %1, ptr %i.aa, align 8, !tbaa !81
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %2, ptr %i.ab, align 8, !tbaa !82
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(212) %i.ac, i8 0, i64 212, i1 false)
  store ptr %3, ptr %i.ak, align 8, !tbaa !83
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i64 0, ptr %i.al, align 8
  store ptr %0, ptr %i.z, align 8, !tbaa !84
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5scene10ISceneNodeC2EPS0_PNS_13ISceneManagerEiRKN4core8vector3dIfEES8_S8_.exit
  %i.am = load ptr, ptr %1, align 8, !tbaa !14
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %1, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !86
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !86
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5scene10ISceneNodeC2EPS0_PNS_13ISceneManagerEiRKN4core8vector3dIfEES8_S8_.exit
  %.not13 = icmp eq ptr %2, null
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = load ptr, ptr %2, align 8, !tbaa !14
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr %2, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !86
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !86
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not14 = icmp eq ptr %3, null
  br i1 %.not14, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ba = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #34
          to label %bb.h unwind label %bb.an      ; 8 uses

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store i32 1, ptr %i.bd, align 16, !tbaa !86
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5scene10CMeshCacheE, i64 8), align 8
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5scene10CMeshCacheE, i64 16), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %i.ba, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-24, 120) (i8, ptr @_ZTVN5scene10CMeshCacheE, i64 24), ptr %i.ba, align 16, !tbaa !14
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene10CMeshCacheE, i64 168), ptr %i.bc, align 8, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.bj, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.bk, align 16, !tbaa !93
  store ptr %i.ba, ptr %i.ak, align 8, !tbaa !83
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.bl = load ptr, ptr %3, align 8, !tbaa !14
  %i.bm = getelementptr i8, ptr %i.bl, i64 -24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %3, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !86
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !86
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bs = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #34
          to label %bb.k unwind label %bb.an      ; 3 uses

bb.k:                                             ; preds = %bb.j
  %i.bt = load ptr, ptr %i.aa, align 8, !tbaa !81
  invoke void @_ZN5scene22CSceneCollisionManagerC1EPNS_13ISceneManagerEPN5video12IVideoDriverE(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull %0, ptr noundef %i.bt)
          to label %bb.l unwind label %bb.aj

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !94
  %i.bv = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #34
          to label %bb.m unwind label %bb.an      ; 4 uses

bb.m:                                             ; preds = %bb.l
end_hunk_0
begin_hunk_1_@_ZN5scene13CSceneManagerD2Ev:bb.a
  %i.cn = add nsw i32 %i.cl, -1                   ; 2 uses
  store i32 %i.cn, ptr %i.ck, align 8, !tbaa !86
  %.not.i22 = icmp eq i32 %i.cn, 0
  br i1 %.not.i22, label %bb.y, label %_ZNK17IReferenceCounted4dropEv.exit23

bb.y:                                             ; preds = %bb.x
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !14
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(12) %i.cj) #33, !inline_history !2
  br label %_ZNK17IReferenceCounted4dropEv.exit23

_ZNK17IReferenceCounted4dropEv.exit23:            ; preds = %bb.y, %bb.x, %_ZNK17IReferenceCounted4dropEv.exit21
  invoke void @_ZN5scene13CSceneManager9removeAllEv(ptr noundef nonnull align 8 dereferenceable(504) %0)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit23
  %i.cr = load ptr, ptr %i.v, align 8, !tbaa !81  ; 3 uses
  %.not14 = icmp eq ptr %i.cr, null
  br i1 %.not14, label %_ZNK17IReferenceCounted4dropEv.exit25, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !14
  %i.ct = getelementptr i8, ptr %i.cs, i64 -24
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds i8, ptr %i.cr, i64 %i.cu ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !86 ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #36
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cz = add nsw i32 %i.cx, -1                   ; 2 uses
  store i32 %i.cz, ptr %i.cw, align 8, !tbaa !86
  %.not.i24 = icmp eq i32 %i.cz, 0
  br i1 %.not.i24, label %bb.ad, label %_ZNK17IReferenceCounted4dropEv.exit25

bb.ad:                                            ; preds = %bb.ac
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !14
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  tail call void %i.dc(ptr noundef nonnull align 8 dereferenceable(12) %i.cv) #33, !inline_history !2
  br label %_ZNK17IReferenceCounted4dropEv.exit25

_ZNK17IReferenceCounted4dropEv.exit25:            ; preds = %bb.ad, %bb.ac, %bb.z
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNK17IReferenceCounted4dropEv.exit25
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !101
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #32
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit: ; preds = %_ZNK17IReferenceCounted4dropEv.exit25, %bb.ae
  %i.dj = load ptr, ptr %i.ba, align 8, !tbaa !99 ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !96
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = sub i64 %i.dm, %i.dn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.do) #32
  br label %_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit, %bb.af
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit28, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EED2Ev.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !101
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %i.dt, %i.du
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dv) #32
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit28

_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit28: ; preds = %_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EED2Ev.exit, %bb.ag
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !102 ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit28
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !103
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dx to i64
  %i.ec = sub i64 %i.ea, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ec) #32
  br label %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EED2Ev.exit

_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit28, %bb.ah
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !102 ; 3 uses
  %.not.i.i.i30 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EED2Ev.exit31, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EED2Ev.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !103
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ee to i64
  %i.ej = sub i64 %i.eh, %i.ei
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ej) #32
  br label %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EED2Ev.exit31

_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EED2Ev.exit31: ; preds = %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EED2Ev.exit, %bb.ai
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !104 ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN5scene13CSceneManager16DefaultNodeEntryESaIS2_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EED2Ev.exit31
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !105
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.el to i64
  %i.eq = sub i64 %i.eo, %i.ep
  tail call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef %i.eq) #32
  br label %_ZNSt6vectorIN5scene13CSceneManager16DefaultNodeEntryESaIS2_EED2Ev.exit

_ZNSt6vectorIN5scene13CSceneManager16DefaultNodeEntryESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN5scene13CSceneManager20TransparentNodeEntryESaIS2_EED2Ev.exit31, %bb.aj
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit34, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN5scene13CSceneManager16DefaultNodeEntryESaIS2_EED2Ev.exit
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !101
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = sub i64 %i.ev, %i.ew
  tail call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ex) #32
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit34

_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit34: ; preds = %_ZNSt6vectorIN5scene13CSceneManager16DefaultNodeEntryESaIS2_EED2Ev.exit, %bb.ak
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i35 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit36, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit34
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !101
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.ez to i64
  %i.fe = sub i64 %i.fc, %i.fd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fe) #32
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit36

_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit36: ; preds = %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit34, %bb.al
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8            ; 2 uses
  store ptr %i.fh, ptr %i.ff, align 8, !tbaa !14
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = getelementptr i8, ptr %i.fh, i64 -24
  %i.fl = load i64, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds i8, ptr %i.ff, i64 %i.fl
  store ptr %i.fj, ptr %i.fm, align 8, !tbaa !14
  %i.fn = load ptr, ptr %i.ff, align 8, !tbaa !14
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 152
  %i.fp = load ptr, ptr %i.fo, align 8
  invoke void %i.fp(ptr noundef nonnull align 8 dereferenceable(218) %i.ff)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit36
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !24 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.fr, %i.fq
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.am, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.fs, %.lr.ph.i.i.i ], [ %i.fr, %bb.am ] ; 2 uses
  %i.fs = load ptr, ptr %.09.i.i.i, align 8, !tbaa !24 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #32
  %.not.i.i.i37 = icmp eq ptr %i.fs, %i.fq
  br i1 %.not.i.i.i37, label %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i: ; preds = %.lr.ph.i.i.i, %bb.am
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !17, !range !106, !noundef !107
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.an, label %_ZN5scene10ISceneNodeD2Ev.exit

bb.an:                                            ; preds = %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.ft, align 8, !tbaa !17
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !111 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZN5scene10ISceneNodeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.an
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !112
  %i.gb = add i64 %i.ga, 1
  tail call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #32
  br label %_ZN5scene10ISceneNodeD2Ev.exit

bb.ao:                                            ; preds = %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EED2Ev.exit36
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  tail call void @__clang_call_terminate(ptr %i.gd) #36
  unreachable

_ZN5scene10ISceneNodeD2Ev.exit:                   ; preds = %bb.an, %_ZNSt7__cxx1110_List_baseIPN5scene10ISceneNodeESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %_ZNK17IReferenceCounted4dropEv.exit23, %bb.e
  %lpad.loopexit.split-lp75 = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %lpad.loopexit.split-lp75, 0
  tail call void @__clang_call_terminate(ptr %i.ge) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene13CSceneManager17clearDeletionListEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(504) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113  ; 2 uses
  %.not8 = icmp eq ptr %i.b, %i.d
  br i1 %.not8, label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE5clearEv.exit, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !100 ; 2 uses
  %.pre10 = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.e = icmp eq ptr %.pre10, %.pre
  br i1 %i.e, label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPPN5scene10ISceneNodeES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN5scene10ISceneNodeES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %.pre, ptr %i.c, align 8, !tbaa !114
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE5clearEv.exit

_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE5clearEv.exit: ; preds = %bb.a, %._crit_edge, %_ZSt8_DestroyIPPN5scene10ISceneNodeES2_EvT_S4_RSaIT0_E.exit.i.i
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNK17IReferenceCounted4dropEv.exit
  %.sroa.05.09 = phi ptr [ %i.u, %_ZNK17IReferenceCounted4dropEv.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.05.09, align 8, !tbaa !115 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(218) %i.f)
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !86   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #36
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.q = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.q, ptr %i.n, align 8, !tbaa !86
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.d, label %_ZNK17IReferenceCounted4dropEv.exit

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #33, !inline_history !2
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.c, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #33 ; 0 uses
  tail call void @_ZSt9terminatev() #36
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN5scene13CSceneManager9removeAllEv(ptr noundef nonnull align 8 dereferenceable(504) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.video::SMaterial", align 8  ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 9 uses
  %.sroa.06.09.i = load ptr, ptr %i.a, align 8, !tbaa !24 ; 3 uses
  %.not10.i = icmp eq ptr %.sroa.06.09.i, %i.a
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %_ZNK17IReferenceCounted4dropEv.exit.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !24
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %i.b = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %.sroa.06.09.i, %bb.a ] ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i.i, label %_ZN5scene10ISceneNode9removeAllEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %._crit_edge.i ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i.i, align 8, !tbaa !24 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i, i64 noundef 24) #32
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZN5scene10ISceneNode9removeAllEv.exit, label %.lr.ph.i.i.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %bb.a, %_ZNK17IReferenceCounted4dropEv.exit.i
  %.sroa.06.011.i = phi ptr [ %.sroa.06.0.i, %_ZNK17IReferenceCounted4dropEv.exit.i ], [ %.sroa.06.09.i, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  store ptr null, ptr %i.f, align 8, !tbaa !119
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !115  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  store i8 0, ptr %i.h, align 8, !tbaa !29
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !86   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #36
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.p, ptr %i.m, align 8, !tbaa !86
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %bb.d, label %_ZNK17IReferenceCounted4dropEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #33, !inline_history !180
  br label %_ZNK17IReferenceCounted4dropEv.exit.i

_ZNK17IReferenceCounted4dropEv.exit.i:            ; preds = %bb.d, %bb.c
  %.sroa.06.0.i = load ptr, ptr %.sroa.06.011.i, align 8, !tbaa !24 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.06.0.i, %i.a
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

_ZN5scene10ISceneNode9removeAllEv.exit:           ; preds = %.lr.ph.i.i.i, %._crit_edge.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.a, ptr %i.t, align 8, !tbaa !23
  store ptr %i.a, ptr %i.a, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !118  ; 3 uses
  %.not5.i = icmp eq ptr %i.w, null
  br i1 %.not5.i, label %_ZN5scene13CSceneManager15setActiveCameraEPNS_16ICameraSceneNodeE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5scene10ISceneNode9removeAllEv.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !86 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #36
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ae = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.ab, align 8, !tbaa !86
  %.not.i.i2 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i2, label %bb.h, label %_ZN5scene13CSceneManager15setActiveCameraEPNS_16ICameraSceneNodeE.exit

end_hunk_1
begin_hunk_2_@_ZN5scene13CSceneManager21addExternalMeshLoaderEPNS_11IMeshLoaderE:bb.a
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorIPN5scene11IMeshLoaderESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #35
  unreachable

_ZNKSt6vectorIPN5scene11IMeshLoaderESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #34 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  store ptr %1, ptr %i.z, align 8, !tbaa !98
  %i.aa = icmp sgt i64 %i.q, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN5scene11IMeshLoaderESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN5scene11IMeshLoaderESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !96
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ae) #32
  br label %_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.y, ptr %i.h, align 8, !tbaa !99
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !95
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.af, ptr %i.k, align 8, !tbaa !96
  br label %_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN5scene11IMeshLoaderESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK5scene13CSceneManager18getMeshLoaderCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !99
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK5scene13CSceneManager13getMeshLoaderEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0, i32 noundef %1) unnamed_addr #18 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !99   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = icmp ugt i64 %i.i, %i.a
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !98
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN5scene13CSceneManager24getSceneCollisionManagerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5scene13CSceneManager18getMeshManipulatorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 680
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene13CSceneManager18addToDeletionQueueEPNS_10ISceneNodeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(504) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE9push_backERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !14
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !86
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !86
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !114  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !101
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %i.j, align 8, !tbaa !115
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.i, align 8, !tbaa !114
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !100  ; 4 uses
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 5 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorIPN5scene10ISceneNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #35
  unreachable

_ZNKSt6vectorIPN5scene10ISceneNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #34 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  store ptr %1, ptr %i.z, align 8, !tbaa !115
  %i.aa = icmp sgt i64 %i.q, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN5scene10ISceneNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN5scene10ISceneNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not.i17.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !101
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ae) #32
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.y, ptr %i.h, align 8, !tbaa !100
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !114
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.af, ptr %i.k, align 8, !tbaa !101
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5scene13CSceneManager20getSceneNodeFromNameEPKcPNS_10ISceneNodeE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::optional", align 8     ; 16 uses
  %i.b = icmp eq ptr %2, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %i.b, ptr %i.c, ptr %2 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.d = load ptr, ptr %spec.select, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.f(ptr noundef nonnull align 8 dereferenceable(218) %spec.select) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  store i8 0, ptr %i.i, align 8, !tbaa !17
  %i.j = load i8, ptr %i.h, align 8, !tbaa !17, !range !106, !noundef !107
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS9_ESE_.exit.thread24

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !130
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !111  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !131  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.o, ptr %i.a, align 8, !tbaa !170
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !111
  %i.r = load i64, ptr %i.a, align 8, !tbaa !170
  store i64 %i.r, ptr %i.l, align 8, !tbaa !112
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc.i.i.i.i.i.i.i.i, %bb.b
  %i.s = phi ptr [ %i.q, %.noexc.i.i.i.i.i.i.i.i ], [ %i.l, %bb.b ] ; 2 uses
  switch i64 %i.o, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.t = load i8, ptr %i.m, align 1, !tbaa !112
  store i8 %i.t, ptr %i.s, align 1, !tbaa !112
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.m, i64 %i.o, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %bb.c, %bb.d
  %i.u = load i64, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !131
  %i.w = load ptr, ptr %3, align 8, !tbaa !111
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  store i8 1, ptr %i.i, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !131  ; 3 uses
  %i.aa = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #33
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS9_ESE_.exit.thread24

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp eq i64 %i.z, 0
  br i1 %i.ac, label %bb.k, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS9_ESE_.exit

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS9_ESE_.exit: ; preds = %bb.f
  %i.ad = load ptr, ptr %3, align 8, !tbaa !111
  %bcmp.i.i = call i32 @bcmp(ptr %i.ad, ptr nonnull %1, i64 %i.z)
  %i.ae = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ae, label %bb.k, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS9_ESE_.exit.thread24

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS9_ESE_.exit.thread24: ; preds = %bb.a, %bb.e, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS9_ESE_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %spec.select, i64 152 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS9_ESE_.exit.thread24
  %.sroa.020.0.in = phi ptr [ %i.af, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS9_ESE_.exit.thread24 ], [ %.sroa.020.0, %bb.i ]
  %.sroa.020.0 = load ptr, ptr %.sroa.020.0.in, align 8, !tbaa !24 ; 3 uses
  %.not25 = icmp eq ptr %.sroa.020.0, %i.af
  br i1 %.not25, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS9_ESE_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.020.0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !115
  %i.ai = invoke noundef ptr @_ZN5scene13CSceneManager20getSceneNodeFromNameEPKcPNS_10ISceneNodeE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef %1, ptr noundef %i.ah)
          to label %bb.i unwind label %bb.j       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %bb.g, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS9_ESE_.exit.thread, !llvm.loop !207

bb.j:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load i8, ptr %i.i, align 8, !tbaa !17, !range !106, !noundef !107
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.l, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit19

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS9_ESE_.exit.thread: ; preds = %bb.i, %bb.g
  %.1.ph = phi ptr [ null, %bb.g ], [ %i.ai, %bb.i ] ; 2 uses
  %.pre = load i8, ptr %i.i, align 8, !tbaa !17, !range !106
  %i.am = trunc nuw i8 %.pre to i1
  br i1 %i.am, label %bb.k, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.k:                                             ; preds = %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS9_ESE_.exit, %bb.f, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS9_ESE_.exit.thread
  %.133 = phi ptr [ %.1.ph, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS9_ESE_.exit.thread ], [ %spec.select, %bb.f ], [ %spec.select, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS9_ESE_.exit ] ; 2 uses
  store i8 0, ptr %i.i, align 8, !tbaa !17
  %i.an = load ptr, ptr %3, align 8, !tbaa !111   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !112
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #32
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.k, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS9_ESE_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %.132 = phi ptr [ %.1.ph, %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS9_ESE_.exit.thread ], [ %.133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %.133, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret ptr %.132

bb.l:                                             ; preds = %bb.j
  store i8 0, ptr %i.i, align 8, !tbaa !17
  %i.as = load ptr, ptr %3, align 8, !tbaa !111   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i17: ; preds = %bb.l
  %i.av = load i64, ptr %i.at, align 8, !tbaa !112
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #32
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit19

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit19: ; preds = %bb.l, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %i.aj
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !17, !range !106, !noundef !107
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !17
  %i.d = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !112
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #32
  br label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5scene13CSceneManager18getSceneNodeFromIdEiPNS_10ISceneNodeE(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %i.a, ptr %i.b, ptr %2 ; 4 uses
  %i.c = load ptr, ptr %spec.select, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(218) %spec.select)
  %i.g = icmp eq i32 %i.f, %1
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %spec.select, i64 152 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.015.0.in = phi ptr [ %i.h, %bb.b ], [ %.sroa.015.0, %bb.d ]
  %.sroa.015.0 = load ptr, ptr %.sroa.015.0.in, align 8, !tbaa !24 ; 3 uses
  %.not18 = icmp eq ptr %.sroa.015.0, %i.h
  br i1 %.not18, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !115
  %i.k = tail call noundef ptr @_ZN5scene13CSceneManager18getSceneNodeFromIdEiPNS_10ISceneNodeE(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1, ptr noundef %i.j) ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %.loopexit, !llvm.loop !208

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.a
  %.1 = phi ptr [ %spec.select, %bb.a ], [ null, %bb.c ], [ %i.k, %bb.d ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5scene13CSceneManager20getSceneNodeFromTypeENS_16ESCENE_NODE_TYPEEPNS_10ISceneNodeE(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %i.a, ptr %i.b, ptr %2 ; 4 uses
  %i.c = load ptr, ptr %spec.select, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(218) %spec.select)
  %i.g = icmp eq i32 %i.f, %1
  %i.h = icmp eq i32 %1, 1601793633
  %or.cond = or i1 %i.h, %i.g
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 152 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.017.0.in = phi ptr [ %i.i, %bb.b ], [ %.sroa.017.0, %bb.d ]
  %.sroa.017.0 = load ptr, ptr %.sroa.017.0.in, align 8, !tbaa !24 ; 3 uses
  %.not20 = icmp eq ptr %.sroa.017.0, %i.i
  br i1 %.not20, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.017.0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !115
  %i.l = tail call noundef ptr @_ZN5scene13CSceneManager20getSceneNodeFromTypeENS_16ESCENE_NODE_TYPEEPNS_10ISceneNodeE(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1, ptr noundef %i.k) ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.c, label %.loopexit, !llvm.loop !209

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.a
  %.1 = phi ptr [ %spec.select, %bb.a ], [ null, %bb.c ], [ %i.l, %bb.d ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN5scene13CSceneManager21getSceneNodesFromTypeENS_16ESCENE_NODE_TYPEERN4core5arrayIPNS_10ISceneNodeEEES5_(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %3, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %spec.select = select i1 %i.a, ptr %i.b, ptr %3 ; 5 uses
  %i.c = load ptr, ptr %spec.select, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(218) %spec.select)
  %i.g = icmp eq i32 %i.f, %1
  %i.h = icmp eq i32 %1, 1601793633
  %or.cond = or i1 %i.h, %i.g
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !114  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !101
  %.not.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %spec.select, ptr %i.j, align 8, !tbaa !115
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.m, ptr %i.i, align 8, !tbaa !114
  br label %_ZN4core5arrayIPN5scene10ISceneNodeEE9push_backERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %2, align 8, !tbaa !100    ; 4 uses
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 5 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorIPN5scene10ISceneNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #35
  unreachable

_ZNKSt6vectorIPN5scene10ISceneNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #34 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  store ptr %spec.select, ptr %i.z, align 8, !tbaa !115
  %i.aa = icmp sgt i64 %i.q, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN5scene10ISceneNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.n, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN5scene10ISceneNodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !101
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ae) #32
  br label %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.y, ptr %2, align 8, !tbaa !100
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !114
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.af, ptr %i.k, align 8, !tbaa !101
  br label %_ZN4core5arrayIPN5scene10ISceneNodeEE9push_backERKS3_.exit

_ZN4core5arrayIPN5scene10ISceneNodeEE9push_backERKS3_.exit: ; preds = %bb.c, %_ZNSt6vectorIPN5scene10ISceneNodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 0, ptr %i.ag, align 8, !tbaa !212
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4core5arrayIPN5scene10ISceneNodeEE9push_backERKS3_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %spec.select, i64 152 ; 3 uses
  %.sroa.08.014 = load ptr, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  %.not15 = icmp eq ptr %.sroa.08.014, %i.ah
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.sroa.08.016 = phi ptr [ %.sroa.08.0, %.lr.ph ], [ %.sroa.08.014, %bb.h ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.08.016, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !115
  tail call void @_ZN5scene13CSceneManager21getSceneNodesFromTypeENS_16ESCENE_NODE_TYPEERN4core5arrayIPNS_10ISceneNodeEEES5_(ptr noundef nonnull align 8 dereferenceable(504) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(25) %2, ptr noundef %i.aj)
  %.sroa.08.0 = load ptr, ptr %.sroa.08.016, align 8, !tbaa !24 ; 2 uses
  %.not = icmp eq ptr %.sroa.08.0, %i.ah
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !210

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5scene13CSceneManager17postEventFromUserERK6SEvent(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@_ZN5scene12SViewFrustum25recalculateBoundingSphereEv:bb.a
  %i.tv = fcmp ogt float %i.tu, %.1
  %.1.1 = select i1 %i.tv, float %i.tu, float %.1 ; 2 uses
  %i.tw = extractelement <4 x float> %i.sn, i64 2 ; 2 uses
  %i.tx = fcmp ogt float %i.tw, %.1.1
  %.1.2 = select i1 %i.tx, float %i.tw, float %.1.1 ; 2 uses
  %i.ty = extractelement <4 x float> %i.sn, i64 3 ; 2 uses
  %i.tz = fcmp ogt float %i.ty, %.1.2
  %.1.3 = select i1 %i.tz, float %i.ty, float %.1.2 ; 2 uses
  %i.ua = extractelement <4 x float> %i.tr, i64 0 ; 2 uses
  %i.ub = fcmp ogt float %i.ua, %.1.3
  %.1.4 = select i1 %i.ub, float %i.ua, float %.1.3 ; 2 uses
  %i.uc = extractelement <4 x float> %i.tr, i64 1 ; 2 uses
  %i.ud = fcmp ogt float %i.uc, %.1.4
  %.1.5 = select i1 %i.ud, float %i.uc, float %.1.4 ; 2 uses
  %i.ue = extractelement <4 x float> %i.tr, i64 2 ; 2 uses
  %i.uf = fcmp ogt float %i.ue, %.1.5
  %.1.6 = select i1 %i.uf, float %i.ue, float %.1.5 ; 2 uses
  %i.ug = extractelement <4 x float> %i.tr, i64 3 ; 2 uses
  %i.uh = fcmp ogt float %i.ug, %.1.6
  %.1.7 = select i1 %i.uh, float %i.ug, float %.1.6
  %i.ui = call float @sqrtf(float noundef %.1.7) #33
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 260
  store float %i.ui, ptr %i.uj, align 4, !tbaa !143
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %0, align 4, !tbaa !139  ; 5 uses
  %i.e = load <2 x float>, ptr %i.a, align 4, !tbaa !19 ; 5 uses
  %i.f = load float, ptr %i.b, align 4, !tbaa !141 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.e, %i.e
  %i.g = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.h = tail call float @llvm.fmuladd.f32(float %i.d, float %i.d, float %i.g)
  %i.i = tail call float @llvm.fmuladd.f32(float %i.f, float %i.f, float %i.h)
  %i.j = tail call noundef float @sqrtf(float noundef %i.i) #33 ; 2 uses
  %i.k = load float, ptr %1, align 4, !tbaa !139  ; 5 uses
  %i.l = load <2 x float>, ptr %i.c, align 4, !tbaa !19 ; 7 uses
  %foldExtExtBinop54 = fmul <2 x float> %i.e, %i.l
  %i.m = extractelement <2 x float> %foldExtExtBinop54, i64 0
  %i.n = tail call float @llvm.fmuladd.f32(float %i.d, float %i.k, float %i.m)
  %i.o = extractelement <2 x float> %i.l, i64 1   ; 3 uses
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.o, float %i.n) ; 3 uses
  %foldExtExtBinop56 = fmul <2 x float> %i.l, %i.l
  %i.q = extractelement <2 x float> %foldExtExtBinop56, i64 0
  %i.r = tail call float @llvm.fmuladd.f32(float %i.k, float %i.k, float %i.q)
  %i.s = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.r)
  %i.t = tail call noundef float @sqrtf(float noundef %i.s) #33 ; 2 uses
  %i.u = fneg float %i.p
  %i.v = fmul float %i.p, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.j, float %i.t, float %i.v)
  %i.x = fpext float %i.w to double               ; 2 uses
  %i.y = tail call double @llvm.fabs.f64(double %i.x)
  %i.z = fcmp uge double %i.y, 1.000000e-08       ; 2 uses
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = extractelement <2 x float> %i.l, i64 0
  %i.ab = extractelement <2 x float> %i.e, i64 0
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = fdiv double 1.000000e+00, %i.x
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load float, ptr %i.ae, align 4, !tbaa !148 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !148 ; 2 uses
  %i.ai = insertelement <2 x float> poison, float %i.af, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ah, i64 1
  %i.ak = fneg <2 x float> %i.aj
  %i.al = fneg <2 x float> %i.l
  %i.am = insertelement <4 x float> poison, float %i.p, i64 0
  %i.an = shufflevector <2 x float> %i.e, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> %i.an, <4 x i32> <i32 0, i32 poison, i32 5, i32 poison>
  %i.ap = insertelement <4 x float> %i.ao, float %i.d, i64 3
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ar = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.af, i64 1
  %i.at = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.au = shufflevector <4 x float> %i.as, <4 x float> %i.at, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.av = fmul <4 x float> %i.aq, %i.au
  %i.aw = insertelement <4 x float> %i.an, float %i.t, i64 0
  %i.ax = insertelement <4 x float> %i.aw, float %i.j, i64 1
  %i.ay = shufflevector <2 x float> %i.ak, <2 x float> %i.l, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.az = insertelement <4 x float> %i.ay, float %i.k, i64 3
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ax, <4 x float> %i.az, <4 x float> %i.av) ; 2 uses
  %i.bb = fneg float %i.k
  %i.bc = fmul float %i.ab, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.d, float %i.aa, float %i.bc)
  %i.be = shufflevector <4 x float> %i.ba, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %i.be, ptr %3, align 4, !tbaa !19
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.bd, ptr %.sroa.415.0..sroa_idx, align 4, !tbaa !19
  %i.bf = load <4 x float>, ptr %0, align 4
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.bh = load float, ptr %i.ac, align 4, !tbaa !141
  %i.bi = shufflevector <4 x float> %i.ba, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bj = fpext <2 x float> %i.bi to <2 x double>
  %i.bk = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x double> %i.bl, %i.bj
  %i.bn = load <2 x float>, ptr %0, align 4, !tbaa !19
  %i.bo = fptrunc <2 x double> %i.bm to <2 x float> ; 3 uses
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.bn, %i.bp
  %i.br = load <2 x float>, ptr %1, align 4, !tbaa !19
  %i.bs = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = fmul <2 x float> %i.br, %i.bs
  %i.bu = insertelement <2 x float> %i.bg, float %i.bh, i64 1
  %i.bv = fmul <2 x float> %i.bu, %i.bo
  %i.bw = fadd <2 x float> %i.bq, %i.bt
  %i.bx = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.bv)
  store <2 x float> %i.bw, ptr %2, align 4, !tbaa !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.bx, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.z
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #23

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !17, !range !106, !noundef !107
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !106
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !130
  %i.i = load ptr, ptr %1, align 8, !tbaa !111    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !131  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.k, ptr %i.a, align 8, !tbaa !170
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !111
  %i.n = load i64, ptr %i.a, align 8, !tbaa !170
  store i64 %i.n, ptr %i.h, align 8, !tbaa !112
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.o = phi ptr [ %i.m, %.noexc.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  switch i64 %i.k, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !112
  store i8 %i.p, ptr %i.o, align 1, !tbaa !112
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.q = load i64, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !131
  %i.s = load ptr, ptr %0, align 8, !tbaa !111
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  store i8 1, ptr %i.b, align 8, !tbaa !17
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.g:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.h, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.b, align 8, !tbaa !17
  %i.u = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.x = load i64, ptr %i.v, align 8, !tbaa !112
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #32
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit, %bb.b
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #25

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !174    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !251
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 768614336404564650, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 12                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !19
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !173
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #35
  unreachable

_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 768614336404564650) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 12
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #34 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !19
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !tbaa.struct !144, !alias.scope !252
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !250

_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !251
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #32
  br label %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !174
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !173
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !251
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4core8vector3dIfEESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #26

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %1, ptr %i.a, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.sroa.03.06 = load ptr, ptr %i.b, align 8, !tbaa !24 ; 2 uses
  %.not7 = icmp eq ptr %.sroa.03.06, %i.b
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.03.08 = phi ptr [ %.sroa.03.0, %.lr.ph ], [ %.sroa.03.06, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.03.08, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %i.d, ptr noundef %1)
  %.sroa.03.0 = load ptr, ptr %.sroa.03.08, align 8, !tbaa !24 ; 2 uses
  %.not = icmp eq ptr %.sroa.03.0, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !253

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #27

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #27

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4core8CMatrix4IfE10getInverseERS1_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1) local_unnamed_addr #28 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 9 uses
  %i.j = load <2 x float>, ptr %0, align 4, !tbaa !19 ; 4 uses
  %i.k = load <2 x float>, ptr %i.c, align 4, !tbaa !19 ; 2 uses
  %i.l = load float, ptr %i.a, align 4, !tbaa !19 ; 2 uses
  %i.m = load <2 x float>, ptr %i.h, align 4, !tbaa !19 ; 2 uses
  %i.n = load <2 x float>, ptr %i.i, align 4, !tbaa !19 ; 2 uses
  %i.o = extractelement <2 x float> %i.n, i64 0   ; 3 uses
  %i.p = fneg float %i.o
  %i.q = shufflevector <2 x float> %i.k, <2 x float> %i.n, <4 x i32> <i32 0, i32 3, i32 0, i32 2>
  %i.r = fneg <4 x float> %i.q                    ; 2 uses
  %i.s = shufflevector <2 x float> %i.j, <2 x float> %i.m, <4 x i32> <i32 0, i32 3, i32 poison, i32 2>
  %i.t = shufflevector <2 x float> %i.k, <2 x float> %i.j, <4 x i32> <i32 1, i32 poison, i32 2, i32 poison>
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 10 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !19 ; 3 uses
  %i.x = extractelement <4 x float> %i.r, i64 0
  %i.y = fmul float %i.w, %i.x
  %i.z = extractelement <2 x float> %i.j, i64 0
  %i.aa = extractelement <2 x float> %i.m, i64 0  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !19
  %i.ad = load <2 x float>, ptr %i.b, align 4, !tbaa !19 ; 3 uses
  %i.ae = load float, ptr %i.g, align 4, !tbaa !19
  %i.af = load <2 x float>, ptr %i.d, align 4, !tbaa !19 ; 3 uses
  %i.ag = load <2 x float>, ptr %i.e, align 4, !tbaa !19 ; 3 uses
  %i.ah = shufflevector <2 x float> %i.j, <2 x float> %i.ad, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.ai = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aj = shufflevector <4 x float> %i.ah, <4 x float> %i.ai, <4 x i32> <i32 0, i32 5, i32 2, i32 5>
  %i.ak = fmul <4 x float> %i.aj, %i.r
  %i.al = load float, ptr %i.u, align 4, !tbaa !19 ; 3 uses
  %i.am = load <3 x float>, ptr %i.f, align 4, !tbaa !19 ; 4 uses
  %i.an = shufflevector <3 x float> %i.am, <3 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  %i.ao = shufflevector <3 x float> %i.am, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ap = shufflevector <4 x float> %i.s, <4 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.aq = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ar = shufflevector <4 x float> %i.t, <4 x float> %i.aq, <4 x i32> <i32 0, i32 5, i32 2, i32 5>
  %i.as = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> %i.ar, <4 x float> %i.ak) ; 4 uses
  %i.at = extractelement <4 x float> %i.as, i64 3
  %i.au = fneg float %i.at
  %i.av = extractelement <4 x float> %i.as, i64 2
  %i.aw = fmul float %i.av, %i.au
end_hunk_3
