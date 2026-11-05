Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/instance-type-generator?download=true
inline.NumInlined: 1289
inline.NumDeleted: 517
begin_hunk_0_@_ZN2v88internal6torque8ToStringIJRA50_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_DpOT_:bb.a
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
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.au) #20
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
define internal fastcc noundef i32 @_ZN2v88internal6torque12_GLOBAL__N_128SolveInstanceTypeConstraintsESt10unique_ptrINS2_16InstanceTypeTreeESt14default_deleteIS4_EEiPSt6vectorIS7_SaIS7_EE(ptr nofree noundef nonnull align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !308 {
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
  %16 = alloca %"class.std::unique_ptr", align 8  ; 7 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !309
  call void @_ZN2v88internal6torque8ToStringIJRA32_KcRiRA5_S3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESE_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(32) @.str.53, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.54, ptr noundef nonnull align 8 dereferenceable(32) %i.e), !noalias !309
  invoke void @_ZN2v88internal6torque14MessageBuilderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13TorqueMessage4KindE(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %6, align 8, !noalias !309 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN2v88internal6torque5ErrorIJRA32_KcRiRA5_S3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_14MessageBuilderEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !noalias !309
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #22
  br label %_ZN2v88internal6torque5ErrorIJRA32_KcRiRA5_S3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_14MessageBuilderEDpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %6, align 8, !noalias !309 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !noalias !309
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

common.resume:                                    ; preds = %bb.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ], [ %.pn64.pn, %bb.di ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !309
  br label %common.resume

_ZN2v88internal6torque5ErrorIJRA32_KcRiRA5_S3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_14MessageBuilderEDpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !309
  %.val125 = load ptr, ptr %0, align 8
  %i.q = load ptr, ptr %.val125, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  %i.s = load ptr, ptr %i.r, align 8, !noalias !310
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 2 uses
  %i.w = load i8, ptr %i.v, align 4, !range !87, !noundef !88
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
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
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
  %.phi.trans.insert399 = getelementptr inbounds nuw i8, ptr %.val107.pre, i64 8
  %.pre400 = load ptr, ptr %.phi.trans.insert399, align 8 ; 3 uses
  %.phi.trans.insert401 = getelementptr inbounds nuw i8, ptr %.val107.pre, i64 16
  %.pre402 = load ptr, ptr %.phi.trans.insert401, align 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.val107.pre, i64 16
  %.not.i.i = icmp eq ptr %.pre402, %.pre400
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %.pre400, %._crit_edge ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.05.i.i.i.i), !inline_history !9
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, %.pre402
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %.pre400, ptr %i.au, align 8
  %.val106.pre = load ptr, ptr %0, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE5clearEv.exit: ; preds = %bb.f, %._crit_edge, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i
  %.val129575 = phi ptr [ %.val129574, %._crit_edge ], [ %.val129574, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i ], [ null, %bb.f ] ; 3 uses
  %.val130572 = phi ptr [ %.val130571, %._crit_edge ], [ %.val130571, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i ], [ null, %bb.f ] ; 2 uses
  %.val106 = phi ptr [ %.val107.pre, %._crit_edge ], [ %.val106.pre, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i ], [ %.val124, %bb.f ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val106, i64 48
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = icmp sgt i32 %i.ax, 0                   ; 2 uses
  %i.az = zext i1 %i.ay to i8
  %.not.i = icmp eq ptr %.val129575, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit, label %bb.bp

bb.g:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit
  %.val129573 = phi ptr [ null, %.lr.ph ], [ %.val129574, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit ] ; 13 uses
  %.val130570 = phi ptr [ null, %.lr.ph ], [ %.val130571, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit ] ; 13 uses
  %.sroa.0336.0365 = phi ptr [ %.val, %.lr.ph ], [ %i.oh, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit ] ; 15 uses
  %.val123 = load ptr, ptr %.sroa.0336.0365, align 8 ; 35 uses
  %i.ba = load ptr, ptr %.val123, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 248
  %i.bc = load i32, ptr %i.bb, align 4            ; 3 uses
  %i.bd = and i32 %i.bc, 64
  %.not345 = icmp eq i32 %i.bd, 0
  %i.be = ptrtoint ptr %.val123 to i64            ; 2 uses
  br i1 %.not345, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not348 = icmp eq ptr %.val130570, null        ; 2 uses
  br i1 %.not348, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  %i.bf = load ptr, ptr %.val130570, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 168
  %.val121 = load ptr, ptr %.sroa.0336.0365, align 8
  %i.bh = load ptr, ptr %.val121, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 168
  %.val120 = load ptr, ptr %0, align 8
  %i.bj = load ptr, ptr %.val120, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !311
  invoke void @_ZN2v88internal6torque8ToStringIJRA56_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA6_S3_SD_RA32_S3_SD_EEESB_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(56) @.str.55, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 1 dereferenceable(6) @.str.50, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 1 dereferenceable(32) @.str.56, ptr noundef nonnull align 8 dereferenceable(32) %i.bk)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN2v88internal6torque14MessageBuilderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13TorqueMessage4KindE(ptr noundef nonnull align 8 dereferenceable(96) %12, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 0)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc
  %i.bl = load ptr, ptr %5, align 8, !noalias !311 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.al
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159: ; preds = %bb.j
  %i.bn = load i64, ptr %i.al, align 8, !noalias !311
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i160

bb.k:                                             ; preds = %.noexc
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %5, align 8, !noalias !311 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.al
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.k
  %i.bs = load i64, ptr %i.al, align 8, !noalias !311
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !311
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i160: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !311
  %.val119 = load ptr, ptr %.sroa.0336.0365, align 8
  %i.bu = load ptr, ptr %.val119, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 288
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !312
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.by = load i8, ptr %i.an, align 4, !range !87, !noundef !88
  %i.bz = trunc nuw i8 %i.by to i1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.am, ptr noundef nonnull align 4 dereferenceable(28) %i.bx, i64 28, i1 false)
  br i1 %i.bz, label %_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit161, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i160
  store i8 1, ptr %i.an, align 4
  br label %_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit161

_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit161: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i160, %bb.l
  call void @_ZN2v88internal6torque14MessageBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  %.val118.pre = load ptr, ptr %.sroa.0336.0365, align 8 ; 2 uses
  %.pre = load ptr, ptr %.val118.pre, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 248
  %.pre396 = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ca, %bb.m ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.di

