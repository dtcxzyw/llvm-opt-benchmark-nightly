Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3String?download=true
inline.NumInlined: 1592
inline.NumDeleted: 384
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN7VString8selfTestEv:._crit_edge.i.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.v, ptr %4, align 8, !tbaa !33
  store i32 1633837410, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 4, ptr %i.w, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %i.x, align 4, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !32
  %i.aa = icmp eq i64 %i.z, 4
  br i1 %i.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread65, !prof !60

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %i.ab = load ptr, ptr %0, align 8, !tbaa !31
  %i.ac = load i32, ptr %i.ab, align 1
  %i.ad = load i32, ptr %i.v, align 1
  %i.ae = icmp ne i32 %i.ac, %i.ad
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread65, !prof !61

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ah = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.5, i32 noundef 399)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread65
  %i.ai = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.c unwind label %bb.f       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.13, i64 noundef 71)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.ak = load ptr, ptr %0, align 8, !tbaa !31
  %i.al = load i64, ptr %i.y, align 8, !tbaa !32
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.ak, i64 noundef %i.al)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.f ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.14, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ao = load ptr, ptr %4, align 8, !tbaa !31
  %i.ap = load i64, ptr %i.w, align 8, !tbaa !32
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef %i.ao, i64 noundef %i.ap)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit39 unwind label %bb.f

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit39: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.aq) #34
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit39
  unreachable

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.g
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.e
  %i.au = load i64, ptr %i.g, align 8, !tbaa !26
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.aw = load ptr, ptr %2, align 8, !tbaa !31    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.d
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !26
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.ba = load ptr, ptr %1, align 8, !tbaa !31    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.a
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !26
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit37, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit39, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread65
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.v
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.f
  %i.bh = load i64, ptr %i.v, align 8, !tbaa !26
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.bj = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %.pre, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !26
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.bp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.bq = load i64, ptr %i.bk, align 8, !tbaa !26
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.br) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #33
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %.pn13.pn = phi { ptr, i32 } [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ]
  resume { ptr, i32 } %.pn13.pn
}

; Function Attrs: noreturn
declare void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112)) #17

declare noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8, ptr noundef, i32 noundef) #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev() #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7V3Error1sEv.exit, !prof !62

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #33
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7V3Error1sEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #33 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #33
  br label %_ZN7V3Error1sEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #33
  resume { ptr, i32 } %i.e

_ZN7V3Error1sEv.exit:                             ; preds = %bb.a, %bb.b, %bb.d
  %i.f = tail call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.76, ptr nonnull @.str.77, i32 481, ptr null)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11VHashSha2566insertEPKvm(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(80) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [16 x i32], align 16              ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = alloca [64 x i32], align 16              ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i8, ptr %i.e, align 8, !tbaa !64, !range !65, !noundef !66
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.5, i32 noundef 465) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.15)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.j) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !67
  %i.m = add i64 %i.l, %2
  store i64 %i.m, ptr %i.k, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 0, ptr %i.o, align 8, !tbaa !32
  store i8 0, ptr %i.n, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !32
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread75

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread75: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.t, ptr %5, align 8, !tbaa !33
  %i.u = icmp eq ptr %1, null
  %i.v = icmp ne i64 %2, 0
  %or.cond.i = and i1 %i.u, %i.v
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread75
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.79) #34
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 %2, ptr %i.b, align 8, !tbaa !34
  %i.w = icmp ugt i64 %2, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc40 unwind label %bb.p   ; 2 uses

.noexc40:                                         ; preds = %.noexc.i
  store ptr %i.x, ptr %5, align 8, !tbaa !31
  %i.y = load i64, ptr %i.b, align 8, !tbaa !34
  store i64 %i.y, ptr %i.t, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc40, %bb.e
  %i.z = phi ptr [ %i.x, %.noexc40 ], [ %i.t, %bb.e ] ; 2 uses
  switch i64 %2, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %1, align 1, !tbaa !26
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !26
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !34  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !32
  %i.ad = load ptr, ptr %5, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.af = load i64, ptr %i.q, align 8, !tbaa !32, !noalias !180
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !31, !noalias !180
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.ag, i64 noundef %i.af)
          to label %.noexc41 unwind label %bb.q   ; 6 uses

