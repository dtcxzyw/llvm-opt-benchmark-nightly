Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/lto-unix.cc.X86_64?download=true
inline.NumInlined: 2846
inline.NumDeleted: 1528
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN4moldL30register_all_symbols_read_hookINS_6X86_64EEENS_12PluginStatusEPFS2_vE:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 16, ptr %i.r, align 8, !tbaa !194
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 0, ptr %i.u, align 8, !tbaa !22
  store i8 0, ptr %i.t, align 8, !tbaa !29
  %i.v = load ptr, ptr %1, align 8, !tbaa !27
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %1, i64 %i.x
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef nonnull %i.o) #20
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull @.str.37, i64 noundef 31) #20 ; 0 uses
  %i.aa = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aa, ptr %1, align 8, !tbaa !27
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ac = getelementptr i8, ptr %i.aa, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %1, i64 %i.ad
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8, !tbaa !27
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !171 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.t
  br i1 %i.ag, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.ah = load i64, ptr %i.t, align 8, !tbaa !29
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8, !tbaa !27
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #20
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  store ptr %0, ptr @_ZN4moldL21all_symbols_read_hookE, align 8, !tbaa !25
  ret i32 0
}

; Function Attrs: mustprogress nounwind
define internal noundef i32 @_ZN4moldL21register_cleanup_hookINS_6X86_64EEENS_12PluginStatusEPFS2_vE(ptr noundef %0) #2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #20
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 328
  store ptr null, ptr %i.b, align 8, !tbaa !188
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i8 0, ptr %i.c, align 8, !tbaa !189
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 337
  store i8 0, ptr %i.d, align 1, !tbaa !190
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !27
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.h = getelementptr i8, ptr %i.f, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8, !tbaa !27
  %i.k = load ptr, ptr %1, align 8, !tbaa !27
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %1, i64 %i.m
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.n, ptr noundef null) #20
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %1, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.a, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 16, ptr %i.r, align 8, !tbaa !194
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 0, ptr %i.u, align 8, !tbaa !22
  store i8 0, ptr %i.t, align 8, !tbaa !29
  %i.v = load ptr, ptr %1, align 8, !tbaa !27
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %1, i64 %i.x
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef nonnull %i.o) #20
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull @.str.38, i64 noundef 22) #20 ; 0 uses
  %i.aa = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aa, ptr %1, align 8, !tbaa !27
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ac = getelementptr i8, ptr %i.aa, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %1, i64 %i.ad
  store ptr %i.ab, ptr %i.ae, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8, !tbaa !27
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !171 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.t
  br i1 %i.ag, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.ah = load i64, ptr %i.t, align 8, !tbaa !29
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8, !tbaa !27
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #20
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  store ptr %0, ptr @_ZN4moldL12cleanup_hookE, align 8, !tbaa !25
  ret i32 0
}

; Function Attrs: mustprogress nounwind
define internal noundef i32 @_ZN4moldL11add_symbolsEPviPKNS_12PluginSymbolE(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #20
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 328
  store ptr null, ptr %i.b, align 8, !tbaa !188
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 336
  store i8 0, ptr %i.c, align 8, !tbaa !189
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 337
  store i8 0, ptr %i.d, align 1, !tbaa !190
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !27
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.h = getelementptr i8, ptr %i.f, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %3, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8, !tbaa !27
  %i.k = load ptr, ptr %3, align 8, !tbaa !27
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %3, i64 %i.m
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.n, ptr noundef null) #20
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %3, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.a, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i32 16, ptr %i.r, align 8, !tbaa !194
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 4 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 0, ptr %i.u, align 8, !tbaa !22
  store i8 0, ptr %i.t, align 8, !tbaa !29
  %i.v = load ptr, ptr %3, align 8, !tbaa !27
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %3, i64 %i.x
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef nonnull %i.o) #20
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull @.str.39, i64 noundef 13) #20 ; 0 uses
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(112) %3, i32 noundef %1) #20 ; 0 uses
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull @.str.6, i64 noundef 1) #20 ; 0 uses
  %i.ac = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !27
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ae = getelementptr i8, ptr %i.ac, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %3, i64 %i.af
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8, !tbaa !27
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !171 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.t
  br i1 %i.ai, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.aj = load i64, ptr %i.t, align 8, !tbaa !29
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8, !tbaa !27
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #20
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.al = sext i32 %1 to i64
  %.idx = mul nuw nsw i64 %i.al, 48               ; 4 uses
  %4 = icmp slt i32 %1, 0
  br i1 %4, label %bb.b, label %_ZNSt6vectorIN4mold12PluginSymbolESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

