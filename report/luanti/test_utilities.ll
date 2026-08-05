begin_hunk_0_@_ZN13TestUtilities19testSanitizeDirNameEv:bb.a
  call void @_Z15sanitizeDirNameB5cxx11St17basic_string_viewIcSt11char_traitsIcEES2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, i64 8, ptr nonnull @.str.406, i64 1, ptr nonnull @.str.386)
  %i.js = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !29
  %i.ju = icmp eq i64 %i.jt, 8
  br i1 %i.ju, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217.thread292

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %i.jv = load ptr, ptr %22, align 8, !tbaa !11   ; 3 uses
  %i.jw = load i64, ptr %i.jv, align 1
  %i.jx = icmp ne i64 %i.jw, 6855725794427102047
  %i.jy = zext i1 %i.jx to i32
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217.thread292

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217.thread292: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %23)
          to label %bb.bm unwind label %bb.bp

bb.bm:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217.thread292
  %i.ka = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.408, i64 noundef 46)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218 unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218: ; preds = %bb.bm
  %i.kb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %_ZNSolsEPFRSoS_E.exit219 unwind label %bb.bq, !inline_history !41 ; 2 uses

_ZNSolsEPFRSoS_E.exit219:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218
  %i.kc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kb, ptr noundef nonnull @.str.51, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220 unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220: ; preds = %_ZNSolsEPFRSoS_E.exit219
  %i.kd = load ptr, ptr %22, align 8, !tbaa !11
  %i.ke = load i64, ptr %i.js, align 8, !tbaa !29
  %i.kf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kb, ptr noundef %i.kd, i64 noundef %i.ke)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit221 unwind label %bb.bq ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit221: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220
  %i.kg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %_ZNSolsEPFRSoS_E.exit222 unwind label %bb.bq, !inline_history !41 ; 2 uses

_ZNSolsEPFRSoS_E.exit222:                         ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit221
  %i.kh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noundef nonnull @.str.52, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223 unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223: ; preds = %_ZNSolsEPFRSoS_E.exit222
  %i.ki = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noundef nonnull @.str.407, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224 unwind label %bb.bq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223
  %i.kj = call ptr @__cxa_allocate_exception(i64 72) #31 ; 3 uses
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(112) %23)
          to label %bb.bn unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.thread

bb.bn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.kj, ptr noundef nonnull align 8 %24, ptr noundef nonnull @.str.33, i32 noundef 659)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %bb.bn
  invoke void @__cxa_throw(ptr nonnull %i.kj, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #33
          to label %bb.bw unwind label %bb.br

bb.bp:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217.thread292
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit223, %_ZNSolsEPFRSoS_E.exit222, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit221, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit220, %_ZNSolsEPFRSoS_E.exit219, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit218, %bb.bm
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit224
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.br:                                            ; preds = %bb.bo, %bb.bn
  %.0 = phi i1 [ false, %bb.bo ], [ true, %bb.bn ] ; 2 uses
  %i.kn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ko = load ptr, ptr %24, align 8, !tbaa !11   ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.kq = icmp eq ptr %i.ko, %i.kp
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %bb.br
  %i.kr = load i64, ptr %i.kp, align 8, !tbaa !17
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.ks) #30
  br i1 %.0, label %bb.bs, label %bb.bt

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %bb.br
  br i1 %.0, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227
  %.pn93295 = phi { ptr, i32 } [ %i.km, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.thread ], [ %i.kn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ], [ %i.kn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225 ]
  call void @__cxa_free_exception(ptr %i.kj) #31
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %bb.bs, %bb.bq
  %.pn93.pn = phi { ptr, i32 } [ %.pn93295, %bb.bs ], [ %i.kn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ], [ %i.kl, %bb.bq ], [ %i.kn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %23) #31
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bp
  %.pn93.pn.pn = phi { ptr, i32 } [ %.pn93.pn, %bb.bt ], [ %i.kk, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  %i.kt = load ptr, ptr %22, align 8, !tbaa !11   ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.kv = icmp eq ptr %i.kt, %i.ku
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %bb.bu
  %i.kw = load i64, ptr %i.ku, align 8, !tbaa !17
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %bb.bv

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217
  %i.ky = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.kz = icmp eq ptr %i.jv, %i.ky
  br i1 %i.kz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217.thread
  %i.la = load i64, ptr %i.ky, align 8, !tbaa !17
  %i.lb = add i64 %i.la, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.lb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit233: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit217.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  ret void

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %.pn93.pn.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ], [ %.pn89.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit212 ], [ %.pn85.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194 ], [ %.pn81.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %.pn77.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158 ], [ %.pn73.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %.pn69.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ]
  resume { ptr, i32 } %.pn93.pn.pn.pn

