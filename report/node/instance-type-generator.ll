inline.NumInlined: 1289
inline.NumDeleted: 517
begin_hunk_0_@_ZN2v88internal6torque8ToStringIJRA43_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S3_SD_EEESB_DpOT_:bb.a
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #22
  br label %.body

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit8
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.af)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.ag = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ag, ptr %5, align 8
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ai = getelementptr i8, ptr %i.ag, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds i8, ptr %5, i64 %i.aj
  store ptr %i.ah, ptr %i.ak, align 8
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ar = load i64, ptr %i.ap, align 8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #22
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.am, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.at) #20
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.au, ptr %5, align 8
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aw = getelementptr i8, ptr %i.au, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %5, i64 %i.ax
  store ptr %i.av, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ba) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.e ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aa, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn
}

declare void @_ZN2v88internal6torque14MessageBuilderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13TorqueMessage4KindE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #2

declare void @_ZNK2v88internal6torque14MessageBuilder6ReportEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2v88internal6torque8ToStringIJRA50_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(50) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.b = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %1, i64 noundef %i.b)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.d, i64 noundef %i.f)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.h, ptr %0, align 8, !alias.scope !195
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.i, align 8, !alias.scope !195
  store i8 0, ptr %i.h, align 8, !alias.scope !195
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !noalias !195 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !noalias !195 ; 2 uses
  %i.n = icmp ugt ptr %i.k, %i.m
  %.08.i.i.i = select i1 %i.n, ptr %i.k, ptr %i.m ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !noalias !195 ; 2 uses
  %i.q = ptrtoint ptr %.08.i.i.i to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.p, i64 noundef %i.s)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %0, align 8, !alias.scope !195 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.h
  br i1 %i.w, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.x = load i64, ptr %i.h, align 8, !alias.scope !195
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #22
  br label %.body

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.aa = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aa, ptr %3, align 8
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ac = getelementptr i8, ptr %i.aa, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %3, i64 %i.ad
  store ptr %i.ab, ptr %i.ae, align 8
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.af, ptr %i.a, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.al = load i64, ptr %i.aj, align 8
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #22
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ag, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.an) #20
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ao, ptr %3, align 8
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %3, i64 %i.ar
  store ptr %i.ap, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.au) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.av, %bb.e ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.u, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN2v88internal6torque12_GLOBAL__N_128SolveInstanceTypeConstraintsESt10unique_ptrINS2_16InstanceTypeTreeESt14default_deleteIS4_EEiPSt6vectorIS7_SaIS7_EE(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.v8::internal::torque::MessageBuilder", align 8 ; 6 uses
  %8 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %9 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %10 = alloca %"class.std::multimap", align 8    ; 8 uses
  %11 = alloca %"class.std::map.244", align 8     ; 8 uses
  %12 = alloca %"class.v8::internal::torque::MessageBuilder", align 8 ; 7 uses
  %13 = alloca %"class.v8::internal::torque::MessageBuilder", align 8 ; 7 uses
  %14 = alloca %"class.v8::internal::torque::MessageBuilder", align 8 ; 7 uses
  %15 = alloca %"class.std::unique_ptr", align 8  ; 4 uses
  %16 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %17 = alloca %"class.std::unique_ptr", align 8  ; 4 uses
  %18 = alloca %"class.std::unique_ptr", align 8  ; 4 uses
  %19 = alloca %"class.std::unique_ptr", align 8  ; 4 uses
  %20 = alloca %"class.std::unique_ptr", align 8  ; 4 uses
  %.val128 = load ptr, ptr %0, align 8            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val128, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp slt i32 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.d = load ptr, ptr %.val128, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !196
  call void @_ZN2v88internal6torque8ToStringIJRA32_KcRiRA5_S3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESE_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(32) @.str.53, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.54, ptr noundef nonnull align 8 dereferenceable(32) %i.e), !noalias !196
  invoke void @_ZN2v88internal6torque14MessageBuilderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13TorqueMessage4KindE(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %6, align 8, !noalias !196 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN2v88internal6torque5ErrorIJRA32_KcRiRA5_S3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_14MessageBuilderEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !noalias !196
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #22
  br label %_ZN2v88internal6torque5ErrorIJRA32_KcRiRA5_S3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_14MessageBuilderEDpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %6, align 8, !noalias !196 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !noalias !196
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

common.resume:                                    ; preds = %bb.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ], [ %.pn64.pn, %bb.dl ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !196
  br label %common.resume

_ZN2v88internal6torque5ErrorIJRA32_KcRiRA5_S3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_14MessageBuilderEDpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !196
  %.val125 = load ptr, ptr %0, align 8
  %i.q = load ptr, ptr %.val125, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  %i.s = load ptr, ptr %i.r, align 8, !noalias !201
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 2 uses
  %i.w = load i8, ptr %i.v, align 4, !range !12, !noundef !13
  %i.x = trunc nuw i8 %i.w to i1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.u, ptr noundef nonnull align 4 dereferenceable(28) %i.t, i64 28, i1 false)
  br i1 %i.x, label %_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6torque5ErrorIJRA32_KcRiRA5_S3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_14MessageBuilderEDpOT_.exit
  store i8 1, ptr %i.v, align 4
  br label %_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit

_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit: ; preds = %_ZN2v88internal6torque5ErrorIJRA32_KcRiRA5_S3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_14MessageBuilderEDpOT_.exit, %bb.e
  call void @_ZN2v88internal6torque14MessageBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %.val124.pre = load ptr, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit, %bb.a
  %.val124 = phi ptr [ %.val124.pre, %_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit ], [ %.val128, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr null, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr null, ptr %9, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  store i32 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr null, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %i.y, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 3 uses
  store i64 0, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 14 uses
  store i32 0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 5 uses
  store ptr %i.ad, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  store ptr %i.ad, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 6 uses
  store i64 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.val124, i64 8
  %.val = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.aj = getelementptr i8, ptr %.val124, i64 16
  %.val67 = load ptr, ptr %i.aj, align 8          ; 2 uses
  %i.ak = icmp eq ptr %.val, %.val67
  br i1 %i.ak, label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE5clearEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 60 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 60 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 60 ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit
  %.val107.pre = load ptr, ptr %0, align 8        ; 4 uses
  %.phi.trans.insert400 = getelementptr inbounds nuw i8, ptr %.val107.pre, i64 8
  %.pre401 = load ptr, ptr %.phi.trans.insert400, align 8 ; 3 uses
  %.phi.trans.insert402 = getelementptr inbounds nuw i8, ptr %.val107.pre, i64 16
  %.pre403 = load ptr, ptr %.phi.trans.insert402, align 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val107.pre, i64 16
  %.not.i.i = icmp eq ptr %.pre403, %.pre401
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.pre401, %._crit_edge ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.05.i.i.i.i), !inline_history !161
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, %.pre403
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !28

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %.pre401, ptr %i.au, align 8
  %.val106.pre = load ptr, ptr %0, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE5clearEv.exit: ; preds = %bb.f, %._crit_edge, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i
  %.val129576 = phi ptr [ %.val129575, %._crit_edge ], [ %.val129575, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i ], [ null, %bb.f ] ; 3 uses
  %.val130573 = phi ptr [ %.val130572, %._crit_edge ], [ %.val130572, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i ], [ null, %bb.f ] ; 2 uses
  %.val106 = phi ptr [ %.val107.pre, %._crit_edge ], [ %.val106.pre, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i ], [ %.val124, %bb.f ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val106, i64 48
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = icmp sgt i32 %i.ax, 0                   ; 2 uses
  %i.az = zext i1 %i.ay to i8
  %.not.i = icmp eq ptr %.val129576, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit, label %bb.bp

bb.g:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit
  %.val129574 = phi ptr [ null, %.lr.ph ], [ %.val129575, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit ] ; 13 uses
  %.val130571 = phi ptr [ null, %.lr.ph ], [ %.val130572, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit ] ; 13 uses
  %.sroa.0337.0366 = phi ptr [ %.val, %.lr.ph ], [ %i.of, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit ] ; 12 uses
  %.val123 = load ptr, ptr %.sroa.0337.0366, align 8 ; 35 uses
  %i.ba = load ptr, ptr %.val123, align 8         ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 248
  %i.bc = load i32, ptr %i.bb, align 4            ; 3 uses
  %i.bd = and i32 %i.bc, 64
  %.not346 = icmp eq i32 %i.bd, 0
  %i.be = ptrtoint ptr %.val123 to i64            ; 2 uses
  br i1 %.not346, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not349 = icmp eq ptr %.val130571, null        ; 2 uses
  br i1 %.not349, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.bf = load ptr, ptr %.val130571, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 168
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 168
  %.val120 = load ptr, ptr %0, align 8
  %i.bi = load ptr, ptr %.val120, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !204
  invoke void @_ZN2v88internal6torque8ToStringIJRA56_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S3_SD_RA32_S3_SD_EEESB_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(56) @.str.55, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 1 dereferenceable(6) @.str.50, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 1 dereferenceable(32) @.str.56, ptr noundef nonnull align 8 dereferenceable(32) %i.bj)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN2v88internal6torque14MessageBuilderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13TorqueMessage4KindE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc
  %i.bk = load ptr, ptr %5, align 8, !noalias !204 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.al
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159: ; preds = %bb.j
  %i.bm = load i64, ptr %i.al, align 8, !noalias !204
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i160
end_hunk_0
begin_hunk_1_@_ZN2v88internal6torque12_GLOBAL__N_128SolveInstanceTypeConstraintsESt10unique_ptrINS2_16InstanceTypeTreeESt14default_deleteIS4_EEiPSt6vectorIS7_SaIS7_EE:bb.a
_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.val.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.nb, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i, %.thread21.i.i.i.thread
  %.val.i.i.i.i.i.i.i.i11.i.i.i = phi ptr [ %.val.pre.i.i.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nc, %.thread21.i.i.i.thread ] ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i11.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ng = getelementptr inbounds nuw i8, ptr %.val123, i64 24
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ng, align 8
  %i.nh = ptrtoint ptr %.val1.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ni = ptrtoint ptr %.val.i.i.i.i.i.i.i.i11.i.i.i to i64
  %i.nj = sub i64 %i.nh, %i.ni
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i11.i.i.i, i64 noundef %i.nj) #22, !inline_history !46
  br label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bi, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val123, i64 noundef 56) #22, !inline_history !47
  br label %_ZNSt8_Rb_treeIPN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt4pairIKS5_St10unique_ptrIS4_St14default_deleteIS4_EEESt10_Select1stISC_ENS3_25CompareUnconstrainedTypesESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i.i.i