bb.b:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #27
  unreachable

_ZNSt6vectorIN4mold12PluginSymbolESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.not.i.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIN4mold12PluginSymbolESaIS1_EE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIN4mold12PluginSymbolESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr null, i64 %.idx
  br label %_ZNSt6vectorIN4mold12PluginSymbolESaIS1_EEC2IPKS1_vEET_S7_RKS2_.exit

_ZNSt12_Vector_baseIN4mold12PluginSymbolESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIN4mold12PluginSymbolESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.an = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #28 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx ; 2 uses
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %bb.d, label %bb.c, !prof !817

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN4mold12PluginSymbolESaIS1_EE11_M_allocateEm.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %2, i64 %.idx, i1 false)
  br label %_ZNSt6vectorIN4mold12PluginSymbolESaIS1_EEC2IPKS1_vEET_S7_RKS2_.exit

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN4mold12PluginSymbolESaIS1_EE11_M_allocateEm.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !818
  br label %_ZNSt6vectorIN4mold12PluginSymbolESaIS1_EEC2IPKS1_vEET_S7_RKS2_.exit

_ZNSt6vectorIN4mold12PluginSymbolESaIS1_EEC2IPKS1_vEET_S7_RKS2_.exit: ; preds = %.thread.i.i, %bb.c, %bb.d
  %.sroa.9.0 = phi ptr [ %i.am, %.thread.i.i ], [ %i.ao, %bb.c ], [ %i.ao, %bb.d ] ; 2 uses
  %.sroa.03.0 = phi ptr [ null, %.thread.i.i ], [ %i.an, %bb.c ], [ %i.an, %bb.d ]
  %i.ap = load ptr, ptr @_ZN4moldL14plugin_symbolsE, align 8, !tbaa !200 ; 3 uses
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4moldL14plugin_symbolsE, i64 16), align 8, !tbaa !480
  store ptr %.sroa.03.0, ptr @_ZN4moldL14plugin_symbolsE, align 8, !tbaa !200
  store ptr %.sroa.9.0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4moldL14plugin_symbolsE, i64 8), align 8, !tbaa !199
  store ptr %.sroa.9.0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4moldL14plugin_symbolsE, i64 16), align 8, !tbaa !480
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4mold12PluginSymbolESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4mold12PluginSymbolESaIS1_EEC2IPKS1_vEET_S7_RKS2_.exit
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.at) #26
  br label %_ZNSt6vectorIN4mold12PluginSymbolESaIS1_EED2Ev.exit

_ZNSt6vectorIN4mold12PluginSymbolESaIS1_EED2Ev.exit: ; preds = %bb.e, %_ZNSt6vectorIN4mold12PluginSymbolESaIS1_EEC2IPKS1_vEET_S7_RKS2_.exit
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none)
define internal noundef i32 @_ZN4moldL14get_symbols_v1EPKviPNS_12PluginSymbolE(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree readnone captures(none) %2) #17 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind
define internal noundef i32 @_ZN4moldL14add_input_fileINS_6X86_64EEENS_12PluginStatusEPKc(ptr noundef %0) #2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 28 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.b) #20
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 328
  store ptr null, ptr %i.c, align 8, !tbaa !188
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 336
  store i8 0, ptr %i.d, align 8, !tbaa !189
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 337
  store i8 0, ptr %i.e, align 1, !tbaa !190
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !27
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.i = getelementptr i8, ptr %i.g, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %1, i64 %i.j
  store ptr %i.h, ptr %i.k, align 8, !tbaa !27
  %i.l = load ptr, ptr %1, align 8, !tbaa !27
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.o, ptr noundef null) #20
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %1, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.b, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8, !tbaa !27
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 16, ptr %i.s, align 8, !tbaa !194
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 0, ptr %i.v, align 8, !tbaa !22
  store i8 0, ptr %i.u, align 8, !tbaa !29
  %i.w = load ptr, ptr %1, align 8, !tbaa !27
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %1, i64 %i.y
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.z, ptr noundef nonnull %i.p) #20
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull @.str.41, i64 noundef 16) #20 ; 0 uses
  %.not.i.i = icmp eq ptr %0, null                ; 2 uses
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %1, align 8, !tbaa !27
  %i.ac = getelementptr i8, ptr %i.ab, i64 -24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds i8, ptr %1, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !486
  %i.ah = or i32 %i.ag, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ae, i32 noundef %i.ah) #20
  br label %_ZStlsINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEPKcEOT_S9_RKT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.ai = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %0, i64 noundef %i.ai) #20 ; 0 uses
  br label %_ZStlsINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEPKcEOT_S9_RKT0_.exit

_ZStlsINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEPKcEOT_S9_RKT0_.exit: ; preds = %bb.b, %bb.c
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull @.str.6, i64 noundef 1) #20 ; 0 uses
  %i.al = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.al, ptr %1, align 8, !tbaa !27
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.an = getelementptr i8, ptr %i.al, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %1, i64 %i.ao
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8, !tbaa !27
  %i.aq = load ptr, ptr %i.t, align 8, !tbaa !171 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.u
  br i1 %i.ar, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZStlsINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEPKcEOT_S9_RKT0_.exit
  %i.as = load i64, ptr %i.u, align 8, !tbaa !29
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZStlsINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEPKcEOT_S9_RKT0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8, !tbaa !27
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #20
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.au = load ptr, ptr @_ZN4moldL4gctxINS_6X86_64EEE, align 8, !tbaa !24 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.av, ptr %2, align 8, !tbaa !28
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.24) #27
  unreachable

bb.e:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.aw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20 ; 8 uses
  %i.ax = icmp ugt i64 %i.aw, 15
  br i1 %i.ax, label %bb.f, label %._crit_edge.i.i

bb.f:                                             ; preds = %bb.e
  %i.ay = icmp slt i64 %i.aw, 0
  br i1 %i.ay, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #27
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.az = add nuw i64 %i.aw, 1                    ; 2 uses
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !172

