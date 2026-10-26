Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/ipc_reliable_message_queue?download=true
inline.NumInlined: 1087
inline.NumDeleted: 453
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementationD2Ev:bb.a
  %i.o = sub i64 0, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !101
  %i.s = add i64 %i.r, %i.n
  %i.t = tail call i32 @munmap(ptr noundef nonnull %i.p, i64 noundef %i.s) #31 ; 0 uses
  br label %_ZN5boost12interprocess13mapped_regionD2Ev.exit

_ZN5boost12interprocess13mapped_regionD2Ev.exit:  ; preds = %_ZN5boost3log11v2_mt_posix3ipc11object_nameD2Ev.exit, %bb.c, %bb.d
  %i.u = load i32, ptr %0, align 8, !tbaa !65     ; 2 uses
  %.not.i.i1 = icmp eq i32 %i.u, -1
  br i1 %.not.i.i1, label %_ZN5boost12interprocess20shared_memory_object10priv_closeEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5boost12interprocess13mapped_regionD2Ev.exit
  %i.v = invoke i32 @close(i32 noundef %i.u)
          to label %.noexc.i unwind label %bb.f   ; 0 uses

.noexc.i:                                         ; preds = %bb.e
  store i32 -1, ptr %0, align 8, !tbaa !65
  br label %_ZN5boost12interprocess20shared_memory_object10priv_closeEv.exit.i

_ZN5boost12interprocess20shared_memory_object10priv_closeEv.exit.i: ; preds = %.noexc.i, %_ZN5boost12interprocess13mapped_regionD2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN5boost12interprocess20shared_memory_objectD2Ev.exit, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZN5boost12interprocess20shared_memory_object10priv_closeEv.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #35
  br label %_ZN5boost12interprocess20shared_memory_objectD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #32
  unreachable

_ZN5boost12interprocess20shared_memory_objectD2Ev.exit: ; preds = %_ZN5boost12interprocess20shared_memory_object10priv_closeEv.exit.i, %.sink.split.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue4sendEPKvj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::error_info", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = invoke noundef i32 @_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation4sendEPKvj(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef %1, i32 noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret i32 %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9exceptionE       ; 3 uses
  %i.d = extractvalue { ptr, i32 } %i.c, 1
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9exceptionE) #31
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.g = extractvalue { ptr, i32 } %i.c, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.i = load ptr, ptr %0, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  invoke void @_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN5boost16exception_detail11set_info_rvINS_10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS5_11object_nameEEEE3setINS_9exceptionEEERKT_SE_OS8_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %_ZN5boostlsINS_9exceptionENS_3log11v2_mt_posix3ipc15object_name_tagENS4_11object_nameEEENS_9enable_ifINS_16exception_detail23derives_boost_exceptionIT_EERKSA_E4typeESD_ONS_10error_infoIT0_T1_EE.exit unwind label %bb.g ; 0 uses

_ZN5boostlsINS_9exceptionENS_3log11v2_mt_posix3ipc15object_name_tagENS4_11object_nameEEENS_9enable_ifINS_16exception_detail23derives_boost_exceptionIT_EERKSA_E4typeESD_ONS_10error_infoIT0_T1_EE.exit: ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEEE, i64 16), ptr %3, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5boostlsINS_9exceptionENS_3log11v2_mt_posix3ipc15object_name_tagENS4_11object_nameEEENS_9enable_ifINS_16exception_detail23derives_boost_exceptionIT_EERKSA_E4typeESD_ONS_10error_infoIT0_T1_EE.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !32
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #35, !inline_history !44
  br label %_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit

_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit: ; preds = %_ZN5boostlsINS_9exceptionENS_3log11v2_mt_posix3ipc15object_name_tagENS4_11object_nameEEENS_9enable_ifINS_16exception_detail23derives_boost_exceptionIT_EERKSA_E4typeESD_ONS_10error_infoIT0_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  invoke void @__cxa_rethrow() #33
          to label %bb.l unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit16

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEEE, i64 16), ptr %3, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14: ; preds = %bb.g
  %i.x = load i64, ptr %i.v, align 8, !tbaa !32
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #35, !inline_history !44
  br label %_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit16

