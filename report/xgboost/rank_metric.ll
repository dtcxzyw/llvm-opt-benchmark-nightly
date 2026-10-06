Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/rank_metric?download=true
inline.NumInlined: 4872
inline.NumDeleted: 2022
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZNK7xgboost6Metric10SaveConfigEPNS_4JsonE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 0, ptr %i.s, align 8, !tbaa !96
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %2, align 8, !tbaa !79
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 7 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !59
  %i.v = load ptr, ptr %3, align 8, !tbaa !54     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.f
  br i1 %i.w, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.o, align 8, !tbaa !53   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.z, i1 false)
  br label %_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.v, ptr %i.t, align 8, !tbaa !54
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !60
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !60
  %.pre = load i64, ptr %i.o, align 8, !tbaa !53
  br label %_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ab = phi i64 [ %i.x, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !53
  store ptr %i.f, ptr %3, align 8, !tbaa !54
  store i64 0, ptr %i.o, align 8, !tbaa !53
  store i8 0, ptr %i.f, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ad, ptr %4, align 8, !tbaa !59
  store i32 1701667182, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.ae, align 8, !tbaa !53
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i8 0, ptr %i.af, align 4, !tbaa !60
  %i.ag = load ptr, ptr %1, align 8, !tbaa !99    ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !79
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.i, !inline_history !0 ; 2 uses

_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.al = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #38
          to label %.noexc14 unwind label %bb.i   ; 7 uses

.noexc14:                                         ; preds = %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  store i32 0, ptr %i.am, align 4, !tbaa !91
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 0, ptr %i.an, align 8, !tbaa !96
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %i.al, align 8, !tbaa !79
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 2 uses
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !59
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i64 0, ptr %i.aq, align 8, !tbaa !53
  store i8 0, ptr %i.ap, align 8, !tbaa !60
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.ao) #19
  %i.ar = atomicrmw add ptr %i.am, i32 1 monotonic, align 4 ; 0 uses
  %i.as = load ptr, ptr %i.ak, align 8, !tbaa !100 ; 4 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !100
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit, label %bb.g

bb.g:                                             ; preds = %.noexc14
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = atomicrmw sub ptr %i.at, i32 1 release, align 4
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.h, label %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !79
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(24) %i.as) #19, !inline_history !1
  br label %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit

_ZN7xgboost4JsonaSEONS_10JsonStringE.exit:        ; preds = %bb.h, %bb.g, %.noexc14
  %i.az = load ptr, ptr %4, align 8, !tbaa !54    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ad
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit
  %i.bb = load i64, ptr %i.ad, align 8, !tbaa !60
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7xgboost4JsonaSEONS_10JsonStringE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %2, align 8, !tbaa !79
  %i.bd = load ptr, ptr %i.t, align 8, !tbaa !54  ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.u
  br i1 %i.be, label %_ZN7xgboost10JsonStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bf = load i64, ptr %i.u, align 8, !tbaa !60
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #39
  br label %_ZN7xgboost10JsonStringD2Ev.exit

_ZN7xgboost10JsonStringD2Ev.exit:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bh = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.f
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit
  %i.bj = load i64, ptr %i.f, align 8, !tbaa !60
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.i:                                             ; preds = %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN7xgboost10JsonStringC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %4, align 8, !tbaa !54    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ad
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.i
  %i.bo = load i64, ptr %i.ad, align 8, !tbaa !60
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonStringE, i64 16), ptr %2, align 8, !tbaa !79
  %i.bq = load ptr, ptr %i.t, align 8, !tbaa !54  ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.u
  br i1 %i.br, label %_ZN7xgboost10JsonStringD2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.bs = load i64, ptr %i.u, align 8, !tbaa !60
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #39
  br label %_ZN7xgboost10JsonStringD2Ev.exit24

