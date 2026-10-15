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
  br label %bb.bs

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %bb.br

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
  %i.s = phi ptr [ %i.f, %.thread529 ], [ %i.q, %bb.f ] ; 3 uses
  %i.t = phi ptr [ null, %.thread529 ], [ %i.k, %bb.f ]
  %i.u = phi ptr [ null, %.thread529 ], [ %i.m, %bb.f ] ; 2 uses
  %i.v = phi i64 [ 0, %.thread529 ], [ %i.p, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  invoke void @_ZN8hf_cache16get_cached_filesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.49") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i.i.i59 unwind label %bb.i

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
  br i1 %.not.i.i1.i.i.i60, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit70, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit61

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
  br i1 %.not.i.i1.i69, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit70, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i68
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !172
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #32
  %.pre356.pre = load ptr, ptr %12, align 8, !tbaa !173
  %.pre357.pre = load ptr, ptr %i.s, align 8, !tbaa !173
  br label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit70

_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit70: ; preds = %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i.i.i59, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i68, %bb.h
  %.pre357 = phi ptr [ %i.z, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i68 ], [ %.pre357.pre, %bb.h ], [ %i.z, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i.i.i59 ]
  %.pre356 = phi ptr [ %i.x, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i68 ], [ %.pre356.pre, %bb.h ], [ %i.x, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i.i.i59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %bb.br

bb.j:                                             ; preds = %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit70, %bb.f
  %i.ak = phi ptr [ %i.s, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit70 ], [ %i.q, %bb.f ] ; 3 uses
  %i.al = phi ptr [ %.pre357, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit70 ], [ %i.m, %bb.f ] ; 3 uses
  %i.am = phi ptr [ %.pre356, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit70 ], [ %i.k, %bb.f ] ; 3 uses
  %25 = icmp eq ptr %i.am, %i.al
  br i1 %25, label %.critedge52, label %.preheader

.preheader:                                       ; preds = %bb.j, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread321
  %.sroa.0318.0349 = phi ptr [ %i.bn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread321 ], [ %i.am, %bb.j ] ; 9 uses
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
  br label %bb.br

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
  br i1 %i.ci, label %bb.p, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge54, %.critedge
  %.sroa.0314.0351 = phi ptr [ %i.cv, %.critedge ], [ %i.am, %.critedge54 ] ; 9 uses
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
          to label %.noexc77 unwind label %bb.l

.noexc77:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0314.0351, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.cp)
          to label %.noexc78 unwind label %bb.l

.noexc78:                                         ; preds = %.noexc77
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0314.0351, i64 64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.cq)
          to label %.noexc79 unwind label %bb.l

.noexc79:                                         ; preds = %.noexc78
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0314.0351, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.cr)
          to label %.noexc80 unwind label %bb.l

.noexc80:                                         ; preds = %.noexc79
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0314.0351, i64 128
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.cs)
          to label %.noexc81 unwind label %bb.l

.noexc81:                                         ; preds = %.noexc80
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0314.0351, i64 160
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %i.ct)
          to label %_ZN8hf_cache7hf_fileaSERKS0_.exit83 unwind label %bb.l

bb.l:                                             ; preds = %.noexc81, %.noexc80, %.noexc79, %.noexc78, %.noexc77, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.critedge:                                        ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0314.0351, i64 192 ; 2 uses
  %.not344 = icmp eq ptr %i.cv, %i.al
  br i1 %.not344, label %_ZN8hf_cache7hf_fileaSERKS0_.exit83.thread, label %.lr.ph

_ZN8hf_cache7hf_fileaSERKS0_.exit83:              ; preds = %.noexc81
  %.pre358 = load i64, ptr %i.bp, align 8, !tbaa !60
  %i.cw = icmp eq i64 %.pre358, 0
  br i1 %i.cw, label %_ZN8hf_cache7hf_fileaSERKS0_.exit83.thread, label %.thread

_ZN8hf_cache7hf_fileaSERKS0_.exit83.thread:       ; preds = %.critedge, %_ZN8hf_cache7hf_fileaSERKS0_.exit83
  %i.cx = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZN8hf_cache7hf_fileaSERKS0_.exit83.thread
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %bb.n, label %.invoke

bb.n:                                             ; preds = %bb.m
  %i.cz = invoke noundef ptr @_Z15common_log_mainv()
          to label %.invoke539 unwind label %bb.o

