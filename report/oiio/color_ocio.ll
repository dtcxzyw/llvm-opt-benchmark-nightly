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
  %6 = atomicrmw add ptr %i.c, i32 -1073741824 release, align 4 ; 0 uses
  ret void

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  %7 = atomicrmw add ptr %i.c, i32 -1073741824 release, align 4 ; 0 uses
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
  %i.mx = add i64 %i.mw, %i.mt
  %i.my = call noundef i64 @llvm.abs.i64(i64 %i.mx, i1 true)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.mz = phi i64 [ %i.my, %bb.cr ], [ 0, %bb.cq ]
  %i.na = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !154
  %i.nc = add nsw i64 %i.nb, %i.mz
  %i.nd = sitofp i64 %i.nc to double
  %i.ne = load double, ptr @_ZN11OpenImageIO4v3_15Timer16seconds_per_tickE, align 8, !tbaa !156
  %i.nf = fmul double %i.ne, %i.nd
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  store ptr %spec.select.i, ptr %3, align 16, !tbaa !79
  %i.ng = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.nf, ptr %i.ng, align 16, !tbaa !79
  %i.nh = load ptr, ptr @stdout, align 8, !tbaa !81
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.nh, ptr nonnull @.str.152, i64 16, i64 172, ptr nonnull %3)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZN11OpenImageIO4v3_15TimerD2Ev.exit

bb.cu:                                            ; preds = %bb.cs
  %i.ni = landingpad { ptr, i32 }
          catch ptr null
  %i.nj = extractvalue { ptr, i32 } %i.ni, 0
  call void @__clang_call_terminate(ptr %i.nj) #41
  unreachable

_ZN11OpenImageIO4v3_15TimerD2Ev.exit:             ; preds = %_ZN11OpenImageIO4v3_111ColorConfig4Impl19debug_print_aliasesEv.exit.thread, %bb.ct
  %i.nk = icmp ne ptr %i.fg, null
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  ret i1 %i.nk

bb.cv:                                            ; preds = %bb.bj, %bb.bi, %bb.x, %bb.w, %bb.bh, %bb.cp, %bb.cd, %bb.bz, %bb.bp, %bb.y, %bb.r, %bb.q
  %.merged = phi { ptr, i32 } [ %i.jd, %bb.cd ], [ %i.mj, %bb.cp ], [ %i.ax, %bb.q ], [ %i.hf, %bb.bz ], [ %i.gg, %bb.bp ], [ %i.bm, %bb.w ], [ %i.fd, %bb.bh ], [ %i.bo, %bb.y ], [ %i.ay, %bb.r ], [ %i.bn, %bb.x ], [ %i.ff, %bb.bj ], [ %i.fe, %bb.bi ]
  call void @_ZN11OpenImageIO4v3_15TimerD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  resume { ptr, i32 } %.merged

bb.cw:                                            ; preds = %bb.bi, %bb.bh, %bb.w
  %i.nl = landingpad { ptr, i32 }
          catch ptr null
  %i.nm = extractvalue { ptr, i32 } %i.nl, 0
  call void @__clang_call_terminate(ptr %i.nm) #41
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
  %5 = atomicrmw add ptr %i.a, i32 -1073741824 release, align 4 ; 0 uses
  ret void

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %6 = atomicrmw add ptr %i.a, i32 -1073741824 release, align 4 ; 0 uses
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
  %5 = atomicrmw add ptr %i.a, i32 -1073741824 release, align 4 ; 0 uses
  ret void

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %6 = atomicrmw add ptr %i.a, i32 -1073741824 release, align 4 ; 0 uses
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
  %6 = atomicrmw add ptr %i.a, i32 -1073741824 release, align 4 ; 0 uses
  ret void

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %7 = atomicrmw add ptr %i.a, i32 -1073741824 release, align 4 ; 0 uses
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
  %1 = atomicrmw add ptr %i.b, i32 -1 seq_cst, align 4
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
  %2 = atomicrmw add ptr %i.b, i32 -1 release, align 4 ; 0 uses
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
  %3 = atomicrmw add ptr %i.d, i32 -1073741824 release, align 4, !noalias !474 ; 0 uses
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
  %4 = atomicrmw add ptr %i.d, i32 -1073741824 release, align 4, !noalias !474 ; 0 uses
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
  %26 = atomicrmw add ptr %i.bh, i32 -1073741824 release, align 4 ; 0 uses
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
  %27 = atomicrmw add ptr %i.bh, i32 -1073741824 release, align 4 ; 0 uses
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
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_111ColorConfigD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr nonnull @__dso_handle) #38 ; 0 uses
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
bb.at:                                            ; preds = %bb.p, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit47
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.au:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2ERKS3_.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.av:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit55
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.aw:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit58
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.ax:                                            ; preds = %bb.aa
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  br label %bb.dn

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.ef = phi ptr [ %i.eo, %.lr.ph ], [ %i.ch, %.preheader ]
  %.017192 = phi i64 [ %i.em, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.eg = load ptr, ptr %24, align 8, !tbaa !189
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.ef, i64 %.017192
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !77
  %i.ej = load ptr, ptr %21, align 8, !tbaa !176
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %.017192
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !77
  call void @_ZN16OpenColorIO_v2_57Context12setStringVarEPKcS2_(ptr noundef nonnull align 8 dereferenceable(8) %i.eg, ptr noundef %i.ei, ptr noundef %i.el) #38
  %i.em = add nuw i64 %.017192, 1                 ; 2 uses
  %i.en = load ptr, ptr %i.bs, align 8, !tbaa !177
  %i.eo = load ptr, ptr %18, align 8, !tbaa !176  ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = ashr exact i64 %i.er, 5
  %i.et = icmp ult i64 %i.em, %i.es
  br i1 %i.et, label %.lr.ph, label %._crit_edge, !llvm.loop !511

bb.ay:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_57ContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #38
  %i.eu = load ptr, ptr %1, align 8, !tbaa !159
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !86
  invoke void @_ZNK16OpenColorIO_v2_56Config12getProcessorERKSt10shared_ptrIKNS_7ContextEEPKcS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.16") align 8 %25, ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef %i.ao, ptr noundef %i.ay)
          to label %bb.az unwind label %bb.bo

bb.az:                                            ; preds = %bb.ay
  %i.ew = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ey = load <2 x ptr>, ptr %25, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  %i.ez = load ptr, ptr %i.ex, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.ey, ptr %13, align 16, !tbaa !110
  %.not.i.i.i.i63 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i.i63, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 4 uses
  %i.fb = load atomic i64, ptr %i.fa acquire, align 8 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 4294967297
  %i.fd = trunc i64 %i.fb to i32                  ; 2 uses
  br i1 %i.fc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.fa, align 8, !tbaa !97
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i32 0, ptr %i.fe, align 4, !tbaa !98
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !100
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #38, !inline_history !17
  %i.fi = load ptr, ptr %i.ez, align 8, !tbaa !100
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #38, !inline_history !17
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit

bb.bc:                                            ; preds = %bb.ba
  %i.fl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fm = add nsw i32 %i.fd, -1
  store i32 %i.fm, ptr %i.fa, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.fn = atomicrmw volatile add ptr %i.fa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i.i.i = phi i32 [ %i.fd, %bb.bd ], [ %i.fn, %bb.be ]
  %i.fo = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fo, label %bb.bf, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit, !prof !101

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #38
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit: ; preds = %bb.az, %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bf
  %i.fp = load ptr, ptr %i.ew, align 8, !tbaa !95 ; 8 uses
  %.not.i.i64 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i64, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 4 uses
  %i.fr = load atomic i64, ptr %i.fq acquire, align 8 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 4294967297
  %i.ft = trunc i64 %i.fr to i32                  ; 2 uses
  br i1 %i.fs, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.fq, align 8, !tbaa !97
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store i32 0, ptr %i.fu, align 4, !tbaa !98
  %i.fv = load ptr, ptr %i.fp, align 8, !tbaa !100
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #38, !inline_history !4
  %i.fy = load ptr, ptr %i.fp, align 8, !tbaa !100
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #38, !inline_history !4
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.gb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i65 = icmp eq i8 %i.gb, 0
  br i1 %.not.i.i.i65, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gc = add nsw i32 %i.ft, -1
  store i32 %i.gc, ptr %i.fq, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66

bb.bk:                                            ; preds = %bb.bi
  %i.gd = atomicrmw volatile add ptr %i.fq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i67 = phi i32 [ %i.ft, %bb.bj ], [ %i.gd, %bb.bk ]
  %i.ge = icmp eq i32 %.0.i.i.i.i67, 1
  br i1 %i.ge, label %bb.bl, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fp) #38
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i66, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #38
  %i.gf = load ptr, ptr %1, align 8, !tbaa !159   ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 216 ; 3 uses
  %i.gh = cmpxchg weak ptr %i.gg, i32 0, i32 1073741824 acquire acquire, align 4
  %i.gi = extractvalue { i32, i1 } %i.gh, 1
  br i1 %i.gi, label %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i ], [ 1, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 5 uses
  %.not.i.i.i.i68 = icmp sgt i32 %.sroa.0.0.i.i.i, 16
  br i1 %.not.i.i.i.i68, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i
  %i.gj = icmp sgt i32 %.sroa.0.0.i.i.i, 0
  br i1 %i.gj, label %.lr.ph.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bm, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi i32 [ %i.gk, %.lr.ph.i.i.i.i.i ], [ 0, %bb.bm ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.gk = add nuw nsw i32 %.03.i.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.gk, %.sroa.0.0.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i, %bb.bm
  %i.gl = shl nsw i32 %.sroa.0.0.i.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i

bb.bn:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i
  %i.gm = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i: ; preds = %bb.bn, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %.sroa.0.0.i.i.i, %bb.bn ], [ %i.gl, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i ]
  %i.gn = cmpxchg weak ptr %i.gg, i32 0, i32 1073741824 acquire acquire, align 4
  %i.go = extractvalue { i32, i1 } %i.gn, 1
  br i1 %i.go, label %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i, !llvm.loop !2

_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gf, i64 224
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gf, i64 232
  store i64 0, ptr %i.gq, align 8, !tbaa !78
  %i.gr = load ptr, ptr %i.gp, align 8, !tbaa !77
  store i8 0, ptr %i.gr, align 1, !tbaa !79
  %29 = atomicrmw add ptr %i.gg, i32 -1073741824 release, align 4 ; 0 uses
  br label %bb.br

bb.bo:                                            ; preds = %bb.ay
  %i.gs = landingpad { ptr, i32 }
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
          catch ptr null                          ; 2 uses
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  %i.gu = extractvalue { ptr, i32 } %i.gs, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #38
  %i.gv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE) #38
  %i.gw = icmp eq i32 %i.gu, %i.gv
  %i.gx = call ptr @__cxa_begin_catch(ptr %i.gt) #38 ; 2 uses
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EE5resetEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #38
  br i1 %i.gw, label %bb.bp, label %bb.cr

bb.bp:                                            ; preds = %bb.bo
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !100
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = call noundef ptr %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gx) #38
  %i.hc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.hb)
          to label %bb.bq unwind label %bb.cv     ; 0 uses

bb.bq:                                            ; preds = %bb.bp
  invoke void @__cxa_end_catch()
          to label %bb.br unwind label %bb.cw

bb.br:                                            ; preds = %bb.bq, %bb.cs, %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit
  %i.hd = load ptr, ptr %13, align 16, !tbaa !113 ; 2 uses
  %.not191 = icmp eq ptr %i.hd, null
  br i1 %.not191, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.he = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_59Processor6isNoOpEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hd)
          to label %bb.bt unwind label %bb.cu

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.he, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit86, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hf = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #42
          to label %bb.bv unwind label %bb.cx     ; 13 uses

bb.bv:                                            ; preds = %bb.bu
  %i.hg = load ptr, ptr %13, align 16, !tbaa !113 ; 5 uses
  store ptr %i.hg, ptr %26, align 8, !tbaa !113
  %i.hh = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !95 ; 5 uses
  store ptr %i.hj, ptr %i.hh, align 8, !tbaa !95
  %.not.i.i.i69 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i69, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread, label %bb.bw

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread: ; preds = %bb.bv
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.hf, align 8, !tbaa !100
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  store ptr %i.hg, ptr %i.hk, align 8, !tbaa !113
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store ptr null, ptr %i.hl, align 8, !tbaa !95
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

bb.bw:                                            ; preds = %bb.bv
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 3 uses
  %i.hn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i70 = icmp eq i8 %i.hn, 0
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 5 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i70, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread255

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread255: ; preds = %bb.bw
  %i.hq = load i32, ptr %i.hm, align 4, !tbaa !63
  %i.hr = add nsw i32 %i.hq, 1
  store i32 %i.hr, ptr %i.hm, align 4, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.hf, align 8, !tbaa !100
  store ptr %i.hg, ptr %i.ho, align 8, !tbaa !113
  store ptr %i.hj, ptr %i.hp, align 8, !tbaa !95
  br label %bb.bx

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit: ; preds = %bb.bw
  %i.hs = atomicrmw volatile add ptr %i.hm, i32 1 acq_rel, align 4 ; 0 uses
  %.pr180.pre = load ptr, ptr %i.hh, align 8, !tbaa !95 ; 3 uses
  %.pre195 = load ptr, ptr %26, align 8, !tbaa !113 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.hf, align 8, !tbaa !100
  store ptr %.pre195, ptr %i.ho, align 8, !tbaa !113
  store ptr %.pr180.pre, ptr %i.hp, align 8, !tbaa !95
  %.not.i.i.i.i71 = icmp eq ptr %.pr180.pre, null
  br i1 %.not.i.i.i.i71, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread255, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit
  %.pr180258 = phi ptr [ %i.hj, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread255 ], [ %.pr180.pre, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ]
  %i.ht = phi ptr [ %i.hg, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread255 ], [ %.pre195, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ]
  %i.hu = getelementptr inbounds nuw i8, ptr %.pr180258, i64 8 ; 3 uses
  %i.hv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i72 = icmp eq i8 %i.hv, 0
  br i1 %.not.i.i.i.i.i72, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hw = load i32, ptr %i.hu, align 4, !tbaa !63
  %i.hx = add nsw i32 %i.hw, 1
  store i32 %i.hx, ptr %i.hu, align 4, !tbaa !63
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

