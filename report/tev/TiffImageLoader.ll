Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/TiffImageLoader?download=true
inline.NumInlined: 18382
inline.NumDeleted: 4972
loop-unroll.NumCompletelyUnrolled: 113
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 178
begin_hunk_0_@_ZNKSt3__113unordered_setItNS_4hashItEENS_8equal_toItEENS_9allocatorItEEE8containsB8ne180100ERKt:bb.a
  %.022.i.i = load ptr, ptr %.02232.i.i, align 8, !tbaa !433 ; 2 uses
  %.not26.i.i = icmp eq ptr %.022.i.i, null
  br i1 %.not26.i.i, label %_ZNKSt3__113unordered_setItNS_4hashItEENS_8equal_toItEENS_9allocatorItEEE4findB8ne180100ERKt.exit, label %.lr.ph.split.i.i, !llvm.loop !1847

_ZNKSt3__113unordered_setItNS_4hashItEENS_8equal_toItEENS_9allocatorItEEE4findB8ne180100ERKt.exit: ; preds = %_ZNSt3__116__constrain_hashB8ne180100Emm.exit29.i.i, %bb.i, %.critedge2.i.i, %_ZNSt3__116__constrain_hashB8ne180100Emm.exit29.us.i.i, %bb.f, %.critedge2.us.i.i, %bb.a, %_ZNSt3__116__constrain_hashB8ne180100Emm.exit.i.i, %.preheader.i.i
  %.sroa.0.0.i.i = phi i1 [ false, %bb.a ], [ false, %_ZNSt3__116__constrain_hashB8ne180100Emm.exit.i.i ], [ false, %.preheader.i.i ], [ true, %bb.f ], [ false, %_ZNSt3__116__constrain_hashB8ne180100Emm.exit29.us.i.i ], [ false, %.critedge2.us.i.i ], [ false, %_ZNSt3__116__constrain_hashB8ne180100Emm.exit29.i.i ], [ true, %bb.i ], [ false, %.critedge2.i.i ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__113unordered_setItNS_4hashItEENS_8equal_toItEENS_9allocatorItEEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !433  ; 2 uses
  %.not10.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i, label %_ZNSt3__112__hash_tableItNS_4hashItEENS_8equal_toItEENS_9allocatorItEEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeItPvEEEE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.011.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.011.i.i, align 8, !tbaa !433 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.011.i.i, i64 noundef 24) #49
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt3__112__hash_tableItNS_4hashItEENS_8equal_toItEENS_9allocatorItEEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeItPvEEEE.exit.i, label %.lr.ph.i.i, !llvm.loop !12

_ZNSt3__112__hash_tableItNS_4hashItEENS_8equal_toItEENS_9allocatorItEEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeItPvEEEE.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !435    ; 2 uses
  store ptr null, ptr %0, align 8, !tbaa !435
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt3__112__hash_tableItNS_4hashItEENS_8equal_toItEENS_9allocatorItEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt3__112__hash_tableItNS_4hashItEENS_8equal_toItEENS_9allocatorItEEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeItPvEEEE.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !87
  %i.g = shl i64 %i.f, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #49
  br label %_ZNSt3__112__hash_tableItNS_4hashItEENS_8equal_toItEENS_9allocatorItEEED2Ev.exit

_ZNSt3__112__hash_tableItNS_4hashItEENS_8equal_toItEENS_9allocatorItEEED2Ev.exit: ; preds = %_ZNSt3__112__hash_tableItNS_4hashItEENS_8equal_toItEENS_9allocatorItEEE17__deallocate_nodeEPNS_16__hash_node_baseIPNS_11__hash_nodeItPvEEEE.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !436    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !403  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.c, %bb.b ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -32 ; 3 uses
  tail call void @_ZN3tev4TaskIvED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.d) #44
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !436
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.e = phi ptr [ %.pre1.i, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !403
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !404
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #49
  br label %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev4TaskIvEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi(ptr dead_on_unwind writable sret(%"class.tev::Task.423") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree readnone captures(none) %4, i64 %5, ptr noundef nonnull align 4 dereferenceable(9) %6, i32 noundef %7) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %8 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.tev::Exif", align 8        ; 7 uses
  %11 = alloca %"struct.tev::AttributeNode", align 8 ; 20 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %12 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.tev::Task", align 8        ; 11 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(408) ptr @_Znwm(i64 noundef 408) #47 ; 66 uses
  store ptr @_ZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.resume, ptr %i.b, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_ZNK3tev15TiffImageLoader4loadERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEi.destroy, ptr %destroy.addr, align 8
  %.reload.addr717 = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 9 uses
  %.reload.addr718 = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 3 uses
  %.reload.addr719 = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 18 uses
  %.reload.addr722 = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 3 uses
  %.reload.addr723 = getelementptr inbounds nuw i8, ptr %i.b, i64 272 ; 12 uses
  %.reload.addr724 = getelementptr inbounds nuw i8, ptr %i.b, i64 296 ; 6 uses
  %.reload.addr725 = getelementptr inbounds nuw i8, ptr %i.b, i64 320 ; 9 uses
  %.reload.addr726 = getelementptr inbounds nuw i8, ptr %i.b, i64 328 ; 3 uses
  %.reload.addr728 = getelementptr inbounds nuw i8, ptr %i.b, i64 384 ; 3 uses
  %.reload.addr729 = getelementptr inbounds nuw i8, ptr %i.b, i64 388 ; 2 uses
  %.reload.addr730 = getelementptr inbounds nuw i8, ptr %i.b, i64 401 ; 3 uses
  %.reload.addr731 = getelementptr inbounds nuw i8, ptr %i.b, i64 402 ; 4 uses
  %.reload.addr732 = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  store i32 %7, ptr %.reload.addr728, align 8, !tbaa !151
  %i.c = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #46
          to label %.noexc unwind label %.body.from. ; 3 uses

.noexc:                                           ; preds = %.from.
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(108) %i.d, i8 0, i64 108, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEEE, i64 16), ptr %i.c, align 8, !tbaa !89
  store ptr %i.c, ptr %.reload.addr732, align 8, !tbaa !455
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1861)
  %i.e = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %bb.a unwind label %.body.from.672 ; 5 uses