bb.o:                                             ; preds = %.invoke548, %.invoke539, %.invoke, %.noexc88, %.noexc87, %.noexc86, %.noexc85, %.noexc84, %.thread, %bb.bn, %bb.v, %bb.n, %_ZN8hf_cache7hf_fileaSERKS0_.exit83.thread
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.p:                                             ; preds = %.critedge54
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  invoke fastcc void @_ZL15find_best_modelRKSt6vectorIN8hf_cache7hf_fileESaIS1_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.db = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN8hf_cache7hf_fileaSEOS0_(ptr noundef nonnull align 8 dereferenceable(192) %16, ptr noundef nonnull align 8 dereferenceable(192) %17) #31 ; 0 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %17, i64 160
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !59 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %17, i64 176 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.q
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !62
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !59 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 144 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !62
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.do = getelementptr inbounds nuw i8, ptr %17, i64 96
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !59 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %17, i64 112 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !62
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.du = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !59 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %17, i64 80 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !62
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  %i.ea = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !59 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !62
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i
  %i.eg = load ptr, ptr %17, align 8, !tbaa !59   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZN8hf_cache7hf_fileD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !62
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #32
  br label %_ZN8hf_cache7hf_fileD2Ev.exit

_ZN8hf_cache7hf_fileD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  %i.el = load i64, ptr %i.bp, align 8, !tbaa !60
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %bb.r, label %.thread

bb.r:                                             ; preds = %_ZN8hf_cache7hf_fileD2Ev.exit
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 58
  %i.eo = load i8, ptr %i.en, align 2, !tbaa !736, !range !103, !noundef !104
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %.thread535, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.er = load i8, ptr %i.eq, align 4, !tbaa !737, !range !103, !noundef !104
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %.thread535, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 59
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !738, !range !103, !noundef !104
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %.thread535, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 61
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !739, !range !103, !noundef !104
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %.thread535, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ez = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.w unwind label %bb.o

bb.w:                                             ; preds = %bb.v
  %i.fa = icmp sgt i32 %i.ez, 0
  br i1 %i.fa, label %.invoke548, label %.invoke

bb.x:                                             ; preds = %bb.p
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %bb.bq

end_hunk_0
begin_hunk_1_@_Z27common_download_get_hf_planRK19common_params_modelRK20common_download_opts:bb.a
.noexc84:                                         ; preds = %.thread
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %i.bq)
          to label %.noexc85 unwind label %bb.o

.noexc85:                                         ; preds = %.noexc84
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fd, ptr noundef nonnull align 8 dereferenceable(32) %i.bt)
          to label %.noexc86 unwind label %bb.o

.noexc86:                                         ; preds = %.noexc85
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fe, ptr noundef nonnull align 8 dereferenceable(32) %i.bw)
          to label %.noexc87 unwind label %bb.o

.noexc87:                                         ; preds = %.noexc86
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ff, ptr noundef nonnull align 8 dereferenceable(32) %i.bz)
          to label %.noexc88 unwind label %bb.o

.noexc88:                                         ; preds = %.noexc87
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.fg, ptr noundef nonnull align 8 dereferenceable(32) %i.cc)
          to label %_ZN8hf_cache7hf_fileaSERKS0_.exit90 unwind label %bb.o

_ZN8hf_cache7hf_fileaSERKS0_.exit90:              ; preds = %.noexc88
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !740)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !740
  invoke fastcc void @_ZL19get_gguf_split_infoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(192) %16)
          to label %.noexc91 unwind label %bb.as

.noexc91:                                         ; preds = %_ZN8hf_cache7hf_fileaSERKS0_.exit90
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 68 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !175, !noalias !740
  %i.fj = icmp slt i32 %i.fi, 2
  br i1 %i.fj, label %bb.y, label %bb.af

bb.y:                                             ; preds = %.noexc91
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31, !noalias !740
  invoke void @_ZN8hf_cache7hf_fileC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(192) %10, ptr noundef nonnull align 8 dereferenceable(192) %16)
          to label %bb.z unwind label %bb.ae, !noalias !740

bb.z:                                             ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %18, i8 0, i64 24, i1 false), !alias.scope !740
  %i.fk = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #37
          to label %.noexc311 unwind label %.body312.thread ; 3 uses