bb.bz:                                            ; preds = %bb.bx
  %i.hy = atomicrmw volatile add ptr %i.hu, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %26, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread, %bb.bz, %bb.by, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit
  %i.hz = phi ptr [ %i.ho, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ], [ %i.ho, %bb.by ], [ %i.ho, %bb.bz ], [ %i.hk, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread ]
  %i.ia = phi ptr [ %.pre195, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ], [ %i.ht, %bb.by ], [ %.pre.i, %bb.bz ], [ %i.hg, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  invoke void @_ZNK16OpenColorIO_v2_59Processor22getDefaultCPUProcessorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.13") align 8 %i.ib, ptr noundef nonnull align 8 dereferenceable(8) %i.ia)
          to label %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit unwind label %bb.cy

_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i
  %i.ic = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #42
          to label %bb.ce unwind label %bb.ca     ; 5 uses

bb.ca:                                            ; preds = %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  %i.if = call ptr @__cxa_begin_catch(ptr %i.ie) #38 ; 0 uses
  call void @_ZN11OpenImageIO4v3_119ColorProcessor_OCIOD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.hf) #38
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef 40) #40
  invoke void @__cxa_rethrow() #39
          to label %bb.cd unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ig = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.thread unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ih = landingpad { ptr, i32 }
          catch ptr null
  %i.ii = extractvalue { ptr, i32 } %i.ih, 0
  call void @__clang_call_terminate(ptr %i.ii) #41
  unreachable

bb.cd:                                            ; preds = %bb.ca
  unreachable

bb.ce:                                            ; preds = %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store i32 1, ptr %i.ij, align 8, !tbaa !97
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  store i32 1, ptr %i.ik, align 4, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ic, align 8, !tbaa !100
  %i.il = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store ptr %i.hf, ptr %i.il, align 8, !tbaa !192
  store ptr %i.hf, ptr %12, align 16, !tbaa !193
  %i.im = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !95 ; 8 uses
  store ptr %i.ic, ptr %i.im, align 8, !tbaa !95
  %.not.i.i.i.i74 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i.i74, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 4 uses
  %i.ip = load atomic i64, ptr %i.io acquire, align 8 ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 4294967297
  %i.ir = trunc i64 %i.ip to i32                  ; 2 uses
  br i1 %i.iq, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i32 0, ptr %i.io, align 8, !tbaa !97
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 12
  store i32 0, ptr %i.is, align 4, !tbaa !98
  %i.it = load ptr, ptr %i.in, align 8, !tbaa !100
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #38, !inline_history !18
  %i.iw = load ptr, ptr %i.in, align 8, !tbaa !100
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8
  call void %i.iy(ptr noundef nonnull align 8 dereferenceable(16) %i.in) #38, !inline_history !18
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ch:                                            ; preds = %bb.cf
  %i.iz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i75 = icmp eq i8 %i.iz, 0
  br i1 %.not.i.i.i.i.i75, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ja = add nsw i32 %i.ir, -1
  store i32 %i.ja, ptr %i.io, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i76

bb.cj:                                            ; preds = %bb.ch
  %i.jb = atomicrmw volatile add ptr %i.io, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i76

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i76: ; preds = %bb.cj, %bb.ci
  %.0.i.i.i.i.i.i77 = phi i32 [ %i.ir, %bb.ci ], [ %i.jb, %bb.cj ]
  %i.jc = icmp eq i32 %.0.i.i.i.i.i.i77, 1
  br i1 %i.jc, label %bb.ck, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.ck:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i76
end_hunk_3
begin_hunk_4_@_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_7ustringES2_S2_S2_:bb.a
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.pw = load ptr, ptr %i.pv, align 8
  call void %i.pw(ptr noundef nonnull align 8 dereferenceable(16) %i.po) #38, !inline_history !7
  %i.px = load ptr, ptr %i.po, align 8, !tbaa !100
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 24
  %i.pz = load ptr, ptr %i.py, align 8
  call void %i.pz(ptr noundef nonnull align 8 dereferenceable(16) %i.po) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141

bb.ez:                                            ; preds = %bb.ex
  %i.qa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i138 = icmp eq i8 %i.qa, 0
  br i1 %.not.i.i.i138, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.qb = add nsw i32 %i.ps, -1
  store i32 %i.qb, ptr %i.pp, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i139

bb.fb:                                            ; preds = %bb.ez
  %i.qc = atomicrmw volatile add ptr %i.pp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i139

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i139: ; preds = %bb.fb, %bb.fa
  %.0.i.i.i.i140 = phi i32 [ %i.ps, %bb.fa ], [ %i.qc, %bb.fb ]
  %i.qd = icmp eq i32 %.0.i.i.i.i140, 1
  br i1 %i.qd, label %bb.fc, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141, !prof !101

bb.fc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i139
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.po) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141: ; preds = %bb.ew, %bb.ey, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i139, %bb.fc
  %i.qe = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !95 ; 8 uses
  %.not.i.i142 = icmp eq ptr %i.qf, null
  br i1 %.not.i.i142, label %bb.fl, label %bb.fd

bb.fd:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8 ; 4 uses
  %i.qh = load atomic i64, ptr %i.qg acquire, align 8 ; 2 uses
  %i.qi = icmp eq i64 %i.qh, 4294967297
  %i.qj = trunc i64 %i.qh to i32                  ; 2 uses
  br i1 %i.qi, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  store i32 0, ptr %i.qg, align 8, !tbaa !97
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qf, i64 12
  store i32 0, ptr %i.qk, align 4, !tbaa !98
  %i.ql = load ptr, ptr %i.qf, align 8, !tbaa !100
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  %i.qn = load ptr, ptr %i.qm, align 8
  call void %i.qn(ptr noundef nonnull align 8 dereferenceable(16) %i.qf) #38, !inline_history !4
  %i.qo = load ptr, ptr %i.qf, align 8, !tbaa !100
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 24
  %i.qq = load ptr, ptr %i.qp, align 8
  call void %i.qq(ptr noundef nonnull align 8 dereferenceable(16) %i.qf) #38, !inline_history !4
  br label %bb.fl

bb.ff:                                            ; preds = %bb.fd
  %i.qr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i143 = icmp eq i8 %i.qr, 0
  br i1 %.not.i.i.i143, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.qs = add nsw i32 %i.qj, -1
  store i32 %i.qs, ptr %i.qg, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144

bb.fh:                                            ; preds = %bb.ff
  %i.qt = atomicrmw volatile add ptr %i.qg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144: ; preds = %bb.fh, %bb.fg
  %.0.i.i.i.i145 = phi i32 [ %i.qj, %bb.fg ], [ %i.qt, %bb.fh ]
  %i.qu = icmp eq i32 %.0.i.i.i.i145, 1
  br i1 %i.qu, label %bb.fi, label %bb.fl, !prof !101

bb.fi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qf) #38
  br label %bb.fl

bb.fj:                                            ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEC2ERKS3_.exit
  %i.qv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %28) #38
  br label %bb.fk

bb.fk:                                            ; preds = %bb.ep, %bb.eq, %.body115.thread, %bb.fj, %bb.dq, %bb.at, %bb.as, %bb.ar
  %.pn40 = phi { ptr, i32 } [ %i.qv, %bb.fj ], [ %i.dy, %bb.ar ], [ %i.dz, %bb.as ], [ %.pn31.pn.pn.pn.pn, %bb.dq ], [ %i.ea, %bb.at ], [ %i.pc, %bb.eq ], [ %i.no, %.body115.thread ], [ %i.pb, %bb.ep ]
  call void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #38
  br label %bb.fs

bb.fl:                                            ; preds = %bb.fi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i144, %bb.fe, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit141
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  %.pre203 = load ptr, ptr %i.pg, align 8, !tbaa !95 ; 8 uses
  %.not.i.i147 = icmp eq ptr %.pre203, null
  br i1 %.not.i.i147, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.qw = getelementptr inbounds nuw i8, ptr %.pre203, i64 8 ; 4 uses
  %i.qx = load atomic i64, ptr %i.qw acquire, align 8 ; 2 uses
  %i.qy = icmp eq i64 %i.qx, 4294967297
  %i.qz = trunc i64 %i.qx to i32                  ; 2 uses
  br i1 %i.qy, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  store i32 0, ptr %i.qw, align 8, !tbaa !97
  %i.ra = getelementptr inbounds nuw i8, ptr %.pre203, i64 12
  store i32 0, ptr %i.ra, align 4, !tbaa !98
  %i.rb = load ptr, ptr %.pre203, align 8, !tbaa !100
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8
  call void %i.rd(ptr noundef nonnull align 8 dereferenceable(16) %.pre203) #38, !inline_history !7
  %i.re = load ptr, ptr %.pre203, align 8, !tbaa !100
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  %i.rg = load ptr, ptr %i.rf, align 8
  call void %i.rg(ptr noundef nonnull align 8 dereferenceable(16) %.pre203) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151

bb.fo:                                            ; preds = %bb.fm
  %i.rh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i148 = icmp eq i8 %i.rh, 0
  br i1 %.not.i.i.i148, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.ri = add nsw i32 %i.qz, -1
  store i32 %i.ri, ptr %i.qw, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149

bb.fq:                                            ; preds = %bb.fo
  %i.rj = atomicrmw volatile add ptr %i.qw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149: ; preds = %bb.fq, %bb.fp
  %.0.i.i.i.i150 = phi i32 [ %i.qz, %bb.fp ], [ %i.rj, %bb.fq ]
  %i.rk = icmp eq i32 %.0.i.i.i.i150, 1
  br i1 %i.rk, label %bb.fr, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151, !prof !101

bb.fr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre203) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151: ; preds = %.thread264, %bb.fl, %bb.fn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  %i.rl = load ptr, ptr %10, align 8, !tbaa !77   ; 2 uses
  %i.rm = icmp eq ptr %i.rl, %i.a
  br i1 %i.rm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151
  %i.rn = load i64, ptr %i.a, align 8, !tbaa !79
  %i.ro = add i64 %i.rn, 1
  call void @_ZdlPvm(ptr noundef %i.rl, i64 noundef %i.ro) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit151, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  ret void

bb.fs:                                            ; preds = %bb.fk, %bb.g
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %bb.fk ], [ %i.aa, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  %i.rp = load ptr, ptr %10, align 8, !tbaa !77   ; 2 uses
  %i.rq = icmp eq ptr %i.rp, %i.a
  br i1 %i.rq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.fs
  %i.rr = load i64, ptr %i.a, align 8, !tbaa !79
  %i.rs = add i64 %i.rr, 1
  call void @_ZdlPvm(ptr noundef %i.rp, i64 noundef %i.rs) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  resume { ptr, i32 } %.pn40.pn

bb.ft:                                            ; preds = %bb.cv, %bb.ct
  %i.rt = landingpad { ptr, i32 }
          catch ptr null
  %i.ru = extractvalue { ptr, i32 } %i.rt, 0
  call void @__clang_call_terminate(ptr %i.ru) #41
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
  %3 = atomicrmw add ptr %i.c, i32 -1 seq_cst, align 4
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
  %4 = atomicrmw add ptr %i.c, i32 -1 release, align 4 ; 0 uses
  ret void

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex15read_lock_guardC2ERS1_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  %5 = atomicrmw add ptr %i.c, i32 -1 release, align 4 ; 0 uses
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
  %4 = atomicrmw add ptr %i.a, i32 -1073741824 release, align 4 ; 0 uses
  ret void

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  %5 = atomicrmw add ptr %i.a, i32 -1073741824 release, align 4 ; 0 uses
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
  %5 = atomicrmw add ptr %i.a, i32 -1073741824 release, align 4 ; 0 uses
  ret void

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_113spin_rw_mutex16write_lock_guardC2ERS1_.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %6 = atomicrmw add ptr %i.a, i32 -1073741824 release, align 4 ; 0 uses
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
  %6 = atomicrmw add ptr %i.e, i32 -1073741824 release, align 4 ; 0 uses
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
  %7 = atomicrmw add ptr %i.e, i32 -1073741824 release, align 4 ; 0 uses
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
  invoke void @_ZNK16OpenColorIO_v2_56Config12getProcessorERKSt10shared_ptrIKNS_7ContextEERKS1_IKNS_9TransformEENS_18TransformDirectionE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.16") align 8 %29, ptr noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %30, i32 noundef %.020)
          to label %bb.bn unwind label %bb.de

bb.bn:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59TransformEEC2INS0_13LookTransformEvEERKS_IT_E.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.ft = load <2 x ptr>, ptr %29, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.ft, ptr %28, align 16, !tbaa !110
  %.not.i.i.i.i76 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i76, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 4 uses
  %i.fw = load atomic i64, ptr %i.fv acquire, align 8 ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 4294967297
  %i.fy = trunc i64 %i.fw to i32                  ; 2 uses
  br i1 %i.fx, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.fv, align 8, !tbaa !97
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 12
  store i32 0, ptr %i.fz, align 4, !tbaa !98
  %i.ga = load ptr, ptr %i.fu, align 8, !tbaa !100
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #38, !inline_history !17
  %i.gd = load ptr, ptr %i.fu, align 8, !tbaa !100
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #38, !inline_history !17
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit

bb.bq:                                            ; preds = %bb.bo
  %i.gg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.gg, 0
  br i1 %.not.i.i.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gh = add nsw i32 %i.fy, -1
  store i32 %i.gh, ptr %i.fv, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.gi = atomicrmw volatile add ptr %i.fv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bs, %bb.br
  %.0.i.i.i.i.i.i = phi i32 [ %i.fy, %bb.br ], [ %i.gi, %bb.bs ]
  %i.gj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.gj, label %bb.bt, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit, !prof !101

bb.bt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fu) #38
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit: ; preds = %bb.bn, %bb.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bt
  %i.gk = load ptr, ptr %i.fr, align 8, !tbaa !95 ; 8 uses
  %.not.i.i77 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i77, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 4 uses
  %i.gm = load atomic i64, ptr %i.gl acquire, align 8 ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 4294967297
  %i.go = trunc i64 %i.gm to i32                  ; 2 uses
  br i1 %i.gn, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %i.gl, align 8, !tbaa !97
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  store i32 0, ptr %i.gp, align 4, !tbaa !98
  %i.gq = load ptr, ptr %i.gk, align 8, !tbaa !100
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(16) %i.gk) #38, !inline_history !4
  %i.gt = load ptr, ptr %i.gk, align 8, !tbaa !100
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(16) %i.gk) #38, !inline_history !4
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bw:                                            ; preds = %bb.bu
  %i.gw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i78 = icmp eq i8 %i.gw, 0
  br i1 %.not.i.i.i78, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gx = add nsw i32 %i.go, -1
  store i32 %i.gx, ptr %i.gl, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79

