Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/color_ocio?download=true
inline.NumInlined: 6229
inline.NumDeleted: 1603
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN11OpenImageIO4v3_111ColorConfig4Impl9inventoryEv:bb.a
  %i.hm = landingpad { ptr, i32 }
          cleanup
  %i.hn = load ptr, ptr %12, align 8, !tbaa !77   ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.er
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %bb.aw
  %i.hp = load i64, ptr %i.er, align 8, !tbaa !79
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  br label %bb.bc

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %i.hr = landingpad { ptr, i32 }
          cleanup
  %i.hs = load ptr, ptr %13, align 8, !tbaa !77   ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.ey
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %bb.ax
  %i.hu = load i64, ptr %i.ey, align 8, !tbaa !79
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  br label %bb.bc

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

bb.az:                                            ; preds = %.noexc139
  %i.hx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hy = load ptr, ptr %14, align 8, !tbaa !77   ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.ff
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %bb.az
  %i.ia = load i64, ptr %i.ff, align 8, !tbaa !79
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182, %bb.ay
  %.pn67 = phi { ptr, i32 } [ %i.hw, %bb.ay ], [ %i.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182 ], [ %i.hx, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  br label %bb.bc

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.ic = landingpad { ptr, i32 }
          cleanup
  %i.id = load ptr, ptr %15, align 8, !tbaa !77   ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.fp
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185: ; preds = %bb.ba
  %i.if = load i64, ptr %i.fp, align 8, !tbaa !79
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ig) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i185
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %bb.bc

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %i.ih = landingpad { ptr, i32 }
          cleanup
  %i.ii = load ptr, ptr %16, align 8, !tbaa !77   ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.fw
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %bb.bb
  %i.ik = load i64, ptr %i.fw, align 8, !tbaa !79
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %bb.bc

.lr.ph222:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %.lr.ph222
  %.sroa.0191.0221 = phi ptr [ %i.im, %.lr.ph222 ], [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_111ColorConfig4Impl16classify_by_nameERNS0_6CSInfoE(ptr noundef nonnull align 8 dereferenceable(385) %0, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0191.0221)
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0191.0221, i64 96 ; 2 uses
  %.not213 = icmp eq ptr %i.im, %i.gg
  br i1 %.not213, label %.loopexit214, label %.lr.ph222

.loopexit214:                                     ; preds = %.lr.ph222, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %bb.x
  ret void

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %bb.q
  %.pn71.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.q ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %i.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ %i.ic, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit187 ], [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184 ], [ %i.hr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181 ], [ %i.hm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178 ], [ %.pn61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175 ], [ %i.hb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172 ], [ %i.gw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ %i.gr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ], [ %i.gm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ], [ %i.gh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ]
  resume { ptr, i32 } %.pn71.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare noundef i32 @_ZNK16OpenColorIO_v2_56Config17getNumColorSpacesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #0

declare noundef ptr @_ZNK16OpenColorIO_v2_56Config24getColorSpaceNameByIndexEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_111ColorConfig4Impl3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr noundef nonnull align 8 dereferenceable(385) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !63
  store i32 %3, ptr %i.b, align 4, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.d = cmpxchg weak ptr %i.c, i32 0, i32 1073741824 acquire acquire, align 4
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i: ; preds = %bb.a, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i
  %.sroa.0.0.i.i = phi i32 [ %.sroa.0.1.i.i, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i ], [ 1, %bb.a ] ; 5 uses
  %.not.i.i.i = icmp sgt i32 %.sroa.0.0.i.i, 16
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.f = icmp sgt i32 %.sroa.0.0.i.i, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi i32 [ %i.g, %.lr.ph.i.i.i.i ], [ 0, %bb.b ]
  tail call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.g = add nuw nsw i32 %.03.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.g, %.sroa.0.0.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i:         ; preds = %.lr.ph.i.i.i.i, %bb.b
  %i.h = shl nsw i32 %.sroa.0.0.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.i = tail call noundef i32 @sched_yield() #38 ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i: ; preds = %bb.c, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.0.i.i, %bb.c ], [ %i.h, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i ]
  %i.j = cmpxchg weak ptr %i.c, i32 0, i32 1073741824 acquire acquire, align 4
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i, !llvm.loop !2

_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !104  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !105
  %.not.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.p = load ptr, ptr %1, align 8, !tbaa !77
  store ptr %i.p, ptr %4, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !78
  store i64 %i.s, ptr %i.q, align 8, !tbaa !70
  %i.t = load i32, ptr %i.a, align 4, !tbaa !63
  %i.u = load i32, ptr %i.b, align 4, !tbaa !63
  store ptr @.str.7, ptr %5, align 8, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_16CSInfoC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEiiS5_(ptr noundef nonnull align 8 dereferenceable(96) %i.m, ptr noundef nonnull dead_on_return %4, i32 noundef %i.t, i32 noundef %i.u, ptr noundef nonnull dead_on_return %5)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !104
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  store ptr %i.x, ptr %i.l, align 8, !tbaa !104
  br label %_ZNSt6vectorIN11OpenImageIO4v3_16CSInfoESaIS2_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiSE_EEERS2_DpOT_.exit

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt6vectorIN11OpenImageIO4v3_16CSInfoESaIS2_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiSE_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr %i.m, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZNSt6vectorIN11OpenImageIO4v3_16CSInfoESaIS2_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiSE_EEERS2_DpOT_.exit unwind label %bb.f

_ZNSt6vectorIN11OpenImageIO4v3_16CSInfoESaIS2_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiSE_EEERS2_DpOT_.exit: ; preds = %bb.e, %.noexc
  %6 = atomicrmw sub ptr %i.c, i32 1073741824 release, align 4 ; 0 uses
  ret void

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  %7 = atomicrmw sub ptr %i.c, i32 1073741824 release, align 4 ; 0 uses
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_111ColorConfig4Impl16classify_by_nameERNS0_6CSInfoE(ptr noundef nonnull align 8 dereferenceable(385) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.225", align 16 ; 7 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %18 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %19 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %20 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %21 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %22 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %23 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %24 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %25 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %26 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %27 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %28 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %29 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %30 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %31 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %32 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %33 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %34 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !77
  store ptr %i.a, ptr %3, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 17 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !78
  store i64 %i.d, ptr %i.b, align 8, !tbaa !70
  store ptr @.str.18, ptr %4, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 17, ptr %i.e, align 8, !tbaa !70
  %i.f = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4)
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !77
  store ptr %i.g, ptr %5, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.c, align 8, !tbaa !78
  store i64 %i.i, ptr %i.h, align 8, !tbaa !70
  store ptr @.str.21, ptr %6, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 7, ptr %i.j, align 8, !tbaa !70
  %i.k = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %5, ptr noundef nonnull dead_on_return %6)
  br i1 %i.k, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !77
  store ptr %i.l, ptr %7, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load i64, ptr %i.c, align 8, !tbaa !78
  store i64 %i.n, ptr %i.m, align 8, !tbaa !70
  store ptr @.str.22, ptr %8, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 12, ptr %i.o, align 8, !tbaa !70
  %i.p = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %7, ptr noundef nonnull dead_on_return %8)
  br i1 %i.p, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %1, align 8, !tbaa !77
  store ptr %i.q, ptr %9, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.s = load i64, ptr %i.c, align 8, !tbaa !78
  store i64 %i.s, ptr %i.r, align 8, !tbaa !70
  store ptr @.str.23, ptr %10, align 8, !tbaa !69
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 12, ptr %i.t, align 8, !tbaa !70
  %i.u = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10)
  br i1 %i.u, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %1, align 8, !tbaa !77
  store ptr %i.v, ptr %11, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.x = load i64, ptr %i.c, align 8, !tbaa !78
  store i64 %i.x, ptr %i.w, align 8, !tbaa !70
  store ptr @.str.18, ptr %12, align 8, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 17, ptr %i.y, align 8, !tbaa !70
  %i.z = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %11, ptr noundef nonnull dead_on_return %12)
  br i1 %i.z, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %1, align 8, !tbaa !77
  store ptr %i.aa, ptr %13, align 8, !tbaa !69
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !78
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !70
  store ptr @.str.24, ptr %14, align 8, !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 14, ptr %i.ad, align 8, !tbaa !70
  %i.ae = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %13, ptr noundef nonnull dead_on_return %14)
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %1, align 8, !tbaa !77
  store ptr %i.af, ptr %15, align 8, !tbaa !69
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !78
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !70
  store ptr @.str.19, ptr %16, align 8, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 4, ptr %i.ai, align 8, !tbaa !70
  %i.aj = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %15, ptr noundef nonnull dead_on_return %16)
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !108
  %i.am = or i32 %i.al, 4
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !108
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !78
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZN11OpenImageIO4v3_16CSInfo7setflagEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.sink.split, label %_ZN11OpenImageIO4v3_16CSInfo7setflagEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.i:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %1, align 8, !tbaa !77
  store ptr %i.aq, ptr %17, align 8, !tbaa !69
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.as = load i64, ptr %i.c, align 8, !tbaa !78
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !70
  store ptr @.str.15, ptr %18, align 8, !tbaa !69
  %i.at = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 16, ptr %i.at, align 8, !tbaa !70
  %i.au = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %17, ptr noundef nonnull dead_on_return %18)
  br i1 %i.au, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %1, align 8, !tbaa !77
  store ptr %i.av, ptr %19, align 8, !tbaa !69
  %i.aw = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !78
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !70
  store ptr @.str.17, ptr %20, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 10, ptr %i.ay, align 8, !tbaa !70
  %i.az = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %19, ptr noundef nonnull dead_on_return %20)
  br i1 %i.az, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %1, align 8, !tbaa !77
  store ptr %i.ba, ptr %21, align 8, !tbaa !69
  %i.bb = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bc = load i64, ptr %i.c, align 8, !tbaa !78
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !70
  store ptr @.str.25, ptr %22, align 8, !tbaa !69
  %i.bd = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 21, ptr %i.bd, align 8, !tbaa !70
  %i.be = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %21, ptr noundef nonnull dead_on_return %22)
  br i1 %i.be, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %1, align 8, !tbaa !77
  store ptr %i.bf, ptr %23, align 8, !tbaa !69
  %i.bg = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.bh = load i64, ptr %i.c, align 8, !tbaa !78
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !70
  store ptr @.str.16, ptr %24, align 8, !tbaa !69
  %i.bi = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 8, ptr %i.bi, align 8, !tbaa !70
  %i.bj = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %23, ptr noundef nonnull dead_on_return %24)
  br i1 %i.bj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = load ptr, ptr %1, align 8, !tbaa !77
  store ptr %i.bk, ptr %25, align 8, !tbaa !69
  %i.bl = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bm = load i64, ptr %i.c, align 8, !tbaa !78
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !70
  store ptr @.str.11, ptr %26, align 8, !tbaa !69
  %i.bn = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 6, ptr %i.bn, align 8, !tbaa !70
  %i.bo = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %25, ptr noundef nonnull dead_on_return %26)
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !108
  %i.br = or i32 %i.bq, 9
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !108
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !78
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_111ColorConfig4Impl4initENS0_17basic_string_viewIcSt11char_traitsIcEEE:bb.a
  %i.mq = add i64 %i.mp, %i.mm
  %i.mr = call noundef i64 @llvm.abs.i64(i64 %i.mq, i1 true)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.ms = phi i64 [ %i.mr, %bb.cj ], [ 0, %bb.ci ]
  %i.mt = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !154
  %i.mv = add nsw i64 %i.mu, %i.ms
  %i.mw = sitofp i64 %i.mv to double
  %i.mx = load double, ptr @_ZN11OpenImageIO4v3_15Timer16seconds_per_tickE, align 8, !tbaa !156
  %i.my = fmul double %i.mx, %i.mw
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  store ptr %spec.select.i, ptr %3, align 16, !tbaa !79
  %i.mz = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.my, ptr %i.mz, align 16, !tbaa !79
  %i.na = load ptr, ptr @stdout, align 8, !tbaa !81
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.na, ptr nonnull @.str.152, i64 16, i64 172, ptr nonnull %3)
          to label %bb.cl unwind label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZN11OpenImageIO4v3_15TimerD2Ev.exit

bb.cm:                                            ; preds = %bb.ck
  %i.nb = landingpad { ptr, i32 }
          catch ptr null
  %i.nc = extractvalue { ptr, i32 } %i.nb, 0
  call void @__clang_call_terminate(ptr %i.nc) #41
  unreachable

_ZN11OpenImageIO4v3_15TimerD2Ev.exit:             ; preds = %_ZN11OpenImageIO4v3_111ColorConfig4Impl19debug_print_aliasesEv.exit.thread, %bb.cl
  %i.nd = icmp ne ptr %i.fd, null
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  ret i1 %i.nd

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bf, %bb.v, %bb.be, %bb.w, %bb.q
  %.merged = phi { ptr, i32 } [ %i.fb, %bb.be ], [ %i.bl, %bb.v ], [ %i.fc, %bb.bf ], [ %i.bm, %bb.w ], [ %i.ax, %bb.q ], [ %lpad.loopexit.split-lp244, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN11OpenImageIO4v3_15TimerD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  resume { ptr, i32 } %.merged

bb.cn:                                            ; preds = %bb.bf, %bb.be, %bb.v
  %i.ne = landingpad { ptr, i32 }
          catch ptr null
  %i.nf = extractvalue { ptr, i32 } %i.ne, 0
  call void @__clang_call_terminate(ptr %i.nf) #41
  unreachable
}

declare noundef i32 @_ZN16OpenColorIO_v2_515GetLoggingLevelEv() local_unnamed_addr #0

declare void @_ZN16OpenColorIO_v2_515SetLoggingLevelENS_12LoggingLevelE(i32 noundef) local_unnamed_addr #0

declare void @_ZN16OpenColorIO_v2_56Config14CreateFromFileEPKc(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl5errorIJPKcEEEvS5_DpRKT_(ptr noundef nonnull align 8 dereferenceable(385) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.228", align 16 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.b = cmpxchg weak ptr %i.a, i32 0, i32 1073741824 acquire acquire, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i: ; preds = %bb.a, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i
  %.sroa.0.0.i.i = phi i32 [ %.sroa.0.1.i.i, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i ], [ 1, %bb.a ] ; 5 uses
  %.not.i.i.i = icmp sgt i32 %.sroa.0.0.i.i, 16
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.d = icmp sgt i32 %.sroa.0.0.i.i, 0
  br i1 %i.d, label %.lr.ph.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi i32 [ %i.e, %.lr.ph.i.i.i.i ], [ 0, %bb.b ]
  tail call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.e = add nuw nsw i32 %.03.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.e, %.sroa.0.0.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i:         ; preds = %.lr.ph.i.i.i.i, %bb.b
  %i.f = shl nsw i32 %.sroa.0.0.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.g = tail call noundef i32 @sched_yield() #38 ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i: ; preds = %bb.c, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.0.i.i, %bb.c ], [ %i.f, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i ]
  %i.h = cmpxchg weak ptr %i.a, i32 0, i32 1073741824 acquire acquire, align 4
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i, !llvm.loop !2

_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #38, !noalias !460
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38, !noalias !460
  %i.k = load ptr, ptr %2, align 8, !tbaa !146, !noalias !460
  %i.l = ptrtoint ptr %i.k to i64
  store i64 %i.l, ptr %3, align 16, !noalias !460
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.j, i64 12, ptr nonnull %3)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38, !noalias !460
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  %i.q = load ptr, ptr %4, align 8, !tbaa !77     ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.s = icmp eq ptr %i.q, %i.r                   ; 2 uses
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.d
  br i1 %i.s, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.d
  br i1 %i.s, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !78   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  switch i64 %i.u, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.w = load i8, ptr %i.q, align 1, !tbaa !79
  store i8 %i.w, ptr %i.n, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.q, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.x = load i64, ptr %i.t, align 8, !tbaa !78   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %i.x, ptr %i.y, align 8, !tbaa !78
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !79
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.q, ptr %i.m, align 8, !tbaa !77
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load <2 x i64>, ptr %i.ac, align 8, !tbaa !79
  store <2 x i64> %i.ad, ptr %i.ab, align 8, !tbaa !79
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !79
  store ptr %i.q, ptr %i.m, align 8, !tbaa !77
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !tbaa !79
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.n, ptr %4, align 8, !tbaa !77
  store i64 %i.ae, ptr %i.r, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.r, ptr %4, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.h, %bb.i
  %i.ai = phi ptr [ %i.n, %bb.h ], [ %i.r, %bb.i ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !78
  store i8 0, ptr %i.ai, align 1, !tbaa !79
  %i.ak = load ptr, ptr %4, align 8, !tbaa !77    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.an = load i64, ptr %i.al, align 8, !tbaa !79
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %5 = atomicrmw sub ptr %i.a, i32 1073741824 release, align 4 ; 0 uses
  ret void

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %6 = atomicrmw sub ptr %i.a, i32 1073741824 release, align 4 ; 0 uses
  resume { ptr, i32 } %i.ap
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #38 ; 0 uses
  tail call void @_ZSt9terminatev() #41
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110Filesystem6existsENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil12istarts_withENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl5errorIJNS0_17basic_string_viewIcSt11char_traitsIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(385) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.224", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.b = cmpxchg weak ptr %i.a, i32 0, i32 1073741824 acquire acquire, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i: ; preds = %bb.a, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i
  %.sroa.0.0.i.i = phi i32 [ %.sroa.0.1.i.i, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i ], [ 1, %bb.a ] ; 5 uses
  %.not.i.i.i = icmp sgt i32 %.sroa.0.0.i.i, 16
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.d = icmp sgt i32 %.sroa.0.0.i.i, 0
  br i1 %i.d, label %.lr.ph.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi i32 [ %i.e, %.lr.ph.i.i.i.i ], [ 0, %bb.b ]
  tail call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.e = add nuw nsw i32 %.03.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.e, %.sroa.0.0.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i:         ; preds = %.lr.ph.i.i.i.i, %bb.b
  %i.f = shl nsw i32 %.sroa.0.0.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.g = tail call noundef i32 @sched_yield() #38 ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i: ; preds = %bb.c, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.0.i.i, %bb.c ], [ %i.f, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i ]
  %i.h = cmpxchg weak ptr %i.a, i32 0, i32 1073741824 acquire acquire, align 4
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i, !llvm.loop !2

_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #38, !noalias !463
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38, !noalias !463
  %i.k = load ptr, ptr %2, align 8, !tbaa !69, !noalias !463
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !70, !noalias !463
  %i.n = ptrtoint ptr %i.k to i64
  store i64 %i.n, ptr %3, align 16, !noalias !463
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.m, ptr %.sroa_idx3.i, align 8, !noalias !463
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.j, i64 13, ptr nonnull %3)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38, !noalias !463
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  %i.s = load ptr, ptr %4, align 8, !tbaa !77     ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.u = icmp eq ptr %i.s, %i.t                   ; 2 uses
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.d
  br i1 %i.u, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.d
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !78   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  switch i64 %i.w, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = load i8, ptr %i.s, align 1, !tbaa !79
  store i8 %i.y, ptr %i.p, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.s, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.z = load i64, ptr %i.v, align 8, !tbaa !78   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !78
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !77
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !79
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.s, ptr %i.o, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load <2 x i64>, ptr %i.ae, align 8, !tbaa !79
  store <2 x i64> %i.af, ptr %i.ad, align 8, !tbaa !79
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !79
  store ptr %i.s, ptr %i.o, align 8, !tbaa !77
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aj = load <2 x i64>, ptr %i.ah, align 8, !tbaa !79
  store <2 x i64> %i.aj, ptr %i.ai, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.p, ptr %4, align 8, !tbaa !77
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.t, ptr %4, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.h, %bb.i
  %i.ak = phi ptr [ %i.p, %bb.h ], [ %i.t, %bb.i ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.al, align 8, !tbaa !78
  store i8 0, ptr %i.ak, align 1, !tbaa !79
  %i.am = load ptr, ptr %4, align 8, !tbaa !77    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !79
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %5 = atomicrmw sub ptr %i.a, i32 1073741824 release, align 4 ; 0 uses
  ret void

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %6 = atomicrmw sub ptr %i.a, i32 1073741824 release, align 4 ; 0 uses
  resume { ptr, i32 } %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl5errorIJNS0_17basic_string_viewIcSt11char_traitsIcEEEPKcEEEvS9_DpRKT_(ptr noundef nonnull align 8 dereferenceable(385) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.229", align 16 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.b = cmpxchg weak ptr %i.a, i32 0, i32 1073741824 acquire acquire, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i: ; preds = %bb.a, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i
  %.sroa.0.0.i.i = phi i32 [ %.sroa.0.1.i.i, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i ], [ 1, %bb.a ] ; 5 uses
  %.not.i.i.i = icmp sgt i32 %.sroa.0.0.i.i, 16
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.d = icmp sgt i32 %.sroa.0.0.i.i, 0
  br i1 %i.d, label %.lr.ph.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi i32 [ %i.e, %.lr.ph.i.i.i.i ], [ 0, %bb.b ]
  tail call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.e = add nuw nsw i32 %.03.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.e, %.sroa.0.0.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i:         ; preds = %.lr.ph.i.i.i.i, %bb.b
  %i.f = shl nsw i32 %.sroa.0.0.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.g = tail call noundef i32 @sched_yield() #38 ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i: ; preds = %bb.c, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.0.i.i, %bb.c ], [ %i.f, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i ]
  %i.h = cmpxchg weak ptr %i.a, i32 0, i32 1073741824 acquire acquire, align 4
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i, !llvm.loop !2

_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #38, !noalias !468
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38, !noalias !468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.k = load ptr, ptr %2, align 8, !tbaa !69, !noalias !468
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !70, !noalias !468
  store ptr %i.k, ptr %4, align 16, !tbaa !79, !noalias !468
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !79, !noalias !468
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load ptr, ptr %3, align 8, !tbaa !146, !noalias !470
  store ptr %i.p, ptr %i.o, align 16, !tbaa !79, !alias.scope !469, !noalias !468
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.j, i64 205, ptr nonnull %4)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38, !noalias !468
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  %i.u = load ptr, ptr %5, align 8, !tbaa !77     ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.w = icmp eq ptr %i.u, %i.v                   ; 2 uses
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.d
  br i1 %i.w, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.d
  br i1 %i.w, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !78   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  switch i64 %i.y, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !79
  store i8 %i.aa, ptr %i.r, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.u, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !78  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !78
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !79
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.u, ptr %i.q, align 8, !tbaa !77
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ah = load <2 x i64>, ptr %i.ag, align 8, !tbaa !79
  store <2 x i64> %i.ah, ptr %i.af, align 8, !tbaa !79
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ai = load i64, ptr %i.s, align 8, !tbaa !79
  store ptr %i.u, ptr %i.q, align 8, !tbaa !77
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !tbaa !79
  store <2 x i64> %i.al, ptr %i.ak, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.r, ptr %5, align 8, !tbaa !77
  store i64 %i.ai, ptr %i.v, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.v, ptr %5, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.h, %bb.i
  %i.am = phi ptr [ %i.r, %bb.h ], [ %i.v, %bb.i ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !78
  store i8 0, ptr %i.am, align 1, !tbaa !79
  %i.ao = load ptr, ptr %5, align 8, !tbaa !77    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !79
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %6 = atomicrmw sub ptr %i.a, i32 1073741824 release, align 4 ; 0 uses
  ret void

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %7 = atomicrmw sub ptr %i.a, i32 1073741824 release, align 4 ; 0 uses
  resume { ptr, i32 } %i.at
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef dead_on_return %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = load i32, ptr @_ZN11OpenImageIO4v3_13pvt14oiio_log_timesE, align 4, !tbaa !63
  %.not2 = icmp eq i32 %i.a, 0
  store i8 0, ptr %0, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.b, align 1, !tbaa !148
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  br i1 %.not2, label %_ZN11OpenImageIO4v3_15TimerC2Eb.exit.thread, label %_ZN11OpenImageIO4v3_15TimerC2Eb.exit

_ZN11OpenImageIO4v3_15TimerC2Eb.exit.thread:      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !78
  store i8 0, ptr %i.e, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.g, align 8, !tbaa !162
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit

_ZN11OpenImageIO4v3_15TimerC2Eb.exit:             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.h = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #38 ; 0 uses
  %i.i = load i64, ptr %2, align 8, !tbaa !150
  %i.j = mul nsw i64 %i.i, 1000000000
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !151
  %i.m = add nsw i64 %i.j, %i.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  store i64 %i.m, ptr %i.c, align 8, !tbaa !152
  store i8 1, ptr %0, align 8, !tbaa !153
  %.pre = load i32, ptr @_ZN11OpenImageIO4v3_13pvt14oiio_log_timesE, align 4, !tbaa !63
  %i.n = icmp eq i32 %.pre, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !90
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.q, align 8, !tbaa !78
  store i8 0, ptr %i.p, align 8, !tbaa !79
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.r, align 8, !tbaa !162
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_15TimerC2Eb.exit
  %i.s = load ptr, ptr %1, align 8, !tbaa !69
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !70
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef 0, i64 noundef 0, ptr noundef %i.s, i64 noundef %i.u)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !77   ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.p
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.z = load i64, ptr %i.p, align 8, !tbaa !79
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_ZN11OpenImageIO4v3_15TimerD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #38
  resume { ptr, i32 } %i.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSIN11OpenImageIO4v3_117basic_string_viewIcS2_EEEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_St17basic_string_viewIcS2_EESt6__not_ISB_IPSD_PKS4_EESI_ISB_ISE_PKcEEEE5valueERS4_E4typeESE_.exit: ; preds = %_ZN11OpenImageIO4v3_15TimerC2Eb.exit.thread, %bb.b, %_ZN11OpenImageIO4v3_15TimerC2Eb.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_111ColorConfig4ImplC2EPS1_(ptr noundef nonnull align 8 dereferenceable(385) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.c, align 8, !tbaa !78
  store i8 0, ptr %i.b, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 0, ptr %i.f, align 8, !tbaa !78
  store i8 0, ptr %i.e, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !90
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.i, align 8, !tbaa !78
  store i8 0, ptr %i.h, align 8, !tbaa !79
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.l, align 8, !tbaa !78
  store i8 0, ptr %i.k, align 8, !tbaa !79
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !90
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.o, align 8, !tbaa !78
  store i8 0, ptr %i.n, align 8, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 0, ptr %i.p, align 8, !tbaa !471
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !90
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 0, ptr %i.s, align 8, !tbaa !78
  store i8 0, ptr %i.r, align 8, !tbaa !79
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.t, i8 0, i64 32, i1 false)
  %i.u = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.b, label %bb.d, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket) #38
  %.not.i10.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i10.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, align 8
  store i16 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, i64 4), align 4, !tbaa !166
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, i64 6), align 2, !tbaa !167
  %i.x = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEELb1EED2Ev, ptr nonnull @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket) #38
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.y, align 8, !tbaa !168
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 0, ptr %i.aa, align 8, !tbaa !169
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 329
  store i8 0, ptr %i.ab, align 1, !tbaa !170
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 320
  store <2 x float> <float 0.000000e+00, float 5.000000e-01>, ptr %i.ac, align 8, !tbaa !118
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 0, ptr %i.ad, align 8, !tbaa !171
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !90
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 0, ptr %i.ag, align 8, !tbaa !78
  store i8 0, ptr %i.af, align 8, !tbaa !79
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %1, ptr %i.ah, align 8, !tbaa !140
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i8 0, ptr %i.ai, align 8, !tbaa !145
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.160", align 16 ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = load i32, ptr @_ZN11OpenImageIO4v3_13pvt14oiio_log_timesE, align 4, !tbaa !63
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77
  store ptr %i.c, ptr %3, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !78
  store i64 %i.f, ptr %i.d, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !162
  invoke void @_ZN11OpenImageIO4v3_18log_timeENS0_17basic_string_viewIcSt11char_traitsIcEEERKNS0_5TimerEi(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.h)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !77   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !79
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !148, !range !73, !noundef !74
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %_ZN11OpenImageIO4v3_15TimerD2Ev.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !157  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  %spec.select.i = select i1 %.not.i, ptr @.str.7, ptr %i.s
  %i.t = load i8, ptr %0, align 8, !tbaa !153, !range !73, !noundef !74
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.x = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #38 ; 0 uses
  %i.y = load i64, ptr %1, align 8, !tbaa !150
  %i.z = mul nsw i64 %i.y, 1000000000
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !151
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  %i.ac = sub i64 %i.ab, %i.w
  %i.ad = add i64 %i.ac, %i.z
  %i.ae = call noundef i64 @llvm.abs.i64(i64 %i.ad, i1 true)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.af = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !154
  %i.ai = add nsw i64 %i.ah, %i.af
  %i.aj = sitofp i64 %i.ai to double
  %i.ak = load double, ptr @_ZN11OpenImageIO4v3_15Timer16seconds_per_tickE, align 8, !tbaa !156
  %i.al = fmul double %i.ak, %i.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  store ptr %spec.select.i, ptr %2, align 16, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.al, ptr %i.am, align 16, !tbaa !79
  %i.an = load ptr, ptr @stdout, align 8, !tbaa !81
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.an, ptr nonnull @.str.152, i64 16, i64 172, ptr nonnull %2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %_ZN11OpenImageIO4v3_15TimerD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #41
  unreachable