bb.n:                                             ; preds = %bb.h, %_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit161
  %i.cb = phi i32 [ %i.bc, %bb.h ], [ %.pre396, %_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit161 ]
  %.val118 = phi ptr [ %.val123, %bb.h ], [ %.val118.pre, %_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit161 ]
  %i.cc = and i32 %i.cb, 128
  %.not349 = icmp eq i32 %i.cc, 0
  br i1 %.not349, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %.val117 = load ptr, ptr %.sroa.0336.0365, align 8
  %i.cd = load ptr, ptr %.val117, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !313
  invoke void @_ZN2v88internal6torque8ToStringIJRA86_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(86) @.str.57, ptr noundef nonnull align 8 dereferenceable(32) %i.ce)
          to label %.noexc164 unwind label %bb.s

.noexc164:                                        ; preds = %bb.o
  invoke void @_ZN2v88internal6torque14MessageBuilderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13TorqueMessage4KindE(ptr noundef nonnull align 8 dereferenceable(96) %13, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 0)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc164
  %i.cf = load ptr, ptr %4, align 8, !noalias !313 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ao
  br i1 %i.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i162: ; preds = %bb.p
  %i.ch = load i64, ptr %i.ao, align 8, !noalias !313
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i163

bb.q:                                             ; preds = %.noexc164
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %4, align 8, !noalias !313 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ao
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.q
  %i.cm = load i64, ptr %i.ao, align 8, !noalias !313
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !313
  br label %.body165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i163: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !313
  %.val116 = load ptr, ptr %.sroa.0336.0365, align 8
  %i.co = load ptr, ptr %.val116, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 288
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !314
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cs = load i8, ptr %i.aq, align 4, !range !87, !noundef !88
  %i.ct = trunc nuw i8 %i.cs to i1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ap, ptr noundef nonnull align 4 dereferenceable(28) %i.cr, i64 28, i1 false)
  br i1 %i.ct, label %_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit167, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i163
  store i8 1, ptr %i.aq, align 4
  br label %_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit167

_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit167: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i163, %bb.r
  call void @_ZN2v88internal6torque14MessageBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %.pre397 = load ptr, ptr %.sroa.0336.0365, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body165

.body165:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.s
  %eh.lpad-body166 = phi { ptr, i32 } [ %i.cu, %bb.s ], [ %i.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.di

bb.t:                                             ; preds = %_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit167, %bb.n
  %i.cv = phi ptr [ %.pre397, %_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit167 ], [ %.val118, %bb.n ] ; 3 uses
  store ptr null, ptr %.sroa.0336.0365, align 8
  store ptr %i.cv, ptr %9, align 8
  br i1 %.not348, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = getelementptr inbounds nuw i8, ptr %.val130570, i64 8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val130570, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %.not.i2.i.i.i.i.i.i = icmp eq ptr %i.cx, %i.cz
  br i1 %.not.i2.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal6torque12_GLOBAL__N_128SolveInstanceTypeConstraintsESt10unique_ptrINS2_16InstanceTypeTreeESt14default_deleteIS4_EEiPSt6vectorIS7_SaIS7_EE:bb.a
.thread21.i.i.i:                                  ; preds = %bb.bd
  %.not.i.i.i.i.i.i10.i.i.i = icmp eq ptr %.val123, null
  br i1 %.not.i.i.i.i.i.i10.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt4pairIKS5_St10unique_ptrIS4_St14default_deleteIS4_EEESt10_Select1stISC_ENS3_25CompareUnconstrainedTypesESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i.i.i, label %.thread21.i.i.i.thread

.thread21.i.i.i.thread:                           ; preds = %_ZNK2v88internal6torque12_GLOBAL__N_125CompareUnconstrainedTypesclEPKNS2_16InstanceTypeTreeES6_.exit45.i.i.i.i, %_ZNK2v88internal6torque12_GLOBAL__N_125CompareUnconstrainedTypesclEPKNS2_16InstanceTypeTreeES6_.exit23.i.i.i, %.thread21.i.i.i
  %i.nd = getelementptr inbounds nuw i8, ptr %.val123, i64 8 ; 2 uses
  %i.ne = load ptr, ptr %i.nd, align 8            ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.val123, i64 16
  %i.ng = load ptr, ptr %i.nf, align 8            ; 2 uses
  %.not.i2.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ne, %i.ng
  br i1 %.not.i2.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.thread21.i.i.i.thread, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.0.i3.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ne, %.thread21.i.i.i.thread ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i.i.i.i.i.i.i.i.i), !inline_history !6
  %i.nh = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nh, %i.ng
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.val.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.nd, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i, %.thread21.i.i.i.thread
  %.val.i.i.i.i.i.i.i.i11.i.i.i = phi ptr [ %.val.pre.i.i.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ne, %.thread21.i.i.i.thread ] ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i11.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ni = getelementptr inbounds nuw i8, ptr %.val123, i64 24
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ni, align 8
  %i.nj = ptrtoint ptr %.val1.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.nk = ptrtoint ptr %.val.i.i.i.i.i.i.i.i11.i.i.i to i64
  %i.nl = sub i64 %i.nj, %i.nk
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i11.i.i.i, i64 noundef %i.nl) #22, !inline_history !7
  br label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bi, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val123, i64 noundef 56) #22, !inline_history !8
  br label %_ZNSt8_Rb_treeIPN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt4pairIKS5_St10unique_ptrIS4_St14default_deleteIS4_EEESt10_Select1stISC_ENS3_25CompareUnconstrainedTypesESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i.i.i

_ZNSt8_Rb_treeIPN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt4pairIKS5_St10unique_ptrIS4_St14default_deleteIS4_EEESt10_Select1stISC_ENS3_25CompareUnconstrainedTypesESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i.i.i.i, %.thread21.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef 48) #22
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit

bb.bj:                                            ; preds = %bb.al
  %.not.i.i197 = icmp eq ptr %.val123, null
  br i1 %.not.i.i197, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit, label %.thread516

.thread516:                                       ; preds = %_ZNK2v88internal6torque12_GLOBAL__N_125CompareUnconstrainedTypesclEPKNS2_16InstanceTypeTreeES6_.exit.i, %bb.bj
  %i.nm = getelementptr inbounds nuw i8, ptr %.val123, i64 8 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8            ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.val123, i64 16
  %i.np = load ptr, ptr %i.no, align 8            ; 2 uses
  %.not.i2.i.i.i.i = icmp eq ptr %i.nn, %i.np
  br i1 %.not.i2.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i198