bb.by:                                            ; preds = %bb.bw
  %i.gy = atomicrmw volatile add ptr %i.gl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79: ; preds = %bb.by, %bb.bx
  %.0.i.i.i.i80 = phi i32 [ %i.go, %bb.bx ], [ %i.gy, %bb.by ]
  %i.gz = icmp eq i32 %.0.i.i.i.i80, 1
  br i1 %i.gz, label %bb.bz, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.bz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gk) #38
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEaSEOS3_.exit, %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79, %bb.bz
  %i.ha = load ptr, ptr %i.fi, align 8, !tbaa !95 ; 8 uses
  %.not.i.i81 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i81, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 4 uses
  %i.hc = load atomic i64, ptr %i.hb acquire, align 8 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 4294967297
  %i.he = trunc i64 %i.hc to i32                  ; 2 uses
  br i1 %i.hd, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.hb, align 8, !tbaa !97
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store i32 0, ptr %i.hf, align 4, !tbaa !98
  %i.hg = load ptr, ptr %i.ha, align 8, !tbaa !100
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #38, !inline_history !9
  %i.hj = load ptr, ptr %i.ha, align 8, !tbaa !100
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #38, !inline_history !9
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cc:                                            ; preds = %bb.ca
  %i.hm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i82 = icmp eq i8 %i.hm, 0
  br i1 %.not.i.i.i82, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.hn = add nsw i32 %i.he, -1
  store i32 %i.hn, ptr %i.hb, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83

bb.ce:                                            ; preds = %bb.cc
  %i.ho = atomicrmw volatile add ptr %i.hb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83: ; preds = %bb.ce, %bb.cd
  %.0.i.i.i.i84 = phi i32 [ %i.he, %bb.cd ], [ %i.ho, %bb.ce ]
  %i.hp = icmp eq i32 %.0.i.i.i.i84, 1
  br i1 %i.hp, label %bb.cf, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.cf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #38
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i83, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  %i.hq = load ptr, ptr %1, align 8, !tbaa !159   ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 216 ; 3 uses
  %i.hs = cmpxchg weak ptr %i.hr, i32 0, i32 1073741824 acquire acquire, align 4
  %i.ht = extractvalue { i32, i1 } %i.hs, 1
  br i1 %i.ht, label %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i
  %.sroa.0.0.i.i.i = phi i32 [ %.sroa.0.1.i.i.i, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i ], [ 1, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 5 uses
  %.not.i.i.i.i85 = icmp sgt i32 %.sroa.0.0.i.i.i, 16
  br i1 %.not.i.i.i.i85, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i
  %i.hu = icmp sgt i32 %.sroa.0.0.i.i.i, 0
  br i1 %i.hu, label %.lr.ph.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cg, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi i32 [ %i.hv, %.lr.ph.i.i.i.i.i ], [ 0, %bb.cg ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.hv = add nuw nsw i32 %.03.i.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.hv, %.sroa.0.0.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i, %bb.cg
  %i.hw = shl nsw i32 %.sroa.0.0.i.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i

bb.ch:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i
  %i.hx = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i: ; preds = %bb.ch, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i
  %.sroa.0.1.i.i.i = phi i32 [ %.sroa.0.0.i.i.i, %bb.ch ], [ %i.hw, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i ]
  %i.hy = cmpxchg weak ptr %i.hr, i32 0, i32 1073741824 acquire acquire, align 4
  %i.hz = extractvalue { i32, i1 } %i.hy, 1
  br i1 %i.hz, label %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i, !llvm.loop !2

_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit: ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i, %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hq, i64 224
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hq, i64 232
  store i64 0, ptr %i.ib, align 8, !tbaa !78
  %i.ic = load ptr, ptr %i.ia, align 8, !tbaa !77
  store i8 0, ptr %i.ic, align 1, !tbaa !79
  %33 = atomicrmw add ptr %i.hr, i32 -1073741824 release, align 4 ; 0 uses
  %i.id = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #42
          to label %bb.ci unwind label %bb.df     ; 13 uses

bb.ci:                                            ; preds = %_ZN11OpenImageIO4v3_111ColorConfig4Impl11clear_errorEv.exit
  %i.ie = load ptr, ptr %28, align 16, !tbaa !113 ; 5 uses
  store ptr %i.ie, ptr %31, align 8, !tbaa !113
  %i.if = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.ig = load ptr, ptr %i.fs, align 8, !tbaa !95 ; 5 uses
  store ptr %i.ig, ptr %i.if, align 8, !tbaa !95
  %.not.i.i.i86 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i86, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread, label %bb.cj

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread: ; preds = %bb.ci
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.id, align 8, !tbaa !100
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 2 uses
  store ptr %i.ie, ptr %i.ih, align 8, !tbaa !113
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store ptr null, ptr %i.ii, align 8, !tbaa !95
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

bb.cj:                                            ; preds = %bb.ci
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 3 uses
  %i.ik = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i87 = icmp eq i8 %i.ik, 0
  %i.il = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 5 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.id, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i87, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread220

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread220: ; preds = %bb.cj
  %i.in = load i32, ptr %i.ij, align 4, !tbaa !63
  %i.io = add nsw i32 %i.in, 1
  store i32 %i.io, ptr %i.ij, align 4, !tbaa !63
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.id, align 8, !tbaa !100
  store ptr %i.ie, ptr %i.il, align 8, !tbaa !113
  store ptr %i.ig, ptr %i.im, align 8, !tbaa !95
  br label %bb.ck

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit: ; preds = %bb.cj
  %i.ip = atomicrmw volatile add ptr %i.ij, i32 1 acq_rel, align 4 ; 0 uses
  %.pr166.pre = load ptr, ptr %i.if, align 8, !tbaa !95 ; 3 uses
  %.pre = load ptr, ptr %31, align 8, !tbaa !113  ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN11OpenImageIO4v3_119ColorProcessor_OCIOE, i64 16), ptr %i.id, align 8, !tbaa !100
  store ptr %.pre, ptr %i.il, align 8, !tbaa !113
  store ptr %.pr166.pre, ptr %i.im, align 8, !tbaa !95
  %.not.i.i.i.i88 = icmp eq ptr %.pr166.pre, null
  br i1 %.not.i.i.i.i88, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread220, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit
  %.pr166223 = phi ptr [ %i.ig, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread220 ], [ %.pr166.pre, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ]
  %i.iq = phi ptr [ %i.ie, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread220 ], [ %.pre, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ]
  %i.ir = getelementptr inbounds nuw i8, ptr %.pr166223, i64 8 ; 3 uses
  %i.is = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i89 = icmp eq i8 %i.is, 0
  br i1 %.not.i.i.i.i.i89, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.it = load i32, ptr %i.ir, align 4, !tbaa !63
  %i.iu = add nsw i32 %i.it, 1
  store i32 %i.iu, ptr %i.ir, align 4, !tbaa !63
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

bb.cm:                                            ; preds = %bb.ck
  %i.iv = atomicrmw volatile add ptr %i.ir, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %31, align 8, !tbaa !113
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread, %bb.cm, %bb.cl, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit
  %i.iw = phi ptr [ %i.il, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ], [ %i.il, %bb.cl ], [ %i.il, %bb.cm ], [ %i.ih, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread ]
  %i.ix = phi ptr [ %.pre, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit ], [ %i.iq, %bb.cl ], [ %.pre.i, %bb.cm ], [ %i.ie, %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.thread ]
  %i.iy = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  invoke void @_ZNK16OpenColorIO_v2_59Processor22getDefaultCPUProcessorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.13") align 8 %i.iy, ptr noundef nonnull align 8 dereferenceable(8) %i.ix)
          to label %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit unwind label %bb.dg

_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit: ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEEC2ERKS3_.exit.i
  %i.iz = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #42
          to label %bb.cr unwind label %bb.cn     ; 5 uses

bb.cn:                                            ; preds = %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit
  %i.ja = landingpad { ptr, i32 }
          catch ptr null
  %i.jb = extractvalue { ptr, i32 } %i.ja, 0
  %i.jc = call ptr @__cxa_begin_catch(ptr %i.jb) #38 ; 0 uses
  call void @_ZN11OpenImageIO4v3_119ColorProcessor_OCIOD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.id) #38
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef 40) #40
  invoke void @__cxa_rethrow() #39
          to label %bb.cq unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.jd = landingpad { ptr, i32 }
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body.thread unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.je = landingpad { ptr, i32 }
          catch ptr null
  %i.jf = extractvalue { ptr, i32 } %i.je, 0
  call void @__clang_call_terminate(ptr %i.jf) #41
  unreachable

bb.cq:                                            ; preds = %bb.cn
  unreachable

bb.cr:                                            ; preds = %_ZN11OpenImageIO4v3_119ColorProcessor_OCIOC2ESt10shared_ptrIKN16OpenColorIO_v2_59ProcessorEE.exit
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i32 1, ptr %i.jg, align 8, !tbaa !97
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iz, i64 12
  store i32 1, ptr %i.jh, align 4, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.iz, align 8, !tbaa !100
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store ptr %i.id, ptr %i.ji, align 8, !tbaa !192
  store ptr %i.id, ptr %13, align 8, !tbaa !193
  %i.jj = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !95 ; 8 uses
  store ptr %i.iz, ptr %i.jj, align 8, !tbaa !95
  %.not.i.i.i.i90 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i.i90, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 4 uses
  %i.jm = load atomic i64, ptr %i.jl acquire, align 8 ; 2 uses
  %i.jn = icmp eq i64 %i.jm, 4294967297
  %i.jo = trunc i64 %i.jm to i32                  ; 2 uses
  br i1 %i.jn, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
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

bb.cu:                                            ; preds = %bb.cs
  %i.jw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i91 = icmp eq i8 %i.jw, 0
  br i1 %.not.i.i.i.i.i91, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.jx = add nsw i32 %i.jo, -1
  store i32 %i.jx, ptr %i.jl, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i92

bb.cw:                                            ; preds = %bb.cu
  %i.jy = atomicrmw volatile add ptr %i.jl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i92

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i92: ; preds = %bb.cw, %bb.cv
  %.0.i.i.i.i.i.i93 = phi i32 [ %i.jo, %bb.cv ], [ %i.jy, %bb.cw ]
  %i.jz = icmp eq i32 %.0.i.i.i.i.i.i93, 1
  br i1 %i.jz, label %bb.cx, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.cx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i92
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jk) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i92, %bb.ct, %bb.cr
  %i.ka = load ptr, ptr %i.if, align 8, !tbaa !95 ; 8 uses
  %.not.i.i98 = icmp eq ptr %i.ka, null
  br i1 %.not.i.i98, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit102, label %bb.cy

bb.cy:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 4 uses
  %i.kc = load atomic i64, ptr %i.kb acquire, align 8 ; 2 uses
  %i.kd = icmp eq i64 %i.kc, 4294967297
  %i.ke = trunc i64 %i.kc to i32                  ; 2 uses
  br i1 %i.kd, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
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
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit102

bb.da:                                            ; preds = %bb.cy
  %i.km = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i99 = icmp eq i8 %i.km, 0
  br i1 %.not.i.i.i99, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.kn = add nsw i32 %i.ke, -1
  store i32 %i.kn, ptr %i.kb, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i100

bb.dc:                                            ; preds = %bb.da
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
  br label %bb.ei

bb.bk:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit75
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.bl:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit78
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.eg

bb.bm:                                            ; preds = %bb.as
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  br label %bb.ef

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
  %31 = atomicrmw add ptr %i.hr, i32 -1073741824 release, align 4 ; 0 uses
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
  %14 = atomicrmw add ptr %i.dn, i32 -1073741824 release, align 4 ; 0 uses
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
  br label %bb.dn

