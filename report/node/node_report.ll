inline.NumInlined: 2885
inline.NumDeleted: 980
begin_hunk_0_@_ZN4node17TriggerNodeReportB5cxx11EPN2v87IsolateEPNS_11EnvironmentESt17basic_string_viewIcSt11char_traitsIcEES8_S8_NS0_5LocalINS0_5ValueEEE:bb.a
  %i.ju = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.20, i64 noundef 25) #26 ; 0 uses
  %i.jv = load ptr, ptr @_ZSt4cerr, align 8
  %i.jw = getelementptr i8, ptr %i.jv, i64 -24
  %i.jx = load i64, ptr %i.jw, align 8
  %i.jy = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 240
  %i.ka = load ptr, ptr %i.jz, align 8            ; 6 uses
  %.not.i.i.i102 = icmp eq ptr %i.ka, null
  br i1 %.not.i.i.i102, label %bb.az, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i103

bb.az:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread123
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i103: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread123
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 56
  %i.kc = load i8, ptr %i.kb, align 8
  %.not.i1.i.i104 = icmp eq i8 %i.kc, 0
  br i1 %.not.i1.i.i104, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i103
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 67
  %i.ke = load i8, ptr %i.kd, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit106

bb.bb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i103
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ka) #26
  %i.kf = load ptr, ptr %i.ka, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 48
  %i.kh = load ptr, ptr %i.kg, align 8
  %i.ki = call noundef signext i8 %i.kh(ptr noundef nonnull align 8 dereferenceable(570) %i.ka, i8 noundef signext 10) #26, !inline_history !36
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit106

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit106: ; preds = %bb.ba, %bb.bb
  %.0.i.i.i105 = phi i8 [ %i.ke, %bb.ba ], [ %i.ki, %bb.bb ]
  %i.kj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i105) #26
  %i.kk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kj) #26 ; 0 uses
  %.pre131 = load ptr, ptr %9, align 8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit106, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95
  %i.kl = phi ptr [ %.pre131, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit106 ], [ %i.jj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95 ] ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.km, ptr %0, align 8
  %i.kn = icmp eq ptr %i.kl, %i.b
  br i1 %i.kn, label %bb.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i96

bb.bc:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread
  %i.ko = load i64, ptr %i.c, align 8             ; 3 uses
  %i.kp = icmp ult i64 %i.ko, 16
  call void @llvm.assume(i1 %i.kp)
  %i.kq = add nuw nsw i64 %i.ko, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.km, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.kq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i96: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit95.thread
  store ptr %i.kl, ptr %0, align 8
  %i.kr = load i64, ptr %i.b, align 8
  store i64 %i.kr, ptr %i.km, align 8
  %.pre132 = load i64, ptr %i.c, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit97: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i96
  %i.ks = phi i64 [ %i.ko, %bb.bc ], [ %.pre132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i96 ]
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ks, ptr %i.kt, align 8
  store ptr %i.b, ptr %9, align 8
  store i64 0, ptr %i.c, align 8
  store i8 0, ptr %i.b, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit97
  %i.ku = load ptr, ptr @_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, align 8 ; 2 uses
  store ptr %i.ku, ptr %16, align 8
  %i.kv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE, i64 24), align 8
  %i.kw = getelementptr i8, ptr %i.ku, i64 -24
  %i.kx = load i64, ptr %i.kw, align 8
  %i.ky = getelementptr inbounds i8, ptr %16, i64 %i.kx
  store ptr %i.kv, ptr %i.ky, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.cs, align 8
  %i.kz = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.cs) #26 ; 0 uses
  %i.la = getelementptr inbounds nuw i8, ptr %16, i64 112
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.la) #26
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cs, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %16, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.lb) #26
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ce) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.be

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %bb.bd
  %i.lc = load ptr, ptr %9, align 8               ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.b
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.be
  %i.le = load i64, ptr %i.b, align 8
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  ret void
}

