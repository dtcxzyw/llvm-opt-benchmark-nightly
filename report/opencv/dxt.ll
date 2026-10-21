Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dxt?download=true
inline.NumInlined: 635
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZNSt12__shared_ptrIN2cv3hal5DCT2DELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !2
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !42
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
  %i.e = add nsw i32 %0, -1                       ; 4 uses
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
  %exitcond355.not.1 = icmp eq i32 %i.e, 3
  br i1 %exitcond355.not.1, label %._crit_edge307, label %.lr.ph306.2

.lr.ph306.2:                                      ; preds = %.lr.ph306.1
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 3, ptr %i.k, align 4, !tbaa !42
  br label %._crit_edge307

.thread265:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 2, ptr %i.l, align 4, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.m, align 4, !tbaa !42
  br label %.loopexit

._crit_edge307:                                   ; preds = %.lr.ph306.2, %.lr.ph306.1, %.lr.ph306
  %i.n = icmp eq i32 %0, 5
  br i1 %i.n, label %bb.c, label %.thread264

bb.c:                                             ; preds = %._crit_edge307
  %i.o = icmp eq i32 %4, 16
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %5, align 8, !tbaa !113
  br label %.thread264

bb.e:                                             ; preds = %bb.c
  store i32 1065353216, ptr %5, align 4, !tbaa !109
  %.sroa_idx250 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %.sroa_idx250, align 4, !tbaa !109
  br label %.thread264

bb.f:                                             ; preds = %bb.a
  %i.p = icmp slt i32 %1, 34
  br i1 %i.p, label %bb.l, label %bb.g

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
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %7, align 8, !tbaa !51     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.v = load i64, ptr %i.t, align 8, !tbaa !52
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.q, %bb.j ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.am

