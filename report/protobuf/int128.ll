inline.NumInlined: 271
inline.NumDeleted: 123
begin_hunk_0_@_ZN4absl12lts_20250512lsERSoNS0_7uint128E:bb.a
  store i8 %.0.i.i.i, ptr %i.ag, align 8, !tbaa !42
  store i8 1, ptr %i.t, align 1, !tbaa !24
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit55.invoke

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.h:                                             ; preds = %.invoke, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit55.invoke, %.noexc53, %bb.r, %bb.n, %.noexc39, %bb.m, %.noexc27, %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.i:                                             ; preds = %bb.b
  %i.aj = and i32 %i.f, 586
  %or.cond = icmp ne i32 %i.aj, 520
  %i.ak = or i64 %2, %1
  %i.al = icmp eq i64 %i.ak, 0
  %or.cond77 = select i1 %or.cond, i1 true, i1 %i.al
  br i1 %or.cond77, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load i64, ptr %i.h, align 8
  %i.an = getelementptr inbounds i8, ptr %0, i64 %i.am ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 225 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !24, !range !32, !noundef !33
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %._crit_edge.i35, label %bb.k

._crit_edge.i35:                                  ; preds = %bb.j
  %.phi.trans.insert.i36 = getelementptr inbounds nuw i8, ptr %i.an, i64 224
  %.pre.i37 = load i8, ptr %.phi.trans.insert.i36, align 8, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit41

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 240
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i30 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i30, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31: ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load i8, ptr %i.at, align 8, !tbaa !35
  %.not.i1.i.i32 = icmp eq i8 %i.au, 0
  br i1 %.not.i1.i.i32, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 89
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !56
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i33

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.as)
          to label %.noexc39 unwind label %bb.h

.noexc39:                                         ; preds = %bb.m
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = invoke noundef signext i8 %i.az(ptr noundef nonnull align 8 dereferenceable(570) %i.as, i8 noundef signext 32)
          to label %.noexc39._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i33_crit_edge unwind label %bb.h, !inline_history !61

.noexc39._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i33_crit_edge: ; preds = %.noexc39
  %.pre.pre = load i64, ptr %i.m, align 8, !tbaa !54
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i33

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i33: ; preds = %.noexc39._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i33_crit_edge, %bb.l
  %.pre = phi i64 [ %i.n, %bb.l ], [ %.pre.pre, %.noexc39._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i33_crit_edge ]
  %.0.i.i.i34 = phi i8 [ %i.aw, %bb.l ], [ %i.ba, %.noexc39._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i33_crit_edge ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 224
  store i8 %.0.i.i.i34, ptr %i.bb, align 8, !tbaa !42
  store i8 1, ptr %i.ao, align 1, !tbaa !24
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit41

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit41: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i33, %._crit_edge.i35
  %i.bc = phi i64 [ %i.n, %._crit_edge.i35 ], [ %.pre, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i33 ] ; 2 uses
  %i.bd = phi i8 [ %.pre.i37, %._crit_edge.i35 ], [ %.0.i.i.i34, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i33 ]
  %i.be = icmp ult i64 %i.bc, 2
  br i1 %i.be, label %bb.n, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit55.invoke

bb.n:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit41
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i64 noundef 2, i64 noundef %i.bc) #12
          to label %.noexc42 unwind label %bb.h

.noexc42:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.b, %bb.i
  %i.bf = load i64, ptr %i.h, align 8
  %i.bg = getelementptr inbounds i8, ptr %0, i64 %i.bf ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 225 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !24, !range !32, !noundef !33
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %._crit_edge.i49, label %bb.p

._crit_edge.i49:                                  ; preds = %bb.o
  %.phi.trans.insert.i50 = getelementptr inbounds nuw i8, ptr %i.bg, i64 224
  %.pre.i51 = load i8, ptr %.phi.trans.insert.i50, align 8, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit55.invoke

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 240
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i44 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i44, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i45

