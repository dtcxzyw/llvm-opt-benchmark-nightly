Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/crs?download=true
inline.NumInlined: 8471
inline.NumDeleted: 2697
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev:bb.a

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !135
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !136
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #39, !inline_history !2
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #39, !inline_history !2
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !137

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #39
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj3crs19DerivedProjectedCRS6createERKNS0_4util11PropertyMapERKN7dropbox6oxygen2nnISt10shared_ptrINS1_12ProjectedCRSEEEERKNS9_ISA_INS0_9operation10ConversionEEEERKNS9_ISA_INS0_2cs16CoordinateSystemEEEE(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.284") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  tail call void @_ZN5osgeo4proj3crs19DerivedProjectedCRS14nn_make_sharedIS2_JRKN7dropbox6oxygen2nnISt10shared_ptrINS1_12ProjectedCRSEEEERKNS6_IS7_INS0_9operation10ConversionEEEERKNS6_IS7_INS0_2cs16CoordinateSystemEEEEEEENS6_IS7_IT_EEEDpOT0_(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.284") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = load ptr, ptr %0, align 8, !tbaa !254    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.b, ptr null, ptr %i.c
  store ptr %spec.select.i.i.i.i, ptr %5, align 8, !tbaa !143
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !128  ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !128
  %.not.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs19DerivedProjectedCRSEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !130
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !130
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs19DerivedProjectedCRSEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs19DerivedProjectedCRSEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs19DerivedProjectedCRSEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit: ; preds = %bb.d, %bb.c, %bb.a
  invoke void @_ZN5osgeo4proj4util10BaseObject10assignSelfERKNS1_15BaseObjectNNPtrE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs19DerivedProjectedCRSEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  %i.l = load ptr, ptr %0, align 8, !tbaa !254
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  invoke void @_ZN5osgeo4proj3crs3CRS13setPropertiesERKNS0_4util11PropertyMapE(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %0, align 8, !tbaa !254
  invoke void @_ZN5osgeo4proj3crs10DerivedCRS24setDerivingConversionCRSEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs19DerivedProjectedCRSEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  %.pn9 = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.p, %bb.h ]
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs19DerivedProjectedCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #39
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs9SingleCRS16coordinateSystemEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs19DerivedProjectedCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs19DerivedProjectedCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !135
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !136
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #39, !inline_history !804
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #39, !inline_history !804
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs19DerivedProjectedCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs19DerivedProjectedCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !137

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #39
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs19DerivedProjectedCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs19DerivedProjectedCRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5osgeo4proj3crs11CompoundCRS6createERKNS0_4util11PropertyMapERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_3CRSEEEESaISE_EE(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.288") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !256
  %i.c = load ptr, ptr %2, align 8, !tbaa !259    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ult i64 %i.f, 17
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 40) #39 ; 3 uses
  invoke void @_ZN5osgeo4proj3crs27InvalidCompoundCRSExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull @.str.111)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN5osgeo4proj3crs27InvalidCompoundCRSExceptionE, ptr @_ZN5osgeo4proj3crs27InvalidCompoundCRSExceptionD1Ev) #41
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.h) #39
  br label %bb.ar

bb.e:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !158  ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !110  ; 2 uses
  %i.m = icmp eq ptr %i.l, getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5osgeo4proj3crs8BoundCRSE, i64 16)
  br i1 %i.m, label %.thread, label %.thread.thread150

.thread:                                          ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !245
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !158  ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.thread.thread, label %thread-pre-split

thread-pre-split:                                 ; preds = %.thread
  %.pr = load ptr, ptr %i.p, align 8, !tbaa !110
  br label %.thread.thread150

.thread.thread150:                                ; preds = %bb.f, %thread-pre-split
  %i.r = phi ptr [ %.pr, %thread-pre-split ], [ %i.l, %bb.f ] ; 2 uses
  %.066152 = phi ptr [ %i.p, %thread-pre-split ], [ %i.j, %bb.f ] ; 5 uses
  %i.s = tail call ptr @__dynamic_cast(ptr nonnull %.066152, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs13GeographicCRSE, i64 -1) #39
  %i.t = icmp eq ptr %i.r, getelementptr inbounds nuw inrange(-72, 48) (i8, ptr @_ZTVN5osgeo4proj3crs12ProjectedCRSE, i64 208)
  %i.u = getelementptr inbounds i8, ptr %.066152, i64 -32
  %spec.select159 = select i1 %i.t, ptr %i.u, ptr null
  %i.v = icmp eq ptr %i.r, getelementptr inbounds nuw inrange(-72, 48) (i8, ptr @_ZTVN5osgeo4proj3crs19DerivedProjectedCRSE, i64 152)
  %i.w = getelementptr inbounds i8, ptr %.066152, i64 -24
  %.ph129 = select i1 %i.v, ptr %i.w, ptr null
  %i.x = tail call ptr @__dynamic_cast(ptr nonnull %.066152, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs14EngineeringCRSE, i64 -1) #39
  br label %.thread.thread