bb.bw:                                            ; preds = %bb.bo, %bb.bf, %bb.aw, %bb.an, %bb.ae, %bb.v, %bb.m, %bb.d
  unreachable
}

declare void @_Z15sanitizeDirNameB5cxx11St17basic_string_viewIcSt11char_traitsIcEES2_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr, i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13TestUtilities18testIsBlockInSightEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.45", align 8    ; 7 uses
  %2 = alloca %"class.std::vector.45", align 8    ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #35 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(48) %i.a, ptr noundef nonnull align 2 dereferenceable(48) @constinit, i64 48, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.i

.preheader:                                       ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  br label %bb.m

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit
  %storemerge137 = phi i32 [ 0, %bb.a ], [ %i.au, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.f = mul nuw nsw i32 %storemerge137, 90
  %i.g = uitofp nneg i32 %i.f to double
  %i.h = fmul nnan nsz double %i.g, f0x3F91DF46A2529D39
  %sincos.i.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.h) ; 2 uses
  %sin.i.i.i = extractvalue { double, double } %sincos.i.i.i, 0
  %cos.i.i.i = extractvalue { double, double } %sincos.i.i.i, 1
  %i.i = insertelement <2 x double> poison, double %cos.i.i.i, i64 0
  %i.j = insertelement <2 x double> %i.i, double %sin.i.i.i, i64 1 ; 2 uses
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i, %.lr.ph.i
  %i.l = phi ptr [ null, %.lr.ph.i ], [ %i.an, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i ]
  %i.m = phi ptr [ null, %.lr.ph.i ], [ %i.ao, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i ] ; 8 uses
  %i.n = phi ptr [ null, %.lr.ph.i ], [ %i.aq, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i ] ; 6 uses
  %i.o = phi ptr [ null, %.lr.ph.i ], [ %i.ap, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i ] ; 2 uses
  %.sroa.09.020.i.idx = phi i64 [ 0, %.lr.ph.i ], [ %.sroa.09.020.i.add, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i ] ; 2 uses
  %.sroa.09.020.i.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.020.i.idx
  %.sroa.02.0.copyload.i = load i48, ptr %.sroa.09.020.i.ptr, align 2, !noalias !103 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i = trunc i48 %.sroa.02.0.copyload.i to i16
  %.sroa.55.0.extract.shift.i.i = lshr i48 %.sroa.02.0.copyload.i, 32
  %.sroa.55.0.extract.trunc.i.i = trunc nuw i48 %.sroa.55.0.extract.shift.i.i to i16
  %i.p = sitofp i16 %.sroa.03.0.extract.trunc.i.i to double
  %i.q = sitofp i16 %.sroa.55.0.extract.trunc.i.i to double ; 2 uses
  %i.r = fneg nsz double %i.q
  %i.s = insertelement <2 x double> poison, double %i.q, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.r, i64 1
  %i.u = fmul nsz <2 x double> %i.j, %i.t
  %i.v = insertelement <2 x double> poison, double %i.p, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.k, <2 x double> %i.u) ; 2 uses
  %5 = extractelement <2 x double> %i.x, i64 1
  %6 = fptosi double %5 to i16
  %7 = extractelement <2 x double> %i.x, i64 0
  %8 = fptosi double %7 to i16
  %.sroa.55.0.insert.ext.i.i = zext i16 %8 to i48
  %.sroa.55.0.insert.shift.i.i = shl nuw i48 %.sroa.55.0.insert.ext.i.i, 32
  %.sroa.54.0.insert.ext.i.i = and i48 %.sroa.02.0.copyload.i, 4294901760
  %.sroa.54.0.insert.insert.i.i = or disjoint i48 %.sroa.55.0.insert.shift.i.i, %.sroa.54.0.insert.ext.i.i
  %.sroa.03.0.insert.ext.i.i = zext i16 %6 to i48
  %.sroa.03.0.insert.insert.i.i = or disjoint i48 %.sroa.54.0.insert.insert.i.i, %.sroa.03.0.insert.ext.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i48 %.sroa.03.0.insert.insert.i.i, ptr %i.n, align 2, !noalias !103
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.y = ptrtoint ptr %i.n to i64
  %i.z = ptrtoint ptr %i.m to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 5 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775806
  br i1 %i.ab, label %bb.e, label %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.455) #33
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !103

