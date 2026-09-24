Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/io?download=true
inline.NumInlined: 17817
inline.NumDeleted: 4455
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_ZN5osgeo4proj2io10JSONParser15buildPropertiesERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEbb:bb.a
  %i.pt = trunc i64 %i.pr to i32                  ; 2 uses
  br i1 %i.ps, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  store i32 0, ptr %i.pq, align 8, !tbaa !211
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pp, i64 12
  store i32 0, ptr %i.pu, align 4, !tbaa !212
  %i.pv = load ptr, ptr %i.pp, align 8, !tbaa !156
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %i.px = load ptr, ptr %i.pw, align 8
  call void %i.px(ptr noundef nonnull align 8 dereferenceable(16) %i.pp) #41, !inline_history !12
  %i.py = load ptr, ptr %i.pp, align 8, !tbaa !156
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 24
  %i.qa = load ptr, ptr %i.pz, align 8
  call void %i.qa(ptr noundef nonnull align 8 dereferenceable(16) %i.pp) #41, !inline_history !12
  br label %_ZNSt12__shared_ptrIN5osgeo4proj6common12ObjectDomainELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit183

bb.gg:                                            ; preds = %bb.ge
  %i.qb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i180 = icmp eq i8 %i.qb, 0
  br i1 %.not.i.i.i180, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.qc = add nsw i32 %i.pt, -1
  store i32 %i.qc, ptr %i.pq, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i181

bb.gi:                                            ; preds = %bb.gg
  %i.qd = atomicrmw volatile add ptr %i.pq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i181

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i181: ; preds = %bb.gi, %bb.gh
  %.0.i.i.i.i182 = phi i32 [ %i.pt, %bb.gh ], [ %i.qd, %bb.gi ]
  %i.qe = icmp eq i32 %.0.i.i.i.i182, 1
  br i1 %i.qe, label %bb.gj, label %_ZNSt12__shared_ptrIN5osgeo4proj6common12ObjectDomainELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit183, !prof !214

bb.gj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i181
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pp) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj6common12ObjectDomainELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit183

_ZNSt12__shared_ptrIN5osgeo4proj6common12ObjectDomainELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit183: ; preds = %bb.gd, %bb.gf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i181, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #41
  br label %bb.gl

bb.gk:                                            ; preds = %.body172, %bb.gc
  %.pn61 = phi { ptr, i32 } [ %i.ow, %.body172 ], [ %i.pn, %bb.gc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #41
  br label %bb.gm

bb.gl:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj4util17ArrayOfBaseObjectEEED2Ev.exit164, %_ZNSt12__shared_ptrIN5osgeo4proj6common12ObjectDomainELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit183
  ret void

bb.gm:                                            ; preds = %bb.gk, %bb.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %bb.cu, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %bb.m
  %.pn75.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn75.pn.pn.pn, %bb.bm ], [ %.pn67.pn.pn.pn, %bb.fo ], [ %.pn61, %bb.gk ], [ %i.bc, %bb.m ], [ %.pn59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %.pn55.pn.pn, %bb.cu ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ]
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #41
  resume { ptr, i32 } %.pn75.pn.pn.pn.pn

bb.gn:                                            ; preds = %bb.dy, %bb.dt, %bb.di, %bb.ak
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann6detail9iter_implINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !647    ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !625
  switch i8 %i.b, label %bb.h [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !649
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !650
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 32) #41 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.747, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN13proj_nlohmann6detail16invalid_iterator6createEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.proj_nlohmann::detail::invalid_iterator") align 8 %i.h, i32 noundef 214, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr %i.h, ptr nonnull @_ZTIN13proj_nlohmann6detail16invalid_iteratorE, ptr nonnull @_ZN13proj_nlohmann6detail9exceptionD2Ev) #42
          to label %bb.o unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br label %.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %.05 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !163    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.n = load i64, ptr %i.l, align 8, !tbaa !166
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br i1 %.05, label %.sink.split, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br i1 %.05, label %.sink.split, label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !648
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.m, label %bb.i, !prof !240

bb.i:                                             ; preds = %bb.h
  %i.s = tail call ptr @__cxa_allocate_exception(i64 32) #41 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.747, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN13proj_nlohmann6detail16invalid_iterator6createEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.proj_nlohmann::detail::invalid_iterator") align 8 %i.s, i32 noundef 214, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr %i.s, ptr nonnull @_ZTIN13proj_nlohmann6detail16invalid_iteratorE, ptr nonnull @_ZN13proj_nlohmann6detail9exceptionD2Ev) #42
          to label %bb.o unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread: ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.j ]  ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !163    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.l
  %i.y = load i64, ptr %i.w, align 8, !tbaa !166
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br i1 %.0, label %.sink.split, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br i1 %.0, label %.sink.split, label %bb.n

bb.m:                                             ; preds = %bb.h, %bb.c, %bb.b
  %.012 = phi ptr [ %i.g, %bb.c ], [ %i.e, %bb.b ], [ %i.a, %bb.h ]
  ret ptr %.012

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ]
  %.pn14.pn.ph = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ]
  call void @__cxa_free_exception(ptr %.sink) #41
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn14.pn = phi { ptr, i32 } [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn14.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn14.pn

bb.o:                                             ; preds = %bb.k, %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io10JSONParser6createERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.osgeo::proj::util::BaseObjectNNPtr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 38 uses
  %4 = alloca %"class.dropbox::oxygen::nn.383", align 8 ; 6 uses
  %5 = alloca %"class.dropbox::oxygen::nn.347", align 8 ; 6 uses
  %6 = alloca %"class.dropbox::oxygen::nn.580", align 8 ; 6 uses
  %7 = alloca %"class.dropbox::oxygen::nn.621", align 8 ; 6 uses
  %8 = alloca %"class.dropbox::oxygen::nn.643", align 8 ; 6 uses
  %9 = alloca %"class.dropbox::oxygen::nn.630", align 8 ; 6 uses
  %10 = alloca %"class.dropbox::oxygen::nn.659", align 8 ; 6 uses
  %11 = alloca %"class.dropbox::oxygen::nn.668", align 8 ; 6 uses
  %12 = alloca %"class.dropbox::oxygen::nn.651", align 8 ; 6 uses
  %13 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 8 uses
  %14 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %15 = alloca %"class.std::shared_ptr.348", align 16 ; 10 uses
  %16 = alloca %"class.dropbox::oxygen::nn.298", align 8 ; 10 uses
  %17 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %18 = alloca %"class.dropbox::oxygen::nn.409", align 8 ; 8 uses
  %19 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %20 = alloca %"class.std::shared_ptr.303", align 8 ; 10 uses
  %21 = alloca %"class.dropbox::oxygen::nn.453", align 8 ; 7 uses
  %22 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %23 = alloca %"class.dropbox::oxygen::nn.347", align 16 ; 7 uses
  %24 = alloca %"class.dropbox::oxygen::nn.302", align 8 ; 8 uses
  %25 = alloca %"class.std::shared_ptr.332", align 8 ; 9 uses
  %26 = alloca %"class.dropbox::oxygen::nn.453", align 8 ; 6 uses
  %27 = alloca %"class.osgeo::proj::util::PropertyMap", align 8 ; 7 uses
  %28 = alloca %"class.dropbox::oxygen::nn.347", align 16 ; 7 uses
  %29 = alloca %"class.dropbox::oxygen::nn.331", align 8 ; 7 uses
  %30 = alloca %"class.dropbox::oxygen::nn.449", align 8 ; 7 uses
  %31 = alloca %"class.dropbox::oxygen::nn.676", align 8 ; 7 uses
  %32 = alloca %"class.dropbox::oxygen::nn.634", align 8 ; 7 uses
  %33 = alloca %"class.dropbox::oxygen::nn.664", align 8 ; 7 uses
  %34 = alloca %"class.dropbox::oxygen::nn.672", align 8 ; 7 uses
  %35 = alloca %"class.dropbox::oxygen::nn.655", align 8 ; 7 uses
  %36 = alloca %"class.dropbox::oxygen::nn.243", align 16 ; 7 uses
  %37 = alloca %"class.dropbox::oxygen::nn.195", align 16 ; 7 uses
  %38 = alloca %"class.dropbox::oxygen::nn.256", align 16 ; 7 uses
  %39 = alloca %"class.dropbox::oxygen::nn.239", align 16 ; 7 uses
  %40 = alloca %"class.dropbox::oxygen::nn.589", align 16 ; 7 uses
  %41 = alloca %"class.dropbox::oxygen::nn.605", align 16 ; 7 uses
  %42 = alloca %"class.dropbox::oxygen::nn.609", align 16 ; 7 uses
  %43 = alloca %"class.dropbox::oxygen::nn.593", align 16 ; 7 uses
  %44 = alloca %"class.dropbox::oxygen::nn.178", align 16 ; 7 uses
  %45 = alloca %"class.dropbox::oxygen::nn.190", align 16 ; 7 uses
  %46 = alloca %"class.dropbox::oxygen::nn.298", align 16 ; 7 uses
  %47 = alloca %"class.dropbox::oxygen::nn.409", align 8 ; 7 uses
  %48 = alloca %"class.dropbox::oxygen::nn.495", align 8 ; 7 uses
  %49 = alloca %"class.dropbox::oxygen::nn.504", align 8 ; 7 uses
  %50 = alloca %"class.dropbox::oxygen::nn.508", align 16 ; 7 uses
  %51 = alloca %"class.dropbox::oxygen::nn.680", align 16 ; 7 uses
  %52 = alloca %"class.dropbox::oxygen::nn.292", align 16 ; 7 uses
  %i.a = load i8, ptr %2, align 8, !tbaa !625
  %i.b = icmp eq i8 %i.a, 1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 40) #41 ; 3 uses
  invoke void @_ZN5osgeo4proj2io16ParsingExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull @.str.317)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #41
  br label %bb.ny

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @_ZN5osgeo4proj2io10JSONParser9getStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.285)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !164  ; 6 uses
  switch i64 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348.thread358 [
    i64 13, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit83
    i64 12, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit91
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit115
    i64 14, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit296
    i64 18, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit314
    i64 20, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit348
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.g = load ptr, ptr %3, align 8, !tbaa !163    ; 3 uses
  %i.h = load i64, ptr %i.g, align 1
  %i.i = xor i64 %i.h, 7525622121325618503
  %i.j = getelementptr i8, ptr %i.g, i64 5
  %i.k = load i64, ptr %i.j, align 1
  %i.l = xor i64 %i.k, 6003935347487567969
  %i.m = or i64 %i.i, %i.l
  %i.n = icmp ne i64 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit302

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  invoke void @_ZN5osgeo4proj2io10JSONParser18buildGeographicCRSERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"class.dropbox::oxygen::nn.383") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.q = load ptr, ptr %4, align 8, !tbaa !243    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !209  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load i32, ptr %i.t, align 4, !tbaa !213
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !213
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.i

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.y = icmp eq ptr %i.q, null
  br i1 %i.y, label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs13GeographicCRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.i
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !156
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %i.q, i64 %i.ab
  br label %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs13GeographicCRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit

