inline.NumInlined: 2499
inline.NumDeleted: 992
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN14arrow_vendored4dateL9init_tzdbEv:bb.a
  %.sroa.speculated.i.i.i.i.i.i.2.i.i = call i64 @llvm.umin.i64(i64 %.val16.pre.i.i, i64 9)
  %bcmp.i.i.i.i.i.i.2.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 272), i64 %.sroa.speculated.i.i.i.i.i.i.2.i.i), !noalias !245
  %.not.i.i.i.i.i.i.i.2.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.2.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.2.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i
  %bcmp.i.i.i56.i.i.i.2.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 304), i64 %.sroa.speculated.i.i.i.i.i.i.i.i), !noalias !245
  %.not.i.i.i.i57.i.i.i.2.i.i = icmp eq i32 %bcmp.i.i.i56.i.i.i.2.i.i, 0
  br i1 %.not.i.i.i.i57.i.i.i.2.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i
  %bcmp.i.i.i63.i.i.i.2.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 336), i64 %.sroa.speculated.i.i.i54.i.i.i.i.i), !noalias !245
  %.not.i.i.i.i64.i.i.i.2.i.i = icmp eq i32 %bcmp.i.i.i63.i.i.i.2.i.i, 0
  br i1 %.not.i.i.i.i64.i.i.i.2.i.i, label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.2.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.2.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i
  %bcmp.i.i.i70.i.i.i.2.i.i = call i32 @bcmp(ptr readonly %.val15.pre.i.i, ptr nonnull readonly getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 368), i64 %.sroa.speculated.i.i.i54.i.i.i.i.i), !noalias !245
  %.not.i.i.i.i71.i.i.i.2.i.i = icmp eq i32 %bcmp.i.i.i70.i.i.i.2.i.i, 0
  %spec.select.i.i = select i1 %.not.i.i.i.i71.i.i.i.2.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 352), ptr getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 384)
  br label %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i"

"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.2.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.1.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, %_ZN14arrow_vendored4dateL14get_alpha_wordB5cxx11ERSi.exit.i.i, %.noexc106.i
  %.val1555.i.i = phi ptr [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i ], [ %.val15.pre.i.i, %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i ], [ %i.ld, %.noexc106.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.1.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.2.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i ], [ %.val15.pre.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i ], [ %.val.pre.i.i, %_ZN14arrow_vendored4dateL14get_alpha_wordB5cxx11ERSi.exit.i.i ] ; 2 uses
  %.028.i.i.i.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 32), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 256), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.2.i.i ], [ @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, %_ZN14arrow_vendored4dateL7tolowerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 96), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 192), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.1.i.i ], [ @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 64), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 288), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.2.i.i ], [ @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, %.noexc106.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 224), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.1.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 128), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.1.i.i ], [ %spec.select.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i69.i.i.i.2.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 160), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i55.i.i.i.1.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, i64 320), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i62.i.i.i.2.i.i ], [ @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11, %_ZN14arrow_vendored4dateL14get_alpha_wordB5cxx11ERSi.exit.i.i ]
  %i.pj = ptrtoint ptr %.028.i.i.i.i.i to i64
  %i.pk = sub i64 %i.pj, ptrtoint (ptr @_ZZN14arrow_vendored4dateL11parse_monthERSiE11month_namesB5cxx11 to i64) ; 2 uses
  %.not.i100.i = icmp slt i64 %i.pk, 384
  br i1 %.not.i100.i, label %bb.dd, label %bb.cy

bb.cy:                                            ; preds = %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i"
  %i.pl = call ptr @__cxa_allocate_exception(i64 16) #30, !noalias !245 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !245
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.43, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.cz unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i, !noalias !245

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.pl, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.da unwind label %bb.db, !noalias !245

