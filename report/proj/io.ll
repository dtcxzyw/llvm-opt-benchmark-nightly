Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/io?download=true
inline.NumInlined: 17817
inline.NumDeleted: 4455
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESaIS9_EEC2ESt16initializer_listIS9_ERKSA_:_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESaIS9_EE17_S_check_init_lenEmRKSA_.exit.i
bb.a:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.j, align 4, !tbaa !213
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !213
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.a
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.a
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2164

.loopexit:                                        ; preds = %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESaIS9_EE11_M_allocateEm.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESaIS9_EE11_M_allocateEm.exit.thread.i ], [ %i.p, %_ZSt10_ConstructIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.q, align 8, !tbaa !617
  ret void

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %0, align 8, !tbaa !619    ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.s, null
  br i1 %.not.i.i4, label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESaIS9_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !618
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #44
  br label %_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESaIS9_EED2Ev.exit

_ZNSt12_Vector_baseIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEESaIS9_EED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io16PROJStringParser7Private17buildProjectedCRSEiRKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs11GeodeticCRSEEEEii(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.dropbox::oxygen::nn.405") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(169) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %7 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 8 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %i.m = alloca i8, align 1                       ; 3 uses
  %i.n = alloca i8, align 1                       ; 3 uses
  %i.o = alloca i8, align 1                       ; 3 uses
  %i.p = alloca i8, align 1                       ; 3 uses
  %i.q = alloca i8, align 1                       ; 3 uses
  %i.r = alloca i8, align 1                       ; 3 uses
  %i.s = alloca i8, align 1                       ; 3 uses
  %i.t = alloca i8, align 1                       ; 3 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %i.v = alloca i64, align 8                      ; 6 uses
  %i.w = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.std::vector.785", align 8  ; 10 uses
  %11 = alloca %"class.std::vector.702", align 8  ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.dropbox::oxygen::nn.190", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %16 = alloca %"struct.osgeo::proj::io::Step::KeyValue", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::allocator", align 1   ; 4 uses
  %19 = alloca %"struct.osgeo::proj::io::Step::KeyValue", align 8 ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::allocator", align 1   ; 4 uses
  %22 = alloca %"struct.osgeo::proj::io::Step::KeyValue", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.osgeo::proj::common::UnitOfMeasure", align 8 ; 14 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.osgeo::proj::common::UnitOfMeasure", align 8 ; 7 uses
  %29 = alloca %"class.osgeo::proj::common::UnitOfMeasure", align 8 ; 7 uses
  %30 = alloca %"class.std::shared_ptr.410", align 16 ; 14 uses
  %31 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 8 uses
  %32 = alloca %"class.dropbox::oxygen::nn.409", align 16 ; 5 uses
  %33 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 10 uses
  %34 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %35 = alloca %"class.std::vector.457", align 8  ; 13 uses
  %36 = alloca %"class.std::vector.466", align 8  ; 13 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %40 = alloca %"class.osgeo::proj::common::Angle", align 8 ; 6 uses
  %41 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 10 uses
  %42 = alloca %"class.dropbox::oxygen::nn.462", align 16 ; 9 uses
  %43 = alloca %"class.osgeo::proj::common::Length", align 8 ; 6 uses
  %44 = alloca %"class.dropbox::oxygen::nn.471", align 16 ; 9 uses
  %45 = alloca %"class.osgeo::proj::common::Measure", align 8 ; 7 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %48 = alloca %"class.dropbox::oxygen::nn.409", align 16 ; 7 uses
  %49 = alloca %"class.std::vector.457", align 8  ; 18 uses
  %50 = alloca %"class.std::vector.466", align 8  ; 20 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %56 = alloca %"class.dropbox::oxygen::nn.462", align 16 ; 9 uses
  %57 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %58 = alloca %"class.dropbox::oxygen::nn.471", align 16 ; 9 uses
  %59 = alloca %"class.osgeo::proj::common::Measure", align 8 ; 7 uses
  %60 = alloca %"class.dropbox::oxygen::nn.471", align 16 ; 9 uses
  %61 = alloca %"class.osgeo::proj::common::Measure", align 8 ; 7 uses
  %62 = alloca %"class.dropbox::oxygen::nn.471", align 16 ; 9 uses
  %63 = alloca %"class.osgeo::proj::common::Measure", align 8 ; 7 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %65 = alloca %"class.dropbox::oxygen::nn.409", align 16 ; 7 uses
  %66 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %67 = alloca %"class.std::shared_ptr.22", align 8 ; 20 uses
  %68 = alloca %"class.dropbox::oxygen::nn.449", align 8 ; 7 uses
  %69 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %70 = alloca %"class.dropbox::oxygen::nn.347", align 8 ; 7 uses
  %71 = alloca %"class.dropbox::oxygen::nn.383", align 8 ; 8 uses
  %72 = alloca %"class.dropbox::oxygen::nn.409", align 16 ; 7 uses
  %73 = alloca %"class.dropbox::oxygen::nn.306", align 8 ; 7 uses
  %74 = alloca %"class.std::vector.322", align 8  ; 10 uses
  %75 = alloca %"class.dropbox::oxygen::nn.298", align 8 ; 7 uses
  %76 = alloca %"class.dropbox::oxygen::nn.302", align 16 ; 11 uses
  %77 = alloca %"class.dropbox::oxygen::nn.302", align 16 ; 7 uses
  %78 = alloca %"class.dropbox::oxygen::nn.292", align 8 ; 7 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %81 = alloca %"class.dropbox::oxygen::nn.292", align 8 ; 7 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %84 = alloca %"class.dropbox::oxygen::nn.292", align 8 ; 7 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %87 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 10 uses
  %88 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %90 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %92 = alloca %"class.dropbox::oxygen::nn.580", align 8 ; 8 uses
  %93 = alloca %"class.dropbox::oxygen::nn.409", align 16 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  %i.y = sext i32 %2 to i64
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !577
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %i.z, i64 %i.y ; 122 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  call void @_ZN5osgeo4proj9operation23getMappingsFromPROJNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.785") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
  %i.ab = load ptr, ptr %10, align 8, !tbaa !599  ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !599 ; 3 uses
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !2203
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ag = phi ptr [ %i.af, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = ptrtoint ptr %i.ab to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp ugt i64 %i.aj, 8
  br i1 %i.ak, label %.preheader, label %bb.z

.preheader:                                       ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.thread1569
  %.04351858 = phi i1 [ true, %.preheader ], [ %spec.select, %.thread1569 ]
  %.04381857 = phi i1 [ false, %.preheader ], [ %.34411575, %.thread1569 ] ; 8 uses
  %.04441856 = phi ptr [ %i.ag, %.preheader ], [ %.34471574, %.thread1569 ] ; 8 uses
  %.sroa.01545.01855 = phi ptr [ %i.ab, %.preheader ], [ %i.eo, %.thread1569 ] ; 2 uses
  %i.av = load ptr, ptr %.sroa.01545.01855, align 8, !tbaa !2203 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2204 ; 4 uses
  %i.ay = icmp ne ptr %i.ax, null                 ; 2 uses
  %spec.select = select i1 %i.ay, i1 %.04351858, i1 false ; 2 uses
  br i1 %i.ay, label %bb.e, label %.thread1569

bb.e:                                             ; preds = %bb.d
  %i.az = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.ax, i32 noundef 61) #45
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.f, label %_ZN5osgeo4proj2io16PROJStringParser7Private13hasParamValueIPKcEEbRNS1_4StepET_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bb = load ptr, ptr %i.al, align 8, !tbaa !582 ; 2 uses
  %i.bc = load ptr, ptr %i.am, align 8, !tbaa !582 ; 2 uses
  %.not36.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not36.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.critedge.i
  %.sroa.027.037.i = phi ptr [ %i.be, %.critedge.i ], [ %i.bb, %bb.f ] ; 3 uses
  %i.bd = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.027.037.i, ptr noundef nonnull %i.ax) #41
  br i1 %i.bd, label %.thread1576, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.027.037.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %i.be, %i.bc
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.f
  %i.bf = load ptr, ptr %i.an, align 8, !tbaa !582 ; 2 uses
  %i.bg = load ptr, ptr %i.ao, align 8, !tbaa !582 ; 2 uses
  %.not3338.i = icmp eq ptr %i.bf, %i.bg
  br i1 %.not3338.i, label %_ZN5osgeo4proj2io16PROJStringParser7Private13hasParamValueIPKcEEbRNS1_4StepET_.exit.thread, label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %._crit_edge.i, %.critedge22.i
  %.sroa.023.039.i = phi ptr [ %i.bi, %.critedge22.i ], [ %i.bf, %._crit_edge.i ] ; 3 uses
  %i.bh = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.023.039.i, ptr noundef nonnull %i.ax) #41
  br i1 %i.bh, label %.thread1576, label %.critedge22.i