_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs13GeographicCRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.i, %bb.j
  %i.ad = phi ptr [ %i.ac, %bb.j ], [ null, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.i ]
  store ptr %i.ad, ptr %0, align 8, !tbaa !293
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.ae, align 8, !tbaa !209
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !209 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs13GeographicCRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ag, align 8, !tbaa !211
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !212
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !156
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #41, !inline_history !55
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !156
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #41, !inline_history !55
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i = phi i32 [ %i.aj, %bb.n ], [ %i.at, %bb.o ]
  %i.au = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.au, label %bb.p, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit, !prof !214

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs13GeographicCRSEEED2Ev.exit: ; preds = %_ZN5osgeo4proj4util15BaseObjectNNPtrC2INS0_3crs13GeographicCRSEEEON7dropbox6oxygen2nnISt10shared_ptrIT_EEE.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.nw

bb.q:                                             ; preds = %bb.nu
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.nx

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
end_hunk_0
begin_hunk_1_@"_ZZN5osgeo4proj2io10JSONParser16buildVerticalCRSERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEEENK3$_0clESI_":bb.a
  %i.hy = load ptr, ptr %i.hs, align 8, !tbaa !156
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #41, !inline_history !63
  %i.ib = load ptr, ptr %i.hs, align 8, !tbaa !156
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.id = load ptr, ptr %i.ic, align 8
  call void %i.id(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #41, !inline_history !63
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit66

bb.cf:                                            ; preds = %bb.cd
  %i.ie = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i63 = icmp eq i8 %i.ie, 0
  br i1 %.not.i.i.i.i63, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.if = add nsw i32 %i.hw, -1
  store i32 %i.if, ptr %i.ht, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i64

bb.ch:                                            ; preds = %bb.cf
  %i.ig = atomicrmw volatile add ptr %i.ht, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i64

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i64: ; preds = %bb.ch, %bb.cg
  %.0.i.i.i.i.i65 = phi i32 [ %i.hw, %bb.cg ], [ %i.ig, %bb.ch ]
  %i.ih = icmp eq i32 %.0.i.i.i.i.i65, 1
  br i1 %i.ih, label %bb.ci, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit66, !prof !214

bb.ci:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i64
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hs) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit66

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit66: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit61, %bb.ce, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i64, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  %i.ii = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !209 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ij, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit66
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 4 uses
  %i.il = load atomic i64, ptr %i.ik acquire, align 8 ; 2 uses
  %i.im = icmp eq i64 %i.il, 4294967297
  %i.in = trunc i64 %i.il to i32                  ; 2 uses
  br i1 %i.im, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  store i32 0, ptr %i.ik, align 8, !tbaa !211
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  store i32 0, ptr %i.io, align 4, !tbaa !212
  %i.ip = load ptr, ptr %i.ij, align 8, !tbaa !156
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8
  call void %i.ir(ptr noundef nonnull align 8 dereferenceable(16) %i.ij) #41, !inline_history !66
  %i.is = load ptr, ptr %i.ij, align 8, !tbaa !156
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(16) %i.ij) #41, !inline_history !66
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cl:                                            ; preds = %bb.cj
  %i.iv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i67 = icmp eq i8 %i.iv, 0
  br i1 %.not.i.i.i67, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.iw = add nsw i32 %i.in, -1
  store i32 %i.iw, ptr %i.ik, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.cn:                                            ; preds = %bb.cl
  %i.ix = atomicrmw volatile add ptr %i.ik, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.cn, %bb.cm
  %.0.i.i.i.i = phi i32 [ %i.in, %bb.cm ], [ %i.ix, %bb.cn ]
  %i.iy = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.iy, label %bb.co, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !214

bb.co:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ij) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev.exit66, %bb.ck, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.iz = load ptr, ptr %i.cn, align 8, !tbaa !209 ; 8 uses
  %.not.i.i.i68 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i68, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11VerticalCRSEEED2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 4 uses
  %i.jb = load atomic i64, ptr %i.ja acquire, align 8 ; 2 uses
  %i.jc = icmp eq i64 %i.jb, 4294967297
  %i.jd = trunc i64 %i.jb to i32                  ; 2 uses
  br i1 %i.jc, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store i32 0, ptr %i.ja, align 8, !tbaa !211
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 12
  store i32 0, ptr %i.je, align 4, !tbaa !212
  %i.jf = load ptr, ptr %i.iz, align 8, !tbaa !156
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(16) %i.iz) #41, !inline_history !90
  %i.ji = load ptr, ptr %i.iz, align 8, !tbaa !156
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jk = load ptr, ptr %i.jj, align 8
  call void %i.jk(ptr noundef nonnull align 8 dereferenceable(16) %i.iz) #41, !inline_history !90
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11VerticalCRSEEED2Ev.exit

bb.cr:                                            ; preds = %bb.cp
  %i.jl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i69 = icmp eq i8 %i.jl, 0
  br i1 %.not.i.i.i.i69, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.jm = add nsw i32 %i.jd, -1
  store i32 %i.jm, ptr %i.ja, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i70

bb.ct:                                            ; preds = %bb.cr
  %i.jn = atomicrmw volatile add ptr %i.ja, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i70

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i70: ; preds = %bb.ct, %bb.cs
  %.0.i.i.i.i.i71 = phi i32 [ %i.jd, %bb.cs ], [ %i.jn, %bb.ct ]
  %i.jo = icmp eq i32 %.0.i.i.i.i.i71, 1
  br i1 %i.jo, label %bb.cu, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11VerticalCRSEEED2Ev.exit, !prof !214

bb.cu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i70
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iz) #41
  br label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11VerticalCRSEEED2Ev.exit

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11VerticalCRSEEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.cq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i70, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret void

bb.cv:                                            ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2IS2_INS5_13GeographicCRSEETnNSt9enable_ifIXsr3std14is_convertibleIT_S7_EE5valueEiE4typeELi0EEERKNS1_ISD_EE.exit
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cw:                                            ; preds = %bb.at
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cx:                                            ; preds = %bb.au
  %i.jr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj8metadata18PositionalAccuracyEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation21GeneralParameterValueEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation15OperationMethodEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #41
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.pn15 = phi { ptr, i32 } [ %i.jr, %bb.cx ], [ %i.jq, %bb.cw ]
  call void @_ZNSt6vectorIN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj9operation18OperationParameterEEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #41
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cv
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %bb.cy ], [ %i.jp, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.ai, %bb.af
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %bb.cz ], [ %.pn13, %bb.ai ], [ %i.ca, %bb.af ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs11VerticalCRSEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #41
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.ae
  %.pn15.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn.pn, %bb.da ], [ %.pn, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @_ZN5osgeo4proj4util11PropertyMapD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %.pn15.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io10JSONParser8buildCRSERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.dropbox::oxygen::nn.405") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.406", align 8 ; 9 uses
  %4 = alloca %"struct.osgeo::proj::util::BaseObjectNNPtr", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @_ZN5osgeo4proj2io10JSONParser6createERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.osgeo::proj::util::BaseObjectNNPtr") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1875)
  %i.a = load ptr, ptr %4, align 8, !tbaa !293, !noalias !1875 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs3CRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread16, label %bb.b

bb.b:                                             ; preds = %bb.a
  %5 = tail call ptr @__dynamic_cast(ptr nonnull %i.a, ptr nonnull @_ZTIN5osgeo4proj4util10BaseObjectE, ptr nonnull @_ZTIN5osgeo4proj3crs3CRSE, i64 0) #41, !noalias !1875 ; 3 uses
  %.not.i = icmp eq ptr %5, null
  br i1 %.not.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs3CRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread16, label %bb.c

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs3CRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread16: ; preds = %bb.a, %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !1875
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.n

bb.c:                                             ; preds = %bb.b
  store ptr %5, ptr %3, align 8, !tbaa !452, !alias.scope !1875
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !209, !noalias !1875 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !209, !alias.scope !1875
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs3CRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166, !noalias !1875
  %.not.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs3CRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %i.f, align 4, !tbaa !213, !noalias !1875
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !213, !noalias !1875
  br label %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs3CRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs3CRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread: ; preds = %bb.e, %bb.c
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.f

_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs3CRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit: ; preds = %bb.d
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4, !noalias !1875 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !452   ; 2 uses
  call void @_ZN5osgeo4proj4util15BaseObjectNNPtrD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %.not = icmp eq ptr %.pre, null
  br i1 %.not, label %bb.n, label %bb.f

bb.f:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs3CRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs3CRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit
  %i.k = phi ptr [ %5, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs3CRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread ], [ %.pre, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs3CRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit ]
  store ptr %i.k, ptr %0, align 8, !tbaa !452
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !209  ; 4 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !209
  %.not.i.i.i.i7 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i7, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i.i.i8 = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i8, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, label %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread: ; preds = %bb.g
  %i.q = load i32, ptr %i.o, align 4, !tbaa !213
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !213
  br label %bb.h

_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit: ; preds = %bb.g
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.m, align 8, !tbaa !209 ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit
  %.pr20 = phi ptr [ %i.n, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit.thread ], [ %.pr.pre, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.pr20, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !211
  %i.x = getelementptr inbounds nuw i8, ptr %.pr20, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !212
  %i.y = load ptr, ptr %.pr20, align 8, !tbaa !156
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %.pr20) #41, !inline_history !66
  %i.ab = load ptr, ptr %.pr20, align 8, !tbaa !156
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %.pr20) #41, !inline_history !66
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !166
  %.not.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !213
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !214

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr20) #41
  br label %_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %_ZN7dropbox6oxygen2nnISt10shared_ptrIN5osgeo4proj3crs3CRSEEEC2ENS0_30i_promise_i_checked_for_null_tERKS7_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  ret void

