inline.NumInlined: 385
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5video25COpenGLSLMaterialRendererC2EPNS_13COpenGLDriverEPNS_26IShaderConstantSetCallBackENS_15E_MATERIAL_TYPEEi:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5video25IMaterialRendererServicesE, i64 16), ptr %i.h, align 8, !tbaa !8
  %i.i = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.i, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5video25COpenGLSLMaterialRendererE, i64 184), ptr %i.h, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.o, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.p, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 0, ptr %i.q, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  store i8 0, ptr %i.r, align 1, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 0, ptr %i.s, align 2, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.t, i8 0, i64 28, i1 false)
  store i8 1, ptr %i.u, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %5, ptr %i.v, align 8, !tbaa !29
  switch i32 %4, label %bb.d [
    i32 3, label %bb.b
    i32 1, label %bb.b
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  store i8 1, ptr %i.q, align 8, !tbaa !25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.r, align 1, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %3, align 8, !tbaa !8
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %3, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !30
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5video25COpenGLSLMaterialRendererC1EPNS_13COpenGLDriverEPNS_26IShaderConstantSetCallBackENS_15E_MATERIAL_TYPEEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(76) initializes((0, 35), (36, 65), (72, 76), (80, 92)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 1, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-24, 144) (i8, ptr @_ZTVN5video25COpenGLSLMaterialRendererE, i64 24), ptr %0, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5video25COpenGLSLMaterialRendererE, i64 304), ptr %i.a, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5video25COpenGLSLMaterialRendererE, i64 184), ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 0, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  store i8 0, ptr %i.g, align 1, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 0, ptr %i.h, align 2, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.i, i8 0, i64 28, i1 false)
  store i8 1, ptr %i.j, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %4, ptr %i.k, align 8, !tbaa !29
  switch i32 %3, label %bb.d [
    i32 3, label %bb.b
    i32 1, label %bb.b
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  store i8 1, ptr %i.f, align 8, !tbaa !25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.g, align 1, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %2, align 8, !tbaa !8
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !30
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5video25COpenGLSLMaterialRendererD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8 x i32], align 16               ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.c, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g
  store ptr %i.e, ptr %i.h, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5video25COpenGLSLMaterialRendererE, i64 184), ptr %i.i, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %_ZNK17IReferenceCounted4dropEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !30   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.s = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.s, ptr %i.p, align 8, !tbaa !30
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.e, label %_ZNK17IReferenceCounted4dropEv.exit

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(12) %i.o) #23, !inline_history !55
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.e, %bb.d, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !41   ; 2 uses
  %.not6 = icmp eq i32 %i.x, 0
  br i1 %.not6, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10   ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1712
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !56 ; 2 uses
  %.not7.i = icmp eq ptr %i.ab, null
  br i1 %.not7.i, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.ab(i32 noundef %i.x, i32 noundef 8, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
          to label %_ZN5video23COpenGLExtensionHandler23extGlGetAttachedShadersEjiPiPj.exit unwind label %.loopexit.split-lp, !inline_history !57

_ZN5video23COpenGLExtensionHandler23extGlGetAttachedShadersEjiPiPj.exit: ; preds = %bb.g
  %.pre = load i32, ptr %i.b, align 4, !tbaa !32  ; 2 uses
  %.pre28.pre = load ptr, ptr %i.y, align 8, !tbaa !10 ; 3 uses
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %.pre, i32 8)
  %i.ac = icmp sgt i32 %.pre, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5video23COpenGLExtensionHandler23extGlGetAttachedShadersEjiPiPj.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre28.pre, i64 1696
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !58
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  br label %.lr.ph.split

._crit_edge.loopexit25:                           ; preds = %_ZN5video23COpenGLExtensionHandler17extGlDeleteShaderEj.exit
  %.pre27 = load ptr, ptr %i.y, align 8, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %.lr.ph, %._crit_edge.loopexit25, %_ZN5video23COpenGLExtensionHandler23extGlGetAttachedShadersEjiPiPj.exit
  %i.ag = phi ptr [ %.pre27, %._crit_edge.loopexit25 ], [ %.pre28.pre, %.lr.ph ], [ %.pre28.pre, %_ZN5video23COpenGLExtensionHandler23extGlGetAttachedShadersEjiPiPj.exit ], [ %i.z, %bb.f ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1688
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !59 ; 2 uses
  %.not.i8 = icmp eq ptr %i.ai, null
  br i1 %.not.i8, label %_ZN5video23COpenGLExtensionHandler18extGlDeleteProgramEj.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.aj = load i32, ptr %i.w, align 4, !tbaa !41
  invoke void %i.ai(i32 noundef %i.aj)
          to label %_ZN5video23COpenGLExtensionHandler18extGlDeleteProgramEj.exit unwind label %.loopexit.split-lp, !inline_history !60

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN5video23COpenGLExtensionHandler17extGlDeleteShaderEj.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %_ZN5video23COpenGLExtensionHandler17extGlDeleteShaderEj.exit ] ; 2 uses
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1696
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !58 ; 2 uses
  %.not.i10 = icmp eq ptr %i.am, null
  br i1 %.not.i10, label %_ZN5video23COpenGLExtensionHandler17extGlDeleteShaderEj.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  invoke void %i.am(i32 noundef %i.ao)
          to label %_ZN5video23COpenGLExtensionHandler17extGlDeleteShaderEj.exit unwind label %.loopexit, !inline_history !61