_ZN11OpenImageIO4v3_15TimerD2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  ret void

bb.i:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #41
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ColorConfig9has_errorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !159    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 6 uses
  %i.c = atomicrmw add ptr %i.b, i32 1 acquire, align 4
  %i.d = and i32 %i.c, 1073741824
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZNK11OpenImageIO4v3_111ColorConfig4Impl8haserrorEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = atomicrmw sub ptr %i.b, i32 1 seq_cst, align 4
  %i.e = add i32 %1, 1073741823
  %i.f = and i32 %i.e, 1073741823                 ; 2 uses
  %i.g = add nuw nsw i32 %i.f, 1
  %i.h = cmpxchg weak ptr %i.b, i32 %i.f, i32 %i.g acquire acquire, align 4
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %_ZNK11OpenImageIO4v3_111ColorConfig4Impl8haserrorEv.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i: ; preds = %bb.b, %bb.e
  %.sroa.0.0.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %bb.e ], [ 1, %bb.b ] ; 5 uses
  %.not.i.i.i.i = icmp sgt i32 %.sroa.0.0.i.i.i, 16
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i
  %i.j = icmp sgt i32 %.sroa.0.0.i.i.i, 0
  br i1 %i.j, label %.lr.ph.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi i32 [ %i.k, %.lr.ph.i.i.i.i.i ], [ 0, %bb.c ]
  tail call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.k = add nuw nsw i32 %.03.i.i.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.k, %.sroa.0.0.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %i.l = shl nsw i32 %.sroa.0.0.i.i.i, 1
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i
  %i.m = tail call noundef i32 @sched_yield() #38 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %.sroa.0.0.i.i.i, %bb.d ], [ %i.l, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i ]
  %i.n = load atomic i32, ptr %i.b seq_cst, align 4
  %i.o = and i32 %i.n, 1073741823                 ; 2 uses
  %i.p = add nuw nsw i32 %i.o, 1
  %i.q = cmpxchg weak ptr %i.b, i32 %i.o, i32 %i.p acquire acquire, align 4
  %i.r = extractvalue { i32, i1 } %i.q, 1
  br i1 %i.r, label %_ZNK11OpenImageIO4v3_111ColorConfig4Impl8haserrorEv.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i, !llvm.loop !10

_ZNK11OpenImageIO4v3_111ColorConfig4Impl8haserrorEv.exit: ; preds = %bb.e, %bb.a, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.t = load i64, ptr %i.s, align 8, !tbaa !78
  %i.u = icmp ne i64 %i.t, 0
  %2 = atomicrmw sub ptr %i.b, i32 1 release, align 4 ; 0 uses
  ret i1 %i.u
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_111ColorConfig8geterrorB5cxx11Eb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !159    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !90, !alias.scope !474
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !78, !alias.scope !474
  store i8 0, ptr %i.b, align 8, !tbaa !79, !alias.scope !474
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 4 uses
  %i.e = cmpxchg weak ptr %i.d, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !474
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit.i, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i: ; preds = %bb.a, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i ], [ 1, %bb.a ] ; 5 uses
  %.not.i.i.i.i = icmp sgt i32 %.sroa.0.0.i.i.i, 16
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i
  %i.g = icmp sgt i32 %.sroa.0.0.i.i.i, 0
  br i1 %i.g, label %.lr.ph.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi i32 [ %i.h, %.lr.ph.i.i.i.i.i ], [ 0, %bb.b ]
  tail call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.h = add nuw nsw i32 %.03.i.i.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.h, %.sroa.0.0.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %i.i = shl nsw i32 %.sroa.0.0.i.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i
  %i.j = tail call noundef i32 @sched_yield() #38 ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i: ; preds = %bb.c, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %.sroa.0.0.i.i.i, %bb.c ], [ %i.i, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i ]
  %i.k = cmpxchg weak ptr %i.d, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !474
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit.i, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i, !llvm.loop !2

_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit.i: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  br i1 %2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #38
  br label %_ZNK11OpenImageIO4v3_111ColorConfig4Impl8geterrorB5cxx11Eb.exit

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_ZNK11OpenImageIO4v3_111ColorConfig4Impl8geterrorB5cxx11Eb.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  %3 = atomicrmw sub ptr %i.d, i32 1073741824 release, align 4, !noalias !474 ; 0 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !77, !alias.scope !474 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.b, align 8, !tbaa !79, !alias.scope !474
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.n

_ZNK11OpenImageIO4v3_111ColorConfig4Impl8geterrorB5cxx11Eb.exit: ; preds = %bb.d, %bb.e
  %4 = atomicrmw sub ptr %i.d, i32 1073741824 release, align 4, !noalias !474 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK11OpenImageIO4v3_111ColorConfig17getNumColorSpacesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !159    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !172
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 96
  %i.j = trunc i64 %i.i to i32
  ret i32 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK11OpenImageIO4v3_111ColorConfig24getColorSpaceNameByIndexEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !159
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = sext i32 %1 to i64
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !172
  %i.e = getelementptr inbounds nuw [96 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -2147483648, 2147483647) i32 @_ZNK11OpenImageIO4v3_111ColorConfig18getColorSpaceIndexENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !159    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !172
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 96                  ; 2 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %wide.trip.count = and i64 %i.i, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !159
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !172
  %i.r = getelementptr inbounds nuw [96 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !77   ; 3 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !69
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #38
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %bb.b, %bb.c
  %i.u = phi i64 [ %i.t, %bb.c ], [ 0, %bb.b ]
  store i64 %i.u, ptr %i.l, align 8, !tbaa !70
  %i.v = load ptr, ptr %1, align 8, !tbaa !69
  store ptr %i.v, ptr %3, align 8, !tbaa !69
  %i.w = load i64, ptr %i.n, align 8, !tbaa !70
  store i64 %i.w, ptr %i.m, align 8, !tbaa !70
  %i.x = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3)
  br i1 %i.x, label %.loopexit.loopexit30, label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !475

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %0, align 8, !tbaa !159   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre38 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !104
  %.phi.trans.insert39 = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre40 = load ptr, ptr %.phi.trans.insert39, align 8, !tbaa !172
  %.pre41 = ptrtoint ptr %.pre38 to i64
  %.pre42 = ptrtoint ptr %.pre40 to i64
  %.pre44 = sub i64 %.pre41, %.pre42
  %.pre46 = sdiv exact i64 %.pre44, 96            ; 2 uses
  %.pre48 = trunc i64 %.pre46 to i32
  %i.y = icmp sgt i32 %.pre48, 0
  br i1 %i.y, label %.lr.ph28, label %.loopexit

.lr.ph28:                                         ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %wide.trip.count36 = and i64 %.pre46, 2147483647
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph28, %bb.g
  %indvars.iv33 = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next34, %bb.g ] ; 3 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !159
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !172
  %i.af = getelementptr inbounds nuw [96 x i8], ptr %i.ae, i64 %indvars.iv33
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !77 ; 3 uses
  store ptr %i.ag, ptr %4, align 8, !tbaa !69
  %.not.i17 = icmp eq ptr %i.ag, null
  br i1 %.not.i17, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit18, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ag) #38
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit18

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit18: ; preds = %bb.e, %bb.f
  %i.ai = phi i64 [ %i.ah, %bb.f ], [ 0, %bb.e ]
  store i64 %i.ai, ptr %i.z, align 8, !tbaa !70
  %i.aj = load ptr, ptr %1, align 8, !tbaa !69
  store ptr %i.aj, ptr %5, align 8, !tbaa !69
  %i.ak = load i64, ptr %i.ab, align 8, !tbaa !70
  store i64 %i.ak, ptr %i.aa, align 8, !tbaa !70
  %i.al = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ColorConfig10equivalentENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5)
  br i1 %i.al, label %.loopexit.loopexit.split.loop.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit18
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %.loopexit, label %bb.e, !llvm.loop !476

.loopexit.loopexit30:                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit18
  %i.an = trunc nuw nsw i64 %indvars.iv33 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.loopexit.loopexit.split.loop.exit, %bb.a, %.loopexit.loopexit30, %._crit_edge
  %.2 = phi i32 [ -1, %bb.a ], [ -1, %._crit_edge ], [ %i.am, %.loopexit.loopexit30 ], [ %i.an, %.loopexit.loopexit.split.loop.exit ], [ -1, %bb.g ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ColorConfig10equivalentENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef captures(none) dead_on_return %1, ptr nofree noundef captures(none) dead_on_return %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 4 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 4 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !70   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !69
  store ptr %i.g, ptr %5, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.b, ptr %i.h, align 8, !tbaa !70
  %i.i = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.i, ptr %6, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.e, ptr %i.j, align 8, !tbaa !70
  %i.k = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %5, ptr noundef nonnull dead_on_return %6)
  br i1 %i.k, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %i.l = load ptr, ptr %1, align 8, !tbaa !69
  %i.m = load i64, ptr %i.a, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.n = load ptr, ptr %0, align 8, !tbaa !159, !noalias !481
  store ptr %i.l, ptr %4, align 8, !tbaa !69, !noalias !481
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.m, ptr %i.o, align 8, !tbaa !70, !noalias !481
  call void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %7, ptr noundef nonnull align 8 dereferenceable(385) %i.n, ptr noundef nonnull dead_on_return %4)
end_hunk_1
begin_hunk_2_@_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE:bb.a
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.z, align 8, !tbaa !97
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !98
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !100
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #38, !inline_history !0
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !100
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #38, !inline_history !0
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i13 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i13, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.m ], [ %i.am, %bb.n ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.o, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #38
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %bb.bg

bb.p:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.q:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %bb.bn

.critedge:                                        ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !95 ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18, label %bb.r

bb.r:                                             ; preds = %.critedge
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.as, align 8, !tbaa !97
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !98
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !100
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #38, !inline_history !0
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !100
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #38, !inline_history !0
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18

bb.t:                                             ; preds = %bb.r
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i15 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i15, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

bb.v:                                             ; preds = %bb.t
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i17 = phi i32 [ %i.av, %bb.u ], [ %i.bf, %bb.v ]
  %i.bg = icmp eq i32 %.0.i.i.i.i17, 1
  br i1 %i.bg, label %bb.w, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18, !prof !101

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #38
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18: ; preds = %.critedge, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit18, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 4 uses
  %i.bi = cmpxchg weak ptr %i.bh, i32 0, i32 1073741824 acquire acquire, align 4
  %i.bj = extractvalue { i32, i1 } %i.bi, 1
  br i1 %i.bj, label %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i: ; preds = %bb.x, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i
  %.sroa.0.0.i.i = phi i32 [ %.sroa.0.1.i.i, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i ], [ 1, %bb.x ] ; 5 uses
  %.not.i.i.i19 = icmp sgt i32 %.sroa.0.0.i.i, 16
  br i1 %.not.i.i.i19, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.bk = icmp sgt i32 %.sroa.0.0.i.i, 0
  br i1 %i.bk, label %.lr.ph.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi i32 [ %i.bl, %.lr.ph.i.i.i.i ], [ 0, %bb.y ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.bl = add nuw nsw i32 %.03.i.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.bl, %.sroa.0.0.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i:         ; preds = %.lr.ph.i.i.i.i, %bb.y
  %i.bm = shl nsw i32 %.sroa.0.0.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

bb.z:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.bn = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i: ; preds = %bb.z, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.0.i.i, %bb.z ], [ %i.bm, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i ]
  %i.bo = cmpxchg weak ptr %i.bh, i32 0, i32 1073741824 acquire acquire, align 4
  %i.bp = extractvalue { i32, i1 } %i.bo, 1
  br i1 %i.bp, label %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i, !llvm.loop !2

_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i, %bb.x
  %i.bq = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.bq, ptr %6, align 8, !tbaa !69
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !70
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !70
  store ptr @.str.19, ptr %7, align 8, !tbaa !69
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 4, ptr %i.bu, align 8, !tbaa !70
  %i.bv = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  br i1 %i.bv, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.bw, ptr %8, align 8, !tbaa !69
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.by = load i64, ptr %i.bs, align 8, !tbaa !70
  store i64 %i.by, ptr %i.bx, align 8, !tbaa !70
  store ptr @.str.18, ptr %9, align 8, !tbaa !69
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 17, ptr %i.bz, align 8, !tbaa !70
  %i.ca = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %8, ptr noundef nonnull dead_on_return %9)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.ca, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !78 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !77
  store ptr %i.cf, ptr %0, align 8, !tbaa !69
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cc, ptr %i.cg, align 8, !tbaa !70
  br label %bb.bf

bb.af:                                            ; preds = %bb.ba, %bb.aw, %bb.as, %bb.aq, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ab, %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %26 = atomicrmw sub ptr %i.bh, i32 1073741824 release, align 4 ; 0 uses
  br label %bb.bn

bb.ag:                                            ; preds = %bb.ad, %bb.ac
  %i.ci = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.ci, ptr %10, align 8, !tbaa !69
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ck = load i64, ptr %i.bs, align 8, !tbaa !70
  store i64 %i.ck, ptr %i.cj, align 8, !tbaa !70
  store ptr @.str.16, ptr %11, align 8, !tbaa !69
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 8, ptr %i.cl, align 8, !tbaa !70
  %i.cm = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %10, ptr noundef nonnull dead_on_return %11)
          to label %bb.ah unwind label %bb.af

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.cm, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cn = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.cn, ptr %12, align 8, !tbaa !69
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cp = load i64, ptr %i.bs, align 8, !tbaa !70
  store i64 %i.cp, ptr %i.co, align 8, !tbaa !70
  store ptr @.str.17, ptr %13, align 8, !tbaa !69
  %i.cq = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 10, ptr %i.cq, align 8, !tbaa !70
  %i.cr = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %12, ptr noundef nonnull dead_on_return %13)
          to label %bb.aj unwind label %bb.af

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.cr, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cs = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.cs, ptr %14, align 8, !tbaa !69
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cu = load i64, ptr %i.bs, align 8, !tbaa !70
  store i64 %i.cu, ptr %i.ct, align 8, !tbaa !70
  store ptr @.str.15, ptr %15, align 8, !tbaa !69
  %i.cv = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 16, ptr %i.cv, align 8, !tbaa !70
  %i.cw = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %14, ptr noundef nonnull dead_on_return %15)
          to label %bb.al unwind label %bb.af

bb.al:                                            ; preds = %bb.ak
  br i1 %i.cw, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cx = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.cx, ptr %16, align 8, !tbaa !69
  %i.cy = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cz = load i64, ptr %i.bs, align 8, !tbaa !70
  store i64 %i.cz, ptr %i.cy, align 8, !tbaa !70
  store ptr @.str.11, ptr %17, align 8, !tbaa !69
  %i.da = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 6, ptr %i.da, align 8, !tbaa !70
  %i.db = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %16, ptr noundef nonnull dead_on_return %17)
          to label %bb.an unwind label %bb.af

bb.an:                                            ; preds = %bb.am
  br i1 %i.db, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an, %bb.al, %bb.aj, %bb.ah
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !78 ; 2 uses
  %.not = icmp eq i64 %i.dd, 0
  br i1 %.not, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !77
  store ptr %i.df, ptr %0, align 8, !tbaa !69
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dd, ptr %i.dg, align 8, !tbaa !70
  br label %bb.bf

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %i.dh = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.dh, ptr %18, align 8, !tbaa !69
  %i.di = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dj = load i64, ptr %i.bs, align 8, !tbaa !70
  store i64 %i.dj, ptr %i.di, align 8, !tbaa !70
  store ptr @.str.26, ptr %19, align 8, !tbaa !69
  %i.dk = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 6, ptr %i.dk, align 8, !tbaa !70
  %i.dl = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %18, ptr noundef nonnull dead_on_return %19)
          to label %bb.ar unwind label %bb.af

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.dl, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dm = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.dm, ptr %20, align 8, !tbaa !69
  %i.dn = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.do = load i64, ptr %i.bs, align 8, !tbaa !70
  store i64 %i.do, ptr %i.dn, align 8, !tbaa !70
  store ptr @.str.27, ptr %21, align 8, !tbaa !69
  %i.dp = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 13, ptr %i.dp, align 8, !tbaa !70
  %i.dq = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %20, ptr noundef nonnull dead_on_return %21)
          to label %bb.at unwind label %bb.af

bb.at:                                            ; preds = %bb.as
  br i1 %i.dq, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at, %bb.ar
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !78 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !77
  store ptr %i.dv, ptr %0, align 8, !tbaa !69
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ds, ptr %i.dw, align 8, !tbaa !70
  br label %bb.bf

bb.aw:                                            ; preds = %bb.au, %bb.at
  %i.dx = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.dx, ptr %22, align 8, !tbaa !69
  %i.dy = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.dz = load i64, ptr %i.bs, align 8, !tbaa !70
  store i64 %i.dz, ptr %i.dy, align 8, !tbaa !70
  store ptr @.str.10, ptr %23, align 8, !tbaa !69
  %i.ea = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 12, ptr %i.ea, align 8, !tbaa !70
  %i.eb = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %22, ptr noundef nonnull dead_on_return %23)
          to label %bb.ax unwind label %bb.af

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.eb, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !78 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !77
  store ptr %i.eg, ptr %0, align 8, !tbaa !69
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ed, ptr %i.eh, align 8, !tbaa !70
  br label %bb.bf

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %i.ei = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.ei, ptr %24, align 8, !tbaa !69
  %i.ej = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ek = load i64, ptr %i.bs, align 8, !tbaa !70
  store i64 %i.ek, ptr %i.ej, align 8, !tbaa !70
  store ptr @.str.20, ptr %25, align 8, !tbaa !69
  %i.el = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 6, ptr %i.el, align 8, !tbaa !70
  %i.em = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %24, ptr noundef nonnull dead_on_return %25)
          to label %bb.bb unwind label %bb.af

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.em, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !78 ; 2 uses
  %.not12 = icmp eq i64 %i.eo, 0
  br i1 %.not12, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !77
  store ptr %i.eq, ptr %0, align 8, !tbaa !69
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.eo, ptr %i.er, align 8, !tbaa !70
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.es = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.es, ptr %0, align 8, !tbaa !69
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eu = load i64, ptr %i.bs, align 8, !tbaa !70
  store i64 %i.eu, ptr %i.et, align 8, !tbaa !70
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.az, %bb.av, %bb.ap, %bb.ae
  %27 = atomicrmw sub ptr %i.bh, i32 1073741824 release, align 4 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bf
  %i.ev = load ptr, ptr %i.b, align 8, !tbaa !95  ; 8 uses
  %.not.i.i20 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i20, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 4 uses
  %i.ex = load atomic i64, ptr %i.ew acquire, align 8 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 4294967297
  %i.ez = trunc i64 %i.ex to i32                  ; 2 uses
  br i1 %i.ey, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.ew, align 8, !tbaa !97
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i32 0, ptr %i.fa, align 4, !tbaa !98
  %i.fb = load ptr, ptr %i.ev, align 8, !tbaa !100
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #38, !inline_history !3
  %i.fe = load ptr, ptr %i.ev, align 8, !tbaa !100
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #38, !inline_history !3
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bj:                                            ; preds = %bb.bh
  %i.fh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i21 = icmp eq i8 %i.fh, 0
  br i1 %.not.i.i.i21, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fi = add nsw i32 %i.ez, -1
  store i32 %i.fi, ptr %i.ew, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22

bb.bl:                                            ; preds = %bb.bj
  %i.fj = atomicrmw volatile add ptr %i.ew, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i23 = phi i32 [ %i.ez, %bb.bk ], [ %i.fj, %bb.bl ]
  %i.fk = icmp eq i32 %.0.i.i.i.i23, 1
  br i1 %i.fk, label %bb.bm, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #38
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bg, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  ret void

bb.bn:                                            ; preds = %bb.p, %bb.q, %bb.af
  %.pn10 = phi { ptr, i32 } [ %i.ch, %bb.af ], [ %i.ap, %bb.q ], [ %i.ao, %bb.p ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  resume { ptr, i32 } %.pn10
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_121equivalent_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEES4_(ptr nofree noundef readonly captures(none) dead_on_return %0, ptr nofree noundef readonly captures(none) dead_on_return %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, !prof !64

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.7, ptr %2, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_111ColorConfigC1ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr noundef nonnull dead_on_return %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @__cxa_atexit(ptr @_ZN11OpenImageIO4v3_111ColorConfigD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr nonnull @__dso_handle) #38 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  resume { ptr, i32 } %i.f

_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.g = load ptr, ptr %0, align 8, !tbaa !69
  store ptr %i.g, ptr %3, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !70
  store i64 %i.j, ptr %i.h, align 8, !tbaa !70
  %i.k = load ptr, ptr %1, align 8, !tbaa !69
  store ptr %i.k, ptr %4, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !70
  store i64 %i.n, ptr %i.l, align 8, !tbaa !70
  %i.o = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ColorConfig10equivalentENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4)
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_7ustringES2_S2_S2_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.19") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr %2, ptr %3, ptr %4, ptr %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.OpenImageIO::v3_1::ColorProcCacheKey", align 8 ; 11 uses
  %12 = alloca %"class.std::shared_ptr.19", align 16 ; 14 uses
  %13 = alloca %"class.std::shared_ptr.16", align 16 ; 15 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %15 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %16 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %17 = alloca %"class.std::shared_ptr.42", align 8 ; 10 uses
  %18 = alloca %"class.std::vector.34", align 8   ; 12 uses
  %19 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %20 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %21 = alloca %"class.std::vector.34", align 8   ; 12 uses
  %22 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %23 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %24 = alloca %"class.std::shared_ptr.45", align 8 ; 7 uses
  %25 = alloca %"class.std::shared_ptr.16", align 16 ; 7 uses
  %26 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %27 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %28 = alloca %"class.std::shared_ptr.19", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !78
  store i8 0, ptr %i.a, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  store ptr %2, ptr %11, align 8, !tbaa !146
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %3, ptr %i.c, align 8, !tbaa !146
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %4, ptr %i.d, align 8, !tbaa !146
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %5, ptr %i.e, align 8, !tbaa !146
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 32
  %.not.i.i = icmp eq ptr %2, null                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.f, i8 0, i64 41, i1 false)
  br i1 %.not.i.i, label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %2, i64 -64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !180
  br label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit.i

_ZNK11OpenImageIO4v3_17ustring4hashEv.exit.i:     ; preds = %bb.b, %bb.a
  %.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %.not.i5.i = icmp eq ptr %3, null               ; 2 uses
  br i1 %.not.i5.i, label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i, label %bb.c

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit.i
  %i.i = getelementptr inbounds i8, ptr %3, i64 -64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !180
  %i.k = mul i64 %i.j, 14033
  br label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i

_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i:    ; preds = %bb.c, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit.i
  %.0.i6.i = phi i64 [ %i.k, %bb.c ], [ 0, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit.i ]
  %.not.i8.i = icmp eq ptr %4, null               ; 2 uses
  br i1 %.not.i8.i, label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i, label %bb.d

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i
  %i.l = getelementptr inbounds i8, ptr %4, i64 -64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !180
  %i.n = mul i64 %i.m, 823
  br label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i

_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i:   ; preds = %bb.d, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i
  %.0.i9.i = phi i64 [ %i.n, %bb.d ], [ 0, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i ]
  %.not.i11.i = icmp eq ptr %5, null              ; 2 uses
  br i1 %.not.i11.i, label %_ZN11OpenImageIO4v3_117ColorProcCacheKeyC2ENS0_7ustringES2_S2_S2_S2_S2_S2_S2_S2_b.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i
  %i.o = getelementptr inbounds i8, ptr %5, i64 -64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !180
  %i.q = mul i64 %i.p, 28411
  br label %_ZN11OpenImageIO4v3_117ColorProcCacheKeyC2ENS0_7ustringES2_S2_S2_S2_S2_S2_S2_S2_b.exit

_ZN11OpenImageIO4v3_117ColorProcCacheKeyC2ENS0_7ustringES2_S2_S2_S2_S2_S2_S2_S2_b.exit: ; preds = %bb.e, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i
  %.0.i12.i = phi i64 [ %i.q, %bb.e ], [ 0, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i ]
  %i.r = add i64 %.0.i6.i, %.0.i.i
end_hunk_2
begin_hunk_3_@_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_7ustringES2_S2_S2_:bb.a

_ZNSt12__shared_ptrIN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_57ContextEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS3_E4typeESE_.exit, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  br label %bb.av

bb.ar:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.as:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit55
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.at:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit58
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.au:                                            ; preds = %bb.aa
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  br label %bb.dg

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.ec = phi ptr [ %i.el, %.lr.ph ], [ %i.ch, %.preheader ]
  %.017192 = phi i64 [ %i.ej, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.ed = load ptr, ptr %24, align 8, !tbaa !189
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.ec, i64 %.017192
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !77
  %i.eg = load ptr, ptr %21, align 8, !tbaa !176
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.eg, i64 %.017192
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !77
  call void @_ZN16OpenColorIO_v2_57Context12setStringVarEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef %i.ef, ptr noundef %i.ei) #38
  %i.ej = add nuw i64 %.017192, 1                 ; 2 uses
  %i.ek = load ptr, ptr %i.bs, align 8, !tbaa !177
  %i.el = load ptr, ptr %18, align 8, !tbaa !176  ; 2 uses
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = ashr exact i64 %i.eo, 5
  %i.eq = icmp ult i64 %i.ej, %i.ep
  br i1 %i.eq, label %.lr.ph, label %._crit_edge, !llvm.loop !511

bb.av:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #38
  %i.er = load ptr, ptr %1, align 8, !tbaa !159
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !86
  invoke void @_ZNK16OpenColorIO_v2_56Config12getProcessorERKSt10shared_ptrIKNS_7ContextEEPKcS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.16") align 8 %25, ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef %i.ao, ptr noundef %i.ay)
          to label %bb.aw unwind label %bb.bl

bb.aw:                                            ; preds = %bb.av
  %i.et = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ev = load <2 x ptr>, ptr %25, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.ev, ptr %13, align 16, !tbaa !110
  %.not.i.i.i.i63 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i.i63, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 4 uses
  %i.ey = load atomic i64, ptr %i.ex acquire, align 8 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 4294967297
  %i.fa = trunc i64 %i.ey to i32                  ; 2 uses
  br i1 %i.ez, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.ex, align 8, !tbaa !97
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  store i32 0, ptr %i.fb, align 4, !tbaa !98
  %i.fc = load ptr, ptr %i.ew, align 8, !tbaa !100
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #38, !inline_history !17
  %i.ff = load ptr, ptr %i.ew, align 8, !tbaa !100
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #38, !inline_history !17
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit

bb.az:                                            ; preds = %bb.ax
  %i.fi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.fi, 0
  br i1 %.not.i.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fj = add nsw i32 %i.fa, -1
  store i32 %i.fj, ptr %i.ex, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.fk = atomicrmw volatile add ptr %i.ex, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i = phi i32 [ %i.fa, %bb.ba ], [ %i.fk, %bb.bb ]
  %i.fl = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fl, label %bb.bc, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit, !prof !101

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #38
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit: ; preds = %bb.aw, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bc
  %i.fm = load ptr, ptr %i.et, align 8, !tbaa !95 ; 8 uses
  %.not.i.i64 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i64, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 4 uses
  %i.fo = load atomic i64, ptr %i.fn acquire, align 8 ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 4294967297
  %i.fq = trunc i64 %i.fo to i32                  ; 2 uses
  br i1 %i.fp, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.fn, align 8, !tbaa !97
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 0, ptr %i.fr, align 4, !tbaa !98
  %i.fs = load ptr, ptr %i.fm, align 8, !tbaa !100
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #38, !inline_history !4
  %i.fv = load ptr, ptr %i.fm, align 8, !tbaa !100
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #38, !inline_history !4
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bf:                                            ; preds = %bb.bd
  %i.fy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i65 = icmp eq i8 %i.fy, 0
  br i1 %.not.i.i.i65, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fz = add nsw i32 %i.fq, -1
  store i32 %i.fz, ptr %i.fn, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66

bb.bh:                                            ; preds = %bb.bf
  %i.ga = atomicrmw volatile add ptr %i.fn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i67 = phi i32 [ %i.fq, %bb.bg ], [ %i.ga, %bb.bh ]
  %i.gb = icmp eq i32 %.0.i.i.i.i67, 1
  br i1 %i.gb, label %bb.bi, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #38
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit, %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #38
  %i.gc = load ptr, ptr %1, align 8, !tbaa !159   ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 216 ; 3 uses
  %i.ge = cmpxchg weak ptr %i.gd, i32 0, i32 1073741824 acquire acquire, align 4
  %i.gf = extractvalue { i32, i1 } %i.ge, 1
  br i1 %i.gf, label %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i ], [ 1, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 5 uses
  %.not.i.i.i.i68 = icmp sgt i32 %.sroa.0.0.i.i.i, 16
  br i1 %.not.i.i.i.i68, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i
  %i.gg = icmp sgt i32 %.sroa.0.0.i.i.i, 0
  br i1 %i.gg, label %.lr.ph.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bj, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi i32 [ %i.gh, %.lr.ph.i.i.i.i.i ], [ 0, %bb.bj ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.gh = add nuw nsw i32 %.03.i.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.gh, %.sroa.0.0.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i, %bb.bj
  %i.gi = shl nsw i32 %.sroa.0.0.i.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i

bb.bk:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i
  %i.gj = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i: ; preds = %bb.bk, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %.sroa.0.0.i.i.i, %bb.bk ], [ %i.gi, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i ]
  %i.gk = cmpxchg weak ptr %i.gd, i32 0, i32 1073741824 acquire acquire, align 4
  %i.gl = extractvalue { i32, i1 } %i.gk, 1
  br i1 %i.gl, label %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i, !llvm.loop !2

_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 224
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 232
  store i64 0, ptr %i.gn, align 8, !tbaa !78
  %i.go = load ptr, ptr %i.gm, align 8, !tbaa !77
  store i8 0, ptr %i.go, align 1, !tbaa !79
  %29 = atomicrmw sub ptr %i.gd, i32 1073741824 release, align 4 ; 0 uses
  br label %bb.bn

bb.bl:                                            ; preds = %bb.av
  %i.gp = landingpad { ptr, i32 }
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
          catch ptr null                          ; 2 uses
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  %i.gr = extractvalue { ptr, i32 } %i.gp, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #38
  %i.gs = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE) #38
  %i.gt = icmp eq i32 %i.gr, %i.gs
  %i.gu = call ptr @__cxa_begin_catch(ptr %i.gq) #38 ; 2 uses
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EE5resetEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #38
  br i1 %i.gt, label %bb.bm, label %bb.cn

bb.bm:                                            ; preds = %bb.bl
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !100
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  %i.gy = call noundef ptr %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #38
  %i.gz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.gy)
          to label %.invoke unwind label %bb.cp   ; 0 uses

.invoke:                                          ; preds = %bb.cn, %bb.bm
  invoke void @__cxa_end_catch()
          to label %bb.bn unwind label %bb.cq

bb.bn:                                            ; preds = %.invoke, %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit
  %i.ha = load ptr, ptr %13, align 16, !tbaa !113 ; 2 uses
  %.not191 = icmp eq ptr %i.ha, null
  br i1 %.not191, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hb = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_59Processor6isNoOpEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ha)
          to label %bb.bp unwind label %bb.cq

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.hb, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hc = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #42
          to label %bb.br unwind label %bb.cq     ; 13 uses

bb.br:                                            ; preds = %bb.bq
  %i.hd = load ptr, ptr %13, align 16, !tbaa !113 ; 5 uses
  store ptr %i.hd, ptr %26, align 8, !tbaa !113
  %i.he = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !95 ; 5 uses
  store ptr %i.hg, ptr %i.he, align 8, !tbaa !95
  %.not.i.i.i69 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i69, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread, label %bb.bs

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread: ; preds = %bb.br
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.hc, align 8, !tbaa !100
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  store ptr %i.hd, ptr %i.hh, align 8, !tbaa !113
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store ptr null, ptr %i.hi, align 8, !tbaa !95
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

bb.bs:                                            ; preds = %bb.br
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 3 uses
  %i.hk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i70 = icmp eq i8 %i.hk, 0
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i70, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread255

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread255: ; preds = %bb.bs
  %i.hn = load i32, ptr %i.hj, align 4, !tbaa !63
  %i.ho = add nsw i32 %i.hn, 1
  store i32 %i.ho, ptr %i.hj, align 4, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.hc, align 8, !tbaa !100
  store ptr %i.hd, ptr %i.hl, align 8, !tbaa !113
  store ptr %i.hg, ptr %i.hm, align 8, !tbaa !95
  br label %bb.bt

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit: ; preds = %bb.bs
  %i.hp = atomicrmw volatile add ptr %i.hj, i32 1 acq_rel, align 4 ; 0 uses
  %.pr180.pre = load ptr, ptr %i.he, align 8, !tbaa !95 ; 3 uses
  %.pre195 = load ptr, ptr %26, align 8, !tbaa !113 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.hc, align 8, !tbaa !100
  store ptr %.pre195, ptr %i.hl, align 8, !tbaa !113
  store ptr %.pr180.pre, ptr %i.hm, align 8, !tbaa !95
  %.not.i.i.i.i71 = icmp eq ptr %.pr180.pre, null
  br i1 %.not.i.i.i.i71, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread255, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit
  %.pr180258 = phi ptr [ %i.hg, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread255 ], [ %.pr180.pre, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ]
  %i.hq = phi ptr [ %i.hd, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread255 ], [ %.pre195, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.pr180258, i64 8 ; 3 uses
  %i.hs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i72 = icmp eq i8 %i.hs, 0
  br i1 %.not.i.i.i.i.i72, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ht = load i32, ptr %i.hr, align 4, !tbaa !63
  %i.hu = add nsw i32 %i.ht, 1
  store i32 %i.hu, ptr %i.hr, align 4, !tbaa !63
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

bb.bv:                                            ; preds = %bb.bt
  %i.hv = atomicrmw volatile add ptr %i.hr, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %26, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread, %bb.bv, %bb.bu, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit
  %i.hw = phi ptr [ %i.hl, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ], [ %i.hl, %bb.bu ], [ %i.hl, %bb.bv ], [ %i.hh, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread ]
  %i.hx = phi ptr [ %.pre195, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ], [ %i.hq, %bb.bu ], [ %.pre.i, %bb.bv ], [ %i.hd, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread ]
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  invoke void @_ZNK16OpenColorIO_v2_59Processor22getDefaultCPUProcessorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.13") align 8 %i.hy, ptr noundef nonnull align 8 dereferenceable(8) %i.hx)
          to label %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit unwind label %bb.cr

_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i
  %i.hz = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #42
          to label %bb.ca unwind label %bb.bw     ; 5 uses

bb.bw:                                            ; preds = %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit
  %i.ia = landingpad { ptr, i32 }
          catch ptr null
  %i.ib = extractvalue { ptr, i32 } %i.ia, 0
  %i.ic = call ptr @__cxa_begin_catch(ptr %i.ib) #38 ; 0 uses
  call void @_ZN11OpenImageIO4v3_119ColorProcessor_OCIOD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.hc) #38
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef 40) #40
  invoke void @__cxa_rethrow() #39
          to label %bb.bz unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.thread unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  call void @__clang_call_terminate(ptr %i.if) #41
  unreachable

bb.bz:                                            ; preds = %bb.bw
  unreachable

bb.ca:                                            ; preds = %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store i32 1, ptr %i.ig, align 8, !tbaa !97
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  store i32 1, ptr %i.ih, align 4, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.hz, align 8, !tbaa !100
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store ptr %i.hc, ptr %i.ii, align 8, !tbaa !192
  store ptr %i.hc, ptr %12, align 16, !tbaa !193
  %i.ij = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !95 ; 8 uses
  store ptr %i.hz, ptr %i.ij, align 8, !tbaa !95
  %.not.i.i.i.i74 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i.i74, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 4 uses
  %i.im = load atomic i64, ptr %i.il acquire, align 8 ; 2 uses
  %i.in = icmp eq i64 %i.im, 4294967297
  %i.io = trunc i64 %i.im to i32                  ; 2 uses
  br i1 %i.in, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.il, align 8, !tbaa !97
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  store i32 0, ptr %i.ip, align 4, !tbaa !98
  %i.iq = load ptr, ptr %i.ik, align 8, !tbaa !100
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #38, !inline_history !18
  %i.it = load ptr, ptr %i.ik, align 8, !tbaa !100
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #38, !inline_history !18
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cd:                                            ; preds = %bb.cb
  %i.iw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i75 = icmp eq i8 %i.iw, 0
  br i1 %.not.i.i.i.i.i75, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ix = add nsw i32 %i.io, -1
  store i32 %i.ix, ptr %i.il, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i76

bb.cf:                                            ; preds = %bb.cd
  %i.iy = atomicrmw volatile add ptr %i.il, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i76

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i76: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i.i.i77 = phi i32 [ %i.io, %bb.ce ], [ %i.iy, %bb.cf ]
  %i.iz = icmp eq i32 %.0.i.i.i.i.i.i77, 1
  br i1 %i.iz, label %bb.cg, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i76
end_hunk_3
begin_hunk_4_@_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_7ustringES2_S2_S2_:bb.a
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.pr = load ptr, ptr %i.pq, align 8
  call void %i.pr(ptr noundef nonnull align 8 dereferenceable(16) %i.pj) #38, !inline_history !7
  %i.ps = load ptr, ptr %i.pj, align 8, !tbaa !100
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 24
  %i.pu = load ptr, ptr %i.pt, align 8
  call void %i.pu(ptr noundef nonnull align 8 dereferenceable(16) %i.pj) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141

bb.es:                                            ; preds = %bb.eq
  %i.pv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i138 = icmp eq i8 %i.pv, 0
  br i1 %.not.i.i.i138, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.pw = add nsw i32 %i.pn, -1
  store i32 %i.pw, ptr %i.pk, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i139

bb.eu:                                            ; preds = %bb.es
  %i.px = atomicrmw volatile add ptr %i.pk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i139

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i139: ; preds = %bb.eu, %bb.et
  %.0.i.i.i.i140 = phi i32 [ %i.pn, %bb.et ], [ %i.px, %bb.eu ]
  %i.py = icmp eq i32 %.0.i.i.i.i140, 1
  br i1 %i.py, label %bb.ev, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141, !prof !101

bb.ev:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i139
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pj) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141: ; preds = %bb.ep, %bb.er, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i139, %bb.ev
  %i.pz = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !95 ; 8 uses
  %.not.i.i142 = icmp eq ptr %i.qa, null
  br i1 %.not.i.i142, label %bb.fe, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 8 ; 4 uses
  %i.qc = load atomic i64, ptr %i.qb acquire, align 8 ; 2 uses
  %i.qd = icmp eq i64 %i.qc, 4294967297
  %i.qe = trunc i64 %i.qc to i32                  ; 2 uses
  br i1 %i.qd, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  store i32 0, ptr %i.qb, align 8, !tbaa !97
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qa, i64 12
  store i32 0, ptr %i.qf, align 4, !tbaa !98
  %i.qg = load ptr, ptr %i.qa, align 8, !tbaa !100
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  %i.qi = load ptr, ptr %i.qh, align 8
  call void %i.qi(ptr noundef nonnull align 8 dereferenceable(16) %i.qa) #38, !inline_history !4
  %i.qj = load ptr, ptr %i.qa, align 8, !tbaa !100
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 24
  %i.ql = load ptr, ptr %i.qk, align 8
  call void %i.ql(ptr noundef nonnull align 8 dereferenceable(16) %i.qa) #38, !inline_history !4
  br label %bb.fe

bb.ey:                                            ; preds = %bb.ew
  %i.qm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i143 = icmp eq i8 %i.qm, 0
  br i1 %.not.i.i.i143, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.qn = add nsw i32 %i.qe, -1
  store i32 %i.qn, ptr %i.qb, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144

bb.fa:                                            ; preds = %bb.ey
  %i.qo = atomicrmw volatile add ptr %i.qb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144: ; preds = %bb.fa, %bb.ez
  %.0.i.i.i.i145 = phi i32 [ %i.qe, %bb.ez ], [ %i.qo, %bb.fa ]
  %i.qp = icmp eq i32 %.0.i.i.i.i145, 1
  br i1 %i.qp, label %bb.fb, label %bb.fe, !prof !101

bb.fb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qa) #38
  br label %bb.fe

bb.fc:                                            ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEC2ERKS3_.exit
  %i.qq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %28) #38
  br label %bb.fd

bb.fd:                                            ; preds = %bb.ei, %bb.ej, %.body115.thread, %bb.fc, %bb.dj
  %.pn40 = phi { ptr, i32 } [ %i.qq, %bb.fc ], [ %i.ow, %bb.ei ], [ %i.nj, %.body115.thread ], [ %.pn31.pn.pn.pn.pn, %bb.dj ], [ %i.ox, %bb.ej ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #38
  br label %bb.fl

bb.fe:                                            ; preds = %bb.fb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144, %bb.ex, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  %.pre203 = load ptr, ptr %i.pb, align 8, !tbaa !95 ; 8 uses
  %.not.i.i147 = icmp eq ptr %.pre203, null
  br i1 %.not.i.i147, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.qr = getelementptr inbounds nuw i8, ptr %.pre203, i64 8 ; 4 uses
  %i.qs = load atomic i64, ptr %i.qr acquire, align 8 ; 2 uses
  %i.qt = icmp eq i64 %i.qs, 4294967297
  %i.qu = trunc i64 %i.qs to i32                  ; 2 uses
  br i1 %i.qt, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  store i32 0, ptr %i.qr, align 8, !tbaa !97
  %i.qv = getelementptr inbounds nuw i8, ptr %.pre203, i64 12
  store i32 0, ptr %i.qv, align 4, !tbaa !98
  %i.qw = load ptr, ptr %.pre203, align 8, !tbaa !100
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.qy = load ptr, ptr %i.qx, align 8
  call void %i.qy(ptr noundef nonnull align 8 dereferenceable(16) %.pre203) #38, !inline_history !7
  %i.qz = load ptr, ptr %.pre203, align 8, !tbaa !100
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 24
  %i.rb = load ptr, ptr %i.ra, align 8
  call void %i.rb(ptr noundef nonnull align 8 dereferenceable(16) %.pre203) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151

bb.fh:                                            ; preds = %bb.ff
  %i.rc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i148 = icmp eq i8 %i.rc, 0
  br i1 %.not.i.i.i148, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.rd = add nsw i32 %i.qu, -1
  store i32 %i.rd, ptr %i.qr, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149

bb.fj:                                            ; preds = %bb.fh
  %i.re = atomicrmw volatile add ptr %i.qr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149: ; preds = %bb.fj, %bb.fi
  %.0.i.i.i.i150 = phi i32 [ %i.qu, %bb.fi ], [ %i.re, %bb.fj ]
  %i.rf = icmp eq i32 %.0.i.i.i.i150, 1
  br i1 %i.rf, label %bb.fk, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151, !prof !101

bb.fk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre203) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151: ; preds = %.thread264, %bb.fe, %bb.fg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  %i.rg = load ptr, ptr %10, align 8, !tbaa !77   ; 2 uses
  %i.rh = icmp eq ptr %i.rg, %i.a
  br i1 %i.rh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151
  %i.ri = load i64, ptr %i.a, align 8, !tbaa !79
  %i.rj = add i64 %i.ri, 1
  call void @_ZdlPvm(ptr noundef %i.rg, i64 noundef %i.rj) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  ret void

bb.fl:                                            ; preds = %bb.fd, %bb.g
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %bb.fd ], [ %i.aa, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  %i.rk = load ptr, ptr %10, align 8, !tbaa !77   ; 2 uses
  %i.rl = icmp eq ptr %i.rk, %i.a
  br i1 %i.rl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.fl
  %i.rm = load i64, ptr %i.a, align 8, !tbaa !79
  %i.rn = add i64 %i.rm, 1
  call void @_ZdlPvm(ptr noundef %i.rk, i64 noundef %i.rn) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %bb.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  resume { ptr, i32 } %.pn40.pn

bb.fm:                                            ; preds = %bb.cp, %bb.co
  %i.ro = landingpad { ptr, i32 }
          catch ptr null
  %i.rp = extractvalue { ptr, i32 } %i.ro, 0
  call void @__clang_call_terminate(ptr %i.rp) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_111ColorConfig4Impl8findprocERKNS0_17ColorProcCacheKeyE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.19") align 8 %0, ptr noundef nonnull align 8 dereferenceable(385) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.b = atomicrmw add ptr %i.a, i32 1 seq_cst, align 4 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 7 uses
  %i.d = atomicrmw add ptr %i.c, i32 1 acquire, align 4
  %i.e = and i32 %i.d, 1073741824
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_113spin_rw_mutex15read_lock_guardC2ERS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %3 = atomicrmw sub ptr %i.c, i32 1 seq_cst, align 4
  %i.f = add i32 %3, 1073741823
  %i.g = and i32 %i.f, 1073741823                 ; 2 uses
  %i.h = add nuw nsw i32 %i.g, 1
  %i.i = cmpxchg weak ptr %i.c, i32 %i.g, i32 %i.h acquire acquire, align 4
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %_ZN11OpenImageIO4v3_113spin_rw_mutex15read_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i: ; preds = %bb.b, %bb.e
  %.sroa.0.0.i.i = phi i32 [ %.sroa.0.1.i.i, %bb.e ], [ 1, %bb.b ] ; 5 uses
  %.not.i.i.i = icmp sgt i32 %.sroa.0.0.i.i, 16
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.k = icmp sgt i32 %.sroa.0.0.i.i, 0
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi i32 [ %i.l, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  tail call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.l = add nuw nsw i32 %.03.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.l, %.sroa.0.0.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i:         ; preds = %.lr.ph.i.i.i.i, %bb.c
  %i.m = shl nsw i32 %.sroa.0.0.i.i, 1
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.n = tail call noundef i32 @sched_yield() #38 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.0.i.i, %bb.d ], [ %i.m, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i ]
  %i.o = load atomic i32, ptr %i.c seq_cst, align 8
  %i.p = and i32 %i.o, 1073741823                 ; 2 uses
  %i.q = add nuw nsw i32 %i.p, 1
  %i.r = cmpxchg weak ptr %i.c, i32 %i.p, i32 %i.q acquire acquire, align 4
  %i.s = extractvalue { i32, i1 } %i.r, 1
  br i1 %i.s, label %_ZN11OpenImageIO4v3_113spin_rw_mutex15read_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i, !llvm.loop !10

_ZN11OpenImageIO4v3_113spin_rw_mutex15read_lock_guardC2ERS1_.exit: ; preds = %bb.e, %bb.a, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.v = load i64, ptr %i.u, align 8, !tbaa !183
  %i.w = invoke ptr @_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E9find_implIS5_EENSL_14robin_iteratorILb1EEERKT_m(ptr noundef nonnull align 8 dereferenceable(80) %i.t, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 noundef %i.v)
          to label %_ZN3tsl9robin_mapIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS2_14ColorProcessorEENS2_23ColorProcCacheKeyHasherESt8equal_toIS3_ESaISt4pairIS3_S6_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKS3_.exit unwind label %bb.k ; 3 uses

_ZN3tsl9robin_mapIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS2_14ColorProcessorEENS2_23ColorProcCacheKeyHasherESt8equal_toIS3_ESaISt4pairIS3_S6_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKS3_.exit: ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex15read_lock_guardC2ERS1_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !168
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !194
  %i.ab = getelementptr inbounds nuw [112 x i8], ptr %i.y, i64 %i.aa
  %i.ac = icmp eq ptr %i.w, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3tsl9robin_mapIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS2_14ColorProcessorEENS2_23ColorProcCacheKeyHasherESt8equal_toIS3_ESaISt4pairIS3_S6_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKS3_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEC2ERKS3_.exit

bb.g:                                             ; preds = %_ZN3tsl9robin_mapIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS2_14ColorProcessorEENS2_23ColorProcCacheKeyHasherESt8equal_toIS3_ESaISt4pairIS3_S6_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKS3_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !95 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !110
  store <2 x ptr> %i.ag, ptr %0, align 8, !tbaa !110
  %.not.i.i.i3 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i3, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEC2ERKS3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !63
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !63
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEC2ERKS3_.exit

bb.j:                                             ; preds = %bb.h
  %i.al = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEC2ERKS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEC2ERKS3_.exit: ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %4 = atomicrmw sub ptr %i.c, i32 1 release, align 4 ; 0 uses
  ret void

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex15read_lock_guardC2ERS1_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  %5 = atomicrmw sub ptr %i.c, i32 1 release, align 4 ; 0 uses
  resume { ptr, i32 } %i.am
}

declare void @_ZNK16OpenColorIO_v2_56Config17getCurrentContextEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.42") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZN11OpenImageIO4v3_17Strutil6splitsB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEES5_i(ptr dead_on_unwind writable sret(%"class.std::vector.34") align 8, ptr noundef dead_on_return, ptr noundef dead_on_return, i32 noundef) local_unnamed_addr #0

declare void @_ZNK16OpenColorIO_v2_57Context18createEditableCopyEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.45") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_57Context12setStringVarEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZNK16OpenColorIO_v2_56Config12getProcessorERKSt10shared_ptrIKNS_7ContextEEPKcS8_(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.16") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EE5resetEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !518
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 8 uses
  store ptr null, ptr %i.a, align 8, !tbaa !95
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !97
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !98
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #38, !inline_history !4
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #38, !inline_history !4
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #38
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl5errorIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(385) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.91", align 16 ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.b = cmpxchg weak ptr %i.a, i32 0, i32 1073741824 acquire acquire, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i: ; preds = %bb.a, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i
  %.sroa.0.0.i.i = phi i32 [ %.sroa.0.1.i.i, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i ], [ 1, %bb.a ] ; 5 uses
  %.not.i.i.i = icmp sgt i32 %.sroa.0.0.i.i, 16
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.d = icmp sgt i32 %.sroa.0.0.i.i, 0
  br i1 %i.d, label %.lr.ph.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi i32 [ %i.e, %.lr.ph.i.i.i.i ], [ 0, %bb.b ]
  tail call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.e = add nuw nsw i32 %.03.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.e, %.sroa.0.0.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i:         ; preds = %.lr.ph.i.i.i.i, %bb.b
  %i.f = shl nsw i32 %.sroa.0.0.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.g = tail call noundef i32 @sched_yield() #38 ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i: ; preds = %bb.c, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.0.i.i, %bb.c ], [ %i.f, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i ]
  %i.h = cmpxchg weak ptr %i.a, i32 0, i32 1073741824 acquire acquire, align 4
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i, !llvm.loop !2

_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #38, !noalias !521
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !521
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull %1, i64 %i.j, i64 0, ptr nonnull %2)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !521
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %i.o = load ptr, ptr %3, align 8, !tbaa !77     ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.q = icmp eq ptr %i.o, %i.p                   ; 2 uses
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.d
  br i1 %i.q, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.d
  br i1 %i.q, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !78   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  switch i64 %i.s, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = load i8, ptr %i.o, align 1, !tbaa !79
  store i8 %i.u, ptr %i.l, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.v = load i64, ptr %i.r, align 8, !tbaa !78   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %i.v, ptr %i.w, align 8, !tbaa !78
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !79
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.o, ptr %i.k, align 8, !tbaa !77
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load <2 x i64>, ptr %i.aa, align 8, !tbaa !79
  store <2 x i64> %i.ab, ptr %i.z, align 8, !tbaa !79
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !79
  store ptr %i.o, ptr %i.k, align 8, !tbaa !77
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.af = load <2 x i64>, ptr %i.ad, align 8, !tbaa !79
  store <2 x i64> %i.af, ptr %i.ae, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.l, ptr %3, align 8, !tbaa !77
  store i64 %i.ac, ptr %i.p, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.p, ptr %3, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.h, %bb.i
  %i.ag = phi ptr [ %i.l, %bb.h ], [ %i.p, %bb.i ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !78
  store i8 0, ptr %i.ag, align 1, !tbaa !79
  %i.ai = load ptr, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !79
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %4 = atomicrmw sub ptr %i.a, i32 1073741824 release, align 4 ; 0 uses
  ret void

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %5 = atomicrmw sub ptr %i.a, i32 1073741824 release, align 4 ; 0 uses
  resume { ptr, i32 } %i.an
}

declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_59Processor6isNoOpEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !97
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !98
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #38, !inline_history !6
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #38, !inline_history !6
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #38
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl5errorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(385) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.224", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.b = cmpxchg weak ptr %i.a, i32 0, i32 1073741824 acquire acquire, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i: ; preds = %bb.a, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i
  %.sroa.0.0.i.i = phi i32 [ %.sroa.0.1.i.i, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i ], [ 1, %bb.a ] ; 5 uses
  %.not.i.i.i = icmp sgt i32 %.sroa.0.0.i.i, 16
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.d = icmp sgt i32 %.sroa.0.0.i.i, 0
  br i1 %i.d, label %.lr.ph.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi i32 [ %i.e, %.lr.ph.i.i.i.i ], [ 0, %bb.b ]
  tail call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.e = add nuw nsw i32 %.03.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.e, %.sroa.0.0.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i:         ; preds = %.lr.ph.i.i.i.i, %bb.b
  %i.f = shl nsw i32 %.sroa.0.0.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.g = tail call noundef i32 @sched_yield() #38 ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i: ; preds = %bb.c, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.0.i.i, %bb.c ], [ %i.f, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i ]
  %i.h = cmpxchg weak ptr %i.a, i32 0, i32 1073741824 acquire acquire, align 4
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i, !llvm.loop !2