.noexc311:                                        ; preds = %bb.z
  store ptr %i.fk, ptr %18, align 16, !tbaa !170
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 192 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %i.fl, ptr %i.fm, align 16, !tbaa !172
  invoke void @_ZN8hf_cache7hf_fileC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(192) %i.fk, ptr noundef nonnull align 8 dereferenceable(192) %10)
          to label %_ZSt10_ConstructIN8hf_cache7hf_fileEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %_ZSt8_DestroyIPN8hf_cache7hf_fileEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN8hf_cache7hf_fileEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc311
  %i.fn = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.fl, ptr %i.fn, align 8, !tbaa !171
  %i.fo = getelementptr inbounds nuw i8, ptr %10, i64 160
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !59 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %10, i64 176 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i290

_ZSt8_DestroyIPN8hf_cache7hf_fileEEvT_S3_.exit.i.i.i.i.i: ; preds = %.noexc311
  %i.fs = landingpad { ptr, i32 }
          catch ptr null
  %i.ft = extractvalue { ptr, i32 } %i.fs, 0
  %i.fu = call ptr @__cxa_begin_catch(ptr %i.ft) #31 ; 0 uses
  invoke void @__cxa_rethrow() #33
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPN8hf_cache7hf_fileEEvT_S3_.exit.i.i.i.i.i
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body312 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #34
  unreachable

bb.ac:                                            ; preds = %_ZSt8_DestroyIPN8hf_cache7hf_fileEEvT_S3_.exit.i.i.i.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i290: ; preds = %_ZSt10_ConstructIN8hf_cache7hf_fileEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.fy = load i64, ptr %i.fq, align 8, !tbaa !62
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i291: ; preds = %_ZSt10_ConstructIN8hf_cache7hf_fileEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i290
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !59 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %10, i64 144 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i293, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i292: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i291
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !62
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i293

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i293: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i291, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i292
  %i.gg = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !59 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i294: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i293
  %i.gk = load i64, ptr %i.gi, align 8, !tbaa !62
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i293, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i294
  %i.gm = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !59 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i295
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !62
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i295, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i296
  %i.gs = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !59 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i298: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i297
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !62
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gx) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i299: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i297, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i298
  %i.gy = load ptr, ptr %10, align 8, !tbaa !59   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZN8hf_cache7hf_fileD2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i300: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i299
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !62
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #32
  br label %_ZN8hf_cache7hf_fileD2Ev.exit307

_ZN8hf_cache7hf_fileD2Ev.exit307:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i299, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i300
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31, !noalias !740
  br label %.loopexit29.i

.body312.thread:                                  ; preds = %bb.z
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body312:                                         ; preds = %bb.aa
  %.pr325 = load ptr, ptr %18, align 16, !tbaa !170, !alias.scope !740 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr325, null
  br i1 %.not.i.i.i.i, label %.body.i, label %bb.ad

bb.ad:                                            ; preds = %.body312
  %i.he = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.hf = load ptr, ptr %i.he, align 16, !tbaa !172, !alias.scope !740
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = ptrtoint ptr %.pr325 to i64
  %i.hi = sub i64 %i.hg, %i.hh
  call void @_ZdlPvm(ptr noundef nonnull %.pr325, i64 noundef %i.hi) #32
  br label %.body.i

bb.ae:                                            ; preds = %bb.y
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.body.i:                                          ; preds = %.body312.thread, %bb.ad, %.body312
  %eh.lpad-body313534 = phi { ptr, i32 } [ %i.hd, %.body312.thread ], [ %i.fv, %bb.ad ], [ %i.fv, %.body312 ]
  call void @_ZN8hf_cache7hf_fileD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %10) #31
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.body.i, %bb.ae
  %.pn14.i = phi { ptr, i32 } [ %i.hj, %bb.ae ], [ %eh.lpad-body313534, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31, !noalias !740
  br label %bb.ap

bb.af:                                            ; preds = %.noexc91
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %18, i8 0, i64 24, i1 false), !alias.scope !740
  %i.hk = load ptr, ptr %12, align 8, !tbaa !173, !noalias !740 ; 2 uses
  %i.hl = load ptr, ptr %i.ak, align 8, !tbaa !173, !noalias !740 ; 2 uses
  %.not30.i = icmp eq ptr %i.hk, %i.hl
  br i1 %.not30.i, label %.loopexit29.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.af
  %i.hm = getelementptr inbounds nuw i8, ptr %11, i64 68
  %i.hn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.hs = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN15gguf_split_infoD2Ev.exit.i, %.lr.ph.i
  %.sroa.024.031.i = phi ptr [ %i.hk, %.lr.ph.i ], [ %i.is, %_ZN15gguf_split_infoD2Ev.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31, !noalias !740
  invoke fastcc void @_ZL19get_gguf_split_infoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.024.031.i)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.hu = load i32, ptr %i.hm, align 4, !tbaa !175, !noalias !740
  %i.hv = load i32, ptr %i.fh, align 4, !tbaa !175, !noalias !740
  %i.hw = icmp eq i32 %i.hu, %i.hv
  br i1 %i.hw, label %bb.ai, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE9push_backERKS1_.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.hx = load i64, ptr %i.hn, align 8, !tbaa !60, !noalias !740 ; 3 uses
  %i.hy = load i64, ptr %i.ho, align 8, !tbaa !60, !noalias !740
  %i.hz = icmp eq i64 %i.hx, %i.hy
  br i1 %i.hz, label %bb.aj, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE9push_backERKS1_.exit.i