.critedge22.i:                                    ; preds = %.lr.ph41.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.023.039.i, i64 72 ; 2 uses
  %.not33.i = icmp eq ptr %i.bi, %i.bg
  br i1 %.not33.i, label %_ZN5osgeo4proj2io16PROJStringParser7Private13hasParamValueIPKcEEbRNS1_4StepET_.exit.thread, label %.lr.ph41.i

.thread1576:                                      ; preds = %.lr.ph.i, %.lr.ph41.i
  %.sroa.023.039.lcssa.sink.i = phi ptr [ %.sroa.023.039.i, %.lr.ph41.i ], [ %.sroa.027.037.i, %.lr.ph.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.023.039.lcssa.sink.i, i64 64
  store i8 1, ptr %i.bj, align 8, !tbaa !584
  br label %.loopexit1710

_ZN5osgeo4proj2io16PROJStringParser7Private13hasParamValueIPKcEEbRNS1_4StepET_.exit.thread: ; preds = %.critedge22.i, %._crit_edge.i, %bb.e
  %.pr = load ptr, ptr %i.aw, align 8, !tbaa !2204 ; 5 uses
  %.not472 = icmp eq ptr %.pr, null
  br i1 %.not472, label %.thread1569, label %bb.g

bb.g:                                             ; preds = %_ZN5osgeo4proj2io16PROJStringParser7Private13hasParamValueIPKcEEbRNS1_4StepET_.exit.thread
  %i.bk = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.pr, i32 noundef 61) #45
  %.not473 = icmp eq ptr %i.bk, null
  br i1 %.not473, label %.thread1569, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  store ptr %i.ap, ptr %12, align 8, !tbaa !160
  %i.bl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.pr) #41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #41
  store i64 %i.bl, ptr %i.w, align 8, !tbaa !165
  %i.bm = icmp ugt i64 %i.bl, 15
  br i1 %i.bm, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.h
  %i.bn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.w, i64 noundef 0)
          to label %.noexc640 unwind label %bb.v  ; 2 uses

