inline.NumInlined: 2904
inline.NumDeleted: 1295
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5folly14AsyncSSLSocket8bioWriteEP6bio_stPKci:bb.a
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(24) %i.af) #36, !call_target !10812, !inline_history !10966
  br label %_ZN5folly11AsyncSocket11WriteResultD2Ev.exit

_ZN5folly11AsyncSocket11WriteResultD2Ev.exit:     ; preds = %bb.l, %_ZNKSt14default_deleteIKN5folly20AsyncSocketExceptionEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %i.ad

thread-pre-split:                                 ; preds = %bb.k, %bb.j
  %.pr = load ptr, ptr %i.w, align 8, !tbaa !10788
  %.pre = load i64, ptr %5, align 8, !tbaa !10779
  br label %bb.m

bb.m:                                             ; preds = %thread-pre-split, %bb.h
  %i.aj = phi i64 [ %.pre, %thread-pre-split ], [ %i.z, %bb.h ]
  %i.ak = phi ptr [ %.pr, %thread-pre-split ], [ %i.x, %bb.h ] ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i37, label %_ZN5folly11AsyncSocket11WriteResultD2Ev.exit39, label %_ZNKSt14default_deleteIKN5folly20AsyncSocketExceptionEEclEPS2_.exit.i.i38

_ZNKSt14default_deleteIKN5folly20AsyncSocketExceptionEEclEPS2_.exit.i.i38: ; preds = %bb.m
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(24) %i.ak) #36, !call_target !10812, !inline_history !10966
  br label %_ZN5folly11AsyncSocket11WriteResultD2Ev.exit39

_ZN5folly11AsyncSocket11WriteResultD2Ev.exit39:   ; preds = %bb.m, %_ZNKSt14default_deleteIKN5folly20AsyncSocketExceptionEEclEPS2_.exit.i.i38
  %i.ao = trunc i64 %i.aj to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret i32 %i.ao
}

declare noundef zeroext i1 @_ZN5folly3ssl12OpenSSLUtils22setCustomBioReadMethodEP13bio_method_stPFiP6bio_stPciE(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5folly14AsyncSSLSocket7bioReadEP6bio_stPci(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  %4 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %5 = alloca %"class.folly::io::Cursor", align 8 ; 11 uses
  %6 = alloca %"class.folly::IOBufQueue", align 8 ; 12 uses
  %7 = alloca %"struct.folly::IOBufQueue::Options", align 1 ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @BIO_clear_flags(ptr noundef %0, i32 noundef 15)
  %i.a = tail call noundef ptr @_ZN5folly3ssl12OpenSSLUtils13getBioAppDataEP6bio_st(ptr noundef %0) ; 3 uses
  %.not46 = icmp eq ptr %i.a, null
  br i1 %.not46, label %bb.c, label %.critedge, !prof !10573

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str.1, i32 noundef 1964)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull @.str.112, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.d
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #38
  unreachable

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %3) #38
  unreachable

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 920 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10525 ; 2 uses
  %.not59 = icmp eq ptr %i.f, null
  br i1 %.not59, label %bb.v, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.g = tail call noundef zeroext i1 @_ZNK5folly5IOBuf5emptyEv(ptr noundef nonnull align 8 dereferenceable(56) %i.f) #36
  br i1 %i.g, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = load ptr, ptr @_ZZN5folly14AsyncSSLSocket7bioReadEP6bio_stPciE8vlocal__, align 8, !tbaa !10767 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = tail call noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5folly14AsyncSSLSocket7bioReadEP6bio_stPciE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str.1, i32 noundef 5)
  br i1 %i.j, label %bb.j, label %.critedge52

bb.i:                                             ; preds = %bb.g
  %i.k = load i32, ptr %i.h, align 4, !tbaa !7
  %i.l = icmp sgt i32 %i.k, 4
  br i1 %i.l, label %bb.j, label %.critedge52

bb.j:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull @.str.1, i32 noundef 1968)
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.k unwind label %bb.t       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.115, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53 unwind label %bb.t ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53: ; preds = %bb.k
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.a)
          to label %_ZNSolsEPKv.exit unwind label %bb.t

_ZNSolsEPKv.exit:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.116, i64 noundef 27)
          to label %.critedge51 unwind label %bb.t ; 0 uses

.critedge51:                                      ; preds = %_ZNSolsEPKv.exit
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %.critedge52

.critedge52:                                      ; preds = %bb.h, %bb.i, %.critedge51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !10525 ; 5 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !10967
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !10969
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  store i64 -1, ptr %i.t, align 8, !tbaa !10970
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit, label %bb.l

bb.l:                                             ; preds = %.critedge52
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !10529 ; 4 uses
  store ptr %i.x, ptr %i.s, align 8, !tbaa !10971
  store ptr %i.x, ptr %i.u, align 8, !tbaa !10972
  %i.y = load i64, ptr %i.q, align 8, !tbaa !10533
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y ; 2 uses
  store ptr %i.z, ptr %i.v, align 8, !tbaa !10973
  %i.aa = ptrtoint ptr %i.z to i64
  br label %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit

_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit:          ; preds = %.critedge52, %bb.l
  %i.ab = phi i64 [ 0, %.critedge52 ], [ %i.aa, %bb.l ]
  %i.ac = phi ptr [ null, %.critedge52 ], [ %i.x, %bb.l ] ; 3 uses
  %i.ad = sext i32 %2 to i64                      ; 5 uses
  %i.ae = icmp eq i32 %2, 0
  br i1 %i.ae, label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10pullAtMostEPvm.exit, label %bb.m, !prof !10573

bb.m:                                             ; preds = %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = add i64 %i.af, %i.ad
  %.not.i = icmp ugt i64 %i.ag, %i.ab
  br i1 %.not.i, label %bb.o, label %bb.n, !prof !10573

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %i.ac, i64 %i.ad, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !10972
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10pullAtMostEPvm.exit

bb.o:                                             ; preds = %bb.m
  %i.aj = call noundef i64 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE14pullAtMostSlowEPvm(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull %1, i64 noundef %i.ad)
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10pullAtMostEPvm.exit

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10pullAtMostEPvm.exit: ; preds = %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.aj, %bb.o ], [ %i.ad, %bb.n ], [ 0, %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store i8 0, ptr %7, align 1, !tbaa !10974
  call void @_ZN5folly10IOBufQueueC1ERKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  invoke void @_ZN5folly10IOBufQueue6appendEOSt10unique_ptrINS_5IOBufESt14default_deleteIS2_EEbb(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10pullAtMostEPvm.exit
  invoke void @_ZN5folly10IOBufQueue9trimStartEm(ptr noundef nonnull align 8 dereferenceable(64) %6, i64 noundef %.0.i)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !10976, !noalias !10981 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !10986, !noalias !10981 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !10987, !noalias !10981 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %i.ao
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br i1 %.not.i.i.i, label %..noexc.i.i_crit_edge.i, label %bb.r

..noexc.i.i_crit_edge.i:                          ; preds = %bb.q
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !10525, !noalias !10988
  %i.ap = inttoptr i64 %.pre.i to ptr
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aq = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !10988 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !10531, !noalias !10981 ; 2 uses
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = ptrtoint ptr %i.al to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = load i64, ptr %i.as, align 8, !tbaa !10533, !noalias !10981
  %i.ax = add i64 %i.av, %i.aw
  store i64 %i.ax, ptr %i.as, align 8, !tbaa !10533, !noalias !10981
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %..noexc.i.i_crit_edge.i
  %i.ay = phi ptr [ %i.ap, %..noexc.i.i_crit_edge.i ], [ %i.aq, %bb.r ]
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false), !noalias !10988
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false), !noalias !10988
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !10525 ; 3 uses
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !10525
  %.not.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i.i: ; preds = %bb.s
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ba) #36
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.ba) #36
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i.i, %bb.s
  %i.bb = trunc i64 %.0.i to i32
  call void @_ZN5folly10IOBufQueueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.z

bb.t:                                             ; preds = %_ZNSolsEPKv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53, %bb.k, %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.y

