Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/parallel_pipeline?download=true
inline.NumInlined: 109
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN3tbb6detail2r18pipelineD2Ev:bb.a
  br i1 %i.h, label %bb.e, label %_ZN3tbb6detail2r112input_bufferD2Ev.exit

bb.e:                                             ; preds = %_ZN3tbb6detail2d123cache_aligned_allocatorINS0_2r19task_infoEE10deallocateEPS4_m.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !71
  %i.k = tail call noundef i32 @pthread_key_delete(i32 noundef %i.j) #9 ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZN3tbb6detail2r112input_bufferD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3tbb6detail2r113handle_perrorEiPKc(i32 noundef %i.k, ptr noundef nonnull @.str)
          to label %_ZN3tbb6detail2r112input_bufferD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #11
  unreachable

_ZN3tbb6detail2r112input_bufferD2Ev.exit:         ; preds = %_ZN3tbb6detail2d123cache_aligned_allocatorINS0_2r19task_infoEE10deallocateEPS4_m.exit.i, %bb.e, %bb.f
  invoke void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %i.d)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZN3tbb6detail2r112input_bufferD2Ev.exit, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59
  store ptr %i.o, ptr %i.a, align 8, !tbaa !66
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.b) #9
  invoke void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.j, !llvm.loop !87

bb.i:                                             ; preds = %bb.b
  ret void

bb.j:                                             ; preds = %bb.h, %_ZN3tbb6detail2r112input_bufferD2Ev.exit
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #11
  unreachable
}

declare void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind sspstrong uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress sspstrong uwtable
define hidden void @_ZN3tbb6detail2r18pipeline10add_filterERNS0_2d111base_filterE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(40) initializes((32, 40)) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %0, ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.b, align 8, !tbaa !66
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %1, ptr %i.g, align 8, !tbaa !59
  %i.h = icmp eq ptr %i.c, %1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi i1 [ %i.h, %bb.c ], [ true, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %i.j, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.k, align 8, !tbaa !88
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !50   ; 2 uses
  %i.n = trunc i32 %i.m to i1
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 56) ; 9 uses
  %i.p = load i32, ptr %i.l, align 8, !tbaa !50
  %i.q = and i32 %i.p, 3
  %i.r = icmp eq i32 %i.q, 1
  %i.s = zext i1 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 0, ptr %i.u, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.o, i8 0, i64 25, i1 false)
  store i8 %i.s, ptr %i.v, align 8, !tbaa !72
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  store i32 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i8 0, ptr %i.x, align 8, !tbaa !73
  %i.y = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef 96) ; 5 uses
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !28   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 17
  store i8 0, ptr %i.aa, align 1, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 41
  store i8 0, ptr %i.ab, align 1, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 65
  store i8 0, ptr %i.ac, align 1, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 89
  store i8 0, ptr %i.ad, align 1, !tbaa !30
  store ptr %i.y, ptr %i.o, align 8, !tbaa !28
  store i64 4, ptr %i.t, align 8, !tbaa !26
  %.not31.i.i = icmp eq ptr %i.z, null
  br i1 %.not31.i.i, label %_ZN3tbb6detail2r112input_bufferC2Eb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef nonnull %i.z)
  br label %_ZN3tbb6detail2r112input_bufferC2Eb.exit

_ZN3tbb6detail2r112input_bufferC2Eb.exit:         ; preds = %bb.e, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.o, ptr %i.ae, align 8, !tbaa !55
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.af = and i32 %i.m, 4
  %i.ag = icmp ne i32 %i.af, 0
  %or.cond = and i1 %i.ag, %i.i
  br i1 %or.cond, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ah = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 56) ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 0, ptr %i.aj, align 8, !tbaa !56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.ah, i8 0, i64 25, i1 false)
  store i8 0, ptr %i.ak, align 8, !tbaa !72
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 44 ; 2 uses
  store i32 0, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  store i8 0, ptr %i.am, align 8, !tbaa !73
  %i.an = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef 96) ; 5 uses
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !28 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 17
  store i8 0, ptr %i.ap, align 1, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 41
  store i8 0, ptr %i.aq, align 1, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 65
  store i8 0, ptr %i.ar, align 1, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 89
  store i8 0, ptr %i.as, align 1, !tbaa !30
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !28
  store i64 4, ptr %i.ai, align 8, !tbaa !26
  %.not31.i.i13 = icmp eq ptr %i.ao, null
  br i1 %.not31.i.i13, label %_ZN3tbb6detail2r112input_bufferC2Eb.exit14, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef nonnull %i.ao)
  br label %_ZN3tbb6detail2r112input_bufferC2Eb.exit14

