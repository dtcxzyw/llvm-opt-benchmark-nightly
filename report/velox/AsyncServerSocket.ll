inline.NumInlined: 2640
inline.NumDeleted: 1337
begin_hunk_0_@_ZN5folly17AsyncServerSocket12enterBackoffEv:bb.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly17AsyncServerSocket13dispatchErrorEPKci(ptr noundef nonnull align 8 captures(none) dereferenceable(352) %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.410, align 8            ; 4 uses
  %4 = alloca %"struct.folly::AsyncServerSocket::ErrorMessage", align 8 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN5folly17AsyncServerSocket13dispatchErrorEPKci:bb.a
  %9 = alloca %"class.folly::exception_wrapper", align 8 ; 4 uses
  %10 = alloca %"class.std::variant", align 8     ; 11 uses
  %11 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11039 ; 3 uses
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %13 = zext i32 %i.b to i64
  %14 = load ptr, ptr %12, align 8, !tbaa !10776  ; 2 uses
  %15 = getelementptr inbounds nuw [24 x i8], ptr %14, i64 %13 ; 3 uses
  %16 = add i32 %i.b, 1                           ; 2 uses
  store i32 %16, ptr %i.a, align 8, !tbaa !11039
  %17 = zext i32 %16 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %18 = load ptr, ptr %i.c, align 8, !tbaa !10766
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %14 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 24
  %.not.i = icmp ugt i64 %22, %17
  br i1 %.not.i, label %_ZN5folly17AsyncServerSocket12nextCallbackENS_13NetworkSocketE.exit, label %23

23:                                               ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !11039
  br label %_ZN5folly17AsyncServerSocket12nextCallbackENS_13NetworkSocketE.exit

_ZN5folly17AsyncServerSocket12nextCallbackENS_13NetworkSocketE.exit: ; preds = %bb.a, %23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  store i32 %2, ptr %4, align 8, !tbaa !11313
  %24 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 12 uses
  store ptr %25, ptr %24, align 8, !tbaa !10667
  %26 = icmp eq ptr %1, null
  br i1 %26, label %.noexc, label %bb.b

.noexc:                                           ; preds = %_ZN5folly17AsyncServerSocket12nextCallbackENS_13NetworkSocketE.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.50) #51
  unreachable

bb.b:                                             ; preds = %_ZN5folly17AsyncServerSocket12nextCallbackENS_13NetworkSocketE.exit
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #39 ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.c, label %._crit_edge.i.i
end_hunk_1
begin_hunk_2_@_ZN5folly17AsyncServerSocket13dispatchErrorEPKci:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #53 ; 2 uses
  store ptr %i.i, ptr %24, align 8, !tbaa !10673
  store i64 %i.d, ptr %25, align 8, !tbaa !10672
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.b
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %25, %bb.b ] ; 3 uses
  switch i64 %i.d, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
end_hunk_2
begin_hunk_3_@_ZN5folly17AsyncServerSocket13dispatchErrorEPKci:bb.a
  store i64 %i.d, ptr %i.l, align 8, !tbaa !10670
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !10672
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 8
  %27 = load ptr, ptr %i.o, align 8, !tbaa !10764 ; 2 uses
  %28 = icmp eq ptr %27, null
  %29 = load ptr, ptr %i.n, align 8
  %30 = icmp eq ptr %27, %29
  %or.cond116 = select i1 %28, i1 true, i1 %30
  br i1 %or.cond116, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %31 = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 5 uses
  %32 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %33 = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %35 = getelementptr inbounds nuw i8, ptr %10, i64 40
  br label %bb.aa

bb.i:                                             ; preds = %bb.as, %bb.g
  %.0.lcssa = phi ptr [ %15, %bb.g ], [ %38, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
end_hunk_3
begin_hunk_4_@_ZN5folly17AsyncServerSocket13dispatchErrorEPKci:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  %i.bn = load ptr, ptr %.0.lcssa, align 8, !tbaa !10760 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11324)
  %i.bo = load i64, ptr %5, align 8, !noalias !11324
  store i64 %i.bo, ptr %9, align 8, !alias.scope !11324
end_hunk_4
begin_hunk_5_@_ZN5folly17AsyncServerSocket13dispatchErrorEPKci:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.at