_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit16: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14, %bb.f
  %.pn = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14 ], [ %i.s, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.i

bb.h:                                             ; preds = %_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit16
  %.pn12 = phi { ptr, i32 } [ %i.z, %bb.h ], [ %.pn, %_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit16 ]
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.c
  %.merged = phi { ptr, i32 } [ %i.c, %bb.c ], [ %.pn12, %bb.i ]
  resume { ptr, i32 } %.merged

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #32
  unreachable

bb.l:                                             ; preds = %_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation4sendEPKvj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i32 %2, 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.c = load i32, ptr %i.b, align 4, !tbaa !102
  %i.d = add i32 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !103
  %i.g = lshr i32 %i.d, %i.f                      ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 68 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !97
  %i.l = icmp ugt i32 %i.g, %i.k
  br i1 %i.l, label %bb.b, label %bb.c, !prof !85

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost3log11v2_mt_posix11logic_error6throw_EPKcmS4_(ptr noundef nonnull @.str.1, i64 noundef 408, ptr noundef nonnull @.str.26) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.n = load atomic volatile i8, ptr %i.m monotonic, align 4
  %.not30 = icmp eq i8 %i.n, 0
  br i1 %.not30, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 4 uses
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation10lock_queueEv.exit.preheader, label %bb.e, !prof !87

_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation10lock_queueEv.exit.preheader: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  br label %_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation10lock_queueEv.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost3log11v2_mt_posix12system_error6throw_EPKcmS4_i(ptr noundef nonnull @.str.9, i64 noundef 142, ptr noundef nonnull @.str.24, i32 noundef %i.p) #33
  unreachable

_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation10lock_queueEv.exit: ; preds = %_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation10lock_queueEv.exit.preheader, %.noexc
  %i.t = load atomic volatile i8, ptr %i.m monotonic, align 4
  %.not31 = icmp eq i8 %i.t, 0
  br i1 %.not31, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation10lock_queueEv.exit
  %i.u = load i32, ptr %i.j, align 4, !tbaa !97
  %i.v = load i32, ptr %i.q, align 8, !tbaa !94
  %i.w = sub i32 %i.u, %i.v
  %.not = icmp ult i32 %i.w, %i.g
  br i1 %.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr %i.r, align 8, !tbaa !73   ; 2 uses
  switch i32 %i.x, label %bb.j [
    i32 1, label %.critedge
    i32 2, label %bb.h
  ], !prof !175

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5boost3log11v2_mt_posix22capacity_limit_reached6throw_EPKcmS4_(ptr noundef nonnull @.str.1, i64 noundef 428, ptr noundef nonnull @.str.27) #33
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.y = invoke i32 @pthread_cond_wait(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.j
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation10lock_queueEv.exit, label %.invoke, !prof !87, !llvm.loop !174

bb.k:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !86   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 68
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !97 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !98 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 220 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !95 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 256 ; 2 uses
  %i.ah = zext i32 %i.ad to i64
  %i.ai = zext i32 %i.af to i64
  %i.aj = mul nuw i64 %i.ai, %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  store i32 %2, ptr %i.ak, align 4, !tbaa !105
  %i.al = sub i32 %i.ab, %i.af
  %i.am = mul i32 %i.al, %i.ad
  %i.an = add i32 %i.am, -32                      ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.an) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ap = zext i32 %.sroa.speculated.i to i64     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 1 %1, i64 %i.ap, i1 false)
  %i.aq = add i32 %i.af, %i.g                     ; 3 uses
  %.not.i26 = icmp ult i32 %i.aq, %i.ab
  br i1 %.not.i26, label %bb.n, label %bb.l, !prof !87

bb.l:                                             ; preds = %bb.k
  %i.ar = sub nuw i32 %i.aq, %i.ab                ; 2 uses
  %.not36.not.i = icmp ugt i32 %2, %i.an
  br i1 %.not36.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = sub nuw i32 %2, %.sroa.speculated.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.ap
  %i.au = zext i32 %i.as to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 1 %i.at, i64 %i.au, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.0.i = phi i32 [ %i.ar, %bb.m ], [ %i.ar, %bb.l ], [ %i.aq, %bb.k ]
  store i32 %.0.i, ptr %i.ae, align 4, !tbaa !95
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 216 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !94 ; 2 uses
  %i.ax = add i32 %i.aw, %i.g
  store i32 %i.ax, ptr %i.av, align 8, !tbaa !94
  %i.ay = icmp eq i32 %i.aw, 0
  br i1 %i.ay, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.ba = tail call i32 @pthread_cond_signal(ptr noundef nonnull align 8 dereferenceable(48) %i.az) #31 ; 2 uses
  %.not.i.i27 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i27, label %.critedge, label %.invoke, !prof !87

