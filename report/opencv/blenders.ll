Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/blenders?download=true
inline.NumInlined: 723
inline.NumDeleted: 215
begin_hunk_0_@_ZN2cv7MatExprD2Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #18
  ret void
}

declare void @_ZN2cv6divideERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail16MultiBandBlenderC2Eiii(ptr noundef nonnull align 8 dereferenceable(472) initializes((0, 8)) %0, i32 %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv6detail7BlenderE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %i.a, i32 noundef 0) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  tail call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %i.b, i32 noundef 0) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv6detail16MultiBandBlenderE, i64 16), ptr %0, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.d, i8 0, i64 68, i1 false)
  store i32 %2, ptr %i.e, align 8, !tbaa !165
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i8 0, ptr %i.f, align 8, !tbaa !166
  switch i32 %3, label %bb.b [
    i32 5, label %bb.g
    i32 3, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv6detail16MultiBandBlenderC2Eiii, ptr noundef nonnull @.str.1, i32 noundef 229) #20
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !29     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.j, align 8, !tbaa !30
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.f ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.n) #18
  call void @_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.o) #18
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv6detail7BlenderE, i64 16), ptr %0, align 8, !tbaa !11
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.b) #18, !inline_history !69
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.a) #18, !inline_history !69
  resume { ptr, i32 } %.pn

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 468
  store i32 %3, ptr %i.p, align 4, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv4UMatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !63     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i) #18
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 184 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !63
  br label %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv4UMatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #19
  br label %_ZNSt12_Vector_baseIN2cv4UMatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv4UMatESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail16MultiBandBlender7prepareENS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(472) initializes((396, 400), (448, 464)) %0, i64 %1, i64 %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %4 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %6 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %9 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %.sroa.3.sroa.8.0.extract.shift = lshr i64 %2, 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i64 %1, ptr %i.c, align 8, !tbaa !38
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i64 %2, ptr %.sroa.3.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 5 uses
  %i.f = bitcast i64 %2 to <2 x i32>              ; 2 uses
  %.sroa.3.sroa.0.0.extract.trunc = trunc i64 %2 to i32
  %.sroa.3.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.3.sroa.8.0.extract.shift to i32
  %.sroa.speculated54 = tail call i32 @llvm.smax.i32(i32 %.sroa.3.sroa.0.0.extract.trunc, i32 %.sroa.3.sroa.8.0.extract.trunc)
  %i.g = sitofp i32 %.sroa.speculated54 to double
  %i.h = tail call double @log(double noundef %i.g) #18
  %i.i = fdiv double %i.h, f0x3FE62E42FEFA39EF
  %i.j = tail call double @llvm.ceil.f64(double %i.i)
  %i.k = fptosi double %i.j to i32
  %i.l = load i32, ptr %i.d, align 8, !tbaa !38
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.k) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.e, align 4, !tbaa !72
  %i.m = shl nuw i32 1, %.sroa.speculated
  %i.n = insertelement <2 x i32> poison, i32 %i.m, i64 0
  %i.o = shufflevector <2 x i32> %i.n, <2 x i32> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.p = srem <2 x i32> %i.f, %i.o
  %i.q = sub nsw <2 x i32> %i.o, %i.p
  %i.r = srem <2 x i32> %i.q, %i.o
  %i.s = add nsw <2 x i32> %i.r, %i.f             ; 2 uses
  %.sroa.3.sroa.0.0.insert.insert = bitcast <2 x i32> %i.s to i64 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN2cv4UMat6createENS_5Size_IiEEiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %i.t, i64 %.sroa.3.sroa.0.0.insert.insert, i32 noundef 67, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %3, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %4, ptr %i.v, align 8, !tbaa !37
  store i64 17179869185, ptr %i.u, align 8, !tbaa !38
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.x = call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv4UMat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(184) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  call void @_ZN2cv4UMat6createENS_5Size_IiEEiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %i.y, i64 %.sroa.3.sroa.0.0.insert.insert, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %5, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %6, ptr %i.aa, align 8, !tbaa !37
  store i64 17179869185, ptr %i.z, align 8, !tbaa !38
  %i.ab = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.ac = call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv4UMat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(184) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ab) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 %1, ptr %i.ad, align 8, !tbaa !38
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <2 x i32> %i.s, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 6 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !63 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !62 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %i.af, %bb.a ] ; 2 uses
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i.i.i) #18
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.ah
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !62
  br label %_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit

_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit:     ; preds = %bb.a, %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 7 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !63 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !62 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.am, %i.ak
  br i1 %.not.i.i20, label %_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit25, label %.lr.ph.i.i.i.i21

.lr.ph.i.i.i.i21:                                 ; preds = %_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit, %.lr.ph.i.i.i.i21
  %.05.i.i.i.i22 = phi ptr [ %i.an, %.lr.ph.i.i.i.i21 ], [ %i.ak, %_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit ] ; 2 uses
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i.i.i22) #18
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i22, i64 184 ; 2 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i.i.i23, label %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i24, label %.lr.ph.i.i.i.i21, !llvm.loop !0

_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i24: ; preds = %.lr.ph.i.i.i.i21
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !62
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !62
  br label %_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit25

_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit25:   ; preds = %_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit, %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i24
  %i.ao = phi ptr [ %i.af, %_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit ], [ %.pre, %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i24 ] ; 3 uses
  %i.ap = load i32, ptr %i.e, align 4, !tbaa !72
  %i.aq = add nsw i32 %i.ap, 1
  %i.ar = sext i32 %i.aq to i64                   ; 4 uses
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !63 ; 2 uses
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 184               ; 3 uses
  %i.ax = icmp ult i64 %i.aw, %i.ar
  br i1 %i.ax, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit25
  %i.ay = sub nuw nsw i64 %i.ar, %i.aw
  call void @_ZNSt6vectorIN2cv4UMatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %i.ay)
  br label %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv4UMatESaIS1_EE5clearEv.exit25
  %i.az = icmp ugt i64 %i.aw, %i.ar
  br i1 %i.az, label %bb.d, label %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw [184 x i8], ptr %i.as, i64 %i.ar ; 3 uses
  %.not.i.i26 = icmp eq ptr %i.ao, %i.ba
  br i1 %.not.i.i26, label %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i27
  %.05.i.i.i.i28 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i27 ], [ %i.ba, %bb.d ] ; 2 uses
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i.i.i28) #18
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i28, i64 184 ; 2 uses
  %.not.i.i.i.i29 = icmp eq ptr %i.bb, %i.ao
  br i1 %.not.i.i.i.i29, label %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i30, label %.lr.ph.i.i.i.i27, !llvm.loop !0

_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i30: ; preds = %.lr.ph.i.i.i.i27
  store ptr %i.ba, ptr %i.ag, align 8, !tbaa !62
  br label %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit:    ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i30
  %i.bc = load ptr, ptr %i.ae, align 8, !tbaa !63
  %i.bd = call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv4UMataSERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %i.bc, ptr noundef nonnull align 8 dereferenceable(184) %i.t) ; 0 uses
  %i.be = load i32, ptr %i.e, align 4, !tbaa !72
  %i.bf = add nsw i32 %i.be, 1
  %i.bg = sext i32 %i.bf to i64                   ; 4 uses
  %i.bh = load ptr, ptr %i.al, align 8, !tbaa !62 ; 3 uses
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !63 ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = sdiv exact i64 %i.bl, 184               ; 3 uses
  %i.bn = icmp ult i64 %i.bm, %i.bg
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit
  %i.bo = sub nuw nsw i64 %i.bg, %i.bm
  call void @_ZNSt6vectorIN2cv4UMatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 noundef %i.bo)
  br label %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit36

bb.f:                                             ; preds = %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit
  %i.bp = icmp ugt i64 %i.bm, %i.bg
  br i1 %i.bp, label %bb.g, label %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit36

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw [184 x i8], ptr %i.bi, i64 %i.bg ; 3 uses
  %.not.i.i31 = icmp eq ptr %i.bh, %i.bq
  br i1 %.not.i.i31, label %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit36, label %.lr.ph.i.i.i.i32

.lr.ph.i.i.i.i32:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i32
  %.05.i.i.i.i33 = phi ptr [ %i.br, %.lr.ph.i.i.i.i32 ], [ %i.bq, %bb.g ] ; 2 uses
  call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i.i.i33) #18
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i33, i64 184 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.br, %i.bh
  br i1 %.not.i.i.i.i34, label %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i35, label %.lr.ph.i.i.i.i32, !llvm.loop !0

_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i35: ; preds = %.lr.ph.i.i.i.i32
  store ptr %i.bq, ptr %i.al, align 8, !tbaa !62
  br label %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit36