_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #38, !noalias !524
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38, !noalias !524
  %i.k = load ptr, ptr %2, align 8, !tbaa !77, !noalias !524
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !78, !noalias !524
  %i.n = ptrtoint ptr %i.k to i64
  store i64 %i.n, ptr %3, align 16, !noalias !524
  %.sroa_idx3.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.m, ptr %.sroa_idx3.i, align 8, !noalias !524
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.j, i64 13, ptr nonnull %3)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38, !noalias !524
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !77   ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  %i.s = load ptr, ptr %4, align 8, !tbaa !77     ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.u = icmp eq ptr %i.s, %i.t                   ; 2 uses
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.d
  br i1 %i.u, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.d
  br i1 %i.u, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !78   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  switch i64 %i.w, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.y = load i8, ptr %i.s, align 1, !tbaa !79
  store i8 %i.y, ptr %i.p, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.s, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.z = load i64, ptr %i.v, align 8, !tbaa !78   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !78
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !77
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !79
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.s, ptr %i.o, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load <2 x i64>, ptr %i.ae, align 8, !tbaa !79
  store <2 x i64> %i.af, ptr %i.ad, align 8, !tbaa !79
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !79
  store ptr %i.s, ptr %i.o, align 8, !tbaa !77
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aj = load <2 x i64>, ptr %i.ah, align 8, !tbaa !79
  store <2 x i64> %i.aj, ptr %i.ai, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.p, ptr %4, align 8, !tbaa !77
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.t, ptr %4, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.h, %bb.i
  %i.ak = phi ptr [ %i.p, %bb.h ], [ %i.t, %bb.i ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.al, align 8, !tbaa !78
  store i8 0, ptr %i.ak, align 1, !tbaa !79
  %i.am = load ptr, ptr %4, align 8, !tbaa !77    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !79
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %5 = atomicrmw sub ptr %i.a, i32 1073741824 release, align 4 ; 0 uses
  ret void

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %6 = atomicrmw sub ptr %i.a, i32 1073741824 release, align 4 ; 0 uses
  resume { ptr, i32 } %i.ar
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_111ColorConfig4Impl7addprocERKNS0_17ColorProcCacheKeyESt10shared_ptrINS0_14ColorProcessorEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.19") align 8 %0, ptr noundef nonnull align 8 dereferenceable(385) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::tuple.194", align 8    ; 4 uses
  %5 = alloca %"class.std::tuple.197", align 1    ; 3 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !143
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %0, align 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95
  store ptr null, ptr %i.c, align 8, !tbaa !95
  store ptr %i.d, ptr %i.b, align 8, !tbaa !95
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 4 uses
  %i.f = cmpxchg weak ptr %i.e, i32 0, i32 1073741824 acquire acquire, align 4
  %i.g = extractvalue { i32, i1 } %i.f, 1
  br i1 %i.g, label %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i: ; preds = %bb.c, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i
  %.sroa.0.0.i.i = phi i32 [ %.sroa.0.1.i.i, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i ], [ 1, %bb.c ] ; 5 uses
  %.not.i.i.i = icmp sgt i32 %.sroa.0.0.i.i, 16
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.h = icmp sgt i32 %.sroa.0.0.i.i, 0
  br i1 %i.h, label %.lr.ph.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi i32 [ %i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  tail call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.i = add nuw nsw i32 %.03.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.i, %.sroa.0.0.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i:         ; preds = %.lr.ph.i.i.i.i, %bb.d
  %i.j = shl nsw i32 %.sroa.0.0.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i
  %i.k = tail call noundef i32 @sched_yield() #38 ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i: ; preds = %bb.e, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.0.i.i, %bb.e ], [ %i.j, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i ]
  %i.l = cmpxchg weak ptr %i.e, i32 0, i32 1073741824 acquire acquire, align 4
  %i.m = extractvalue { i32, i1 } %i.l, 1
  br i1 %i.m, label %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i, !llvm.loop !2

_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.p = load i64, ptr %i.o, align 8, !tbaa !183
  %i.q = invoke ptr @_ZNK3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E9find_implIS5_EENSL_14robin_iteratorILb1EEERKT_m(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 noundef %i.p)
          to label %_ZN3tsl9robin_mapIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS2_14ColorProcessorEENS2_23ColorProcCacheKeyHasherESt8equal_toIS3_ESaISt4pairIS3_S6_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKS3_.exit unwind label %bb.r ; 3 uses

_ZN3tsl9robin_mapIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS2_14ColorProcessorEENS2_23ColorProcCacheKeyHasherESt8equal_toIS3_ESaISt4pairIS3_S6_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKS3_.exit: ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !168
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.u = load i64, ptr %i.t, align 8, !tbaa !194
  %i.v = getelementptr inbounds nuw [112 x i8], ptr %i.s, i64 %i.u
  %i.w = icmp eq ptr %i.q, %i.v
  br i1 %i.w, label %bb.f, label %bb.s

bb.f:                                             ; preds = %_ZN3tsl9robin_mapIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS2_14ColorProcessorEENS2_23ColorProcCacheKeyHasherESt8equal_toIS3_ESaISt4pairIS3_S6_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  store ptr %2, ptr %4, align 8, !tbaa !196, !alias.scope !528
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.x = invoke { ptr, i8 } @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS4_14ColorProcessorEEENS_9robin_mapIS5_S8_NS4_23ColorProcCacheKeyHasherESt8equal_toIS5_ESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E11insert_implIS5_JRKSt21piecewise_construct_tSt5tupleIJRKS5_EESQ_IJEEEEES2_INSL_14robin_iteratorILb0EEEbERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.x, 0 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 96
  %i.z = load ptr, ptr %3, align 8, !tbaa !143
  store ptr %i.z, ptr %i.y, align 8, !tbaa !143
  %i.aa = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 104 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 4 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !95 ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i4, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSERKS3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not7.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !63
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !63
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ai = atomicrmw volatile add ptr %i.ae, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !95
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.h
  %i.aj = phi ptr [ %i.ad, %bb.h ], [ %i.ad, %bb.j ], [ %.pr.pre.i.i.i, %bb.k ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ak, align 8, !tbaa !97
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !98
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !100
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #38, !inline_history !527
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !100
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #38, !inline_history !527
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i9.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i9.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i = phi i32 [ %i.an, %bb.o ], [ %i.ax, %bb.p ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.q, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !101

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #38
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !95
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSERKS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSERKS3_.exit: ; preds = %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 340
  %i.ba = atomicrmw add ptr %i.az, i32 1 seq_cst, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !95
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSERKS3_.exit15

bb.r:                                             ; preds = %bb.f, %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %6 = atomicrmw sub ptr %i.e, i32 1073741824 release, align 4 ; 0 uses
  resume { ptr, i32 } %i.bb

bb.s:                                             ; preds = %_ZN3tsl9robin_mapIN11OpenImageIO4v3_117ColorProcCacheKeyESt10shared_ptrINS2_14ColorProcessorEENS2_23ColorProcCacheKeyHasherESt8equal_toIS3_ESaISt4pairIS3_S6_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEE4findERKS3_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !143
  store ptr %i.bd, ptr %3, align 8, !tbaa !143
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !95 ; 5 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !95 ; 4 uses
  %.not.i.i.i5 = icmp eq ptr %i.bg, %i.bh
  br i1 %.not.i.i.i5, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSERKS3_.exit15, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not7.i.i.i6 = icmp eq ptr %i.bg, null
  br i1 %.not7.i.i.i6, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i8, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i7 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i7, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !63
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !63
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i8

bb.w:                                             ; preds = %bb.u
  %i.bm = atomicrmw volatile add ptr %i.bi, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i14 = load ptr, ptr %i.be, align 8, !tbaa !95
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i8

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i8: ; preds = %bb.w, %bb.v, %bb.t
  %i.bn = phi ptr [ %i.bh, %bb.t ], [ %i.bh, %bb.v ], [ %.pr.pre.i.i.i14, %bb.w ] ; 8 uses
  %.not8.i.i.i9 = icmp eq ptr %i.bn, null
  br i1 %.not8.i.i.i9, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i13, label %bb.x

bb.x:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.bo, align 8, !tbaa !97
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !98
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !100
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #38, !inline_history !527
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !100
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #38, !inline_history !527
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i13

bb.z:                                             ; preds = %bb.x
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i9.i.i.i10 = icmp eq i8 %i.bz, 0
  br i1 %.not.i9.i.i.i10, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i11

bb.ab:                                            ; preds = %bb.z
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i11

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i11: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i12 = phi i32 [ %i.br, %bb.aa ], [ %i.cb, %bb.ab ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i12, 1
  br i1 %i.cc, label %bb.ac, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i13, !prof !101

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i11
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #38
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i13

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i13: ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i11, %bb.y, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i8
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !95
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSERKS3_.exit15

_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSERKS3_.exit15: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i13, %bb.s, %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSERKS3_.exit
  %i.cd = phi ptr [ %i.bg, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i13 ], [ %i.bh, %bb.s ], [ %.pre, %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSERKS3_.exit ]
  %i.ce = load ptr, ptr %3, align 8, !tbaa !143
  store ptr %i.ce, ptr %0, align 8, !tbaa !143
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.cg, align 8, !tbaa !95
  store ptr %i.cd, ptr %i.cf, align 8, !tbaa !95
  store ptr null, ptr %3, align 8, !tbaa !143
  %7 = atomicrmw sub ptr %i.e, i32 1073741824 release, align 4 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSERKS3_.exit15, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_111ColorConfig19createLookTransformENS0_17basic_string_viewIcSt11char_traitsIcEEES5_S5_bS5_S5_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.19") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef readonly captures(none) dead_on_return %2, ptr nofree noundef readonly captures(none) dead_on_return %3, ptr nofree noundef readonly captures(none) dead_on_return %4, i1 noundef zeroext %5, ptr nofree noundef readonly captures(none) dead_on_return %6, ptr nofree noundef readonly captures(none) dead_on_return %7) local_unnamed_addr #2 align 2 {
bb.a:
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !69     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %12, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !70
  %i.e = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %12)
  br label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit: ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.g = load ptr, ptr %3, align 8, !tbaa !69     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %.not.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i1, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2, label %bb.c

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit
  store ptr %i.g, ptr %11, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !70
  %i.k = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %11)
  br label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2: ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit, %bb.c
  %i.l = phi ptr [ %i.k, %bb.c ], [ null, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.m = load ptr, ptr %4, align 8, !tbaa !69     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.not.i3 = icmp eq ptr %i.m, null
  br i1 %.not.i3, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4, label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2
  store ptr %i.m, ptr %10, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !70
  %i.q = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %10)
  br label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4: ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2, %bb.d
  %i.r = phi ptr [ %i.q, %bb.d ], [ null, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.s = load ptr, ptr %6, align 8, !tbaa !69     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %.not.i5 = icmp eq ptr %i.s, null
  br i1 %.not.i5, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit6, label %bb.e

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4
  store ptr %i.s, ptr %9, align 8, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !70
  %i.w = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %9)
  %i.x = ptrtoint ptr %i.w to i64
  br label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit6

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit6: ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4, %bb.e
  %i.y = phi i64 [ %i.x, %bb.e ], [ 0, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.z = load ptr, ptr %7, align 8, !tbaa !69     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %.not.i7 = icmp eq ptr %i.z, null
  br i1 %.not.i7, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit8, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit6
  store ptr %i.z, ptr %8, align 8, !tbaa !69
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !70
  %i.ad = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %8)
  %i.ae = ptrtoint ptr %i.ad to i64
  br label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit8

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit8: ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit6, %bb.f
  %i.af = phi i64 [ %i.ae, %bb.f ], [ 0, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit6 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @_ZNK11OpenImageIO4v3_111ColorConfig19createLookTransformENS0_7ustringES2_S2_bS2_S2_(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.19") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %i.f, ptr %i.l, ptr %i.r, i1 noundef zeroext %5, i64 %i.y, i64 %i.af)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_111ColorConfig19createLookTransformENS0_7ustringES2_S2_bS2_S2_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.19") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr %2, ptr %3, ptr %4, i1 noundef zeroext %5, i64 %6, i64 %7) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"class.OpenImageIO::v3_1::ColorProcCacheKey", align 8 ; 13 uses
  %13 = alloca %"class.std::shared_ptr.19", align 8 ; 13 uses
  %14 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %15 = alloca %"class.std::shared_ptr.48", align 16 ; 11 uses
  %16 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %17 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %18 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %19 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %20 = alloca %"class.std::shared_ptr.42", align 8 ; 10 uses
  %21 = alloca %"class.std::vector.34", align 8   ; 12 uses
  %22 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %23 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %24 = alloca %"class.std::vector.34", align 8   ; 12 uses
  %25 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %26 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %27 = alloca %"class.std::shared_ptr.45", align 8 ; 7 uses
  %28 = alloca %"class.std::shared_ptr.16", align 16 ; 9 uses
  %29 = alloca %"class.std::shared_ptr.16", align 16 ; 7 uses
  %30 = alloca %"class.std::shared_ptr.24", align 16 ; 7 uses
  %31 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %32 = alloca %"class.std::shared_ptr.19", align 8 ; 4 uses
  %i.a = inttoptr i64 %6 to ptr                   ; 4 uses
  %i.b = inttoptr i64 %7 to ptr                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %i.c = zext i1 %5 to i8
  store ptr %3, ptr %12, align 8, !tbaa !146
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %4, ptr %i.d, align 8, !tbaa !146
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.a, ptr %i.e, align 8, !tbaa !146
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.b, ptr %i.f, align 8, !tbaa !146
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.h = ptrtoint ptr %2 to i64
  store i64 %i.h, ptr %i.g, align 8, !tbaa !146
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  store i8 %i.c, ptr %i.j, align 8, !tbaa !197
  %.not.i.i = icmp eq ptr %3, null                ; 3 uses
  br i1 %.not.i.i, label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %3, i64 -64
  %i.l = load i64, ptr %i.k, align 8, !tbaa !180
  br label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit.i

_ZNK11OpenImageIO4v3_17ustring4hashEv.exit.i:     ; preds = %bb.b, %bb.a
  %.0.i.i = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ]
  %.not.i5.i = icmp eq ptr %4, null               ; 3 uses
  br i1 %.not.i5.i, label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i, label %bb.c

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit.i
  %i.m = getelementptr inbounds i8, ptr %4, i64 -64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !180
  %i.o = mul i64 %i.n, 14033
  br label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i

_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i:    ; preds = %bb.c, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit.i
  %.0.i6.i = phi i64 [ %i.o, %bb.c ], [ 0, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit.i ]
  %.not.i8.i = icmp eq i64 %6, 0                  ; 2 uses
  br i1 %.not.i8.i, label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i, label %bb.d

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 -64
  %i.q = load i64, ptr %i.p, align 8, !tbaa !180
  %i.r = mul i64 %i.q, 823
  br label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i

_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i:   ; preds = %bb.d, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i
  %.0.i9.i = phi i64 [ %i.r, %bb.d ], [ 0, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit7.i ]
  %.not.i11.i = icmp eq i64 %7, 0                 ; 2 uses
  br i1 %.not.i11.i, label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit13.i, label %bb.e

bb.e:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i
  %i.s = getelementptr inbounds i8, ptr %i.b, i64 -64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !180
  %i.u = mul i64 %i.t, 28411
  br label %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit13.i

_ZNK11OpenImageIO4v3_17ustring4hashEv.exit13.i:   ; preds = %bb.e, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i
  %.0.i12.i = phi i64 [ %i.u, %bb.e ], [ 0, %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit10.i ]
  %.not.i14.i = icmp eq ptr %2, null
  br i1 %.not.i14.i, label %_ZN11OpenImageIO4v3_117ColorProcCacheKeyC2ENS0_7ustringES2_S2_S2_S2_S2_S2_S2_S2_b.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustring4hashEv.exit13.i
  %i.v = getelementptr inbounds i8, ptr %2, i64 -64
  %i.w = load i64, ptr %i.v, align 8, !tbaa !180
end_hunk_4
begin_hunk_5_@_ZNK11OpenImageIO4v3_111ColorConfig19createLookTransformENS0_7ustringES2_S2_bS2_S2_:bb.a
  invoke void @_ZNK16OpenColorIO_v2_56Config12getProcessorERKSt10shared_ptrIKNS_7ContextEERKS1_IKNS_9TransformEENS_18TransformDirectionE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.16") align 8 %29, ptr noundef nonnull align 8 dereferenceable(8) %i.fg, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %30, i32 noundef %.020)
          to label %bb.bm unwind label %bb.dd

bb.bm:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2INS0_13LookTransformEvEERKS_IT_E.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.fs = load <2 x ptr>, ptr %29, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  %i.ft = load ptr, ptr %i.fr, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.fs, ptr %28, align 16, !tbaa !110
  %.not.i.i.i.i76 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i.i76, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 4 uses
  %i.fv = load atomic i64, ptr %i.fu acquire, align 8 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 4294967297
  %i.fx = trunc i64 %i.fv to i32                  ; 2 uses
  br i1 %i.fw, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.fu, align 8, !tbaa !97
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  store i32 0, ptr %i.fy, align 4, !tbaa !98
  %i.fz = load ptr, ptr %i.ft, align 8, !tbaa !100
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #38, !inline_history !17
  %i.gc = load ptr, ptr %i.ft, align 8, !tbaa !100
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #38, !inline_history !17
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit

bb.bp:                                            ; preds = %bb.bn
  %i.gf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.gf, 0
  br i1 %.not.i.i.i.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gg = add nsw i32 %i.fx, -1
  store i32 %i.gg, ptr %i.fu, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.br:                                            ; preds = %bb.bp
  %i.gh = atomicrmw volatile add ptr %i.fu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i.i.i = phi i32 [ %i.fx, %bb.bq ], [ %i.gh, %bb.br ]
  %i.gi = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.gi, label %bb.bs, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit, !prof !101

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #38
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit: ; preds = %bb.bm, %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bs
  %i.gj = load ptr, ptr %i.fq, align 8, !tbaa !95 ; 8 uses
  %.not.i.i77 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i77, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 4 uses
  %i.gl = load atomic i64, ptr %i.gk acquire, align 8 ; 2 uses
  %i.gm = icmp eq i64 %i.gl, 4294967297
  %i.gn = trunc i64 %i.gl to i32                  ; 2 uses
  br i1 %i.gm, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.gk, align 8, !tbaa !97
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 12
  store i32 0, ptr %i.go, align 4, !tbaa !98
  %i.gp = load ptr, ptr %i.gj, align 8, !tbaa !100
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef nonnull align 8 dereferenceable(16) %i.gj) #38, !inline_history !4
  %i.gs = load ptr, ptr %i.gj, align 8, !tbaa !100
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8
  call void %i.gu(ptr noundef nonnull align 8 dereferenceable(16) %i.gj) #38, !inline_history !4
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bv:                                            ; preds = %bb.bt
  %i.gv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i78 = icmp eq i8 %i.gv, 0
  br i1 %.not.i.i.i78, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gw = add nsw i32 %i.gn, -1
  store i32 %i.gw, ptr %i.gk, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79

bb.bx:                                            ; preds = %bb.bv
  %i.gx = atomicrmw volatile add ptr %i.gk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i.i80 = phi i32 [ %i.gn, %bb.bw ], [ %i.gx, %bb.bx ]
  %i.gy = icmp eq i32 %.0.i.i.i.i80, 1
  br i1 %i.gy, label %bb.by, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.by:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gj) #38
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit, %bb.bu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79, %bb.by
  %i.gz = load ptr, ptr %i.fh, align 8, !tbaa !95 ; 8 uses
  %.not.i.i81 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i81, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 4 uses
  %i.hb = load atomic i64, ptr %i.ha acquire, align 8 ; 2 uses
  %i.hc = icmp eq i64 %i.hb, 4294967297
  %i.hd = trunc i64 %i.hb to i32                  ; 2 uses
  br i1 %i.hc, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.ha, align 8, !tbaa !97
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 12
  store i32 0, ptr %i.he, align 4, !tbaa !98
  %i.hf = load ptr, ptr %i.gz, align 8, !tbaa !100
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #38, !inline_history !9
  %i.hi = load ptr, ptr %i.gz, align 8, !tbaa !100
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #38, !inline_history !9
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cb:                                            ; preds = %bb.bz
  %i.hl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i82 = icmp eq i8 %i.hl, 0
  br i1 %.not.i.i.i82, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hm = add nsw i32 %i.hd, -1
  store i32 %i.hm, ptr %i.ha, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83

bb.cd:                                            ; preds = %bb.cb
  %i.hn = atomicrmw volatile add ptr %i.ha, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i84 = phi i32 [ %i.hd, %bb.cc ], [ %i.hn, %bb.cd ]
  %i.ho = icmp eq i32 %.0.i.i.i.i84, 1
  br i1 %i.ho, label %bb.ce, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gz) #38
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  %i.hp = load ptr, ptr %1, align 8, !tbaa !159   ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 216 ; 3 uses
  %i.hr = cmpxchg weak ptr %i.hq, i32 0, i32 1073741824 acquire acquire, align 4
  %i.hs = extractvalue { i32, i1 } %i.hr, 1
  br i1 %i.hs, label %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i ], [ 1, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 5 uses
  %.not.i.i.i.i85 = icmp sgt i32 %.sroa.0.0.i.i.i, 16
  br i1 %.not.i.i.i.i85, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i
  %i.ht = icmp sgt i32 %.sroa.0.0.i.i.i, 0
  br i1 %i.ht, label %.lr.ph.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cf, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi i32 [ %i.hu, %.lr.ph.i.i.i.i.i ], [ 0, %bb.cf ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.hu = add nuw nsw i32 %.03.i.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.hu, %.sroa.0.0.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i, %bb.cf
  %i.hv = shl nsw i32 %.sroa.0.0.i.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i

bb.cg:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i
  %i.hw = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i: ; preds = %bb.cg, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %.sroa.0.0.i.i.i, %bb.cg ], [ %i.hv, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i ]
  %i.hx = cmpxchg weak ptr %i.hq, i32 0, i32 1073741824 acquire acquire, align 4
  %i.hy = extractvalue { i32, i1 } %i.hx, 1
  br i1 %i.hy, label %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i, !llvm.loop !2

_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hp, i64 224
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hp, i64 232
  store i64 0, ptr %i.ia, align 8, !tbaa !78
  %i.ib = load ptr, ptr %i.hz, align 8, !tbaa !77
  store i8 0, ptr %i.ib, align 1, !tbaa !79
  %33 = atomicrmw sub ptr %i.hq, i32 1073741824 release, align 4 ; 0 uses
  %i.ic = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #42
          to label %bb.ch unwind label %bb.de     ; 13 uses

bb.ch:                                            ; preds = %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit
  %i.id = load ptr, ptr %28, align 16, !tbaa !113 ; 5 uses
  store ptr %i.id, ptr %31, align 8, !tbaa !113
  %i.ie = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.if = load ptr, ptr %i.fr, align 8, !tbaa !95 ; 5 uses
  store ptr %i.if, ptr %i.ie, align 8, !tbaa !95
  %.not.i.i.i86 = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i86, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread, label %bb.ci

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread: ; preds = %bb.ch
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.ic, align 8, !tbaa !100
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 2 uses
  store ptr %i.id, ptr %i.ig, align 8, !tbaa !113
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store ptr null, ptr %i.ih, align 8, !tbaa !95
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

bb.ci:                                            ; preds = %bb.ch
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 8 ; 3 uses
  %i.ij = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i87 = icmp eq i8 %i.ij, 0
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 5 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i87, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread220

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread220: ; preds = %bb.ci
  %i.im = load i32, ptr %i.ii, align 4, !tbaa !63
  %i.in = add nsw i32 %i.im, 1
  store i32 %i.in, ptr %i.ii, align 4, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.ic, align 8, !tbaa !100
  store ptr %i.id, ptr %i.ik, align 8, !tbaa !113
  store ptr %i.if, ptr %i.il, align 8, !tbaa !95
  br label %bb.cj

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit: ; preds = %bb.ci
  %i.io = atomicrmw volatile add ptr %i.ii, i32 1 acq_rel, align 4 ; 0 uses
  %.pr166.pre = load ptr, ptr %i.ie, align 8, !tbaa !95 ; 3 uses
  %.pre = load ptr, ptr %31, align 8, !tbaa !113  ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.ic, align 8, !tbaa !100
  store ptr %.pre, ptr %i.ik, align 8, !tbaa !113
  store ptr %.pr166.pre, ptr %i.il, align 8, !tbaa !95
  %.not.i.i.i.i88 = icmp eq ptr %.pr166.pre, null
  br i1 %.not.i.i.i.i88, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread220, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit
  %.pr166223 = phi ptr [ %i.if, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread220 ], [ %.pr166.pre, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ]
  %i.ip = phi ptr [ %i.id, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread220 ], [ %.pre, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ]
  %i.iq = getelementptr inbounds nuw i8, ptr %.pr166223, i64 8 ; 3 uses
  %i.ir = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i89 = icmp eq i8 %i.ir, 0
  br i1 %.not.i.i.i.i.i89, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.is = load i32, ptr %i.iq, align 4, !tbaa !63
  %i.it = add nsw i32 %i.is, 1
  store i32 %i.it, ptr %i.iq, align 4, !tbaa !63
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

bb.cl:                                            ; preds = %bb.cj
  %i.iu = atomicrmw volatile add ptr %i.iq, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %31, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread, %bb.cl, %bb.ck, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit
  %i.iv = phi ptr [ %i.ik, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ], [ %i.ik, %bb.ck ], [ %i.ik, %bb.cl ], [ %i.ig, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread ]
  %i.iw = phi ptr [ %.pre, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ], [ %i.ip, %bb.ck ], [ %.pre.i, %bb.cl ], [ %i.id, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread ]
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  invoke void @_ZNK16OpenColorIO_v2_59Processor22getDefaultCPUProcessorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.13") align 8 %i.ix, ptr noundef nonnull align 8 dereferenceable(8) %i.iw)
          to label %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit unwind label %bb.df

_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i
  %i.iy = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #42
          to label %bb.cq unwind label %bb.cm     ; 5 uses

bb.cm:                                            ; preds = %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit
  %i.iz = landingpad { ptr, i32 }
          catch ptr null
  %i.ja = extractvalue { ptr, i32 } %i.iz, 0
  %i.jb = call ptr @__cxa_begin_catch(ptr %i.ja) #38 ; 0 uses
  call void @_ZN11OpenImageIO4v3_119ColorProcessor_OCIOD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ic) #38
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef 40) #40
  invoke void @__cxa_rethrow() #39
          to label %bb.cp unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.jc = landingpad { ptr, i32 }
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body.thread unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.jd = landingpad { ptr, i32 }
          catch ptr null
  %i.je = extractvalue { ptr, i32 } %i.jd, 0
  call void @__clang_call_terminate(ptr %i.je) #41
  unreachable

bb.cp:                                            ; preds = %bb.cm
  unreachable

