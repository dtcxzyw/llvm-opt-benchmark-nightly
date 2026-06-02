inline.NumInlined: 33059
inline.NumDeleted: 6234
begin_hunk_0_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_122serializeWrappedRangesERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchE:bb.a
  br i1 %i.ki, label %.lr.ph203.split, label %._crit_edge204, !llvm.loop !336

.lr.ph:                                           ; preds = %.lr.ph203.split, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit
  %.029169 = phi i32 [ %i.lc, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit ], [ %i.jx, %.lr.ph203.split ] ; 2 uses
  %.sroa.084.1168 = phi ptr [ %.sroa.084.2, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit ], [ %.sroa.084.0201, %.lr.ph203.split ] ; 8 uses
  %.sroa.15.1167 = phi ptr [ %.sroa.15.3, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit ], [ %.sroa.15.0200, %.lr.ph203.split ] ; 6 uses
  %.sroa.27.1166 = phi ptr [ %.sroa.27.2, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit ], [ %.sroa.27.0199, %.lr.ph203.split ] ; 3 uses
  %i.kj = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !55
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 136
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = invoke noundef i32 %i.km(ptr noundef nonnull align 8 dereferenceable(94) %i.kj, i32 noundef %.029169)
          to label %bb.aj unwind label %.split    ; 2 uses

bb.aj:                                            ; preds = %.lr.ph
  %.not.i.i48 = icmp eq ptr %.sroa.15.1167, %.sroa.27.1166
  br i1 %.not.i.i48, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.sroa.0.0.insert.ext = zext i32 %i.kn to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, 4294967296
  store i64 %.sroa.0.0.insert.insert, ptr %.sroa.15.1167, align 4
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit

bb.al:                                            ; preds = %bb.aj
  %i.ko = ptrtoint ptr %.sroa.15.1167 to i64
  %i.kp = ptrtoint ptr %.sroa.084.1168 to i64
  %i.kq = sub i64 %i.ko, %i.kp                    ; 6 uses
  %i.kr = icmp eq i64 %i.kq, 9223372036854775800
  br i1 %i.kr, label %.split179.us, label %_ZNKSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

.split179.us:                                     ; preds = %bb.al, %bb.h
  %.us-phi180 = phi ptr [ %.sroa.15.1167.us.us, %bb.h ], [ %.sroa.15.1167, %bb.al ]
  %.us-phi181 = phi ptr [ %.sroa.084.1168.us.us, %bb.h ], [ %.sroa.084.1168, %bb.al ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.195) #48
          to label %.noexc49 unwind label %.loopexit.split-lp115

.noexc49:                                         ; preds = %.split179.us
  unreachable

_ZNKSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.al
  %i.ks = ashr exact i64 %i.kq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ks, i64 1)
  %i.kt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ks ; 2 uses
  %i.ku = icmp ult i64 %i.kt, %i.ks
  %i.kv = tail call i64 @llvm.umin.i64(i64 %i.kt, i64 1152921504606846975)
  %i.kw = select i1 %i.ku, i64 1152921504606846975, i64 %i.kv ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.kw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.kx = shl nuw nsw i64 %i.kw, 3
  %i.ky = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kx) #50
          to label %.noexc50 unwind label %.loopexit114.split ; 4 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 %i.kq ; 2 uses
  %.sroa.0.0.insert.ext76 = zext i32 %i.kn to i64
  %.sroa.0.0.insert.insert78 = or disjoint i64 %.sroa.0.0.insert.ext76, 4294967296
  store i64 %.sroa.0.0.insert.insert78, ptr %i.kz, align 4
  %i.la = icmp sgt i64 %i.kq, 0
  br i1 %i.la, label %bb.am, label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.am:                                            ; preds = %.noexc50
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ky, ptr align 4 %.sroa.084.1168, i64 %i.kq, i1 false)
  br label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.am, %.noexc50
  %.not.i17.i.i.i = icmp eq ptr %.sroa.084.1168, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.1168, i64 noundef %i.kq) #49
  br label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.an, %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.kw
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit

_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit: ; preds = %bb.ak, %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %.sroa.27.2 = phi ptr [ %i.lb, %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.27.1166, %bb.ak ] ; 2 uses
  %.pn = phi ptr [ %i.kz, %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.15.1167, %bb.ak ]
  %.sroa.084.2 = phi ptr [ %i.ky, %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.084.1168, %bb.ak ] ; 2 uses
  %.sroa.15.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.lc = add nsw i32 %.029169, 1                 ; 2 uses
  %i.ld = icmp slt i32 %i.lc, %i.ka
  br i1 %i.ld, label %.lr.ph, label %._crit_edge.split.loopexit, !llvm.loop !337

.split:                                           ; preds = %.lr.ph
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit114.split:                               ; preds = %_ZNKSt6vectorIN8facebook5velox10IndexRangeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit116 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp115:                            ; preds = %.split179.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ao:                                            ; preds = %._crit_edge204
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.lf = ptrtoint ptr %.sroa.15.0.lcssa to i64
  %i.lg = ptrtoint ptr %.sroa.084.0.lcssa to i64
  %i.lh = sub i64 %i.lf, %i.lg
  store ptr %.sroa.084.0.lcssa, ptr %5, align 8, !tbaa !87
  %i.li = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.084.0.lcssa, i64 %i.lh
  store ptr %i.lj, ptr %i.li, align 8, !tbaa !84
  invoke void @_ZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchE(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %._crit_edge204.thread

bb.aq:                                            ; preds = %bb.ao
  %i.lk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %.loopexit.split-lp

._crit_edge204.thread:                            ; preds = %.preheader, %bb.ap, %._crit_edge204
  %.sroa.084.0.lcssa290 = phi ptr [ %.sroa.084.0.lcssa, %._crit_edge204 ], [ %.sroa.084.0.lcssa, %bb.ap ], [ %.sroa.15.4, %.preheader ] ; 3 uses
  %.sroa.27.0.lcssa289 = phi ptr [ %.sroa.27.0.lcssa, %._crit_edge204 ], [ %.sroa.27.0.lcssa, %bb.ap ], [ %.sroa.27.4, %.preheader ]
  %.not.i.i.i = icmp eq ptr %.sroa.084.0.lcssa290, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge204.thread
  %i.ll = ptrtoint ptr %.sroa.27.0.lcssa289 to i64
  %i.lm = ptrtoint ptr %.sroa.084.0.lcssa290 to i64
  %i.ln = sub i64 %i.ll, %i.lm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.0.lcssa290, i64 noundef %i.ln) #49
  br label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EED2Ev.exit

