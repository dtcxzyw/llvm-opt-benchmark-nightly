Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/download?download=true
inline.NumInlined: 6887
inline.NumDeleted: 2501
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE:bb.a
  %i.f = icmp eq ptr %i.b, null
  %i.g = icmp ne i64 %i.d, 0
  %or.cond.i.i.i = and i1 %i.f, %i.g
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.129) #33
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.d, ptr %i.a, align 8, !tbaa !61
  %i.h = icmp ugt i64 %i.d, 15
  br i1 %i.h, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !59
  %i.j = load i64, ptr %i.a, align 8, !tbaa !61
  store i64 %i.j, ptr %i.e, align 8, !tbaa !62
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i8, ptr %i.b, align 1, !tbaa !62
  store i8 %i.l, ptr %i.k, align 1, !tbaa !62
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !60
  %i.o = load ptr, ptr %0, align 8, !tbaa !59
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  ret void

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !116  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.t) #31
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.s, %bb.i ], [ %i.s, %bb.j ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !59     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.e
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.w = load i64, ptr %i.e, align 8, !tbaa !62
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #31
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !59     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !62
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare noundef i32 @_Z30common_log_get_verbosity_tholdv() local_unnamed_addr #4

declare void @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare noundef ptr @_Z15common_log_mainv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_Z27common_download_get_hf_planRK19common_params_modelRK20common_download_opts(ptr dead_on_unwind noalias nonnull writable sret(%struct.common_download_hf_plan) align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %struct.gguf_split_info, align 8    ; 12 uses
  %10 = alloca [1 x %"struct.hf_cache::hf_file"], align 8 ; 18 uses
  %11 = alloca %struct.gguf_split_info, align 8   ; 12 uses
  %12 = alloca %"class.std::vector.49", align 8   ; 24 uses
  %13 = alloca %"struct.std::pair", align 8       ; 20 uses
  %14 = alloca %"class.std::vector.49", align 8   ; 7 uses
  %15 = alloca %"class.std::vector.49", align 8   ; 10 uses
  %16 = alloca %"struct.hf_cache::hf_file", align 8 ; 33 uses
  %17 = alloca %"struct.hf_cache::hf_file", align 8 ; 17 uses
  %18 = alloca %"class.std::vector.49", align 16  ; 20 uses
  %19 = alloca %"struct.hf_cache::hf_file", align 8 ; 17 uses
  %20 = alloca %"struct.hf_cache::hf_file", align 8 ; 17 uses
  %21 = alloca %"struct.hf_cache::hf_file", align 8 ; 17 uses
  %22 = alloca %"struct.hf_cache::hf_file", align 8 ; 17 uses
  %23 = alloca %"struct.hf_cache::hf_file", align 8 ; 17 uses
  tail call void @_ZN23common_download_hf_planC2Ev(ptr noundef nonnull align 8 dereferenceable(1368) %0) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_Z30common_download_split_repo_tagRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.d = load i8, ptr %i.c, align 8, !tbaa !107, !range !103, !noundef !104
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.thread529, label %bb.c

.thread529:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  invoke void @_ZN8hf_cache14get_repo_filesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.49") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %bb.bq

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.k = load ptr, ptr %14, align 8, !tbaa !170   ; 4 uses
  store ptr %i.k, ptr %12, align 8, !tbaa !170
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !171  ; 4 uses
  store ptr %i.m, ptr %i.i, align 8, !tbaa !171
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !172  ; 2 uses
  store ptr %i.o, ptr %i.j, align 8, !tbaa !172
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.r = icmp eq ptr %i.k, %i.m
  br i1 %i.r, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.thread529, %bb.f
  %i.s = phi ptr [ %i.f, %.thread529 ], [ %i.q, %bb.f ] ; 4 uses
  %i.t = phi ptr [ null, %.thread529 ], [ %i.k, %bb.f ]
  %i.u = phi ptr [ null, %.thread529 ], [ %i.m, %bb.f ] ; 2 uses
  %i.v = phi i64 [ 0, %.thread529 ], [ %i.p, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  invoke void @_ZN8hf_cache16get_cached_filesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.49") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i.i.i59 unwind label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit70

_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i.i.i59: ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.x = load ptr, ptr %15, align 8, !tbaa !170   ; 3 uses
  store ptr %i.x, ptr %12, align 8, !tbaa !170
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !171  ; 3 uses
  store ptr %i.z, ptr %i.s, align 8, !tbaa !171
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !172
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %.not.i.i1.i.i.i60 = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i.i.i60, label %bb.i, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit61

_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit61: ; preds = %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i.i.i59
  %i.ac = ptrtoint ptr %i.u to i64
  %i.ad = sub i64 %i.v, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ad) #32
  %.pre = load ptr, ptr %15, align 8, !tbaa !170  ; 3 uses
  %.pre355 = load ptr, ptr %i.y, align 8, !tbaa !171 ; 2 uses
  %.not4.i.i.i62 = icmp eq ptr %.pre, %.pre355
  br i1 %.not4.i.i.i62, label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i68, label %.lr.ph.i.i.i63

.lr.ph.i.i.i63:                                   ; preds = %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit61, %.lr.ph.i.i.i63
  %.05.i.i.i64 = phi ptr [ %i.ae, %.lr.ph.i.i.i63 ], [ %.pre, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit61 ] ; 2 uses
  call void @_ZN8hf_cache7hf_fileD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.05.i.i.i64) #31
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i64, i64 192 ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %i.ae, %.pre355
  br i1 %.not.i.i.i65, label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i66, label %.lr.ph.i.i.i63, !llvm.loop !5

_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i66: ; preds = %.lr.ph.i.i.i63
  %.pr.i67 = load ptr, ptr %15, align 8, !tbaa !170
  br label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i68

_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i68: ; preds = %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i66, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit61
  %i.af = phi ptr [ %.pr.i67, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i66 ], [ %.pre, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit61 ] ; 3 uses
  %.not.i.i1.i69 = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i69, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i68
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !172
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #32
  %.pre356.pre = load ptr, ptr %12, align 8, !tbaa !173
  %.pre357.pre = load ptr, ptr %i.s, align 8, !tbaa !173
  br label %bb.i

_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit70: ; preds = %bb.g
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %bb.bq

bb.i:                                             ; preds = %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i.i.i59, %bb.h, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i68
  %.pre357 = phi ptr [ %i.z, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i68 ], [ %.pre357.pre, %bb.h ], [ %i.z, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i.i.i59 ] ; 2 uses
  %.pre356 = phi ptr [ %i.x, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i68 ], [ %.pre356.pre, %bb.h ], [ %i.x, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i.i.i59 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  %25 = icmp eq ptr %.pre356, %.pre357
  br i1 %25, label %.critedge52, label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %i.ak = phi ptr [ %.pre356, %bb.i ], [ %i.k, %bb.f ] ; 2 uses
  %i.al = phi ptr [ %.pre357, %bb.i ], [ %i.m, %bb.f ] ; 2 uses
  %i.am = phi ptr [ %i.s, %bb.i ], [ %i.q, %bb.f ] ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.j, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread321
  %.sroa.0318.0349 = phi ptr [ %i.bn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread321 ], [ %i.ak, %bb.j ] ; 9 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0318.0349, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !60
  %i.ap = icmp eq i64 %i.ao, 10
  br i1 %i.ap, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread321

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.preheader
  %i.aq = load ptr, ptr %.sroa.0318.0349, align 8, !tbaa !59 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 1
  %i.as = xor i64 %i.ar, 7579123201987670640
  %i.at = getelementptr i8, ptr %i.aq, i64 8
  %i.au = load i16, ptr %i.at, align 1
  %i.av = zext i16 %i.au to i64
  %i.aw = xor i64 %i.av, 26990
  %i.ax = or i64 %i.as, %i.aw
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread321

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1176
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(192) %i.bb, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.0318.0349)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0318.0349, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %.noexc71 unwind label %bb.k

.noexc71:                                         ; preds = %.noexc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0318.0349, i64 64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %.noexc72 unwind label %bb.k

.noexc72:                                         ; preds = %.noexc71
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0318.0349, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %.noexc73 unwind label %bb.k

.noexc73:                                         ; preds = %.noexc72
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0318.0349, i64 128
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.bj)
          to label %.noexc74 unwind label %bb.k