bb.cq:                                            ; preds = %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store i32 1, ptr %i.jf, align 8, !tbaa !97
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
  store i32 1, ptr %i.jg, align 4, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.iy, align 8, !tbaa !100
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store ptr %i.ic, ptr %i.jh, align 8, !tbaa !192
  store ptr %i.ic, ptr %13, align 8, !tbaa !193
  %i.ji = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !95 ; 8 uses
  store ptr %i.iy, ptr %i.ji, align 8, !tbaa !95
  %.not.i.i.i.i90 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i90, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 4 uses
  %i.jl = load atomic i64, ptr %i.jk acquire, align 8 ; 2 uses
  %i.jm = icmp eq i64 %i.jl, 4294967297
  %i.jn = trunc i64 %i.jl to i32                  ; 2 uses
  br i1 %i.jm, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i32 0, ptr %i.jk, align 8, !tbaa !97
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  store i32 0, ptr %i.jo, align 4, !tbaa !98
  %i.jp = load ptr, ptr %i.jj, align 8, !tbaa !100
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #38, !inline_history !18
  %i.js = load ptr, ptr %i.jj, align 8, !tbaa !100
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8
  call void %i.ju(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #38, !inline_history !18
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ct:                                            ; preds = %bb.cr
  %i.jv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i91 = icmp eq i8 %i.jv, 0
  br i1 %.not.i.i.i.i.i91, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.jw = add nsw i32 %i.jn, -1
  store i32 %i.jw, ptr %i.jk, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i92

bb.cv:                                            ; preds = %bb.ct
  %i.jx = atomicrmw volatile add ptr %i.jk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i92

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i92: ; preds = %bb.cv, %bb.cu
  %.0.i.i.i.i.i.i93 = phi i32 [ %i.jn, %bb.cu ], [ %i.jx, %bb.cv ]
  %i.jy = icmp eq i32 %.0.i.i.i.i.i.i93, 1
  br i1 %i.jy, label %bb.cw, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.cw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i92
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i92, %bb.cs, %bb.cq
  %i.jz = load ptr, ptr %i.ie, align 8, !tbaa !95 ; 8 uses
  %.not.i.i98 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i98, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit102, label %bb.cx

bb.cx:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8 ; 4 uses
  %i.kb = load atomic i64, ptr %i.ka acquire, align 8 ; 2 uses
  %i.kc = icmp eq i64 %i.kb, 4294967297
  %i.kd = trunc i64 %i.kb to i32                  ; 2 uses
  br i1 %i.kc, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store i32 0, ptr %i.ka, align 8, !tbaa !97
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  store i32 0, ptr %i.ke, align 4, !tbaa !98
  %i.kf = load ptr, ptr %i.jz, align 8, !tbaa !100
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #38, !inline_history !4
  %i.ki = load ptr, ptr %i.jz, align 8, !tbaa !100
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(16) %i.jz) #38, !inline_history !4
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit102

bb.cz:                                            ; preds = %bb.cx
  %i.kl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i99 = icmp eq i8 %i.kl, 0
  br i1 %.not.i.i.i99, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.km = add nsw i32 %i.kd, -1
  store i32 %i.km, ptr %i.ka, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i100

bb.db:                                            ; preds = %bb.cz
end_hunk_5
begin_hunk_6_@_ZNK11OpenImageIO4v3_111ColorConfig22createDisplayTransformENS0_7ustringES2_S2_S2_bS2_S2_:bb.a
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 4 uses
  %i.fo = load atomic i64, ptr %i.fn acquire, align 8 ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 4294967297
  %i.fq = trunc i64 %i.fo to i32                  ; 2 uses
  br i1 %i.fp, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.fn, align 8, !tbaa !97
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 0, ptr %i.fr, align 4, !tbaa !98
  %i.fs = load ptr, ptr %i.fm, align 8, !tbaa !100
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #38, !inline_history !15
  %i.fv = load ptr, ptr %i.fm, align 8, !tbaa !100
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #38, !inline_history !15
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.fy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i9.i.i.i = icmp eq i8 %i.fy, 0
  br i1 %.not.i9.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fz = add nsw i32 %i.fq, -1
  store i32 %i.fz, ptr %i.fn, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.ga = atomicrmw volatile add ptr %i.fn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i = phi i32 [ %i.fq, %bb.ba ], [ %i.ga, %bb.bb ]
  %i.gb = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.gb, label %bb.bc, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !101

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fm) #38
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.bc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ay, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ff, ptr %i.fe, align 8, !tbaa !95
  %.pr = load ptr, ptr %i.fd, align 8, !tbaa !95
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_57ContextEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS3_E4typeESE_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_57ContextEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS3_E4typeESE_.exit: ; preds = %._crit_edge, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.gc = phi ptr [ %i.ff, %._crit_edge ], [ %.pr, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ] ; 8 uses
  %.not.i.i81 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i81, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_57ContextEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS3_E4typeESE_.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 4 uses
  %i.ge = load atomic i64, ptr %i.gd acquire, align 8 ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 4294967297
  %i.gg = trunc i64 %i.ge to i32                  ; 2 uses
  br i1 %i.gf, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.gd, align 8, !tbaa !97
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  store i32 0, ptr %i.gh, align 4, !tbaa !98
  %i.gi = load ptr, ptr %i.gc, align 8, !tbaa !100
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #38, !inline_history !16
  %i.gl = load ptr, ptr %i.gc, align 8, !tbaa !100
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #38, !inline_history !16
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bf:                                            ; preds = %bb.bd
  %i.go = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i82 = icmp eq i8 %i.go, 0
  br i1 %.not.i.i.i82, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gp = add nsw i32 %i.gg, -1
  store i32 %i.gp, ptr %i.gd, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83

bb.bh:                                            ; preds = %bb.bf
  %i.gq = atomicrmw volatile add ptr %i.gd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i84 = phi i32 [ %i.gg, %bb.bg ], [ %i.gq, %bb.bh ]
  %i.gr = icmp eq i32 %.0.i.i.i.i84, 1
  br i1 %i.gr, label %bb.bi, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gc) #38
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_57ContextEEaSIS1_EENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS2_LN9__gnu_cxx12_Lock_policyE2EERKS_IT_EEE5valueERS3_E4typeESE_.exit, %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  br label %bb.bn

bb.bj:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustring4sizeEv.exit.thread
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.bk:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit75
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.bl:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit78
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.bm:                                            ; preds = %bb.as
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  br label %bb.ec

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.gw = phi ptr [ %i.hf, %.lr.ph ], [ %i.fb, %.preheader ]
  %.020184 = phi i64 [ %i.hd, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.gx = load ptr, ptr %26, align 8, !tbaa !189
  %i.gy = getelementptr inbounds nuw [32 x i8], ptr %i.gw, i64 %.020184
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !77
  %i.ha = load ptr, ptr %23, align 8, !tbaa !176
  %i.hb = getelementptr inbounds nuw [32 x i8], ptr %i.ha, i64 %.020184
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !77
  call void @_ZN16OpenColorIO_v2_57Context12setStringVarEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, ptr noundef %i.gz, ptr noundef %i.hc) #38
  %i.hd = add nuw i64 %.020184, 1                 ; 2 uses
  %i.he = load ptr, ptr %i.em, align 8, !tbaa !177
  %i.hf = load ptr, ptr %20, align 8, !tbaa !176  ; 2 uses
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh
  %i.hj = ashr exact i64 %i.hi, 5
  %i.hk = icmp ult i64 %i.hd, %i.hj
  br i1 %i.hk, label %.lr.ph, label %._crit_edge, !llvm.loop !573

bb.bn:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ar, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #38
  %i.hl = load ptr, ptr %17, align 8, !tbaa !583  ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !100
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 112
  %i.ho = load ptr, ptr %i.hn, align 8
  invoke void %i.ho(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.16") align 8 %28, ptr noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %19)
          to label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.cm

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bn
  %i.hp = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.hq = load <2 x ptr>, ptr %28, align 16, !tbaa !110
  store <2 x ptr> %i.hq, ptr %27, align 16, !tbaa !110
  %.pre = load ptr, ptr %1, align 8, !tbaa !159   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  %i.hr = getelementptr inbounds nuw i8, ptr %.pre, i64 216 ; 3 uses
  %i.hs = cmpxchg weak ptr %i.hr, i32 0, i32 1073741824 acquire acquire, align 4
  %i.ht = extractvalue { i32, i1 } %i.hs, 1
  br i1 %i.ht, label %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i ], [ 1, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 5 uses
  %.not.i.i.i.i90 = icmp sgt i32 %.sroa.0.0.i.i.i, 16
  br i1 %.not.i.i.i.i90, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i
  %i.hu = icmp sgt i32 %.sroa.0.0.i.i.i, 0
  br i1 %i.hu, label %.lr.ph.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bo, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi i32 [ %i.hv, %.lr.ph.i.i.i.i.i ], [ 0, %bb.bo ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.hv = add nuw nsw i32 %.03.i.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.hv, %.sroa.0.0.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i, %bb.bo
  %i.hw = shl nsw i32 %.sroa.0.0.i.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i

bb.bp:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i
  %i.hx = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i: ; preds = %bb.bp, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %.sroa.0.0.i.i.i, %bb.bp ], [ %i.hw, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i ]
  %i.hy = cmpxchg weak ptr %i.hr, i32 0, i32 1073741824 acquire acquire, align 4
  %i.hz = extractvalue { i32, i1 } %i.hy, 1
  br i1 %i.hz, label %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i, !llvm.loop !2

_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %.pre, i64 224
  %i.ib = getelementptr inbounds nuw i8, ptr %.pre, i64 232
  store i64 0, ptr %i.ib, align 8, !tbaa !78
  %i.ic = load ptr, ptr %i.ia, align 8, !tbaa !77
  store i8 0, ptr %i.ic, align 1, !tbaa !79
  %31 = atomicrmw sub ptr %i.hr, i32 1073741824 release, align 4 ; 0 uses
  %i.id = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #42
          to label %bb.bq unwind label %bb.cn     ; 13 uses

bb.bq:                                            ; preds = %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit
  %i.ie = load ptr, ptr %27, align 16, !tbaa !113 ; 5 uses
  store ptr %i.ie, ptr %29, align 8, !tbaa !113
  %i.if = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  %i.ig = load ptr, ptr %i.hp, align 8, !tbaa !95 ; 5 uses
  store ptr %i.ig, ptr %i.if, align 8, !tbaa !95
  %.not.i.i.i91 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i91, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread, label %bb.br

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread: ; preds = %bb.bq
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.id, align 8, !tbaa !100
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 2 uses
  store ptr %i.ie, ptr %i.ih, align 8, !tbaa !113
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store ptr null, ptr %i.ii, align 8, !tbaa !95
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

bb.br:                                            ; preds = %bb.bq
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 3 uses
  %i.ik = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i92 = icmp eq i8 %i.ik, 0
  %i.il = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 5 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i92, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread235

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread235: ; preds = %bb.br
  %i.in = load i32, ptr %i.ij, align 4, !tbaa !63
  %i.io = add nsw i32 %i.in, 1
  store i32 %i.io, ptr %i.ij, align 4, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.id, align 8, !tbaa !100
  store ptr %i.ie, ptr %i.il, align 8, !tbaa !113
  store ptr %i.ig, ptr %i.im, align 8, !tbaa !95
  br label %bb.bs

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit: ; preds = %bb.br
  %i.ip = atomicrmw volatile add ptr %i.ij, i32 1 acq_rel, align 4 ; 0 uses
  %.pr179.pre = load ptr, ptr %i.if, align 8, !tbaa !95 ; 3 uses
  %.pre187 = load ptr, ptr %29, align 8, !tbaa !113 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.id, align 8, !tbaa !100
  store ptr %.pre187, ptr %i.il, align 8, !tbaa !113
  store ptr %.pr179.pre, ptr %i.im, align 8, !tbaa !95
  %.not.i.i.i.i93 = icmp eq ptr %.pr179.pre, null
  br i1 %.not.i.i.i.i93, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread235, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit
  %.pr179238 = phi ptr [ %i.ig, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread235 ], [ %.pr179.pre, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ]
  %i.iq = phi ptr [ %i.ie, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread235 ], [ %.pre187, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ]
  %i.ir = getelementptr inbounds nuw i8, ptr %.pr179238, i64 8 ; 3 uses
  %i.is = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i94 = icmp eq i8 %i.is, 0
  br i1 %.not.i.i.i.i.i94, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.it = load i32, ptr %i.ir, align 4, !tbaa !63
  %i.iu = add nsw i32 %i.it, 1
  store i32 %i.iu, ptr %i.ir, align 4, !tbaa !63
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

bb.bu:                                            ; preds = %bb.bs
  %i.iv = atomicrmw volatile add ptr %i.ir, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %29, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread, %bb.bu, %bb.bt, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit
  %i.iw = phi ptr [ %i.il, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ], [ %i.il, %bb.bt ], [ %i.il, %bb.bu ], [ %i.ih, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread ]
  %i.ix = phi ptr [ %.pre187, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ], [ %i.iq, %bb.bt ], [ %.pre.i, %bb.bu ], [ %i.ie, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread ]
  %i.iy = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  invoke void @_ZNK16OpenColorIO_v2_59Processor22getDefaultCPUProcessorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.13") align 8 %i.iy, ptr noundef nonnull align 8 dereferenceable(8) %i.ix)
          to label %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit unwind label %bb.co

_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i
  %i.iz = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #42
          to label %bb.bz unwind label %bb.bv     ; 5 uses

bb.bv:                                            ; preds = %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit
  %i.ja = landingpad { ptr, i32 }
          catch ptr null
  %i.jb = extractvalue { ptr, i32 } %i.ja, 0
  %i.jc = call ptr @__cxa_begin_catch(ptr %i.jb) #38 ; 0 uses
  call void @_ZN11OpenImageIO4v3_119ColorProcessor_OCIOD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.id) #38
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef 40) #40
  invoke void @__cxa_rethrow() #39
          to label %bb.by unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jd = landingpad { ptr, i32 }
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body.thread unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.je = landingpad { ptr, i32 }
          catch ptr null
  %i.jf = extractvalue { ptr, i32 } %i.je, 0
  call void @__clang_call_terminate(ptr %i.jf) #41
  unreachable

bb.by:                                            ; preds = %bb.bv
  unreachable

bb.bz:                                            ; preds = %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i32 1, ptr %i.jg, align 8, !tbaa !97
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iz, i64 12
  store i32 1, ptr %i.jh, align 4, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.iz, align 8, !tbaa !100
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store ptr %i.id, ptr %i.ji, align 8, !tbaa !192
  store ptr %i.id, ptr %14, align 8, !tbaa !193
  %i.jj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !95 ; 8 uses
  store ptr %i.iz, ptr %i.jj, align 8, !tbaa !95
  %.not.i.i.i.i95 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i.i95, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 4 uses
  %i.jm = load atomic i64, ptr %i.jl acquire, align 8 ; 2 uses
  %i.jn = icmp eq i64 %i.jm, 4294967297
  %i.jo = trunc i64 %i.jm to i32                  ; 2 uses
  br i1 %i.jn, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.jl, align 8, !tbaa !97
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 12
  store i32 0, ptr %i.jp, align 4, !tbaa !98
  %i.jq = load ptr, ptr %i.jk, align 8, !tbaa !100
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.js = load ptr, ptr %i.jr, align 8
  call void %i.js(ptr noundef nonnull align 8 dereferenceable(16) %i.jk) #38, !inline_history !18
  %i.jt = load ptr, ptr %i.jk, align 8, !tbaa !100
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(16) %i.jk) #38, !inline_history !18
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cc:                                            ; preds = %bb.ca
  %i.jw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i96 = icmp eq i8 %i.jw, 0
  br i1 %.not.i.i.i.i.i96, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jx = add nsw i32 %i.jo, -1
  store i32 %i.jx, ptr %i.jl, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i97

bb.ce:                                            ; preds = %bb.cc
  %i.jy = atomicrmw volatile add ptr %i.jl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i97

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i97: ; preds = %bb.ce, %bb.cd
  %.0.i.i.i.i.i.i98 = phi i32 [ %i.jo, %bb.cd ], [ %i.jy, %bb.ce ]
  %i.jz = icmp eq i32 %.0.i.i.i.i.i.i98, 1
  br i1 %i.jz, label %bb.cf, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.cf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i97
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jk) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i97, %bb.cb, %bb.bz
  %i.ka = load ptr, ptr %i.if, align 8, !tbaa !95 ; 8 uses
  %.not.i.i103 = icmp eq ptr %i.ka, null
  br i1 %.not.i.i103, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 4 uses
  %i.kc = load atomic i64, ptr %i.kb acquire, align 8 ; 2 uses
  %i.kd = icmp eq i64 %i.kc, 4294967297
  %i.ke = trunc i64 %i.kc to i32                  ; 2 uses
  br i1 %i.kd, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.kb, align 8, !tbaa !97
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ka, i64 12
  store i32 0, ptr %i.kf, align 4, !tbaa !98
  %i.kg = load ptr, ptr %i.ka, align 8, !tbaa !100
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(16) %i.ka) #38, !inline_history !4
  %i.kj = load ptr, ptr %i.ka, align 8, !tbaa !100
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8
  call void %i.kl(ptr noundef nonnull align 8 dereferenceable(16) %i.ka) #38, !inline_history !4
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107

bb.ci:                                            ; preds = %bb.cg
  %i.km = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i104 = icmp eq i8 %i.km, 0
  br i1 %.not.i.i.i104, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kn = add nsw i32 %i.ke, -1
  store i32 %i.kn, ptr %i.kb, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105

bb.ck:                                            ; preds = %bb.ci
end_hunk_6
begin_hunk_7_@_ZNK11OpenImageIO4v3_111ColorConfig19createFileTransformENS0_7ustringEb:_ZNK11OpenImageIO4v3_17ustring4hashEv.exit25.i
  invoke void @_ZNK16OpenColorIO_v2_56Config12getProcessorERKSt10shared_ptrIKNS_7ContextEERKS1_IKNS_9TransformEENS_18TransformDirectionE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.16") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %11, i32 noundef %i.bc)
          to label %bb.x unwind label %bb.br

bb.x:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2INS0_13FileTransformEvEERKS_IT_E.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bp = load <2 x ptr>, ptr %10, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.bp, ptr %9, align 16, !tbaa !110
  %.not.i.i.i.i33 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i33, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.br, align 8, !tbaa !97
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !98
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !100
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #38, !inline_history !17
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !100
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #38, !inline_history !17
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit

bb.aa:                                            ; preds = %bb.y
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i = phi i32 [ %i.bu, %bb.ab ], [ %i.ce, %bb.ac ]
  %i.cf = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cf, label %bb.ad, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit, !prof !101

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #38
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit: ; preds = %bb.x, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ad
  %i.cg = load ptr, ptr %i.bn, align 8, !tbaa !95 ; 8 uses
  %.not.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 4 uses
  %i.ci = load atomic i64, ptr %i.ch acquire, align 8 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 4294967297
  %i.ck = trunc i64 %i.ci to i32                  ; 2 uses
  br i1 %i.cj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.ch, align 8, !tbaa !97
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i32 0, ptr %i.cl, align 4, !tbaa !98
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !100
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #38, !inline_history !4
  %i.cp = load ptr, ptr %i.cg, align 8, !tbaa !100
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #38, !inline_history !4
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.cs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i34 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i34, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ct = add nsw i32 %i.ck, -1
  store i32 %i.ct, ptr %i.ch, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.cu = atomicrmw volatile add ptr %i.ch, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i = phi i32 [ %i.ck, %bb.ah ], [ %i.cu, %bb.ai ]
  %i.cv = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cv, label %bb.aj, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cg) #38
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aj
  %i.cw = load ptr, ptr %i.be, align 8, !tbaa !95 ; 8 uses
  %.not.i.i35 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i35, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 4 uses
  %i.cy = load atomic i64, ptr %i.cx acquire, align 8 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 4294967297
  %i.da = trunc i64 %i.cy to i32                  ; 2 uses
  br i1 %i.cz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.cx, align 8, !tbaa !97
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i32 0, ptr %i.db, align 4, !tbaa !98
  %i.dc = load ptr, ptr %i.cw, align 8, !tbaa !100
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #38, !inline_history !9
  %i.df = load ptr, ptr %i.cw, align 8, !tbaa !100
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #38, !inline_history !9
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.am:                                            ; preds = %bb.ak
  %i.di = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i36 = icmp eq i8 %i.di, 0
  br i1 %.not.i.i.i36, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dj = add nsw i32 %i.da, -1
  store i32 %i.dj, ptr %i.cx, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37

bb.ao:                                            ; preds = %bb.am
  %i.dk = atomicrmw volatile add ptr %i.cx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i38 = phi i32 [ %i.da, %bb.an ], [ %i.dk, %bb.ao ]
  %i.dl = icmp eq i32 %.0.i.i.i.i38, 1
  br i1 %i.dl, label %bb.ap, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #38
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  %i.dm = load ptr, ptr %1, align 8, !tbaa !159   ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 216 ; 3 uses
  %i.do = cmpxchg weak ptr %i.dn, i32 0, i32 1073741824 acquire acquire, align 4
  %i.dp = extractvalue { i32, i1 } %i.do, 1
  br i1 %i.dp, label %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i ], [ 1, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 5 uses
  %.not.i.i.i.i39 = icmp sgt i32 %.sroa.0.0.i.i.i, 16
  br i1 %.not.i.i.i.i39, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i
  %i.dq = icmp sgt i32 %.sroa.0.0.i.i.i, 0
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aq, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi i32 [ %i.dr, %.lr.ph.i.i.i.i.i ], [ 0, %bb.aq ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.dr = add nuw nsw i32 %.03.i.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.dr, %.sroa.0.0.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i, %bb.aq
  %i.ds = shl nsw i32 %.sroa.0.0.i.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i

bb.ar:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i
  %i.dt = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i: ; preds = %bb.ar, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %.sroa.0.0.i.i.i, %bb.ar ], [ %i.ds, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i ]
  %i.du = cmpxchg weak ptr %i.dn, i32 0, i32 1073741824 acquire acquire, align 4
  %i.dv = extractvalue { i32, i1 } %i.du, 1
  br i1 %i.dv, label %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i, !llvm.loop !2

_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 224
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 232
  store i64 0, ptr %i.dx, align 8, !tbaa !78
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !77
  store i8 0, ptr %i.dy, align 1, !tbaa !79
  %14 = atomicrmw sub ptr %i.dn, i32 1073741824 release, align 4 ; 0 uses
  %i.dz = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #42
          to label %bb.as unwind label %bb.bs     ; 13 uses

bb.as:                                            ; preds = %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit
  %i.ea = load ptr, ptr %9, align 16, !tbaa !113  ; 5 uses
  store ptr %i.ea, ptr %12, align 8, !tbaa !113
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.ec = load ptr, ptr %i.bo, align 8, !tbaa !95 ; 5 uses
  store ptr %i.ec, ptr %i.eb, align 8, !tbaa !95
  %.not.i.i.i40 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i40, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread, label %bb.at

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread: ; preds = %bb.as
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.dz, align 8, !tbaa !100
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  store ptr %i.ea, ptr %i.ed, align 8, !tbaa !113
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store ptr null, ptr %i.ee, align 8, !tbaa !95
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

bb.at:                                            ; preds = %bb.as
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 3 uses
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i41 = icmp eq i8 %i.eg, 0
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i41, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread128

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread128: ; preds = %bb.at
  %i.ej = load i32, ptr %i.ef, align 4, !tbaa !63
  %i.ek = add nsw i32 %i.ej, 1
  store i32 %i.ek, ptr %i.ef, align 4, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.dz, align 8, !tbaa !100
  store ptr %i.ea, ptr %i.eh, align 8, !tbaa !113
  store ptr %i.ec, ptr %i.ei, align 8, !tbaa !95
  br label %bb.au

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit: ; preds = %bb.at
  %i.el = atomicrmw volatile add ptr %i.ef, i32 1 acq_rel, align 4 ; 0 uses
  %.pr98.pre = load ptr, ptr %i.eb, align 8, !tbaa !95 ; 3 uses
  %.pre105 = load ptr, ptr %12, align 8, !tbaa !113 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.dz, align 8, !tbaa !100
  store ptr %.pre105, ptr %i.eh, align 8, !tbaa !113
  store ptr %.pr98.pre, ptr %i.ei, align 8, !tbaa !95
  %.not.i.i.i.i42 = icmp eq ptr %.pr98.pre, null
  br i1 %.not.i.i.i.i42, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread128, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit
  %.pr98131 = phi ptr [ %i.ec, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread128 ], [ %.pr98.pre, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ]
  %i.em = phi ptr [ %i.ea, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread128 ], [ %.pre105, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ]
  %i.en = getelementptr inbounds nuw i8, ptr %.pr98131, i64 8 ; 3 uses
  %i.eo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i43 = icmp eq i8 %i.eo, 0
  br i1 %.not.i.i.i.i.i43, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !63
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.en, align 4, !tbaa !63
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.er = atomicrmw volatile add ptr %i.en, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %12, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread, %bb.aw, %bb.av, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit
  %i.es = phi ptr [ %i.eh, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ], [ %i.eh, %bb.av ], [ %i.eh, %bb.aw ], [ %i.ed, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread ]
  %i.et = phi ptr [ %.pre105, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ], [ %i.em, %bb.av ], [ %.pre.i, %bb.aw ], [ %i.ea, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  invoke void @_ZNK16OpenColorIO_v2_59Processor22getDefaultCPUProcessorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.13") align 8 %i.eu, ptr noundef nonnull align 8 dereferenceable(8) %i.et)
          to label %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit unwind label %bb.bt

_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i
  %i.ev = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #42
          to label %bb.bb unwind label %bb.ax     ; 5 uses

bb.ax:                                            ; preds = %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  %i.ey = call ptr @__cxa_begin_catch(ptr %i.ex) #38 ; 0 uses
  call void @_ZN11OpenImageIO4v3_119ColorProcessor_OCIOD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.dz) #38
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef 40) #40
  invoke void @__cxa_rethrow() #39
          to label %bb.ba unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ez = landingpad { ptr, i32 }
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body.thread unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #41
  unreachable

bb.ba:                                            ; preds = %bb.ax
  unreachable

bb.bb:                                            ; preds = %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 1, ptr %i.fc, align 8, !tbaa !97
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i32 1, ptr %i.fd, align 4, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ev, align 8, !tbaa !100
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store ptr %i.dz, ptr %i.fe, align 8, !tbaa !192
  store ptr %i.dz, ptr %5, align 16, !tbaa !193
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !95 ; 8 uses
  store ptr %i.ev, ptr %i.ff, align 8, !tbaa !95
  %.not.i.i.i.i44 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i44, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 4 uses
  %i.fi = load atomic i64, ptr %i.fh acquire, align 8 ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 4294967297
  %i.fk = trunc i64 %i.fi to i32                  ; 2 uses
  br i1 %i.fj, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.fh, align 8, !tbaa !97
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  store i32 0, ptr %i.fl, align 4, !tbaa !98
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !100
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #38, !inline_history !18
  %i.fp = load ptr, ptr %i.fg, align 8, !tbaa !100
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #38, !inline_history !18
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.be:                                            ; preds = %bb.bc
  %i.fs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i45 = icmp eq i8 %i.fs, 0
  br i1 %.not.i.i.i.i.i45, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ft = add nsw i32 %i.fk, -1
  store i32 %i.ft, ptr %i.fh, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i46

bb.bg:                                            ; preds = %bb.be
  %i.fu = atomicrmw volatile add ptr %i.fh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i46

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i46: ; preds = %bb.bg, %bb.bf
  %.0.i.i.i.i.i.i47 = phi i32 [ %i.fk, %bb.bf ], [ %i.fu, %bb.bg ]
  %i.fv = icmp eq i32 %.0.i.i.i.i.i.i47, 1
  br i1 %i.fv, label %bb.bh, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.bh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i46
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i46, %bb.bd, %bb.bb
  %i.fw = load ptr, ptr %i.eb, align 8, !tbaa !95 ; 8 uses
  %.not.i.i52 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i52, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 4 uses
  %i.fy = load atomic i64, ptr %i.fx acquire, align 8 ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 4294967297
  %i.ga = trunc i64 %i.fy to i32                  ; 2 uses
  br i1 %i.fz, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %i.fx, align 8, !tbaa !97
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i32 0, ptr %i.gb, align 4, !tbaa !98
  %i.gc = load ptr, ptr %i.fw, align 8, !tbaa !100
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #38, !inline_history !4
  %i.gf = load ptr, ptr %i.fw, align 8, !tbaa !100
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fw) #38, !inline_history !4
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit56

bb.bk:                                            ; preds = %bb.bi
  %i.gi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i53 = icmp eq i8 %i.gi, 0
  br i1 %.not.i.i.i53, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gj = add nsw i32 %i.ga, -1
  store i32 %i.gj, ptr %i.fx, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i54

bb.bm:                                            ; preds = %bb.bk
end_hunk_7
begin_hunk_8_@_ZNK11OpenImageIO4v3_111ColorConfig20createNamedTransformENS0_7ustringEbS2_S2_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  %.pre132 = load ptr, ptr %8, align 8, !tbaa !86
  br label %bb.al