_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EED2Ev.exit: ; preds = %._crit_edge204.thread, %bb.ar
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp115, %.loopexit114.split.us.split.us, %.loopexit114.split, %.split, %.split.us.split.us, %.loopexit.split.us.split.us, %.loopexit.split-lp.loopexit.split-lp.split.us.split.us, %.loopexit.split-lp.loopexit.split.us.split.us, %bb.ah, %.split186.us.split.us, %bb.aq, %bb.ai
  %.sroa.27.3 = phi ptr [ %.sroa.27.4, %bb.ah ], [ %.sroa.27.4, %bb.ai ], [ %.sroa.27.1166.us.us, %.split186.us.split.us ], [ %.sroa.27.1166.us.us, %.split.us.split.us ], [ %.sroa.27.1166.us.us, %.loopexit.split-lp.loopexit.split-lp.split.us.split.us ], [ %.sroa.27.0.lcssa, %bb.aq ], [ %.sroa.27.1166.us.us, %.loopexit.split.us.split.us ], [ %.sroa.27.1166.us.us, %.loopexit.split-lp.loopexit.split.us.split.us ], [ %.sroa.27.1166, %.split ], [ %.us-phi180, %.loopexit.split-lp115 ], [ %.sroa.15.1167, %.loopexit114.split ], [ %.sroa.15.1167.us.us, %.loopexit114.split.us.split.us ]
  %.sroa.084.3 = phi ptr [ %.sroa.15.4, %bb.ah ], [ %.sroa.15.4, %bb.ai ], [ %.sroa.084.1168.us.us, %.split186.us.split.us ], [ %.sroa.084.1168.us.us, %.split.us.split.us ], [ %.sroa.084.1168.us.us, %.loopexit.split-lp.loopexit.split-lp.split.us.split.us ], [ %.sroa.084.0.lcssa, %bb.aq ], [ %.sroa.084.1168.us.us, %.loopexit.split.us.split.us ], [ %.sroa.084.1168.us.us, %.loopexit.split-lp.loopexit.split.us.split.us ], [ %.sroa.084.1168, %.split ], [ %.us-phi181, %.loopexit.split-lp115 ], [ %.sroa.084.1168, %.loopexit114.split ], [ %.sroa.084.1168.us.us, %.loopexit114.split.us.split.us ] ; 3 uses
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %i.js, %bb.ah ], [ %i.jt, %bb.ai ], [ %i.jq, %.split186.us.split.us ], [ %i.jp, %.split.us.split.us ], [ %lpad.loopexit.split-lp112.us.us, %.loopexit.split-lp.loopexit.split-lp.split.us.split.us ], [ %i.lk, %bb.aq ], [ %lpad.loopexit.us.us, %.loopexit.split.us.split.us ], [ %lpad.loopexit111.us.us, %.loopexit.split-lp.loopexit.split.us.split.us ], [ %i.le, %.split ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp115 ], [ %lpad.loopexit116, %.loopexit114.split ], [ %lpad.loopexit116.us.us, %.loopexit114.split.us.split.us ]
  %.not.i.i.i51 = icmp eq ptr %.sroa.084.3, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EED2Ev.exit52, label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp
  %i.lo = ptrtoint ptr %.sroa.27.3 to i64
  %i.lp = ptrtoint ptr %.sroa.084.3 to i64
  %i.lq = sub i64 %i.lo, %i.lp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.084.3, i64 noundef %i.lq) #49
  br label %_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EED2Ev.exit52

_ZNSt6vectorIN8facebook5velox10IndexRangeESaIS2_EED2Ev.exit52: ; preds = %.loopexit.split-lp, %bb.as
  resume { ptr, i32 } %.pn38.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.facebook::velox::UnknownValue", align 1 ; 4 uses
  %5 = alloca %"class.std::shared_ptr.455", align 16 ; 6 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.140", align 16 ; 5 uses
  %7 = alloca %"class.std::shared_ptr.35", align 8 ; 5 uses
  %8 = alloca %"struct.facebook::velox::ComplexType", align 1 ; 4 uses
  %9 = alloca %"class.std::shared_ptr.35", align 8 ; 5 uses
  %10 = alloca %"struct.facebook::velox::ComplexType", align 1 ; 4 uses
  %11 = alloca %"class.std::shared_ptr.35", align 8 ; 5 uses
  %12 = alloca %"struct.facebook::velox::ComplexType", align 1 ; 4 uses
  %13 = alloca %"class.std::shared_ptr.35", align 8 ; 5 uses
  %14 = alloca %"struct.facebook::velox::Timestamp", align 8 ; 5 uses
  %15 = alloca %"class.std::shared_ptr.35", align 8 ; 5 uses
  %16 = alloca %"class.std::shared_ptr.35", align 8 ; 5 uses
  %17 = alloca %"class.std::shared_ptr.35", align 8 ; 5 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %18 = alloca %"class.std::shared_ptr.35", align 8 ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %19 = alloca %"class.std::shared_ptr.35", align 8 ; 5 uses
  %i.c = alloca i128, align 16                    ; 5 uses
  %20 = alloca %"class.std::shared_ptr.35", align 8 ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %21 = alloca %"class.std::shared_ptr.35", align 8 ; 5 uses
  %i.e = alloca i16, align 2                      ; 5 uses
  %22 = alloca %"class.std::shared_ptr.35", align 8 ; 5 uses
  %i.f = alloca i8, align 1                       ; 5 uses
  %23 = alloca %"class.std::shared_ptr.35", align 8 ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %24 = alloca %"class.std::shared_ptr.35", align 8 ; 5 uses
  %i.h = alloca i8, align 1                       ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.facebook::velox::ScratchPtr.30", align 8 ; 11 uses
  %27 = alloca %"class.folly::Range", align 8     ; 6 uses
  %28 = alloca %"class.folly::Range", align 8     ; 6 uses
  %29 = alloca %"class.facebook::velox::ScratchPtr.30", align 8 ; 11 uses
  %30 = alloca %"class.folly::Range", align 8     ; 6 uses
  %31 = alloca %"class.facebook::velox::ScratchPtr.14", align 8 ; 10 uses
  %32 = alloca %"class.facebook::velox::ScratchPtr", align 8 ; 10 uses
  %33 = alloca %"struct.xsimd::fma3", align 1     ; 3 uses
  %34 = alloca %"class.folly::Range.10", align 8  ; 6 uses
  %35 = alloca %class.anon.1754, align 8          ; 7 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.mj, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.bdz, %bb.mj ] ; 54 uses
  %i.j = load ptr, ptr %.tr, align 8, !tbaa !35   ; 23 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !38
  switch i32 %i.l, label %bb.mk [
    i32 3, label %bb.b
    i32 1, label %bb.m
    i32 0, label %bb.jj
    i32 5, label %bb.jk
    i32 8, label %bb.lf
    i32 6, label %bb.lt
    i32 9, label %bb.mj
  ]