.lr.ph.i.i.i.i198:                                ; preds = %.thread516, %.lr.ph.i.i.i.i198
  %.0.i3.i.i.i.i = phi ptr [ %i.nq, %.lr.ph.i.i.i.i198 ], [ %i.nn, %.thread516 ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i.i), !inline_history !6
  %i.nq = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i199 = icmp eq ptr %i.nq, %i.np
  br i1 %.not.i.i.i.i.i199, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i198, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i198
  %.val.pre.i.i.i.i = load ptr, ptr %i.nm, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i, %.thread516
  %.val.i.i.i.i200 = phi ptr [ %.val.pre.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i ], [ %i.nn, %.thread516 ] ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i200, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  %i.nr = getelementptr inbounds nuw i8, ptr %.val123, i64 24
  %.val1.i.i.i.i = load ptr, ptr %i.nr, align 8
  %i.ns = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.nt = ptrtoint ptr %.val.i.i.i.i200 to i64
  %i.nu = sub i64 %i.ns, %i.nt
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i200, i64 noundef %i.nu) #22, !inline_history !7
  br label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i: ; preds = %bb.bk, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val123, i64 noundef 56) #22, !inline_history !8
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit

bb.bl:                                            ; preds = %.critedge.i
  %i.nv = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt4pairIPN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt10unique_ptrIS4_St14default_deleteIS4_EEED2Ev(ptr %.val123) #20
  br label %bb.di

bb.bm:                                            ; preds = %bb.af
  %i.nw = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21
          to label %.noexc203 unwind label %bb.bo ; 3 uses

.noexc203:                                        ; preds = %bb.bm
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 32
  store i32 %i.en, ptr %i.nx, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 40
  store i64 %i.be, ptr %i.ny, align 8
  %.045.i.i.i = load ptr, ptr %i.z, align 8       ; 2 uses
  %.not6.i.i.i = icmp eq ptr %.045.i.i.i, null
  br i1 %.not6.i.i.i, label %_ZNSt4pairIiSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEED2Ev.exit, label %.lr.ph.i.i.i202

.lr.ph.i.i.i202:                                  ; preds = %.noexc203, %.lr.ph.i.i.i202
  %.047.i.i.i = phi ptr [ %.04.i.i.i, %.lr.ph.i.i.i202 ], [ %.045.i.i.i, %.noexc203 ] ; 4 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %.047.i.i.i, i64 32
  %i.oa = load i32, ptr %i.nz, align 4
  %i.ob = icmp slt i32 %i.en, %i.oa               ; 2 uses
  %.in.v.i.i.i = select i1 %i.ob, i64 16, i64 24
  %.in.i.i.i = getelementptr i8, ptr %.047.i.i.i, i64 %.in.v.i.i.i
  %.04.i.i.i = load ptr, ptr %.in.i.i.i, align 8  ; 2 uses
  %.not.i.i.i = icmp eq ptr %.04.i.i.i, null
  br i1 %.not.i.i.i, label %bb.bn, label %.lr.ph.i.i.i202, !llvm.loop !306

bb.bn:                                            ; preds = %.lr.ph.i.i.i202
  %i.oc = icmp eq ptr %.047.i.i.i, %i.y
  %spec.select.i.i = or i1 %i.oc, %i.ob
  br label %_ZNSt4pairIiSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEED2Ev.exit

_ZNSt4pairIiSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEED2Ev.exit: ; preds = %.noexc203, %bb.bn
  %.0.lcssa.i14.i.i = phi ptr [ %i.y, %.noexc203 ], [ %.047.i.i.i, %bb.bn ]
  %i.od = phi i1 [ true, %.noexc203 ], [ %spec.select.i.i, %bb.bn ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.od, ptr noundef nonnull %i.nw, ptr noundef nonnull %.0.lcssa.i14.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.y) #20
  %i.oe = load i64, ptr %i.ac, align 8
  %i.of = add i64 %i.oe, 1
  store i64 %i.of, ptr %i.ac, align 8
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit

bb.bo:                                            ; preds = %bb.bm
  %i.og = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt4pairIiSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEED2Ev(ptr nonnull %.val123) #20
  br label %bb.di

_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EEaSEOS7_.exit: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt4pairIKS5_St10unique_ptrIS4_St14default_deleteIS4_EEESt10_Select1stISC_ENS3_25CompareUnconstrainedTypesESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i.i.i, %.thread.i.i.i.thread, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i, %bb.bj, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i189, %.thread, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i, %bb.t, %_ZNSt4pairIiSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEED2Ev.exit
  %.val129574 = phi ptr [ %.val129573, %_ZNSt8_Rb_treeIPN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt4pairIKS5_St10unique_ptrIS4_St14default_deleteIS4_EEESt10_Select1stISC_ENS3_25CompareUnconstrainedTypesESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i.i.i ], [ %.val129573, %.thread.i.i.i.thread ], [ %.val129573, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i ], [ %.val129573, %bb.bj ], [ %i.ec, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i189 ], [ %.val123, %.thread ], [ %.val129573, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i ], [ %.val129573, %bb.t ], [ %.val129573, %_ZNSt4pairIiSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEED2Ev.exit ] ; 3 uses
  %.val130571 = phi ptr [ %.val130570, %_ZNSt8_Rb_treeIPN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt4pairIKS5_St10unique_ptrIS4_St14default_deleteIS4_EEESt10_Select1stISC_ENS3_25CompareUnconstrainedTypesESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i.i.i.i ], [ %.val130570, %.thread.i.i.i.thread ], [ %.val130570, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i ], [ %.val130570, %bb.bj ], [ %.val130570, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i189 ], [ %.val130570, %.thread ], [ %i.cv, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i ], [ %i.cv, %bb.t ], [ %.val130570, %_ZNSt4pairIiSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEED2Ev.exit ] ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0336.0365, i64 8 ; 2 uses
  %i.oi = icmp eq ptr %i.oh, %.val67
  br i1 %i.oi, label %._crit_edge, label %bb.g

bb.bp:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE5clearEv.exit
  %i.oj = ptrtoint ptr %.val129575 to i64
  store i64 %i.oj, ptr %15, align 8
  store ptr null, ptr %8, align 8
  %i.ok = getelementptr inbounds nuw i8, ptr %.val106, i64 8
  %i.ol = invoke fastcc noundef i32 @_ZN2v88internal6torque12_GLOBAL__N_128SolveInstanceTypeConstraintsESt10unique_ptrINS2_16InstanceTypeTreeESt14default_deleteIS4_EEiPSt6vectorIS7_SaIS7_EE(ptr noundef align 8 %15, i32 noundef %1, ptr noundef nonnull %i.ok)
          to label %bb.bq unwind label %bb.bt     ; 2 uses