.invoke:                                          ; preds = %bb.d, %bb.p, %bb.k
  invoke void @_ZSt16__throw_bad_castv() #12
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i45: ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !35
  %.not.i1.i.i46 = icmp eq i8 %i.bn, 0
  br i1 %.not.i1.i.i46, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i45
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 89
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !56
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i47

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i45
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bl)
          to label %.noexc53 unwind label %bb.h

.noexc53:                                         ; preds = %bb.r
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef signext i8 %i.bs(ptr noundef nonnull align 8 dereferenceable(570) %i.bl, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i47 unwind label %bb.h, !inline_history !61

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i47: ; preds = %.noexc53, %bb.q
  %.0.i.i.i48 = phi i8 [ %i.bp, %bb.q ], [ %i.bt, %.noexc53 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 224
  store i8 %.0.i.i.i48, ptr %i.bu, align 8, !tbaa !42
  store i8 1, ptr %i.bh, align 1, !tbaa !24
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit55.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit55.invoke: ; preds = %._crit_edge.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %._crit_edge.i49, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i47, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit41
  %i.bv = phi i64 [ 2, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit41 ], [ 0, %._crit_edge.i49 ], [ 0, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i47 ], [ %i.n, %._crit_edge.i ], [ %.pre64, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ]
  %i.bw = phi i8 [ %i.bd, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit41 ], [ %.pre.i51, %._crit_edge.i49 ], [ %.0.i.i.i48, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i47 ], [ %.pre.i, %._crit_edge.i ], [ %.0.i.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ]
  %i.bx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bv, i64 noundef 0, i64 noundef %i.p, i8 noundef signext %i.bw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit55.invoke, %bb.a
  %i.by = load ptr, ptr %3, align 8, !tbaa !60
  %i.bz = load i64, ptr %i.m, align 8, !tbaa !54
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.by, i64 noundef %i.bz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  %i.cb = load ptr, ptr %3, align 8, !tbaa !60    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !56
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret ptr %i.ca

bb.s:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.ai, %bb.h ]
  %i.cg = load ptr, ptr %3, align 8, !tbaa !60    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.s
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !56
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define void @_ZNK4absl12lts_202505126int1288ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !54
  store i8 0, ptr %i.a, align 8, !tbaa !56
  %.sroa.02.0.copyload = load i128, ptr %1, align 16, !tbaa !62 ; 2 uses
  %i.c = icmp slt i128 %.sroa.02.0.copyload, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 1)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ; 0 uses

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.pre = load i128, ptr %1, align 16, !tbaa !62
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.b
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0.copyload = phi i128 [ %.sroa.0.0.copyload.pre, %bb.c ], [ %.sroa.02.0.copyload, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %.sroa.06.0.v.i = tail call i128 @llvm.abs.i128(i128 %.sroa.0.0.copyload, i1 false) ; 2 uses
  %i.e = trunc i128 %.sroa.06.0.v.i to i64
  %i.f = lshr i128 %.sroa.06.0.v.i, 64
  %i.g = trunc nuw i128 %i.f to i64
  invoke fastcc void @_ZN4absl12lts_2025051212_GLOBAL__N_124Uint128ToFormattedStringB5cxx11ENS0_7uint128ESt13_Ios_Fmtflags(ptr dead_on_unwind noalias nonnull writable align 8 %2, i64 %i.e, i64 %i.g, i32 noundef 2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !54   ; 2 uses
  %i.j = load i64, ptr %i.b, align 8, !tbaa !54
  %i.k = sub i64 4611686018427387903, %i.j
  %i.l = icmp ult i64 %i.k, %i.i
  br i1 %i.l, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #12
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.e
  %i.m = load ptr, ptr %2, align 8, !tbaa !60
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %i.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %bb.h ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.o = load ptr, ptr %2, align 8, !tbaa !60     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !56
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void

bb.g:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !60     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.h
  %i.y = load i64, ptr %i.w, align 8, !tbaa !56
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %bb.g
  %.pn = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ], [ %i.u, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ], [ %3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit ]
  %i.aa = load ptr, ptr %0, align 8, !tbaa !60    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.a
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.i
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !56
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20250512lsERSoNS0_6int128E(ptr noundef nonnull align 8 dereferenceable(8) %0, i128 %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !11   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 0, ptr %i.h, align 8, !tbaa !54
  store i8 0, ptr %i.g, align 8, !tbaa !56
  %i.i = and i32 %i.f, 74
  switch i32 %i.i, label %bb.f [
    i32 2, label %.thread
    i32 0, label %.thread
  ]

.thread:                                          ; preds = %bb.a, %bb.a
  %i.j = icmp slt i128 %1, 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.c:                                             ; preds = %.thread
  %i.l = and i32 %i.f, 2048
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %4 = phi ptr [ @.str.1, %bb.c ], [ @.str, %.thread ]
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %4, i64 noundef 1)
          to label %bb.e unwind label %bb.b       ; 0 uses

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %.sroa.06.0.v.i = call i128 @llvm.abs.i128(i128 %1, i1 false) ; 2 uses
  %.sroa.06.0.i = trunc i128 %.sroa.06.0.v.i to i64
  %.sroa.3.0.v.i = lshr i128 %.sroa.06.0.v.i, 64
  %.sroa.3.0.i = trunc nuw i128 %.sroa.3.0.v.i to i64
  %.pre = load ptr, ptr %0, align 8, !tbaa !9
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre105 = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert106 = getelementptr inbounds i8, ptr %0, i64 %.pre105
  %.phi.trans.insert107 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert106, i64 24
  %.pre108 = load i32, ptr %.phi.trans.insert107, align 8, !tbaa !11
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.n = trunc i128 %1 to i64
  %i.o = lshr i128 %1, 64
  %i.p = trunc nuw i128 %i.o to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %5 = phi i32 [ %.pre108, %bb.e ], [ %i.f, %bb.f ]
  %6 = phi i1 [ true, %bb.e ], [ false, %bb.f ]
  %.sroa.0102.0 = phi i64 [ %.sroa.06.0.i, %bb.e ], [ %i.n, %bb.f ]
  %.sroa.3.0 = phi i64 [ %.sroa.3.0.i, %bb.e ], [ %i.p, %bb.f ]
  invoke fastcc void @_ZN4absl12lts_2025051212_GLOBAL__N_124Uint128ToFormattedStringB5cxx11ENS0_7uint128ESt13_Ios_Fmtflags(ptr dead_on_unwind noalias nonnull writable align 8 %3, i64 %.sroa.0102.0, i64 %.sroa.3.0, i32 noundef %5)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !54   ; 2 uses
  %i.s = load i64, ptr %i.h, align 8, !tbaa !54
  %i.t = sub i64 4611686018427387903, %i.s
  %i.u = icmp ult i64 %i.t, %i.r
  br i1 %i.u, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #12
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i: ; preds = %bb.h
  %i.v = load ptr, ptr %3, align 8, !tbaa !60
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.v, i64 noundef %i.r)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit unwind label %bb.l ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i
  %i.x = load ptr, ptr %3, align 8, !tbaa !60     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !56
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.ac = load ptr, ptr %0, align 8, !tbaa !9
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24    ; 5 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !43 ; 2 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !43
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !54  ; 6 uses
  %i.aj = icmp ugt i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = sub nuw i64 %i.ah, %i.ai                ; 2 uses
  %i.al = trunc i32 %i.f to i8
  %trunc = and i8 %i.al, -80
  switch i8 %trunc, label %bb.ag [
    i8 32, label %bb.o
    i8 16, label %bb.s
  ]