declare void @_ZN4node10permission10Permission17ThrowAccessDeniedEPNS_11EnvironmentENS0_15PermissionScopeERKSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @_ZN4node11Environment6GetCwdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4node6reportL15WriteNodeReportEPN2v87IsolateEPNS_11EnvironmentESt17basic_string_viewIcSt11char_traitsIcEES9_S9_RSoNS1_5LocalINS1_5ValueEEEbbb(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i64 %2, ptr %3, i64 %4, ptr %5, ptr noundef byval(%"class.std::basic_string_view") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %7, i64 %8, i1 noundef zeroext %9, i1 noundef zeroext %10, i1 noundef zeroext %11) unnamed_addr #0 {
bb.a:
  %12 = alloca %"class.std::vector.8", align 8    ; 8 uses
  %13 = alloca %struct.rlimit, align 8            ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %14 = alloca %struct.uv_rusage_t, align 8       ; 12 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca double, align 8                   ; 5 uses
  %i.i = alloca double, align 8                   ; 5 uses
  %i.j = alloca double, align 8                   ; 4 uses
  %i.k = alloca double, align 8                   ; 4 uses
  %i.l = alloca double, align 8                   ; 4 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %15 = alloca %struct.uv_rusage_t, align 8       ; 9 uses
  %i.n = alloca double, align 8                   ; 5 uses
  %i.o = alloca double, align 8                   ; 5 uses
  %i.p = alloca double, align 8                   ; 4 uses
  %i.q = alloca double, align 8                   ; 4 uses
  %i.r = alloca double, align 8                   ; 4 uses
  %16 = alloca %"class.std::unique_ptr.485", align 8 ; 6 uses
  %i.s = alloca [256 x ptr], align 16             ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.node::NativeSymbolDebuggingContext::SymbolInfo", align 8 ; 8 uses
  %20 = alloca %"class.v8::HeapStatistics", align 8 ; 18 uses
  %21 = alloca %"class.v8::HeapSpaceStatistics", align 8 ; 9 uses
  %i.t = alloca i64, align 8                      ; 4 uses
  %i.u = alloca i64, align 8                      ; 4 uses
  %i.v = alloca i64, align 8                      ; 4 uses
  %i.w = alloca i64, align 8                      ; 4 uses
  %i.x = alloca i64, align 8                      ; 4 uses
  %i.y = alloca i64, align 8                      ; 4 uses
  %i.z = alloca i64, align 8                      ; 4 uses
  %i.aa = alloca i64, align 8                     ; 4 uses
  %i.ab = alloca i64, align 8                     ; 4 uses
  %i.ac = alloca i64, align 8                     ; 4 uses
  %i.ad = alloca i64, align 8                     ; 4 uses
  %i.ae = alloca i64, align 8                     ; 4 uses
  %i.af = alloca i64, align 8                     ; 4 uses
  %i.ag = alloca i64, align 8                     ; 4 uses
  %i.ah = alloca i64, align 8                     ; 4 uses
  %i.ai = alloca i64, align 8                     ; 4 uses
  %i.aj = alloca i64, align 8                     ; 4 uses
  %i.ak = alloca i64, align 8                     ; 4 uses
  %i.al = alloca i64, align 8                     ; 4 uses
  %22 = alloca %"class.v8::TryCatch", align 8     ; 6 uses
  %23 = alloca %"class.node::Utf8Value", align 8  ; 6 uses
  %24 = alloca %"class.node::Utf8Value", align 8  ; 6 uses
  %25 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %26 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %28 = alloca %"class.node::Utf8Value", align 8  ; 7 uses
  %29 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %30 = alloca %"class.v8::HandleScope", align 8  ; 6 uses
  %31 = alloca %"struct.v8::RegisterState", align 8 ; 10 uses
  %32 = alloca %"struct.v8::SampleInfo", align 8  ; 3 uses
  %i.am = alloca [10 x ptr], align 16             ; 3 uses
  %33 = alloca %"class.node::Utf8Value", align 8  ; 6 uses
  %34 = alloca %"class.node::Utf8Value", align 8  ; 6 uses
  %i.an = alloca i32, align 4                     ; 4 uses
  %i.ao = alloca i32, align 4                     ; 4 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %36 = alloca %"class.v8::TryCatch", align 8     ; 4 uses
  %37 = alloca %"class.v8::HandleScope", align 8  ; 7 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %39 = alloca %"class.v8::Maybe", align 8        ; 16 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.ap = alloca ptr, align 8                     ; 11 uses
  %i.aq = alloca [46 x i8], align 16              ; 6 uses
  %i.ar = alloca [46 x i8], align 16              ; 6 uses
  %i.as = alloca [18 x i8], align 16              ; 4 uses
  %i.at = alloca i32, align 4                     ; 6 uses
  %i.au = alloca i8, align 1                      ; 4 uses
  %i.av = alloca ptr, align 8                     ; 11 uses
  %i.aw = alloca i32, align 4                     ; 6 uses
  %44 = alloca %"struct.std::array.453", align 8  ; 63 uses
  %45 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 30 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.ax = alloca ptr, align 8                     ; 4 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.ay = alloca i64, align 8                     ; 4 uses
  %50 = alloca %struct.uv_utsname_s, align 1      ; 7 uses
  %i.az = alloca [65 x i8], align 16              ; 4 uses
  %i.ba = alloca i64, align 8                     ; 4 uses
  %51 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %52 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %53 = alloca %struct.tm, align 8                ; 9 uses
  %i.bb = alloca i32, align 4                     ; 4 uses
  %54 = alloca %"class.std::basic_ios", align 8   ; 12 uses
  %55 = alloca %"class.node::JSONWriter", align 8 ; 225 uses
  %56 = alloca %"struct.node::JSONWriter::Null", align 1 ; 3 uses
  %i.bc = alloca [64 x i8], align 16              ; 4 uses
  %57 = alloca %struct.uv_timeval64_t, align 8    ; 5 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.bd = alloca i64, align 8                     ; 4 uses
  %59 = alloca %"struct.node::JSONWriter::Null", align 1 ; 3 uses
  %i.be = alloca [4096 x i8], align 16            ; 4 uses
  %i.bf = alloca i64, align 8                     ; 4 uses
  %i.bg = alloca i8, align 1                      ; 4 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.bh = alloca double, align 8                  ; 4 uses
  %61 = alloca %"class.node::MutexBase", align 8  ; 9 uses
  %62 = alloca %"class.node::ConditionVariableBase", align 8 ; 6 uses
  %63 = alloca %"class.std::vector.8", align 8    ; 16 uses
  %64 = alloca %"struct.node::JSONWriter::ForeignJSON", align 8 ; 8 uses
  store i64 %2, ptr %51, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr %3, ptr %i.bi, align 8
  store i64 %4, ptr %52, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  store ptr %5, ptr %i.bj, align 8
  %i.bk = inttoptr i64 %8 to ptr                  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #26
  call void @_ZN4node18DiagnosticFilename9LocalTimeEP2tm(ptr noundef nonnull %53) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb) #26
  %i.bl = call i32 @uv_os_getpid() #26
  store i32 %i.bl, ptr %i.bb, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #26
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %54) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %54, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %54, i64 216
  store ptr null, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %54, i64 224
  store i8 0, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %54, i64 225
  store i8 0, ptr %i.bo, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %54, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i8 0, i64 32, i1 false)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %54, ptr noundef null) #26
  %i.bq = load ptr, ptr %7, align 8
  %i.br = getelementptr i8, ptr %i.bq, i64 -24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %7, i64 %i.bs
  %i.bu = call noundef nonnull align 8 dereferenceable(264) ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE7copyfmtERKS2_(ptr noundef nonnull align 8 dereferenceable(264) %54, ptr noundef nonnull align 8 dereferenceable(264) %i.bt) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #26
  %i.bv = zext i1 %9 to i8
  store ptr %7, ptr %55, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i8 %i.bv, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %55, i64 12
  store i32 0, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %55, i64 16
  store i32 0, ptr %i.by, align 8
  call void @_ZN4node10JSONWriter10json_startEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  call void @_ZN4node10JSONWriter16json_objectstartIPKcEEvT_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull @.str.33)
  call void @_ZN4node10JSONWriter13json_keyvalueIA14_ciEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(14) @.str.34, ptr noundef nonnull align 4 dereferenceable(4) @_ZL19NODE_REPORT_VERSION)
  call void @_ZN4node10JSONWriter13json_keyvalueIA6_cSt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(6) @.str.35, ptr noundef nonnull align 8 dereferenceable(16) %51)
  call void @_ZN4node10JSONWriter13json_keyvalueIA8_cSt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(8) @.str.36, ptr noundef nonnull align 8 dereferenceable(16) %52)
  %i.bz = load i64, ptr %6, align 8
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4node10JSONWriter13json_keyvalueIA9_cSt17basic_string_viewIcSt11char_traitsIcEEEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(9) @.str.37, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #26
  call void @_ZN4node10JSONWriter13json_keyvalueIA9_cNS0_4NullEEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(9) @.str.37, ptr noundef nonnull align 1 dereferenceable(1) %56)
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc) #26
  %i.cb = getelementptr inbounds nuw i8, ptr %53, i64 20
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = add nsw i32 %i.cc, 1900
  %i.ce = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = add nsw i32 %i.cf, 1
  %i.ch = getelementptr inbounds nuw i8, ptr %53, i64 12
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %53, i64 4
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = load i32, ptr %53, align 8
  %i.co = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bc, i64 noundef 64, ptr noundef nonnull @.str.38, i32 noundef %i.cd, i32 noundef %i.cg, i32 noundef %i.ci, i32 noundef %i.ck, i32 noundef %i.cm, i32 noundef %i.cn) #26 ; 0 uses
  call void @_ZN4node10JSONWriter13json_keyvalueIA14_cA64_cEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(14) @.str.39, ptr noundef nonnull align 1 dereferenceable(64) %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #26
  %i.cp = call i32 @uv_gettimeofday(ptr noundef nonnull %57) #26
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #26
  %i.cr = load i64, ptr %57, align 8
  %i.cs = mul nsw i64 %i.cr, 1000
  %i.ct = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = sdiv i32 %i.cu, 1000
  %i.cw = sext i32 %i.cv to i64
  %i.cx = add nsw i64 %i.cs, %i.cw                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.cy = call i64 @llvm.abs.i64(i64 %i.cx, i1 false) ; 5 uses
  %i.cz = icmp ult i64 %i.cy, 10
  br i1 %i.cz, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.k
  %.02229.i.i = phi i64 [ %i.dg, %bb.k ], [ %i.cy, %bb.e ] ; 5 uses
  %.02328.i.i = phi i32 [ %i.dh, %bb.k ], [ 1, %bb.e ] ; 4 uses
  %i.da = icmp ult i64 %.02229.i.i, 100
  br i1 %i.da, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.db = add i32 %.02328.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.dc = icmp ult i64 %.02229.i.i, 1000
  br i1 %i.dc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dd = add i32 %.02328.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.i:                                             ; preds = %bb.g
  %i.de = icmp ult i64 %.02229.i.i, 10000
  br i1 %i.de, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.df = add i32 %.02328.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.k:                                             ; preds = %bb.i
  %i.dg = udiv i64 %.02229.i.i, 10000
  %i.dh = add i32 %.02328.i.i, 4                  ; 2 uses
  %i.di = icmp ult i64 %.02229.i.i, 100000
  br i1 %i.di, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !44

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.df, %bb.j ], [ %i.db, %bb.f ], [ %i.dd, %bb.h ], [ 1, %bb.e ], [ %i.dh, %bb.k ] ; 2 uses
  %.lobit.i = lshr i64 %i.cx, 63                  ; 2 uses
  %i.dj = trunc nuw nsw i64 %.lobit.i to i32
  %i.dk = add i32 %.0.i.i, %i.dj                  ; 3 uses
  %i.dl = zext i32 %i.dk to i64                   ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 8 uses
  store ptr %i.dm, ptr %58, align 8, !alias.scope !41
  %i.dn = icmp ugt i32 %i.dk, 15
  br i1 %i.dn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.do = add nuw nsw i64 %i.dl, 1
  %i.dp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #28 ; 2 uses
  store ptr %i.dp, ptr %58, align 8, !alias.scope !41
  store i64 %i.dl, ptr %i.dm, align 8, !alias.scope !41
  br label %bb.o