bb.bq:                                            ; preds = %bb.bp
  %i.om = load ptr, ptr %15, align 8              ; 5 uses
  %.not.i217 = icmp eq ptr %i.om, null
  br i1 %.not.i217, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 8 ; 2 uses
  %i.oo = load ptr, ptr %i.on, align 8            ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 16
  %i.oq = load ptr, ptr %i.op, align 8            ; 2 uses
  %.not.i2.i.i.i = icmp eq ptr %i.oo, %i.oq
  br i1 %.not.i2.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i218

.lr.ph.i.i.i218:                                  ; preds = %bb.br, %.lr.ph.i.i.i218
  %.0.i3.i.i.i = phi ptr [ %i.or, %.lr.ph.i.i.i218 ], [ %i.oo, %bb.br ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i), !inline_history !6
  %i.or = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i219 = icmp eq ptr %i.or, %i.oq
  br i1 %.not.i.i.i.i219, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i, label %.lr.ph.i.i.i218, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i218
  %.val.pre.i.i.i = load ptr, ptr %i.on, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i, %bb.br
  %.val.i.i.i220 = phi ptr [ %.val.pre.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i ], [ %i.oo, %bb.br ] ; 3 uses
  %.not.i.i.i.i.i221 = icmp eq ptr %.val.i.i.i220, null
  br i1 %.not.i.i.i.i.i221, label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i
  %i.os = getelementptr inbounds nuw i8, ptr %i.om, i64 24
  %.val1.i.i.i = load ptr, ptr %i.os, align 8
  %i.ot = ptrtoint ptr %.val1.i.i.i to i64
  %i.ou = ptrtoint ptr %.val.i.i.i220 to i64
  %i.ov = sub i64 %i.ot, %i.ou
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i220, i64 noundef %i.ov) #22, !inline_history !7
  br label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i

_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i: ; preds = %bb.bs, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.om, i64 noundef 56) #22, !inline_history !8
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit

bb.bt:                                            ; preds = %bb.bp
  %i.ow = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #20
  br label %bb.di

_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i, %bb.bq, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE5clearEv.exit
  %.val129576 = phi ptr [ %.val129575, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE5clearEv.exit ], [ null, %bb.bq ], [ null, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i ] ; 5 uses
  %.0 = phi i32 [ %1, %_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE5clearEv.exit ], [ %i.ol, %bb.bq ], [ %i.ol, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i ] ; 3 uses
  %.val144 = load ptr, ptr %i.aa, align 8         ; 2 uses
  %i.ox = icmp eq ptr %.val144, %i.y
  br i1 %i.ox, label %._crit_edge375, label %.lr.ph374

._crit_edge375.loopexit:                          ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit267
  %i.oy = trunc nuw i8 %.147 to i1
  br i1 %i.oy, label %bb.cp, label %bb.cq

._crit_edge375:                                   ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit
  br i1 %i.ay, label %bb.cp, label %bb.cq