bb.aa:                                            ; preds = %bb.h, %bb.as
  %.0117 = phi ptr [ %15, %bb.h ], [ %38, %bb.as ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0117, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !10765 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  %i.ch = load i32, ptr %4, align 8, !tbaa !11313
  store i32 %i.ch, ptr %10, align 8, !tbaa !11313
  store ptr %31, ptr %i.p, align 8, !tbaa !10667
  %i.ci = load ptr, ptr %24, align 8, !tbaa !10673 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %25
  br i1 %i.cj, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
end_hunk_5
begin_hunk_6_@_ZN5folly17AsyncServerSocket13dispatchErrorEPKci:bb.a
  %i.cl = icmp ult i64 %i.ck, 16
  call void @llvm.assume(i1 %i.cl)
  %i.cm = add nuw nsw i64 %i.ck, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, ptr noundef nonnull align 8 dereferenceable(1) %25, i64 %i.cm, i1 false)
  br label %_ZNSt7variantIJN5folly17AsyncServerSocket14NewConnMessageENS1_12ErrorMessageEEEC2IS3_vvS3_vEEOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aa
  store ptr %i.ci, ptr %i.p, align 8, !tbaa !10673
  %i.cn = load i64, ptr %25, align 8, !tbaa !10672
  store i64 %i.cn, ptr %31, align 8, !tbaa !10672
  %.pre = load i64, ptr %i.l, align 8, !tbaa !10670
  br label %_ZNSt7variantIJN5folly17AsyncServerSocket14NewConnMessageENS1_12ErrorMessageEEEC2IS3_vvS3_vEEOT_.exit

_ZNSt7variantIJN5folly17AsyncServerSocket14NewConnMessageENS1_12ErrorMessageEEEC2IS3_vvS3_vEEOT_.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.co = phi i64 [ %i.ck, %bb.ab ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %i.co, ptr %32, align 8, !tbaa !10670
  store ptr %25, ptr %24, align 8, !tbaa !10673
  store i64 0, ptr %i.l, align 8, !tbaa !10670
  store i8 0, ptr %25, align 8, !tbaa !10672
  store i8 1, ptr %33, align 8, !tbaa !10982
  %i.cp = load i32, ptr %34, align 8, !tbaa !11038
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 320 ; 2 uses
  %i.cr = load atomic i64, ptr %i.cq monotonic, align 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 464 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5folly17AsyncServerSocket13dispatchErrorEPKci:bb.a

_ZN5folly32EventBaseAtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEENS2_14RemoteAcceptor8ConsumerEE13tryPutMessageEOS5_j.exit: ; preds = %bb.ac, %.noexc72, %_ZNSt7variantIJN5folly17AsyncServerSocket14NewConnMessageENS1_12ErrorMessageEEEC2IS3_vvS3_vEEOT_.exit, %_ZN5folly23AtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEEE7tryPushEOS5_j.exit.i
  %i.de = phi i1 [ true, %_ZN5folly23AtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEEE7tryPushEOS5_j.exit.i ], [ true, %.noexc72 ], [ false, %_ZNSt7variantIJN5folly17AsyncServerSocket14NewConnMessageENS1_12ErrorMessageEEEC2IS3_vvS3_vEEOT_.exit ], [ false, %bb.ac ]
  %i.df = load i8, ptr %33, align 8, !tbaa !10982
  switch i8 %i.df, label %bb.ah [
    i8 -1, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5folly17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEED2Ev.exit
    i8 0, label %bb.ae
  ], !prof !10984

bb.ae:                                            ; preds = %_ZN5folly32EventBaseAtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEENS2_14RemoteAcceptor8ConsumerEE13tryPutMessageEOS5_j.exit
  %i.dg = load i8, ptr %35, align 8, !tbaa !10696
  %cond.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.dg, 1
  br i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.af, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5folly17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEED2Ev.exit, !prof !10698

bb.af:                                            ; preds = %bb.ae
  %i.dh = load ptr, ptr %i.p, align 8, !tbaa !10699 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5folly17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEED2Ev.exit, label %bb.ag

end_hunk_7
begin_hunk_8_@_ZN5folly17AsyncServerSocket13dispatchErrorEPKci:bb.a
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5folly17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEED2Ev.exit

bb.ah:                                            ; preds = %_ZN5folly32EventBaseAtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEENS2_14RemoteAcceptor8ConsumerEE13tryPutMessageEOS5_j.exit
  %i.dj = load ptr, ptr %i.p, align 8, !tbaa !10673 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %31
  br i1 %i.dk, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5folly17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  %i.dl = load i64, ptr %31, align 8, !tbaa !10672
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #50
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5folly17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEED2Ev.exit
end_hunk_8
begin_hunk_9_@_ZN5folly17AsyncServerSocket13dispatchErrorEPKci:bb.a
  br label %bb.at

bb.aj:                                            ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5folly17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEED2Ev.exit
  %i.do = load i32, ptr %i.a, align 8, !tbaa !11039 ; 3 uses
  %i.dp = icmp eq i32 %i.do, %i.b
  br i1 %i.dp, label %.preheader106, label %bb.as

.preheader106:                                    ; preds = %bb.aj
  %i.dq = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #39
end_hunk_9
begin_hunk_10_@_ZN5folly17AsyncServerSocket13dispatchErrorEPKci:bb.a
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dz = load ptr, ptr %24, align 8, !tbaa !10673
  %i.ea = load i64, ptr %i.l, align 8, !tbaa !10670
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef %i.dz, i64 noundef %i.ea)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.aq ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN5folly17AsyncServerSocket13dispatchErrorEPKci:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  br label %bb.at