bb.ai:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.aj:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit43
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.ak:                                            ; preds = %bb.q
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  br label %bb.dk

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
  %22 = atomicrmw add ptr %i.fh, i32 -1073741824 release, align 4 ; 0 uses
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
  %i.aj = load i64, ptr %i.u, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.ak = load ptr, ptr %.024, align 8, !tbaa !159, !noalias !625
  store ptr %i.ai, ptr %15, align 8, !tbaa !69, !noalias !625
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !70, !noalias !625
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %26, ptr noundef nonnull align 8 dereferenceable(385) %i.ak, ptr noundef nonnull dead_on_return %15)
          to label %bb.p unwind label %bb.ap

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.am = load ptr, ptr %5, align 8, !tbaa !69    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !70
  %i.ap = load ptr, ptr %6, align 8, !tbaa !69    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !70
  %i.as = load ptr, ptr %25, align 8, !tbaa !69, !noalias !626 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !70, !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !626
  %.not.i.i32 = icmp eq ptr %i.as, null
  br i1 %.not.i.i32, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.as, ptr %14, align 8, !tbaa !69, !noalias !626
  %i.av = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !70, !noalias !626
  %i.aw = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %14)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i unwind label %bb.ap

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i: ; preds = %bb.q, %bb.p
  %i.ax = phi ptr [ null, %bb.p ], [ %i.aw, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14), !noalias !626
  %i.ay = load ptr, ptr %26, align 8, !tbaa !69, !noalias !626 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !70, !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !626
  %.not.i1.i = icmp eq ptr %i.ay, null
  br i1 %.not.i1.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i, label %bb.r

bb.r:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i
  store ptr %i.ay, ptr %13, align 8, !tbaa !69, !noalias !626
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !70, !noalias !626
  %i.bc = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %13)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i unwind label %bb.ap

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i: ; preds = %bb.r, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i
  %i.bd = phi ptr [ null, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i ], [ %i.bc, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !626
  %.not.i3.i = icmp eq ptr %i.am, null
  br i1 %.not.i3.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i, label %bb.s

bb.s:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i
  store ptr %i.am, ptr %12, align 8, !tbaa !69, !noalias !626
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.ao, ptr %i.be, align 8, !tbaa !70, !noalias !626
  %i.bf = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %12)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i unwind label %bb.ap

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i: ; preds = %bb.s, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i
  %i.bg = phi ptr [ null, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i ], [ %i.bf, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !626
  %.not.i5.i = icmp eq ptr %i.ap, null
  br i1 %.not.i5.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit6.i, label %bb.t

bb.t:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i
  store ptr %i.ap, ptr %11, align 8, !tbaa !69, !noalias !626
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ar, ptr %i.bh, align 8, !tbaa !70, !noalias !626
  %i.bi = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %11)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit6.i unwind label %bb.ap

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit6.i: ; preds = %bb.t, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i
  %i.bj = phi ptr [ null, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i ], [ %i.bi, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !626
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_7ustringES2_S2_S2_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %24, ptr noundef nonnull readonly align 8 dereferenceable(8) %.024, ptr %i.ax, ptr %i.bd, ptr %i.bg, ptr %i.bj)
          to label %_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_17basic_string_viewIcSt11char_traitsIcEEES5_S5_S5_.exit unwind label %bb.ap

_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_17basic_string_viewIcSt11char_traitsIcEEES5_S5_S5_.exit: ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit6.i
  %i.bk = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.bm = load <2 x ptr>, ptr %24, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.bm, ptr %23, align 16, !tbaa !110
  %.not.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_17basic_string_viewIcSt11char_traitsIcEEES5_S5_S5_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bo, align 8, !tbaa !97
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !98
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !100
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #38, !inline_history !18
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !100
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #38, !inline_history !18
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

bb.w:                                             ; preds = %bb.u
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i = phi i32 [ %i.br, %bb.x ], [ %i.cb, %bb.y ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cc, label %bb.z, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, !prof !101

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #38
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit: ; preds = %_ZNK11OpenImageIO4v3_111ColorConfig20createColorProcessorENS0_17basic_string_viewIcSt11char_traitsIcEEES5_S5_S5_.exit, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.z
  %i.cd = load ptr, ptr %i.bk, align 8, !tbaa !95 ; 8 uses
  %.not.i.i37 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i37, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4294967297
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.ce, align 8, !tbaa !97
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ci, align 4, !tbaa !98
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !100
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #38, !inline_history !7
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !100
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cq = add nsw i32 %i.ch, -1
  store i32 %i.cq, ptr %i.ce, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.cr = atomicrmw volatile add ptr %i.ce, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i = phi i32 [ %i.ch, %bb.ad ], [ %i.cr, %bb.ae ]
  %i.cs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cs, label %bb.af, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  %i.ct = load ptr, ptr %23, align 16, !tbaa !143 ; 2 uses
  %.not66 = icmp eq ptr %i.ct, null
  br i1 %.not66, label %bb.ag, label %bb.as

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cu = load ptr, ptr %.024, align 8, !tbaa !159 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 216 ; 6 uses
  %i.cw = atomicrmw add ptr %i.cv, i32 1 acquire, align 4
  %i.cx = and i32 %i.cw, 1073741824
  %.not.i.i.i.i38 = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i.i.i38, label %.loopexit68, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %29 = atomicrmw add ptr %i.cv, i32 -1 seq_cst, align 4
  %i.cy = add i32 %29, 1073741823
  %i.cz = and i32 %i.cy, 1073741823               ; 2 uses
  %i.da = add nuw nsw i32 %i.cz, 1
  %i.db = cmpxchg weak ptr %i.cv, i32 %i.cz, i32 %i.da acquire acquire, align 4
  %i.dc = extractvalue { i32, i1 } %i.db, 1
  br i1 %i.dc, label %.loopexit68, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i: ; preds = %bb.ah, %bb.ak
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %bb.ak ], [ 1, %bb.ah ] ; 5 uses
  %.not.i.i.i.i.i39 = icmp sgt i32 %.sroa.0.0.i.i.i.i, 16
  br i1 %.not.i.i.i.i.i39, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.dd = icmp sgt i32 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ai, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi i32 [ %i.de, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.ai ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.de = add nuw nsw i32 %.03.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i32 %i.de, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ai
  %i.df = shl nsw i32 %.sroa.0.0.i.i.i.i, 1
  br label %bb.ak

bb.aj:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.dg = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i, %bb.aj ], [ %i.df, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i ]
  %i.dh = load atomic i32, ptr %i.cv seq_cst, align 4
  %i.di = and i32 %i.dh, 1073741823               ; 2 uses
  %i.dj = add nuw nsw i32 %i.di, 1
  %i.dk = cmpxchg weak ptr %i.cv, i32 %i.di, i32 %i.dj acquire acquire, align 4
  %i.dl = extractvalue { i32, i1 } %i.dk, 1
  br i1 %i.dl, label %.loopexit68, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i, !llvm.loop !10

.loopexit68:                                      ; preds = %bb.ak, %bb.ah, %bb.ag
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cu, i64 232
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !78
  %.not67 = icmp eq i64 %i.dn, 0
  %30 = atomicrmw add ptr %i.cv, i32 -1 release, align 4 ; 0 uses
  br i1 %.not67, label %bb.ar, label %bb.al

bb.al:                                            ; preds = %.loopexit68
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.do = load ptr, ptr %.024, align 8, !tbaa !159, !noalias !627 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.dp = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.dp, ptr %27, align 8, !tbaa !90, !alias.scope !629
  %i.dq = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 0, ptr %i.dq, align 8, !tbaa !78, !alias.scope !629
  store i8 0, ptr %i.dp, align 8, !tbaa !79, !alias.scope !629
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 216 ; 3 uses
  %i.ds = cmpxchg weak ptr %i.dr, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !628
  %i.dt = extractvalue { i32, i1 } %i.ds, 1
  br i1 %i.dt, label %.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i40

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i40: ; preds = %bb.al, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i41 = phi i32 [ %.sroa.0.1.i.i.i.i44, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i ], [ 1, %bb.al ] ; 5 uses
  %.not.i.i.i.i.i42 = icmp sgt i32 %.sroa.0.0.i.i.i.i41, 16
  br i1 %.not.i.i.i.i.i42, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i40
  %i.du = icmp sgt i32 %.sroa.0.0.i.i.i.i41, 0
  br i1 %i.du, label %.lr.ph.i.i.i.i.i.i45, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i43

.lr.ph.i.i.i.i.i.i45:                             ; preds = %bb.am, %.lr.ph.i.i.i.i.i.i45
  %.03.i.i.i.i.i.i46 = phi i32 [ %i.dv, %.lr.ph.i.i.i.i.i.i45 ], [ 0, %bb.am ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.dv = add nuw nsw i32 %.03.i.i.i.i.i.i46, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i47 = icmp eq i32 %i.dv, %.sroa.0.0.i.i.i.i41
  br i1 %exitcond.not.i.i.i.i.i.i47, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i43, label %.lr.ph.i.i.i.i.i.i45, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i43:   ; preds = %.lr.ph.i.i.i.i.i.i45, %bb.am
  %i.dw = shl nsw i32 %.sroa.0.0.i.i.i.i41, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i

bb.an:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i40
  %i.dx = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i: ; preds = %bb.an, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i43
  %.sroa.0.1.i.i.i.i44 = phi i32 [ %.sroa.0.0.i.i.i.i41, %bb.an ], [ %i.dw, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i43 ]
  %i.dy = cmpxchg weak ptr %i.dr, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !628
  %i.dz = extractvalue { i32, i1 } %i.dy, 1
  br i1 %i.dz, label %.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i40, !llvm.loop !2

.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i, %bb.al
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 224
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %i.ea) #38
  %31 = atomicrmw add ptr %i.dr, i32 -1073741824 release, align 4, !noalias !628 ; 0 uses
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA3_cJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(3) @.str.69, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %.loopexit
  %i.eb = load ptr, ptr %27, align 8, !tbaa !77   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.dp
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ao
  %i.ed = load i64, ptr %i.dp, align 8, !tbaa !79
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  br label %bb.az

bb.ap:                                            ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit6.i, %bb.t, %bb.s, %bb.r, %bb.q, %bb.o, %bb.n
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #38
  br label %.body

bb.aq:                                            ; preds = %.loopexit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %i.eh = load ptr, ptr %27, align 8, !tbaa !77   ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.dp
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.aq
  %i.ej = load i64, ptr %i.dp, align 8, !tbaa !79
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  br label %.body

bb.ar:                                            ; preds = %.loopexit68
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA65_cJRNS0_17basic_string_viewIcSt11char_traitsIcEEES8_EEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(65) @.str.74, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.az unwind label %bb.m

bb.as:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.el = load i8, ptr %18, align 8, !tbaa !153, !range !73, !noundef !74
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.en = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #38 ; 0 uses
  %i.eo = load i64, ptr %10, align 8, !tbaa !150
  %i.ep = mul nsw i64 %i.eo, 1000000000
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !151
  %i.es = add nsw i64 %i.ep, %i.er
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  %i.et = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !152
  %i.ev = sub i64 %i.es, %i.eu
  %i.ew = call noundef i64 @llvm.abs.i64(i64 %i.ev, i1 true)
  %i.ex = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !154
  %i.ez = add nsw i64 %i.ew, %i.ey
  store i64 %i.ez, ptr %i.ex, align 8, !tbaa !154
  store i8 0, ptr %18, align 8, !tbaa !153
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fa = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !162
  %i.fc = add nsw i32 %i.fb, -1
  store i32 %i.fc, ptr %i.fa, align 8, !tbaa !162
  %i.fd = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertERNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ct, i1 noundef zeroext %4, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef %9)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  br i1 %i.fd, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.fe = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_18ImageBuf7specmodEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ff = load ptr, ptr %3, align 8, !tbaa !69
  store ptr %i.ff, ptr %28, align 8, !tbaa !69
  %i.fg = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.fh = load i64, ptr %i.u, align 8, !tbaa !70
  store i64 %i.fh, ptr %i.fg, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %i.fe, ptr noundef nonnull dead_on_return %28)
          to label %bb.az unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.au
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.az:                                            ; preds = %bb.av, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ar
  %.022 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.ar ], [ true, %bb.ax ], [ false, %bb.av ]
  %i.fj = load ptr, ptr %i.bl, align 8, !tbaa !95 ; 8 uses
  %.not.i.i51 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i51, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 4 uses
  %i.fl = load atomic i64, ptr %i.fk acquire, align 8 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 4294967297
  %i.fn = trunc i64 %i.fl to i32                  ; 2 uses
  br i1 %i.fm, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.fk, align 8, !tbaa !97
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store i32 0, ptr %i.fo, align 4, !tbaa !98
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !100
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #38, !inline_history !7
  %i.fs = load ptr, ptr %i.fj, align 8, !tbaa !100
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55

bb.bc:                                            ; preds = %bb.ba
  %i.fv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i52 = icmp eq i8 %i.fv, 0
  br i1 %.not.i.i.i52, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fw = add nsw i32 %i.fn, -1
  store i32 %i.fw, ptr %i.fk, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

bb.be:                                            ; preds = %bb.bc
  %i.fx = atomicrmw volatile add ptr %i.fk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i54 = phi i32 [ %i.fn, %bb.bd ], [ %i.fx, %bb.be ]
  %i.fy = icmp eq i32 %.0.i.i.i.i54, 1
  br i1 %i.fy, label %bb.bf, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55, !prof !101

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55: ; preds = %bb.az, %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i53, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  br label %bb.bg