.lr.ph374:                                        ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit267
  %.1373 = phi i32 [ %i.pq, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit267 ], [ %.0, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit ] ; 5 uses
  %.046372 = phi i8 [ %.147, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit267 ], [ %i.az, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit ]
  %.sroa.0331.0371 = phi ptr [ %i.rm, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit267 ], [ %.val144, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0331.0371, i64 40 ; 2 uses
  %.val.i.i.i222 = load i64, ptr %i.oz, align 8   ; 4 uses
  store i64 %.val.i.i.i222, ptr %16, align 8
  store ptr null, ptr %i.oz, align 8
  %i.pa = trunc nuw i8 %.046372 to i1
  %i.pb = inttoptr i64 %.val.i.i.i222 to ptr      ; 3 uses
  br i1 %i.pa, label %bb.bu, label %bb.bz

bb.bu:                                            ; preds = %.lr.ph374
  %.val104 = load ptr, ptr %0, align 8            ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.val104, i64 40
  %i.pd = load i32, ptr %i.pc, align 8            ; 2 uses
  %.not58 = icmp eq i32 %i.pd, -1
  br i1 %.not58, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 32
  %i.pf = load i32, ptr %i.pe, align 8
  %i.pg = icmp slt i32 %i.pd, %i.pf
  br i1 %i.pg, label %bb.bx, label %bb.bz

bb.bw:                                            ; preds = %bb.bu
  %i.ph = getelementptr inbounds nuw i8, ptr %.val104, i64 48
  %i.pi = load i32, ptr %i.ph, align 8
  %i.pj = add nsw i32 %i.pi, %.1373
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pb, i64 32
  %i.pl = load i32, ptr %i.pk, align 8
  %.not59 = icmp sgt i32 %i.pj, %i.pl
  br i1 %.not59, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.pm = invoke fastcc noundef i32 @_ZN2v88internal6torque12_GLOBAL__N_115SelectOwnValuesEPNS2_16InstanceTypeTreeEi(ptr noundef nonnull %.val104, i32 noundef %.1373)
          to label %bb.bz unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.bz:                                            ; preds = %bb.bv, %bb.bx, %bb.bw, %.lr.ph374
  %.147 = phi i8 [ 0, %.lr.ph374 ], [ 1, %bb.bw ], [ 0, %bb.bx ], [ 1, %bb.bv ] ; 2 uses
  %.2 = phi i32 [ %.1373, %.lr.ph374 ], [ %.1373, %bb.bw ], [ %i.pm, %bb.bx ], [ %.1373, %bb.bv ] ; 2 uses
  %.val149 = load ptr, ptr %i.af, align 8         ; 2 uses
  %i.po = icmp eq ptr %.val149, %i.ad
  br i1 %i.po, label %._crit_edge370, label %.lr.ph369

._crit_edge370:                                   ; preds = %bb.cj, %bb.bz
  %.val.i.i.i223 = phi i64 [ %.val.i.i.i222, %bb.bz ], [ %.val.i.i.i223409, %bb.cj ]
  %.3.lcssa = phi i32 [ %.2, %bb.bz ], [ %.4, %bb.cj ]
  store i64 %.val.i.i.i223, ptr %18, align 8
  store ptr null, ptr %16, align 8
  %.val95 = load ptr, ptr %0, align 8
  %i.pp = getelementptr inbounds nuw i8, ptr %.val95, i64 8
  %i.pq = invoke fastcc noundef i32 @_ZN2v88internal6torque12_GLOBAL__N_128SolveInstanceTypeConstraintsESt10unique_ptrINS2_16InstanceTypeTreeESt14default_deleteIS4_EEiPSt6vectorIS7_SaIS7_EE(ptr noundef align 8 %18, i32 noundef %.3.lcssa, ptr noundef nonnull %i.pp)
          to label %bb.ck unwind label %bb.cn     ; 3 uses

.lr.ph369:                                        ; preds = %bb.bz, %bb.cj
  %.val.i.i.i223407 = phi i64 [ %.val.i.i.i223409, %bb.cj ], [ %.val.i.i.i222, %bb.bz ]
  %.val97 = phi ptr [ %.val97405, %bb.cj ], [ %i.pb, %bb.bz ] ; 2 uses
  %.3367 = phi i32 [ %.4, %bb.cj ], [ %.2, %bb.bz ] ; 3 uses
  %.sroa.0329.0366 = phi ptr [ %.sroa.0329.1, %bb.cj ], [ %.val149, %bb.bz ] ; 4 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.0329.0366, i64 40 ; 2 uses
  %.val98 = load ptr, ptr %i.pr, align 8          ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.val98, i64 44
  %i.pt = load i32, ptr %i.ps, align 4
  %i.pu = add nsw i32 %i.pt, %.3367
  %i.pv = getelementptr inbounds nuw i8, ptr %.val97, i64 32
  %i.pw = load i32, ptr %i.pv, align 8
  %.not60 = icmp sgt i32 %i.pu, %i.pw
  br i1 %.not60, label %bb.ci, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph369
  %i.px = ptrtoint ptr %.val98 to i64
  store i64 %i.px, ptr %17, align 8
  store ptr null, ptr %i.pr, align 8
  %.val96 = load ptr, ptr %0, align 8
  %i.py = getelementptr inbounds nuw i8, ptr %.val96, i64 8
  %i.pz = invoke fastcc noundef i32 @_ZN2v88internal6torque12_GLOBAL__N_128SolveInstanceTypeConstraintsESt10unique_ptrINS2_16InstanceTypeTreeESt14default_deleteIS4_EEiPSt6vectorIS7_SaIS7_EE(ptr noundef align 8 %17, i32 noundef %.3367, ptr noundef nonnull %i.py)
          to label %bb.cb unwind label %bb.ch

bb.cb:                                            ; preds = %bb.ca
  %i.qa = load ptr, ptr %17, align 8              ; 5 uses
  %.not.i225 = icmp eq ptr %i.qa, null
  br i1 %.not.i225, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit237, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 8 ; 2 uses
  %i.qc = load ptr, ptr %i.qb, align 8            ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %i.qe = load ptr, ptr %i.qd, align 8            ; 2 uses
  %.not.i2.i.i.i226 = icmp eq ptr %i.qc, %i.qe
  br i1 %.not.i2.i.i.i226, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i232, label %.lr.ph.i.i.i227

.lr.ph.i.i.i227:                                  ; preds = %bb.cc, %.lr.ph.i.i.i227
  %.0.i3.i.i.i228 = phi ptr [ %i.qf, %.lr.ph.i.i.i227 ], [ %i.qc, %bb.cc ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i228), !inline_history !6
  %i.qf = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i228, i64 8 ; 2 uses
  %.not.i.i.i.i229 = icmp eq ptr %i.qf, %i.qe
  br i1 %.not.i.i.i.i229, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i230, label %.lr.ph.i.i.i227, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i230: ; preds = %.lr.ph.i.i.i227
  %.val.pre.i.i.i231 = load ptr, ptr %i.qb, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i232

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i232: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i230, %bb.cc
  %.val.i.i.i233 = phi ptr [ %.val.pre.i.i.i231, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i230 ], [ %i.qc, %bb.cc ] ; 3 uses
  %.not.i.i.i.i.i234 = icmp eq ptr %.val.i.i.i233, null
  br i1 %.not.i.i.i.i.i234, label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i236, label %bb.cd

bb.cd:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i232
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qa, i64 24
  %.val1.i.i.i235 = load ptr, ptr %i.qg, align 8
  %i.qh = ptrtoint ptr %.val1.i.i.i235 to i64
  %i.qi = ptrtoint ptr %.val.i.i.i233 to i64
  %i.qj = sub i64 %i.qh, %i.qi
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i233, i64 noundef %i.qj) #22, !inline_history !7
  br label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i236

_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i236: ; preds = %bb.cd, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i232
  call void @_ZdlPvm(ptr noundef nonnull %i.qa, i64 noundef 56) #22, !inline_history !8
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit237

_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit237: ; preds = %bb.cb, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i236
  %i.qk = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0329.0366) #25
  %i.ql = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.sroa.0329.0366, ptr noundef nonnull align 8 dereferenceable(32) %i.ad) #20 ; 2 uses
  %i.qm = getelementptr i8, ptr %i.ql, i64 40
  %.val.i.i.i.i238 = load ptr, ptr %i.qm, align 8 ; 5 uses
  %.not.i.i.i.i.i.i.i.i239 = icmp eq ptr %.val.i.i.i.i238, null
  %.val97.pre = load ptr, ptr %16, align 8        ; 2 uses
  %i.qn = ptrtoint ptr %.val97.pre to i64
  br i1 %.not.i.i.i.i.i.i.i.i239, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit237
  %i.qo = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i238, i64 8 ; 2 uses
  %i.qp = load ptr, ptr %i.qo, align 8            ; 3 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i238, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8            ; 2 uses
  %.not.i2.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qp, %i.qr
  br i1 %.not.i2.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.ce, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.0.i3.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.qs, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.qp, %bb.ce ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i.i.i.i.i.i.i.i), !inline_history !6
  %i.qs = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.qs, %i.qr
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.val.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.qo, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i.i.i, %bb.ce
  %.val.i.i.i.i.i.i.i.i.i.i240 = phi ptr [ %.val.pre.i.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i.i.i.i.i.i.i.i ], [ %i.qp, %bb.ce ] ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i241 = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i240, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i241, label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i
  %i.qt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i238, i64 24
  %.val1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.qt, align 8
  %i.qu = ptrtoint ptr %.val1.i.i.i.i.i.i.i.i.i.i to i64
  %i.qv = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.i240 to i64
  %i.qw = sub i64 %i.qu, %i.qv
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i240, i64 noundef %i.qw) #22, !inline_history !7
  br label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.cf, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i238, i64 noundef 56) #22, !inline_history !8
  br label %bb.cg