bb.b:                                             ; preds = %tailrecurse
  store ptr %2, ptr %i.i, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i8, ptr %i.m, align 8, !tbaa !54
  switch i8 %i.n, label %bb.l [
    i8 33, label %bb.c
    i8 35, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.j, i64 40
  %.val.val.i = load ptr, ptr %i.o, align 8, !tbaa !83
  %.not.i.i = icmp eq ptr %.val.val.i, null
  br i1 %.not.i.i, label %bb.d, label %.preheader.i.i, !prof !147

.preheader.i.i:                                   ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !218
  %i.r = load ptr, ptr %1, align 8, !tbaa !216
  %.not2.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not2.i.i, label %"_ZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEv.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 168
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119serializeFlatVectorILNS0_8TypeKindE33EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchEE18veloxCheckFailArgs) #48
  unreachable

bb.e:                                             ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i.i ]
  %i.z = load i32, ptr %i.s, align 8, !tbaa !113  ; 2 uses
  %.not.i.i.i = icmp ne i32 %i.z, 0
  %i.aa = load i32, ptr %i.t, align 4
  %i.ab = icmp eq i32 %i.aa, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.ab, i1 false
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = sext i32 %i.z to i64
  tail call void @_ZN8facebook5velox16ByteOutputStream10appendBoolEbl(ptr noundef nonnull align 8 dereferenceable(64) %i.u, i1 noundef zeroext false, i64 noundef %i.ac)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZN8facebook5velox16ByteOutputStream10appendBoolEbl(ptr noundef nonnull align 8 dereferenceable(64) %i.u, i1 noundef zeroext true, i64 noundef 1)
  %i.ad = load i32, ptr %i.t, align 4, !tbaa !90
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.t, align 4, !tbaa !90
  %i.af = load i8, ptr %i.v, align 4, !tbaa !124, !range !8, !noundef !9
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.h, label %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !115 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !116 ; 2 uses
  %i.ak = add i64 %i.aj, 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !117
  %i.an = icmp ugt i64 %i.ak, %i.am
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 4, ptr nonnull align 4 dereferenceable(4) %i.w)
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.ao = load i32, ptr %i.w, align 8, !tbaa !125
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !118
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.aj
  store i32 %i.ao, ptr %i.aq, align 1
  %i.ar = load ptr, ptr %i.x, align 8, !tbaa !115
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !116
  %i.au = add i64 %i.at, 4
  store i64 %i.au, ptr %i.as, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i.i

_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i.i: ; preds = %bb.j, %bb.i, %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !218
  %i.aw = load ptr, ptr %1, align 8, !tbaa !216
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 2
  %i.bb = icmp ugt i64 %i.ba, %indvars.iv.next.i.i
  br i1 %i.bb, label %bb.e, label %"_ZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEv.exit", !llvm.loop !338

bb.k:                                             ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_119serializeFlatVectorILNS0_8TypeKindE35EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchEE18veloxCheckFailArgs) #48
  unreachable

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #36
  store ptr %.tr, ptr %35, align 8, !tbaa !167
  %i.bc = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr %1, ptr %i.bc, align 8, !tbaa !339
  %i.bd = getelementptr inbounds nuw i8, ptr %35, i64 16
  store ptr %i.i, ptr %i.bd, align 8, !tbaa !171
  %i.be = getelementptr inbounds nuw i8, ptr %35, i64 24
  store ptr %3, ptr %i.be, align 8, !tbaa !240
  call fastcc void @"_ZZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEvENKUlvE_clEv"(ptr noundef nonnull align 8 dereferenceable(32) %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  br label %"_ZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEv.exit"

bb.m:                                             ; preds = %tailrecurse
  store ptr %2, ptr %i.i, align 8, !tbaa !52
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !54  ; 2 uses
  switch i8 %i.bg, label %bb.jg [
    i8 33, label %bb.n
    i8 35, label %bb.ah
    i8 0, label %bb.bk
    i8 3, label %bb.bx
    i8 1, label %bb.cm
    i8 2, label %bb.db
    i8 4, label %bb.dq
    i8 10, label %bb.ef
    i8 5, label %bb.es
    i8 6, label %bb.fh
    i8 7, label %bb.fw
    i8 8, label %bb.gl
    i8 9, label %bb.ha
    i8 30, label %bb.hn
    i8 31, label %bb.ic
    i8 32, label %bb.ir
  ]

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bi = load atomic i8, ptr @_ZGVZN8facebook5velox12IPPrefixType3getEvE9kInstance acquire, align 8, !noalias !341
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.o, label %_ZNSt12__shared_ptrIKN8facebook5velox12IPPrefixTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i37, !prof !7

bb.o:                                             ; preds = %bb.n
  %i.bk = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8facebook5velox12IPPrefixType3getEvE9kInstance) #36, !noalias !341, !inline_history !344
  %.not.i.i42 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i42, label %_ZNSt12__shared_ptrIKN8facebook5velox12IPPrefixTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i37, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN8facebook5velox12IPPrefixTypeC2Ev(ptr noundef nonnull align 8 dereferenceable(96) @_ZZN8facebook5velox12IPPrefixType3getEvE9kInstance)
          to label %bb.q unwind label %bb.r, !noalias !341, !inline_history !344