.noexc41:                                         ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.ai, ptr %4, align 8, !tbaa !33, !alias.scope !180
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !31 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 5 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.i:                                             ; preds = %.noexc41
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !32 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add nuw nsw i64 %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.ak, i64 %i.ap, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc41
  store ptr %i.aj, ptr %4, align 8, !tbaa !31, !alias.scope !180
  %i.aq = load i64, ptr %i.ak, align 8, !tbaa !26
  store i64 %i.aq, ptr %i.ai, align 8, !tbaa !26, !alias.scope !180
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !32
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %i.ar = phi i64 [ %i.an, %bb.i ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !32, !alias.scope !180
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !31
  store i64 0, ptr %i.as, align 8, !tbaa !32
  store i8 0, ptr %i.ak, align 8, !tbaa !26
  %i.au = load ptr, ptr %3, align 8, !tbaa !31    ; 6 uses
  %i.av = icmp eq ptr %i.au, %i.n
  %i.aw = load ptr, ptr %4, align 8, !tbaa !31    ; 5 uses
  %i.ax = icmp eq ptr %i.aw, %i.ai                ; 2 uses
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.j
  br i1 %i.ax, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.j
  br i1 %i.ax, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !32 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  switch i64 %i.ay, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !26
  store i8 %i.ba, ptr %i.au, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.aw, i64 %i.ay, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.m, %bb.l, %bb.k
  %i.bb = load i64, ptr %i.at, align 8, !tbaa !32 ; 2 uses
  store i64 %i.bb, ptr %i.o, align 8, !tbaa !32
  %i.bc = load ptr, ptr %3, align 8, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb
  store i8 0, ptr %i.bd, align 1, !tbaa !26
  %.pre.i42 = load ptr, ptr %4, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.aw, ptr %3, align 8, !tbaa !31
  %i.be = load <2 x i64>, ptr %i.at, align 8, !tbaa !26
  store <2 x i64> %i.be, ptr %i.o, align 8, !tbaa !26
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bf = load i64, ptr %i.n, align 8, !tbaa !26
  store ptr %i.aw, ptr %3, align 8, !tbaa !31
  %i.bg = load <2 x i64>, ptr %i.at, align 8, !tbaa !26
  store <2 x i64> %i.bg, ptr %i.o, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.au, ptr %4, align 8, !tbaa !31
  store i64 %i.bf, ptr %i.ai, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ai, ptr %4, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.n, %bb.o
  %i.bh = phi ptr [ %i.au, %bb.n ], [ %i.ai, %bb.o ], [ %.pre.i42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.at, align 8, !tbaa !32
  store i8 0, ptr %i.bh, align 1, !tbaa !26
  %i.bi = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ai
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bk = load i64, ptr %i.ai, align 8, !tbaa !26
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  %i.bm = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.t
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bo = load i64, ptr %i.t, align 8, !tbaa !26
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.bq = load i64, ptr %i.o, align 8, !tbaa !32
  %i.br = load ptr, ptr %3, align 8, !tbaa !31
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.p:                                             ; preds = %.noexc.i, %bb.d
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.q:                                             ; preds = %bb.h
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.t
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.q
  %i.bw = load i64, ptr %i.t, align 8, !tbaa !26
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.p ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.bt, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.ad

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %.034.in = phi i64 [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %2, %bb.c ]
  %.033 = phi ptr [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %1, %bb.c ] ; 6 uses
  %.034 = trunc i64 %.034.in to i32               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.by = add nsw i32 %.034, -64
  %.not138 = icmp slt i32 %.034, 64
  br i1 %.not138, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.sroa.0.0.copyload.pre = load i32, ptr %0, align 8, !tbaa !68
  %.sroa.7.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %.sroa.7.0.copyload.pre = load i32, ptr %.sroa.7.0..sroa_idx.phi.trans.insert, align 4, !tbaa !68
  %7 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %.promoted.a = load i32, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !68
  %.sroa.7.0..sroa_idx.promoted = load i32, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !68
  %.sroa.11.0..sroa_idx.promoted = load i32, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !68
  %.sroa.15.0..sroa_idx.promoted = load i32, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !68
  %.sroa.19.0..sroa_idx.promoted = load i32, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !68
  %.sroa.23.0..sroa_idx.promoted = load i32, ptr %.sroa.31.0..sroa_idx, align 4, !tbaa !68
  %.sroa.27.0..sroa_idx.promoted = load i32, ptr %0, align 8, !tbaa !68
  %.sroa.31.0..sroa_idx.promoted = load i32, ptr %.sroa.7.0..sroa_idx.phi.trans.insert, align 4, !tbaa !68
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %.preheader76.preheader
  %i.ca = phi i32 [ %.sroa.31.0..sroa_idx.promoted, %.lr.ph ], [ %i.dx, %.preheader76.preheader ]
  %i.cb = phi i32 [ %.sroa.27.0..sroa_idx.promoted, %.lr.ph ], [ %i.dw, %.preheader76.preheader ]
  %i.cc = phi i32 [ %.sroa.23.0..sroa_idx.promoted, %.lr.ph ], [ %i.ed, %.preheader76.preheader ] ; 2 uses
  %i.cd = phi i32 [ %.sroa.19.0..sroa_idx.promoted, %.lr.ph ], [ %i.ec, %.preheader76.preheader ] ; 2 uses
  %i.ce = phi i32 [ %.sroa.15.0..sroa_idx.promoted, %.lr.ph ], [ %i.eb, %.preheader76.preheader ] ; 2 uses
  %i.cf = phi i32 [ %.sroa.11.0..sroa_idx.promoted, %.lr.ph ], [ %i.ea, %.preheader76.preheader ] ; 2 uses
  %i.cg = phi i32 [ %.sroa.7.0..sroa_idx.promoted, %.lr.ph ], [ %i.dz, %.preheader76.preheader ] ; 2 uses
  %.sroa.0.0.copyload227 = phi i32 [ %.promoted.a, %.lr.ph ], [ %i.dy, %.preheader76.preheader ] ; 2 uses
  %.027139.a = phi i32 [ %.sroa.7.0.copyload.pre, %.lr.ph ], [ %i.dx, %.preheader76.preheader ]
  %.sroa.0.0.copyload = phi i32 [ %.sroa.0.0.copyload.pre, %.lr.ph ], [ %i.dw, %.preheader76.preheader ]
  %.027139 = phi i32 [ 0, %.lr.ph ], [ %indvars.iv.next160.15, %.preheader76.preheader ] ; 3 uses
  %8 = sext i32 %.027139 to i64                   ; 4 uses
  %9 = getelementptr i8, ptr %.033, i64 %8
  %10 = load <4 x i32>, ptr %9, align 1
  %11 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %10)
  store <4 x i32> %11, ptr %i.d, align 16, !tbaa !68
  %i.ch = getelementptr i8, ptr %.033, i64 %8
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %12 = load <4 x i32>, ptr %i.ci, align 1
  %13 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %12)
  store <4 x i32> %13, ptr %7, align 16, !tbaa !68
  %14 = getelementptr i8, ptr %.033, i64 %8
  %15 = getelementptr i8, ptr %14, i64 32
  %16 = load <4 x i32>, ptr %15, align 1
  %17 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %16)
  store <4 x i32> %17, ptr %i.bz, align 16, !tbaa !68
  %18 = getelementptr i8, ptr %.033, i64 %8
  %19 = getelementptr i8, ptr %18, i64 48
  %20 = load <4 x i32>, ptr %19, align 1
  %21 = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %20)
  store <4 x i32> %21, ptr %.sroa.7.0..sroa_idx, align 16, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %bb.r, %.split.us
  %indvars.iv170 = phi i64 [ 0, %bb.r ], [ %indvars.iv.next171, %.split.us ] ; 3 uses
  %.038.i136 = phi ptr [ %i.d, %bb.r ], [ %.us-phi, %.split.us ] ; 2 uses
  %.lcssa9197134 = phi i32 [ %i.cf, %bb.r ], [ %.sroa.19.0, %.split.us ] ; 2 uses
  %.lcssa9099133 = phi i32 [ %i.ce, %bb.r ], [ %.sroa.23.0, %.split.us ] ; 2 uses
  %.lcssa89102132 = phi i32 [ %i.cd, %bb.r ], [ %.sroa.27.0, %.split.us ] ; 2 uses
  %.lcssa105131 = phi i32 [ %i.cc, %bb.r ], [ %.sroa.31.0, %.split.us ] ; 2 uses
  %.lcssa95108130 = phi i32 [ %.sroa.0.0.copyload, %bb.r ], [ %.sroa.0.0, %.split.us ] ; 2 uses
  %.lcssa94111129 = phi i32 [ %.027139.a, %bb.r ], [ %.sroa.7.0, %.split.us ] ; 2 uses
  %.lcssa93114128 = phi i32 [ %.sroa.0.0.copyload227, %bb.r ], [ %.sroa.11.0, %.split.us ] ; 2 uses
  %.lcssa92117127 = phi i32 [ %i.cg, %bb.r ], [ %.sroa.15.0, %.split.us ] ; 2 uses
  %i.cj = icmp eq i64 %indvars.iv170, 0
  br i1 %i.cj, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %.idx = shl nuw nsw i64 %indvars.iv170, 6
  %invariant.gep = getelementptr inbounds nuw i8, ptr @_ZL7sha256K, i64 %.idx
  br label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %.preheader.split.us
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %.preheader.split.us ], [ 0, %.preheader ] ; 3 uses
  %.1.i88.us = phi ptr [ %i.cs, %.preheader.split.us ], [ %.038.i136, %.preheader ] ; 2 uses
  %i.ck = phi i32 [ %i.dt, %.preheader.split.us ], [ %.lcssa9197134, %.preheader ] ; 10 uses
  %i.cl = phi i32 [ %i.ck, %.preheader.split.us ], [ %.lcssa9099133, %.preheader ] ; 3 uses
  %i.cm = phi i32 [ %i.cl, %.preheader.split.us ], [ %.lcssa89102132, %.preheader ] ; 3 uses
  %i.cn = phi i32 [ %i.cm, %.preheader.split.us ], [ %.lcssa105131, %.preheader ]
  %i.co = phi i32 [ %i.dv, %.preheader.split.us ], [ %.lcssa95108130, %.preheader ] ; 9 uses
  %i.cp = phi i32 [ %i.co, %.preheader.split.us ], [ %.lcssa94111129, %.preheader ] ; 4 uses
  %i.cq = phi i32 [ %i.cp, %.preheader.split.us ], [ %.lcssa93114128, %.preheader ] ; 4 uses
  %i.cr = phi i32 [ %i.cq, %.preheader.split.us ], [ %.lcssa92117127, %.preheader ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.1.i88.us, i64 4 ; 2 uses
  %i.ct = load i32, ptr %.1.i88.us, align 4, !tbaa !68 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv166
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !68
  %i.cv = call i32 @llvm.fshl.i32(i32 %i.ck, i32 %i.ck, i32 26)
  %i.cw = call i32 @llvm.fshl.i32(i32 %i.ck, i32 %i.ck, i32 21)
  %i.cx = xor i32 %i.cv, %i.cw
  %i.cy = call i32 @llvm.fshl.i32(i32 %i.ck, i32 %i.ck, i32 7)
  %i.cz = xor i32 %i.cx, %i.cy
  %i.da = and i32 %i.cl, %i.ck
  %i.db = xor i32 %i.ck, -1
  %i.dc = and i32 %i.cm, %i.db
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @_ZL7sha256K, i64 %indvars.iv166
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !68
  %i.df = add i32 %i.cz, %i.da
  %i.dg = add i32 %i.df, %i.cn
  %i.dh = add i32 %i.dg, %i.dc
  %i.di = add i32 %i.dh, %i.de
  %i.dj = add i32 %i.di, %i.ct                    ; 2 uses
  %i.dk = call i32 @llvm.fshl.i32(i32 %i.co, i32 %i.co, i32 30)
  %i.dl = call i32 @llvm.fshl.i32(i32 %i.co, i32 %i.co, i32 19)
  %i.dm = xor i32 %i.dk, %i.dl
  %i.dn = call i32 @llvm.fshl.i32(i32 %i.co, i32 %i.co, i32 10)
  %i.do = xor i32 %i.dm, %i.dn
  %i.dp = xor i32 %i.cq, %i.cp
  %i.dq = and i32 %i.dp, %i.co
  %i.dr = and i32 %i.cq, %i.cp
  %i.ds = xor i32 %i.dq, %i.dr
  %i.dt = add i32 %i.cr, %i.dj                    ; 2 uses
  %i.du = add i32 %i.do, %i.dj
  %i.dv = add i32 %i.du, %i.ds                    ; 2 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next167, 16
  br i1 %exitcond169.not, label %.split.us, label %.preheader.split.us, !llvm.loop !5

.split.us:                                        ; preds = %.preheader.split, %.preheader.split.us
  %.sroa.31.0 = phi i32 [ %i.cm, %.preheader.split.us ], [ %i.eg, %.preheader.split ] ; 2 uses
  %.sroa.27.0 = phi i32 [ %i.cl, %.preheader.split.us ], [ %i.ef, %.preheader.split ] ; 2 uses
  %.sroa.23.0 = phi i32 [ %i.ck, %.preheader.split.us ], [ %i.ee, %.preheader.split ] ; 2 uses
  %.sroa.19.0 = phi i32 [ %i.dt, %.preheader.split.us ], [ %i.gj, %.preheader.split ] ; 2 uses
  %.sroa.15.0 = phi i32 [ %i.cq, %.preheader.split.us ], [ %i.ek, %.preheader.split ] ; 2 uses
  %.sroa.11.0 = phi i32 [ %i.cp, %.preheader.split.us ], [ %i.ej, %.preheader.split ] ; 2 uses
  %.sroa.7.0 = phi i32 [ %i.co, %.preheader.split.us ], [ %i.ei, %.preheader.split ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %i.dv, %.preheader.split.us ], [ %i.gl, %.preheader.split ] ; 2 uses
  %.us-phi = phi ptr [ %i.cs, %.preheader.split.us ], [ %.038.i136, %.preheader.split ]
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %exitcond173.not = icmp eq i64 %indvars.iv.next171, 4
  br i1 %exitcond173.not, label %.preheader76.preheader, label %.preheader, !llvm.loop !6

.preheader76.preheader:                           ; preds = %.split.us
  %i.dw = add i32 %i.cb, %.sroa.0.0               ; 3 uses
  store i32 %i.dw, ptr %0, align 8, !tbaa !68
  %i.dx = add i32 %i.ca, %.sroa.7.0               ; 3 uses
  store i32 %i.dx, ptr %.sroa.7.0..sroa_idx.phi.trans.insert, align 4, !tbaa !68
  %i.dy = add i32 %.sroa.0.0.copyload227, %.sroa.11.0 ; 2 uses
  store i32 %i.dy, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !68
  %i.dz = add i32 %i.cg, %.sroa.15.0              ; 2 uses
  store i32 %i.dz, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !68
  %i.ea = add i32 %i.cf, %.sroa.19.0              ; 2 uses
  store i32 %i.ea, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !68
  %i.eb = add i32 %i.ce, %.sroa.23.0              ; 2 uses
  store i32 %i.eb, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !68
  %i.ec = add i32 %i.cd, %.sroa.27.0              ; 2 uses
  store i32 %i.ec, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !68
  %i.ed = add i32 %i.cc, %.sroa.31.0              ; 2 uses
  store i32 %i.ed, ptr %.sroa.31.0..sroa_idx, align 4, !tbaa !68
  %indvars.iv.next160.15 = add i32 %.027139, 64   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %.not = icmp sgt i32 %indvars.iv.next160.15, %i.by
  br i1 %.not, label %._crit_edge.loopexit, label %bb.r

.preheader.split:                                 ; preds = %.preheader.split.preheader, %.preheader.split
  %indvars.iv = phi i64 [ 0, %.preheader.split.preheader ], [ %indvars.iv.next, %.preheader.split ] ; 5 uses
  %i.ee = phi i32 [ %.lcssa9197134, %.preheader.split.preheader ], [ %i.gj, %.preheader.split ] ; 10 uses
  %i.ef = phi i32 [ %.lcssa9099133, %.preheader.split.preheader ], [ %i.ee, %.preheader.split ] ; 3 uses
  %i.eg = phi i32 [ %.lcssa89102132, %.preheader.split.preheader ], [ %i.ef, %.preheader.split ] ; 3 uses
  %i.eh = phi i32 [ %.lcssa105131, %.preheader.split.preheader ], [ %i.eg, %.preheader.split ]
  %i.ei = phi i32 [ %.lcssa95108130, %.preheader.split.preheader ], [ %i.gl, %.preheader.split ] ; 9 uses
  %i.ej = phi i32 [ %.lcssa94111129, %.preheader.split.preheader ], [ %i.ei, %.preheader.split ] ; 4 uses
  %i.ek = phi i32 [ %.lcssa93114128, %.preheader.split.preheader ], [ %i.ej, %.preheader.split ] ; 4 uses
  %i.el = phi i32 [ %.lcssa92117127, %.preheader.split.preheader ], [ %i.ek, %.preheader.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.em = and i64 %indvars.iv.next, 15
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !68 ; 5 uses
  %i.ep = call i32 @llvm.fshl.i32(i32 %i.eo, i32 %i.eo, i32 25)
  %i.eq = call i32 @llvm.fshl.i32(i32 %i.eo, i32 %i.eo, i32 14)
  %i.er = xor i32 %i.ep, %i.eq
  %i.es = lshr i32 %i.eo, 3
  %i.et = xor i32 %i.er, %i.es
  %i.eu = add nuw i64 %indvars.iv, 14
  %i.ev = and i64 %i.eu, 15
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !68 ; 5 uses
  %i.ey = call i32 @llvm.fshl.i32(i32 %i.ex, i32 %i.ex, i32 15)
  %i.ez = call i32 @llvm.fshl.i32(i32 %i.ex, i32 %i.ex, i32 13)
  %i.fa = xor i32 %i.ey, %i.ez
  %i.fb = lshr i32 %i.ex, 10
  %i.fc = xor i32 %i.fa, %i.fb
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !68
  %i.ff = add i32 %i.et, %i.fe
  %i.fg = add nuw i64 %indvars.iv, 9
  %i.fh = and i64 %i.fg, 15
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !68
  %i.fk = add i32 %i.ff, %i.fj
  %i.fl = add i32 %i.fk, %i.fc                    ; 2 uses
  store i32 %i.fl, ptr %i.fd, align 4, !tbaa !68
  %i.fm = call i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ee, i32 26)
  %i.fn = call i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ee, i32 21)
  %i.fo = xor i32 %i.fm, %i.fn
  %i.fp = call i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ee, i32 7)
  %i.fq = xor i32 %i.fo, %i.fp
  %i.fr = and i32 %i.ef, %i.ee
  %i.fs = xor i32 %i.ee, -1
  %i.ft = and i32 %i.eg, %i.fs
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fu = load i32, ptr %gep, align 4, !tbaa !68
  %i.fv = add i32 %i.fq, %i.fr
  %i.fw = add i32 %i.fv, %i.eh
  %i.fx = add i32 %i.fw, %i.ft
  %i.fy = add i32 %i.fx, %i.fu
  %i.fz = add i32 %i.fy, %i.fl                    ; 2 uses
  %i.ga = call i32 @llvm.fshl.i32(i32 %i.ei, i32 %i.ei, i32 30)
  %i.gb = call i32 @llvm.fshl.i32(i32 %i.ei, i32 %i.ei, i32 19)
  %i.gc = xor i32 %i.ga, %i.gb
  %i.gd = call i32 @llvm.fshl.i32(i32 %i.ei, i32 %i.ei, i32 10)
  %i.ge = xor i32 %i.gc, %i.gd
  %i.gf = xor i32 %i.ek, %i.ej
  %i.gg = and i32 %i.gf, %i.ei
  %i.gh = and i32 %i.ek, %i.ej
  %i.gi = xor i32 %i.gg, %i.gh
  %i.gj = add i32 %i.el, %i.fz                    ; 2 uses
  %i.gk = add i32 %i.ge, %i.fz
  %i.gl = add i32 %i.gk, %i.gi                    ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.split.us, label %.preheader.split, !llvm.loop !5