bb.as:                                            ; preds = %bb.aj
  %36 = zext i32 %i.do to i64
  %37 = load ptr, ptr %12, align 8, !tbaa !10776  ; 2 uses
  %38 = getelementptr inbounds nuw [24 x i8], ptr %37, i64 %36 ; 3 uses
  %39 = add i32 %i.do, 1                          ; 2 uses
  %40 = zext i32 %39 to i64
  %41 = load ptr, ptr %i.c, align 8, !tbaa !10766
  %42 = ptrtoint ptr %41 to i64
  %43 = ptrtoint ptr %37 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 24
  %.not.i81 = icmp ugt i64 %45, %40
  %spec.store.select = select i1 %.not.i81, i32 %39, i32 0
  store i32 %spec.store.select, ptr %i.a, align 8
  %46 = getelementptr inbounds nuw i8, ptr %38, i64 8
  %47 = load ptr, ptr %46, align 8, !tbaa !10764  ; 2 uses
  %48 = icmp eq ptr %47, null
  %49 = load ptr, ptr %i.n, align 8
  %50 = icmp eq ptr %47, %49
  %or.cond = select i1 %48, i1 true, i1 %50
  br i1 %or.cond, label %bb.i, label %bb.aa

.loopexit107:                                     ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5folly17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEED2Ev.exit, %bb.ak, %bb.ao, %.preheader106, %_ZN5folly17exception_wrapperD2Ev.exit61
  %i.eg = load ptr, ptr %24, align 8, !tbaa !10673 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %25
  br i1 %i.eh, label %_ZN5folly17AsyncServerSocket12ErrorMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80: ; preds = %.loopexit107
  %i.ei = load i64, ptr %25, align 8, !tbaa !10672
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #50
  br label %_ZN5folly17AsyncServerSocket12ErrorMessageD2Ev.exit
end_hunk_11
begin_hunk_12_@_ZN5folly17AsyncServerSocket13dispatchErrorEPKci:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret void

bb.at:                                            ; preds = %bb.ar, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %.pn33.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %i.dn, %bb.ai ], [ %.pn, %bb.ar ]
  %i.ek = load ptr, ptr %24, align 8, !tbaa !10673 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %25
  br i1 %i.el, label %_ZN5folly17AsyncServerSocket12ErrorMessageD2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83: ; preds = %bb.at
  %i.em = load i64, ptr %25, align 8, !tbaa !10672
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #50
  br label %_ZN5folly17AsyncServerSocket12ErrorMessageD2Ev.exit86
end_hunk_12
begin_hunk_13_@_ZN5folly17AsyncServerSocket14dispatchSocketENS_13NetworkSocketEONS_13SocketAddressE:bb.a
  store i8 0, ptr %i.p, align 8, !tbaa !10696
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  store ptr %9, ptr %7, align 8, !tbaa !11327
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Copy_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS5_16ExternalUnixAddrENS5_9VsockAddrEEEaSERKS9_EUlOT_T0_E_JRKSt7variantIJS6_S7_S8_EEEEDcOSE_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN5folly13SocketAddressC2ERKS0_.exit unwind label %bb.d

end_hunk_13
begin_hunk_14_@_ZN5folly17AsyncServerSocket14dispatchSocketENS_13NetworkSocketEONS_13SocketAddressE:bb.a
  store i8 0, ptr %i.aa, align 8, !tbaa !10696
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  store ptr %i.x, ptr %5, align 8, !tbaa !11330
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS5_16ExternalUnixAddrENS5_9VsockAddrEEEaSEOS9_EUlOT_T0_E_JRSt7variantIJS6_S7_S8_EEEEDcOSD_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %_ZN5folly13SocketAddressC2EOS0_.exit unwind label %bb.i

end_hunk_14
begin_hunk_15_@_ZN5folly17AsyncServerSocket14dispatchSocketENS_13NetworkSocketEONS_13SocketAddressE:bb.a
  store i8 0, ptr %i.ah, align 8, !tbaa !10696
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  store ptr %i.af, ptr %3, align 8, !tbaa !11330
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS5_16ExternalUnixAddrENS5_9VsockAddrEEEaSEOS9_EUlOT_T0_E_JRSt7variantIJS6_S7_S8_EEEEDcOSD_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %_ZNSt7variantIJN5folly17AsyncServerSocket14NewConnMessageENS1_12ErrorMessageEEEC2IS2_vvS2_vEEOT_.exit unwind label %bb.l