bb.da:                                            ; preds = %bb.cz
  invoke void @__cxa_throw(ptr nonnull %i.pl, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #31
          to label %bb.df unwind label %bb.db, !noalias !245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.cy
  %i.pm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !245
  br label %bb.dc

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.0.i.i = phi i1 [ false, %bb.da ], [ true, %bb.cz ] ; 2 uses
  %i.pn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.po = load ptr, ptr %9, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.pq = icmp eq ptr %i.po, %i.pp
  br i1 %i.pq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93: ; preds = %bb.db
  %i.pr = load i64, ptr %i.pp, align 8, !tbaa !31, !noalias !245
  %i.ps = add i64 %i.pr, 1
  call void @_ZdlPvm(ptr noundef %i.po, i64 noundef %i.ps) #28, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !245
  br i1 %.0.i.i, label %bb.dc, label %bb.de

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !245
  br i1 %.0.i.i, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn30.i.i = phi { ptr, i32 } [ %i.pm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93 ]
  call void @__cxa_free_exception(ptr %i.pl) #30, !noalias !245
  br label %bb.de

bb.dd:                                            ; preds = %"_ZSt7find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN14arrow_vendored4dateL11parse_monthERSiE3$_0ET_SC_SC_T0_.exit.i.i"
  %i.pt = icmp eq ptr %.val1555.i.i, %i.ld
  br i1 %i.pt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i: ; preds = %bb.dd
  %i.pu = load i64, ptr %i.ld, align 8, !tbaa !31, !noalias !245
  %i.pv = add i64 %i.pu, 1
  call void @_ZdlPvm(ptr noundef %.val1555.i.i, i64 noundef %i.pv) #28, !noalias !245
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i

bb.de:                                            ; preds = %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i93 ], [ %.pn30.i.i, %bb.dc ], [ %i.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  %i.pw = load ptr, ptr %8, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.px = icmp eq ptr %i.pw, %i.ld
  br i1 %i.px, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i: ; preds = %bb.de
  %i.py = load i64, ptr %i.ld, align 8, !tbaa !31, !noalias !245
  %i.pz = add i64 %i.py, 1
  call void @_ZdlPvm(ptr noundef %i.pw, i64 noundef %i.pz) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !245
  br label %.body.i

bb.df:                                            ; preds = %bb.da
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !245
  %i.qa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.dg unwind label %bb.dt, !noalias !245 ; 0 uses

bb.dg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i
  %i.qb = trunc i64 %i.pk to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30, !noalias !245
  %i.qc = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !245
  %i.qd = shl i32 %i.qb, 11
  %i.qe = load i32, ptr %i.i, align 4, !tbaa !3, !noalias !245
  %.sroa.0329.2.extract.shift337.i = add i32 %i.qd, 65536
  %.sroa.5.0.extract.shift.i = lshr i32 %.sroa.0329.2.extract.shift337.i, 16 ; 2 uses
  %.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.5.0.extract.shift.i to i8 ; 2 uses
  %sext.i = shl i32 %i.qc, 16
  %i.qf = ashr exact i32 %sext.i, 16
  %i.qg = icmp ult i8 %.sroa.5.0.extract.trunc.i, 3
  %.neg.i.i.i = sext i1 %i.qg to i32
  %i.qh = add nsw i32 %i.qf, %.neg.i.i.i          ; 4 uses
  %i.qi = and i32 %.sroa.5.0.extract.shift.i, 255
  %i.qj = and i32 %i.qe, 255
  %i.qk = add nsw i32 %i.qh, -399
  %i.ql = icmp slt i32 %i.qh, 0
  %i.qm = select i1 %i.ql, i32 %i.qk, i32 %i.qh
  %i.qn = sdiv i32 %i.qm, 400                     ; 2 uses
  %.neg15.i.i.i = mul nsw i32 %i.qn, -400
  %i.qo = add nsw i32 %.neg15.i.i.i, %i.qh        ; 3 uses
  %i.qp = icmp ugt i8 %.sroa.5.0.extract.trunc.i, 2
  %.v.i.i.i = select i1 %i.qp, i32 -3, i32 9
  %i.qq = add nsw i32 %.v.i.i.i, %i.qi
  %i.qr = mul nsw i32 %i.qq, 153
  %i.qs = add nsw i32 %i.qr, 2
  %i.qt = udiv i32 %i.qs, 5
  %i.qu = mul nsw i32 %i.qo, 365
  %i.qv = lshr i32 %i.qo, 2
  %i.qw = udiv i32 %i.qo, 100
  %i.qx = mul nsw i32 %i.qn, 146097
  %i.qy = add nsw i32 %i.qt, -719468
  %i.qz = add nsw i32 %i.qy, %i.qj
  %i.ra = add nsw i32 %i.qz, %i.qx
  %i.rb = add nsw i32 %i.ra, %i.qv
  %i.rc = add nsw i32 %i.rb, %i.qu
  %i.rd = sub nsw i32 %i.rc, %i.qw
  %i.re = sext i32 %i.rd to i64
  %i.rf = mul nsw i64 %i.re, 86400
  store i64 %i.rf, ptr %19, align 8, !tbaa !78, !noalias !245
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.dh unwind label %.loopexit338.i, !noalias !245

bb.dh:                                            ; preds = %bb.dg
  %.not.i.i110.i = icmp eq ptr %i.lv, %i.lu
  br i1 %.not.i.i110.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.rg = load i64, ptr %18, align 8, !tbaa !75, !noalias !245
  store i64 %i.rg, ptr %i.lv, align 8, !tbaa !75, !noalias !245
  %i.rh = getelementptr inbounds nuw i8, ptr %i.lv, i64 8 ; 2 uses
  store ptr %i.rh, ptr %i.lf, align 8, !tbaa !260, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i

bb.dj:                                            ; preds = %bb.dh
  %i.ri = ptrtoint ptr %i.lu to i64               ; 2 uses
  %i.rj = ptrtoint ptr %i.lt to i64               ; 3 uses
  %i.rk = sub i64 %i.ri, %i.rj                    ; 4 uses
  %i.rl = icmp eq i64 %i.rk, 9223372036854775800
  br i1 %i.rl, label %bb.dk, label %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.dk:                                            ; preds = %bb.dj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
          to label %.noexc111.i unwind label %.loopexit.split-lp339.i, !noalias !245

.noexc111.i:                                      ; preds = %bb.dk
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.dj
  %i.rm = ashr exact i64 %i.rk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.rm, i64 1)
  %i.rn = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.rm ; 2 uses
  %i.ro = icmp ult i64 %i.rn, %i.rm
  %i.rp = call i64 @llvm.umin.i64(i64 %i.rn, i64 1152921504606846975)
  %i.rq = select i1 %i.ro, i64 1152921504606846975, i64 %i.rp ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.rq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.rr = shl nuw nsw i64 %i.rq, 3
  %i.rs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rr) #32
          to label %.noexc112.i unwind label %.loopexit338.i, !noalias !245 ; 9 uses

.noexc112.i:                                      ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.rk
  %i.ru = load i64, ptr %18, align 8, !tbaa !75, !noalias !245
  store i64 %i.ru, ptr %i.rt, align 8, !tbaa !75, !noalias !245
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.lt, %i.lu
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc112.i
  %i.rv = ptrtoaddr ptr %i.rs to i64
  %43 = add i64 %i.ri, -8
  %44 = sub i64 %43, %i.rj                        ; 2 uses
  %i.rw = lshr i64 %44, 3
  %i.rx = add nuw nsw i64 %i.rw, 1                ; 2 uses
  %min.iters.check520 = icmp ult i64 %44, 24
  %i.ry = sub i64 %i.rj, %i.rv
  %diff.check518 = icmp ugt i64 %i.ry, -32
  %or.cond = or i1 %min.iters.check520, %diff.check518
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader536, label %vector.ph521

vector.ph521:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec523 = and i64 %i.rx, 4611686018427387900  ; 3 uses
  %i.rz = shl i64 %n.vec523, 3                    ; 2 uses
  %i.sa = getelementptr i8, ptr %i.rs, i64 %i.rz  ; 2 uses
  %i.sb = getelementptr i8, ptr %i.lt, i64 %i.rz
  br label %vector.body524