bb.m:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  switch i32 %i.dk, label %bb.o [
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
    i32 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  store i8 45, ptr %i.dm, align 8, !alias.scope !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.dq = phi ptr [ %i.dp, %bb.l ], [ %i.dm, %bb.m ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dq, i8 45, i64 %i.dl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.dr = phi ptr [ %i.dm, %bb.m ], [ %i.dm, %bb.n ], [ %i.dq, %bb.o ]
  %i.ds = getelementptr inbounds nuw i8, ptr %58, i64 8
  store i64 %i.dl, ptr %i.ds, align 8, !alias.scope !41
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dl
  store i8 0, ptr %i.dt, align 1
  %i.du = load ptr, ptr %58, align 8, !alias.scope !41
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %.lobit.i ; 4 uses
  %i.dw = icmp ugt i64 %i.cy, 99
  br i1 %i.dw, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.dx = add i32 %.0.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.ea, %.lr.ph.i11.i ], [ %i.cy, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ek, %.lr.ph.i11.i ], [ %i.dx, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.dy = urem i64 %.020.i.i, 100
  %i.dz = shl nuw nsw i64 %i.dy, 1
  %i.ea = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.dz ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.ed = load i8, ptr %i.ec, align 1, !noalias !41
  %i.ee = zext i32 %.01819.i.i to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ee
  store i8 %i.ed, ptr %i.ef, align 1
  %i.eg = load i8, ptr %i.eb, align 2, !noalias !41
  %i.eh = add i32 %.01819.i.i, -1
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ei
  store i8 %i.eg, ptr %i.ej, align 1
  %i.ek = add i32 %.01819.i.i, -2
  %i.el = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.el, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !45

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.ea, %.lr.ph.i11.i ] ; 3 uses
  %i.em = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.em, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.en = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.eo = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !noalias !41
  %i.er = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  store i8 %i.eq, ptr %i.er, align 1
  %i.es = load i8, ptr %i.eo, align 2, !noalias !41
  br label %_ZNSt7__cxx119to_stringEl.exit

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.et = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.eu = or disjoint i8 %i.et, 48
  br label %_ZNSt7__cxx119to_stringEl.exit

_ZNSt7__cxx119to_stringEl.exit:                   ; preds = %bb.p, %bb.q
  %storemerge.i.i = phi i8 [ %i.eu, %bb.q ], [ %i.es, %bb.p ]
  store i8 %storemerge.i.i, ptr %i.dv, align 1
  call void @_ZN4node10JSONWriter13json_keyvalueIA19_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(19) @.str.40, ptr noundef nonnull align 8 dereferenceable(32) %58)
  %i.ev = load ptr, ptr %58, align 8              ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.dm
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx119to_stringEl.exit
  %i.ex = load i64, ptr %i.dm, align 8
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx119to_stringEl.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #26
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d
  call void @_ZN4node10JSONWriter13json_keyvalueIA10_ciEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(10) @.str.41, ptr noundef nonnull align 4 dereferenceable(4) %i.bb)
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd) #26
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 2320
  %i.fa = load i64, ptr %i.ez, align 8
  store i64 %i.fa, ptr %i.bd, align 8
  call void @_ZN4node10JSONWriter13json_keyvalueIA9_cmEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(9) @.str.42, ptr noundef nonnull align 8 dereferenceable(8) %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd) #26
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #26
  call void @_ZN4node10JSONWriter13json_keyvalueIA9_cNS0_4NullEEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(9) @.str.42, ptr noundef nonnull align 1 dereferenceable(1) %59)
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #26
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf) #26
  store i64 4096, ptr %i.bf, align 8
  %i.fb = call i32 @uv_cwd(ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf) #26
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @_ZN4node10JSONWriter13json_keyvalueIA4_cA4096_cEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(4) @.str.43, ptr noundef nonnull align 1 dereferenceable(4096) %i.be)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #26
  %i.fd = load ptr, ptr @_ZN4node11per_process11cli_optionsE, align 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 568
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 576
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = icmp eq ptr %i.ff, %i.fh
  br i1 %i.fi, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN4node10JSONWriter15json_arraystartIPKcEEvT_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull @.str.44)
  %i.fj = load ptr, ptr @_ZN4node11per_process11cli_optionsE, align 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 568
  %i.fl = load ptr, ptr %i.fk, align 8            ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 576
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.fo = icmp eq ptr %i.fl, %i.fn
  br i1 %i.fo, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.x
  call void @_ZN4node10JSONWriter13json_arrayendEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  br label %bb.y

.lr.ph:                                           ; preds = %bb.x, %.lr.ph
  %.sroa.082.0108 = phi ptr [ %i.fp, %.lr.ph ], [ %i.fl, %bb.x ] ; 2 uses
  call void @_ZN4node10JSONWriter12json_elementINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.082.0108)
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.082.0108, i64 32 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.fn
  br i1 %i.fq, label %._crit_edge, label %.lr.ph

bb.y:                                             ; preds = %._crit_edge, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #26
  %i.fr = getelementptr inbounds nuw i8, ptr %45, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.fr) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %45, i64 328
  store ptr null, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %45, i64 336
  store i8 0, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %45, i64 337
  store i8 0, ptr %i.fu, align 1
  %i.fv = getelementptr inbounds nuw i8, ptr %45, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fv, i8 0, i64 32, i1 false)
  %i.fw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.fw, ptr %45, align 8
  %i.fx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.fy = getelementptr i8, ptr %i.fw, i64 -24
  %i.fz = load i64, ptr %i.fy, align 8
  %i.ga = getelementptr inbounds i8, ptr %45, i64 %i.fz
  store ptr %i.fx, ptr %i.ga, align 8
  %i.gb = load ptr, ptr %45, align 8
  %i.gc = getelementptr i8, ptr %i.gb, i64 -24
  %i.gd = load i64, ptr %i.gc, align 8
  %i.ge = getelementptr inbounds i8, ptr %45, i64 %i.gd
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ge, ptr noundef null) #26
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %45, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.fr, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.gh = getelementptr inbounds nuw i8, ptr %45, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gg, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.gh) #26
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.gf, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %45, i64 72
  store i32 16, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %45, i64 80 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %45, i64 96 ; 4 uses
  store ptr %i.gk, ptr %i.gj, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %45, i64 88
  store i64 0, ptr %i.gl, align 8
  store i8 0, ptr %i.gk, align 8
  %i.gm = load ptr, ptr %45, align 8
  %i.gn = getelementptr i8, ptr %i.gm, i64 -24
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = getelementptr inbounds i8, ptr %45, i64 %i.go
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.gp, ptr noundef nonnull %i.gf) #26
  %i.gq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull @.str.53, i64 noundef 1) #26 ; 0 uses
  %i.gr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull @.str.54, i64 noundef 6) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.gs = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 4 uses
  store ptr %i.gs, ptr %46, align 8, !alias.scope !52
  %i.gt = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 0, ptr %i.gt, align 8, !alias.scope !52
  store i8 0, ptr %i.gs, align 8, !alias.scope !52
  %65 = getelementptr inbounds nuw i8, ptr %45, i64 48 ; 2 uses
  %66 = load ptr, ptr %65, align 8, !noalias !52  ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %66, null
  %i.gu = getelementptr inbounds nuw i8, ptr %45, i64 32 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !noalias !52 ; 2 uses
  %67 = icmp ugt ptr %66, %i.gv
  %.08.i.i.i.i = select i1 %67, ptr %66, ptr %i.gv ; 2 uses
  %.not4.i.i.i.a = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not4.i.i.i.a
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gw = getelementptr inbounds nuw i8, ptr %45, i64 40
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !52 ; 2 uses
  %i.gy = ptrtoint ptr %.08.i.i.i.i to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %46, i64 noundef 0, i64 noundef 0, ptr noundef %i.gx, i64 noundef %i.ha) ; 0 uses
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i