.body:                                            ; preds = %bb.m, %bb.l, %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %bb.ap
  %.pn27 = phi { ptr, i32 } [ %i.fi, %bb.ay ], [ %i.ef, %bb.ap ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ], [ %i.ad, %bb.m ], [ %i.ac, %bb.l ]
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %23) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  br label %bb.bh

bb.bg:                                            ; preds = %bb.f, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55
  %.123 = phi i1 [ %.022, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit55 ], [ false, %bb.f ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %18) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  ret i1 %.123

bb.bh:                                            ; preds = %.body, %bb.e, %bb.d
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
  %i.ba = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_111ColorConfigD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr nonnull @__dso_handle) #38 ; 0 uses
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
  br label %bb.x

bb.w:                                             ; preds = %bb.ay
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, %bb.q
  %i.bd = phi i64 [ %i.as, %bb.q ], [ %.pre, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ]
  %.030 = phi ptr [ %9, %bb.q ], [ @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #38
  %i.be = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.be, ptr %30, align 8, !tbaa !69
  %i.bf = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !70
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !70
  %i.bi = load ptr, ptr %3, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.bj = load ptr, ptr %.030, align 8, !tbaa !159, !noalias !680
  store ptr %i.bi, ptr %14, align 8, !tbaa !69, !noalias !680
  %i.bk = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.bd, ptr %i.bk, align 8, !tbaa !70, !noalias !680
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %31, ptr noundef nonnull align 8 dereferenceable(385) %i.bj, ptr noundef nonnull dead_on_return %14)
          to label %bb.y unwind label %bb.aw

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.bl = load ptr, ptr %4, align 8, !tbaa !69
  %i.bm = load i64, ptr %i.x, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.bn = load ptr, ptr %.030, align 8, !tbaa !159, !noalias !681
  store ptr %i.bl, ptr %13, align 8, !tbaa !69, !noalias !681
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !70, !noalias !681
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %32, ptr noundef nonnull align 8 dereferenceable(385) %i.bn, ptr noundef nonnull dead_on_return %13)
          to label %bb.z unwind label %bb.aw

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.bp = load ptr, ptr %7, align 8, !tbaa !69
  store ptr %i.bp, ptr %33, align 8, !tbaa !69
  %i.bq = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !70
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !70
  %i.bt = load ptr, ptr %8, align 8, !tbaa !69
  store ptr %i.bt, ptr %34, align 8, !tbaa !69
  %i.bu = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !70
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig19createLookTransformENS0_17basic_string_viewIcSt11char_traitsIcEEES5_S5_bS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %29, ptr noundef nonnull align 8 dereferenceable(8) %.030, ptr noundef nonnull dead_on_return %30, ptr noundef nonnull dead_on_return %31, ptr noundef nonnull dead_on_return %32, i1 noundef zeroext %6, ptr noundef nonnull dead_on_return %33, ptr noundef nonnull dead_on_return %34)
          to label %bb.aa unwind label %bb.aw

bb.aa:                                            ; preds = %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.bz = load <2 x ptr>, ptr %29, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.bz, ptr %28, align 16, !tbaa !110
  %.not.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cb, align 8, !tbaa !97
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !98
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !100
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #38, !inline_history !18
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !100
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #38, !inline_history !18
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i = phi i32 [ %i.ce, %bb.ae ], [ %i.co, %bb.af ]
  %i.cp = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cp, label %bb.ag, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, !prof !101

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #38
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit: ; preds = %bb.aa, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ag
  %i.cq = load ptr, ptr %i.bx, align 8, !tbaa !95 ; 8 uses
  %.not.i.i49 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i49, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 4 uses
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 4294967297
  %i.cu = trunc i64 %i.cs to i32                  ; 2 uses
  br i1 %i.ct, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.cr, align 8, !tbaa !97
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.cv, align 4, !tbaa !98
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !100
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #38, !inline_history !7
  %i.cz = load ptr, ptr %i.cq, align 8, !tbaa !100
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aj:                                            ; preds = %bb.ah
  %i.dc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i = icmp eq i8 %i.dc, 0
  br i1 %.not.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dd = add nsw i32 %i.cu, -1
  store i32 %i.dd, ptr %i.cr, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.de = atomicrmw volatile add ptr %i.cr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.al, %bb.ak
  %.0.i.i.i.i = phi i32 [ %i.cu, %bb.ak ], [ %i.de, %bb.al ]
  %i.df = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.df, label %bb.am, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.am:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  %i.dg = load ptr, ptr %28, align 16, !tbaa !143 ; 2 uses
  %.not82 = icmp eq ptr %i.dg, null
  br i1 %.not82, label %bb.an, label %bb.az

bb.an:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dh = load ptr, ptr %.030, align 8, !tbaa !159 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 216 ; 6 uses
  %i.dj = atomicrmw add ptr %i.di, i32 1 acquire, align 4
  %i.dk = and i32 %i.dj, 1073741824
  %.not.i.i.i.i50 = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i.i.i50, label %.loopexit84, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %37 = atomicrmw add ptr %i.di, i32 -1 seq_cst, align 4
  %i.dl = add i32 %37, 1073741823
  %i.dm = and i32 %i.dl, 1073741823               ; 2 uses
  %i.dn = add nuw nsw i32 %i.dm, 1
  %i.do = cmpxchg weak ptr %i.di, i32 %i.dm, i32 %i.dn acquire acquire, align 4
  %i.dp = extractvalue { i32, i1 } %i.do, 1
  br i1 %i.dp, label %.loopexit84, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i: ; preds = %bb.ao, %bb.ar
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %bb.ar ], [ 1, %bb.ao ] ; 5 uses
  %.not.i.i.i.i.i51 = icmp sgt i32 %.sroa.0.0.i.i.i.i, 16
  br i1 %.not.i.i.i.i.i51, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.dq = icmp sgt i32 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.dq, label %.lr.ph.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ap, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi i32 [ %i.dr, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.ap ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.dr = add nuw nsw i32 %.03.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i32 %i.dr, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i.i, %bb.ap
  %i.ds = shl nsw i32 %.sroa.0.0.i.i.i.i, 1
  br label %bb.ar

bb.aq:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.dt = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i, %bb.aq ], [ %i.ds, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i ]
  %i.du = load atomic i32, ptr %i.di seq_cst, align 4
  %i.dv = and i32 %i.du, 1073741823               ; 2 uses
  %i.dw = add nuw nsw i32 %i.dv, 1
  %i.dx = cmpxchg weak ptr %i.di, i32 %i.dv, i32 %i.dw acquire acquire, align 4
  %i.dy = extractvalue { i32, i1 } %i.dx, 1
  br i1 %i.dy, label %.loopexit84, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i, !llvm.loop !10

.loopexit84:                                      ; preds = %bb.ar, %bb.ao, %bb.an
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dh, i64 232
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !78
  %.not83 = icmp eq i64 %i.ea, 0
  %38 = atomicrmw add ptr %i.di, i32 -1 release, align 4 ; 0 uses
  br i1 %.not83, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %.loopexit84
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.eb = load ptr, ptr %.030, align 8, !tbaa !159, !noalias !682 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.ec = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  store ptr %i.ec, ptr %35, align 8, !tbaa !90, !alias.scope !684
  %i.ed = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 0, ptr %i.ed, align 8, !tbaa !78, !alias.scope !684
  store i8 0, ptr %i.ec, align 8, !tbaa !79, !alias.scope !684
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 216 ; 3 uses
  %i.ef = cmpxchg weak ptr %i.ee, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !683
  %i.eg = extractvalue { i32, i1 } %i.ef, 1
  br i1 %i.eg, label %.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i52

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i52: ; preds = %bb.as, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i53 = phi i32 [ %.sroa.0.1.i.i.i.i56, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i ], [ 1, %bb.as ] ; 5 uses
  %.not.i.i.i.i.i54 = icmp sgt i32 %.sroa.0.0.i.i.i.i53, 16
  br i1 %.not.i.i.i.i.i54, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i52
  %i.eh = icmp sgt i32 %.sroa.0.0.i.i.i.i53, 0
  br i1 %i.eh, label %.lr.ph.i.i.i.i.i.i57, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i55

.lr.ph.i.i.i.i.i.i57:                             ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i57
  %.03.i.i.i.i.i.i58 = phi i32 [ %i.ei, %.lr.ph.i.i.i.i.i.i57 ], [ 0, %bb.at ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.ei = add nuw nsw i32 %.03.i.i.i.i.i.i58, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i59 = icmp eq i32 %i.ei, %.sroa.0.0.i.i.i.i53
  br i1 %exitcond.not.i.i.i.i.i.i59, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i55, label %.lr.ph.i.i.i.i.i.i57, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i55:   ; preds = %.lr.ph.i.i.i.i.i.i57, %bb.at
  %i.ej = shl nsw i32 %.sroa.0.0.i.i.i.i53, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i

bb.au:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i52
  %i.ek = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i: ; preds = %bb.au, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i55
  %.sroa.0.1.i.i.i.i56 = phi i32 [ %.sroa.0.0.i.i.i.i53, %bb.au ], [ %i.ej, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i55 ]
  %i.el = cmpxchg weak ptr %i.ee, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !683
  %i.em = extractvalue { i32, i1 } %i.el, 1
  br i1 %i.em, label %.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i52, !llvm.loop !2

.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i, %bb.as
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 224
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %i.en) #38
  %39 = atomicrmw add ptr %i.ee, i32 -1073741824 release, align 4, !noalias !683 ; 0 uses
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA3_cJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(3) @.str.69, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %.loopexit
  %i.eo = load ptr, ptr %35, align 8, !tbaa !77   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.ec
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.av
  %i.eq = load i64, ptr %i.ec, align 8, !tbaa !79
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #38
  br label %bb.bg

bb.aw:                                            ; preds = %bb.y, %bb.x, %bb.z
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  br label %.body

bb.ax:                                            ; preds = %.loopexit
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = load ptr, ptr %35, align 8, !tbaa !77   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.ec
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.ax
  %i.ew = load i64, ptr %i.ec, align 8, !tbaa !79
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #38
  br label %.body

bb.ay:                                            ; preds = %.loopexit84
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA56_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(56) @.str.85)
          to label %bb.bg unwind label %bb.w

bb.az:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ey = load i8, ptr %18, align 8, !tbaa !153, !range !73, !noundef !74
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %i.fa = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %12) #38 ; 0 uses
  %i.fb = load i64, ptr %12, align 8, !tbaa !150
  %i.fc = mul nsw i64 %i.fb, 1000000000
  %i.fd = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !151
  %i.ff = add nsw i64 %i.fc, %i.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  %i.fg = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !152
  %i.fi = sub i64 %i.ff, %i.fh
  %i.fj = call noundef i64 @llvm.abs.i64(i64 %i.fi, i1 true)
  %i.fk = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !154
  %i.fm = add nsw i64 %i.fj, %i.fl
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !154
  store i8 0, ptr %18, align 8, !tbaa !153
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.fn = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertERNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.dg, i1 noundef zeroext %5, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %10, i32 noundef %11)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.fn, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.fo = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_18ImageBuf7specmodEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fp = load ptr, ptr %4, align 8, !tbaa !69
  store ptr %i.fp, ptr %36, align 8, !tbaa !69
  %i.fq = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.fr = load i64, ptr %i.x, align 8, !tbaa !70
  store i64 %i.fr, ptr %i.fq, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %i.fo, ptr noundef nonnull dead_on_return %36)
          to label %bb.bg unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bb
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bg:                                            ; preds = %bb.bc, %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ay
  %.028 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.ay ], [ true, %bb.be ], [ false, %bb.bc ]
  %i.ft = load ptr, ptr %i.by, align 8, !tbaa !95 ; 8 uses
  %.not.i.i63 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i63, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 4 uses
  %i.fv = load atomic i64, ptr %i.fu acquire, align 8 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 4294967297
  %i.fx = trunc i64 %i.fv to i32                  ; 2 uses
  br i1 %i.fw, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.fu, align 8, !tbaa !97
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  store i32 0, ptr %i.fy, align 4, !tbaa !98
  %i.fz = load ptr, ptr %i.ft, align 8, !tbaa !100
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #38, !inline_history !7
  %i.gc = load ptr, ptr %i.ft, align 8, !tbaa !100
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67

bb.bj:                                            ; preds = %bb.bh
  %i.gf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i64 = icmp eq i8 %i.gf, 0
  br i1 %.not.i.i.i64, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gg = add nsw i32 %i.fx, -1
  store i32 %i.gg, ptr %i.fu, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65

bb.bl:                                            ; preds = %bb.bj
  %i.gh = atomicrmw volatile add ptr %i.fu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i66 = phi i32 [ %i.fx, %bb.bk ], [ %i.gh, %bb.bl ]
  %i.gi = icmp eq i32 %.0.i.i.i.i66, 1
  br i1 %i.gi, label %bb.bm, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67, !prof !101

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67: ; preds = %bb.bg, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i65, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  br label %bb.bn

.body:                                            ; preds = %bb.w, %bb.v, %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %bb.aw
  %.pn37 = phi { ptr, i32 } [ %i.fs, %bb.bf ], [ %i.es, %bb.aw ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %i.bc, %bb.w ], [ %i.bb, %bb.v ]
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %28) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  br label %bb.bo

bb.bn:                                            ; preds = %bb.p, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67
  %.129 = phi i1 [ %.028, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit67 ], [ false, %bb.p ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %18) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  ret i1 %.129