bb.n:                                             ; preds = %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs3CRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit.thread16, %_ZN7dropbox6oxygen23nn_dynamic_pointer_castIN5osgeo4proj3crs3CRSENS3_4util10BaseObjectEEESt10shared_ptrIT_ERKNS0_2nnIS8_IT0_EEE.exit
  %i.ai = call ptr @__cxa_allocate_exception(i64 40) #41 ; 4 uses
  invoke void @_ZN5osgeo4proj4util9ExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull @.str.365)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5osgeo4proj2io16ParsingExceptionE, i64 16), ptr %i.ai, align 8, !tbaa !156
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
          to label %bb.s unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ai) #41
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.q ], [ %i.aj, %bb.p ]
  call void @_ZNSt12__shared_ptrIN5osgeo4proj3crs3CRSELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  resume { ptr, i32 } %.pn

bb.s:                                             ; preds = %bb.o
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5osgeo4proj2io10JSONParser13buildMeridianERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEEE(ptr dead_on_unwind noalias writable sret(%"class.dropbox::oxygen::nn.288") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.osgeo::proj::common::UnitOfMeasure", align 8 ; 7 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %4 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 12 uses
  %5 = alloca %"class.osgeo::proj::common::Angle", align 8 ; 7 uses
  %6 = alloca %"class.osgeo::proj::common::Angle", align 8 ; 7 uses
  %7 = alloca %"class.osgeo::proj::common::Measure", align 8 ; 8 uses
  %i.b = load i8, ptr %2, align 8, !tbaa !625
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA10_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA10_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA10_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !166
  %i.f = tail call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE10_M_find_trIA10_cvEESt23_Rb_tree_const_iteratorISG_ERKT_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 1 dereferenceable(10) @.str.146)
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !166
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA10_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread, label %bb.d

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA10_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread: ; preds = %bb.a, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA10_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit
  %i.i = tail call ptr @__cxa_allocate_exception(i64 40) #41 ; 3 uses
  invoke void @_ZN5osgeo4proj2io16ParsingExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull @.str.382)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA10_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN5osgeo4proj2io16ParsingExceptionE, ptr nonnull @_ZN5osgeo4proj2io16ParsingExceptionD1Ev) #42
  unreachable

bb.c:                                             ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA10_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.i) #41
  br label %bb.aa

bb.d:                                             ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRA10_KcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixIKcEERKSC_PT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef @.str.146)
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEC2ERKSC_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.k)
  %i.l = load i8, ptr %4, align 8, !tbaa !625     ; 2 uses
  %i.m = add i8 %i.l, -5
  %spec.select.i = icmp ult i8 %i.m, 3
  br i1 %spec.select.i, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
end_hunk_1
begin_hunk_2_@_ZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11Ev:bb.a
  br i1 %i.de, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2814, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2817
  %i.df = icmp ult i64 %.pre3971, 16
  call void @llvm.assume(i1 %i.df)
  %.not21.i.i = icmp eq ptr %1, %.sroa.04.0.i
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.u, !prof !214

