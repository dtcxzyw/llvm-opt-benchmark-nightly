Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pugixml/original/pugixml?download=true
inline.NumInlined: 2249
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pugi11xpath_queryaSEOS0_:bb.a
  %i.f = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.f(ptr noundef nonnull %.02.i.i)
          to label %.noexc unwind label %.loopexit, !inline_history !36

.noexc:                                           ; preds = %.lr.ph.i.i
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !240  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i, label %.lr.ph.i.i, !llvm.loop !37

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i: ; preds = %.noexc, %bb.c
  %i.h = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.h(ptr noundef nonnull %i.b)
          to label %_ZN4pugi4impl12_GLOBAL__N_116xpath_query_impl7destroyEPS2_.exit unwind label %.loopexit.split-lp, !inline_history !36

_ZN4pugi4impl12_GLOBAL__N_116xpath_query_impl7destroyEPS2_.exit: ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i, %bb.b
  %i.i = load ptr, ptr %1, align 8, !tbaa !215
  store ptr %i.i, ptr %0, align 8, !tbaa !215
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !185
  store ptr null, ptr %1, align 8, !tbaa !215
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  invoke void @_ZN4pugi18xpath_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.d unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_116xpath_query_impl7destroyEPS2_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !185
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret ptr %0

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

.loopexit.split-lp:                               ; preds = %_ZN4pugi4impl12_GLOBAL__N_116xpath_query_impl7destroyEPS2_.exit, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.l = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.l) #48
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -128, 128) i32 @_ZNK4pugi11xpath_query11return_typeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !215    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222
  %i.c = getelementptr i8, ptr %i.b, i64 1
  %.val = load i8, ptr %i.c, align 1, !tbaa !246
  %i.d = sext i8 %.val to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4pugi11xpath_query16evaluate_booleanERKNS_10xpath_nodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_context", align 8 ; 7 uses
  %3 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_stack_data", align 8 ; 18 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !215    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !193
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 1, ptr %i.b, align 8, !tbaa !254
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 1, ptr %i.c, align 8, !tbaa !255
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8224 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8288 ; 4 uses
  store ptr %3, ptr %i.d, align 8, !tbaa !223
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8232
  store i64 0, ptr %i.f, align 8, !tbaa !224
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8240
  store ptr %i.e, ptr %i.g, align 8, !tbaa !225
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8248 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4112 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !223
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8256
  store i64 0, ptr %i.j, align 8, !tbaa !224
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8264
  store ptr %i.e, ptr %i.k, align 8, !tbaa !225
  store i8 0, ptr %i.e, align 8, !tbaa !258
  store ptr null, ptr %i.i, align 8, !tbaa !240
  store ptr null, ptr %3, align 8, !tbaa !240
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4120
  store i64 4096, ptr %i.l, align 8, !tbaa !250
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 4096, ptr %i.m, align 8, !tbaa !250
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8272 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !259
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8280
  store ptr %i.h, ptr %i.o, align 8, !tbaa !260
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !222
  %i.q = invoke fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node12eval_booleanERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = load i8, ptr %i.e, align 8, !tbaa !258, !range !205, !noundef !123
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = call ptr @__cxa_allocate_exception(i64 8) #49 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !65
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #52
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev(ptr noundef nonnull align 8 dead_on_return(8289) dereferenceable(8289) %3) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  resume { ptr, i32 } %i.u

bb.f:                                             ; preds = %bb.c
  %.val1.i = load ptr, ptr %i.d, align 8, !tbaa !223 ; 2 uses
  %i.v = load ptr, ptr %.val1.i, align 8, !tbaa !240 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.v, null
  br i1 %.not1.i.i, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.noexc.i
  %i.w = phi ptr [ %i.y, %.noexc.i ], [ %i.v, %bb.f ] ; 2 uses
  %.02.i.i = phi ptr [ %i.w, %.noexc.i ], [ %.val1.i, %bb.f ]
  %i.x = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.x(ptr noundef nonnull %.02.i.i)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !inline_history !38

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !240  ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i, label %.lr.ph.i.i, !llvm.loop !37

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i: ; preds = %.noexc.i, %bb.f
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !223 ; 2 uses
  %i.z = load ptr, ptr %.val.i, align 8, !tbaa !240 ; 2 uses
  %.not1.i2.i = icmp eq ptr %i.z, null
  br i1 %.not1.i2.i, label %_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit, label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i, %.noexc6.i
  %i.aa = phi ptr [ %i.ac, %.noexc6.i ], [ %i.z, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i ] ; 2 uses
  %.02.i4.i = phi ptr [ %i.aa, %.noexc6.i ], [ %.val.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i ]
  %i.ab = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.ab(ptr noundef nonnull %.02.i4.i)
          to label %.noexc6.i unwind label %.loopexit.i, !inline_history !38

.noexc6.i:                                        ; preds = %.lr.ph.i3.i
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !240 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.ac, null
  br i1 %.not.i5.i, label %_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit, label %.lr.ph.i3.i, !llvm.loop !37

.loopexit.i:                                      ; preds = %.lr.ph.i3.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ad = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.ad) #48
  unreachable