.noexc640:                                        ; preds = %.noexc.i
  store ptr %i.bn, ptr %12, align 8, !tbaa !163
  %i.bo = load i64, ptr %i.w, align 8, !tbaa !165
  store i64 %i.bo, ptr %i.ap, align 8, !tbaa !166
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc640, %bb.h
  %i.bp = phi ptr [ %i.bn, %.noexc640 ], [ %i.ap, %bb.h ] ; 2 uses
  switch i64 %i.bl, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bq = load i8, ptr %.pr, align 1, !tbaa !166
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !166
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr nonnull align 1 %.pr, i64 %i.bl, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i
  %i.br = load i64, ptr %i.w, align 8, !tbaa !165 ; 2 uses
  store i64 %i.br, ptr %i.aq, align 8, !tbaa !164
  %i.bs = load ptr, ptr %12, align 8, !tbaa !163
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  store i8 0, ptr %i.bt, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #41
  invoke void @_ZN5osgeo4proj8internal5splitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.702") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, i8 noundef signext 61)
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.bu = load ptr, ptr %12, align 8, !tbaa !163  ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.ap
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bw = load i64, ptr %i.ap, align 8, !tbaa !166
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  %i.by = load ptr, ptr %i.ar, align 8, !tbaa !664
  %i.bz = load ptr, ptr %11, align 8, !tbaa !665  ; 3 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = icmp eq i64 %i.cc, 64
  br i1 %i.cd, label %bb.m, label %.thread1563

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.as, ptr %13, align 8, !tbaa !160
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !163 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !164 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #41
  store i64 %i.cg, ptr %i.v, align 8, !tbaa !165
  %i.ch = icmp ugt i64 %i.cg, 15
  br i1 %i.ch, label %.noexc.i642, label %._crit_edge.i.i641