_ZNSt8_Rb_treeIPN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt4pairIKS5_St10unique_ptrIS4_St14default_deleteIS4_EEESt10_Select1stISC_ENS3_25CompareUnconstrainedTypesESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i.i.i.i, %.thread21.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef 48) #22
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit

bb.bj:                                            ; preds = %bb.al
  %.not.i.i197 = icmp eq ptr %.val123, null
  br i1 %.not.i.i197, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit, label %.thread517

.thread517:                                       ; preds = %_ZNK2v88internal6torque12_GLOBAL__N_125CompareUnconstrainedTypesclEPKNS2_16InstanceTypeTreeES6_.exit.i, %bb.bj
  %i.nk = getelementptr inbounds nuw i8, ptr %.val123, i64 8 ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8            ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.val123, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8            ; 2 uses
  %.not.i2.i.i.i.i = icmp eq ptr %i.nl, %i.nn
  br i1 %.not.i2.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i198

.lr.ph.i.i.i.i198:                                ; preds = %.thread517, %.lr.ph.i.i.i.i198
  %.0.i3.i.i.i.i = phi ptr [ %i.no, %.lr.ph.i.i.i.i198 ], [ %i.nl, %.thread517 ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i.i), !inline_history !45
  %i.no = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i199 = icmp eq ptr %i.no, %i.nn
  br i1 %.not.i.i.i.i.i199, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i198, !llvm.loop !28

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i198
  %.val.pre.i.i.i.i = load ptr, ptr %i.nk, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i, %.thread517
  %.val.i.i.i.i200 = phi ptr [ %.val.pre.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i ], [ %i.nl, %.thread517 ] ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i200, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  %i.np = getelementptr inbounds nuw i8, ptr %.val123, i64 24
  %.val1.i.i.i.i = load ptr, ptr %i.np, align 8
  %i.nq = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.nr = ptrtoint ptr %.val.i.i.i.i200 to i64
  %i.ns = sub i64 %i.nq, %i.nr
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i200, i64 noundef %i.ns) #22, !inline_history !46
  br label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i: ; preds = %bb.bk, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val123, i64 noundef 56) #22, !inline_history !47
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit

bb.bl:                                            ; preds = %.critedge.i
  %i.nt = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt4pairIPN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt10unique_ptrIS4_St14default_deleteIS4_EEED2Ev(ptr %.val123) #20
  br label %bb.dl

bb.bm:                                            ; preds = %bb.af
  %i.nu = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21
          to label %.noexc203 unwind label %bb.bo ; 3 uses

.noexc203:                                        ; preds = %bb.bm
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  store i32 %i.el, ptr %i.nv, align 8
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 40
  store i64 %i.be, ptr %i.nw, align 8
  %.045.i.i.i = load ptr, ptr %i.z, align 8       ; 2 uses
  %.not6.i.i.i = icmp eq ptr %.045.i.i.i, null
  br i1 %.not6.i.i.i, label %_ZNSt4pairIiSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEED2Ev.exit, label %.lr.ph.i.i.i202

.lr.ph.i.i.i202:                                  ; preds = %.noexc203, %.lr.ph.i.i.i202
  %.047.i.i.i = phi ptr [ %.04.i.i.i, %.lr.ph.i.i.i202 ], [ %.045.i.i.i, %.noexc203 ] ; 4 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.047.i.i.i, i64 32
  %i.ny = load i32, ptr %i.nx, align 4
  %i.nz = icmp slt i32 %i.el, %i.ny               ; 2 uses
  %.in.v.i.i.i = select i1 %i.nz, i64 16, i64 24
  %.in.i.i.i = getelementptr i8, ptr %.047.i.i.i, i64 %.in.v.i.i.i
  %.04.i.i.i = load ptr, ptr %.in.i.i.i, align 8  ; 2 uses
  %.not.i.i.i = icmp eq ptr %.04.i.i.i, null
  br i1 %.not.i.i.i, label %bb.bn, label %.lr.ph.i.i.i202, !llvm.loop !230

bb.bn:                                            ; preds = %.lr.ph.i.i.i202
  %i.oa = icmp eq ptr %.047.i.i.i, %i.y
  %spec.select.i.i = or i1 %i.oa, %i.nz
  br label %_ZNSt4pairIiSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEED2Ev.exit

_ZNSt4pairIiSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEED2Ev.exit: ; preds = %.noexc203, %bb.bn
  %.0.lcssa.i14.i.i = phi ptr [ %i.y, %.noexc203 ], [ %.047.i.i.i, %bb.bn ]
  %i.ob = phi i1 [ true, %.noexc203 ], [ %spec.select.i.i, %bb.bn ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ob, ptr noundef nonnull %i.nu, ptr noundef nonnull %.0.lcssa.i14.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.y) #20
  %i.oc = load i64, ptr %i.ac, align 8
  %i.od = add i64 %i.oc, 1
  store i64 %i.od, ptr %i.ac, align 8
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit

bb.bo:                                            ; preds = %bb.bm
  %i.oe = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt4pairIiSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEED2Ev(ptr nonnull %.val123) #20
  br label %bb.dl