.body.from.672:                                   ; preds = %.noexc
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr732) #44
  br label %.body

.body.from.:                                      ; preds = %.from.
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !noalias !1862
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.e, align 8, !tbaa !89, !noalias !1862
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !noalias !1862
  store i32 2, ptr %i.k, align 8, !tbaa !91, !noalias !1862
  store ptr %i.j, ptr %i.h, align 8, !tbaa !95, !alias.scope !1863
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store ptr %i.e, ptr %i.l, align 8, !tbaa !96, !alias.scope !1863
  tail call void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E17get_return_objectEv(ptr dead_on_unwind writable sret(%"class.tev::Task.423") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr732) #44
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.n = load i32, ptr %i.m, align 8, !tbaa !210  ; 2 uses
  %i.o = and i32 %i.n, 16
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !456  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !457  ; 3 uses
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %.from..thread.i, label %.from.438

.from..thread.i:                                  ; preds = %bb.b
  store ptr %i.s, ptr %i.p, align 8, !tbaa !456
  br label %.from.438

bb.c:                                             ; preds = %bb.a
  %i.u = and i32 %i.n, 8
  %.not1.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not1.i.i.i, label %.from.442, label %.from.434

.from.438:                                        ; preds = %.from..thread.i, %bb.b
  %i.v = phi ptr [ %i.s, %.from..thread.i ], [ %i.q, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !458  ; 2 uses
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  br label %.from.442

.from.434:                                        ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !459
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  br label %.from.442

.from.442:                                        ; preds = %bb.c, %.from.434, %.from.438
  %.pn17.i = phi ptr [ %i.x, %.from.438 ], [ %i.ac, %.from.434 ], [ null, %bb.c ]
  %.sroa.4.0.i.i4.i = phi i64 [ %i.aa, %.from.438 ], [ %i.ah, %.from.434 ], [ 0, %bb.c ]
  %i.ai = invoke { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.d unwind label %.from.658

bb.d:                                             ; preds = %.from.442
  %i.aj = extractvalue { i64, i64 } %i.ai, 1      ; 2 uses
  %i.ak = sub i64 %.sroa.4.0.i.i4.i, %i.aj        ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 %i.aj ; 7 uses
  %i.al = icmp ult i64 %i.ak, 4
  br i1 %i.al, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = load i8, ptr %.sroa.0.0.i, align 1, !tbaa !80
  switch i8 %i.am, label %bb.g [
    i8 73, label %.thread
    i8 77, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !80
  %.not92 = icmp eq i8 %i.ao, 77
  br i1 %.not92, label %.from.453, label %bb.g

.thread:                                          ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !80
  %.not92245 = icmp eq i8 %i.aq, 73
  br i1 %.not92245, label %.from.450, label %bb.g

bb.g:                                             ; preds = %bb.e, %.thread, %bb.f, %bb.d
  %i.ar = tail call ptr @__cxa_allocate_exception(i64 16) #44 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull @.str.134)
          to label %bb.h unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev11ImageLoader18FormatNotSupportedE, i64 16), ptr %i.ar, align 8, !tbaa !89
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTIN3tev11ImageLoader18FormatNotSupportedE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #45
          to label %bb.dr unwind label %.thread742

.from.658:                                        ; preds = %.from.442
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %.068 = extractvalue { ptr, i32 } %i.as, 0
  br label %.from..split649

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %bb.g
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.654.sink.split

bb.j:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.av = load i8, ptr %8, align 8
  %i.aw = trunc i8 %i.av to i1
  br i1 %i.aw, label %.split, label %.from.654.sink.split

.thread742:                                       ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ay = load i8, ptr %8, align 8
  %i.az = trunc i8 %i.ay to i1
  br i1 %i.az, label %.split, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit651

.split:                                           ; preds = %.thread742, %bb.j
  %i.ba = phi { ptr, i32 } [ %i.ax, %.thread742 ], [ %i.au, %bb.j ]
  %.075744 = phi i1 [ false, %.thread742 ], [ true, %bb.j ]
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !80
  %i.bd = load i64, ptr %8, align 8
  %i.be = and i64 %i.bd, -2
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.be) #49
  %.169244 = extractvalue { ptr, i32 } %i.ba, 0   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  br i1 %.075744, label %.from.654, label %.from..split649

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit651: ; preds = %.thread742
  %.169748 = extractvalue { ptr, i32 } %i.ax, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  br label %.from..split649

.from.654.sink.split:                             ; preds = %bb.j, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.sink = phi { ptr, i32 } [ %i.at, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.au, %bb.j ]
  %.169242 = extractvalue { ptr, i32 } %.sink, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  br label %.from.654

.from.654:                                        ; preds = %.from.654.sink.split, %.split
  %.169243 = phi ptr [ %.169244, %.split ], [ %.169242, %.from.654.sink.split ]
  call void @__cxa_free_exception(ptr %i.ar) #44
  br label %.from..split649

.from.453:                                        ; preds = %bb.f
  store i8 1, ptr %.reload.addr730, align 1, !tbaa !153
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %18 = load i16, ptr %i.bf, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  br label %bb.k

.from.450:                                        ; preds = %.thread
  store i8 0, ptr %.reload.addr730, align 1, !tbaa !153
  %i.bg = getelementptr i8, ptr %.sroa.0.0.i, i64 2
  %i.bh = load i16, ptr %i.bg, align 1
  br label %bb.k

bb.k:                                             ; preds = %.from.450, %.from.453
  %.in = phi i16 [ %19, %.from.453 ], [ %i.bh, %.from.450 ]
  %.not93 = icmp eq i16 %.in, 42
  br i1 %.not93, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = tail call ptr @__cxa_allocate_exception(i64 16) #44 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #44
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull @.str.134)
          to label %bb.m unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit129.thread

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev11ImageLoader18FormatNotSupportedE, i64 16), ptr %i.bi, align 8, !tbaa !89
  invoke void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTIN3tev11ImageLoader18FormatNotSupportedE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #45
          to label %bb.dr unwind label %.thread750

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit129.thread: ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.645.sink.split