bb.ah:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.ai:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.aj:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit43
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.ak:                                            ; preds = %bb.q
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  br label %bb.dh

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.dh = phi ptr [ %i.dq, %.lr.ph ], [ %i.bm, %.preheader ]
  %.017130 = phi i64 [ %i.do, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.di = load ptr, ptr %17, align 8, !tbaa !189
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr %i.dh, i64 %.017130
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !77
  %i.dl = load ptr, ptr %14, align 8, !tbaa !176
  %i.dm = getelementptr inbounds nuw [32 x i8], ptr %i.dl, i64 %.017130
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !77
  call void @_ZN16OpenColorIO_v2_57Context12setStringVarEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef %i.dk, ptr noundef %i.dn) #38
  %i.do = add nuw i64 %.017130, 1                 ; 2 uses
  %i.dp = load ptr, ptr %i.ax, align 8, !tbaa !177
  %i.dq = load ptr, ptr %11, align 8, !tbaa !176  ; 2 uses
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 5
  %i.dv = icmp ult i64 %i.do, %i.du
  br i1 %i.dv, label %.lr.ph, label %._crit_edge, !llvm.loop !595

bb.al:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.p, %bb.o
  %i.dw = phi ptr [ %.pre132, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.an, %bb.p ], [ %i.an, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  invoke void @_ZNK16OpenColorIO_v2_56Config12getProcessorERKSt10shared_ptrIKNS_7ContextEERKS1_IKNS_14NamedTransformEENS_18TransformDirectionE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.16") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %i.ao)
          to label %bb.am unwind label %bb.bx

bb.am:                                            ; preds = %bb.al
  %i.dx = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.dz = load <2 x ptr>, ptr %19, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.dz, ptr %18, align 16, !tbaa !110
  %.not.i.i.i.i48 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i48, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 4 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 4294967297
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  br i1 %i.ed, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.eb, align 8, !tbaa !97
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 0, ptr %i.ef, align 4, !tbaa !98
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !100
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #38, !inline_history !17
  %i.ej = load ptr, ptr %i.ea, align 8, !tbaa !100
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #38, !inline_history !17
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit

bb.ap:                                            ; preds = %bb.an
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.en = add nsw i32 %i.ee, -1
  store i32 %i.en, ptr %i.eb, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.eo = atomicrmw volatile add ptr %i.eb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i = phi i32 [ %i.ee, %bb.aq ], [ %i.eo, %bb.ar ]
  %i.ep = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ep, label %bb.as, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit, !prof !101

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #38
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit: ; preds = %bb.am, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.as
  %i.eq = load ptr, ptr %i.dx, align 8, !tbaa !95 ; 8 uses
  %.not.i.i49 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i49, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 4 uses
  %i.es = load atomic i64, ptr %i.er acquire, align 8 ; 2 uses
  %i.et = icmp eq i64 %i.es, 4294967297
  %i.eu = trunc i64 %i.es to i32                  ; 2 uses
  br i1 %i.et, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.er, align 8, !tbaa !97
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  store i32 0, ptr %i.ev, align 4, !tbaa !98
  %i.ew = load ptr, ptr %i.eq, align 8, !tbaa !100
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.eq) #38, !inline_history !4
  %i.ez = load ptr, ptr %i.eq, align 8, !tbaa !100
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(16) %i.eq) #38, !inline_history !4
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.av:                                            ; preds = %bb.at
  %i.fc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i50 = icmp eq i8 %i.fc, 0
  br i1 %.not.i.i.i50, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fd = add nsw i32 %i.eu, -1
  store i32 %i.fd, ptr %i.er, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51

bb.ax:                                            ; preds = %bb.av
  %i.fe = atomicrmw volatile add ptr %i.er, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i52 = phi i32 [ %i.eu, %bb.aw ], [ %i.fe, %bb.ax ]
  %i.ff = icmp eq i32 %.0.i.i.i.i52, 1
  br i1 %i.ff, label %bb.ay, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eq) #38
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i51, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  %i.fg = load ptr, ptr %1, align 8, !tbaa !159   ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 216 ; 3 uses
  %i.fi = cmpxchg weak ptr %i.fh, i32 0, i32 1073741824 acquire acquire, align 4
  %i.fj = extractvalue { i32, i1 } %i.fi, 1
  br i1 %i.fj, label %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i ], [ 1, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 5 uses
  %.not.i.i.i.i53 = icmp sgt i32 %.sroa.0.0.i.i.i, 16
  br i1 %.not.i.i.i.i53, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i
  %i.fk = icmp sgt i32 %.sroa.0.0.i.i.i, 0
  br i1 %i.fk, label %.lr.ph.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.az, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi i32 [ %i.fl, %.lr.ph.i.i.i.i.i ], [ 0, %bb.az ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.fl = add nuw nsw i32 %.03.i.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.fl, %.sroa.0.0.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i, %bb.az
  %i.fm = shl nsw i32 %.sroa.0.0.i.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i

bb.ba:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i
  %i.fn = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i: ; preds = %bb.ba, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %.sroa.0.0.i.i.i, %bb.ba ], [ %i.fm, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i ]
  %i.fo = cmpxchg weak ptr %i.fh, i32 0, i32 1073741824 acquire acquire, align 4
  %i.fp = extractvalue { i32, i1 } %i.fo, 1
  br i1 %i.fp, label %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i, !llvm.loop !2

_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fg, i64 224
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fg, i64 232
  store i64 0, ptr %i.fr, align 8, !tbaa !78
  %i.fs = load ptr, ptr %i.fq, align 8, !tbaa !77
  store i8 0, ptr %i.fs, align 1, !tbaa !79
  %22 = atomicrmw sub ptr %i.fh, i32 1073741824 release, align 4 ; 0 uses
  %i.ft = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #42
          to label %bb.bb unwind label %bb.by     ; 13 uses

bb.bb:                                            ; preds = %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit
  %i.fu = load ptr, ptr %18, align 16, !tbaa !113 ; 5 uses
  store ptr %i.fu, ptr %20, align 8, !tbaa !113
  %i.fv = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.fw = load ptr, ptr %i.dy, align 8, !tbaa !95 ; 5 uses
  store ptr %i.fw, ptr %i.fv, align 8, !tbaa !95
  %.not.i.i.i54 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i54, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread, label %bb.bc

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread: ; preds = %bb.bb
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.ft, align 8, !tbaa !100
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  store ptr %i.fu, ptr %i.fx, align 8, !tbaa !113
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store ptr null, ptr %i.fy, align 8, !tbaa !95
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 3 uses
  %i.ga = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i55 = icmp eq i8 %i.ga, 0
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i55, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread178

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread178: ; preds = %bb.bc
  %i.gd = load i32, ptr %i.fz, align 4, !tbaa !63
  %i.ge = add nsw i32 %i.gd, 1
  store i32 %i.ge, ptr %i.fz, align 4, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.ft, align 8, !tbaa !100
  store ptr %i.fu, ptr %i.gb, align 8, !tbaa !113
  store ptr %i.fw, ptr %i.gc, align 8, !tbaa !95
  br label %bb.bd

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit: ; preds = %bb.bc
  %i.gf = atomicrmw volatile add ptr %i.fz, i32 1 acq_rel, align 4 ; 0 uses
  %.pr125.pre = load ptr, ptr %i.fv, align 8, !tbaa !95 ; 3 uses
  %.pre134 = load ptr, ptr %20, align 8, !tbaa !113 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.ft, align 8, !tbaa !100
  store ptr %.pre134, ptr %i.gb, align 8, !tbaa !113
  store ptr %.pr125.pre, ptr %i.gc, align 8, !tbaa !95
  %.not.i.i.i.i56 = icmp eq ptr %.pr125.pre, null
  br i1 %.not.i.i.i.i56, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread178, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit
  %.pr125181 = phi ptr [ %i.fw, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread178 ], [ %.pr125.pre, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ]
  %i.gg = phi ptr [ %i.fu, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread178 ], [ %.pre134, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.pr125181, i64 8 ; 3 uses
  %i.gi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i57 = icmp eq i8 %i.gi, 0
  br i1 %.not.i.i.i.i.i57, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gj = load i32, ptr %i.gh, align 4, !tbaa !63
  %i.gk = add nsw i32 %i.gj, 1
  store i32 %i.gk, ptr %i.gh, align 4, !tbaa !63
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

bb.bf:                                            ; preds = %bb.bd
  %i.gl = atomicrmw volatile add ptr %i.gh, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %20, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread, %bb.bf, %bb.be, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit
  %i.gm = phi ptr [ %i.gb, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ], [ %i.gb, %bb.be ], [ %i.gb, %bb.bf ], [ %i.fx, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread ]
  %i.gn = phi ptr [ %.pre134, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ], [ %i.gg, %bb.be ], [ %.pre.i, %bb.bf ], [ %i.fu, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  invoke void @_ZNK16OpenColorIO_v2_59Processor22getDefaultCPUProcessorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.13") align 8 %i.go, ptr noundef nonnull align 8 dereferenceable(8) %i.gn)
          to label %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit unwind label %bb.bz

_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i
  %i.gp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #42
          to label %bb.bk unwind label %bb.bg     ; 5 uses

bb.bg:                                            ; preds = %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit
  %i.gq = landingpad { ptr, i32 }
          catch ptr null
  %i.gr = extractvalue { ptr, i32 } %i.gq, 0
  %i.gs = call ptr @__cxa_begin_catch(ptr %i.gr) #38 ; 0 uses
  call void @_ZN11OpenImageIO4v3_119ColorProcessor_OCIOD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ft) #38
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef 40) #40
  invoke void @__cxa_rethrow() #39
          to label %bb.bj unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gt = landingpad { ptr, i32 }
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body.thread unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #41
  unreachable

bb.bj:                                            ; preds = %bb.bg
  unreachable

bb.bk:                                            ; preds = %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store i32 1, ptr %i.gw, align 8, !tbaa !97
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 1, ptr %i.gx, align 4, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gp, align 8, !tbaa !100
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store ptr %i.ft, ptr %i.gy, align 8, !tbaa !192
  store ptr %i.ft, ptr %7, align 8, !tbaa !193
  %i.gz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !95 ; 8 uses
  store ptr %i.gp, ptr %i.gz, align 8, !tbaa !95
  %.not.i.i.i.i58 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i58, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 4 uses
  %i.hc = load atomic i64, ptr %i.hb acquire, align 8 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 4294967297
  %i.he = trunc i64 %i.hc to i32                  ; 2 uses
  br i1 %i.hd, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.hb, align 8, !tbaa !97
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store i32 0, ptr %i.hf, align 4, !tbaa !98
  %i.hg = load ptr, ptr %i.ha, align 8, !tbaa !100
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #38, !inline_history !18
  %i.hj = load ptr, ptr %i.ha, align 8, !tbaa !100
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #38, !inline_history !18
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bn:                                            ; preds = %bb.bl
  %i.hm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i59 = icmp eq i8 %i.hm, 0
  br i1 %.not.i.i.i.i.i59, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hn = add nsw i32 %i.he, -1
  store i32 %i.hn, ptr %i.hb, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i60

bb.bp:                                            ; preds = %bb.bn
  %i.ho = atomicrmw volatile add ptr %i.hb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i60

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i60: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i.i.i61 = phi i32 [ %i.he, %bb.bo ], [ %i.ho, %bb.bp ]
  %i.hp = icmp eq i32 %.0.i.i.i.i.i.i61, 1
  br i1 %i.hp, label %bb.bq, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.bq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i60
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i60, %bb.bm, %bb.bk
  %i.hq = load ptr, ptr %i.fv, align 8, !tbaa !95 ; 8 uses
  %.not.i.i66 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i66, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit70, label %bb.br

bb.br:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 4 uses
  %i.hs = load atomic i64, ptr %i.hr acquire, align 8 ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 4294967297
  %i.hu = trunc i64 %i.hs to i32                  ; 2 uses
  br i1 %i.ht, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %i.hr, align 8, !tbaa !97
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  store i32 0, ptr %i.hv, align 4, !tbaa !98
  %i.hw = load ptr, ptr %i.hq, align 8, !tbaa !100
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #38, !inline_history !4
  %i.hz = load ptr, ptr %i.hq, align 8, !tbaa !100
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #38, !inline_history !4
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit70

bb.bt:                                            ; preds = %bb.br
  %i.ic = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i67 = icmp eq i8 %i.ic, 0
  br i1 %.not.i.i.i67, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.id = add nsw i32 %i.hu, -1
  store i32 %i.id, ptr %i.hr, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i68

bb.bv:                                            ; preds = %bb.bt
end_hunk_8
begin_hunk_9_@_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEES9_bS9_S9_PKNS0_11ColorConfigENS0_3ROIEi:bb.a
  %i.ai = load i64, ptr %i.u, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.aj = load ptr, ptr %.024, align 8, !tbaa !159, !noalias !625
  store ptr %i.ah, ptr %15, align 8, !tbaa !69, !noalias !625
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !70, !noalias !625
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %26, ptr noundef nonnull align 8 dereferenceable(385) %i.aj, ptr noundef nonnull dead_on_return %15)
          to label %bb.o unwind label %bb.ao

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.al = load ptr, ptr %5, align 8, !tbaa !69    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !70
  %i.ao = load ptr, ptr %6, align 8, !tbaa !69    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !70
  %i.ar = load ptr, ptr %25, align 8, !tbaa !69, !noalias !626 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !70, !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !626
  %.not.i.i32 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i32, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.ar, ptr %14, align 8, !tbaa !69, !noalias !626
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !70, !noalias !626
  %i.av = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %14)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i unwind label %bb.ao

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i: ; preds = %bb.p, %bb.o
  %i.aw = phi ptr [ null, %bb.o ], [ %i.av, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14), !noalias !626
  %i.ax = load ptr, ptr %26, align 8, !tbaa !69, !noalias !626 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !70, !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !626
  %.not.i1.i = icmp eq ptr %i.ax, null
  br i1 %.not.i1.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i, label %bb.q

bb.q:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i
  store ptr %i.ax, ptr %13, align 8, !tbaa !69, !noalias !626
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !70, !noalias !626
  %i.bb = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %13)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i unwind label %bb.ao

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i: ; preds = %bb.q, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i
  %i.bc = phi ptr [ null, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i ], [ %i.bb, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !626
  %.not.i3.i = icmp eq ptr %i.al, null
  br i1 %.not.i3.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i, label %bb.r

bb.r:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i
  store ptr %i.al, ptr %12, align 8, !tbaa !69, !noalias !626
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.an, ptr %i.bd, align 8, !tbaa !70, !noalias !626
  %i.be = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %12)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i unwind label %bb.ao

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i: ; preds = %bb.r, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i
  %i.bf = phi ptr [ null, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i ], [ %i.be, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !626
  %.not.i5.i = icmp eq ptr %i.ao, null
  br i1 %.not.i5.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit6.i, label %bb.s

bb.s:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i
  store ptr %i.ao, ptr %11, align 8, !tbaa !69, !noalias !626
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.aq, ptr %i.bg, align 8, !tbaa !70, !noalias !626
  %i.bh = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %11)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit6.i unwind label %bb.ao

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit6.i: ; preds = %bb.s, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i
  %i.bi = phi ptr [ null, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i ], [ %i.bh, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !626
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_7ustringES2_S2_S2_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %24, ptr noundef nonnull readonly align 8 dereferenceable(8) %.024, ptr %i.aw, ptr %i.bc, ptr %i.bf, ptr %i.bi)
          to label %_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_17basic_string_viewIcSt11char_traitsIcEEES5_S5_S5_.exit unwind label %bb.ao

_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_17basic_string_viewIcSt11char_traitsIcEEES5_S5_S5_.exit: ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit6.i
  %i.bj = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.bl = load <2 x ptr>, ptr %24, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.bl, ptr %23, align 16, !tbaa !110
  %.not.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_17basic_string_viewIcSt11char_traitsIcEEES5_S5_S5_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bn, align 8, !tbaa !97
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !98
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !100
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #38, !inline_history !18
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !100
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #38, !inline_history !18
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

bb.v:                                             ; preds = %bb.t
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.w ], [ %i.ca, %bb.x ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.y, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, !prof !101

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #38
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit: ; preds = %_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_17basic_string_viewIcSt11char_traitsIcEEES5_S5_S5_.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.y
  %i.cc = load ptr, ptr %i.bj, align 8, !tbaa !95 ; 8 uses
  %.not.i.i37 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i37, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.cd, align 8, !tbaa !97
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !98
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !100
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #38, !inline_history !7
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !100
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.cq = atomicrmw volatile add ptr %i.cd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i = phi i32 [ %i.cg, %bb.ac ], [ %i.cq, %bb.ad ]
  %i.cr = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cr, label %bb.ae, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  %i.cs = load ptr, ptr %23, align 16, !tbaa !143 ; 2 uses
  %.not66 = icmp eq ptr %i.cs, null
  br i1 %.not66, label %bb.af, label %bb.ar

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ct = load ptr, ptr %.024, align 8, !tbaa !159 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 216 ; 6 uses
  %i.cv = atomicrmw add ptr %i.cu, i32 1 acquire, align 4
  %i.cw = and i32 %i.cv, 1073741824
  %.not.i.i.i.i38 = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i.i.i38, label %.loopexit68, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %29 = atomicrmw sub ptr %i.cu, i32 1 seq_cst, align 4
  %i.cx = add i32 %29, 1073741823
  %i.cy = and i32 %i.cx, 1073741823               ; 2 uses
  %i.cz = add nuw nsw i32 %i.cy, 1
  %i.da = cmpxchg weak ptr %i.cu, i32 %i.cy, i32 %i.cz acquire acquire, align 4
  %i.db = extractvalue { i32, i1 } %i.da, 1
  br i1 %i.db, label %.loopexit68, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i: ; preds = %bb.ag, %bb.aj
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %bb.aj ], [ 1, %bb.ag ] ; 5 uses
  %.not.i.i.i.i.i39 = icmp sgt i32 %.sroa.0.0.i.i.i.i, 16
  br i1 %.not.i.i.i.i.i39, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.dc = icmp sgt i32 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ah, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi i32 [ %i.dd, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.ah ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.dd = add nuw nsw i32 %.03.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i32 %i.dd, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ah
  %i.de = shl nsw i32 %.sroa.0.0.i.i.i.i, 1
  br label %bb.aj

bb.ai:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.df = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i, %bb.ai ], [ %i.de, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i ]
  %i.dg = load atomic i32, ptr %i.cu seq_cst, align 4
  %i.dh = and i32 %i.dg, 1073741823               ; 2 uses
  %i.di = add nuw nsw i32 %i.dh, 1
  %i.dj = cmpxchg weak ptr %i.cu, i32 %i.dh, i32 %i.di acquire acquire, align 4
  %i.dk = extractvalue { i32, i1 } %i.dj, 1
  br i1 %i.dk, label %.loopexit68, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i, !llvm.loop !10

.loopexit68:                                      ; preds = %bb.aj, %bb.ag, %bb.af
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ct, i64 232
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !78
  %.not67 = icmp eq i64 %i.dm, 0
  %30 = atomicrmw sub ptr %i.cu, i32 1 release, align 4 ; 0 uses
  br i1 %.not67, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %.loopexit68
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.dn = load ptr, ptr %.024, align 8, !tbaa !159, !noalias !627 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.do = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.do, ptr %27, align 8, !tbaa !90, !alias.scope !629
  %i.dp = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 0, ptr %i.dp, align 8, !tbaa !78, !alias.scope !629
  store i8 0, ptr %i.do, align 8, !tbaa !79, !alias.scope !629
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 216 ; 3 uses
  %i.dr = cmpxchg weak ptr %i.dq, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !628
  %i.ds = extractvalue { i32, i1 } %i.dr, 1
  br i1 %i.ds, label %.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i40

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i40: ; preds = %bb.ak, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i41 = phi i32 [ %.sroa.0.1.i.i.i.i44, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i ], [ 1, %bb.ak ] ; 5 uses
  %.not.i.i.i.i.i42 = icmp sgt i32 %.sroa.0.0.i.i.i.i41, 16
  br i1 %.not.i.i.i.i.i42, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i40
  %i.dt = icmp sgt i32 %.sroa.0.0.i.i.i.i41, 0
  br i1 %i.dt, label %.lr.ph.i.i.i.i.i.i45, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i43

.lr.ph.i.i.i.i.i.i45:                             ; preds = %bb.al, %.lr.ph.i.i.i.i.i.i45
  %.03.i.i.i.i.i.i46 = phi i32 [ %i.du, %.lr.ph.i.i.i.i.i.i45 ], [ 0, %bb.al ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.du = add nuw nsw i32 %.03.i.i.i.i.i.i46, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i47 = icmp eq i32 %i.du, %.sroa.0.0.i.i.i.i41
  br i1 %exitcond.not.i.i.i.i.i.i47, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i43, label %.lr.ph.i.i.i.i.i.i45, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i43:   ; preds = %.lr.ph.i.i.i.i.i.i45, %bb.al
  %i.dv = shl nsw i32 %.sroa.0.0.i.i.i.i41, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i

bb.am:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i40
  %i.dw = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i: ; preds = %bb.am, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i43
  %.sroa.0.1.i.i.i.i44 = phi i32 [ %.sroa.0.0.i.i.i.i41, %bb.am ], [ %i.dv, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i43 ]
  %i.dx = cmpxchg weak ptr %i.dq, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !628
  %i.dy = extractvalue { i32, i1 } %i.dx, 1
  br i1 %i.dy, label %.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i40, !llvm.loop !2

.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i, %bb.ak
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 224
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %i.dz) #38
  %31 = atomicrmw sub ptr %i.dq, i32 1073741824 release, align 4, !noalias !628 ; 0 uses
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA3_cJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(3) @.str.69, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %.loopexit
  %i.ea = load ptr, ptr %27, align 8, !tbaa !77   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.do
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.an
  %i.ec = load i64, ptr %i.do, align 8, !tbaa !79
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  br label %bb.ay

bb.ao:                                            ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit6.i, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n, %bb.m
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  br label %.body

bb.ap:                                            ; preds = %.loopexit
  %i.ef = landingpad { ptr, i32 }
          cleanup
  %i.eg = load ptr, ptr %27, align 8, !tbaa !77   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.do
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.ap
  %i.ei = load i64, ptr %i.do, align 8, !tbaa !79
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  br label %.body

bb.aq:                                            ; preds = %.loopexit68
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA65_cJRNS0_17basic_string_viewIcSt11char_traitsIcEEES8_EEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(65) @.str.74, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.ay unwind label %bb.ax

bb.ar:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ek = load i8, ptr %18, align 8, !tbaa !153, !range !73, !noundef !74
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.em = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #38 ; 0 uses
  %i.en = load i64, ptr %10, align 8, !tbaa !150
  %i.eo = mul nsw i64 %i.en, 1000000000
  %i.ep = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !151
  %i.er = add nsw i64 %i.eo, %i.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  %i.es = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.et = load i64, ptr %i.es, align 8, !tbaa !152
  %i.eu = sub i64 %i.er, %i.et
  %i.ev = call noundef i64 @llvm.abs.i64(i64 %i.eu, i1 true)
  %i.ew = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !154
  %i.ey = add nsw i64 %i.ev, %i.ex
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !154
  store i8 0, ptr %18, align 8, !tbaa !153
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ez = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !162
  %i.fb = add nsw i32 %i.fa, -1
  store i32 %i.fb, ptr %i.ez, align 8, !tbaa !162
  %i.fc = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertERNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.cs, i1 noundef zeroext %4, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef %9)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %bb.at
  br i1 %i.fc, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.fd = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_18ImageBuf7specmodEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fe = load ptr, ptr %3, align 8, !tbaa !69
  store ptr %i.fe, ptr %28, align 8, !tbaa !69
  %i.ff = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.fg = load i64, ptr %i.u, align 8, !tbaa !70
  store i64 %i.fg, ptr %i.ff, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %i.fd, ptr noundef nonnull dead_on_return %28)
          to label %bb.ay unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aq, %bb.aw, %bb.av, %bb.at
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ay:                                            ; preds = %bb.au, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.aq
  %.022 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.aq ], [ true, %bb.aw ], [ false, %bb.au ]
  %i.fi = load ptr, ptr %i.bk, align 8, !tbaa !95 ; 8 uses
  %.not.i.i51 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i51, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 4 uses
  %i.fk = load atomic i64, ptr %i.fj acquire, align 8 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 4294967297
  %i.fm = trunc i64 %i.fk to i32                  ; 2 uses
  br i1 %i.fl, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.fj, align 8, !tbaa !97
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i32 0, ptr %i.fn, align 4, !tbaa !98
  %i.fo = load ptr, ptr %i.fi, align 8, !tbaa !100
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #38, !inline_history !7
  %i.fr = load ptr, ptr %i.fi, align 8, !tbaa !100
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55

bb.bb:                                            ; preds = %bb.az
  %i.fu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i52 = icmp eq i8 %i.fu, 0
  br i1 %.not.i.i.i52, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fv = add nsw i32 %i.fm, -1
  store i32 %i.fv, ptr %i.fj, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

bb.bd:                                            ; preds = %bb.bb
  %i.fw = atomicrmw volatile add ptr %i.fj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i54 = phi i32 [ %i.fm, %bb.bc ], [ %i.fw, %bb.bd ]
  %i.fx = icmp eq i32 %.0.i.i.i.i54, 1
  br i1 %i.fx, label %bb.be, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55, !prof !101

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fi) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55: ; preds = %bb.ay, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  br label %bb.bf

.body:                                            ; preds = %bb.ax, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %bb.ao
  %.pn27 = phi { ptr, i32 } [ %i.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %i.ee, %bb.ao ], [ %i.fh, %bb.ax ], [ %i.ac, %bb.l ]
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %23) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  br label %bb.bg

bb.bf:                                            ; preds = %bb.f, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55
  %.123 = phi i1 [ %.022, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55 ], [ false, %bb.f ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %18) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  ret i1 %.123

bb.bg:                                            ; preds = %.body, %bb.e, %bb.d
  %.pn29 = phi { ptr, i32 } [ %i.p, %bb.d ], [ %.pn27, %.body ], [ %i.q, %bb.e ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %18) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  resume { ptr, i32 } %.pn29
}

declare noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

declare void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA25_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(25) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.91", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.a = tail call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(25) %1) #38, !noalias !632
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !632
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 1 dereferenceable(25) %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !632
  %i.b = load ptr, ptr %4, align 8, !tbaa !77
  store ptr %i.b, ptr %3, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !78
  store i64 %i.e, ptr %i.c, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf5errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !77     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
end_hunk_9
begin_hunk_10_@_ZN11OpenImageIO4v3_112ImageBufAlgo8ociolookERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEES9_S9_bbS9_S9_PKNS0_11ColorConfigENS0_3ROIEi:bb.a
bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.aw = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.s, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, !prof !64

bb.s:                                             ; preds = %bb.r
  %i.ay = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr @.str.7, ptr %15, align 8, !tbaa !69
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_111ColorConfigC1ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr noundef nonnull dead_on_return %15)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ba = call i32 @__cxa_atexit(ptr @_ZN11OpenImageIO4v3_111ColorConfigD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr nonnull @__dso_handle) #38 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit

bb.v:                                             ; preds = %bb.t
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %.body

_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit: ; preds = %bb.r, %bb.s, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !70
  br label %bb.w