bb.aj:                                            ; preds = %bb.ai
  %i.ia = icmp eq i64 %i.hx, 0
  br i1 %i.ia, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.aj
  %i.ib = load ptr, ptr %9, align 8, !tbaa !59, !noalias !740
  %i.ic = load ptr, ptr %11, align 8, !tbaa !59, !noalias !740
  %bcmp.i.i = call i32 @bcmp(ptr %i.ic, ptr %i.ib, i64 %i.hx)
  %i.id = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.id, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE9push_backERKS1_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.aj
  %i.ie = load ptr, ptr %i.hp, align 8, !tbaa !171, !alias.scope !740 ; 3 uses
  %i.if = load ptr, ptr %i.hq, align 16, !tbaa !172, !alias.scope !740
  %.not.i.i = icmp eq ptr %i.ie, %i.if
  br i1 %.not.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  invoke void @_ZN8hf_cache7hf_fileC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(192) %i.ie, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.024.031.i)
          to label %.noexc.i unwind label %bb.an

.noexc.i:                                         ; preds = %bb.ak
  %i.ig = load ptr, ptr %i.hp, align 8, !tbaa !171, !alias.scope !740
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 192
  store ptr %i.ih, ptr %i.hp, align 8, !tbaa !171, !alias.scope !740
  br label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE9push_backERKS1_.exit.i

bb.al:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  invoke void @_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr %i.ie, ptr noundef nonnull align 8 dereferenceable(192) %.sroa.024.031.i)
          to label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE9push_backERKS1_.exit.i unwind label %bb.an

bb.am:                                            ; preds = %bb.ag
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.al, %bb.ak
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15gguf_split_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %11) #31
  br label %bb.ao

_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE9push_backERKS1_.exit.i: ; preds = %bb.al, %.noexc.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.ai, %bb.ah
  %i.ik = load ptr, ptr %i.hr, align 8, !tbaa !59, !noalias !740 ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.hs
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE9push_backERKS1_.exit.i
  %i.im = load i64, ptr %i.hs, align 8, !tbaa !62, !noalias !740
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EE9push_backERKS1_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.io = load ptr, ptr %11, align 8, !tbaa !59, !noalias !740 ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.ht
  br i1 %i.ip, label %_ZN15gguf_split_infoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.iq = load i64, ptr %i.ht, align 8, !tbaa !62, !noalias !740
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.ir) #32
  br label %_ZN15gguf_split_infoD2Ev.exit.i

_ZN15gguf_split_infoD2Ev.exit.i:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31, !noalias !740
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.024.031.i, i64 192 ; 2 uses
  %.not.i = icmp eq ptr %i.is, %i.hl
  br i1 %.not.i, label %.loopexit29.i, label %bb.ag

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn.i = phi { ptr, i32 } [ %i.ij, %bb.an ], [ %i.ii, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31, !noalias !740
  call void @_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #31
  br label %bb.ap

.loopexit29.i:                                    ; preds = %_ZN15gguf_split_infoD2Ev.exit.i, %bb.af, %_ZN8hf_cache7hf_fileD2Ev.exit307
  %i.it = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !59, !noalias !740 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i: ; preds = %.loopexit29.i
  %i.ix = load i64, ptr %i.iv, align 8, !tbaa !62, !noalias !740
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.iy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19.i: ; preds = %.loopexit29.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18.i
  %i.iz = load ptr, ptr %9, align 8, !tbaa !59, !noalias !740 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.jb = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i21.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i20.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i20.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19.i
  %i.jc = load i64, ptr %i.ja, align 8, !tbaa !62, !noalias !740
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jd) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i21.i

