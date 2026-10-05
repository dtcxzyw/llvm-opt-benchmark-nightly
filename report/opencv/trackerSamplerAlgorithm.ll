Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/trackerSamplerAlgorithm?download=true
inline.NumInlined: 623
inline.NumDeleted: 257
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv6detail8tracking24TrackerContribSamplerCSC11sampleImageERKNS_3MatEiiiiffi:bb.a
bb.g:                                             ; preds = %.preheader, %bb.n
  %.0115 = phi i32 [ %.sroa.speculated87, %.preheader ], [ %i.bn, %bb.n ] ; 4 uses
  %.1114 = phi i32 [ %.0107117, %.preheader ], [ %.2, %bb.n ] ; 4 uses
  %i.ar = load i64, ptr %i.ab, align 8, !tbaa !25 ; 2 uses
  %i.as = and i64 %i.ar, 4294967295
  %i.at = mul nuw i64 %i.as, 4164903690
  %i.au = lshr i64 %i.ar, 32
  %i.av = add nuw i64 %i.at, %i.au                ; 2 uses
  store i64 %i.av, ptr %i.ab, align 8, !tbaa !25
  %i.aw = trunc i64 %i.av to i32
  %i.ax = uitofp i32 %i.aw to float
  %i.ay = fmul nnan float %i.ax, f0x2F800000
  %i.az = fcmp olt float %i.ay, %i.aa
  br i1 %i.az, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ba = sub nsw i32 %3, %.0115                  ; 2 uses
  %i.bb = mul nsw i32 %i.ba, %i.ba
  %i.bc = add nuw nsw i32 %i.bb, %i.ag
  %i.bd = uitofp nneg i32 %i.bc to float          ; 2 uses
  %i.be = fcmp ule float %i.e, %i.bd
  %i.bf = fcmp ugt float %i.f, %i.bd
  %or.cond = or i1 %i.be, %i.bf
  br i1 %or.cond, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store i32 %.0115, ptr %11, align 4, !tbaa !112
  store i32 %.051118, ptr %i.ac, align 4, !tbaa !113
  store i32 %5, ptr %i.ad, align 4, !tbaa !220
  store i32 %6, ptr %i.ae, align 4, !tbaa !114
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 4 dereferenceable(16) %11)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit unwind label %bb.k

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit:               ; preds = %bb.i
  %i.bg = sext i32 %.1114 to i64
  %i.bh = load ptr, ptr %0, align 8, !tbaa !107
  %i.bi = getelementptr inbounds nuw [208 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.bi, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.j unwind label %bb.l       ; 0 uses

bb.j:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.bk = add nsw i32 %.1114, 1
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.l ], [ %i.bl, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.p

bb.n:                                             ; preds = %bb.g, %bb.h, %bb.j
  %.2 = phi i32 [ %.1114, %bb.h ], [ %i.bk, %bb.j ], [ %.1114, %bb.g ] ; 3 uses
  %i.bn = add nuw i32 %.0115, 1
  %exitcond.not = icmp eq i32 %.0115, %.sroa.speculated81
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !219

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit73:   ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i71, %bb.e, %bb.d, %bb.c
  ret void

bb.o:                                             ; preds = %bb.c
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.f
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ap, %bb.f ], [ %i.bo, %bb.o ], [ %.pn, %bb.m ]
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #27
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !107    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i) #27
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !107
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !109
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #29
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN2cv6detail8tracking24TrackerContribSamplerCSC7setModeEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(80) initializes((64, 68)) %0, i32 noundef %1) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %1, ptr %i.a, align 8, !tbaa !104
  ret void
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN2cv6detail8tracking16TrackerSamplerCS6ParamsC2Ev(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #18 align 2 {
bb.a:
  store <2 x float> <float 9.900000e-01, float 2.000000e+00>, ptr %0, align 4, !tbaa !86
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail8tracking16TrackerSamplerCSC2ERKNS2_6ParamsE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !79
  store i8 0, ptr %i.b, align 8, !tbaa !46
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN2cv6detail8tracking16TrackerSamplerCSE, i64 16), ptr %0, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %1, align 4, !tbaa !86
  store i64 %i.e, ptr %i.d, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.f, i8 0, i64 48, i1 false)
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.h, align 8, !tbaa !117
  ret void

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN2cv6detail8tracking30TrackerContribSamplerAlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #27
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN2cv6detail8tracking16TrackerSamplerCS7setModeEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(100) initializes((48, 52)) %0, i32 noundef %1) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %1, ptr %i.a, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN2cv6detail8tracking16TrackerSamplerCSD0Ev(ptr noundef nonnull align 8 dereferenceable(100) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN2cv6detail8tracking16TrackerSamplerCSD1Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN2cv6detail8tracking16TrackerSamplerCS12samplingImplERKNS_3MatENS_5Rect_IiEERSt6vectorIS3_SaIS3_EE(ptr noundef nonnull align 8 dereferenceable(100) initializes((52, 100)) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i64 %2, i64 %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 16      ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i64 %2, ptr %i.a, align 4, !tbaa !47
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i64 %3, ptr %.sroa.28.0..sroa_idx, align 4, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %6 = lshr i64 %3, 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load <4 x float>, ptr %i.d, align 4
  %7 = lshr i64 %2, 32
  %i.f = load <2 x i32>, ptr %i.b, align 8, !tbaa !47 ; 4 uses
  store i32 0, ptr %i.c, align 4, !tbaa !47
  store i32 0, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !47
  %i.g = extractelement <2 x i32> %i.f, i64 1
  store i32 %i.g, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !47
  %i.h = extractelement <2 x i32> %i.f, i64 0
  store i32 %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !47
  %8 = trunc i64 %3 to i32
  %9 = trunc nuw i64 %6 to i32
  %10 = insertelement <2 x i32> poison, i32 %9, i64 0
  %11 = insertelement <2 x i32> %10, i32 %8, i64 1
  %12 = trunc i64 %2 to i32
  %13 = trunc nuw i64 %7 to i32
  %14 = insertelement <2 x i32> poison, i32 %13, i64 0
  %15 = insertelement <2 x i32> %14, i32 %12, i64 1
  %i.i = sitofp <2 x i32> %15 to <2 x float>
  %16 = sitofp <2 x i32> %11 to <2 x float>       ; 3 uses
  %i.j = fneg <2 x float> %16
  %i.k = shufflevector <4 x float> %i.e, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.l = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %i.k, <2 x float> %i.j)
  %i.m = fmul <2 x float> %i.l, splat (float 5.000000e-01)
  %i.n = fsub <2 x float> %i.i, %i.m
  %i.o = fptosi <2 x float> %i.n to <2 x i32>
  %i.p = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.o, <2 x i32> zeroinitializer) ; 4 uses
  %i.q = fmul <2 x float> %i.k, %16
  %i.r = fptosi <2 x float> %i.q to <2 x i32>     ; 2 uses
  %i.s = extractelement <2 x i32> %i.p, i64 0
  %.sroa.0.sroa.3.0.insert.ext.i.i = zext nneg i32 %i.s to i64
  %.sroa.0.sroa.3.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.0.sroa.3.0.insert.ext.i.i, 32
  %i.t = add nsw <2 x i32> %i.p, %i.r
  %i.u = icmp sgt <2 x i32> %i.t, %i.f
  %i.v = sub nsw <2 x i32> %i.f, %i.p
  %i.w = select <2 x i1> %i.u, <2 x i32> %i.v, <2 x i32> %i.r ; 2 uses
  %i.x = extractelement <2 x i32> %i.w, i64 0
  %.sroa.5.0.v.v.i = zext i32 %i.x to i64
  %.sroa.5.0.v.i = shl nuw i64 %.sroa.5.0.v.v.i, 32
  %i.y = extractelement <2 x i32> %i.w, i64 1
  %.sroa.5.1.v.i = zext i32 %i.y to i64
  %.sroa.5.1.i = or disjoint i64 %.sroa.5.0.v.i, %.sroa.5.1.v.i
  %i.z = extractelement <2 x i32> %i.p, i64 1
  %.sroa.0.sroa.0.0.insert.ext.i = zext nneg i32 %i.z to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift.i.i, %.sroa.0.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN2cv6detail8tracking16TrackerSamplerCS18patchesRegularScanERKNS_3MatENS_5Rect_IiEENS_5Size_IiEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %5, ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i64 %.sroa.0.sroa.0.0.insert.insert.i, i64 %.sroa.5.1.i, i64 %3)
  %i.aa = load ptr, ptr %4, align 8, !tbaa !107   ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !108 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !109
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = load <2 x ptr>, ptr %5, align 16, !tbaa !110
  store <2 x ptr> %i.ag, ptr %4, align 8, !tbaa !110
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !109
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !109
  %.not4.i.i.i.i.i = icmp eq ptr %i.aa, %i.ac
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.aa, %bb.a ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i.i) #27
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.ac
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EEaSEOS3_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.ak = ptrtoint ptr %i.ae to i64
  %i.al = ptrtoint ptr %i.aa to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.am) #29
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN2cv3MatESaIS1_EEaSEOS3_.exit:       ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.b
  %i.an = load ptr, ptr %5, align 16, !tbaa !107  ; 3 uses
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !108 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EEaSEOS3_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i ], [ %i.an, %_ZNSt6vectorIN2cv3MatESaIS1_EEaSEOS3_.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #27
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %5, align 16, !tbaa !107
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN2cv3MatESaIS1_EEaSEOS3_.exit
  %i.aq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.an, %_ZNSt6vectorIN2cv3MatESaIS1_EEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.ar = load ptr, ptr %i.ah, align 16, !tbaa !109
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #29
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define { i64, i64 } @_ZN2cv6detail8tracking16TrackerSamplerCS14getTrackingROIEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(100) %0, float noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.d = load <2 x i32>, ptr %i.a, align 4, !tbaa !47
  %i.e = sitofp <2 x i32> %i.d to <2 x float>
  %i.f = load <2 x i32>, ptr %i.b, align 4, !tbaa !47
  %i.g = sitofp <2 x i32> %i.f to <2 x float>     ; 3 uses
  %i.h = fneg <2 x float> %i.g
  %i.i = insertelement <2 x float> poison, float %1, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.k = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.g, <2 x float> %i.j, <2 x float> %i.h)
  %i.l = fmul <2 x float> %i.k, splat (float 5.000000e-01)
  %i.m = fsub <2 x float> %i.e, %i.l
  %i.n = fptosi <2 x float> %i.m to <2 x i32>
  %i.o = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.n, <2 x i32> zeroinitializer) ; 3 uses
  %i.p = fmul <2 x float> %i.j, %i.g
  %i.q = fptosi <2 x float> %i.p to <2 x i32>     ; 2 uses
  %i.r = load <2 x i32>, ptr %i.c, align 4, !tbaa !47 ; 2 uses
  %i.s = add nsw <2 x i32> %i.o, %i.q
  %i.t = icmp sgt <2 x i32> %i.s, %i.r
  %i.u = sub nsw <2 x i32> %i.r, %i.o
  %i.v = select <2 x i1> %i.t, <2 x i32> %i.u, <2 x i32> %i.q
  %.sroa.5.1 = bitcast <2 x i32> %i.v to i64
  %.sroa.0.sroa.0.0.insert.insert = bitcast <2 x i32> %i.o to i64
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail8tracking16TrackerSamplerCS18patchesRegularScanERKNS_3MatENS_5Rect_IiEENS_5Size_IiEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(100) initializes((84, 100)) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, i64 %3, i64 %4, i64 %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %7 = alloca %"class.cv::Rect_", align 4         ; 7 uses
  %8 = alloca %"class.cv::Rect_", align 4         ; 7 uses
  %9 = alloca %"class.cv::Rect_", align 4         ; 7 uses
  %10 = alloca %"class.cv::Rect_", align 4        ; 11 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %16 = alloca %"class.cv::Rect_", align 8        ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %.sroa.0112.sroa.4.0.extract.shift = lshr i64 %3, 32
  %.sroa.033.0.extract.trunc = trunc i64 %5 to i32 ; 5 uses
  %.sroa.8.0.extract.shift = lshr i64 %5, 32
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.5113.12.extract.shift = lshr i64 %4, 32
  %.sroa.0112.sroa.0.0.extract.trunc = trunc i64 %3 to i32 ; 4 uses
  %.sroa.0112.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.0112.sroa.4.0.extract.shift to i32 ; 4 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !112  ; 3 uses
  %i.f = icmp eq i32 %i.e, %.sroa.0112.sroa.0.0.extract.trunc
  %i.g = load i32, ptr %i.b, align 8              ; 3 uses
  %i.h = icmp eq i32 %i.g, %.sroa.0112.sroa.4.0.extract.trunc
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  %i.i = load i32, ptr %i.c, align 4              ; 3 uses
  %.sroa.5113.8.extract.trunc = trunc i64 %4 to i32 ; 2 uses
  %i.j = icmp eq i32 %i.i, %.sroa.5113.8.extract.trunc
  %or.cond126 = select i1 %or.cond, i1 %i.j, i1 false
  %i.k = load i32, ptr %i.d, align 8, !tbaa !114  ; 3 uses
  %.sroa.5113.12.extract.trunc = trunc nuw i64 %.sroa.5113.12.extract.shift to i32 ; 2 uses
  %i.l = icmp eq i32 %i.k, %.sroa.5113.12.extract.trunc
  %or.cond174 = select i1 %or.cond126, i1 %i.l, i1 false
  br i1 %or.cond174, label %bb.b, label %_ZN2cveqIiEEbRKNS_5Rect_IT_EES5_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 84
  store i64 %3, ptr %i.m, align 4, !tbaa !47
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i64 %4, ptr %.sroa.5113.0..sroa_idx, align 4, !tbaa !47
  br label %bb.c

