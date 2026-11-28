Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio_exr?download=true
inline.NumInlined: 317
inline.NumDeleted: 219
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK7Imf_3_114TypedAttributeINS_4BlobEE12writeValueToERNS_7OStreamEi:bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = load i32, ptr %i.b, align 8, !tbaa !24
  %i.j = load ptr, ptr %1, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.h, i32 noundef %i.i), !call_target !115, !inline_history !109
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_114TypedAttributeINS_4BlobEE13readValueFromERNS_7IStreamEii(ptr noundef nonnull align 8 dereferenceable(32) initializes((8, 12)) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = load ptr, ptr %1, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef 4), !call_target !123, !inline_history !117 ; 0 uses
  %i.g = load i32, ptr %i.a, align 4              ; 2 uses
  store i32 %i.g, ptr %i.b, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = zext i32 %i.g to i64
  %i.j = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #20
  call void @_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EE5resetIh13array_deleterIhEEENSt9enable_ifIXsr21__sp_is_constructibleIhT_EE5valueEvE4typeEPS7_T0_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull %i.j)
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.l = load i32, ptr %i.b, align 8, !tbaa !24
  %i.m = load ptr, ptr %1, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.k, i32 noundef %i.l), !call_target !123, !inline_history !118 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EE5resetIh13array_deleterIhEEENSt9enable_ifIXsr21__sp_is_constructibleIhT_EE5valueEvE4typeEPS7_T0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20
          to label %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EEC2Ih13array_deleterIhEvEEPT_T0_.exit unwind label %bb.b, !noalias !127 ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #19 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %_ZN13array_deleterIhEclEPKh.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %1) #21
  br label %_ZN13array_deleterIhEclEPKh.exit.i.i.i

_ZN13array_deleterIhEclEPKh.exit.i.i.i:           ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #22
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %_ZN13array_deleterIhEclEPKh.exit.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #23
  unreachable

bb.g:                                             ; preds = %_ZN13array_deleterIhEclEPKh.exit.i.i.i
  unreachable

_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EEC2Ih13array_deleterIhEvEEPT_T0_.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.i, align 8, !tbaa !128
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.j, align 4, !tbaa !129
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPh13array_deleterIhESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.k, align 8, !tbaa !130
  store ptr %1, ptr %0, align 8, !tbaa !131
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !132  ; 8 uses
  store ptr %i.a, ptr %i.l, align 8, !tbaa !132
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EEC2Ih13array_deleterIhEvEEPT_T0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.n, align 8, !tbaa !128
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !129
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #19, !call_target !40, !inline_history !126
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #19, !call_target !54, !inline_history !126
  br label %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !99
  %.not.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.k ], [ %i.aa, %bb.l ]
  %i.ab = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ab, label %bb.m, label %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !133

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #19
  br label %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EEC2Ih13array_deleterIhEvEEPT_T0_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define range(i32 0, 9) i32 @dt_imageio_open_exr(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Imf_3_1::Name", align 1     ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 8 uses
  %4 = alloca %"class.Imf_3_1::FrameBuffer", align 8 ; 18 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"struct.Imf_3_1::Slice", align 8   ; 5 uses
  %7 = alloca %"struct.Imf_3_1::Slice", align 8   ; 5 uses
  %8 = alloca %"struct.Imf_3_1::Slice", align 8   ; 5 uses
  %9 = alloca %"struct.Imf_3_1::Slice", align 8   ; 5 uses
  %10 = alloca %"struct.Imf_3_1::Chromaticities", align 8 ; 10 uses
  %11 = alloca %"class.Imath_3_1::Vec2.29", align 8 ; 5 uses
  %12 = alloca %"class.Imath_3_1::Vec2.29", align 8 ; 5 uses
  %13 = alloca %"class.Imath_3_1::Vec2.29", align 8 ; 5 uses
  %14 = alloca %"class.Imath_3_1::Vec2.29", align 8 ; 5 uses
  %15 = alloca %struct.cmsCIExyY, align 16        ; 8 uses
  %16 = alloca %struct.cmsCIEXYZ, align 8         ; 5 uses
  %17 = alloca %struct.cmsCIExyY, align 16        ; 8 uses
  %18 = alloca %struct.cmsCIEXYZ, align 8         ; 5 uses
  %19 = alloca %struct.cmsCIExyY, align 16        ; 8 uses
  %20 = alloca %struct.cmsCIEXYZ, align 8         ; 5 uses
  %21 = alloca %struct.cmsCIExyY, align 16        ; 6 uses
  %22 = alloca %struct.cmsCIEXYZ, align 8         ; 7 uses
  %23 = alloca %struct.cmsCIExyY, align 8         ; 5 uses
  %24 = alloca %struct.cmsCIEXYZ, align 8         ; 7 uses
  %25 = alloca %struct.cmsCIEXYZ, align 8         ; 5 uses
  %26 = alloca %struct.cmsCIEXYZ, align 8         ; 5 uses
  %27 = alloca %struct.cmsCIEXYZ, align 8         ; 5 uses
  %28 = alloca %"class.Imath_3_1::Matrix44", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i8 0, ptr %i.b, align 1, !tbaa !141
  tail call void @_ZN7Imf_3_120setGlobalThreadCountEi(i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !142
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !105
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.c, ptr %i.e, align 8, !tbaa !143
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.c, ptr %i.f, align 8, !tbaa !144
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.g, align 8, !tbaa !145
  %i.h = invoke noundef zeroext i1 @_ZN7Imf_3_113isOpenExrFileEPKcRb(ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.b unwind label %bb.ca

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.ei

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.b, align 1, !tbaa !141, !range !146, !noundef !87
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20
          to label %bb.e unwind label %bb.k       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.l = invoke noundef i32 @_ZN7Imf_3_117globalThreadCountEv()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7Imf_3_114TiledInputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef %1, i32 noundef %i.l)
          to label %_ZNSt10unique_ptrIN7Imf_3_114TiledInputFileESt14default_deleteIS1_EED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 16) #21
  br label %bb.m

bb.h:                                             ; preds = %bb.c
  %i.n = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20
          to label %bb.i unwind label %bb.k       ; 3 uses

bb.i:                                             ; preds = %bb.h
  %i.o = invoke noundef i32 @_ZN7Imf_3_117globalThreadCountEv()
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN7Imf_3_19InputFileC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef %1, i32 noundef %i.o)
          to label %_ZNSt10unique_ptrIN7Imf_3_114TiledInputFileESt14default_deleteIS1_EED2Ev.exit unwind label %bb.l