.noexc74:                                         ; preds = %.noexc73
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0318.0349, i64 160
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %_ZN8hf_cache7hf_fileaSERKS0_.exit unwind label %bb.k

bb.k:                                             ; preds = %.noexc74, %.noexc73, %.noexc72, %.noexc71, %.noexc, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread321: ; preds = %.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0318.0349, i64 192 ; 2 uses
  %.not343 = icmp eq ptr %i.bn, %i.al
  br i1 %.not343, label %.critedge54, label %.preheader

.critedge54:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread321
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.bo, ptr %16, align 8, !tbaa !56
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  store i64 0, ptr %i.bp, align 8, !tbaa !60
  store i8 0, ptr %i.bo, align 8, !tbaa !62
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 4 uses
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !56
  %i.bs = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i64 0, ptr %i.bs, align 8, !tbaa !60
  store i8 0, ptr %i.br, align 8, !tbaa !62
  %i.bt = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 4 uses
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !56
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 72
  store i64 0, ptr %i.bv, align 8, !tbaa !60
  store i8 0, ptr %i.bu, align 8, !tbaa !62
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 112 ; 4 uses
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !56
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 104
  store i64 0, ptr %i.by, align 8, !tbaa !60
  store i8 0, ptr %i.bx, align 8, !tbaa !62
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 128 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %16, i64 144 ; 4 uses
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !56
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 136
  store i64 0, ptr %i.cb, align 8, !tbaa !60
  store i8 0, ptr %i.ca, align 8, !tbaa !62
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 160 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 176 ; 4 uses
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !56
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 168
  store i64 0, ptr %i.ce, align 8, !tbaa !60
  store i8 0, ptr %i.cd, align 8, !tbaa !62
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !60 ; 3 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.o, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge54, %.critedge
  %.sroa.0314.0351 = phi ptr [ %i.cu, %.critedge ], [ %i.ak, %.critedge54 ] ; 9 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0314.0351, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !60
  %i.cl = icmp eq i64 %i.ck, %i.ch
  br i1 %i.cl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %.lr.ph
  %i.cm = load ptr, ptr %i.cf, align 8, !tbaa !59
  %i.cn = load ptr, ptr %.sroa.0314.0351, align 8, !tbaa !59
  %bcmp.i76 = call i32 @bcmp(ptr %i.cn, ptr %i.cm, i64 %i.ch)
  %i.co = icmp eq i32 %bcmp.i76, 0
  br i1 %i.co, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(192) %16, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.0314.0351)
          to label %.noexc77 unwind label %bb.n

.noexc77:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0314.0351, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.cp)
          to label %.noexc78 unwind label %bb.n

.noexc78:                                         ; preds = %.noexc77
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0314.0351, i64 64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.cq)
          to label %.noexc79 unwind label %bb.n

.noexc79:                                         ; preds = %.noexc78
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0314.0351, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.cr)
          to label %.noexc80 unwind label %bb.n

.noexc80:                                         ; preds = %.noexc79
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0314.0351, i64 128
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.cs)
          to label %.noexc81 unwind label %bb.n

.noexc81:                                         ; preds = %.noexc80
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0314.0351, i64 160
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %i.ct)
          to label %_ZN8hf_cache7hf_fileaSERKS0_.exit83 unwind label %bb.n