._crit_edge.loopexit:                             ; preds = %.preheader76.preheader
  %i.gm = add nuw nsw i32 %.027139, 64
  %i.gn = zext nneg i32 %indvars.iv.next160.15 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.027.lcssa = phi i64 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.gn, %._crit_edge.loopexit ]
  %.026.lcssa = phi i32 [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.gm, %._crit_edge.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.go = getelementptr inbounds nuw i8, ptr %.033, i64 %.027.lcssa ; 2 uses
  %i.gp = sub nsw i32 %.034, %.026.lcssa          ; 3 uses
  %i.gq = sext i32 %i.gp to i64                   ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.gr, ptr %6, align 8, !tbaa !33
  %i.gs = icmp eq ptr %.033, null
  %i.gt = icmp ne i32 %.026.lcssa, %.034
  %or.cond.i50 = and i1 %i.gs, %i.gt
  br i1 %or.cond.i50, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.79) #34
          to label %.noexc53 unwind label %bb.ac

.noexc53:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.gq, ptr %i.a, align 8, !tbaa !34
  %i.gu = icmp ugt i32 %i.gp, 15
  br i1 %i.gu, label %.noexc.i52, label %._crit_edge.i.i51

.noexc.i52:                                       ; preds = %bb.t
  %i.gv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc54 unwind label %bb.ac  ; 2 uses

