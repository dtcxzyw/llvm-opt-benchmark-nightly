Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tracking_feature?download=true
inline.NumInlined: 477
inline.NumDeleted: 203
begin_hunk_0_@_ZN2cv6detail8tracking7feature15CvHaarEvaluator16generateFeaturesEi:bb.a
  %.not.i.i.i4.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i4.i, label %_ZN2cv6detail8tracking7feature15CvHaarEvaluator11FeatureHaarD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit3.i
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.al) #24
  br label %_ZN2cv6detail8tracking7feature15CvHaarEvaluator11FeatureHaarD2Ev.exit

_ZN2cv6detail8tracking7feature15CvHaarEvaluator11FeatureHaarD2Ev.exit: ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit3.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.am = add nuw nsw i32 %.06, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.am, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !90

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv6detail8tracking7feature15CvHaarEvaluator11FeatureHaarD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.an
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv6detail8tracking7feature15CvHaarEvaluator11FeatureHaarD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit:     ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66   ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit3, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #24
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit3

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit3:    ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIfSaIfEED2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit3
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit5

_ZNSt6vectorIfSaIfEED2Ev.exit5:                   ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit3, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv6detail8tracking7feature15CvHaarEvaluator11FeatureHaarC2ENS_5Size_IiEE(ptr noundef nonnull align 8 dereferenceable(136) initializes((8, 32), (40, 80), (88, 136)) %0, i64 %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv6detail8tracking7feature15CvHaarEvaluator11FeatureHaar21generateRandomFeatureENS_5Size_IiEE(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 %1)
          to label %bb.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #22 ; 0 uses
  invoke void @__cxa_rethrow() #23
          to label %bb.k unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.d, %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !66   ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !67
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit:     ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.f
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !66   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit6, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !67
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #24
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit6

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit6:    ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit, %bb.g
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !62  ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIfSaIfEED2Ev.exit8, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit6
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !63
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit8

_ZNSt6vectorIfSaIfEED2Ev.exit8:                   ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EED2Ev.exit6, %bb.h
  resume { ptr, i32 } %i.h

bb.i:                                             ; preds = %bb.a
  ret void

bb.j:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #25
  unreachable

bb.k:                                             ; preds = %bb.b
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv6detail8tracking7feature15CvHaarEvaluator11FeatureHaar21generateRandomFeatureENS_5Size_IiEE(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %.sroa.11.0.extract.shift = lshr i64 %1, 32
  %.sroa.11.0.extract.trunc = trunc nuw i64 %.sroa.11.0.extract.shift to i32 ; 7 uses
  %i.a = bitcast i64 %1 to <2 x i32>
  %.sroa.0271.0.extract.trunc = trunc i64 %1 to i32 ; 7 uses
  %i.b = icmp slt i32 %.sroa.0271.0.extract.trunc, 1
  %i.c = icmp slt i32 %.sroa.11.0.extract.trunc, 1
  %i.d = select i1 %i.b, i1 true, i1 %i.c
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %6 = bitcast i64 %1 to <2 x i32>
  %i.e = uitofp <2 x i32> %6 to <2 x float>
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 21 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 19 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 20 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv6detail8tracking7feature15CvHaarEvaluator11FeatureHaar21generateRandomFeatureENS_5Size_IiEE, ptr noundef nonnull @.str.1, i32 noundef 128) #23
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.r = load i64, ptr %i.p, align 8, !tbaa !22
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn119 = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.n, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.ca

.critedge:                                        ; preds = %.critedge.backedge, %.preheader
  %i.t = tail call i32 @rand() #22
  %i.u = tail call i32 @rand() #22
  %i.v = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %i.w = insertelement <2 x i32> %i.v, i32 %i.t, i64 1
  %i.x = srem <2 x i32> %i.w, %i.a                ; 4 uses
  %i.y = extractelement <2 x i32> %i.x, i64 1     ; 19 uses
  %i.z = extractelement <2 x i32> %i.x, i64 0     ; 19 uses
  %i.aa = tail call i32 @rand() #22
  %i.ab = sitofp i32 %i.aa to float
  %i.ac = fneg float %i.ab
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float f0x30000000, float 1.000000e+00)
  %i.ae = tail call noundef float @sqrtf(float noundef %i.ad) #22
  %i.af = tail call i32 @rand() #22
  %i.ag = sitofp i32 %i.af to float
  %i.ah = fneg float %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float f0x30000000, float 1.000000e+00)
  %i.aj = tail call noundef float @sqrtf(float noundef %i.ai) #22
  %i.ak = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %i.aj, i64 1
  %i.am = fsub <2 x float> splat (float 1.000000e+00), %i.al
  %i.an = fmul <2 x float> %i.am, %i.e
  %i.ao = fptosi <2 x float> %i.an to <2 x i32>   ; 4 uses
  %i.ap = extractelement <2 x i32> %i.ao, i64 1   ; 26 uses
  %i.aq = extractelement <2 x i32> %i.ao, i64 0   ; 30 uses
  %i.ar = tail call i32 @rand() #22
  %i.as = sitofp i32 %i.ar to float
  %i.at = fmul nnan float %i.as, f0x30000000      ; 6 uses
  %i.au = fcmp olt float %i.at, 2.000000e-01
  br i1 %i.au, label %bb.g, label %bb.p