bb.aa:                                            ; preds = %bb.y
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(32) %i.gj)
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i: ; preds = %bb.aa, %bb.z
  call void @_ZN4node10JSONWriter13json_keyvalueIA14_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(14) @.str.55, ptr noundef nonnull align 8 dereferenceable(32) %46)
  %i.hc = load ptr, ptr %46, align 8              ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.gs
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.he = load i64, ptr %i.gs, align 8
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #26
  %i.hg = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 4 uses
  store ptr %i.hg, ptr %47, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 0, ptr %i.hh, align 8
  store i8 0, ptr %i.hg, align 8
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.gf, ptr noundef nonnull align 8 dereferenceable(32) %47)
  %i.hi = load ptr, ptr %47, align 8              ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.hg
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.hk = load i64, ptr %i.hg, align 8
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #26
  %i.hm = call ptr @dlsym(ptr noundef null, ptr noundef nonnull @.str.56) #26 ; 2 uses
  %.not.i = icmp eq ptr %i.hm, null
  br i1 %.not.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #26
  %i.hn = call noundef ptr %i.hm() #26, !inline_history !53
  store ptr %i.hn, ptr %i.ax, align 8
  call void @_ZN4node10JSONWriter13json_keyvalueIA20_cPKcEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(20) @.str.57, ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #26
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i
  %i.ho = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %45, i32 noundef 2) #26 ; 2 uses
  %i.hp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ho, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  %i.hq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ho, i32 noundef 39) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.hr = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 4 uses
  store ptr %i.hr, ptr %48, align 8, !alias.scope !60
  %i.hs = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i64 0, ptr %i.hs, align 8, !alias.scope !60
  store i8 0, ptr %i.hr, align 8, !alias.scope !60
  %68 = load ptr, ptr %65, align 8, !noalias !60  ; 3 uses
  %.not.i.not.i.i20.i = icmp eq ptr %68, null
  %i.ht = load ptr, ptr %i.gu, align 8, !noalias !60 ; 2 uses
  %69 = icmp ugt ptr %68, %i.ht
  %.08.i.i.i21.i = select i1 %69, ptr %68, ptr %i.ht ; 2 uses
  %.not4.i.i22.i = icmp eq ptr %.08.i.i.i21.i, null
  %.not.i.i23.i = select i1 %.not.i.not.i.i20.i, i1 true, i1 %.not4.i.i22.i
  br i1 %.not.i.i23.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hu = getelementptr inbounds nuw i8, ptr %45, i64 40
  %i.hv = load ptr, ptr %i.hu, align 8, !noalias !60 ; 2 uses
  %i.hw = ptrtoint ptr %.08.i.i.i21.i to i64
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %48, i64 noundef 0, i64 noundef 0, ptr noundef %i.hv, i64 noundef %i.hy) ; 0 uses
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit24.i

bb.ae:                                            ; preds = %bb.ac
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull align 8 dereferenceable(32) %i.gj)
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit24.i

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit24.i: ; preds = %bb.ae, %bb.ad
  call void @_ZN4node10JSONWriter13json_keyvalueIA21_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(21) @.str.59, ptr noundef nonnull align 8 dereferenceable(32) %48)
  %i.ia = load ptr, ptr %48, align 8              ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.hr
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit24.i
  %i.ic = load i64, ptr %i.hr, align 8
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit24.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #26
  %i.ie = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 4 uses
  store ptr %i.ie, ptr %49, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 0, ptr %i.if, align 8
  store i8 0, ptr %i.ie, align 8
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.gf, ptr noundef nonnull align 8 dereferenceable(32) %49)
  %i.ig = load ptr, ptr %49, align 8              ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.ie
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i
  %i.ii = load i64, ptr %i.ie, align 8
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay) #26
  store i64 64, ptr %i.ay, align 8
  call void @_ZN4node10JSONWriter13json_keyvalueIA9_cmEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(9) @.str.60, ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay) #26
  call void @_ZN4node10JSONWriter13json_keyvalueIA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(5) @.str.61, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4node11per_process8metadataE, i64 1056))
  call void @_ZN4node10JSONWriter13json_keyvalueIA9_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(9) @.str.62, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4node11per_process8metadataE, i64 1088))
  call void @_ZN4node10JSONWriter16json_objectstartIPKcEEvT_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull @.str.70)
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #26
  call void @_ZNK4node8Metadata8Versions5pairsEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::array.453") align 8 %44, ptr noundef nonnull align 8 dereferenceable(960) @_ZN4node11per_process8metadataE) #26
  %i.ik = getelementptr inbounds nuw i8, ptr %44, i64 16
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 8 dereferenceable(16) %i.ik)
  %.0.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %44, i64 32
  %i.il = getelementptr inbounds nuw i8, ptr %44, i64 48
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.il)
  %.0.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %44, i64 64
  %i.im = getelementptr inbounds nuw i8, ptr %44, i64 80
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.im)
  %.0.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %44, i64 96
  %i.in = getelementptr inbounds nuw i8, ptr %44, i64 112
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.3.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.in)
  %.0.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %44, i64 128
  %i.io = getelementptr inbounds nuw i8, ptr %44, i64 144
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.io)
  %.0.ptr.5.i.i = getelementptr inbounds nuw i8, ptr %44, i64 160
  %i.ip = getelementptr inbounds nuw i8, ptr %44, i64 176
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ip)
  %.0.ptr.6.i.i = getelementptr inbounds nuw i8, ptr %44, i64 192
  %i.iq = getelementptr inbounds nuw i8, ptr %44, i64 208
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.iq)
  %.0.ptr.7.i.i = getelementptr inbounds nuw i8, ptr %44, i64 224
  %i.ir = getelementptr inbounds nuw i8, ptr %44, i64 240
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ir)
  %.0.ptr.8.i.i = getelementptr inbounds nuw i8, ptr %44, i64 256
  %i.is = getelementptr inbounds nuw i8, ptr %44, i64 272
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.8.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.is)
  %.0.ptr.9.i.i = getelementptr inbounds nuw i8, ptr %44, i64 288
  %i.it = getelementptr inbounds nuw i8, ptr %44, i64 304
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.9.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.it)
  %.0.ptr.10.i.i = getelementptr inbounds nuw i8, ptr %44, i64 320
  %i.iu = getelementptr inbounds nuw i8, ptr %44, i64 336
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.10.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.iu)
  %.0.ptr.11.i.i = getelementptr inbounds nuw i8, ptr %44, i64 352
  %i.iv = getelementptr inbounds nuw i8, ptr %44, i64 368
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.11.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.iv)
  %.0.ptr.12.i.i = getelementptr inbounds nuw i8, ptr %44, i64 384
  %i.iw = getelementptr inbounds nuw i8, ptr %44, i64 400
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.12.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.iw)
  %.0.ptr.13.i.i = getelementptr inbounds nuw i8, ptr %44, i64 416
  %i.ix = getelementptr inbounds nuw i8, ptr %44, i64 432
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.13.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ix)
  %.0.ptr.14.i.i = getelementptr inbounds nuw i8, ptr %44, i64 448
  %i.iy = getelementptr inbounds nuw i8, ptr %44, i64 464
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.14.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.iy)
  %.0.ptr.15.i.i = getelementptr inbounds nuw i8, ptr %44, i64 480
  %i.iz = getelementptr inbounds nuw i8, ptr %44, i64 496
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.15.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.iz)
  %.0.ptr.16.i.i = getelementptr inbounds nuw i8, ptr %44, i64 512
  %i.ja = getelementptr inbounds nuw i8, ptr %44, i64 528
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.16.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ja)
  %.0.ptr.17.i.i = getelementptr inbounds nuw i8, ptr %44, i64 544
  %i.jb = getelementptr inbounds nuw i8, ptr %44, i64 560
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.17.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.jb)
  %.0.ptr.18.i.i = getelementptr inbounds nuw i8, ptr %44, i64 576
  %i.jc = getelementptr inbounds nuw i8, ptr %44, i64 592
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.18.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.jc)
  %.0.ptr.19.i.i = getelementptr inbounds nuw i8, ptr %44, i64 608
  %i.jd = getelementptr inbounds nuw i8, ptr %44, i64 624
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.19.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.jd)
  %.0.ptr.20.i.i = getelementptr inbounds nuw i8, ptr %44, i64 640
  %i.je = getelementptr inbounds nuw i8, ptr %44, i64 656
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.20.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.je)
  %.0.ptr.21.i.i = getelementptr inbounds nuw i8, ptr %44, i64 672
  %i.jf = getelementptr inbounds nuw i8, ptr %44, i64 688
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.21.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.jf)
  %.0.ptr.22.i.i = getelementptr inbounds nuw i8, ptr %44, i64 704
  %i.jg = getelementptr inbounds nuw i8, ptr %44, i64 720
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.22.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.jg)
  %.0.ptr.23.i.i = getelementptr inbounds nuw i8, ptr %44, i64 736
  %i.jh = getelementptr inbounds nuw i8, ptr %44, i64 752
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.23.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.jh)
  %.0.ptr.24.i.i = getelementptr inbounds nuw i8, ptr %44, i64 768
  %i.ji = getelementptr inbounds nuw i8, ptr %44, i64 784
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.24.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ji)
  %.0.ptr.25.i.i = getelementptr inbounds nuw i8, ptr %44, i64 800
  %i.jj = getelementptr inbounds nuw i8, ptr %44, i64 816
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.25.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.jj)
  %.0.ptr.26.i.i = getelementptr inbounds nuw i8, ptr %44, i64 832
  %i.jk = getelementptr inbounds nuw i8, ptr %44, i64 848
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.26.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.jk)
  %.0.ptr.27.i.i = getelementptr inbounds nuw i8, ptr %44, i64 864
  %i.jl = getelementptr inbounds nuw i8, ptr %44, i64 880
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.27.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.jl)
  %.0.ptr.28.i.i = getelementptr inbounds nuw i8, ptr %44, i64 896
  %i.jm = getelementptr inbounds nuw i8, ptr %44, i64 912
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.28.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.jm)
  %.0.ptr.29.i.i = getelementptr inbounds nuw i8, ptr %44, i64 928
  %i.jn = getelementptr inbounds nuw i8, ptr %44, i64 944
  call void @_ZN4node10JSONWriter13json_keyvalueISt17basic_string_viewIcSt11char_traitsIcEES5_EEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 8 dereferenceable(16) %.0.ptr.29.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.jn)
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #26
  call void @_ZN4node10JSONWriter14json_objectendEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  call void @_ZN4node10JSONWriter16json_objectstartIPKcEEvT_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull @.str.71)
  call void @_ZN4node10JSONWriter13json_keyvalueIA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(5) @.str.72, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4node11per_process8metadataE, i64 960))
  call void @_ZN4node10JSONWriter13json_keyvalueIA11_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(11) @.str.73, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4node11per_process8metadataE, i64 1024))
  call void @_ZN4node10JSONWriter13json_keyvalueIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(10) @.str.74, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4node11per_process8metadataE, i64 992))
  call void @_ZN4node10JSONWriter14json_objectendEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #26
  %i.jo = call i32 @uv_os_uname(ptr noundef nonnull %50) #26
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.i
  call void @_ZN4node10JSONWriter13json_keyvalueIA7_cA256_cEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(7) @.str.63, ptr noundef nonnull align 1 dereferenceable(256) %50)
  %i.jq = getelementptr inbounds nuw i8, ptr %50, i64 256
  call void @_ZN4node10JSONWriter13json_keyvalueIA10_cA256_cEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(10) @.str.64, ptr noundef nonnull align 1 dereferenceable(256) %i.jq)
  %i.jr = getelementptr inbounds nuw i8, ptr %50, i64 512
  call void @_ZN4node10JSONWriter13json_keyvalueIA10_cA256_cEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(10) @.str.65, ptr noundef nonnull align 1 dereferenceable(256) %i.jr)
  %i.js = getelementptr inbounds nuw i8, ptr %50, i64 768
  call void @_ZN4node10JSONWriter13json_keyvalueIA10_cA256_cEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(10) @.str.66, ptr noundef nonnull align 1 dereferenceable(256) %i.js)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #26
  %i.jt = call i32 @uv_cpu_info(ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw) #26
  %i.ju = icmp eq i32 %i.jt, 0
  br i1 %i.ju, label %bb.ah, label %_ZN4node6reportL12PrintCpuInfoEPNS_10JSONWriterE.exit.i

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN4node10JSONWriter15json_arraystartIPKcEEvT_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull @.str.75)
  %i.jv = load i32, ptr %i.aw, align 4
  %i.jw = icmp sgt i32 %i.jv, 0
  br i1 %i.jw, label %.lr.ph.i.i30, label %._crit_edge.i.i29