bb.ap:                                            ; preds = %bb.ao, %.loopexit.i
  %.pn14.pn.i = phi { ptr, i32 } [ %.pn14.i, %.loopexit.i ], [ %.pn.i, %bb.ao ]
  call void @_ZN15gguf_split_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !740
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i21.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !740
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !170 ; 5 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !171 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !172
  %i.jk = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.jl = load <2 x ptr>, ptr %18, align 16, !tbaa !173
  store <2 x ptr> %i.jl, ptr %i.je, align 8, !tbaa !173
  %i.jm = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 16, !tbaa !172
  store ptr %i.jn, ptr %i.ji, align 8, !tbaa !172
  %.not4.i.i.i.i.i92 = icmp eq ptr %i.jf, %i.jh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i92, label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i.i.i96, label %.lr.ph.i.i.i.i.i93

.lr.ph.i.i.i.i.i93:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i21.i, %.lr.ph.i.i.i.i.i93
  %.05.i.i.i.i.i94 = phi ptr [ %i.jo, %.lr.ph.i.i.i.i.i93 ], [ %i.jf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i21.i ] ; 2 uses
  call void @_ZN8hf_cache7hf_fileD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.05.i.i.i.i.i94) #31
  %i.jo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i94, i64 192 ; 2 uses
  %.not.i.i.i.i.i95 = icmp eq ptr %i.jo, %i.jh
  br i1 %.not.i.i.i.i.i95, label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i.i.i96, label %.lr.ph.i.i.i.i.i93, !llvm.loop !5

_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i.i.i96: ; preds = %.lr.ph.i.i.i.i.i93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i2.i21.i
  %.not.i.i1.i.i.i97 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i1.i.i.i97, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit98, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i.i.i96
  %i.jp = ptrtoint ptr %i.jj to i64
  %i.jq = ptrtoint ptr %i.jf to i64
  %i.jr = sub i64 %i.jp, %i.jq
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef %i.jr) #32
  br label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit98

_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit98: ; preds = %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i.i.i96, %bb.aq
  %i.js = load ptr, ptr %18, align 16, !tbaa !170 ; 3 uses
  %i.jt = load ptr, ptr %i.jk, align 8, !tbaa !171 ; 2 uses
  %.not4.i.i.i99 = icmp eq ptr %i.js, %i.jt
  br i1 %.not4.i.i.i99, label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i105, label %.lr.ph.i.i.i100

.lr.ph.i.i.i100:                                  ; preds = %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit98, %.lr.ph.i.i.i100
  %.05.i.i.i101 = phi ptr [ %i.ju, %.lr.ph.i.i.i100 ], [ %i.js, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit98 ] ; 2 uses
  call void @_ZN8hf_cache7hf_fileD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.05.i.i.i101) #31
  %i.ju = getelementptr inbounds nuw i8, ptr %.05.i.i.i101, i64 192 ; 2 uses
  %.not.i.i.i102 = icmp eq ptr %i.ju, %i.jt
  br i1 %.not.i.i.i102, label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i103, label %.lr.ph.i.i.i100, !llvm.loop !5

_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i103: ; preds = %.lr.ph.i.i.i100
  %.pr.i104 = load ptr, ptr %18, align 16, !tbaa !170
  br label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i105

_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i105: ; preds = %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i103, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit98
  %i.jv = phi ptr [ %.pr.i104, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i103 ], [ %i.js, %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EEaSEOS3_.exit98 ] ; 3 uses
  %.not.i.i1.i106 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i1.i106, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i105
  %i.jw = load ptr, ptr %i.jm, align 16, !tbaa !172
  %i.jx = ptrtoint ptr %i.jw to i64