.critedge:                                        ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0314.0351, i64 192 ; 2 uses
  %.not344 = icmp eq ptr %i.cu, %i.al
  br i1 %.not344, label %_ZN8hf_cache7hf_fileaSERKS0_.exit83.thread, label %.lr.ph

_ZN8hf_cache7hf_fileaSERKS0_.exit83:              ; preds = %.noexc81
  %.pre358 = load i64, ptr %i.bp, align 8, !tbaa !60
  %i.cv = icmp eq i64 %.pre358, 0
  br i1 %i.cv, label %_ZN8hf_cache7hf_fileaSERKS0_.exit83.thread, label %.thread

_ZN8hf_cache7hf_fileaSERKS0_.exit83.thread:       ; preds = %.critedge, %_ZN8hf_cache7hf_fileaSERKS0_.exit83
  %i.cw = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZN8hf_cache7hf_fileaSERKS0_.exit83.thread
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %bb.m, label %.invoke

bb.m:                                             ; preds = %bb.l
  %i.cy = invoke noundef ptr @_Z15common_log_mainv()
          to label %.invoke539 unwind label %bb.n

bb.n:                                             ; preds = %.invoke548, %.invoke539, %.invoke, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, %.noexc77, %.noexc78, %.noexc79, %.noexc80, %.noexc81, %.noexc88, %.noexc87, %.noexc86, %.noexc85, %.noexc84, %.thread, %bb.bm, %bb.u, %bb.m, %_ZN8hf_cache7hf_fileaSERKS0_.exit83.thread
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.o:                                             ; preds = %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  invoke fastcc void @_ZL15find_best_modelRKSt6vectorIN8hf_cache7hf_fileESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.da = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN8hf_cache7hf_fileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(192) %16, ptr noundef nonnull align 8 dereferenceable(192) %17) #31 ; 0 uses
  %i.db = getelementptr inbounds nuw i8, ptr %17, i64 160
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !59 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %17, i64 176 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.p
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !62
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !59 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 144 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !62
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.dn = getelementptr inbounds nuw i8, ptr %17, i64 96
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !59 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %17, i64 112 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !62
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.dt = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !59 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %17, i64 80 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !62
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  %i.dz = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !59 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !62
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i
  %i.ef = load ptr, ptr %17, align 8, !tbaa !59   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZN8hf_cache7hf_fileD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !62
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #32
  br label %_ZN8hf_cache7hf_fileD2Ev.exit

_ZN8hf_cache7hf_fileD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  %i.ek = load i64, ptr %i.bp, align 8, !tbaa !60
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.q, label %.thread

bb.q:                                             ; preds = %_ZN8hf_cache7hf_fileD2Ev.exit
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.en = load i8, ptr %i.em, align 2, !tbaa !737, !range !103, !noundef !104
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %.thread535, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.eq = load i8, ptr %i.ep, align 4, !tbaa !738, !range !103, !noundef !104
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %.thread535, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 59
  %i.et = load i8, ptr %i.es, align 1, !tbaa !739, !range !103, !noundef !104
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %.thread535, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 61
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !740, !range !103, !noundef !104
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %.thread535, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ey = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.v unwind label %bb.n

bb.v:                                             ; preds = %bb.u
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %.invoke548, label %.invoke

bb.w:                                             ; preds = %bb.o
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.bp

.thread:                                          ; preds = %_ZN8hf_cache7hf_fileaSERKS0_.exit83, %_ZN8hf_cache7hf_fileD2Ev.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(192) %16)
          to label %.noexc84 unwind label %bb.n

.noexc84:                                         ; preds = %.thread
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %i.bq)
          to label %.noexc85 unwind label %bb.n

.noexc85:                                         ; preds = %.noexc84
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %i.bt)
          to label %.noexc86 unwind label %bb.n

.noexc86:                                         ; preds = %.noexc85
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fd, ptr noundef nonnull align 8 dereferenceable(32) %i.bw)
          to label %.noexc87 unwind label %bb.n

.noexc87:                                         ; preds = %.noexc86
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fe, ptr noundef nonnull align 8 dereferenceable(32) %i.bz)
          to label %.noexc88 unwind label %bb.n

.noexc88:                                         ; preds = %.noexc87
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, ptr noundef nonnull align 8 dereferenceable(32) %i.cc)
          to label %_ZN8hf_cache7hf_fileaSERKS0_.exit90 unwind label %bb.n

_ZN8hf_cache7hf_fileaSERKS0_.exit90:              ; preds = %.noexc88
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !741
  invoke fastcc void @_ZL19get_gguf_split_infoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(192) %16)
          to label %.noexc91 unwind label %bb.ar

.noexc91:                                         ; preds = %_ZN8hf_cache7hf_fileaSERKS0_.exit90
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 68 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !175, !noalias !741
  %i.fi = icmp slt i32 %i.fh, 2
  br i1 %i.fi, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %.noexc91
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31, !noalias !741
  invoke void @_ZN8hf_cache7hf_fileC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(192) %10, ptr noundef nonnull align 8 dereferenceable(192) %16)
          to label %bb.y unwind label %bb.ad, !noalias !741

bb.y:                                             ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %18, i8 0, i64 24, i1 false), !alias.scope !741
  %i.fj = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #37
          to label %.noexc311 unwind label %.body312.thread ; 3 uses

.noexc311:                                        ; preds = %bb.y
  store ptr %i.fj, ptr %18, align 16, !tbaa !170
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 192 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.fk, ptr %i.fl, align 16, !tbaa !172
  invoke void @_ZN8hf_cache7hf_fileC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(192) %i.fj, ptr noundef nonnull align 8 dereferenceable(192) %10)
          to label %_ZSt10_ConstructIN8hf_cache7hf_fileEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %_ZSt8_DestroyIPN8hf_cache7hf_fileEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN8hf_cache7hf_fileEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc311
  %i.fm = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.fk, ptr %i.fm, align 8, !tbaa !171
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 160
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !59 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %10, i64 176 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i290