_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt4pairIKS5_St10unique_ptrIS4_St14default_deleteIS4_EEESt10_Select1stISC_ENS3_25CompareUnconstrainedTypesESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i.i.i, %.thread.i.i.i.thread, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i, %bb.bj, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i189, %.thread, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i, %bb.t, %_ZNSt4pairIiSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEED2Ev.exit
  %.val129575 = phi ptr [ %.val129574, %_ZNSt8_Rb_treeIPN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt4pairIKS5_St10unique_ptrIS4_St14default_deleteIS4_EEESt10_Select1stISC_ENS3_25CompareUnconstrainedTypesESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i.i.i ], [ %.val129574, %.thread.i.i.i.thread ], [ %.val129574, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i ], [ %.val129574, %bb.bj ], [ %i.ea, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i189 ], [ %.val123, %.thread ], [ %.val129574, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i ], [ %.val129574, %bb.t ], [ %.val129574, %_ZNSt4pairIiSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEED2Ev.exit ] ; 3 uses
  %.val130572 = phi ptr [ %.val130571, %_ZNSt8_Rb_treeIPN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt4pairIKS5_St10unique_ptrIS4_St14default_deleteIS4_EEESt10_Select1stISC_ENS3_25CompareUnconstrainedTypesESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i.i.i ], [ %.val130571, %.thread.i.i.i.thread ], [ %.val130571, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i ], [ %.val130571, %bb.bj ], [ %.val130571, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i189 ], [ %.val130571, %.thread ], [ %i.cu, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i ], [ %i.cu, %bb.t ], [ %.val130571, %_ZNSt4pairIiSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEED2Ev.exit ] ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.0337.0366, i64 8 ; 2 uses
  %i.og = icmp eq ptr %i.of, %.val67
  br i1 %i.og, label %._crit_edge, label %bb.g

bb.bp:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE5clearEv.exit
  %i.oh = ptrtoint ptr %.val129576 to i64
  store i64 %i.oh, ptr %15, align 8
  store ptr null, ptr %8, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %.val106, i64 8
  %i.oj = invoke fastcc noundef i32 @_ZN2v88internal6torque12_GLOBAL__N_128SolveInstanceTypeConstraintsESt10unique_ptrINS2_16InstanceTypeTreeESt14default_deleteIS4_EEiPSt6vectorIS7_SaIS7_EE(ptr noundef %15, i32 noundef %1, ptr noundef nonnull %i.oi)
          to label %bb.bq unwind label %bb.bt     ; 2 uses

bb.bq:                                            ; preds = %bb.bp
  %i.ok = load ptr, ptr %15, align 8              ; 5 uses
  %.not.i217 = icmp eq ptr %i.ok, null
  br i1 %.not.i217, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8 ; 2 uses
  %i.om = load ptr, ptr %i.ol, align 8            ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.oo = load ptr, ptr %i.on, align 8            ; 2 uses
  %.not.i2.i.i.i = icmp eq ptr %i.om, %i.oo
  br i1 %.not.i2.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i218

.lr.ph.i.i.i218:                                  ; preds = %bb.br, %.lr.ph.i.i.i218
  %.0.i3.i.i.i = phi ptr [ %i.op, %.lr.ph.i.i.i218 ], [ %i.om, %bb.br ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i), !inline_history !45
  %i.op = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i219 = icmp eq ptr %i.op, %i.oo
  br i1 %.not.i.i.i.i219, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i, label %.lr.ph.i.i.i218, !llvm.loop !28

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i218
  %.val.pre.i.i.i = load ptr, ptr %i.ol, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i, %bb.br
  %.val.i.i.i220 = phi ptr [ %.val.pre.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i ], [ %i.om, %bb.br ] ; 3 uses
  %.not.i.i.i.i.i221 = icmp eq ptr %.val.i.i.i220, null
  br i1 %.not.i.i.i.i.i221, label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  %.val1.i.i.i = load ptr, ptr %i.oq, align 8
  %i.or = ptrtoint ptr %.val1.i.i.i to i64
  %i.os = ptrtoint ptr %.val.i.i.i220 to i64
  %i.ot = sub i64 %i.or, %i.os
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i220, i64 noundef %i.ot) #22, !inline_history !46
  br label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i

_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i: ; preds = %bb.bs, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ok, i64 noundef 56) #22, !inline_history !47
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit

bb.bt:                                            ; preds = %bb.bp
  %i.ou = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #20
  br label %bb.dl

_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i, %bb.bq, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE5clearEv.exit
  %.val129577 = phi ptr [ %.val129576, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE5clearEv.exit ], [ null, %bb.bq ], [ null, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i ] ; 5 uses
  %.0 = phi i32 [ %1, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE5clearEv.exit ], [ %i.oj, %bb.bq ], [ %i.oj, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i ] ; 3 uses
  %.val144 = load ptr, ptr %i.aa, align 8         ; 2 uses
  %i.ov = icmp eq ptr %.val144, %i.y
  br i1 %i.ov, label %._crit_edge376, label %.lr.ph375

._crit_edge376.loopexit:                          ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit267
  %i.ow = trunc nuw i8 %.157 to i1
  br i1 %i.ow, label %bb.cp, label %bb.cr

._crit_edge376:                                   ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit
  br i1 %i.ay, label %bb.cp, label %bb.cr