bb.i:                                             ; preds = %bb.h
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.h
  %i.bb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #28 ; 2 uses
  store ptr %i.bb, ptr %2, align 8, !tbaa !171
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.e
  %i.bc = phi ptr [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.av, %bb.e ] ; 3 uses
  switch i64 %i.aw, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bd = load i8, ptr %0, align 1, !tbaa !29
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr nonnull align 1 %0, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.j, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.aw, ptr %i.be, align 8, !tbaa !22
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.aw
  store i8 0, ptr %i.bf, align 1, !tbaa !29
  %i.bg = call noundef ptr @_ZN4mold14must_open_fileINS_6X86_64EEEPNS_10MappedFileERNS_7ContextIT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(14448) %i.au, ptr nofree noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.bh = load ptr, ptr %2, align 8, !tbaa !171   ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.av
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.bj = load i64, ptr %i.av, align 8, !tbaa !29
end_hunk_0
begin_hunk_1_@llvm.umax.i8
!617 = distinct !{!617, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_"}
!618 = distinct !{!618, !617, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_: argument 0"}
!619 = distinct !{!619, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE21internal_emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_"}
!620 = distinct !{!620, !619, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE21internal_emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_: argument 0"}
!621 = !{!461, !70, i64 2677}
!622 = !{!286, !286, i64 0}
!623 = !{!604}
!624 = !{!608}
!625 = !{!264, !263, i64 0}
!626 = !{!146, !146, i64 0}
!627 = !{!610}
!628 = !{!614, !612}
!629 = !{!616}
!630 = !{!620, !618}
!631 = !{!153, !70, i64 810}
!632 = distinct !{!632, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE12emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_"}
!633 = distinct !{!633, !632, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE12emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_: argument 0"}
!634 = distinct !{!634, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE21internal_emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_"}
!635 = distinct !{!635, !634, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE21internal_emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_: argument 0"}
!636 = !{!635, !633}
!637 = !{!477, !477, i64 0}
!638 = distinct !{!638, !"LVerDomain"}
!639 = distinct !{!639, !638}
!640 = distinct !{!640, !638}
!641 = distinct !{!641, !208, !651, !652}
!642 = distinct !{!642, !208, !651}
!643 = distinct !{!643, !"LVerDomain"}
!644 = distinct !{!644, !643}
!645 = distinct !{!645, !643}
!646 = distinct !{!646, !208, !651, !652}
!647 = distinct !{!647, !208, !651}
!648 = !{!64, !63, i64 0}
!649 = !{!639}
!650 = !{!640}
!651 = !{!"llvm.loop.isvectorized", i32 1}
!652 = !{!"llvm.loop.unroll.runtime.disable"}
!653 = !{!644}
!654 = !{!645}
!655 = distinct !{!655, !208}
!656 = !{i64 0, i64 4, !29, i64 4, i64 1, !29, i64 5, i64 1, !29, i64 6, i64 2, !29, i64 8, i64 8, !29, i64 16, i64 8, !29}
!657 = distinct !{!657, !208}
!658 = distinct !{!658, !208}
!659 = distinct !{!659, !208}
!660 = distinct !{!660, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!661 = distinct !{!661, !660, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!662 = distinct !{!662, !660, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!663 = distinct !{!663, !208}
!664 = distinct !{!664, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!665 = distinct !{!665, !664, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!666 = distinct !{!666, !664, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!667 = distinct !{!667, !485}
!668 = distinct !{!668, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!669 = distinct !{!669, !668, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!670 = distinct !{!670, !668, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!671 = distinct !{!671, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!672 = distinct !{!672, !671, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!673 = distinct !{!673, !671, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!674 = distinct !{!674, !485}
!675 = distinct !{!675, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!676 = distinct !{!676, !675, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!677 = distinct !{!677, !675, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!678 = distinct !{!678, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!679 = distinct !{!679, !678, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!680 = distinct !{!680, !678, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!681 = distinct !{!681, !485}
!682 = distinct !{!682, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!683 = distinct !{!683, !682, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!684 = distinct !{!684, !682, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!685 = distinct !{!685, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!686 = distinct !{!686, !685, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!687 = distinct !{!687, !685, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!688 = distinct !{!688, !485}
!689 = distinct !{!689, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!690 = distinct !{!690, !689, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!691 = distinct !{!691, !689, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!692 = distinct !{!692, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!693 = distinct !{!693, !692, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!694 = distinct !{!694, !692, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!695 = distinct !{!695, !485}
!696 = distinct !{!696, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!697 = distinct !{!697, !696, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!698 = distinct !{!698, !696, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!699 = distinct !{!699, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!700 = distinct !{!700, !699, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!701 = distinct !{!701, !699, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!702 = distinct !{!702, !485}
!703 = distinct !{!703, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!704 = distinct !{!704, !703, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!705 = distinct !{!705, !703, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!706 = distinct !{!706, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!707 = distinct !{!707, !706, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!708 = distinct !{!708, !706, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!709 = distinct !{!709, !485}
!710 = distinct !{!710, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!711 = distinct !{!711, !710, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!712 = distinct !{!712, !710, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!713 = distinct !{!713, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!714 = distinct !{!714, !713, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!715 = distinct !{!715, !713, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!716 = distinct !{!716, !485}
!717 = distinct !{!717, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!718 = distinct !{!718, !717, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!719 = distinct !{!719, !717, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!720 = distinct !{!720, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!721 = distinct !{!721, !720, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!722 = distinct !{!722, !720, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!723 = distinct !{!723, !485}
!724 = distinct !{!724, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!725 = distinct !{!725, !724, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!726 = distinct !{!726, !724, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!727 = distinct !{!727, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!728 = distinct !{!728, !727, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!729 = distinct !{!729, !727, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!730 = distinct !{!730, !485}
!731 = distinct !{!731, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!732 = distinct !{!732, !731, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!733 = distinct !{!733, !731, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!734 = distinct !{!734, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!735 = distinct !{!735, !734, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!736 = distinct !{!736, !734, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!737 = distinct !{!737, !485}
!738 = distinct !{!738, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!739 = distinct !{!739, !738, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!740 = distinct !{!740, !738, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!741 = distinct !{!741, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!742 = distinct !{!742, !741, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!743 = distinct !{!743, !741, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!744 = distinct !{!744, !485}
!745 = distinct !{!745, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!746 = distinct !{!746, !745, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!747 = distinct !{!747, !745, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!748 = distinct !{!748, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!749 = distinct !{!749, !748, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!750 = distinct !{!750, !748, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!751 = distinct !{!751, !485}
!752 = distinct !{!752, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!753 = distinct !{!753, !752, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!754 = distinct !{!754, !752, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!755 = distinct !{!755, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!756 = distinct !{!756, !755, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!757 = distinct !{!757, !755, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!758 = distinct !{!758, !485}
!759 = distinct !{!759, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!760 = distinct !{!760, !759, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!761 = distinct !{!761, !759, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!762 = distinct !{!762, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_"}
!763 = distinct !{!763, !762, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!764 = distinct !{!764, !762, !"_ZSt19__relocate_object_aIN4mold14PluginTagValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!765 = distinct !{null, null, null, null, null}
!766 = !{!"_ZTSZSt9call_onceIZN4moldL15load_lto_pluginINS0_6X86_64EEEvRNS0_7ContextIT_EEEUlvE_JEEvRSt9once_flagOS4_DpOT0_EUlvE_", !16, i64 0}
!767 = !{!766, !16, i64 0}
!768 = !{!"_ZTSZN4moldL15load_lto_pluginINS_6X86_64EEEvRNS_7ContextIT_EEEUlvE_", !23, i64 0}
!769 = !{!768, !23, i64 0}
!770 = !{!"_ZTSN4mold9PluginTagE", !12, i64 0}
!771 = !{!"_ZTSN4mold14PluginTagValueE", !770, i64 0, !12, i64 8}
!772 = !{!771, !770, i64 0}
!773 = !{!461, !70, i64 2695}
!774 = !{!461, !70, i64 2686}
!775 = !{!281, !281, i64 0}
!776 = !{!770, !770, i64 0}
!777 = !{i64 0, i64 4, !776, i64 8, i64 8, !29}
!778 = !{!662, !661}
!779 = !{!666, !665}
!780 = !{!670, !669}
!781 = !{!673, !672}
!782 = !{!677, !676}
!783 = !{!680, !679}
!784 = !{!684, !683}
!785 = !{!687, !686}
!786 = !{!691, !690}
!787 = !{!694, !693}
!788 = !{!698, !697}
!789 = !{!701, !700}
!790 = !{!705, !704}
!791 = !{!708, !707}
!792 = !{!712, !711}
!793 = !{!715, !714}
!794 = !{!719, !718}
!795 = !{!722, !721}
!796 = !{!726, !725}
!797 = !{!729, !728}
!798 = !{!733, !732}
!799 = !{!736, !735}
!800 = !{!740, !739}
!801 = !{!743, !742}
!802 = !{!747, !746}
!803 = !{!750, !749}
!804 = !{!754, !753}
!805 = !{!757, !756}
!806 = !{!761, !760}
!807 = !{!764, !763}
!808 = !{!182, !182, i64 0}
!809 = !{!487, !20, i64 8}
!810 = !{!"_ZTSSt22_Optional_payload_baseIN4mold10SyncStreamEE", !12, i64 0, !70, i64 408}
!811 = !{!810, !70, i64 408}
!812 = distinct !{!812, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_"}
!813 = distinct !{!813, !812, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE12emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_: argument 0"}
!814 = distinct !{!814, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE21internal_emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_"}
!815 = distinct !{!815, !814, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EEE21internal_emplace_backIJRPhEEENS1_15vector_iteratorISA_S7_EEDpOT_: argument 0"}
!816 = !{!815, !813}
!817 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!818 = !{i64 0, i64 8, !206, i64 8, i64 8, !206, i64 16, i64 1, !29, i64 17, i64 1, !29, i64 18, i64 1, !29, i64 19, i64 1, !29, i64 20, i64 4, !195, i64 24, i64 8, !207, i64 32, i64 8, !206, i64 40, i64 4, !195}
!819 = distinct !{!819, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_"}
!820 = distinct !{!820, !819, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_: argument 0"}
!821 = distinct !{!821, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE21internal_emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_"}
!822 = distinct !{!822, !821, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE21internal_emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_: argument 0"}
!823 = !{!169, !70, i64 72}
!824 = !{!822, !820}
!825 = !{!87, !20, i64 128}
!826 = distinct !{!826, !485}
!827 = distinct !{!827, !485}
!828 = distinct !{!828, !"_ZNSt8literals15string_literalsli1sB5cxx11EPKcm"}
!829 = distinct !{!829, !828, !"_ZNSt8literals15string_literalsli1sB5cxx11EPKcm: argument 0"}
!830 = distinct !{!830, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_"}
!831 = distinct !{!831, !830, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_: argument 0"}
!832 = !{!829}
!833 = !{!831}
!834 = distinct !{!834, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!835 = distinct !{!835, !834, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!836 = distinct !{!836, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!837 = distinct !{!837, !836, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!838 = !{!491, !182, i64 0}
!839 = !{!835}
!840 = !{!837}
!841 = !{!837, !835}
!842 = !{!191, !18, i64 40}
!843 = !{!191, !18, i64 32}
!844 = !{!181, !20, i64 16}
!845 = distinct !{!845, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!846 = distinct !{!846, !845, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!847 = distinct !{!847, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE12emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_"}
!848 = distinct !{!848, !847, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE12emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_: argument 0"}
!849 = distinct !{!849, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE21internal_emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_"}
!850 = distinct !{!850, !849, !"_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE21internal_emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_: argument 0"}
!851 = !{!846}
!852 = !{!850, !848}
!853 = distinct !{!853, !"_ZNKSt10filesystem7__cxx114path6stringEv"}
!854 = distinct !{!854, !853, !"_ZNKSt10filesystem7__cxx114path6stringEv: argument 0"}
!855 = distinct !{!855, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_"}
!856 = distinct !{!856, !855, !"_ZNKSt10filesystem7__cxx114path6stringIcSt11char_traitsIcESaIcEEENSt7__cxx1112basic_stringIT_T0_T1_EERKSA_: argument 0"}
!857 = !{!854}
!858 = !{!856}
!859 = !{!856, !854}
!860 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !16, i64 0}
!861 = !{!860, !860, i64 0}
!862 = distinct !{!862, !485}
!863 = distinct !{!863, !208}
!864 = distinct !{!864, !485}
!865 = distinct !{!865, !208}
!866 = !{!"p1 _ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EEE", !16, i64 0}
!867 = !{!"p2 _ZTSSt6atomicIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEE", !17, i64 0}
!868 = !{!"_ZTSZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_EmmEUlvE_", !866, i64 0, !42, i64 8, !867, i64 16}
!869 = !{!868, !866, i64 0}
!870 = !{!868, !42, i64 8}
!871 = !{!"_ZTSSt13__atomic_baseIPSt10unique_ptrIN4mold10MappedFileESt14default_deleteIS2_EEE", !366, i64 0}
!872 = !{!871, !366, i64 0}
!873 = !{!868, !867, i64 16}
!874 = distinct !{!874, !485}
!875 = distinct !{!875, !485}
!876 = distinct !{!876, !208}
!877 = distinct !{!877, !208}
!878 = distinct !{!878, !485}
!879 = distinct !{!879, !485}
!880 = distinct !{!880, !485}
!881 = distinct !{!881, !208}
!882 = distinct !{!882, !208}
!883 = !{!133, !132, i64 0}
!884 = !{!133, !132, i64 8}
!885 = !{!"p1 _ZTSN4mold6ElfRelINS_6X86_64EEE", !16, i64 0}
!886 = !{!885, !885, i64 0}
!887 = !{!133, !132, i64 16}
!888 = !{!128, !127, i64 0}
!889 = !{!128, !127, i64 16}
!890 = !{!123, !30, i64 0}
!891 = !{!123, !30, i64 16}
!892 = !{!119, !118, i64 0}
!893 = !{!119, !118, i64 16}
!894 = !{!111, !110, i64 0}
!895 = !{!111, !110, i64 16}
!896 = !{!106, !105, i64 0}
!897 = !{!106, !105, i64 16}
!898 = !{!101, !58, i64 0}
!899 = !{!101, !58, i64 16}
!900 = !{!33, !30, i64 40}
!901 = !{!33, !30, i64 72}
!902 = !{ptr @_ZN4mold9InputFileINS_6X86_64EED2Ev}
!903 = distinct !{!903, !208}
!904 = !{!48, !47, i64 24}
!905 = !{!48, !47, i64 16}
!906 = distinct !{!906, !208}
!907 = !{!92, !91, i64 0}
!908 = !{!92, !91, i64 8}
!909 = !{!"p1 _ZTSN4mold16MergeableSectionINS_6X86_64EEE", !16, i64 0}
!910 = !{!909, !909, i64 0}
!911 = !{!"p2 _ZTSN4mold15SectionFragmentINS_6X86_64EEE", !17, i64 0}
!912 = !{!"_ZTSNSt12_Vector_baseIPN4mold15SectionFragmentINS0_6X86_64EEESaIS4_EE17_Vector_impl_dataE", !911, i64 0, !911, i64 8, !911, i64 16}
!913 = !{!912, !911, i64 0}
!914 = !{!912, !911, i64 16}
!915 = !{!92, !91, i64 16}
!916 = distinct !{!916, !485}
!917 = distinct !{!917, !208}
!918 = distinct !{!918, !485}
!919 = distinct !{!919, !208}
!920 = !{!"p1 _ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EEE", !16, i64 0}
!921 = !{!"p2 _ZTSSt6atomicIPSt10unique_ptrIN4mold10ObjectFileINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEE", !17, i64 0}
!922 = !{!"_ZTSZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE25extend_table_if_necessaryERPSt6atomicIPSA_EmmEUlvE_", !920, i64 0, !42, i64 8, !921, i64 16}
!923 = !{!922, !920, i64 0}
!924 = !{!922, !42, i64 8}
!925 = !{!"_ZTSSt13__atomic_baseIPSt10unique_ptrIN4mold10ObjectFileINS1_6X86_64EEENS1_18ArenaObjectDeleterIS4_EEEE", !345, i64 0}
!926 = !{!925, !345, i64 0}
!927 = !{!922, !921, i64 16}
!928 = distinct !{!928, !485}
!929 = distinct !{!929, !485}
!930 = distinct !{!930, !208}
!931 = distinct !{!931, !208}
!932 = distinct !{!932, !485}
!933 = distinct !{!933, !485}
!934 = distinct !{!934, !485}
!935 = distinct !{!935, !485}
!936 = distinct !{!936, !208}
!937 = distinct !{!937, !485}
!938 = distinct !{!938, !208}
!939 = !{!"p1 _ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EEE", !16, i64 0}
!940 = !{!"p2 _ZTSSt6atomicIPSt10unique_ptrIA_hSt14default_deleteIS1_EEE", !17, i64 0}
!941 = !{!"_ZTSZN3tbb6detail2d113segment_tableISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_EmmEUlvE_", !939, i64 0, !42, i64 8, !940, i64 16}
!942 = !{!941, !939, i64 0}
!943 = !{!941, !42, i64 8}
!944 = !{!"_ZTSSt13__atomic_baseIPSt10unique_ptrIA_hSt14default_deleteIS1_EEE", !359, i64 0}
!945 = !{!944, !359, i64 0}
!946 = !{!941, !940, i64 16}
!947 = distinct !{!947, !485}
!948 = distinct !{!948, !485}
!949 = distinct !{!949, !208}
!950 = distinct !{!950, !208}
!951 = distinct !{!951, !485}
!952 = distinct !{!952, !485}
!953 = distinct !{!953, !485}
!954 = distinct !{!954, !485}
!955 = distinct !{!955, !208}
!956 = distinct !{!956, !485}
!957 = distinct !{!957, !208}
!958 = !{!"p1 _ZTSN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EEE", !16, i64 0}
!959 = !{!"p2 _ZTSSt6atomicIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS2_EEE", !17, i64 0}
!960 = !{!"_ZTSZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS8_EmmEUlvE_", !958, i64 0, !42, i64 8, !959, i64 16}
!961 = !{!960, !958, i64 0}
!962 = !{!960, !42, i64 8}
!963 = !{!"_ZTSSt13__atomic_baseIPSt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS2_EEE", !338, i64 0}
!964 = !{!963, !338, i64 0}
!965 = !{!960, !959, i64 16}
!966 = distinct !{!966, !485}
!967 = distinct !{!967, !485}
!968 = distinct !{!968, !208}
!969 = distinct !{!969, !208}
!970 = distinct !{!970, !485}
!971 = distinct !{!971, !485}
!972 = distinct !{!972, !485}
!973 = distinct !{!973, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!974 = distinct !{!974, !973, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!975 = distinct !{!975, !"_ZNSt7__cxx119to_stringEl"}
!976 = distinct !{!976, !975, !"_ZNSt7__cxx119to_stringEl: argument 0"}
!977 = distinct !{!977, !208}
!978 = distinct !{!978, !208}
!979 = distinct !{!979, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!980 = distinct !{!980, !979, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!981 = distinct !{!981, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!982 = distinct !{!982, !981, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!983 = !{!974}
!984 = !{!976}
!985 = !{!980}
!986 = !{!982}
!987 = !{!"_ZTSSt13__atomic_baseIjE", !13, i64 0}
!988 = !{!987, !13, i64 0}
!989 = !{!"_ZTSSt6atomicIjE", !987, i64 0}
!990 = !{!"_ZTSN3tbb6detail2d118task_group_context26task_group_context_versionE", !12, i64 0}
!991 = !{!"_ZTSN3tbb6detail2d118task_group_context14context_traitsE", !70, i64 0, !70, i64 0, !70, i64 0, !70, i64 0, !70, i64 0, !70, i64 0, !70, i64 0, !70, i64 0}
!992 = !{!"_ZTSN3tbb6detail2d118task_group_context5stateE", !12, i64 0}
!993 = !{!"_ZTSSt6atomicIN3tbb6detail2d118task_group_context5stateEE", !992, i64 0}
!994 = !{!"p1 _ZTSN3tbb6detail2r112context_listE", !16, i64 0}
!995 = !{!"p1 _ZTSN3tbb6detail2d119intrusive_list_nodeE", !16, i64 0}
!996 = !{!"_ZTSN3tbb6detail2d119intrusive_list_nodeE", !995, i64 0, !995, i64 8}
!997 = !{!"p1 _ZTSN3tbb6detail2r117tbb_exception_ptrE", !16, i64 0}
!998 = !{!"_ZTSSt13__atomic_baseIPN3tbb6detail2r117tbb_exception_ptrEE", !997, i64 0}
!999 = !{!"_ZTSSt6atomicIPN3tbb6detail2r117tbb_exception_ptrEE", !998, i64 0}
!1000 = !{!"_ZTSN3tbb6detail2d021string_resource_indexE", !12, i64 0}
!1001 = !{!"_ZTSN3tbb6detail2d118task_group_contextE", !20, i64 0, !989, i64 8, !990, i64 12, !991, i64 13, !160, i64 14, !993, i64 15, !12, i64 16, !994, i64 24, !996, i64 32, !999, i64 48, !16, i64 56, !1000, i64 64, !12, i64 72}
!1002 = !{!1001, !1000, i64 64}
!1003 = !{!514, !514, i64 0}
!1004 = !{!515, !515, i64 0}
!1005 = !{!520, !515, i64 88}
!1006 = !{!520, !16, i64 96}
!1007 = !{!542, !158, i64 10}
!1008 = !{!542, !158, i64 8}
!1009 = distinct !{null, null, null}
!1010 = distinct !{null, null}
!1011 = distinct !{!1011, !208}
!1012 = distinct !{!1012, !485}
!1013 = distinct !{!1013, !208}
!1014 = distinct !{!1014, !208}
!1015 = distinct !{!1015, !208}
!1016 = distinct !{null, null, null}
!1017 = distinct !{null, null}
end_hunk_1