_ZSt8_DestroyIPN8hf_cache7hf_fileEEvT_S3_.exit.i.i.i.i.i: ; preds = %.noexc311
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  %i.ft = call ptr @__cxa_begin_catch(ptr %i.fs) #31 ; 0 uses
  invoke void @__cxa_rethrow() #33
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIPN8hf_cache7hf_fileEEvT_S3_.exit.i.i.i.i.i
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body312 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fv = landingpad { ptr, i32 }
          catch ptr null
  %i.fw = extractvalue { ptr, i32 } %i.fv, 0
  call void @__clang_call_terminate(ptr %i.fw) #34
  unreachable

bb.ab:                                            ; preds = %_ZSt8_DestroyIPN8hf_cache7hf_fileEEvT_S3_.exit.i.i.i.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i290: ; preds = %_ZSt10_ConstructIN8hf_cache7hf_fileEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.fx = load i64, ptr %i.fp, align 8, !tbaa !62
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i291: ; preds = %_ZSt10_ConstructIN8hf_cache7hf_fileEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i290
  %i.fz = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !59 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %10, i64 144 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i293, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i292: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i291
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !62
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i293

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i293: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i291, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i292
  %i.gf = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !59 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i294: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i293
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !62
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i294
  %i.gl = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !59 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i295
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !62
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i295, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i296
  %i.gr = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !59 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i298: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i297
  %i.gv = load i64, ptr %i.gt, align 8, !tbaa !62
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i299: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i297, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i298
  %i.gx = load ptr, ptr %10, align 8, !tbaa !59   ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %_ZN8hf_cache7hf_fileD2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i300: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i299
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !62
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.hb) #32
  br label %_ZN8hf_cache7hf_fileD2Ev.exit307

_ZN8hf_cache7hf_fileD2Ev.exit307:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i299, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i300
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31, !noalias !741
  br label %.loopexit29.i

.body312.thread:                                  ; preds = %bb.y
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body312:                                         ; preds = %bb.z
  %.pr325 = load ptr, ptr %18, align 16, !tbaa !170, !alias.scope !741 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr325, null
  br i1 %.not.i.i.i.i, label %.body.i, label %bb.ac

bb.ac:                                            ; preds = %.body312
  %i.hd = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.he = load ptr, ptr %i.hd, align 16, !tbaa !172, !alias.scope !741
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %.pr325 to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %.pr325, i64 noundef %i.hh) #32
  br label %.body.i

bb.ad:                                            ; preds = %bb.x
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.body.i:                                          ; preds = %.body312.thread, %bb.ac, %.body312
  %eh.lpad-body313534 = phi { ptr, i32 } [ %i.hc, %.body312.thread ], [ %i.fu, %bb.ac ], [ %i.fu, %.body312 ]
  call void @_ZN8hf_cache7hf_fileD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %10) #31
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.body.i, %bb.ad
  %.pn14.i = phi { ptr, i32 } [ %i.hi, %bb.ad ], [ %eh.lpad-body313534, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31, !noalias !741
  br label %bb.ao

bb.ae:                                            ; preds = %.noexc91
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %18, i8 0, i64 24, i1 false), !alias.scope !741
  %i.hj = load ptr, ptr %12, align 8, !tbaa !173, !noalias !741 ; 2 uses
  %i.hk = load ptr, ptr %i.am, align 8, !tbaa !173, !noalias !741 ; 2 uses
  %.not30.i = icmp eq ptr %i.hj, %i.hk
  br i1 %.not30.i, label %.loopexit29.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ae
  %i.hl = getelementptr inbounds nuw i8, ptr %11, i64 68
  %i.hm = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.hr = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %_ZN15gguf_split_infoD2Ev.exit.i, %.lr.ph.i
  %.sroa.024.031.i = phi ptr [ %i.hj, %.lr.ph.i ], [ %i.ir, %_ZN15gguf_split_infoD2Ev.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31, !noalias !741
  invoke fastcc void @_ZL19get_gguf_split_infoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.024.031.i)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.ht = load i32, ptr %i.hl, align 4, !tbaa !175, !noalias !741
  %i.hu = load i32, ptr %i.fg, align 4, !tbaa !175, !noalias !741
  %i.hv = icmp eq i32 %i.ht, %i.hu
  br i1 %i.hv, label %bb.ah, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE9push_backERKS1_.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.hw = load i64, ptr %i.hm, align 8, !tbaa !60, !noalias !741 ; 3 uses
  %i.hx = load i64, ptr %i.hn, align 8, !tbaa !60, !noalias !741
  %i.hy = icmp eq i64 %i.hw, %i.hx
  br i1 %i.hy, label %bb.ai, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE9push_backERKS1_.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.hz = icmp eq i64 %i.hw, 0
  br i1 %i.hz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.ai
  %i.ia = load ptr, ptr %9, align 8, !tbaa !59, !noalias !741
  %i.ib = load ptr, ptr %11, align 8, !tbaa !59, !noalias !741
  %bcmp.i.i = call i32 @bcmp(ptr %i.ib, ptr %i.ia, i64 %i.hw)
  %i.ic = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ic, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE9push_backERKS1_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.ai
  %i.id = load ptr, ptr %i.ho, align 8, !tbaa !171, !alias.scope !741 ; 3 uses
  %i.ie = load ptr, ptr %i.hp, align 16, !tbaa !172, !alias.scope !741
  %.not.i.i = icmp eq ptr %i.id, %i.ie
  br i1 %.not.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  invoke void @_ZN8hf_cache7hf_fileC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(192) %i.id, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.024.031.i)
          to label %.noexc.i unwind label %bb.am