_ZN7xgboost10JsonStringD2Ev.exit24:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22
  %i.bu = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.f
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit24
  %i.bw = load i64, ptr %i.f, align 8, !tbaa !60
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZN7xgboost10JsonStringD2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.bl
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost6Metric9ConfigureERKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #13 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN7xgboost13MetricNoCache8EvaluateERKNS_16HostDeviceVectorIfEESt10shared_ptrINS_7DMatrixEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef align 8 %2) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !105    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(248) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.e = load ptr, ptr %0, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef double %i.g(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(248) %i.d)
  ret double %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK7xgboost6metric7EvalAMS4NameEv(ptr noundef nonnull align 8 dereferenceable(52) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZN7xgboost6metric7EvalAMS4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoE(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(248) %2) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %4 = alloca %"class.std::vector.63", align 8    ; 14 uses
  %5 = alloca %class.anon.76, align 8             ; 6 uses
  %6 = alloca %"class.xgboost::ConsoleLogger", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  tail call void @_ZN7xgboost6metric15CheckRowWeightsERKNS_8MetaInfoE(ptr noundef nonnull align 8 dereferenceable(248) %2)
  %i.b = tail call noundef zeroext i1 @_ZN7xgboost10collective13IsDistributedEv() #19
  br i1 %i.b, label %bb.b, label %bb.e, !prof !80

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.c = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.c, ptr noundef nonnull @.str.16, i32 noundef 61)
  %i.d = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.c ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.b
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.39, i64 noundef 42)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.18, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.40, i64 noundef 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79 unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.e

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.ak

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.aj

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit79, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.j = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(25) %i.i) ; 2 uses
  %i.k = trunc i64 %i.j to i32                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.l = and i64 %i.j, 4294967295                 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt4pairIfjESaIS1_EEC2EmRKS2_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseISt4pairIfjESaIS1_EEC2EmRKS2_.exit.thread.i: ; preds = %bb.e
  store i64 0, ptr %4, align 8
  br label %bb.f

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.e
  %i.m = shl nuw nsw i64 %i.l, 3                  ; 3 uses
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #38
          to label %.noexc unwind label %bb.j     ; 4 uses

.noexc:                                           ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.n, ptr %4, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.l
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.n, i8 0, i64 %i.m, i1 false), !tbaa !60
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.n, i64 %i.m
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %_ZNSt12_Vector_baseISt4pairIfjESaIS1_EEC2EmRKS2_.exit.thread.i
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIfjESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %i.o, %.noexc ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIfjESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.noexc ]
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.q, align 8, !tbaa !448
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.p, align 8, !tbaa !449
  %i.r = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !77
  %i.u = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.t)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %4, ptr %5, align 8, !tbaa !110
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.r, ptr %i.v, align 8, !tbaa !112
  invoke void @_ZN7xgboost6common11ParallelForIjZNS_6metric7EvalAMS4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUljE_EEvT_iNS0_5SchedEOT0_(i32 noundef %i.k, i32 noundef %i.u, i32 2, i64 0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN7xgboost6common11ParallelForIjZNS_6metric7EvalAMS4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUljE_EEvT_iOT0_.exit unwind label %bb.l

_ZN7xgboost6common11ParallelForIjZNS_6metric7EvalAMS4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUljE_EEvT_iOT0_.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !77
  %i.x = load ptr, ptr %4, align 8, !tbaa !450    ; 4 uses
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !450  ; 4 uses
  %i.z = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.w)
          to label %.noexc81 unwind label %bb.k   ; 0 uses

.noexc81:                                         ; preds = %_ZN7xgboost6common11ParallelForIjZNS_6metric7EvalAMS4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUljE_EEvT_iOT0_.exit
  %.not.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.noexc81
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true)
  %i.af = shl nuw nsw i64 %i.ae, 1
  %i.ag = xor i64 %i.af, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN7xgboost6metric7EvalAMS4EvalERKNSB_16HostDeviceVectorIfEERKNSB_8MetaInfoEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_(ptr %i.x, ptr %i.y, i64 noundef %i.ag)
          to label %.noexc82 unwind label %bb.k

.noexc82:                                         ; preds = %bb.i
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfjESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN7xgboost6metric7EvalAMS4EvalERKNSB_16HostDeviceVectorIfEERKNSB_8MetaInfoEEUlRKT_RKT0_E_EEEvSL_SL_SO_(ptr %i.x, ptr %i.y)
          to label %bb.m unwind label %bb.k

bb.j:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIfjESaIS1_EED2Ev.exit96

bb.k:                                             ; preds = %.noexc82, %bb.i, %_ZN7xgboost6common11ParallelForIjZNS_6metric7EvalAMS4EvalERKNS_16HostDeviceVectorIfEERKNS_8MetaInfoEEUljE_EEvT_iOT0_.exit, %bb.g, %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.l:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ah

bb.m:                                             ; preds = %.noexc82, %.noexc81
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load float, ptr %i.ak, align 8, !tbaa !84
  %i.am = uitofp i32 %i.k to float                ; 2 uses
  %i.an = fmul float %i.al, %i.am
  %i.ao = fptoui float %i.an to i32               ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  %spec.select = select i1 %i.ap, i32 %i.k, i32 %i.ao ; 2 uses
  %i.aq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(25) %i.i)
          to label %.noexc84 unwind label %bb.p

.noexc84:                                         ; preds = %bb.m
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !115, !noalias !451
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.at = load i8, ptr %i.as, align 8, !tbaa !120, !noalias !451
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !70, !noalias !451
  switch i8 %i.at, label %bb.o [
    i8 0, label %_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE.exit
    i8 1, label %bb.n
  ]

bb.n:                                             ; preds = %.noexc84
  br label %_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE.exit

bb.o:                                             ; preds = %.noexc84
  call void @_ZSt9terminatev() #40, !noalias !451
  unreachable

