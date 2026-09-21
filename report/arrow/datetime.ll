Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/datetime?download=true
inline.NumInlined: 2499
inline.NumDeleted: 992
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt12system_errorC2ESt10error_codePKc:bb.a
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.s
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.i
  %i.ax = load i64, ptr %i.s, align 8, !tbaa !40
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.h
  %.pn = phi { ptr, i32 } [ %i.at, %bb.h ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.au, %bb.i ] ; 2 uses
  %i.az = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.e
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.bb = load i64, ptr %i.e, align 8, !tbaa !40
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.as, %bb.g ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ]
  %i.bd = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !40
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN14arrow_vendored4datelsIcSt11char_traitsIcEEERSt13basic_ostreamIT_T0_ES8_RKNS0_14year_month_dayE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 2 dereferenceable(4) %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.arrow_vendored::date::detail::save_ostream", align 8 ; 8 uses
  %3 = alloca %"class.std::locale", align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.c = load ptr, ptr %0, align 8, !tbaa !61
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(264) %i.f)
  %i.g = load ptr, ptr %0, align 8, !tbaa !61     ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %0, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 225 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !144, !range !83, !noundef !84
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !119  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.c
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load i8, ptr %i.p, align 8, !tbaa !125
  %.not.i1.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i1.i.i.i, label %bb.d, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.o)
          to label %.noexc18 unwind label %bb.r

.noexc18:                                         ; preds = %bb.d
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef signext i8 %i.t(ptr noundef nonnull align 8 dereferenceable(570) %i.o, i8 noundef signext 32)
          to label %.noexc18._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge unwind label %bb.r, !inline_history !6 ; 0 uses

.noexc18._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge: ; preds = %.noexc18
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !61
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i: ; preds = %.noexc18._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
  %.pre = phi ptr [ %.pre.pre, %.noexc18._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i_crit_edge ], [ %i.g, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i ]
  store i8 1, ptr %i.k, align 1, !tbaa !144
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
  %i.v = phi ptr [ %i.g, %bb.a ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  store i8 48, ptr %i.w, align 8, !tbaa !145
  %i.x = getelementptr i8, ptr %i.v, i64 -24      ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i32 130, ptr %i.aa, align 8, !tbaa !146
  %i.ab = load i64, ptr %i.x, align 8
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ab
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %3, ptr noundef nonnull align 8 dereferenceable(264) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #30
  %.sroa.0.0.copyload.i = load i16, ptr %1, align 2, !tbaa !405
  %i.ae = sext i16 %.sroa.0.0.copyload.i to i32
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ae)
          to label %bb.g unwind label %bb.s       ; 4 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 45, ptr %i.b, align 1, !tbaa !40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !104
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.j unwind label %bb.s       ; 0 uses

bb.i:                                             ; preds = %bb.g
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i8 noundef signext 45)
          to label %bb.j unwind label %bb.s       ; 0 uses

bb.j:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = load ptr, ptr %0, align 8, !tbaa !61
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds i8, ptr %0, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 2, ptr %i.as, align 8, !tbaa !104
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %.sroa.0.0.copyload.i22 = load i8, ptr %i.at, align 2, !tbaa !40
  %i.au = zext i8 %.sroa.0.0.copyload.i22 to i64
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.au)
          to label %_ZNSolsEj.exit unwind label %bb.t ; 4 uses

_ZNSolsEj.exit:                                   ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 45, ptr %i.a, align 1, !tbaa !40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !61
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %i.av, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !104
  %.not.i24 = icmp eq i64 %i.bb, 0
  br i1 %.not.i24, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSolsEj.exit
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.m unwind label %bb.t       ; 0 uses

bb.l:                                             ; preds = %_ZNSolsEj.exit
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.av, i8 noundef signext 45)
          to label %bb.m unwind label %bb.t       ; 0 uses

bb.m:                                             ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.be = load ptr, ptr %0, align 8, !tbaa !61
  %i.bf = getelementptr i8, ptr %i.be, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %0, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 2, ptr %i.bi, align 8, !tbaa !104
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %.sroa.0.0.copyload.i29 = load i8, ptr %i.bj, align 1, !tbaa !40
  %i.bk = zext i8 %.sroa.0.0.copyload.i29 to i64
  %i.bl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.bk)
          to label %_ZNSolsEj.exit31 unwind label %bb.u ; 0 uses