bb.w:                                             ; preds = %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, %bb.q
  %i.bc = phi i64 [ %i.as, %bb.q ], [ %.pre, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ]
  %.030 = phi ptr [ %9, %bb.q ], [ @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #38
  %i.bd = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.bd, ptr %30, align 8, !tbaa !69
  %i.be = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !70
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !70
  %i.bh = load ptr, ptr %3, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.bi = load ptr, ptr %.030, align 8, !tbaa !159, !noalias !680
  store ptr %i.bh, ptr %14, align 8, !tbaa !69, !noalias !680
  %i.bj = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.bc, ptr %i.bj, align 8, !tbaa !70, !noalias !680
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %31, ptr noundef nonnull align 8 dereferenceable(385) %i.bi, ptr noundef nonnull dead_on_return %14)
          to label %bb.x unwind label %bb.av

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.bk = load ptr, ptr %4, align 8, !tbaa !69
  %i.bl = load i64, ptr %i.x, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.bm = load ptr, ptr %.030, align 8, !tbaa !159, !noalias !681
  store ptr %i.bk, ptr %13, align 8, !tbaa !69, !noalias !681
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !70, !noalias !681
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %32, ptr noundef nonnull align 8 dereferenceable(385) %i.bm, ptr noundef nonnull dead_on_return %13)
          to label %bb.y unwind label %bb.av

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.bo = load ptr, ptr %7, align 8, !tbaa !69
  store ptr %i.bo, ptr %33, align 8, !tbaa !69
  %i.bp = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !70
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !70
  %i.bs = load ptr, ptr %8, align 8, !tbaa !69
  store ptr %i.bs, ptr %34, align 8, !tbaa !69
  %i.bt = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !70
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig19createLookTransformENS0_17basic_string_viewIcSt11char_traitsIcEEES5_S5_bS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %29, ptr noundef nonnull align 8 dereferenceable(8) %.030, ptr noundef nonnull dead_on_return %30, ptr noundef nonnull dead_on_return %31, ptr noundef nonnull dead_on_return %32, i1 noundef zeroext %6, ptr noundef nonnull dead_on_return %33, ptr noundef nonnull dead_on_return %34)
          to label %bb.z unwind label %bb.av

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.by = load <2 x ptr>, ptr %29, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.by, ptr %28, align 16, !tbaa !110
  %.not.i.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 4 uses
  %i.cb = load atomic i64, ptr %i.ca acquire, align 8 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 4294967297
  %i.cd = trunc i64 %i.cb to i32                  ; 2 uses
  br i1 %i.cc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.ca, align 8, !tbaa !97
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i32 0, ptr %i.ce, align 4, !tbaa !98
  %i.cf = load ptr, ptr %i.bz, align 8, !tbaa !100
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #38, !inline_history !18
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !100
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #38, !inline_history !18
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.cl, 0
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cm = add nsw i32 %i.cd, -1
  store i32 %i.cm, ptr %i.ca, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.cn = atomicrmw volatile add ptr %i.ca, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i = phi i32 [ %i.cd, %bb.ad ], [ %i.cn, %bb.ae ]
  %i.co = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.co, label %bb.af, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, !prof !101

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bz) #38
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit: ; preds = %bb.z, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.af
  %i.cp = load ptr, ptr %i.bw, align 8, !tbaa !95 ; 8 uses
  %.not.i.i49 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i49, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 4 uses
  %i.cr = load atomic i64, ptr %i.cq acquire, align 8 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 4294967297
  %i.ct = trunc i64 %i.cr to i32                  ; 2 uses
  br i1 %i.cs, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.cq, align 8, !tbaa !97
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i32 0, ptr %i.cu, align 4, !tbaa !98
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !100
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #38, !inline_history !7
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !100
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ai:                                            ; preds = %bb.ag
  %i.db = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i = icmp eq i8 %i.db, 0
  br i1 %.not.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dc = add nsw i32 %i.ct, -1
  store i32 %i.dc, ptr %i.cq, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.dd = atomicrmw volatile add ptr %i.cq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i = phi i32 [ %i.ct, %bb.aj ], [ %i.dd, %bb.ak ]
  %i.de = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.de, label %bb.al, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  %i.df = load ptr, ptr %28, align 16, !tbaa !143 ; 2 uses
  %.not82 = icmp eq ptr %i.df, null
  br i1 %.not82, label %bb.am, label %bb.ay

bb.am:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dg = load ptr, ptr %.030, align 8, !tbaa !159 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 216 ; 6 uses
  %i.di = atomicrmw add ptr %i.dh, i32 1 acquire, align 4
  %i.dj = and i32 %i.di, 1073741824
  %.not.i.i.i.i50 = icmp eq i32 %i.dj, 0
  br i1 %.not.i.i.i.i50, label %.loopexit84, label %bb.an

bb.an:                                            ; preds = %bb.am
  %37 = atomicrmw sub ptr %i.dh, i32 1 seq_cst, align 4
  %i.dk = add i32 %37, 1073741823
  %i.dl = and i32 %i.dk, 1073741823               ; 2 uses
  %i.dm = add nuw nsw i32 %i.dl, 1
  %i.dn = cmpxchg weak ptr %i.dh, i32 %i.dl, i32 %i.dm acquire acquire, align 4
  %i.do = extractvalue { i32, i1 } %i.dn, 1
  br i1 %i.do, label %.loopexit84, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i: ; preds = %bb.an, %bb.aq
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %bb.aq ], [ 1, %bb.an ] ; 5 uses
  %.not.i.i.i.i.i51 = icmp sgt i32 %.sroa.0.0.i.i.i.i, 16
  br i1 %.not.i.i.i.i.i51, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.dp = icmp sgt i32 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.dp, label %.lr.ph.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ao, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi i32 [ %i.dq, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.ao ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.dq = add nuw nsw i32 %.03.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i32 %i.dq, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ao
  %i.dr = shl nsw i32 %.sroa.0.0.i.i.i.i, 1
  br label %bb.aq

bb.ap:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.ds = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i, %bb.ap ], [ %i.dr, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i ]
  %i.dt = load atomic i32, ptr %i.dh seq_cst, align 4
  %i.du = and i32 %i.dt, 1073741823               ; 2 uses
  %i.dv = add nuw nsw i32 %i.du, 1
  %i.dw = cmpxchg weak ptr %i.dh, i32 %i.du, i32 %i.dv acquire acquire, align 4
  %i.dx = extractvalue { i32, i1 } %i.dw, 1
  br i1 %i.dx, label %.loopexit84, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i, !llvm.loop !10

.loopexit84:                                      ; preds = %bb.aq, %bb.an, %bb.am
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dg, i64 232
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !78
  %.not83 = icmp eq i64 %i.dz, 0
  %38 = atomicrmw sub ptr %i.dh, i32 1 release, align 4 ; 0 uses
  br i1 %.not83, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %.loopexit84
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.ea = load ptr, ptr %.030, align 8, !tbaa !159, !noalias !682 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.eb = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  store ptr %i.eb, ptr %35, align 8, !tbaa !90, !alias.scope !684
  %i.ec = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 0, ptr %i.ec, align 8, !tbaa !78, !alias.scope !684
  store i8 0, ptr %i.eb, align 8, !tbaa !79, !alias.scope !684
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 216 ; 3 uses
  %i.ee = cmpxchg weak ptr %i.ed, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !683
  %i.ef = extractvalue { i32, i1 } %i.ee, 1
  br i1 %i.ef, label %.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i52

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i52: ; preds = %bb.ar, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i53 = phi i32 [ %.sroa.0.1.i.i.i.i56, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i ], [ 1, %bb.ar ] ; 5 uses
  %.not.i.i.i.i.i54 = icmp sgt i32 %.sroa.0.0.i.i.i.i53, 16
  br i1 %.not.i.i.i.i.i54, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i52
  %i.eg = icmp sgt i32 %.sroa.0.0.i.i.i.i53, 0
  br i1 %i.eg, label %.lr.ph.i.i.i.i.i.i57, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i55

.lr.ph.i.i.i.i.i.i57:                             ; preds = %bb.as, %.lr.ph.i.i.i.i.i.i57
  %.03.i.i.i.i.i.i58 = phi i32 [ %i.eh, %.lr.ph.i.i.i.i.i.i57 ], [ 0, %bb.as ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.eh = add nuw nsw i32 %.03.i.i.i.i.i.i58, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i59 = icmp eq i32 %i.eh, %.sroa.0.0.i.i.i.i53
  br i1 %exitcond.not.i.i.i.i.i.i59, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i55, label %.lr.ph.i.i.i.i.i.i57, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i55:   ; preds = %.lr.ph.i.i.i.i.i.i57, %bb.as
  %i.ei = shl nsw i32 %.sroa.0.0.i.i.i.i53, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i

bb.at:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i52
  %i.ej = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i: ; preds = %bb.at, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i55
  %.sroa.0.1.i.i.i.i56 = phi i32 [ %.sroa.0.0.i.i.i.i53, %bb.at ], [ %i.ei, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i55 ]
  %i.ek = cmpxchg weak ptr %i.ed, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !683
  %i.el = extractvalue { i32, i1 } %i.ek, 1
  br i1 %i.el, label %.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i52, !llvm.loop !2

.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i, %bb.ar
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 224
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %i.em) #38
  %39 = atomicrmw sub ptr %i.ed, i32 1073741824 release, align 4, !noalias !683 ; 0 uses
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA3_cJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(3) @.str.69, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %.loopexit
  %i.en = load ptr, ptr %35, align 8, !tbaa !77   ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.eb
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.au
  %i.ep = load i64, ptr %i.eb, align 8, !tbaa !79
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #38
  br label %bb.bf

bb.av:                                            ; preds = %bb.x, %bb.w, %bb.y
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  br label %.body

bb.aw:                                            ; preds = %.loopexit
  %i.es = landingpad { ptr, i32 }
          cleanup
  %i.et = load ptr, ptr %35, align 8, !tbaa !77   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.eb
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.aw
  %i.ev = load i64, ptr %i.eb, align 8, !tbaa !79
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #38
  br label %.body

bb.ax:                                            ; preds = %.loopexit84
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA56_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(56) @.str.85)
          to label %bb.bf unwind label %bb.be

bb.ay:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ex = load i8, ptr %18, align 8, !tbaa !153, !range !73, !noundef !74
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %i.ez = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %12) #38 ; 0 uses
  %i.fa = load i64, ptr %12, align 8, !tbaa !150
  %i.fb = mul nsw i64 %i.fa, 1000000000
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !151
  %i.fe = add nsw i64 %i.fb, %i.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  %i.ff = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !152
  %i.fh = sub i64 %i.fe, %i.fg
  %i.fi = call noundef i64 @llvm.abs.i64(i64 %i.fh, i1 true)
  %i.fj = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !154
  %i.fl = add nsw i64 %i.fi, %i.fk
  store i64 %i.fl, ptr %i.fj, align 8, !tbaa !154
  store i8 0, ptr %18, align 8, !tbaa !153
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.fm = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertERNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.df, i1 noundef zeroext %5, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %10, i32 noundef %11)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.fm, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.fn = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_18ImageBuf7specmodEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.fo = load ptr, ptr %4, align 8, !tbaa !69
  store ptr %i.fo, ptr %36, align 8, !tbaa !69
  %i.fp = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.fq = load i64, ptr %i.x, align 8, !tbaa !70
  store i64 %i.fq, ptr %i.fp, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %i.fn, ptr noundef nonnull dead_on_return %36)
          to label %bb.bf unwind label %bb.be

bb.be:                                            ; preds = %bb.ax, %bb.bd, %bb.bc, %bb.ba
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bf:                                            ; preds = %bb.bb, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ax
  %.028 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.ax ], [ true, %bb.bd ], [ false, %bb.bb ]
  %i.fs = load ptr, ptr %i.bx, align 8, !tbaa !95 ; 8 uses
  %.not.i.i63 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i63, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 4 uses
  %i.fu = load atomic i64, ptr %i.ft acquire, align 8 ; 2 uses
  %i.fv = icmp eq i64 %i.fu, 4294967297
  %i.fw = trunc i64 %i.fu to i32                  ; 2 uses
  br i1 %i.fv, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.ft, align 8, !tbaa !97
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  store i32 0, ptr %i.fx, align 4, !tbaa !98
  %i.fy = load ptr, ptr %i.fs, align 8, !tbaa !100
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %i.fs) #38, !inline_history !7
  %i.gb = load ptr, ptr %i.fs, align 8, !tbaa !100
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(16) %i.fs) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67

bb.bi:                                            ; preds = %bb.bg
  %i.ge = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i64 = icmp eq i8 %i.ge, 0
  br i1 %.not.i.i.i64, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gf = add nsw i32 %i.fw, -1
  store i32 %i.gf, ptr %i.ft, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65

bb.bk:                                            ; preds = %bb.bi
  %i.gg = atomicrmw volatile add ptr %i.ft, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i66 = phi i32 [ %i.fw, %bb.bj ], [ %i.gg, %bb.bk ]
  %i.gh = icmp eq i32 %.0.i.i.i.i66, 1
  br i1 %i.gh, label %bb.bl, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67, !prof !101

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fs) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67: ; preds = %bb.bf, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  br label %bb.bm

.body:                                            ; preds = %bb.be, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %bb.av
  %.pn37 = phi { ptr, i32 } [ %i.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %i.er, %bb.av ], [ %i.fr, %bb.be ], [ %i.bb, %bb.v ]
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %28) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  br label %bb.bn

bb.bm:                                            ; preds = %bb.p, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67
  %.129 = phi i1 [ %.028, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67 ], [ false, %bb.p ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %18) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  ret i1 %.129

bb.bn:                                            ; preds = %.body, %bb.n, %bb.h, %bb.e
  %.pn39 = phi { ptr, i32 } [ %i.u, %bb.e ], [ %.pn37, %.body ], [ %.pn33, %bb.n ], [ %.pn, %bb.h ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %18) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  resume { ptr, i32 } %.pn39
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA56_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(56) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.91", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.a = tail call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(56) %1) #38, !noalias !687
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !687
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 1 dereferenceable(56) %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !687
  %i.b = load ptr, ptr %4, align 8, !tbaa !77
  store ptr %i.b, ptr %3, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !78
  store i64 %i.e, ptr %i.c, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf5errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !77     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !79
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_10
begin_hunk_11_@_ZN11OpenImageIO4v3_112ImageBufAlgo11ociodisplayERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEES9_S9_S9_bbS9_S9_PKNS0_11ColorConfigENS0_3ROIEi:bb.a
  invoke void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %23, ptr noundef nonnull align 8 dereferenceable(160) %i.w, ptr noundef nonnull dead_on_return %24, ptr noundef nonnull dead_on_return %25)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false), !tbaa.struct !160
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  %.pre = load i64, ptr %i.j, align 8, !tbaa !70
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.l ], [ %i.ac, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  br label %.body

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread: ; preds = %bb.g, %bb.j
  %i.ae = phi i64 [ %i.k, %bb.g ], [ %.pre, %bb.j ] ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.n, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread

bb.n:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA25_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(25) @.str.73)
          to label %bb.bs unwind label %bb.bc

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread
  %i.ag = phi i64 [ %i.ae, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread ], [ 7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #38
  %i.ah = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.ah, ptr %27, align 8, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !70
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !70
  %i.al = load ptr, ptr %3, align 8, !tbaa !69
  store ptr %i.al, ptr %28, align 8, !tbaa !69
  %i.am = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !70
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !70
  %i.ap = load ptr, ptr %4, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.aq = load ptr, ptr %.034, align 8, !tbaa !159, !noalias !708
  store ptr %i.ap, ptr %16, align 8, !tbaa !69, !noalias !708
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.ag, ptr %i.ar, align 8, !tbaa !70, !noalias !708
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %29, ptr noundef nonnull align 8 dereferenceable(385) %i.aq, ptr noundef nonnull dead_on_return %16)
          to label %bb.o unwind label %bb.al

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.as = load ptr, ptr %5, align 8, !tbaa !69
  store ptr %i.as, ptr %30, align 8, !tbaa !69
  %i.at = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !70
  store i64 %i.av, ptr %i.at, align 8, !tbaa !70
  %i.aw = load ptr, ptr %8, align 8, !tbaa !69
  store ptr %i.aw, ptr %31, align 8, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !70
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !70
  %i.ba = load ptr, ptr %9, align 8, !tbaa !69
  store ptr %i.ba, ptr %32, align 8, !tbaa !69
  %i.bb = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !70
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig22createDisplayTransformENS0_17basic_string_viewIcSt11char_traitsIcEEES5_S5_S5_bS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %.034, ptr noundef nonnull dead_on_return %27, ptr noundef nonnull dead_on_return %28, ptr noundef nonnull dead_on_return %29, ptr noundef nonnull dead_on_return %30, i1 noundef zeroext %7, ptr noundef nonnull dead_on_return %31, ptr noundef nonnull dead_on_return %32)
          to label %bb.p unwind label %bb.al

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bg = load <2 x ptr>, ptr %26, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.bg, ptr %21, align 16, !tbaa !110
  %.not.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 4294967297
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bi, align 8, !tbaa !97
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bm, align 4, !tbaa !98
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !100
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #38, !inline_history !18
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !100
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #38, !inline_history !18
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

bb.s:                                             ; preds = %bb.q
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = add nsw i32 %i.bl, -1
  store i32 %i.bu, ptr %i.bi, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bv = atomicrmw volatile add ptr %i.bi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.bl, %bb.t ], [ %i.bv, %bb.u ]
  %i.bw = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bw, label %bb.v, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, !prof !101

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #38
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit: ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.v
  %i.bx = load ptr, ptr %i.be, align 8, !tbaa !95 ; 8 uses
  %.not.i.i47 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i47, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 4 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4294967297
  %i.cb = trunc i64 %i.bz to i32                  ; 2 uses
  br i1 %i.ca, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.by, align 8, !tbaa !97
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 0, ptr %i.cc, align 4, !tbaa !98
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !100
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #38, !inline_history !7
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !100
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ck = add nsw i32 %i.cb, -1
  store i32 %i.ck, ptr %i.by, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cl = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i = phi i32 [ %i.cb, %bb.z ], [ %i.cl, %bb.aa ]
  %i.cm = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cm, label %bb.ab, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  %i.cn = load ptr, ptr %21, align 16, !tbaa !143 ; 2 uses
  %.not127 = icmp eq ptr %i.cn, null
  br i1 %.not127, label %bb.ac, label %bb.ao

bb.ac:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.co = load ptr, ptr %.034, align 8, !tbaa !159 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 216 ; 6 uses
  %i.cq = atomicrmw add ptr %i.cp, i32 1 acquire, align 4
  %i.cr = and i32 %i.cq, 1073741824
  %.not.i.i.i.i48 = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i.i.i48, label %.loopexit129, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %40 = atomicrmw sub ptr %i.cp, i32 1 seq_cst, align 4
  %i.cs = add i32 %40, 1073741823
  %i.ct = and i32 %i.cs, 1073741823               ; 2 uses
  %i.cu = add nuw nsw i32 %i.ct, 1
  %i.cv = cmpxchg weak ptr %i.cp, i32 %i.ct, i32 %i.cu acquire acquire, align 4
  %i.cw = extractvalue { i32, i1 } %i.cv, 1
  br i1 %i.cw, label %.loopexit129, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i: ; preds = %bb.ad, %bb.ag
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %bb.ag ], [ 1, %bb.ad ] ; 5 uses
  %.not.i.i.i.i.i49 = icmp sgt i32 %.sroa.0.0.i.i.i.i, 16
  br i1 %.not.i.i.i.i.i49, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.cx = icmp sgt i32 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ae, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi i32 [ %i.cy, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.ae ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.cy = add nuw nsw i32 %.03.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i32 %i.cy, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ae
  %i.cz = shl nsw i32 %.sroa.0.0.i.i.i.i, 1
  br label %bb.ag

bb.af:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.da = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i, %bb.af ], [ %i.cz, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i ]
  %i.db = load atomic i32, ptr %i.cp seq_cst, align 4
  %i.dc = and i32 %i.db, 1073741823               ; 2 uses
  %i.dd = add nuw nsw i32 %i.dc, 1
  %i.de = cmpxchg weak ptr %i.cp, i32 %i.dc, i32 %i.dd acquire acquire, align 4
  %i.df = extractvalue { i32, i1 } %i.de, 1
  br i1 %i.df, label %.loopexit129, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i, !llvm.loop !10

.loopexit129:                                     ; preds = %bb.ag, %bb.ad, %bb.ac
  %i.dg = getelementptr inbounds nuw i8, ptr %i.co, i64 232
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !78
  %.not128 = icmp eq i64 %i.dh, 0
  %41 = atomicrmw sub ptr %i.cp, i32 1 release, align 4 ; 0 uses
  br i1 %.not128, label %bb.an, label %bb.ah

bb.ah:                                            ; preds = %.loopexit129
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !709)
  %i.di = load ptr, ptr %.034, align 8, !tbaa !159, !noalias !709 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %i.dj = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  store ptr %i.dj, ptr %33, align 8, !tbaa !90, !alias.scope !711
  %i.dk = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 0, ptr %i.dk, align 8, !tbaa !78, !alias.scope !711
  store i8 0, ptr %i.dj, align 8, !tbaa !79, !alias.scope !711
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 216 ; 3 uses
  %i.dm = cmpxchg weak ptr %i.dl, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !710
  %i.dn = extractvalue { i32, i1 } %i.dm, 1
  br i1 %i.dn, label %.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i50

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i50: ; preds = %bb.ah, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i51 = phi i32 [ %.sroa.0.1.i.i.i.i54, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i ], [ 1, %bb.ah ] ; 5 uses
  %.not.i.i.i.i.i52 = icmp sgt i32 %.sroa.0.0.i.i.i.i51, 16
  br i1 %.not.i.i.i.i.i52, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i50
  %i.do = icmp sgt i32 %.sroa.0.0.i.i.i.i51, 0
  br i1 %i.do, label %.lr.ph.i.i.i.i.i.i55, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i53

.lr.ph.i.i.i.i.i.i55:                             ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i55
  %.03.i.i.i.i.i.i56 = phi i32 [ %i.dp, %.lr.ph.i.i.i.i.i.i55 ], [ 0, %bb.ai ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.dp = add nuw nsw i32 %.03.i.i.i.i.i.i56, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i57 = icmp eq i32 %i.dp, %.sroa.0.0.i.i.i.i51
  br i1 %exitcond.not.i.i.i.i.i.i57, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i53, label %.lr.ph.i.i.i.i.i.i55, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i53:   ; preds = %.lr.ph.i.i.i.i.i.i55, %bb.ai
  %i.dq = shl nsw i32 %.sroa.0.0.i.i.i.i51, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i

bb.aj:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i50
  %i.dr = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i: ; preds = %bb.aj, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i53
  %.sroa.0.1.i.i.i.i54 = phi i32 [ %.sroa.0.0.i.i.i.i51, %bb.aj ], [ %i.dq, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i53 ]
  %i.ds = cmpxchg weak ptr %i.dl, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !710
  %i.dt = extractvalue { i32, i1 } %i.ds, 1
  br i1 %i.dt, label %.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i50, !llvm.loop !2

.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i, %bb.ah
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 224
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %i.du) #38
  %42 = atomicrmw sub ptr %i.dl, i32 1073741824 release, align 4, !noalias !710 ; 0 uses
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA3_cJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(3) @.str.69, ptr noundef nonnull align 8 dereferenceable(32) %33)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %.loopexit
  %i.dv = load ptr, ptr %33, align 8, !tbaa !77   ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.dj
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ak
  %i.dx = load i64, ptr %i.dj, align 8, !tbaa !79
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #38
  br label %bb.bs

bb.al:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread, %bb.o
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  br label %.body

bb.am:                                            ; preds = %.loopexit
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = load ptr, ptr %33, align 8, !tbaa !77   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.dj
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.am
  %i.ed = load i64, ptr %i.dj, align 8, !tbaa !79
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #38
  br label %.body

bb.an:                                            ; preds = %.loopexit129
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA56_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(56) @.str.85)
          to label %bb.bs unwind label %bb.bc

bb.ao:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ef = load i8, ptr %19, align 8, !tbaa !153, !range !73, !noundef !74
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  %i.eh = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %15) #38 ; 0 uses
  %i.ei = load i64, ptr %15, align 8, !tbaa !150
  %i.ej = mul nsw i64 %i.ei, 1000000000
  %i.ek = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !151
  %i.em = add nsw i64 %i.ej, %i.el
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  %i.en = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !152
  %i.ep = sub i64 %i.em, %i.eo
  %i.eq = call noundef i64 @llvm.abs.i64(i64 %i.ep, i1 true)
  %i.er = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !154
  %i.et = add nsw i64 %i.eq, %i.es
  store i64 %i.et, ptr %i.er, align 8, !tbaa !154
  store i8 0, ptr %19, align 8, !tbaa !153
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.eu = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertERNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.cn, i1 noundef zeroext %6, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %11, i32 noundef %12)
          to label %bb.ar unwind label %bb.bc

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.eu, label %bb.as, label %bb.bs

bb.as:                                            ; preds = %bb.ar
  br i1 %7, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.ev = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_18ImageBuf7specmodEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.au unwind label %bb.bc

bb.au:                                            ; preds = %bb.at
  %i.ew = load ptr, ptr %4, align 8, !tbaa !69
  %i.ex = load i64, ptr %i.j, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.ey = load ptr, ptr %.034, align 8, !tbaa !159, !noalias !712
  store ptr %i.ew, ptr %14, align 8, !tbaa !69, !noalias !712
  %i.ez = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ex, ptr %i.ez, align 8, !tbaa !70, !noalias !712
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %34, ptr noundef nonnull align 8 dereferenceable(385) %i.ey, ptr noundef nonnull dead_on_return %14)
          to label %bb.av unwind label %bb.bc

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %i.ev, ptr noundef nonnull dead_on_return %34)
          to label %bb.bs unwind label %bb.bc

bb.aw:                                            ; preds = %bb.as
  %i.fa = load i64, ptr %i.aj, align 8, !tbaa !70 ; 2 uses
  switch i64 %i.fa, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66.thread [
    i64 0, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i62
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i62: ; preds = %bb.aw
  %i.fb = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 1
  %i.fd = xor i32 %i.fc, 1634100580
  %i.fe = getelementptr i8, ptr %i.fb, i64 3
  %i.ff = load i32, ptr %i.fe, align 1
  %i.fg = xor i32 %i.ff, 1953264993
  %i.fh = or i32 %i.fd, %i.fg
  %i.fi = icmp ne i32 %i.fh, 0
  %i.fj = zext i1 %i.fi to i32
  %.not.i.i64 = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i64, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66: ; preds = %bb.aw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i62
  %i.fk = load ptr, ptr %.034, align 8, !tbaa !159
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !86 ; 2 uses
  %i.fm = icmp ne ptr %i.fl, null
  %i.fn = load i32, ptr @_ZN11OpenImageIO4v3_1L12disable_ocioE, align 4
  %i.fo = icmp eq i32 %i.fn, 0
  %or.cond.not.i = select i1 %i.fm, i1 %i.fo, i1 false
  br i1 %or.cond.not.i, label %bb.ax, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

bb.ax:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66
  %i.fp = invoke noundef ptr @_ZNK16OpenColorIO_v2_56Config17getDefaultDisplayEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fl)
          to label %_ZNK11OpenImageIO4v3_111ColorConfig21getDefaultDisplayNameEv.exit unwind label %bb.bc ; 3 uses