bb.u:                                             ; preds = %bb.p, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10pullAtMostEPvm.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly10IOBufQueueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.y

bb.v:                                             ; preds = %bb.f, %.critedge
  %i.be = tail call i32 @_ZN5folly3ssl12OpenSSLUtils8getBioFdEP6bio_st(ptr noundef %0)
  %i.bf = sext i32 %2 to i64
  %i.bg = tail call noundef i64 @_ZN5folly6netops4recvENS_13NetworkSocketEPvmi(i32 %i.be, ptr noundef nonnull %1, i64 noundef %i.bf, i32 noundef 0)
  %i.bh = trunc i64 %i.bg to i32                  ; 5 uses
  %i.bi = icmp slt i32 %i.bh, 1
  br i1 %i.bi, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bj = tail call noundef i32 @_ZN5folly3ssl12OpenSSLUtils22getBioShouldRetryWriteEi(i32 noundef %i.bh)
  %.not49 = icmp eq i32 %i.bj, 0
  br i1 %.not49, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @BIO_set_flags(ptr noundef %0, i32 noundef 9)
  br label %bb.z

bb.y:                                             ; preds = %bb.t, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.bd, %bb.u ], [ %i.bc, %bb.t ]
  resume { ptr, i32 } %.pn.pn

bb.z:                                             ; preds = %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, %bb.x, %bb.w, %bb.v, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.bb, %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit ], [ %i.bh, %bb.x ], [ %i.bh, %bb.w ], [ %i.bh, %bb.v ]
  ret i32 %.1
}

declare void @_ZN5folly3ssl12OpenSSLUtils18newSocketBioMethodEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.263") align 8) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrI13bio_method_stN5folly23static_function_deleterIS0_XadL_Z13BIO_meth_freeEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10961  ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNK5folly23static_function_deleterI13bio_method_stXadL_Z13BIO_meth_freeEEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @BIO_meth_free(ptr noundef nonnull %i.a)
          to label %_ZNK5folly23static_function_deleterI13bio_method_stXadL_Z13BIO_meth_freeEEEclEPS1_.exit unwind label %bb.c

_ZNK5folly23static_function_deleterI13bio_method_stXadL_Z13BIO_meth_freeEEEclEPS1_.exit: ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #38
  unreachable
}

declare i64 @SSL_CTX_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

declare i32 @SSL_shutdown(ptr noundef) local_unnamed_addr #0

declare void @ERR_clear_error() local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK5folly12AsyncTimeout11isScheduledEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #0

declare void @_ZN5folly12AsyncTimeout13cancelTimeoutEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly14AsyncSSLSocket18invokeHandshakeErrERKNS_20AsyncSocketExceptionE(ptr noundef nonnull align 8 dereferenceable(1968) initializes((1832, 1840)) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1832
  store i64 %i.a, ptr %i.b, align 8, !tbaa !226
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !227  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.c, align 8, !tbaa !227
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #36, !call_target !228
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN5folly11AsyncSocket8closeNowEv(ptr noundef nonnull align 8 dereferenceable(1169)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly22DelayedDestructionBase15DestructorGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !219    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !222
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !222
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.a, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.e, !call_target !10476

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly14IndestructibleINS_20AsyncSocketExceptionEE7StorageC2IJNS1_24AsyncSocketExceptionTypeERA30_KcES1_EESt10in_place_tDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(30) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !224    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !10517
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #36 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #40
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !10573

.noexc11.i:                                       ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #40
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #39 ; 2 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !10511
  store i64 %i.c, ptr %i.b, align 8, !tbaa !10516
  br label %._crit_edge.i.i
end_hunk_0
begin_hunk_1_@_ZN5folly14AsyncSSLSocket12handleAcceptEv:bb.a
  %i.ef = load ptr, ptr %0, align 8, !tbaa !16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8
  invoke void %i.eh(ptr noundef nonnull align 8 dereferenceable(12) %0, i1 noundef zeroext true)
          to label %_ZN5folly14AsyncSSLSocket13failHandshakeEPKcRKNS_20AsyncSocketExceptionE.exit unwind label %bb.ba, !call_target !10476

bb.ba:                                            ; preds = %bb.az
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #38
  unreachable

_ZN5folly14AsyncSSLSocket13failHandshakeEPKcRKNS_20AsyncSocketExceptionE.exit: ; preds = %_ZN5folly14AsyncSSLSocket18invokeHandshakeErrERKNS_20AsyncSocketExceptionE.exit.i45.invoke, %bb.az, %"_ZZN5folly14AsyncSSLSocket12handleAcceptEvEN3$_0D2Ev.exit", %bb.w
  ret void

bb.bb:                                            ; preds = %_ZN5folly14AsyncSSLSocket18invokeHandshakeErrERKNS_20AsyncSocketExceptionE.exit.i45.invoke, %bb.aq, %.noexc46, %bb.ap, %bb.ao, %bb.ac, %.noexc39, %bb.ab, %bb.aa, %bb.u, %_ZNSolsEPKv.exit32, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30, %bb.t, %bb.q, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22, %bb.h, %_ZN5follylsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES7_RKNS_13NetworkSocketE.exit, %.noexc17, %.noexc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %_ZNSolsEPKv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.g, %_ZN5folly22DelayedDestructionBase15DestructorGuardC2ERKS1_.exit54, %bb.av, %bb.au, %bb.at, %bb.ak, %bb.aj, %_ZNSt10unique_ptrI6ssl_stN5folly23static_function_deleterIS0_XadL_Z8SSL_freeEEEEE5resetEPS0_.exit, %bb.w, %bb.v, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34, %bb.s, %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20, %bb.f, %bb.e, %bb.b
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.ai, %bb.bb
  %eh.lpad-body = phi { ptr, i32 } [ %i.ek, %bb.bb ], [ %i.cf, %bb.ai ]
  %i.el = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.el) #38
  unreachable

bb.bc:                                            ; preds = %bb.n
  call void @__clang_call_terminate(ptr %i.aq) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly14IndestructibleINS_20AsyncSocketExceptionEE7StorageC2IJNS1_24AsyncSocketExceptionTypeERA21_KcES1_EESt10in_place_tDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(21) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !224    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !10517
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #36 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #40
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !10573

.noexc11.i:                                       ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #40
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #39 ; 2 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !10511
  store i64 %i.c, ptr %i.b, align 8, !tbaa !10516
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.c, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %2, align 1, !tbaa !10516
  store i8 %i.j, ptr %i.i, align 1, !tbaa !10516
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !10515
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !10516
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZN5folly20AsyncSocketException10getMessageENS0_24AsyncSocketExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0)
          to label %.noexc8 unwind label %bb.i

.noexc8:                                          ; preds = %bb.f
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc8
  %i.m = load ptr, ptr %3, align 8, !tbaa !10511  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.p = load i64, ptr %i.n, align 8, !tbaa !10516
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc8
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %3, align 8, !tbaa !10511  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.h
  %i.v = load i64, ptr %i.t, align 8, !tbaa !10516
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly20AsyncSocketExceptionE, i64 16), ptr %0, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.a, ptr %i.x, align 8, !tbaa !10823
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !10828
  %i.z = load ptr, ptr %4, align 8, !tbaa !10511  ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.b
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !10516
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void

bb.i:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ]
  %i.ae = load ptr, ptr %4, align 8, !tbaa !10511 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.b
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %.body
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !10516
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %eh.lpad-body
}