bb.k:                                             ; preds = %bb.d, %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.i
  %29 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 16) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.g
  %.pn154.pn = phi { ptr, i32 } [ %i.p, %bb.k ], [ %i.m, %bb.g ], [ %29, %bb.l ] ; 3 uses
  %.2 = extractvalue { ptr, i32 } %.pn154.pn, 1
  %i.q = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #19
  %i.r = icmp eq i32 %.2, %i.q
  br i1 %i.r, label %bb.n, label %_ZNSt10unique_ptrIN7Imf_3_19InputFileESt14default_deleteIS1_EED2Ev.exit200.thread

_ZNSt10unique_ptrIN7Imf_3_19InputFileESt14default_deleteIS1_EED2Ev.exit200.thread: ; preds = %bb.m
  call void @_ZN7Imf_3_111FrameBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZNSt10unique_ptrIN7Imf_3_114TiledInputFileESt14default_deleteIS1_EED2Ev.exit203

bb.n:                                             ; preds = %bb.m
  %.2129 = extractvalue { ptr, i32 } %.pn154.pn, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %.2129) #19 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.ei unwind label %bb.ca

_ZNSt10unique_ptrIN7Imf_3_114TiledInputFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.j, %bb.f
  %.sroa.0217.0 = phi ptr [ null, %bb.f ], [ %i.n, %bb.j ] ; 49 uses
  %.sroa.0223.0 = phi ptr [ %i.k, %bb.f ], [ null, %bb.j ] ; 51 uses
  %i.t = load i8, ptr %i.b, align 1, !tbaa !141, !range !146, !noundef !87
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt10unique_ptrIN7Imf_3_114TiledInputFileESt14default_deleteIS1_EED2Ev.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_114TiledInputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0223.0)
          to label %bb.q unwind label %bb.ca

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN7Imf_3_114TiledInputFileESt14default_deleteIS1_EED2Ev.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_19InputFile6headerEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0217.0)
          to label %bb.q unwind label %bb.ca

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.x = phi ptr [ %i.v, %bb.o ], [ %i.w, %bb.p ] ; 29 uses
  %i.y = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_16Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.x)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.z = invoke ptr @_ZNK7Imf_3_111ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.y)
          to label %.preheader261 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader261:                                    ; preds = %bb.r
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.preheader261, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  %.sroa.0205.0 = phi ptr [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ %i.z, %.preheader261 ] ; 3 uses
  %.0123 = phi i1 [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ false, %.preheader261 ] ; 3 uses
  %.0121 = phi i1 [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ false, %.preheader261 ] ; 3 uses
  %.0120 = phi i1 [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190 ], [ false, %.preheader261 ] ; 3 uses
  %i.ac = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK7Imf_3_16Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49) %i.x)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.ad = invoke ptr @_ZNK7Imf_3_111ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ac)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %.not258 = icmp eq ptr %.sroa.0205.0, %i.ad
  br i1 %.not258, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %or.cond = select i1 %.0123, i1 %.0121, i1 false
  %or.cond3 = select i1 %or.cond, i1 %.0120, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.ab

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %bb.s, %bb.q, %bb.r
  %lpad.loopexit.split-lp300 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0205.0, i64 32 ; 3 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !148
  %i.af = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.af, ptr %i.a, align 8, !tbaa !149
  %i.ag = icmp ugt i64 %i.af, 15
  br i1 %i.ag, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.w
  %i.ah = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.aa    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ah, ptr %5, align 8, !tbaa !151
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !149
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !99
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.w
  %i.aj = phi ptr [ %i.ah, %.noexc ], [ %i.aa, %bb.w ] ; 2 uses
  switch i64 %i.af, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %._crit_edge.i.i
  %i.ak = load i8, ptr %i.ae, align 1, !tbaa !99
  store i8 %i.ak, ptr %i.aj, align 1, !tbaa !99
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr nonnull align 1 %i.ae, i64 %i.af, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge.i.i
  %i.al = load i64, ptr %i.a, align 8, !tbaa !149 ; 2 uses
  store i64 %i.al, ptr %i.ab, align 8, !tbaa !152
  %i.am = load ptr, ptr %5, align 8, !tbaa !151
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i8 0, ptr %i.an, align 1, !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ao = load i64, ptr %i.ab, align 8, !tbaa !152 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 1
  %.pre = load ptr, ptr %5, align 8, !tbaa !151   ; 3 uses
  br i1 %i.ap, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit187.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.z
  %lhsc = load i8, ptr %.pre, align 1
  %lhsc.fr = freeze i8 %lhsc                      ; 3 uses
  %i.aq = icmp eq i8 %lhsc.fr, 82
  %spec.select = select i1 %i.aq, i1 true, i1 %.0123
  %i.ar = icmp eq i8 %lhsc.fr, 71
  %.ph235 = select i1 %i.ar, i1 true, i1 %.0121
  %i.as = icmp eq i8 %lhsc.fr, 66
  %spec.select257 = select i1 %i.as, i1 true, i1 %.0120
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit187.thread