.noexc.i:                                         ; preds = %bb.aj
  %i.if = load ptr, ptr %i.ho, align 8, !tbaa !171, !alias.scope !741
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 192
  store ptr %i.ig, ptr %i.ho, align 8, !tbaa !171, !alias.scope !741
  br label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE9push_backERKS1_.exit.i

bb.ak:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  invoke void @_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr %i.id, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.024.031.i)
          to label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE9push_backERKS1_.exit.i unwind label %bb.am

bb.al:                                            ; preds = %bb.af
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15gguf_split_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %11) #31
  br label %bb.an

_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE9push_backERKS1_.exit.i: ; preds = %bb.ak, %.noexc.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.ah, %bb.ag
  %i.ij = load ptr, ptr %i.hq, align 8, !tbaa !59, !noalias !741 ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.hr
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE9push_backERKS1_.exit.i
  %i.il = load i64, ptr %i.hr, align 8, !tbaa !62, !noalias !741
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE9push_backERKS1_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.in = load ptr, ptr %11, align 8, !tbaa !59, !noalias !741 ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.hs
  br i1 %i.io, label %_ZN15gguf_split_infoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.ip = load i64, ptr %i.hs, align 8, !tbaa !62, !noalias !741
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.iq) #32
  br label %_ZN15gguf_split_infoD2Ev.exit.i

_ZN15gguf_split_infoD2Ev.exit.i:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31, !noalias !741
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.024.031.i, i64 192 ; 2 uses
  %.not.i = icmp eq ptr %i.ir, %i.hk
  br i1 %.not.i, label %.loopexit29.i, label %bb.af

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn.i = phi { ptr, i32 } [ %i.ii, %bb.am ], [ %i.ih, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31, !noalias !741
  call void @_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #31
  br label %bb.ao

.loopexit29.i:                                    ; preds = %_ZN15gguf_split_infoD2Ev.exit.i, %bb.ae, %_ZN8hf_cache7hf_fileD2Ev.exit307
  %i.is = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !59, !noalias !741 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i: ; preds = %.loopexit29.i
  %i.iw = load i64, ptr %i.iu, align 8, !tbaa !62, !noalias !741
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.ix) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19.i: ; preds = %.loopexit29.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i
  %i.iy = load ptr, ptr %9, align 8, !tbaa !59, !noalias !741 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i21.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i20.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i20.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19.i
  %i.jb = load i64, ptr %i.iz, align 8, !tbaa !62, !noalias !741
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jc) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i21.i

bb.ao:                                            ; preds = %bb.an, %.loopexit.i
  %.pn14.pn.i = phi { ptr, i32 } [ %.pn14.i, %.loopexit.i ], [ %.pn.i, %bb.an ]
  call void @_ZN15gguf_split_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !741
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i21.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !741
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !170 ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !171 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !172
  %i.jj = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.jk = load <2 x ptr>, ptr %18, align 16, !tbaa !173
  store <2 x ptr> %i.jk, ptr %i.jd, align 8, !tbaa !173
  %i.jl = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 16, !tbaa !172
  store ptr %i.jm, ptr %i.jh, align 8, !tbaa !172
  %.not4.i.i.i.i.i92 = icmp eq ptr %i.je, %i.jg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i92, label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i.i.i96, label %.lr.ph.i.i.i.i.i93

.lr.ph.i.i.i.i.i93:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i21.i, %.lr.ph.i.i.i.i.i93
  %.05.i.i.i.i.i94 = phi ptr [ %i.jn, %.lr.ph.i.i.i.i.i93 ], [ %i.je, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i21.i ] ; 2 uses
  call void @_ZN8hf_cache7hf_fileD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.05.i.i.i.i.i94) #31
  %i.jn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i94, i64 192 ; 2 uses
  %.not.i.i.i.i.i95 = icmp eq ptr %i.jn, %i.jg
  br i1 %.not.i.i.i.i.i95, label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i.i.i96, label %.lr.ph.i.i.i.i.i93, !llvm.loop !5

_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i.i.i96: ; preds = %.lr.ph.i.i.i.i.i93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i21.i
  %.not.i.i1.i.i.i97 = icmp eq ptr %i.je, null
  br i1 %.not.i.i1.i.i.i97, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit98, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i.i.i96
  %i.jo = ptrtoint ptr %i.ji to i64
  %i.jp = ptrtoint ptr %i.je to i64
  %i.jq = sub i64 %i.jo, %i.jp
  call void @_ZdlPvm(ptr noundef nonnull %i.je, i64 noundef %i.jq) #32
  br label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit98

_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit98: ; preds = %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i.i.i96, %bb.ap
  %i.jr = load ptr, ptr %18, align 16, !tbaa !170 ; 3 uses
  %i.js = load ptr, ptr %i.jj, align 8, !tbaa !171 ; 2 uses
  %.not4.i.i.i99 = icmp eq ptr %i.jr, %i.js
  br i1 %.not4.i.i.i99, label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i105, label %.lr.ph.i.i.i100

.lr.ph.i.i.i100:                                  ; preds = %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit98, %.lr.ph.i.i.i100
  %.05.i.i.i101 = phi ptr [ %i.jt, %.lr.ph.i.i.i100 ], [ %i.jr, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit98 ] ; 2 uses
  call void @_ZN8hf_cache7hf_fileD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.05.i.i.i101) #31
  %i.jt = getelementptr inbounds nuw i8, ptr %.05.i.i.i101, i64 192 ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.jt, %i.js
  br i1 %.not.i.i.i102, label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i103, label %.lr.ph.i.i.i100, !llvm.loop !5

