Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/singleoperation?download=true
inline.NumInlined: 4365
inline.NumDeleted: 1439
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5osgeo4proj9operation20PointMotionOperationD1Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 40) #45
  br label %_ZN5osgeo4proj9operation20PointMotionOperationD2Ev.exit

_ZN5osgeo4proj9operation20PointMotionOperationD2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5osgeo4proj9operation15SingleOperation7PrivateEEclEPS4_.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5osgeo4proj9operation19CoordinateOperationE, i64 16), ptr %i.a, align 8, !tbaa !46
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj9operation19CoordinateOperationE, i64 88), ptr %i.b, align 8, !tbaa !46
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj9operation19CoordinateOperationE, i64 128), ptr %i.c, align 8, !tbaa !46
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj9operation19CoordinateOperationE, i64 168), ptr %i.d, align 8, !tbaa !46
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj9operation19CoordinateOperationE, i64 208), ptr %i.e, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65   ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN5osgeo4proj9operation19CoordinateOperationD2Ev.exit, label %_ZNKSt14default_deleteIN5osgeo4proj9operation19CoordinateOperation7PrivateEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN5osgeo4proj9operation19CoordinateOperation7PrivateEEclEPS4_.exit.i.i: ; preds = %_ZN5osgeo4proj9operation20PointMotionOperationD2Ev.exit
  tail call void @_ZN5osgeo4proj9operation19CoordinateOperation7PrivateD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %i.i) #44, !inline_history !1236
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 160) #45, !inline_history !1236
  br label %_ZN5osgeo4proj9operation19CoordinateOperationD2Ev.exit