.thread.thread:                                   ; preds = %bb.e, %.thread, %.thread.thread150
  %i.y = phi i1 [ false, %.thread.thread150 ], [ true, %.thread ], [ true, %bb.e ]
  %.066149 = phi ptr [ %.066152, %.thread.thread150 ], [ null, %.thread ], [ null, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.ph129, %.thread.thread150 ], [ null, %.thread ], [ null, %bb.e ] ; 2 uses
  %i.aa = phi ptr [ %i.s, %.thread.thread150 ], [ null, %.thread ], [ null, %bb.e ] ; 2 uses
  %i.ab = phi ptr [ %spec.select159, %.thread.thread150 ], [ null, %.thread ], [ null, %bb.e ] ; 2 uses
  %i.ac = phi ptr [ %i.x, %.thread.thread150 ], [ null, %.thread ], [ null, %bb.e ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !158 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.thread135, label %bb.g

bb.g:                                             ; preds = %.thread.thread
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !110
  %i.ah = icmp eq ptr %i.ag, getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN5osgeo4proj3crs8BoundCRSE, i64 16)
  br i1 %i.ah, label %.thread131, label %.thread131.thread156

.thread131:                                       ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !245
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !158 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.thread135, label %.thread131.thread156

.thread131.thread156:                             ; preds = %bb.g, %.thread131
  %.065158 = phi ptr [ %i.ak, %.thread131 ], [ %i.ae, %bb.g ] ; 5 uses
  %i.am = tail call ptr @__dynamic_cast(ptr nonnull %.065158, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs11VerticalCRSE, i64 -1) #39
  %.not161 = icmp eq ptr %i.am, null
  %i.an = tail call ptr @__dynamic_cast(ptr nonnull %.065158, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs14EngineeringCRSE, i64 -1) #39 ; 3 uses
  br i1 %.not161, label %bb.h, label %.thread135

bb.h:                                             ; preds = %.thread131.thread156
  %.not86 = icmp eq ptr %i.an, null
  br i1 %.not86, label %.thread135, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !110
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !116
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !170
  %i.aw = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj2cs16CoordinateSystem8axisListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.av) #42 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !263
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !264
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = icmp eq i64 %i.bc, 16
  br label %.thread135

.thread135:                                       ; preds = %.thread.thread, %.thread131, %bb.h, %bb.i, %.thread131.thread156
  %i.be = phi i1 [ false, %.thread131.thread156 ], [ false, %bb.h ], [ false, %bb.i ], [ true, %.thread131 ], [ true, %.thread.thread ] ; 2 uses
  %.065154 = phi ptr [ %.065158, %.thread131.thread156 ], [ %.065158, %bb.h ], [ %.065158, %bb.i ], [ null, %.thread131 ], [ null, %.thread.thread ] ; 2 uses
  %i.bf = phi i1 [ true, %.thread131.thread156 ], [ false, %bb.h ], [ false, %bb.i ], [ false, %.thread131 ], [ false, %.thread.thread ]
  %i.bg = phi i1 [ true, %.thread131.thread156 ], [ false, %bb.h ], [ %i.bd, %bb.i ], [ false, %.thread131 ], [ false, %.thread.thread ] ; 3 uses
  %i.bh = icmp ne ptr %i.aa, null                 ; 2 uses
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread135
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !266
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !269
  %i.bl = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj2cs16CoordinateSystem8axisListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bk) #42 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !263
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !264
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = icmp eq i64 %i.br, 32
  %or.cond = and i1 %i.bg, %i.bs
  br i1 %or.cond, label %.critedge106, label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread135
  %i.bt = icmp ne ptr %i.ab, null                 ; 2 uses
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !236
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !272
  %i.by = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj2cs16CoordinateSystem8axisListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bx) #42 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !263
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !264
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = icmp eq i64 %i.ce, 32
  %or.cond3 = and i1 %i.bg, %i.cf
  br i1 %or.cond3, label %.critedge106, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cg = icmp ne ptr %i.z, null                  ; 2 uses
  br i1 %i.cg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !116
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !170
  %i.cl = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj2cs16CoordinateSystem8axisListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ck) #42 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !263
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !264
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = icmp eq i64 %i.cr, 32
  %or.cond5 = and i1 %i.bg, %i.cs
  br i1 %or.cond5, label %.critedge106, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not162 = icmp eq ptr %i.ac, null
  br i1 %.not162, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ct = load ptr, ptr %i.ac, align 8, !tbaa !110
  %i.cu = getelementptr i8, ptr %i.ct, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds i8, ptr %i.ac, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !116
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !170
  %i.db = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj2cs16CoordinateSystem8axisListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.da) #42 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !263
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !264
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = icmp ult i64 %i.dh, 33
  %or.cond7 = and i1 %i.bf, %i.di
  br i1 %or.cond7, label %.critedge106, label %.critedge108.thread