end_hunk_15
begin_hunk_16_@_ZN5folly17AsyncServerSocket14dispatchSocketENS_13NetworkSocketEONS_13SocketAddressE:bb.a
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !14
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, i32 %1, ptr noundef nonnull align 8 dereferenceable(40) %9) #39, !call_target !11333
  br label %bb.an

bb.u:                                             ; preds = %bb.am
end_hunk_16
begin_hunk_17_@_ZN5folly17AsyncServerSocket14dispatchSocketENS_13NetworkSocketEONS_13SocketAddressE:bb.a

bb.am:                                            ; preds = %bb.y
  %i.do = invoke noundef ptr @_ZN5folly17AsyncServerSocket12nextCallbackENS_13NetworkSocketE(ptr noundef nonnull align 8 dereferenceable(352) %0, i32 %1)
          to label %bb.j unwind label %bb.u, !llvm.loop !11334

bb.an:                                            ; preds = %bb.s, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dp = load i8, ptr %i.aa, align 8, !tbaa !10696
end_hunk_17
begin_hunk_18_@_ZN5folly17AsyncServerSocket12nextCallbackENS_13NetworkSocketE:bb.a
  store i32 %1, ptr %2, align 4
  store ptr %0, ptr %i.a, align 8, !tbaa !10793
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11335
  %i.h = call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %2), !inline_history !11336 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = icmp sgt i32 %i.h, -1
end_hunk_18
begin_hunk_19_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Copy_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS5_16ExternalUnixAddrENS5_9VsockAddrEEEaSERKS9_EUlOT_T0_E_JRKSt7variantIJS6_S7_S8_EEEEDcOSE_DpOT1_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !10696
  %i.c = load ptr, ptr %0, align 8, !tbaa !11327  ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 8 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !10696 ; 4 uses
  switch i8 %i.b, label %bb.p [
end_hunk_19
begin_hunk_20_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Copy_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS5_16ExternalUnixAddrENS5_9VsockAddrEEEaSERKS9_EUlOT_T0_E_JRKSt7variantIJS6_S7_S8_EEEEDcOSE_DpOT1_:bb.a
    i8 0, label %bb.c
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEJRKS4_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
    i8 1, label %bb.d
  ], !prof !11337

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %i.c, ptr noundef nonnull align 8 dereferenceable(33) %1, i64 26, i1 false), !tbaa.struct !10694
end_hunk_20
begin_hunk_21_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Copy_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS5_16ExternalUnixAddrENS5_9VsockAddrEEEaSERKS9_EUlOT_T0_E_JRKSt7variantIJS6_S7_S8_EEEEDcOSE_DpOT1_:bb.a
  switch i8 %i.e, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i10 [
    i8 1, label %bb.g
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEJRKS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !11338

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %1
end_hunk_21
begin_hunk_22_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Copy_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS5_16ExternalUnixAddrENS5_9VsockAddrEEEaSERKS9_EUlOT_T0_E_JRKSt7variantIJS6_S7_S8_EEEEDcOSE_DpOT1_:bb.a
_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEJRKS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i10, %bb.f
  %i.n = tail call noalias noundef nonnull dereferenceable(110) ptr @_Znwm(i64 noundef 110) #53 ; 3 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !10699
  store i16 1, ptr %i.n, align 2, !tbaa !11339
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !11237
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_22
begin_hunk_23_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Copy_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS5_16ExternalUnixAddrENS5_9VsockAddrEEEaSERKS9_EUlOT_T0_E_JRKSt7variantIJS6_S7_S8_EEEEDcOSE_DpOT1_:bb.a
    i8 2, label %bb.j
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEJRKS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
    i8 1, label %bb.k
  ], !prof !11337

bb.j:                                             ; preds = %bb.i
  %i.t = load i64, ptr %1, align 8
end_hunk_23
begin_hunk_24_@_ZNK5folly8observer14AtomicObserverINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE3getEv:bb.a
bb.h:                                             ; preds = %bb.g, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @_ZNK5folly8observer8ObserverINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEdeEv(ptr dead_on_unwind nonnull writable sret(%"class.folly::observer::Snapshot") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.c) #39
  %i.t = load ptr, ptr %2, align 8, !tbaa !11341
  %.sroa.0.0.copyload = load i64, ptr %i.t, align 8, !tbaa !10859
  store atomic i64 %.sroa.0.0.copyload, ptr %0 monotonic, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11343
  store atomic i64 %i.v, ptr %i.a release, align 8
  call void @_ZN5folly8observer8SnapshotINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
