inline.NumInlined: 72231
inline.NumDeleted: 15384
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_18ElementsAreMatcherISt5tupleIJiiiiiiiiEEEEEclISt6vectorImSaImEEEENS_15AssertionResultEPKcRKT_:bb.a

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #43
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %10, align 8, !tbaa !9
  %i.de = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.de, ptr %i.ag, align 8, !tbaa !9
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.de, i64 -24    ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = getelementptr inbounds i8, ptr %i.ag, i64 %i.dh
  store ptr %i.df, ptr %i.di, align 8, !tbaa !9
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  store ptr %i.dj, ptr %i.ah, align 8, !tbaa !9
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dk, align 8, !tbaa !9
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !26 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZN7testing25StringMatchResultListenerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !30
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #44, !inline_history !3914
  br label %_ZN7testing25StringMatchResultListenerD2Ev.exit

_ZN7testing25StringMatchResultListenerD2Ev.exit:  ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dk, align 8, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 96
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dr) #43, !inline_history !3914
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.ds, ptr %i.ag, align 8, !tbaa !9
  %i.dt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.du = getelementptr i8, ptr %i.ds, i64 -24    ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %i.ag, i64 %i.dv
  store ptr %i.dt, ptr %i.dw, align 8, !tbaa !9
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 0, ptr %i.dx, align 8, !tbaa !3845
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 144
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.dy) #43, !inline_history !3914
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  store ptr %i.de, ptr %9, align 8, !tbaa !9
  %i.dz = load i64, ptr %i.dg, align 8
  %i.ea = getelementptr inbounds i8, ptr %9, i64 %i.dz
  store ptr %i.df, ptr %i.ea, align 8, !tbaa !9
  store ptr %i.dj, ptr %i.l, align 8, !tbaa !9
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.eb, align 8, !tbaa !9
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !26 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58: ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !30
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #44
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZN7testing25StringMatchResultListenerD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.eb, align 8, !tbaa !9
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ei) #43
  store ptr %i.ds, ptr %9, align 8, !tbaa !9
  %i.ej = load i64, ptr %i.du, align 8
  %i.ek = getelementptr inbounds i8, ptr %9, i64 %i.ej
  store ptr %i.dt, ptr %i.ek, align 8, !tbaa !9
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.el, align 8, !tbaa !3845
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.em) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  br label %bb.ak

bb.ad:                                            ; preds = %_ZNK7testing25StringMatchResultListener3strB5cxx11Ev.exit
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %11, align 8, !tbaa !26   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.aq
  br i1 %i.ep, label %.body43, label %.body43.sink.split

.body43.sink.split:                               ; preds = %bb.ad, %bb.s
  %.sink = phi ptr [ %i.be, %bb.s ], [ %i.eo, %bb.ad ]
  %.pn.ph = phi { ptr, i32 } [ %i.bd, %bb.s ], [ %i.en, %bb.ad ]
  %i.eq = load i64, ptr %i.aq, align 8, !tbaa !30
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.er) #44
  br label %.body43

.body43:                                          ; preds = %.body43.sink.split, %bb.ad, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.s ], [ %i.en, %bb.ad ], [ %.pn.ph, %.body43.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #43
  br label %bb.ah

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.aa
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.body50

.body50:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i, %bb.af
  %eh.lpad-body51 = phi { ptr, i32 } [ %i.et, %bb.af ], [ %i.co, %_ZN7testing7MessageD2Ev.exit5.i ] ; 2 uses
  %i.eu = load ptr, ptr %13, align 8, !tbaa !26   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.bo
  br i1 %i.ev, label %.body46, label %.body46.sink.split

.body46.sink.split:                               ; preds = %.body50, %bb.w
  %.sink90 = phi ptr [ %i.cc, %bb.w ], [ %i.eu, %.body50 ]
  %.pn14.ph = phi { ptr, i32 } [ %i.cb, %bb.w ], [ %eh.lpad-body51, %.body50 ]
  %i.ew = load i64, ptr %i.bo, align 8, !tbaa !30
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %.sink90, i64 noundef %i.ex) #44
  br label %.body46

