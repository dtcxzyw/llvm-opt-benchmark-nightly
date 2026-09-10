Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl_compaction_flush?download=true
inline.NumInlined: 9898
inline.NumDeleted: 4271
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN7rocksdb6DBImpl24BackgroundCallCompactionEPNS0_19PrepickedCompactionENS_3Env8PriorityE:bb.a
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !1263
  %.not.i.i.i.i.i = icmp eq ptr %i.ig, %i.ie
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb10autovectorIPNS_9LogBuffer11BufferedLogELm8EE5clearEv.exit.i.i, label %_ZSt8_DestroyIPPN7rocksdb9LogBuffer11BufferedLogES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPPN7rocksdb9LogBuffer11BufferedLogES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i: ; preds = %bb.bf
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !1263
  br label %_ZN7rocksdb10autovectorIPNS_9LogBuffer11BufferedLogELm8EE5clearEv.exit.i.i

_ZN7rocksdb10autovectorIPNS_9LogBuffer11BufferedLogELm8EE5clearEv.exit.i.i: ; preds = %_ZSt8_DestroyIPPN7rocksdb9LogBuffer11BufferedLogES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i, %bb.bf
  %.not.i.i.i1.i.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i1.i.i, label %_ZN7rocksdb9LogBufferD2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZN7rocksdb10autovectorIPNS_9LogBuffer11BufferedLogELm8EE5clearEv.exit.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %5, i64 2400
  %i.ii = load ptr, ptr %i.ih, align 16, !tbaa !1264
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = ptrtoint ptr %i.ie to i64
  %i.il = sub i64 %i.ij, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %i.ie, i64 noundef %i.il) #33
  br label %_ZN7rocksdb9LogBufferD2Ev.exit

_ZN7rocksdb9LogBufferD2Ev.exit:                   ; preds = %_ZN7rocksdb10autovectorIPNS_9LogBuffer11BufferedLogELm8EE5clearEv.exit.i.i, %bb.bg
  %i.im = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @_ZN7rocksdb5ArenaD1Ev(ptr noundef nonnull align 16 dead_on_return(2288) dereferenceable(2288) %i.im) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @_ZN7rocksdb10JobContextD2Ev(ptr noundef nonnull align 8 dead_on_return(717) dereferenceable(717) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void

bb.bh:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.aa
  %.pn25 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %i.bp, %bb.aa ], [ %i.ba, %bb.w ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !86 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.io, null
  br i1 %.not.i.i49, label %_ZN7rocksdb6StatusD2Ev.exit51, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i50

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i50: ; preds = %bb.bh
  call void @_ZdaPv(ptr noundef nonnull %i.io) #33
  br label %_ZN7rocksdb6StatusD2Ev.exit51

_ZN7rocksdb6StatusD2Ev.exit51:                    ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i50, %bb.bh, %bb.n
  %.pn25.pn = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %.pn25, %bb.bh ], [ %.pn25, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i50 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.ip = load ptr, ptr %6, align 8, !tbaa !1327  ; 2 uses
  %.not.i52 = icmp eq ptr %i.ip, null
  br i1 %.not.i52, label %_ZNSt10unique_ptrISt14_List_iteratorImESt14default_deleteIS1_EED2Ev.exit54, label %_ZNKSt14default_deleteISt14_List_iteratorImEEclEPS1_.exit.i53

_ZNKSt14default_deleteISt14_List_iteratorImEEclEPS1_.exit.i53: ; preds = %_ZN7rocksdb6StatusD2Ev.exit51
  call void @_ZdlPvm(ptr noundef nonnull %i.ip, i64 noundef 8) #33
  br label %_ZNSt10unique_ptrISt14_List_iteratorImESt14default_deleteIS1_EED2Ev.exit54

_ZNSt10unique_ptrISt14_List_iteratorImESt14default_deleteIS1_EED2Ev.exit54: ; preds = %_ZNKSt14default_deleteISt14_List_iteratorImEEclEPS1_.exit.i53, %_ZN7rocksdb6StatusD2Ev.exit51, %bb.m, %bb.l
  %.pn25.pn.pn = phi { ptr, i32 } [ %i.y, %bb.l ], [ %i.z, %bb.m ], [ %.pn25.pn, %_ZN7rocksdb6StatusD2Ev.exit51 ], [ %.pn25.pn, %_ZNKSt14default_deleteISt14_List_iteratorImEEclEPS1_.exit.i53 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.f)
          to label %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit55 unwind label %bb.bi

bb.bi:                                            ; preds = %_ZNSt10unique_ptrISt14_List_iteratorImESt14default_deleteIS1_EED2Ev.exit54
  %i.iq = landingpad { ptr, i32 }
          catch ptr null
  %i.ir = extractvalue { ptr, i32 } %i.iq, 0
  call void @__clang_call_terminate(ptr %i.ir) #37
  unreachable

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit55:    ; preds = %_ZNSt10unique_ptrISt14_List_iteratorImESt14default_deleteIS1_EED2Ev.exit54, %bb.e
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %.pn25.pn.pn, %_ZNSt10unique_ptrISt14_List_iteratorImESt14default_deleteIS1_EED2Ev.exit54 ]
  call void @_ZN7rocksdb9LogBufferD2Ev(ptr noundef nonnull align 16 dead_on_return(2408) dereferenceable(2408) %5) #34
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit55, %bb.d
  %.pn25.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn.pn, %_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit55 ], [ %i.n, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @_ZN7rocksdb10JobContextD2Ev(ptr noundef nonnull align 8 dead_on_return(717) dereferenceable(717) %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  resume { ptr, i32 } %.pn25.pn.pn.pn.pn
}

; Function Attrs: uwtable
define void @_ZN7rocksdb6DBImpl11BGWorkPurgeEPv(ptr noundef %0) local_unnamed_addr #13 align 2 {
bb.a:
  %.not.i = icmp eq ptr @_ZTHN7rocksdb15iostats_contextE, null
  br i1 %.not.i, label %_ZTWN7rocksdb15iostats_contextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN7rocksdb15iostats_contextE()
  br label %_ZTWN7rocksdb15iostats_contextE.exit

_ZTWN7rocksdb15iostats_contextE.exit:             ; preds = %bb.a, %bb.b
  %i.a = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb15iostats_contextE)
  store i64 2, ptr %i.a, align 8, !tbaa !1419
  tail call void @_ZN7rocksdb6DBImpl19BackgroundCallPurgeEv(ptr noundef nonnull align 64 dereferenceable(7336) %0)
  ret void
}

