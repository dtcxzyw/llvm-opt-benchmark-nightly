Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/exrinput?download=true
inline.NumInlined: 5390
inline.NumDeleted: 1762
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN11OpenImageIO4v3_112OpenEXRInput21read_native_scanlinesEiiiiiiiPv:bb.a
  br label %bb.av

.loopexit.split-lp:                               ; preds = %bb.ap, %bb.aw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.hn = load ptr, ptr %13, align 8, !tbaa !58   ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.av
  %i.hq = load i64, ptr %i.ho, align 8, !tbaa !59
  %i.hr = add i64 %i.hq, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hr) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.lr.ph181:                                        ; preds = %.lr.ph181.preheader, %.noexc
  %indvars.iv193 = phi i64 [ %i.w, %.lr.ph181.preheader ], [ %indvars.iv.next194, %.noexc ] ; 3 uses
  %.0.i180 = phi i1 [ true, %.lr.ph181.preheader ], [ %i.hy, %.noexc ]
  %.018.i179 = phi i32 [ %3, %.lr.ph181.preheader ], [ %i.hv, %.noexc ]
  %i.hs = sub nsw i64 %indvars.iv193, %i.w
  %i.ht = mul nsw i64 %i.q, %i.hs
  %i.hu = getelementptr inbounds i8, ptr %8, i64 %i.ht
  %i.hv = add nsw i32 %.018.i179, 1               ; 2 uses
  %i.hw = trunc nsw i64 %indvars.iv193 to i32
  %i.hx = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112OpenEXRInput21read_native_scanlinesEiiiiiiiPv(ptr noundef nonnull align 8 dereferenceable(352) %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.hw, i32 noundef %i.hv, i32 noundef %5, i32 noundef %6, i32 noundef %.1.i, ptr noundef %i.hu)
          to label %.noexc unwind label %.loopexit, !inline_history !564

.noexc:                                           ; preds = %.lr.ph181
  %indvars.iv.next194 = add nsw i64 %indvars.iv193, 1 ; 2 uses
  %i.hy = and i1 %.0.i180, %i.hx                  ; 2 uses
  %exitcond196.not = icmp eq i64 %indvars.iv.next194, %wide.trip.count195
  br i1 %exitcond196.not, label %_ZN11OpenImageIO4v3_112OpenEXRInput34read_native_scanlines_individuallyEiiiiiiiPvl.exit, label %.lr.ph181, !llvm.loop !5

bb.aw:                                            ; preds = %bb.an
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.152, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZN11OpenImageIO4v3_112OpenEXRInput34read_native_scanlines_individuallyEiiiiiiiPvl.exit unwind label %.loopexit.split-lp