bb.q:                                             ; preds = %bb.p
  %i.bl = tail call i32 @__cxa_atexit(ptr nonnull @_ZN8facebook5velox7RowTypeD2Ev, ptr nonnull @_ZZN8facebook5velox12IPPrefixType3getEvE9kInstance, ptr nonnull @__dso_handle) #36, !noalias !341, !inline_history !344 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN8facebook5velox12IPPrefixType3getEvE9kInstance) #36, !noalias !341, !inline_history !344
  br label %_ZNSt12__shared_ptrIKN8facebook5velox12IPPrefixTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i37

common.resume:                                    ; preds = %bb.mb, %bb.ll, %.loopexit.split-lp223, %bb.jo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.bj, %bb.al, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.bm, %bb.r ], [ %i.ei, %bb.al ], [ %i.hj, %bb.bj ], [ %i.asm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.asx, %bb.jo ], [ %.pn57.pn.i, %.loopexit.split-lp223 ], [ %.pn.i, %bb.ll ], [ %.pn.i28, %bb.mb ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.p
  %i.bm = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8facebook5velox12IPPrefixType3getEvE9kInstance) #36, !noalias !341, !inline_history !344
  br label %common.resume

_ZNSt12__shared_ptrIKN8facebook5velox12IPPrefixTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i37: ; preds = %bb.n, %bb.o, %bb.q
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !11
  %i.bo = icmp eq ptr %i.bn, @_ZZN8facebook5velox12IPPrefixType3getEvE9kInstance
  br i1 %i.bo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox12IPPrefixTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i37
  tail call fastcc void @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117serializeIPPrefixERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamE(ptr noundef nonnull align 8 dereferenceable(16) %.tr, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2), !inline_history !344
  br label %"_ZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEv.exit"

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook5velox12IPPrefixTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i37
  %i.bp = load ptr, ptr %.tr, align 8, !tbaa !35  ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !35
  %.not187 = icmp eq ptr %i.br, null
  br i1 %.not187, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE:bb.a
  %i.ays = load ptr, ptr %i.ayo, align 8, !tbaa !115 ; 3 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ays, i64 16
  %i.ayu = load i64, ptr %i.ayt, align 8, !tbaa !116 ; 2 uses
  %i.ayv = add i64 %i.ayu, 4
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ays, i64 8
  %i.ayx = load i64, ptr %i.ayw, align 8, !tbaa !117
  %i.ayy = icmp ugt i64 %i.ayv, %i.ayx
  br i1 %i.ayy, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  invoke void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.ayp, i64 4, ptr nonnull align 4 dereferenceable(4) %i.ayn)
          to label %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit.i unwind label %.loopexit

bb.kl:                                            ; preds = %bb.kj
  %i.ayz = load ptr, ptr %i.ays, align 8, !tbaa !118
  %i.aza = getelementptr inbounds i8, ptr %i.ayz, i64 %i.ayu
  store i32 %i.ayr, ptr %i.aza, align 1
  %i.azb = load ptr, ptr %i.ayo, align 8, !tbaa !115
  %i.azc = getelementptr inbounds nuw i8, ptr %i.azb, i64 16 ; 2 uses
  %i.azd = load i64, ptr %i.azc, align 8, !tbaa !116
  %i.aze = add i64 %i.azd, 4
  store i64 %i.aze, ptr %i.azc, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit.i

_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit.i: ; preds = %bb.kk, %bb.kl
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.atk
  br i1 %exitcond.not.i, label %_ZN8facebook5velox4simd9transposeIiiN5xsimd4fma3INS3_4avx2EEEEEvPKT_N5folly5RangeIPKT0_EEPS7_.exit, label %bb.kj, !llvm.loop !481

.loopexit:                                        ; preds = %bb.kk
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp223

.loopexit.split-lp:                               ; preds = %bb.ki
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp223

_ZN8facebook5velox4simd9transposeIiiN5xsimd4fma3INS3_4avx2EEEEEvPKT_N5folly5RangeIPKT0_EEPS7_.exit: ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit.i, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i48, %bb.kf, %._crit_edge.i
  %.053.i = phi i64 [ %i.auh, %bb.kf ], [ %i.auh, %._crit_edge.i ], [ 0, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i48 ], [ %i.atk, %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit.i ]
  %.052.i = phi ptr [ %i.aty, %bb.kf ], [ %i.aty, %._crit_edge.i ], [ %i.ate, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i48 ], [ %i.ate, %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit.i ] ; 2 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %i.atb, i64 96 ; 2 uses
  %i.azg = load i64, ptr %i.azf, align 8, !tbaa !313
  %.not350 = icmp eq i64 %i.azg, 0
  br i1 %.not350, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN8facebook5velox4simd9transposeIiiN5xsimd4fma3INS3_4avx2EEEEEvPKT_N5folly5RangeIPKT0_EEPS7_.exit
  %i.azh = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.azi = getelementptr inbounds nuw [4 x i8], ptr %.052.i, i64 %.053.i
  %i.azj = getelementptr inbounds nuw i8, ptr %2, i64 304
  br label %bb.la

._crit_edge:                                      ; preds = %bb.lc, %_ZN8facebook5velox4simd9transposeIiiN5xsimd4fma3INS3_4avx2EEEEEvPKT_N5folly5RangeIPKT0_EEPS7_.exit
  %i.azk = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.azl = load ptr, ptr %i.azk, align 8, !tbaa !227
  %.not.i45 = icmp eq ptr %i.azl, null
  br i1 %.not.i45, label %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit, label %bb.km

bb.km:                                            ; preds = %._crit_edge
  %i.azm = load ptr, ptr %32, align 8, !tbaa !209
  invoke void @_ZN8facebook5velox7Scratch7releaseEONS0_10raw_vectorIcEE(ptr noundef nonnull align 8 dereferenceable(24) %i.azm, ptr noundef nonnull align 8 dereferenceable(32) %i.atd)
          to label %bb.kn unwind label %bb.ks