_ZN5osgeo4proj9operation19CoordinateOperationD2Ev.exit: ; preds = %_ZN5osgeo4proj9operation20PointMotionOperationD2Ev.exit, %_ZNKSt14default_deleteIN5osgeo4proj9operation19CoordinateOperation7PrivateEEclEPS4_.exit.i.i
  tail call void @_ZN5osgeo4proj2io15IJSONExportableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #44, !inline_history !1236
  tail call void @_ZN5osgeo4proj2io21IPROJStringExportableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #44, !inline_history !1236
  tail call void @_ZN5osgeo4proj6common11ObjectUsageD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(72) %i.a) #44, !inline_history !1236
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZTv0_n24_N5osgeo4proj9operation20PointMotionOperationD1Ev(ptr noundef %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  tail call void @_ZN5osgeo4proj9operation20PointMotionOperationD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #44
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZTvn16_n24_N5osgeo4proj9operation20PointMotionOperationD1Ev(ptr noundef %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  tail call void @_ZN5osgeo4proj9operation20PointMotionOperationD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #44
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZTvn24_n24_N5osgeo4proj9operation20PointMotionOperationD1Ev(ptr noundef %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  tail call void @_ZN5osgeo4proj9operation20PointMotionOperationD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #44
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZTvn48_n24_N5osgeo4proj9operation20PointMotionOperationD1Ev(ptr noundef %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  tail call void @_ZN5osgeo4proj9operation20PointMotionOperationD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #44
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZTvn56_n24_N5osgeo4proj9operation20PointMotionOperationD1Ev(ptr noundef %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  tail call void @_ZN5osgeo4proj9operation20PointMotionOperationD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5osgeo4proj9operation20PointMotionOperationD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8), (16, 24), (32, 48), (64, 80)) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN5osgeo4proj9operation20PointMotionOperationD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #44
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #45
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZTv0_n24_N5osgeo4proj9operation20PointMotionOperationD0Ev(ptr noundef %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @_ZN5osgeo4proj9operation20PointMotionOperationD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #44, !inline_history !284
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 noundef 88) #45, !inline_history !284
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZTvn16_n24_N5osgeo4proj9operation20PointMotionOperationD0Ev(ptr noundef %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 2 uses
  tail call void @_ZN5osgeo4proj9operation20PointMotionOperationD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #44, !inline_history !284
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef 88) #45, !inline_history !284
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZTvn24_n24_N5osgeo4proj9operation20PointMotionOperationD0Ev(ptr noundef %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 2 uses
  tail call void @_ZN5osgeo4proj9operation20PointMotionOperationD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #44, !inline_history !284
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef 88) #45, !inline_history !284
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZTvn48_n24_N5osgeo4proj9operation20PointMotionOperationD0Ev(ptr noundef %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 2 uses
  tail call void @_ZN5osgeo4proj9operation20PointMotionOperationD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #44, !inline_history !284
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef 88) #45, !inline_history !284
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZTvn56_n24_N5osgeo4proj9operation20PointMotionOperationD0Ev(ptr noundef %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 2 uses
  tail call void @_ZN5osgeo4proj9operation20PointMotionOperationD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #44, !inline_history !284
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef 88) #45, !inline_history !284
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj9operation20PointMotionOperation6createERKNS0_4util11PropertyMapERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEERKNS9_ISA_INS1_15OperationMethodEEEERKSt6vectorINS9_ISA_INS1_21GeneralParameterValueEEEESaISP_EERKSM_INS9_ISA_INS0_8metadata18PositionalAccuracyEEEESaISX_EE(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.551") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.osgeo::proj::util::optional.40", align 8 ; 6 uses
  %11 = alloca %"class.osgeo::proj::common::DataEpoch", align 8 ; 7 uses
  %12 = alloca %"class.osgeo::proj::common::Measure", align 8 ; 7 uses
  %13 = alloca %"class.osgeo::proj::util::optional.40", align 8 ; 6 uses
  %14 = alloca %"class.osgeo::proj::common::DataEpoch", align 8 ; 7 uses
  %15 = alloca %"class.osgeo::proj::common::Measure", align 8 ; 7 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !156  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !165
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !222
  %i.r = load ptr, ptr %4, align 8, !tbaa !223
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %.not = icmp eq i64 %i.o, %i.u
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = tail call ptr @__cxa_allocate_exception(i64 40) #44 ; 3 uses
  invoke void @_ZN5osgeo4proj9operation16InvalidOperationC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull @.str.247)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTIN5osgeo4proj9operation16InvalidOperationE, ptr @_ZN5osgeo4proj9operation16InvalidOperationD1Ev) #48
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.v) #44
  br label %bb.bo

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN5osgeo4proj9operation20PointMotionOperation14nn_make_sharedIS2_JRKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEERKNS6_IS7_INS1_15OperationMethodEEEERKSt6vectorINS6_IS7_INS1_21GeneralParameterValueEEEESaISM_EERKSJ_INS6_IS7_INS0_8metadata18PositionalAccuracyEEEESaISU_EEEEENS6_IS7_IT_EEEDpOT0_(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.551") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.x = load ptr, ptr %0, align 8, !tbaa !287    ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !46
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !46
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.x, i64 %i.ad
  store ptr %i.ae, ptr %6, align 8, !tbaa !142
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !70 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !70
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_9operation20PointMotionOperationEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !81
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !81
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_9operation20PointMotionOperationEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

bb.h:                                             ; preds = %bb.f
  %i.am = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_9operation20PointMotionOperationEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_9operation20PointMotionOperationEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit: ; preds = %bb.h, %bb.g, %bb.e
  %i.an = getelementptr inbounds i8, ptr %i.x, i64 %i.aa
  invoke void @_ZN5osgeo4proj4util10BaseObject10assignSelfERKNS1_15BaseObjectNNPtrE(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.i unwind label %bb.at

bb.i:                                             ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_9operation20PointMotionOperationEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #44
  %i.ao = load ptr, ptr %0, align 8, !tbaa !287   ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46
  %i.aq = getelementptr i8, ptr %i.ap, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar ; 2 uses
  invoke void @_ZN5osgeo4proj6common11ObjectUsage13setPropertiesERKNS0_4util11PropertyMapE(ptr noundef nonnull align 8 dereferenceable(72) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc unwind label %bb.as

.noexc:                                           ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !65
  %i.av = invoke noundef zeroext i1 @_ZNK5osgeo4proj4util11PropertyMap14getStringValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_8optionalIS8_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj9operation19CoordinateOperation21OPERATION_VERSION_KEYB5cxx11E, ptr noundef nonnull align 8 dereferenceable(40) %i.au)
          to label %_ZN5osgeo4proj9operation19CoordinateOperation13setPropertiesERKNS0_4util11PropertyMapE.exit unwind label %bb.as ; 0 uses

_ZN5osgeo4proj9operation19CoordinateOperation13setPropertiesERKNS0_4util11PropertyMapE.exit: ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  %i.aw = load ptr, ptr %0, align 8, !tbaa !287   ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !46
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ba) #49 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.bc, ptr %7, align 8, !tbaa !50
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !60 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !53 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #44
  store i64 %i.bf, ptr %i.e, align 8, !tbaa !61
  %i.bg = icmp ugt i64 %i.bf, 15
  br i1 %i.bg, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZN5osgeo4proj9operation19CoordinateOperation13setPropertiesERKNS0_4util11PropertyMapE.exit
  %i.bh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc57 unwind label %bb.au  ; 2 uses

.noexc57:                                         ; preds = %.noexc.i
  store ptr %i.bh, ptr %7, align 8, !tbaa !60
  %i.bi = load i64, ptr %i.e, align 8, !tbaa !61
  store i64 %i.bi, ptr %i.bc, align 8, !tbaa !54
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc57, %_ZN5osgeo4proj9operation19CoordinateOperation13setPropertiesERKNS0_4util11PropertyMapE.exit
  %i.bj = phi ptr [ %i.bh, %.noexc57 ], [ %i.bc, %_ZN5osgeo4proj9operation19CoordinateOperation13setPropertiesERKNS0_4util11PropertyMapE.exit ] ; 2 uses
  switch i64 %i.bf, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bk = load i8, ptr %i.bd, align 1, !tbaa !54
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !54
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.bd, i64 %i.bf, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i
  %i.bl = load i64, ptr %i.e, align 8, !tbaa !61  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !53
  %i.bn = load ptr, ptr %7, align 8, !tbaa !60
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 0, ptr %i.bo, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #44
  %i.bp = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.248, i64 noundef 0, i64 noundef 12) #44 ; 2 uses
  %.not36 = icmp eq i64 %i.bp, -1
  br i1 %.not36, label %bb.bm, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = add i64 %i.bp, 12                       ; 6 uses
  %i.br = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.249, i64 noundef %i.bq, i64 noundef 10) #44 ; 3 uses
  %.not37 = icmp eq i64 %i.br, -1
  br i1 %.not37, label %bb.bm, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !53, !noalias !1241 ; 3 uses
  %i.bt = icmp ugt i64 %i.bq, %i.bs
  br i1 %i.bt, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.279, i64 noundef %i.bq, i64 noundef %i.bs) #48
          to label %.noexc58 unwind label %bb.av