declare void @SSL_set_msg_callback(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14AsyncSSLSocket26clientHelloParsingCallbackEiiiPKvmP6ssl_stPv(i32 noundef %0, i32 %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %8 = alloca %"class.folly::io::Cursor", align 8 ; 50 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %i.a = alloca i16, align 2                      ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @SSL_set_msg_callback(ptr noundef %5, ptr noundef null)
  %i.b = tail call i64 @SSL_ctrl(ptr noundef %5, i32 noundef 16, i64 noundef 0, ptr noundef null) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 1792
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10929 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10976, !noalias !12319 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10986, !noalias !12319 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10987, !noalias !12319 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, %i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZN5folly10IOBufQueue4moveEv.exit.i.i, label %_ZN5folly10IOBufQueue4moveEv.exit.thread.i.i

_ZN5folly10IOBufQueue4moveEv.exit.thread.i.i:     ; preds = %bb.b
  %i.j = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !12324 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10531, !noalias !12319 ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = load i64, ptr %i.l, align 8, !tbaa !10533, !noalias !12319
  %i.q = add i64 %i.o, %i.p
  store i64 %i.q, ptr %i.l, align 8, !tbaa !10533, !noalias !12319
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false), !noalias !12324
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !noalias !12324
  br label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i

_ZN5folly10IOBufQueue4moveEv.exit.i.i:            ; preds = %bb.b
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !10525, !noalias !12324 ; 2 uses
  %i.s = inttoptr i64 %.pre.i.i.i to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false), !noalias !12324
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !noalias !12324
  %.not.i.i.i = icmp eq i64 %.pre.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN5folly14AsyncSSLSocket23resetClientHelloParsingEP6ssl_st.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i: ; preds = %_ZN5folly10IOBufQueue4moveEv.exit.i.i, %_ZN5folly10IOBufQueue4moveEv.exit.thread.i.i
  %i.u = phi ptr [ %i.j, %_ZN5folly10IOBufQueue4moveEv.exit.thread.i.i ], [ %i.s, %_ZN5folly10IOBufQueue4moveEv.exit.i.i ] ; 2 uses
  tail call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.u) #36
  tail call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.u) #36
  br label %_ZN5folly14AsyncSSLSocket23resetClientHelloParsingEP6ssl_st.exit

bb.c:                                             ; preds = %bb.a
  %.not91 = icmp ne i32 %2, 22
  %i.v = icmp eq i64 %4, 0
  %or.cond = or i1 %.not91, %i.v
  br i1 %or.cond, label %_ZN5folly14AsyncSSLSocket23resetClientHelloParsingEP6ssl_st.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 1792 ; 12 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !10929 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @_ZN5folly5IOBuf10wrapBufferEPKvm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %7, ptr noundef %3, i64 noundef %4)
  invoke void @_ZN5folly10IOBufQueue6appendEOSt10unique_ptrINS_5IOBufESt14default_deleteIS2_EEbb(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %7, align 8, !tbaa !10525  ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i: ; preds = %bb.e
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.y) #36
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.y) #36
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !10976 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !10986
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !10987 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.ad
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !10525 ; 8 uses
  br i1 %.not.i.i, label %_ZNK5folly10IOBufQueue5frontEv.exit, label %_ZNK5folly10IOBufQueue5frontEv.exit.thread

_ZNK5folly10IOBufQueue5frontEv.exit.thread:       ; preds = %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre.i, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !10531 ; 2 uses
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.aa to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !10533
  %i.ak = add i64 %i.aj, %i.ai
  store i64 %i.ak, ptr %i.af, align 8, !tbaa !10533
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !12325
  %i.an = add i64 %i.am, %i.ai
  store i64 %i.an, ptr %i.al, align 8, !tbaa !12325
  %i.ao = getelementptr inbounds i8, ptr %i.aa, i64 %i.ai
  store ptr %i.ao, ptr %i.z, align 8, !tbaa !10976
  store ptr %.pre.i, ptr %8, align 8, !tbaa !10967
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %.pre.i, ptr %i.ap, align 8, !tbaa !10969
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i8 0, i64 32, i1 false)
  store i64 -1, ptr %i.ar, align 8, !tbaa !10970
  br label %bb.f

_ZNK5folly10IOBufQueue5frontEv.exit:              ; preds = %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit
  store ptr %.pre.i, ptr %8, align 8, !tbaa !10967
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr %.pre.i, ptr %i.as, align 8, !tbaa !10969
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, i8 0, i64 32, i1 false)
  store i64 -1, ptr %i.au, align 8, !tbaa !10970
  %.not.i.i123 = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i123, label %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK5folly10IOBufQueue5frontEv.exit.thread, %_ZNK5folly10IOBufQueue5frontEv.exit
  %i.av = phi ptr [ %i.ar, %_ZNK5folly10IOBufQueue5frontEv.exit.thread ], [ %i.au, %_ZNK5folly10IOBufQueue5frontEv.exit ]
  %i.aw = phi ptr [ %i.aq, %_ZNK5folly10IOBufQueue5frontEv.exit.thread ], [ %i.at, %_ZNK5folly10IOBufQueue5frontEv.exit ]
  %i.ax = phi ptr [ %i.ap, %_ZNK5folly10IOBufQueue5frontEv.exit.thread ], [ %i.as, %_ZNK5folly10IOBufQueue5frontEv.exit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !10529 ; 4 uses
  store ptr %i.bb, ptr %i.aw, align 8, !tbaa !10971
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !10972
  %i.bc = load i64, ptr %.pre.i, align 8, !tbaa !10533
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc ; 2 uses
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !10973
  %i.be = ptrtoint ptr %i.bd to i64
  br label %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit

_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit:          ; preds = %_ZNK5folly10IOBufQueue5frontEv.exit, %bb.f
  %i.bf = phi i64 [ 0, %_ZNK5folly10IOBufQueue5frontEv.exit ], [ %i.be, %bb.f ]
  %i.bg = phi ptr [ null, %_ZNK5folly10IOBufQueue5frontEv.exit ], [ %i.bb, %bb.f ] ; 3 uses
  %i.bh = phi ptr [ %i.au, %_ZNK5folly10IOBufQueue5frontEv.exit ], [ %i.av, %bb.f ] ; 4 uses
  %i.bi = phi ptr [ %i.as, %_ZNK5folly10IOBufQueue5frontEv.exit ], [ %i.ax, %bb.f ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 54 uses
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = add i64 %i.bk, 1
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 27 uses
  %.not.i124 = icmp ugt i64 %i.bl, %i.bf
  br i1 %.not.i124, label %bb.h, label %bb.g, !prof !10573

bb.g:                                             ; preds = %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit
  %.0.copyload.i.i = load i8, ptr %i.bg, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !10972
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit

bb.h:                                             ; preds = %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit
  %i.bo = invoke noundef zeroext i8 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE8readSlowIhEET_v(ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit unwind label %bb.k

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit: ; preds = %bb.g, %bb.h
  %.0.i = phi i8 [ %.0.copyload.i.i, %bb.g ], [ %i.bo, %bb.h ]
  %.not92 = icmp eq i8 %.0.i, 1
  br i1 %.not92, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit
  invoke void @SSL_set_msg_callback(ptr noundef %5, ptr noundef null)
          to label %.noexc132 unwind label %bb.k

.noexc132:                                        ; preds = %bb.i
  %i.bp = invoke i64 @SSL_ctrl(ptr noundef %5, i32 noundef 16, i64 noundef 0, ptr noundef null)
          to label %.noexc133 unwind label %bb.k  ; 0 uses

.noexc133:                                        ; preds = %.noexc132
  %i.bq = load ptr, ptr %i.w, align 8, !tbaa !10929 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !10976, !noalias !12326 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !10986, !noalias !12326 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !10987, !noalias !12326 ; 2 uses
  %.not.i.i.i.i.i125 = icmp eq ptr %i.bs, %i.bv
  %.phi.trans.insert.i.i.i126 = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i.i125, label %_ZN5folly10IOBufQueue4moveEv.exit.i.i129, label %_ZN5folly10IOBufQueue4moveEv.exit.thread.i.i127

_ZN5folly10IOBufQueue4moveEv.exit.thread.i.i127:  ; preds = %.noexc133
  %i.bw = load ptr, ptr %.phi.trans.insert.i.i.i126, align 8, !noalias !12331 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !10531, !noalias !12326 ; 2 uses
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = ptrtoint ptr %i.bs to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = load i64, ptr %i.by, align 8, !tbaa !10533, !noalias !12326
  %i.cd = add i64 %i.cb, %i.cc
  store i64 %i.cd, ptr %i.by, align 8, !tbaa !10533, !noalias !12326
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i8 0, i64 24, i1 false), !noalias !12331
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false), !noalias !12331
  br label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i128

_ZN5folly10IOBufQueue4moveEv.exit.i.i129:         ; preds = %.noexc133
  %.pre.i.i.i130 = load i64, ptr %.phi.trans.insert.i.i.i126, align 8, !tbaa !10525, !noalias !12331 ; 2 uses
  %i.cf = inttoptr i64 %.pre.i.i.i130 to ptr
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i8 0, i64 24, i1 false), !noalias !12331
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false), !noalias !12331
  %.not.i.i.i131 = icmp eq i64 %.pre.i.i.i130, 0
  br i1 %.not.i.i.i131, label %.critedge, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i128

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i128: ; preds = %_ZN5folly10IOBufQueue4moveEv.exit.i.i129, %_ZN5folly10IOBufQueue4moveEv.exit.thread.i.i127
  %i.ch = phi ptr [ %i.bw, %_ZN5folly10IOBufQueue4moveEv.exit.thread.i.i127 ], [ %i.cf, %_ZN5folly10IOBufQueue4moveEv.exit.i.i129 ] ; 2 uses
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ch) #36
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.ch) #36
  br label %.critedge