end_hunk_1
begin_hunk_2_@_Z27common_download_get_hf_planRK19common_params_modelRK20common_download_opts:bb.a
  %i.tv = getelementptr inbounds nuw i8, ptr %23, i64 112 ; 2 uses
  %i.tw = icmp eq ptr %i.tu, %i.tv
  br i1 %i.tw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i227: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i226
  %i.tx = load i64, ptr %i.tv, align 8, !tbaa !62
  %i.ty = add i64 %i.tx, 1
  call void @_ZdlPvm(ptr noundef %i.tu, i64 noundef %i.ty) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i228: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i227
  %i.tz = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !59 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %23, i64 80 ; 2 uses
  %i.uc = icmp eq ptr %i.ua, %i.ub
  br i1 %i.uc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i229: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i228
  %i.ud = load i64, ptr %i.ub, align 8, !tbaa !62
  %i.ue = add i64 %i.ud, 1
  call void @_ZdlPvm(ptr noundef %i.ua, i64 noundef %i.ue) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i228, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i229
  %i.uf = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !59 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %23, i64 48 ; 2 uses
  %i.ui = icmp eq ptr %i.ug, %i.uh
  br i1 %i.ui, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i230
  %i.uj = load i64, ptr %i.uh, align 8, !tbaa !62
  %i.uk = add i64 %i.uj, 1
  call void @_ZdlPvm(ptr noundef %i.ug, i64 noundef %i.uk) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i231
  %i.ul = load ptr, ptr %23, align 8, !tbaa !59   ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.un = icmp eq ptr %i.ul, %i.um
  br i1 %i.un, label %_ZN8hf_cache7hf_fileD2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i233: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i232
  %i.uo = load i64, ptr %i.um, align 8, !tbaa !62
  %i.up = add i64 %i.uo, 1
  call void @_ZdlPvm(ptr noundef %i.ul, i64 noundef %i.up) #32
  br label %_ZN8hf_cache7hf_fileD2Ev.exit240

_ZN8hf_cache7hf_fileD2Ev.exit240:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN8hf_cache7hf_fileD2Ev.exit240, %bb.bi
  %i.uq = load i64, ptr %i.bp, align 8, !tbaa !60
  %i.ur = icmp eq i64 %i.uq, 0
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ut = load i64, ptr %i.us, align 8
  %i.uu = icmp eq i64 %i.ut, 0
  %or.cond330 = select i1 %i.ur, i1 %i.uu, i1 false
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.uw = load i64, ptr %i.uv, align 8
  %i.ux = icmp eq i64 %i.uw, 0
  %or.cond334 = select i1 %or.cond330, i1 %i.ux, i1 false
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.uz = load i64, ptr %i.uy, align 8
  %i.va = icmp eq i64 %i.uz, 0
  %or.cond338 = select i1 %or.cond334, i1 %i.va, i1 false
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.vc = load i64, ptr %i.vb, align 8
  %i.vd = icmp eq i64 %i.vc, 0
  %or.cond342 = select i1 %or.cond338, i1 %i.vd, i1 false
  br i1 %or.cond342, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.ve = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.bo unwind label %bb.o

bb.bo:                                            ; preds = %bb.bn
  %i.vf = icmp sgt i32 %i.ve, 0
  br i1 %i.vf, label %.invoke548, label %.invoke

.invoke548:                                       ; preds = %bb.bo, %bb.w
  %i.vg = invoke noundef ptr @_Z15common_log_mainv()
          to label %.invoke539 unwind label %bb.o

.invoke539:                                       ; preds = %.invoke548, %bb.n
  %i.vh = phi ptr [ %i.vg, %.invoke548 ], [ %i.cz, %bb.n ]
  %i.vi = phi ptr [ @.str.9, %.invoke548 ], [ @.str.8, %bb.n ]
  %.in = phi ptr [ %13, %.invoke548 ], [ %i.cf, %bb.n ]
  %i.vj = load ptr, ptr %.in, align 8, !tbaa !59
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.vh, i32 noundef 4, ptr noundef nonnull %i.vi, ptr noundef nonnull @__func__._Z27common_download_get_hf_planRK19common_params_modelRK20common_download_opts, ptr noundef %i.vj)
          to label %.invoke unwind label %bb.o

