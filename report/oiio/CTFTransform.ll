inline.NumInlined: 3285
inline.NumDeleted: 896
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriter12writeContentEv:bb.a
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::vector", align 8       ; 10 uses
  %6 = alloca %"class.OpenColorIO_v2_5::XmlScopeIndent", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 16 ; 32 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriter12writeContentEv:bb.a
  %i.au = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.au, i64 -24    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriter12writeContentEv:bb.a
bb.ad:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bb) #28
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.bb, align 16, !tbaa !43
  store ptr null, ptr %i.bc, align 8, !tbaa !603
  store i8 0, ptr %i.bd, align 16, !tbaa !610
  store i8 0, ptr %i.be, align 1, !tbaa !611
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i8 0, i64 32, i1 false)
  store ptr %i.bg, ptr %7, align 16, !tbaa !43
  %i.gf = load i64, ptr %i.bi, align 8
  %i.gg = getelementptr inbounds i8, ptr %7, i64 %i.gf
  store ptr %i.bh, ptr %i.gg, align 8, !tbaa !43
  %i.gh = load ptr, ptr %7, align 16, !tbaa !43
  %i.gi = getelementptr i8, ptr %i.gh, i64 -24
  %i.gj = load i64, ptr %i.gi, align 8
  %i.gk = getelementptr inbounds i8, ptr %7, i64 %i.gj
end_hunk_2
begin_hunk_3_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriter12writeContentEv:bb.a
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.bb, align 16, !tbaa !43
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %7, align 16, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bj, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) #28
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ax, align 8, !tbaa !43
  store i32 16, ptr %i.bk, align 8, !tbaa !410
  store ptr %i.ay, ptr %i.at, align 16, !tbaa !24
  store i64 0, ptr %i.az, align 8, !tbaa !16
  store i8 0, ptr %i.ay, align 16, !tbaa !17
  %i.gl = load ptr, ptr %7, align 16, !tbaa !43
  %i.gm = getelementptr i8, ptr %i.gl, i64 -24
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = getelementptr inbounds i8, ptr %7, i64 %i.gn
end_hunk_3
begin_hunk_4_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriter12writeContentEv:bb.a
  br label %.body41

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit: ; preds = %bb.ae
  %i.gr = load ptr, ptr %7, align 16, !tbaa !43
  %i.gs = getelementptr i8, ptr %i.gr, i64 -24    ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8
  %i.gu = getelementptr inbounds i8, ptr %7, i64 %i.gt
end_hunk_4
begin_hunk_5_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriter12writeContentEv:bb.a
  store ptr %i.ao, ptr %8, align 8, !tbaa !24, !alias.scope !623
  store i64 0, ptr %i.ap, align 8, !tbaa !16, !alias.scope !623
  store i8 0, ptr %i.ao, align 8, !tbaa !17, !alias.scope !623
  %i.hi = load ptr, ptr %i.aq, align 16, !tbaa !104, !noalias !623 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.hi, null
  %i.hj = load ptr, ptr %i.ar, align 16, !noalias !623 ; 2 uses
  %i.hk = icmp ugt ptr %i.hi, %i.hj
  %.08.i.i.i.i = select i1 %i.hk, ptr %i.hi, ptr %i.hj ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
end_hunk_5
begin_hunk_6_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingRGBCurveWriter12writeContentEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  store ptr %i.au, ptr %7, align 16, !tbaa !43
  %i.hx = load i64, ptr %i.aw, align 8
  %i.hy = getelementptr inbounds i8, ptr %7, i64 %i.hx
  store ptr %i.av, ptr %i.hy, align 8, !tbaa !43
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ax, align 8, !tbaa !43
  %i.hz = load ptr, ptr %i.at, align 16, !tbaa !11 ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.ay
  br i1 %i.ia, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i
  %i.ib = load i64, ptr %i.ay, align 16, !tbaa !17
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i
end_hunk_6
begin_hunk_7_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriter12writeContentEv:bb.a
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::vector", align 8       ; 10 uses
  %6 = alloca %"class.OpenColorIO_v2_5::XmlScopeIndent", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 16 ; 32 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