_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE.exit: ; preds = %.noexc84, %bb.n
  %.sroa.097.0 = phi i64 [ 1, %bb.n ], [ %i.av, %.noexc84 ]
  %i.aw = add i32 %i.k, -1
  %invariant.umin = call i32 @llvm.umin.i32(i32 %i.aw, i32 %spec.select) ; 2 uses
  %.not = icmp eq i32 %invariant.umin, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %wide.trip.count = zext i32 %invariant.umin to i64
  %.pre = load ptr, ptr %4, align 8, !tbaa !108
  br label %bb.q

._crit_edge.loopexit:                             ; preds = %bb.v
  %i.ay = uitofp i32 %.256 to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE.exit
  %.054.lcssa = phi float [ 0.000000e+00, %_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE.exit ], [ %i.ay, %._crit_edge.loopexit ]
  %.052.lcssa = phi double [ 0.000000e+00, %_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE.exit ], [ %.153, %._crit_edge.loopexit ] ; 3 uses
  %.050.lcssa = phi double [ 0.000000e+00, %_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE.exit ], [ %.151, %._crit_edge.loopexit ] ; 2 uses
  %.049.lcssa = phi double [ 0.000000e+00, %_ZNK7xgboost6linalg6TensorIfLi2EE4ViewENS_9DeviceOrdE.exit ], [ %.2, %._crit_edge.loopexit ] ; 2 uses
  %i.az = icmp eq i32 %spec.select, %i.k
  br i1 %i.az, label %bb.w, label %bb.ae

bb.p:                                             ; preds = %bb.m
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.q:                                             ; preds = %.lr.ph, %bb.v
  %i.bb = phi ptr [ %.pre, %.lr.ph ], [ %i.bt, %bb.v ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 4 uses
  %.049106 = phi double [ 0.000000e+00, %.lr.ph ], [ %.2, %bb.v ] ; 3 uses
  %.050105 = phi double [ 0.000000e+00, %.lr.ph ], [ %.151, %bb.v ] ; 2 uses
  %.052104 = phi double [ 0.000000e+00, %.lr.ph ], [ %.153, %bb.v ] ; 2 uses
  %.054103 = phi i32 [ 0, %.lr.ph ], [ %.256, %bb.v ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !122
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %.noexc85 unwind label %bb.t

.noexc85:                                         ; preds = %bb.q
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc85
  %i.bh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %.noexc86 unwind label %bb.t

.noexc86:                                         ; preds = %bb.r
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !115
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bf
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !123
  %i.bl = fpext float %i.bk to double
  br label %bb.s

bb.s:                                             ; preds = %.noexc85, %.noexc86
  %i.bm = phi double [ %i.bl, %.noexc86 ], [ 1.000000e+00, %.noexc85 ] ; 2 uses
  %i.bn = mul i64 %.sroa.097.0, %i.bf
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !123
  %i.bq = fcmp ogt float %i.bp, 5.000000e-01      ; 2 uses
  %i.br = fadd double %.052104, %i.bm
  %i.bs = fadd double %.050105, %i.bm
  %.153 = select i1 %i.bq, double %i.br, double %.052104 ; 5 uses
  %.151 = select i1 %i.bq, double %.050105, double %i.bs ; 4 uses
  %i.bt = load ptr, ptr %4, align 8, !tbaa !108   ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !124
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !124
  %i.by = fcmp une float %i.bv, %i.bx
  br i1 %i.by, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.u:                                             ; preds = %bb.s
  %i.ca = fadd double %.153, %.151
  %i.cb = fadd double %i.ca, 1.000000e+01
  %i.cc = fadd double %.151, 1.000000e+01
  %i.cd = fdiv double %.153, %i.cc
  %i.ce = fadd double %i.cd, 1.000000e+00
  %i.cf = call double @log(double noundef %i.ce) #19
  %i.cg = fneg double %.153
  %i.ch = call double @llvm.fmuladd.f64(double %i.cb, double %i.cf, double %i.cg)
  %i.ci = fmul double %i.ch, 2.000000e+00
  %i.cj = call double @sqrt(double noundef %i.ci) #19 ; 2 uses
  %i.ck = fcmp olt double %.049106, %i.cj         ; 2 uses
  %i.cl = trunc nuw i64 %indvars.iv to i32
  %.155 = select i1 %i.ck, i32 %i.cl, i32 %.054103
  %.1 = select i1 %i.ck, double %i.cj, double %.049106
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.256 = phi i32 [ %.155, %bb.u ], [ %.054103, %bb.s ] ; 2 uses
  %.2 = phi double [ %.1, %bb.u ], [ %.049106, %bb.s ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.q, !llvm.loop !447

bb.w:                                             ; preds = %._crit_edge
end_hunk_0