.body46:                                          ; preds = %.body46.sink.split, %.body50, %bb.w
  %.pn14 = phi { ptr, i32 } [ %i.cb, %bb.w ], [ %eh.lpad-body51, %.body50 ], [ %.pn14.ph, %.body46.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #43
  br label %bb.ag

bb.ag:                                            ; preds = %.body46, %bb.ae
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %.body46 ], [ %i.es, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #43
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.body43, %bb.q
  %.pn14.pn.pn = phi { ptr, i32 } [ %.pn14.pn, %bb.ag ], [ %.pn, %.body43 ], [ %i.ao, %bb.q ]
  call void @_ZN7testing25StringMatchResultListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %10) #43
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.p
  %.pn14.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn, %bb.ah ], [ %i.an, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  br label %.body35

.body35:                                          ; preds = %bb.o, %bb.j, %bb.ai
  %.pn14.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn, %bb.ai ], [ %i.am, %bb.o ], [ %i.ac, %bb.j ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #43
  br label %bb.aj

bb.aj:                                            ; preds = %.body35, %bb.n
  %.pn14.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn, %.body35 ], [ %i.al, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  br label %.body

bb.ak:                                            ; preds = %bb.c, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKSt6vectorImSaImEEEE, i64 16), ptr %8, align 8, !tbaa !9
  %i.ey = load ptr, ptr %i.b, align 8, !tbaa !4003 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i66, label %_ZN7testing8internal11MatcherBaseIRKSt6vectorImSaImEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorImSaImEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKSt6vectorImSaImEEE8IsSharedEv.exit.i.i: ; preds = %bb.ak
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !4028
  %.not.i.i67 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i67, label %_ZN7testing8internal11MatcherBaseIRKSt6vectorImSaImEEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorImSaImEEE8IsSharedEv.exit.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !30
  %i.fd = atomicrmw sub ptr %i.fc, i32 1 acq_rel, align 4
  %i.fe = icmp eq i32 %i.fd, 1
  br i1 %i.fe, label %bb.am, label %_ZN7testing8internal11MatcherBaseIRKSt6vectorImSaImEEED2Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.ff = load ptr, ptr %i.b, align 8, !tbaa !4003
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !4028
  %i.fi = load ptr, ptr %i.fb, align 8, !tbaa !30
  invoke void %i.fh(ptr noundef %i.fi)
          to label %_ZN7testing8internal11MatcherBaseIRKSt6vectorImSaImEEED2Ev.exit unwind label %bb.an, !inline_history !4029

bb.an:                                            ; preds = %bb.am
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  call void @__clang_call_terminate(ptr %i.fk) #48, !inline_history !4030
  unreachable

_ZN7testing8internal11MatcherBaseIRKSt6vectorImSaImEEED2Ev.exit: ; preds = %bb.ak, %_ZNK7testing8internal11MatcherBaseIRKSt6vectorImSaImEEE8IsSharedEv.exit.i.i, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  ret void

.body:                                            ; preds = %bb.d, %.body.i, %bb.aj
  %.pn21 = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn.pn, %bb.aj ], [ %i.k, %bb.d ], [ %i.g, %.body.i ]
  call void @_ZN7testing8internal11MatcherBaseIRKSt6vectorImSaImEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  resume { ptr, i32 } %.pn21
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #14

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal11MatcherBaseIRKSt6vectorImSaImEEE10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4003
  %i.c = icmp ne ptr %i.b, null
  %i.d = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.c)
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.390, i32 noundef 246)
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.391, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.c ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !4003
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !4009
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7testing8internal20MatchPrintAndExplainIKSt6vectorImSaImEERS5_EEbRT_RKNS_7MatcherIT0_EEPNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %5 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %6 = alloca %"class.testing::StringMatchResultListener", align 8 ; 20 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3888
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !3888
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing8internal24DummyMatchResultListenerE, i64 16), ptr %5, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !4003
  %i.f = icmp ne ptr %i.e, null
  %i.g = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.f)
  br i1 %i.g, label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorImSaImEEE7MatchesES6_.exit, label %.noexc3.i

.noexc3.i:                                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 3, ptr noundef nonnull @.str.390, i32 noundef 234)
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.391, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %.body.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc3.i
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  br label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorImSaImEEE7MatchesES6_.exit

common.resume:                                    ; preds = %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %.body.i ], [ %.pn.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %.noexc3.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %common.resume

_ZNK7testing8internal11MatcherBaseIRKSt6vectorImSaImEEE7MatchesES6_.exit: ; preds = %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !4003
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !4006
  %i.l = call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %5), !inline_history !4031
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !3888
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %6, align 8, !tbaa !9
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !4003
  %i.r = icmp ne ptr %i.q, null
  %i.s = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %i.r)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  br i1 %i.s, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  invoke void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 3, ptr noundef nonnull @.str.390, i32 noundef 234)
          to label %.noexc23 unwind label %bb.g

.noexc23:                                         ; preds = %bb.d
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.391, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc23
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.f

bb.e:                                             ; preds = %.noexc23
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %.body

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %.noexc
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !4003
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !4006
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %6)
          to label %_ZNK7testing8internal11MatcherBaseIRKSt6vectorImSaImEEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit unwind label %bb.g, !inline_history !4032

_ZNK7testing8internal11MatcherBaseIRKSt6vectorImSaImEEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit: ; preds = %bb.f
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !3888
  invoke void @_ZN7testing8internal16ContainerPrinter10PrintValueISt6vectorImSaImEEvEEvRKT_PSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.y)
          to label %_ZN7testing8internal14UniversalPrintISt6vectorImSaImEEEEvRKT_PSo.exit unwind label %bb.g

_ZN7testing8internal14UniversalPrintISt6vectorImSaImEEEEvRKT_PSo.exit: ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorImSaImEEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  invoke void @_ZN7testing8internal11GetTypeNameB5cxx11ERKSt9type_info(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) @_ZTISt6vectorImSaImEE)
          to label %_ZN7testing8internal11GetTypeNameIKSt6vectorImSaImEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv.exit unwind label %bb.h