bb.l:                                             ; preds = %bb.f
  %i.x = sext i32 %1 to i64                       ; 7 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.x
  store i32 1, ptr %i.y, align 4, !tbaa !42
  %i.z = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.x
  store i32 0, ptr %i.z, align 4, !tbaa !42
  %i.aa = icmp sgt i32 %1, 0
  br i1 %i.aa, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.ab = zext nneg i32 %1 to i64                 ; 3 uses
  %i.ac = shl nuw nsw i64 %i.ab, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.ac, i1 false), !tbaa !42
  %i.ad = shl nuw nsw i64 %i.x, 2
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.ad
  %load_initial = load i32, ptr %scevgep, align 4 ; 2 uses
  %xtraiter = and i64 %i.ab, 1
  %i.ae = icmp eq i32 %1, 1
  br i1 %i.ae, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ab, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.preheader.new ], [ %i.ap, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.af = xor i64 %indvars.iv, -1
  %i.ag = add nsw i64 %i.af, %i.x                 ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !42
  %i.aj = mul nsw i32 %i.ai, %store_forwarded     ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ag
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !42
  %i.al = xor i64 %indvars.iv, -2
  %i.am = add nsw i64 %i.al, %i.x                 ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %2, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !42
  %i.ap = mul nsw i32 %i.ao, %i.aj                ; 3 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.am
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !42
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !424

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %store_forwarded.epil.init = phi i32 [ %load_initial, %.lr.ph.preheader ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod415 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod415)
  %i.ar = xor i64 %indvars.iv.epil.init, -1
  %i.as = add nsw i64 %i.ar, %i.x                 ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %2, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !42
  %i.av = mul nsw i32 %i.au, %store_forwarded.epil.init
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.as
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !42
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.l
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.ax = getelementptr [4 x i8], ptr %2, i64 %i.x
  %i.ay = getelementptr i8, ptr %i.ax, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !42
  %.not236 = icmp eq i32 %i.c, %i.az
  %spec.select = select i1 %.not236, ptr %3, ptr %5
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %.0 = phi ptr [ %3, %._crit_edge ], [ %spec.select, %bb.m ] ; 17 uses
  %i.ba = and i32 %i.c, 1
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.o, label %.lr.ph284

.lr.ph284:                                        ; preds = %bb.n
  store i32 0, ptr %.0, align 4, !tbaa !42
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !42
  %wide.trip.count329 = zext nneg i32 %0 to i64
  br label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !42 ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0210 = phi i32 [ 0, %bb.o ], [ %i.bi, %bb.p ] ; 7 uses
  %i.bg = shl nuw i32 1, %.0210
  %i.bh = icmp ult i32 %i.bg, %i.c
  %i.bi = add nuw nsw i32 %.0210, 1
  br i1 %i.bh, label %bb.p, label %bb.q, !llvm.loop !425

bb.q:                                             ; preds = %bb.p
  %i.bj = mul nsw i32 %i.bf, %i.c                 ; 2 uses
  %i.bk = ashr exact i32 %i.bj, 1                 ; 4 uses
  %i.bl = ashr i32 %i.bj, 2                       ; 5 uses
  %i.bm = icmp slt i32 %i.c, 3
  br i1 %i.bm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %.0, align 4, !tbaa !42
  %i.bn = getelementptr inbounds nuw i8, ptr %.0, i64 4
  store i32 %i.bk, ptr %i.bn, align 4, !tbaa !42
  br label %.loopexit271

bb.s:                                             ; preds = %bb.q
  %i.bo = icmp samesign ult i32 %i.c, 257
  br i1 %i.bo, label %.lr.ph289.preheader, label %vector.scevcheck

.lr.ph289.preheader:                              ; preds = %bb.s
  %i.bp = sub nsw i32 10, %.0210
  %i.bq = add nsw i32 %i.c, -4
  %i.br = sext i32 %i.bq to i64
  br label %.lr.ph289

.lr.ph289:                                        ; preds = %.lr.ph289.preheader, %.lr.ph289
  %indvars.iv334 = phi i64 [ 0, %.lr.ph289.preheader ], [ %indvars.iv.next335, %.lr.ph289 ] ; 3 uses
  %i.bs = lshr exact i64 %indvars.iv334, 2
  %i.bt = getelementptr inbounds nuw i8, ptr @_ZN2cvL9bitrevTabE, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !52
  %i.bv = zext i8 %i.bu to i32
  %i.bw = lshr i32 %i.bv, %i.bp
  %i.bx = mul nsw i32 %i.bw, %i.bf                ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %indvars.iv334 ; 4 uses
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !42
  %i.bz = add nsw i32 %i.bx, %i.bk                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !42
  %i.cb = add nsw i32 %i.bx, %i.bl
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !42
  %i.cd = add nsw i32 %i.bz, %i.bl
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !42
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 4 ; 2 uses
  %.not239 = icmp sgt i64 %indvars.iv.next335, %i.br
  br i1 %.not239, label %.loopexit271, label %.lr.ph289, !llvm.loop !426

vector.scevcheck:                                 ; preds = %bb.s
  %i.cf = sub nsw i32 34, %.0210                  ; 2 uses
  %i.cg = zext nneg i32 %i.c to i64               ; 2 uses
  %i.ch = add nsw i64 %i.cg, -2
  %i.ci = lshr i64 %i.ch, 2
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %i.ck = add nsw i32 %i.c, -1026
  %i.cl = icmp ult i32 %i.ck, -1024
  br i1 %i.cl, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.cj, 9223372036854775804     ; 3 uses
  %i.cm = shl i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cf, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert385 = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %broadcast.splat386 = shufflevector <4 x i32> %broadcast.splatinsert385, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert387 = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat388 = shufflevector <4 x i32> %broadcast.splatinsert387, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert389 = insertelement <4 x i32> poison, i32 %i.bl, i64 0
  %i.cn = shufflevector <4 x i32> %broadcast.splatinsert389, <4 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.co = and i64 %index, 252
  %i.cp = getelementptr inbounds nuw i8, ptr @_ZN2cvL9bitrevTabE, i64 %i.co
  %wide.load = load <4 x i8>, ptr %i.cp, align 4, !tbaa !52
  %i.cq = zext <4 x i8> %wide.load to <4 x i32>
  %i.cr = shl nuw <4 x i32> %i.cq, splat (i32 24)
  %i.cs = lshr i64 %index, 8
  %i.ct = and i64 %i.cs, 255
  %i.cu = getelementptr inbounds nuw i8, ptr @_ZN2cvL9bitrevTabE, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !52
  %broadcast.splatinsert391 = insertelement <4 x i8> poison, i8 %i.cv, i64 0
  %broadcast.splat392 = shufflevector <4 x i8> %broadcast.splatinsert391, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.cw = zext <4 x i8> %broadcast.splat392 to <4 x i32>
  %i.cx = shl nuw nsw <4 x i32> %i.cw, splat (i32 16)
  %i.cy = or disjoint <4 x i32> %i.cx, %i.cr
  %i.cz = lshr i64 %index, 16
  %i.da = and i64 %i.cz, 255
  %i.db = getelementptr inbounds nuw i8, ptr @_ZN2cvL9bitrevTabE, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !52
  %broadcast.splatinsert393 = insertelement <4 x i8> poison, i8 %i.dc, i64 0
  %broadcast.splat394 = shufflevector <4 x i8> %broadcast.splatinsert393, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.dd = zext <4 x i8> %broadcast.splat394 to <4 x i32>
  %i.de = shl nuw nsw <4 x i32> %i.dd, splat (i32 8)
  %i.df = or disjoint <4 x i32> %i.cy, %i.de
  %i.dg = lshr i64 %index, 24
  %i.dh = getelementptr inbounds nuw i8, ptr @_ZN2cvL9bitrevTabE, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !52
  %broadcast.splatinsert395 = insertelement <4 x i8> poison, i8 %i.di, i64 0
  %broadcast.splat396 = shufflevector <4 x i8> %broadcast.splatinsert395, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.dj = zext <4 x i8> %broadcast.splat396 to <4 x i32>
  %i.dk = or disjoint <4 x i32> %i.df, %i.dj
  %i.dl = lshr <4 x i32> %i.dk, %broadcast.splat
  %i.dm = mul nsw <4 x i32> %i.dl, %broadcast.splat386 ; 3 uses
  %.idx = shl nuw i64 %index, 4
  %i.dn = getelementptr inbounds nuw i8, ptr %.0, i64 %.idx
  %i.do = add nsw <4 x i32> %i.dm, %broadcast.splat388 ; 2 uses
  %i.dp = shufflevector <4 x i32> %i.dm, <4 x i32> %i.do, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dq = shufflevector <4 x i32> %i.dm, <4 x i32> %i.do, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dr = add nsw <8 x i32> %i.dq, %i.cn
  %interleaved.vec = shufflevector <8 x i32> %i.dp, <8 x i32> %i.dr, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i32> %interleaved.vec, ptr %i.dn, align 4, !tbaa !42
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !427

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %.loopexit271, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %middle.block
  %indvars.iv331.ph = phi i64 [ 0, %vector.scevcheck ], [ %i.cm, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv331 = phi i64 [ %indvars.iv.next332, %scalar.ph ], [ %indvars.iv331.ph, %scalar.ph.preheader ] ; 6 uses
  %i.dt = lshr exact i64 %indvars.iv331, 2
  %i.du = and i64 %i.dt, 255
  %i.dv = getelementptr inbounds nuw i8, ptr @_ZN2cvL9bitrevTabE, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !52
  %i.dx = zext i8 %i.dw to i32
  %i.dy = shl nuw i32 %i.dx, 24
  %i.dz = lshr i64 %indvars.iv331, 10
  %i.ea = and i64 %i.dz, 255
  %i.eb = getelementptr inbounds nuw i8, ptr @_ZN2cvL9bitrevTabE, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !52
  %i.ed = zext i8 %i.ec to i32
  %i.ee = shl nuw nsw i32 %i.ed, 16
  %i.ef = or disjoint i32 %i.ee, %i.dy
  %i.eg = lshr i64 %indvars.iv331, 18
  %i.eh = and i64 %i.eg, 255
  %i.ei = getelementptr inbounds nuw i8, ptr @_ZN2cvL9bitrevTabE, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !52
  %i.ek = zext i8 %i.ej to i32
  %i.el = shl nuw nsw i32 %i.ek, 8
  %i.em = or disjoint i32 %i.ef, %i.el
  %i.en = lshr i64 %indvars.iv331, 26
  %i.eo = getelementptr inbounds nuw i8, ptr @_ZN2cvL9bitrevTabE, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !52
  %i.eq = zext i8 %i.ep to i32
  %i.er = or disjoint i32 %i.em, %i.eq
  %i.es = lshr i32 %i.er, %i.cf
  %i.et = mul nsw i32 %i.es, %i.bf                ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %indvars.iv331 ; 4 uses
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !42
  %i.ev = add nsw i32 %i.et, %i.bk                ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !42
  %i.ex = add nsw i32 %i.et, %i.bl
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !42
  %i.ez = add nsw i32 %i.ev, %i.bl
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !42
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 4 ; 2 uses
  %i.fb = icmp samesign ult i64 %indvars.iv.next332, %i.cg
  br i1 %i.fb, label %scalar.ph, label %.loopexit271, !llvm.loop !428

.loopexit271:                                     ; preds = %scalar.ph, %.lr.ph289, %middle.block, %bb.r
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 5 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !42
  %i.fe = add nsw i32 %i.fd, 1
  store i32 %i.fe, ptr %i.fc, align 4, !tbaa !42
  %i.ff = icmp sgt i32 %1, 1
  br i1 %i.ff, label %bb.t, label %.loopexit270

bb.t:                                             ; preds = %.loopexit271
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !42 ; 2 uses
  %i.fi = icmp slt i32 %i.c, %0
  br i1 %i.fi, label %.preheader269.lr.ph, label %.loopexit270

.preheader269.lr.ph:                              ; preds = %bb.t
  %i.fj = icmp sgt i32 %i.c, 0
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.fl = sext i32 %i.c to i64                    ; 4 uses
  %i.fm = zext nneg i32 %0 to i64
  %wide.trip.count340 = zext i32 %i.c to i64      ; 5 uses
  %i.fn = shl nsw i64 %i.fl, 2
  %i.fo = shl nsw i64 %i.fl, 2
  %min.iters.check = icmp ult i32 %i.c, 8
  %invariant.op = add i64 %i.fn, -1
  %n.vec399 = and i64 %wide.trip.count340, 2147483640 ; 3 uses
  %cmp.n408 = icmp eq i64 %n.vec399, %wide.trip.count340
  %xtraiter416 = and i64 %wide.trip.count340, 2   ; 2 uses
  %lcmp.mod417.not = icmp eq i64 %xtraiter416, 0
  br label %.preheader269

.loopexit268:                                     ; preds = %.lr.ph297, %bb.u
  %.1221.lcssa = phi i32 [ %i.go, %bb.u ], [ %i.gy, %.lr.ph297 ]
  %indvar.next = add i64 %indvar, 1
  br label %.preheader269

.preheader269:                                    ; preds = %.loopexit268, %.preheader269.lr.ph
  %indvar = phi i64 [ %indvar.next, %.loopexit268 ], [ 0, %.preheader269.lr.ph ] ; 2 uses
  %indvars.iv345 = phi i64 [ %indvars.iv.next346, %.loopexit268 ], [ %i.fl, %.preheader269.lr.ph ] ; 2 uses
  %.0220300 = phi i32 [ %.1221.lcssa, %.loopexit268 ], [ %i.fh, %.preheader269.lr.ph ] ; 7 uses
  br i1 %i.fj, label %.lr.ph291.preheader, label %._crit_edge292

.lr.ph291.preheader:                              ; preds = %.preheader269
  %i.fp = mul i64 %i.fo, %indvar
  %invariant.gep = getelementptr [4 x i8], ptr %.0, i64 %indvars.iv345 ; 6 uses
  %.reass = add i64 %i.fp, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph291.preheader411, label %vector.ph398

vector.ph398:                                     ; preds = %.lr.ph291.preheader
  %broadcast.splatinsert400 = insertelement <4 x i32> poison, i32 %.0220300, i64 0
  %broadcast.splat401 = shufflevector <4 x i32> %broadcast.splatinsert400, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body402, %vector.ph398
  %index403 = phi i64 [ 0, %vector.ph398 ], [ %index.next406, %vector.body402 ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %index403 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %wide.load404 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !42
  %wide.load405 = load <4 x i32>, ptr %i.fr, align 4, !tbaa !42
  %i.fs = add nsw <4 x i32> %wide.load404, %broadcast.splat401
  %i.ft = add nsw <4 x i32> %wide.load405, %broadcast.splat401
  %i.fu = getelementptr [4 x i8], ptr %invariant.gep, i64 %index403 ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  store <4 x i32> %i.fs, ptr %i.fu, align 4, !tbaa !42
  store <4 x i32> %i.ft, ptr %i.fv, align 4, !tbaa !42
  %index.next406 = add nuw i64 %index403, 8       ; 2 uses
  %i.fw = icmp eq i64 %index.next406, %n.vec399
  br i1 %i.fw, label %middle.block407, label %vector.body402, !llvm.loop !429

middle.block407:                                  ; preds = %vector.body402
  br i1 %cmp.n408, label %._crit_edge292, label %.lr.ph291.preheader411

.lr.ph291.preheader411:                           ; preds = %.lr.ph291.preheader, %middle.block407
  %indvars.iv337.ph = phi i64 [ 0, %.lr.ph291.preheader ], [ %n.vec399, %middle.block407 ] ; 3 uses
  br i1 %lcmp.mod417.not, label %.lr.ph291.prol.loopexit, label %.lr.ph291.prol

.lr.ph291.prol:                                   ; preds = %.lr.ph291.preheader411, %.lr.ph291.prol
  %indvars.iv337.prol = phi i64 [ %indvars.iv.next338.prol, %.lr.ph291.prol ], [ %indvars.iv337.ph, %.lr.ph291.preheader411 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph291.prol ], [ 0, %.lr.ph291.preheader411 ]
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %indvars.iv337.prol
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !42
  %i.fz = add nsw i32 %i.fy, %.0220300
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv337.prol
  store i32 %i.fz, ptr %gep.prol, align 4, !tbaa !42
  %indvars.iv.next338.prol = add nuw nsw i64 %indvars.iv337.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter416
  br i1 %prol.iter.cmp.not, label %.lr.ph291.prol.loopexit, label %.lr.ph291.prol, !llvm.loop !430

.lr.ph291.prol.loopexit:                          ; preds = %.lr.ph291.prol, %.lr.ph291.preheader411
  %indvars.iv337.unr = phi i64 [ %indvars.iv337.ph, %.lr.ph291.preheader411 ], [ %indvars.iv.next338.prol, %.lr.ph291.prol ]
  %i.ga = sub nsw i64 %indvars.iv337.ph, %wide.trip.count340
  %i.gb = icmp ugt i64 %i.ga, -4
  br i1 %i.gb, label %._crit_edge292, label %.lr.ph291

.lr.ph291:                                        ; preds = %.lr.ph291.prol.loopexit, %.lr.ph291
  %indvars.iv337 = phi i64 [ %indvars.iv.next338.3, %.lr.ph291 ], [ %indvars.iv337.unr, %.lr.ph291.prol.loopexit ] ; 6 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %indvars.iv337
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !42
  %i.ge = add nsw i32 %i.gd, %.0220300
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv337
  store i32 %i.ge, ptr %gep, align 4, !tbaa !42
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1 ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %indvars.iv.next338
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !42
  %i.gh = add nsw i32 %i.gg, %.0220300
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next338
  store i32 %i.gh, ptr %gep.1, align 4, !tbaa !42
  %indvars.iv.next338.1 = add nuw nsw i64 %indvars.iv337, 2 ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %indvars.iv.next338.1
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !42
  %i.gk = add nsw i32 %i.gj, %.0220300
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next338.1
  store i32 %i.gk, ptr %gep.2, align 4, !tbaa !42
  %indvars.iv.next338.2 = add nuw nsw i64 %indvars.iv337, 3 ; 2 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %indvars.iv.next338.2
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !42
  %i.gn = add nsw i32 %i.gm, %.0220300
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next338.2
  store i32 %i.gn, ptr %gep.3, align 4, !tbaa !42
  %indvars.iv.next338.3 = add nuw nsw i64 %indvars.iv337, 4 ; 2 uses
  %exitcond341.not.3 = icmp eq i64 %indvars.iv.next338.3, %wide.trip.count340
  br i1 %exitcond341.not.3, label %._crit_edge292, label %.lr.ph291, !llvm.loop !431

._crit_edge292:                                   ; preds = %.lr.ph291.prol.loopexit, %.lr.ph291, %middle.block407, %.preheader269
  %indvars.iv.next346 = add nsw i64 %indvars.iv345, %i.fl ; 2 uses
  %.not240 = icmp slt i64 %indvars.iv.next346, %i.fm
  br i1 %.not240, label %bb.u, label %.loopexit270

bb.u:                                             ; preds = %._crit_edge292
  %i.go = add nsw i32 %.0220300, %i.fh            ; 2 uses
  %i.gp = load i32, ptr %i.fc, align 4, !tbaa !42
  %i.gq = add nsw i32 %i.gp, 1                    ; 2 uses
  store i32 %i.gq, ptr %i.fc, align 4, !tbaa !42
  %i.gr = load i32, ptr %i.fk, align 4, !tbaa !42
  %.not241293 = icmp slt i32 %i.gq, %i.gr
  br i1 %.not241293, label %.loopexit268, label %.lr.ph297

.lr.ph297:                                        ; preds = %bb.u, %.lr.ph297
  %indvars.iv342 = phi i64 [ %indvars.iv.next343, %.lr.ph297 ], [ 1, %bb.u ] ; 2 uses
  %i.gs = phi ptr [ %i.gz, %.lr.ph297 ], [ %i.fc, %bb.u ]
  %.1221294 = phi i32 [ %i.gy, %.lr.ph297 ], [ %i.go, %bb.u ]
  store i32 0, ptr %i.gs, align 4, !tbaa !42
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv342 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !42
  %i.gw = load i32, ptr %i.gt, align 4, !tbaa !42
  %i.gx = add i32 %i.gv, %.1221294
  %i.gy = sub i32 %i.gx, %i.gw                    ; 2 uses
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next343 ; 3 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !42
  %i.hb = add nsw i32 %i.ha, 1                    ; 2 uses
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !42
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next343
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !42
  %.not241 = icmp slt i32 %i.hb, %i.hd
  br i1 %.not241, label %.loopexit268, label %.lr.ph297, !llvm.loop !432

.loopexit273:                                     ; preds = %.lr.ph281, %bb.v
  %.3.lcssa = phi i32 [ %i.hf, %bb.v ], [ %i.ho, %.lr.ph281 ] ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %indvars.iv326
  store i32 %.3.lcssa, ptr %i.he, align 4, !tbaa !42
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1 ; 2 uses
  %exitcond330.not = icmp eq i64 %indvars.iv.next327, %wide.trip.count329
  br i1 %exitcond330.not, label %.loopexit270, label %bb.v, !llvm.loop !433

bb.v:                                             ; preds = %.lr.ph284, %.loopexit273
  %indvars.iv326 = phi i64 [ 1, %.lr.ph284 ], [ %indvars.iv.next327, %.loopexit273 ] ; 2 uses
  %.2222283 = phi i32 [ 0, %.lr.ph284 ], [ %.3.lcssa, %.loopexit273 ]
  %i.hf = add nsw i32 %i.bd, %.2222283            ; 2 uses
  %11 = load i32, ptr %i.a, align 16, !tbaa !42
  %i.hg = add nsw i32 %11, 1                      ; 2 uses
  store i32 %i.hg, ptr %i.a, align 16, !tbaa !42
  %i.hh = load i32, ptr %2, align 4, !tbaa !42
  %.not238277 = icmp slt i32 %i.hg, %i.hh
  br i1 %.not238277, label %.loopexit273, label %.lr.ph281

.lr.ph281:                                        ; preds = %bb.v, %.lr.ph281
  %indvars.iv323 = phi i64 [ %indvars.iv.next324, %.lr.ph281 ], [ 0, %bb.v ] ; 3 uses
  %.3278 = phi i32 [ %i.ho, %.lr.ph281 ], [ %i.hf, %bb.v ]
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv323
  store i32 0, ptr %i.hi, align 4, !tbaa !42
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv323 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !42
  %i.hm = load i32, ptr %i.hj, align 4, !tbaa !42
  %i.hn = add i32 %i.hl, %.3278
  %i.ho = sub i32 %i.hn, %i.hm                    ; 2 uses
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1 ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next324 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !42
  %i.hr = add nsw i32 %i.hq, 1                    ; 2 uses
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !42
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next324
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !42
  %.not238 = icmp slt i32 %i.hr, %i.ht
  br i1 %.not238, label %.loopexit273, label %.lr.ph281, !llvm.loop !434

.loopexit270:                                     ; preds = %.loopexit273, %._crit_edge292, %bb.t, %.loopexit271
  %.1 = phi i32 [ %.0210, %bb.t ], [ %.0210, %.loopexit271 ], [ %.0210, %._crit_edge292 ], [ 0, %.loopexit273 ] ; 2 uses
  %.not242 = icmp eq ptr %.0, %3
  br i1 %.not242, label %.loopexit, label %.lr.ph304.preheader

.lr.ph304.preheader:                              ; preds = %.loopexit270
  store i32 0, ptr %3, align 4, !tbaa !42
  %i.hu = and i32 %0, 1
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = zext nneg i32 %0 to i64
  br label %.lr.ph304

.lr.ph304:                                        ; preds = %.lr.ph304.preheader, %.lr.ph304
  %indvars.iv348 = phi i64 [ %i.hv, %.lr.ph304.preheader ], [ %indvars.iv.next349, %.lr.ph304 ] ; 4 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %indvars.iv348
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !42
  %i.hz = add nuw nsw i64 %indvars.iv348, 1       ; 2 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !42
  %i.ic = sext i32 %i.hy to i64
  %i.id = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ic
  %i.ie = trunc nuw nsw i64 %indvars.iv348 to i32
  store i32 %i.ie, ptr %i.id, align 4, !tbaa !42
  %i.if = sext i32 %i.ib to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %3, i64 %i.if
  %i.ih = trunc nuw nsw i64 %i.hz to i32
  store i32 %i.ih, ptr %i.ig, align 4, !tbaa !42
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 2 ; 2 uses
  %i.ii = icmp samesign ult i64 %indvars.iv.next349, %i.hw
  br i1 %i.ii, label %.lr.ph304, label %.loopexit, !llvm.loop !435

.loopexit:                                        ; preds = %.lr.ph304, %.thread265, %.loopexit270
  %.2 = phi i32 [ %.1, %.loopexit270 ], [ 2, %.thread265 ], [ %.1, %.lr.ph304 ]
  %i.ij = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %0)
  %i.ik = icmp samesign ult i32 %i.ij, 2
  br i1 %i.ik, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit
  %i.il = sext i32 %.2 to i64
  %i.im = getelementptr inbounds [16 x i8], ptr @_ZN2cvL6DFTTabE, i64 %i.il ; 2 uses
  %i.in = load double, ptr %i.im, align 16, !tbaa !113
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.ip = load double, ptr %i.io, align 8, !tbaa !113
  %i.iq = fneg double %i.ip
  br label %bb.y

bb.x:                                             ; preds = %.loopexit
  %i.ir = sitofp i32 %0 to double
  %i.is = fdiv double f0xC01921FB54442D18, %i.ir
  %i.it = tail call double @sin(double noundef %i.is) #21 ; 3 uses
  %i.iu = fneg double %i.it
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.it, double 1.000000e+00)
  %i.iw = tail call double @sqrt(double noundef %i.iv) #21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.8.0 = phi double [ %i.iq, %bb.w ], [ %i.it, %bb.x ] ; 4 uses
  %.sroa.0253.0 = phi double [ %i.in, %bb.w ], [ %i.iw, %bb.x ] ; 4 uses
  %i.ix = add nsw i32 %0, 1
  %i.iy = sdiv i32 %i.ix, 2                       ; 4 uses
  switch i32 %4, label %bb.ad [
    i32 16, label %bb.z
    i32 8, label %bb.ai
  ]

bb.z:                                             ; preds = %bb.y
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %5, align 8, !tbaa !113
  %i.iz = and i32 %0, 1
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.jb = sext i32 %i.iy to i64
  %i.jc = getelementptr inbounds [16 x i8], ptr %5, i64 %i.jb
  store <2 x double> <double -1.000000e+00, double 0.000000e+00>, ptr %i.jc, align 8, !tbaa !113
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.jd = icmp sgt i32 %0, 2
  br i1 %i.jd, label %.lr.ph317, label %.thread264

.lr.ph317:                                        ; preds = %bb.ab
  %i.je = fneg double %.sroa.8.0
  %i.jf = zext nneg i32 %0 to i64
  %smax365 = tail call i32 @llvm.smax.i32(i32 %i.iy, i32 2)
  %wide.trip.count366 = zext nneg i32 %smax365 to i64
  %i.jg = insertelement <2 x double> poison, double %.sroa.0253.0, i64 0
  %i.jh = insertelement <2 x double> %i.jg, double %.sroa.8.0, i64 1 ; 2 uses
  %i.ji = insertelement <2 x double> poison, double %i.je, i64 0
  %i.jj = insertelement <2 x double> %i.ji, double %.sroa.0253.0, i64 1
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph317, %bb.ac
  %indvars.iv362 = phi i64 [ 1, %.lr.ph317 ], [ %indvars.iv.next363, %bb.ac ] ; 3 uses
  %i.jk = phi <2 x double> [ %i.jh, %.lr.ph317 ], [ %i.jv, %bb.ac ] ; 4 uses
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv362 ; 2 uses
  %i.jm = extractelement <2 x double> %i.jk, i64 0 ; 2 uses
  store double %i.jm, ptr %i.jl, align 8, !tbaa !113
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = extractelement <2 x double> %i.jk, i64 1 ; 2 uses
  store double %i.jn, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !113
  %i.jo = sub nsw i64 %i.jf, %indvars.iv362
  %i.jp = getelementptr inbounds [16 x i8], ptr %5, i64 %i.jo ; 2 uses
  store double %i.jm, ptr %i.jp, align 8, !tbaa !133
  %i.jq = fneg double %i.jn
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store double %i.jq, ptr %i.jr, align 8, !tbaa !134
  %i.js = shufflevector <2 x double> %i.jk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jt = fmul <2 x double> %i.jj, %i.js
  %i.ju = shufflevector <2 x double> %i.jk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ju, <2 x double> %i.jh, <2 x double> %i.jt)
  %indvars.iv.next363 = add nuw nsw i64 %indvars.iv362, 1 ; 2 uses
  %exitcond367.not = icmp eq i64 %indvars.iv.next363, %wide.trip.count366
  br i1 %exitcond367.not, label %.thread264, label %bb.ac, !llvm.loop !436