.invoke:                                          ; preds = %.noexc, %bb.o
  %i.bb = phi i64 [ 189, %bb.o ], [ 203, %.noexc ]
  %i.bc = phi ptr [ @.str.29, %bb.o ], [ @.str.28, %.noexc ]
  %i.bd = phi i32 [ %i.ba, %bb.o ], [ %i.y, %.noexc ]
  invoke void @_ZN5boost3log11v2_mt_posix12system_error6throw_EPKcmS4_i(ptr noundef nonnull @.str.9, i64 noundef %i.bb, ptr noundef nonnull %i.bc, i32 noundef %i.bd) #33
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %.invoke, %bb.h
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  %i.be = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #31 ; 0 uses
  resume { ptr, i32 } %lpad.loopexit.split-lp39

.critedge:                                        ; preds = %bb.g, %_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation10lock_queueEv.exit, %bb.o, %bb.n
  %.2 = phi i32 [ 0, %bb.n ], [ 0, %bb.o ], [ 2, %_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation10lock_queueEv.exit ], [ %i.x, %bb.g ]
  %i.bf = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #31 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.c, %.critedge
  %.3 = phi i32 [ %.2, %.critedge ], [ 2, %bb.c ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue8try_sendEPKvj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::error_info", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = invoke noundef zeroext i1 @_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation8try_sendEPKvj(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef %1, i32 noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret i1 %i.b

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr @_ZTIN5boost9exceptionE       ; 3 uses
  %i.d = extractvalue { ptr, i32 } %i.c, 1
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5boost9exceptionE) #31
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.g = extractvalue { ptr, i32 } %i.c, 0
  %i.h = tail call ptr @__cxa_begin_catch(ptr %i.g) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.i = load ptr, ptr %0, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  invoke void @_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEEC2ERKS5_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN5boost16exception_detail11set_info_rvINS_10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS5_11object_nameEEEE3setINS_9exceptionEEERKT_SE_OS8_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %_ZN5boostlsINS_9exceptionENS_3log11v2_mt_posix3ipc15object_name_tagENS4_11object_nameEEENS_9enable_ifINS_16exception_detail23derives_boost_exceptionIT_EERKSA_E4typeESD_ONS_10error_infoIT0_T1_EE.exit unwind label %bb.g ; 0 uses

_ZN5boostlsINS_9exceptionENS_3log11v2_mt_posix3ipc15object_name_tagENS4_11object_nameEEENS_9enable_ifINS_16exception_detail23derives_boost_exceptionIT_EERKSA_E4typeESD_ONS_10error_infoIT0_T1_EE.exit: ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEEE, i64 16), ptr %3, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5boostlsINS_9exceptionENS_3log11v2_mt_posix3ipc15object_name_tagENS4_11object_nameEEENS_9enable_ifINS_16exception_detail23derives_boost_exceptionIT_EERKSA_E4typeESD_ONS_10error_infoIT0_T1_EE.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !32
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #35, !inline_history !44
  br label %_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit

_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit: ; preds = %_ZN5boostlsINS_9exceptionENS_3log11v2_mt_posix3ipc15object_name_tagENS4_11object_nameEEENS_9enable_ifINS_16exception_detail23derives_boost_exceptionIT_EERKSA_E4typeESD_ONS_10error_infoIT0_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  invoke void @__cxa_rethrow() #33
          to label %bb.l unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit16

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEEE, i64 16), ptr %3, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14: ; preds = %bb.g
  %i.x = load i64, ptr %i.v, align 8, !tbaa !32
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #35, !inline_history !44
  br label %_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit16

