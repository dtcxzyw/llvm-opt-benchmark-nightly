inline.NumInlined: 4369
inline.NumDeleted: 1553
begin_hunk_0_@_ZN5folly4test18TemporaryDirectoryC2ENS_5RangeIPKcEEN5boost10filesystem4pathENS1_5ScopeE:bb.a

bb.h:                                             ; preds = %bb.g, %_ZN5boost10filesystem4pathD2Ev.exit20
  %.pn8 = phi { ptr, i32 } [ %i.ar, %bb.g ], [ %.pn, %_ZN5boost10filesystem4pathD2Ev.exit20 ]
  resume { ptr, i32 } %.pn8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN5boost10filesystem4pathESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1545   ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNKSt14default_deleteIN5boost10filesystem4pathEEclEPS2_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !19
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #39
  br label %_ZNKSt14default_deleteIN5boost10filesystem4pathEEclEPS2_.exit

_ZNKSt14default_deleteIN5boost10filesystem4pathEEclEPS2_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #39
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt14default_deleteIN5boost10filesystem4pathEEclEPS2_.exit, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN5boost10filesystem6detail16create_directoryERKNS0_4pathEPS3_PNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly4test18TemporaryDirectoryD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(16) dereferenceable(16) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.boost::system::error_code", align 8 ; 7 uses
  %3 = alloca %"class.google::LogMessage", align 8 ; 5 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !1532
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1545 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.e = invoke noundef i64 @_ZN5boost10filesystem6detail10remove_allERKNS0_4pathEPNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN5boost10filesystem10remove_allERKNS0_4pathERNS_6system10error_codeE.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #38
  unreachable

_ZN5boost10filesystem10remove_allERKNS0_4pathERNS_6system10error_codeE.exit: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread4, label %bb.e

bb.e:                                             ; preds = %_ZN5boost10filesystem10remove_allERKNS0_4pathERNS_6system10error_codeE.exit
  %i.k = icmp ne i64 %i.i, 1
  %i.l = load i32, ptr %2, align 8
  %i.m = icmp ne i32 %i.l, 0
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %_ZNK5boost6system10error_codecvbEv.exit.thread, label %_ZNK5boost6system10error_codecvbEv.exit.thread4

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str.3, i32 noundef 131, i32 noundef 1)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.g unwind label %bb.m       ; 4 uses

bb.g:                                             ; preds = %bb.f
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.22, i64 noundef 40)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  invoke void @_ZNK5boost6system10error_code9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = load ptr, ptr %1, align 8, !tbaa !16     ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.noexc
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %i.n, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !32
  %i.w = or i32 %i.v, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.t, i32 noundef %i.w)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc
  %i.x = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #36
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.p, i64 noundef %i.x)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.i, %bb.h
  %i.z = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !19
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.j
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !19
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread4

_ZNK5boost6system10error_codecvbEv.exit.thread4:  ; preds = %bb.e, %_ZN5boost10filesystem10remove_allERKNS0_4pathERNS_6system10error_codeE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.k

bb.k:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread4, %bb.b, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1545 ; 4 uses
  %.not.i2 = icmp eq ptr %i.al, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIN5boost10filesystem4pathESt14default_deleteIS2_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt14default_deleteIN5boost10filesystem4pathEEclEPS2_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !19
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #39
  br label %_ZNKSt14default_deleteIN5boost10filesystem4pathEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5boost10filesystem4pathEEclEPS2_.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 32) #39
  br label %_ZNSt10unique_ptrIN5boost10filesystem4pathESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5boost10filesystem4pathESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.k, %_ZNKSt14default_deleteIN5boost10filesystem4pathEEclEPS2_.exit.i
  ret void

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.g, %bb.f, %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.m ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i ]
  %i.as = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.as) #38
  unreachable
}