.noexc.i:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = sdiv exact i64 %i.aa, 6                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1537228672809129301)
  %i.ag = select i1 %i.ae, i64 1537228672809129301, i64 %i.af ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ah = mul nuw nsw i64 %i.ag, 6
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #35
          to label %.noexc6.i unwind label %.loopexit.i, !noalias !103 ; 5 uses

.noexc6.i:                                        ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  store i48 %.sroa.03.0.insert.insert.i.i, ptr %i.aj, align 2, !noalias !103
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc6.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ai, %.noexc6.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i ], [ %i.m, %.noexc6.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.0911.i.i.i.i.i.i.i, i64 6, i1 false), !tbaa.struct !106, !alias.scope !109, !noalias !103
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 6 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 6 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ak, %i.n
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !113

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc6.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.noexc6.i ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.aa) #30, !noalias !103
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  %i.am = getelementptr inbounds nuw [6 x i8], ptr %i.ai, i64 %i.ag ; 2 uses
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.c
  %i.an = phi ptr [ %i.am, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.l, %bb.c ] ; 4 uses
  %i.ao = phi ptr [ %i.ai, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.m, %bb.c ] ; 8 uses
  %i.ap = phi ptr [ %i.am, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.o, %bb.c ]
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.n, %bb.c ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 6 ; 2 uses
  %.sroa.09.020.i.add = add nuw nsw i64 %.sroa.09.020.i.idx, 6 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.09.020.i.add, 48
  br i1 %.not.i, label %"_Z9apply_allIZN13TestUtilities18testIsBlockInSightEvE3$_1St6vectorIN4core8vector3dIsEESaIS5_EEET0_RKS8_T_.exit", label %bb.b, !llvm.loop !114

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.i:                             ; preds = %bb.e
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %.body32, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.aa) #30, !noalias !103
  br label %.body32

"_Z9apply_allIZN13TestUtilities18testIsBlockInSightEvE3$_1St6vectorIN4core8vector3dIsEESaIS5_EEET0_RKS8_T_.exit": ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i
  store ptr %i.aq, ptr %i.b, align 8
  store ptr %i.ao, ptr %1, align 8
  store ptr %i.an, ptr %i.c, align 8
  invoke fastcc void @"_ZZN13TestUtilities18testIsBlockInSightEvENK3$_0clERKSt6vectorIN4core8vector3dIsEESaIS4_EE"(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %"_Z9apply_allIZN13TestUtilities18testIsBlockInSightEvE3$_1St6vectorIN4core8vector3dIsEESaIS5_EEET0_RKS8_T_.exit"
  %.not.i.i.i34 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #30
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.au = add nuw nsw i32 %storemerge137, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %i.au, 4
  br i1 %exitcond.not, label %.preheader, label %.lr.ph.i, !llvm.loop !115

bb.k:                                             ; preds = %"_Z9apply_allIZN13TestUtilities18testIsBlockInSightEvE3$_1St6vectorIN4core8vector3dIsEESaIS5_EEET0_RKS8_T_.exit"
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i36, label %.body32, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = ptrtoint ptr %i.an to i64
  %i.ax = ptrtoint ptr %i.ao to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.ay) #30
  br label %.body32