.noexc58:                                         ; preds = %bb.o
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.n
  %i.bu = sub i64 %i.br, %i.bq
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.bv, ptr %8, align 8, !tbaa !50, !alias.scope !1241
  %i.bw = load ptr, ptr %7, align 8, !tbaa !60, !noalias !1241
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bq ; 2 uses
  %i.by = sub nuw i64 %i.bs, %i.bq
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bu, i64 %i.by) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #44, !noalias !1241
  store i64 %spec.select.i.i.i, ptr %i.d, align 8, !tbaa !61, !noalias !1241
  %i.bz = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.bz, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ca = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc59 unwind label %bb.av  ; 2 uses

.noexc59:                                         ; preds = %.noexc10.i.i
  store ptr %i.ca, ptr %8, align 8, !tbaa !60, !alias.scope !1241
  %i.cb = load i64, ptr %i.d, align 8, !tbaa !61, !noalias !1241
  store i64 %i.cb, ptr %i.bv, align 8, !tbaa !54, !alias.scope !1241
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.cc = phi ptr [ %i.ca, %.noexc59 ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.cd = load i8, ptr %i.bx, align 1, !tbaa !54
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !54
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr align 1 %i.bx, i64 %spec.select.i.i.i, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i
  %i.ce = load i64, ptr %i.d, align 8, !tbaa !61, !noalias !1241 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !53, !alias.scope !1241
  %i.cg = load ptr, ptr %8, align 8, !tbaa !60, !alias.scope !1241
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce
  store i8 0, ptr %i.ch, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #44, !noalias !1241
  %i.ci = load ptr, ptr %8, align 8, !tbaa !60    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #44
  %i.cj = tail call ptr @__errno_location() #50   ; 12 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !81 ; 2 uses
  store i32 0, ptr %i.cj, align 4, !tbaa !81
  %i.cl = call noundef double @strtod(ptr noundef %i.ci, ptr noundef nonnull %i.c)
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !246
  %i.cn = icmp eq ptr %i.cm, %i.ci
  br i1 %i.cn, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.274) #48