declare noundef i64 @_ZN5boost10filesystem6detail10remove_allERKNS0_4pathEPNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN5folly4test15ChangeToTempDirC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::filesystem::path", align 8 ; 6 uses
  %2 = alloca %"class.boost::filesystem::path", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !20
  store i8 0, ptr %i.a, align 8, !tbaa !19
  invoke void @_ZN5folly4test18TemporaryDirectoryC1ENS_5RangeIPKcEEN5boost10filesystem4pathENS1_5ScopeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr null, ptr null, ptr noundef nonnull %1, i32 noundef 1)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %_ZN5boost10filesystem4pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.a, align 8, !tbaa !19
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #39
  br label %_ZN5boost10filesystem4pathD2Ev.exit

_ZN5boost10filesystem4pathD2Ev.exit:              ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i64 0, ptr %i.i, align 8, !tbaa !20
  store i8 0, ptr %i.h, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  invoke void @_ZN5boost10filesystem6detail12current_pathEPNS_6system10error_codeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::filesystem::path") align 8 %2, ptr noundef null)
          to label %_ZN5boost10filesystem12current_pathEv.exit unwind label %bb.i

_ZN5boost10filesystem12current_pathEv.exit:       ; preds = %_ZN5boost10filesystem4pathD2Ev.exit
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !16   ; 6 uses
  %i.k = icmp eq ptr %i.j, %i.h
  %i.l = load ptr, ptr %2, align 8, !tbaa !16     ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.n = icmp eq ptr %i.l, %i.m                   ; 2 uses
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5boost10filesystem12current_pathEv.exit
  br i1 %i.n, label %bb.c, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN5boost10filesystem12current_pathEv.exit
  br i1 %i.n, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !20   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %.not21.i.i = icmp eq ptr %2, %i.g
  br i1 %.not21.i.i, label %_ZN5boost10filesystem4pathaSEOS1_.exit, label %3, !prof !15

3:                                                ; preds = %bb.c
  switch i64 %i.p, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %3
  %i.r = load i8, ptr %i.l, align 1, !tbaa !19
  store i8 %i.r, ptr %i.j, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.e:                                             ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.l, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.e, %bb.d, %3
  %i.s = load i64, ptr %i.o, align 8, !tbaa !20   ; 2 uses
  store i64 %i.s, ptr %i.i, align 8, !tbaa !20
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 0, ptr %i.u, align 1, !tbaa !19
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !16
  br label %_ZN5boost10filesystem4pathaSEOS1_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.l, ptr %i.g, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load <2 x i64>, ptr %i.v, align 8, !tbaa !19
  store <2 x i64> %i.w, ptr %i.i, align 8, !tbaa !19
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.x = load i64, ptr %i.h, align 8, !tbaa !19
  store ptr %i.l, ptr %i.g, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load <2 x i64>, ptr %i.y, align 8, !tbaa !19
  store <2 x i64> %i.z, ptr %i.i, align 8, !tbaa !19
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.j, ptr %2, align 8, !tbaa !16
  store i64 %i.x, ptr %i.m, align 8, !tbaa !19
  br label %_ZN5boost10filesystem4pathaSEOS1_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.m, ptr %2, align 8, !tbaa !16
  br label %_ZN5boost10filesystem4pathaSEOS1_.exit

_ZN5boost10filesystem4pathaSEOS1_.exit:           ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.f, %bb.g
  %4 = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.j, %bb.f ], [ %i.m, %bb.g ], [ %i.l, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !20
  store i8 0, ptr %4, align 1, !tbaa !19
  %i.ab = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN5boost10filesystem4pathD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %_ZN5boost10filesystem4pathaSEOS1_.exit
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !19
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #39
  br label %_ZN5boost10filesystem4pathD2Ev.exit8

_ZN5boost10filesystem4pathD2Ev.exit8:             ; preds = %_ZN5boost10filesystem4pathaSEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1545
  invoke void @_ZN5boost10filesystem6detail12current_pathERKNS0_4pathEPNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef null)
          to label %_ZN5boost10filesystem12current_pathERKNS0_4pathE.exit unwind label %bb.j

_ZN5boost10filesystem12current_pathERKNS0_4pathE.exit: ; preds = %_ZN5boost10filesystem4pathD2Ev.exit8
  ret void