end_hunk_24
begin_hunk_25_@_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_:bb.a
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"struct.folly::SharedMutexImpl<false>::WaitForever", align 1 ; 3 uses
  store ptr %1, ptr %0, align 8, !tbaa !11347
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !11350
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.c = load atomic i32, ptr %1 acquire, align 4 ; 4 uses
end_hunk_25
begin_hunk_26_@_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_:bb.a
  %i.f = or disjoint i32 %i.c, 128
  %i.g = cmpxchg ptr %1, i32 %i.c, i32 %i.f seq_cst seq_cst, align 4 ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE4lockEv.exit, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, !prof !11351

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i: ; preds = %bb.b
  %i.i = extractvalue { i32, i1 } %i.g, 0
end_hunk_26
begin_hunk_27_@_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEEC2ERS4_:bb.a
_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE4lockEv.exit: ; preds = %bb.b, %.critedge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  store i8 1, ptr %i.b, align 8, !tbaa !11350
  ret void
}

end_hunk_27
begin_hunk_28_@_ZNK5folly8observer8ObserverINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEdeEv
define linkonce_odr void @_ZNK5folly8observer8ObserverINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEdeEv(ptr dead_on_unwind noalias writable sret(%"class.folly::observer::Snapshot") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.folly::observer_detail::Core::VersionedData", align 16 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11352)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39, !noalias !11352
  %i.a = load ptr, ptr %1, align 8, !tbaa !11087, !noalias !11352
  invoke void @_ZN5folly15observer_detail4Core7getDataEv(ptr dead_on_unwind nonnull writable sret(%"struct.folly::observer_detail::Core::VersionedData") align 8 %2, ptr noundef nonnull align 16 dereferenceable(293) %i.a)
          to label %_ZNK5folly8observer8ObserverINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE11getSnapshotEv.exit unwind label %bb.b, !noalias !11352

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  call void @__clang_call_terminate(ptr %i.c) #48, !noalias !11352
  unreachable

_ZNK5folly8observer8ObserverINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE11getSnapshotEv.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !11087, !noalias !11352
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load <2 x ptr>, ptr %2, align 16, !tbaa !10985, !noalias !11355
  store <2 x ptr> %i.f, ptr %0, align 8, !tbaa !10985, !alias.scope !11352
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load <2 x i64>, ptr %i.e, align 16, !tbaa !10859, !noalias !11352
  store <2 x i64> %i.h, ptr %i.g, align 8, !tbaa !10859, !alias.scope !11352
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %i.i, align 8, !tbaa !11358, !alias.scope !11352
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39, !noalias !11352
  ret void
}

end_hunk_28
begin_hunk_29_@_ZN5folly8observer8SnapshotINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEED2Ev:bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #39, !call_target !3524, !inline_history !11359
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #39, !call_target !3525, !inline_history !11359
  br label %_ZNSt12__shared_ptrIKNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_29
begin_hunk_30_@_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEED2Ev:bb.a
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !11350, !range !10600, !noundef !146
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !11347  ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE6unlockEv.exit, label %bb.c

end_hunk_30
begin_hunk_31_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE15waitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_:bb.a
  store i32 %i.i, ptr %1, align 4, !tbaa !7
  %i.j = and i32 %i.i, %2
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %.lr.ph, !llvm.loop !11360

.loopexit:                                        ; preds = %bb.b, %bb.a, %.thread
  %.2 = phi i1 [ %i.h, %.thread ], [ true, %bb.a ], [ true, %bb.b ]
end_hunk_31
begin_hunk_32_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_:bb.a
bb.d:                                             ; preds = %bb.c
  %i.l = add i32 %.1.ph, 1                        ; 2 uses
  %i.m = icmp eq i32 %i.l, %i.c
  br i1 %i.m, label %.loopexit, label %.outer, !llvm.loop !11361

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noundef i64 @llvm.x86.rdtsc()
end_hunk_32
begin_hunk_33_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_:bb.a

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "pause", "~{dirflag},~{fpsr},~{flags}"() #39, !srcloc !11165
  br label %bb.c, !llvm.loop !11362

.loopexit:                                        ; preds = %bb.d, %.thread
  ret void
end_hunk_33
begin_hunk_34_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_:bb.a
_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.us.i: ; preds = %bb.f
  %i.w = extractvalue { i32, i1 } %i.u, 0
  store i32 %i.w, ptr %1, align 4
  br label %bb.g, !llvm.loop !11363

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.us.i: ; preds = %bb.f, %bb.e
  %.01926.us.i = phi i32 [ %i.q, %bb.e ], [ %.01925.us.i, %bb.f ]
end_hunk_34
begin_hunk_35_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20yieldWaitForZeroBitsINS3_11WaitForeverEEEbRjjjRT_:bb.a
_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i: ; preds = %bb.h
  %i.af = extractvalue { i32, i1 } %i.ad, 0
  store i32 %i.af, ptr %1, align 4
  br label %bb.i, !llvm.loop !11363

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread.i: ; preds = %bb.h, %.lr.ph.split.i
  %i.ag = tail call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %i.ac, ptr noundef null, ptr noundef null, i32 noundef %3) ; 0 uses