end_hunk_0
begin_hunk_1_@_ZN5osgeo4proj9operation20PointMotionOperation6createERKNS0_4util11PropertyMapERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEERKNS9_ISA_INS1_15OperationMethodEEEERKSt6vectorINS9_ISA_INS1_21GeneralParameterValueEEEESaISP_EERKSM_INS9_ISA_INS0_8metadata18PositionalAccuracyEEEESaISX_EE:bb.a
  %i.fg = load ptr, ptr %7, align 8, !tbaa !60    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.bc
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.bl
  %i.fi = load i64, ptr %i.bc, align 8, !tbaa !54
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.bm:                                            ; preds = %bb.m, %bb.ar, %bb.l
  %i.fk = load ptr, ptr %7, align 8, !tbaa !60    ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.bc
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.bm
  %i.fm = load i64, ptr %i.bc, align 8, !tbaa !54
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.au
  %.pn46.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.er, %bb.au ], [ %.pn46.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %.pn46.pn.pn.pn.pn, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.at, %bb.as
  %.pn46.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %i.ep, %bb.as ], [ %i.eq, %bb.at ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #44
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.d
  %.pn54 = phi { ptr, i32 } [ %i.w, %bb.d ], [ %.pn46.pn.pn.pn.pn.pn.pn, %bb.bn ]
  resume { ptr, i32 } %.pn54
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5osgeo4proj9operation20PointMotionOperation14nn_make_sharedIS2_JRKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEERKNS6_IS7_INS1_15OperationMethodEEEERKSt6vectorINS6_IS7_INS1_21GeneralParameterValueEEEESaISM_EERKSJ_INS6_IS7_INS0_8metadata18PositionalAccuracyEEEESaISU_EEEEENS6_IS7_IT_EEEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.551") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #46 ; 6 uses
  invoke void @_ZN5osgeo4proj9operation20PointMotionOperationC1ERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEERKNS5_IS6_INS1_15OperationMethodEEEERKSt6vectorINS5_IS6_INS1_21GeneralParameterValueEEEESaISL_EERKSI_INS5_IS6_INS0_8metadata18PositionalAccuracyEEEESaIST_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #46
          to label %_ZNSt12__shared_ptrIN5osgeo4proj9operation20PointMotionOperationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.c ; 5 uses

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = tail call ptr @__cxa_begin_catch(ptr %i.d) #44 ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #44, !inline_history !31
  invoke void @__cxa_rethrow() #48
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.e

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.g ], [ %i.i, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #47
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

_ZNSt12__shared_ptrIN5osgeo4proj9operation20PointMotionOperationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.l, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.m, align 4, !tbaa !86
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN5osgeo4proj9operation20PointMotionOperationELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.n, align 8, !tbaa !289
  store ptr %i.a, ptr %0, align 8, !tbaa !287
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.o, align 8, !tbaa !70
  ret void

bb.g:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #45
  br label %common.resume
}