bb.h:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !16    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZN5boost10filesystem4pathD2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %bb.h
  %i.al = load i64, ptr %i.a, align 8, !tbaa !19
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #39
  br label %_ZN5boost10filesystem4pathD2Ev.exit11

bb.i:                                             ; preds = %_ZN5boost10filesystem4pathD2Ev.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.k

bb.j:                                             ; preds = %_ZN5boost10filesystem4pathD2Ev.exit8
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %i.an, %bb.i ]
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !16  ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.h
  br i1 %i.aq, label %_ZN5boost10filesystem4pathD2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12: ; preds = %bb.k
  %i.ar = load i64, ptr %i.h, align 8, !tbaa !19
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #39
  br label %_ZN5boost10filesystem4pathD2Ev.exit14

_ZN5boost10filesystem4pathD2Ev.exit14:            ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12
  call void @_ZN5folly4test18TemporaryDirectoryD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  br label %_ZN5boost10filesystem4pathD2Ev.exit11

_ZN5boost10filesystem4pathD2Ev.exit11:            ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9, %_ZN5boost10filesystem4pathD2Ev.exit14
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN5boost10filesystem4pathD2Ev.exit14 ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9 ], [ %i.ai, %bb.h ]
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN5boost10filesystem6detail12current_pathEPNS_6system10error_codeE(ptr dead_on_unwind writable sret(%"class.boost::filesystem::path") align 8, ptr noundef) local_unnamed_addr #9

declare void @_ZN5boost10filesystem6detail12current_pathERKNS0_4pathEPNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly4test15ChangeToTempDirD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN5boost10filesystem12current_pathERKNS0_4pathE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5boost10filesystem6detail12current_pathERKNS0_4pathEPNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef null)
          to label %_ZN5boost10filesystem12current_pathERKNS0_4pathE.exit unwind label %bb.c

_ZN5boost10filesystem12current_pathERKNS0_4pathE.exit: ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN5boost10filesystem4pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5boost10filesystem12current_pathERKNS0_4pathE.exit
  %i.h = load i64, ptr %i.f, align 8, !tbaa !19
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #39
  br label %_ZN5boost10filesystem4pathD2Ev.exit

_ZN5boost10filesystem4pathD2Ev.exit:              ; preds = %_ZN5boost10filesystem12current_pathERKNS0_4pathE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN5folly4test18TemporaryDirectoryD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  ret void

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #38
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { ptr, i32 } @_ZN5folly4test6detail24disableInvalidParametersEv() local_unnamed_addr #23 {
bb.a:
  ret { ptr, i32 } zeroinitializer
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5folly4test6detail23enableInvalidParametersENS1_10SavedStateE(ptr nofree readnone captures(none) %0, i32 %1) local_unnamed_addr #23 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5folly4test6detail19hasPCREPatternMatchENS_5RangeIPKcEES5_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::basic_regex", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.a = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE9do_assignEPKcS7_j(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %0, ptr noundef %1, i32 noundef 0)
          to label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEC2EPKcS7_j.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %bb.j, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.u, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5boost13re_detail_50026basic_regex_implementationIcNS0_12regex_traitsIcNS0_16cpp_regex_traitsIcEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #36
  br label %common.resume

_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEC2EPKcS7_j.exit: ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_ZN5boost11regex_matchIPKccNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEEbT_S7_RKNS_11basic_regexIT0_T1_EENS_15regex_constants12_match_flagsE(ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEC2EPKcS7_j.exit
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1546 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.f, align 8, !tbaa !1549
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !1551
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #36, !call_target !1552, !inline_history !1610
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #36, !call_target !1576, !inline_history !1610
  br label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !7
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.i, %bb.g ], [ %i.s, %bb.h ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.t, label %bb.i, label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit, !prof !15

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #36
  br label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit

_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret i1 %i.c

bb.j:                                             ; preds = %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEC2EPKcS7_j.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #36
end_hunk_0