bb.bo:                                            ; preds = %.body, %bb.n, %bb.h, %bb.e
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
  invoke void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %23, ptr noundef nonnull align 8 dereferenceable(160) %i.x, ptr noundef nonnull dead_on_return %24, ptr noundef nonnull dead_on_return %25)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false), !tbaa.struct !160
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  %.pre = load i64, ptr %i.k, align 8, !tbaa !70
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.m ], [ %i.ad, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #38
  br label %.body

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread: ; preds = %bb.h, %bb.k
  %i.af = phi i64 [ %i.l, %bb.h ], [ %.pre, %bb.k ] ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.o, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA25_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(25) @.str.73)
          to label %bb.bv unwind label %bb.g

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread
  %i.ah = phi i64 [ %i.af, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread ], [ 7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #38
  %i.ai = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.ai, ptr %27, align 8, !tbaa !69
  %i.aj = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !70
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !70
  %i.am = load ptr, ptr %3, align 8, !tbaa !69
  store ptr %i.am, ptr %28, align 8, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !70
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !70
  %i.aq = load ptr, ptr %4, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  %i.ar = load ptr, ptr %.034, align 8, !tbaa !159, !noalias !708
  store ptr %i.aq, ptr %16, align 8, !tbaa !69, !noalias !708
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.ah, ptr %i.as, align 8, !tbaa !70, !noalias !708
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %29, ptr noundef nonnull align 8 dereferenceable(385) %i.ar, ptr noundef nonnull dead_on_return %16)
          to label %bb.p unwind label %bb.am

bb.p:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.at = load ptr, ptr %5, align 8, !tbaa !69
  store ptr %i.at, ptr %30, align 8, !tbaa !69
  %i.au = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !70
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !70
  %i.ax = load ptr, ptr %8, align 8, !tbaa !69
  store ptr %i.ax, ptr %31, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !70
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !70
  %i.bb = load ptr, ptr %9, align 8, !tbaa !69
  store ptr %i.bb, ptr %32, align 8, !tbaa !69
  %i.bc = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !70
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig22createDisplayTransformENS0_17basic_string_viewIcSt11char_traitsIcEEES5_S5_S5_bS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %.034, ptr noundef nonnull dead_on_return %27, ptr noundef nonnull dead_on_return %28, ptr noundef nonnull dead_on_return %29, ptr noundef nonnull dead_on_return %30, i1 noundef zeroext %7, ptr noundef nonnull dead_on_return %31, ptr noundef nonnull dead_on_return %32)
          to label %bb.q unwind label %bb.am

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.bh = load <2 x ptr>, ptr %26, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.bh, ptr %21, align 16, !tbaa !110
  %.not.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 4294967297
  %i.bm = trunc i64 %i.bk to i32                  ; 2 uses
  br i1 %i.bl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bj, align 8, !tbaa !97
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 0, ptr %i.bn, align 4, !tbaa !98
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !100
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #38, !inline_history !18
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !100
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #38, !inline_history !18
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

bb.t:                                             ; preds = %bb.r
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = add nsw i32 %i.bm, -1
  store i32 %i.bv, ptr %i.bj, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bw = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.bm, %bb.u ], [ %i.bw, %bb.v ]
  %i.bx = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bx, label %bb.w, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, !prof !101

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #38
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit: ; preds = %bb.q, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.w
  %i.by = load ptr, ptr %i.bf, align 8, !tbaa !95 ; 8 uses
  %.not.i.i47 = icmp eq ptr %i.by, null
  br i1 %.not.i.i47, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.bz, align 8, !tbaa !97
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !98
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !100
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #38, !inline_history !7
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !100
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i = phi i32 [ %i.cc, %bb.aa ], [ %i.cm, %bb.ab ]
  %i.cn = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cn, label %bb.ac, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  %i.co = load ptr, ptr %21, align 16, !tbaa !143 ; 2 uses
  %.not127 = icmp eq ptr %i.co, null
  br i1 %.not127, label %bb.ad, label %bb.ap

bb.ad:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cp = load ptr, ptr %.034, align 8, !tbaa !159 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 216 ; 6 uses
  %i.cr = atomicrmw add ptr %i.cq, i32 1 acquire, align 4
  %i.cs = and i32 %i.cr, 1073741824
  %.not.i.i.i.i48 = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i.i.i48, label %.loopexit129, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %40 = atomicrmw add ptr %i.cq, i32 -1 seq_cst, align 4
  %i.ct = add i32 %40, 1073741823
  %i.cu = and i32 %i.ct, 1073741823               ; 2 uses
  %i.cv = add nuw nsw i32 %i.cu, 1
  %i.cw = cmpxchg weak ptr %i.cq, i32 %i.cu, i32 %i.cv acquire acquire, align 4
  %i.cx = extractvalue { i32, i1 } %i.cw, 1
  br i1 %i.cx, label %.loopexit129, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i: ; preds = %bb.ae, %bb.ah
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %bb.ah ], [ 1, %bb.ae ] ; 5 uses
  %.not.i.i.i.i.i49 = icmp sgt i32 %.sroa.0.0.i.i.i.i, 16
  br i1 %.not.i.i.i.i.i49, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.cy = icmp sgt i32 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi i32 [ %i.cz, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.af ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.cz = add nuw nsw i32 %.03.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i32 %i.cz, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i.i, %bb.af
  %i.da = shl nsw i32 %.sroa.0.0.i.i.i.i, 1
  br label %bb.ah

bb.ag:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.db = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i, %bb.ag ], [ %i.da, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i ]
  %i.dc = load atomic i32, ptr %i.cq seq_cst, align 4
  %i.dd = and i32 %i.dc, 1073741823               ; 2 uses
  %i.de = add nuw nsw i32 %i.dd, 1
  %i.df = cmpxchg weak ptr %i.cq, i32 %i.dd, i32 %i.de acquire acquire, align 4
  %i.dg = extractvalue { i32, i1 } %i.df, 1
  br i1 %i.dg, label %.loopexit129, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i, !llvm.loop !10

.loopexit129:                                     ; preds = %bb.ah, %bb.ae, %bb.ad
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cp, i64 232
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !78
  %.not128 = icmp eq i64 %i.di, 0
  %41 = atomicrmw add ptr %i.cq, i32 -1 release, align 4 ; 0 uses
  br i1 %.not128, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %.loopexit129
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !709)
  %i.dj = load ptr, ptr %.034, align 8, !tbaa !159, !noalias !709 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %i.dk = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  store ptr %i.dk, ptr %33, align 8, !tbaa !90, !alias.scope !711
  %i.dl = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 0, ptr %i.dl, align 8, !tbaa !78, !alias.scope !711
  store i8 0, ptr %i.dk, align 8, !tbaa !79, !alias.scope !711
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 216 ; 3 uses
  %i.dn = cmpxchg weak ptr %i.dm, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !710
  %i.do = extractvalue { i32, i1 } %i.dn, 1
  br i1 %i.do, label %.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i50

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i50: ; preds = %bb.ai, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i51 = phi i32 [ %.sroa.0.1.i.i.i.i54, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i ], [ 1, %bb.ai ] ; 5 uses
  %.not.i.i.i.i.i52 = icmp sgt i32 %.sroa.0.0.i.i.i.i51, 16
  br i1 %.not.i.i.i.i.i52, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i50
  %i.dp = icmp sgt i32 %.sroa.0.0.i.i.i.i51, 0
  br i1 %i.dp, label %.lr.ph.i.i.i.i.i.i55, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i53

.lr.ph.i.i.i.i.i.i55:                             ; preds = %bb.aj, %.lr.ph.i.i.i.i.i.i55
  %.03.i.i.i.i.i.i56 = phi i32 [ %i.dq, %.lr.ph.i.i.i.i.i.i55 ], [ 0, %bb.aj ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.dq = add nuw nsw i32 %.03.i.i.i.i.i.i56, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i57 = icmp eq i32 %i.dq, %.sroa.0.0.i.i.i.i51
  br i1 %exitcond.not.i.i.i.i.i.i57, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i53, label %.lr.ph.i.i.i.i.i.i55, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i53:   ; preds = %.lr.ph.i.i.i.i.i.i55, %bb.aj
  %i.dr = shl nsw i32 %.sroa.0.0.i.i.i.i51, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i

bb.ak:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i50
  %i.ds = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i: ; preds = %bb.ak, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i53
  %.sroa.0.1.i.i.i.i54 = phi i32 [ %.sroa.0.0.i.i.i.i51, %bb.ak ], [ %i.dr, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i53 ]
  %i.dt = cmpxchg weak ptr %i.dm, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !710
  %i.du = extractvalue { i32, i1 } %i.dt, 1
  br i1 %i.du, label %.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i50, !llvm.loop !2

.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i, %bb.ai
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 224
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %i.dv) #38
  %42 = atomicrmw add ptr %i.dm, i32 -1073741824 release, align 4, !noalias !710 ; 0 uses
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA3_cJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(3) @.str.69, ptr noundef nonnull align 8 dereferenceable(32) %33)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %.loopexit
  %i.dw = load ptr, ptr %33, align 8, !tbaa !77   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.dk
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.al
  %i.dy = load i64, ptr %i.dk, align 8, !tbaa !79
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #38
  br label %bb.bv

bb.am:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread, %bb.p
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #38
  br label %.body

bb.an:                                            ; preds = %.loopexit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %i.ec = load ptr, ptr %33, align 8, !tbaa !77   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.dk
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.an
  %i.ee = load i64, ptr %i.dk, align 8, !tbaa !79
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #38
  br label %.body

bb.ao:                                            ; preds = %.loopexit129
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA56_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(56) @.str.85)
          to label %bb.bv unwind label %bb.g

bb.ap:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.eg = load i8, ptr %19, align 8, !tbaa !153, !range !73, !noundef !74
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  %i.ei = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %15) #38 ; 0 uses
  %i.ej = load i64, ptr %15, align 8, !tbaa !150
  %i.ek = mul nsw i64 %i.ej, 1000000000
  %i.el = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !151
  %i.en = add nsw i64 %i.ek, %i.em
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  %i.eo = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !152
  %i.eq = sub i64 %i.en, %i.ep
  %i.er = call noundef i64 @llvm.abs.i64(i64 %i.eq, i1 true)
  %i.es = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !154
  %i.eu = add nsw i64 %i.er, %i.et
  store i64 %i.eu, ptr %i.es, align 8, !tbaa !154
  store i8 0, ptr %19, align 8, !tbaa !153
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ev = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertERNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.co, i1 noundef zeroext %6, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %11, i32 noundef %12)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %bb.ar
  br i1 %i.ev, label %bb.at, label %bb.bv

bb.at:                                            ; preds = %bb.as
  br i1 %7, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.ew = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_18ImageBuf7specmodEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ex = load ptr, ptr %4, align 8, !tbaa !69
  %i.ey = load i64, ptr %i.k, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.ez = load ptr, ptr %.034, align 8, !tbaa !159, !noalias !712
  store ptr %i.ex, ptr %14, align 8, !tbaa !69, !noalias !712
  %i.fa = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.ey, ptr %i.fa, align 8, !tbaa !70, !noalias !712
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %34, ptr noundef nonnull align 8 dereferenceable(385) %i.ez, ptr noundef nonnull dead_on_return %14)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %i.ew, ptr noundef nonnull dead_on_return %34)
          to label %bb.bv unwind label %bb.ax

bb.ax:                                            ; preds = %bb.av, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit72.thread, %bb.aw, %bb.au, %bb.ar
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ay:                                            ; preds = %bb.at
  %i.fc = load i64, ptr %i.ak, align 8, !tbaa !70 ; 2 uses
  switch i64 %i.fc, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66.thread [
    i64 0, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i62
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i62: ; preds = %bb.ay
  %i.fd = load ptr, ptr %2, align 8, !tbaa !69    ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 1
  %i.ff = xor i32 %i.fe, 1634100580
  %i.fg = getelementptr i8, ptr %i.fd, i64 3
  %i.fh = load i32, ptr %i.fg, align 1
  %i.fi = xor i32 %i.fh, 1953264993
  %i.fj = or i32 %i.ff, %i.fi
  %i.fk = icmp ne i32 %i.fj, 0
  %i.fl = zext i1 %i.fk to i32
  %.not.i.i64 = icmp eq i32 %i.fl, 0
  br i1 %.not.i.i64, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66: ; preds = %bb.ay, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i62
  %i.fm = load ptr, ptr %.034, align 8, !tbaa !159
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !86 ; 2 uses
  %i.fo = icmp ne ptr %i.fn, null
  %i.fp = load i32, ptr @_ZN11OpenImageIO4v3_1L12disable_ocioE, align 4
  %i.fq = icmp eq i32 %i.fp, 0
  %or.cond.not.i = select i1 %i.fo, i1 %i.fq, i1 false
  br i1 %or.cond.not.i, label %bb.az, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

bb.az:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66
  %i.fr = invoke noundef ptr @_ZNK16OpenColorIO_v2_56Config17getDefaultDisplayEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fn)
          to label %_ZNK11OpenImageIO4v3_111ColorConfig21getDefaultDisplayNameEv.exit unwind label %bb.bb ; 3 uses