bb.u:                                             ; preds = %bb.t
  switch i64 %.pre3971, label %bb.w [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.dg = load i8, ptr %i.dd, align 1, !tbaa !166
  store i8 %i.dg, ptr %i.bj, align 1, !tbaa !166
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.dd, i64 %.pre3971, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.w, %bb.v, %bb.u
  %i.dh = load i64, ptr %i.p, align 8, !tbaa !164 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 8
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !164
  %i.dj = load ptr, ptr %.sroa.04.0.i, align 8, !tbaa !163
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dh
  store i8 0, ptr %i.dk, align 1, !tbaa !166
  %.pre.i.i2816 = load ptr, ptr %1, align 8, !tbaa !163
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2817
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 8
  store ptr %i.dd, ptr %.sroa.04.0.i, align 8, !tbaa !163
  store i64 %.pre3971, ptr %i.dl, align 8, !tbaa !164
  %i.dm = load i64, ptr %i.o, align 8, !tbaa !166
  store i64 %i.dm, ptr %i.bk, align 8, !tbaa !166
  br label %bb.y

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2814
  %i.dn = load i64, ptr %i.bk, align 8, !tbaa !166
  store ptr %i.dd, ptr %.sroa.04.0.i, align 8, !tbaa !163
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 8
  store i64 %.pre3971, ptr %i.do, align 8, !tbaa !164
  %i.dp = load i64, ptr %i.o, align 8, !tbaa !166
  store i64 %i.dp, ptr %i.bk, align 8, !tbaa !166
  %.not.i.i2815 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i2815, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.bj, ptr %1, align 8, !tbaa !163
  store i64 %i.dn, ptr %i.o, align 8, !tbaa !166
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.o, ptr %1, align 8, !tbaa !163
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.y, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.t
  %i.dq = phi ptr [ %.pre.i.i2816, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.bj, %bb.x ], [ %i.o, %bb.y ], [ %i.dd, %bb.t ]
  store i64 0, ptr %i.p, align 8, !tbaa !164
  store i8 0, ptr %i.dq, align 1, !tbaa !166
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 32 ; 4 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !163 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 48 ; 4 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  %i.dv = load ptr, ptr %i.q, align 8, !tbaa !163 ; 6 uses
  %i.dw = icmp eq ptr %i.dv, %i.r                 ; 2 uses
  br i1 %i.du, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  br i1 %i.dw, label %bb.z, label %.thread.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  br i1 %i.dw, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i
  %i.dx = load i64, ptr %i.s, align 8, !tbaa !164 ; 3 uses
  %i.dy = icmp ult i64 %i.dx, 16
  call void @llvm.assume(i1 %i.dy)
  %.not21.i7.i = icmp eq ptr %1, %.sroa.04.0.i
  br i1 %.not21.i7.i, label %_ZN5osgeo4proj2io4Step8KeyValueaSEOS3_.exit, label %bb.aa, !prof !214

bb.aa:                                            ; preds = %bb.z
  switch i64 %i.dx, label %bb.ac [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.dz = load i8, ptr %i.dv, align 1, !tbaa !166
  store i8 %i.dz, ptr %i.ds, align 1, !tbaa !166
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr align 1 %i.dv, i64 %i.dx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i: ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ea = load i64, ptr %i.s, align 8, !tbaa !164 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 40
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !164
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !163
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ea
  store i8 0, ptr %i.ed, align 1, !tbaa !166
  %.pre.i9.i = load ptr, ptr %i.q, align 8, !tbaa !163
  br label %_ZN5osgeo4proj2io4Step8KeyValueaSEOS3_.exit

.thread.i11.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i10.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 40
  store ptr %i.dv, ptr %i.dr, align 8, !tbaa !163
  %i.ef = load i64, ptr %i.s, align 8, !tbaa !164
  store i64 %i.ef, ptr %i.ee, align 8, !tbaa !164
  %i.eg = load i64, ptr %i.r, align 8, !tbaa !166
  store i64 %i.eg, ptr %i.dt, align 8, !tbaa !166
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i4.i
  %i.eh = load i64, ptr %i.dt, align 8, !tbaa !166
  store ptr %i.dv, ptr %i.dr, align 8, !tbaa !163
  %i.ei = load i64, ptr %i.s, align 8, !tbaa !164
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 40
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !164
  %i.ek = load i64, ptr %i.r, align 8, !tbaa !166
  store i64 %i.ek, ptr %i.dt, align 8, !tbaa !166
  %.not.i6.i = icmp eq ptr %i.ds, null
  br i1 %.not.i6.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i
  store ptr %i.ds, ptr %i.q, align 8, !tbaa !163
  store i64 %i.eh, ptr %i.r, align 8, !tbaa !166
  br label %_ZN5osgeo4proj2io4Step8KeyValueaSEOS3_.exit

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i5.i, %.thread.i11.i
  store ptr %i.r, ptr %i.q, align 8, !tbaa !163
  br label %_ZN5osgeo4proj2io4Step8KeyValueaSEOS3_.exit

_ZN5osgeo4proj2io4Step8KeyValueaSEOS3_.exit:      ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i, %bb.ad, %bb.ae
  %i.el = phi ptr [ %.pre.i9.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i8.i ], [ %i.ds, %bb.ad ], [ %i.r, %bb.ae ], [ %i.dv, %bb.z ]
  store i64 0, ptr %i.s, align 8, !tbaa !164
  store i8 0, ptr %i.el, align 1, !tbaa !166
  %i.em = load i8, ptr %i.t, align 8, !tbaa !584, !range !221, !noundef !222
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 64
  store i8 %i.em, ptr %i.en, align 8, !tbaa !584
  %i.eo = load ptr, ptr %i.q, align 8, !tbaa !163 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.r
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i2805

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i2805: ; preds = %_ZN5osgeo4proj2io4Step8KeyValueaSEOS3_.exit
  %i.eq = load i64, ptr %i.r, align 8, !tbaa !166
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZN5osgeo4proj2io4Step8KeyValueaSEOS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i2805
  %i.es = load ptr, ptr %1, align 8, !tbaa !163   ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.o
  br i1 %i.et, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5osgeo4proj2io4Step8KeyValueESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS4_19PROJStringFormatter8toStringB5cxx11EvE3$_0EEEvT_T0_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.eu = load i64, ptr %i.o, align 8, !tbaa !166
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #44
  br label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5osgeo4proj2io4Step8KeyValueESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS4_19PROJStringFormatter8toStringB5cxx11EvE3$_0EEEvT_T0_.exit"

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5osgeo4proj2io4Step8KeyValueESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS4_19PROJStringFormatter8toStringB5cxx11EvE3$_0EEEvT_T0_.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ew, %i.x
  br i1 %.not.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5osgeo4proj2io4Step8KeyValueESt6vectorIS6_SaIS6_EEEEZNKS4_19PROJStringFormatter8toStringB5cxx11EvE3$_0EvT_SE_T0_.exit", label %.lr.ph.i.i.i.i, !llvm.loop !1919

bb.af:                                            ; preds = %bb.c
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5osgeo4proj2io4Step8KeyValueESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS4_19PROJStringFormatter8toStringB5cxx11EvE3$_0EEEvT_SH_T0_"(ptr %i.v, ptr %i.x)
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5osgeo4proj2io4Step8KeyValueESt6vectorIS6_SaIS6_EEEEZNKS4_19PROJStringFormatter8toStringB5cxx11EvE3$_0EvT_SE_T0_.exit"

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5osgeo4proj2io4Step8KeyValueESt6vectorIS6_SaIS6_EEEEZNKS4_19PROJStringFormatter8toStringB5cxx11EvE3$_0EvT_SE_T0_.exit": ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5osgeo4proj2io4Step8KeyValueESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS4_19PROJStringFormatter8toStringB5cxx11EvE3$_0EEEvT_T0_.exit", %bb.b, %bb.d, %bb.af
  %.sroa.03087.0 = load ptr, ptr %.sroa.03087.03850, align 8, !tbaa !273 ; 2 uses
  %.not3501.a = icmp eq ptr %.sroa.03087.0, %i.k
  br i1 %.not3501.a, label %.loopexit3586.loopexit, label %bb.b

.loopexit3586.loopexit:                           ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5osgeo4proj2io4Step8KeyValueESt6vectorIS6_SaIS6_EEEEZNKS4_19PROJStringFormatter8toStringB5cxx11EvE3$_0EvT_SE_T0_.exit"
  %.pre3972.a = load ptr, ptr %i.k, align 8, !tbaa !273
  br label %.loopexit3586

.loopexit3586:                                    ; preds = %.loopexit3586.loopexit, %bb.a
  %i.ex = phi ptr [ %.pre3972.a, %.loopexit3586.loopexit ], [ %.pre3973, %bb.a ] ; 3 uses
  %.not35023851 = icmp eq ptr %i.ex, %i.k
  br i1 %.not35023851, label %.preheader3584, label %.lr.ph3855

.lr.ph3855:                                       ; preds = %.loopexit3586
  %i.ey = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  br label %bb.ag

.preheader3584.loopexit:                          ; preds = %bb.ao
  %.sroa.03071.03856.pre = load ptr, ptr %i.k, align 8, !tbaa !273
  br label %.preheader3584

.preheader3584:                                   ; preds = %.preheader3584.loopexit, %.loopexit3586
  %.sroa.03071.03856 = phi ptr [ %.sroa.03071.03856.pre, %.preheader3584.loopexit ], [ %i.ex, %.loopexit3586 ] ; 3 uses
  %.not35033857 = icmp eq ptr %.sroa.03071.03856, %i.k
  br i1 %.not35033857, label %._crit_edge, label %.lr.ph3859

.lr.ph3859:                                       ; preds = %.preheader3584
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 20
  br label %bb.ap

bb.ag:                                            ; preds = %.lr.ph3855, %bb.ao
  %.sroa.03078.03852 = phi ptr [ %i.ex, %.lr.ph3855 ], [ %.sroa.03078.1, %bb.ao ] ; 15 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.03078.03852, i64 16 ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.03078.03852, i64 56
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.03078.03852, i64 64
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !580
  %i.fj = load ptr, ptr %i.fg, align 8, !tbaa !579 ; 39 uses
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl                    ; 3 uses
  %i.fn = sdiv exact i64 %i.fm, 72
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.03078.03852, i64 24
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !164 ; 6 uses
  %i.fq = icmp eq i64 %i.fp, 7
  br i1 %i.fq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread3126

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.ag
  %i.fr = load ptr, ptr %i.ff, align 8, !tbaa !163 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 1
  %i.ft = xor i32 %i.fs, 1835820392
  %i.fu = getelementptr i8, ptr %i.fr, i64 3
  %i.fv = load i32, ptr %i.fu, align 1
  %i.fw = xor i32 %i.fv, 1953654125
  %i.fx = or i32 %i.ft, %i.fw
  %i.fy = icmp ne i32 %i.fx, 0
  %i.fz = zext i1 %i.fy to i32
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.gb = icmp eq i64 %i.fm, 216
  switch i64 %i.fn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141 [
    i64 8, label %bb.ah
    i64 3, label %bb.ah
  ]

bb.ah:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !164
  %i.ge = icmp eq i64 %i.gd, 1
  br i1 %i.ge, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.ah
  %i.gf = load ptr, ptr %i.fj, align 8, !tbaa !163
  %lhsc = load i8, ptr %i.gf, align 1
  %i.gg = icmp eq i8 %lhsc, 120
  br i1 %i.gg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !164
  %i.gj = icmp eq i64 %i.gi, 1
  br i1 %i.gj, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !163
  %lhsc4619.a = load i8, ptr %i.gl, align 1
  %i.gm = icmp eq i8 %lhsc4619.a, 48
  br i1 %i.gm, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit.thread3127, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit.thread3127: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fj, i64 80
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !164
  %i.gp = icmp eq i64 %i.go, 1
  br i1 %i.gp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1218, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1218: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit.thread3127
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fj, i64 72
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !163
  %lhsc4620.a = load i8, ptr %i.gr, align 1
  %i.gs = icmp eq i8 %lhsc4620.a, 121
  br i1 %i.gs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1220, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1220: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1218
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fj, i64 112
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !164
  %i.gv = icmp eq i64 %i.gu, 1
  br i1 %i.gv, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1222, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1222: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1220
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fj, i64 104
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !163
  %lhsc4621.a = load i8, ptr %i.gx, align 1
  %i.gy = icmp eq i8 %lhsc4621.a, 48
  br i1 %i.gy, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1222.thread3128, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1222.thread3128: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1222
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fj, i64 152
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !164
  %i.hb = icmp eq i64 %i.ha, 1
  br i1 %i.hb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1223, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1223: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1222.thread3128
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fj, i64 144
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !163
  %lhsc4622.a = load i8, ptr %i.hd, align 1
  %i.he = icmp eq i8 %lhsc4622.a, 122
  br i1 %i.he, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1225, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1225: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1223
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fj, i64 184
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !164
  %i.hh = icmp eq i64 %i.hg, 1
  br i1 %i.hh, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1227, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1227: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1225
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fj, i64 176
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !163
  %lhsc4623.a = load i8, ptr %i.hj, align 1
  %i.hk = icmp eq i8 %lhsc4623.a, 48
  br i1 %i.hk, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1227.thread3129, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1227.thread3129: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1227
  br i1 %i.gb, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1227.thread3129
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fj, i64 224
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !164
  %i.hn = icmp eq i64 %i.hm, 2
  br i1 %i.hn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1228, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1228: ; preds = %bb.ai
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fj, i64 216
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !163
  %i.hq = load i16, ptr %i.hp, align 1
  %i.hr = icmp ne i16 %i.hq, 30834
  %i.hs = zext i1 %i.hr to i32
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1230, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1230: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1228
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fj, i64 256
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !164
  %i.hw = icmp eq i64 %i.hv, 1
  br i1 %i.hw, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1232, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1232: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1230
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fj, i64 248
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !163
  %lhsc4624.a = load i8, ptr %i.hy, align 1
  %i.hz = icmp eq i8 %lhsc4624.a, 48
  br i1 %i.hz, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1232.thread3130, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1232.thread3130: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1232
  %i.ia = getelementptr inbounds nuw i8, ptr %i.fj, i64 296
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !164
  %i.ic = icmp eq i64 %i.ib, 2
  br i1 %i.ic, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1233, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1233: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1232.thread3130
  %i.id = getelementptr inbounds nuw i8, ptr %i.fj, i64 288
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !163
  %i.if = load i16, ptr %i.ie, align 1
  %i.ig = icmp ne i16 %i.if, 31090
  %i.ih = zext i1 %i.ig to i32
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1235, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1235: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1233
  %i.ij = getelementptr inbounds nuw i8, ptr %i.fj, i64 328
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !164
  %i.il = icmp eq i64 %i.ik, 1
  br i1 %i.il, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1237, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1237: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1235
  %i.im = getelementptr inbounds nuw i8, ptr %i.fj, i64 320
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !163
  %lhsc4625.a = load i8, ptr %i.in, align 1
  %i.io = icmp eq i8 %lhsc4625.a, 48
  br i1 %i.io, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1237.thread3131, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1237.thread3131: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1237
  %i.ip = getelementptr inbounds nuw i8, ptr %i.fj, i64 368
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !164
  %i.ir = icmp eq i64 %i.iq, 2
  br i1 %i.ir, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1238, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1238: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1237.thread3131
  %i.is = getelementptr inbounds nuw i8, ptr %i.fj, i64 360
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !163
  %i.iu = load i16, ptr %i.it, align 1
  %i.iv = icmp ne i16 %i.iu, 31346
  %i.iw = zext i1 %i.iv to i32
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1240, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1240: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1238
end_hunk_2
begin_hunk_3_@_ZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11Ev:bb.a
  br i1 %i.jj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1245, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1245: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1243
  %i.jk = getelementptr inbounds nuw i8, ptr %i.fj, i64 472
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !164
  %i.jm = icmp eq i64 %i.jl, 1
  br i1 %i.jm, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1247, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1247: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1245
  %i.jn = getelementptr inbounds nuw i8, ptr %i.fj, i64 464
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !163
  %lhsc4628 = load i8, ptr %i.jo, align 1
  %i.jp = icmp eq i8 %lhsc4628, 48
  br i1 %i.jp, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1247.thread3133, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1247.thread3133: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1247
  %i.jq = getelementptr inbounds nuw i8, ptr %i.fj, i64 512
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !164
  %i.js = icmp eq i64 %i.jr, 10
  br i1 %i.js, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1247.thread3133
  %i.jt = getelementptr inbounds nuw i8, ptr %i.fj, i64 504
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !163 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 1
  %i.jw = xor i64 %i.jv, 7598819853338570595
  %i.jx = getelementptr i8, ptr %i.ju, i64 8
  %i.jy = load i16, ptr %i.jx, align 1
  %i.jz = zext i16 %i.jy to i64
  %i.ka = xor i64 %i.jz, 28271
  %i.kb = or i64 %i.jw, %i.ka
  %i.kc = icmp ne i64 %i.kb, 0
  %i.kd = zext i1 %i.kc to i32
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit.thread: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1227.thread3129
  %i.kf = load ptr, ptr %.sroa.03078.03852, align 8, !tbaa !273
  call void @_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE8_M_eraseESt14_List_iteratorIS4_E(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr nonnull %.sroa.03078.03852) #41
  br label %bb.ao

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread3126: ; preds = %bb.ag
  %i.kg = load ptr, ptr %0, align 8, !tbaa !668
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 322
  %i.ki = load i8, ptr %i.kh, align 2, !tbaa !682, !range !221, !noundef !222
  %i.kj = trunc nuw i8 %i.ki to i1
  %i.kk = icmp eq i64 %i.fp, 11
  %or.cond3552.a = and i1 %i.kk, %i.kj
  br i1 %or.cond3552.a, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1251, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1251.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1251: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread3126
  %i.kl = load ptr, ptr %i.ff, align 8, !tbaa !163 ; 2 uses
  %i.km = load i64, ptr %i.kl, align 1
  %i.kn = xor i64 %i.km, 8533880816859180661
  %i.ko = getelementptr i8, ptr %i.kl, i64 3
  %i.kp = load i64, ptr %i.ko, align 1
  %i.kq = xor i64 %i.kp, 8390880615077995380
  %i.kr = or i64 %i.kn, %i.kq
  %i.ks = icmp ne i64 %i.kr, 0
  %i.kt = zext i1 %i.ks to i32
  %i.ku = icmp eq i32 %i.kt, 0
  %i.kv = icmp eq i64 %i.fm, 144
  %or.cond20 = and i1 %i.kv, %i.ku
  br i1 %or.cond20, label %bb.aj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

bb.aj:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1251
  %i.kw = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !164
  %i.ky = icmp eq i64 %i.kx, 5
  br i1 %i.ky, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1254, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1254: ; preds = %bb.aj
  %i.kz = load ptr, ptr %i.fj, align 8, !tbaa !163 ; 2 uses
  %i.la = load i32, ptr %i.kz, align 1
  %i.lb = xor i32 %i.la, 1767864696
  %i.lc = getelementptr i8, ptr %i.kz, i64 4
  %i.ld = load i8, ptr %i.lc, align 1
  %i.le = zext i8 %i.ld to i32
  %i.lf = xor i32 %i.le, 110
  %i.lg = or i32 %i.lb, %i.lf
  %i.lh = icmp ne i32 %i.lg, 0
  %i.li = zext i1 %i.lh to i32
  %i.lj = icmp eq i32 %i.li, 0
  br i1 %i.lj, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1254.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1254.thread: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1254
  %i.lk = getelementptr inbounds nuw i8, ptr %i.fj, i64 80
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !164
  %i.lm = icmp eq i64 %i.ll, 6
  br i1 %i.lm, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1257, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1257: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1254.thread
  %i.ln = getelementptr inbounds nuw i8, ptr %i.fj, i64 72
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !163 ; 2 uses
  %i.lp = load i32, ptr %i.lo, align 1
  %i.lq = xor i32 %i.lp, 1868527992
  %i.lr = getelementptr i8, ptr %i.lo, i64 4
  %i.ls = load i16, ptr %i.lr, align 1
  %i.lt = zext i16 %i.ls to i32
  %i.lu = xor i32 %i.lt, 29813
  %i.lv = or i32 %i.lq, %i.lu
  %i.lw = icmp ne i32 %i.lv, 0
  %i.lx = zext i1 %i.lw to i32
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1257.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1257.thread: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1257
  %i.lz = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.ma = getelementptr inbounds nuw i8, ptr %i.fj, i64 104
  %i.mb = getelementptr inbounds nuw i8, ptr %i.fj, i64 40
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !164 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.fj, i64 112
  %i.me = load i64, ptr %i.md, align 8, !tbaa !164
  %i.mf = icmp eq i64 %i.mc, %i.me
  br i1 %i.mf, label %bb.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

bb.ak:                                            ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1257.thread
  %i.mg = icmp eq i64 %i.mc, 0
  br i1 %i.mg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.ak
  %i.mh = load ptr, ptr %i.ma, align 8, !tbaa !163
  %i.mi = load ptr, ptr %i.lz, align 8, !tbaa !163
  %bcmp.i1258 = call i32 @bcmp(ptr %i.mi, ptr %i.mh, i64 %i.mc)
  %i.mj = icmp eq i32 %bcmp.i1258, 0
  br i1 %i.mj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.ak, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.mk = load ptr, ptr %.sroa.03078.03852, align 8, !tbaa !273
  call void @_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE8_M_eraseESt14_List_iteratorIS4_E(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr nonnull %.sroa.03078.03852) #41
  br label %bb.ao

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1251.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread3126
  switch i64 %i.fp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1260.a
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1262.a
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1260.a: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1251.thread
  %i.ml = load ptr, ptr %i.ff, align 8, !tbaa !163 ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 1
  %i.mn = icmp ne i32 %i.mm, 1752397168
  %i.mo = zext i1 %i.mn to i32
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1260.thread.a, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.a

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1260.thread.a: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1260.a
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.03078.03852, i64 49 ; 2 uses
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !587, !range !221, !noundef !222
  %i.ms = trunc nuw i8 %i.mr to i1
  br i1 %i.ms, label %bb.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.a

bb.al:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1260.thread.a
  %i.mt = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, i64 noundef 0, i64 noundef 4, ptr noundef nonnull @.str.434, i64 noundef 3) ; 0 uses
  store i8 0, ptr %i.mq, align 1, !tbaa !587
  %i.mu = load ptr, ptr %.sroa.03078.03852, align 8, !tbaa !273
  br label %bb.ao

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1262.a: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1251.thread
  %.pre3974.a = load ptr, ptr %i.ff, align 8, !tbaa !163
  %bcmp.i1261.a = call i32 @bcmp(ptr %.pre3974.a, ptr nonnull @.str.434, i64 %i.fp)
  %i.mv = icmp eq i32 %bcmp.i1261.a, 0
  br i1 %i.mv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1262.thread.a, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1262.thread.a: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1262.a
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.03078.03852, i64 49 ; 2 uses
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !587, !range !221, !noundef !222
  %i.my = trunc nuw i8 %i.mx to i1
  br i1 %i.my, label %bb.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

bb.am:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1262.thread.a
  %i.mz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, i64 noundef 0, i64 noundef %i.fp, ptr noundef nonnull @.str.433, i64 noundef 4) ; 0 uses
  store i8 0, ptr %i.mw, align 1, !tbaa !587
  %i.na = load ptr, ptr %.sroa.03078.03852, align 8, !tbaa !273
  br label %bb.ao

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.a: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1260.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1260.thread.a
  %bcmp.i1263 = call i32 @bcmp(ptr nonnull %i.ml, ptr nonnull @.str.435, i64 %i.fp)
  %i.nb = icmp eq i32 %bcmp.i1263, 0
  br i1 %i.nb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.a
  %i.nc = load i64, ptr %i.ey, align 8, !tbaa !683
  %i.nd = icmp ugt i64 %i.nc, 1
  br i1 %i.nd, label %bb.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141