_ZN11OpenImageIO4v3_112OpenEXRInput34read_native_scanlines_individuallyEiiiiiiiPvl.exit: ; preds = %.noexc, %.preheader, %bb.ap, %bb.aw
  %.2108 = phi i1 [ false, %bb.aw ], [ undef, %bb.ap ], [ true, %.preheader ], [ %i.hy, %.noexc ]
  %cond = phi i1 [ false, %bb.aw ], [ true, %bb.ap ], [ false, %.preheader ], [ false, %.noexc ]
  %i.hz = load ptr, ptr %13, align 8, !tbaa !58   ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZN11OpenImageIO4v3_112OpenEXRInput34read_native_scanlines_individuallyEiiiiiiiPvl.exit
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !59
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %_ZN11OpenImageIO4v3_112OpenEXRInput34read_native_scanlines_individuallyEiiiiiiiPvl.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  invoke void @__cxa_end_catch()
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  br i1 %cond, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax, %_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev.exit
  br label %bb.ba

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.au
  %.pn123 = phi { ptr, i32 } [ %i.hm, %bb.au ], [ %lpad.phi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.phi, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  invoke void @__cxa_end_catch()
          to label %bb.bc unwind label %bb.be

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ba:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DINS_4RgbaEED2Ev.exit, %_ZNK9Imath_3_13BoxINS_4Vec2IiEEEneERKS3_.exit.thread, %bb.ay, %bb.ax, %_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev.exit, %bb.ar, %bb.x, %bb.b
  %.4110 = phi i1 [ false, %bb.b ], [ false, %bb.x ], [ true, %bb.ay ], [ %.2108, %bb.ax ], [ false, %bb.ar ], [ false, %_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev.exit ], [ true, %_ZN27OpenImageIO_v3_1_Imf__3_3_57Array2DINS_4RgbaEED2Ev.exit ], [ false, %_ZNK9Imath_3_13BoxINS_4Vec2IiEEEneERKS3_.exit.thread ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.if = landingpad { ptr, i32 }
          catch ptr null
  %i.ig = extractvalue { ptr, i32 } %i.if, 0
  call void @__clang_call_terminate(ptr %i.ig) #39
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit: ; preds = %bb.ba
  ret i1 %.4110

bb.bc:                                            ; preds = %bb.at, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.az, %bb.c
  %.pn125.pn.pn = phi { ptr, i32 } [ %i.b, %bb.c ], [ %i.hk, %bb.as ], [ %i.hl, %bb.at ], [ %i.ie, %bb.az ], [ %.pn123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit138 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ih = landingpad { ptr, i32 }
          catch ptr null
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0
  call void @__clang_call_terminate(ptr %i.ii) #39
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit138: ; preds = %bb.bc
  resume { ptr, i32 } %.pn125.pn.pn

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.as
  %i.ij = landingpad { ptr, i32 }
          catch ptr null
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  call void @__clang_call_terminate(ptr %i.ik) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_112OpenEXRInput21read_native_scanlinesEiiiiiPv(ptr noundef nonnull align 8 dereferenceable(352) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i32, ptr %i.a, align 4, !tbaa !227
  %i.c = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_112OpenEXRInput21read_native_scanlinesEiiiiiiiPv(ptr noundef nonnull align 8 dereferenceable(352) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef 0, i32 noundef %i.b, ptr noundef %6)
  ret i1 %i.c
}

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11pixel_bytesEiib(ptr noundef nonnull align 8 dereferenceable(160), i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile13displayWindowEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile14setFrameBufferEPNS_4RgbaEmm(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_513RgbaInputFile10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer6insertEPKcRKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(50)) local_unnamed_addr #4

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_55SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50), i32 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, double noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #4

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputPart14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_59InputPart10readPixelsEii(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124
  invoke void @_ZNSt8_Rb_treeIN27OpenImageIO_v3_1_Imf__3_3_54NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #39
  unreachable

_ZNSt3mapIN27OpenImageIO_v3_1_Imf__3_3_54NameENS0_5SliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_112OpenEXRInput12fill_missingEiiiiiiiiPvll(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef writeonly captures(none) %9, i64 noundef %10, i64 noundef %11) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.std::vector.28", align 8   ; 11 uses
  %13 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !156  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !153  ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775804
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, !prof !200

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #36
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #40
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !155 ; 2 uses
  %.pre78 = load ptr, ptr %i.b, align 8, !tbaa !155 ; 2 uses
  %.pre81 = ptrtoint ptr %.pre78 to i64
  %.pre82 = ptrtoint ptr %.pre to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %.pre-phi83 = phi i64 [ %.pre82, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i ], [ %i.f, %bb.a ]
  %.pre-phi = phi i64 [ %.pre81, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i ], [ %i.e, %bb.a ]
  %i.j = phi ptr [ %.pre78, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i ], [ %i.c, %bb.a ]
  %i.k = phi ptr [ %.pre, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.l = phi ptr [ %i.i, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  store ptr %i.l, ptr %12, align 8, !tbaa !153
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !154
  %i.p = sub i64 %.pre-phi, %.pre-phi83           ; 5 uses
  %i.q = icmp sgt i64 %i.p, 4
  br i1 %i.q, label %bb.d, label %bb.e, !prof !209

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.l, ptr align 4 %i.k, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.p, 4
  br i1 %i.r, label %bb.f, label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = load float, ptr %i.k, align 4, !tbaa !158
  store float %i.s, ptr %i.l, align 4, !tbaa !158
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

_ZNSt6vectorIfSaIfEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.t = getelementptr inbounds i8, ptr %i.l, i64 %i.p ; 2 uses
  store ptr %i.t, ptr %i.m, align 8, !tbaa !156
  %i.u = sext i32 %8 to i64                       ; 4 uses
  %i.v = ashr exact i64 %i.p, 2                   ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.u
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit
  %i.x = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.y = sub nuw nsw i64 %i.u, %i.v
  invoke void @_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.t, i64 noundef %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.x)
          to label %._ZNSt6vectorIfSaIfEE6resizeEmRKf.exit_crit_edge unwind label %bb.j

._ZNSt6vectorIfSaIfEE6resizeEmRKf.exit_crit_edge: ; preds = %bb.g
  %.pre79 = load ptr, ptr %12, align 8, !tbaa !153
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit
  %i.z = icmp ugt i64 %i.v, %i.u
  br i1 %i.z, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.h
  %.idx = shl nuw nsw i64 %i.u, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  store ptr %i.aa, ptr %i.m, align 8, !tbaa !156
  br label %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit

_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit:            ; preds = %._ZNSt6vectorIfSaIfEE6resizeEmRKf.exit_crit_edge, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.h
  %14 = phi ptr [ %.pre79, %._ZNSt6vectorIfSaIfEE6resizeEmRKf.exit_crit_edge ], [ %i.l, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ], [ %i.l, %bb.h ] ; 4 uses
  %i.ab = load float, ptr %14, align 4, !tbaa !158 ; 2 uses
  %i.ac = fcmp uge float %i.ab, 0.000000e+00      ; 2 uses
  br i1 %i.ac, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit
  %i.ad = call float @llvm.fabs.f32(float %i.ab)
  store float %i.ad, ptr %14, align 4, !tbaa !158
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %12, align 8, !tbaa !153  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !154
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #38
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  resume { ptr, i32 } %i.ae

bb.l:                                             ; preds = %bb.i, %_ZNSt6vectorIfSaIfEE6resizeEmRKf.exit
  %i.ak = icmp slt i32 %3, %4
  br i1 %i.ak, label %.preheader.lr.ph, label %._crit_edge61.split.thread

.preheader.lr.ph:                                 ; preds = %bb.l
  %i.al = icmp sge i32 %1, %2
  %i.am = icmp sge i32 %7, %8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %brmerge66 = or i1 %i.al, %i.am
  br i1 %brmerge66, label %._crit_edge61.split.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.aq = sext i32 %7 to i64
  %i.ar = sext i32 %1 to i64                      ; 2 uses
  %i.as = sext i32 %3 to i64                      ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge58
  %indvars.iv73 = phi i64 [ %i.as, %.preheader.preheader ], [ %indvars.iv.next74, %._crit_edge58 ] ; 3 uses
  %i.at = sub nsw i64 %indvars.iv73, %i.as
  %i.au = mul nsw i64 %11, %i.at
  %i.av = getelementptr inbounds i8, ptr %9, i64 %i.au
  br label %.lr.ph

._crit_edge61.split:                              ; preds = %._crit_edge58
  %.pre80 = load ptr, ptr %12, align 8, !tbaa !153 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %.pre80, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIfSaIfEED2Ev.exit38, label %._crit_edge61.split.thread

._crit_edge61.split.thread:                       ; preds = %bb.l, %.preheader.lr.ph, %._crit_edge61.split
  %i.aw = phi ptr [ %.pre80, %._crit_edge61.split ], [ %14, %.preheader.lr.ph ], [ %14, %bb.l ] ; 2 uses
  %i.ax = load ptr, ptr %i.o, align 8, !tbaa !154
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #38
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit38

_ZNSt6vectorIfSaIfEED2Ev.exit38:                  ; preds = %._crit_edge61.split, %._crit_edge61.split.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  ret void

._crit_edge58:                                    ; preds = %._crit_edge
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, 1 ; 2 uses
  %lftr.wideiv76 = trunc i64 %indvars.iv.next74 to i32
  %exitcond77.not = icmp eq i32 %4, %lftr.wideiv76
  br i1 %exitcond77.not, label %._crit_edge61.split, label %.preheader, !llvm.loop !565

.lr.ph:                                           ; preds = %.preheader, %._crit_edge
  %indvars.iv68 = phi i64 [ %i.ar, %.preheader ], [ %indvars.iv.next69, %._crit_edge ] ; 3 uses
  %i.bb = sub nsw i64 %indvars.iv68, %i.ar
  %i.bc = mul nsw i64 %10, %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.av, i64 %i.bc
  %i.be = sub nsw i64 %indvars.iv68, %indvars.iv73
  %i.bf = and i64 %i.be, 8
  %.not = icmp eq i64 %i.bf, 0
  %brmerge = select i1 %i.ac, i1 true, i1 %.not
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit39.thread
  %indvars.iv.next69 = add nsw i64 %indvars.iv68, 1 ; 2 uses
  %lftr.wideiv71 = trunc i64 %indvars.iv.next69 to i32
  %exitcond72.not = icmp eq i32 %2, %lftr.wideiv71
  br i1 %exitcond72.not, label %._crit_edge58, label %.lr.ph, !llvm.loop !566

bb.m:                                             ; preds = %.lr.ph, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit39.thread
  %indvars.iv = phi i64 [ %i.aq, %.lr.ph ], [ %indvars.iv.next, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit39.thread ] ; 5 uses
  %.03453 = phi ptr [ %i.bd, %.lr.ph ], [ %i.ea, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit39.thread ] ; 3 uses
  %i.bg = load ptr, ptr %12, align 8, !tbaa !153
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !158
  %.0 = select i1 %brmerge, float %i.bi, float 0.000000e+00 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.bj = icmp sgt i64 %indvars.iv, -1
  br i1 %i.bj, label %bb.n, label %_ZNK11OpenImageIO4v3_19ImageSpec13channelformatEi.exit

bb.n:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr %i.ao, align 8, !tbaa !217
  %i.bl = load ptr, ptr %i.an, align 8, !tbaa !166 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %sext = shl i64 %i.bo, 29
  %i.bp = ashr i64 %sext, 32
  %i.bq = icmp slt i64 %indvars.iv, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv
  %spec.select = select i1 %i.bq, ptr %i.br, ptr %i.ap
  br label %_ZNK11OpenImageIO4v3_19ImageSpec13channelformatEi.exit

_ZNK11OpenImageIO4v3_19ImageSpec13channelformatEi.exit: ; preds = %bb.n, %bb.m
  %i.bs = phi ptr [ %i.ap, %bb.m ], [ %spec.select, %bb.n ]
  %.sroa.0.0.copyload.i = load i64, ptr %i.bs, align 4 ; 5 uses
  store i64 %.sroa.0.0.copyload.i, ptr %13, align 8
  %i.bt = trunc i64 %.sroa.0.0.copyload.i to i8
  %i.bu = lshr i64 %.sroa.0.0.copyload.i, 8       ; 2 uses
  %i.bv = trunc i64 %i.bu to i8                   ; 2 uses
  %i.bw = lshr i64 %.sroa.0.0.copyload.i, 16
  %i.bx = trunc i64 %i.bw to i8                   ; 2 uses
  %i.by = lshr i64 %.sroa.0.0.copyload.i, 32      ; 3 uses
  %i.bz = trunc nuw i64 %i.by to i32
  switch i8 %i.bt, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit39.thread [
    i8 11, label %bb.o
    i8 10, label %bb.q
  ]

bb.o:                                             ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec13channelformatEi.exit
  %i.ca = icmp eq i8 %i.bv, 1
  %i.cb = icmp eq i8 %i.bx, 0
  %or.cond = and i1 %i.ca, %i.cb
  %i.cc = icmp eq i64 %i.by, 0
  %or.cond46 = and i1 %or.cond, %i.cc
  br i1 %or.cond46, label %bb.p, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit39.thread

bb.p:                                             ; preds = %bb.o
  store float %.0, ptr %.03453, align 4, !tbaa !158
  br label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit39.thread

bb.q:                                             ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec13channelformatEi.exit
  %i.cd = icmp eq i8 %i.bv, 1
  %i.ce = icmp eq i8 %i.bx, 0
  %or.cond49 = and i1 %i.cd, %i.ce
  %i.cf = icmp eq i64 %i.by, 0
  %or.cond52 = and i1 %or.cond49, %i.cf
  br i1 %or.cond52, label %bb.r, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit39.thread

bb.r:                                             ; preds = %bb.q
  %i.cg = bitcast float %.0 to i32
  %i.ch = call float @llvm.fabs.f32(float %.0)
  %i.ci = bitcast float %i.ch to i32              ; 10 uses
  %i.cj = lshr i32 %i.cg, 16                      ; 3 uses
  %i.ck = trunc nuw i32 %i.cj to i16
  %i.cl = and i16 %i.ck, -32768                   ; 3 uses
  %i.cm = icmp samesign ugt i32 %i.ci, 947912703
  br i1 %i.cm, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.cn = icmp samesign ugt i32 %i.ci, 2139095039
  br i1 %i.cn, label %bb.t, label %bb.v, !prof !200

bb.t:                                             ; preds = %bb.s
  %i.co = or disjoint i16 %i.cl, 31744            ; 2 uses
  %i.cp = icmp eq i32 %i.ci, 2139095040
  br i1 %i.cp, label %_ZN9Imath_3_14halfaSEf.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = lshr i32 %i.ci, 13
  %i.cr = and i32 %i.cq, 1023                     ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  %i.ct = zext i1 %i.cs to i16
  %i.cu = trunc nuw nsw i32 %i.cr to i16
  %i.cv = or i16 %i.cu, %i.ct
  %i.cw = or disjoint i16 %i.cv, %i.co
  br label %_ZN9Imath_3_14halfaSEf.exit

bb.v:                                             ; preds = %bb.s
  %i.cx = icmp samesign ugt i32 %i.ci, 1199566847
  br i1 %i.cx, label %bb.w, label %bb.x, !prof !200

bb.w:                                             ; preds = %bb.v
  %i.cy = or disjoint i16 %i.cl, 31744
  br label %_ZN9Imath_3_14halfaSEf.exit

bb.x:                                             ; preds = %bb.v
  %i.cz = add nuw nsw i32 %i.ci, 134221823
  %i.da = lshr i32 %i.ci, 13
  %i.db = and i32 %i.da, 1
  %i.dc = add nuw nsw i32 %i.cz, %i.db
  %i.dd = lshr i32 %i.dc, 13
  %i.de = and i32 %i.cj, 32768
  %i.df = or i32 %i.dd, %i.de
  %i.dg = trunc i32 %i.df to i16
  br label %_ZN9Imath_3_14halfaSEf.exit

bb.y:                                             ; preds = %bb.r
  %i.dh = icmp samesign ult i32 %i.ci, 855638017
  br i1 %i.dh, label %_ZN9Imath_3_14halfaSEf.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.di = lshr i32 %i.ci, 23                      ; 2 uses
  %i.dj = sub nuw nsw i32 126, %i.di
  %i.dk = and i32 %i.ci, 8388607
  %i.dl = or disjoint i32 %i.dk, 8388608          ; 2 uses
  %i.dm = add nsw i32 %i.di, -94
  %i.dn = shl i32 %i.dl, %i.dm                    ; 2 uses
  %i.do = lshr i32 %i.dl, %i.dj                   ; 2 uses
  %i.dp = and i32 %i.cj, 32768
  %i.dq = or i32 %i.do, %i.dp
  %i.dr = trunc nuw i32 %i.dq to i16              ; 2 uses
  %i.ds = icmp ugt i32 %i.dn, -2147483648
  br i1 %i.ds, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dt = icmp ne i32 %i.dn, -2147483648
  %i.du = and i32 %i.do, 1
  %.not.i.i.i40 = icmp eq i32 %i.du, 0
  %or.cond.i.i.i = select i1 %i.dt, i1 true, i1 %.not.i.i.i40
  br i1 %or.cond.i.i.i, label %_ZN9Imath_3_14halfaSEf.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dv = add nuw i16 %i.dr, 1
  br label %_ZN9Imath_3_14halfaSEf.exit

_ZN9Imath_3_14halfaSEf.exit:                      ; preds = %bb.t, %bb.u, %bb.w, %bb.x, %bb.y, %bb.aa, %bb.ab
  %.033.i.i.i = phi i16 [ %i.cl, %bb.y ], [ %i.cw, %bb.u ], [ %i.cy, %bb.w ], [ %i.dg, %bb.x ], [ %i.co, %bb.t ], [ %i.dv, %bb.ab ], [ %i.dr, %bb.aa ]
  store i16 %.033.i.i.i, ptr %.03453, align 2, !tbaa !231
  br label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit39.thread

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit39.thread: ; preds = %_ZNK11OpenImageIO4v3_19ImageSpec13channelformatEi.exit, %bb.o, %bb.q, %_ZN9Imath_3_14halfaSEf.exit, %bb.p
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.bz, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.dw = and i64 %i.bu, 255
  %i.dx = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %13) #37
  %i.dy = mul i64 %i.dx, %i.dw
  %i.dz = mul i64 %i.dy, %spec.select.i
  %i.ea = getelementptr inbounds nuw i8, ptr %.03453, i64 %i.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %8, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !567
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_112OpenEXRInput34read_native_scanlines_individuallyEiiiiiiiPvl(ptr noundef nonnull align 8 dereferenceable(352) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i64 noundef %9) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp slt i32 %3, %4
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = sext i32 %3 to i64                       ; 2 uses
  %wide.trip.count = sext i32 %4 to i64
end_hunk_0