.noexc.i642:                                      ; preds = %bb.m
  %i.ci = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef 0)
          to label %.noexc643 unwind label %bb.x  ; 2 uses

.noexc643:                                        ; preds = %.noexc.i642
  store ptr %i.ci, ptr %13, align 8, !tbaa !163
  %i.cj = load i64, ptr %i.v, align 8, !tbaa !165
  store i64 %i.cj, ptr %i.as, align 8, !tbaa !166
  br label %._crit_edge.i.i641

._crit_edge.i.i641:                               ; preds = %.noexc643, %bb.m
  %i.ck = phi ptr [ %i.ci, %.noexc643 ], [ %i.as, %bb.m ] ; 2 uses
  switch i64 %i.cg, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i641
  %i.cl = load i8, ptr %i.ce, align 1, !tbaa !166
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !166
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i641
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr align 1 %i.ce, i64 %i.cg, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i641
  %i.cm = load i64, ptr %i.v, align 8, !tbaa !165 ; 2 uses
  store i64 %i.cm, ptr %i.at, align 8, !tbaa !164
  %i.cn = load ptr, ptr %13, align 8, !tbaa !163
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cm
  store i8 0, ptr %i.co, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #41
  %i.cp = load ptr, ptr %i.al, align 8, !tbaa !582 ; 2 uses
  %i.cq = load ptr, ptr %i.am, align 8, !tbaa !582 ; 2 uses
  %.not41.i = icmp eq ptr %i.cp, %i.cq
  br i1 %.not41.i, label %._crit_edge.i646, label %.lr.ph.i644

.lr.ph.i644:                                      ; preds = %bb.p, %bb.q
  %.sroa.025.042.i = phi ptr [ %i.cs, %bb.q ], [ %i.cp, %bb.p ] ; 3 uses
  %i.cr = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.025.042.i, ptr noundef nonnull align 8 dereferenceable(32) %13) #41
  br i1 %i.cr, label %.loopexit.sink.split.i648, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i644
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.025.042.i, i64 72 ; 2 uses
  %.not.i645 = icmp eq ptr %i.cs, %i.cq
  br i1 %.not.i645, label %._crit_edge.i646, label %.lr.ph.i644

._crit_edge.i646:                                 ; preds = %bb.q, %bb.p
  %i.ct = load ptr, ptr %i.an, align 8, !tbaa !582 ; 2 uses
  %i.cu = load ptr, ptr %i.ao, align 8, !tbaa !582 ; 2 uses
  %.not3843.i = icmp eq ptr %i.ct, %i.cu
  br i1 %.not3843.i, label %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKSA_RNS1_4StepET_.exit, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %._crit_edge.i646, %bb.r
  %.sroa.021.044.i = phi ptr [ %i.cw, %bb.r ], [ %i.ct, %._crit_edge.i646 ] ; 3 uses
  %i.cv = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.021.044.i, ptr noundef nonnull align 8 dereferenceable(32) %13) #41
  br i1 %i.cv, label %.loopexit.sink.split.i648, label %bb.r

bb.r:                                             ; preds = %.lr.ph46.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.021.044.i, i64 72 ; 2 uses
  %.not38.i = icmp eq ptr %i.cw, %i.cu
  br i1 %.not38.i, label %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKSA_RNS1_4StepET_.exit, label %.lr.ph46.i