bb.kn:                                            ; preds = %bb.km
  %.pr.i46 = load ptr, ptr %i.azk, align 8, !tbaa !227 ; 2 uses
  %i.azn = icmp eq ptr %.pr.i46, null
  br i1 %i.azn, label %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.azo = getelementptr inbounds i8, ptr %.pr.i46, i64 -32 ; 2 uses
  %i.azp = load ptr, ptr %i.atd, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i47 = icmp eq ptr %i.azp, null
  br i1 %.not.i.i.i47, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.azq = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.azr = load i64, ptr %i.azq, align 8, !tbaa !229
  %i.azs = add i64 %i.azr, 64
  %i.azt = load ptr, ptr %i.azp, align 8, !tbaa !55
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 120
  %i.azv = load ptr, ptr %i.azu, align 8
  invoke void %i.azv(ptr noundef nonnull align 8 dereferenceable(264) %i.azp, ptr noundef nonnull %i.azo, i64 noundef %i.azs)
          to label %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit unwind label %bb.kr, !inline_history !482

bb.kq:                                            ; preds = %bb.ko
  call void @free(ptr noundef nonnull %i.azo) #36
  br label %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit

bb.kr:                                            ; preds = %bb.kp
  %i.azw = landingpad { ptr, i32 }
          catch ptr null
  %i.azx = extractvalue { ptr, i32 } %i.azw, 0
  call void @__clang_call_terminate(ptr %i.azx) #47
  unreachable

bb.ks:                                            ; preds = %bb.km
  %i.azy = landingpad { ptr, i32 }
          catch ptr null
  %i.azz = extractvalue { ptr, i32 } %i.azy, 0
  call void @__clang_call_terminate(ptr %i.azz) #47
  unreachable

_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit:  ; preds = %._crit_edge, %bb.kn, %bb.kp, %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  %i.baa = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.bab = load ptr, ptr %i.baa, align 8, !tbaa !227
  %.not.i43 = icmp eq ptr %i.bab, null
  br i1 %.not.i43, label %_ZN8facebook5velox10ScratchPtrImLi4EED2Ev.exit, label %bb.kt

bb.kt:                                            ; preds = %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit
  %i.bac = load ptr, ptr %31, align 8, !tbaa !442
  invoke void @_ZN8facebook5velox7Scratch7releaseEONS0_10raw_vectorIcEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bac, ptr noundef nonnull align 8 dereferenceable(32) %i.atc)
          to label %bb.ku unwind label %bb.kz

bb.ku:                                            ; preds = %bb.kt
  %.pr.i = load ptr, ptr %i.baa, align 8, !tbaa !227 ; 2 uses
  %i.bad = icmp eq ptr %.pr.i, null
  br i1 %i.bad, label %_ZN8facebook5velox10ScratchPtrImLi4EED2Ev.exit, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.bae = getelementptr inbounds i8, ptr %.pr.i, i64 -32 ; 2 uses
  %i.baf = load ptr, ptr %i.atc, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i44 = icmp eq ptr %i.baf, null
  br i1 %.not.i.i.i44, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.bag = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.bah = load i64, ptr %i.bag, align 8, !tbaa !229
  %i.bai = add i64 %i.bah, 64
  %i.baj = load ptr, ptr %i.baf, align 8, !tbaa !55
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baj, i64 120
  %i.bal = load ptr, ptr %i.bak, align 8
  invoke void %i.bal(ptr noundef nonnull align 8 dereferenceable(264) %i.baf, ptr noundef nonnull %i.bae, i64 noundef %i.bai)
          to label %_ZN8facebook5velox10ScratchPtrImLi4EED2Ev.exit unwind label %bb.ky, !inline_history !482

bb.kx:                                            ; preds = %bb.kv
  call void @free(ptr noundef nonnull %i.bae) #36
  br label %_ZN8facebook5velox10ScratchPtrImLi4EED2Ev.exit

bb.ky:                                            ; preds = %bb.kw
  %i.bam = landingpad { ptr, i32 }
          catch ptr null
  %i.ban = extractvalue { ptr, i32 } %i.bam, 0
  call void @__clang_call_terminate(ptr %i.ban) #47
  unreachable

bb.kz:                                            ; preds = %bb.kt
  %i.bao = landingpad { ptr, i32 }
          catch ptr null
  %i.bap = extractvalue { ptr, i32 } %i.bao, 0
  call void @__clang_call_terminate(ptr %i.bap) #47
  unreachable

_ZN8facebook5velox10ScratchPtrImLi4EED2Ev.exit:   ; preds = %_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev.exit, %bb.ku, %bb.kw, %bb.kx
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  br label %"_ZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEv.exit"

bb.la:                                            ; preds = %.lr.ph, %bb.lc
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.lc ] ; 3 uses
  %i.baq = trunc nuw nsw i64 %indvars.iv to i32
  %i.bar = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox9RowVector7childAtEj(ptr noundef nonnull align 8 dereferenceable(152) %i.atb, i32 noundef %i.baq)
          to label %bb.lb unwind label %bb.ld, !inline_history !441