bb.q:                                             ; preds = %bb.o
  %or.cond9 = or i1 %i.bh, %i.bt
  %or.cond11 = or i1 %i.cg, %or.cond9
  br i1 %or.cond11, label %.critedge108.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.y, label %.critedge107, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dj = tail call ptr @__dynamic_cast(ptr nonnull %.066149, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs11GeodeticCRSE, i64 -1) #39
  %.not163 = icmp eq ptr %i.dj, null
  br i1 %.not163, label %.critedge108, label %.critedge108.thread

.critedge108:                                     ; preds = %bb.s
  %i.dk = tail call ptr @__dynamic_cast(ptr nonnull %.066149, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs11VerticalCRSE, i64 -1) #39
  %.not164 = icmp eq ptr %i.dk, null
  %brmerge160 = or i1 %i.be, %.not164
  br i1 %brmerge160, label %.critedge107, label %bb.t

.critedge108.thread:                              ; preds = %bb.p, %bb.q, %bb.s
  br i1 %i.be, label %.critedge107, label %bb.t

bb.t:                                             ; preds = %.critedge108, %.critedge108.thread
  %i.dl = tail call ptr @__dynamic_cast(ptr nonnull %.065154, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs11TemporalCRSE, i64 -1) #39
  %.not = icmp eq ptr %i.dl, null
  br i1 %.not, label %bb.u, label %.critedge106

bb.u:                                             ; preds = %bb.t
  %i.dm = tail call ptr @__dynamic_cast(ptr nonnull %.065154, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs13ParametricCRSE, i64 -1) #39
  %.fr = freeze ptr %i.dm
  %i.dn = icmp eq ptr %.fr, null
  br i1 %i.dn, label %.critedge107, label %.critedge106

.critedge107:                                     ; preds = %.critedge108, %.critedge108.thread, %bb.u, %bb.r
  %i.do = tail call ptr @__cxa_allocate_exception(i64 40) #39 ; 3 uses
  invoke void @_ZN5osgeo4proj3crs27InvalidCompoundCRSExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.do, ptr noundef nonnull @.str.112)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %.critedge107
  tail call void @__cxa_throw(ptr nonnull %i.do, ptr nonnull @_ZTIN5osgeo4proj3crs27InvalidCompoundCRSExceptionE, ptr @_ZN5osgeo4proj3crs27InvalidCompoundCRSExceptionD1Ev) #41
  unreachable

bb.w:                                             ; preds = %.critedge107
  %i.dp = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.do) #39
  br label %bb.ar