bb.ad:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cvL7DFTInitEiiPKiPiiPvi, ptr noundef nonnull @.str.1, i32 noundef 383) #22
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249

bb.ah:                                            ; preds = %bb.ae
  %i.jx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jy = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ka = icmp eq ptr %i.jy, %i.jz
  br i1 %i.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247: ; preds = %bb.ah
  %i.kb = load i64, ptr %i.jz, align 8, !tbaa !52
  %i.kc = add i64 %i.kb, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit249: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247, %bb.ag
  %.pn244 = phi { ptr, i32 } [ %i.jw, %bb.ag ], [ %i.jx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i247 ], [ %i.jx, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.am

bb.ai:                                            ; preds = %bb.y
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %5, align 4, !tbaa !109
  %i.kd = and i32 %0, 1
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.kf = sext i32 %i.iy to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %5, i64 %i.kf
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %i.kg, align 4, !tbaa !109
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.kh = icmp sgt i32 %0, 2
  br i1 %i.kh, label %.lr.ph312, label %.thread264

.lr.ph312:                                        ; preds = %bb.ak
  %i.ki = fneg double %.sroa.8.0
  %i.kj = zext nneg i32 %0 to i64
  %smax359 = tail call i32 @llvm.smax.i32(i32 %i.iy, i32 2)
  %wide.trip.count360 = zext nneg i32 %smax359 to i64
  %i.kk = insertelement <2 x double> poison, double %.sroa.0253.0, i64 0
  %i.kl = insertelement <2 x double> %i.kk, double %.sroa.8.0, i64 1 ; 2 uses
  %i.km = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.kn = insertelement <2 x double> %i.km, double %.sroa.0253.0, i64 1
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph312, %bb.al
  %indvars.iv356 = phi i64 [ 1, %.lr.ph312 ], [ %indvars.iv.next357, %bb.al ] ; 3 uses
  %i.ko = phi <2 x double> [ %i.kl, %.lr.ph312 ], [ %i.la, %bb.al ] ; 3 uses
  %i.kp = fptrunc <2 x double> %i.ko to <2 x float> ; 3 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv356
  store <2 x float> %i.kp, ptr %i.kq, align 4, !tbaa !109
  %i.kr = sub nsw i64 %i.kj, %indvars.iv356
  %i.ks = getelementptr inbounds [8 x i8], ptr %5, i64 %i.kr ; 2 uses
  %i.kt = extractelement <2 x float> %i.kp, i64 0
  store float %i.kt, ptr %i.ks, align 4, !tbaa !136
  %i.ku = extractelement <2 x float> %i.kp, i64 1
  %i.kv = fneg float %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  store float %i.kv, ptr %i.kw, align 4, !tbaa !137
  %i.kx = shufflevector <2 x double> %i.ko, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ky = fmul <2 x double> %i.kx, %i.kn
  %i.kz = shufflevector <2 x double> %i.ko, <2 x double> poison, <2 x i32> zeroinitializer
  %i.la = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kz, <2 x double> %i.kl, <2 x double> %i.ky)
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1 ; 2 uses
end_hunk_0