vector.body524:                                   ; preds = %vector.body524, %vector.ph521
  %index525 = phi i64 [ 0, %vector.ph521 ], [ %index.next530, %vector.body524 ] ; 2 uses
  %i.sc = shl i64 %index525, 3                    ; 2 uses
  %next.gep526 = getelementptr i8, ptr %i.rs, i64 %i.sc ; 2 uses
  %next.gep527 = getelementptr i8, ptr %i.lt, i64 %i.sc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.sd = getelementptr i8, ptr %next.gep527, i64 16
  %wide.load528 = load <2 x i64>, ptr %next.gep527, align 8, !tbaa !75, !alias.scope !264, !noalias !266
  %wide.load529 = load <2 x i64>, ptr %i.sd, align 8, !tbaa !75, !alias.scope !264, !noalias !266
  %i.se = getelementptr i8, ptr %next.gep526, i64 16
  store <2 x i64> %wide.load528, ptr %next.gep526, align 8, !tbaa !75, !alias.scope !261, !noalias !267
  store <2 x i64> %wide.load529, ptr %i.se, align 8, !tbaa !75, !alias.scope !261, !noalias !267
  %index.next530 = add nuw i64 %index525, 4       ; 2 uses
  %i.sf = icmp eq i64 %index.next530, %n.vec523
  br i1 %i.sf, label %middle.block531, label %vector.body524, !llvm.loop !268

middle.block531:                                  ; preds = %vector.body524
  %cmp.n532 = icmp eq i64 %i.rx, %n.vec523
  br i1 %cmp.n532, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader536

.lr.ph.i.i.i.i.i.i.i.preheader536:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block531
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.rs, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.sa, %middle.block531 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.sb, %middle.block531 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader536, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.si, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader536 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.sh, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader536 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.sg = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !264, !noalias !266
  store i64 %i.sg, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !261, !noalias !267
  %i.sh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.sh, %i.lu
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !271

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block531, %.noexc112.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.rs, %.noexc112.i ], [ %i.sa, %middle.block531 ], [ %i.si, %.lr.ph.i.i.i.i.i.i.i ]
  %i.sj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i.i = icmp eq ptr %i.lt, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef %i.rk) #28, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.dl, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  store ptr %i.rs, ptr %41, align 16, !tbaa !25, !alias.scope !245
  store ptr %i.sj, ptr %i.lf, align 8, !tbaa !260, !alias.scope !245
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %i.rq ; 2 uses
  store ptr %i.sk, ptr %i.lg, align 16, !tbaa !26, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.di
  %i.sl = phi ptr [ %i.rs, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.lt, %bb.di ]
  %i.sm = phi ptr [ %i.sk, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.lu, %bb.di ]
  %i.sn = phi ptr [ %i.sj, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.rh, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30, !noalias !245
  br label %bb.dy

bb.dm:                                            ; preds = %bb.bs
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i

bb.dn:                                            ; preds = %bb.bx, %bb.bv
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i

bb.do:                                            ; preds = %bb.bz
  %i.sq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sr = load ptr, ptr %11, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.ss = icmp eq ptr %i.sr, %i.jp
  br i1 %i.ss, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i: ; preds = %bb.do
  %i.st = load i64, ptr %i.jp, align 8, !tbaa !31, !noalias !245
  %i.su = add i64 %i.st, 1
  call void @_ZdlPvm(ptr noundef %i.sr, i64 noundef %i.su) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i: ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i, %bb.dn
  %.pn.i = phi { ptr, i32 } [ %i.sp, %bb.dn ], [ %i.sq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113.i ], [ %i.sq, %bb.do ] ; 2 uses
  %i.sv = load ptr, ptr %12, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.sw = icmp eq ptr %i.sv, %i.is
  br i1 %i.sw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i
  %i.sx = load i64, ptr %i.is, align 8, !tbaa !31, !noalias !245
  %i.sy = add i64 %i.sx, 1
  call void @_ZdlPvm(ptr noundef %i.sv, i64 noundef %i.sy) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i, %bb.dm
  %.pn.pn.i = phi { ptr, i32 } [ %i.so, %bb.dm ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115.i ]
  %i.sz = load ptr, ptr %13, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.ta = icmp eq ptr %i.sz, %i.im
  br i1 %i.ta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i
  %i.tb = load i64, ptr %i.im, align 8, !tbaa !31, !noalias !245
  %i.tc = add i64 %i.tb, 1
  call void @_ZdlPvm(ptr noundef %i.sz, i64 noundef %i.tc) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30, !noalias !245
  br label %bb.hl

bb.dp:                                            ; preds = %.noexc152, %.noexc151, %.noexc150, %.noexc149, %.noexc148, %.noexc147, %.noexc146, %.noexc145, %bb.hg, %.noexc143, %bb.hf, %.noexc141, %.noexc140, %.noexc139, %.noexc138, %.noexc137, %.noexc136, %.noexc135, %.noexc134, %.noexc133, %.noexc132, %.noexc131, %.invoke.i, %bb.gp, %bb.fw, %bb.ef
  %i.td = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i

.loopexit.i:                                      ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i, %.noexc90.i, %bb.cf
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

.loopexit.split-lp.i:                             ; preds = %bb.cd
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ed

bb.dq:                                            ; preds = %bb.ch
  %i.te = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.dr:                                            ; preds = %bb.ci
  %i.tf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.ds:                                            ; preds = %bb.dx, %bb.dw, %bb.dv, %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit.i
  %i.tg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i19.i.i, %bb.cl, %bb.ck
  %i.th = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit338.i:                                   ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.dg
  %lpad.loopexit340.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

.loopexit.split-lp339.i:                          ; preds = %bb.dk
  %lpad.loopexit.split-lp341.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.du:                                            ; preds = %.loopexit.split-lp339.i, %.loopexit338.i
  %lpad.phi342.i = phi { ptr, i32 } [ %lpad.loopexit340.i, %.loopexit338.i ], [ %lpad.loopexit.split-lp341.i, %.loopexit.split-lp339.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30, !noalias !245
  br label %.body.i

.body.i:                                          ; preds = %bb.cx, %bb.du, %bb.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i
  %.pn62.i = phi { ptr, i32 } [ %lpad.phi342.i, %bb.du ], [ %i.th, %bb.dt ], [ %.pn.pn.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i ], [ %lpad.phi.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i.i ], [ %lpad.phi.i.i, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30, !noalias !245
  br label %bb.dz

bb.dv:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30, !noalias !245
  %i.ti = load ptr, ptr %14, align 8, !tbaa !30, !noalias !245
  %i.tj = load i64, ptr %i.ks, align 8, !tbaa !39, !noalias !245
  %i.tk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.ti, i64 noundef %i.tj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.ds, !noalias !245 ; 4 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !245
  store i8 10, ptr %i.g, align 1, !tbaa !31, !noalias !245
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored4dateL9init_tzdbEv:bb.a
  %i.zf = load i8, ptr %i.ze, align 8, !tbaa !198, !noalias !245
  %.not.i1.i.i181.i = icmp eq i8 %i.zf, 0
  br i1 %.not.i1.i.i181.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i180.i
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zd, i64 67
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !31, !noalias !245
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i182.i

bb.ez:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i180.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.zd)
          to label %.noexc185.i unwind label %.loopexit343.i, !noalias !245

.noexc185.i:                                      ; preds = %bb.ez
  %i.zi = load ptr, ptr %i.zd, align 8, !tbaa !61, !noalias !245
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 48
  %i.zk = load ptr, ptr %i.zj, align 8, !noalias !245
  %i.zl = invoke noundef signext i8 %i.zk(ptr noundef nonnull align 8 dereferenceable(570) %i.zd, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i182.i unwind label %.loopexit343.i, !noalias !245, !inline_history !204

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i182.i: ; preds = %.noexc185.i, %bb.ey
  %.0.i.i.i183.i = phi i8 [ %i.zh, %bb.ey ], [ %i.zl, %.noexc185.i ]
  %i.zm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(32) %23, i8 noundef signext %.0.i.i.i183.i)
          to label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i unwind label %.loopexit343.i, !noalias !245 ; 0 uses

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i182.i
  %i.zn = load i64, ptr %i.yd, align 8, !tbaa !39, !noalias !245
  %i.zo = icmp eq i64 %i.zn, 0
  br i1 %i.zo, label %.backedge.i, label %bb.fa

bb.fa:                                            ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i
  %i.zp = load ptr, ptr %23, align 8, !tbaa !30, !noalias !245
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !31, !noalias !245
  %.not.i88 = icmp eq i8 %i.zq, 35
  br i1 %.not.i88, label %.backedge.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30, !noalias !245
  invoke void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120) %24, ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef 8)
          to label %bb.fc unwind label %bb.fg, !noalias !245