.lr.ph375:                                        ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit267
  %.1374 = phi i32 [ %i.po, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit267 ], [ %.0, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit ] ; 5 uses
  %.056373 = phi i8 [ %.157, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit267 ], [ %i.az, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit ]
  %.sroa.0331.0372 = phi ptr [ %i.rj, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit267 ], [ %.val144, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.0331.0372, i64 40 ; 2 uses
  %.val.i.i.i222 = load i64, ptr %i.ox, align 8   ; 3 uses
  store i64 %.val.i.i.i222, ptr %16, align 8
  store ptr null, ptr %i.ox, align 8
  %i.oy = trunc nuw i8 %.056373 to i1
  %i.oz = inttoptr i64 %.val.i.i.i222 to ptr      ; 2 uses
  br i1 %i.oy, label %bb.bu, label %bb.bz

bb.bu:                                            ; preds = %.lr.ph375
  %.val104 = load ptr, ptr %0, align 8            ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.val104, i64 40
  %i.pb = load i32, ptr %i.pa, align 8            ; 2 uses
  %.not58 = icmp eq i32 %i.pb, -1
  br i1 %.not58, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oz, i64 32
  %i.pd = load i32, ptr %i.pc, align 8
  %i.pe = icmp slt i32 %i.pb, %i.pd
  br i1 %i.pe, label %bb.bx, label %bb.bz

bb.bw:                                            ; preds = %bb.bu
  %i.pf = getelementptr inbounds nuw i8, ptr %.val104, i64 48
  %i.pg = load i32, ptr %i.pf, align 8
  %i.ph = add nsw i32 %i.pg, %.1374
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oz, i64 32
  %i.pj = load i32, ptr %i.pi, align 8
  %.not59 = icmp sgt i32 %i.ph, %i.pj
  br i1 %.not59, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.pk = invoke fastcc noundef i32 @_ZN2v88internal6torque12_GLOBAL__N_115SelectOwnValuesEPNS2_16InstanceTypeTreeEi(ptr noundef nonnull %.val104, i32 noundef %.1374)
          to label %bb.bz unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.bz:                                            ; preds = %bb.bv, %bb.bx, %bb.bw, %.lr.ph375
  %.157 = phi i8 [ 0, %.lr.ph375 ], [ 1, %bb.bw ], [ 0, %bb.bx ], [ 1, %bb.bv ] ; 2 uses
  %.2 = phi i32 [ %.1374, %.lr.ph375 ], [ %.1374, %bb.bw ], [ %i.pk, %bb.bx ], [ %.1374, %bb.bv ] ; 2 uses
  %.val149 = load ptr, ptr %i.af, align 8         ; 2 uses
  %i.pm = icmp eq ptr %.val149, %i.ad
  br i1 %i.pm, label %._crit_edge371, label %.lr.ph370

._crit_edge371.loopexit:                          ; preds = %bb.cj
  %.val.i.i.i223.pre = load i64, ptr %16, align 8
  br label %._crit_edge371

._crit_edge371:                                   ; preds = %._crit_edge371.loopexit, %bb.bz
  %.val.i.i.i223 = phi i64 [ %.val.i.i.i222, %bb.bz ], [ %.val.i.i.i223.pre, %._crit_edge371.loopexit ]
  %.3.lcssa = phi i32 [ %.2, %bb.bz ], [ %.4, %._crit_edge371.loopexit ]
  store i64 %.val.i.i.i223, ptr %18, align 8
  store ptr null, ptr %16, align 8
  %.val95 = load ptr, ptr %0, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %.val95, i64 8
  %i.po = invoke fastcc noundef i32 @_ZN2v88internal6torque12_GLOBAL__N_128SolveInstanceTypeConstraintsESt10unique_ptrINS2_16InstanceTypeTreeESt14default_deleteIS4_EEiPSt6vectorIS7_SaIS7_EE(ptr noundef %18, i32 noundef %.3.lcssa, ptr noundef nonnull %i.pn)
          to label %bb.ck unwind label %bb.cn     ; 3 uses

.lr.ph370:                                        ; preds = %bb.bz, %bb.cj
  %.3368 = phi i32 [ %.4, %bb.cj ], [ %.2, %bb.bz ] ; 3 uses
  %.sroa.0329.0367 = phi ptr [ %.sroa.0329.1, %bb.cj ], [ %.val149, %bb.bz ] ; 4 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.0329.0367, i64 40 ; 2 uses
  %.val98 = load ptr, ptr %i.pp, align 8          ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.val98, i64 44
  %i.pr = load i32, ptr %i.pq, align 4
  %i.ps = add nsw i32 %i.pr, %.3368
  %.val97 = load ptr, ptr %16, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %.val97, i64 32
  %i.pu = load i32, ptr %i.pt, align 8
  %.not60 = icmp sgt i32 %i.ps, %i.pu
  br i1 %.not60, label %bb.ci, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph370
  %i.pv = ptrtoint ptr %.val98 to i64
  store i64 %i.pv, ptr %17, align 8
  store ptr null, ptr %i.pp, align 8
  %.val96 = load ptr, ptr %0, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %.val96, i64 8
  %i.px = invoke fastcc noundef i32 @_ZN2v88internal6torque12_GLOBAL__N_128SolveInstanceTypeConstraintsESt10unique_ptrINS2_16InstanceTypeTreeESt14default_deleteIS4_EEiPSt6vectorIS7_SaIS7_EE(ptr noundef %17, i32 noundef %.3368, ptr noundef nonnull %i.pw)
          to label %bb.cb unwind label %bb.ch

bb.cb:                                            ; preds = %bb.ca
  %i.py = load ptr, ptr %17, align 8              ; 5 uses
  %.not.i225 = icmp eq ptr %i.py, null
  br i1 %.not.i225, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit237, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8 ; 2 uses
  %i.qa = load ptr, ptr %i.pz, align 8            ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qc = load ptr, ptr %i.qb, align 8            ; 2 uses
  %.not.i2.i.i.i226 = icmp eq ptr %i.qa, %i.qc
  br i1 %.not.i2.i.i.i226, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i232, label %.lr.ph.i.i.i227

.lr.ph.i.i.i227:                                  ; preds = %bb.cc, %.lr.ph.i.i.i227
  %.0.i3.i.i.i228 = phi ptr [ %i.qd, %.lr.ph.i.i.i227 ], [ %i.qa, %bb.cc ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i228), !inline_history !45
  %i.qd = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i228, i64 8 ; 2 uses
  %.not.i.i.i.i229 = icmp eq ptr %i.qd, %i.qc
  br i1 %.not.i.i.i.i229, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i230, label %.lr.ph.i.i.i227, !llvm.loop !28

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i230: ; preds = %.lr.ph.i.i.i227
  %.val.pre.i.i.i231 = load ptr, ptr %i.pz, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i232

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i232: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i230, %bb.cc
  %.val.i.i.i233 = phi ptr [ %.val.pre.i.i.i231, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i230 ], [ %i.qa, %bb.cc ] ; 3 uses
  %.not.i.i.i.i.i234 = icmp eq ptr %.val.i.i.i233, null
  br i1 %.not.i.i.i.i.i234, label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i236, label %bb.cd

bb.cd:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i232
  %i.qe = getelementptr inbounds nuw i8, ptr %i.py, i64 24
  %.val1.i.i.i235 = load ptr, ptr %i.qe, align 8
  %i.qf = ptrtoint ptr %.val1.i.i.i235 to i64
  %i.qg = ptrtoint ptr %.val.i.i.i233 to i64
  %i.qh = sub i64 %i.qf, %i.qg
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i233, i64 noundef %i.qh) #22, !inline_history !46
  br label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i236