_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit: ; preds = %.noexc6.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit
  %.0 = phi i1 [ %i.q, %_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node12eval_booleanERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 6 uses
  %4 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %5 = alloca %"class.pugi::xml_attribute", align 8 ; 6 uses
  %6 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %7 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %8 = alloca %"class.pugi::xml_attribute", align 8 ; 5 uses
  %9 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %10 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %11 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %12 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %13 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %14 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %15 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %16 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %17 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %18 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %19 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %20 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %21 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %22 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %23 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %24 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %25 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %26 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %27 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %28 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %29 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %30 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %31 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %32 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %33 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %34 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %35 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %36 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %37 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %38 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %39 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %40 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %41 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %42 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %43 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %44 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %45 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %46 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %47 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %48 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %49 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %50 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %51 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %52 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %53 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %54 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %55 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %56 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %57 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %bb.bq, %bb.a
  %accumulator.tr.ph = phi i1 [ %i.fi, %bb.bq ], [ false, %bb.a ] ; 6 uses
  %.tr.ph = phi ptr [ %i.fa, %bb.bq ], [ %0, %bb.a ]
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %tailrecurse.outer
  %.tr = phi ptr [ %.tr.ph, %tailrecurse.outer ], [ %.tr.be, %tailrecurse.backedge ] ; 31 uses
  %i.b = load i8, ptr %.tr, align 8, !tbaa !245
  switch i8 %i.b, label %.loopexit369.loopexit [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.bo
    i8 5, label %bb.dz
    i8 6, label %bb.ea
    i8 7, label %bb.eb
    i8 8, label %bb.ec
    i8 34, label %bb.ed
    i8 35, label %bb.el
    i8 45, label %tailrecurse.backedge
    i8 46, label %bb.es
    i8 47, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node10compare_eqINS1_8equal_toEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_.exit
    i8 48, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node10compare_eqINS1_8equal_toEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_.exit.loopexit1039
    i8 49, label %bb.et
    i8 59, label %bb.fi
    i8 60, label %bb.fp
    i8 20, label %bb.ga
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.c = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !242
  %i.e = tail call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node12eval_booleanERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.e, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node10compare_eqINS1_8equal_toEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_.exit, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.b, %tailrecurse, %bb.c
  %.sink = phi i64 [ 8, %tailrecurse ], [ 16, %bb.c ], [ 16, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %.tr, i64 %.sink
  %.tr.be = load ptr, ptr %i.f, align 8, !tbaa !249
  br label %tailrecurse

bb.c:                                             ; preds = %tailrecurse
  %i.g = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !242
  %i.i = tail call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node12eval_booleanERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.i, label %tailrecurse.backedge, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node10compare_eqINS1_8equal_toEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_.exit

bb.d:                                             ; preds = %tailrecurse
  %i.j = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !242  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !243  ; 7 uses
  %i.n = getelementptr i8, ptr %i.k, i64 1
  %.val135.i = load i8, ptr %i.n, align 1, !tbaa !246 ; 5 uses
  %i.o = getelementptr i8, ptr %i.m, i64 1
  %.val.i = load i8, ptr %i.o, align 1, !tbaa !246 ; 5 uses
  %i.p = icmp ne i8 %.val135.i, 1                 ; 5 uses
  %i.q = icmp ne i8 %.val.i, 1                    ; 2 uses
  %or.cond.i = and i1 %i.p, %i.q
  br i1 %or.cond.i, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i8 %.val135.i, 4
  %i.s = icmp eq i8 %.val.i, 4
  %or.cond9.i = or i1 %i.r, %i.s
  br i1 %or.cond9.i, label %bb.f, label %bb.g

common.ret:                                       ; preds = %bb.es, %bb.ct, %bb.ai, %bb.f, %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node10compare_eqINS1_8equal_toEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_.exit
  %common.ret.op = phi i1 [ %accumulator.ret.tr365, %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node10compare_eqINS1_8equal_toEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_.exit ], [ %accumulator.ret.tr, %bb.f ], [ %accumulator.ret.tr362, %bb.ai ], [ %accumulator.ret.tr363, %bb.ct ], [ %accumulator.ret.tr364, %bb.es ]
  ret i1 %common.ret.op

bb.f:                                             ; preds = %bb.e
  %i.t = tail call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node12eval_booleanERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !504
  %i.u = tail call fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node12eval_booleanERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !504
  %i.v = xor i1 %i.t, %i.u
  %i.w = xor i1 %accumulator.tr.ph, %i.v
  %accumulator.ret.tr = xor i1 %i.w, true
  br label %common.ret

bb.g:                                             ; preds = %bb.e
  %i.x = icmp eq i8 %.val135.i, 2
  %i.y = icmp eq i8 %.val.i, 2
  %or.cond11.i = or i1 %i.x, %i.y
  br i1 %or.cond11.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = tail call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !504
  %i.aa = tail call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !504
  %i.ab = fcmp oeq double %i.z, %i.aa
  br label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node10compare_eqINS1_8equal_toEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i8 %.val135.i, 3
  %i.ad = icmp eq i8 %.val.i, 3
  %or.cond13.i = or i1 %i.ac, %i.ad
  br i1 %or.cond13.i, label %bb.j, label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node10compare_eqINS1_8equal_toEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #49
  %i.ae = load ptr, ptr %2, align 8, !tbaa !261   ; 2 uses
  store ptr %i.ae, ptr %28, align 8, !tbaa !263
  %i.af = getelementptr inbounds nuw i8, ptr %28, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #49
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_stringERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr dead_on_unwind noalias writable align 8 %29, ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.k unwind label %bb.n, !inline_history !504

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #49
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_stringERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr dead_on_unwind noalias writable align 8 %30, ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.l unwind label %bb.o, !inline_history !504

bb.l:                                             ; preds = %bb.k
  %.val161.i = load ptr, ptr %29, align 8, !tbaa !268 ; 2 uses
  %.val162.i = load ptr, ptr %30, align 8, !tbaa !268 ; 2 uses
  %i.ag = load i8, ptr %.val161.i, align 1, !tbaa !86
  %i.ah = load i8, ptr %.val162.i, align 1, !tbaa !86
  %i.ai = icmp eq i8 %i.ag, %i.ah
  br i1 %i.ai, label %bb.m, label %_ZNK4pugi4impl12_GLOBAL__N_18equal_toclINS1_12xpath_stringEEEbRKT_S7_.exit241

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.val161.i, ptr noundef nonnull readonly dereferenceable(1) %.val162.i) #50
  %i.ak = icmp eq i32 %i.aj, 0
  br label %_ZNK4pugi4impl12_GLOBAL__N_18equal_toclINS1_12xpath_stringEEEbRKT_S7_.exit241

_ZNK4pugi4impl12_GLOBAL__N_18equal_toclINS1_12xpath_stringEEEbRKT_S7_.exit241: ; preds = %bb.m, %bb.l
  %i.al = phi i1 [ false, %bb.l ], [ %i.ak, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #49
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %28) #49, !inline_history !504
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #49
  br label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node10compare_eqINS1_8equal_toEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_.exit

bb.n:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node12eval_booleanERKNS1_13xpath_contextERKNS1_11xpath_stackE:bb.a
_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node10compare_eqINS1_8equal_toEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_.exit.loopexit1039: ; preds = %tailrecurse
  br label %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node10compare_eqINS1_8equal_toEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_.exit

_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node10compare_eqINS1_8equal_toEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_.exit: ; preds = %bb.c, %bb.b, %tailrecurse, %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node10compare_eqINS1_8equal_toEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_.exit.loopexit1039, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %_ZNK4pugi8xml_node9attributeEPKc.exit210, %_ZNK4pugi13xml_attribute5valueEv.exit215, %bb.fz, %.critedge134.i115, %.critedge132.i126, %bb.cs, %.critedge130.i136, %_ZNK4pugi4impl12_GLOBAL__N_112not_equal_toclINS1_12xpath_stringEEEbRKT_S7_.exit285, %bb.bt, %bb.bs, %.critedge134.i, %.critedge132.i, %bb.ah, %.critedge130.i, %_ZNK4pugi4impl12_GLOBAL__N_18equal_toclINS1_12xpath_stringEEEbRKT_S7_.exit241, %bb.i, %bb.h, %.loopexit369, %bb.et, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit702, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit695, %_ZNK4pugi8xml_node9attributeEPKc.exit193, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit688, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit164, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit, %bb.ec, %bb.eb, %bb.ea, %bb.dz
  %.6 = phi i1 [ false, %bb.et ], [ false, %bb.gb ], [ %i.rw, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit695 ], [ %i.sl, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit702 ], [ %i.rf, %bb.fz ], [ %i.rt, %bb.ge ], [ false, %.loopexit369 ], [ false, %bb.i ], [ %i.km, %bb.dz ], [ %i.kr, %bb.ea ], [ %i.kw, %bb.eb ], [ %i.lb, %bb.ec ], [ %.not.lcssa.i, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit ], [ %i.mh, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit164 ], [ %.not116.i125.lcssa, %.critedge132.i126 ], [ false, %bb.cs ], [ false, %bb.gd ], [ true, %tailrecurse ], [ %i.fx, %_ZNK4pugi4impl12_GLOBAL__N_112not_equal_toclINS1_12xpath_stringEEEbRKT_S7_.exit285 ], [ %spec.select96, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit688 ], [ %.not.i194, %_ZNK4pugi8xml_node9attributeEPKc.exit193 ], [ false, %bb.bt ], [ %.not.i114.lcssa, %.critedge134.i115 ], [ %.not120.i135385, %.critedge130.i136 ], [ %i.rp, %bb.gc ], [ %i.ab, %bb.h ], [ %i.al, %_ZNK4pugi4impl12_GLOBAL__N_18equal_toclINS1_12xpath_stringEEEbRKT_S7_.exit241 ], [ %.not.i.lcssa, %.critedge134.i ], [ %.not120.i374, %.critedge130.i ], [ false, %_ZNK4pugi13xml_attribute5valueEv.exit215 ], [ %.not116.i.lcssa, %.critedge132.i ], [ false, %bb.ah ], [ false, %_ZNK4pugi8xml_node9attributeEPKc.exit210 ], [ %i.fn, %bb.bs ], [ true, %bb.b ], [ false, %bb.c ], [ false, %_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node10compare_eqINS1_8equal_toEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_.exit.loopexit1039 ]
  %accumulator.ret.tr365 = xor i1 %accumulator.tr.ph, %.6
  br label %common.ret
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8289) dereferenceable(8289) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8224
  %.val1 = load ptr, ptr %i.a, align 8, !tbaa !223 ; 2 uses
  %i.b = load ptr, ptr %.val1, align 8, !tbaa !240 ; 2 uses
  %.not1.i = icmp eq ptr %i.b, null
  br i1 %.not1.i, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.noexc
  %i.c = phi ptr [ %i.e, %.noexc ], [ %i.b, %bb.a ] ; 2 uses
  %.02.i = phi ptr [ %i.c, %.noexc ], [ %.val1, %bb.a ]
  %i.d = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.d(ptr noundef nonnull %.02.i)
          to label %.noexc unwind label %.loopexit.split-lp, !inline_history !38

.noexc:                                           ; preds = %.lr.ph.i
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !240  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit, label %.lr.ph.i, !llvm.loop !37

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit: ; preds = %.noexc, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8248
  %.val = load ptr, ptr %i.f, align 8, !tbaa !223 ; 2 uses
  %i.g = load ptr, ptr %.val, align 8, !tbaa !240 ; 2 uses
  %.not1.i2 = icmp eq ptr %i.g, null
  br i1 %.not1.i2, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit7, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit, %.noexc6
  %i.h = phi ptr [ %i.j, %.noexc6 ], [ %i.g, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit ] ; 2 uses
  %.02.i4 = phi ptr [ %i.h, %.noexc6 ], [ %.val, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit ]
  %i.i = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.i(ptr noundef nonnull %.02.i4)
          to label %.noexc6 unwind label %.loopexit, !inline_history !38

.noexc6:                                          ; preds = %.lr.ph.i3
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !240  ; 2 uses
  %.not.i5 = icmp eq ptr %i.j, null
  br i1 %.not.i5, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit7, label %.lr.ph.i3, !llvm.loop !37

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit7: ; preds = %.noexc6, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit
  ret void

.loopexit:                                        ; preds = %.lr.ph.i3
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.b

.loopexit.split-lp:                               ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.k = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.k) #48
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK4pugi11xpath_query15evaluate_numberERKNS_10xpath_nodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_context", align 8 ; 7 uses
  %3 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_stack_data", align 8 ; 18 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !215    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !193
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 1, ptr %i.b, align 8, !tbaa !254
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 1, ptr %i.c, align 8, !tbaa !255
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8224 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8288 ; 4 uses
  store ptr %3, ptr %i.d, align 8, !tbaa !223
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8232
  store i64 0, ptr %i.f, align 8, !tbaa !224
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8240
  store ptr %i.e, ptr %i.g, align 8, !tbaa !225
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8248 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4112 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !223
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8256
  store i64 0, ptr %i.j, align 8, !tbaa !224
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8264
  store ptr %i.e, ptr %i.k, align 8, !tbaa !225
  store i8 0, ptr %i.e, align 8, !tbaa !258
  store ptr null, ptr %i.i, align 8, !tbaa !240
  store ptr null, ptr %3, align 8, !tbaa !240
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4120
  store i64 4096, ptr %i.l, align 8, !tbaa !250
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 4096, ptr %i.m, align 8, !tbaa !250
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8272 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !259
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8280
  store ptr %i.h, ptr %i.o, align 8, !tbaa !260
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !222
  %i.q = invoke fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = load i8, ptr %i.e, align 8, !tbaa !258, !range !205, !noundef !123
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = call ptr @__cxa_allocate_exception(i64 8) #49 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !65
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #52
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev(ptr noundef nonnull align 8 dead_on_return(8289) dereferenceable(8289) %3) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  resume { ptr, i32 } %i.u