._crit_edge.i.i29:                                ; preds = %.lr.ph.i.i30, %bb.ah
  call void @_ZN4node10JSONWriter13json_arrayendEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  %i.jx = load ptr, ptr %i.av, align 8
  %i.jy = load i32, ptr %i.aw, align 4
  call void @uv_free_cpu_info(ptr noundef %i.jx, i32 noundef %i.jy) #26
  br label %_ZN4node6reportL12PrintCpuInfoEPNS_10JSONWriterE.exit.i

.lr.ph.i.i30:                                     ; preds = %bb.ah, %.lr.ph.i.i30
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i30 ], [ 0, %bb.ah ] ; 8 uses
  call void @_ZN4node10JSONWriter10json_startEv(ptr noundef nonnull align 8 dereferenceable(20) %55)
  %i.jz = load ptr, ptr %i.av, align 8
  %i.ka = getelementptr inbounds nuw [56 x i8], ptr %i.jz, i64 %indvars.iv.i.i
  call void @_ZN4node10JSONWriter13json_keyvalueIA6_cPcEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(6) @.str.76, ptr noundef nonnull align 8 dereferenceable(8) %i.ka)
  %i.kb = load ptr, ptr %i.av, align 8
  %i.kc = getelementptr inbounds nuw [56 x i8], ptr %i.kb, i64 %indvars.iv.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  call void @_ZN4node10JSONWriter13json_keyvalueIA6_ciEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(6) @.str.77, ptr noundef nonnull align 4 dereferenceable(4) %i.kd)
  %i.ke = load ptr, ptr %i.av, align 8
  %i.kf = getelementptr inbounds nuw [56 x i8], ptr %i.ke, i64 %indvars.iv.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  call void @_ZN4node10JSONWriter13json_keyvalueIA5_cmEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %55, ptr noundef nonnull align 1 dereferenceable(5) @.str.78, ptr noundef nonnull align 8 dereferenceable(8) %i.kg)
  %i.kh = load ptr, ptr %i.av, align 8
end_hunk_0
begin_hunk_1_@_ZN4node10JSONWriter13json_keyvalueIA8_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_RKT0_:bb.a
_ZN4node10JSONWriter7advanceEv.exit:              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i4, %bb.e, %_ZN4node10JSONWriter14write_new_lineEv.exit, %.preheader.i
  %i.at = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  call void @_ZN4node10JSONWriter12write_stringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 %i.at, ptr nonnull %1)
  %i.au = load ptr, ptr %0, align 8, !nonnull !28, !align !236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 58, ptr %i.b, align 1
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8
  %.not.i5 = icmp eq i64 %i.ba, 0
  br i1 %.not.i5, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4node10JSONWriter7advanceEv.exit
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %i.b, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7

bb.l:                                             ; preds = %_ZN4node10JSONWriter7advanceEv.exit
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i8 noundef signext 58) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bd = load i8, ptr %i.r, align 8, !range !26, !noundef !28
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZN4node10JSONWriter15write_one_spaceEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7
  %i.bf = load ptr, ptr %0, align 8, !nonnull !28, !align !236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i64, ptr %i.bk, align 8
  %.not.i.i8 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i8, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull %i.a, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i9

bb.o:                                             ; preds = %bb.m
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, i8 noundef signext 32) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i9

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i9: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN4node10JSONWriter15write_one_spaceEv.exit