_ZN7testing8internal11GetTypeNameIKSt6vectorImSaImEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv.exit: ; preds = %_ZN7testing8internal14UniversalPrintISt6vectorImSaImEEEEvRKT_PSo.exit
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !35
  %i.ab = icmp ult i64 %i.aa, 21
  br i1 %i.ab, label %_ZN7testing8internal18IsReadableTypeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZN7testing8internal18IsReadableTypeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN7testing8internal18IsReadableTypeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN7testing8internal11GetTypeNameIKSt6vectorImSaImEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv.exit
  %i.ac = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.396, i64 noundef 0, i64 noundef 2) #43
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %_ZN7testing8internal18IsReadableTypeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30

_ZN7testing8internal18IsReadableTypeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZN7testing8internal11GetTypeNameIKSt6vectorImSaImEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEv.exit, %_ZN7testing8internal18IsReadableTypeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !3888 ; 2 uses
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.392, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN7testing8internal18IsReadableTypeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.ag = load ptr, ptr %7, align 8, !tbaa !26
  %i.ah = load i64, ptr %i.z, align 8, !tbaa !35
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef %i.ag, i64 noundef %i.ah)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.386, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.i ; 0 uses

bb.g:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt6vectorImSaImEEE15MatchAndExplainES6_PNS_19MatchResultListenerE.exit, %bb.f, %bb.d, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %_ZN7testing8internal14UniversalPrintISt6vectorImSaImEEEEvRKT_PSo.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN7testing8internal18IsReadableTypeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZN7testing8internal18IsReadableTypeNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !4033)
  call void @llvm.experimental.noalias.scope.decl(metadata !4036)
  call void @llvm.experimental.noalias.scope.decl(metadata !4039)
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.an, ptr %8, align 8, !tbaa !34, !alias.scope !4042
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_140HashtableDataTest_HashtableCapacity_TestISt17integral_constantINS1_28HashtableCapacityStorageModeELS5_0EEE8TestBodyEv:_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %.not.i.i281 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i281, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.critedge153
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !26 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i283, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i282: ; preds = %bb.ah
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !30
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i283

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i283: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i282
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 32) #44
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i283, %.critedge153
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  %i.cl = add nuw nsw i64 %.010541, 1             ; 2 uses
  %i.cm = shl i64 %i.ab, 1
  %i.cn = or disjoint i64 %i.cm, 1
  %exitcond = icmp eq i64 %i.cl, 20
  br i1 %exitcond, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit475, label %bb.l, !llvm.loop !9410

.critedge149:                                     ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i254, %_ZN7testing7MessageD2Ev.exit251
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit475

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit475: ; preds = %bb.ai, %.critedge149, %_ZN7testing15AssertionResultD2Ev.exit277
  ret void

bb.aj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit262, %_ZN7testing7MessageD2Ev.exit280, %_ZN7testing7MessageD2Ev.exit166
  %.pn139.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %_ZN7testing7MessageD2Ev.exit166 ], [ %.pn99.pn, %_ZN7testing7MessageD2Ev.exit280 ], [ %.pn95.pn.pn, %_ZN7testing7MessageD2Ev.exit262 ]
  resume { ptr, i32 } %.pn139.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_140HashtableDataTest_HashtableCapacity_TestISt17integral_constantINS4_28HashtableCapacityStorageModeELS8_1EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_140HashtableDataTest_HashtableCapacity_TestISt17integral_constantINS4_28HashtableCapacityStorageModeELS8_1EEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #47 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_140HashtableDataTest_HashtableCapacity_TestISt17integral_constantINS1_28HashtableCapacityStorageModeELS5_1EEEE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #44
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_140HashtableDataTest_HashtableCapacity_TestISt17integral_constantINS1_28HashtableCapacityStorageModeELS5_1EEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #43
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_140HashtableDataTest_HashtableCapacity_TestISt17integral_constantINS1_28HashtableCapacityStorageModeELS5_1EEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
  %i.c = load i8, ptr %1, align 8, !tbaa !3822, !range !3831, !noundef !3832
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.j, label %bb.a

bb.a:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3833 ; 2 uses
  %.not.i.i160 = icmp eq ptr %i.f, null
  br i1 %.not.i.i160, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %i.g, %bb.c ], [ @.str.31, %bb.b ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 373, ptr noundef %i.h)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  %i.i = load ptr, ptr %2, align 8, !tbaa !120    ; 3 uses
  %.not.i.i161 = icmp eq ptr %i.i, null
  br i1 %.not.i.i161, label %_ZN7testing7MessageD2Ev.exit163, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162: ; preds = %bb.e
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit163

_ZN7testing7MessageD2Ev.exit163:                  ; preds = %bb.e, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit166

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn76 = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.n, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  %i.p = load ptr, ptr %2, align 8, !tbaa !120    ; 3 uses
  %.not.i.i164 = icmp eq ptr %i.p, null
  br i1 %.not.i.i164, label %_ZN7testing7MessageD2Ev.exit166, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165: ; preds = %bb.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(128) %i.p) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit166