bb.j:                                             ; preds = %bb.d
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.eq

bb.k:                                             ; preds = %.noexc132, %bb.i, %bb.h, %bb.m
  %i.cj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range
  br label %bb.ec

bb.l:                                             ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit
  %i.ck = load ptr, ptr %8, align 8, !tbaa !10967
  %i.cl = load ptr, ptr %i.bi, align 8, !tbaa !10969 ; 2 uses
  %i.cm = load i64, ptr %i.bh, align 8            ; 3 uses
  %.0.in12.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %.013.i = load ptr, ptr %.0.in12.i, align 8, !tbaa !10526 ; 2 uses
  %.not14.i = icmp ne ptr %.013.i, %i.cl
  %i.cn = icmp ne i64 %i.cm, 0
  %or.cond15.i = select i1 %.not14.i, i1 %i.cn, i1 false
  br i1 %or.cond15.i, label %.lr.ph.i, label %_ZNK5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE11totalLengthEv.exit

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.017.i = phi ptr [ %.0.i135, %.lr.ph.i ], [ %.013.i, %bb.l ] ; 2 uses
  %.0916.i = phi i64 [ %i.cp, %.lr.ph.i ], [ 0, %bb.l ]
  %i.co = load i64, ptr %.017.i, align 8, !tbaa !10533
  %i.cp = add i64 %i.co, %.0916.i                 ; 3 uses
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.017.i, i64 32
  %.0.i135 = load ptr, ptr %.0.in.i, align 8, !tbaa !10526 ; 2 uses
  %.not.i136 = icmp ne ptr %.0.i135, %i.cl
  %i.cq = icmp ult i64 %i.cp, %i.cm
  %or.cond.i = select i1 %.not.i136, i1 %i.cq, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.loopexit.i, !llvm.loop !12332

.critedge.loopexit.i:                             ; preds = %.lr.ph.i
  %i.cr = call i64 @llvm.umin.i64(i64 %i.cm, i64 %i.cp)
  br label %_ZNK5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE11totalLengthEv.exit

_ZNK5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE11totalLengthEv.exit: ; preds = %bb.l, %.critedge.loopexit.i
  %.09.lcssa.i = phi i64 [ 0, %bb.l ], [ %i.cr, %.critedge.loopexit.i ]
  %i.cs = load ptr, ptr %i.bm, align 8, !tbaa !10973
  %i.ct = load ptr, ptr %i.bj, align 8, !tbaa !10972 ; 3 uses
  %i.cu = ptrtoint ptr %i.cs to i64               ; 3 uses
  %i.cv = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cw = add i64 %.09.lcssa.i, %i.cu
  %i.cx = sub i64 %i.cw, %i.cv
  %i.cy = icmp ult i64 %i.cx, 3
  br i1 %i.cy, label %bb.m, label %bb.q

bb.m:                                             ; preds = %_ZNK5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE11totalLengthEv.exit
  invoke void @_ZN5folly10IOBufQueue7trimEndEm(ptr noundef nonnull align 8 dereferenceable(64) %i.x, i64 noundef %4)
          to label %_ZN5folly11checked_addImvEEbPT_S1_S1_S1_.exit.i unwind label %bb.k

_ZN5folly11checked_addImvEEbPT_S1_S1_S1_.exit.i:  ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  invoke void @_ZN5folly5IOBuf6createEm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %9, i64 noundef %4)
          to label %.noexc140 unwind label %bb.o

.noexc140:                                        ; preds = %_ZN5folly11checked_addImvEEbPT_S1_S1_S1_.exit.i
  %i.cz = load ptr, ptr %9, align 8, !tbaa !10525, !alias.scope !12333
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !10529
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr align 1 %3, i64 %4, i1 false)
  %i.dc = load ptr, ptr %9, align 8, !tbaa !10525, !alias.scope !12333 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !10533
  %i.de = add i64 %i.dd, %4
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !10533
  invoke void @_ZN5folly10IOBufQueue6appendEOSt10unique_ptrINS_5IOBufESt14default_deleteIS2_EEbb(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %9, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %.noexc140
  %i.df = load ptr, ptr %9, align 8, !tbaa !10525 ; 3 uses
  %.not.i141 = icmp eq ptr %i.df, null
  br i1 %.not.i141, label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit143, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i142

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i142: ; preds = %bb.n
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.df) #36
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.df) #36
  br label %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit143

_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit143: ; preds = %bb.n, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %.critedge

bb.o:                                             ; preds = %_ZN5folly11checked_addImvEEbPT_S1_S1_S1_.exit.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range
  br label %.body