.critedge106:                                     ; preds = %bb.t, %bb.u, %bb.j, %bb.p, %bb.n, %bb.l
  tail call void @_ZN5osgeo4proj3crs11CompoundCRS14nn_make_sharedIS2_JRKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_3CRSEEEESaISB_EEEEENS7_IS8_IT_EEEDpOT0_(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.288") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.dq = load ptr, ptr %0, align 8, !tbaa !258   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  store ptr %i.dq, ptr %3, align 8, !tbaa !143
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !128 ; 3 uses
  store ptr %i.dt, ptr %i.dr, align 8, !tbaa !128
  %.not.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs11CompoundCRSEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, label %bb.x

bb.x:                                             ; preds = %.critedge106
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 3 uses
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !130
  %i.dx = add nsw i32 %i.dw, 1
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !130
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs11CompoundCRSEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

bb.z:                                             ; preds = %bb.x
  %i.dy = atomicrmw volatile add ptr %i.du, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs11CompoundCRSEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs11CompoundCRSEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit: ; preds = %bb.z, %bb.y, %.critedge106
  invoke void @_ZN5osgeo4proj4util10BaseObject10assignSelfERKNS1_15BaseObjectNNPtrE(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs11CompoundCRSEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %i.dz = load ptr, ptr %0, align 8, !tbaa !258
  invoke void @_ZN5osgeo4proj3crs3CRS13setPropertiesERKNS0_4util11PropertyMapE(ptr noundef nonnull align 8 dereferenceable(64) %i.dz, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ea = invoke noundef ptr @_ZNK5osgeo4proj4util11PropertyMap3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj6common16IdentifiedObject8NAME_KEYB5cxx11E)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %.not91 = icmp eq ptr %i.ea, null
  br i1 %.not91, label %bb.ad, label %bb.ap

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.eb, ptr %4, align 8, !tbaa !146
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %i.ec, align 8, !tbaa !149
  store i8 0, ptr %i.eb, align 8, !tbaa !129
  %i.ed = load ptr, ptr %2, align 8, !tbaa !243   ; 2 uses
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !243 ; 2 uses
  %.not165166 = icmp eq ptr %i.ed, %i.ee
  br i1 %.not165166, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  invoke void @_ZN5osgeo4proj4util11PropertyMapC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.aj unwind label %bb.am

bb.ae:                                            ; preds = %bb.ab, %bb.aa
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.af:                                            ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs11CompoundCRSEEERKN7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %bb.aq

.lr.ph:                                           ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %.sroa.0122.0167 = phi ptr [ %i.fa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit ], [ %i.ed, %bb.ad ] ; 2 uses
  %i.eh = load i64, ptr %i.ec, align 8, !tbaa !149 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph
  %i.ej = add i64 %i.eh, -4611686018427387901
  %i.ek = icmp ult i64 %i.ej, 3
  br i1 %i.ek, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.ag
  %i.el = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.9, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %.lr.ph
  %i.em = load ptr, ptr %.sroa.0122.0167, align 8, !tbaa !158
  %i.en = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj6common16IdentifiedObject7nameStrB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.em) #42 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !149 ; 3 uses
  %i.eq = icmp eq i64 %i.ep, 0
  %i.er = load i64, ptr %i.ec, align 8, !tbaa !149 ; 2 uses
  br i1 %i.eq, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.es = sub i64 4611686018427387903, %i.er
  %i.et = icmp ult i64 %i.es, %i.ep
  br i1 %i.et, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.ah
  %i.eu = load ptr, ptr %i.en, align 8, !tbaa !150
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.invoke

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.invoke: ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ev = phi ptr [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i ], [ @.str.66, %bb.ai ]
  %i.ew = phi i64 [ %i.ep, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i ], [ 7, %bb.ai ]
  %i.ex = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ev, i64 noundef %i.ew)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.invoke, %.invoke
  %lpad.loopexit.split-lp187 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.ey = add i64 %i.er, -4611686018427387897
  %i.ez = icmp ult i64 %i.ey, 7
  br i1 %i.ez, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.invoke

.invoke:                                          ; preds = %bb.ag, %bb.ah, %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.175) #41
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.invoke
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0122.0167, i64 16 ; 2 uses
  %.not165 = icmp eq ptr %i.fa, %i.ee
  br i1 %.not165, label %._crit_edge, label %.lr.ph