declare void @_ZN7rocksdb6DBImpl19BackgroundCallPurgeEv(ptr noundef nonnull align 64 dereferenceable(7336)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7rocksdb10CompactionD1Ev(ptr noundef nonnull align 16 dead_on_return(12020) dereferenceable(12020)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb6DBImpl15BackgroundFlushEPbPNS_10JobContextEPNS_9LogBufferEPNS_11FlushReasonES1_NS_3Env8PriorityE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(address) %0, ptr noundef nonnull align 64 dereferenceable(7336) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5, ptr nofree noundef writeonly captures(none) %6, i32 noundef %7) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::unique_ptr.2", align 8 ; 4 uses
  %9 = alloca %"class.std::unique_ptr.2", align 8 ; 4 uses
  %10 = alloca %"class.std::unique_ptr.2", align 8 ; 4 uses
  %11 = alloca %"class.rocksdb::Status", align 8  ; 27 uses
  %12 = alloca %"class.rocksdb::autovector.799", align 8 ; 20 uses
  %13 = alloca %"class.rocksdb::autovector.195", align 8 ; 17 uses
  %14 = alloca %"struct.rocksdb::DBImpl::FlushRequest", align 8 ; 17 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %16 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2048 ; 3 uses
  tail call void @_ZNK7rocksdb4port5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 16 uses
  store ptr null, ptr %i.c, align 8, !tbaa !693
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 6, i1 false)
  store i32 0, ptr %5, align 4, !tbaa !2254
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2288 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !713
  invoke void @_ZNK7rocksdb4port5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(60) %i.e)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2160 ; 4 uses
  %i.g = load i8, ptr %i.f, align 16, !tbaa !694  ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit.thread269, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2162
  %i.j = load i8, ptr %i.i, align 2, !tbaa !714   ; 2 uses
  %i.k = icmp ugt i8 %i.j, 1
  br i1 %i.k, label %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2296
  %i.m = load i8, ptr %i.l, align 8, !tbaa !715, !range !83, !noundef !84
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit, label %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit.thread

_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2298
  %i.p = load i8, ptr %i.o, align 2, !tbaa !716, !range !83, !noundef !84
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit.thread, label %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit.thread269

_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit.thread269: ; preds = %.noexc, %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2896
  %i.s = load atomic i8, ptr %i.r acquire, align 16, !range !83, !noundef !84
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit.thread269
  store i8 8, ptr %11, align 8, !tbaa !694
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.u, i8 0, i64 5, i1 false)
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !86   ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !86
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %bb.j, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #33
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit.thread: ; preds = %bb.b, %bb.c, %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2297
  %i.y = load i8, ptr %i.x, align 1, !tbaa !708, !range !83, !noundef !84
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 2161
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !695, !noalias !2255
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2163
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !711, !range !83, !noalias !2255, !noundef !84
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 2164
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !82, !range !83, !noalias !2255, !noundef !84
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 2165
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !85, !noalias !2255
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34, !noalias !2255
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 2168
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !86, !noalias !2255 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %10, ptr noundef nonnull %i.aj)
          to label %.noexc94 unwind label %bb.i