.loopexit.sink.split.i648:                        ; preds = %.lr.ph.i644, %.lr.ph46.i
  %.sroa.021.044.lcssa.sink56.i = phi ptr [ %.sroa.021.044.i, %.lr.ph46.i ], [ %.sroa.025.042.i, %.lr.ph.i644 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.021.044.lcssa.sink56.i, i64 64
  store i8 1, ptr %i.cx, align 8, !tbaa !584
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.021.044.lcssa.sink56.i, i64 32
  br label %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKSA_RNS1_4StepET_.exit

_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKSA_RNS1_4StepET_.exit: ; preds = %bb.r, %._crit_edge.i646, %.loopexit.sink.split.i648
  %.6.i647 = phi ptr [ @_ZL11emptyStringB5cxx11, %._crit_edge.i646 ], [ %i.cy, %.loopexit.sink.split.i648 ], [ @_ZL11emptyStringB5cxx11, %bb.r ] ; 2 uses
  %i.cz = load ptr, ptr %11, align 8, !tbaa !665  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %.6.i647, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !164 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !164
  %i.df = icmp eq i64 %i.dc, %i.de
  br i1 %i.df, label %bb.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.s:                                             ; preds = %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKSA_RNS1_4StepET_.exit
  %i.dg = icmp eq i64 %i.dc, 0
  br i1 %i.dg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dh = load ptr, ptr %i.da, align 8, !tbaa !163
  %i.di = load ptr, ptr %.6.i647, align 8, !tbaa !163
  %bcmp.i = call i32 @bcmp(ptr %i.di, ptr %i.dh, i64 %i.dc)
  %bcmp.i.fr = freeze i32 %bcmp.i
  %i.dj = icmp eq i32 %bcmp.i.fr, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.s, %bb.t
  %cond.fr15551557 = phi i1 [ true, %bb.s ], [ %i.dj, %bb.t ] ; 2 uses
  %i.dk = load ptr, ptr %13, align 8, !tbaa !163  ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.as
  br i1 %i.dl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i650, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKSA_RNS1_4StepET_.exit
  %i.dm = load ptr, ptr %13, align 8, !tbaa !163  ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.as
  br i1 %i.dn, label %.thread1563, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.do = load i64, ptr %i.as, align 8, !tbaa !166
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #44
  br label %.thread1563

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i650: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  br i1 %cond.fr15551557, label %.split1565, label %.thread1563

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.dq = load i64, ptr %i.as, align 8, !tbaa !166
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dr) #44
  br i1 %cond.fr15551557, label %.split1565, label %.thread1563

.split1565:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i650, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649
  br label %.thread1563

.thread1563:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i650, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.split1565
  %i.ds = phi i1 [ true, %.split1565 ], [ %.04381857, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.04381857, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649 ], [ %.04381857, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i650 ], [ %.04381857, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649.thread ], [ %.04381857, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ] ; 2 uses
  %.not1647 = phi i1 [ false, %.split1565 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649 ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i650 ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649.thread ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ]
  %i.dt = phi ptr [ %i.av, %.split1565 ], [ %.04441856, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.04441856, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649 ], [ %.04441856, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i650 ], [ %.04441856, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649.thread ], [ %.04441856, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ] ; 2 uses
  %i.du = load ptr, ptr %11, align 8, !tbaa !665  ; 3 uses
  %i.dv = load ptr, ptr %i.ar, align 8, !tbaa !664 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.du, %i.dv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.thread1563, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.eb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.du, %.thread1563 ] ; 3 uses
  %i.dw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !163 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !166
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #44
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.eb, %i.dv
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !124

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %11, align 8, !tbaa !665
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %.thread1563
  %i.ec = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.du, %.thread1563 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ed = load ptr, ptr %i.au, align 8, !tbaa !696
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.ec to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.eg) #44
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br i1 %.not1647, label %.thread1569, label %.loopexit1710

bb.v:                                             ; preds = %.noexc.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654