_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i236: ; preds = %bb.cd, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i232
  call void @_ZdlPvm(ptr noundef nonnull %i.py, i64 noundef 56) #22, !inline_history !47
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit237

_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit237: ; preds = %bb.cb, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i236
  %i.qi = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0329.0367) #25
  %i.qj = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.0329.0367, ptr noundef nonnull align 8 dereferenceable(32) %i.ad) #20 ; 2 uses
  %i.qk = getelementptr i8, ptr %i.qj, i64 40
  %.val.i.i.i.i238 = load ptr, ptr %i.qk, align 8 ; 5 uses
  %.not.i.i.i.i.i.i.i.i239 = icmp eq ptr %.val.i.i.i.i238, null
  br i1 %.not.i.i.i.i.i.i.i.i239, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit237
  %i.ql = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i238, i64 8 ; 2 uses
  %i.qm = load ptr, ptr %i.ql, align 8            ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i238, i64 16
  %i.qo = load ptr, ptr %i.qn, align 8            ; 2 uses
  %.not.i2.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qm, %i.qo
  br i1 %.not.i2.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.ce, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.0.i3.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.qp, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.qm, %bb.ce ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i.i.i.i.i.i.i.i), !inline_history !45
  %i.qp = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qp, %i.qo
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !28

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.val.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ql, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i.i.i, %bb.ce
  %.val.i.i.i.i.i.i.i.i.i.i240 = phi ptr [ %.val.pre.i.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i.i.i ], [ %i.qm, %bb.ce ] ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i241 = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i240, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i241, label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i
  %i.qq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i238, i64 24
  %.val1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.qq, align 8
  %i.qr = ptrtoint ptr %.val1.i.i.i.i.i.i.i.i.i.i to i64
  %i.qs = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.i240 to i64
  %i.qt = sub i64 %i.qr, %i.qs
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i240, i64 noundef %i.qt) #22, !inline_history !46
  br label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cf, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i238, i64 noundef 56) #22, !inline_history !47
  br label %bb.cg

bb.cg:                                            ; preds = %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit237
  call void @_ZdlPvm(ptr noundef nonnull %i.qj, i64 noundef 48) #22
  %i.qu = load i64, ptr %i.ah, align 8
  %i.qv = add i64 %i.qu, -1
  store i64 %i.qv, ptr %i.ah, align 8
  br label %bb.cj

bb.ch:                                            ; preds = %bb.ca
  %i.qw = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #20
  br label %bb.co

bb.ci:                                            ; preds = %.lr.ph370
  %i.qx = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0329.0367) #25
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.cg
  %.sroa.0329.1 = phi ptr [ %i.qx, %bb.ci ], [ %i.qi, %bb.cg ] ; 2 uses
  %.4 = phi i32 [ %.3368, %bb.ci ], [ %i.px, %bb.cg ] ; 2 uses
  %i.qy = icmp eq ptr %.sroa.0329.1, %i.ad
  br i1 %i.qy, label %._crit_edge371.loopexit, label %.lr.ph370, !llvm.loop !231

bb.ck:                                            ; preds = %._crit_edge371
  %i.qz = load ptr, ptr %18, align 8              ; 5 uses
  %.not.i242 = icmp eq ptr %i.qz, null
  br i1 %.not.i242, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit267, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8 ; 2 uses
  %i.rb = load ptr, ptr %i.ra, align 8            ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8            ; 2 uses
  %.not.i2.i.i.i243 = icmp eq ptr %i.rb, %i.rd
  br i1 %.not.i2.i.i.i243, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i249, label %.lr.ph.i.i.i244