.noexc94:                                         ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %10, align 8, !tbaa !86, !noalias !2255
  %.pre.i.i.a = load ptr, ptr %i.c, align 8, !tbaa !86
  br label %bb.h

bb.h:                                             ; preds = %.noexc94, %bb.f
  %storemerge.i.a = phi ptr [ %.pre.i.i.a, %.noexc94 ], [ null, %bb.f ] ; 2 uses
  %storemerge.i = phi ptr [ %.pre.i.i, %.noexc94 ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34, !noalias !2255
  store i8 %i.g, ptr %11, align 8, !tbaa !694
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 %i.ab, ptr %i.ak, align 1, !tbaa !695
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 2
  store i8 %i.j, ptr %i.al, align 2, !tbaa !714
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 3
  store i8 %i.ad, ptr %i.am, align 1, !tbaa !711
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i8 %i.af, ptr %i.an, align 4, !tbaa !82
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 5
  store i8 %i.ah, ptr %i.ao, align 1, !tbaa !85
  store ptr %storemerge.i, ptr %i.c, align 8, !tbaa !86
  %.not.i.i.i.i.i95 = icmp eq ptr %storemerge.i.a, null
  br i1 %.not.i.i.i.i.i95, label %bb.j, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i96

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i96: ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %storemerge.i.a) #33
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.j:                                             ; preds = %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit.thread269, %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit.thread, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i, %bb.d, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i96, %bb.h
  %i.aq = load i8, ptr %11, align 8, !tbaa !694   ; 2 uses
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.as, align 8, !tbaa !693
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i101 = icmp eq ptr %0, %11
  %.pr273.pre335 = load ptr, ptr %i.c, align 8, !tbaa !86 ; 2 uses
  br i1 %.not.i.i101, label %_ZN7rocksdb6StatusC2EOS0_.exit, label %_ZN7rocksdb6StatusC2EOS0_.exit.thread

_ZN7rocksdb6StatusC2EOS0_.exit.thread:            ; preds = %bb.k
  store i8 %i.aq, ptr %0, align 8, !tbaa !694
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.av = load <4 x i8>, ptr %i.at, align 1, !tbaa !65
  store <4 x i8> %i.av, ptr %i.au, align 1, !tbaa !65
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 5
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !65
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !85
  store ptr %.pr273.pre335, ptr %i.as, align 8, !tbaa !86
  br label %_ZN7rocksdb6StatusD2Ev.exit194

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  store i64 0, ptr %12, align 8, !tbaa !938
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 264 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !2256
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 272 ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 464 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  store i64 0, ptr %13, align 8, !tbaa !930
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 72 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !931
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 5432
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 5480 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 5448 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 10 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 15 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 2162
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 2164
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 2165
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 2168 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 2296
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 2298
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 5 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 712
  %i.bz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not.i.i124 = icmp eq ptr %0, %11              ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 472 ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 480 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %12, i64 280 ; 11 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 288 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 9 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 5 uses
  %i.cl = load ptr, ptr %i.bh, align 8, !tbaa !1450
  %i.cm = load ptr, ptr %i.bi, align 8, !tbaa !1450 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %.loopexit416, label %.lr.ph448

.lr.ph448:                                        ; preds = %bb.l, %.backedge
  %i.co = phi ptr [ %i.po, %.backedge ], [ %i.cm, %bb.l ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !2257)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(64) %i.co, i64 5, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1136, !noalias !2257 ; 3 uses
  store ptr %i.cq, ptr %i.bj, align 8, !tbaa !1136, !alias.scope !2257
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !1137, !noalias !2257 ; 2 uses
  store i64 %i.cs, ptr %i.bk, align 8, !tbaa !1137, !alias.scope !2257
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !472, !noalias !2257 ; 3 uses
  store ptr %i.cu, ptr %i.bl, align 8, !tbaa !995, !alias.scope !2257
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !1430, !noalias !2257
  store i64 %i.cw, ptr %i.bm, align 8, !tbaa !1430, !alias.scope !2257
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 16, i1 false), !tbaa.struct !1432
  store ptr null, ptr %i.bo, align 8, !tbaa !1433, !alias.scope !2257
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 56 ; 4 uses
  %i.cz = icmp eq ptr %i.cq, %i.cy
  br i1 %i.cz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph448
  store ptr %i.bo, ptr %i.bj, align 8, !tbaa !1136, !alias.scope !2257
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !1433
  store ptr %i.da, ptr %i.bo, align 8, !tbaa !1433, !alias.scope !2257
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph448
  %i.db = phi ptr [ %i.bo, %bb.m ], [ %i.cq, %.lr.ph448 ]
  %.not.i.i.i.i.i.i102 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i102, label %_ZN7rocksdb6DBImpl12FlushRequestC2EOS1_.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !606
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = urem i64 %i.de, %i.cs
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.df
  store ptr %i.bl, ptr %i.dg, align 8, !tbaa !994
  br label %_ZN7rocksdb6DBImpl12FlushRequestC2EOS1_.exit.i