bb.f:                                             ; preds = %bb.c
  %.val1.i = load ptr, ptr %i.d, align 8, !tbaa !223 ; 2 uses
  %i.v = load ptr, ptr %.val1.i, align 8, !tbaa !240 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.v, null
  br i1 %.not1.i.i, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.noexc.i
  %i.w = phi ptr [ %i.y, %.noexc.i ], [ %i.v, %bb.f ] ; 2 uses
  %.02.i.i = phi ptr [ %i.w, %.noexc.i ], [ %.val1.i, %bb.f ]
  %i.x = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.x(ptr noundef nonnull %.02.i.i)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !inline_history !38

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !240  ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i, label %.lr.ph.i.i, !llvm.loop !37

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i: ; preds = %.noexc.i, %bb.f
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !223 ; 2 uses
  %i.z = load ptr, ptr %.val.i, align 8, !tbaa !240 ; 2 uses
  %.not1.i2.i = icmp eq ptr %i.z, null
  br i1 %.not1.i2.i, label %_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit, label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i, %.noexc6.i
  %i.aa = phi ptr [ %i.ac, %.noexc6.i ], [ %i.z, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i ] ; 2 uses
  %.02.i4.i = phi ptr [ %i.aa, %.noexc6.i ], [ %.val.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i ]
  %i.ab = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.ab(ptr noundef nonnull %.02.i4.i)
          to label %.noexc6.i unwind label %.loopexit.i, !inline_history !38

.noexc6.i:                                        ; preds = %.lr.ph.i3.i
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !240 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.ac, null
  br i1 %.not.i5.i, label %_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit, label %.lr.ph.i3.i, !llvm.loop !37

.loopexit.i:                                      ; preds = %.lr.ph.i3.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ad = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.ad) #48
  unreachable

_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit: ; preds = %.noexc6.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit
  %.0 = phi double [ %i.q, %_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit ], [ +qnan, %bb.a ]
  ret double %.0

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.pugi::xml_attribute", align 8 ; 6 uses
  %4 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %5 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %6 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %7 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %8 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 7 uses
  %9 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %10 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 7 uses
  %11 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %12 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %13 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %14 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %15 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %16 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %17 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %18 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.am, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.ey, %bb.am ] ; 26 uses
  %i.a = load i8, ptr %.tr, align 8, !tbaa !245
  switch i8 %i.a, label %.loopexit.loopexit [
    i8 9, label %bb.b
    i8 10, label %bb.c
    i8 11, label %bb.d
    i8 12, label %bb.e
    i8 13, label %bb.f
    i8 14, label %bb.g
    i8 19, label %bb.h
    i8 21, label %bb.i
    i8 22, label %bb.j
    i8 23, label %bb.k
    i8 40, label %bb.o
    i8 41, label %bb.u
    i8 50, label %bb.aa
    i8 51, label %bb.am
    i8 52, label %bb.an
    i8 53, label %bb.be
    i8 54, label %bb.bf
    i8 55, label %bb.bg
    i8 59, label %bb.bj
    i8 20, label %bb.by
  ]

common.ret443:                                    ; preds = %bb.ca, %bb.bz, %bb.br, %bb.bt, %bb.bu, %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i166, %bb.bx, %_ZNK4pugi8xml_node9attributeEPKc.exit, %bb.bi, %bb.bh, %.loopexit, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit202, %bb.cb, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit120, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit113, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit105, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit97, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit, %bb.j, %bb.i, %bb.h, %bb.bf, %bb.be, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %common.ret443.op = phi double [ %i.hp, %bb.bf ], [ %i.h, %bb.b ], [ %i.o, %bb.c ], [ %i.v, %bb.d ], [ %i.ac, %bb.e ], [ %i.aj, %bb.f ], [ %i.an, %bb.g ], [ %i.hj, %bb.be ], [ 0.000000e+00, %.loopexit ], [ %i.hx, %bb.bi ], [ %i.hv, %bb.bh ], [ %.071.lcssa, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit120 ], [ +qnan, %bb.bt ], [ %.05.i, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit113 ], [ %i.cz, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit105 ], [ %i.cc, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit97 ], [ +qnan, %_ZNK4pugi8xml_node9attributeEPKc.exit ], [ %i.kd, %bb.cb ], [ %.05.i188, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit202 ], [ +qnan, %bb.bz ], [ %i.ka, %bb.ca ], [ +qnan, %bb.bu ], [ +qnan, %bb.br ], [ +qnan, %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i166 ], [ %i.jr, %bb.bx ], [ %i.ap, %bb.h ], [ %i.as, %bb.i ], [ %i.av, %bb.j ], [ %i.bg, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit ]
  ret double %common.ret443.op

bb.b:                                             ; preds = %tailrecurse
  %i.b = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !242
  %i.d = tail call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.e = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !243
  %i.g = tail call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.h = fadd double %i.d, %i.g
  br label %common.ret443

bb.c:                                             ; preds = %tailrecurse
  %i.i = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !242
  %i.k = tail call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.l = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !243
  %i.n = tail call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.o = fsub double %i.k, %i.n
  br label %common.ret443

bb.d:                                             ; preds = %tailrecurse
  %i.p = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !242
  %i.r = tail call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.s = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !243
  %i.u = tail call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.v = fmul double %i.r, %i.u
  br label %common.ret443

bb.e:                                             ; preds = %tailrecurse
  %i.w = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !242
  %i.y = tail call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.z = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !243
  %i.ab = tail call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.ac = fdiv double %i.y, %i.ab
  br label %common.ret443

bb.f:                                             ; preds = %tailrecurse
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !242
  %i.af = tail call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !243
  %i.ai = tail call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.aj = tail call double @fmod(double noundef %i.af, double noundef %i.ai) #49
  br label %common.ret443

bb.g:                                             ; preds = %tailrecurse
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !242
  %i.am = tail call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.an = fneg double %i.am
  br label %common.ret443

bb.h:                                             ; preds = %tailrecurse
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !86
  br label %common.ret443

bb.i:                                             ; preds = %tailrecurse
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !255
  %i.as = uitofp i64 %i.ar to double
  br label %common.ret443

bb.j:                                             ; preds = %tailrecurse
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !254
  %i.av = uitofp i64 %i.au to double
  br label %common.ret443

bb.k:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.aw = load ptr, ptr %2, align 8, !tbaa !261   ; 5 uses
  store ptr %i.aw, ptr %5, align 8, !tbaa !263
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.ay = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !242
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node13eval_node_setERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val81 = load ptr, ptr %i.ba, align 8, !tbaa !270
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val82 = load ptr, ptr %i.bb, align 8, !tbaa !271
  %i.bc = ptrtoint ptr %.val82 to i64
  %i.bd = ptrtoint ptr %.val81 to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 4
  %i.bg = uitofp i64 %i.bf to double
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %i.bh = load ptr, ptr %i.aw, align 8, !tbaa !223 ; 2 uses
  %i.bi = load ptr, ptr %i.ax, align 8, !tbaa !223 ; 3 uses
  %.not9.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not9.i.i, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.noexc.i
  %.010.i.i = phi ptr [ %i.bj, %.noexc.i ], [ %i.bh, %bb.l ] ; 2 uses
  %i.bj = load ptr, ptr %.010.i.i, align 8, !tbaa !240 ; 2 uses
  %i.bk = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.bk(ptr noundef nonnull %.010.i.i)
          to label %.noexc.i unwind label %bb.m, !inline_history !39

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.bj, %i.bi
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit, label %.lr.ph.i.i, !llvm.loop !40

bb.m:                                             ; preds = %.lr.ph.i.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #48
  unreachable

_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit: ; preds = %.noexc.i, %bb.l
  store ptr %i.bi, ptr %i.aw, align 8, !tbaa !223
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !224
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !224
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %common.ret443

bb.n:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %bb.co

bb.o:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  %i.br = load ptr, ptr %2, align 8, !tbaa !261   ; 6 uses
  store ptr %i.br, ptr %7, align 8, !tbaa !263
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  %.val86 = load i64, ptr %1, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val87 = load ptr, ptr %i.bt, align 8, !tbaa !119
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_112string_valueERKNS_10xpath_nodeEPNS1_15xpath_allocatorE(ptr dead_on_unwind noalias writable align 8 %8, i64 %.val86, ptr %.val87, ptr noundef nonnull %i.br)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
end_hunk_1
begin_hunk_2_@_ZNK4pugi11xpath_query15evaluate_stringB5cxx11ERKNS_10xpath_nodeE:bb.a
  store i64 1, ptr %i.e, align 8, !tbaa !254
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %i.f, align 8, !tbaa !255
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8224 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8288 ; 4 uses
  store ptr %4, ptr %i.g, align 8, !tbaa !223
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8232
  store i64 0, ptr %i.i, align 8, !tbaa !224
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8240
  store ptr %i.h, ptr %i.j, align 8, !tbaa !225
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8248 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4112 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !223
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8256
  store i64 0, ptr %i.m, align 8, !tbaa !224
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8264
  store ptr %i.h, ptr %i.n, align 8, !tbaa !225
  store i8 0, ptr %i.h, align 8, !tbaa !258
  store ptr null, ptr %i.l, align 8, !tbaa !240
  store ptr null, ptr %4, align 8, !tbaa !240
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4120
  store i64 4096, ptr %i.o, align 8, !tbaa !250
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4096, ptr %i.p, align 8, !tbaa !250
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8272 ; 2 uses
  store ptr %i.g, ptr %i.q, align 8, !tbaa !259
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8280
  store ptr %i.k, ptr %i.r, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !222
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_stringERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = load i8, ptr %i.h, align 8, !tbaa !258, !range !205, !noundef !123
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = call ptr @__cxa_allocate_exception(i64 8) #49 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.v, align 8, !tbaa !65
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #52
          to label %bb.q unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %.val = load ptr, ptr %5, align 8, !tbaa !268   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = load i8, ptr %i.x, align 8, !tbaa !273, !range !205, !noundef !123
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit, label %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit.thread

_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit.thread: ; preds = %bb.g
  %i.aa = call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.val) #50
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !144
  br label %bb.i