_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit16: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14, %bb.f
  %.pn = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14 ], [ %i.s, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.i

bb.h:                                             ; preds = %_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit16
  %.pn12 = phi { ptr, i32 } [ %i.z, %bb.h ], [ %.pn, %_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit16 ]
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.c
  %.merged = phi { ptr, i32 } [ %i.c, %bb.c ], [ %.pn12, %bb.i ]
  resume { ptr, i32 } %.merged

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #32
  unreachable

bb.l:                                             ; preds = %_ZN5boost10error_infoINS_3log11v2_mt_posix3ipc15object_name_tagENS3_11object_nameEED2Ev.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation8try_sendEPKvj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i32 %2, 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.c = load i32, ptr %i.b, align 4, !tbaa !102
  %i.d = add i32 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !103
  %i.g = lshr i32 %i.d, %i.f                      ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 68 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !97
  %i.l = icmp ugt i32 %i.g, %i.k
  br i1 %i.l, label %bb.b, label %bb.c, !prof !85

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost3log11v2_mt_posix11logic_error6throw_EPKcmS4_(ptr noundef nonnull @.str.1, i64 noundef 445, ptr noundef nonnull @.str.26) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.n = load atomic volatile i8, ptr %i.m monotonic, align 4
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 3 uses
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation10lock_queueEv.exit, label %bb.e, !prof !87

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost3log11v2_mt_posix12system_error6throw_EPKcmS4_i(ptr noundef nonnull @.str.9, i64 noundef 142, ptr noundef nonnull @.str.24, i32 noundef %i.p) #33
  unreachable

_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation10lock_queueEv.exit: ; preds = %bb.d
  %i.q = load atomic volatile i8, ptr %i.m monotonic, align 4
  %.not16 = icmp eq i8 %i.q, 0
  br i1 %.not16, label %bb.f, label %_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation15enqueue_messageEPKvjj.exit

bb.f:                                             ; preds = %_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation10lock_queueEv.exit
  %i.r = load i32, ptr %i.j, align 4, !tbaa !97
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  %i.t = load i32, ptr %i.s, align 8, !tbaa !94
  %i.u = sub i32 %i.r, %i.t
  %i.v = icmp ult i32 %i.u, %i.g
  br i1 %i.v, label %_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation15enqueue_messageEPKvjj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !86   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !97   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !98  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 220 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !95 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 256 ; 2 uses
  %i.ae = zext i32 %i.aa to i64
  %i.af = zext i32 %i.ac to i64
  %i.ag = mul nuw i64 %i.af, %i.ae
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag ; 2 uses
  store i32 %2, ptr %i.ah, align 4, !tbaa !105
  %i.ai = sub i32 %i.y, %i.ac
  %i.aj = mul i32 %i.ai, %i.aa
  %i.ak = add i32 %i.aj, -32                      ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %2, i32 %i.ak) ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.am = zext i32 %.sroa.speculated.i to i64     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.al, ptr align 1 %1, i64 %i.am, i1 false)
  %i.an = add i32 %i.ac, %i.g                     ; 3 uses
  %.not.i = icmp ult i32 %i.an, %i.y
  br i1 %.not.i, label %bb.j, label %bb.h, !prof !87

bb.h:                                             ; preds = %bb.g
  %i.ao = sub nuw i32 %i.an, %i.y                 ; 2 uses
  %.not36.not.i = icmp ugt i32 %2, %i.ak
  br i1 %.not36.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = sub nuw i32 %2, %.sroa.speculated.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  %i.ar = zext i32 %i.ap to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 1 %i.aq, i64 %i.ar, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.0.i = phi i32 [ %i.ao, %bb.i ], [ %i.ao, %bb.h ], [ %i.an, %bb.g ]
  store i32 %.0.i, ptr %i.ab, align 4, !tbaa !95
end_hunk_0
begin_hunk_1_@_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation13create_regionEjj:bb.a
  store i32 %2, ptr %i.af, align 8, !tbaa !98
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 80 ; 2 uses
  call void @_ZN5boost3log11v2_mt_posix3ipc3aux18interprocess_mutexC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 120 ; 2 uses
  invoke void @_ZN5boost3log11v2_mt_posix3ipc3aux31interprocess_condition_variableC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.ah)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5boost12interprocess13mapped_regionD2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 168
  invoke void @_ZN5boost3log11v2_mt_posix3ipc3aux31interprocess_condition_variableC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.ai)
          to label %_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation6headerC2Ejj.exit unwind label %bb.g

bb.f:                                             ; preds = %_ZN5boost12interprocess13mapped_regionD2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = call i32 @pthread_cond_destroy(ptr noundef nonnull align 8 dereferenceable(48) %i.ah) #31 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.ak, %bb.g ], [ %i.aj, %bb.f ]
  %i.am = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #31 ; 0 uses
  resume { ptr, i32 } %.pn.i