bb.fc:                                            ; preds = %bb.fb
  %i.zr = load ptr, ptr %24, align 8, !tbaa !61, !noalias !245
  %i.zs = getelementptr i8, ptr %i.zr, i64 -24
  %i.zt = load i64, ptr %i.zs, align 8, !noalias !245
  %i.zu = getelementptr inbounds i8, ptr %24, i64 %i.zt ; 3 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 28
  store i32 5, ptr %i.zv, align 4, !tbaa !63, !noalias !245
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zu, i64 32
  %i.zx = load i32, ptr %i.zw, align 8, !tbaa !72, !noalias !245
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.zu, i32 noundef %i.zx)
          to label %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit190.i unwind label %bb.fh, !noalias !245

_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit190.i: ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30, !noalias !245
  %i.zy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZNSirsERl.exit.i unwind label %bb.fi, !noalias !245 ; 0 uses

_ZNSirsERl.exit.i:                                ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit190.i
  %i.zz = load i64, ptr %i.j, align 8, !tbaa !75, !noalias !245 ; 2 uses
  %.not336.i = icmp eq i64 %i.zz, 2272060800
  br i1 %.not336.i, label %bb.fp, label %bb.fj, !llvm.loop !283

bb.fd:                                            ; preds = %bb.el
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i

bb.fe:                                            ; preds = %bb.eq, %bb.eo
  %i.aab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i

bb.ff:                                            ; preds = %bb.eu, %bb.es
  %i.aac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aad = load ptr, ptr %20, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.aae = icmp eq ptr %i.aad, %i.wq
  br i1 %i.aae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192.i: ; preds = %bb.ff
  %i.aaf = load i64, ptr %i.wq, align 8, !tbaa !31, !noalias !245
  %i.aag = add i64 %i.aaf, 1
  call void @_ZdlPvm(ptr noundef %i.aad, i64 noundef %i.aag) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i: ; preds = %bb.ff, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192.i, %bb.fe
  %.pn39.i = phi { ptr, i32 } [ %i.aab, %bb.fe ], [ %i.aac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192.i ], [ %i.aac, %bb.ff ] ; 2 uses
  %i.aah = load ptr, ptr %21, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.aai = icmp eq ptr %i.aah, %i.vt
  br i1 %i.aai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i
  %i.aaj = load i64, ptr %i.vt, align 8, !tbaa !31, !noalias !245
  %i.aak = add i64 %i.aaj, 1
  call void @_ZdlPvm(ptr noundef %i.aah, i64 noundef %i.aak) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195.i, %bb.fd
  %.pn39.pn.i = phi { ptr, i32 } [ %i.aaa, %bb.fd ], [ %.pn39.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195.i ], [ %.pn39.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194.i ]
  %i.aal = load ptr, ptr %22, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.aam = icmp eq ptr %i.aal, %i.vn
  br i1 %i.aam, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i
  %i.aan = load i64, ptr %i.vn, align 8, !tbaa !31, !noalias !245
  %i.aao = add i64 %i.aan, 1
  call void @_ZdlPvm(ptr noundef %i.aal, i64 noundef %i.aao) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30, !noalias !245
  br label %.body144.i