_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit: ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !274 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !144
  %i.af = icmp eq ptr %.val, null
  %i.ag = icmp ne i64 %i.ad, 0
  %or.cond.i = and i1 %i.af, %i.ag
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.108) #52
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit.thread, %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit
  %i.ah = phi ptr [ %i.ab, %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit.thread ], [ %i.ae, %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit ] ; 2 uses
  %i.ai = phi i64 [ %i.aa, %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit.thread ], [ %i.ad, %_ZNK4pugi4impl12_GLOBAL__N_112xpath_string6lengthEv.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !89
  %i.aj = icmp ugt i64 %i.ai, 15
  br i1 %i.aj, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.i
  %i.ak = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc5 unwind label %bb.n    ; 2 uses

.noexc5:                                          ; preds = %.noexc.i
  store ptr %i.ak, ptr %0, align 8, !tbaa !147
  %i.al = load i64, ptr %i.a, align 8, !tbaa !89
  store i64 %i.al, ptr %i.ah, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc5, %bb.i
  %i.am = phi ptr [ %i.ak, %.noexc5 ], [ %i.ah, %bb.i ] ; 2 uses
  switch i64 %i.ai, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.an = load i8, ptr %.val, align 1, !tbaa !86
  store i8 %i.an, ptr %i.am, align 1, !tbaa !86
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %.val, i64 %i.ai, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !146
  %i.aq = load ptr, ptr %0, align 8, !tbaa !147
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  %.val1.i = load ptr, ptr %i.g, align 8, !tbaa !223 ; 2 uses
  %i.as = load ptr, ptr %.val1.i, align 8, !tbaa !240 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.as, null
  br i1 %.not1.i.i, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.noexc.i6
  %i.at = phi ptr [ %i.av, %.noexc.i6 ], [ %i.as, %bb.l ] ; 2 uses
  %.02.i.i = phi ptr [ %i.at, %.noexc.i6 ], [ %.val1.i, %bb.l ]
  %i.au = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.au(ptr noundef nonnull %.02.i.i)
          to label %.noexc.i6 unwind label %.loopexit.split-lp.i, !inline_history !38

.noexc.i6:                                        ; preds = %.lr.ph.i.i
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !240 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i, label %.lr.ph.i.i, !llvm.loop !37

_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i: ; preds = %.noexc.i6, %bb.l
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !223 ; 2 uses
  %i.aw = load ptr, ptr %.val.i, align 8, !tbaa !240 ; 2 uses
  %.not1.i2.i = icmp eq ptr %i.aw, null
  br i1 %.not1.i2.i, label %_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit, label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i, %.noexc6.i
  %i.ax = phi ptr [ %i.az, %.noexc6.i ], [ %i.aw, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i ] ; 2 uses
  %.02.i4.i = phi ptr [ %i.ax, %.noexc6.i ], [ %.val.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i ]
  %i.ay = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.ay(ptr noundef nonnull %.02.i4.i)
          to label %.noexc6.i unwind label %.loopexit.i, !inline_history !38

.noexc6.i:                                        ; preds = %.lr.ph.i3.i
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !240 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.az, null
  br i1 %.not.i5.i, label %_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit, label %.lr.ph.i3.i, !llvm.loop !37

.loopexit.i:                                      ; preds = %.lr.ph.i3.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ba = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.ba) #48
  unreachable

_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit: ; preds = %.noexc6.i, %_ZN4pugi4impl12_GLOBAL__N_115xpath_allocator7releaseEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  br label %bb.p

bb.n:                                             ; preds = %.noexc.i, %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.f
  %.pn = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.bb, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev(ptr noundef nonnull align 8 dead_on_return(8289) dereferenceable(8289) %4) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_116xpath_stack_dataD2Ev.exit, %bb.b
  ret void