_ZN4node10JSONWriter15write_one_spaceEv.exit:     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i9
  %i.bo = load ptr, ptr %2, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load i64, ptr %i.bp, align 8
  call void @_ZN4node10JSONWriter12write_stringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 %i.bq, ptr %i.bo)
  store i32 1, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node6report16ValueToHexStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 344
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 352
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 353
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.f, ptr %2, align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 -24      ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8
  %i.l = load ptr, ptr %2, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.o, ptr noundef null) #26
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 14 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.p, i64 %i.x
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef null) #26
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.z, ptr %2, align 8
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %2, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.p, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #26
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 24, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  store ptr %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %i.aj, align 8
  %i.al = load ptr, ptr %2, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, ptr noundef nonnull %i.ae) #26
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.147, i64 noundef 2) #26 ; 0 uses
  %i.aq = load ptr, ptr %i.p, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %i.p, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 225 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !range !26, !noundef !28
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 240
  %i.ay = load ptr, ptr %i.ax, align 8            ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load i8, ptr %i.az, align 8
  %.not.i1.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i1.i.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ay) #26
  %i.bb = load ptr, ptr %i.ay, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef signext i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(570) %i.ay, i8 noundef signext 32) #26, !inline_history !238 ; 0 uses
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %bb.d, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  store i8 1, ptr %i.au, align 1
  br label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit: ; preds = %bb.a, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 224
  store i8 48, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.p, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.p, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 16, ptr %i.bk, align 8
  %i.bl = load ptr, ptr %i.p, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 -24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %i.p, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = and i32 %i.bq, -75
  %i.bs = or disjoint i32 %i.br, 8
  store i32 %i.bs, ptr %i.bp, align 8
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef %1) #26 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bu, ptr %0, align 8, !alias.scope !245
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bv, align 8, !alias.scope !245
  store i8 0, ptr %i.bu, align 8, !alias.scope !245
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !noalias !245   ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !245 ; 2 uses
  %5 = icmp ugt ptr %4, %i.bx
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.bx    ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !245 ; 2 uses
  %i.ca = ptrtoint ptr %.08.i.i.i to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bz, i64 noundef %i.cc) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.f
  %i.ce = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ce, ptr %2, align 8
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.cg = getelementptr i8, ptr %i.ce, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %2, i64 %i.ch
  store ptr %i.cf, ptr %i.ci, align 8
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.cj, ptr %i.p, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8
  %i.ck = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.aj
  br i1 %i.cl, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cm = load i64, ptr %i.aj, align 8
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #29
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #26
  store ptr %i.f, ptr %2, align 8
  %i.co = load i64, ptr %i.h, align 8
  %i.cp = getelementptr inbounds i8, ptr %2, i64 %i.co
  store ptr %i.g, ptr %i.cp, align 8
  store i64 0, ptr %i.k, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

declare i64 @uv_metrics_idle_time(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node10JSONWriter13json_keyvalueIA20_cdEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 1 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !nonnull !28, !align !236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 44, ptr %i.e, align 1
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.e, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef signext 44) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.s = load i8, ptr %i.r, align 8, !range !26, !noundef !28
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN4node10JSONWriter7advanceEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8, !nonnull !28, !align !236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %i.d, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4node10JSONWriter14write_new_lineEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef signext 10) #26 ; 0 uses
  br label %_ZN4node10JSONWriter14write_new_lineEv.exit

_ZN4node10JSONWriter14write_new_lineEv.exit:      ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i8, ptr %i.r, align 8, !range !26
  %i.ad = trunc nuw i8 %.pre to i1
  br i1 %i.ad, label %_ZN4node10JSONWriter7advanceEv.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN4node10JSONWriter14write_new_lineEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i, label %_ZN4node10JSONWriter7advanceEv.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i4
  %.02.i = phi i32 [ %i.aq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i4 ], [ 0, %.preheader.i ]
  %i.ah = load ptr, ptr %0, align 8, !nonnull !28, !align !236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 32, ptr %i.c, align 1
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8
  %.not.i.i3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull %i.c, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i4

bb.j:                                             ; preds = %.lr.ph.i
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i8 noundef signext 32) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i4

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i4: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aq = add nuw nsw i32 %.02.i, 1               ; 2 uses
  %i.ar = load i32, ptr %i.ae, align 4
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph.i, label %_ZN4node10JSONWriter7advanceEv.exit, !llvm.loop !237

_ZN4node10JSONWriter7advanceEv.exit:              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i4, %bb.e, %_ZN4node10JSONWriter14write_new_lineEv.exit, %.preheader.i
  %i.at = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  call void @_ZN4node10JSONWriter12write_stringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 %i.at, ptr nonnull %1)
  %i.au = load ptr, ptr %0, align 8, !nonnull !28, !align !236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 58, ptr %i.b, align 1
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8
  %.not.i5 = icmp eq i64 %i.ba, 0
  br i1 %.not.i5, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4node10JSONWriter7advanceEv.exit
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %i.b, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7

bb.l:                                             ; preds = %_ZN4node10JSONWriter7advanceEv.exit
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i8 noundef signext 58) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bd = load i8, ptr %i.r, align 8, !range !26, !noundef !28
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZN4node10JSONWriter15write_one_spaceEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7
  %i.bf = load ptr, ptr %0, align 8, !nonnull !28, !align !236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i64, ptr %i.bk, align 8
  %.not.i.i8 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i8, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull %i.a, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i9

end_hunk_1
begin_hunk_2_@_ZN4node10JSONWriter13json_keyvalueIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_RKT0_:bb.a
_ZN4node10JSONWriter7advanceEv.exit:              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i4, %bb.e, %_ZN4node10JSONWriter14write_new_lineEv.exit, %.preheader.i
  %i.at = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  call void @_ZN4node10JSONWriter12write_stringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 %i.at, ptr nonnull %1)
  %i.au = load ptr, ptr %0, align 8, !nonnull !28, !align !236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 58, ptr %i.b, align 1
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8
  %.not.i5 = icmp eq i64 %i.ba, 0
  br i1 %.not.i5, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4node10JSONWriter7advanceEv.exit
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %i.b, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7

bb.l:                                             ; preds = %_ZN4node10JSONWriter7advanceEv.exit
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i8 noundef signext 58) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bd = load i8, ptr %i.r, align 8, !range !26, !noundef !28
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZN4node10JSONWriter15write_one_spaceEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7
  %i.bf = load ptr, ptr %0, align 8, !nonnull !28, !align !236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i64, ptr %i.bk, align 8
  %.not.i.i8 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i8, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull %i.a, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i9

bb.o:                                             ; preds = %bb.m
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, i8 noundef signext 32) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i9

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i9: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN4node10JSONWriter15write_one_spaceEv.exit

_ZN4node10JSONWriter15write_one_spaceEv.exit:     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i9
  %i.bo = load ptr, ptr %2, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load i64, ptr %i.bp, align 8
  call void @_ZN4node10JSONWriter12write_stringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 %i.bq, ptr %i.bo)
  store i32 1, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node6report16ValueToHexStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 344
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 352
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 353
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.f, ptr %2, align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 -24      ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8
  %i.l = load ptr, ptr %2, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.o, ptr noundef null) #26
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 14 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.p, i64 %i.x
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef null) #26
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.z, ptr %2, align 8
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %2, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.a, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.p, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #26
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 24, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  store ptr %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %i.aj, align 8
  %i.al = load ptr, ptr %2, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, ptr noundef nonnull %i.ae) #26
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.147, i64 noundef 2) #26 ; 0 uses
  %i.aq = load ptr, ptr %i.p, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %i.p, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 225 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !range !26, !noundef !28
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 240
  %i.ay = load ptr, ptr %i.ax, align 8            ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.ba = load i8, ptr %i.az, align 8
  %.not.i1.i.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i1.i.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ay) #26
  %i.bb = load ptr, ptr %i.ay, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef signext i8 %i.bd(ptr noundef nonnull align 8 dereferenceable(570) %i.ay, i8 noundef signext 32) #26, !inline_history !238 ; 0 uses
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %bb.d, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  store i8 1, ptr %i.au, align 1
  br label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit: ; preds = %bb.a, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 224
  store i8 48, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.p, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.p, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 16, ptr %i.bk, align 8
  %i.bl = load ptr, ptr %i.p, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 -24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %i.p, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = and i32 %i.bq, -75
  %i.bs = or disjoint i32 %i.br, 8
  store i32 %i.bs, ptr %i.bp, align 8
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef %1) #26 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bu, ptr %0, align 8, !alias.scope !309
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bv, align 8, !alias.scope !309
  store i8 0, ptr %i.bu, align 8, !alias.scope !309
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 64
  %4 = load ptr, ptr %3, align 8, !noalias !309   ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %4, null
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !309 ; 2 uses
  %5 = icmp ugt ptr %4, %i.bx
  %.08.i.i.i = select i1 %5, ptr %4, ptr %i.bx    ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !309 ; 2 uses
  %i.ca = ptrtoint ptr %.08.i.i.i to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.bz, i64 noundef %i.cc) ; 0 uses
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.f:                                             ; preds = %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ai)
  br label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.f
  %i.ce = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ce, ptr %2, align 8
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.cg = getelementptr i8, ptr %i.ce, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr %2, i64 %i.ch
  store ptr %i.cf, ptr %i.ci, align 8
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.cj, ptr %i.p, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8
  %i.ck = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.aj
  br i1 %i.cl, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cm = load i64, ptr %i.aj, align 8
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #29
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #26
  store ptr %i.f, ptr %2, align 8
  %i.co = load i64, ptr %i.h, align 8
  %i.cp = getelementptr inbounds i8, ptr %2, i64 %i.co
  store ptr %i.g, ptr %i.cp, align 8
  store i64 0, ptr %i.k, align 8
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node10JSONWriter13json_keyvalueIA7_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 1 dereferenceable(7) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !nonnull !28, !align !236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 44, ptr %i.e, align 1
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.e, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef signext 44) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.s = load i8, ptr %i.r, align 8, !range !26, !noundef !28
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN4node10JSONWriter7advanceEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8, !nonnull !28, !align !236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 1
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %i.d, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4node10JSONWriter14write_new_lineEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef signext 10) #26 ; 0 uses
  br label %_ZN4node10JSONWriter14write_new_lineEv.exit