bb.cg:                                            ; preds = %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit237
  call void @_ZdlPvm(ptr noundef nonnull %i.ql, i64 noundef 48) #22
  %i.qx = load i64, ptr %i.ah, align 8
  %i.qy = add i64 %i.qx, -1
  store i64 %i.qy, ptr %i.ah, align 8
  br label %bb.cj

bb.ch:                                            ; preds = %bb.ca
  %i.qz = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #20
  br label %bb.co

bb.ci:                                            ; preds = %.lr.ph369
end_hunk_1
begin_hunk_2_@_ZN2v88internal6torque12_GLOBAL__N_128SolveInstanceTypeConstraintsESt10unique_ptrINS2_16InstanceTypeTreeESt14default_deleteIS4_EEiPSt6vectorIS7_SaIS7_EE:bb.a
          to label %bb.cr unwind label %bb.cu     ; 2 uses

bb.cr:                                            ; preds = %.lr.ph381
  %i.ru = load ptr, ptr %19, align 8              ; 5 uses
  %.not.i270 = icmp eq ptr %i.ru, null
  br i1 %.not.i270, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit282, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8 ; 2 uses
  %i.rw = load ptr, ptr %i.rv, align 8            ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  %i.ry = load ptr, ptr %i.rx, align 8            ; 2 uses
  %.not.i2.i.i.i271 = icmp eq ptr %i.rw, %i.ry
  br i1 %.not.i2.i.i.i271, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i277, label %.lr.ph.i.i.i272

.lr.ph.i.i.i272:                                  ; preds = %bb.cs, %.lr.ph.i.i.i272
  %.0.i3.i.i.i273 = phi ptr [ %i.rz, %.lr.ph.i.i.i272 ], [ %i.rw, %bb.cs ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i273), !inline_history !6
  %i.rz = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i273, i64 8 ; 2 uses
  %.not.i.i.i.i274 = icmp eq ptr %i.rz, %i.ry
  br i1 %.not.i.i.i.i274, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i275, label %.lr.ph.i.i.i272, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i275: ; preds = %.lr.ph.i.i.i272
  %.val.pre.i.i.i276 = load ptr, ptr %i.rv, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i277

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i277: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i275, %bb.cs
  %.val.i.i.i278 = phi ptr [ %.val.pre.i.i.i276, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i275 ], [ %i.rw, %bb.cs ] ; 3 uses
  %.not.i.i.i.i.i279 = icmp eq ptr %.val.i.i.i278, null
  br i1 %.not.i.i.i.i.i279, label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i281, label %bb.ct

bb.ct:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i277
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ru, i64 24
  %.val1.i.i.i280 = load ptr, ptr %i.sa, align 8
  %i.sb = ptrtoint ptr %.val1.i.i.i280 to i64
  %i.sc = ptrtoint ptr %.val.i.i.i278 to i64
  %i.sd = sub i64 %i.sb, %i.sc
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i278, i64 noundef %i.sd) #22, !inline_history !7
  br label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i281

_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i281: ; preds = %bb.ct, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i277
  call void @_ZdlPvm(ptr noundef nonnull %i.ru, i64 noundef 56) #22, !inline_history !8
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit282

_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit282: ; preds = %bb.cr, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i281
  %i.se = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0327.0378) #25 ; 2 uses
  %i.sf = icmp eq ptr %i.se, %i.ad
  br i1 %i.sf, label %._crit_edge382, label %.lr.ph381

bb.cu:                                            ; preds = %.lr.ph381
  %i.sg = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #20
  br label %bb.di

bb.cv:                                            ; preds = %._crit_edge382
  %i.sh = ptrtoint ptr %.val130572 to i64
  store i64 %i.sh, ptr %20, align 8
  store ptr null, ptr %9, align 8
  %.val93 = load ptr, ptr %0, align 8
  %i.si = getelementptr inbounds nuw i8, ptr %.val93, i64 8
  %i.sj = invoke fastcc noundef i32 @_ZN2v88internal6torque12_GLOBAL__N_128SolveInstanceTypeConstraintsESt10unique_ptrINS2_16InstanceTypeTreeESt14default_deleteIS4_EEiPSt6vectorIS7_SaIS7_EE(ptr noundef align 8 %20, i32 noundef %.6.lcssa, ptr noundef nonnull %i.si)
          to label %bb.cw unwind label %bb.cz     ; 2 uses

bb.cw:                                            ; preds = %bb.cv
  %i.sk = load ptr, ptr %20, align 8              ; 5 uses
  %.not.i284 = icmp eq ptr %i.sk, null
  br i1 %.not.i284, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit296, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8 ; 2 uses
  %i.sm = load ptr, ptr %i.sl, align 8            ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %i.so = load ptr, ptr %i.sn, align 8            ; 2 uses
  %.not.i2.i.i.i285 = icmp eq ptr %i.sm, %i.so
  br i1 %.not.i2.i.i.i285, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i291, label %.lr.ph.i.i.i286

.lr.ph.i.i.i286:                                  ; preds = %bb.cx, %.lr.ph.i.i.i286
  %.0.i3.i.i.i287 = phi ptr [ %i.sp, %.lr.ph.i.i.i286 ], [ %i.sm, %bb.cx ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i287), !inline_history !6
  %i.sp = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i287, i64 8 ; 2 uses
  %.not.i.i.i.i288 = icmp eq ptr %i.sp, %i.so
  br i1 %.not.i.i.i.i288, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i289, label %.lr.ph.i.i.i286, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i289: ; preds = %.lr.ph.i.i.i286
  %.val.pre.i.i.i290 = load ptr, ptr %i.sl, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i291

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i291: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i289, %bb.cx
  %.val.i.i.i292 = phi ptr [ %.val.pre.i.i.i290, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i289 ], [ %i.sm, %bb.cx ] ; 3 uses
  %.not.i.i.i.i.i293 = icmp eq ptr %.val.i.i.i292, null
  br i1 %.not.i.i.i.i.i293, label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i295, label %bb.cy