declare void @_ZN5osgeo4proj6common7MeasureC1EdRKNS1_13UnitOfMeasureE(ptr noundef nonnull align 8 dereferenceable(24), double noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

declare void @_ZN5osgeo4proj6common9DataEpochC1ERKNS1_7MeasureE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN5osgeo4proj6common9DataEpochD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN5osgeo4proj6common7MeasureD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation20PointMotionOperationEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj9operation20PointMotionOperationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !86
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #44, !inline_history !1243
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #44, !inline_history !1243
  br label %_ZNSt12__shared_ptrIN5osgeo4proj9operation20PointMotionOperationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5osgeo4proj9operation20PointMotionOperationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #44
  br label %_ZNSt12__shared_ptrIN5osgeo4proj9operation20PointMotionOperationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj9operation20PointMotionOperationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj9operation20PointMotionOperation6createERKNS0_4util11PropertyMapERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEES6_RKSt6vectorINS9_ISA_INS1_18OperationParameterEEEESaISK_EERKSH_INS9_ISA_INS1_14ParameterValueEEEESaISR_EERKSH_INS9_ISA_INS0_8metadata18PositionalAccuracyEEEESaISZ_EE(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.551") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.dropbox::oxygen::nn.176", align 8 ; 7 uses
  %8 = alloca %"class.std::vector.291", align 8   ; 15 uses
  %9 = alloca %"class.dropbox::oxygen::nn.297", align 16 ; 8 uses
  %10 = alloca %"class.dropbox::oxygen::nn.255", align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  call void @_ZN5osgeo4proj9operation15OperationMethod6createERKNS0_4util11PropertyMapERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_18OperationParameterEEEESaISE_EE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.176") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !174  ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !175    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !253  ; 2 uses
  %i.i = load ptr, ptr %5, align 8, !tbaa !251    ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp eq i64 %i.f, %i.l
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = call ptr @__cxa_allocate_exception(i64 40) #44 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull @.str.247)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj9operation16InvalidOperationE, i64 16), ptr %i.m, align 8, !tbaa !46
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN5osgeo4proj9operation16InvalidOperationE, ptr @_ZN5osgeo4proj9operation16InvalidOperationD1Ev) #48
          to label %bb.at unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.m) #44
  br label %bb.as

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.p = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.278) #48
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %.not57 = icmp eq ptr %i.b, %i.c
  br i1 %.not57, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE11_M_allocateEm.exit.i: ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #46
          to label %.noexc26 unwind label %bb.j   ; 4 uses

.noexc26:                                         ; preds = %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE11_M_allocateEm.exit.i
  %i.t = load ptr, ptr %8, align 8, !tbaa !223    ; 5 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !222  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc26, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.s, %.noexc26 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.t, %.noexc26 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.w = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !80, !alias.scope !1250
  store ptr null, ptr %i.v, align 8, !tbaa !70, !alias.scope !1250
  store <2 x ptr> %i.w, ptr %.012.i.i.i.i, align 8, !tbaa !80, !alias.scope !1249
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !228, !alias.scope !1250
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.u
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !32

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc26
  %.not.i8.i = icmp eq ptr %i.t, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE13_M_deallocateEPS9_m.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit.i
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !225
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ac) #45
  br label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE13_M_deallocateEPS9_m.exit.i