bb.p:                                             ; preds = %.noexc140
  %i.dh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range
  call void @_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #36
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p
  %.pn113 = phi { ptr, i32 } [ %i.dh, %bb.p ], [ %i.dg, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.ec

bb.q:                                             ; preds = %_ZNK5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE11totalLengthEv.exit
  %i.di = add i64 %i.cv, 1
  %.not.i144 = icmp ugt i64 %i.di, %i.cu
  br i1 %.not.i144, label %bb.s, label %bb.r, !prof !10573

bb.r:                                             ; preds = %bb.q
  %.0.copyload.i.i145 = load i8, ptr %i.ct, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ct, i64 1 ; 2 uses
  store ptr %i.dj, ptr %i.bj, align 8, !tbaa !10972
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit148

bb.s:                                             ; preds = %bb.q
  %i.dk = invoke noundef zeroext i8 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE8readSlowIhEET_v(ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %._ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit148_crit_edge unwind label %bb.z

._ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit148_crit_edge: ; preds = %bb.s
  %.pre = load ptr, ptr %i.bj, align 8, !tbaa !10972
  %.pre420 = load ptr, ptr %i.bm, align 8, !tbaa !10973
  %.pre445 = ptrtoint ptr %.pre420 to i64
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit148

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit148: ; preds = %._ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit148_crit_edge, %bb.r
  %.pre-phi = phi i64 [ %.pre445, %._ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit148_crit_edge ], [ %i.cu, %bb.r ] ; 2 uses
  %i.dl = phi ptr [ %.pre, %._ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit148_crit_edge ], [ %i.dj, %bb.r ] ; 3 uses
  %.0.i146 = phi i8 [ %i.dk, %._ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit148_crit_edge ], [ %.0.copyload.i.i145, %bb.r ]
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = add i64 %i.dm, 1
  %.not.i149 = icmp ugt i64 %i.dn, %.pre-phi
  br i1 %.not.i149, label %bb.u, label %bb.t, !prof !10573

bb.t:                                             ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit148
  %.0.copyload.i.i150 = load i8, ptr %i.dl, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 1 ; 2 uses
  store ptr %i.do, ptr %i.bj, align 8, !tbaa !10972
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit153

bb.u:                                             ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit148
  %i.dp = invoke noundef zeroext i8 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE8readSlowIhEET_v(ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %._ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit153_crit_edge unwind label %bb.z

._ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit153_crit_edge: ; preds = %bb.u
  %.pre421 = load ptr, ptr %i.bj, align 8, !tbaa !10972
  %.pre422 = load ptr, ptr %i.bm, align 8, !tbaa !10973
  %.pre446 = ptrtoint ptr %.pre422 to i64
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit153

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit153: ; preds = %._ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit153_crit_edge, %bb.t
  %.pre-phi447 = phi i64 [ %.pre446, %._ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit153_crit_edge ], [ %.pre-phi, %bb.t ]
  %i.dq = phi ptr [ %.pre421, %._ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit153_crit_edge ], [ %i.do, %bb.t ] ; 3 uses
  %.0.i151 = phi i8 [ %i.dp, %._ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit153_crit_edge ], [ %.0.copyload.i.i150, %bb.t ]
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = add i64 %i.dr, 1
  %.not.i154 = icmp ugt i64 %i.ds, %.pre-phi447
  br i1 %.not.i154, label %bb.w, label %bb.v, !prof !10573

bb.v:                                             ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit153
  %.0.copyload.i.i155 = load i8, ptr %i.dq, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  store ptr %i.dt, ptr %i.bj, align 8, !tbaa !10972
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit158

bb.w:                                             ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit153
  %i.du = invoke noundef zeroext i8 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE8readSlowIhEET_v(ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit158 unwind label %bb.z

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4readIhEET_v.exit158: ; preds = %bb.v, %bb.w
  %.0.i156 = phi i8 [ %.0.copyload.i.i155, %bb.v ], [ %i.du, %bb.w ]
  %i.dv = zext i8 %.0.i151 to i64
end_hunk_1
begin_hunk_2_@_ZN5folly14AsyncSSLSocket26clientHelloParsingCallbackEiiiPKvmP6ssl_stPv:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.sd = load i64, ptr %i.rq, align 8, !tbaa !10516
  store ptr %i.rs, ptr %i.ro, align 8, !tbaa !10511
  %i.se = getelementptr inbounds nuw i8, ptr %i.rn, i64 200
  %i.sf = load <2 x i64>, ptr %i.kb, align 8, !tbaa !10516
  store <2 x i64> %i.sf, ptr %i.se, align 8, !tbaa !10516
  %.not.i316 = icmp eq ptr %i.rp, null
  br i1 %.not.i316, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.rp, ptr %11, align 8, !tbaa !10511
  store i64 %i.sd, ptr %i.ka, align 8, !tbaa !10516
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.dr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ka, ptr %11, align 8, !tbaa !10511
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.dq, %bb.dr
  %i.sg = phi ptr [ %i.rp, %bb.dq ], [ %i.ka, %bb.dr ], [ %i.rs, %bb.dm ], [ %.pre.i317, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.kb, align 8, !tbaa !10515
  store i8 0, ptr %i.sg, align 1, !tbaa !10516
  %i.sh = load ptr, ptr %11, align 8, !tbaa !10511 ; 2 uses
  %i.si = icmp eq ptr %i.sh, %i.ka
  br i1 %i.si, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.sj = load i64, ptr %i.ka, align 8, !tbaa !10516
  %i.sk = add i64 %i.sj, 1
  call void @_ZdlPvm(ptr noundef %i.sh, i64 noundef %i.sk) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit319

bb.ds:                                            ; preds = %bb.dc
  %i.sl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range
  store i16 %.pre442564, ptr %i.a, align 2
  br label %bb.eb

bb.dt:                                            ; preds = %bb.dw, %bb.de
  %i.sm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range
  store i16 %.pre442564, ptr %i.a, align 2
  br label %bb.eb

bb.du:                                            ; preds = %_ZNK5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10canAdvanceEm.exit
  %i.sn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12out_of_range
  store i16 %.pre442564, ptr %i.a, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.eb

_ZNK5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10canAdvanceEm.exit.thread: ; preds = %bb.dk, %._ZNK5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10canAdvanceEm.exit.thread_crit_edge, %bb.di, %bb.dg
  %i.so = phi ptr [ %.pre440, %._ZNK5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10canAdvanceEm.exit.thread_crit_edge ], [ %.pre441, %bb.dg ], [ %.pre441, %bb.di ], [ %.pre441, %bb.dk ]
  %i.sp = phi ptr [ %.pre438, %._ZNK5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10canAdvanceEm.exit.thread_crit_edge ], [ %.pre439, %bb.dg ], [ %.pre439, %bb.di ], [ %.pre439, %bb.dk ] ; 2 uses
  %i.sq = zext i16 %i.qv to i64                   ; 3 uses
  %i.sr = ptrtoint ptr %i.sp to i64
  %i.ss = add i64 %i.sr, %i.sq
  %i.st = ptrtoint ptr %i.so to i64
  %i.su = icmp ult i64 %i.ss, %i.st
  br i1 %i.su, label %bb.dv, label %bb.dw, !prof !11003

bb.dv:                                            ; preds = %_ZNK5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10canAdvanceEm.exit.thread
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sp, i64 %i.sq
  store ptr %i.sv, ptr %i.bj, align 8, !tbaa !10972
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit319

bb.dw:                                            ; preds = %_ZNK5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE10canAdvanceEm.exit.thread
  invoke void @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE8skipSlowEm(ptr noundef nonnull align 8 dereferenceable(56) %8, i64 noundef %i.sq)
          to label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit319 unwind label %bb.dt

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit319: ; preds = %bb.dv, %bb.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.sw = phi i16 [ %i.qi, %bb.dv ], [ %i.qi, %bb.dw ], [ %.pre442564, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %reass.sub = sub i16 %i.sw, %i.qv
  %i.sx = add i16 %reass.sub, -3                  ; 4 uses
  %.not95 = icmp eq i16 %i.sx, 0
  br i1 %.not95, label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit321.loopexit557, label %.lr.ph389, !llvm.loop !12385

bb.dx:                                            ; preds = %bb.by
  invoke void @_ZN5folly14AsyncSSLSocket16parseClientAlpnsEPS0_RNS_2io6CursorERt(ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 2 dereferenceable(2) %i.a)
          to label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit321 unwind label %bb.cl

bb.dy:                                            ; preds = %bb.by
  %i.sy = zext i16 %i.lo to i64                   ; 3 uses
  %i.sz = load ptr, ptr %i.bj, align 8, !tbaa !10972 ; 2 uses
  %i.ta = ptrtoint ptr %i.sz to i64
  %i.tb = add i64 %i.ta, %i.sy
  %i.tc = load ptr, ptr %i.bm, align 8, !tbaa !10973
  %i.td = ptrtoint ptr %i.tc to i64
  %i.te = icmp ult i64 %i.tb, %i.td
  br i1 %i.te, label %bb.dz, label %bb.ea, !prof !11003

bb.dz:                                            ; preds = %bb.dy
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.sy
  store ptr %i.tf, ptr %i.bj, align 8, !tbaa !10972
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit321

bb.ea:                                            ; preds = %bb.dy
  invoke void @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE8skipSlowEm(ptr noundef nonnull align 8 dereferenceable(56) %8, i64 noundef %i.sy)
          to label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit321 unwind label %bb.cl

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit321.loopexit557: ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit319
  store i16 %i.sx, ptr %i.a, align 2
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit321

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit321: ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit299, %_ZNSt6vectorISt4pairIN5folly3ssl13HashAlgorithmENS2_18SignatureAlgorithmEESaIS5_EE12emplace_backIJRS3_RS4_EEERS5_DpOT_.exit, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit321.loopexit557, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit284, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit266, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit301, %bb.dz, %bb.ea, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.not94 = icmp eq i16 %i.lq, 0
  br i1 %.not94, label %.loopexit365, label %bb.bn, !llvm.loop !12386

bb.eb:                                            ; preds = %.loopexit359, %.loopexit.split-lp360, %.loopexit, %.loopexit.split-lp, %bb.cm, %bb.ds, %bb.du, %bb.dt, %bb.cl
  %.pn101.pn = phi { ptr, i32 } [ %i.sm, %bb.dt ], [ %i.ok, %bb.cl ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.sl, %bb.ds ], [ %i.sn, %bb.du ], [ %i.ol, %bb.cm ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit361, %.loopexit359 ], [ %lpad.loopexit.split-lp362, %.loopexit.split-lp360 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.ec

.loopexit365:                                     ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit321, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE6readBEItEET_v.exit250, %_ZNK5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE11totalLengthEv.exit235
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.ek

bb.ec:                                            ; preds = %.loopexit366, %.loopexit.split-lp367, %.loopexit371, %.loopexit.split-lp372, %.loopexit376, %.loopexit.split-lp377, %bb.eb, %bb.z, %.body180, %bb.bc, %bb.ck, %bb.at, %.body, %bb.k
  %.pn115 = phi { ptr, i32 } [ %i.cj, %bb.k ], [ %.pn113, %.body ], [ %.pn110, %.body180 ], [ %i.ex, %bb.z ], [ %lpad.loopexit.split-lp374, %.loopexit.split-lp372 ], [ %i.gw, %bb.at ], [ %lpad.loopexit.split-lp379, %.loopexit.split-lp377 ], [ %i.ir, %bb.bc ], [ %i.oj, %bb.ck ], [ %.pn101.pn, %bb.eb ], [ %lpad.loopexit378, %.loopexit376 ], [ %lpad.loopexit373, %.loopexit371 ], [ %lpad.loopexit368, %.loopexit366 ], [ %lpad.loopexit.split-lp369, %.loopexit.split-lp367 ] ; 3 uses
  %.1182 = extractvalue { ptr, i32 } %.pn115, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %i.tg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12out_of_range) #36
  %i.th = icmp eq i32 %.1182, %i.tg
  br i1 %i.th, label %bb.ed, label %bb.eq

bb.ed:                                            ; preds = %bb.ec
  %.11 = extractvalue { ptr, i32 } %.pn115, 0
  %i.ti = call ptr @__cxa_begin_catch(ptr %.11) #36 ; 0 uses
  %i.tj = load ptr, ptr @_ZZN5folly14AsyncSSLSocket26clientHelloParsingCallbackEiiiPKvmP6ssl_stPvE8vlocal__, align 8, !tbaa !10767 ; 2 uses
  %i.tk = icmp eq ptr %i.tj, null
  br i1 %i.tk, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.tl = invoke noundef zeroext i1 @_ZN6google11InitVLOG3__EPNS_8SiteFlagEPiPKci(ptr noundef nonnull @_ZZN5folly14AsyncSSLSocket26clientHelloParsingCallbackEiiiPKvmP6ssl_stPvE8vlocal__, ptr noundef nonnull @_ZN3fLI7FLAGS_vE, ptr noundef nonnull @.str.1, i32 noundef 4)
          to label %bb.eg unwind label %bb.el

bb.ef:                                            ; preds = %bb.ed
  %i.tm = load i32, ptr %i.tj, align 4, !tbaa !7
  %i.tn = icmp sgt i32 %i.tm, 3
  br i1 %i.tn, label %bb.eh, label %.critedge122

bb.eg:                                            ; preds = %bb.ee
  br i1 %i.tl, label %bb.eh, label %.critedge122

bb.eh:                                            ; preds = %bb.ef, %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  invoke void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull @.str.1, i32 noundef 2233)
          to label %bb.ei unwind label %bb.em

bb.ei:                                            ; preds = %bb.eh
  %i.to = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %12)
          to label %bb.ej unwind label %bb.en     ; 4 uses

bb.ej:                                            ; preds = %bb.ei
  %i.tp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.to, ptr noundef nonnull @.str.149, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.en ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ej
  %i.tq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.to, ptr noundef nonnull @.str.150, i64 noundef 29)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit324 unwind label %bb.en ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit324: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.tr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.to, ptr noundef nonnull @.str.151, i64 noundef 23)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit326 unwind label %bb.en ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit326: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit324
  %i.ts = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.to, ptr noundef %6)
          to label %.critedge121 unwind label %bb.en ; 0 uses

.critedge121:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit326
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %12) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %.critedge122