_ZN7testing7MessageD2Ev.exit166:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165, %bb.i, %bb.f
  %.pn76.pn = phi { ptr, i32 } [ %i.m, %bb.f ], [ %.pn76, %bb.i ], [ %.pn76, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  br label %bb.ac

bb.j:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit163
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i167 = icmp eq ptr %i.u, null
  br i1 %.not.i.i167, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit243, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.y = load i64, ptr %i.w, align 8, !tbaa !30
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 32) #44
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit243

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit243: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store i64 0, ptr %i.a, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit243, %bb.z
  %.010541 = phi i64 [ 0, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit243 ], [ %i.bh, %bb.z ]
  %i.ab = phi i64 [ 0, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit243 ], [ %i.bk, %bb.z ] ; 2 uses
  %i.ac = add i64 %i.ab, 1                        ; 2 uses
  %i.ad = icmp ne i64 %i.ac, 0
  call void @llvm.assume(i1 %i.ad)
  %7 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ac, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %notmask.i268 = shl nsw i64 -1, %7
  %8 = xor i64 %notmask.i268, -1                  ; 2 uses
  store i64 %8, ptr %i.b, align 8, !tbaa !52
  %i.ae = icmp eq i64 %i.ab, %8
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
  br label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

bb.n:                                             ; preds = %bb.l
  call void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.732, ptr noundef nonnull @.str.617, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  %i.af = load i8, ptr %4, align 8, !tbaa !3822, !range !3831, !noundef !3832
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %.critedge153, label %bb.o

bb.o:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !3833 ; 2 uses
  %.not.i.i269 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i269, label %_ZNK7testing15AssertionResult15failure_messageEv.exit270, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit270

_ZNK7testing15AssertionResult15failure_messageEv.exit270: ; preds = %bb.q, %bb.p
  %i.aj = phi ptr [ %i.ai, %bb.q ], [ @.str.31, %bb.p ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 382, ptr noundef %i.aj)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit270
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  %i.ak = load ptr, ptr %5, align 8, !tbaa !120   ; 3 uses
  %.not.i.i271 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i271, label %_ZN7testing7MessageD2Ev.exit273, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i272

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i272: ; preds = %bb.s
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(128) %i.ak) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit273

_ZN7testing7MessageD2Ev.exit273:                  ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i274 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i274, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit273
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !26 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i275: ; preds = %bb.t
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !30
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i275
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 32) #44
  br label %bb.ab

bb.u:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit270
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #43
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn99 = phi { ptr, i32 } [ %i.aw, %bb.w ], [ %i.av, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  %i.ax = load ptr, ptr %5, align 8, !tbaa !120   ; 3 uses
  %.not.i.i279 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i279, label %bb.aa, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i280

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i280: ; preds = %bb.x
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(128) %i.ax) #43, !inline_history !3834
  br label %bb.aa

.critedge153:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.bb = load ptr, ptr %i.aa, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i282 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i282, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge153
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !26 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i283: ; preds = %bb.y
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !30
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i283
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 32) #44
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i284, %.critedge153
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  %i.bh = add nuw nsw i64 %.010541, 1             ; 2 uses
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !52
  %i.bj = shl i64 %i.bi, 1
  %i.bk = or disjoint i64 %i.bj, 1                ; 2 uses
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !52
  %exitcond = icmp eq i64 %i.bh, 20
  br i1 %exitcond, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit476, label %bb.l, !llvm.loop !9411

bb.aa:                                            ; preds = %bb.u, %bb.x, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i280
  %.pn99.pn = phi { ptr, i32 } [ %i.au, %bb.u ], [ %.pn99, %bb.x ], [ %.pn99, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i280 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276, %_ZN7testing7MessageD2Ev.exit273
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit476

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit476: ; preds = %bb.z, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret void

bb.ac:                                            ; preds = %bb.aa, %_ZN7testing7MessageD2Ev.exit166
  %.pn139.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %_ZN7testing7MessageD2Ev.exit166 ], [ %.pn99.pn, %bb.aa ]
  resume { ptr, i32 } %.pn139.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal24GenerateNamesRecursivelyINS0_20DefaultNameGeneratorENS0_5TypesISt17integral_constantIN4absl12lts_2026052618container_internal28HashtableCapacityStorageModeELS8_0EEJS4_IS8_LS8_1EEEEEEEvT0_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISJ_EEi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43, !noalias !9412
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !9412
  %i.a = load ptr, ptr %2, align 8, !tbaa !120, !noalias !9412
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %1)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i unwind label %bb.c, !noalias !9412 ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i:       ; preds = %bb.a
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i
  %i.d = load ptr, ptr %2, align 8, !tbaa !120, !noalias !9412 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN7testing8internal20DefaultNameGenerator7GetNameISt17integral_constantIN4absl12lts_2026052618container_internal28HashtableCapacityStorageModeELS7_0EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(128) %i.d) #43, !inline_history !9417
  br label %_ZN7testing8internal20DefaultNameGenerator7GetNameISt17integral_constantIN4absl12lts_2026052618container_internal28HashtableCapacityStorageModeELS7_0EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit

bb.c:                                             ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i.i, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %2, align 8, !tbaa !120, !noalias !9412 ; 3 uses
  %.not.i.i2.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i2.i.i, label %_ZN7testing7MessageD2Ev.exit4.i.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i3.i.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.i) #43, !inline_history !9417
  br label %_ZN7testing7MessageD2Ev.exit4.i.i
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_130HashtableDataTest_RawData_TestISt17integral_constantINS1_28HashtableCapacityStorageModeELS5_0EEE8TestBodyEv:bb.a
  br label %bb.z

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
  %.pre = load i8, ptr %6, align 8, !tbaa !3822, !range !3831
  %i.am = trunc nuw i8 %.pre to i1
  br i1 %i.am, label %.critedge42, label %bb.n

bb.n:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !3833 ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.an, null
  br i1 %.not.i.i54, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.p, %bb.o
  %i.ap = phi ptr [ %i.ao, %bb.p ], [ @.str.31, %bb.o ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 412, ptr noundef %i.ap)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  %i.aq = load ptr, ptr %7, align 8, !tbaa !120   ; 3 uses
  %.not.i.i55 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i55, label %_ZN7testing7MessageD2Ev.exit57, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56: ; preds = %bb.r
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(128) %i.aq) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit57

_ZN7testing7MessageD2Ev.exit57:                   ; preds = %bb.r, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i58 = icmp eq ptr %i.au, null
  br i1 %.not.i.i58, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN7testing7MessageD2Ev.exit57
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !26 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.s
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !30
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit57, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit85

bb.t:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit61

bb.u:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #43
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn28 = phi { ptr, i32 } [ %i.bc, %bb.v ], [ %i.bb, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  %i.bd = load ptr, ptr %7, align 8, !tbaa !120   ; 3 uses
  %.not.i.i59 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i59, label %_ZN7testing7MessageD2Ev.exit61, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60: ; preds = %bb.w
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit61

_ZN7testing7MessageD2Ev.exit61:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60, %bb.w, %bb.t
  %.pn28.pn = phi { ptr, i32 } [ %i.ba, %bb.t ], [ %.pn28, %bb.w ], [ %.pn28, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br label %bb.z

.critedge42:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i62 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i62, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge42
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !26 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63: ; preds = %bb.x
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !30
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 32) #44
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64, %.critedge42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  %i.bn = add nuw nsw i64 %.02496, 1              ; 2 uses
  %i.bo = shl i64 %i.d, 1
  %i.bp = or disjoint i64 %i.bo, 1
  %exitcond = icmp eq i64 %i.bn, 20
  br i1 %exitcond, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit85, label %bb.b, !llvm.loop !9424

.critedge38:                                      ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit85

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit85: ; preds = %bb.y, %.critedge38, %_ZN7testing15AssertionResultD2Ev.exit
  ret void

bb.z:                                             ; preds = %_ZN7testing7MessageD2Ev.exit48, %_ZN7testing7MessageD2Ev.exit61
  %.pn28.pn.pn = phi { ptr, i32 } [ %.pn28.pn, %_ZN7testing7MessageD2Ev.exit61 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit48 ]
  resume { ptr, i32 } %.pn28.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_130HashtableDataTest_RawData_TestISt17integral_constantINS4_28HashtableCapacityStorageModeELS8_1EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_130HashtableDataTest_RawData_TestISt17integral_constantINS4_28HashtableCapacityStorageModeELS8_1EEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #47 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_130HashtableDataTest_RawData_TestISt17integral_constantINS1_28HashtableCapacityStorageModeELS5_1EEEE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #44
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_130HashtableDataTest_RawData_TestISt17integral_constantINS1_28HashtableCapacityStorageModeELS5_1EEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #43
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_130HashtableDataTest_RawData_TestISt17integral_constantINS1_28HashtableCapacityStorageModeELS5_1EEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store i64 0, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.p
  %.02495 = phi i64 [ 0, %bb.a ], [ %i.aj, %bb.p ]
  %i.d = phi i64 [ 0, %bb.a ], [ %i.am, %bb.p ]   ; 2 uses
  %i.e = add i64 %i.d, 1                          ; 2 uses
  %i.f = icmp ne i64 %i.e, 0
  call void @llvm.assume(i1 %i.f)
  %4 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.e, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %notmask.i = shl nsw i64 -1, %4
  %5 = xor i64 %notmask.i, -1                     ; 2 uses
  store i64 %5, ptr %i.b, align 8, !tbaa !52
  %i.g = icmp eq i64 %i.d, %5
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
  br label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.732, ptr noundef nonnull @.str.617, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  %i.h = load i8, ptr %1, align 8, !tbaa !3822, !range !3831, !noundef !3832
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.critedge42, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !3833 ; 2 uses
  %.not.i.i54 = icmp eq ptr %i.j, null
  br i1 %.not.i.i54, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.g, %bb.f
  %i.l = phi ptr [ %i.k, %bb.g ], [ @.str.31, %bb.f ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 412, ptr noundef %i.l)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  %i.m = load ptr, ptr %2, align 8, !tbaa !120    ; 3 uses
  %.not.i.i55 = icmp eq ptr %i.m, null
  br i1 %.not.i.i55, label %_ZN7testing7MessageD2Ev.exit57, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56: ; preds = %bb.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(128) %i.m) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit57