_ZNK11OpenImageIO4v3_111ColorConfig21getDefaultDisplayNameEv.exit: ; preds = %bb.az
  %.not.i67 = icmp eq ptr %i.fr, null
  br i1 %.not.i67, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZNK11OpenImageIO4v3_111ColorConfig21getDefaultDisplayNameEv.exit
  %i.fs = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fr) #38
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66, %_ZNK11OpenImageIO4v3_111ColorConfig21getDefaultDisplayNameEv.exit, %bb.ba
  %.0.i126 = phi ptr [ %i.fr, %bb.ba ], [ null, %_ZNK11OpenImageIO4v3_111ColorConfig21getDefaultDisplayNameEv.exit ], [ null, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66 ]
  %i.ft = phi i64 [ %i.fs, %bb.ba ], [ 0, %_ZNK11OpenImageIO4v3_111ColorConfig21getDefaultDisplayNameEv.exit ], [ 0, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66 ] ; 2 uses
  store ptr %.0.i126, ptr %2, align 8, !tbaa !146
  store i64 %i.ft, ptr %i.ak, align 8, !tbaa !91
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66.thread

bb.bb:                                            ; preds = %bb.az
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66.thread: ; preds = %bb.ay, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i62, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  %i.fv = phi i64 [ %i.fc, %bb.ay ], [ 7, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i62 ], [ %i.ft, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit ]
  %i.fw = load i64, ptr %i.ao, align 8, !tbaa !70
  switch i64 %i.fw, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit72.thread [
    i64 0, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit72
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i68
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i68: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66.thread
  %i.fx = load ptr, ptr %3, align 8, !tbaa !69    ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 1
  %i.fz = xor i32 %i.fy, 1634100580
  %i.ga = getelementptr i8, ptr %i.fx, i64 3
  %i.gb = load i32, ptr %i.ga, align 1
  %i.gc = xor i32 %i.gb, 1953264993
  %i.gd = or i32 %i.fz, %i.gc
  %i.ge = icmp ne i32 %i.gd, 0
  %i.gf = zext i1 %i.ge to i32
  %.not.i.i70 = icmp eq i32 %i.gf, 0
  br i1 %.not.i.i70, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit72, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit72.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit72: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit66.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i68
  %i.gg = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.gg, ptr %35, align 8, !tbaa !69
  %i.gh = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %i.fv, ptr %i.gh, align 8, !tbaa !70
  %i.gi = load ptr, ptr %4, align 8, !tbaa !69
  %i.gj = load i64, ptr %i.k, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.gk = load ptr, ptr %.034, align 8, !tbaa !159, !noalias !713
  store ptr %i.gi, ptr %13, align 8, !tbaa !69, !noalias !713
  %i.gl = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.gj, ptr %i.gl, align 8, !tbaa !70, !noalias !713
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig4Impl7resolveENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %36, ptr noundef nonnull align 8 dereferenceable(385) %i.gk, ptr noundef nonnull dead_on_return %13)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit72
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.gm = invoke noundef ptr @_ZNK11OpenImageIO4v3_111ColorConfig18getDefaultViewNameENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8) %.034, ptr noundef nonnull dead_on_return %35, ptr noundef nonnull dead_on_return %36)
          to label %bb.bd unwind label %bb.bf     ; 3 uses

bb.bd:                                            ; preds = %bb.bc
end_hunk_11
begin_hunk_12_@_ZN11OpenImageIO4v3_112ImageBufAlgo17ociofiletransformERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEEbbPKNS0_11ColorConfigENS0_3ROIEi:bb.a
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(68) %12, ptr noundef nonnull dead_on_return %13)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !70   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA27_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(27) @.str.91)
          to label %bb.bb unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.e, label %bb.k

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
  %i.j = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_111ColorConfigD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr nonnull @__dso_handle) #38 ; 0 uses
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
  br label %bb.k

bb.j:                                             ; preds = %bb.aj
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, %bb.d
  %i.m = phi i64 [ %i.c, %bb.d ], [ %.pre, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ]
  %.024 = phi ptr [ %5, %bb.d ], [ @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  %i.n = load ptr, ptr %2, align 8, !tbaa !69     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !725
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.n, ptr %10, align 8, !tbaa !69, !noalias !725
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.m, ptr %i.o, align 8, !tbaa !70, !noalias !725
  %i.p = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %10)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i unwind label %bb.ah

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i: ; preds = %bb.l, %bb.k
  %i.q = phi ptr [ null, %bb.k ], [ %i.p, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !725
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig19createFileTransformENS0_7ustringEb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %15, ptr noundef nonnull readonly align 8 dereferenceable(8) %.024, ptr %i.q, i1 noundef zeroext %4)
          to label %_ZNK11OpenImageIO4v3_111ColorConfig19createFileTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEb.exit unwind label %bb.ah

_ZNK11OpenImageIO4v3_111ColorConfig19createFileTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEb.exit: ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.t = load <2 x ptr>, ptr %15, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !95   ; 8 uses
  store <2 x ptr> %i.t, ptr %14, align 16, !tbaa !110
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_111ColorConfig19createFileTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEb.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.v, align 8, !tbaa !97
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !98
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !100
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #38, !inline_history !18
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !100
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #38, !inline_history !18
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

bb.o:                                             ; preds = %bb.m
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i = phi i32 [ %i.y, %bb.p ], [ %i.ai, %bb.q ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.r, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, !prof !101

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #38
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit: ; preds = %_ZNK11OpenImageIO4v3_111ColorConfig19createFileTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEb.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.r
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !95  ; 8 uses
  %.not.i.i32 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i32, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.al, align 8, !tbaa !97
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !98
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !100
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #38, !inline_history !7
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !100
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.ao, %bb.v ], [ %i.ay, %bb.w ]
  %i.az = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.az, label %bb.x, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  %i.ba = load ptr, ptr %14, align 16, !tbaa !143 ; 2 uses
  %.not55 = icmp eq ptr %i.ba, null
  br i1 %.not55, label %bb.y, label %bb.ak

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bb = load ptr, ptr %.024, align 8, !tbaa !159 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 216 ; 6 uses
  %i.bd = atomicrmw add ptr %i.bc, i32 1 acquire, align 4
  %i.be = and i32 %i.bd, 1073741824
  %.not.i.i.i.i33 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i33, label %.loopexit57, label %bb.z

bb.z:                                             ; preds = %bb.y
  %19 = atomicrmw add ptr %i.bc, i32 -1 seq_cst, align 4
  %i.bf = add i32 %19, 1073741823
  %i.bg = and i32 %i.bf, 1073741823               ; 2 uses
  %i.bh = add nuw nsw i32 %i.bg, 1
  %i.bi = cmpxchg weak ptr %i.bc, i32 %i.bg, i32 %i.bh acquire acquire, align 4
  %i.bj = extractvalue { i32, i1 } %i.bi, 1
  br i1 %i.bj, label %.loopexit57, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i: ; preds = %bb.z, %bb.ac
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %bb.ac ], [ 1, %bb.z ] ; 5 uses
  %.not.i.i.i.i.i34 = icmp sgt i32 %.sroa.0.0.i.i.i.i, 16
  br i1 %.not.i.i.i.i.i34, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.bk = icmp sgt i32 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aa, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi i32 [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.aa ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.bl = add nuw nsw i32 %.03.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i32 %i.bl, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i.i, %bb.aa
  %i.bm = shl nsw i32 %.sroa.0.0.i.i.i.i, 1
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.bn = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i, %bb.ab ], [ %i.bm, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i ]
  %i.bo = load atomic i32, ptr %i.bc seq_cst, align 4
  %i.bp = and i32 %i.bo, 1073741823               ; 2 uses
  %i.bq = add nuw nsw i32 %i.bp, 1
  %i.br = cmpxchg weak ptr %i.bc, i32 %i.bp, i32 %i.bq acquire acquire, align 4
  %i.bs = extractvalue { i32, i1 } %i.br, 1
  br i1 %i.bs, label %.loopexit57, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i, !llvm.loop !10

.loopexit57:                                      ; preds = %bb.ac, %bb.z, %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bb, i64 232
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !78
  %.not56 = icmp eq i64 %i.bu, 0
  %20 = atomicrmw add ptr %i.bc, i32 -1 release, align 4 ; 0 uses
  br i1 %.not56, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %.loopexit57
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.bv = load ptr, ptr %.024, align 8, !tbaa !159, !noalias !726 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !727)
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.bw, ptr %16, align 8, !tbaa !90, !alias.scope !728
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.bx, align 8, !tbaa !78, !alias.scope !728
  store i8 0, ptr %i.bw, align 8, !tbaa !79, !alias.scope !728
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 216 ; 3 uses
  %i.bz = cmpxchg weak ptr %i.by, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !727
  %i.ca = extractvalue { i32, i1 } %i.bz, 1
  br i1 %i.ca, label %.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i35

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i35: ; preds = %bb.ad, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i36 = phi i32 [ %.sroa.0.1.i.i.i.i39, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i ], [ 1, %bb.ad ] ; 5 uses
  %.not.i.i.i.i.i37 = icmp sgt i32 %.sroa.0.0.i.i.i.i36, 16
  br i1 %.not.i.i.i.i.i37, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i35
  %i.cb = icmp sgt i32 %.sroa.0.0.i.i.i.i36, 0
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i.i40, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i40:                             ; preds = %bb.ae, %.lr.ph.i.i.i.i.i.i40
  %.03.i.i.i.i.i.i41 = phi i32 [ %i.cc, %.lr.ph.i.i.i.i.i.i40 ], [ 0, %bb.ae ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.cc = add nuw nsw i32 %.03.i.i.i.i.i.i41, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i42 = icmp eq i32 %i.cc, %.sroa.0.0.i.i.i.i36
  br i1 %exitcond.not.i.i.i.i.i.i42, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i38, label %.lr.ph.i.i.i.i.i.i40, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i38:   ; preds = %.lr.ph.i.i.i.i.i.i40, %bb.ae
  %i.cd = shl nsw i32 %.sroa.0.0.i.i.i.i36, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i

bb.af:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i35
  %i.ce = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i: ; preds = %bb.af, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i38
  %.sroa.0.1.i.i.i.i39 = phi i32 [ %.sroa.0.0.i.i.i.i36, %bb.af ], [ %i.cd, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i38 ]
  %i.cf = cmpxchg weak ptr %i.by, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !727
  %i.cg = extractvalue { i32, i1 } %i.cf, 1
  br i1 %i.cg, label %.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i35, !llvm.loop !2

.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i, %bb.ad
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 224
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.ch) #38
  %21 = atomicrmw add ptr %i.by, i32 -1073741824 release, align 4, !noalias !727 ; 0 uses
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA3_cJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(3) @.str.69, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %.loopexit
  %i.ci = load ptr, ptr %16, align 8, !tbaa !77   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bw
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.ck = load i64, ptr %i.bw, align 8, !tbaa !79
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %bb.au

bb.ah:                                            ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i, %bb.l
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %.body

bb.ai:                                            ; preds = %.loopexit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %16, align 8, !tbaa !77   ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.bw
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.ai
  %i.cq = load i64, ptr %i.bw, align 8, !tbaa !79
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %.body

bb.aj:                                            ; preds = %.loopexit57
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA56_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(56) @.str.85)
          to label %bb.au unwind label %bb.j

bb.ak:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cs = load i8, ptr %12, align 8, !tbaa !153, !range !73, !noundef !74
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  %i.cu = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #38 ; 0 uses
  %i.cv = load i64, ptr %9, align 8, !tbaa !150
  %i.cw = mul nsw i64 %i.cv, 1000000000
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !151
  %i.cz = add nsw i64 %i.cw, %i.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !152
  %i.dc = sub i64 %i.cz, %i.db
  %i.dd = call noundef i64 @llvm.abs.i64(i64 %i.dc, i1 true)
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !154
  %i.dg = add nsw i64 %i.dd, %i.df
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !154
  store i8 0, ptr %12, align 8, !tbaa !153
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dh = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertERNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ba, i1 noundef zeroext %3, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %6, i32 noundef %7)
          to label %bb.an unwind label %bb.at

bb.an:                                            ; preds = %bb.am
  br i1 %i.dh, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.di = load ptr, ptr %2, align 8, !tbaa !69
  %i.dj = load i64, ptr %i.b, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.dk = load ptr, ptr %.024, align 8, !tbaa !159
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !86
  store ptr %i.di, ptr %8, align 8, !tbaa !69
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.dj, ptr %i.dm, align 8, !tbaa !70
  %i.dn = invoke noundef ptr @_ZN11OpenImageIO4v3_15c_strENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %8)
          to label %.noexc46 unwind label %bb.at

.noexc46:                                         ; preds = %bb.ao
  %i.do = invoke noundef zeroext i1 @_ZNK16OpenColorIO_v2_56Config30filepathOnlyMatchesDefaultRuleEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef %i.dn)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %.noexc46
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br i1 %i.do, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dp = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_18ImageBuf7specmodEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.dq = load ptr, ptr %2, align 8, !tbaa !69
  store ptr %i.dq, ptr %18, align 8, !tbaa !69
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ds = load i64, ptr %i.b, align 8, !tbaa !70
  store i64 %i.ds, ptr %i.dr, align 8, !tbaa !70
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig25getColorSpaceFromFilepathENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %.024, ptr noundef nonnull dead_on_return %18)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %i.dp, ptr noundef nonnull dead_on_return %17)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %.noexc46, %bb.ao, %bb.as, %bb.ar, %bb.aq, %bb.am
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.au:                                            ; preds = %bb.an, %bb.as, %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.aj
  %.022 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.aj ], [ true, %bb.ap ], [ true, %bb.as ], [ false, %bb.an ]
  %i.du = load ptr, ptr %i.s, align 8, !tbaa !95  ; 8 uses
  %.not.i.i48 = icmp eq ptr %i.du, null
  br i1 %.not.i.i48, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 4 uses
  %i.dw = load atomic i64, ptr %i.dv acquire, align 8 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 4294967297
  %i.dy = trunc i64 %i.dw to i32                  ; 2 uses
  br i1 %i.dx, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.dv, align 8, !tbaa !97
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !98
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !100
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #38, !inline_history !7
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !100
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52