bb.lb:                                            ; preds = %bb.la
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #36
  store ptr %.052.i, ptr %34, align 8, !tbaa !216
  store ptr %i.azi, ptr %i.azh, align 8, !tbaa !218
  %i.bas = load ptr, ptr %i.azj, align 8, !tbaa !176
  %i.bat = getelementptr inbounds nuw [336 x i8], ptr %i.bas, i64 %indvars.iv
  invoke void @_ZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE(ptr noundef nonnull align 8 dereferenceable(16) %i.bar, ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef %i.bat, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.lc unwind label %bb.le, !inline_history !441

bb.lc:                                            ; preds = %bb.lb
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bau = load i64, ptr %i.azf, align 8, !tbaa !313
  %i.bav = icmp ugt i64 %i.bau, %indvars.iv.next
  br i1 %i.bav, label %bb.la, label %._crit_edge, !llvm.loop !483

bb.ld:                                            ; preds = %bb.la
  %i.baw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp223

bb.le:                                            ; preds = %bb.lb
  %i.bax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #36
  br label %.loopexit.split-lp223

.loopexit.split-lp223:                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit222, %.loopexit.split-lp223.loopexit.split-lp, %.loopexit.split-lp223.loopexit, %bb.le, %bb.ld, %bb.kg
  %.pn57.pn.i = phi { ptr, i32 } [ %i.ayd, %bb.kg ], [ %lpad.loopexit.split-lp228, %.loopexit.split-lp223.loopexit.split-lp ], [ %i.baw, %bb.ld ], [ %i.bax, %bb.le ], [ %lpad.loopexit224, %.loopexit222 ], [ %lpad.loopexit227, %.loopexit.split-lp223.loopexit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN8facebook5velox10ScratchPtrIiLi64EED2Ev(ptr noundef nonnull align 8 dead_on_return(340) dereferenceable(340) %32) #36, !inline_history !441
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  call void @_ZN8facebook5velox10ScratchPtrImLi4EED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %31) #36, !inline_history !441
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  br label %common.resume

bb.lf:                                            ; preds = %tailrecurse
  store ptr %2, ptr %i.i, align 8, !tbaa !52
  %i.bay = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.j, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #36
  store ptr %3, ptr %29, align 8, !tbaa !484
  %i.baz = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.baz, i8 0, i64 44, i1 false)
  %.sroa.0.0.copyload.i22 = load ptr, ptr %1, align 8, !tbaa !444
  %.sroa.2.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i24 = load ptr, ptr %.sroa.2.0..sroa_idx.i23, align 8, !tbaa !444
  %i.bba = getelementptr inbounds nuw i8, ptr %i.bay, i64 40
  %i.bbb = load ptr, ptr %i.bba, align 8, !tbaa !83
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bay, i64 104
  %i.bbd = load ptr, ptr %i.bbc, align 8, !tbaa !326
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bay, i64 120
  %i.bbf = load ptr, ptr %i.bbe, align 8, !tbaa !324
  %i.bbg = invoke noundef i32 @_ZN8facebook5velox10serializer6presto6detail12rowsToRangesEN5folly5RangeIPKiEEPKmS7_S7_PPiRNS0_10ScratchPtrINS0_10IndexRangeELi0EEEPNSD_ISB_Li0EEEPNS3_12VectorStreamERNS0_7ScratchE(ptr %.sroa.0.0.copyload.i22, ptr %.sroa.2.0.copyload.i24, ptr noundef %i.bbb, ptr noundef %i.bbd, ptr noundef %i.bbf, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(52) %29, ptr noundef null, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.lg unwind label %bb.lh, !inline_history !486 ; 2 uses

bb.lg:                                            ; preds = %bb.lf
  %i.bbh = icmp eq i32 %i.bbg, 0
  br i1 %i.bbh, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_120serializeArrayVectorERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE.exit, label %bb.li

bb.lh:                                            ; preds = %bb.lf
  %i.bbi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ll

bb.li:                                            ; preds = %bb.lg
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bay, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #36
  %i.bbk = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.bbl = load ptr, ptr %i.bbk, align 8, !tbaa !487 ; 2 uses
  %i.bbm = sext i32 %i.bbg to i64
  store ptr %i.bbl, ptr %30, align 8, !tbaa !87
  %i.bbn = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.bbo = getelementptr inbounds nuw [8 x i8], ptr %i.bbl, i64 %i.bbm
  store ptr %i.bbo, ptr %i.bbn, align 8, !tbaa !84
  %i.bbp = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.bbq = load ptr, ptr %i.bbp, align 8, !tbaa !176
  invoke void @_ZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchE(ptr noundef nonnull align 8 dereferenceable(16) %i.bbj, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef %i.bbq, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.lj unwind label %bb.lk, !inline_history !486

bb.lj:                                            ; preds = %bb.li
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_120serializeArrayVectorERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE.exit

bb.lk:                                            ; preds = %bb.li
  %i.bbr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %bb.lh
  %.pn.i = phi { ptr, i32 } [ %i.bbr, %bb.lk ], [ %i.bbi, %bb.lh ]
  call void @_ZN8facebook5velox10ScratchPtrINS0_10IndexRangeELi0EED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %29) #36, !inline_history !486
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  br label %common.resume

_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_120serializeArrayVectorERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE.exit: ; preds = %bb.lg, %bb.lj
  %i.bbs = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.bbt = load ptr, ptr %i.bbs, align 8, !tbaa !227
  %.not.i71 = icmp eq ptr %i.bbt, null
  br i1 %.not.i71, label %_ZN8facebook5velox10ScratchPtrINS0_10IndexRangeELi0EED2Ev.exit, label %bb.lm

bb.lm:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_120serializeArrayVectorERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE.exit
  %i.bbu = load ptr, ptr %29, align 8, !tbaa !484
  invoke void @_ZN8facebook5velox7Scratch7releaseEONS0_10raw_vectorIcEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bbu, ptr noundef nonnull align 8 dereferenceable(32) %i.baz)
          to label %bb.ln unwind label %bb.ls

bb.ln:                                            ; preds = %bb.lm
  %.pr.i72 = load ptr, ptr %i.bbs, align 8, !tbaa !227 ; 2 uses
  %i.bbv = icmp eq ptr %.pr.i72, null
  br i1 %i.bbv, label %_ZN8facebook5velox10ScratchPtrINS0_10IndexRangeELi0EED2Ev.exit, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.bbw = getelementptr inbounds i8, ptr %.pr.i72, i64 -32 ; 2 uses
  %i.bbx = load ptr, ptr %i.baz, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i73 = icmp eq ptr %i.bbx, null
  br i1 %.not.i.i.i73, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.bby = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.bbz = load i64, ptr %i.bby, align 8, !tbaa !229
  %i.bca = add i64 %i.bbz, 64
  %i.bcb = load ptr, ptr %i.bbx, align 8, !tbaa !55
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bcb, i64 120
  %i.bcd = load ptr, ptr %i.bcc, align 8
  invoke void %i.bcd(ptr noundef nonnull align 8 dereferenceable(264) %i.bbx, ptr noundef nonnull %i.bbw, i64 noundef %i.bca)
          to label %_ZN8facebook5velox10ScratchPtrINS0_10IndexRangeELi0EED2Ev.exit unwind label %bb.lr, !inline_history !482