bb.cy:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i291
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sk, i64 24
  %.val1.i.i.i294 = load ptr, ptr %i.sq, align 8
  %i.sr = ptrtoint ptr %.val1.i.i.i294 to i64
  %i.ss = ptrtoint ptr %.val.i.i.i292 to i64
  %i.st = sub i64 %i.sr, %i.ss
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i292, i64 noundef %i.st) #22, !inline_history !7
  br label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i295

_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i295: ; preds = %bb.cy, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i291
  call void @_ZdlPvm(ptr noundef nonnull %i.sk, i64 noundef 56) #22, !inline_history !8
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit296

bb.cz:                                            ; preds = %bb.cv
  %i.su = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #20
  br label %bb.di

_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit296: ; preds = %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i295, %bb.cw, %._crit_edge382
  %.7 = phi i32 [ %.6.lcssa, %._crit_edge382 ], [ %i.sj, %bb.cw ], [ %i.sj, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i295 ] ; 3 uses
  %i.sv = add nsw i32 %.7, -1
  %.val92 = load ptr, ptr %0, align 8
  %i.sw = getelementptr inbounds nuw i8, ptr %.val92, i64 36
  store i32 %i.sv, ptr %i.sw, align 4
  %.val91 = load ptr, ptr %0, align 8             ; 3 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.val91, i64 8
  %.val152 = load ptr, ptr %i.sx, align 8         ; 2 uses
  %i.sy = getelementptr i8, ptr %.val91, i64 16
  %.val153 = load ptr, ptr %i.sy, align 8
  %i.sz = icmp eq ptr %.val152, %.val153
  br i1 %i.sz, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit296
  %.val89 = load ptr, ptr %.val152, align 8
  %i.ta = getelementptr inbounds nuw i8, ptr %.val89, i64 32
  %i.tb = load i32, ptr %i.ta, align 8
  br label %bb.db

bb.db:                                            ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit296, %bb.da
  %i.tc = phi i32 [ %i.tb, %bb.da ], [ %.7, %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit296 ]
  %i.td = getelementptr inbounds nuw i8, ptr %.val91, i64 32
  store i32 %i.tc, ptr %i.td, align 8
  %.val87 = load ptr, ptr %0, align 8             ; 4 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.val87, i64 40
  %i.tf = load i32, ptr %i.te, align 8            ; 3 uses
  %.not = icmp eq i32 %i.tf, -1
  br i1 %.not, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.tg = getelementptr inbounds nuw i8, ptr %.val87, i64 32 ; 2 uses
  %i.th = load i32, ptr %i.tg, align 8
  %i.ti = icmp slt i32 %i.tf, %i.th
  br i1 %i.ti, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  store i32 %i.tf, ptr %i.tg, align 8
  %.val82.pre = load ptr, ptr %0, align 8
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %bb.db
  %.val82 = phi ptr [ %.val82.pre, %bb.dd ], [ %.val87, %bb.dc ], [ %.val87, %bb.db ] ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.val82, i64 36
  %i.tk = load i32, ptr %i.tj, align 4
  %i.tl = getelementptr inbounds nuw i8, ptr %.val82, i64 32
  %i.tm = load i32, ptr %i.tl, align 8
  %i.tn = add i32 %i.tk, 1
  %i.to = sub i32 %i.tn, %i.tm
  %i.tp = getelementptr inbounds nuw i8, ptr %.val82, i64 44
  store i32 %i.to, ptr %i.tp, align 4
  %.val79 = load ptr, ptr %0, align 8             ; 3 uses
  %i.tq = load ptr, ptr %.val79, align 8
  %i.tr = getelementptr inbounds nuw i8, ptr %.val79, i64 40
  %i.ts = load i32, ptr %i.tr, align 8            ; 2 uses
  %.not350 = icmp eq i32 %i.ts, -1
  %i.tt = getelementptr inbounds nuw i8, ptr %.val79, i64 32
  %i.tu = load i64, ptr %i.tt, align 8
  %.sroa.2325.0.insert.shift = select i1 %.not350, i64 0, i64 4294967296
  %.sroa.0324.0.insert.ext = zext i32 %i.ts to i64
  %.sroa.0324.0.insert.insert = or disjoint i64 %.sroa.2325.0.insert.shift, %.sroa.0324.0.insert.ext
  invoke void @_ZNK2v88internal6torque9ClassType23InitializeInstanceTypesESt8optionalIiES3_ISt4pairIiiEE(ptr noundef nonnull align 8 dereferenceable(328) %i.tq, i64 %.sroa.0324.0.insert.insert, i64 %i.tu, i8 1)
          to label %bb.df unwind label %bb.dh

bb.df:                                            ; preds = %bb.de
  %.val74 = load ptr, ptr %0, align 8
  %i.tv = getelementptr inbounds nuw i8, ptr %.val74, i64 44
  %i.tw = load i32, ptr %i.tv, align 4
  %i.tx = icmp sgt i32 %i.tw, 0
  br i1 %i.tx, label %bb.dg, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit309

bb.dg:                                            ; preds = %bb.df
  invoke fastcc void @_ZNSt6vectorISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EESaIS8_EE9push_backEOS8_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit309 unwind label %bb.dh

bb.dh:                                            ; preds = %bb.cp, %bb.dg, %bb.de
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit309: ; preds = %bb.df, %bb.dg
  %.val156 = load ptr, ptr %i.ae, align 8
  call fastcc void @_ZNSt8_Rb_treeIPN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt4pairIKS5_St10unique_ptrIS4_St14default_deleteIS4_EEESt10_Select1stISC_ENS3_25CompareUnconstrainedTypesESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef %.val156)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %.val158 = load ptr, ptr %i.z, align 8
  call fastcc void @_ZNSt8_Rb_treeIiSt4pairIKiSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS7_EEESt10_Select1stISB_ESt4lessIiESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef %.val158)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %.not.i310 = icmp eq ptr %.val129576, null
  br i1 %.not.i310, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit322, label %21

21:                                               ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit309
  %22 = getelementptr inbounds nuw i8, ptr %.val129576, i64 8 ; 2 uses
  %23 = load ptr, ptr %22, align 8                ; 3 uses
  %24 = getelementptr inbounds nuw i8, ptr %.val129576, i64 16
  %25 = load ptr, ptr %24, align 8                ; 2 uses
  %.not.i2.i.i.i311 = icmp eq ptr %23, %25
  br i1 %.not.i2.i.i.i311, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i317, label %.lr.ph.i.i.i312