_ZN5boost3log11v2_mt_posix3ipc22reliable_message_queue14implementation6headerC2Ejj.exit: ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 216
  store i32 0, ptr %i.an, align 8, !tbaa !94
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 220
  store i32 0, ptr %i.ao, align 4, !tbaa !95
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 224
  store i32 0, ptr %i.ap, align 8, !tbaa !96
  call void asm sideeffect "lock; incl $0\0A\09", "=*m,*m,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) align 4 dereferenceable(4) %i.ad, ptr nonnull elementtype(i32) align 4 dereferenceable(4) %i.ad) #31, !srcloc !194
  %i.aq = add i32 %2, -1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !102
  %i.as = and i32 %2, 65535
  %i.at = icmp eq i32 %i.as, 0                    ; 2 uses
  %i.au = lshr exact i32 %2, 16
  %spec.select.i = select i1 %i.at, i32 %i.au, i32 %2 ; 3 uses
  %spec.select20.i = select i1 %i.at, i32 16, i32 0 ; 2 uses
  %i.av = and i32 %spec.select.i, 255
  %i.aw = icmp eq i32 %i.av, 0                    ; 2 uses
  %i.ax = lshr exact i32 %spec.select.i, 8
  %i.ay = or disjoint i32 %spec.select20.i, 8
  %.117.i = select i1 %i.aw, i32 %i.ax, i32 %spec.select.i ; 3 uses
  %.1.i = select i1 %i.aw, i32 %i.ay, i32 %spec.select20.i ; 2 uses
  %i.az = and i32 %.117.i, 15
  %i.ba = icmp eq i32 %i.az, 0                    ; 2 uses
  %i.bb = lshr exact i32 %.117.i, 4
  %i.bc = or disjoint i32 %.1.i, 4
  %.218.i = select i1 %i.ba, i32 %i.bb, i32 %.117.i ; 3 uses
  %.2.i = select i1 %i.ba, i32 %i.bc, i32 %.1.i   ; 2 uses
  %i.bd = and i32 %.218.i, 3
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  %i.bf = lshr exact i32 %.218.i, 2
  %i.bg = or disjoint i32 %.2.i, 2
  %.319.i = select i1 %i.be, i32 %i.bf, i32 %.218.i
  %.3.i = select i1 %i.be, i32 %i.bg, i32 %.2.i
  %i.bh = and i32 %.319.i, 1
  %i.bi = xor i32 %i.bh, 1
  %.4.i = add nuw nsw i32 %i.bi, %.3.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.4.i, ptr %i.bj, align 8, !tbaa !103
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost12interprocess13mapped_regionD2Ev(ptr noundef nonnull align 8 dead_on_return(29) dereferenceable(29) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !86     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN5boost12interprocess13mapped_region10priv_closeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i8, ptr %i.b, align 4, !tbaa !99, !range !80, !noundef !81
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @shmdt(ptr noundef nonnull %i.a) #31 ; 0 uses
  br label %_ZN5boost12interprocess13mapped_region10priv_closeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !100  ; 2 uses
  %i.h = sub i64 0, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !101
  %i.l = add i64 %i.k, %i.g
  %i.m = tail call i32 @munmap(ptr noundef nonnull %i.i, i64 noundef %i.l) #31 ; 0 uses
  br label %_ZN5boost12interprocess13mapped_region10priv_closeEv.exit

_ZN5boost12interprocess13mapped_region10priv_closeEv.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost12interprocess20shared_memory_object19priv_open_or_createIcEEbNS0_9ipcdetail13create_enum_tEPKT_NS0_6mode_tERKNS0_11permissionsE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"struct.boost::interprocess::error_info", align 4 ; 5 uses
  %7 = alloca %"struct.boost::interprocess::error_info", align 4 ; 5 uses
  %8 = alloca %"struct.boost::interprocess::error_info", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !33
  store i8 0, ptr %i.a, align 8, !tbaa !32
  %i.c = load i8, ptr %2, align 1, !tbaa !32
  %.not.i = icmp eq i8 %i.c, 47
  br i1 %.not.i, label %.noexc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, i64 noundef 1, i8 noundef signext 47)
          to label %..noexc_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

..noexc_crit_edge:                                ; preds = %bb.b
  %.pre = load i64, ptr %i.b, align 8, !tbaa !33
  %i.e = sub i64 4611686018427387903, %.pre
  br label %.noexc