bb.aa:                                            ; preds = %.noexc.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.loopexit.split-lp

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit187.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.z
  %i.au = phi i1 [ %.0123, %bb.z ], [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.av = phi i1 [ %.0121, %bb.z ], [ %.ph235, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.aw = phi i1 [ %.0120, %bb.z ], [ %spec.select257, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.ax = icmp eq ptr %.pre, %i.aa
  br i1 %i.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i189: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit187.thread
  %i.ay = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ay)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit187.thread
  %i.az = load i64, ptr %i.aa, align 8, !tbaa !99
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ba) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.bb = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0205.0) #24
  br label %bb.s, !llvm.loop !134

bb.ab:                                            ; preds = %bb.v
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1124
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.bc)
          to label %bb.ei unwind label %bb.ca

bb.ac:                                            ; preds = %bb.v
  %i.bd = load i32, ptr %0, align 16, !tbaa !174
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %bb.ad, label %bb.bw

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.be = call ptr @strncpy(ptr noundef nonnull align 1 dereferenceable(256) %3, ptr noundef nonnull dereferenceable(5) @.str.5, i64 noundef 255) #19 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 255
  store i8 0, ptr %i.bf, align 1, !tbaa !99
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !105 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not10.i.i.i.i, label %_ZNKSt3mapIN7Imf_3_14NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ad, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bh, %bb.ad ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.bi, %bb.ad ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bk = call i32 @strcmp(ptr noundef nonnull align 1 dereferenceable(256) %i.bj, ptr noundef nonnull align 1 dereferenceable(256) %3) #24
  %i.bl = icmp slt i32 %i.bk, 0                   ; 2 uses
  %.19.i.i.i.i = select i1 %i.bl, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.bl, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !175 ; 2 uses
  %.not.i.i.i.i191 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i191, label %_ZNKSt8_Rb_treeIN7Imf_3_14NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !135

_ZNKSt8_Rb_treeIN7Imf_3_14NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bm = icmp eq ptr %.19.i.i.i.i, %i.bi
  br i1 %i.bm, label %_ZNKSt3mapIN7Imf_3_14NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i, label %_ZNKSt3mapIN7Imf_3_14NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i

_ZNKSt3mapIN7Imf_3_14NameEPNS0_9AttributeESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i: ; preds = %_ZNKSt8_Rb_treeIN7Imf_3_14NameESt4pairIKS1_PNS0_9AttributeEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZNK7Imf_3_16Header18findTypedAttributeINS_14TypedAttributeINS_4BlobEEEEEPKT_PKc.exit.thread
end_hunk_0