bb.q:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_stringERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pugi::xml_attribute", align 8 ; 6 uses
  %5 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %6 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %7 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_stack", align 8 ; 7 uses
  %8 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %9 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %10 = alloca %"class.pugi::xpath_node", align 16 ; 5 uses
  %11 = alloca %"class.pugi::xpath_node", align 8 ; 6 uses
  %12 = alloca %"class.pugi::xpath_node", align 8 ; 6 uses
  %13 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %14 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 7 uses
  %15 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %16 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 7 uses
  %17 = alloca %"class.pugi::xpath_node", align 8 ; 4 uses
  %18 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %19 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 7 uses
  %20 = alloca %"class.pugi::xpath_node", align 16 ; 5 uses
  %21 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %22 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_stack", align 8 ; 7 uses
  %23 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %24 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %25 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %26 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_stack", align 8 ; 7 uses
  %27 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 7 uses
  %28 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 7 uses
  %29 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %30 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_stack", align 8 ; 6 uses
  %31 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 9 uses
  %32 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %33 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_stack", align 8 ; 6 uses
  %34 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 8 uses
  %35 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 7 uses
  %36 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 7 uses
  %37 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %38 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_stack", align 8 ; 7 uses
  %39 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 8 uses
  %40 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %41 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 7 uses
  %42 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 7 uses
  %43 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %44 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_stack", align 8 ; 6 uses
  %45 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 7 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.an, %bb.a
  %.tr470 = phi ptr [ %1, %bb.a ], [ %i.dm, %bb.an ] ; 28 uses
  %i.d = load i8, ptr %.tr470, align 8, !tbaa !245
  switch i8 %i.d, label %.loopexit483.loopexit [
    i8 18, label %bb.b
    i8 25, label %bb.c
    i8 26, label %bb.e
    i8 29, label %bb.o
    i8 30, label %bb.q
    i8 27, label %bb.aa
    i8 28, label %bb.ab
    i8 31, label %bb.am
    i8 32, label %bb.an
    i8 33, label %bb.ao
    i8 36, label %bb.bm
    i8 37, label %bb.cd
    i8 38, label %bb.cr
    i8 39, label %bb.df
    i8 42, label %bb.dw
    i8 43, label %bb.eh
    i8 44, label %bb.es
    i8 58, label %bb.fr
    i8 59, label %bb.gb
    i8 20, label %bb.gj
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr inbounds nuw i8, ptr %.tr470, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  store ptr %i.f, ptr %0, align 8, !tbaa !268, !alias.scope !554
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.g, align 8, !tbaa !273, !alias.scope !554
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8, !tbaa !274, !alias.scope !554
  br label %bb.gy

bb.c:                                             ; preds = %tailrecurse
  %.sroa.0440.0.copyload = load i64, ptr %2, align 8, !tbaa !115 ; 2 uses
  %.sroa.4441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4441.0.copyload = load ptr, ptr %.sroa.4441.0..sroa_idx, align 8, !tbaa !119 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.4441.0.copyload, null
  br i1 %.not.i.i.i, label %_ZNK4pugi10xpath_node4nodeEv.exit.i.i, label %_ZNK4pugi8xml_node4nameEv.exit.sink.split.i.i

_ZNK4pugi10xpath_node4nodeEv.exit.i.i:            ; preds = %bb.c
  %.not.i5.i.i = icmp eq i64 %.sroa.0440.0.copyload, 0
  br i1 %.not.i5.i.i, label %_ZN4pugi4impl12_GLOBAL__N_110local_nameERKNS_10xpath_nodeE.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit.i.i
  %i.i = inttoptr i64 %.sroa.0440.0.copyload to ptr
  br label %_ZNK4pugi8xml_node4nameEv.exit.sink.split.i.i

_ZNK4pugi8xml_node4nameEv.exit.sink.split.i.i:    ; preds = %bb.d, %bb.c
  %.sink.i.i = phi ptr [ %i.i, %bb.d ], [ %.sroa.4441.0.copyload, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !94   ; 2 uses
  %.not5.i6.i.i = icmp eq ptr %i.k, null
  %i.l = select i1 %.not5.i6.i.i, ptr @.str, ptr %i.k
  br label %_ZN4pugi4impl12_GLOBAL__N_110local_nameERKNS_10xpath_nodeE.exit

_ZN4pugi4impl12_GLOBAL__N_110local_nameERKNS_10xpath_nodeE.exit: ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit.i.i, %_ZNK4pugi8xml_node4nameEv.exit.sink.split.i.i
  %i.m = phi ptr [ @.str, %_ZNK4pugi10xpath_node4nodeEv.exit.i.i ], [ %i.l, %_ZNK4pugi8xml_node4nameEv.exit.sink.split.i.i ] ; 2 uses
  %i.n = tail call noundef ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.m, i32 noundef 58) #50 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = select i1 %.not.i, ptr %i.m, ptr %i.o
  store ptr %i.p, ptr %0, align 8, !tbaa !268, !alias.scope !555
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.q, align 8, !tbaa !273, !alias.scope !555
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.r, align 8, !tbaa !274, !alias.scope !555
  br label %bb.gy

bb.e:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #49
  %i.s = load ptr, ptr %3, align 8, !tbaa !261    ; 5 uses
  store ptr %i.s, ptr %13, align 8, !tbaa !263
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #49
  %i.u = getelementptr inbounds nuw i8, ptr %.tr470, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !242
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node13eval_node_setERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tE(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 2)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !270  ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !271  ; 4 uses
  %i.aa = load i32, ptr %14, align 8, !tbaa !275
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.ab = icmp eq ptr %i.x, %i.z
  br i1 %i.ab, label %.invoke, label %bb.g

.invoke:                                          ; preds = %bb.g, %bb.f
  invoke void @_ZN4pugi10xpath_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.j unwind label %.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  switch i32 %i.aa, label %.invoke [
    i32 1, label %.sink.split
    i32 2, label %bb.h
    i32 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -16
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %.01.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %.not2.i.i.i = icmp eq ptr %.01.i.i.i, %i.z
  br i1 %.not2.i.i.i, label %.sink.split, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.noexc221
  %.04.i.i.i = phi ptr [ %.0.i.i.i, %.noexc221 ], [ %.01.i.i.i, %bb.i ] ; 3 uses
  %.0103.i.i.i = phi ptr [ %spec.select.i.i.i, %.noexc221 ], [ %i.x, %bb.i ] ; 2 uses
  %i.ad = invoke fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_125document_order_comparatorclERKNS_10xpath_nodeES5_(ptr noundef nonnull align 8 dereferenceable(16) %.04.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0103.i.i.i)
          to label %.noexc221 unwind label %.loopexit

.noexc221:                                        ; preds = %.lr.ph.i.i.i
  %spec.select.i.i.i = select i1 %i.ad, ptr %.04.i.i.i, ptr %.0103.i.i.i ; 2 uses
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i220 = icmp eq ptr %.0.i.i.i, %i.z
  br i1 %.not.i.i.i220, label %.sink.split, label %.lr.ph.i.i.i, !llvm.loop !31

.sink.split:                                      ; preds = %.noexc221, %bb.i, %bb.g, %bb.h
  %.010.lcssa.i.i.i.sink = phi ptr [ %i.x, %bb.g ], [ %i.ac, %bb.h ], [ %i.x, %bb.i ], [ %spec.select.i.i.i, %.noexc221 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %.010.lcssa.i.i.i.sink, i64 16, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %.invoke, %.sink.split
  %.fca.0.load.i.i = load ptr, ptr %12, align 8   ; 2 uses
  %.fca.1.gep.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.fca.1.load.i.i = load ptr, ptr %.fca.1.gep.i.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not.i.i.i223 = icmp eq ptr %.fca.1.load.i.i, null
  br i1 %.not.i.i.i223, label %_ZNK4pugi10xpath_node4nodeEv.exit.i.i228, label %_ZNK4pugi8xml_node4nameEv.exit.sink.split.i.i224

_ZNK4pugi10xpath_node4nodeEv.exit.i.i228:         ; preds = %bb.j
  %.not.i5.i.i229 = icmp eq ptr %.fca.0.load.i.i, null
  br i1 %.not.i5.i.i229, label %bb.k, label %_ZNK4pugi8xml_node4nameEv.exit.sink.split.i.i224

_ZNK4pugi8xml_node4nameEv.exit.sink.split.i.i224: ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit.i.i228, %bb.j
  %.sink.i.i225 = phi ptr [ %.fca.1.load.i.i, %bb.j ], [ %.fca.0.load.i.i, %_ZNK4pugi10xpath_node4nodeEv.exit.i.i228 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink.i.i225, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !94 ; 2 uses
  %.not5.i6.i.i226 = icmp eq ptr %i.af, null
  %i.ag = select i1 %.not5.i6.i.i226, ptr @.str, ptr %i.af
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4pugi10xpath_node4nodeEv.exit.i.i228, %_ZNK4pugi8xml_node4nameEv.exit.sink.split.i.i224
end_hunk_2
begin_hunk_3_@_ZN4pugi4impl12_GLOBAL__N_112xpath_parser11binary_op_t5parseERNS1_11xpath_lexerE:bb.a
  br i1 %i.l, label %bb.p, label %.lr.ph.i.i14.preheader

.lr.ph.i.i14.preheader:                           ; preds = %.lr.ph.i.i, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit
  br label %.lr.ph.i.i14

bb.d:                                             ; preds = %.lr.ph.i.i14
  %i.m = add nuw nsw i64 %.01013.i.i15, 1         ; 2 uses
  %exitcond.not.i.i18 = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i18, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit20, label %.lr.ph.i.i14, !llvm.loop !20

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i.i14.preheader, %bb.d
  %.01013.i.i15 = phi i64 [ %i.m, %bb.d ], [ 0, %.lr.ph.i.i14.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr @.str.97, i64 %.01013.i.i15
  %i.o = load i8, ptr %i.n, align 1, !tbaa !86
  %i.p = getelementptr inbounds nuw i8, ptr %.val11, i64 %.01013.i.i15
  %i.q = load i8, ptr %i.p, align 1, !tbaa !86
  %.not.i.i16 = icmp eq i8 %i.o, %i.q
  br i1 %.not.i.i16, label %bb.d, label %.lr.ph.i.i22.preheader

_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit20: ; preds = %bb.d
  %i.r = icmp eq i64 %i.f, 3
  br i1 %i.r, label %bb.p, label %.lr.ph.i.i22.preheader

.lr.ph.i.i22.preheader:                           ; preds = %.lr.ph.i.i14, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit20
  br label %.lr.ph.i.i22

bb.e:                                             ; preds = %.lr.ph.i.i22
  %i.s = add nuw nsw i64 %.01013.i.i23, 1         ; 2 uses
  %exitcond.not.i.i26 = icmp eq i64 %i.s, %i.f
  br i1 %exitcond.not.i.i26, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit28, label %.lr.ph.i.i22, !llvm.loop !20

.lr.ph.i.i22:                                     ; preds = %.lr.ph.i.i22.preheader, %bb.e
  %.01013.i.i23 = phi i64 [ %i.s, %bb.e ], [ 0, %.lr.ph.i.i22.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr @.str.98, i64 %.01013.i.i23
  %i.u = load i8, ptr %i.t, align 1, !tbaa !86
  %i.v = getelementptr inbounds nuw i8, ptr %.val11, i64 %.01013.i.i23
  %i.w = load i8, ptr %i.v, align 1, !tbaa !86
  %.not.i.i24 = icmp eq i8 %i.u, %i.w
  br i1 %.not.i.i24, label %bb.e, label %.lr.ph.i.i30.preheader

_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit28: ; preds = %bb.e
  %i.x = icmp eq i64 %i.f, 3
  br i1 %i.x, label %bb.p, label %.lr.ph.i.i30.preheader

.lr.ph.i.i30.preheader:                           ; preds = %.lr.ph.i.i22, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit28
  br label %.lr.ph.i.i30

bb.f:                                             ; preds = %.lr.ph.i.i30
  %i.y = add nuw nsw i64 %.01013.i.i31, 1         ; 2 uses
  %exitcond.not.i.i34 = icmp eq i64 %i.y, %i.f
  br i1 %exitcond.not.i.i34, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit36, label %.lr.ph.i.i30, !llvm.loop !20

.lr.ph.i.i30:                                     ; preds = %.lr.ph.i.i30.preheader, %bb.f
  %.01013.i.i31 = phi i64 [ %i.y, %bb.f ], [ 0, %.lr.ph.i.i30.preheader ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr @.str.99, i64 %.01013.i.i31
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !86
  %i.ab = getelementptr inbounds nuw i8, ptr %.val11, i64 %.01013.i.i31
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !86
  %.not.i.i32 = icmp eq i8 %i.aa, %i.ac
  br i1 %.not.i.i32, label %bb.f, label %.loopexit

_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit36: ; preds = %bb.f
  %i.ad = icmp eq i64 %i.f, 3
  br i1 %i.ad, label %bb.p, label %.loopexit

bb.g:                                             ; preds = %bb.a
  br label %bb.p

bb.h:                                             ; preds = %bb.a
  br label %bb.p

bb.i:                                             ; preds = %bb.a
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  br label %bb.p

bb.n:                                             ; preds = %bb.a
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  br label %bb.p

.loopexit:                                        ; preds = %.lr.ph.i.i30, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit36, %bb.b, %bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit36, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit28, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit20, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit, %.loopexit, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.sroa.33.0 = phi i32 [ 0, %.loopexit ], [ 7, %bb.o ], [ 1, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit ], [ 2, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit20 ], [ 6, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit28 ], [ 3, %bb.a ], [ 6, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit36 ], [ 3, %bb.g ], [ 4, %bb.h ], [ 4, %bb.i ], [ 4, %bb.j ], [ 4, %bb.k ], [ 5, %bb.l ], [ 5, %bb.m ], [ 6, %bb.n ]
  %.sroa.17.0 = phi i64 [ 0, %.loopexit ], [ 4294967311, %bb.o ], [ 17179869185, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit ], [ 17179869186, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit20 ], [ 8589934604, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit28 ], [ 17179869187, %bb.a ], [ 8589934605, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit36 ], [ 17179869188, %bb.g ], [ 17179869189, %bb.h ], [ 17179869190, %bb.i ], [ 17179869191, %bb.j ], [ 17179869192, %bb.k ], [ 8589934601, %bb.l ], [ 8589934602, %bb.m ], [ 8589934603, %bb.n ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.17.0, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.33.0, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_114xpath_ast_node14is_posinv_exprEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #35 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !245
  %switch.tableidx = add i8 %i.a, -16             ; 3 uses
  %i.b = icmp ult i8 %switch.tableidx, 42
  br i1 %i.b, label %switch.hole_check, label %bb.b

bb.b:                                             ; preds = %switch.hole_check, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !242  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_114xpath_ast_node14is_posinv_exprEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  br i1 %i.e, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.059 = load ptr, ptr %i.f, align 8, !tbaa !249 ; 2 uses
  %.not810 = icmp eq ptr %.059, null
  br i1 %.not810, label %.loopexit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.0511, i64 24
  %.05 = load ptr, ptr %i.g, align 8, !tbaa !249  ; 2 uses
  %.not8 = icmp eq ptr %.05, null
  br i1 %.not8, label %.loopexit, label %.lr.ph, !llvm.loop !687

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.0511 = phi ptr [ %.05, %bb.e ], [ %.059, %bb.d ] ; 2 uses
  %i.h = tail call fastcc noundef zeroext i1 @_ZNK4pugi4impl12_GLOBAL__N_114xpath_ast_node14is_posinv_exprEv(ptr noundef nonnull align 8 dereferenceable(40) %.0511) ; 3 uses
  br i1 %i.h, label %bb.e, label %.loopexit

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 3298534883455, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.cast = zext nneg i8 %switch.tableidx to i42
  %switch.downshift = lshr i42 -1099511627745, %switch.cast
  %switch.masked = trunc i42 %switch.downshift to i1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.e, %switch.lookup, %bb.d, %bb.c
  %.1 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ %switch.masked, %switch.lookup ], [ %i.h, %bb.e ], [ %i.h, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_118is_xpath_attributeEPKc(ptr nofree noundef readonly captures(none) %0) unnamed_addr #36 {
.lr.ph.i:
  %i.a = load i8, ptr %0, align 1, !tbaa !86
  %i.b = icmp eq i8 %i.a, 120
  br i1 %i.b, label %.lr.ph.i.1, label %_ZN4pugi4impl12_GLOBAL__N_111starts_withEPKcS3_.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !86
  %i.e = icmp eq i8 %i.d, 109
  br i1 %i.e, label %.lr.ph.i.2, label %_ZN4pugi4impl12_GLOBAL__N_111starts_withEPKcS3_.exit

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !86
  %i.h = icmp eq i8 %i.g, 108
  br i1 %i.h, label %.lr.ph.i.3, label %_ZN4pugi4impl12_GLOBAL__N_111starts_withEPKcS3_.exit

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !86
  %i.k = icmp eq i8 %i.j, 110
  br i1 %i.k, label %.lr.ph.i.4, label %_ZN4pugi4impl12_GLOBAL__N_111starts_withEPKcS3_.exit

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i8, ptr %i.l, align 1, !tbaa !86
  %i.n = icmp eq i8 %i.m, 115
  br i1 %i.n, label %bb.a, label %_ZN4pugi4impl12_GLOBAL__N_111starts_withEPKcS3_.exit

bb.a:                                             ; preds = %.lr.ph.i.4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !86    ; 2 uses
  %i.q = icmp ne i8 %i.p, 0
  %i.r = icmp ne i8 %i.p, 58
  %spec.select = and i1 %i.q, %i.r
  br label %_ZN4pugi4impl12_GLOBAL__N_111starts_withEPKcS3_.exit

_ZN4pugi4impl12_GLOBAL__N_111starts_withEPKcS3_.exit: ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %bb.a
  %i.s = phi i1 [ %spec.select, %bb.a ], [ true, %.lr.ph.i.4 ], [ true, %.lr.ph.i.3 ], [ true, %.lr.ph.i.2 ], [ true, %.lr.ph.i.1 ], [ true, %.lr.ph.i ]
  ret i1 %i.s
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11compare_relINS1_4lessEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pugi::xml_attribute", align 8 ; 6 uses
  %5 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %6 = alloca %"class.pugi::xml_attribute", align 8 ; 6 uses
  %7 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %8 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 6 uses
  %9 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 6 uses
  %10 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %11 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %12 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %13 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 8 uses
  %14 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %15 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %16 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 10 uses
  %17 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %18 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %19 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %20 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %21 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %22 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %23 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %24 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 1
  %.val147 = load i8, ptr %i.a, align 1, !tbaa !246
  %i.b = getelementptr i8, ptr %1, i64 1
  %.val = load i8, ptr %i.b, align 1, !tbaa !246
  %i.c = icmp ne i8 %.val147, 1                   ; 3 uses
  %i.d = icmp ne i8 %.val, 1                      ; 3 uses
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.f = tail call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.g = fcmp olt double %i.e, %i.f
  br label %bb.df

bb.c:                                             ; preds = %bb.a
  %.not = xor i1 %i.c, true                       ; 2 uses
  %.not97 = xor i1 %i.d, true                     ; 2 uses
  %or.cond10 = and i1 %.not, %.not97
  br i1 %or.cond10, label %bb.d, label %bb.as

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #49
  %i.h = load ptr, ptr %3, align 8, !tbaa !261    ; 5 uses
  store ptr %i.h, ptr %10, align 8, !tbaa !263
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #49
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node13eval_node_setERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tE(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #49
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node13eval_node_setERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tE(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.val149 = load ptr, ptr %i.j, align 8, !tbaa !270 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %.val15365 = load ptr, ptr %i.k, align 8, !tbaa !271
  %.not13466.not = icmp eq ptr %.val149, %.val15365
  br i1 %.not13466.not, label %.critedge142, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.h:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.i:                                             ; preds = %.lr.ph69, %.loopexit6
  %.010167 = phi ptr [ %.val149, %.lr.ph69 ], [ %i.en, %.loopexit6 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #49
  %i.z = load ptr, ptr %3, align 8, !tbaa !261    ; 9 uses
  store ptr %i.z, ptr %13, align 8, !tbaa !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #49
  %.0101.val = load i64, ptr %.010167, align 8
  %i.aa = getelementptr i8, ptr %.010167, i64 8
  %.0101.val159 = load ptr, ptr %i.aa, align 8, !tbaa !119
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_112string_valueERKNS_10xpath_nodeEPNS1_15xpath_allocatorE(ptr dead_on_unwind noalias writable align 8 %14, i64 %.0101.val, ptr %.0101.val159, ptr noundef nonnull %i.z)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  %.val161 = load ptr, ptr %14, align 8, !tbaa !268
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.0.i = phi ptr [ %.val161, %bb.j ], [ %i.ag, %bb.k ] ; 4 uses
  %i.ab = load i8, ptr %.0.i, align 1, !tbaa !86  ; 2 uses
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !86
  %i.af = and i8 %i.ae, 8
  %.not.i = icmp eq i8 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br i1 %.not.i, label %bb.l, label %bb.k, !llvm.loop !41

bb.l:                                             ; preds = %bb.k
  %i.ah = icmp eq i8 %i.ab, 45
  %spec.select.idx.i.i = zext i1 %i.ah to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 %spec.select.idx.i.i ; 3 uses
  %i.ai = load i8, ptr %spec.select.i.i, align 1, !tbaa !86 ; 3 uses
  %.not.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = add i8 %i.ai, -58
  %.not18.i.i = icmp ult i8 %i.aj, -10
  br i1 %.not18.i.i, label %bb.n, label %.preheader316

bb.n:                                             ; preds = %bb.m
  %.not19.i.i = icmp eq i8 %i.ai, 46
  br i1 %.not19.i.i, label %bb.o, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !86
  %i.am = add i8 %i.al, -58
  %.not20.i.i = icmp ult i8 %i.am, -10
  br i1 %.not20.i.i, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit, label %.preheader316

.preheader316:                                    ; preds = %bb.o, %bb.m
  br label %bb.p

bb.p:                                             ; preds = %.preheader316, %bb.p
  %.1.i.i = phi ptr [ %i.ap, %bb.p ], [ %spec.select.i.i, %.preheader316 ] ; 4 uses
  %i.an = load i8, ptr %.1.i.i, align 1, !tbaa !86 ; 2 uses
  %i.ao = add i8 %i.an, -58
  %.not21.i.i = icmp ult i8 %i.ao, -10
  %i.ap = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br i1 %.not21.i.i, label %bb.q, label %bb.p, !llvm.loop !42

bb.q:                                             ; preds = %bb.p
  %i.aq = icmp eq i8 %i.an, 46
  br i1 %i.aq, label %.preheader.i.i, label %.loopexit.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.q, %.preheader.i.i
  %.1.pn.i.i = phi ptr [ %.2.i.i, %.preheader.i.i ], [ %.1.i.i, %bb.q ]
  %.2.i.i = getelementptr inbounds nuw i8, ptr %.1.pn.i.i, i64 1 ; 3 uses
  %i.ar = load i8, ptr %.2.i.i, align 1, !tbaa !86
  %i.as = add i8 %i.ar, -58
  %.not22.i.i = icmp ult i8 %i.as, -10
  br i1 %.not22.i.i, label %.loopexit.i.i.preheader, label %.preheader.i.i, !llvm.loop !43

.loopexit.i.i.preheader:                          ; preds = %.preheader.i.i, %bb.q
  %.4.i.i.ph = phi ptr [ %.1.i.i, %bb.q ], [ %.2.i.i, %.preheader.i.i ]
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.preheader, %.loopexit.i.i
  %.4.i.i = phi ptr [ %i.ay, %.loopexit.i.i ], [ %.4.i.i.ph, %.loopexit.i.i.preheader ] ; 2 uses
  %i.at = load i8, ptr %.4.i.i, align 1, !tbaa !86 ; 2 uses
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !86
  %i.ax = and i8 %i.aw, 8
  %.not23.i.i = icmp eq i8 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %.4.i.i, i64 1
  br i1 %.not23.i.i, label %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i, label %.loopexit.i.i, !llvm.loop !44

_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i: ; preds = %.loopexit.i.i
  %i.az = icmp eq i8 %i.at, 0
  br i1 %i.az, label %bb.r, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit

bb.r:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i
  %i.ba = call double @strtod(ptr noundef nonnull captures(none) %.0.i, ptr noundef null) #49
  br label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit

_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit: ; preds = %bb.r, %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i, %bb.o, %bb.n, %bb.l
  %.05.i = phi double [ %i.ba, %bb.r ], [ +qnan, %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i ], [ +qnan, %bb.l ], [ +qnan, %bb.o ], [ +qnan, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #49
  %.val148 = load ptr, ptr %i.m, align 8, !tbaa !270 ; 2 uses
  %.val15261 = load ptr, ptr %i.n, align 8, !tbaa !271
  %.not13562 = icmp eq ptr %.val148, %.val15261
  br i1 %.not13562, label %.critedge, label %.lr.ph64

bb.s:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %.010063, i64 16 ; 2 uses
  %.val152 = load ptr, ptr %i.n, align 8, !tbaa !271
end_hunk_3
begin_hunk_4_@_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11compare_relINS1_4lessEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_:bb.a
          cleanup
  br label %bb.de

bb.cr:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit332, %.lr.ph
  %.051 = phi ptr [ %.val151, %.lr.ph ], [ %i.lt, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit332 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #49
  %i.ki = load ptr, ptr %3, align 8, !tbaa !261   ; 6 uses
  store ptr %i.ki, ptr %23, align 8, !tbaa !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ke, ptr noundef nonnull align 8 dereferenceable(24) %i.ki, i64 24, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #49
  %.0.val = load i64, ptr %.051, align 8
  %i.kj = getelementptr i8, ptr %.051, i64 8
  %.0.val156 = load ptr, ptr %i.kj, align 8, !tbaa !119
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_112string_valueERKNS_10xpath_nodeEPNS1_15xpath_allocatorE(ptr dead_on_unwind noalias writable align 8 %24, i64 %.0.val, ptr %.0.val156, ptr noundef nonnull %i.ki)
          to label %bb.cs unwind label %bb.dc

bb.cs:                                            ; preds = %bb.cr
  %.val163 = load ptr, ptr %24, align 8, !tbaa !268
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ct, %bb.cs
  %.0.i305 = phi ptr [ %.val163, %bb.cs ], [ %i.kp, %bb.ct ] ; 4 uses
  %i.kk = load i8, ptr %.0.i305, align 1, !tbaa !86 ; 2 uses
  %i.kl = zext i8 %i.kk to i64
  %i.km = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.kl
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !86
  %i.ko = and i8 %i.kn, 8
  %.not.i306 = icmp eq i8 %i.ko, 0
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i305, i64 1
  br i1 %.not.i306, label %bb.cu, label %bb.ct, !llvm.loop !41

bb.cu:                                            ; preds = %bb.ct
  %i.kq = icmp eq i8 %i.kk, 45
  %spec.select.idx.i.i307 = zext i1 %i.kq to i64
  %spec.select.i.i308 = getelementptr inbounds nuw i8, ptr %.0.i305, i64 %spec.select.idx.i.i307 ; 3 uses
  %i.kr = load i8, ptr %spec.select.i.i308, align 1, !tbaa !86 ; 3 uses
  %.not.i.i309 = icmp eq i8 %i.kr, 0
  br i1 %.not.i.i309, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit325, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ks = add i8 %i.kr, -58
  %.not18.i.i310 = icmp ult i8 %i.ks, -10
  br i1 %.not18.i.i310, label %bb.cw, label %.preheader344

bb.cw:                                            ; preds = %bb.cv
  %.not19.i.i323 = icmp eq i8 %i.kr, 46
  br i1 %.not19.i.i323, label %bb.cx, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit325

bb.cx:                                            ; preds = %bb.cw
  %i.kt = getelementptr inbounds nuw i8, ptr %spec.select.i.i308, i64 1
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !86
  %i.kv = add i8 %i.ku, -58
  %.not20.i.i324 = icmp ult i8 %i.kv, -10
  br i1 %.not20.i.i324, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit325, label %.preheader344

.preheader344:                                    ; preds = %bb.cx, %bb.cv
  br label %bb.cy

bb.cy:                                            ; preds = %.preheader344, %bb.cy
  %.1.i.i311 = phi ptr [ %i.ky, %bb.cy ], [ %spec.select.i.i308, %.preheader344 ] ; 4 uses
  %i.kw = load i8, ptr %.1.i.i311, align 1, !tbaa !86 ; 2 uses
  %i.kx = add i8 %i.kw, -58
  %.not21.i.i312 = icmp ult i8 %i.kx, -10
  %i.ky = getelementptr inbounds nuw i8, ptr %.1.i.i311, i64 1
  br i1 %.not21.i.i312, label %bb.cz, label %bb.cy, !llvm.loop !42

bb.cz:                                            ; preds = %bb.cy
  %i.kz = icmp eq i8 %i.kw, 46
  br i1 %i.kz, label %.preheader.i.i319, label %.loopexit.i.i313.preheader

.preheader.i.i319:                                ; preds = %bb.cz, %.preheader.i.i319
  %.1.pn.i.i320 = phi ptr [ %.2.i.i321, %.preheader.i.i319 ], [ %.1.i.i311, %bb.cz ]
  %.2.i.i321 = getelementptr inbounds nuw i8, ptr %.1.pn.i.i320, i64 1 ; 3 uses
  %i.la = load i8, ptr %.2.i.i321, align 1, !tbaa !86
  %i.lb = add i8 %i.la, -58
  %.not22.i.i322 = icmp ult i8 %i.lb, -10
  br i1 %.not22.i.i322, label %.loopexit.i.i313.preheader, label %.preheader.i.i319, !llvm.loop !43

.loopexit.i.i313.preheader:                       ; preds = %.preheader.i.i319, %bb.cz
  %.4.i.i315.ph = phi ptr [ %.1.i.i311, %bb.cz ], [ %.2.i.i321, %.preheader.i.i319 ]
  br label %.loopexit.i.i313

.loopexit.i.i313:                                 ; preds = %.loopexit.i.i313.preheader, %.loopexit.i.i313
  %.4.i.i315 = phi ptr [ %i.lh, %.loopexit.i.i313 ], [ %.4.i.i315.ph, %.loopexit.i.i313.preheader ] ; 2 uses
  %i.lc = load i8, ptr %.4.i.i315, align 1, !tbaa !86 ; 2 uses
  %i.ld = zext i8 %i.lc to i64
  %i.le = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.ld
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !86
  %i.lg = and i8 %i.lf, 8
  %.not23.i.i316 = icmp eq i8 %i.lg, 0
  %i.lh = getelementptr inbounds nuw i8, ptr %.4.i.i315, i64 1
  br i1 %.not23.i.i316, label %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i317, label %.loopexit.i.i313, !llvm.loop !44

_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i317: ; preds = %.loopexit.i.i313
  %i.li = icmp eq i8 %i.lc, 0
  br i1 %i.li, label %bb.da, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit325

bb.da:                                            ; preds = %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i317
  %i.lj = call double @strtod(ptr noundef nonnull captures(none) %.0.i305, ptr noundef null) #49
  br label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit325

_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit325: ; preds = %bb.da, %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i317, %bb.cx, %bb.cw, %bb.cu
  %.05.i318 = phi double [ %i.lj, %bb.da ], [ +qnan, %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i317 ], [ +qnan, %bb.cu ], [ +qnan, %bb.cx ], [ +qnan, %bb.cw ]
  %i.lk = fcmp olt double %.05.i318, %i.kb        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #49
  %i.ll = load ptr, ptr %i.ki, align 8, !tbaa !223 ; 2 uses
  %i.lm = load ptr, ptr %i.ke, align 8, !tbaa !223 ; 3 uses
  %.not9.i.i326 = icmp eq ptr %i.ll, %i.lm
  br i1 %.not9.i.i326, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit332, label %.lr.ph.i.i327

.lr.ph.i.i327:                                    ; preds = %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit325, %.noexc.i329
  %.010.i.i328 = phi ptr [ %i.ln, %.noexc.i329 ], [ %i.ll, %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit325 ] ; 2 uses
  %i.ln = load ptr, ptr %.010.i.i328, align 8, !tbaa !240 ; 2 uses
  %i.lo = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.lo(ptr noundef nonnull %.010.i.i328)
          to label %.noexc.i329 unwind label %bb.db, !inline_history !39

.noexc.i329:                                      ; preds = %.lr.ph.i.i327
  %.not.i.i330 = icmp eq ptr %i.ln, %i.lm
  br i1 %.not.i.i330, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit332, label %.lr.ph.i.i327, !llvm.loop !40

bb.db:                                            ; preds = %.lr.ph.i.i327
  %i.lp = landingpad { ptr, i32 }
          catch ptr null
  %i.lq = extractvalue { ptr, i32 } %i.lp, 0
  call void @__clang_call_terminate(ptr %i.lq) #48
  unreachable

_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit332: ; preds = %.noexc.i329, %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit325
  store ptr %i.lm, ptr %i.ki, align 8, !tbaa !223
  %i.lr = load i64, ptr %i.kf, align 8, !tbaa !224
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store i64 %i.lr, ptr %i.ls, align 8, !tbaa !224
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #49
  %i.lt = getelementptr inbounds nuw i8, ptr %.051, i64 16 ; 2 uses
  %.val155 = load ptr, ptr %i.kd, align 8
  %.not.not = icmp eq ptr %i.lt, %.val155
  %or.cond315 = select i1 %i.lk, i1 true, i1 %.not.not
  br i1 %or.cond315, label %.critedge146, label %bb.cr, !llvm.loop !699

bb.dc:                                            ; preds = %bb.cr
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #49
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %23) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #49
  br label %bb.de

.critedge146:                                     ; preds = %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit332, %bb.co
  %.not.lcssa = phi i1 [ false, %bb.co ], [ %i.lk, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit332 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #49
  %i.lv = load ptr, ptr %i.jz, align 8, !tbaa !223 ; 2 uses
  %i.lw = load ptr, ptr %i.ka, align 8, !tbaa !223 ; 3 uses
  %.not9.i.i333 = icmp eq ptr %i.lv, %i.lw
  br i1 %.not9.i.i333, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit339, label %.lr.ph.i.i334

.lr.ph.i.i334:                                    ; preds = %.critedge146, %.noexc.i336
  %.010.i.i335 = phi ptr [ %i.lx, %.noexc.i336 ], [ %i.lv, %.critedge146 ] ; 2 uses
  %i.lx = load ptr, ptr %.010.i.i335, align 8, !tbaa !240 ; 2 uses
  %i.ly = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  invoke void %i.ly(ptr noundef nonnull %.010.i.i335)
          to label %.noexc.i336 unwind label %bb.dd, !inline_history !39

.noexc.i336:                                      ; preds = %.lr.ph.i.i334
  %.not.i.i337 = icmp eq ptr %i.lx, %i.lw
  br i1 %.not.i.i337, label %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit339, label %.lr.ph.i.i334, !llvm.loop !40

bb.dd:                                            ; preds = %.lr.ph.i.i334
  %i.lz = landingpad { ptr, i32 }
          catch ptr null
  %i.ma = extractvalue { ptr, i32 } %i.lz, 0
  call void @__clang_call_terminate(ptr %i.ma) #48
  unreachable

_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit339: ; preds = %.noexc.i336, %.critedge146
  store ptr %i.lw, ptr %i.jz, align 8, !tbaa !223
  %i.mb = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !224
  %i.md = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store i64 %i.mc, ptr %i.md, align 8, !tbaa !224
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #49
  br label %bb.df

bb.de:                                            ; preds = %bb.cq, %bb.dc, %bb.cp
  %.pn.pn = phi { ptr, i32 } [ %i.kg, %bb.cp ], [ %i.lu, %bb.dc ], [ %i.kh, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #49
  call fastcc void @_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %21) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #49
  br label %bb.dg

bb.df:                                            ; preds = %_ZNK4pugi8xml_node9attributeEPKc.exit299, %_ZNK4pugi13xml_attribute5valueEv.exit304, %_ZNK4pugi8xml_node9attributeEPKc.exit, %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit249, %bb.cd, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit339, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit284, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit223, %bb.b
  %.14 = phi i1 [ %i.g, %bb.b ], [ %.not13421, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit223 ], [ false, %bb.cd ], [ %.not129.lcssa, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit284 ], [ %i.gu, %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit249 ], [ %.not.lcssa, %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit339 ], [ false, %_ZNK4pugi8xml_node9attributeEPKc.exit ], [ false, %_ZNK4pugi8xml_node9attributeEPKc.exit299 ], [ %i.jy, %_ZNK4pugi13xml_attribute5valueEv.exit304 ]
  ret i1 %.14

bb.dg:                                            ; preds = %bb.de, %bb.cc, %bb.ar
  %.pn136.pn.pn.pn = phi { ptr, i32 } [ %.pn136.pn.pn, %bb.ar ], [ %.pn130.pn, %bb.cc ], [ %.pn.pn, %bb.de ]
  resume { ptr, i32 } %.pn136.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11compare_relINS1_10less_equalEEEbPS2_S5_RKNS1_13xpath_contextERKNS1_11xpath_stackERKT_(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pugi::xml_attribute", align 8 ; 6 uses
  %5 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %6 = alloca %"class.pugi::xml_attribute", align 8 ; 6 uses
  %7 = alloca %"class.pugi::xml_node", align 8    ; 4 uses
  %8 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 6 uses
  %9 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 6 uses
  %10 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %11 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %12 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %13 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 8 uses
  %14 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %15 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %16 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 10 uses
  %17 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %18 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %19 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %20 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %21 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %22 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_node_set_raw", align 8 ; 6 uses
  %23 = alloca %"struct.pugi::impl::(anonymous namespace)::xpath_allocator_capture", align 8 ; 7 uses
  %24 = alloca %"class.pugi::impl::(anonymous namespace)::xpath_string", align 8 ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 1
  %.val147 = load i8, ptr %i.a, align 1, !tbaa !246
  %i.b = getelementptr i8, ptr %1, i64 1
  %.val = load i8, ptr %i.b, align 1, !tbaa !246
  %i.c = icmp ne i8 %.val147, 1                   ; 3 uses
  %i.d = icmp ne i8 %.val, 1                      ; 3 uses
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.f = tail call fastcc noundef double @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node11eval_numberERKNS1_13xpath_contextERKNS1_11xpath_stackE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.g = fcmp ole double %i.e, %i.f
  br label %bb.df

bb.c:                                             ; preds = %bb.a
  %.not = xor i1 %i.c, true                       ; 2 uses
  %.not97 = xor i1 %i.d, true                     ; 2 uses
  %or.cond10 = and i1 %.not, %.not97
  br i1 %or.cond10, label %bb.d, label %bb.as

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #49
  %i.h = load ptr, ptr %3, align 8, !tbaa !261    ; 5 uses
  store ptr %i.h, ptr %10, align 8, !tbaa !263
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #49
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node13eval_node_setERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tE(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #49
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114xpath_ast_node13eval_node_setERKNS1_13xpath_contextERKNS1_11xpath_stackENS1_14nodeset_eval_tE(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.val149 = load ptr, ptr %i.j, align 8, !tbaa !270 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %.val15365 = load ptr, ptr %i.k, align 8, !tbaa !271
  %.not13466.not = icmp eq ptr %.val149, %.val15365
  br i1 %.not13466.not, label %.critedge142, label %.lr.ph69

.lr.ph69:                                         ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.h:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.i:                                             ; preds = %.lr.ph69, %.loopexit6
  %.010167 = phi ptr [ %.val149, %.lr.ph69 ], [ %i.en, %.loopexit6 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #49
  %i.z = load ptr, ptr %3, align 8, !tbaa !261    ; 9 uses
  store ptr %i.z, ptr %13, align 8, !tbaa !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !266
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #49
  %.0101.val = load i64, ptr %.010167, align 8
  %i.aa = getelementptr i8, ptr %.010167, i64 8
  %.0101.val159 = load ptr, ptr %i.aa, align 8, !tbaa !119
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_112string_valueERKNS_10xpath_nodeEPNS1_15xpath_allocatorE(ptr dead_on_unwind noalias writable align 8 %14, i64 %.0101.val, ptr %.0101.val159, ptr noundef nonnull %i.z)
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  %.val161 = load ptr, ptr %14, align 8, !tbaa !268
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.0.i = phi ptr [ %.val161, %bb.j ], [ %i.ag, %bb.k ] ; 4 uses
  %i.ab = load i8, ptr %.0.i, align 1, !tbaa !86  ; 2 uses
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !86
  %i.af = and i8 %i.ae, 8
  %.not.i = icmp eq i8 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br i1 %.not.i, label %bb.l, label %bb.k, !llvm.loop !41

bb.l:                                             ; preds = %bb.k
  %i.ah = icmp eq i8 %i.ab, 45
  %spec.select.idx.i.i = zext i1 %i.ah to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 %spec.select.idx.i.i ; 3 uses
  %i.ai = load i8, ptr %spec.select.i.i, align 1, !tbaa !86 ; 3 uses
  %.not.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = add i8 %i.ai, -58
  %.not18.i.i = icmp ult i8 %i.aj, -10
  br i1 %.not18.i.i, label %bb.n, label %.preheader316

bb.n:                                             ; preds = %bb.m
  %.not19.i.i = icmp eq i8 %i.ai, 46
  br i1 %.not19.i.i, label %bb.o, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !86
  %i.am = add i8 %i.al, -58
  %.not20.i.i = icmp ult i8 %i.am, -10
  br i1 %.not20.i.i, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit, label %.preheader316

.preheader316:                                    ; preds = %bb.o, %bb.m
  br label %bb.p

bb.p:                                             ; preds = %.preheader316, %bb.p
  %.1.i.i = phi ptr [ %i.ap, %bb.p ], [ %spec.select.i.i, %.preheader316 ] ; 4 uses
  %i.an = load i8, ptr %.1.i.i, align 1, !tbaa !86 ; 2 uses
  %i.ao = add i8 %i.an, -58
  %.not21.i.i = icmp ult i8 %i.ao, -10
  %i.ap = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br i1 %.not21.i.i, label %bb.q, label %bb.p, !llvm.loop !42

bb.q:                                             ; preds = %bb.p
  %i.aq = icmp eq i8 %i.an, 46
  br i1 %i.aq, label %.preheader.i.i, label %.loopexit.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.q, %.preheader.i.i
  %.1.pn.i.i = phi ptr [ %.2.i.i, %.preheader.i.i ], [ %.1.i.i, %bb.q ]
  %.2.i.i = getelementptr inbounds nuw i8, ptr %.1.pn.i.i, i64 1 ; 3 uses
  %i.ar = load i8, ptr %.2.i.i, align 1, !tbaa !86
  %i.as = add i8 %i.ar, -58
  %.not22.i.i = icmp ult i8 %i.as, -10
  br i1 %.not22.i.i, label %.loopexit.i.i.preheader, label %.preheader.i.i, !llvm.loop !43

.loopexit.i.i.preheader:                          ; preds = %.preheader.i.i, %bb.q
  %.4.i.i.ph = phi ptr [ %.1.i.i, %bb.q ], [ %.2.i.i, %.preheader.i.i ]
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.preheader, %.loopexit.i.i
  %.4.i.i = phi ptr [ %i.ay, %.loopexit.i.i ], [ %.4.i.i.ph, %.loopexit.i.i.preheader ] ; 2 uses
  %i.at = load i8, ptr %.4.i.i, align 1, !tbaa !86 ; 2 uses
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @_ZN4pugi4impl12_GLOBAL__N_114chartype_tableE, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !86
  %i.ax = and i8 %i.aw, 8
  %.not23.i.i = icmp eq i8 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %.4.i.i, i64 1
  br i1 %.not23.i.i, label %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i, label %.loopexit.i.i, !llvm.loop !44

_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i: ; preds = %.loopexit.i.i
  %i.az = icmp eq i8 %i.at, 0
  br i1 %i.az, label %bb.r, label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit

bb.r:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i
  %i.ba = call double @strtod(ptr noundef nonnull captures(none) %.0.i, ptr noundef null) #49
  br label %_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit

_ZN4pugi4impl12_GLOBAL__N_124convert_string_to_numberEPKc.exit: ; preds = %bb.r, %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i, %bb.o, %bb.n, %bb.l
  %.05.i = phi double [ %i.ba, %bb.r ], [ +qnan, %_ZN4pugi4impl12_GLOBAL__N_129check_string_to_number_formatEPKc.exit.i ], [ +qnan, %bb.l ], [ +qnan, %bb.o ], [ +qnan, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #49
  %.val148 = load ptr, ptr %i.m, align 8, !tbaa !270 ; 2 uses
  %.val15261 = load ptr, ptr %i.n, align 8, !tbaa !271
  %.not13562 = icmp eq ptr %.val148, %.val15261
  br i1 %.not13562, label %.critedge, label %.lr.ph64

bb.s:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_123xpath_allocator_captureD2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %.010063, i64 16 ; 2 uses
  %.val152 = load ptr, ptr %i.n, align 8, !tbaa !271
end_hunk_4