.noexc:                                           ; preds = %..noexc_crit_edge, %bb.a
  %i.f = phi i64 [ %i.e, %..noexc_crit_edge ], [ 4611686018427387903, %bb.a ]
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #31 ; 2 uses
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

bb.c:                                             ; preds = %.noexc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #33
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc40:                                         ; preds = %bb.c
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i: ; preds = %.noexc
  %i.i = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %2, i64 noundef %i.g)
          to label %_ZN5boost12interprocess9ipcdetail17add_leading_slashIcEEvPKT_RNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN5boost12interprocess9ipcdetail17add_leading_slashIcEEvPKT_RNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i
  switch i32 %3, label %bb.d [
    i32 0, label %bb.i
    i32 2, label %bb.i
  ]

bb.d:                                             ; preds = %_ZN5boost12interprocess9ipcdetail17add_leading_slashIcEEvPKT_RNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store i32 0, ptr %6, align 4, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 17, ptr %i.j, align 4, !tbaa !84
  %i.k = call ptr @__cxa_allocate_exception(i64 48) #31 ; 3 uses
  invoke void @_ZN5boost12interprocess22interprocess_exceptionC2ERKNS0_10error_infoEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef null)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN5boost12interprocess22interprocess_exceptionE, ptr nonnull @_ZN5boost12interprocess22interprocess_exceptionD2Ev) #33
          to label %bb.ak unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.k) #31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.m, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %.loopexit.split-lp

bb.i:                                             ; preds = %_ZN5boost12interprocess9ipcdetail17add_leading_slashIcEEvPKT_RNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEE.exit, %_ZN5boost12interprocess9ipcdetail17add_leading_slashIcEEvPKT_RNSt7__cxx1112basic_stringIS3_St11char_traitsIS3_ESaIS3_EEE.exit
  %i.n = load i32, ptr %4, align 4, !tbaa !77     ; 5 uses
  switch i32 %1, label %bb.x [
    i32 1, label %bb.j
    i32 0, label %bb.m
    i32 2, label %.preheader
  ]

.preheader:                                       ; preds = %bb.i
  %i.o = or disjoint i32 %3, 192
  br label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.p = load ptr, ptr %5, align 8, !tbaa !31
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.q = invoke i32 @shm_open(ptr noundef %i.p, i32 noundef %3, i32 noundef %i.n)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc42:                                         ; preds = %bb.k
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.l, label %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit

bb.l:                                             ; preds = %.noexc42
  %i.s = tail call ptr @__errno_location() #36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !78
  %i.u = icmp eq i32 %i.t, 4
  br i1 %i.u, label %bb.k, label %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit, !llvm.loop !195

_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit: ; preds = %bb.l, %.noexc42
  store i32 %i.q, ptr %0, align 8, !tbaa !65
  br label %bb.ac

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %bb.k, %bb.n, %bb.q, %.thread55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i, %bb.c, %bb.b
  %lpad.loopexit.split-lp124 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.i
  %i.v = or disjoint i32 %3, 192
  %i.w = load ptr, ptr %5, align 8, !tbaa !31
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.x = invoke i32 @shm_open(ptr noundef %i.w, i32 noundef %i.v, i32 noundef %i.n)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc43:                                         ; preds = %bb.n
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.o, label %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit44

bb.o:                                             ; preds = %.noexc43
  %i.z = tail call ptr @__errno_location() #36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !78
  %i.ab = icmp eq i32 %i.aa, 4
  br i1 %i.ab, label %bb.n, label %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit44.thread, !llvm.loop !195

_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit44.thread: ; preds = %bb.o
  store i32 -1, ptr %0, align 8, !tbaa !65
  br label %.thread

_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit44: ; preds = %.noexc43
  store i32 %i.x, ptr %0, align 8, !tbaa !65
  %i.ac = icmp sgt i32 %i.x, -1
  br i1 %i.ac, label %thread-pre-split.sink.split, label %.thread

bb.p:                                             ; preds = %.preheader, %bb.w
  %i.ad = load ptr, ptr %5, align 8, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %i.ae = invoke i32 @shm_open(ptr noundef %i.ad, i32 noundef %i.o, i32 noundef %i.n)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc45:                                         ; preds = %bb.q
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.r, label %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit46

bb.r:                                             ; preds = %.noexc45
  %i.ag = tail call ptr @__errno_location() #36   ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !78
  %i.ai = icmp eq i32 %i.ah, 4
  br i1 %i.ai, label %bb.q, label %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit46.thread, !llvm.loop !195