_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE13_M_deallocateEPS9_m.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit.i
  store ptr %i.s, ptr %8, align 8, !tbaa !223
  store ptr %i.s, ptr %i.r, align 8, !tbaa !222
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.f
  store ptr %i.ad, ptr %i.q, align 8, !tbaa !225
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !253
  %.pre41 = load ptr, ptr %5, align 8, !tbaa !251
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE7reserveEm.exit

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE7reserveEm.exit: ; preds = %bb.h, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE13_M_deallocateEPS9_m.exit.i
  %i.ae = phi ptr [ %i.i, %bb.h ], [ %.pre41, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE13_M_deallocateEPS9_m.exit.i ] ; 2 uses
  %i.af = phi ptr [ %i.h, %bb.h ], [ %.pre, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE13_M_deallocateEPS9_m.exit.i ]
  %.not40 = icmp eq ptr %i.af, %i.ae
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE7reserveEm.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation23OperationParameterValueEEED2Ev.exit, %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE7reserveEm.exit
  invoke void @_ZN5osgeo4proj9operation20PointMotionOperation6createERKNS0_4util11PropertyMapERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs3CRSEEEERKNS9_ISA_INS1_15OperationMethodEEEERKSt6vectorINS9_ISA_INS1_21GeneralParameterValueEEEESaISP_EERKSM_INS9_ISA_INS0_8metadata18PositionalAccuracyEEEESaISX_EE(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.551") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.ad unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE11_M_allocateEm.exit.i, %bb.g, %._crit_edge
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.k:                                             ; preds = %.lr.ph, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation23OperationParameterValueEEED2Ev.exit
  %i.ak = phi ptr [ %i.ae, %.lr.ph ], [ %i.cd, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation23OperationParameterValueEEED2Ev.exit ]
  %.039 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation23OperationParameterValueEEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #44
  %i.al = load ptr, ptr %4, align 8, !tbaa !175
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.039
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %.039
  invoke void @_ZN5osgeo4proj9operation23OperationParameterValue14nn_make_sharedIS2_JRKN7dropbox6oxygen2nnISt10shared_ptrINS1_18OperationParameterEEEERKNS6_IS7_INS1_14ParameterValueEEEEEEENS6_IS7_IT_EEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.255") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %bb.l unwind label %bb.aa

bb.l:                                             ; preds = %bb.k
  %i.ao = load <2 x ptr>, ptr %10, align 16, !tbaa !80
  %i.ap = load ptr, ptr %10, align 16, !tbaa !192
  store ptr null, ptr %i.ah, align 8, !tbaa !70
  store <2 x ptr> %i.ao, ptr %9, align 16, !tbaa !80
  store ptr null, ptr %10, align 16, !tbaa !192
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !222 ; 5 uses
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !225
  %.not.i.i = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !228
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr null, ptr %i.as, align 8, !tbaa !70
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !70
  store ptr null, ptr %i.ag, align 8, !tbaa !70
  store ptr %i.at, ptr %i.as, align 8, !tbaa !70
  store ptr null, ptr %9, align 16, !tbaa !228
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.au, ptr %i.ai, align 8, !tbaa !222
  br label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE9push_backEOS9_.exit

bb.n:                                             ; preds = %bb.l
  invoke void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE9push_backEOS9_.exit unwind label %bb.ab

_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE9push_backEOS9_.exit: ; preds = %bb.m, %bb.n
  %i.av = load ptr, ptr %i.ag, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE9push_backEOS9_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.aw, align 8, !tbaa !85
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !86
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !46
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #44, !inline_history !28
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #44, !inline_history !28
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !54
  %.not.i.i.i.i29 = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i29, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i = phi i32 [ %i.az, %bb.r ], [ %i.bj, %bb.s ]
  %i.bk = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bk, label %bb.t, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEED2Ev.exit, !prof !87

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #44
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEED2Ev.exit: ; preds = %_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EE9push_backEOS9_.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.t
  %i.bl = load ptr, ptr %i.ah, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i30 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i30, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation23OperationParameterValueEEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bm, align 8, !tbaa !85
end_hunk_1