bb.an:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread
  %i.ne = load ptr, ptr %.sroa.03078.03852, align 8, !tbaa !273
  call void @_ZNSt7__cxx114listIN5osgeo4proj2io4StepESaIS4_EE8_M_eraseESt14_List_iteratorIS4_E(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr nonnull %.sroa.03078.03852) #41
  br label %bb.ao

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1222, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1227, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1232, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1237, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1242, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1247, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, %bb.ah, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1218, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1220, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit.thread3127, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1223, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1225, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1222.thread3128, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1228, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1230, %bb.ai, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1233, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1235, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1232.thread3130, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1238, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1240, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1237.thread3131, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1243, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1245, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1242.thread3132, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1247.thread3133, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1251, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1254, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1257, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.aj, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1254.thread, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1257.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1262.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1262.thread.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1251.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.a
  %i.nf = load ptr, ptr %.sroa.03078.03852, align 8, !tbaa !273
  br label %bb.ao

bb.ao:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %bb.am, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141, %bb.an, %bb.al, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit.thread
  %.sroa.03078.1 = phi ptr [ %i.mk, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ %i.mu, %bb.al ], [ %i.na, %bb.am ], [ %i.ne, %bb.an ], [ %i.nf, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1264.thread3141 ], [ %i.kf, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit.thread ] ; 2 uses
  %.not3502.a = icmp eq ptr %.sroa.03078.1, %i.k
  br i1 %.not3502.a, label %.preheader3584.loopexit, label %bb.ag, !llvm.loop !1920