bb.k:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i, %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !60    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.l
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !56
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %bb.k
  %.pn = phi { ptr, i32 } [ %i.am, %bb.k ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.an, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.ak

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.n:                                             ; preds = %.invoke, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit91.invoke, %.noexc89, %bb.aj, %.noexc74, %bb.af, %bb.y, %.noexc60, %bb.x, %.noexc48, %bb.r, %bb.ab, %bb.aa
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.o:                                             ; preds = %bb.j
  %i.av = load i64, ptr %i.ad, align 8
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 225 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !24, !range !32, !noundef !33
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %._crit_edge.i, label %bb.p

._crit_edge.i:                                    ; preds = %bb.o
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 224
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit91.invoke

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 240
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !35
  %.not.i1.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i1.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 89
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !56
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bb)
          to label %.noexc48 unwind label %bb.n

.noexc48:                                         ; preds = %bb.r
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = invoke noundef signext i8 %i.bi(ptr noundef nonnull align 8 dereferenceable(570) %i.bb, i8 noundef signext 32)
          to label %.noexc48._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i_crit_edge unwind label %bb.n, !inline_history !61

.noexc48._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i_crit_edge: ; preds = %.noexc48
  %.pre105.pre = load i64, ptr %i.h, align 8, !tbaa !54
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc48._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i_crit_edge, %bb.q
  %.pre105.a = phi i64 [ %i.ai, %bb.q ], [ %.pre105.pre, %.noexc48._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i_crit_edge ]
  %.0.i.i.i = phi i8 [ %i.bf, %bb.q ], [ %i.bj, %.noexc48._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i_crit_edge ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 224
  store i8 %.0.i.i.i, ptr %i.bk, align 8, !tbaa !42
  store i8 1, ptr %i.ax, align 1, !tbaa !24
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit91.invoke

bb.s:                                             ; preds = %bb.j
  br i1 %6, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr %2, align 8, !tbaa !60
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !56
  switch i8 %i.bm, label %bb.z [
    i8 43, label %bb.u
    i8 45, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.bn = load i64, ptr %i.ad, align 8
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %i.bn ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 225 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !24, !range !32, !noundef !33
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %._crit_edge.i56, label %bb.v

._crit_edge.i56:                                  ; preds = %bb.u
  %.phi.trans.insert.i57 = getelementptr inbounds nuw i8, ptr %i.bo, i64 224
  %.pre.i58 = load i8, ptr %.phi.trans.insert.i57, align 8, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit62

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 240
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i51 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i51, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i52

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i52: ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !35
  %.not.i1.i.i53 = icmp eq i8 %i.bv, 0
  br i1 %.not.i1.i.i53, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i52
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 89
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !56
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i54

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i52
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bt)
          to label %.noexc60 unwind label %bb.n

.noexc60:                                         ; preds = %bb.x
  %i.by = load ptr, ptr %i.bt, align 8, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = invoke noundef signext i8 %i.ca(ptr noundef nonnull align 8 dereferenceable(570) %i.bt, i8 noundef signext 32)
          to label %.noexc60._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i54_crit_edge unwind label %bb.n, !inline_history !61

.noexc60._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i54_crit_edge: ; preds = %.noexc60
  %.pre.pre = load i64, ptr %i.h, align 8, !tbaa !54
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i54

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i54: ; preds = %.noexc60._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i54_crit_edge, %bb.w
  %.pre.a = phi i64 [ %i.ai, %bb.w ], [ %.pre.pre, %.noexc60._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i54_crit_edge ]
  %.0.i.i.i55 = phi i8 [ %i.bx, %bb.w ], [ %i.cb, %.noexc60._ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i54_crit_edge ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 224
  store i8 %.0.i.i.i55, ptr %i.cc, align 8, !tbaa !42
  store i8 1, ptr %i.bp, align 1, !tbaa !24
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit62

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit62: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i54, %._crit_edge.i56
  %i.cd = phi i64 [ %i.ai, %._crit_edge.i56 ], [ %.pre.a, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i54 ]
  %i.ce = phi i8 [ %.pre.i58, %._crit_edge.i56 ], [ %.0.i.i.i55, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i54 ]
  %i.cf = icmp eq i64 %i.cd, 0
  br i1 %i.cf, label %bb.y, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit91.invoke

bb.y:                                             ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit62
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i64 noundef 1, i64 noundef 0) #12
          to label %.noexc63 unwind label %bb.n

.noexc63:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.t, %bb.s
  %i.cg = and i32 %i.f, 586
  %or.cond.not104 = icmp eq i32 %i.cg, 520
  %i.ch = icmp ne i128 %1, 0
  %or.cond103 = select i1 %or.cond.not104, i1 %i.ch, i1 false
  %i.ci = load i64, ptr %i.ad, align 8
  %i.cj = getelementptr inbounds i8, ptr %0, i64 %i.ci ; 5 uses
  br i1 %or.cond103, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ck = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv(ptr noundef nonnull align 8 dereferenceable(264) %i.cj)
          to label %bb.ab unwind label %bb.n

bb.ab:                                            ; preds = %bb.aa
  %i.cl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEmmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 2, i64 noundef %i.ak, i8 noundef signext %i.ck)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit unwind label %bb.n ; 0 uses