_ZN3tbb6detail2r112input_bufferC2Eb.exit14:       ; preds = %bb.h, %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ah, ptr %i.at, align 8, !tbaa !55
  %i.au = tail call noundef i32 @pthread_key_create(ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef null) #9 ; 2 uses
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %_ZN3tbb6detail2r112input_buffer13create_my_tlsEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2r112input_bufferC2Eb.exit14
  tail call void @_ZN3tbb6detail2r113handle_perrorEiPKc(i32 noundef %i.au, ptr noundef nonnull @.str.3)
  br label %_ZN3tbb6detail2r112input_buffer13create_my_tlsEv.exit

_ZN3tbb6detail2r112input_buffer13create_my_tlsEv.exit: ; preds = %_ZN3tbb6detail2r112input_bufferC2Eb.exit14, %bb.j
  store i8 1, ptr %i.am, align 8, !tbaa !73
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %_ZN3tbb6detail2r112input_buffer13create_my_tlsEv.exit, %_ZN3tbb6detail2r112input_bufferC2Eb.exit
  ret void
}

declare noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress sspstrong uwtable
define void @_ZN3tbb6detail2r117parallel_pipelineERNS0_2d118task_group_contextEmRKNS2_11filter_nodeE(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::r1::pipeline", align 8 ; 13 uses
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %0, ptr %3, align 8, !tbaa !90
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i64 %1, ptr %i.b, align 8, !tbaa !91
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 0, ptr %i.c, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store i64 1, ptr %i.d, align 8, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !91
  invoke void @_ZN3tbb6detail2r18pipeline13fill_pipelineERKNS0_2d111filter_nodeE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr null, ptr %4, align 8, !tbaa !67
  %i.f = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128)
          to label %.noexc unwind label %bb.f     ; 8 uses

.noexc:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %i.g, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2r110stage_taskE, i64 16), ptr %i.f, align 64, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store ptr %3, ptr %i.i, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !66
  store ptr %i.k, ptr %i.j, align 32, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.m = load i64, ptr %4, align 8, !tbaa !69
  store i64 %i.m, ptr %i.l, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i8 1, ptr %i.n, align 16, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(18) %i.h, i8 0, i64 18, i1 false)
  %i.o = atomicrmw add ptr %i.e, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.o, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN3tbb6detail2d122small_object_allocator10new_objectINS0_2r110stage_taskEJRNS4_8pipelineERS2_EEEPT_DpOT0_.exit

bb.c:                                             ; preds = %.noexc
  %i.p = ptrtoint ptr %i.d to i64
  invoke void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.p)
          to label %_ZN3tbb6detail2d122small_object_allocator10new_objectINS0_2r110stage_taskEJRNS4_8pipelineERS2_EEEPT_DpOT0_.exit unwind label %bb.f, !inline_history !89

_ZN3tbb6detail2d122small_object_allocator10new_objectINS0_2r110stage_taskEJRNS4_8pipelineERS2_EEEPT_DpOT0_.exit: ; preds = %.noexc, %bb.c
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN3tbb6detail2d122small_object_allocator10new_objectINS0_2r110stage_taskEJRNS4_8pipelineERS2_EEEPT_DpOT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @_ZN3tbb6detail2r18pipelineD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.b, %_ZN3tbb6detail2d122small_object_allocator10new_objectINS0_2r110stage_taskEJRNS4_8pipelineERS2_EEEPT_DpOT0_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.q, %bb.e ]
  call void @_ZN3tbb6detail2r18pipelineD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r18pipeline13fill_pipelineERKNS0_2d111filter_nodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.c = phi ptr [ %i.h, %tailrecurse ], [ %i.b, %bb.a ]
  %.tr79 = phi ptr [ %i.f, %tailrecurse ], [ %1, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.tr79, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !96
  %.not6 = icmp eq ptr %i.e, null
  br i1 %.not6, label %._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %.lr.ph
  tail call void @_ZN3tbb6detail2r18pipeline13fill_pipelineERKNS0_2d111filter_nodeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !96   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %tailrecurse, %.lr.ph, %bb.a
  %.tr7.lcssa = phi ptr [ %1, %bb.a ], [ %.tr79, %.lr.ph ], [ %i.f, %tailrecurse ] ; 2 uses
  %i.i = load ptr, ptr %.tr7.lcssa, align 8, !tbaa !53
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(32) %.tr7.lcssa)
  tail call void @_ZN3tbb6detail2r18pipeline10add_filterERNS0_2d111base_filterE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.k)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind sspstrong uwtable