end_hunk_35
begin_hunk_36_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j:bb.a
bb.e:                                             ; preds = %bb.d
  %i.l = add i32 %.2, 1                           ; 2 uses
  %i.m = icmp eq i32 %i.l, %i.c
  br i1 %i.m, label %.thread48, label %bb.d, !llvm.loop !11364

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef i32 @sched_yield() #39 ; 0 uses
end_hunk_36
begin_hunk_37_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j:bb.a
bb.h:                                             ; preds = %bb.g
  %i.u = add i32 %.2.1, 1                         ; 2 uses
  %i.v = icmp eq i32 %i.u, %i.c
  br i1 %i.v, label %.thread48, label %bb.g, !llvm.loop !11364

bb.i:                                             ; preds = %bb.g
  %i.w = tail call noundef i64 @_ZN5folly19shared_mutex_detail45getCurrentThreadInvoluntaryContextSwitchCountEv() ; 0 uses
end_hunk_37
begin_hunk_38_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j:bb.a
bb.k:                                             ; preds = %bb.j
  %i.ad = add i32 %.2.2, 1                        ; 2 uses
  %i.ae = icmp eq i32 %i.ad, %i.c
  br i1 %i.ae, label %.thread48, label %bb.j, !llvm.loop !11364

bb.l:                                             ; preds = %bb.j
  %i.af = icmp ult i32 %.2.2, %i.c
end_hunk_38
begin_hunk_39_@_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE20applyDeferredReadersINS3_11WaitForeverEEEvRjRT_j:bb.a
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.m, !llvm.loop !11365

._crit_edge.unr-lcssa:                            ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_39
begin_hunk_40_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS5_16ExternalUnixAddrENS5_9VsockAddrEEEaSEOS9_EUlOT_T0_E_JRSt7variantIJS6_S7_S8_EEEEDcOSD_DpOT1_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !10696
  %i.c = load ptr, ptr %0, align 8, !tbaa !11330  ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 8 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !10696 ; 4 uses
  switch i8 %i.b, label %bb.p [
end_hunk_40
begin_hunk_41_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS5_16ExternalUnixAddrENS5_9VsockAddrEEEaSEOS9_EUlOT_T0_E_JRSt7variantIJS6_S7_S8_EEEEDcOSD_DpOT1_:bb.a
    i8 0, label %bb.c
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEJS4_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
    i8 1, label %bb.d
  ], !prof !11337

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %i.c, ptr noundef nonnull align 8 dereferenceable(33) %1, i64 26, i1 false), !tbaa.struct !10694
end_hunk_41
begin_hunk_42_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS5_16ExternalUnixAddrENS5_9VsockAddrEEEaSEOS9_EUlOT_T0_E_JRSt7variantIJS6_S7_S8_EEEEDcOSD_DpOT1_:bb.a
  switch i8 %i.e, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i.i [
    i8 1, label %bb.g
    i8 -1, label %_ZNSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEE7emplaceILm1EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i.i.i.i
  ], !prof !11338

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i.i.i = icmp eq ptr %i.c, %1
end_hunk_42
begin_hunk_43_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS5_16ExternalUnixAddrENS5_9VsockAddrEEEaSEOS9_EUlOT_T0_E_JRSt7variantIJS6_S7_S8_EEEEDcOSD_DpOT1_:bb.a
_ZNSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEE7emplaceILm1EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i.i.i.i: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i.i, %bb.f
  %i.n = tail call noalias noundef nonnull dereferenceable(110) ptr @_Znwm(i64 noundef 110) #53 ; 3 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !10699
  store i16 1, ptr %i.n, align 2, !tbaa !11339
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !11237
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_43
begin_hunk_44_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS5_16ExternalUnixAddrENS5_9VsockAddrEEEaSEOS9_EUlOT_T0_E_JRSt7variantIJS6_S7_S8_EEEEDcOSD_DpOT1_:bb.a
    i8 2, label %bb.j
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
    i8 1, label %bb.k
  ], !prof !11337

bb.j:                                             ; preds = %bb.i
  %i.t = load i64, ptr %1, align 8
end_hunk_44
begin_hunk_45_@_ZN5folly23AtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEEE11AtomicQueue4pushIJS5_EEEbDpOT_:bb.a
  %3 = alloca %"class.std::shared_ptr.19", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @_ZN5folly14RequestContext11saveContextEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.19") align 8 %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !11366  ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !11366
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10747 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !10747
  store ptr %i.d, ptr %i.b, align 8, !tbaa !10747
  store ptr null, ptr %2, align 8, !tbaa !11366
  %i.e = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #53
          to label %.noexc unwind label %bb.n     ; 6 uses