_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit46.thread: ; preds = %bb.r
  store i32 -1, ptr %0, align 8, !tbaa !65
  br label %bb.s

_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit46: ; preds = %.noexc45
  store i32 %i.ae, ptr %0, align 8, !tbaa !65
  %i.aj = icmp sgt i32 %i.ae, -1
  br i1 %i.aj, label %thread-pre-split.sink.split, label %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit46._crit_edge

_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit46._crit_edge: ; preds = %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit46
  %.pre84 = tail call ptr @__errno_location() #36
  br label %bb.s

bb.s:                                             ; preds = %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit46._crit_edge, %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit46.thread
  %.pre-phi = phi ptr [ %.pre84, %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit46._crit_edge ], [ %i.ag, %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit46.thread ] ; 3 uses
  %i.ak = load i32, ptr %.pre-phi, align 4, !tbaa !78
  %i.al = icmp eq i32 %i.ak, 17
  br i1 %i.al, label %bb.t, label %thread-pre-split

bb.t:                                             ; preds = %bb.s
  %i.am = load ptr, ptr %5, align 8, !tbaa !31
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %i.an = invoke i32 @shm_open(ptr noundef %i.am, i32 noundef %3, i32 noundef %i.n)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc47:                                         ; preds = %bb.u
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %bb.v, label %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit48

bb.v:                                             ; preds = %.noexc47
  %i.ap = load i32, ptr %.pre-phi, align 4, !tbaa !78
  %i.aq = icmp eq i32 %i.ap, 4
  br i1 %i.aq, label %bb.u, label %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit48.thread, !llvm.loop !195

_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit48.thread: ; preds = %bb.v
  store i32 -1, ptr %0, align 8, !tbaa !65
  br label %bb.w

_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit48: ; preds = %.noexc47
  store i32 %i.an, ptr %0, align 8, !tbaa !65
  %i.ar = icmp slt i32 %i.an, 0
  br i1 %i.ar, label %bb.w, label %.thread55

bb.w:                                             ; preds = %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit48.thread, %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit48
  %i.as = load i32, ptr %.pre-phi, align 4, !tbaa !78
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %bb.p, label %thread-pre-split, !llvm.loop !196