bb.o:                                             ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bl = load i8, ptr %9, align 8
  %i.bm = trunc i8 %i.bl to i1
  br i1 %i.bm, label %.split251, label %.from.645.sink.split

.thread750:                                       ; preds = %bb.n
  %i.bn = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.bo = load i8, ptr %9, align 8
  %i.bp = trunc i8 %i.bo to i1
  br i1 %i.bp, label %.split251, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit129642

.split251:                                        ; preds = %.thread750, %bb.o
  %i.bq = phi { ptr, i32 } [ %i.bn, %.thread750 ], [ %i.bk, %bb.o ]
  %.079752 = phi i1 [ false, %.thread750 ], [ true, %bb.o ]
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !80
  %i.bt = load i64, ptr %9, align 8
  %i.bu = and i64 %i.bt, -2
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bu) #49
  %.2252 = extractvalue { ptr, i32 } %i.bq, 0     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  br i1 %.079752, label %.from.645, label %.from..split649

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit129642: ; preds = %.thread750
  %.2756 = extractvalue { ptr, i32 } %i.bn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  br label %.from..split649

.from.645.sink.split:                             ; preds = %bb.o, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit129.thread
  %.sink887 = phi { ptr, i32 } [ %i.bj, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit129.thread ], [ %i.bk, %bb.o ]
  %.2249 = extractvalue { ptr, i32 } %.sink887, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #44
  br label %.from.645

.from.645:                                        ; preds = %.from.645.sink.split, %.split251
  %.2250 = phi ptr [ %.2252, %.split251 ], [ %.2249, %.from.645.sink.split ]
  call void @__cxa_free_exception(ptr %i.bi) #44
  br label %.from..split649