._crit_edge.loopexit:                             ; preds = %.critedge1167
  %.pre3976 = load ptr, ptr %i.k, align 8, !tbaa !273
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader3584
  %94 = phi ptr [ %.pre3976, %._crit_edge.loopexit ], [ %.sroa.03071.03856, %.preheader3584 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  store ptr %94, ptr %4, align 8
  %.not3504.a = icmp eq ptr %94, %i.k
  br i1 %.not3504.a, label %bb.ba, label %bb.az

bb.ap:                                            ; preds = %.lr.ph3859, %.critedge1167
  %.sroa.03071.03858 = phi ptr [ %.sroa.03071.03856, %.lr.ph3859 ], [ %.sroa.03071.0, %.critedge1167 ] ; 6 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.03071.03858, i64 16 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.03071.03858, i64 49 ; 8 uses
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !587, !range !221, !noundef !222
  %i.nj = trunc nuw i8 %i.ni to i1
  br i1 %i.nj, label %bb.aq, label %.critedge1167

bb.aq:                                            ; preds = %bb.ap
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.03071.03858, i64 56 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.03071.03858, i64 64
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !580
  %i.nn = load ptr, ptr %i.nk, align 8, !tbaa !579 ; 37 uses
  %i.no = ptrtoint ptr %i.nm to i64
  %i.np = ptrtoint ptr %i.nn to i64
  %i.nq = sub i64 %i.no, %i.np                    ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.03071.03858, i64 24
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !164 ; 5 uses
  switch i64 %i.ns, label %.critedge1167 [
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1266
    i64 11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1295
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1325
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1266: ; preds = %bb.aq
  %i.nt = load ptr, ptr %i.ng, align 8, !tbaa !163 ; 3 uses
  %i.nu = load i64, ptr %i.nt, align 1
  %i.nv = icmp ne i64 %i.nu, 8097884942730098785
  %i.nw = zext i1 %i.nv to i32
  %i.nx = icmp eq i32 %i.nw, 0
  %i.ny = icmp eq i64 %i.nq, 72                   ; 3 uses
  %or.cond22 = and i1 %i.ny, %i.nx
  br i1 %or.cond22, label %bb.ar, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1276.thread

bb.ar:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1266
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !164
  %i.ob = icmp eq i64 %i.oa, 5
  br i1 %i.ob, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1267, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1276.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1267: ; preds = %bb.ar
  %i.oc = load ptr, ptr %i.nn, align 8, !tbaa !163 ; 4 uses
  %i.od = load i32, ptr %i.oc, align 1
  %i.oe = xor i32 %i.od, 1701081711
  %i.of = getelementptr i8, ptr %i.oc, i64 4
  %i.og = load i8, ptr %i.of, align 1
  %i.oh = zext i8 %i.og to i32
  %i.oi = xor i32 %i.oh, 114
  %i.oj = or i32 %i.oe, %i.oi
  %i.ok = icmp ne i32 %i.oj, 0
  %i.ol = zext i1 %i.ok to i32
  %i.om = icmp eq i32 %i.ol, 0
  br i1 %i.om, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1269, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1272

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1269: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1267
  %i.on = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !164
  %i.op = icmp eq i64 %i.oo, 3
  br i1 %i.op, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1271, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1272

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1271: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1269
  %i.oq = getelementptr inbounds nuw i8, ptr %i.nn, i64 32
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !163 ; 2 uses
  %i.os = load i16, ptr %i.or, align 1
  %i.ot = xor i16 %i.os, 11314
  %i.ou = getelementptr i8, ptr %i.or, i64 2
  %i.ov = load i8, ptr %i.ou, align 1
  %i.ow = zext i8 %i.ov to i16
  %i.ox = xor i16 %i.ow, 49
  %i.oy = or i16 %i.ot, %i.ox
  %i.oz = icmp ne i16 %i.oy, 0
  %i.pa = zext i1 %i.oz to i32
  %i.pb = icmp eq i32 %i.pa, 0
  br i1 %i.pb, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1271.thread3143, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1272

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1272: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1271, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1269, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1267
  %i.pc = load i32, ptr %i.oc, align 1
  %i.pd = xor i32 %i.pc, 1701081711
  %i.pe = getelementptr i8, ptr %i.oc, i64 4
  %i.pf = load i8, ptr %i.pe, align 1
  %i.pg = zext i8 %i.pf to i32
  %i.ph = xor i32 %i.pg, 114
  %i.pi = or i32 %i.pd, %i.ph
  %i.pj = icmp ne i32 %i.pi, 0
  %i.pk = zext i1 %i.pj to i32
  %i.pl = icmp eq i32 %i.pk, 0
  br i1 %i.pl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1274, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1276.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1274: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1272
  %i.pm = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !164
  %i.po = icmp eq i64 %i.pn, 4
  br i1 %i.po, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1276, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1276.thread

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1276: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1274
  %i.pp = getelementptr inbounds nuw i8, ptr %i.nn, i64 32
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !163
  %i.pr = load i32, ptr %i.pq, align 1
  %i.ps = icmp ne i32 %i.pr, 841821233
  %i.pt = zext i1 %i.ps to i32
  %i.pu = icmp eq i32 %i.pt, 0
  br i1 %i.pu, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1271.thread3143, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1276.thread

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1271.thread3143: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1276, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1271
  store i8 0, ptr %i.nh, align 1, !tbaa !587
  br label %.critedge1167

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1276.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1266, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1276, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1272, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1274, %bb.ar
  %i.pv = load i64, ptr %i.nt, align 1
  %i.pw = icmp ne i64 %i.pv, 8097884942730098785
  %i.px = zext i1 %i.pw to i32
  %i.py = icmp eq i32 %i.px, 0
  %i.pz = and i1 %i.ny, %i.py
  br i1 %i.pz, label %bb.as, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1283.thread

bb.as:                                            ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1276.thread
  %i.qa = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !164
  %i.qc = icmp eq i64 %i.qb, 5
  br i1 %i.qc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1279, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1283.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1279: ; preds = %bb.as
  %i.qd = load ptr, ptr %i.nn, align 8, !tbaa !163 ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 1
  %i.qf = xor i32 %i.qe, 1701081711
  %i.qg = getelementptr i8, ptr %i.qd, i64 4
  %i.qh = load i8, ptr %i.qg, align 1
  %i.qi = zext i8 %i.qh to i32
  %i.qj = xor i32 %i.qi, 114
  %i.qk = or i32 %i.qf, %i.qj
  %i.ql = icmp ne i32 %i.qk, 0
  %i.qm = zext i1 %i.ql to i32
  %i.qn = icmp eq i32 %i.qm, 0
  br i1 %i.qn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1281, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1283.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1281: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1279
  %i.qo = getelementptr inbounds nuw i8, ptr %i.nn, i64 40
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !164
  %i.qq = icmp eq i64 %i.qp, 4
  br i1 %i.qq, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1283, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1283.thread

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1283: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1281
  %i.qr = getelementptr inbounds nuw i8, ptr %i.nn, i64 32
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !163
  %i.qt = load i32, ptr %i.qs, align 1
  %i.qu = icmp ne i32 %i.qt, 825044018
  %i.qv = zext i1 %i.qu to i32
  %i.qw = icmp eq i32 %i.qv, 0
  br i1 %i.qw, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1283.thread3149, label %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1283.thread

_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1283.thread3149: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1283
  store i8 0, ptr %i.nh, align 1, !tbaa !587
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  store ptr %i.ez, ptr %3, align 8, !tbaa !160
  store i32 824980013, ptr %i.ez, align 8
  store i64 4, ptr %i.fa, align 8, !tbaa !164
  store i8 0, ptr %i.fe, align 4, !tbaa !166
  invoke void @_ZN5osgeo4proj2io4Step8KeyValueC2EPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(65) %2, ptr noundef nonnull @.str.437, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1283.thread3149
  %i.qx = load ptr, ptr %i.nk, align 8, !tbaa !579
  %i.qy = call noundef nonnull align 8 dereferenceable(65) ptr @_ZN5osgeo4proj2io4Step8KeyValueaSEOS3_(ptr noundef nonnull align 8 dereferenceable(65) %i.qx, ptr noundef nonnull align 8 dereferenceable(65) %2) #41 ; 0 uses
  %i.qz = load ptr, ptr %i.fb, align 8, !tbaa !163 ; 2 uses
  %i.ra = icmp eq ptr %i.qz, %i.fc
  br i1 %i.ra, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.at
  %i.rb = load i64, ptr %i.fc, align 8, !tbaa !166
  %i.rc = add i64 %i.rb, 1
  call void @_ZdlPvm(ptr noundef %i.qz, i64 noundef %i.rc) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.rd = load ptr, ptr %2, align 8, !tbaa !163   ; 2 uses
  %i.re = icmp eq ptr %i.rd, %i.fd
  br i1 %i.re, label %_ZN5osgeo4proj2io4Step8KeyValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.rf = load i64, ptr %i.fd, align 8, !tbaa !166
  %i.rg = add i64 %i.rf, 1
  call void @_ZdlPvm(ptr noundef %i.rd, i64 noundef %i.rg) #44
  br label %_ZN5osgeo4proj2io4Step8KeyValueD2Ev.exit

_ZN5osgeo4proj2io4Step8KeyValueD2Ev.exit:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.rh = load ptr, ptr %3, align 8, !tbaa !163   ; 2 uses
  %i.ri = icmp eq ptr %i.rh, %i.ez
  br i1 %i.ri, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5osgeo4proj2io4Step8KeyValueD2Ev.exit
  %i.rj = load i64, ptr %i.ez, align 8, !tbaa !166
  %i.rk = add i64 %i.rj, 1
  call void @_ZdlPvm(ptr noundef %i.rh, i64 noundef %i.rk) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_3
begin_hunk_4_@_ZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11Ev:bb.a
  %i.ta = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !164
  %i.tc = icmp eq i64 %i.tb, 5
  br i1 %i.tc, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1298, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1298.thread3155

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1298: ; preds = %bb.aw
  %i.td = load ptr, ptr %i.nn, align 8, !tbaa !163 ; 2 uses
  %i.te = load i32, ptr %i.td, align 1
  %i.tf = xor i32 %i.te, 1767864696
  %i.tg = getelementptr i8, ptr %i.td, i64 4
  %i.th = load i8, ptr %i.tg, align 1
  %i.ti = zext i8 %i.th to i32
  %i.tj = xor i32 %i.ti, 110
  %i.tk = or i32 %i.tf, %i.tj
  %i.tl = icmp ne i32 %i.tk, 0
  %i.tm = zext i1 %i.tl to i32
  %i.tn = icmp eq i32 %i.tm, 0
  br i1 %i.tn, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1298.thread, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1298.thread3155

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1298.thread: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1298
  %i.to = getelementptr inbounds nuw i8, ptr %i.nn, i64 80
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !164
  %i.tq = icmp eq i64 %i.tp, 6
  br i1 %i.tq, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1301, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1298.thread3155

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1301: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1298.thread
  %i.tr = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !163 ; 2 uses
  %i.tt = load i32, ptr %i.ts, align 1
  %i.tu = xor i32 %i.tt, 1868527992
  %i.tv = getelementptr i8, ptr %i.ts, i64 4
  %i.tw = load i16, ptr %i.tv, align 1
  %i.tx = zext i16 %i.tw to i32
  %i.ty = xor i32 %i.tx, 29813
  %i.tz = or i32 %i.tu, %i.ty
  %i.ua = icmp ne i32 %i.tz, 0
  %i.ub = zext i1 %i.ua to i32
  %i.uc = icmp eq i32 %i.ub, 0
  br i1 %i.uc, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1301.thread, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1298.thread3155

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1301.thread: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1301
  %i.ud = getelementptr inbounds nuw i8, ptr %i.nn, i64 32
  %i.ue = getelementptr inbounds nuw i8, ptr %i.nn, i64 104
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ud, ptr noundef nonnull align 8 dereferenceable(32) %i.ue) #41
  store i8 0, ptr %i.nh, align 1, !tbaa !587
  br label %.critedge1167

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1298.thread3155: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1295, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1298, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1301, %bb.aw, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1298.thread
  %bcmp.i1302 = call i32 @bcmp(ptr %.pre3976.a, ptr nonnull @.str.430, i64 %i.ns)
  %i.uf = icmp eq i32 %bcmp.i1302, 0
  %i.ug = and i1 %i.sz, %i.uf
  br i1 %i.ug, label %bb.ax, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1306.thread3160

bb.ax:                                            ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1298.thread3155
  %i.uh = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !164
  %i.uj = icmp eq i64 %i.ui, 4
  br i1 %i.uj, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1306, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1306.thread3160

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1306: ; preds = %bb.ax
  %i.uk = load ptr, ptr %i.nn, align 8, !tbaa !163
  %i.ul = load i32, ptr %i.uk, align 1
  %i.um = icmp ne i32 %i.ul, 1852399482
  %i.un = zext i1 %i.um to i32
  %i.uo = icmp eq i32 %i.un, 0
  br i1 %i.uo, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1306.thread, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1306.thread3160

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1306.thread: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1306
  %i.up = getelementptr inbounds nuw i8, ptr %i.nn, i64 80
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !164
  %i.ur = icmp eq i64 %i.uq, 5
  br i1 %i.ur, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1309, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1306.thread3160

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1309: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1306.thread
  %i.us = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !163 ; 2 uses
  %i.uu = load i32, ptr %i.ut, align 1
  %i.uv = xor i32 %i.uu, 1970233210
  %i.uw = getelementptr i8, ptr %i.ut, i64 4
  %i.ux = load i8, ptr %i.uw, align 1
  %i.uy = zext i8 %i.ux to i32
  %i.uz = xor i32 %i.uy, 116
  %i.va = or i32 %i.uv, %i.uz
  %i.vb = icmp ne i32 %i.va, 0
  %i.vc = zext i1 %i.vb to i32
  %i.vd = icmp eq i32 %i.vc, 0
  br i1 %i.vd, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1309.thread, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1306.thread3160

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1309.thread: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1309
  %i.ve = getelementptr inbounds nuw i8, ptr %i.nn, i64 32
  %i.vf = getelementptr inbounds nuw i8, ptr %i.nn, i64 104
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ve, ptr noundef nonnull align 8 dereferenceable(32) %i.vf) #41
  store i8 0, ptr %i.nh, align 1, !tbaa !587
  br label %.critedge1167

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1306.thread3160: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1298.thread3155, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1306, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1309, %bb.ax, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1306.thread
  %bcmp.i1310 = call i32 @bcmp(ptr %.pre3976.a, ptr nonnull @.str.430, i64 %i.ns)
  %i.vg = icmp eq i32 %bcmp.i1310, 0
  %i.vh = icmp eq i64 %i.nq, 288
  %or.cond32 = and i1 %i.vh, %i.vg
  br i1 %or.cond32, label %bb.ay, label %.critedge1167