bb.x:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store i32 0, ptr %7, align 4, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 2, ptr %i.au, align 4, !tbaa !84
  %i.av = call ptr @__cxa_allocate_exception(i64 48) #31 ; 3 uses
  invoke void @_ZN5boost12interprocess22interprocess_exceptionC2ERKNS0_10error_infoEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef null)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  invoke void @__cxa_throw(ptr nonnull %i.av, ptr nonnull @_ZTIN5boost12interprocess22interprocess_exceptionE, ptr nonnull @_ZN5boost12interprocess22interprocess_exceptionD2Ev) #33
          to label %bb.ak unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.av) #31
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn35 = phi { ptr, i32 } [ %i.aw, %bb.z ], [ %i.ax, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.loopexit.split-lp

thread-pre-split.sink.split:                      ; preds = %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit46, %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit44
  %.lcssa94.sink = phi i32 [ %i.x, %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit44 ], [ %i.ae, %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit46 ]
  %i.ay = call i32 @fchmod(i32 noundef %.lcssa94.sink, i32 noundef %i.n) #31 ; 0 uses
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.w, %bb.s, %thread-pre-split.sink.split
  %.pr = load i32, ptr %0, align 8, !tbaa !65
  br label %bb.ac

bb.ac:                                            ; preds = %thread-pre-split, %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit
  %i.az = phi i32 [ %.pr, %thread-pre-split ], [ %i.q, %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit ]
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %.thread, label %.thread55

.thread:                                          ; preds = %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit44, %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit44.thread, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.bb = tail call ptr @__errno_location() #36
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !78
  invoke void @_ZN5boost12interprocess10error_infoC2Ei(ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef %i.bc)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %.thread
  %i.bd = load i32, ptr %0, align 8, !tbaa !65    ; 2 uses
  %.not.i49 = icmp eq i32 %i.bd, -1
  br i1 %.not.i49, label %_ZN5boost12interprocess20shared_memory_object10priv_closeEv.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.be = invoke i32 @close(i32 noundef %i.bd)
          to label %.noexc50 unwind label %bb.ag  ; 0 uses

.noexc50:                                         ; preds = %bb.ae
  store i32 -1, ptr %0, align 8, !tbaa !65
  br label %_ZN5boost12interprocess20shared_memory_object10priv_closeEv.exit

_ZN5boost12interprocess20shared_memory_object10priv_closeEv.exit: ; preds = %.noexc50, %bb.ad
  %i.bf = call ptr @__cxa_allocate_exception(i64 48) #31 ; 3 uses
  invoke void @_ZN5boost12interprocess22interprocess_exceptionC2ERKNS0_10error_infoEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef null)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %_ZN5boost12interprocess20shared_memory_object10priv_closeEv.exit
  invoke void @__cxa_throw(ptr nonnull %i.bf, ptr nonnull @_ZTIN5boost12interprocess22interprocess_exceptionE, ptr nonnull @_ZN5boost12interprocess22interprocess_exceptionD2Ev) #33
          to label %bb.ak unwind label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %.thread
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %_ZN5boost12interprocess20shared_memory_object10priv_closeEv.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bf) #31
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn33 = phi { ptr, i32 } [ %i.bg, %bb.ag ], [ %i.bh, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %.loopexit.split-lp

.thread55:                                        ; preds = %_ZN5boost12interprocess20shared_memory_object20eintr_aware_shm_openEPKcij.exit48, %bb.ac
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37
  %i.bk = add i64 %i.bj, 1
  %i.bl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bk) #34
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc51:                                         ; preds = %.thread55
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !32 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.aj, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.noexc51
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #35
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split.i.i, %.noexc51
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !32
  %i.bo = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bl, ptr noundef nonnull dereferenceable(1) %2) #31 ; 0 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.bp, align 8, !tbaa !79
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %3, ptr %i.bq, align 4, !tbaa !197
  %i.br = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.a
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aj
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !32
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret i1 true

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h, %bb.ai, %bb.ab
  %.pn35.pn.pn.pn = phi { ptr, i32 } [ %.pn33, %bb.ai ], [ %.pn, %bb.h ], [ %.pn35, %bb.ab ], [ %lpad.loopexit.split-lp124, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bv = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.a
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %.loopexit.split-lp
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !32
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %.pn35.pn.pn.pn

bb.ak:                                            ; preds = %bb.af, %bb.y, %bb.e
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost12interprocess22interprocess_exceptionC2ERKNS0_10error_infoEPKc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost12interprocess22interprocess_exceptionE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %1, align 4                ; 2 uses
  store i64 %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !33
  store i8 0, ptr %i.d, align 8, !tbaa !32
  %i.f = trunc i64 %i.b to i32                    ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @strerror(i32 noundef %i.f) #31
  %i.h = load i64, ptr %i.e, align 8, !tbaa !33
  br label %.invoke.sink.split

bb.c:                                             ; preds = %.invoke
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = tail call ptr @__cxa_begin_catch(ptr %i.j) #31 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZN5boost12interprocess19fill_system_messageEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.e

_ZN5boost12interprocess19fill_system_messageEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.invoke, %bb.c
  ret void

bb.d:                                             ; preds = %bb.a
  %.not6 = icmp eq ptr %2, null
  br i1 %.not6, label %.invoke, label %.invoke.sink.split

.invoke.sink.split:                               ; preds = %bb.d, %bb.b
  %.sink = phi ptr [ %i.g, %bb.b ], [ %2, %bb.d ] ; 2 uses
  %.ph = phi i64 [ %i.h, %bb.b ], [ 0, %bb.d ]
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink) #31
  br label %.invoke

.invoke:                                          ; preds = %.invoke.sink.split, %bb.d
  %i.m = phi i64 [ 0, %bb.d ], [ %.ph, %.invoke.sink.split ]
  %i.n = phi ptr [ @.str.8, %bb.d ], [ %.sink, %.invoke.sink.split ]
  %i.o = phi i64 [ 44, %bb.d ], [ %i.l, %.invoke.sink.split ]
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.m, ptr noundef nonnull %i.n, i64 noundef %i.o)
          to label %_ZN5boost12interprocess19fill_system_messageEiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.t = load i64, ptr %i.d, align 8, !tbaa !32
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #31
  resume { ptr, i32 } %i.q
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost12interprocess22interprocess_exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost12interprocess22interprocess_exceptionE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !32
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #31
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #18
end_hunk_1