bb.ax:                                            ; preds = %bb.av
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i49 = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i49, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eh = add nsw i32 %i.dy, -1
  store i32 %i.eh, ptr %i.dv, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50

bb.az:                                            ; preds = %bb.ax
  %i.ei = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i51 = phi i32 [ %i.dy, %bb.ay ], [ %i.ei, %bb.az ]
  %i.ej = icmp eq i32 %.0.i.i.i.i51, 1
  br i1 %i.ej, label %bb.ba, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52, !prof !101

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52: ; preds = %bb.au, %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i50, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  br label %bb.bb

.body:                                            ; preds = %bb.j, %bb.i, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %bb.ah
  %.pn27 = phi { ptr, i32 } [ %i.dt, %bb.at ], [ %i.cm, %bb.ah ], [ %i.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ], [ %i.l, %bb.j ], [ %i.k, %bb.i ]
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  br label %bb.bc

bb.bb:                                            ; preds = %bb.b, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52
  %.123 = phi i1 [ %.022, %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52 ], [ false, %bb.b ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %12) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  ret i1 %.123

bb.bc:                                            ; preds = %.body, %bb.c
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
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.e, align 8, !tbaa !70
  invoke void @_ZN11OpenImageIO4v3_111ColorConfigC1ENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr noundef nonnull dead_on_return %14)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_111ColorConfigD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, ptr nonnull @__dso_handle) #38 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config) #38
  br label %.body

_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit: ; preds = %bb.b, %bb.c, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.h

bb.g:                                             ; preds = %bb.ai
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit, %bb.a
  %.017 = phi ptr [ %7, %bb.a ], [ @_ZZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEvE6config, %_ZN11OpenImageIO4v3_111ColorConfig19default_colorconfigEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  %i.i = load ptr, ptr %2, align 8, !tbaa !69     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !70
  %i.l = load ptr, ptr %5, align 8, !tbaa !69     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !70
  %i.o = load ptr, ptr %6, align 8, !tbaa !69     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !741
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.i, ptr %13, align 8, !tbaa !69, !noalias !741
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.k, ptr %i.r, align 8, !tbaa !70, !noalias !741
  %i.s = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %13)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i unwind label %bb.ag

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i: ; preds = %bb.i, %bb.h
  %i.t = phi ptr [ null, %bb.h ], [ %i.s, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !741
  %.not.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i1.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i, label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i
  store ptr %i.l, ptr %12, align 8, !tbaa !69, !noalias !741
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.n, ptr %i.u, align 8, !tbaa !70, !noalias !741
  %i.v = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %12)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i unwind label %bb.ag

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i: ; preds = %bb.j, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i
  %i.w = phi ptr [ null, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit.i ], [ %i.v, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !741
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !741
  %.not.i3.i = icmp eq ptr %i.o, null
  br i1 %.not.i3.i, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i, label %bb.k

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i
  store ptr %i.o, ptr %11, align 8, !tbaa !69, !noalias !741
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.q, ptr %i.x, align 8, !tbaa !70, !noalias !741
  %i.y = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %11)
          to label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i unwind label %bb.ag

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i: ; preds = %bb.k, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i
  %i.z = phi ptr [ null, %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit2.i ], [ %i.y, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !741
  invoke void @_ZNK11OpenImageIO4v3_111ColorConfig20createNamedTransformENS0_7ustringEbS2_S2_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %18, ptr noundef nonnull readonly align 8 dereferenceable(8) %.017, ptr %i.t, i1 noundef zeroext %4, ptr %i.w, ptr %i.z)
          to label %_ZNK11OpenImageIO4v3_111ColorConfig20createNamedTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEbS5_S5_.exit unwind label %bb.ag

_ZNK11OpenImageIO4v3_111ColorConfig20createNamedTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEbS5_S5_.exit: ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i
  %i.aa = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %18, align 16, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 8 uses
  store <2 x ptr> %i.ac, ptr %17, align 16, !tbaa !110
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_111ColorConfig20createNamedTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEbS5_S5_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ae, align 8, !tbaa !97
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !98
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !100
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #38, !inline_history !18
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !100
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #38, !inline_history !18
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

bb.n:                                             ; preds = %bb.l
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.o ], [ %i.ar, %bb.p ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.q, label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, !prof !101

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #38
  br label %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit

_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit: ; preds = %_ZNK11OpenImageIO4v3_111ColorConfig20createNamedTransformENS0_17basic_string_viewIcSt11char_traitsIcEEEbS5_S5_.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q
  %i.at = load ptr, ptr %i.aa, align 8, !tbaa !95 ; 8 uses
  %.not.i.i25 = icmp eq ptr %i.at, null
  br i1 %.not.i.i25, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.au, align 8, !tbaa !97
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !98
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !100
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #38, !inline_history !7
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !100
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i = phi i32 [ %i.ax, %bb.u ], [ %i.bh, %bb.v ]
  %i.bi = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bi, label %bb.w, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN11OpenImageIO4v3_114ColorProcessorEEaSEOS3_.exit, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  %i.bj = load ptr, ptr %17, align 16, !tbaa !143 ; 2 uses
  %.not48 = icmp eq ptr %i.bj, null
  br i1 %.not48, label %bb.x, label %bb.aj

bb.x:                                             ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bk = load ptr, ptr %.017, align 8, !tbaa !159 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 216 ; 6 uses
  %i.bm = atomicrmw add ptr %i.bl, i32 1 acquire, align 4
  %i.bn = and i32 %i.bm, 1073741824
  %.not.i.i.i.i26 = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i.i26, label %.loopexit50, label %bb.y

bb.y:                                             ; preds = %bb.x
  %20 = atomicrmw add ptr %i.bl, i32 -1 seq_cst, align 4
  %i.bo = add i32 %20, 1073741823
  %i.bp = and i32 %i.bo, 1073741823               ; 2 uses
  %i.bq = add nuw nsw i32 %i.bp, 1
  %i.br = cmpxchg weak ptr %i.bl, i32 %i.bp, i32 %i.bq acquire acquire, align 4
  %i.bs = extractvalue { i32, i1 } %i.br, 1
  br i1 %i.bs, label %.loopexit50, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i: ; preds = %bb.y, %bb.ab
  %.sroa.0.0.i.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i, %bb.ab ], [ 1, %bb.y ] ; 5 uses
  %.not.i.i.i.i.i27 = icmp sgt i32 %.sroa.0.0.i.i.i.i, 16
  br i1 %.not.i.i.i.i.i27, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.bt = icmp sgt i32 %.sroa.0.0.i.i.i.i, 0
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.z, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi i32 [ %i.bu, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.z ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.bu = add nuw nsw i32 %.03.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i32 %i.bu, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i:     ; preds = %.lr.ph.i.i.i.i.i.i, %bb.z
  %i.bv = shl nsw i32 %.sroa.0.0.i.i.i.i, 1
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i
  %i.bw = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i, %bb.aa ], [ %i.bv, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i ]
  %i.bx = load atomic i32, ptr %i.bl seq_cst, align 4
  %i.by = and i32 %i.bx, 1073741823               ; 2 uses
  %i.bz = add nuw nsw i32 %i.by, 1
  %i.ca = cmpxchg weak ptr %i.bl, i32 %i.by, i32 %i.bz acquire acquire, align 4
  %i.cb = extractvalue { i32, i1 } %i.ca, 1
  br i1 %i.cb, label %.loopexit50, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i, !llvm.loop !10

.loopexit50:                                      ; preds = %bb.ab, %bb.y, %bb.x
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bk, i64 232
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !78
  %.not49 = icmp eq i64 %i.cd, 0
  %21 = atomicrmw add ptr %i.bl, i32 -1 release, align 4 ; 0 uses
  br i1 %.not49, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %.loopexit50
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.ce = load ptr, ptr %.017, align 8, !tbaa !159, !noalias !742 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !743)
  %i.cf = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.cf, ptr %19, align 8, !tbaa !90, !alias.scope !744
  %i.cg = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.cg, align 8, !tbaa !78, !alias.scope !744
  store i8 0, ptr %i.cf, align 8, !tbaa !79, !alias.scope !744
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 216 ; 3 uses
  %i.ci = cmpxchg weak ptr %i.ch, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !743
  %i.cj = extractvalue { i32, i1 } %i.ci, 1
  br i1 %i.cj, label %.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i28

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i28: ; preds = %bb.ac, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i29 = phi i32 [ %.sroa.0.1.i.i.i.i32, %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i ], [ 1, %bb.ac ] ; 5 uses
  %.not.i.i.i.i.i30 = icmp sgt i32 %.sroa.0.0.i.i.i.i29, 16
  br i1 %.not.i.i.i.i.i30, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i28
  %i.ck = icmp sgt i32 %.sroa.0.0.i.i.i.i29, 0
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i.i33, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i33:                             ; preds = %bb.ad, %.lr.ph.i.i.i.i.i.i33
  %.03.i.i.i.i.i.i34 = phi i32 [ %i.cl, %.lr.ph.i.i.i.i.i.i33 ], [ 0, %bb.ad ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #38, !srcloc !102
  %i.cl = add nuw nsw i32 %.03.i.i.i.i.i.i34, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i35 = icmp eq i32 %i.cl, %.sroa.0.0.i.i.i.i29
  br i1 %exitcond.not.i.i.i.i.i.i35, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i31, label %.lr.ph.i.i.i.i.i.i33, !llvm.loop !1

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i31:   ; preds = %.lr.ph.i.i.i.i.i.i33, %bb.ad
  %i.cm = shl nsw i32 %.sroa.0.0.i.i.i.i29, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i

bb.ae:                                            ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i28
  %i.cn = call noundef i32 @sched_yield() #38     ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i: ; preds = %bb.ae, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i31
  %.sroa.0.1.i.i.i.i32 = phi i32 [ %.sroa.0.0.i.i.i.i29, %bb.ae ], [ %i.cm, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i.i.i31 ]
  %i.co = cmpxchg weak ptr %i.ch, i32 0, i32 1073741824 acquire acquire, align 4, !noalias !743
  %i.cp = extractvalue { i32, i1 } %i.co, 1
  br i1 %i.cp, label %.loopexit, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i28, !llvm.loop !2

.loopexit:                                        ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i.i.i, %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 224
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %i.cq) #38
  %22 = atomicrmw add ptr %i.ch, i32 -1073741824 release, align 4, !noalias !743 ; 0 uses
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA3_cJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(3) @.str.69, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %.loopexit
  %i.cr = load ptr, ptr %19, align 8, !tbaa !77   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.cf
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.af
  %i.ct = load i64, ptr %i.cf, align 8, !tbaa !79
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  br label %bb.an

bb.ag:                                            ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit4.i, %bb.k, %bb.j, %bb.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #38
  br label %.body

bb.ah:                                            ; preds = %.loopexit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = load ptr, ptr %19, align 8, !tbaa !77   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.cf
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.ah
  %i.cz = load i64, ptr %i.cf, align 8, !tbaa !79
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  br label %.body

bb.ai:                                            ; preds = %.loopexit50
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA56_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(56) @.str.85)
          to label %bb.an unwind label %bb.g

bb.aj:                                            ; preds = %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.db = load i8, ptr %15, align 8, !tbaa !153, !range !73, !noundef !74
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.dd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #38 ; 0 uses
  %i.de = load i64, ptr %10, align 8, !tbaa !150
  %i.df = mul nsw i64 %i.de, 1000000000
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !151
  %i.di = add nsw i64 %i.df, %i.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !152
  %i.dl = sub i64 %i.di, %i.dk
  %i.dm = call noundef i64 @llvm.abs.i64(i64 %i.dl, i1 true)
  %i.dn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !154
  %i.dp = add nsw i64 %i.dm, %i.do
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !154
  store i8 0, ptr %15, align 8, !tbaa !153
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dq = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertERNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.bj, i1 noundef zeroext %3, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef %9)
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.an:                                            ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ai
  %.016 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.ai ], [ %i.dq, %bb.al ]
  %i.ds = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 8 uses
  %.not.i.i39 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i39, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 4 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 4294967297
  %i.dw = trunc i64 %i.du to i32                  ; 2 uses
  br i1 %i.dv, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.dt, align 8, !tbaa !97
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dx, align 4, !tbaa !98
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !100
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #38, !inline_history !7
  %i.eb = load ptr, ptr %i.ds, align 8, !tbaa !100
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #38, !inline_history !7
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43

bb.aq:                                            ; preds = %bb.ao
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i.i40 = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i40, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ef = add nsw i32 %i.dw, -1
  store i32 %i.ef, ptr %i.dt, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41

bb.as:                                            ; preds = %bb.aq
  %i.eg = atomicrmw volatile add ptr %i.dt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i42 = phi i32 [ %i.dw, %bb.ar ], [ %i.eg, %bb.as ]
  %i.eh = icmp eq i32 %.0.i.i.i.i42, 1
  br i1 %i.eh, label %bb.at, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43, !prof !101

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43: ; preds = %bb.an, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  ret i1 %.016

.body:                                            ; preds = %bb.g, %bb.f, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.ag
  %.pn20 = phi { ptr, i32 } [ %i.dr, %bb.am ], [ %i.cv, %bb.ag ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %i.h, %bb.g ], [ %i.g, %bb.f ]
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