.lr.ph.i.i.i312:                                  ; preds = %21, %.lr.ph.i.i.i312
  %.0.i3.i.i.i313 = phi ptr [ %26, %.lr.ph.i.i.i312 ], [ %23, %21 ] ; 2 uses
  call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i313), !inline_history !6
  %26 = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i313, i64 8 ; 2 uses
  %.not.i.i.i.i314 = icmp eq ptr %26, %25
  br i1 %.not.i.i.i.i314, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i315, label %.lr.ph.i.i.i312, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i315: ; preds = %.lr.ph.i.i.i312
  %.val.pre.i.i.i316 = load ptr, ptr %22, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i317

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i317: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i315, %21
  %.val.i.i.i318 = phi ptr [ %.val.pre.i.i.i316, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i315 ], [ %23, %21 ] ; 3 uses
  %.not.i.i.i.i.i319 = icmp eq ptr %.val.i.i.i318, null
  br i1 %.not.i.i.i.i.i319, label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i321, label %27

27:                                               ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i317
  %28 = getelementptr inbounds nuw i8, ptr %.val129576, i64 24
  %.val1.i.i.i320 = load ptr, ptr %28, align 8
  %29 = ptrtoint ptr %.val1.i.i.i320 to i64
  %30 = ptrtoint ptr %.val.i.i.i318 to i64
  %31 = sub i64 %29, %30
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i318, i64 noundef %31) #22, !inline_history !7
  br label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i321

_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i321: ; preds = %27, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i317
  call void @_ZdlPvm(ptr noundef nonnull %.val129576, i64 noundef 56) #22, !inline_history !8
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit322

_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit322: ; preds = %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit309, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i321
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  ret i32 %.7

bb.di:                                            ; preds = %.body, %.body165, %.body175, %bb.bl, %bb.bo, %bb.bt, %bb.co, %bb.cu, %bb.cz, %bb.dh
  %.pn64.pn = phi { ptr, i32 } [ %i.ow, %bb.bt ], [ %.pn.pn, %bb.co ], [ %i.sg, %bb.cu ], [ %i.nv, %bb.bl ], [ %i.ty, %bb.dh ], [ %i.su, %bb.cz ], [ %eh.lpad-body166, %.body165 ], [ %i.og, %bb.bo ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body176, %.body175 ]
  %.val155 = load ptr, ptr %i.ae, align 8
  call fastcc void @_ZNSt8_Rb_treeIPN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt4pairIKS5_St10unique_ptrIS4_St14default_deleteIS4_EEESt10_Select1stISC_ENS3_25CompareUnconstrainedTypesESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef %.val155)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %.val157 = load ptr, ptr %i.z, align 8
  call fastcc void @_ZNSt8_Rb_treeIiSt4pairIKiSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS7_EEESt10_Select1stISB_ESt4lessIiESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef %.val157)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call fastcc void @_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call fastcc void @_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZNSt4pairIPN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt10unique_ptrIS4_St14default_deleteIS4_EEED2Ev(ptr %.8.val) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !guid !317 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i2.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i2.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  tail call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i), !inline_history !6
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i
  %.val.pre.i.i.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i, %bb.b
  %.val.i.i.i = phi ptr [ %.val.pre.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %.val1.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = ptrtoint ptr %.val1.i.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i.i to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.i) #22, !inline_history !7
  br label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i

_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.8.val, i64 noundef 56) #22, !inline_history !8
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZNSt4pairIiSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEED2Ev(ptr %.8.val) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 !guid !318 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i2.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i2.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  tail call fastcc void @_ZSt10destroy_atISt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EEEvPT_(ptr noundef %.0.i3.i.i.i), !inline_history !6
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i
  %.val.pre.i.i.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i, %bb.b
  %.val.i.i.i = phi ptr [ %.val.pre.i.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.loopexit.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %.val1.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = ptrtoint ptr %.val1.i.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i.i to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.i) #22, !inline_history !7
  br label %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i

_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS5_EES8_EvT_SA_RSaIT0_E.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.8.val, i64 noundef 56) #22, !inline_history !8
  br label %_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN2v88internal6torque12_GLOBAL__N_116InstanceTypeTreeEEclEPS4_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN2v88internal6torque12_GLOBAL__N_115SelectOwnValuesEPNS2_16InstanceTypeTreeEi(ptr noundef %0, i32 noundef %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !325 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.v8::internal::torque::MessageBuilder", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.a, align 8
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.b, %1
  br i1 %i.d, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !326
  call void @_ZN2v88internal6torque8ToStringIJRA32_KcRiRA5_S3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESE_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(32) @.str.53, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.54, ptr noundef nonnull align 8 dereferenceable(32) %i.f), !noalias !326
  invoke void @_ZN2v88internal6torque14MessageBuilderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13TorqueMessage4KindE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 0)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %2, align 8, !noalias !326 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN2v88internal6torque5ErrorIJRA32_KcRiRA5_S3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_14MessageBuilderEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !noalias !326
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  br label %_ZN2v88internal6torque5ErrorIJRA32_KcRiRA5_S3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_14MessageBuilderEDpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %2, align 8, !noalias !326 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !noalias !326
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !326
  resume { ptr, i32 } %i.l

_ZN2v88internal6torque5ErrorIJRA32_KcRiRA5_S3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_14MessageBuilderEDpOT_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !326
  %i.r = load ptr, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 288
  %i.t = load ptr, ptr %i.s, align 8, !noalias !327
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4, !range !87, !noundef !88
  %i.y = trunc nuw i8 %i.x to i1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.v, ptr noundef nonnull align 4 dereferenceable(28) %i.u, i64 28, i1 false)
  br i1 %i.y, label %_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal6torque5ErrorIJRA32_KcRiRA5_S3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_14MessageBuilderEDpOT_.exit
  store i8 1, ptr %i.w, align 4
  br label %_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit

_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit: ; preds = %_ZN2v88internal6torque5ErrorIJRA32_KcRiRA5_S3_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_14MessageBuilderEDpOT_.exit, %bb.g
  call void @_ZN2v88internal6torque14MessageBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.pre = load i32, ptr %i.a, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit, %bb.b
  %i.z = phi i32 [ %i.b, %bb.c ], [ %.pre, %_ZN2v88internal6torque14MessageBuilder8PositionENS1_14SourcePositionE.exit ], [ %1, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = add nsw i32 %i.ab, %i.z
  ret i32 %i.ac
}

end_hunk_2
