Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_fastscan_perf?download=true
inline.NumInlined: 1468
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7testing13PrintToStringINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #22
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE5PrintERKS6_PSo.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8, !tbaa !13
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8, !tbaa !13
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ab, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !27
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #22
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ab, align 8, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #21
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !13
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.al = getelementptr i8, ptr %i.aj, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %2, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !134
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ap) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6chronolsIcSt11char_traitsIcElSt5ratioILl1ELl1000000000EEEERSt13basic_ostreamIT_T0_ES9_RKNS_8durationIT1_T2_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #13 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 28 uses
  %3 = alloca %"class.std::locale", align 8       ; 2 uses
  %4 = alloca %"class.std::locale", align 8       ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = load ptr, ptr %2, align 8, !tbaa !13
  %i.b = getelementptr i8, ptr %i.a, i64 -24      ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.e = load ptr, ptr %0, align 8, !tbaa !13
  %i.f = getelementptr i8, ptr %i.e, i64 -24      ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !140
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.j, ptr %i.k, align 8, !tbaa !140
  %i.l = load i64, ptr %i.b, align 8
  %i.m = getelementptr inbounds i8, ptr %2, i64 %i.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.n = load i64, ptr %i.f, align 8
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.p) #21
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %3, ptr noundef nonnull align 8 dereferenceable(264) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #21
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.q = load ptr, ptr %2, align 8, !tbaa !13
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %2, i64 %i.s
  %i.u = load ptr, ptr %0, align 8, !tbaa !13
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !141
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !141
  %i.ab = load i64, ptr %1, align 8, !tbaa !143
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.ab)
          to label %_ZNSolsEl.exit unwind label %bb.h ; 0 uses

_ZNSolsEl.exit:                                   ; preds = %bb.b
  %i.ad = load ptr, ptr %2, align 8, !tbaa !13
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %2, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 232
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !150 ; 7 uses
  %.not.i = icmp eq ptr %i.ai, null
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  br i1 %.not.i, label %_ZNSt6chrono8__detail18__fmt_units_suffixISt5ratioILl1ELl1000000000EEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEEET1_S8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSolsEl.exit
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !54 ; 2 uses
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !151
  %i.an = icmp ult ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt19ostreambuf_iteratorIcSt11char_traitsIcEEaSEc.exit.i.thread25.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc.exit.i.i.i, !prof !11

_ZNSt19ostreambuf_iteratorIcSt11char_traitsIcEEaSEc.exit.i.thread25.i: ; preds = %bb.c
  store i8 110, ptr %i.al, align 1, !tbaa !27
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 2 uses
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !54
  br label %bb.d

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc.exit.i.i.i: ; preds = %bb.c
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef i32 %i.as(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i32 noundef 110)
          to label %_ZNSt19ostreambuf_iteratorIcSt11char_traitsIcEEaSEc.exit.i.i unwind label %bb.e, !inline_history !135

_ZNSt19ostreambuf_iteratorIcSt11char_traitsIcEEaSEc.exit.i.i: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc.exit.i.i.i
  %i.au = icmp eq i32 %i.at, -1
  br i1 %i.au, label %_ZNSt6chrono8__detail18__fmt_units_suffixISt5ratioILl1ELl1000000000EEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEEET1_S8_.exit, label %_ZNSt19ostreambuf_iteratorIcSt11char_traitsIcEEaSEc.exit.i.i._crit_edge

_ZNSt19ostreambuf_iteratorIcSt11char_traitsIcEEaSEc.exit.i.i._crit_edge: ; preds = %_ZNSt19ostreambuf_iteratorIcSt11char_traitsIcEEaSEc.exit.i.i
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt19ostreambuf_iteratorIcSt11char_traitsIcEEaSEc.exit.i.i._crit_edge, %_ZNSt19ostreambuf_iteratorIcSt11char_traitsIcEEaSEc.exit.i.thread25.i
  %i.av = phi ptr [ %.pre, %_ZNSt19ostreambuf_iteratorIcSt11char_traitsIcEEaSEc.exit.i.i._crit_edge ], [ %i.ap, %_ZNSt19ostreambuf_iteratorIcSt11char_traitsIcEEaSEc.exit.i.thread25.i ] ; 2 uses
  %i.aw = load ptr, ptr %i.ak, align 8, !tbaa !151
  %i.ax = icmp ult ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc.exit.thread.i.i.1.i, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc.exit.i.i.1.i, !prof !11

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc.exit.i.i.1.i: ; preds = %bb.d
  %i.ay = load ptr, ptr %i.ai, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i32 noundef 115)
          to label %_ZNSt6chrono8__detail18__fmt_units_suffixISt5ratioILl1ELl1000000000EEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEEET1_S8_.exit unwind label %bb.e, !inline_history !135 ; 0 uses

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc.exit.thread.i.i.1.i: ; preds = %bb.d
  store i8 115, ptr %i.av, align 1, !tbaa !27
  %i.bc = load ptr, ptr %i.aj, align 8, !tbaa !54
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store ptr %i.bd, ptr %i.aj, align 8, !tbaa !54
  br label %_ZNSt6chrono8__detail18__fmt_units_suffixISt5ratioILl1ELl1000000000EEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEEET1_S8_.exit