_ZNSolsEj.exit31:                                 ; preds = %bb.m
  %i.bm = load i16, ptr %1, align 2, !tbaa !407   ; 4 uses
  %.not.i32 = icmp eq i16 %i.bm, -32768
  br i1 %.not.i32, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZNSolsEj.exit31
  %i.bn = load i8, ptr %i.at, align 2, !tbaa !409 ; 3 uses
  %i.bo = add i8 %i.bn, -1
  %spec.select.i.i = icmp ult i8 %i.bo, 12
  br i1 %spec.select.i.i, label %bb.o, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bp = load i8, ptr %i.bj, align 1, !tbaa !411 ; 2 uses
  %.not8.i = icmp eq i8 %i.bp, 0
  br i1 %.not8.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not.i.i = icmp eq i8 %i.bn, 2
  %i.bq = and i16 %i.bm, 3
  %i.br = icmp eq i16 %i.bq, 0
  %or.cond.i = and i1 %i.br, %.not.i.i
  br i1 %or.cond.i, label %bb.q, label %.thread.i.i

bb.q:                                             ; preds = %bb.p
  %4 = srem i16 %i.bm, 100
  %.not.i.i.i = icmp ne i16 %4, 0
  %5 = srem i16 %i.bm, 400
  %6 = icmp eq i16 %5, 0
  %or.cond.i.i = or i1 %.not.i.i.i, %6
  br i1 %or.cond.i.i, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.q, %bb.p
  %i.bs = zext nneg i8 %i.bn to i64
  %i.bt = getelementptr i8, ptr @__const._ZNK14arrow_vendored4date19year_month_day_last3dayEv.d, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 -1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !40
  br label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit: ; preds = %bb.q, %.thread.i.i
  %.sroa.03.0.i.i = phi i8 [ %i.bv, %.thread.i.i ], [ 29, %bb.q ]
  %.not = icmp ult i8 %.sroa.03.0.i.i, %i.bp
  br i1 %.not, label %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread: ; preds = %bb.o, %bb.n, %_ZNSolsEj.exit31, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.62, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, %.noexc18, %bb.d, %bb.c, %bb.e, %._crit_edge.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.s:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.t:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.m
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZNK14arrow_vendored4date14year_month_day2okEv.exit.thread, %_ZNK14arrow_vendored4date14year_month_day2okEv.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !149
  %i.cd = and i32 %i.cc, 8192
  %.not.i35 = icmp eq i32 %i.cd, 0
  br i1 %.not.i35, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ce = call noundef i32 @_ZSt19uncaught_exceptionsv() #33
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.w, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.cg = load ptr, ptr %2, align 8, !tbaa !150, !nonnull !84, !align !151 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !71
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.x, label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit

bb.x:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 232
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !152 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !61
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = invoke noundef i32 %i.co(ptr noundef nonnull align 8 dereferenceable(64) %i.cl)
          to label %_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit unwind label %bb.y, !inline_history !7 ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #29
  unreachable

_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.v, %bb.w, %bb.x
  call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret ptr %0

bb.z:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.r ], [ %i.ca, %bb.u ], [ %i.bz, %bb.t ], [ %i.by, %bb.s ]
  call void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind writable sret(%"class.std::locale") align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6detail12save_ostreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !149
  %i.c = and i32 %i.b, 8192
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZSt19uncaught_exceptionsv() #33
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !150, !nonnull !84, !align !151 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !71
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !152  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit unwind label %bb.e, !inline_history !7 ; 0 uses

_ZNSt15basic_streambufIcSt11char_traitsIcEE7pubsyncEv.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #30
  ret void

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN14arrow_vendored4date6detail12save_istreamIcSt11char_traitsIcEEC2ERSt9basic_iosIcS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(264) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !413
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 225 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !144, !range !83, !noundef !84
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !145
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !119  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #31
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load i8, ptr %i.g, align 8, !tbaa !125
  %.not.i1.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 89
  %i.j = load i8, ptr %i.i, align 1, !tbaa !40
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.f)
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef signext i8 %i.m(ptr noundef nonnull align 8 dereferenceable(570) %i.f, i8 noundef signext 32), !inline_history !412
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi i8 [ %i.j, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 224
  store i8 %.0.i.i.i, ptr %i.o, align 8, !tbaa !145
  store i8 1, ptr %i.b, align 1, !tbaa !144
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit: ; preds = %._crit_edge.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.p = phi i8 [ %.pre.i, %._crit_edge.i ], [ %.0.i.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ]
  store i8 %i.p, ptr %i.a, align 8, !tbaa !153
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !146
  store i32 %i.s, ptr %i.q, align 4, !tbaa !149
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load <2 x i64>, ptr %i.u, align 8, !tbaa !74
  store i64 0, ptr %i.v, align 8, !tbaa !104
  store <2 x i64> %i.w, ptr %i.t, align 8, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !154
  store ptr null, ptr %i.y, align 8, !tbaa !154
end_hunk_0