bb.aj:                                            ; preds = %._crit_edge
  %i.fb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5osgeo4proj4util11PropertyMap3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZN5osgeo4proj6common16IdentifiedObject8NAME_KEYB5cxx11E, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ak unwind label %bb.an     ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.fc = load ptr, ptr %0, align 8, !tbaa !258
  invoke void @_ZN5osgeo4proj3crs3CRS13setPropertiesERKNS0_4util11PropertyMapE(ptr noundef nonnull align 8 dereferenceable(64) %i.fc, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  %i.fd = load ptr, ptr %4, align 8, !tbaa !150   ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.eb
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.al
  %i.ff = load i64, ptr %i.eb, align 8, !tbaa !129
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.ap

bb.am:                                            ; preds = %._crit_edge
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak, %bb.aj
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #39
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn92 = phi { ptr, i32 } [ %i.fi, %bb.an ], [ %i.fh, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ao
  %.pn94.pn = phi { ptr, i32 } [ %.pn92, %bb.ao ], [ %lpad.loopexit.split-lp187, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.fj = load ptr, ptr %4, align 8, !tbaa !150   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.eb
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %.loopexit.split-lp
  %i.fl = load i64, ptr %i.eb, align 8, !tbaa !129
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
end_hunk_0
begin_hunk_1_@_ZN5osgeo4proj3crs11CompoundCRS9createLaxERKNS0_4util11PropertyMapERKSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrINS1_3CRSEEEESaISE_EERKSB_INS0_2io15DatabaseContextEE:bb.a
  store i32 0, ptr %i.bs, align 8, !tbaa !135
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 0, ptr %i.bw, align 4, !tbaa !136
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !110
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #39, !inline_history !49
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !110
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #39, !inline_history !49
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.cd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i = icmp eq i8 %i.cd, 0
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = add nsw i32 %i.bv, -1
  store i32 %i.ce, ptr %i.bs, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.cf = atomicrmw volatile add ptr %i.bs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i = phi i32 [ %i.bv, %bb.x ], [ %i.cf, %bb.y ]
  %i.cg = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cg, label %bb.z, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit, !prof !137

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.z
  %i.ch = load ptr, ptr %5, align 8, !tbaa !150   ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.al
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit
  %i.cj = load i64, ptr %i.al, align 8, !tbaa !129
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br i1 %i.ay, label %bb.aa, label %bb.ap

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.cl = load ptr, ptr %2, align 8, !tbaa !259
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.cn, ptr %8, align 8, !tbaa !146
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.co, align 8, !tbaa !149
  store i8 0, ptr %i.cn, align 8, !tbaa !129
  invoke void @_ZNK5osgeo4proj3crs3CRS11promoteTo3DERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS0_2io15DatabaseContextEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.96") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.ab unwind label %bb.am

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load ptr, ptr %7, align 8, !tbaa !158
  invoke void @_ZNK5osgeo4proj3crs3CRS28allowNonConformantWKT1ExportEv(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn.96") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %i.cp)
          to label %bb.ac unwind label %bb.an

bb.ac:                                            ; preds = %bb.ab
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !128 ; 8 uses
  %.not.i.i.i144 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i144, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 4 uses
  %i.ct = load atomic i64, ptr %i.cs acquire, align 8 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 4294967297
  %i.cv = trunc i64 %i.ct to i32                  ; 2 uses
  br i1 %i.cu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.cs, align 8, !tbaa !135
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 0, ptr %i.cw, align 4, !tbaa !136
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !110
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #39, !inline_history !17
  %i.da = load ptr, ptr %i.cr, align 8, !tbaa !110
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #39, !inline_history !17
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit

bb.af:                                            ; preds = %bb.ad
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i.i145 = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i145, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = add nsw i32 %i.cv, -1
  store i32 %i.de, ptr %i.cs, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i146

bb.ah:                                            ; preds = %bb.af
  %i.df = atomicrmw volatile add ptr %i.cs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i146

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i146: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i.i147 = phi i32 [ %i.cv, %bb.ag ], [ %i.df, %bb.ah ]
  %i.dg = icmp eq i32 %.0.i.i.i.i.i147, 1
  br i1 %i.dg, label %bb.ai, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, !prof !137

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i146
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #39
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit: ; preds = %bb.ac, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i146, %bb.ai
  %i.dh = load ptr, ptr %8, align 8, !tbaa !150   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.cn
  br i1 %i.di, label %.thread266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit
  %i.dj = load i64, ptr %i.cn, align 8, !tbaa !129
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #38
  br label %.thread266

.thread266:                                       ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.gf

bb.aj:                                            ; preds = %bb.j
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.m
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #39
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn125 = phi { ptr, i32 } [ %i.dm, %bb.ak ], [ %i.dl, %bb.aj ]
  %i.dn = load ptr, ptr %5, align 8, !tbaa !150   ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.al
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %bb.al
  %i.dp = load i64, ptr %i.al, align 8, !tbaa !129
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.gg

bb.am:                                            ; preds = %bb.aa
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.ab
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #39
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn127 = phi { ptr, i32 } [ %i.ds, %bb.an ], [ %i.dr, %bb.am ]
  %i.dt = load ptr, ptr %8, align 8, !tbaa !150   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.cn
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %bb.ao
  %i.dv = load i64, ptr %i.cn, align 8, !tbaa !129
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %bb.gg

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dx = call ptr @__cxa_allocate_exception(i64 40) #39 ; 3 uses
  invoke void @_ZN5osgeo4proj3crs27InvalidCompoundCRSExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.dx, ptr noundef nonnull @.str.113)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @__cxa_throw(ptr nonnull %i.dx, ptr nonnull @_ZTIN5osgeo4proj3crs27InvalidCompoundCRSExceptionE, ptr @_ZN5osgeo4proj3crs27InvalidCompoundCRSExceptionD1Ev) #41
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dx) #39
  br label %bb.gg

bb.as:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  %i.dz = tail call ptr @__dynamic_cast(ptr nonnull %i.k, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, ptr nonnull @_ZTIN5osgeo4proj3crs11VerticalCRSE, i64 -1) #39, !noalias !1458 ; 4 uses
  %.not.i = icmp eq ptr %i.dz, null
  br i1 %.not.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread343, label %bb.at

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread343: ; preds = %bb.as, %.thread257
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !alias.scope !1458
  br label %.critedge134.thread

bb.at:                                            ; preds = %bb.as
  store ptr %i.dz, ptr %9, align 8, !tbaa !234, !alias.scope !1458
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !128, !noalias !1458 ; 3 uses
  store ptr %i.ec, ptr %i.ea, align 8, !tbaa !128, !alias.scope !1458
  %.not.i.i.i.i157 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i157, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 3 uses
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129, !noalias !1458
  %.not.i.i.i.i.i = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !130, !noalias !1458
  %i.eg = add nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !130, !noalias !1458
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit: ; preds = %bb.au
  %i.eh = atomicrmw volatile add ptr %i.ed, i32 1 acq_rel, align 4, !noalias !1458 ; 0 uses
  %.pr.pre = load ptr, ptr %9, align 8, !tbaa !234 ; 2 uses
  %.not = icmp eq ptr %.pr.pre, null
  br i1 %.not, label %.critedge134.thread, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread: ; preds = %bb.at, %bb.av, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit
  %i.ei = phi ptr [ %.pr.pre, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit ], [ %i.dz, %bb.av ], [ %i.dz, %bb.at ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !110, !noalias !1459
  %i.ek = getelementptr i8, ptr %i.ej, i64 -24
  %i.el = load i64, ptr %i.ek, align 8, !noalias !1459
  %i.em = getelementptr inbounds i8, ptr %i.ei, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !116, !noalias !1459 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !163, !noalias !1461 ; 3 uses
  store ptr %i.ep, ptr %10, align 8, !tbaa !448, !alias.scope !1461
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !128, !noalias !1461 ; 3 uses
  store ptr %i.es, ptr %i.eq, align 8, !tbaa !128, !alias.scope !1461
  %.not.i.i.i.i.i158 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i.i158, label %_ZNK5osgeo4proj3crs11VerticalCRS5datumEv.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 3 uses
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129, !noalias !1461
  %.not.i.i.i.i.i.i = icmp eq i8 %i.eu, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !130, !noalias !1461
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.et, align 4, !tbaa !130, !noalias !1461
  br label %_ZNK5osgeo4proj3crs11VerticalCRS5datumEv.exit

bb.ay:                                            ; preds = %bb.aw
  %i.ex = atomicrmw volatile add ptr %i.et, i32 1 acq_rel, align 4, !noalias !1461 ; 0 uses
  %.pre = load ptr, ptr %10, align 8, !tbaa !448
  br label %_ZNK5osgeo4proj3crs11VerticalCRS5datumEv.exit

_ZNK5osgeo4proj3crs11VerticalCRS5datumEv.exit:    ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread, %bb.ax, %bb.ay
  %i.ey = phi ptr [ %i.ep, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs11VerticalCRSENS4_3CRSEEESt10shared_ptrIT_ERKNS0_2nnIS7_IT0_EEE.exit.thread ], [ %i.ep, %bb.ax ], [ %.pre, %bb.ay ]
  %.not270 = icmp eq ptr %i.ey, null
  br i1 %.not270, label %bb.bm, label %bb.az

bb.az:                                            ; preds = %_ZNK5osgeo4proj3crs11VerticalCRS5datumEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  %i.ez = load ptr, ptr %9, align 8, !tbaa !234   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !110, !noalias !1462
  %i.fb = getelementptr i8, ptr %i.fa, i64 -24
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !1462
  %i.fd = getelementptr inbounds i8, ptr %i.ez, i64 %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 64
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !116, !noalias !1462 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !163, !noalias !1464 ; 3 uses
  store ptr %i.fg, ptr %11, align 8, !tbaa !448, !alias.scope !1464
  %i.fh = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !128, !noalias !1464 ; 3 uses
  store ptr %i.fj, ptr %i.fh, align 8, !tbaa !128, !alias.scope !1464
  %.not.i.i.i.i.i159 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i159, label %_ZNK5osgeo4proj3crs11VerticalCRS5datumEv.exit161, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 3 uses
  %i.fl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129, !noalias !1464
  %.not.i.i.i.i.i.i160 = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i.i.i.i160, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !130, !noalias !1464
  %i.fn = add nsw i32 %i.fm, 1
  store i32 %i.fn, ptr %i.fk, align 4, !tbaa !130, !noalias !1464
  br label %_ZNK5osgeo4proj3crs11VerticalCRS5datumEv.exit161

bb.bc:                                            ; preds = %bb.ba
  %i.fo = atomicrmw volatile add ptr %i.fk, i32 1 acq_rel, align 4, !noalias !1464 ; 0 uses
  %.pre274 = load ptr, ptr %11, align 8, !tbaa !448
  br label %_ZNK5osgeo4proj3crs11VerticalCRS5datumEv.exit161

_ZNK5osgeo4proj3crs11VerticalCRS5datumEv.exit161: ; preds = %bb.az, %bb.bb, %bb.bc
  %i.fp = phi ptr [ %i.fg, %bb.az ], [ %i.fg, %bb.bb ], [ %.pre274, %bb.bc ]
  %i.fq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5osgeo4proj5datum22VerticalReferenceFrame16getWKT1DatumTypeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.fp)
          to label %bb.bd unwind label %bb.co     ; 2 uses

bb.bd:                                            ; preds = %_ZNK5osgeo4proj3crs11VerticalCRS5datumEv.exit161
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !149
  %i.ft = icmp eq i64 %i.fs, 4
  br i1 %i.ft, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fu = load ptr, ptr %i.fq, align 8, !tbaa !150
  %i.fv = load i32, ptr %i.fu, align 1
  %i.fw = icmp ne i32 %i.fv, 842018866
  %i.fx = zext i1 %i.fw to i32
  %i.fy = icmp eq i32 %i.fx, 0
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %.ph258 = phi i1 [ false, %bb.bd ], [ %i.fy, %bb.be ]
  %i.fz = load ptr, ptr %i.fh, align 8, !tbaa !128 ; 8 uses
  %.not.i.i162 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i162, label %_ZNSt12__shared_ptrIN5osgeo4proj5datum22VerticalReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.ga, align 8, !tbaa !135
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !136
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !110
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  tail call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #39, !inline_history !12
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !110
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  tail call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #39, !inline_history !12
  br label %_ZNSt12__shared_ptrIN5osgeo4proj5datum22VerticalReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bi:                                            ; preds = %bb.bg
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !129
  %.not.i.i.i163 = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i163, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !130
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i164

bb.bk:                                            ; preds = %bb.bi
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i164

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i164: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i165 = phi i32 [ %i.gd, %bb.bj ], [ %i.gn, %bb.bk ]
  %i.go = icmp eq i32 %.0.i.i.i.i165, 1
  br i1 %i.go, label %bb.bl, label %_ZNSt12__shared_ptrIN5osgeo4proj5datum22VerticalReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !137

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i164
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #39
  br label %_ZNSt12__shared_ptrIN5osgeo4proj5datum22VerticalReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj5datum22VerticalReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bf, %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i164, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNK5osgeo4proj3crs11VerticalCRS5datumEv.exit, %_ZNSt12__shared_ptrIN5osgeo4proj5datum22VerticalReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.ph260 = phi i1 [ false, %_ZNK5osgeo4proj3crs11VerticalCRS5datumEv.exit ], [ %.ph258, %_ZNSt12__shared_ptrIN5osgeo4proj5datum22VerticalReferenceFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
end_hunk_1