bb.ay:                                            ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1306.thread3160
  %i.vi = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !164
  %i.vk = icmp eq i64 %i.vj, 5
  br i1 %i.vk, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1314, label %.critedge1167

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1314: ; preds = %bb.ay
  %i.vl = load ptr, ptr %i.nn, align 8, !tbaa !163 ; 2 uses
  %i.vm = load i32, ptr %i.vl, align 1
  %i.vn = xor i32 %i.vm, 1767864696
  %i.vo = getelementptr i8, ptr %i.vl, i64 4
  %i.vp = load i8, ptr %i.vo, align 1
  %i.vq = zext i8 %i.vp to i32
  %i.vr = xor i32 %i.vq, 110
  %i.vs = or i32 %i.vn, %i.vr
  %i.vt = icmp ne i32 %i.vs, 0
  %i.vu = zext i1 %i.vt to i32
  %i.vv = icmp eq i32 %i.vu, 0
  br i1 %i.vv, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1314.thread, label %.critedge1167

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1314.thread: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1314
  %i.vw = getelementptr inbounds nuw i8, ptr %i.nn, i64 80
  %i.vx = load i64, ptr %i.vw, align 8, !tbaa !164
  %i.vy = icmp eq i64 %i.vx, 4
  br i1 %i.vy, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1317, label %.critedge1167

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1317: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1314.thread
  %i.vz = getelementptr inbounds nuw i8, ptr %i.nn, i64 72
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !163
  %i.wb = load i32, ptr %i.wa, align 1
  %i.wc = icmp ne i32 %i.wb, 1852399482
  %i.wd = zext i1 %i.wc to i32
  %i.we = icmp eq i32 %i.wd, 0
  br i1 %i.we, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1317.thread, label %.critedge1167

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1317.thread: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1317
  %i.wf = getelementptr inbounds nuw i8, ptr %i.nn, i64 152
  %i.wg = load i64, ptr %i.wf, align 8, !tbaa !164
  %i.wh = icmp eq i64 %i.wg, 6
  br i1 %i.wh, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1320, label %.critedge1167

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1320: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1317.thread
  %i.wi = getelementptr inbounds nuw i8, ptr %i.nn, i64 144
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !163 ; 2 uses
  %i.wk = load i32, ptr %i.wj, align 1
  %i.wl = xor i32 %i.wk, 1868527992
  %i.wm = getelementptr i8, ptr %i.wj, i64 4
  %i.wn = load i16, ptr %i.wm, align 1
  %i.wo = zext i16 %i.wn to i32
  %i.wp = xor i32 %i.wo, 29813
  %i.wq = or i32 %i.wl, %i.wp
  %i.wr = icmp ne i32 %i.wq, 0
  %i.ws = zext i1 %i.wr to i32
  %i.wt = icmp eq i32 %i.ws, 0
  br i1 %i.wt, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1320.thread, label %.critedge1167

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1320.thread: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1320
  %i.wu = getelementptr inbounds nuw i8, ptr %i.nn, i64 224
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !164
  %i.ww = icmp eq i64 %i.wv, 5
  br i1 %i.ww, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1323, label %.critedge1167

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1323: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1320.thread
  %i.wx = getelementptr inbounds nuw i8, ptr %i.nn, i64 216
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !163 ; 2 uses
  %i.wz = load i32, ptr %i.wy, align 1
  %i.xa = xor i32 %i.wz, 1970233210
  %i.xb = getelementptr i8, ptr %i.wy, i64 4
  %i.xc = load i8, ptr %i.xb, align 1
  %i.xd = zext i8 %i.xc to i32
  %i.xe = xor i32 %i.xd, 116
  %i.xf = or i32 %i.xa, %i.xe
  %i.xg = icmp ne i32 %i.xf, 0
  %i.xh = zext i1 %i.xg to i32
  %i.xi = icmp eq i32 %i.xh, 0
  br i1 %i.xi, label %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1323.thread, label %.critedge1167