.critedge122:                                     ; preds = %bb.ef, %bb.eg, %.critedge121
  call void @__cxa_end_catch()
  br label %bb.ek

bb.ek:                                            ; preds = %.loopexit365, %.critedge122
  call void @SSL_set_msg_callback(ptr noundef %5, ptr noundef null)
  %i.tt = call i64 @SSL_ctrl(ptr noundef %5, i32 noundef 16, i64 noundef 0, ptr noundef null) ; 0 uses
  %i.tu = load ptr, ptr %i.w, align 8, !tbaa !10929 ; 5 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 24
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !10976, !noalias !12387 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tu, i64 32
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !10986, !noalias !12387 ; 3 uses
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !10987, !noalias !12387 ; 2 uses
  %.not.i.i.i.i.i328 = icmp eq ptr %i.tw, %i.tz
  %.phi.trans.insert.i.i.i329 = getelementptr inbounds nuw i8, ptr %i.tu, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i.i328, label %_ZN5folly10IOBufQueue4moveEv.exit.i.i332, label %_ZN5folly10IOBufQueue4moveEv.exit.thread.i.i330

_ZN5folly10IOBufQueue4moveEv.exit.thread.i.i330:  ; preds = %bb.ek
  %i.ua = load ptr, ptr %.phi.trans.insert.i.i.i329, align 8, !noalias !12392 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 40
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !10531, !noalias !12387 ; 2 uses
  %i.ud = ptrtoint ptr %i.tz to i64
  %i.ue = ptrtoint ptr %i.tw to i64
  %i.uf = sub i64 %i.ud, %i.ue
  %i.ug = load i64, ptr %i.uc, align 8, !tbaa !10533, !noalias !12387
  %i.uh = add i64 %i.uf, %i.ug
  store i64 %i.uh, ptr %i.uc, align 8, !tbaa !10533, !noalias !12387
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ui, i8 0, i64 24, i1 false), !noalias !12392
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ty, i8 0, i64 16, i1 false), !noalias !12392
  br label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i331

_ZN5folly10IOBufQueue4moveEv.exit.i.i332:         ; preds = %bb.ek
  %.pre.i.i.i333 = load i64, ptr %.phi.trans.insert.i.i.i329, align 8, !tbaa !10525, !noalias !12392 ; 2 uses
  %i.uj = inttoptr i64 %.pre.i.i.i333 to ptr
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uk, i8 0, i64 24, i1 false), !noalias !12392
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ty, i8 0, i64 16, i1 false), !noalias !12392
  %.not.i.i.i334 = icmp eq i64 %.pre.i.i.i333, 0
  br i1 %.not.i.i.i334, label %_ZN5folly14AsyncSSLSocket23resetClientHelloParsingEP6ssl_st.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i331

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i331: ; preds = %_ZN5folly10IOBufQueue4moveEv.exit.i.i332, %_ZN5folly10IOBufQueue4moveEv.exit.thread.i.i330
  %i.ul = phi ptr [ %i.ua, %_ZN5folly10IOBufQueue4moveEv.exit.thread.i.i330 ], [ %i.uj, %_ZN5folly10IOBufQueue4moveEv.exit.i.i332 ] ; 2 uses
  call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ul) #36
  call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.ul) #36
  br label %_ZN5folly14AsyncSSLSocket23resetClientHelloParsingEP6ssl_st.exit

.critedge:                                        ; preds = %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i128, %_ZN5folly10IOBufQueue4moveEv.exit.i.i129, %_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev.exit143
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %_ZN5folly14AsyncSSLSocket23resetClientHelloParsingEP6ssl_st.exit

_ZN5folly14AsyncSSLSocket23resetClientHelloParsingEP6ssl_st.exit: ; preds = %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i331, %_ZN5folly10IOBufQueue4moveEv.exit.i.i332, %.thread, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i.i, %_ZN5folly10IOBufQueue4moveEv.exit.i.i, %.critedge, %bb.c
  ret void