_ZN7testing7MessageD2Ev.exit57:                   ; preds = %bb.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i58 = icmp eq ptr %i.q, null
  br i1 %.not.i.i58, label %bb.q, label %bb.j

bb.j:                                             ; preds = %_ZN7testing7MessageD2Ev.exit57
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !26   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.u = load i64, ptr %i.s, align 8, !tbaa !30
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 32) #44
  br label %bb.q

bb.k:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn28 = phi { ptr, i32 } [ %i.y, %bb.m ], [ %i.x, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  %i.z = load ptr, ptr %2, align 8, !tbaa !120    ; 3 uses
  %.not.i.i59 = icmp eq ptr %i.z, null
  br i1 %.not.i.i59, label %bb.r, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60: ; preds = %bb.n
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(128) %i.z) #43, !inline_history !3834
  br label %bb.r

.critedge42:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i62 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i62, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.critedge42
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63: ; preds = %bb.o
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !30
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 32) #44
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i64, %.critedge42
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  %i.aj = add nuw nsw i64 %.02495, 1              ; 2 uses
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !52
  %i.al = shl i64 %i.ak, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  store i64 %i.am, ptr %i.a, align 8, !tbaa !52
  %exitcond = icmp eq i64 %i.aj, 20
  br i1 %exitcond, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit85, label %bb.b, !llvm.loop !9425

bb.q:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit57
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit85

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit85: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret void

bb.r:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60, %bb.n, %bb.k
  %.pn28.pn = phi { ptr, i32 } [ %i.w, %bb.k ], [ %.pn28, %bb.n ], [ %.pn28, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i60 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  resume { ptr, i32 } %.pn28.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_150HashtableDataTest_HashtableInlineDataCapacity_TestISt17integral_constantINS4_28HashtableCapacityStorageModeELS8_0EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_150HashtableDataTest_HashtableInlineDataCapacity_TestISt17integral_constantINS4_28HashtableCapacityStorageModeELS8_0EEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #47 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_150HashtableDataTest_HashtableInlineDataCapacity_TestISt17integral_constantINS1_28HashtableCapacityStorageModeELS5_0EEEE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #44
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_150HashtableDataTest_HashtableInlineDataCapacity_TestISt17integral_constantINS1_28HashtableCapacityStorageModeELS5_0EEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #43
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_150HashtableDataTest_HashtableInlineDataCapacity_TestISt17integral_constantINS1_28HashtableCapacityStorageModeELS5_0EEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_150HashtableDataTest_HashtableInlineDataCapacity_TestISt17integral_constantINS1_28HashtableCapacityStorageModeELS5_1EEE8TestBodyEv:_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
bb.d:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  %i.k = load ptr, ptr %2, align 8, !tbaa !120    ; 3 uses
  %.not.i.i61 = icmp eq ptr %i.k, null
  br i1 %.not.i.i61, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.e
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(128) %i.k) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.e, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit64

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.p, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  %i.r = load ptr, ptr %2, align 8, !tbaa !120    ; 3 uses
  %.not.i.i62 = icmp eq ptr %i.r, null
  br i1 %.not.i.i62, label %_ZN7testing7MessageD2Ev.exit64, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63: ; preds = %bb.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(128) %i.r) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit64

_ZN7testing7MessageD2Ev.exit64:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63, %bb.i, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.o, %bb.f ], [ %.pn, %bb.i ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  br label %bb.be

bb.j:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i65 = icmp eq ptr %i.w, null
  br i1 %.not.i.i65, label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit66, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !30
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit66

_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit66: ; preds = %bb.j, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
  %i.ac = load i8, ptr %4, align 8, !tbaa !3822, !range !3831, !noundef !3832
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.u, label %bb.l

bb.l:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit66
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3833 ; 2 uses
  %.not.i.i67 = icmp eq ptr %i.af, null
  br i1 %.not.i.i67, label %_ZNK7testing15AssertionResult15failure_messageEv.exit68, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit68

_ZNK7testing15AssertionResult15failure_messageEv.exit68: ; preds = %bb.n, %bb.m
  %i.ah = phi ptr [ %i.ag, %bb.n ], [ @.str.31, %bb.m ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 426, ptr noundef %i.ah)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit68
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  %i.ai = load ptr, ptr %5, align 8, !tbaa !120   ; 3 uses
  %.not.i.i69 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i69, label %_ZN7testing7MessageD2Ev.exit71, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70: ; preds = %bb.p
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(128) %i.ai) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit71