_ZN2cveqIiEEbRKNS_5Rect_IT_EES5_.exit.thread:     ; preds = %bb.a
  %..sroa.5.0.extract.trunc.i = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %.sroa.0112.sroa.4.0.extract.trunc) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i32 %..sroa.5.0.extract.trunc.i, ptr %i.o, align 8, !tbaa !118
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %.sroa.0112.sroa.0.0.extract.trunc) ; 3 uses
  store i32 %i.p, ptr %i.n, align 4, !tbaa !119
  %i.q = add nsw i32 %.sroa.5113.8.extract.trunc, %.sroa.0112.sroa.0.0.extract.trunc
  %i.r = add nsw i32 %i.i, %i.e
  %i.s = add nsw i32 %.sroa.5113.12.extract.trunc, %.sroa.0112.sroa.4.0.extract.trunc
  %i.t = add nsw i32 %i.k, %i.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.v.i = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.t)
  %i.v = sub nsw i32 %.v.i, %..sroa.5.0.extract.trunc.i ; 2 uses
  store i32 %i.v, ptr %i.u, align 8, !tbaa !120
  %.v12.i = tail call i32 @llvm.smin.i32(i32 %i.q, i32 %i.r)
  %i.w = sub nsw i32 %.v12.i, %i.p                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 92
  store i32 %i.w, ptr %i.x, align 4, !tbaa !121
  br label %bb.c

bb.c:                                             ; preds = %_ZN2cveqIiEEbRKNS_5Rect_IT_EES5_.exit.thread, %bb.b
  %i.y = phi i32 [ %i.v, %_ZN2cveqIiEEbRKNS_5Rect_IT_EES5_.exit.thread ], [ %i.k, %bb.b ] ; 2 uses
  %i.z = phi i32 [ %i.w, %_ZN2cveqIiEEbRKNS_5Rect_IT_EES5_.exit.thread ], [ %i.i, %bb.b ] ; 2 uses
  %i.aa = phi i32 [ %i.p, %_ZN2cveqIiEEbRKNS_5Rect_IT_EES5_.exit.thread ], [ %.sroa.0112.sroa.0.0.extract.trunc, %bb.b ]
  %i.ab = phi i32 [ %..sroa.5.0.extract.trunc.i, %_ZN2cveqIiEEbRKNS_5Rect_IT_EES5_.exit.thread ], [ %.sroa.0112.sroa.4.0.extract.trunc, %bb.b ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !117 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.d, label %bb.i

end_hunk_0