end_hunk_45
begin_hunk_46_@_ZN5folly23AtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEEE11AtomicQueue4pushIJS5_EEEbDpOT_:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @_ZNSt8__detail9__variant15_Move_ctor_baseILb0EJN5folly17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEC2EOS6_(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull align 8 dereferenceable(65) %1) #39
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.a, ptr %i.f, align 8, !tbaa !11366
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr %i.d, ptr %i.g, align 8, !tbaa !10747
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !11367
  %i.i = load atomic ptr, ptr %0 monotonic, align 64 ; 4 uses
  %i.j = icmp eq ptr %i.i, inttoptr (i64 1 to ptr)
  %i.k = select i1 %i.j, ptr null, ptr %i.i
  store ptr %i.k, ptr %i.h, align 8, !tbaa !11367
  %i.l = cmpxchg weak ptr %0, ptr %i.i, ptr %i.e acq_rel monotonic, align 8 ; 2 uses
  %i.m = extractvalue { ptr, i1 } %i.l, 1
  br i1 %i.m, label %.loopexit, label %_ZNSt6atomicIPN5folly23AtomicNotificationQueueISt7variantIJNS0_17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEE4NodeEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i
end_hunk_46
begin_hunk_47_@_ZN5folly23AtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEEE11AtomicQueue4pushIJS5_EEEbDpOT_:bb.a
  %i.o = extractvalue { ptr, i1 } %i.n, 0         ; 4 uses
  %i.p = icmp eq ptr %i.o, inttoptr (i64 1 to ptr)
  %i.q = select i1 %i.p, ptr null, ptr %i.o
  store ptr %i.q, ptr %i.h, align 8, !tbaa !11367
  %i.r = cmpxchg weak ptr %0, ptr %i.o, ptr %i.e acq_rel monotonic, align 8 ; 2 uses
  %i.s = extractvalue { ptr, i1 } %i.r, 1
  br i1 %i.s, label %.loopexit, label %_ZNSt6atomicIPN5folly23AtomicNotificationQueueISt7variantIJNS0_17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEE4NodeEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i, !llvm.loop !11375

.loopexit:                                        ; preds = %_ZNSt6atomicIPN5folly23AtomicNotificationQueueISt7variantIJNS0_17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEE4NodeEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i, %.noexc
  %.0.lcssa.i = phi ptr [ %i.i, %.noexc ], [ %i.o, %_ZNSt6atomicIPN5folly23AtomicNotificationQueueISt7variantIJNS0_17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEE4NodeEE21compare_exchange_weakERS9_S9_St12memory_orderSC_.exit.i ]
end_hunk_47
begin_hunk_48_@_ZNSt8__detail9__variant15_Move_ctor_baseILb0EJN5folly17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEC2EOS6_:bb.a
  store i8 0, ptr %i.h, align 8, !tbaa !10696
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  store ptr %i.f, ptr %2, align 8, !tbaa !11330
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS5_16ExternalUnixAddrENS5_9VsockAddrEEEaSEOS9_EUlOT_T0_E_JRSt7variantIJS6_S7_S8_EEEEDcOSD_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5folly17AsyncServerSocket14NewConnMessageENS6_12ErrorMessageEEEC1EOS9_EUlOT_T0_E_OSt7variantIJS7_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit.i.i unwind label %bb.d