bb.w:                                             ; preds = %bb.k
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ej = load ptr, ptr %12, align 8, !tbaa !163  ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.ap
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652: ; preds = %bb.w
  %i.el = load i64, ptr %i.ap, align 8, !tbaa !166
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652, %bb.v
  %.pn = phi { ptr, i32 } [ %i.eh, %bb.v ], [ %i.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652 ], [ %i.ei, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br label %bb.y

bb.x:                                             ; preds = %.noexc.i642
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #41
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654
  %.pn475 = phi { ptr, i32 } [ %i.en, %bb.x ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br label %bb.abt

.thread1569:                                      ; preds = %bb.d, %bb.g, %_ZN5osgeo4proj2io16PROJStringParser7Private13hasParamValueIPKcEEbRNS1_4StepET_.exit.thread, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.34411575 = phi i1 [ %.04381857, %bb.d ], [ %i.ds, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ %.04381857, %_ZN5osgeo4proj2io16PROJStringParser7Private13hasParamValueIPKcEEbRNS1_4StepET_.exit.thread ], [ %.04381857, %bb.g ] ; 2 uses
  %.34471574 = phi ptr [ %.04441856, %bb.d ], [ %i.dt, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ %.04441856, %_ZN5osgeo4proj2io16PROJStringParser7Private13hasParamValueIPKcEEbRNS1_4StepET_.exit.thread ], [ %.04441856, %bb.g ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.01545.01855, i64 8 ; 2 uses
  %.not1651 = icmp eq ptr %i.eo, %i.ad
  br i1 %.not1651, label %.loopexit1710, label %bb.d

.loopexit1710:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %.thread1569, %.thread1576
  %.4448 = phi ptr [ %i.av, %.thread1576 ], [ %.34471574, %.thread1569 ], [ %i.dt, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ]
  %.4442 = phi i1 [ true, %.thread1576 ], [ %.34411575, %.thread1569 ], [ %i.ds, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  %.not = xor i1 %spec.select, true
  %or.cond = select i1 %.not, i1 true, i1 %.4442
  %spec.select610 = select i1 %or.cond, ptr %.4448, ptr null
  br label %bb.z

bb.z:                                             ; preds = %.loopexit1710, %bb.c
  %.6450 = phi ptr [ %spec.select610, %.loopexit1710 ], [ %i.ag, %bb.c ] ; 3 uses
  %.5443 = phi i1 [ %.4442, %.loopexit1710 ], [ false, %bb.c ]
  %i.ep = icmp eq ptr %.6450, null
  %or.cond8 = select i1 %i.ep, i1 true, i1 %.5443
  br i1 %or.cond8, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val633 = load ptr, ptr %3, align 8
  %i.eq = call fastcc noundef ptr @_ZN5osgeo4proj2ioL28selectSphericalOrEllipsoidalEPKNS0_9operation13MethodMappingERKN7dropbox6oxygen2nnISt10shared_ptrINS0_3crs11GeodeticCRSEEEE(ptr noundef nonnull %.6450, ptr %.val633)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.7451 = phi ptr [ %.6450, %bb.z ], [ %i.eq, %bb.aa ] ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 136
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  invoke void @_ZN5osgeo4proj2io16PROJStringParser7Private18buildPrimeMeridianERNS1_4StepE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.190") align 8 %14, ptr noundef nonnull align 8 dereferenceable(169) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.aa)
          to label %bb.ac unwind label %bb.am

bb.ac:                                            ; preds = %bb.ab
  %i.es = load ptr, ptr %14, align 8, !tbaa !354
  %i.et = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj5datum13PrimeMeridian9longitudeEv(ptr noundef nonnull align 8 dereferenceable(64) %i.es) #45
  %i.eu = load ptr, ptr %3, align 8, !tbaa !440
  %i.ev = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5osgeo4proj3crs11GeodeticCRS13primeMeridianEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eu) #45
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !354
  %i.ex = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5osgeo4proj5datum13PrimeMeridian9longitudeEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ew) #45
  %i.ey = invoke noundef zeroext i1 @_ZNK5osgeo4proj6common7Measure15_isEquivalentToERKS2_NS0_4util11IComparable9CriterionEd(ptr noundef nonnull align 8 dereferenceable(24) %i.et, ptr noundef nonnull align 8 dereferenceable(24) %i.ex, i32 noundef 1, double noundef 1.000000e-10)
          to label %bb.ad unwind label %bb.an

bb.ad:                                            ; preds = %bb.ac
  %i.ez = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !209 ; 8 uses
  %.not.i.i.i655 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i655, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 4 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967297
  %i.fe = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.fb, align 8, !tbaa !211
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  store i32 0, ptr %i.ff, align 4, !tbaa !212
  %i.fg = load ptr, ptr %i.fa, align 8, !tbaa !156
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #41, !inline_history !33
  %i.fj = load ptr, ptr %i.fa, align 8, !tbaa !156
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #41, !inline_history !33
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fn = add nsw i32 %i.fe, -1
  store i32 %i.fn, ptr %i.fb, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.fo = atomicrmw volatile add ptr %i.fb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i = phi i32 [ %i.fe, %bb.ah ], [ %i.fo, %bb.ai ]
  %i.fp = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fp, label %bb.aj, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit, !prof !214

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fa) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit: ; preds = %bb.ad, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br i1 %i.ey, label %.noexc.i658, label %bb.ak

bb.ak:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit
  %i.fq = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.fq, ptr noundef nonnull @.str.541)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.fq, align 8, !tbaa !156
  invoke void @__cxa_throw(ptr nonnull %i.fq, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.abw unwind label %bb.aq

bb.am:                                            ; preds = %bb.ab
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.ac
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #41
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn477 = phi { ptr, i32 } [ %i.fs, %bb.an ], [ %i.fr, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %bb.abt

bb.ap:                                            ; preds = %bb.ak
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fq) #41
  br label %bb.abt

bb.aq:                                            ; preds = %bb.al
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.abt

.noexc.i658:                                      ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj5datum13PrimeMeridianEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  %i.fv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.fv, ptr %15, align 8, !tbaa !160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #41
  store i64 24, ptr %i.u, align 8, !tbaa !165
  %i.fw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef 0)
          to label %.noexc659 unwind label %bb.aw ; 2 uses