_ZNK11OpenImageIO4v3_111ColorConfig21getDefaultDisplayNameEv.exit: ; preds = %bb.ax
  %.not.i67 = icmp eq ptr %i.fp, null
  br i1 %.not.i67, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZNK11OpenImageIO4v3_111ColorConfig21getDefaultDisplayNameEv.exit
  %i.fq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fp) #38
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66, %_ZNK11OpenImageIO4v3_111ColorConfig21getDefaultDisplayNameEv.exit, %bb.ay
  %.0.i126 = phi ptr [ %i.fp, %bb.ay ], [ null, %_ZNK11OpenImageIO4v3_111ColorConfig21getDefaultDisplayNameEv.exit ], [ null, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66 ]
  %i.fr = phi i64 [ %i.fq, %bb.ay ], [ 0, %_ZNK11OpenImageIO4v3_111ColorConfig21getDefaultDisplayNameEv.exit ], [ 0, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66 ] ; 2 uses
  store ptr %.0.i126, ptr %2, align 8, !tbaa !146
  store i64 %i.fr, ptr %i.aj, align 8, !tbaa !91
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66.thread: ; preds = %bb.aw, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i62, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  %i.fs = phi i64 [ %i.fa, %bb.aw ], [ 7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i62 ], [ %i.fr, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit ]
  %i.ft = load i64, ptr %i.an, align 8, !tbaa !70
  switch i64 %i.ft, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit72.thread [
    i64 0, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit72
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i68
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i68: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66.thread
  %i.fu = load ptr, ptr %3, align 8, !tbaa !69    ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 1
  %i.fw = xor i32 %i.fv, 1634100580
  %i.fx = getelementptr i8, ptr %i.fu, i64 3
  %i.fy = load i32, ptr %i.fx, align 1
  %i.fz = xor i32 %i.fy, 1953264993
  %i.ga = or i32 %i.fw, %i.fz
  %i.gb = icmp ne i32 %i.ga, 0
  %i.gc = zext i1 %i.gb to i32
  %.not.i.i70 = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i70, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit72, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit72.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit72: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i68
  %i.gd = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.gd, ptr %35, align 8, !tbaa !69
  %i.ge = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %i.fs, ptr %i.ge, align 8, !tbaa !70
  %i.gf = load ptr, ptr %4, align 8, !tbaa !69
  %i.gg = load i64, ptr %i.j, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.gh = load ptr, ptr %.034, align 8, !tbaa !159, !noalias !713
  store ptr %i.gf, ptr %13, align 8, !tbaa !69, !noalias !713
  %i.gi = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.gg, ptr %i.gi, align 8, !tbaa !70, !noalias !713
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %36, ptr noundef nonnull align 8 dereferenceable(385) %i.gh, ptr noundef nonnull dead_on_return %13)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit72
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.gj = invoke noundef ptr @_ZNK11OpenImageIO4v3_111ColorConfig18getDefaultViewNameENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8) %.034, ptr noundef nonnull dead_on_return %35, ptr noundef nonnull dead_on_return %36)
          to label %bb.ba unwind label %bb.bc     ; 3 uses

bb.ba:                                            ; preds = %bb.az
  %.not.i75 = icmp eq ptr %i.gj, null
  br i1 %.not.i75, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit76, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gj) #38
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit76

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit76: ; preds = %bb.ba, %bb.bb
  %i.gl = phi i64 [ %i.gk, %bb.bb ], [ 0, %bb.ba ]
  store ptr %i.gj, ptr %3, align 8, !tbaa !146
end_hunk_11
begin_hunk_12_@_ZN11OpenImageIO4v3_112ImageBufAlgo17ociofiletransformERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEEbbPKNS0_11ColorConfigENS0_3ROIEi:bb.a
  %18 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  store ptr @.str.90, ptr %13, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 22, ptr %i.a, align 8, !tbaa !70
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %12, ptr noundef nonnull dead_on_return %13)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA27_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(27) @.str.91)
          to label %bb.ba unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.f = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.f, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, !prof !64

bb.f:                                             ; preds = %bb.e
  %i.h = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr @.str.7, ptr %11, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_111ColorConfigC1ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr noundef nonnull dead_on_return %11)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = call i32 @__cxa_atexit(ptr @_ZN11OpenImageIO4v3_111ColorConfigD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr nonnull @__dso_handle) #38 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit

bb.i:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %.body

_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit: ; preds = %bb.e, %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !70
  br label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, %bb.d
  %i.l = phi i64 [ %i.c, %bb.d ], [ %.pre, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ]
  %.024 = phi ptr [ %5, %bb.d ], [ @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  %i.m = load ptr, ptr %2, align 8, !tbaa !69     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !725
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.m, ptr %10, align 8, !tbaa !69, !noalias !725
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !70, !noalias !725
  %i.o = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %10)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i unwind label %bb.ag

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i: ; preds = %bb.k, %bb.j
  %i.p = phi ptr [ null, %bb.j ], [ %i.o, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !725
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig19createFileTransformENS0_7ustringEb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %15, ptr noundef nonnull readonly align 8 dereferenceable(8) %.024, ptr %i.p, i1 noundef zeroext %4)
          to label %_ZNK11OpenImageIO4v3_111ColorConfig19createFileTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEb.exit unwind label %bb.ag

_ZNK11OpenImageIO4v3_111ColorConfig19createFileTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEb.exit: ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.s = load <2 x ptr>, ptr %15, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !95   ; 8 uses
  store <2 x ptr> %i.s, ptr %14, align 16, !tbaa !110
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_111ColorConfig19createFileTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEb.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.u, align 8, !tbaa !97
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !98
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #38, !inline_history !18
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !100
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #38, !inline_history !18
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

bb.n:                                             ; preds = %bb.l
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi i32 [ %i.x, %bb.o ], [ %i.ah, %bb.p ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.q, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, !prof !101

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #38
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit: ; preds = %_ZNK11OpenImageIO4v3_111ColorConfig19createFileTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEb.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !95  ; 8 uses
  %.not.i.i32 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i32, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.ak, align 8, !tbaa !97
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !98
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !100
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #38, !inline_history !7
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !100
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i = phi i32 [ %i.an, %bb.u ], [ %i.ax, %bb.v ]
  %i.ay = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ay, label %bb.w, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  %i.az = load ptr, ptr %14, align 16, !tbaa !143 ; 2 uses
  %.not55 = icmp eq ptr %i.az, null
  br i1 %.not55, label %bb.x, label %bb.aj

bb.x:                                             ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ba = load ptr, ptr %.024, align 8, !tbaa !159 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 216 ; 6 uses
  %i.bc = atomicrmw add ptr %i.bb, i32 1 acquire, align 4
  %i.bd = and i32 %i.bc, 1073741824
  %.not.i.i.i.i33 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i33, label %.loopexit57, label %bb.y

bb.y:                                             ; preds = %bb.x
  %19 = atomicrmw sub ptr %i.bb, i32 1 seq_cst, align 4
  %i.be = add i32 %19, 1073741823
  %i.bf = and i32 %i.be, 1073741823               ; 2 uses
  %i.bg = add nuw nsw i32 %i.bf, 1
  %i.bh = cmpxchg weak ptr %i.bb, i32 %i.bf, i32 %i.bg acquire acquire, align 4
  %i.bi = extractvalue { i32, i1 } %i.bh, 1
  br i1 %i.bi, label %.loopexit57, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i: ; preds = %bb.y, %bb.ab
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %bb.ab ], [ 1, %bb.y ] ; 5 uses
  %.not.i.i.i.i.i34 = icmp sgt i32 %.sroa.0.0.i.i.i.i, 16
  br i1 %.not.i.i.i.i.i34, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.bj = icmp sgt i32 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi i32 [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.z ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.bk = add nuw nsw i32 %.03.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i32 %i.bk, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i.i, %bb.z
  %i.bl = shl nsw i32 %.sroa.0.0.i.i.i.i, 1
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.bm = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i, %bb.aa ], [ %i.bl, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i ]
  %i.bn = load atomic i32, ptr %i.bb seq_cst, align 4
  %i.bo = and i32 %i.bn, 1073741823               ; 2 uses
  %i.bp = add nuw nsw i32 %i.bo, 1
  %i.bq = cmpxchg weak ptr %i.bb, i32 %i.bo, i32 %i.bp acquire acquire, align 4
  %i.br = extractvalue { i32, i1 } %i.bq, 1
  br i1 %i.br, label %.loopexit57, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i, !llvm.loop !10

.loopexit57:                                      ; preds = %bb.ab, %bb.y, %bb.x
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !78
  %.not56 = icmp eq i64 %i.bt, 0
  %20 = atomicrmw sub ptr %i.bb, i32 1 release, align 4 ; 0 uses
  br i1 %.not56, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %.loopexit57
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.bu = load ptr, ptr %.024, align 8, !tbaa !159, !noalias !726 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !727)
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.bv, ptr %16, align 8, !tbaa !90, !alias.scope !728
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !78, !alias.scope !728
  store i8 0, ptr %i.bv, align 8, !tbaa !79, !alias.scope !728
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 216 ; 3 uses
  %i.by = cmpxchg weak ptr %i.bx, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !727
  %i.bz = extractvalue { i32, i1 } %i.by, 1
  br i1 %i.bz, label %.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i35

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i35: ; preds = %bb.ac, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i36 = phi i32 [ %.sroa.0.1.i.i.i.i39, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i ], [ 1, %bb.ac ] ; 5 uses
  %.not.i.i.i.i.i37 = icmp sgt i32 %.sroa.0.0.i.i.i.i36, 16
  br i1 %.not.i.i.i.i.i37, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i35
  %i.ca = icmp sgt i32 %.sroa.0.0.i.i.i.i36, 0
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i.i40, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i40:                             ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i40
  %.03.i.i.i.i.i.i41 = phi i32 [ %i.cb, %.lr.ph.i.i.i.i.i.i40 ], [ 0, %bb.ad ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.cb = add nuw nsw i32 %.03.i.i.i.i.i.i41, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i42 = icmp eq i32 %i.cb, %.sroa.0.0.i.i.i.i36
  br i1 %exitcond.not.i.i.i.i.i.i42, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i38, label %.lr.ph.i.i.i.i.i.i40, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i38:   ; preds = %.lr.ph.i.i.i.i.i.i40, %bb.ad
  %i.cc = shl nsw i32 %.sroa.0.0.i.i.i.i36, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i

bb.ae:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i35
  %i.cd = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i: ; preds = %bb.ae, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i38
  %.sroa.0.1.i.i.i.i39 = phi i32 [ %.sroa.0.0.i.i.i.i36, %bb.ae ], [ %i.cc, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i38 ]
  %i.ce = cmpxchg weak ptr %i.bx, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !727
  %i.cf = extractvalue { i32, i1 } %i.ce, 1
  br i1 %i.cf, label %.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i35, !llvm.loop !2

.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i, %bb.ac
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 224
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.cg) #38
  %21 = atomicrmw sub ptr %i.bx, i32 1073741824 release, align 4, !noalias !727 ; 0 uses
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA3_cJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(3) @.str.69, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %.loopexit
  %i.ch = load ptr, ptr %16, align 8, !tbaa !77   ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bv
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.af
  %i.cj = load i64, ptr %i.bv, align 8, !tbaa !79
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %bb.at

bb.ag:                                            ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i, %bb.k
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %.body

bb.ah:                                            ; preds = %.loopexit
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = load ptr, ptr %16, align 8, !tbaa !77   ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.bv
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.ah
  %i.cp = load i64, ptr %i.bv, align 8, !tbaa !79
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %.body

bb.ai:                                            ; preds = %.loopexit57
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA56_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(56) @.str.85)
          to label %bb.at unwind label %bb.as

bb.aj:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cr = load i8, ptr %12, align 8, !tbaa !153, !range !73, !noundef !74
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  %i.ct = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #38 ; 0 uses
  %i.cu = load i64, ptr %9, align 8, !tbaa !150
  %i.cv = mul nsw i64 %i.cu, 1000000000
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !151
  %i.cy = add nsw i64 %i.cv, %i.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !152
  %i.db = sub i64 %i.cy, %i.da
  %i.dc = call noundef i64 @llvm.abs.i64(i64 %i.db, i1 true)
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !154
  %i.df = add nsw i64 %i.dc, %i.de
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !154
  store i8 0, ptr %12, align 8, !tbaa !153
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dg = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertERNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.az, i1 noundef zeroext %3, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %6, i32 noundef %7)
          to label %bb.am unwind label %bb.as

bb.am:                                            ; preds = %bb.al
  br i1 %i.dg, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.dh = load ptr, ptr %2, align 8, !tbaa !69
  %i.di = load i64, ptr %i.b, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.dj = load ptr, ptr %.024, align 8, !tbaa !159
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !86
  store ptr %i.dh, ptr %8, align 8, !tbaa !69
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.di, ptr %i.dl, align 8, !tbaa !70
  %i.dm = invoke noundef ptr @_ZN11OpenImageIO4v3_15c_strENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %8)
          to label %.noexc46 unwind label %bb.as

.noexc46:                                         ; preds = %bb.an
  %i.dn = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config30filepathOnlyMatchesDefaultRuleEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef %i.dm)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %.noexc46
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %i.dn, label %bb.at, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.do = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_18ImageBuf7specmodEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.dp = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.dp, ptr %18, align 8, !tbaa !69
  %i.dq = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.dr = load i64, ptr %i.b, align 8, !tbaa !70
  store i64 %i.dr, ptr %i.dq, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig25getColorSpaceFromFilepathENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %.024, ptr noundef nonnull dead_on_return %18)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %i.do, ptr noundef nonnull dead_on_return %17)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %.noexc46, %bb.an, %bb.ai, %bb.ar, %bb.aq, %bb.ap, %bb.al
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.at:                                            ; preds = %bb.am, %bb.ar, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ai
  %.022 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.ai ], [ true, %bb.ao ], [ true, %bb.ar ], [ false, %bb.am ]
  %i.dt = load ptr, ptr %i.r, align 8, !tbaa !95  ; 8 uses
  %.not.i.i48 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i48, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 4 uses
  %i.dv = load atomic i64, ptr %i.du acquire, align 8 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 4294967297
  %i.dx = trunc i64 %i.dv to i32                  ; 2 uses
  br i1 %i.dw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.du, align 8, !tbaa !97
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  store i32 0, ptr %i.dy, align 4, !tbaa !98
  %i.dz = load ptr, ptr %i.dt, align 8, !tbaa !100
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #38, !inline_history !7
  %i.ec = load ptr, ptr %i.dt, align 8, !tbaa !100
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52

bb.aw:                                            ; preds = %bb.au
  %i.ef = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i49 = icmp eq i8 %i.ef, 0
  br i1 %.not.i.i.i49, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eg = add nsw i32 %i.dx, -1
  store i32 %i.eg, ptr %i.du, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50

bb.ay:                                            ; preds = %bb.aw
  %i.eh = atomicrmw volatile add ptr %i.du, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i51 = phi i32 [ %i.dx, %bb.ax ], [ %i.eh, %bb.ay ]
  %i.ei = icmp eq i32 %.0.i.i.i.i51, 1
  br i1 %i.ei, label %bb.az, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52, !prof !101

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dt) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52: ; preds = %bb.at, %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  br label %bb.ba

.body:                                            ; preds = %bb.as, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.ag
  %.pn27 = phi { ptr, i32 } [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.cl, %bb.ag ], [ %i.ds, %bb.as ], [ %i.k, %bb.i ]
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  br label %bb.bb

bb.ba:                                            ; preds = %bb.b, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52
  %.123 = phi i1 [ %.022, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52 ], [ false, %bb.b ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %12) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  ret i1 %.123

bb.bb:                                            ; preds = %.body, %bb.c
  %.pn29 = phi { ptr, i32 } [ %i.e, %bb.c ], [ %.pn27, %.body ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %12) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  resume { ptr, i32 } %.pn29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA27_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(27) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.91", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.a = tail call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(27) %1) #38, !noalias !731
end_hunk_12
begin_hunk_13_@_ZN11OpenImageIO4v3_112ImageBufAlgo18ocionamedtransformERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEEbbS9_S9_PKNS0_11ColorConfigENS0_3ROIEi:bb.a
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @.str.7, ptr %14, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_111ColorConfigC1ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr noundef nonnull dead_on_return %14)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = call i32 @__cxa_atexit(ptr @_ZN11OpenImageIO4v3_111ColorConfigD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr nonnull @__dso_handle) #38 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %.body

_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit: ; preds = %bb.b, %bb.c, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, %bb.a
  %.017 = phi ptr [ %7, %bb.a ], [ @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  %i.h = load ptr, ptr %2, align 8, !tbaa !69     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !70
  %i.k = load ptr, ptr %5, align 8, !tbaa !69     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !70
  %i.n = load ptr, ptr %6, align 8, !tbaa !69     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !741
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.h, ptr %13, align 8, !tbaa !69, !noalias !741
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.j, ptr %i.q, align 8, !tbaa !70, !noalias !741
  %i.r = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %13)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i unwind label %bb.af

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i: ; preds = %bb.h, %bb.g
  %i.s = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !741
  %.not.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i1.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i, label %bb.i

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i
  store ptr %i.k, ptr %12, align 8, !tbaa !69, !noalias !741
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.m, ptr %i.t, align 8, !tbaa !70, !noalias !741
  %i.u = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %12)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i unwind label %bb.af

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i: ; preds = %bb.i, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i
  %i.v = phi ptr [ null, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i ], [ %i.u, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !741
  %.not.i3.i = icmp eq ptr %i.n, null
  br i1 %.not.i3.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i, label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i
  store ptr %i.n, ptr %11, align 8, !tbaa !69, !noalias !741
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.p, ptr %i.w, align 8, !tbaa !70, !noalias !741
  %i.x = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %11)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i unwind label %bb.af

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i: ; preds = %bb.j, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i
  %i.y = phi ptr [ null, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !741
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig20createNamedTransformENS0_7ustringEbS2_S2_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %18, ptr noundef nonnull readonly align 8 dereferenceable(8) %.017, ptr %i.s, i1 noundef zeroext %4, ptr %i.v, ptr %i.y)
          to label %_ZNK11OpenImageIO4v3_111ColorConfig20createNamedTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEbS5_S5_.exit unwind label %bb.af

_ZNK11OpenImageIO4v3_111ColorConfig20createNamedTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEbS5_S5_.exit: ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i
  %i.z = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ab = load <2 x ptr>, ptr %18, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.ab, ptr %17, align 16, !tbaa !110
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK11OpenImageIO4v3_111ColorConfig20createNamedTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEbS5_S5_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ad, align 8, !tbaa !97
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !98
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !100
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #38, !inline_history !18
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !100
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #38, !inline_history !18
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i = phi i32 [ %i.ag, %bb.n ], [ %i.aq, %bb.o ]
  %i.ar = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ar, label %bb.p, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, !prof !101

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #38
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit: ; preds = %_ZNK11OpenImageIO4v3_111ColorConfig20createNamedTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEbS5_S5_.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.p
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !95  ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.as, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.at, align 8, !tbaa !97
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !98
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !100
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #38, !inline_history !7
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !100
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i = phi i32 [ %i.aw, %bb.t ], [ %i.bg, %bb.u ]
  %i.bh = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bh, label %bb.v, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  %i.bi = load ptr, ptr %17, align 16, !tbaa !143 ; 2 uses
  %.not48 = icmp eq ptr %i.bi, null
  br i1 %.not48, label %bb.w, label %bb.ai

bb.w:                                             ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = load ptr, ptr %.017, align 8, !tbaa !159 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 216 ; 6 uses
  %i.bl = atomicrmw add ptr %i.bk, i32 1 acquire, align 4
  %i.bm = and i32 %i.bl, 1073741824
  %.not.i.i.i.i26 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.i26, label %.loopexit50, label %bb.x

bb.x:                                             ; preds = %bb.w
  %20 = atomicrmw sub ptr %i.bk, i32 1 seq_cst, align 4
  %i.bn = add i32 %20, 1073741823
  %i.bo = and i32 %i.bn, 1073741823               ; 2 uses
  %i.bp = add nuw nsw i32 %i.bo, 1
  %i.bq = cmpxchg weak ptr %i.bk, i32 %i.bo, i32 %i.bp acquire acquire, align 4
  %i.br = extractvalue { i32, i1 } %i.bq, 1
  br i1 %i.br, label %.loopexit50, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i: ; preds = %bb.x, %bb.aa
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %bb.aa ], [ 1, %bb.x ] ; 5 uses
  %.not.i.i.i.i.i27 = icmp sgt i32 %.sroa.0.0.i.i.i.i, 16
  br i1 %.not.i.i.i.i.i27, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.bs = icmp sgt i32 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.y, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi i32 [ %i.bt, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.y ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.bt = add nuw nsw i32 %.03.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i32 %i.bt, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i.i, %bb.y
  %i.bu = shl nsw i32 %.sroa.0.0.i.i.i.i, 1
  br label %bb.aa

bb.z:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.bv = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i, %bb.z ], [ %i.bu, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i ]
  %i.bw = load atomic i32, ptr %i.bk seq_cst, align 4
  %i.bx = and i32 %i.bw, 1073741823               ; 2 uses
  %i.by = add nuw nsw i32 %i.bx, 1
  %i.bz = cmpxchg weak ptr %i.bk, i32 %i.bx, i32 %i.by acquire acquire, align 4
  %i.ca = extractvalue { i32, i1 } %i.bz, 1
  br i1 %i.ca, label %.loopexit50, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i, !llvm.loop !10

.loopexit50:                                      ; preds = %bb.aa, %bb.x, %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 232
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !78
  %.not49 = icmp eq i64 %i.cc, 0
  %21 = atomicrmw sub ptr %i.bk, i32 1 release, align 4 ; 0 uses
  br i1 %.not49, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %.loopexit50
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.cd = load ptr, ptr %.017, align 8, !tbaa !159, !noalias !742 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !743)
  %i.ce = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.ce, ptr %19, align 8, !tbaa !90, !alias.scope !744
  %i.cf = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.cf, align 8, !tbaa !78, !alias.scope !744
  store i8 0, ptr %i.ce, align 8, !tbaa !79, !alias.scope !744
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 216 ; 3 uses
  %i.ch = cmpxchg weak ptr %i.cg, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !743
  %i.ci = extractvalue { i32, i1 } %i.ch, 1
  br i1 %i.ci, label %.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i28

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i28: ; preds = %bb.ab, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i29 = phi i32 [ %.sroa.0.1.i.i.i.i32, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i ], [ 1, %bb.ab ] ; 5 uses
  %.not.i.i.i.i.i30 = icmp sgt i32 %.sroa.0.0.i.i.i.i29, 16
  br i1 %.not.i.i.i.i.i30, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i28
  %i.cj = icmp sgt i32 %.sroa.0.0.i.i.i.i29, 0
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i.i33, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i33:                             ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i33
  %.03.i.i.i.i.i.i34 = phi i32 [ %i.ck, %.lr.ph.i.i.i.i.i.i33 ], [ 0, %bb.ac ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.ck = add nuw nsw i32 %.03.i.i.i.i.i.i34, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i35 = icmp eq i32 %i.ck, %.sroa.0.0.i.i.i.i29
  br i1 %exitcond.not.i.i.i.i.i.i35, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i31, label %.lr.ph.i.i.i.i.i.i33, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i31:   ; preds = %.lr.ph.i.i.i.i.i.i33, %bb.ac
  %i.cl = shl nsw i32 %.sroa.0.0.i.i.i.i29, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i

bb.ad:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i28
  %i.cm = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i: ; preds = %bb.ad, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i31
  %.sroa.0.1.i.i.i.i32 = phi i32 [ %.sroa.0.0.i.i.i.i29, %bb.ad ], [ %i.cl, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i31 ]
  %i.cn = cmpxchg weak ptr %i.cg, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !743
  %i.co = extractvalue { i32, i1 } %i.cn, 1
  br i1 %i.co, label %.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i28, !llvm.loop !2

.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i, %bb.ab
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 224
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %i.cp) #38
  %22 = atomicrmw sub ptr %i.cg, i32 1073741824 release, align 4, !noalias !743 ; 0 uses
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA3_cJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(3) @.str.69, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %.loopexit
  %i.cq = load ptr, ptr %19, align 8, !tbaa !77   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ce
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ae
  %i.cs = load i64, ptr %i.ce, align 8, !tbaa !79
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  br label %bb.am

bb.af:                                            ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i, %bb.j, %bb.i, %bb.h
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  br label %.body

bb.ag:                                            ; preds = %.loopexit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = load ptr, ptr %19, align 8, !tbaa !77   ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ce
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.ag
  %i.cy = load i64, ptr %i.ce, align 8, !tbaa !79
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  br label %.body

bb.ah:                                            ; preds = %.loopexit50
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA56_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(56) @.str.85)
          to label %bb.am unwind label %bb.al

bb.ai:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.da = load i8, ptr %15, align 8, !tbaa !153, !range !73, !noundef !74
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.dc = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #38 ; 0 uses
  %i.dd = load i64, ptr %10, align 8, !tbaa !150
  %i.de = mul nsw i64 %i.dd, 1000000000
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !151
  %i.dh = add nsw i64 %i.de, %i.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  %i.di = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !152
  %i.dk = sub i64 %i.dh, %i.dj
  %i.dl = call noundef i64 @llvm.abs.i64(i64 %i.dk, i1 true)
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !154
  %i.do = add nsw i64 %i.dl, %i.dn
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !154
  store i8 0, ptr %15, align 8, !tbaa !153
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dp = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertERNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.bi, i1 noundef zeroext %3, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef %9)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.ah, %bb.ak
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ah
  %.016 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.ah ], [ %i.dp, %bb.ak ]
  %i.dr = load ptr, ptr %i.aa, align 8, !tbaa !95 ; 8 uses
  %.not.i.i39 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i39, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 4 uses
  %i.dt = load atomic i64, ptr %i.ds acquire, align 8 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 4294967297
  %i.dv = trunc i64 %i.dt to i32                  ; 2 uses
  br i1 %i.du, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.ds, align 8, !tbaa !97
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  store i32 0, ptr %i.dw, align 4, !tbaa !98
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !100
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #38, !inline_history !7
  %i.ea = load ptr, ptr %i.dr, align 8, !tbaa !100
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43

bb.ap:                                            ; preds = %bb.an
  %i.ed = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i40 = icmp eq i8 %i.ed, 0
  br i1 %.not.i.i.i40, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ee = add nsw i32 %i.dv, -1
  store i32 %i.ee, ptr %i.ds, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41

bb.ar:                                            ; preds = %bb.ap
  %i.ef = atomicrmw volatile add ptr %i.ds, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i42 = phi i32 [ %i.dv, %bb.aq ], [ %i.ef, %bb.ar ]
  %i.eg = icmp eq i32 %.0.i.i.i.i42, 1
  br i1 %i.eg, label %bb.as, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43, !prof !101

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dr) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43: ; preds = %bb.am, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  ret i1 %.016

.body:                                            ; preds = %bb.al, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.af
  %.pn20 = phi { ptr, i32 } [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %i.cu, %bb.af ], [ %i.dq, %bb.al ], [ %i.g, %bb.f ]
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  resume { ptr, i32 } %.pn20
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo18ocionamedtransformERKNS0_8ImageBufENS0_17basic_string_viewIcSt11char_traitsIcEEEbbS8_S8_PKNS0_11ColorConfigENS0_3ROIEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly captures(none) dead_on_return %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr nofree noundef readonly captures(none) dead_on_return %5, ptr nofree noundef readonly captures(none) dead_on_return %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %8, i32 noundef %9) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  tail call void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.a, ptr %10, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !70
  store i64 %i.d, ptr %i.b, align 8, !tbaa !70
  %i.e = load ptr, ptr %5, align 8, !tbaa !69
  store ptr %i.e, ptr %11, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !70
  store i64 %i.h, ptr %i.f, align 8, !tbaa !70
  %i.i = load ptr, ptr %6, align 8, !tbaa !69
  store ptr %i.i, ptr %12, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !70
  store i64 %i.l, ptr %i.j, align 8, !tbaa !70
  %i.m = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo18ocionamedtransformERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEEbbS9_S9_PKNS0_11ColorConfigENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull dead_on_return %10, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef nonnull dead_on_return %11, ptr noundef nonnull dead_on_return %12, ptr noundef %7, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef %9)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.m, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.n, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA41_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(41) @.str.94)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #38
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA41_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(41) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.91", align 16 ; 3 uses
end_hunk_13