.lr.ph.i.i.i244:                                  ; preds = %bb.cl, %.lr.ph.i.i.i244
  %.0.i3.i.i.i245 = phi ptr [ %i.re, %.lr.ph.i.i.i244 ], [ %i.rb, %bb.cl ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i245), !inline_history !45
  %i.re = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i245, i64 8 ; 2 uses
  %.not.i.i.i.i246 = icmp eq ptr %i.re, %i.rd
  br i1 %.not.i.i.i.i246, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i247, label %.lr.ph.i.i.i244, !llvm.loop !28

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i247: ; preds = %.lr.ph.i.i.i244
  %.val.pre.i.i.i248 = load ptr, ptr %i.ra, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i249

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i249: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i247, %bb.cl
  %.val.i.i.i250 = phi ptr [ %.val.pre.i.i.i248, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i247 ], [ %i.rb, %bb.cl ] ; 3 uses
  %.not.i.i.i.i.i251 = icmp eq ptr %.val.i.i.i250, null
  br i1 %.not.i.i.i.i.i251, label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i253, label %bb.cm

bb.cm:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i249
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qz, i64 24
  %.val1.i.i.i252 = load ptr, ptr %i.rf, align 8
  %i.rg = ptrtoint ptr %.val1.i.i.i252 to i64
  %i.rh = ptrtoint ptr %.val.i.i.i250 to i64
  %i.ri = sub i64 %i.rg, %i.rh
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i250, i64 noundef %i.ri) #22, !inline_history !46
  br label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i253

_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i253: ; preds = %bb.cm, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i249
  call void @_ZdlPvm(ptr noundef nonnull %i.qz, i64 noundef 56) #22, !inline_history !47
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit267

_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit267: ; preds = %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i253, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.rj = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0331.0372) #25 ; 2 uses
  %i.rk = icmp eq ptr %i.rj, %i.y
  br i1 %i.rk, label %._crit_edge376.loopexit, label %.lr.ph375

bb.cn:                                            ; preds = %._crit_edge371
  %i.rl = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #20
  br label %bb.co

bb.co:                                            ; preds = %bb.ch, %bb.cn, %bb.by
  %.pn.pn = phi { ptr, i32 } [ %i.pl, %bb.by ], [ %i.rl, %bb.cn ], [ %i.qw, %bb.ch ]
  call fastcc void @_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.dl

bb.cp:                                            ; preds = %._crit_edge376.loopexit, %._crit_edge376
  %.1.lcssa519 = phi i32 [ %i.po, %._crit_edge376.loopexit ], [ %.0, %._crit_edge376 ]
  %.val68 = load ptr, ptr %0, align 8
  %i.rm = invoke fastcc noundef i32 @_ZN2v88internal6torque12_GLOBAL__N_115SelectOwnValuesEPNS2_16InstanceTypeTreeEi(ptr noundef %.val68, i32 noundef %.1.lcssa519)
          to label %bb.cr unwind label %bb.cq

bb.cq:                                            ; preds = %bb.dh, %bb.cp
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.cr:                                            ; preds = %._crit_edge376.loopexit, %bb.cp, %._crit_edge376
  %.5 = phi i32 [ %.0, %._crit_edge376 ], [ %i.rm, %bb.cp ], [ %i.po, %._crit_edge376.loopexit ] ; 2 uses
  %.val148 = load ptr, ptr %i.af, align 8         ; 2 uses
  %i.ro = icmp eq ptr %.val148, %i.ad
  br i1 %i.ro, label %._crit_edge383, label %.lr.ph382

._crit_edge383:                                   ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit282, %bb.cr
  %.6.lcssa = phi i32 [ %.5, %bb.cr ], [ %i.rr, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit282 ] ; 2 uses
  %.not.i268 = icmp eq ptr %.val130573, null
  br i1 %.not.i268, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit296, label %bb.cw

.lr.ph382:                                        ; preds = %bb.cr, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit282
  %.6380 = phi i32 [ %i.rr, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit282 ], [ %.5, %bb.cr ]
  %.sroa.0327.0379 = phi ptr [ %i.sc, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit282 ], [ %.val148, %bb.cr ] ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.sroa.0327.0379, i64 40 ; 2 uses
  %.val.i.i.i269 = load i64, ptr %i.rp, align 8
  store i64 %.val.i.i.i269, ptr %19, align 8
  store ptr null, ptr %i.rp, align 8
  %.val94 = load ptr, ptr %0, align 8
  %i.rq = getelementptr inbounds nuw i8, ptr %.val94, i64 8
  %i.rr = invoke fastcc noundef i32 @_ZN2v88internal6torque12_GLOBAL__N_128SolveInstanceTypeConstraintsESt10unique_ptrINS2_16InstanceTypeTreeESt14default_deleteIS4_EEiPSt6vectorIS7_SaIS7_EE(ptr noundef %19, i32 noundef %.6380, ptr noundef nonnull %i.rq)
          to label %bb.cs unwind label %bb.cv     ; 2 uses

bb.cs:                                            ; preds = %.lr.ph382
  %i.rs = load ptr, ptr %19, align 8              ; 5 uses
  %.not.i270 = icmp eq ptr %i.rs, null
  br i1 %.not.i270, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit282, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 8 ; 2 uses
  %i.ru = load ptr, ptr %i.rt, align 8            ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  %i.rw = load ptr, ptr %i.rv, align 8            ; 2 uses
  %.not.i2.i.i.i271 = icmp eq ptr %i.ru, %i.rw
  br i1 %.not.i2.i.i.i271, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i277, label %.lr.ph.i.i.i272