.noexc659:                                        ; preds = %.noexc.i658
  store ptr %i.fw, ptr %15, align 8, !tbaa !163
  %i.fx = load i64, ptr %i.u, align 8, !tbaa !165 ; 3 uses
  store i64 %i.fx, ptr %i.fv, align 8, !tbaa !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fw, ptr noundef nonnull align 1 dereferenceable(24) @.str.542, i64 24, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !164
  %i.fz = load ptr, ptr %15, align 8, !tbaa !163
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fx
  store i8 0, ptr %i.ga, align 1, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #41
  %i.gb = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 10 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !164 ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 5
  br i1 %i.gd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread1581

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.noexc659
  %i.ge = load ptr, ptr %i.aa, align 8, !tbaa !163 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 1
  %i.gg = xor i32 %i.gf, 1919249780
  %i.gh = getelementptr i8, ptr %i.ge, i64 4
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = zext i8 %i.gi to i32
  %i.gk = xor i32 %i.gj, 99
  %i.gl = or i32 %i.gg, %i.gk
  %i.gm = icmp ne i32 %i.gl, 0
  %i.gn = zext i1 %i.gm to i32
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %thread-pre-split1584

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !582 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !582 ; 2 uses
  %.not43.i = icmp eq ptr %i.gq, %i.gs
  br i1 %.not43.i, label %._crit_edge.i664, label %.lr.ph.i662

.lr.ph.i662:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.ar
  %.sroa.027.044.i = phi ptr [ %i.gu, %bb.ar ], [ %i.gq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 3 uses
  %i.gt = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.027.044.i, ptr noundef nonnull @.str.391) #41
  br i1 %i.gt, label %.loopexit.sink.split.i666, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i662
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.027.044.i, i64 72 ; 2 uses
  %.not.i663 = icmp eq ptr %i.gu, %i.gs
  br i1 %.not.i663, label %._crit_edge.i664, label %.lr.ph.i662

._crit_edge.i664:                                 ; preds = %bb.ar, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.gv = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !582 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !582 ; 2 uses
  %.not4045.i = icmp eq ptr %i.gw, %i.gy
  br i1 %.not4045.i, label %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueIPKcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_4StepET_.exit, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %._crit_edge.i664, %bb.as
  %.sroa.023.046.i = phi ptr [ %i.ha, %bb.as ], [ %i.gw, %._crit_edge.i664 ] ; 3 uses
  %i.gz = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.023.046.i, ptr noundef nonnull @.str.391) #41
  br i1 %i.gz, label %.loopexit.sink.split.i666, label %bb.as

bb.as:                                            ; preds = %.lr.ph48.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.023.046.i, i64 72 ; 2 uses
  %.not40.i = icmp eq ptr %i.ha, %i.gy
  br i1 %.not40.i, label %_ZN5osgeo4proj2io16PROJStringParser7Private13getParamValueIPKcEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS1_4StepET_.exit, label %.lr.ph48.i

.loopexit.sink.split.i666:                        ; preds = %.lr.ph.i662, %.lr.ph48.i
end_hunk_0