_ZN7rocksdb6DBImpl12FlushRequestC2EOS1_.exit.i:   ; preds = %bb.o, %bb.n
  %i.dh = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  store i64 0, ptr %i.dh, align 8, !tbaa !1434
  store i64 1, ptr %i.cr, align 8, !tbaa !1137
  store ptr null, ptr %i.cy, align 8, !tbaa !1433
  store ptr %i.cy, ptr %i.cp, align 8, !tbaa !1136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false)
  call void @_ZNSt5dequeIN7rocksdb6DBImpl12FlushRequestESaIS2_EE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bg) #34
  %.sroa.06.09.i = load ptr, ptr %i.bl, align 8, !tbaa !995, !alias.scope !2257 ; 2 uses
  %i.di = icmp eq ptr %.sroa.06.09.i, null
  %i.dj = load i8, ptr %i.bp, align 4, !range !83, !alias.scope !2257
  %i.dk = trunc nuw i8 %i.dj to i1
  %or.cond.i = select i1 %i.di, i1 true, i1 %i.dk
  br i1 %or.cond.i, label %_ZN7rocksdb6DBImpl22PopFirstFromFlushQueueEv.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZN7rocksdb6DBImpl12FlushRequestC2EOS1_.exit.i, %.lr.ph.split.i
  %.sroa.06.010.i = phi ptr [ %.sroa.06.0.i, %.lr.ph.split.i ], [ %.sroa.06.09.i, %_ZN7rocksdb6DBImpl12FlushRequestC2EOS1_.exit.i ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !475
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2904
  store i8 0, ptr %i.dn, align 8, !tbaa !1189
  %.sroa.06.0.i = load ptr, ptr %.sroa.06.010.i, align 8, !tbaa !995 ; 2 uses
  %i.do = icmp eq ptr %.sroa.06.0.i, null
  br i1 %i.do, label %_ZN7rocksdb6DBImpl22PopFirstFromFlushQueueEv.exit, label %.lr.ph.split.i

_ZN7rocksdb6DBImpl22PopFirstFromFlushQueueEv.exit: ; preds = %.lr.ph.split.i, %_ZN7rocksdb6DBImpl12FlushRequestC2EOS1_.exit.i
  %i.dp = load i32, ptr %14, align 8, !tbaa !1165 ; 7 uses
  %i.dq = load i8, ptr %i.f, align 16, !tbaa !694, !noalias !2258
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34, !noalias !2258
  %i.dr = load ptr, ptr %i.bt, align 8, !tbaa !86, !noalias !2258 ; 2 uses
  %.not.i.i.i103 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i103, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN7rocksdb6DBImpl22PopFirstFromFlushQueueEv.exit
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %9, ptr noundef nonnull %i.dr)
          to label %.noexc106 unwind label %bb.ac

.noexc106:                                        ; preds = %bb.p
  %.pre.i.i104 = load ptr, ptr %9, align 8, !tbaa !86, !noalias !2258
  br label %bb.q

bb.q:                                             ; preds = %_ZN7rocksdb6DBImpl22PopFirstFromFlushQueueEv.exit, %.noexc106
  %storemerge.i105 = phi ptr [ %.pre.i.i104, %.noexc106 ], [ null, %_ZN7rocksdb6DBImpl22PopFirstFromFlushQueueEv.exit ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34, !noalias !2258
  %i.ds = icmp eq i8 %i.dq, 0
  br i1 %i.ds, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dt = load ptr, ptr %i.d, align 16, !tbaa !713
  invoke void @_ZNK7rocksdb4port5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(60) %i.dt)
          to label %.noexc108 unwind label %bb.ad

.noexc108:                                        ; preds = %bb.r
  %i.du = load i8, ptr %i.f, align 16, !tbaa !694
  %i.dv = icmp eq i8 %i.du, 0
  br i1 %i.dv, label %.critedge, label %bb.s

bb.s:                                             ; preds = %.noexc108
  %i.dw = load i8, ptr %i.bq, align 2, !tbaa !714
  %i.dx = icmp ugt i8 %i.dw, 1
  br i1 %i.dx, label %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit109, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dy = load i8, ptr %i.bu, align 8, !tbaa !715, !range !83, !noundef !84
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.u, label %_ZN7rocksdb12ErrorHandler15IsBGWorkStoppedEv.exit109

bb.u:                                             ; preds = %bb.t
  %i.ea = load i8, ptr %i.bv, align 2, !tbaa !716, !range !83, !noundef !84
  %i.eb = trunc nuw i8 %i.ea to i1
end_hunk_0