.lr.ph.i.i.i272:                                  ; preds = %bb.ct, %.lr.ph.i.i.i272
  %.0.i3.i.i.i273 = phi ptr [ %i.rx, %.lr.ph.i.i.i272 ], [ %i.ru, %bb.ct ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i273), !inline_history !45
  %i.rx = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i273, i64 8 ; 2 uses
  %.not.i.i.i.i274 = icmp eq ptr %i.rx, %i.rw
  br i1 %.not.i.i.i.i274, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i275, label %.lr.ph.i.i.i272, !llvm.loop !28

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i275: ; preds = %.lr.ph.i.i.i272
  %.val.pre.i.i.i276 = load ptr, ptr %i.rt, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i277

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i277: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i275, %bb.ct
  %.val.i.i.i278 = phi ptr [ %.val.pre.i.i.i276, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i275 ], [ %i.ru, %bb.ct ] ; 3 uses
  %.not.i.i.i.i.i279 = icmp eq ptr %.val.i.i.i278, null
  br i1 %.not.i.i.i.i.i279, label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i281, label %bb.cu

bb.cu:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i277
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rs, i64 24
  %.val1.i.i.i280 = load ptr, ptr %i.ry, align 8
  %i.rz = ptrtoint ptr %.val1.i.i.i280 to i64
  %i.sa = ptrtoint ptr %.val.i.i.i278 to i64
  %i.sb = sub i64 %i.rz, %i.sa
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i278, i64 noundef %i.sb) #22, !inline_history !46
  br label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i281

_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i281: ; preds = %bb.cu, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i277
  call void @_ZdlPvm(ptr noundef nonnull %i.rs, i64 noundef 56) #22, !inline_history !47
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit282

_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit282: ; preds = %bb.cs, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i281
  %i.sc = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0327.0379) #25 ; 2 uses
  %i.sd = icmp eq ptr %i.sc, %i.ad
  br i1 %i.sd, label %._crit_edge383, label %.lr.ph382

bb.cv:                                            ; preds = %.lr.ph382
  %i.se = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #20
  br label %bb.dl

bb.cw:                                            ; preds = %._crit_edge383
  %i.sf = ptrtoint ptr %.val130573 to i64
  store i64 %i.sf, ptr %20, align 8
  store ptr null, ptr %9, align 8
  %.val93 = load ptr, ptr %0, align 8
  %i.sg = getelementptr inbounds nuw i8, ptr %.val93, i64 8
  %i.sh = invoke fastcc noundef i32 @_ZN2v88internal6torque12_GLOBAL__N_128SolveInstanceTypeConstraintsESt10unique_ptrINS2_16InstanceTypeTreeESt14default_deleteIS4_EEiPSt6vectorIS7_SaIS7_EE(ptr noundef %20, i32 noundef %.6.lcssa, ptr noundef nonnull %i.sg)
          to label %bb.cx unwind label %bb.da     ; 2 uses

bb.cx:                                            ; preds = %bb.cw
  %i.si = load ptr, ptr %20, align 8              ; 5 uses
  %.not.i284 = icmp eq ptr %i.si, null
  br i1 %.not.i284, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit296, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 8 ; 2 uses
  %i.sk = load ptr, ptr %i.sj, align 8            ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.sm = load ptr, ptr %i.sl, align 8            ; 2 uses
  %.not.i2.i.i.i285 = icmp eq ptr %i.sk, %i.sm
  br i1 %.not.i2.i.i.i285, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i291, label %.lr.ph.i.i.i286

.lr.ph.i.i.i286:                                  ; preds = %bb.cy, %.lr.ph.i.i.i286
  %.0.i3.i.i.i287 = phi ptr [ %i.sn, %.lr.ph.i.i.i286 ], [ %i.sk, %bb.cy ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i287), !inline_history !45
  %i.sn = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i287, i64 8 ; 2 uses
  %.not.i.i.i.i288 = icmp eq ptr %i.sn, %i.sm
  br i1 %.not.i.i.i.i288, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i289, label %.lr.ph.i.i.i286, !llvm.loop !28

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i289: ; preds = %.lr.ph.i.i.i286
  %.val.pre.i.i.i290 = load ptr, ptr %i.sj, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i291

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i291: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i289, %bb.cy
  %.val.i.i.i292 = phi ptr [ %.val.pre.i.i.i290, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i289 ], [ %i.sk, %bb.cy ] ; 3 uses
  %.not.i.i.i.i.i293 = icmp eq ptr %.val.i.i.i292, null
  br i1 %.not.i.i.i.i.i293, label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i295, label %bb.cz

bb.cz:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i291
  %i.so = getelementptr inbounds nuw i8, ptr %i.si, i64 24
  %.val1.i.i.i294 = load ptr, ptr %i.so, align 8
  %i.sp = ptrtoint ptr %.val1.i.i.i294 to i64
  %i.sq = ptrtoint ptr %.val.i.i.i292 to i64
  %i.sr = sub i64 %i.sp, %i.sq
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i292, i64 noundef %i.sr) #22, !inline_history !46
  br label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i295

_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i295: ; preds = %bb.cz, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i291
  call void @_ZdlPvm(ptr noundef nonnull %i.si, i64 noundef 56) #22, !inline_history !47
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit296

bb.da:                                            ; preds = %bb.cw
end_hunk_1