.body144.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i, %bb.ek
  %.pn39.pn.pn.pn.i = phi { ptr, i32 } [ %.pn39.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200.i ], [ %i.vm, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i

.loopexit343.i:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i182.i, %.noexc185.i, %bb.ez
  %lpad.loopexit345.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

.loopexit.split-lp344.i:                          ; preds = %bb.ex
  %lpad.loopexit.split-lp346.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.fg:                                            ; preds = %bb.fb
  %i.aap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.fh:                                            ; preds = %bb.fc
  %i.aaq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fi:                                            ; preds = %_ZNSt9basic_iosIcSt11char_traitsIcEE10exceptionsESt12_Ios_Iostate.exit190.i
  %i.aar = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fj:                                            ; preds = %_ZNSirsERl.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30, !noalias !245
  %i.aas = add i64 %i.zz, -2208988800
  store i64 %i.aas, ptr %26, align 8, !noalias !245
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.fk unwind label %.loopexit348.i, !noalias !245

bb.fk:                                            ; preds = %bb.fj
  %.not.i.i203.i = icmp eq ptr %i.yz, %i.yy
  br i1 %.not.i.i203.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aat = load i64, ptr %25, align 8, !tbaa !75, !noalias !245
  store i64 %i.aat, ptr %i.yz, align 8, !tbaa !75, !noalias !245
  %i.aau = getelementptr inbounds nuw i8, ptr %i.yz, i64 8 ; 2 uses
  store ptr %i.aau, ptr %i.yj, align 8, !tbaa !260, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i

bb.fm:                                            ; preds = %bb.fk
  %i.aav = ptrtoint ptr %i.yy to i64              ; 2 uses
  %i.aaw = ptrtoint ptr %i.yx to i64              ; 3 uses
  %i.aax = sub i64 %i.aav, %i.aaw                 ; 4 uses
  %i.aay = icmp eq i64 %i.aax, 9223372036854775800
  br i1 %i.aay, label %bb.fn, label %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i204.i

bb.fn:                                            ; preds = %bb.fm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
          to label %.noexc216.i unwind label %.loopexit.split-lp349.i, !noalias !245

.noexc216.i:                                      ; preds = %bb.fn
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i204.i: ; preds = %bb.fm
  %i.aaz = ashr exact i64 %i.aax, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i205.i = call i64 @llvm.umax.i64(i64 %i.aaz, i64 1)
  %i.aba = add nsw i64 %.sroa.speculated.i.i.i.i205.i, %i.aaz ; 2 uses
  %i.abb = icmp ult i64 %i.aba, %i.aaz
  %i.abc = call i64 @llvm.umin.i64(i64 %i.aba, i64 1152921504606846975)
  %i.abd = select i1 %i.abb, i64 1152921504606846975, i64 %i.abc ; 3 uses
  %.not.i.i.i.i206.i = icmp ne i64 %i.abd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i206.i)
  %i.abe = shl nuw nsw i64 %i.abd, 3
  %i.abf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abe) #32
          to label %.noexc217.i unwind label %.loopexit348.i, !noalias !245 ; 9 uses

.noexc217.i:                                      ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i204.i
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 %i.aax
  %i.abh = load i64, ptr %25, align 8, !tbaa !75, !noalias !245
  store i64 %i.abh, ptr %i.abg, align 8, !tbaa !75, !noalias !245
  %.not10.i.i.i.i.i.i207.i = icmp eq ptr %i.yx, %i.yy
  br i1 %.not10.i.i.i.i.i.i207.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.i, label %.lr.ph.i.i.i.i.i.i208.i.preheader

.lr.ph.i.i.i.i.i.i208.i.preheader:                ; preds = %.noexc217.i
  %i.abi = ptrtoaddr ptr %i.abf to i64
  %45 = add i64 %i.aav, -8
  %46 = sub i64 %45, %i.aaw                       ; 2 uses
  %i.abj = lshr i64 %46, 3
  %i.abk = add nuw nsw i64 %i.abj, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %46, 24
  %i.abl = sub i64 %i.aaw, %i.abi
  %diff.check = icmp ugt i64 %i.abl, -32
  %or.cond535 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond535, label %.lr.ph.i.i.i.i.i.i208.i.preheader537, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i208.i.preheader
  %n.vec = and i64 %i.abk, 4611686018427387900    ; 3 uses
  %i.abm = shl i64 %n.vec, 3                      ; 2 uses
  %i.abn = getelementptr i8, ptr %i.abf, i64 %i.abm ; 2 uses
  %i.abo = getelementptr i8, ptr %i.yx, i64 %i.abm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.abp = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.abf, i64 %i.abp ; 2 uses
  %next.gep514 = getelementptr i8, ptr %i.yx, i64 %i.abp ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.abq = getelementptr i8, ptr %next.gep514, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep514, align 8, !tbaa !75, !alias.scope !287, !noalias !289
  %wide.load515 = load <2 x i64>, ptr %i.abq, align 8, !tbaa !75, !alias.scope !287, !noalias !289
  %i.abr = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !75, !alias.scope !284, !noalias !290
  store <2 x i64> %wide.load515, ptr %i.abr, align 8, !tbaa !75, !alias.scope !284, !noalias !290
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.abs = icmp eq i64 %index.next, %n.vec
  br i1 %i.abs, label %middle.block, label %vector.body, !llvm.loop !291

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.abk, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.i, label %.lr.ph.i.i.i.i.i.i208.i.preheader537