bb.e:                                             ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc.exit.i.i.1.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc.exit.i.i.i
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #24
  unreachable

_ZNSt6chrono8__detail18__fmt_units_suffixISt5ratioILl1ELl1000000000EEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEEET1_S8_.exit: ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc.exit.i.i.1.i, %_ZNSolsEl.exit, %_ZNSt19ostreambuf_iteratorIcSt11char_traitsIcEEaSEc.exit.i.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc.exit.thread.i.i.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !54, !noalias !154 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %_ZNSt6chrono8__detail18__fmt_units_suffixISt5ratioILl1ELl1000000000EEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEEET1_S8_.exit
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %7 = load ptr, ptr %6, align 8, !tbaa !155, !noalias !154 ; 2 uses
  %8 = icmp ugt ptr %i.bi, %7
  %.08.i9.i.i = select i1 %8, ptr %i.bi, ptr %7   ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !55, !noalias !154
  %i.bm = ptrtoint ptr %.08.i9.i.i to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !51, !noalias !154
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !24, !noalias !154
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1, !tbaa !27, !noalias !154
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %_ZNSt6chrono8__detail18__fmt_units_suffixISt5ratioILl1ELl1000000000EEcSt19ostreambuf_iteratorIcSt11char_traitsIcEEEET1_S8_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.bt, ptr %5, align 8, !tbaa !52, !alias.scope !154
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !24, !noalias !154 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !51, !noalias !154 ; 3 uses
  %i.bz = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.bz)
  %i.ca = add nuw nsw i64 %i.by, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bt, ptr noundef nonnull align 8 dereferenceable(1) %i.bv, i64 %i.ca, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.bu, ptr %5, align 8, !tbaa !24, !alias.scope !154
  %i.cb = load i64, ptr %i.bv, align 8, !tbaa !27, !noalias !154
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !27, !alias.scope !154
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !51, !noalias !154
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %i.cc = phi i64 [ %i.by, %bb.f ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.cc, ptr %i.ce, align 8, !tbaa !51, !alias.scope !154
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !24, !noalias !154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cd, i8 0, i64 9, i1 false), !noalias !154
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.bg, ptr noundef nonnull %i.bv, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cg = load ptr, ptr %5, align 8, !tbaa !24, !alias.scope !154 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bt
  br i1 %i.ch, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ci = load ptr, ptr %5, align 8, !tbaa !24
  %i.cj = load i64, ptr %i.ce, align 8, !tbaa !51
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ci, i64 noundef %i.cj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cl = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bt
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.cn = load i64, ptr %i.bt, align 8, !tbaa !27
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.cp = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cp, ptr %2, align 8, !tbaa !13
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cr = getelementptr i8, ptr %i.cp, i64 -24
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds i8, ptr %2, i64 %i.cs
  store ptr %i.cq, ptr %i.ct, align 8, !tbaa !13
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bg, align 8, !tbaa !13
  %i.cu = load ptr, ptr %i.bs, align 8, !tbaa !24 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.bv
  br i1 %i.cv, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cw = load i64, ptr %i.bv, align 8, !tbaa !27
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #22
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bg, align 8, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cy) #21
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cz) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret ptr %0

bb.h:                                             ; preds = %bb.b
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.k

bb.j:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.bt
  br i1 %i.de, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.j, %bb.g
  %.sink = phi ptr [ %i.cg, %bb.g ], [ %i.dd, %bb.j ]
  %.pn.ph = phi { ptr, i32 } [ %i.cf, %bb.g ], [ %i.dc, %bb.j ]
  %i.df = load i64, ptr %i.bt, align 8, !tbaa !27
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.dg) #22
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.j, %bb.g
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.g ], [ %i.dc, %bb.j ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.k

bb.k:                                             ; preds = %.body, %bb.i, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.da, %bb.h ], [ %i.db, %bb.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind writable sret(%"class.std::locale") align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1 align 2

; Function Attrs: nounwind
declare void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !51   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #25
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !24     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !11

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g
end_hunk_0