_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1323.thread: ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1323
  %i.xj = getelementptr inbounds nuw i8, ptr %i.nn, i64 32
  %i.xk = getelementptr inbounds nuw i8, ptr %i.nn, i64 176
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.xj, ptr noundef nonnull align 8 dereferenceable(32) %i.xk) #41
  %i.xl = load ptr, ptr %i.nk, align 8, !tbaa !579 ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 104
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xl, i64 248
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.xm, ptr noundef nonnull align 8 dereferenceable(32) %i.xn) #41
  store i8 0, ptr %i.nh, align 1, !tbaa !587
  br label %.critedge1167

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1325: ; preds = %bb.aq
  %.pre3977.a = load ptr, ptr %i.ng, align 8, !tbaa !163
  %bcmp.i1324 = call i32 @bcmp(ptr %.pre3977.a, ptr nonnull @.str.445, i64 %i.ns)
  %i.xo = icmp eq i32 %bcmp.i1324, 0
  br i1 %i.xo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1325.thread, label %.critedge1167

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1325.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1325
  store i8 0, ptr %i.nh, align 1, !tbaa !587
  br label %.critedge1167

.critedge1167:                                    ; preds = %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1306.thread3160, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1314, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1317, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1320, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1323, %bb.ay, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1314.thread, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1317.thread, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1320.thread, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1283.thread, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1293, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i1289, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i1291, %bb.av, %bb.aq, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1271.thread3143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK5osgeo4proj2io4Step8KeyValue6equalsEPKcS5_.exit1293.thread3153, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1301.thread, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1309.thread, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1323.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1325.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit1325, %bb.ap
  %.sroa.03071.0 = load ptr, ptr %.sroa.03071.03858, align 8, !tbaa !273 ; 2 uses
  %.not3503.a = icmp eq ptr %.sroa.03071.0, %i.k
  br i1 %.not3503.a, label %._crit_edge.loopexit, label %bb.ap

bb.az:                                            ; preds = %._crit_edge
  %i.xp = load ptr, ptr %94, align 8, !tbaa !273  ; 2 uses
  store ptr %i.xp, ptr %4, align 8, !tbaa !685
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %._crit_edge
  %i.xq = phi ptr [ %i.xp, %bb.az ], [ %94, %._crit_edge ] ; 2 uses
  %.not35053911 = icmp eq ptr %i.xq, %i.k
  br i1 %.not35053911, label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791._crit_edge", label %.lr.ph3913

.lr.ph3913:                                       ; preds = %bb.ba
  %i.xr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.xs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.xt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.xu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.xv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.xx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.xz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.yb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.yd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 7 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 3 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.yj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 7 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 3 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.yp = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 7 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 3 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.yv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 3 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 7 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.zb = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.zc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.zd = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 4 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 4 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 4 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 4 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 4 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 4 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 4 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 4 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 4 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 4 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 6 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.aab = getelementptr inbounds nuw i8, ptr %60, i64 32
  %i.aac = getelementptr inbounds nuw i8, ptr %60, i64 48 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 6 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.aag = getelementptr inbounds nuw i8, ptr %62, i64 32
  %i.aah = getelementptr inbounds nuw i8, ptr %62, i64 48 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 9 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 3 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %64, i64 24
  %i.aam = getelementptr inbounds nuw i8, ptr %64, i64 32
  %i.aan = getelementptr inbounds nuw i8, ptr %64, i64 40
  %i.aao = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 6 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %65, i64 24
  %i.aar = getelementptr inbounds nuw i8, ptr %65, i64 32
  %i.aas = getelementptr inbounds nuw i8, ptr %65, i64 40
  %i.aat = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 8 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %66, i64 8
  %i.aav = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 8 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.aax = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 8 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.aaz = getelementptr inbounds nuw i8, ptr %69, i64 32
  %i.aba = getelementptr inbounds nuw i8, ptr %69, i64 48 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 4 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %71, i64 32
  %i.abe = getelementptr inbounds nuw i8, ptr %71, i64 48 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 4 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %73, i64 32
  %i.abi = getelementptr inbounds nuw i8, ptr %73, i64 48 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 4 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 6 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %75, i64 24 ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %75, i64 32
  %i.abp = getelementptr inbounds nuw i8, ptr %75, i64 40 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 3 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %76, i64 24 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %76, i64 32
  %i.abu = getelementptr inbounds nuw i8, ptr %76, i64 40 ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 3 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %77, i64 24
  %i.aby = getelementptr inbounds nuw i8, ptr %77, i64 32
  %i.abz = getelementptr inbounds nuw i8, ptr %77, i64 40
  %i.aca = getelementptr inbounds nuw i8, ptr %78, i64 8 ; 3 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %78, i64 24
  %i.acd = getelementptr inbounds nuw i8, ptr %78, i64 32
  %i.ace = getelementptr inbounds nuw i8, ptr %78, i64 40
  %i.acf = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 6 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %79, i64 24 ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %79, i64 32
  %i.acj = getelementptr inbounds nuw i8, ptr %79, i64 40 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 3 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %80, i64 24 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %80, i64 32
  %i.aco = getelementptr inbounds nuw i8, ptr %80, i64 40 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %81, i64 8 ; 3 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %81, i64 24
  %i.acs = getelementptr inbounds nuw i8, ptr %81, i64 32
  %i.act = getelementptr inbounds nuw i8, ptr %81, i64 40
  %i.acu = getelementptr inbounds nuw i8, ptr %82, i64 8 ; 3 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %82, i64 24
  %i.acx = getelementptr inbounds nuw i8, ptr %82, i64 32
  %i.acy = getelementptr inbounds nuw i8, ptr %82, i64 40
  %i.acz = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 6 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %84, i64 8
  %i.adb = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 7 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %83, i64 8 ; 3 uses
  %i.add = getelementptr inbounds nuw i8, ptr %83, i64 32 ; 3 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %83, i64 48 ; 7 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %83, i64 40 ; 3 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %83, i64 64
  %i.adh = getelementptr inbounds nuw i8, ptr %61, i64 19
  %i.adi = getelementptr inbounds nuw i8, ptr %63, i64 20
  %i.adj = getelementptr inbounds nuw i8, ptr %66, i64 17
  %i.adk = getelementptr inbounds nuw i8, ptr %67, i64 17
  %i.adl = getelementptr inbounds nuw i8, ptr %68, i64 17
  %i.adm = getelementptr inbounds nuw i8, ptr %84, i64 21
  br label %.lr.ph.i

.critedge3555:                                    ; preds = %bb.bl, %bb.bk, %bb.bf, %bb.bg, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit1379.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit1399.thread, %bb.cb, %_ZNK5osgeo4proj2io4Step8KeyValue9keyEqualsEPKc.exit1331.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %.old3939 = load ptr, ptr %4, align 8, !tbaa !685 ; 2 uses
  %.not3505.old = icmp eq ptr %.old3939, %i.k
  br i1 %.not3505.old, label %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791._crit_edge.loopexit", label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %.critedge3555, %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791"
  %.be = phi ptr [ %.old3939, %.critedge3555 ], [ %i.fka, %"_ZZNK5osgeo4proj2io19PROJStringFormatter8toStringB5cxx11EvENK3$_1clEv.exit1791" ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.backedge, %.lr.ph3913
  %i.adn = phi ptr [ %i.xq, %.lr.ph3913 ], [ %.be, %.lr.ph.i.backedge ] ; 44 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 8
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !272 ; 55 uses
  store ptr %i.adp, ptr %5, align 8
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 16 ; 30 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adn, i64 16 ; 26 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adn, i64 56 ; 54 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adn, i64 64 ; 9 uses
  %i.adu = load ptr, ptr %i.adt, align 8, !tbaa !580 ; 2 uses
  %i.adv = load ptr, ptr %i.ads, align 8, !tbaa !579 ; 31 uses
  %i.adw = ptrtoint ptr %i.adu to i64
  %i.adx = ptrtoint ptr %i.adv to i64
  %i.ady = sub i64 %i.adw, %i.adx                 ; 16 uses
  %i.adz = sdiv exact i64 %i.ady, 72              ; 10 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adp, i64 56 ; 51 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adp, i64 64 ; 9 uses
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !580
  %i.aed = load ptr, ptr %i.aea, align 8, !tbaa !579 ; 27 uses
  %i.aee = ptrtoint ptr %i.aec to i64
  %i.aef = ptrtoint ptr %i.aed to i64
  %i.aeg = sub i64 %i.aee, %i.aef                 ; 15 uses
end_hunk_4