_ZN7testing7MessageD2Ev.exit71:                   ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %bb.u

bb.q:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit74

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit68
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #43
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn36 = phi { ptr, i32 } [ %i.ao, %bb.s ], [ %i.an, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  %i.ap = load ptr, ptr %5, align 8, !tbaa !120   ; 3 uses
  %.not.i.i72 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i72, label %_ZN7testing7MessageD2Ev.exit74, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73: ; preds = %bb.t
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit74

_ZN7testing7MessageD2Ev.exit74:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73, %bb.t, %bb.q
  %.pn36.pn = phi { ptr, i32 } [ %i.am, %bb.q ], [ %.pn36, %bb.t ], [ %.pn36, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i73 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  br label %bb.be

bb.u:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit66, %_ZN7testing7MessageD2Ev.exit71
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i75 = icmp eq ptr %i.au, null
  br i1 %.not.i.i75, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !26 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i76: ; preds = %bb.v
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !30
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i77

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i77: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i76
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef 32) #44
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i77, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store i64 0, ptr %i.a, align 8, !tbaa !52
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br label %bb.w

bb.w:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, %bb.ak
  %.033169 = phi i64 [ 0, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit ], [ %i.cg, %bb.ak ]
  %storemerge168 = phi i64 [ 0, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit ], [ %i.cj, %bb.ak ] ; 2 uses
  %i.bb = add i64 %storemerge168, 1               ; 2 uses
  %i.bc = icmp ne i64 %i.bb, 0
  call void @llvm.assume(i1 %i.bc)
  %13 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bb, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %notmask.i89 = shl nsw i64 -1, %13
  %14 = xor i64 %notmask.i89, -1                  ; 2 uses
  store i64 %14, ptr %i.b, align 8, !tbaa !52
  %i.bd = icmp eq i64 %storemerge168, %14
  br i1 %i.bd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
  br label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

bb.y:                                             ; preds = %bb.w
  call void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.743, ptr noundef nonnull @.str.617, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  %i.be = load i8, ptr %7, align 8, !tbaa !3822, !range !3831, !noundef !3832
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.critedge, label %bb.z

bb.z:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #43
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !3833 ; 2 uses
  %.not.i.i90 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i90, label %_ZNK7testing15AssertionResult15failure_messageEv.exit91, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit91

_ZNK7testing15AssertionResult15failure_messageEv.exit91: ; preds = %bb.ab, %bb.aa
  %i.bi = phi ptr [ %i.bh, %bb.ab ], [ @.str.31, %bb.aa ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 431, ptr noundef %i.bi)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit91
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  %i.bj = load ptr, ptr %8, align 8, !tbaa !120   ; 3 uses
  %.not.i.i92 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i92, label %_ZN7testing7MessageD2Ev.exit94, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93: ; preds = %bb.ad
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(128) %i.bj) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit94

_ZN7testing7MessageD2Ev.exit94:                   ; preds = %bb.ad, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i95 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i95, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %_ZN7testing7MessageD2Ev.exit94
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !26 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96: ; preds = %bb.ae
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !30
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 32) #44
  br label %bb.al

bb.af:                                            ; preds = %bb.z
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit102

bb.ag:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit91
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ac
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #43
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn43 = phi { ptr, i32 } [ %i.bv, %bb.ah ], [ %i.bu, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  %i.bw = load ptr, ptr %8, align 8, !tbaa !120   ; 3 uses
  %.not.i.i100 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i100, label %_ZN7testing7MessageD2Ev.exit102, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101: ; preds = %bb.ai
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !9
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(128) %i.bw) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit102

_ZN7testing7MessageD2Ev.exit102:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101, %bb.ai, %bb.af
  %.pn43.pn = phi { ptr, i32 } [ %i.bt, %bb.af ], [ %.pn43, %bb.ai ], [ %.pn43, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.be

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.ca = load ptr, ptr %i.ba, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i103 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i103, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.critedge
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !26 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i104: ; preds = %bb.aj
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !30
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i104
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef 32) #44
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %i.cg = add nuw nsw i64 %.033169, 1             ; 2 uses
  %i.ch = load i64, ptr %i.a, align 8, !tbaa !52
  %i.ci = shl i64 %i.ch, 1
  %i.cj = or disjoint i64 %i.ci, 1                ; 2 uses
  store i64 %i.cj, ptr %i.a, align 8, !tbaa !52
  %exitcond = icmp eq i64 %i.cg, 20
  br i1 %exitcond, label %bb.am, label %bb.w, !llvm.loop !9428