_ZN4node10JSONWriter14write_new_lineEv.exit:      ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pre = load i8, ptr %i.r, align 8, !range !26
  %i.ad = trunc nuw i8 %.pre to i1
  br i1 %i.ad, label %_ZN4node10JSONWriter7advanceEv.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN4node10JSONWriter14write_new_lineEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i, label %_ZN4node10JSONWriter7advanceEv.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i4
  %.02.i = phi i32 [ %i.aq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i4 ], [ 0, %.preheader.i ]
  %i.ah = load ptr, ptr %0, align 8, !nonnull !28, !align !236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 32, ptr %i.c, align 1
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8
  %.not.i.i3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull %i.c, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i4

bb.j:                                             ; preds = %.lr.ph.i
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i8 noundef signext 32) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i4

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i4: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aq = add nuw nsw i32 %.02.i, 1               ; 2 uses
  %i.ar = load i32, ptr %i.ae, align 4
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph.i, label %_ZN4node10JSONWriter7advanceEv.exit, !llvm.loop !237

_ZN4node10JSONWriter7advanceEv.exit:              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i4, %bb.e, %_ZN4node10JSONWriter14write_new_lineEv.exit, %.preheader.i
  %i.at = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  call void @_ZN4node10JSONWriter12write_stringESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 %i.at, ptr nonnull %1)
  %i.au = load ptr, ptr %0, align 8, !nonnull !28, !align !236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 58, ptr %i.b, align 1
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8
  %.not.i5 = icmp eq i64 %i.ba, 0
  br i1 %.not.i5, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4node10JSONWriter7advanceEv.exit
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %i.b, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7

bb.l:                                             ; preds = %_ZN4node10JSONWriter7advanceEv.exit
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i8 noundef signext 58) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bd = load i8, ptr %i.r, align 8, !range !26, !noundef !28
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZN4node10JSONWriter15write_one_spaceEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit7
  %i.bf = load ptr, ptr %0, align 8, !nonnull !28, !align !236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load i64, ptr %i.bk, align 8
  %.not.i.i8 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i8, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull %i.a, i64 noundef 1) #26 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i9

bb.o:                                             ; preds = %bb.m
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, i8 noundef signext 32) #26 ; 0 uses
end_hunk_2
begin_hunk_3_@"_ZN4node13CallbackQueueIvJPNS_11EnvironmentEEE12CallbackImplIZZNS_6reportL15WriteNodeReportEPN2v87IsolateES2_St17basic_string_viewIcSt11char_traitsIcEESC_SC_RSoNS6_5LocalINS6_5ValueEEEbbbENK3$_0clEPNS_6worker6WorkerEEUlS2_E_E4CallES2_":bb.a
  unreachable

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i2.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i2
  %i.bg = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i2.thread ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i2 ]
  %i.bh = phi i64 [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i2.thread ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i2 ]
  %i.bi = shl nuw i64 %i.bg, 1                    ; 2 uses
  %i.bj = icmp ult i64 %i.at, %i.bi
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.bi, i64 9223372036854775807)
  %.0.i = select i1 %i.bj, i64 %spec.store.select.i.i, i64 %i.at ; 2 uses
  %i.bk = add nuw i64 %.0.i, 1                    ; 2 uses
  %i.bl = icmp slt i64 %i.bk, 0
  br i1 %i.bl, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !5