.body32:                                          ; preds = %bb.l, %bb.k, %bb.h, %bb.g
  %.pn28 = phi { ptr, i32 } [ %lpad.phi.i, %bb.g ], [ %i.av, %bb.l ], [ %lpad.phi.i, %bb.h ], [ %i.av, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EED2Ev.exit89

bb.m:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i53, %.preheader
  %i.az = phi ptr [ null, %.preheader ], [ %i.ca, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i53 ]
  %i.ba = phi ptr [ null, %.preheader ], [ %i.cb, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i53 ] ; 8 uses
  %i.bb = phi ptr [ null, %.preheader ], [ %i.cd, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i53 ] ; 6 uses
  %i.bc = phi ptr [ null, %.preheader ], [ %i.cc, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i53 ] ; 2 uses
  %.sroa.09.020.i41.idx = phi i64 [ 0, %.preheader ], [ %.sroa.09.020.i41.add, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i53 ] ; 2 uses
  %.sroa.09.020.i41.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.020.i41.idx
  %.sroa.02.0.copyload.i42 = load i48, ptr %.sroa.09.020.i41.ptr, align 2, !noalias !116 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i44 = trunc i48 %.sroa.02.0.copyload.i42 to i16
  %.sroa.54.0.extract.shift.i.i = lshr i48 %.sroa.02.0.copyload.i42, 16
  %.sroa.54.0.extract.trunc.i.i = trunc i48 %.sroa.54.0.extract.shift.i.i to i16
  %.sroa.85.0.extract.shift.i.i = and i48 %.sroa.02.0.copyload.i42, -4294967296
  %i.bd = sitofp i16 %.sroa.03.0.extract.trunc.i.i44 to double ; 2 uses
  %i.be = sitofp i16 %.sroa.54.0.extract.trunc.i.i to double ; 2 uses
  %i.bf = fneg nsz double %i.be
  %i.bg = tail call nsz double @llvm.fmuladd.f64(double %i.bd, double f0x3C91A62633145C07, double %i.bf)
  %i.bh = fptosi double %i.bg to i16
  %i.bi = fmul nnan nsz double %i.be, f0x3C91A62633145C07
  %i.bj = fadd nsz double %i.bi, %i.bd
  %i.bk = fptosi double %i.bj to i16
  %.sroa.54.0.insert.ext.i.i48 = zext i16 %i.bk to i48
  %.sroa.54.0.insert.shift.i.i = shl nuw nsw i48 %.sroa.54.0.insert.ext.i.i48, 16
  %.sroa.54.0.insert.insert.i.i49 = or disjoint i48 %.sroa.54.0.insert.shift.i.i, %.sroa.85.0.extract.shift.i.i
  %.sroa.03.0.insert.ext.i.i50 = zext i16 %i.bh to i48
  %.sroa.03.0.insert.insert.i.i51 = or disjoint i48 %.sroa.54.0.insert.insert.i.i49, %.sroa.03.0.insert.ext.i.i50 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i.i52, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i48 %.sroa.03.0.insert.insert.i.i51, ptr %i.bb, align 2, !noalias !116
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backEOS2_.exit.i53

bb.o:                                             ; preds = %bb.m
  %i.bl = ptrtoint ptr %i.bb to i64
  %i.bm = ptrtoint ptr %i.ba to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 5 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775806
  br i1 %i.bo, label %.loopexit, label %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i55

.loopexit:                                        ; preds = %bb.o, %bb.v
  %.lcssa160 = phi ptr [ %i.ck, %bb.v ], [ %i.ba, %bb.o ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.455) #33
          to label %.noexc.i75 unwind label %.loopexit.split-lp.i73, !noalias !116

.noexc.i75:                                       ; preds = %.loopexit
  unreachable

_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i55: ; preds = %bb.o
  %i.bp = sdiv exact i64 %i.bn, 6                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i56 = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i.i.i56, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 1537228672809129301)
  %i.bt = select i1 %i.br, i64 1537228672809129301, i64 %i.bs ; 3 uses
  %.not.i.i.i.i.i57 = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i57)
  %i.bu = mul nuw nsw i64 %i.bt, 6
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #35
          to label %.noexc6.i63 unwind label %.loopexit.i58.loopexit, !noalias !116 ; 5 uses

.noexc6.i63:                                      ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i55
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store i48 %.sroa.03.0.insert.insert.i.i51, ptr %i.bw, align 2, !noalias !116
  %.not10.i.i.i.i.i.i.i64 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not10.i.i.i.i.i.i.i64, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i69, label %.lr.ph.i.i.i.i.i.i.i65

end_hunk_0