bb.al:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97, %_ZN7testing7MessageD2Ev.exit94
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.bd

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  store i64 0, ptr %i.c, align 8, !tbaa !52
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.bb
  %.028172 = phi i64 [ 0, %bb.am ], [ %i.dq, %bb.bb ]
  %storemerge46171 = phi i64 [ 0, %bb.am ], [ %i.dt, %bb.bb ] ; 2 uses
  %i.cl = add i64 %storemerge46171, 1             ; 2 uses
  %i.cm = icmp ne i64 %i.cl, 0
  call void @llvm.assume(i1 %i.cm)
  %15 = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cl, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #43
  %notmask.i108 = shl nsw i64 -1, %15
  %16 = xor i64 %notmask.i108, -1                 ; 2 uses
  store i64 %16, ptr %i.d, align 8, !tbaa !52
  %i.cn = icmp eq i64 %storemerge46171, %16
  br i1 %i.cn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
  br label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit109

bb.ap:                                            ; preds = %bb.an
  call void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.743, ptr noundef nonnull @.str.617, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit109

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit109: ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  %i.co = load i8, ptr %10, align 8, !tbaa !3822, !range !3831, !noundef !3832
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %.critedge58, label %bb.aq

bb.aq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit109
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ar unwind label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #43
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !3833 ; 2 uses
  %.not.i.i110 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i110, label %_ZNK7testing15AssertionResult15failure_messageEv.exit111, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit111

_ZNK7testing15AssertionResult15failure_messageEv.exit111: ; preds = %bb.as, %bb.ar
  %i.cs = phi ptr [ %i.cr, %bb.as ], [ @.str.31, %bb.ar ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 437, ptr noundef %i.cs)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit111
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %bb.at
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #43
  %i.ct = load ptr, ptr %11, align 8, !tbaa !120  ; 3 uses
  %.not.i.i112 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i112, label %_ZN7testing7MessageD2Ev.exit114, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113: ; preds = %bb.au
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !9
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(128) %i.ct) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit114

_ZN7testing7MessageD2Ev.exit114:                  ; preds = %bb.au, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #43
  %i.cx = load ptr, ptr %i.ck, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i115 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i115, label %bb.bc, label %bb.av

bb.av:                                            ; preds = %_ZN7testing7MessageD2Ev.exit114
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !26 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i116: ; preds = %bb.av
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !30
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i116
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 32) #44
  br label %bb.bc

bb.aw:                                            ; preds = %bb.aq
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit122

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit111
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.at
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #43
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn47 = phi { ptr, i32 } [ %i.df, %bb.ay ], [ %i.de, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #43
  %i.dg = load ptr, ptr %11, align 8, !tbaa !120  ; 3 uses
  %.not.i.i120 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i120, label %_ZN7testing7MessageD2Ev.exit122, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121: ; preds = %bb.az
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !9
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(128) %i.dg) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit122

_ZN7testing7MessageD2Ev.exit122:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121, %bb.az, %bb.aw
  %.pn47.pn = phi { ptr, i32 } [ %i.dd, %bb.aw ], [ %.pn47, %bb.az ], [ %.pn47, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  br label %bb.be

.critedge58:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit109
  %i.dk = load ptr, ptr %i.ck, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i123 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i123, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.critedge58
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !26 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124: ; preds = %bb.ba
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !30
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef 32) #44
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125, %.critedge58
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  %i.dq = add nuw nsw i64 %.028172, 1             ; 2 uses
  %i.dr = load i64, ptr %i.c, align 8, !tbaa !52
  %i.ds = shl i64 %i.dr, 1
  %i.dt = or disjoint i64 %i.ds, 1                ; 2 uses
  store i64 %i.dt, ptr %i.c, align 8, !tbaa !52
  %exitcond174 = icmp eq i64 %i.dq, 20
  br i1 %exitcond174, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit146, label %bb.an, !llvm.loop !9429

bb.bc:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117, %_ZN7testing7MessageD2Ev.exit114
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  br label %bb.bd

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit146: ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.al, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit146
  ret void

bb.be:                                            ; preds = %_ZN7testing7MessageD2Ev.exit122, %_ZN7testing7MessageD2Ev.exit102, %_ZN7testing7MessageD2Ev.exit74, %_ZN7testing7MessageD2Ev.exit64
  %.pn50.pn.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %_ZN7testing7MessageD2Ev.exit74 ], [ %.pn47.pn, %_ZN7testing7MessageD2Ev.exit122 ], [ %.pn43.pn, %_ZN7testing7MessageD2Ev.exit102 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit64 ]
  resume { ptr, i32 } %.pn50.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_146HashtableDataTest_HashtableInlineDataSize_TestISt17integral_constantINS4_28HashtableCapacityStorageModeELS8_0EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_146HashtableDataTest_HashtableInlineDataSize_TestISt17integral_constantINS4_28HashtableCapacityStorageModeELS8_0EEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #47 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_146HashtableDataTest_HashtableInlineDataSize_TestISt17integral_constantINS1_28HashtableCapacityStorageModeELS5_0EEEE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #44
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_146HashtableDataTest_HashtableInlineDataSize_TestISt17integral_constantINS1_28HashtableCapacityStorageModeELS5_0EEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #43
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_146HashtableDataTest_HashtableInlineDataSize_TestISt17integral_constantINS1_28HashtableCapacityStorageModeELS5_0EEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit:
end_hunk_3