end_hunk_7
begin_hunk_8_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriter12writeContentEv:bb.a
  %i.au = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.au, i64 -24    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
end_hunk_8
begin_hunk_9_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriter12writeContentEv:bb.a
bb.ad:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.bb) #28
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.bb, align 16, !tbaa !43
  store ptr null, ptr %i.bc, align 8, !tbaa !603
  store i8 0, ptr %i.bd, align 16, !tbaa !610
  store i8 0, ptr %i.be, align 1, !tbaa !611
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i8 0, i64 32, i1 false)
  store ptr %i.bg, ptr %7, align 16, !tbaa !43
  %i.gh = load i64, ptr %i.bi, align 8
  %i.gi = getelementptr inbounds i8, ptr %7, i64 %i.gh
  store ptr %i.bh, ptr %i.gi, align 8, !tbaa !43
  %i.gj = load ptr, ptr %7, align 16, !tbaa !43
  %i.gk = getelementptr i8, ptr %i.gj, i64 -24
  %i.gl = load i64, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds i8, ptr %7, i64 %i.gl
end_hunk_9
begin_hunk_10_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriter12writeContentEv:bb.a
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.bb, align 16, !tbaa !43
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %7, align 16, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bj, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ba) #28
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ax, align 8, !tbaa !43
  store i32 16, ptr %i.bk, align 8, !tbaa !410
  store ptr %i.ay, ptr %i.at, align 16, !tbaa !24
  store i64 0, ptr %i.az, align 8, !tbaa !16
  store i8 0, ptr %i.ay, align 16, !tbaa !17
  %i.gn = load ptr, ptr %7, align 16, !tbaa !43
  %i.go = getelementptr i8, ptr %i.gn, i64 -24
  %i.gp = load i64, ptr %i.go, align 8
  %i.gq = getelementptr inbounds i8, ptr %7, i64 %i.gp
end_hunk_10
begin_hunk_11_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriter12writeContentEv:bb.a
  br label %.body42

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev.exit: ; preds = %bb.ae
  %i.gt = load ptr, ptr %7, align 16, !tbaa !43
  %i.gu = getelementptr i8, ptr %i.gt, i64 -24    ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8
  %i.gw = getelementptr inbounds i8, ptr %7, i64 %i.gv
end_hunk_11
begin_hunk_12_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriter12writeContentEv:bb.a
  store ptr %i.ao, ptr %8, align 8, !tbaa !24, !alias.scope !661
  store i64 0, ptr %i.ap, align 8, !tbaa !16, !alias.scope !661
  store i8 0, ptr %i.ao, align 8, !tbaa !17, !alias.scope !661
  %i.hk = load ptr, ptr %i.aq, align 16, !tbaa !104, !noalias !661 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.hk, null
  %i.hl = load ptr, ptr %i.ar, align 16, !noalias !661 ; 2 uses
  %i.hm = icmp ugt ptr %i.hk, %i.hl
  %.08.i.i.i.i = select i1 %i.hm, ptr %i.hk, ptr %i.hl ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
end_hunk_12
begin_hunk_13_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_121GradingHueCurveWriter12writeContentEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  store ptr %i.au, ptr %7, align 16, !tbaa !43
  %i.hz = load i64, ptr %i.aw, align 8
  %i.ia = getelementptr inbounds i8, ptr %7, i64 %i.hz
  store ptr %i.av, ptr %i.ia, align 8, !tbaa !43
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ax, align 8, !tbaa !43
  %i.ib = load ptr, ptr %i.at, align 16, !tbaa !11 ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.ay
  br i1 %i.ic, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i
  %i.id = load i64, ptr %i.ay, align 16, !tbaa !17
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i
end_hunk_13