bb.lq:                                            ; preds = %bb.lo
  call void @free(ptr noundef nonnull %i.bbw) #36
  br label %_ZN8facebook5velox10ScratchPtrINS0_10IndexRangeELi0EED2Ev.exit

bb.lr:                                            ; preds = %bb.lp
  %i.bce = landingpad { ptr, i32 }
          catch ptr null
  %i.bcf = extractvalue { ptr, i32 } %i.bce, 0
  call void @__clang_call_terminate(ptr %i.bcf) #47
  unreachable

bb.ls:                                            ; preds = %bb.lm
  %i.bcg = landingpad { ptr, i32 }
          catch ptr null
  %i.bch = extractvalue { ptr, i32 } %i.bcg, 0
  call void @__clang_call_terminate(ptr %i.bch) #47
  unreachable

_ZN8facebook5velox10ScratchPtrINS0_10IndexRangeELi0EED2Ev.exit: ; preds = %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_120serializeArrayVectorERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE.exit, %bb.ln, %bb.lp, %bb.lq
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  br label %"_ZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEv.exit"

bb.lt:                                            ; preds = %tailrecurse
  store ptr %2, ptr %i.i, align 8, !tbaa !52
  %i.bci = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.j, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox9MapVectorE, i64 0) #36 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #36
  store ptr %3, ptr %26, align 8, !tbaa !484
  %i.bcj = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.bcj, i8 0, i64 44, i1 false)
  %.sroa.0.0.copyload.i25 = load ptr, ptr %1, align 8, !tbaa !444
  %.sroa.2.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i27 = load ptr, ptr %.sroa.2.0..sroa_idx.i26, align 8, !tbaa !444
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bci, i64 40
  %i.bcl = load ptr, ptr %i.bck, align 8, !tbaa !83
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bci, i64 104
  %i.bcn = load ptr, ptr %i.bcm, align 8, !tbaa !326
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bci, i64 120
  %i.bcp = load ptr, ptr %i.bco, align 8, !tbaa !324
  %i.bcq = invoke noundef i32 @_ZN8facebook5velox10serializer6presto6detail12rowsToRangesEN5folly5RangeIPKiEEPKmS7_S7_PPiRNS0_10ScratchPtrINS0_10IndexRangeELi0EEEPNSD_ISB_Li0EEEPNS3_12VectorStreamERNS0_7ScratchE(ptr %.sroa.0.0.copyload.i25, ptr %.sroa.2.0.copyload.i27, ptr noundef %i.bcl, ptr noundef %i.bcn, ptr noundef %i.bcp, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(52) %26, ptr noundef null, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.lu unwind label %bb.lv, !inline_history !488 ; 2 uses

bb.lu:                                            ; preds = %bb.lt
  %i.bcr = icmp eq i32 %i.bcq, 0
  br i1 %i.bcr, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_118serializeMapVectorERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE.exit, label %bb.lw

bb.lv:                                            ; preds = %bb.lt
  %i.bcs = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

bb.lw:                                            ; preds = %bb.lu
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bci, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #36
  %i.bcu = getelementptr inbounds nuw i8, ptr %26, i64 40 ; 2 uses
  %i.bcv = load ptr, ptr %i.bcu, align 8, !tbaa !487 ; 2 uses
  %i.bcw = sext i32 %i.bcq to i64                 ; 2 uses
  store ptr %i.bcv, ptr %27, align 8, !tbaa !87
  %i.bcx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bcy = getelementptr inbounds nuw [8 x i8], ptr %i.bcv, i64 %i.bcw
  store ptr %i.bcy, ptr %i.bcx, align 8, !tbaa !84
  %i.bcz = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.bda = load ptr, ptr %i.bcz, align 8, !tbaa !176
  invoke void @_ZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchE(ptr noundef nonnull align 8 dereferenceable(16) %i.bct, ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef %i.bda, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.lx unwind label %bb.lz, !inline_history !488

bb.lx:                                            ; preds = %bb.lw
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #36
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bci, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #36
  %i.bdc = load ptr, ptr %i.bcu, align 8, !tbaa !487 ; 2 uses
  store ptr %i.bdc, ptr %28, align 8, !tbaa !87
  %i.bdd = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.bde = getelementptr inbounds nuw [8 x i8], ptr %i.bdc, i64 %i.bcw
  store ptr %i.bde, ptr %i.bdd, align 8, !tbaa !84
  %i.bdf = load ptr, ptr %i.bcz, align 8, !tbaa !176
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bdf, i64 336
  invoke void @_ZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchE(ptr noundef nonnull align 8 dereferenceable(16) %i.bdb, ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull %i.bdg, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.ly unwind label %bb.ma, !inline_history !488

bb.ly:                                            ; preds = %bb.lx
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #36
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_118serializeMapVectorERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE.exit

bb.lz:                                            ; preds = %bb.lw
  %i.bdh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #36
  br label %bb.mb

bb.ma:                                            ; preds = %bb.lx
  %i.bdi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #36
  br label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %bb.lz, %bb.lv
  %.pn.i28 = phi { ptr, i32 } [ %i.bdi, %bb.ma ], [ %i.bdh, %bb.lz ], [ %i.bcs, %bb.lv ]
  call void @_ZN8facebook5velox10ScratchPtrINS0_10IndexRangeELi0EED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %26) #36, !inline_history !488
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #36
  br label %common.resume

_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_118serializeMapVectorERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE.exit: ; preds = %bb.lu, %bb.ly
  %i.bdj = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.bdk = load ptr, ptr %i.bdj, align 8, !tbaa !227
  %.not.i74 = icmp eq ptr %i.bdk, null
  br i1 %.not.i74, label %_ZN8facebook5velox10ScratchPtrINS0_10IndexRangeELi0EED2Ev.exit77, label %bb.mc

bb.mc:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_118serializeMapVectorERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE.exit
  %i.bdl = load ptr, ptr %26, align 8, !tbaa !484
  invoke void @_ZN8facebook5velox7Scratch7releaseEONS0_10raw_vectorIcEE(ptr noundef nonnull align 8 dereferenceable(24) %i.bdl, ptr noundef nonnull align 8 dereferenceable(32) %i.bcj)
          to label %bb.md unwind label %bb.mi

bb.md:                                            ; preds = %bb.mc
  %.pr.i75 = load ptr, ptr %i.bdj, align 8, !tbaa !227 ; 2 uses
  %i.bdm = icmp eq ptr %.pr.i75, null
  br i1 %i.bdm, label %_ZN8facebook5velox10ScratchPtrINS0_10IndexRangeELi0EED2Ev.exit77, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.bdn = getelementptr inbounds i8, ptr %.pr.i75, i64 -32 ; 2 uses
  %i.bdo = load ptr, ptr %i.bcj, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i76 = icmp eq ptr %i.bdo, null
  br i1 %.not.i.i.i76, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.bdp = getelementptr inbounds nuw i8, ptr %26, i64 32
  %i.bdq = load i64, ptr %i.bdp, align 8, !tbaa !229
  %i.bdr = add i64 %i.bdq, 64
  %i.bds = load ptr, ptr %i.bdo, align 8, !tbaa !55
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 120
  %i.bdu = load ptr, ptr %i.bdt, align 8
  invoke void %i.bdu(ptr noundef nonnull align 8 dereferenceable(264) %i.bdo, ptr noundef nonnull %i.bdn, i64 noundef %i.bdr)
          to label %_ZN8facebook5velox10ScratchPtrINS0_10IndexRangeELi0EED2Ev.exit77 unwind label %bb.mh, !inline_history !482

bb.mg:                                            ; preds = %bb.me
  call void @free(ptr noundef nonnull %i.bdn) #36
  br label %_ZN8facebook5velox10ScratchPtrINS0_10IndexRangeELi0EED2Ev.exit77

bb.mh:                                            ; preds = %bb.mf
  %i.bdv = landingpad { ptr, i32 }
          catch ptr null
  %i.bdw = extractvalue { ptr, i32 } %i.bdv, 0
  call void @__clang_call_terminate(ptr %i.bdw) #47
  unreachable

bb.mi:                                            ; preds = %bb.mc
  %i.bdx = landingpad { ptr, i32 }
          catch ptr null
  %i.bdy = extractvalue { ptr, i32 } %i.bdx, 0
  call void @__clang_call_terminate(ptr %i.bdy) #47
  unreachable

_ZN8facebook5velox10ScratchPtrINS0_10IndexRangeELi0EED2Ev.exit77: ; preds = %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_118serializeMapVectorERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE.exit, %bb.md, %bb.mf, %bb.mg
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #36
  br label %"_ZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEv.exit"

bb.mj:                                            ; preds = %tailrecurse
  %i.bdz = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox10BaseVector18loadedVectorSharedERKSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %.tr)
  br label %tailrecurse

bb.mk:                                            ; preds = %tailrecurse
  tail call fastcc void @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_116serializeWrappedERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE(ptr noundef nonnull align 8 dereferenceable(16) %.tr, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %"_ZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEv.exit"

"_ZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEv.exit": ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit679, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit674, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit670, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit666, %_ZN8facebook5velox10serializer6presto6detail12VectorStream9appendOneINS0_10StringViewEEEvRKT_.exit662, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit657, %_ZN8facebook5velox10serializer6presto6detail12VectorStream9appendOneINS0_10StringViewEEEvRKT_.exit, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit652, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit648, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit644, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit640, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit636, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit632, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit628, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit624, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i41, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i.i, %bb.gv, %bb.gg, %.preheader220, %.preheader218, %.preheader216, %.preheader214, %.preheader212, %.preheader210, %.preheader208, %.preheader206, %.preheader204, %.preheader202, %.preheader200, %.preheader198, %.preheader196, %.preheader194, %.preheader192, %.preheader, %_ZN8facebook5velox10ScratchPtrImLi4EED2Ev.exit, %bb.jp, %bb.s, %bb.u, %._crit_edge347, %bb.am, %bb.ao, %_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.is, %bb.iu, %._crit_edge261, %bb.id, %bb.if, %._crit_edge267, %bb.ho, %bb.hq, %._crit_edge273, %bb.hb, %bb.hd, %._crit_edge279, %bb.gm, %bb.go, %bb.fx, %bb.fz, %bb.fi, %bb.fk, %._crit_edge297, %bb.et, %bb.ev, %._crit_edge303, %bb.eg, %bb.ei, %._crit_edge309, %bb.dr, %bb.dt, %._crit_edge315, %bb.dc, %bb.de, %._crit_edge321, %bb.cn, %bb.cp, %._crit_edge327, %bb.by, %bb.ca, %._crit_edge333, %bb.bl, %bb.bn, %._crit_edge339, %bb.l, %.preheader.i.i, %bb.mk, %_ZN8facebook5velox10ScratchPtrINS0_10IndexRangeELi0EED2Ev.exit77, %_ZN8facebook5velox10ScratchPtrINS0_10IndexRangeELi0EED2Ev.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_116serializeWrappedERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKiEEPNS3_12VectorStreamERNS0_7ScratchE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::ScratchPtr.1785", align 8 ; 10 uses
  %5 = alloca %"class.folly::Range.10", align 8   ; 6 uses
  %6 = alloca %"class.folly::Range.10", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %3, ptr %4, align 8, !tbaa !489
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.a, i8 0, i64 44, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !218
  %i.d = load ptr, ptr %1, align 8, !tbaa !216
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %i.j = invoke noundef ptr @_ZN8facebook5velox10ScratchPtrIiLi1EE3getEi(ptr noundef nonnull align 8 dereferenceable(88) %4, i32 noundef %i.i)
          to label %bb.b unwind label %bb.h       ; 12 uses

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(94) %i.k)
          to label %bb.c unwind label %bb.i       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %0, align 8, !tbaa !35     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !38
  %i.s = icmp ne i32 %i.r, 2
  %or.cond = or i1 %i.o, %i.s
  br i1 %or.cond, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 312
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.v(ptr noundef nonnull align 8 dereferenceable(94) %i.p)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !221  ; 6 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 264
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(94) %i.aa)
          to label %bb.f unwind label %bb.j       ; 2 uses
end_hunk_1