_ZN5video23COpenGLExtensionHandler17extGlDeleteShaderEj.exit: ; preds = %.lr.ph.split, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit25, label %.lr.ph.split, !llvm.loop !62

_ZN5video23COpenGLExtensionHandler18extGlDeleteProgramEj.exit: ; preds = %._crit_edge, %bb.h
  store i32 0, ptr %i.w, align 4, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.j

bb.j:                                             ; preds = %_ZN5video23COpenGLExtensionHandler18extGlDeleteProgramEj.exit, %_ZNK17IReferenceCounted4dropEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !45 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !54
  %.not4.i.i.i.i = icmp eq ptr %i.aq, %i.as
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ap, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %_ZSt8_DestroyIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ba, %_ZSt8_DestroyIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvPT_.exit.i.i.i.i ], [ %i.aq, %bb.j ] ; 3 uses
  %i.av = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !47 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZSt8_DestroyIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !51
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #24
  br label %_ZSt8_DestroyIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.as
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !52

_ZSt8_DestroyIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvPT_.exit.i.i.i.i, %bb.j
  %.not.i.i1.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i1.i.i, label %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEE5clearEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.bb = ptrtoint ptr %i.au to i64
  %i.bc = ptrtoint ptr %i.aq to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.bd) #24
  br label %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEE5clearEv.exit

_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEE5clearEv.exit: ; preds = %_ZSt8_DestroyIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.be, align 8, !tbaa !28
  %i.bf = load ptr, ptr %i.ap, align 8, !tbaa !45 ; 3 uses
  %i.bg = load ptr, ptr %i.ar, align 8, !tbaa !46 ; 2 uses
  %.not4.i.i.i.i12 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not4.i.i.i.i12, label %_ZSt8_DestroyIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES2_EvT_S4_RSaIT0_E.exit.i.i18, label %.lr.ph.i.i.i.i13

.lr.ph.i.i.i.i13:                                 ; preds = %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEE5clearEv.exit, %_ZSt8_DestroyIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvPT_.exit.i.i.i.i16
  %.05.i.i.i.i14 = phi ptr [ %i.bm, %_ZSt8_DestroyIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvPT_.exit.i.i.i.i16 ], [ %i.bf, %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEE5clearEv.exit ] ; 3 uses
  %i.bh = load ptr, ptr %.05.i.i.i.i14, align 8, !tbaa !47 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i14, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZSt8_DestroyIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvPT_.exit.i.i.i.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i15: ; preds = %.lr.ph.i.i.i.i13
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !51
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #24
  br label %_ZSt8_DestroyIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvPT_.exit.i.i.i.i16

_ZSt8_DestroyIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvPT_.exit.i.i.i.i16: ; preds = %.lr.ph.i.i.i.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i15
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i14, i64 40 ; 2 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.bm, %i.bg
  br i1 %.not.i.i.i.i17, label %_ZSt8_DestroyIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i13, !llvm.loop !52

_ZSt8_DestroyIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvPT_.exit.i.i.i.i16
  %.pr.i.i = load ptr, ptr %i.ap, align 8, !tbaa !45
  br label %_ZSt8_DestroyIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES2_EvT_S4_RSaIT0_E.exit.i.i18

_ZSt8_DestroyIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES2_EvT_S4_RSaIT0_E.exit.i.i18: ; preds = %_ZSt8_DestroyIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEE5clearEv.exit
  %i.bn = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bf, %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEE5clearEv.exit ] ; 3 uses
  %.not.i.i1.i.i19 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i1.i.i19, label %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES2_EvT_S4_RSaIT0_E.exit.i.i18
  %i.bo = load ptr, ptr %i.at, align 8, !tbaa !54
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.br) #24
  br label %_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEED2Ev.exit

_ZN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES2_EvT_S4_RSaIT0_E.exit.i.i18, %bb.l
  ret void

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