bb.g:                                             ; preds = %.critedge
  %i.av = shl nsw i32 %i.ap, 1                    ; 2 uses
  %i.aw = add nsw i32 %i.av, %i.y
  %.not117 = icmp slt i32 %i.aw, %.sroa.11.0.extract.trunc
  br i1 %.not117, label %bb.h, label %.critedge.backedge

bb.h:                                             ; preds = %bb.g
  %i.ax = add nsw i32 %i.z, %i.aq
  %.not118 = icmp sge i32 %i.ax, %.sroa.0271.0.extract.trunc
  %i.ay = mul nsw i32 %i.av, %i.aq
  %i.az = icmp slt i32 %i.ay, 9
  %or.cond = select i1 %.not118, i1 true, i1 %i.az
  br i1 %or.cond, label %.critedge.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %0, align 8, !tbaa !93
  store i32 2, ptr %i.f, align 4, !tbaa !75
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !76  ; 2 uses
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !62  ; 5 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = ashr exact i64 %i.be, 2                 ; 2 uses
  %i.bg = icmp ult i64 %i.bf, 2
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bh = sub nuw nsw i64 2, %i.bf
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.bh)
  %.pre345 = load ptr, ptr %i.g, align 8, !tbaa !62
  %.pre346 = load i32, ptr %i.f, align 4, !tbaa !75
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.k:                                             ; preds = %bb.i
  %.not294 = icmp eq i64 %i.be, 8
  br i1 %.not294, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, %i.bi
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.l
  store ptr %i.bi, ptr %i.h, align 8, !tbaa !76
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.j, %bb.k, %bb.l, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.bj = phi i32 [ %.pre346, %bb.j ], [ 2, %bb.k ], [ 2, %bb.l ], [ 2, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 4 uses
  %i.bk = phi ptr [ %.pre345, %bb.j ], [ %i.bb, %bb.k ], [ %i.bb, %bb.l ], [ %i.bb, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ]
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %i.bk, align 4, !tbaa !39
  %i.bl = sext i32 %i.bj to i64                   ; 4 uses
  %i.bm = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %i.bn = load ptr, ptr %i.i, align 8, !tbaa !66  ; 5 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 4                 ; 3 uses
  %i.bs = icmp ult i64 %i.br, %i.bl
  br i1 %i.bs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.bt = sub nuw nsw i64 %i.bl, %i.br
  tail call void @_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.bt)
  %.pre347 = load ptr, ptr %i.i, align 8, !tbaa !66
  %.pre348 = load i32, ptr %i.f, align 4, !tbaa !75
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit

bb.n:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.bu = icmp ugt i64 %i.br, %i.bl
  br i1 %i.bu, label %bb.o, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bl ; 2 uses
  %.not.i.i133 = icmp eq ptr %i.bm, %i.bv
  br i1 %.not.i.i133, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.o
  store ptr %i.bv, ptr %i.j, align 8, !tbaa !77
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE6resizeEm.exit: ; preds = %bb.m, %bb.n, %bb.o, %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.bw = phi i32 [ %.pre348, %bb.m ], [ %i.bj, %bb.n ], [ %i.bj, %bb.o ], [ %i.bj, %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i ]
  %i.bx = phi ptr [ %.pre347, %bb.m ], [ %i.bn, %bb.n ], [ %i.bn, %bb.o ], [ %i.bn, %_ZSt8_DestroyIPN2cv5Rect_IiEES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 8 uses
  store i32 %i.z, ptr %i.bx, align 4, !tbaa !95
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %i.y, ptr %i.by, align 4, !tbaa !96
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 %i.ap, ptr %i.bz, align 4, !tbaa !97
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 %i.aq, ptr %i.ca, align 4, !tbaa !98
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i32 %i.z, ptr %i.cb, align 4, !tbaa !95
  %i.cc = add nsw i32 %i.y, %i.ap
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !96
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 28
  store i32 %i.ap, ptr %i.ce, align 4, !tbaa !97
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i32 %i.aq, ptr %i.cf, align 4, !tbaa !98
  br label %bb.bs

bb.p:                                             ; preds = %.critedge
  %i.cg = fcmp olt float %i.at, 4.000000e-01
  br i1 %i.cg, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.ch = add nsw i32 %i.y, %i.ap
  %.not115 = icmp slt i32 %i.ch, %.sroa.11.0.extract.trunc
  br i1 %.not115, label %bb.r, label %.critedge.backedge

bb.r:                                             ; preds = %bb.q
  %i.ci = shl nsw i32 %i.aq, 1
  %i.cj = add nsw i32 %i.ci, %i.z
  %.not116 = icmp sge i32 %i.cj, %.sroa.0271.0.extract.trunc
  %i.ck = mul nsw i32 %i.ap, %i.aq
  %i.cl = icmp slt i32 %i.ck, 5
  %or.cond124 = select i1 %.not116, i1 true, i1 %i.cl
  br i1 %or.cond124, label %.critedge.backedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 2, ptr %0, align 8, !tbaa !93
  store i32 2, ptr %i.f, align 4, !tbaa !75
end_hunk_0