.lr.ph.i.i.i.i.i.i208.i.preheader537:             ; preds = %.lr.ph.i.i.i.i.i.i208.i.preheader, %middle.block
  %.012.i.i.i.i.i.i209.i.ph = phi ptr [ %i.abf, %.lr.ph.i.i.i.i.i.i208.i.preheader ], [ %i.abn, %middle.block ]
  %.0911.i.i.i.i.i.i210.i.ph = phi ptr [ %i.yx, %.lr.ph.i.i.i.i.i.i208.i.preheader ], [ %i.abo, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i208.i

.lr.ph.i.i.i.i.i.i208.i:                          ; preds = %.lr.ph.i.i.i.i.i.i208.i.preheader537, %.lr.ph.i.i.i.i.i.i208.i
  %.012.i.i.i.i.i.i209.i = phi ptr [ %i.abv, %.lr.ph.i.i.i.i.i.i208.i ], [ %.012.i.i.i.i.i.i209.i.ph, %.lr.ph.i.i.i.i.i.i208.i.preheader537 ] ; 2 uses
  %.0911.i.i.i.i.i.i210.i = phi ptr [ %i.abu, %.lr.ph.i.i.i.i.i.i208.i ], [ %.0911.i.i.i.i.i.i210.i.ph, %.lr.ph.i.i.i.i.i.i208.i.preheader537 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.abt = load i64, ptr %.0911.i.i.i.i.i.i210.i, align 8, !tbaa !75, !alias.scope !287, !noalias !289
  store i64 %i.abt, ptr %.012.i.i.i.i.i.i209.i, align 8, !tbaa !75, !alias.scope !284, !noalias !290
  %i.abu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i210.i, i64 8 ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i209.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i211.i = icmp eq ptr %i.abu, %i.yy
  br i1 %.not.i.i.i.i.i.i211.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.i, label %.lr.ph.i.i.i.i.i.i208.i, !llvm.loop !292

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.i: ; preds = %.lr.ph.i.i.i.i.i.i208.i, %middle.block, %.noexc217.i
  %.0.lcssa.i.i.i.i.i.i213.i = phi ptr [ %i.abf, %.noexc217.i ], [ %i.abn, %middle.block ], [ %i.abv, %.lr.ph.i.i.i.i.i.i208.i ]
  %i.abw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i213.i, i64 8 ; 2 uses
  %.not.i23.i.i.i214.i = icmp eq ptr %i.yx, null
  br i1 %.not.i23.i.i.i214.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i, label %bb.fo

bb.fo:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.i
  call void @_ZdlPvm(ptr noundef nonnull %i.yx, i64 noundef %i.aax) #28, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i: ; preds = %bb.fo, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i212.i
  store ptr %i.abf, ptr %41, align 16, !tbaa !25, !alias.scope !245
  store ptr %i.abw, ptr %i.yj, align 8, !tbaa !260, !alias.scope !245
  %i.abx = getelementptr inbounds nuw [8 x i8], ptr %i.abf, i64 %i.abd ; 2 uses
  store ptr %i.abx, ptr %i.yk, align 16, !tbaa !26, !alias.scope !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i, %bb.fl
  %i.aby = phi ptr [ %i.abf, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i ], [ %i.yx, %bb.fl ]
  %i.abz = phi ptr [ %i.abx, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i ], [ %i.yy, %bb.fl ]
  %i.aca = phi ptr [ %i.abw, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i215.i ], [ %i.aau, %bb.fl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30, !noalias !245
  br label %bb.fp

bb.fp:                                            ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i, %_ZNSirsERl.exit.i
  %i.acb = phi ptr [ %i.aby, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i ], [ %i.yx, %_ZNSirsERl.exit.i ]
  %i.acc = phi ptr [ %i.abz, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i ], [ %i.yy, %_ZNSirsERl.exit.i ]
  %i.acd = phi ptr [ %i.aca, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE9push_backEOS2_.exit218.i ], [ %i.yz, %_ZNSirsERl.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30, !noalias !245
  store ptr %i.yl, ptr %24, align 8, !tbaa !61, !noalias !245
  %i.ace = load i64, ptr %i.yn, align 8, !noalias !245
  %i.acf = getelementptr inbounds i8, ptr %24, i64 %i.ace
  store ptr %i.ym, ptr %i.acf, align 8, !tbaa !61, !noalias !245
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.yo, align 8, !tbaa !61, !noalias !245
  %i.acg = load ptr, ptr %i.yp, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.ach = icmp eq ptr %i.acg, %i.yq
  br i1 %i.ach, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i219.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i219.i: ; preds = %bb.fp
  %i.aci = load i64, ptr %i.yq, align 8, !tbaa !31, !noalias !245
  %i.acj = add i64 %i.aci, 1
  call void @_ZdlPvm(ptr noundef %i.acg, i64 noundef %i.acj) #28, !noalias !245
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i: ; preds = %bb.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i219.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.yo, align 8, !tbaa !61, !noalias !245
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.yr) #30, !noalias !245
  store ptr %i.ys, ptr %24, align 8, !tbaa !61, !noalias !245
  %i.ack = load i64, ptr %i.yu, align 8, !noalias !245
  %i.acl = getelementptr inbounds i8, ptr %24, i64 %i.ack
  store ptr %i.yt, ptr %i.acl, align 8, !tbaa !61, !noalias !245
  store i64 0, ptr %i.yv, align 8, !tbaa !272, !noalias !245
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.yw) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30, !noalias !245
  br label %.backedge.i

.backedge.i:                                      ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i, %bb.fa, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i
  %i.acm = phi ptr [ %i.acb, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i ], [ %i.yx, %bb.fa ], [ %i.yx, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i ]
  %i.acn = phi ptr [ %i.acc, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i ], [ %i.yy, %bb.fa ], [ %i.yy, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i ]
  %i.aco = phi ptr [ %i.acd, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit221.i ], [ %i.yz, %bb.fa ], [ %i.yz, %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit188.i ]
  %i.acp = load ptr, ptr %10, align 8, !tbaa !61, !noalias !245
  %i.acq = getelementptr i8, ptr %i.acp, i64 -24
  %i.acr = load i64, ptr %i.acq, align 8, !noalias !245 ; 2 uses
  %i.acs = getelementptr inbounds i8, ptr %10, i64 %i.acr
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 32
  %i.acu = load i32, ptr %i.act, align 8, !tbaa !72, !noalias !245
  %i.acv = and i32 %i.acu, 5
  %.not.i178.i = icmp eq i32 %i.acv, 0
  br i1 %.not.i178.i, label %bb.ew, label %._crit_edge.i, !llvm.loop !283

.loopexit348.i:                                   ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i204.i, %bb.fj
  %lpad.loopexit350.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

.loopexit.split-lp349.i:                          ; preds = %bb.fn
  %lpad.loopexit.split-lp351.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fq

bb.fq:                                            ; preds = %.loopexit.split-lp349.i, %.loopexit348.i
  %lpad.phi352.i = phi { ptr, i32 } [ %lpad.loopexit350.i, %.loopexit348.i ], [ %lpad.loopexit.split-lp351.i, %.loopexit.split-lp349.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30, !noalias !245
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fi
  %.pn54.i = phi { ptr, i32 } [ %lpad.phi352.i, %bb.fq ], [ %i.aar, %bb.fi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30, !noalias !245
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fh
  %.pn54.pn.i = phi { ptr, i32 } [ %.pn54.i, %bb.fr ], [ %i.aaq, %bb.fh ]
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %24) #30, !noalias !245
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fg
  %.pn54.pn.pn.i = phi { ptr, i32 } [ %.pn54.pn.i, %bb.fs ], [ %i.aap, %bb.fg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30, !noalias !245
  br label %bb.fu

._crit_edge.i:                                    ; preds = %.backedge.i
  %.pre.i89 = load ptr, ptr %23, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.acw = icmp eq ptr %.pre.i89, %i.yc
  br i1 %i.acw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i: ; preds = %._crit_edge.i
  %i.acx = load i64, ptr %i.yc, align 8, !tbaa !31, !noalias !245
  %i.acy = add i64 %i.acx, 1
  call void @_ZdlPvm(ptr noundef %.pre.i89, i64 noundef %i.acy) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224.i: ; preds = %bb.ev, %._crit_edge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30, !noalias !245
  br label %bb.hm

bb.fu:                                            ; preds = %bb.ft, %.loopexit.split-lp344.i, %.loopexit343.i
  %.pn54.pn.pn.pn.i = phi { ptr, i32 } [ %.pn54.pn.pn.i, %bb.ft ], [ %lpad.loopexit345.i, %.loopexit343.i ], [ %lpad.loopexit.split-lp346.i, %.loopexit.split-lp344.i ] ; 2 uses
  %i.acz = load ptr, ptr %23, align 8, !tbaa !30, !noalias !245 ; 2 uses
  %i.ada = icmp eq ptr %i.acz, %i.yc
  br i1 %i.ada, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i: ; preds = %bb.fu
  %i.adb = load i64, ptr %i.yc, align 8, !tbaa !31, !noalias !245
  %i.adc = add i64 %i.adb, 1
  call void @_ZdlPvm(ptr noundef %i.acz, i64 noundef %i.adc) #28, !noalias !245
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i: ; preds = %bb.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30, !noalias !245
  %i.add = load ptr, ptr %41, align 16, !tbaa !25, !alias.scope !245 ; 3 uses
  %.not.i.i.i228.i = icmp eq ptr %i.add, null
  br i1 %.not.i.i.i228.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i, label %bb.fv

bb.fv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i
  %i.ade = load ptr, ptr %i.yk, align 16, !tbaa !26, !alias.scope !245
  %i.adf = ptrtoint ptr %i.ade to i64
  %i.adg = ptrtoint ptr %i.add to i64
  %i.adh = sub i64 %i.adf, %i.adg
  call void @_ZdlPvm(ptr noundef nonnull %i.add, i64 noundef %i.adh) #28, !noalias !245
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit.i

bb.fw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i175.i
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.xy, i32 noundef 0)
          to label %bb.fx unwind label %bb.dp, !noalias !245

end_hunk_1
begin_hunk_2_@_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN14arrow_vendored4date9time_zoneESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_:bb.a

bb.f:                                             ; preds = %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.ay = load ptr, ptr %i.w, align 8, !tbaa !54
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bb) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i: ; preds = %bb.f, %_ZSt8_DestroyIPN14arrow_vendored4date6detail15expanded_ttinfoES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !45  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i
  %i.bd = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bc to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bg) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN14arrow_vendored4date6detail15expanded_ttinfoESaIS3_EED2Ev.exit.i
  %i.bh = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.a
  br i1 %i.bi, label %_ZN14arrow_vendored4date9time_zoneD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !31
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #28
  br label %_ZN14arrow_vendored4date9time_zoneD2Ev.exit

_ZN14arrow_vendored4date9time_zoneD2Ev.exit:      ; preds = %_ZNSt6vectorIN14arrow_vendored4date6detail10transitionESaIS3_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #0 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #22

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #21

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZSt2wsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #22

declare noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef, i32 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN14arrow_vendored4dateL10load_leapsIiEESt6vectorINS0_11leap_secondESaIS3_EERSii(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.std::chrono::time_point", align 8 ; 6 uses
  %4 = alloca %"struct.arrow_vendored::date::detail::undocumented", align 1 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = icmp slt i32 %2, 0
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #31
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not22 = icmp eq i32 %2, 0
  br i1 %.not22, label %._crit_edge, label %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = shl nuw nsw i64 %i.c, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #32 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !25
  store ptr %i.h, ptr %i.f, align 8, !tbaa !260
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.c
  store ptr %i.i, ptr %i.e, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit
  %.017 = phi i32 [ 0, %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i ], [ %i.w, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 4)
          to label %bb.d unwind label %bb.h       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.a, align 4, !tbaa !3
  %i.n = call noundef i32 @llvm.bswap.i32(i32 %i.m) ; 2 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !3
  %i.o = load i32, ptr %i.b, align 4, !tbaa !3
  %i.p = call noundef i32 @llvm.bswap.i32(i32 %i.o) ; 2 uses
  store i32 %i.p, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %.neg16 = add i32 %i.n, 1
  %i.q = sub i32 %.neg16, %i.p
  %i.r = sext i32 %i.q to i64
  store i64 %i.r, ptr %3, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !260  ; 3 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc14 unwind label %bb.i

.noexc14:                                         ; preds = %bb.f
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !260
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.v, ptr %i.j, align 8, !tbaa !260
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.s, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit unwind label %bb.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit: ; preds = %bb.g, %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.w = add nuw nsw i32 %.017, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !360

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit, %bb.b
  ret void

bb.j:                                             ; preds = %bb.h, %bb.i
  %.pn = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.x, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %.pre = load ptr, ptr %0, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %.pre to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.ad) #28
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EED2Ev.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !260  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !25     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #31
  unreachable

_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 9 uses
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 72
  %i.w = sub i64 %i.e, %i.q
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.p, i64 %i.x     ; 2 uses
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aa ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.c, i64 %i.aa ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.ab = getelementptr i8, ptr %next.gep48, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep48, align 8, !tbaa !75, !alias.scope !364, !noalias !361
  %wide.load49 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !75, !alias.scope !364, !noalias !361
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !75, !alias.scope !361, !noalias !364
  store <2 x i64> %wide.load49, ptr %i.ac, align 8, !tbaa !75, !alias.scope !361, !noalias !364
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !366

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i.preheader71

.lr.ph.i.i.i.preheader71:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader71, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader71 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader71 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.ae = load i64, ptr %.0911.i.i.i, align 8, !tbaa !75, !alias.scope !364, !noalias !361
  store i64 %i.ae, ptr %.012.i.i.i, align 8, !tbaa !75, !alias.scope !361, !noalias !364
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !367

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN14arrow_vendored4date11leap_secondEEE9constructIS2_JNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvRS3_PT_DpOT0_.exit ], [ %i.y, %middle.block ], [ %i.ag, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i52 = ptrtoaddr ptr %.0.lcssa.i.i.i to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 5 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28.preheader

.lr.ph.i.i.i28.preheader:                         ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.ai = add i64 %i.d, -8
  %i.aj = sub i64 %i.ai, %i.m                     ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check55 = icmp ult i64 %i.aj, 104
  br i1 %min.iters.check55, label %.lr.ph.i.i.i28.preheader70, label %vector.memcheck51

vector.memcheck51:                                ; preds = %.lr.ph.i.i.i28.preheader
  %i.am = sub i64 %.0.lcssa.i.i.i52, %i.m
  %i.an = add i64 %i.am, 7
  %diff.check53 = icmp ult i64 %i.an, 31
  br i1 %diff.check53, label %.lr.ph.i.i.i28.preheader70, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck51
  %n.vec58 = and i64 %i.al, 4611686018427387900   ; 3 uses
  %i.ao = shl i64 %n.vec58, 3                     ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ah, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %1, i64 %i.ao
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph56
  %index60 = phi i64 [ 0, %vector.ph56 ], [ %index.next65, %vector.body59 ] ; 2 uses
  %i.ar = shl i64 %index60, 3                     ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.ah, i64 %i.ar ; 2 uses
  %next.gep62 = getelementptr i8, ptr %1, i64 %i.ar ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.as = getelementptr i8, ptr %next.gep62, i64 16
  %wide.load63 = load <2 x i64>, ptr %next.gep62, align 8, !tbaa !75, !alias.scope !371, !noalias !368
  %wide.load64 = load <2 x i64>, ptr %i.as, align 8, !tbaa !75, !alias.scope !371, !noalias !368
  %i.at = getelementptr i8, ptr %next.gep61, i64 16
  store <2 x i64> %wide.load63, ptr %next.gep61, align 8, !tbaa !75, !alias.scope !368, !noalias !371
  store <2 x i64> %wide.load64, ptr %i.at, align 8, !tbaa !75, !alias.scope !368, !noalias !371
  %index.next65 = add nuw i64 %index60, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.au, label %middle.block66, label %vector.body59, !llvm.loop !373

middle.block66:                                   ; preds = %vector.body59
  %cmp.n67 = icmp eq i64 %i.al, %n.vec58
  br i1 %cmp.n67, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28.preheader70

.lr.ph.i.i.i28.preheader70:                       ; preds = %vector.memcheck51, %.lr.ph.i.i.i28.preheader, %middle.block66
  %.012.i.i.i29.ph = phi ptr [ %i.ah, %vector.memcheck51 ], [ %i.ah, %.lr.ph.i.i.i28.preheader ], [ %i.ap, %middle.block66 ]
  %.0911.i.i.i30.ph = phi ptr [ %1, %vector.memcheck51 ], [ %1, %.lr.ph.i.i.i28.preheader ], [ %i.aq, %middle.block66 ]
  br label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %.lr.ph.i.i.i28.preheader70, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.ax, %.lr.ph.i.i.i28 ], [ %.012.i.i.i29.ph, %.lr.ph.i.i.i28.preheader70 ] ; 2 uses
  %.0911.i.i.i30 = phi ptr [ %i.aw, %.lr.ph.i.i.i28 ], [ %.0911.i.i.i30.ph, %.lr.ph.i.i.i28.preheader70 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.av = load i64, ptr %.0911.i.i.i30, align 8, !tbaa !75, !alias.scope !371, !noalias !368
  store i64 %i.av, ptr %.012.i.i.i29, align 8, !tbaa !75, !alias.scope !368, !noalias !371
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 8 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.aw, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !374

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33: ; preds = %.lr.ph.i.i.i28, %middle.block66, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ah, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ap, %middle.block66 ], [ %i.ax, %.lr.ph.i.i.i28 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !26
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bb) #28
  br label %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !25
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !260
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bc, ptr %i.ay, align 8, !tbaa !26
  ret void