define void @_ZN3tbb6detail2r116set_end_of_inputERNS0_2d111base_filterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = trunc i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store atomic i8 1, ptr %i.f monotonic, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !71
  %i.k = tail call i32 @pthread_setspecific(i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(49) %i.h) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r110stage_taskD2Ev(ptr noundef nonnull align 64 dead_on_return(113) dereferenceable(113) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2r110stage_taskE, i64 16), ptr %0, align 64, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 32, !tbaa !47  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 64, !tbaa !51  ; 2 uses
  %.not2 = icmp eq ptr %i.d, null
  br i1 %.not2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %i.d)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.c, align 64, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54, !nonnull !46, !align !60 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = atomicrmw add ptr %i.j, i64 -1 seq_cst, align 8
  %.not.i.i = icmp eq i64 %i.k, 1
  br i1 %.not.i.i, label %bb.f, label %_ZN3tbb6detail2d112wait_context7releaseEj.exit

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.m = ptrtoint ptr %i.l to i64
  invoke void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.m)
          to label %_ZN3tbb6detail2d112wait_context7releaseEj.exit unwind label %bb.g

_ZN3tbb6detail2d112wait_context7releaseEj.exit:   ; preds = %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #11
  unreachable
}

; Function Attrs: mustprogress nounwind sspstrong uwtable
define linkonce_odr hidden void @_ZN3tbb6detail2r110stage_taskD0Ev(ptr noundef nonnull align 64 dereferenceable(113) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2r110stage_taskE, i64 16), ptr %0, align 64, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 32, !tbaa !47  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 64, !tbaa !51  ; 2 uses
  %.not2.i = icmp eq ptr %i.d, null
  br i1 %.not2.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull %i.d)
          to label %bb.d unwind label %bb.g, !inline_history !97

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.c, align 64, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54, !nonnull !46, !align !60 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = atomicrmw add ptr %i.j, i64 -1 seq_cst, align 8
  %.not.i.i.i = icmp eq i64 %i.k, 1
  br i1 %.not.i.i.i, label %bb.f, label %_ZN3tbb6detail2r110stage_taskD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.m = ptrtoint ptr %i.l to i64
  invoke void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.m)
          to label %_ZN3tbb6detail2r110stage_taskD2Ev.exit unwind label %bb.g, !inline_history !97

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #11, !inline_history !97
  unreachable

_ZN3tbb6detail2r110stage_taskD2Ev.exit:           ; preds = %bb.e, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden noundef ptr @_ZN3tbb6detail2r110stage_task7executeERNS0_2d114execution_dataE(ptr noundef nonnull align 64 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN3tbb6detail2r110stage_task14execute_filterERNS0_2d114execution_dataE(ptr noundef nonnull align 64 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(12) %1)
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load i64, ptr %i.b, align 8, !tbaa !69
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %0, align 64, !tbaa !53
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(113) dereferenceable(113) %0) #9, !inline_history !5
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 64 dereferenceable(113) %0, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress sspstrong uwtable
define linkonce_odr hidden noundef ptr @_ZN3tbb6detail2r110stage_task6cancelERNS0_2d114execution_dataE(ptr noundef nonnull align 64 dereferenceable(113) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !69
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %0, align 64, !tbaa !53
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 64 dead_on_return(113) dereferenceable(113) %0) #9, !inline_history !5
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 64 dereferenceable(113) %0, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

declare void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