bb.p:                                             ; preds = %bb.k
  %i.bv = invoke ptr @TIFFSetErrorHandler(ptr noundef nonnull @_ZN3tevL16tiffErrorHandlerEPKcS1_P13__va_list_tag)
          to label %bb.q unwind label %.from.647  ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.bw = invoke ptr @TIFFSetWarningHandler(ptr noundef nonnull @_ZN3tevL18tiffWarningHandlerEPKcS1_P13__va_list_tag)
          to label %bb.r unwind label %.from.647  ; 0 uses

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %.reload.addr717, align 8, !tbaa !80
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 5 uses
  store i8 0, ptr %i.bx, align 8, !tbaa !461
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #44
  invoke void @_ZN3tev4ExifC1ENSt3__14spanIKhLm18446744073709551615EEEb(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull %.sroa.0.0.i, i64 %i.ak, i1 noundef zeroext true)
          to label %bb.s unwind label %.from.464

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #44
  invoke void @_ZNK3tev4Exif12toAttributesEv(ptr dead_on_unwind nonnull writable sret(%"struct.tev::AttributeNode") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.t unwind label %.from.461

bb.t:                                             ; preds = %bb.s
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !461, !range !184, !noundef !185
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.ca = load i8, ptr %.reload.addr717, align 8
  %i.cb = trunc i8 %i.ca to i1
  br i1 %i.cb, label %bb.v, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !80
  %i.ce = load i64, ptr %.reload.addr717, align 8
  %i.cf = and i64 %i.ce, -2
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cf) #49
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i: ; preds = %bb.v, %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(97) %.reload.addr717, ptr noundef nonnull align 8 dereferenceable(96) %11, i64 24, i1 false), !tbaa.struct !462
  store i8 0, ptr %11, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 0, ptr %i.cg, align 1, !tbaa !80
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.cj = load i8, ptr %i.ch, align 8
  %i.ck = trunc i8 %i.cj to i1
  br i1 %i.ck, label %bb.w, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i

bb.w:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !80
  %i.cn = load i64, ptr %i.ch, align 8
  %i.co = and i64 %i.cn, -2
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.co) #49
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i: ; preds = %bb.w, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false), !tbaa.struct !462
  store i8 0, ptr %i.ci, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 25
  store i8 0, ptr %i.cp, align 1, !tbaa !80
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %i.cs = load i8, ptr %i.cq, align 8
  %i.ct = trunc i8 %i.cs to i1
  br i1 %i.ct, label %bb.x, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i

bb.x:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !80
  %i.cw = load i64, ptr %i.cq, align 8
  %i.cx = and i64 %i.cw, -2
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cx) #49
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i: ; preds = %bb.x, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit5.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false), !tbaa.struct !462
  store i8 0, ptr %i.cr, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 49
  store i8 0, ptr %i.cy, align 1, !tbaa !80
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !374 ; 5 uses
  %.not.i.i.i.i218 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i218, label %_ZN3tev13AttributeNodeaSEOS0_.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !375 ; 2 uses
  %.not.i1.i.i.i.i.i.i = icmp eq ptr %i.da, %i.dc
  br i1 %.not.i1.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i219

.lr.ph.i.i.i.i.i.i219:                            ; preds = %bb.y, %.lr.ph.i.i.i.i.i.i219
  %.0.i2.i.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i219 ], [ %i.dc, %bb.y ]
  %i.dd = getelementptr inbounds i8, ptr %.0.i2.i.i.i.i.i.i, i64 -96 ; 3 uses
  call void @_ZN3tev13AttributeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.dd) #44, !inline_history !13
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.da, %i.dd
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.from._ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i219

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.from._ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i219
  %.pre.i.i.i.i = load ptr, ptr %i.cz, align 8, !tbaa !374
  br label %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i

_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i: ; preds = %bb.y, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.from._ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i
  %i.de = phi ptr [ %.pre.i.i.i.i, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i.from._ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.loopexit.i.i.i.i ], [ %i.da, %bb.y ] ; 2 uses
  store ptr %i.da, ptr %i.db, align 8, !tbaa !375
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !376
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.de to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dj) #49
  br label %_ZN3tev13AttributeNodeaSEOS0_.exit

_ZN3tev13AttributeNodeaSEOS0_.exit:               ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSB8ne180100EOS5_.exit6.i, %_ZNSt3__16vectorIN3tev13AttributeNodeENS_9allocatorIS2_EEE5clearB8ne180100Ev.exit.i.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 2 uses
  %i.dl = load <2 x ptr>, ptr %i.dk, align 8, !tbaa !376
  store <2 x ptr> %i.dl, ptr %i.cz, align 8, !tbaa !376
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !376
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i8 0, i64 24, i1 false)
  br label %_ZNSt3__18optionalIN3tev13AttributeNodeEEaSB8ne180100IS2_vEERS3_OT_.exit

bb.z:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(97) %.reload.addr717, ptr noundef nonnull align 8 dereferenceable(96) %11, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %11, i8 0, i64 24, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i8 0, i64 24, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 24, i1 false)
end_hunk_0