.loopexit.split-lp:                               ; preds = %bb.g, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bs = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.bs) #25
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5video25COpenGLSLMaterialRendererD1Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) initializes((0, 16)) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN5video25COpenGLSLMaterialRendererD2Ev(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull @_ZTTN5video25COpenGLSLMaterialRendererE) #23
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZThn8_N5video25COpenGLSLMaterialRendererD1Ev(ptr nofree noundef captures(none) initializes((-8, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN5video25COpenGLSLMaterialRendererD2Ev(ptr noundef nonnull align 8 dereferenceable(76) %i.a, ptr noundef nonnull @_ZTTN5video25COpenGLSLMaterialRendererE) #23, !inline_history !64
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZTv0_n24_N5video25COpenGLSLMaterialRendererD1Ev(ptr nofree noundef captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  tail call void @_ZN5video25COpenGLSLMaterialRendererD2Ev(ptr noundef nonnull align 8 dereferenceable(76) %i.d, ptr noundef nonnull @_ZTTN5video25COpenGLSLMaterialRendererE) #23, !inline_history !64
  ret void
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN5video25COpenGLSLMaterialRenderer12SUniformInfoESaIS2_EE20_M_allocate_and_copyIPKS2_EEPS2_mT_S9_:bb.a

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.k

bb.j:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #25
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN5video25COpenGLSLMaterialRenderer12SUniformInfoESaIS2_EE13_M_deallocateEPS2_m.exit
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5video25COpenGLSLMaterialRenderer12SUniformInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !45     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5video25COpenGLSLMaterialRenderer12SUniformInfoESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #26
  unreachable

_ZNKSt6vectorIN5video25COpenGLSLMaterialRenderer12SUniformInfoESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 6 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !77
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !78
  store i8 0, ptr %i.r, align 8, !tbaa !51
  %i.t = icmp eq ptr %i.q, %2
  br i1 %i.t, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN5video25COpenGLSLMaterialRenderer12SUniformInfoESaIS2_EE12_M_check_lenEmPKc.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !47   ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.r
  br i1 %i.w, label %.body.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.r, align 8, !tbaa !51
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #24
  br label %.body.thread

bb.e:                                             ; preds = %bb.c, %_ZNKSt6vectorIN5video25COpenGLSLMaterialRenderer12SUniformInfoESaIS2_EE12_M_check_lenEmPKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = load i64, ptr %i.aa, align 8
  store i64 %i.ab, ptr %i.z, align 8
  %i.ac = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5video25COpenGLSLMaterialRenderer12SUniformInfoEPS2_ET0_T_S7_S6_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit unwind label %bb.g

_ZSt34__uninitialized_move_if_noexcept_aIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  %i.ae = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5video25COpenGLSLMaterialRenderer12SUniformInfoEPS2_ET0_T_S7_S6_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.ad)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit28 unwind label %.body

_ZSt34__uninitialized_move_if_noexcept_aIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit28: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit28, %_ZSt8_DestroyIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit28 ] ; 3 uses
  %i.af = load ptr, ptr %.05.i.i, align 8, !tbaa !47 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZSt8_DestroyIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !51
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZSt8_DestroyIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvPT_.exit.i.i

_ZSt8_DestroyIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !52

_ZSt8_DestroyIPN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit28
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN5video25COpenGLSLMaterialRenderer12SUniformInfoESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvT_S4_.exit
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !54
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ao) #24
  br label %_ZNSt12_Vector_baseIN5video25COpenGLSLMaterialRenderer12SUniformInfoESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5video25COpenGLSLMaterialRenderer12SUniformInfoESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvT_S4_.exit, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !45
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !54
  ret void

.body:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5video25COpenGLSLMaterialRenderer12SUniformInfoES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.thread

bb.g:                                             ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  %i.at = tail call ptr @__cxa_begin_catch(ptr %i.as) #23 ; 0 uses
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !47  ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.r
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30: ; preds = %bb.g
  %i.aw = load i64, ptr %i.r, align 8, !tbaa !51
  %i.ax = add i64 %i.aw, 1
  tail call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i31

.body.thread:                                     ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %.body
  %.sink55 = phi { ptr, i32 } [ %i.aq, %.body ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.u, %bb.d ]
  %.0.lpad-body40 = phi ptr [ %i.ad, %.body ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.d ]
  %i.ay = extractvalue { ptr, i32 } %.sink55, 0
  %i.az = tail call ptr @__cxa_begin_catch(ptr %i.ay) #23 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5video25COpenGLSLMaterialRenderer12SUniformInfoEEvT_S4_(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.lpad-body40)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i31 unwind label %bb.h

bb.h:                                             ; preds = %.body.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i31
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i31: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30, %.body.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #24
  invoke void @__cxa_rethrow() #26
          to label %bb.k unwind label %bb.h

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ba

bb.j:                                             ; preds = %bb.h
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #25
  unreachable

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i31
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !14, i64 16}
!11 = !{!"_ZTSN5video25COpenGLSLMaterialRendererE", !12, i64 0, !13, i64 8, !14, i64 16, !16, i64 24, !17, i64 32, !17, i64 33, !17, i64 34, !5, i64 36, !18, i64 40, !5, i64 72}
!12 = !{!"_ZTSN5video17IMaterialRendererE"}
!13 = !{!"_ZTSN5video25IMaterialRendererServicesE"}
!14 = !{!"p1 _ZTSN5video13COpenGLDriverE", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 _ZTSN5video26IShaderConstantSetCallBackE", !15, i64 0}
!17 = !{!"bool", !6, i64 0}
!18 = !{!"_ZTSN4core5arrayIN5video25COpenGLSLMaterialRenderer12SUniformInfoEEE", !19, i64 0, !17, i64 24}
!19 = !{!"_ZTSSt6vectorIN5video25COpenGLSLMaterialRenderer12SUniformInfoESaIS2_EE", !20, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIN5video25COpenGLSLMaterialRenderer12SUniformInfoESaIS2_EE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN5video25COpenGLSLMaterialRenderer12SUniformInfoESaIS2_EE12_Vector_implE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN5video25COpenGLSLMaterialRenderer12SUniformInfoESaIS2_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p1 _ZTSN5video25COpenGLSLMaterialRenderer12SUniformInfoE", !15, i64 0}
!24 = !{!11, !16, i64 24}
!25 = !{!11, !17, i64 32}
!26 = !{!11, !17, i64 33}
!27 = !{!11, !17, i64 34}
!28 = !{!18, !17, i64 24}
!29 = !{!11, !5, i64 72}
!30 = !{!31, !5, i64 8}
!31 = !{!"_ZTS17IReferenceCounted", !5, i64 8}
!32 = !{!5, !5, i64 0}
!33 = !{!34, !36, i64 52}
!34 = !{!"_ZTSN5video23COpenGLExtensionHandlerE", !17, i64 0, !17, i64 1, !6, i64 2, !6, i64 3, !5, i64 4, !5, i64 8, !5, i64 12, !35, i64 16, !6, i64 20, !6, i64 28, !6, i64 36, !6, i64 44, !36, i64 52, !36, i64 54, !17, i64 56, !17, i64 57, !6, i64 58, !37, i64 544, !15, i64 568, !15, i64 576, !15, i64 584, !15, i64 592, !15, i64 600, !15, i64 608, !15, i64 616, !15, i64 624, !15, i64 632, !15, i64 640, !15, i64 648, !15, i64 656, !15, i64 664, !15, i64 672, !15, i64 680, !15, i64 688, !15, i64 696, !15, i64 704, !15, i64 712, !15, i64 720, !15, i64 728, !15, i64 736, !15, i64 744, !15, i64 752, !15, i64 760, !15, i64 768, !15, i64 776, !15, i64 784, !15, i64 792, !15, i64 800, !15, i64 808, !15, i64 816, !15, i64 824, !15, i64 832, !15, i64 840, !15, i64 848, !15, i64 856, !15, i64 864, !15, i64 872, !15, i64 880, !15, i64 888, !15, i64 896, !15, i64 904, !15, i64 912, !15, i64 920, !15, i64 928, !15, i64 936, !15, i64 944, !15, i64 952, !15, i64 960, !15, i64 968, !15, i64 976, !15, i64 984, !15, i64 992, !15, i64 1000, !15, i64 1008, !15, i64 1016, !15, i64 1024, !15, i64 1032, !15, i64 1040, !15, i64 1048, !15, i64 1056, !15, i64 1064, !15, i64 1072, !15, i64 1080, !15, i64 1088, !15, i64 1096, !15, i64 1104, !15, i64 1112, !15, i64 1120, !15, i64 1128, !15, i64 1136, !15, i64 1144, !15, i64 1152, !15, i64 1160, !15, i64 1168, !15, i64 1176, !15, i64 1184, !15, i64 1192, !15, i64 1200, !15, i64 1208, !15, i64 1216, !15, i64 1224, !15, i64 1232, !15, i64 1240, !15, i64 1248, !15, i64 1256, !15, i64 1264, !15, i64 1272, !15, i64 1280, !15, i64 1288, !15, i64 1296, !15, i64 1304, !15, i64 1312, !15, i64 1320, !15, i64 1328, !15, i64 1336, !15, i64 1344, !15, i64 1352, !15, i64 1360, !15, i64 1368, !15, i64 1376, !15, i64 1384, !15, i64 1392, !15, i64 1400, !15, i64 1408, !15, i64 1416, !15, i64 1424, !15, i64 1432, !15, i64 1440, !15, i64 1448, !15, i64 1456, !15, i64 1464, !15, i64 1472, !15, i64 1480, !15, i64 1488, !15, i64 1496, !15, i64 1504, !15, i64 1512, !15, i64 1520, !15, i64 1528, !15, i64 1536, !15, i64 1544, !15, i64 1552, !15, i64 1560, !15, i64 1568, !15, i64 1576, !15, i64 1584, !15, i64 1592, !15, i64 1600, !15, i64 1608, !15, i64 1616, !15, i64 1624, !15, i64 1632, !15, i64 1640, !15, i64 1648, !15, i64 1656, !15, i64 1664, !15, i64 1672, !15, i64 1680, !15, i64 1688, !15, i64 1696, !15, i64 1704, !15, i64 1712, !15, i64 1720, !15, i64 1728, !15, i64 1736, !15, i64 1744, !15, i64 1752, !15, i64 1760, !15, i64 1768, !15, i64 1776, !15, i64 1784, !15, i64 1792, !15, i64 1800, !15, i64 1808, !15, i64 1816, !15, i64 1824, !15, i64 1832, !15, i64 1840, !15, i64 1848, !15, i64 1856, !15, i64 1864, !15, i64 1872}
!35 = !{!"float", !6, i64 0}
!36 = !{!"short", !6, i64 0}
!37 = !{!"_ZTSN5video18COpenGLCoreFeatureE", !17, i64 8, !17, i64 9, !6, i64 10, !6, i64 11, !6, i64 12, !38, i64 16}
!38 = !{!"long", !6, i64 0}
!39 = !{!34, !15, i64 728}
!40 = distinct !{ptr @_ZN5video25COpenGLSLMaterialRenderer13createProgramEv, null}
!41 = !{!11, !5, i64 36}
!42 = !{!34, !15, i64 1432}
!43 = !{!34, !15, i64 1440}
!44 = !{ptr @_ZN5video23COpenGLExtensionHandler22extGlProgramParameteriEjji}
!45 = !{!22, !23, i64 0}
!46 = !{!22, !23, i64 8}
!47 = !{!48, !50, i64 0}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !49, i64 0, !38, i64 8, !6, i64 16}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !50, i64 0}
!50 = !{!"p1 omnipotent char", !15, i64 0}
!51 = !{!6, !6, i64 0}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!22, !23, i64 16}
!55 = distinct !{null}
!56 = !{!34, !15, i64 768}
!57 = distinct !{null}
!58 = !{!34, !15, i64 752}
!59 = !{!34, !15, i64 744}
!60 = distinct !{null}
!61 = distinct !{null}
!62 = distinct !{!62, !53, !63}
!63 = !{!"llvm.loop.unswitch.partial.disable"}
!64 = !{ptr @_ZN5video25COpenGLSLMaterialRendererD1Ev}
!65 = !{ptr @_ZN5video25COpenGLSLMaterialRendererD0Ev, ptr @_ZN5video25COpenGLSLMaterialRendererD1Ev}
!66 = !{ptr @_ZN5video25COpenGLSLMaterialRendererD0Ev}
!67 = distinct !{null}
!68 = !{!50, !50, i64 0}
!69 = !{!34, !15, i64 776}
!70 = distinct !{null}
!71 = !{!34, !15, i64 784}
!72 = distinct !{null}
!73 = !{!34, !15, i64 792}
!74 = distinct !{null}
!75 = !{!34, !15, i64 848}
!76 = distinct !{null}
!77 = !{!49, !50, i64 0}
!78 = !{!48, !38, i64 8}
!79 = !{!34, !15, i64 824}
!80 = distinct !{null}
!81 = !{!34, !15, i64 800}
!82 = distinct !{null}
!83 = !{!34, !15, i64 808}
!84 = distinct !{null}
!85 = !{!34, !15, i64 856}
!86 = distinct !{null}
!87 = !{!34, !15, i64 832}
!88 = distinct !{null}
!89 = !{!34, !15, i64 1056}
!90 = distinct !{null}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = distinct !{!93, !53}
!94 = !{!34, !15, i64 872}
!95 = distinct !{null}
!96 = !{!97, !5, i64 36}
!97 = !{!"_ZTSN5video25COpenGLSLMaterialRenderer12SUniformInfoE", !98, i64 0, !5, i64 32, !5, i64 36}
!98 = !{!"_ZTSN4core6stringIcEE", !48, i64 0}
!99 = distinct !{!99, !53}
!100 = !{!101, !102, i64 96}
!101 = !{!"_ZTSN5video9SMaterialE", !6, i64 0, !102, i64 96, !103, i64 100, !35, i64 104, !35, i64 108, !35, i64 112, !35, i64 116, !35, i64 120, !104, i64 124, !105, i64 124, !106, i64 125, !107, i64 125, !17, i64 126, !17, i64 126, !108, i64 126, !17, i64 126, !17, i64 126, !17, i64 126, !17, i64 126}
!102 = !{!"_ZTSN5video15E_MATERIAL_TYPEE", !6, i64 0}
!103 = !{!"_ZTSN5video6SColorE", !5, i64 0}
!104 = !{!"_ZTSN5video17E_COMPARISON_FUNCE", !6, i64 0}
!105 = !{!"_ZTSN5video20E_ANTI_ALIASING_MODEE", !6, i64 0}
!106 = !{!"_ZTSN5video13E_COLOR_PLANEE", !6, i64 0}
!107 = !{!"_ZTSN5video17E_BLEND_OPERATIONE", !6, i64 0}
!108 = !{!"_ZTSN5video8E_ZWRITEE", !6, i64 0}
!109 = !{!34, !15, i64 736}
!110 = distinct !{null}
!111 = !{i8 0, i8 2}
!112 = !{}
!113 = !{!114, !119, i64 120}
!114 = !{!"_ZTSN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEEE", !14, i64 8, !115, i64 16, !5, i64 72, !118, i64 80, !118, i64 88, !118, i64 96, !118, i64 104, !118, i64 112, !119, i64 120, !17, i64 128, !17, i64 129, !17, i64 130, !50, i64 136, !17, i64 144, !5, i64 148, !17, i64 152, !5, i64 156, !17, i64 160, !17, i64 161, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188}
!115 = !{!"_ZTSN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE13STextureCacheE", !116, i64 0, !117, i64 8, !6, i64 16, !5, i64 48}
!116 = !{!"p1 _ZTSN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEEE", !15, i64 0}
!117 = !{!"_ZTSN5video13E_DRIVER_TYPEE", !6, i64 0}
!118 = !{!"p1 int", !15, i64 0}
!119 = !{!"p1 bool", !15, i64 0}
!120 = !{!17, !17, i64 0}
!121 = distinct !{null}
!122 = !{!114, !5, i64 72}
!123 = !{!114, !17, i64 130}
!124 = !{!114, !118, i64 88}
!125 = !{!114, !118, i64 96}
!126 = !{!114, !118, i64 104}
!127 = !{!114, !118, i64 112}
!128 = !{!129, !15, i64 256}
!129 = !{!"_ZTS16OpenGLProcedures", !130, i64 0, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !15, i64 424, !15, i64 432, !15, i64 440, !15, i64 448, !15, i64 456, !15, i64 464, !15, i64 472, !15, i64 480, !15, i64 488, !15, i64 496, !15, i64 504, !15, i64 512, !15, i64 520, !15, i64 528, !15, i64 536, !15, i64 544, !15, i64 552, !15, i64 560, !15, i64 568, !15, i64 576, !15, i64 584, !15, i64 592, !15, i64 600, !15, i64 608, !15, i64 616, !15, i64 624, !15, i64 632, !15, i64 640, !15, i64 648, !15, i64 656, !15, i64 664, !15, i64 672, !15, i64 680, !15, i64 688, !15, i64 696, !15, i64 704, !15, i64 712, !15, i64 720, !15, i64 728, !15, i64 736, !15, i64 744, !15, i64 752, !15, i64 760, !15, i64 768, !15, i64 776, !15, i64 784, !15, i64 792, !15, i64 800, !15, i64 808, !15, i64 816, !15, i64 824, !15, i64 832, !15, i64 840, !15, i64 848, !15, i64 856, !15, i64 864, !15, i64 872, !15, i64 880, !15, i64 888, !15, i64 896, !15, i64 904, !15, i64 912, !15, i64 920, !15, i64 928, !15, i64 936, !15, i64 944, !15, i64 952, !15, i64 960, !15, i64 968, !15, i64 976, !15, i64 984, !15, i64 992, !15, i64 1000, !15, i64 1008, !15, i64 1016, !15, i64 1024, !15, i64 1032, !15, i64 1040, !15, i64 1048, !15, i64 1056, !15, i64 1064, !15, i64 1072, !15, i64 1080, !15, i64 1088, !15, i64 1096, !15, i64 1104, !15, i64 1112, !15, i64 1120, !15, i64 1128, !15, i64 1136, !15, i64 1144, !15, i64 1152, !15, i64 1160, !15, i64 1168, !15, i64 1176, !15, i64 1184, !15, i64 1192, !15, i64 1200, !15, i64 1208, !15, i64 1216, !15, i64 1224, !15, i64 1232, !15, i64 1240, !15, i64 1248, !15, i64 1256, !15, i64 1264, !15, i64 1272, !15, i64 1280, !15, i64 1288, !15, i64 1296, !15, i64 1304, !15, i64 1312, !15, i64 1320, !15, i64 1328, !15, i64 1336, !15, i64 1344, !15, i64 1352, !15, i64 1360, !15, i64 1368, !15, i64 1376, !15, i64 1384, !15, i64 1392, !15, i64 1400, !15, i64 1408, !15, i64 1416, !15, i64 1424, !15, i64 1432, !15, i64 1440, !15, i64 1448, !15, i64 1456, !15, i64 1464, !15, i64 1472, !15, i64 1480, !15, i64 1488, !15, i64 1496, !15, i64 1504, !15, i64 1512, !15, i64 1520, !15, i64 1528, !15, i64 1536, !15, i64 1544, !15, i64 1552, !15, i64 1560, !15, i64 1568, !15, i64 1576, !15, i64 1584, !15, i64 1592, !15, i64 1600, !15, i64 1608, !15, i64 1616, !15, i64 1624, !15, i64 1632, !15, i64 1640, !15, i64 1648, !15, i64 1656, !15, i64 1664, !15, i64 1672, !15, i64 1680, !15, i64 1688, !15, i64 1696, !15, i64 1704, !15, i64 1712, !15, i64 1720, !15, i64 1728, !15, i64 1736, !15, i64 1744, !15, i64 1752, !15, i64 1760, !15, i64 1768, !15, i64 1776, !15, i64 1784, !15, i64 1792, !15, i64 1800, !15, i64 1808, !15, i64 1816, !15, i64 1824, !15, i64 1832, !15, i64 1840, !15, i64 1848, !15, i64 1856, !15, i64 1864, !15, i64 1872, !15, i64 1880, !15, i64 1888, !15, i64 1896, !15, i64 1904, !15, i64 1912, !15, i64 1920, !15, i64 1928, !15, i64 1936, !15, i64 1944, !15, i64 1952, !15, i64 1960, !15, i64 1968, !15, i64 1976, !15, i64 1984, !15, i64 1992, !15, i64 2000, !15, i64 2008, !15, i64 2016, !15, i64 2024, !15, i64 2032, !15, i64 2040, !15, i64 2048, !15, i64 2056, !15, i64 2064, !15, i64 2072, !15, i64 2080, !15, i64 2088, !15, i64 2096, !15, i64 2104, !15, i64 2112, !15, i64 2120, !15, i64 2128, !15, i64 2136, !15, i64 2144, !15, i64 2152, !15, i64 2160, !15, i64 2168, !15, i64 2176, !15, i64 2184, !15, i64 2192, !15, i64 2200, !15, i64 2208, !15, i64 2216, !15, i64 2224, !15, i64 2232, !15, i64 2240, !15, i64 2248, !15, i64 2256, !15, i64 2264, !15, i64 2272, !15, i64 2280, !15, i64 2288, !15, i64 2296, !15, i64 2304, !15, i64 2312, !15, i64 2320, !15, i64 2328, !15, i64 2336, !15, i64 2344, !15, i64 2352, !15, i64 2360, !15, i64 2368, !15, i64 2376, !15, i64 2384, !15, i64 2392, !15, i64 2400, !15, i64 2408, !15, i64 2416, !15, i64 2424, !15, i64 2432, !15, i64 2440, !15, i64 2448, !15, i64 2456, !15, i64 2464, !15, i64 2472, !15, i64 2480, !15, i64 2488, !15, i64 2496, !15, i64 2504, !15, i64 2512, !15, i64 2520, !15, i64 2528, !15, i64 2536, !15, i64 2544, !15, i64 2552, !15, i64 2560, !15, i64 2568, !15, i64 2576, !15, i64 2584, !15, i64 2592, !15, i64 2600, !15, i64 2608, !15, i64 2616, !15, i64 2624, !15, i64 2632, !15, i64 2640, !15, i64 2648, !15, i64 2656, !15, i64 2664, !15, i64 2672, !15, i64 2680, !15, i64 2688, !15, i64 2696, !15, i64 2704, !15, i64 2712, !15, i64 2720, !15, i64 2728, !15, i64 2736, !15, i64 2744, !15, i64 2752, !15, i64 2760, !15, i64 2768, !15, i64 2776, !15, i64 2784, !15, i64 2792, !15, i64 2800, !15, i64 2808, !15, i64 2816, !15, i64 2824, !15, i64 2832, !15, i64 2840, !15, i64 2848, !15, i64 2856, !15, i64 2864, !15, i64 2872, !15, i64 2880, !15, i64 2888, !15, i64 2896, !15, i64 2904, !15, i64 2912, !15, i64 2920, !15, i64 2928, !15, i64 2936, !15, i64 2944, !15, i64 2952, !15, i64 2960, !15, i64 2968, !15, i64 2976, !15, i64 2984, !15, i64 2992, !15, i64 3000, !15, i64 3008, !15, i64 3016, !15, i64 3024, !15, i64 3032, !15, i64 3040, !15, i64 3048, !15, i64 3056, !15, i64 3064, !15, i64 3072, !15, i64 3080, !15, i64 3088, !15, i64 3096, !15, i64 3104, !15, i64 3112, !15, i64 3120, !15, i64 3128, !15, i64 3136, !15, i64 3144, !15, i64 3152, !15, i64 3160, !15, i64 3168, !15, i64 3176, !15, i64 3184, !15, i64 3192, !15, i64 3200, !15, i64 3208, !15, i64 3216, !15, i64 3224, !15, i64 3232, !15, i64 3240, !15, i64 3248, !15, i64 3256, !15, i64 3264, !15, i64 3272, !15, i64 3280, !15, i64 3288, !15, i64 3296, !15, i64 3304, !15, i64 3312, !15, i64 3320, !15, i64 3328, !15, i64 3336, !15, i64 3344, !15, i64 3352, !15, i64 3360, !15, i64 3368, !15, i64 3376, !15, i64 3384, !15, i64 3392, !15, i64 3400, !15, i64 3408, !15, i64 3416, !15, i64 3424, !15, i64 3432, !15, i64 3440, !15, i64 3448, !15, i64 3456, !15, i64 3464, !15, i64 3472, !15, i64 3480, !15, i64 3488, !15, i64 3496, !15, i64 3504, !15, i64 3512, !15, i64 3520, !15, i64 3528, !15, i64 3536, !15, i64 3544, !15, i64 3552, !15, i64 3560, !15, i64 3568, !15, i64 3576, !15, i64 3584, !15, i64 3592, !15, i64 3600, !15, i64 3608, !15, i64 3616, !15, i64 3624, !15, i64 3632, !15, i64 3640, !15, i64 3648, !15, i64 3656, !15, i64 3664, !15, i64 3672, !15, i64 3680, !15, i64 3688, !15, i64 3696, !15, i64 3704, !15, i64 3712, !15, i64 3720, !15, i64 3728, !15, i64 3736, !15, i64 3744, !15, i64 3752, !15, i64 3760, !15, i64 3768, !15, i64 3776, !15, i64 3784, !15, i64 3792, !15, i64 3800, !15, i64 3808, !15, i64 3816, !15, i64 3824, !15, i64 3832, !15, i64 3840, !15, i64 3848, !15, i64 3856, !15, i64 3864, !15, i64 3872, !15, i64 3880, !15, i64 3888, !15, i64 3896, !15, i64 3904, !15, i64 3912, !15, i64 3920, !15, i64 3928, !15, i64 3936, !15, i64 3944, !15, i64 3952, !15, i64 3960, !15, i64 3968, !15, i64 3976, !15, i64 3984, !15, i64 3992, !15, i64 4000, !15, i64 4008, !15, i64 4016, !15, i64 4024, !15, i64 4032, !15, i64 4040, !15, i64 4048, !15, i64 4056, !15, i64 4064, !15, i64 4072, !15, i64 4080, !15, i64 4088, !15, i64 4096, !15, i64 4104, !15, i64 4112, !15, i64 4120, !15, i64 4128, !15, i64 4136, !15, i64 4144, !15, i64 4152, !15, i64 4160, !15, i64 4168, !15, i64 4176, !15, i64 4184, !15, i64 4192, !15, i64 4200, !15, i64 4208, !15, i64 4216, !15, i64 4224, !15, i64 4232, !15, i64 4240, !15, i64 4248, !15, i64 4256, !15, i64 4264, !15, i64 4272, !15, i64 4280, !15, i64 4288, !15, i64 4296, !15, i64 4304, !15, i64 4312, !15, i64 4320, !15, i64 4328, !15, i64 4336, !15, i64 4344, !15, i64 4352, !15, i64 4360, !15, i64 4368, !15, i64 4376, !15, i64 4384, !15, i64 4392, !15, i64 4400, !15, i64 4408, !15, i64 4416, !15, i64 4424, !15, i64 4432, !15, i64 4440, !15, i64 4448, !15, i64 4456, !15, i64 4464, !15, i64 4472, !15, i64 4480, !15, i64 4488, !15, i64 4496, !15, i64 4504, !15, i64 4512, !15, i64 4520, !15, i64 4528, !15, i64 4536, !15, i64 4544, !15, i64 4552, !15, i64 4560, !15, i64 4568, !15, i64 4576, !15, i64 4584, !15, i64 4592, !15, i64 4600, !15, i64 4608, !15, i64 4616, !15, i64 4624, !15, i64 4632, !15, i64 4640, !15, i64 4648, !15, i64 4656, !15, i64 4664, !15, i64 4672, !15, i64 4680, !15, i64 4688, !15, i64 4696, !15, i64 4704, !15, i64 4712, !15, i64 4720, !15, i64 4728, !15, i64 4736, !15, i64 4744, !15, i64 4752, !15, i64 4760, !15, i64 4768, !15, i64 4776, !15, i64 4784, !15, i64 4792, !15, i64 4800, !15, i64 4808, !15, i64 4816, !15, i64 4824, !15, i64 4832, !15, i64 4840, !15, i64 4848, !15, i64 4856, !15, i64 4864, !15, i64 4872, !15, i64 4880, !15, i64 4888, !15, i64 4896, !15, i64 4904, !15, i64 4912, !15, i64 4920, !15, i64 4928, !15, i64 4936, !15, i64 4944, !15, i64 4952, !15, i64 4960, !15, i64 4968, !15, i64 4976, !15, i64 4984, !15, i64 4992, !15, i64 5000, !15, i64 5008, !15, i64 5016, !15, i64 5024, !15, i64 5032, !15, i64 5040, !15, i64 5048, !15, i64 5056, !15, i64 5064, !15, i64 5072, !15, i64 5080, !15, i64 5088, !15, i64 5096, !15, i64 5104, !15, i64 5112, !15, i64 5120, !15, i64 5128, !15, i64 5136, !15, i64 5144, !15, i64 5152, !15, i64 5160, !15, i64 5168, !15, i64 5176, !15, i64 5184, !15, i64 5192, !15, i64 5200, !15, i64 5208, !15, i64 5216, !15, i64 5224, !15, i64 5232, !15, i64 5240, !15, i64 5248, !15, i64 5256, !15, i64 5264, !15, i64 5272, !15, i64 5280, !15, i64 5288, !15, i64 5296, !15, i64 5304, !15, i64 5312, !15, i64 5320, !15, i64 5328, !15, i64 5336, !15, i64 5344, !15, i64 5352, !15, i64 5360, !15, i64 5368, !15, i64 5376, !15, i64 5384, !15, i64 5392, !15, i64 5400, !15, i64 5408, !15, i64 5416, !15, i64 5424, !15, i64 5432, !15, i64 5440, !15, i64 5448, !15, i64 5456, !15, i64 5464, !15, i64 5472, !15, i64 5480, !15, i64 5488, !15, i64 5496, !15, i64 5504, !15, i64 5512, !15, i64 5520, !15, i64 5528, !15, i64 5536, !15, i64 5544, !15, i64 5552, !15, i64 5560, !15, i64 5568, !15, i64 5576, !15, i64 5584, !15, i64 5592, !15, i64 5600, !15, i64 5608, !15, i64 5616, !15, i64 5624, !15, i64 5632, !15, i64 5640, !15, i64 5648, !15, i64 5656, !15, i64 5664, !15, i64 5672, !15, i64 5680, !15, i64 5688, !15, i64 5696, !15, i64 5704, !15, i64 5712, !15, i64 5720, !15, i64 5728, !15, i64 5736, !15, i64 5744, !15, i64 5752, !15, i64 5760, !15, i64 5768, !15, i64 5776, !15, i64 5784, !15, i64 5792, !15, i64 5800}
!130 = !{!"_ZTSSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS5_ESt8equal_toIS5_ESaIS5_EE", !131, i64 0}
!131 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE", !132, i64 0, !38, i64 8, !134, i64 16, !38, i64 24, !136, i64 32, !135, i64 48}
!132 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !133, i64 0}
!133 = !{!"any p2 pointer", !15, i64 0}
!134 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !135, i64 0}
!135 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !15, i64 0}
!136 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !35, i64 0, !38, i64 8}
!137 = distinct !{null}
!138 = !{!114, !17, i64 129}
!139 = distinct !{!139, !53}
!140 = !{!101, !35, i64 104}
!141 = !{!114, !14, i64 8}
!142 = !{!34, !15, i64 1576}
!143 = !{!34, !15, i64 1568}
!144 = distinct !{null}
!145 = distinct !{!145, !53}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!148 = distinct !{!148, !"_ZNSt7__cxx119to_stringEm"}
!149 = distinct !{!149, !53}
!150 = distinct !{!150, !53}
!151 = !{ptr @_ZN5video25COpenGLSLMaterialRenderer20setBasicRenderStatesERKNS_9SMaterialES3_b}
!152 = !{ptr @_ZN5video25COpenGLSLMaterialRenderer25getVertexShaderConstantIDEPKc}
!153 = distinct !{!153, !53}
!154 = !{ptr @_ZN5video25COpenGLSLMaterialRenderer23setVertexShaderConstantEiPKfi}
!155 = !{ptr @_ZN5video25COpenGLSLMaterialRenderer23setVertexShaderConstantEiPKii}
!156 = !{ptr @_ZN5video25COpenGLSLMaterialRenderer23setVertexShaderConstantEiPKji}
!157 = !{!97, !5, i64 32}
!158 = !{!34, !15, i64 880}
!159 = distinct !{null}
!160 = !{!34, !15, i64 888}
!161 = distinct !{null}
!162 = !{!34, !15, i64 896}
!163 = distinct !{null}
!164 = !{!34, !15, i64 904}
!165 = distinct !{null}
end_hunk_1