bb.d:                                             ; preds = %bb.e
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12_M_check_lenEmPKc.exit
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  %i.bg = tail call ptr @__cxa_begin_catch(ptr %i.bf) #30 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #28
  invoke void @__cxa_rethrow() #31
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.bd

bb.g:                                             ; preds = %bb.d
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #29
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN14arrow_vendored4dateL10load_leapsIlEESt6vectorINS0_11leap_secondESaIS3_EERSii(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.std::chrono::time_point", align 8 ; 6 uses
  %4 = alloca %"struct.arrow_vendored::date::detail::undocumented", align 1 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = sext i32 %2 to i64                       ; 2 uses
  %i.d = icmp slt i32 %2, 0
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #31
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not21 = icmp eq i32 %2, 0
  br i1 %.not21, label %._crit_edge, label %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = shl nuw nsw i64 %i.c, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #32 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !25
  store ptr %i.h, ptr %i.f, align 8, !tbaa !260
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.c
  store ptr %i.i, ptr %i.e, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit
  %.016 = phi i32 [ 0, %_ZNSt12_Vector_baseIN14arrow_vendored4date11leap_secondESaIS2_EE11_M_allocateEm.exit.i ], [ %i.x, %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 8)
          to label %bb.d unwind label %bb.h       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.a, align 8, !tbaa !75
  %i.n = call noundef i64 @llvm.bswap.i64(i64 %i.m) ; 2 uses
  store i64 %i.n, ptr %i.a, align 8, !tbaa !75
  %i.o = load i32, ptr %i.b, align 4, !tbaa !3
  %i.p = call noundef i32 @llvm.bswap.i32(i32 %i.o) ; 2 uses
  store i32 %i.p, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.q = add nsw i32 %i.p, -1
  %i.r = sext i32 %i.q to i64
  %i.s = sub nsw i64 %i.n, %i.r
  store i64 %i.s, ptr %3, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !260  ; 3 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN14arrow_vendored4date11leap_secondC1ERKNSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1EEEEEENS0_6detail12undocumentedE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc14 unwind label %bb.i

.noexc14:                                         ; preds = %bb.f
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !260
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.w, ptr %i.j, align 8, !tbaa !260
  br label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE17_M_realloc_insertIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.t, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit unwind label %bb.i

_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit: ; preds = %bb.g, %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.x = add nuw nsw i32 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !375

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt6vectorIN14arrow_vendored4date11leap_secondESaIS2_EE12emplace_backIJNSt6chrono10time_pointINS6_3_V212system_clockENS6_8durationIlSt5ratioILl1ELl1EEEEEENS1_6detail12undocumentedEEEERS2_DpOT_.exit, %bb.b
  ret void

bb.j:                                             ; preds = %bb.h, %bb.i
  %.pn = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.y, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
end_hunk_2