.noexc54:                                         ; preds = %.noexc.i52
  store ptr %i.gv, ptr %6, align 8, !tbaa !31
  %i.gw = load i64, ptr %i.a, align 8, !tbaa !34
  store i64 %i.gw, ptr %i.gr, align 8, !tbaa !26
  br label %._crit_edge.i.i51

._crit_edge.i.i51:                                ; preds = %.noexc54, %bb.t
  %i.gx = phi ptr [ %i.gv, %.noexc54 ], [ %i.gr, %bb.t ] ; 2 uses
  switch i32 %i.gp, label %bb.v [
    i32 1, label %bb.u
    i32 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i51
  %i.gy = load i8, ptr %i.go, align 1, !tbaa !26
  store i8 %i.gy, ptr %i.gx, align 1, !tbaa !26
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i51
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gx, ptr align 1 %i.go, i64 %i.gq, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i51
  %i.gz = load i64, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.gz, ptr %i.ha, align 8, !tbaa !32
  %i.hb = load ptr, ptr %6, align 8, !tbaa !31
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gz
  store i8 0, ptr %i.hc, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.hd = load ptr, ptr %i.p, align 8, !tbaa !31  ; 6 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hf = icmp eq ptr %i.hd, %i.he
  %i.hg = load ptr, ptr %6, align 8, !tbaa !31    ; 5 uses
  %i.hh = icmp eq ptr %i.hg, %i.gr                ; 2 uses
  br i1 %i.hf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i61: ; preds = %bb.w
  br i1 %i.hh, label %bb.x, label %.thread.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i56: ; preds = %bb.w
  br i1 %i.hh, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i57

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i61
  %i.hi = load i64, ptr %i.ha, align 8, !tbaa !32 ; 3 uses
  %i.hj = icmp ult i64 %i.hi, 16
  call void @llvm.assume(i1 %i.hj)
  switch i64 %i.hi, label %bb.z [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i59
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.hk = load i8, ptr %i.hg, align 1, !tbaa !26
  store i8 %i.hk, ptr %i.hd, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i59

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hd, ptr align 1 %i.hg, i64 %i.hi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i59: ; preds = %bb.z, %bb.y, %bb.x
  %i.hl = load i64, ptr %i.ha, align 8, !tbaa !32 ; 2 uses
  store i64 %i.hl, ptr %i.q, align 8, !tbaa !32
  %i.hm = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hl
  store i8 0, ptr %i.hn, align 1, !tbaa !26
  %.pre.i60 = load ptr, ptr %6, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit63

.thread.i62:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i61
  store ptr %i.hg, ptr %i.p, align 8, !tbaa !31
  %i.ho = load <2 x i64>, ptr %i.ha, align 8, !tbaa !26
  store <2 x i64> %i.ho, ptr %i.q, align 8, !tbaa !26
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i57: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i56
  %i.hp = load i64, ptr %i.he, align 8, !tbaa !26
  store ptr %i.hg, ptr %i.p, align 8, !tbaa !31
  %i.hq = load <2 x i64>, ptr %i.ha, align 8, !tbaa !26
  store <2 x i64> %i.hq, ptr %i.q, align 8, !tbaa !26
  %.not.i58 = icmp eq ptr %i.hd, null
  br i1 %.not.i58, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i57
  store ptr %i.hd, ptr %6, align 8, !tbaa !31
  store i64 %i.hp, ptr %i.gr, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit63

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i57, %.thread.i62
  store ptr %i.gr, ptr %6, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i59, %bb.aa, %bb.ab
  %i.hr = phi ptr [ %i.hd, %bb.aa ], [ %i.gr, %bb.ab ], [ %.pre.i60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i59 ]
  store i64 0, ptr %i.ha, align 8, !tbaa !32
  store i8 0, ptr %i.hr, align 1, !tbaa !26
  %i.hs = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.gr
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit63
  %i.hu = load i64, ptr %i.gr, align 8, !tbaa !26
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %i.hw = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.n
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.hy = load i64, ptr %i.n, align 8, !tbaa !26
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.ac:                                            ; preds = %.noexc.i52, %bb.s
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %.pn37.pn = phi { ptr, i32 } [ %i.ia, %bb.ac ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ]
  %i.ib = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.n
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.ad
  %i.id = load i64, ptr %i.n, align 8, !tbaa !26
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %.pn37.pn
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZL11sha256BlockPjPKj(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #18 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 8 uses
  %.sroa.0.0.copyload = load i32, ptr %0, align 4, !tbaa !68 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !68 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !68 ; 2 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !68 ; 2 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.19.0.copyload = load i32, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !68 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.sroa.23.0.copyload = load i32, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !68 ; 2 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.27.0.copyload = load i32, ptr %.sroa.27.0..sroa_idx, align 4, !tbaa !68 ; 2 uses
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_:bb.a

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #33 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 96) #35
  invoke void @__cxa_rethrow() #34
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.r, ptr %i.s, align 8, !tbaa !32
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 0, ptr %i.x, align 8, !tbaa !32
  store i8 0, ptr %i.w, align 8, !tbaa !26
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #32
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !69 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #33 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !69  ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !291

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !131
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !32   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !31
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #33 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_V3String.cpp() #28 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5VName11s_dehashMapB5cxx11E, i64 8), align 8, !tbaa !130
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN5VName11s_dehashMapB5cxx11E, i64 16), align 8, !tbaa !25
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5VName11s_dehashMapB5cxx11E, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN5VName11s_dehashMapB5cxx11E, i64 24), align 8, !tbaa !131
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN5VName11s_dehashMapB5cxx11E, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN5VName11s_dehashMapB5cxx11E, i64 32), align 8, !tbaa !132
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN5VName11s_dehashMapB5cxx11E, i64 40), align 8, !tbaa !133
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev, ptr nonnull @_ZN5VName11s_dehashMapB5cxx11E, ptr nonnull @__dso_handle) #33 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #30

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { alwaysinline mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold nofree noreturn }
attributes #24 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #27 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { noreturn nounwind }
attributes #33 = { nounwind }
attributes #34 = { noreturn }
attributes #35 = { builtin nounwind }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { builtin allocsize(0) }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = distinct !{!2, !27}
!3 = distinct !{null}
!4 = distinct !{!4, !27}
!5 = distinct !{!5, !27}
!6 = distinct !{!6, !27}
!7 = distinct !{!7, !27}
!8 = distinct !{!8, !27}
!9 = distinct !{!9, !27}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"_ZTSSt14_Rb_tree_color", !15, i64 0}
!20 = !{!"any pointer", !15, i64 0}
!21 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !20, i64 0}
!22 = !{!"_ZTSSt18_Rb_tree_node_base", !19, i64 0, !21, i64 8, !21, i64 16, !21, i64 24}
!23 = !{!"long", !15, i64 0}
!24 = !{!"_ZTSSt15_Rb_tree_header", !22, i64 0, !23, i64 32}
!25 = !{!24, !21, i64 8}
!26 = !{!15, !15, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"p1 omnipotent char", !20, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !23, i64 8, !15, i64 16}
!31 = !{!30, !28, i64 0}
!32 = !{!30, !23, i64 8}
!33 = !{!29, !28, i64 0}
!34 = !{!23, !23, i64 0}
!35 = !{!"bool", !15, i64 0}
!36 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!37 = !{!"vtable pointer", !14, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"_ZTSSt13_Ios_Fmtflags", !15, i64 0}
!40 = !{!"_ZTSSt12_Ios_Iostate", !15, i64 0}
!41 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !20, i64 0}
!42 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !23, i64 8}
!43 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !20, i64 0}
!44 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
!45 = !{!"_ZTSSt6locale", !44, i64 0}
!46 = !{!"_ZTSSt8ios_base", !23, i64 8, !23, i64 16, !39, i64 24, !40, i64 28, !40, i64 32, !41, i64 40, !42, i64 48, !15, i64 64, !16, i64 192, !43, i64 200, !45, i64 208}
!47 = !{!46, !39, i64 24}
!48 = !{!39, !39, i64 0}
!49 = !{!"any p2 pointer", !20, i64 0}
!50 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !49, i64 0}
!51 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0}
!52 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !51, i64 0, !51, i64 8, !51, i64 16, !50, i64 24}
!53 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !50, i64 0, !23, i64 8, !52, i64 16, !52, i64 48}
!54 = !{!53, !51, i64 48}
!55 = !{!51, !51, i64 0}
!56 = !{!53, !50, i64 0}
!57 = !{!53, !50, i64 40}
!58 = !{!53, !50, i64 72}
!59 = !{!53, !23, i64 8}
!60 = !{!"branch_weights", i32 2146410443, i32 1073205}
!61 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!62 = !{!"branch_weights", i32 1, i32 1048575}
!63 = !{!"_ZTS11VHashSha256", !15, i64 0, !30, i64 32, !23, i64 64, !35, i64 72}
!64 = !{!63, !35, i64 72}
!65 = !{i8 0, i8 2}
!66 = !{}
!67 = !{!63, !23, i64 64}
!68 = !{!16, !16, i64 0}
!69 = !{!21, !21, i64 0}
!70 = !{!"p1 _ZTS12V3OptionsImp", !20, i64 0}
!71 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!72 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !71, i64 0}
!73 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !72, i64 0, !24, i64 8}
!74 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !73, i64 0}
!75 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !74, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!77 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !76, i64 0}
!78 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !77, i64 0}
!79 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !78, i64 0}
!80 = !{!"_ZTSSt4lessI12VFileLibNameE"}
!81 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessI12VFileLibNameEE", !80, i64 0}
!82 = !{!"_ZTSNSt8_Rb_treeI12VFileLibNameS0_St9_IdentityIS0_ESt4lessIS0_ESaIS0_EE13_Rb_tree_implIS4_Lb1EEE", !81, i64 0, !24, i64 8}
!83 = !{!"_ZTSSt8_Rb_treeI12VFileLibNameS0_St9_IdentityIS0_ESt4lessIS0_ESaIS0_EE", !82, i64 0}
!84 = !{!"_ZTSSt3setI12VFileLibNameSt4lessIS0_ESaIS0_EE", !83, i64 0}
!85 = !{!"p1 _ZTS12VFileLibName", !20, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseI12VFileLibNameSaIS0_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!"_ZTSNSt12_Vector_baseI12VFileLibNameSaIS0_EE12_Vector_implE", !86, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseI12VFileLibNameSaIS0_EE", !87, i64 0}
!89 = !{!"_ZTSSt6vectorI12VFileLibNameSaIS0_EE", !88, i64 0}
!90 = !{!"_ZTSSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!91 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !90, i64 0}
!92 = !{!"_ZTSNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_jESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !91, i64 0, !24, i64 8}
!93 = !{!"_ZTSSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_jESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE", !92, i64 0}
!94 = !{!"_ZTSSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4lessIS6_ESaISt4pairIS6_jEEE", !93, i64 0}
!95 = !{!"_ZTSNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_S5_ESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE13_Rb_tree_implISC_Lb1EEE", !91, i64 0, !24, i64 8}
!96 = !{!"_ZTSSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_S5_ESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE", !95, i64 0}
!97 = !{!"_ZTSSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS6_ESaISt4pairIS6_S5_EEE", !96, i64 0}
!98 = !{!"_ZTSNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_25V3HierarchicalBlockOptionESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !91, i64 0, !24, i64 8}
!99 = !{!"_ZTSSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_25V3HierarchicalBlockOptionESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EE", !98, i64 0}
!100 = !{!"_ZTSSt3mapIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE25V3HierarchicalBlockOptionSt4lessIS6_ESaISt4pairIS6_S7_EEE", !99, i64 0}
!101 = !{!"_ZTSN11VOptionBool2enE", !15, i64 0}
!102 = !{!"_ZTS11VOptionBool", !101, i64 0}
!103 = !{!"_ZTSN10VTimescale2enE", !15, i64 0}
!104 = !{!"_ZTS10VTimescale", !103, i64 0}
!105 = !{!"_ZTSN10V3LangCode2enE", !15, i64 0}
!106 = !{!"_ZTS10V3LangCode", !105, i64 0}
!107 = !{!"_ZTS9V3Options", !70, i64 0, !75, i64 8, !79, i64 56, !79, i64 80, !79, i64 104, !75, i64 128, !75, i64 176, !75, i64 224, !75, i64 272, !84, i64 320, !89, i64 368, !84, i64 392, !75, i64 440, !79, i64 488, !94, i64 512, !94, i64 560, !97, i64 608, !100, i64 656, !75, i64 704, !35, i64 752, !35, i64 753, !35, i64 754, !35, i64 755, !35, i64 756, !35, i64 757, !35, i64 758, !35, i64 759, !35, i64 760, !35, i64 761, !35, i64 762, !35, i64 763, !35, i64 764, !35, i64 765, !35, i64 766, !35, i64 767, !35, i64 768, !35, i64 769, !35, i64 770, !35, i64 771, !35, i64 772, !35, i64 773, !35, i64 774, !35, i64 775, !35, i64 776, !35, i64 777, !35, i64 778, !35, i64 779, !35, i64 780, !35, i64 781, !35, i64 782, !35, i64 783, !16, i64 784, !35, i64 788, !35, i64 789, !35, i64 790, !35, i64 791, !35, i64 792, !35, i64 793, !35, i64 794, !35, i64 795, !35, i64 796, !35, i64 797, !35, i64 798, !35, i64 799, !35, i64 800, !35, i64 801, !35, i64 802, !35, i64 803, !35, i64 804, !35, i64 805, !35, i64 806, !35, i64 807, !35, i64 808, !35, i64 809, !35, i64 810, !35, i64 811, !35, i64 812, !35, i64 813, !35, i64 814, !35, i64 815, !35, i64 816, !35, i64 817, !35, i64 818, !35, i64 819, !35, i64 820, !35, i64 821, !35, i64 822, !35, i64 823, !35, i64 824, !35, i64 825, !35, i64 826, !35, i64 827, !102, i64 828, !35, i64 829, !35, i64 830, !35, i64 831, !35, i64 832, !35, i64 833, !35, i64 834, !35, i64 835, !35, i64 836, !35, i64 837, !102, i64 838, !35, i64 839, !35, i64 840, !35, i64 841, !35, i64 842, !35, i64 843, !35, i64 844, !35, i64 845, !35, i64 846, !35, i64 847, !35, i64 848, !35, i64 849, !35, i64 850, !35, i64 851, !35, i64 852, !16, i64 856, !16, i64 860, !16, i64 864, !16, i64 868, !16, i64 872, !16, i64 876, !16, i64 880, !16, i64 884, !16, i64 888, !16, i64 892, !16, i64 896, !16, i64 900, !16, i64 904, !16, i64 908, !16, i64 912, !35, i64 916, !35, i64 917, !16, i64 920, !102, i64 924, !16, i64 928, !16, i64 932, !16, i64 936, !16, i64 940, !16, i64 944, !16, i64 948, !16, i64 952, !16, i64 956, !16, i64 960, !16, i64 964, !16, i64 968, !16, i64 972, !102, i64 976, !35, i64 977, !16, i64 980, !16, i64 984, !104, i64 988, !104, i64 989, !104, i64 990, !104, i64 991, !16, i64 992, !16, i64 996, !16, i64 1000, !16, i64 1004, !16, i64 1008, !16, i64 1012, !16, i64 1016, !16, i64 1020, !16, i64 1024, !16, i64 1028, !16, i64 1032, !30, i64 1040, !30, i64 1072, !30, i64 1104, !89, i64 1136, !30, i64 1160, !30, i64 1192, !30, i64 1224, !30, i64 1256, !30, i64 1288, !30, i64 1320, !30, i64 1352, !30, i64 1384, !30, i64 1416, !30, i64 1448, !30, i64 1480, !30, i64 1512, !30, i64 1544, !30, i64 1576, !30, i64 1608, !30, i64 1640, !106, i64 1672, !35, i64 1673, !35, i64 1674, !35, i64 1675, !35, i64 1676, !35, i64 1677, !35, i64 1678, !35, i64 1679, !35, i64 1680, !35, i64 1681, !35, i64 1682, !35, i64 1683, !35, i64 1684, !35, i64 1685, !35, i64 1686, !35, i64 1687, !35, i64 1688, !35, i64 1689, !35, i64 1690, !35, i64 1691, !35, i64 1692, !35, i64 1693, !35, i64 1694, !35, i64 1695, !102, i64 1696, !35, i64 1697, !35, i64 1698, !35, i64 1699, !35, i64 1700, !35, i64 1701, !35, i64 1702, !35, i64 1703, !35, i64 1704, !35, i64 1705, !35, i64 1706, !35, i64 1707, !35, i64 1708, !35, i64 1709, !35, i64 1710, !16, i64 1712, !35, i64 1716, !35, i64 1717, !35, i64 1718, !35, i64 1719, !35, i64 1720, !35, i64 1721, !35, i64 1722}
!108 = !{!107, !35, i64 1722}
!109 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!110 = !{!76, !51, i64 0}
!111 = !{!76, !51, i64 8}
!112 = !{!76, !51, i64 16}
!113 = !{!22, !21, i64 24}
!114 = !{!22, !21, i64 16}
!115 = !{!52, !50, i64 24}
!116 = !{!52, !51, i64 8}
!117 = !{!52, !51, i64 16}
!118 = !{!"_ZTSN11V3ErrorCode2enE", !15, i64 0}
!119 = !{!"_ZTS11V3ErrorCode", !118, i64 0}
!120 = !{!"p1 _ZTS8FileLine", !20, i64 0}
!121 = !{!"any p3 pointer", !49, i64 0}
!122 = !{!"p3 _ZTS8FileLine", !121, i64 0}
!123 = !{!"p2 _ZTS8FileLine", !49, i64 0}
!124 = !{!"_ZTSSt15_Deque_iteratorIPK8FileLineRS2_PS2_E", !123, i64 0, !123, i64 8, !123, i64 16, !122, i64 24}
!125 = !{!"_ZTSNSt11_Deque_baseIPK8FileLineSaIS2_EE16_Deque_impl_dataE", !122, i64 0, !23, i64 8, !124, i64 16, !124, i64 48}
!126 = !{!"_ZTSNSt11_Deque_baseIPK8FileLineSaIS2_EE11_Deque_implE", !125, i64 0}
!127 = !{!"_ZTSSt11_Deque_baseIPK8FileLineSaIS2_EE", !126, i64 0}
!128 = !{!"_ZTSSt5dequeIPK8FileLineSaIS2_EE", !127, i64 0}
!129 = !{!"_ZTS13VErrorMessage", !119, i64 0, !30, i64 8, !120, i64 40, !128, i64 48}
!130 = !{!24, !19, i64 0}
!131 = !{!24, !21, i64 16}
!132 = !{!24, !21, i64 24}
!133 = !{!24, !23, i64 32}
!134 = !{!125, !122, i64 0}
!135 = !{!125, !122, i64 40}
!136 = !{!125, !122, i64 72}
!137 = !{!123, !123, i64 0}
!138 = !{!125, !23, i64 8}
!139 = !{!124, !122, i64 24}
!140 = !{!52, !51, i64 0}
!141 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !20, i64 0}
!142 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE", !20, i64 0}
!143 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeE", !141, i64 0, !142, i64 8}
!144 = !{!143, !142, i64 8}
!145 = distinct !{!145, !27}
!146 = distinct !{!146, !27}
!147 = !{ptr @_ZL13wildMatchImplILb0EEbPKcS1_}
!148 = distinct !{!148, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!149 = distinct !{!149, !148, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!150 = distinct !{!150, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!151 = distinct !{!151, !150, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!152 = distinct !{!152, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!153 = distinct !{!153, !152, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!154 = !{!149}
!155 = !{!151, !149}
!156 = !{!153}
end_hunk_1
