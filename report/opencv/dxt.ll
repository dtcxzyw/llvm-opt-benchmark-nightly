Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dxt?download=true
inline.NumInlined: 635
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZNSt12__shared_ptrIN2cv3hal5DCT2DELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !90

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv4idctERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv4idctERKNS_11_InputArrayERKNS_12_OutputArrayEiE26__cv_trace_location_fn4649)
  %i.a = or i32 %2, 1
  invoke void @_ZN2cv3dctERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.a)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !106
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %3)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #23
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.e:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN2cv17getOptimalDFTSizeEi(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp ugt i32 %0, 2125763999
  br i1 %i.a, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.016 = phi i32 [ %.1, %.preheader ], [ 1650, %bb.a ] ; 2 uses
  %.01215 = phi i32 [ %.113, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %i.b = add nuw nsw i32 %.016, %.01215
  %i.c = lshr i32 %i.b, 1                         ; 3 uses
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZN2cvL17optimalDFTSizeTabE, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !42
  %.not = icmp sgt i32 %0, %i.f                   ; 2 uses
  %i.g = add nuw nsw i32 %i.c, 1
  %.113 = select i1 %.not, i32 %i.g, i32 %.01215  ; 2 uses
  %.1 = select i1 %.not, i32 %.016, i32 %i.c      ; 3 uses
  %i.h = icmp slt i32 %.113, %.1
  br i1 %i.h, label %.preheader, label %bb.b, !llvm.loop !423

bb.b:                                             ; preds = %.preheader
  %i.i = zext nneg i32 %.1 to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @_ZN2cvL17optimalDFTSizeTabE, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.014 = phi i32 [ %i.k, %bb.b ], [ -1, %bb.a ]
  ret i32 %.014
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv15OcvDftBasicImpl5applyEPKhPh(ptr noundef nonnull align 8 dereferenceable(2336) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(65) %i.a, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv15OcvDftBasicImplD2Ev(ptr noundef nonnull align 8 dead_on_return(2336) dereferenceable(2336) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %.not.i.i = icmp eq ptr %i.b, %i.c
  %i.d = icmp eq ptr %i.b, null
  %or.cond.i = or i1 %.not.i.i, %i.d
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #20
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit

_ZN2cv10AutoBufferIiLm264EED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.not.i.i1 = icmp eq ptr %i.f, %i.g
  %i.h = icmp eq ptr %i.f, null
  %or.cond.i2 = or i1 %.not.i.i1, %i.h
  br i1 %or.cond.i2, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #20
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit:            ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv15OcvDftBasicImplD0Ev(ptr noundef nonnull align 8 dereferenceable(2336) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  %i.d = icmp eq ptr %i.b, null
  %or.cond.i.i = or i1 %.not.i.i.i, %i.d
  br i1 %or.cond.i.i, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #20
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit.i

_ZN2cv10AutoBufferIiLm264EED2Ev.exit.i:           ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.not.i.i1.i = icmp eq ptr %i.f, %i.g
  %i.h = icmp eq ptr %i.f, null
  %or.cond.i2.i = or i1 %.not.i.i1.i, %i.h
  br i1 %or.cond.i2.i, label %_ZN2cv15OcvDftBasicImplD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #20
  br label %_ZN2cv15OcvDftBasicImplD2Ev.exit

_ZN2cv15OcvDftBasicImplD2Ev.exit:                 ; preds = %_ZN2cv10AutoBufferIiLm264EED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2336) #20
  ret void
}

declare noundef zeroext i1 @_ZN2cv20checkHardwareSupportEi(i32 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL7DFTInitEiiPKiPiiPvi(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(address) %3, i32 noundef range(i32 8, 17) %4, ptr nofree noundef captures(address) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [34 x i32], align 16              ; 11 uses
  %i.b = alloca [34 x i32], align 16              ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.c = load i32, ptr %2, align 4, !tbaa !42     ; 14 uses
  %i.d = icmp slt i32 %0, 6
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %3, align 4, !tbaa !42
  %i.e = add nsw i32 %0, -1                       ; 3 uses
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %3, i64 %i.f
  store i32 %i.e, ptr %i.g, align 4, !tbaa !42
  %.not243 = icmp eq i32 %0, 4
  br i1 %.not243, label %.thread265, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i32 %0, 2
  br i1 %i.h, label %.lr.ph306, label %.thread264

.lr.ph306:                                        ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.i, align 4, !tbaa !42
  %exitcond355.not = icmp eq i32 %i.e, 2
  br i1 %exitcond355.not, label %._crit_edge307, label %.lr.ph306.1

.lr.ph306.1:                                      ; preds = %.lr.ph306
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %i.j, align 4, !tbaa !42
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 3, ptr %11, align 4, !tbaa !42
  br label %._crit_edge307

.thread265:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 2, ptr %i.k, align 4, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.l, align 4, !tbaa !42
  br label %.loopexit

._crit_edge307:                                   ; preds = %.lr.ph306.1, %.lr.ph306
  %i.m = icmp eq i32 %0, 5
  br i1 %i.m, label %bb.c, label %.thread264

bb.c:                                             ; preds = %._crit_edge307
  %i.n = icmp eq i32 %4, 16
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %5, align 8, !tbaa !113
  br label %.thread264

bb.e:                                             ; preds = %bb.c
  store i32 1065353216, ptr %5, align 4
  %.sroa_idx250 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %.sroa_idx250, align 4
  br label %.thread264

bb.f:                                             ; preds = %bb.a
  %i.o = icmp slt i32 %1, 34
  br i1 %i.o, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cvL7DFTInitEiiPKiPiiPvi, ptr noundef nonnull @.str.1, i32 noundef 247) #22
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %7, align 8, !tbaa !51     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.u = load i64, ptr %i.s, align 8, !tbaa !52
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.p, %bb.j ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.q, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.am

bb.l:                                             ; preds = %bb.f
  %i.w = sext i32 %1 to i64                       ; 7 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.w
  store i32 1, ptr %i.x, align 4, !tbaa !42
  %i.y = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.w
  store i32 0, ptr %i.y, align 4, !tbaa !42
  %i.z = icmp sgt i32 %1, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.aa = zext nneg i32 %1 to i64                 ; 3 uses
  %i.ab = shl nuw nsw i64 %i.aa, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.ab, i1 false), !tbaa !42
  %i.ac = shl nuw nsw i64 %i.w, 2
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.ac
  %load_initial = load i32, ptr %scevgep, align 4 ; 2 uses
  %xtraiter = and i64 %i.aa, 1
  %i.ad = icmp eq i32 %1, 1
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.aa, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.preheader.new ], [ %i.ao, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ae = xor i64 %indvars.iv, -1
  %i.af = add nsw i64 %i.ae, %i.w                 ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %2, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !42
  %i.ai = mul nsw i32 %i.ah, %store_forwarded     ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.af
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !42
  %i.ak = xor i64 %indvars.iv, -2
  %i.al = add nsw i64 %i.ak, %i.w                 ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %2, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !42
  %i.ao = mul nsw i32 %i.an, %i.ai                ; 3 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.al
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !42
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !424

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %store_forwarded.epil.init = phi i32 [ %load_initial, %.lr.ph.preheader ], [ %i.ao, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod415 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod415)
  %i.aq = xor i64 %indvars.iv.epil.init, -1
  %i.ar = add nsw i64 %i.aq, %i.w                 ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !42
  %i.au = mul nsw i32 %i.at, %store_forwarded.epil.init
  %i.av = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ar
  store i32 %i.au, ptr %i.av, align 4, !tbaa !42
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.l
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.aw = getelementptr [4 x i8], ptr %2, i64 %i.w
  %i.ax = getelementptr i8, ptr %i.aw, i64 -4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !42
  %.not236 = icmp eq i32 %i.c, %i.ay
  %spec.select = select i1 %.not236, ptr %3, ptr %5
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.0 = phi ptr [ %3, %._crit_edge ], [ %spec.select, %bb.m ] ; 17 uses
  %i.az = and i32 %i.c, 1
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.o, label %.lr.ph284

.lr.ph284:                                        ; preds = %bb.n
  store i32 0, ptr %.0, align 4, !tbaa !42
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !42
  %wide.trip.count329 = zext nneg i32 %0 to i64
  br label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !42 ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0210 = phi i32 [ 0, %bb.o ], [ %i.bh, %bb.p ] ; 7 uses
  %i.bf = shl nuw i32 1, %.0210
  %i.bg = icmp ult i32 %i.bf, %i.c
  %i.bh = add nuw nsw i32 %.0210, 1
  br i1 %i.bg, label %bb.p, label %bb.q, !llvm.loop !425

bb.q:                                             ; preds = %bb.p
  %i.bi = mul nsw i32 %i.be, %i.c                 ; 2 uses
  %i.bj = ashr exact i32 %i.bi, 1                 ; 4 uses
  %i.bk = ashr i32 %i.bi, 2                       ; 5 uses
  %i.bl = icmp slt i32 %i.c, 3
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %.0, align 4, !tbaa !42
  %i.bm = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i32 %i.bj, ptr %i.bm, align 4, !tbaa !42
  br label %.loopexit271

bb.s:                                             ; preds = %bb.q
  %i.bn = icmp samesign ult i32 %i.c, 257
  br i1 %i.bn, label %.lr.ph289.preheader, label %vector.scevcheck

.lr.ph289.preheader:                              ; preds = %bb.s
  %i.bo = sub nsw i32 10, %.0210
  %i.bp = add nsw i32 %i.c, -4
  %i.bq = sext i32 %i.bp to i64
  br label %.lr.ph289

.lr.ph289:                                        ; preds = %.lr.ph289.preheader, %.lr.ph289
  %indvars.iv334 = phi i64 [ 0, %.lr.ph289.preheader ], [ %indvars.iv.next335, %.lr.ph289 ] ; 3 uses
  %i.br = lshr exact i64 %indvars.iv334, 2
  %i.bs = getelementptr inbounds nuw i8, ptr @_ZN2cvL9bitrevTabE, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !52
  %i.bu = zext i8 %i.bt to i32
  %i.bv = lshr i32 %i.bu, %i.bo
  %i.bw = mul nsw i32 %i.bv, %i.be                ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %indvars.iv334 ; 4 uses
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !42
  %i.by = add nsw i32 %i.bw, %i.bj                ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !42
  %i.ca = add nsw i32 %i.bw, %i.bk
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !42
end_hunk_0