.invoke:                                          ; preds = %.invoke539, %bb.bo, %bb.w, %bb.m
  invoke fastcc void @_ZL25list_available_gguf_filesRKSt6vectorIN8hf_cache7hf_fileESaIS1_EE(ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.bp unwind label %bb.o

bb.bp:                                            ; preds = %.invoke, %bb.bm
  %i.vk = load ptr, ptr %i.cc, align 8, !tbaa !59 ; 2 uses
  %i.vl = icmp eq ptr %i.vk, %i.cd
  br i1 %i.vl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i241: ; preds = %bb.bp
  %i.vm = load i64, ptr %i.cd, align 8, !tbaa !62
  %i.vn = add i64 %i.vm, 1
  call void @_ZdlPvm(ptr noundef %i.vk, i64 noundef %i.vn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i242: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i241
  %i.vo = load ptr, ptr %i.bz, align 8, !tbaa !59 ; 2 uses
  %i.vp = icmp eq ptr %i.vo, %i.ca
  br i1 %i.vp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i243: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i242
  %i.vq = load i64, ptr %i.ca, align 8, !tbaa !62
  %i.vr = add i64 %i.vq, 1
  call void @_ZdlPvm(ptr noundef %i.vo, i64 noundef %i.vr) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i244: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i243
  %i.vs = load ptr, ptr %i.bw, align 8, !tbaa !59 ; 2 uses
  %i.vt = icmp eq ptr %i.vs, %i.bx
  br i1 %i.vt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i245: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i244
  %i.vu = load i64, ptr %i.bx, align 8, !tbaa !62
  %i.vv = add i64 %i.vu, 1
  call void @_ZdlPvm(ptr noundef %i.vs, i64 noundef %i.vv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i246: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i244, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i245
  %i.vw = load ptr, ptr %i.bt, align 8, !tbaa !59 ; 2 uses
  %i.vx = icmp eq ptr %i.vw, %i.bu
  br i1 %i.vx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i247: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i246
  %i.vy = load i64, ptr %i.bu, align 8, !tbaa !62
  %i.vz = add i64 %i.vy, 1
  call void @_ZdlPvm(ptr noundef %i.vw, i64 noundef %i.vz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i246, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i247
  %i.wa = load ptr, ptr %i.bq, align 8, !tbaa !59 ; 2 uses
  %i.wb = icmp eq ptr %i.wa, %i.br
  br i1 %i.wb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i249: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i248
  %i.wc = load i64, ptr %i.br, align 8, !tbaa !62
  %i.wd = add i64 %i.wc, 1
  call void @_ZdlPvm(ptr noundef %i.wa, i64 noundef %i.wd) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i248, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i249
  %i.we = load ptr, ptr %16, align 8, !tbaa !59   ; 2 uses
  %i.wf = icmp eq ptr %i.we, %i.bo
  br i1 %i.wf, label %_ZN8hf_cache7hf_fileD2Ev.exit258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i250
  %i.wg = load i64, ptr %i.bo, align 8, !tbaa !62
  %i.wh = add i64 %i.wg, 1
  call void @_ZdlPvm(ptr noundef %i.we, i64 noundef %i.wh) #32
  br label %_ZN8hf_cache7hf_fileD2Ev.exit258

_ZN8hf_cache7hf_fileD2Ev.exit258:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12.i250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %.critedge52

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i, %.body, %bb.x, %bb.o, %bb.l
  %.pn = phi { ptr, i32 } [ %i.da, %bb.o ], [ %i.ta, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i216 ], [ %i.qz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i188 ], [ %i.oy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i160 ], [ %i.mx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i132 ], [ %i.ks, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i ], [ %eh.lpad-body, %.body ], [ %i.fb, %bb.x ], [ %i.cu, %bb.l ]
  call void @_ZN8hf_cache7hf_fileD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.br

_ZN8hf_cache7hf_fileaSERKS0_.exit:                ; preds = %.noexc74
  %i.wi = load ptr, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.wk = icmp eq ptr %i.wi, %i.wj
  br i1 %i.wk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i259: ; preds = %_ZN8hf_cache7hf_fileaSERKS0_.exit
  %i.wl = load i64, ptr %i.wj, align 8, !tbaa !62
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wi, i64 noundef %i.wm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i260: ; preds = %_ZN8hf_cache7hf_fileaSERKS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i259
  %i.wn = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.wp = icmp eq ptr %i.wn, %i.wo
  br i1 %i.wp, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i261: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i260
  %i.wq = load i64, ptr %i.wo, align 8, !tbaa !62
  %i.wr = add i64 %i.wq, 1
  call void @_ZdlPvm(ptr noundef %i.wn, i64 noundef %i.wr) #32
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i260, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i261
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  %i.ws = load ptr, ptr %12, align 8, !tbaa !170  ; 4 uses
  %i.wt = load ptr, ptr %i.ak, align 8, !tbaa !171 ; 2 uses
  %.not4.i.i.i265 = icmp eq ptr %i.ws, %i.wt
  br i1 %.not4.i.i.i265, label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i271, label %.lr.ph.i.i.i266

.lr.ph.i.i.i266:                                  ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %.lr.ph.i.i.i266
  %.05.i.i.i267 = phi ptr [ %i.wu, %.lr.ph.i.i.i266 ], [ %i.ws, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit ] ; 2 uses
  call void @_ZN8hf_cache7hf_fileD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.05.i.i.i267) #31
  %i.wu = getelementptr inbounds nuw i8, ptr %.05.i.i.i267, i64 192 ; 2 uses
  %.not.i.i.i268 = icmp eq ptr %i.wu, %i.wt
  br i1 %.not.i.i.i268, label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i271, label %.lr.ph.i.i.i266, !llvm.loop !5

_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i271: ; preds = %.lr.ph.i.i.i266, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %.not.i.i1.i272 = icmp eq ptr %i.ws, null
  br i1 %.not.i.i1.i272, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit273, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit273.sink.split

bb.br:                                            ; preds = %bb.bq, %bb.k, %bb.i, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bq ], [ %i.bm, %bb.k ], [ %24, %bb.i ], [ %i.h, %bb.e ]
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #31
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.br ], [ %i.g, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  call void @_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  call void @_ZN23common_download_hf_planD2Ev(ptr noundef nonnull align 8 dead_on_return(1368) dereferenceable(1368) %0) #31
  resume { ptr, i32 } %.pn.pn.pn

.critedge52:                                      ; preds = %bb.j, %_ZN8hf_cache7hf_fileD2Ev.exit258
  %i.wv = load ptr, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.wx = icmp eq ptr %i.wv, %i.ww
  br i1 %i.wx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i274: ; preds = %.critedge52
  %i.wy = load i64, ptr %i.ww, align 8, !tbaa !62
  %i.wz = add i64 %i.wy, 1
  call void @_ZdlPvm(ptr noundef %i.wv, i64 noundef %i.wz) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i275: ; preds = %.critedge52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i274
  %i.xa = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.xc = icmp eq ptr %i.xa, %i.xb
  br i1 %i.xc, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit280, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i276: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i275
  %i.xd = load i64, ptr %i.xb, align 8, !tbaa !62
  %i.xe = add i64 %i.xd, 1
  call void @_ZdlPvm(ptr noundef %i.xa, i64 noundef %i.xe) #32
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit280

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit280: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i275, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i276
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  %i.xf = load ptr, ptr %12, align 8, !tbaa !170  ; 4 uses
  %i.xg = load ptr, ptr %i.ak, align 8, !tbaa !171 ; 2 uses
  %.not4.i.i.i281 = icmp eq ptr %i.xf, %i.xg
  br i1 %.not4.i.i.i281, label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i287, label %.lr.ph.i.i.i282

.lr.ph.i.i.i282:                                  ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit280, %.lr.ph.i.i.i282
  %.05.i.i.i283 = phi ptr [ %i.xh, %.lr.ph.i.i.i282 ], [ %i.xf, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit280 ] ; 2 uses
  call void @_ZN8hf_cache7hf_fileD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.05.i.i.i283) #31
  %i.xh = getelementptr inbounds nuw i8, ptr %.05.i.i.i283, i64 192 ; 2 uses
  %.not.i.i.i284 = icmp eq ptr %i.xh, %i.xg
  br i1 %.not.i.i.i284, label %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i287, label %.lr.ph.i.i.i282, !llvm.loop !5

_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i287: ; preds = %.lr.ph.i.i.i282, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit280
  %.not.i.i1.i288 = icmp eq ptr %i.xf, null
  br i1 %.not.i.i1.i288, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit273, label %_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit273.sink.split

_ZNSt6vectorIN8hf_cache7hf_fileESaIS1_EED2Ev.exit273.sink.split: ; preds = %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i287, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i271
  %.sink543 = phi ptr [ %i.ws, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i271 ], [ %i.xf, %_ZSt8_DestroyIPN8hf_cache7hf_fileES1_EvT_S3_RSaIT0_E.exit.i287 ] ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !172
  %i.xk = ptrtoint ptr %i.xj to i64
  %i.xl = ptrtoint ptr %.sink543 to i64
  %i.xm = sub i64 %i.xk, %i.xl
  call void @_ZdlPvm(ptr noundef nonnull %.sink543, i64 noundef %i.xm) #32
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
end_hunk_2