bb.ac:                                            ; preds = %bb.z
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 225 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !24, !range !32, !noundef !33
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %._crit_edge.i70, label %bb.ad

._crit_edge.i70:                                  ; preds = %bb.ac
  %.phi.trans.insert.i71 = getelementptr inbounds nuw i8, ptr %i.cj, i64 224
  %.pre.i72 = load i8, ptr %.phi.trans.insert.i71, align 8, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit91.invoke

bb.ad:                                            ; preds = %bb.ac
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 240
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i65 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i65, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i66

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i66: ; preds = %bb.ad
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !35
  %.not.i1.i.i67 = icmp eq i8 %i.cs, 0
  br i1 %.not.i1.i.i67, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i66
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 89
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !56
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i68

bb.af:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i66
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cq)
          to label %.noexc74 unwind label %bb.n

.noexc74:                                         ; preds = %bb.af
  %i.cv = load ptr, ptr %i.cq, align 8, !tbaa !9
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = invoke noundef signext i8 %i.cx(ptr noundef nonnull align 8 dereferenceable(570) %i.cq, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i68 unwind label %bb.n, !inline_history !61

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i68: ; preds = %.noexc74, %bb.ae
  %.0.i.i.i69 = phi i8 [ %i.cu, %bb.ae ], [ %i.cy, %.noexc74 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cj, i64 224
  store i8 %.0.i.i.i69, ptr %i.cz, align 8, !tbaa !42
  store i8 1, ptr %i.cm, align 1, !tbaa !24
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit91.invoke

bb.ag:                                            ; preds = %bb.j
  %i.da = load i64, ptr %i.ad, align 8
  %i.db = getelementptr inbounds i8, ptr %0, i64 %i.da ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 225 ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !24, !range !32, !noundef !33
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %._crit_edge.i85, label %bb.ah

._crit_edge.i85:                                  ; preds = %bb.ag
  %.phi.trans.insert.i86 = getelementptr inbounds nuw i8, ptr %i.db, i64 224
  %.pre.i87 = load i8, ptr %.phi.trans.insert.i86, align 8, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit91.invoke

bb.ah:                                            ; preds = %bb.ag
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 240
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !34 ; 6 uses
  %.not.i.i.i80 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i80, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i81

.invoke:                                          ; preds = %bb.ah, %bb.ad, %bb.v, %bb.p
  invoke void @_ZSt16__throw_bad_castv() #12
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i81: ; preds = %bb.ah
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !35
  %.not.i1.i.i82 = icmp eq i8 %i.di, 0
  br i1 %.not.i1.i.i82, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i81
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 89
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !56
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i83

bb.aj:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i81
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dg)
          to label %.noexc89 unwind label %bb.n

.noexc89:                                         ; preds = %bb.aj
  %i.dl = load ptr, ptr %i.dg, align 8, !tbaa !9
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = invoke noundef signext i8 %i.dn(ptr noundef nonnull align 8 dereferenceable(570) %i.dg, i8 noundef signext 32)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i83 unwind label %bb.n, !inline_history !61

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i83: ; preds = %.noexc89, %bb.ai
  %.0.i.i.i84 = phi i8 [ %i.dk, %bb.ai ], [ %i.do, %.noexc89 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 224
  store i8 %.0.i.i.i84, ptr %i.dp, align 8, !tbaa !42
  store i8 1, ptr %i.dc, align 1, !tbaa !24
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit91.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit91.invoke: ; preds = %._crit_edge.i85, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i83, %._crit_edge.i70, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i68, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit62, %._crit_edge.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.dq = phi i64 [ 0, %._crit_edge.i70 ], [ 1, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit62 ], [ %.pre105.a, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ], [ %i.ai, %._crit_edge.i ], [ 0, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i68 ], [ 0, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i83 ], [ 0, %._crit_edge.i85 ]
  %i.dr = phi i8 [ %.pre.i72, %._crit_edge.i70 ], [ %i.ce, %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit62 ], [ %.0.i.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i ], [ %.pre.i, %._crit_edge.i ], [ %.0.i.i.i69, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i68 ], [ %.0.i.i.i84, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i83 ], [ %.pre.i87, %._crit_edge.i85 ]
  %i.ds = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.dq, i64 noundef 0, i64 noundef %i.ak, i8 noundef signext %i.dr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv.exit91.invoke, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dt = load ptr, ptr %2, align 8, !tbaa !60
  %i.du = load i64, ptr %i.h, align 8, !tbaa !54
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.dt, i64 noundef %i.du)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.m

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc.exit
  %i.dw = load ptr, ptr %2, align 8, !tbaa !60    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.g
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.dy = load i64, ptr %i.g, align 8, !tbaa !56
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret ptr %i.dv

bb.ak:                                            ; preds = %bb.m, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %bb.b
  %.pn39.pn = phi { ptr, i32 } [ %i.k, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.at, %bb.m ], [ %i.au, %bb.n ]
  %i.ea = load ptr, ptr %2, align 8, !tbaa !60    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.g
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.ak
  %i.ec = load i64, ptr %i.g, align 8, !tbaa !56
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  resume { ptr, i32 } %.pn39.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #7

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @ldexpf(float noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare x86_fp80 @ldexpl(x86_fp80 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !6, i64 0}
!11 = !{!12, !13, i64 24}
!12 = !{!"_ZTSSt8ios_base", !8, i64 8, !8, i64 16, !13, i64 24, !14, i64 28, !14, i64 32, !15, i64 40, !17, i64 48, !5, i64 64, !4, i64 192, !18, i64 200, !19, i64 208}
!13 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!14 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!15 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !8, i64 8}
!18 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!19 = !{!"_ZTSSt6locale", !20, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!21 = !{!13, !13, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!25, !27, i64 225}
!25 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !12, i64 0, !26, i64 216, !5, i64 224, !27, i64 225, !28, i64 232, !29, i64 240, !30, i64 248, !31, i64 256}
!26 = !{!"p1 _ZTSSo", !16, i64 0}
!27 = !{!"bool", !5, i64 0}
!28 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!29 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!30 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!31 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!32 = !{i8 0, i8 2}
!33 = !{}
!34 = !{!25, !29, i64 240}
!35 = !{!36, !5, i64 56}
!36 = !{!"_ZTSSt5ctypeIcE", !37, i64 0, !38, i64 16, !27, i64 24, !39, i64 32, !39, i64 40, !40, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!37 = !{!"_ZTSNSt6locale5facetE", !4, i64 8}
!38 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!39 = !{!"p1 int", !16, i64 0}
!40 = !{!"p1 short", !16, i64 0}
!41 = distinct !{null}
!42 = !{!25, !5, i64 224}
!43 = !{!12, !8, i64 16}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!46 = distinct !{!46, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!49 = distinct !{!49, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!50 = !{!51, !52, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !52, i64 0}
!52 = !{!"p1 omnipotent char", !16, i64 0}
!53 = !{!48, !45}
!54 = !{!55, !8, i64 8}
!55 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !51, i64 0, !8, i64 8, !5, i64 16}
!56 = !{!5, !5, i64 0}
!57 = !{!58, !52, i64 40}
!58 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !19, i64 56}
!59 = !{!58, !52, i64 32}
!60 = !{!55, !52, i64 0}
!61 = !{ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE4fillEv}
!62 = !{!63, !63, i64 0}
!63 = !{!"__int128", !5, i64 0}
end_hunk_0