_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit36:  ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit.i.i35
  %i.bs = load ptr, ptr %i.aj, align 8, !tbaa !63
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !70
  call void @_ZN2cv4UMat6createENS_5Size_IiEEiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %i.bs, i64 %.sroa.3.sroa.0.0.insert.insert, i32 noundef %i.bu, i32 noundef 0)
  %i.bv = load ptr, ptr %i.aj, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !52
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 -1056833530, ptr %7, align 8, !tbaa !36
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %i.bx, align 8, !tbaa !37
  store i64 4294967297, ptr %i.bw, align 8, !tbaa !38
  %i.by = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.bz = call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv4UMat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(184) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.by) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ca = load i32, ptr %i.e, align 4, !tbaa !72
  %.not65 = icmp slt i32 %i.ca, 1
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit36
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h, %_ZNSt6vectorIN2cv4UMatESaIS1_EE6resizeEm.exit36
  ret void

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 7 uses
  %i.cf = load ptr, ptr %i.ae, align 8, !tbaa !63 ; 2 uses
  %i.cg = getelementptr inbounds nuw [184 x i8], ptr %i.cf, i64 %indvars.iv
  %i.ch = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.ci = getelementptr inbounds nuw [184 x i8], ptr %i.cf, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !168
  %i.cl = add nsw i32 %i.ck, 1
  %i.cm = sdiv i32 %i.cl, 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !169
  %i.cp = add nsw i32 %i.co, 1
  %i.cq = sdiv i32 %i.cp, 2
  call void @_ZN2cv4UMat6createEiiiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %i.cg, i32 noundef %i.cm, i32 noundef %i.cq, i32 noundef 67, i32 noundef 0)
  %i.cr = load ptr, ptr %i.aj, align 8, !tbaa !63 ; 2 uses
  %i.cs = getelementptr inbounds nuw [184 x i8], ptr %i.cr, i64 %indvars.iv
  %i.ct = getelementptr inbounds nuw [184 x i8], ptr %i.cr, i64 %i.ch ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !168
  %i.cw = add nsw i32 %i.cv, 1
  %i.cx = sdiv i32 %i.cw, 2
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !169
  %i.da = add nsw i32 %i.cz, 1
  %i.db = sdiv i32 %i.da, 2
  %i.dc = load i32, ptr %i.bt, align 4, !tbaa !70
  call void @_ZN2cv4UMat6createEiiiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %i.cs, i32 noundef %i.cx, i32 noundef %i.db, i32 noundef %i.dc, i32 noundef 0)
  %i.dd = load ptr, ptr %i.ae, align 8, !tbaa !63
  %i.de = getelementptr inbounds nuw [184 x i8], ptr %i.dd, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  store i32 -1056833530, ptr %8, align 8, !tbaa !36
  store ptr %9, ptr %i.cc, align 8, !tbaa !37
  store i64 17179869185, ptr %i.cb, align 8, !tbaa !38
  %i.df = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.dg = call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv4UMat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(184) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.df) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.dh = load ptr, ptr %i.aj, align 8, !tbaa !63
  %i.di = getelementptr inbounds nuw [184 x i8], ptr %i.dh, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !52
  store i32 -1056833530, ptr %10, align 8, !tbaa !36
  store ptr %i.b, ptr %i.ce, align 8, !tbaa !37
  store i64 4294967297, ptr %i.cd, align 8, !tbaa !38
  %i.dj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.dk = call noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv4UMat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(184) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.dj) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.dl = load i32, ptr %i.e, align 4, !tbaa !72
  %i.dm = sext i32 %i.dl to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.dm
  br i1 %.not.not, label %bb.h, label %._crit_edge, !llvm.loop !167
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #8

declare noundef nonnull align 8 dereferenceable(184) ptr @_ZN2cv4UMataSERKS0_(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #3

declare void @_ZN2cv4UMat6createEiiiNS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail16MultiBandBlender4feedERKNS_11_InputArrayES4_NS_6Point_IiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::UMat", align 8          ; 9 uses
  %5 = alloca %"class.cv::UMat", align 8          ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.cv::UMat", align 8         ; 8 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %13 = alloca %"class.std::vector.16", align 8   ; 11 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::UMat", align 8         ; 11 uses
  %16 = alloca %"class.std::vector.16", align 8   ; 9 uses
  %17 = alloca %"class.cv::UMat", align 8         ; 7 uses
  %18 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %19 = alloca %"class.cv::UMat", align 8         ; 7 uses
  %20 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %21 = alloca %"class.cv::UMat", align 8         ; 8 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %i.a = alloca double, align 8                   ; 5 uses
end_hunk_0