bb.el:                                            ; preds = %bb.ee
  %i.um = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.em:                                            ; preds = %bb.eh
  %i.un = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.en:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit326, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit324, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.ej, %bb.ei
  %i.uo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %12) #36
  br label %bb.eo

bb.eo:                                            ; preds = %bb.em, %bb.en
  %.pn117 = phi { ptr, i32 } [ %i.uo, %bb.en ], [ %i.un, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.el
  %.pn117.pn = phi { ptr, i32 } [ %.pn117, %bb.eo ], [ %i.um, %bb.el ]
  invoke void @__cxa_end_catch()
          to label %bb.eq unwind label %bb.er

bb.eq:                                            ; preds = %bb.ep, %bb.ec, %bb.j
  %.merged = phi { ptr, i32 } [ %i.ci, %bb.j ], [ %.pn115, %bb.ec ], [ %.pn117.pn, %bb.ep ]
  resume { ptr, i32 } %.merged

bb.er:                                            ; preds = %bb.ep
  %i.up = landingpad { ptr, i32 }
          catch ptr null
  %i.uq = extractvalue { ptr, i32 } %i.up, 0
  call void @__clang_call_terminate(ptr %i.uq) #38
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly14IndestructibleINS_20AsyncSocketExceptionEE7StorageC2IJNS1_24AsyncSocketExceptionTypeERA25_KcES1_EESt10in_place_tDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(25) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !224    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !10517
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #36 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #40
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !10573

.noexc11.i:                                       ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #40
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #39 ; 2 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !10511
  store i64 %i.c, ptr %i.b, align 8, !tbaa !10516
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.c, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %2, align 1, !tbaa !10516
  store i8 %i.j, ptr %i.i, align 1, !tbaa !10516
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %2, i64 %i.c, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !10515
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !10516
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZN5folly20AsyncSocketException10getMessageENS0_24AsyncSocketExceptionTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0)
          to label %.noexc8 unwind label %bb.i

.noexc8:                                          ; preds = %bb.f
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc8
  %i.m = load ptr, ptr %3, align 8, !tbaa !10511  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.p = load i64, ptr %i.n, align 8, !tbaa !10516
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.h:                                             ; preds = %.noexc8
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %3, align 8, !tbaa !10511  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.h
  %i.v = load i64, ptr %i.t, align 8, !tbaa !10516
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly20AsyncSocketExceptionE, i64 16), ptr %0, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.a, ptr %i.x, align 8, !tbaa !10823
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.y, align 4, !tbaa !10828
  %i.z = load ptr, ptr %4, align 8, !tbaa !10511  ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.b
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !10516
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void

bb.i:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ]
  %i.ae = load ptr, ptr %4, align 8, !tbaa !10511 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.b
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

end_hunk_2
begin_hunk_3_@_ZN5folly13fbstring_coreIcE10RefCounted6createEPm:bb.a
  br i1 %.not.i.i.i.i, label %_ZN5folly10canNallocxEv.exit.i, label %bb.j, !prof !10573

bb.j:                                             ; preds = %bb.i
  %i.l = icmp sgt i8 %i.k, 0
  br i1 %i.l, label %bb.k, label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly10canNallocxEv.exit.i:                   ; preds = %bb.i
  %i.m = tail call noundef zeroext i1 @_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEv() #43
  br i1 %i.m, label %bb.k, label %_ZN5folly14goodMallocSizeEm.exit

bb.k:                                             ; preds = %_ZN5folly10canNallocxEv.exit.i, %bb.j
  %i.n = tail call i64 @nallocx(i64 noundef %i.h, i32 noundef 0) #36 ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  %i.o = select i1 %.not.i, i64 %i.h, i64 %i.n
  br label %_ZN5folly14goodMallocSizeEm.exit

_ZN5folly14goodMallocSizeEm.exit:                 ; preds = %bb.h, %bb.j, %_ZN5folly10canNallocxEv.exit.i, %bb.k
  %.0.i10 = phi i64 [ 0, %bb.h ], [ %i.o, %bb.k ], [ %i.h, %_ZN5folly10canNallocxEv.exit.i ], [ %i.h, %bb.j ] ; 2 uses
  %i.p = tail call noalias ptr @malloc(i64 noundef %.0.i10) #44 ; 3 uses
  %.not.i11 = icmp eq ptr %i.p, null
  br i1 %.not.i11, label %bb.l, label %_ZN5folly13checkedMallocEm.exit

bb.l:                                             ; preds = %_ZN5folly14goodMallocSizeEm.exit
  tail call void @_ZN5folly6detail16throw_exception_ISt9bad_allocJEEEvDpT0_() #24
  unreachable

_ZN5folly13checkedMallocEm.exit:                  ; preds = %_ZN5folly14goodMallocSizeEm.exit
  store atomic i64 1, ptr %i.p release, align 8
  %i.q = add i64 %.0.i10, -9
  store i64 %i.q, ptr %0, align 8, !tbaa !226
  ret ptr %i.p

bb.m:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionISt12length_errorEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #27 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #36 ; 2 uses
  tail call void @_ZNSt12length_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #36
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #40
  unreachable
}

declare void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #30

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12length_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare void @_ZN5folly8demangleEPKc(ptr dead_on_unwind writable sret(%"class.folly::basic_fbstring") align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZN5folly13fbstring_coreIcE18destroyMediumLargeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.b = load i8, ptr %i.a, align 1, !tbaa !10516
  %i.c = icmp slt i8 %i.b, -64
  %i.d = load ptr, ptr %0, align 8, !tbaa !10516  ; 2 uses
  br i1 %i.c, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %i.f = atomicrmw sub ptr %i.e, i64 1 acq_rel, align 8
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split: ; preds = %bb.b, %bb.a
  %.sink = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]
  tail call void @free(ptr noundef %.sink) #36
  br label %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit

_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit: ; preds = %_ZN5folly13fbstring_coreIcE10RefCounted13decrementRefsEPc.exit.sink.split, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #31

; Function Attrs: nounwind
declare noundef ptr @_ZN5folly6detail25exception_ptr_get_object_ERKNSt15__exception_ptr13exception_ptrEPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail28make_exception_ptr_with_arg_4makeIZNKS_26make_exception_ptr_with_fn4makeINS_36CertificateIdentityVerifierExceptionEJRS5_EEEDaDpOT0_EUlvE_S5_EEvPvSB_(ptr noundef %0, ptr noundef %1) #2 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12422)
  %i.a = load ptr, ptr %1, align 8, !tbaa !12425, !noalias !12422, !nonnull !455, !align !12428
  tail call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a) #36
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly36CertificateIdentityVerifierExceptionE, i64 16), ptr %0, align 8, !tbaa !16, !alias.scope !12422
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly6detail28make_exception_ptr_with_arg_5dtor_INS_36CertificateIdentityVerifierExceptionEEEvPv(ptr noundef %0) #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = load ptr, ptr %i.a, align 8
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(16) %0) #36, !call_target !12429
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5folly6detail24make_exception_ptr_with_ERKNS0_28make_exception_ptr_with_arg_EPv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly36CertificateIdentityVerifierExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #37
  ret void
}

declare void @_ZN5folly11AsyncSocket14failByteEventsERKNS_20AsyncSocketExceptionE(ptr noundef nonnull align 8 dereferenceable(1169), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #0

declare void @_ZN5folly11AsyncSocket16enableByteEventsEv(ptr noundef nonnull align 8 dereferenceable(1169)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14AsyncSSLSocket24enableClientHelloParsingEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1968) initializes((1788, 1789)) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.folly::IOBufQueue::Options", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1788
  store i8 1, ptr %i.a, align 4, !tbaa !12436
  %i.b = tail call noalias noundef nonnull dereferenceable(248) ptr @_Znwm(i64 noundef 248) #39, !noalias !12437 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(248) %i.b, i8 0, i64 248, i1 false), !noalias !12437
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36, !noalias !12437
  store i8 0, ptr %1, align 1, !tbaa !10974, !noalias !12437
  invoke void @_ZN5folly10IOBufQueueC1ERKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(248) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %_ZSt11make_uniqueIN5folly3ssl15ClientHelloInfoEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !12437

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 248) #37, !noalias !12437
  resume { ptr, i32 } %i.c