declare void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @pthread_getspecific(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.x86.sse2.pause() #9

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #8

declare void @_ZN3tbb6detail2r113handle_perrorEiPKc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_key_delete(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_key_create(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) local_unnamed_addr #8

declare void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind sspstrong uwtable "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rtm,+sse,+sse2,+waitpkg,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noreturn nounwind }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!6, !7, !8, !9, !10}
!llvm.ident = !{!11}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = distinct !{!2, !27}
!3 = distinct !{!3, !27}
!4 = distinct !{!4, !27}
!5 = distinct !{null, null}
!6 = !{i32 8, !"cf-protection-return", i32 1}
!7 = !{i32 8, !"cf-protection-branch", i32 1}
!8 = !{i32 4, !"probe-stack", !"inline-asm"}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 2}
!11 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!12 = !{!"Simple C++ TBAA"}
!13 = !{!"omnipotent char", !12, i64 0}
!14 = !{!"int", !13, i64 0}
!15 = !{!"__libc_errno", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"any pointer", !13, i64 0}
!18 = !{!"p1 _ZTSN3tbb6detail2r19task_infoE", !17, i64 0}
!19 = !{!"long", !13, i64 0}
!20 = !{!"bool", !13, i64 0}
!21 = !{!"_ZTSSt13__atomic_baseIbE", !20, i64 0}
!22 = !{!"_ZTSSt6atomicIbE", !21, i64 0}
!23 = !{!"_ZTSN3tbb6detail2d110spin_mutexE", !22, i64 0}
!24 = !{!"_ZTSN3tbb6detail2r19basic_tlsIPNS1_12input_bufferEEE", !14, i64 0}
!25 = !{!"_ZTSN3tbb6detail2r112input_bufferE", !18, i64 0, !19, i64 8, !19, i64 16, !23, i64 24, !19, i64 32, !20, i64 40, !24, i64 44, !20, i64 48}
!26 = !{!25, !19, i64 8}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!25, !18, i64 0}
!29 = !{!"_ZTSN3tbb6detail2r19task_infoE", !17, i64 0, !19, i64 8, !20, i64 16, !20, i64 17}
!30 = !{!29, !20, i64 17}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!25, !19, i64 16}
!33 = !{!17, !17, i64 0}
!34 = !{!19, !19, i64 0}
!35 = !{!20, !20, i64 0}
!36 = !{i64 0, i64 8, !33, i64 8, i64 8, !34, i64 16, i64 1, !35, i64 17, i64 1, !35}
!37 = !{!"_ZTSN3tbb6detail2d111task_traitsE", !19, i64 0}
!38 = !{!"_ZTSN3tbb6detail2d14taskE", !37, i64 8, !13, i64 16}
!39 = !{!"p1 _ZTSN3tbb6detail2r18pipelineE", !17, i64 0}
!40 = !{!"p1 _ZTSN3tbb6detail2d111base_filterE", !17, i64 0}
!41 = !{!"p1 _ZTSN3tbb6detail2d117small_object_poolE", !17, i64 0}
!42 = !{!"_ZTSN3tbb6detail2d122small_object_allocatorE", !41, i64 0}
!43 = !{!"_ZTSN3tbb6detail2r110stage_taskE", !38, i64 0, !29, i64 64, !39, i64 88, !40, i64 96, !42, i64 104, !20, i64 112}
!44 = !{!43, !20, i64 112}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = !{!43, !40, i64 96}
!48 = !{!"p1 _ZTSN3tbb6detail2r112input_bufferE", !17, i64 0}
!49 = !{!"_ZTSN3tbb6detail2d111base_filterE", !40, i64 8, !48, i64 16, !14, i64 24, !39, i64 32}
!50 = !{!49, !14, i64 24}
!51 = !{!29, !17, i64 0}
!52 = !{!"vtable pointer", !12, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!43, !39, i64 88}
!55 = !{!49, !48, i64 16}
!56 = !{!25, !19, i64 32}
!57 = !{!29, !19, i64 8}
!58 = !{!29, !20, i64 16}
!59 = !{!49, !40, i64 8}
!60 = !{i64 8}
!61 = !{!"p1 _ZTSN3tbb6detail2d118task_group_contextE", !17, i64 0}
!62 = !{!"_ZTSSt13__atomic_baseImE", !19, i64 0}
!63 = !{!"_ZTSSt6atomicImE", !62, i64 0}
!64 = !{!"_ZTSN3tbb6detail2d112wait_contextE", !19, i64 0, !63, i64 8}
!65 = !{!"_ZTSN3tbb6detail2r18pipelineE", !61, i64 0, !40, i64 8, !40, i64 16, !63, i64 24, !22, i64 32, !64, i64 40}
!66 = !{!65, !40, i64 8}
!67 = !{!42, !41, i64 0}
!68 = !{!39, !39, i64 0}
!69 = !{!41, !41, i64 0}
!70 = !{!65, !61, i64 0}
!71 = !{!24, !14, i64 0}
!72 = !{!25, !20, i64 40}
!73 = !{!25, !20, i64 48}
!74 = !{!49, !39, i64 32}
!75 = distinct !{!75, !31}
!76 = distinct !{null}
!77 = distinct !{null, null}
!78 = distinct !{null, null, null}
!79 = distinct !{!79, !31}
!80 = distinct !{null, null}
!81 = distinct !{null, null, null}
!82 = distinct !{null}
!83 = !{!40, !40, i64 0}
!84 = !{!37, !19, i64 0}
!85 = distinct !{!85, !31}
!86 = distinct !{!86, !31}
!87 = distinct !{!87, !27}
!88 = !{!65, !40, i64 16}
!89 = distinct !{null}
!90 = !{!61, !61, i64 0}
!91 = !{!62, !19, i64 0}
!92 = !{!21, !20, i64 0}
!93 = !{!64, !19, i64 0}
!94 = !{!"p1 _ZTSN3tbb6detail2d111filter_nodeE", !17, i64 0}
!95 = !{!"_ZTSN3tbb6detail2d115filter_node_ptrE", !94, i64 0}
!96 = !{!95, !94, i64 0}
!97 = !{ptr @_ZN3tbb6detail2r110stage_taskD2Ev}
end_hunk_0