bb.s:                                             ; preds = %bb.r
  call void @_ZSt17__throw_bad_allocv() #27, !noalias !313
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.r
  %i.bm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #28, !noalias !313 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.bm, ptr noundef nonnull align 1 dereferenceable(25) @.str.173, i64 25, i1 false), !noalias !313
  %.not25.i = icmp eq i64 %i.ar, 0
  br i1 %.not25.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 25 ; 2 uses
  %cond29.i = icmp eq i64 %i.ar, 1
  br i1 %cond29.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bo = load i8, ptr %i.au, align 1, !noalias !313
  store i8 %i.bo, ptr %i.bn, align 1, !noalias !313
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr align 1 %i.au, i64 %i.ar, i1 false), !noalias !313
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i: ; preds = %bb.v, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.bp = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.bp), !noalias !313
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.bq = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.bq) #29, !noalias !313
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.bm, ptr %5, align 8, !noalias !313
  store i64 %.0.i, ptr %i.af, align 8, !noalias !313
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit
  store i64 %i.at, ptr %i.ap, align 8, !noalias !313
  %i.br = load ptr, ptr %5, align 8, !noalias !313
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.at
  store i8 0, ptr %i.bs, align 1, !noalias !313
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.bt, ptr %4, align 8, !alias.scope !313
  %i.bu = load ptr, ptr %5, align 8               ; 5 uses
  %i.bv = icmp eq ptr %i.bu, %i.af
  br i1 %i.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.thread, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit
  %i.bw = load i64, ptr %i.ap, align 8            ; 4 uses
  %i.bx = icmp ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.bx)
  %i.by = add nuw nsw i64 %i.bw, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bt, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.by, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.bw, ptr %i.bz, align 8, !alias.scope !313
  store ptr %i.af, ptr %5, align 8
  store i64 0, ptr %i.ap, align 8
  store i8 0, ptr %i.af, align 8
  br label %bb.x

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm.exit
  store ptr %i.bu, ptr %4, align 8, !alias.scope !313
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.cb = load <2 x i64>, ptr %i.ap, align 8
  %.pre.i.i = load i64, ptr %i.ap, align 8        ; 4 uses
  store <2 x i64> %i.cb, ptr %i.ca, align 8, !alias.scope !313
  store ptr %i.af, ptr %5, align 8
  store i64 0, ptr %i.ap, align 8
  store i8 0, ptr %i.af, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.cc = icmp eq i64 %.pre.i.i, 9223372036854775807
  br i1 %i.cc, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.w:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #27, !noalias !316, !inline_history !312
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit.i
  %.pre4 = add nsw i64 %.pre.i.i, 1               ; 2 uses
  %i.cd = icmp eq ptr %i.bu, %i.bt
  br i1 %i.cd, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ce = phi i64 [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.thread ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i ] ; 2 uses
  %i.cf = phi ptr [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.thread ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i ]
  %i.cg = phi ptr [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.thread ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i ]
  %.pre-phi30.a = phi i64 [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.thread ], [ %.pre4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i ]
  %i.ch = icmp ult i64 %i.ce, 16
  call void @llvm.assume(i1 %i.ch)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ci = phi i1 [ true, %bb.x ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i ]
  %i.cj = phi i64 [ %i.ce, %bb.x ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i ] ; 2 uses
  %i.ck = phi ptr [ %i.cf, %bb.x ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i ] ; 4 uses
  %i.cl = phi ptr [ %i.cg, %bb.x ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i ]
  %.pre-phi29 = phi i64 [ %.pre-phi30.a, %bb.x ], [ %.pre4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i ] ; 3 uses
  %i.cm = load i64, ptr %i.bt, align 8, !noalias !316
  %i.cn = select i1 %i.ci, i64 15, i64 %i.cm
  %.not.i.i.i.i = icmp ugt i64 %.pre-phi29, %i.cn
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj
  store i8 93, ptr %i.co, align 1, !noalias !316
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.cj, i64 noundef 0, ptr noundef nonnull @.str.174, i64 noundef 1), !noalias !316, !inline_history !312
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i: ; preds = %bb.z, %bb.y
  store i64 %.pre-phi29, ptr %i.ck, align 8, !noalias !316
  %i.cp = load ptr, ptr %4, align 8, !noalias !316
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.pre-phi29
  store i8 0, ptr %i.cq, align 1, !noalias !316
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.cr, ptr %3, align 8, !alias.scope !316
  %i.cs = load ptr, ptr %4, align 8, !noalias !316 ; 3 uses
  %i.ct = icmp eq ptr %i.cs, %i.bt
  br i1 %i.ct, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  %i.cu = load i64, ptr %i.ck, align 8, !noalias !316 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 16
  call void @llvm.assume(i1 %i.cv)
  %i.cw = add nuw nsw i64 %i.cu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cr, ptr noundef nonnull align 8 dereferenceable(1) %i.bt, i64 %i.cw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i
  store ptr %i.cs, ptr %3, align 8, !alias.scope !316
  %i.cx = load i64, ptr %i.bt, align 8, !noalias !316
  store i64 %i.cx, ptr %i.cr, align 8, !alias.scope !316
  %.pre.i5.i = load i64, ptr %i.ck, align 8, !noalias !316
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i, %bb.aa
  %i.cy = phi ptr [ %i.cr, %bb.aa ], [ %i.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i ]
  %i.cz = phi i64 [ %i.cu, %bb.aa ], [ %.pre.i5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.cz, ptr %i.da, align 8, !alias.scope !316
  store ptr %i.bt, ptr %4, align 8, !noalias !316
  store i64 0, ptr %i.ck, align 8, !noalias !316
  store i8 0, ptr %i.bt, align 8, !noalias !316
  %i.db = load ptr, ptr %5, align 8               ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.af
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.dd = load i64, ptr %i.af, align 8
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #29, !inline_history !312
  %.pre.i = load ptr, ptr %3, align 8
  %.pre20.i = load i64, ptr %i.da, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  %i.df = phi i64 [ %.pre20.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  %i.dg = phi ptr [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !28, !align !236 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.di, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @_ZN4node13GetNodeReportEPNS_11EnvironmentESt17basic_string_viewIcSt11char_traitsIcEES5_N2v85LocalINS6_5ValueEEERSo(ptr noundef readonly %1, i64 %i.df, ptr %i.dg, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr null, ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !312
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !28, !align !236 ; 2 uses
  call void @uv_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.dk) #26, !inline_history !312
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dm = load ptr, ptr %i.dl, align 8, !nonnull !28, !align !236 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.dn, ptr %6, align 8, !alias.scope !325
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.do, align 8, !alias.scope !325
  store i8 0, ptr %i.dn, align 8, !alias.scope !325
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %8 = load ptr, ptr %7, align 8, !noalias !325   ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %8, null
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !325 ; 2 uses
  %9 = icmp ugt ptr %8, %i.dq
  %.08.i.i.i.i = select i1 %9, ptr %8, ptr %i.dq  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not4.i.i.i
  br i1 %.not.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !325 ; 2 uses
  %i.dt = ptrtoint ptr %.08.i.i.i.i to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.ds, i64 noundef %i.dv), !inline_history !312 ; 0 uses
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.t), !inline_history !312
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i: ; preds = %bb.ac, %bb.ab
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8            ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  %.not.i.i = icmp eq ptr %i.dy, %i.ea
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 3 uses
  store ptr %i.eb, ptr %i.dy, align 8
  %i.ec = load ptr, ptr %6, align 8               ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.dn
  br i1 %i.ed, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.ee = load i64, ptr %i.do, align 8            ; 3 uses
  %i.ef = icmp ult i64 %i.ee, 16
  call void @llvm.assume(i1 %i.ef)
  %i.eg = add nuw nsw i64 %i.ee, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eb, ptr noundef nonnull align 8 dereferenceable(1) %i.dn, i64 %i.eg, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ad
  store ptr %i.ec, ptr %i.dy, align 8
  %i.eh = load i64, ptr %i.dn, align 8
  store i64 %i.eh, ptr %i.eb, align 8
  %.pre21.i = load i64, ptr %i.do, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.ae
  %i.ei = phi i64 [ %.pre21.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ee, %bb.ae ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i64 %i.ei, ptr %i.ej, align 8
  %i.ek = load ptr, ptr %i.dx, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  store ptr %i.el, ptr %i.dx, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr %i.dy, ptr noundef nonnull align 8 dereferenceable(32) %6), !inline_history !312
  %.pre22.i = load ptr, ptr %6, align 8           ; 2 uses
  %i.em = icmp eq ptr %.pre22.i, %i.dn
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.i
  %i.en = load i64, ptr %i.dn, align 8
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %.pre22.i, i64 noundef %i.eo) #29, !inline_history !312
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eq = load ptr, ptr %i.ep, align 8, !nonnull !28, !align !236
  call void @uv_cond_signal(ptr noundef nonnull align 8 dereferenceable(48) %i.eq) #26, !inline_history !312
  call void @uv_mutex_unlock(ptr noundef nonnull %i.dk) #26, !inline_history !312
  %i.er = load ptr, ptr %3, align 8               ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.cr
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i
  %i.et = load i64, ptr %i.cr, align 8
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #29, !inline_history !312
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ev = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ev, ptr %2, align 8
  %i.ew = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ex = getelementptr i8, ptr %i.ev, i64 -24
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds i8, ptr %2, i64 %i.ey
  store ptr %i.ew, ptr %i.ez, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.fa = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.u
  br i1 %i.fb, label %"_ZZZN4node6reportL15WriteNodeReportEPN2v87IsolateEPNS_11EnvironmentESt17basic_string_viewIcSt11char_traitsIcEES9_S9_RSoNS1_5LocalINS1_5ValueEEEbbbENK3$_0clEPNS_6worker6WorkerEENKUlS5_E_clES5_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i
  %i.fc = load i64, ptr %i.u, align 8
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #29, !inline_history !312
  br label %"_ZZZN4node6reportL15WriteNodeReportEPN2v87IsolateEPNS_11EnvironmentESt17basic_string_viewIcSt11char_traitsIcEES9_S9_RSoNS1_5LocalINS1_5ValueEEEbbbENK3$_0clEPNS_6worker6WorkerEENKUlS5_E_clES5_.exit"

"_ZZZN4node6reportL15WriteNodeReportEPN2v87IsolateEPNS_11EnvironmentESt17basic_string_viewIcSt11char_traitsIcEES9_S9_RSoNS1_5LocalINS1_5ValueEEEbbbENK3$_0clEPNS_6worker6WorkerEENKUlS5_E_clES5_.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #26, !inline_history !312
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.b) #26, !inline_history !312
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node13CallbackQueueIvJPNS_11EnvironmentEEE8CallbackD0Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #27
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #21

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #27
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8
  %i.t = load ptr, ptr %2, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  store ptr %i.t, ptr %i.r, align 8
  %i.aa = load i64, ptr %i.u, align 8
  store i64 %i.aa, ptr %i.s, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ab = phi i64 [ %i.x, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ad, align 8
  store ptr %i.u, ptr %2, align 8
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %i.u, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !alias.scope !326, !noalias !329
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !329, !noalias !326 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
end_hunk_3