_ZSt11make_uniqueIN5folly3ssl15ClientHelloInfoEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36, !noalias !12437
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.d, i8 0, i64 120, i1 false), !noalias !12437
  store ptr %i.f, ptr %i.e, align 8, !tbaa !10517, !noalias !12437
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store i64 0, ptr %i.g, align 8, !tbaa !10515, !noalias !12437
  store i8 0, ptr %i.f, align 8, !tbaa !10516, !noalias !12437
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false), !noalias !12437
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1792 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10929 ; 3 uses
  store ptr %i.b, ptr %i.i, align 8, !tbaa !10929
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5folly3ssl15ClientHelloInfoESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5folly3ssl15ClientHelloInfoEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN5folly3ssl15ClientHelloInfoEEclEPS2_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueIN5folly3ssl15ClientHelloInfoEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @_ZN5folly3ssl15ClientHelloInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.j) #36
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 248) #37
  br label %_ZNSt10unique_ptrIN5folly3ssl15ClientHelloInfoESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5folly3ssl15ClientHelloInfoESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5folly3ssl15ClientHelloInfoEEclEPS2_.exit.i.i.i.i, %_ZSt11make_uniqueIN5folly3ssl15ClientHelloInfoEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14AsyncSSLSocket23resetClientHelloParsingEP6ssl_st(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1968) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @SSL_set_msg_callback(ptr noundef %1, ptr noundef null)
  %i.a = tail call i64 @SSL_ctrl(ptr noundef %1, i32 noundef 16, i64 noundef 0, ptr noundef null) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10929 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10976, !noalias !12440 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10986, !noalias !12440 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10987, !noalias !12440 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.h
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZN5folly10IOBufQueue4moveEv.exit.i, label %_ZN5folly10IOBufQueue4moveEv.exit.thread.i

_ZN5folly10IOBufQueue4moveEv.exit.thread.i:       ; preds = %bb.a
  %i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !12445 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !10531, !noalias !12440 ; 2 uses
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.e to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = load i64, ptr %i.k, align 8, !tbaa !10533, !noalias !12440
  %i.p = add i64 %i.n, %i.o
  store i64 %i.p, ptr %i.k, align 8, !tbaa !10533, !noalias !12440
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false), !noalias !12445
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !noalias !12445
  br label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i

_ZN5folly10IOBufQueue4moveEv.exit.i:              ; preds = %bb.a
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !10525, !noalias !12445 ; 2 uses
  %i.r = inttoptr i64 %.pre.i.i to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false), !noalias !12445
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false), !noalias !12445
  %.not.i.i = icmp eq i64 %.pre.i.i, 0
  br i1 %.not.i.i, label %_ZN5folly10IOBufQueue5resetEv.exit, label %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i: ; preds = %_ZN5folly10IOBufQueue4moveEv.exit.i, %_ZN5folly10IOBufQueue4moveEv.exit.thread.i
  %i.t = phi ptr [ %i.i, %_ZN5folly10IOBufQueue4moveEv.exit.thread.i ], [ %i.r, %_ZN5folly10IOBufQueue4moveEv.exit.i ] ; 2 uses
  tail call void @_ZN5folly5IOBufD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.t) #36
  tail call void @_ZN5folly5IOBufdlEPv(ptr noundef nonnull %i.t) #36
  br label %_ZN5folly10IOBufQueue5resetEv.exit

_ZN5folly10IOBufQueue5resetEv.exit:               ; preds = %_ZN5folly10IOBufQueue4moveEv.exit.i, %_ZNKSt14default_deleteIN5folly5IOBufEEclEPS1_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly14AsyncSSLSocket16parseClientAlpnsEPS0_RNS_2io6CursorERt(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr nofree noundef nonnull align 2 captures(none) dereferenceable(2) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10972 ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 2
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10973
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.c, !prof !11003

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store ptr %i.i, ptr %i.a, align 8, !tbaa !10972
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE8skipSlowEm(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef 2)
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit: ; preds = %bb.b, %bb.c
  %i.j = load i16, ptr %2, align 2, !tbaa !12358
  %i.k = add i16 %i.j, -2                         ; 3 uses
  store i16 %i.k, ptr %2, align 2, !tbaa !12358
  %.not17 = icmp eq i16 %i.k, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE4skipEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = phi i16 [ %i.k, %.lr.ph ], [ %.pr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !10972 ; 3 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 1
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !10973
  %i.t = ptrtoint ptr %i.s to i64
  %.not.i.i = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.i, label %bb.f, label %bb.e, !prof !10573

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i.i = load i8, ptr %i.p, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store ptr %i.u, ptr %i.a, align 8, !tbaa !10972
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE6readBEIhEET_v.exit

bb.f:                                             ; preds = %bb.d
  %i.v = call noundef zeroext i8 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE8readSlowIhEET_v(ptr noundef nonnull align 8 dereferenceable(56) %1)
  %.pre = load i16, ptr %2, align 2, !tbaa !12358
  br label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE6readBEIhEET_v.exit

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE6readBEIhEET_v.exit: ; preds = %bb.e, %bb.f
  %i.w = phi i16 [ %i.o, %bb.e ], [ %.pre, %bb.f ]
  %.0.i.i = phi i8 [ %.0.copyload.i.i.i, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.x = add i16 %i.w, -1
  store i16 %i.x, ptr %2, align 2, !tbaa !12358
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.y = zext i8 %.0.i.i to i64
  call void @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE15readFixedStringB5cxx11Em(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.y)
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !10929 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 232 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !10937 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !10939
  %.not.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE6readBEIhEET_v.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !10517
  %i.af = load ptr, ptr %3, align 8, !tbaa !10511 ; 2 uses
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !10515 ; 8 uses
  %i.ah = icmp ugt i64 %i.ag, 15
  br i1 %i.ah, label %bb.h, label %._crit_edge.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp slt i64 %i.ag, 0
  br i1 %i.ai, label %.noexc.i.i.i, label %bb.i

.noexc.i.i.i:                                     ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #40
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.aj = add nuw i64 %i.ag, 1                    ; 2 uses
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !10573

.noexc6.i.i.i:                                    ; preds = %bb.i
  invoke void @_ZSt17__throw_bad_allocv() #40
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.i
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #39
          to label %.noexc12 unwind label %.loopexit ; 2 uses

.noexc12:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.al, ptr %i.ab, align 8, !tbaa !10511
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !10516
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc12, %bb.g
  %i.am = phi ptr [ %i.al, %.noexc12 ], [ %i.ae, %bb.g ] ; 3 uses
  switch i64 %i.ag, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.an = load i8, ptr %i.af, align 1, !tbaa !10516
  store i8 %i.an, ptr %i.am, align 1, !tbaa !10516
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr align 1 %i.af, i64 %i.ag, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.ag, ptr %i.ao, align 8, !tbaa !10515
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ag
  store i8 0, ptr %i.ap, align 1, !tbaa !10516
  %i.aq = load ptr, ptr %i.aa, align 8, !tbaa !10937
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %i.ar, ptr %i.aa, align 8, !tbaa !10937
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.l:                                             ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE6readBEIhEET_v.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 224
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %.loopexit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i, %bb.l
  %i.at = zext i8 %.0.i.i to i16
  %i.au = load i16, ptr %2, align 2, !tbaa !12358
  %i.av = sub i16 %i.au, %i.at                    ; 2 uses
  store i16 %i.av, ptr %2, align 2, !tbaa !12358
  %i.aw = load ptr, ptr %3, align 8, !tbaa !10511 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.n
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.ay = load i64, ptr %i.n, align 8, !tbaa !10516
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #37
  %.pr.pre = load i16, ptr %2, align 2, !tbaa !12358
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pr = phi i16 [ %.pr.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.av, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %.not = icmp eq i16 %.pr, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !12446

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
end_hunk_3