_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i103: ; preds = %.lr.ph.i.i.i100
  %.pr.i104 = load ptr, ptr %18, align 16, !tbaa !170
  br label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i105

_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i105: ; preds = %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i103, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit98
  %i.ju = phi ptr [ %.pr.i104, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i103 ], [ %i.jr, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit98 ] ; 3 uses
  %.not.i.i1.i106 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i1.i106, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i105
  %i.jv = load ptr, ptr %i.jl, align 16, !tbaa !172
  %i.jw = ptrtoint ptr %i.jv to i64
end_hunk_0
begin_hunk_1_@_Z27common_download_get_hf_planRK19common_params_modelRK20common_download_opts:bb.a
  %i.tu = getelementptr inbounds nuw i8, ptr %23, i64 112 ; 2 uses
  %i.tv = icmp eq ptr %i.tt, %i.tu
  br i1 %i.tv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i227: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i226
  %i.tw = load i64, ptr %i.tu, align 8, !tbaa !62
  %i.tx = add i64 %i.tw, 1
  call void @_ZdlPvm(ptr noundef %i.tt, i64 noundef %i.tx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i228: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i227
  %i.ty = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !59 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %23, i64 80 ; 2 uses
  %i.ub = icmp eq ptr %i.tz, %i.ua
  br i1 %i.ub, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i228
  %i.uc = load i64, ptr %i.ua, align 8, !tbaa !62
  %i.ud = add i64 %i.uc, 1
  call void @_ZdlPvm(ptr noundef %i.tz, i64 noundef %i.ud) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i228, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i229
  %i.ue = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !59 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 2 uses
  %i.uh = icmp eq ptr %i.uf, %i.ug
  br i1 %i.uh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i230
  %i.ui = load i64, ptr %i.ug, align 8, !tbaa !62
  %i.uj = add i64 %i.ui, 1
  call void @_ZdlPvm(ptr noundef %i.uf, i64 noundef %i.uj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i231
  %i.uk = load ptr, ptr %23, align 8, !tbaa !59   ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.um = icmp eq ptr %i.uk, %i.ul
  br i1 %i.um, label %_ZN8hf_cache7hf_fileD2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i232
  %i.un = load i64, ptr %i.ul, align 8, !tbaa !62
  %i.uo = add i64 %i.un, 1
  call void @_ZdlPvm(ptr noundef %i.uk, i64 noundef %i.uo) #32
  br label %_ZN8hf_cache7hf_fileD2Ev.exit240

_ZN8hf_cache7hf_fileD2Ev.exit240:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN8hf_cache7hf_fileD2Ev.exit240, %bb.bh
  %i.up = load i64, ptr %i.bp, align 8, !tbaa !60
  %i.uq = icmp eq i64 %i.up, 0
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.us = load i64, ptr %i.ur, align 8
  %i.ut = icmp eq i64 %i.us, 0
  %or.cond330 = select i1 %i.uq, i1 %i.ut, i1 false
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.uv = load i64, ptr %i.uu, align 8
  %i.uw = icmp eq i64 %i.uv, 0
  %or.cond334 = select i1 %or.cond330, i1 %i.uw, i1 false
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.uy = load i64, ptr %i.ux, align 8
  %i.uz = icmp eq i64 %i.uy, 0
  %or.cond338 = select i1 %or.cond334, i1 %i.uz, i1 false
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.vb = load i64, ptr %i.va, align 8
  %i.vc = icmp eq i64 %i.vb, 0
  %or.cond342 = select i1 %or.cond338, i1 %i.vc, i1 false
  br i1 %or.cond342, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.vd = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.bn unwind label %bb.n

bb.bn:                                            ; preds = %bb.bm
  %i.ve = icmp sgt i32 %i.vd, 0
  br i1 %i.ve, label %.invoke548, label %.invoke

.invoke548:                                       ; preds = %bb.bn, %bb.v
  %i.vf = invoke noundef ptr @_Z15common_log_mainv()
          to label %.invoke539 unwind label %bb.n

.invoke539:                                       ; preds = %.invoke548, %bb.m
  %i.vg = phi ptr [ %i.vf, %.invoke548 ], [ %i.cy, %bb.m ]
  %i.vh = phi ptr [ @.str.9, %.invoke548 ], [ @.str.8, %bb.m ]
  %.in = phi ptr [ %13, %.invoke548 ], [ %i.cf, %bb.m ]
  %i.vi = load ptr, ptr %.in, align 8, !tbaa !59
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.vg, i32 noundef 4, ptr noundef nonnull %i.vh, ptr noundef nonnull @__func__._Z27common_download_get_hf_planRK19common_params_modelRK20common_download_opts, ptr noundef %i.vi)
          to label %.invoke unwind label %bb.n

.invoke:                                          ; preds = %.invoke539, %bb.bn, %bb.v, %bb.l
  invoke fastcc void @_ZL25list_available_gguf_filesRKSt6vectorIN8hf_cache7hf_fileESaIS1_EE(ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.bo unwind label %bb.n

bb.bo:                                            ; preds = %.invoke, %bb.bl
  %i.vj = load ptr, ptr %i.cc, align 8, !tbaa !59 ; 2 uses
  %i.vk = icmp eq ptr %i.vj, %i.cd
  br i1 %i.vk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i241: ; preds = %bb.bo
  %i.vl = load i64, ptr %i.cd, align 8, !tbaa !62
  %i.vm = add i64 %i.vl, 1
  call void @_ZdlPvm(ptr noundef %i.vj, i64 noundef %i.vm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i242: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i241
  %i.vn = load ptr, ptr %i.bz, align 8, !tbaa !59 ; 2 uses
  %i.vo = icmp eq ptr %i.vn, %i.ca
  br i1 %i.vo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i243: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i242
  %i.vp = load i64, ptr %i.ca, align 8, !tbaa !62
  %i.vq = add i64 %i.vp, 1
  call void @_ZdlPvm(ptr noundef %i.vn, i64 noundef %i.vq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i244: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i243
  %i.vr = load ptr, ptr %i.bw, align 8, !tbaa !59 ; 2 uses
  %i.vs = icmp eq ptr %i.vr, %i.bx
  br i1 %i.vs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i244
  %i.vt = load i64, ptr %i.bx, align 8, !tbaa !62
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vr, i64 noundef %i.vu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i246: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i244, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i245
  %i.vv = load ptr, ptr %i.bt, align 8, !tbaa !59 ; 2 uses
  %i.vw = icmp eq ptr %i.vv, %i.bu
  br i1 %i.vw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i247: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i246
  %i.vx = load i64, ptr %i.bu, align 8, !tbaa !62
  %i.vy = add i64 %i.vx, 1
  call void @_ZdlPvm(ptr noundef %i.vv, i64 noundef %i.vy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i246, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i247
  %i.vz = load ptr, ptr %i.bq, align 8, !tbaa !59 ; 2 uses
  %i.wa = icmp eq ptr %i.vz, %i.br
  br i1 %i.wa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i249: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i248
  %i.wb = load i64, ptr %i.br, align 8, !tbaa !62
  %i.wc = add i64 %i.wb, 1
  call void @_ZdlPvm(ptr noundef %i.vz, i64 noundef %i.wc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i248, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i249
  %i.wd = load ptr, ptr %16, align 8, !tbaa !59   ; 2 uses
  %i.we = icmp eq ptr %i.wd, %i.bo
  br i1 %i.we, label %_ZN8hf_cache7hf_fileD2Ev.exit258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i250
  %i.wf = load i64, ptr %i.bo, align 8, !tbaa !62
  %i.wg = add i64 %i.wf, 1
  call void @_ZdlPvm(ptr noundef %i.wd, i64 noundef %i.wg) #32
  br label %_ZN8hf_cache7hf_fileD2Ev.exit258

_ZN8hf_cache7hf_fileD2Ev.exit258:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %.critedge52

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i, %.body, %bb.w, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.n ], [ %i.sz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i216 ], [ %i.qy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i188 ], [ %i.ox, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i160 ], [ %i.mw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i132 ], [ %i.kr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i ], [ %eh.lpad-body, %.body ], [ %i.fa, %bb.w ]
  call void @_ZN8hf_cache7hf_fileD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.bq

_ZN8hf_cache7hf_fileaSERKS0_.exit:                ; preds = %.noexc74
  %i.wh = load ptr, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.wj = icmp eq ptr %i.wh, %i.wi
  br i1 %i.wj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i259: ; preds = %_ZN8hf_cache7hf_fileaSERKS0_.exit
  %i.wk = load i64, ptr %i.wi, align 8, !tbaa !62
  %i.wl = add i64 %i.wk, 1
  call void @_ZdlPvm(ptr noundef %i.wh, i64 noundef %i.wl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i260: ; preds = %_ZN8hf_cache7hf_fileaSERKS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i259
  %i.wm = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.wo = icmp eq ptr %i.wm, %i.wn
  br i1 %i.wo, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i261: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i260
  %i.wp = load i64, ptr %i.wn, align 8, !tbaa !62
  %i.wq = add i64 %i.wp, 1
  call void @_ZdlPvm(ptr noundef %i.wm, i64 noundef %i.wq) #32
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i260, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i261
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  %i.wr = load ptr, ptr %12, align 8, !tbaa !170  ; 4 uses
  %i.ws = load ptr, ptr %i.am, align 8, !tbaa !171 ; 2 uses
  %.not4.i.i.i265 = icmp eq ptr %i.wr, %i.ws
  br i1 %.not4.i.i.i265, label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i271, label %.lr.ph.i.i.i266

.lr.ph.i.i.i266:                                  ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %.lr.ph.i.i.i266
  %.05.i.i.i267 = phi ptr [ %i.wt, %.lr.ph.i.i.i266 ], [ %i.wr, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit ] ; 2 uses
  call void @_ZN8hf_cache7hf_fileD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.05.i.i.i267) #31
  %i.wt = getelementptr inbounds nuw i8, ptr %.05.i.i.i267, i64 192 ; 2 uses
  %.not.i.i.i268 = icmp eq ptr %i.wt, %i.ws
  br i1 %.not.i.i.i268, label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i271, label %.lr.ph.i.i.i266, !llvm.loop !5

_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i271: ; preds = %.lr.ph.i.i.i266, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %.not.i.i1.i272 = icmp eq ptr %i.wr, null
  br i1 %.not.i.i1.i272, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit273, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit273.sink.split

bb.bq:                                            ; preds = %bb.bp, %bb.k, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit70, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bp ], [ %i.bm, %bb.k ], [ %24, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit70 ], [ %i.h, %bb.e ]
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #31
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bq ], [ %i.g, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @_ZN23common_download_hf_planD2Ev(ptr noundef nonnull align 8 dead_on_return(1368) dereferenceable(1368) %0) #31
  resume { ptr, i32 } %.pn.pn.pn

.critedge52:                                      ; preds = %bb.i, %_ZN8hf_cache7hf_fileD2Ev.exit258
  %26 = phi ptr [ %i.s, %bb.i ], [ %i.am, %_ZN8hf_cache7hf_fileD2Ev.exit258 ]
  %i.wu = load ptr, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.ww = icmp eq ptr %i.wu, %i.wv
  br i1 %i.ww, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i274: ; preds = %.critedge52
  %i.wx = load i64, ptr %i.wv, align 8, !tbaa !62
  %i.wy = add i64 %i.wx, 1
  call void @_ZdlPvm(ptr noundef %i.wu, i64 noundef %i.wy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i275: ; preds = %.critedge52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i274
  %i.wz = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.xb = icmp eq ptr %i.wz, %i.xa
  br i1 %i.xb, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i276: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i275
  %i.xc = load i64, ptr %i.xa, align 8, !tbaa !62
  %i.xd = add i64 %i.xc, 1
  call void @_ZdlPvm(ptr noundef %i.wz, i64 noundef %i.xd) #32
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit280

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit280: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i275, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i276
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  %i.xe = load ptr, ptr %12, align 8, !tbaa !170  ; 4 uses
  %i.xf = load ptr, ptr %26, align 8, !tbaa !171  ; 2 uses
  %.not4.i.i.i281 = icmp eq ptr %i.xe, %i.xf
  br i1 %.not4.i.i.i281, label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i287, label %.lr.ph.i.i.i282

.lr.ph.i.i.i282:                                  ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit280, %.lr.ph.i.i.i282
  %.05.i.i.i283 = phi ptr [ %i.xg, %.lr.ph.i.i.i282 ], [ %i.xe, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit280 ] ; 2 uses
  call void @_ZN8hf_cache7hf_fileD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.05.i.i.i283) #31
  %i.xg = getelementptr inbounds nuw i8, ptr %.05.i.i.i283, i64 192 ; 2 uses
  %.not.i.i.i284 = icmp eq ptr %i.xg, %i.xf
  br i1 %.not.i.i.i284, label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i287, label %.lr.ph.i.i.i282, !llvm.loop !5

_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i287: ; preds = %.lr.ph.i.i.i282, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit280
  %.not.i.i1.i288 = icmp eq ptr %i.xe, null
  br i1 %.not.i.i1.i288, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit273, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit273.sink.split

_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit273.sink.split: ; preds = %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i287, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i271
  %.sink543 = phi ptr [ %i.wr, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i271 ], [ %i.xe, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i287 ] ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !172
  %i.xj = ptrtoint ptr %i.xi to i64
  %i.xk = ptrtoint ptr %.sink543 to i64
  %i.xl = sub i64 %i.xj, %i.xk
  call void @_ZdlPvm(ptr noundef nonnull %.sink543, i64 noundef %i.xl) #32
  br label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit273

_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit273: ; preds = %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit273.sink.split, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i287, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i271
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN23common_download_hf_planC2Ev(ptr noundef nonnull align 8 dereferenceable(1368) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !60
  store i8 0, ptr %i.a, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !60
  store i8 0, ptr %i.d, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.h, align 8, !tbaa !60
  store i8 0, ptr %i.g, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.k, align 8, !tbaa !60
  store i8 0, ptr %i.j, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %i.n, align 8, !tbaa !60
  store i8 0, ptr %i.m, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %i.q, align 8, !tbaa !60
  store i8 0, ptr %i.p, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.u, align 8, !tbaa !60
  store i8 0, ptr %i.t, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 0, ptr %i.x, align 8, !tbaa !60
  store i8 0, ptr %i.w, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !56
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 0, ptr %i.aa, align 8, !tbaa !60
  store i8 0, ptr %i.z, align 8, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 0, ptr %i.ad, align 8, !tbaa !60
  store i8 0, ptr %i.ac, align 8, !tbaa !62
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !56
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 0, ptr %i.ag, align 8, !tbaa !60
  store i8 0, ptr %i.af, align 8, !tbaa !62
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !56
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i64 0, ptr %i.aj, align 8, !tbaa !60
  store i8 0, ptr %i.ai, align 8, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !56
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 0, ptr %i.am, align 8, !tbaa !60
  store i8 0, ptr %i.al, align 8, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i64 0, ptr %i.ap, align 8, !tbaa !60
  store i8 0, ptr %i.ao, align 8, !tbaa !62
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i64 0, ptr %i.as, align 8, !tbaa !60
  store i8 0, ptr %i.ar, align 8, !tbaa !62
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 0, ptr %i.av, align 8, !tbaa !60
  store i8 0, ptr %i.au, align 8, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i64 0, ptr %i.ay, align 8, !tbaa !60
  store i8 0, ptr %i.ax, align 8, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !56
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 576
  store i64 0, ptr %i.bb, align 8, !tbaa !60
  store i8 0, ptr %i.ba, align 8, !tbaa !62
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !56
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i64 0, ptr %i.be, align 8, !tbaa !60
  store i8 0, ptr %i.bd, align 8, !tbaa !62
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !56
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i64 0, ptr %i.bh, align 8, !tbaa !60
  store i8 0, ptr %i.bg, align 8, !tbaa !62
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !56
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 672
  store i64 0, ptr %i.bk, align 8, !tbaa !60
  store i8 0, ptr %i.bj, align 8, !tbaa !62
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !56
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i64 0, ptr %i.bn, align 8, !tbaa !60
  store i8 0, ptr %i.bm, align 8, !tbaa !62
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 2 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !56
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i64 0, ptr %i.bq, align 8, !tbaa !60
  store i8 0, ptr %i.bp, align 8, !tbaa !62
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !56
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 768
  store i64 0, ptr %i.bt, align 8, !tbaa !60
  store i8 0, ptr %i.bs, align 8, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !56
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i64 0, ptr %i.bw, align 8, !tbaa !60
  store i8 0, ptr %i.bv, align 8, !tbaa !62
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !56
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 832
  store i64 0, ptr %i.bz, align 8, !tbaa !60
  store i8 0, ptr %i.by, align 8, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !56
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 864
  store i64 0, ptr %i.cc, align 8, !tbaa !60
  store i8 0, ptr %i.cb, align 8, !tbaa !62
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !56
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 896
  store i64 0, ptr %i.cf, align 8, !tbaa !60
end_hunk_1