end_hunk_48
begin_hunk_49_@_ZNSt8__detail9__variant15_Move_ctor_baseILb0EJN5folly17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEC2EOS6_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail28make_exception_ptr_with_arg_4makeIZNKS_26make_exception_ptr_with_fn4makeISt13runtime_errorJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDaDpOT0_EUlvE_S5_EEvPvSH_(ptr noundef %0, ptr noundef %1) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !11376, !noalias !11378, !nonnull !146, !align !11031
  tail call void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  ret void
}
end_hunk_49
begin_hunk_50_@llvm.umin.i32
!11324 = !{!11325}
!11325 = distinct !{!11325, !11326, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE: argument 0"}
!11326 = distinct !{!11326, !"_ZN5folly6detail21extract_exception_ptrEONSt15__exception_ptr13exception_ptrE"}
!11327 = !{!11328, !11329, i64 0}
!11328 = !{!"_ZTSZNSt8__detail9__variant17_Copy_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEEaSERKS7_EUlOT_T0_E_", !11329, i64 0}
!11329 = !{!"p1 _ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEEE", !13, i64 0}
!11330 = !{!11331, !11332, i64 0}
!11331 = !{!"_ZTSZNSt8__detail9__variant17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEEaSEOS7_EUlOT_T0_E_", !11332, i64 0}
!11332 = !{!"p1 _ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJN5folly13SocketAddress6IPAddrENS3_16ExternalUnixAddrENS3_9VsockAddrEEEE", !13, i64 0}
!11333 = !DISubprogram(name: "onConnectionEnqueuedForAcceptorCallback", linkageName: "_ZN5folly17AsyncServerSocket23ConnectionEventCallback39onConnectionEnqueuedForAcceptorCallbackENS_13NetworkSocketERKNS_13SocketAddressE", scope: !3261, file: !17, line: 122, type: !10855, scopeLine: 122, containingType: !3261, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!11334 = distinct !{!11334, !10730}
!11335 = !{!10647, !13, i64 24}
!11336 = distinct !{null}
!11337 = !{!"branch_weights", i32 2000, i32 4002, i32 2, i32 2000}
!11338 = !{!"branch_weights", i32 2000, i32 2002, i32 2}
!11339 = !{!11340, !10685, i64 0}
!11340 = !{!"_ZTS11sockaddr_un", !10685, i64 0, !9, i64 2}
!11341 = !{!11342, !11056, i64 0}
!11342 = !{!"_ZTSSt12__shared_ptrIKNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEELN9__gnu_cxx12_Lock_policyE2EE", !11056, i64 0, !10666, i64 8}
!11343 = !{!11344, !10632, i64 16}
!11344 = !{!"_ZTSN5folly8observer8SnapshotINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEE", !11345, i64 0, !10632, i64 16, !11346, i64 24, !10665, i64 32}
!11345 = !{!"_ZTSSt10shared_ptrIKNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE", !11342, i64 0}
!11346 = !{!"_ZTSNSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEE", !10631, i64 0}
!11347 = !{!11348, !11349, i64 0}
!11348 = !{!"_ZTSSt11unique_lockIN5folly15SharedMutexImplILb0EvSt6atomicNS0_24SharedMutexPolicyDefaultEEEE", !11349, i64 0, !10604, i64 8}
!11349 = !{!"p1 _ZTSN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEEE", !13, i64 0}
!11350 = !{!11348, !10604, i64 8}
!11351 = !{!"branch_weights", i32 2146410443, i32 1073205}
!11352 = !{!11353}
!11353 = distinct !{!11353, !11354, !"_ZNK5folly8observer8ObserverINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE11getSnapshotEv: argument 0"}
!11354 = distinct !{!11354, !"_ZNK5folly8observer8ObserverINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE11getSnapshotEv"}
!11355 = !{!11356, !11353}
!11356 = distinct !{!11356, !11357, !"_ZSt19static_pointer_castIKNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEKvESt10shared_ptrIT_EOS7_IT0_E: argument 0"}
!11357 = distinct !{!11357, !"_ZSt19static_pointer_castIKNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEKvESt10shared_ptrIT_EOS7_IT0_E"}
!11358 = !{!11344, !10665, i64 32}
!11359 = distinct !{null, null, null}
!11360 = distinct !{!11360, !10730}
!11361 = distinct !{!11361, !10730}
!11362 = distinct !{!11362, !10730}
!11363 = distinct !{!11363, !10730}
!11364 = distinct !{!11364, !10730}
!11365 = distinct !{!11365, !10730}
!11366 = !{!10811, !10812, i64 0}
!11367 = !{!11368, !10830, i64 88}
!11368 = !{!"_ZTSN5folly23AtomicNotificationQueueISt7variantIJNS_17AsyncServerSocket14NewConnMessageENS2_12ErrorMessageEEEE4NodeE", !11369, i64 0, !10810, i64 72, !10830, i64 88}
!11369 = !{!"_ZTSSt7variantIJN5folly17AsyncServerSocket14NewConnMessageENS1_12ErrorMessageEEE", !11370, i64 0}
!11370 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJN5folly17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEE", !11371, i64 0}
!11371 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb0EJN5folly17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEE", !11372, i64 0}
!11372 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb0EJN5folly17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEE", !11373, i64 0}
!11373 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJN5folly17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEE", !11374, i64 0}
!11374 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb0EJN5folly17AsyncServerSocket14NewConnMessageENS3_12ErrorMessageEEEE", !10983, i64 0}
!11375 = distinct !{!11375, !10730}
!11376 = !{!11377, !10734, i64 0}
!11377 = !{!"_ZTSZNK5folly26make_exception_ptr_with_fn4makeISt13runtime_errorJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDaDpOT0_EUlvE_", !10734, i64 0}
!11378 = !{!11379}
!11379 = distinct !{!11379, !11380, !"_ZZNK5folly26make_exception_ptr_with_fn4makeISt13runtime_errorJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDaDpOT0_ENKUlvE_clEv: argument 0"}
!11380 = distinct !{!11380, !"_ZZNK5folly26make_exception_ptr_with_fn4makeISt13runtime_errorJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDaDpOT0_ENKUlvE_clEv"}
end_hunk_50
