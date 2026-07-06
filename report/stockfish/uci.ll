inline.NumInlined: 1415
inline.NumDeleted: 622
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9Stockfish9UCIEngine12format_scoreB5cxx11ERKNS_5ScoreE:bb.a
  %.0.lcssa.i.i.i.i.i.i16.i.i.i = phi i32 [ %i.bp, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i.i13.i.i.i ], [ %i.ck, %.lr.ph.i11.i.i.i.i.i23.i.i.i ] ; 3 uses
  %i.cx = icmp samesign ugt i32 %.0.lcssa.i.i.i.i.i.i16.i.i.i, 9
  br i1 %i.cx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i2.i.i.i.i.i.i.i
  %i.cy = shl nuw nsw i32 %.0.lcssa.i.i.i.i.i.i16.i.i.i, 1
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !34, !noalias !288
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !34, !noalias !276
  %i.de = load i8, ptr %i.da, align 2, !tbaa !34, !noalias !288
  br label %_ZNSt7__cxx119to_stringEi.exit.i.i.i.i17.i.i.i

bb.s:                                             ; preds = %._crit_edge.i.i2.i.i.i.i.i.i.i
  %i.df = trunc nuw nsw i32 %.0.lcssa.i.i.i.i.i.i16.i.i.i to i8
  %i.dg = or disjoint i8 %i.df, 48
  br label %_ZNSt7__cxx119to_stringEi.exit.i.i.i.i17.i.i.i

_ZNSt7__cxx119to_stringEi.exit.i.i.i.i17.i.i.i:   ; preds = %bb.s, %bb.r
  %storemerge.i.i.i.i.i.i18.i.i.i = phi i8 [ %i.dg, %bb.s ], [ %i.de, %bb.r ]
  store i8 %storemerge.i.i.i.i.i.i18.i.i.i, ptr %i.cf, align 1, !tbaa !34, !noalias !276
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.dh = load ptr, ptr %5, align 8, !tbaa !60, !noalias !276 ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.cc
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i20.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19.i.i.i: ; preds = %_ZNSt7__cxx119to_stringEi.exit.i.i.i.i17.i.i.i
  %i.dj = load i64, ptr %i.cc, align 8, !tbaa !34, !noalias !276
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i20.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i20.i.i.i: ; preds = %_ZNSt7__cxx119to_stringEi.exit.i.i.i.i17.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !276
  %i.dl = load ptr, ptr %4, align 8, !tbaa !60, !noalias !276 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.bk
  br i1 %i.dm, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKN9Stockfish8overloadIJZNSB_9UCIEngine12format_scoreERKNSB_5ScoreEE3$_0ZNSD_12format_scoreESG_E3$_1ZNSD_12format_scoreESG_E3$_2EEERKSt7variantIJNSE_4MateENSE_9TablebaseENSE_13InternalUnitsEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_ST_.exit.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i20.i.i.i
  %i.dn = load i64, ptr %i.bk, align 8, !tbaa !34, !noalias !276
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #30
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKN9Stockfish8overloadIJZNSB_9UCIEngine12format_scoreERKNSB_5ScoreEE3$_0ZNSD_12format_scoreESG_E3$_1ZNSD_12format_scoreESG_E3$_2EEERKSt7variantIJNSE_4MateENSE_9TablebaseENSE_13InternalUnitsEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_ST_.exit.i.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKN9Stockfish8overloadIJZNSB_9UCIEngine12format_scoreERKNSB_5ScoreEE3$_0ZNSD_12format_scoreESG_E3$_1ZNSD_12format_scoreESG_E3$_2EEERKSt7variantIJNSE_4MateENSE_9TablebaseENSE_13InternalUnitsEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_ST_.exit.i.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i20.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !276
  br label %"_ZNK9Stockfish5Score5visitIRKNS_8overloadIJZNS_9UCIEngine12format_scoreB5cxx11ERKS0_E3$_0ZNS3_12format_scoreB5cxx11ES5_E3$_1ZNS3_12format_scoreB5cxx11ES5_E3$_2EEEEEDcOT_.exit"

bb.t:                                             ; preds = %bb.a
  %.val9.i.i.i = load i32, ptr %1, align 4, !tbaa !262, !noalias !255 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !289
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.dp, ptr %2, align 8, !tbaa !58, !noalias !289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.dp, ptr noundef nonnull align 1 dereferenceable(3) @.str.106, i64 3, i1 false), !noalias !289
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 3, ptr %i.dq, align 8, !tbaa !62, !noalias !289
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 19
  store i8 0, ptr %i.dr, align 1, !tbaa !34, !noalias !289
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !289
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.ds = call i32 @llvm.abs.i32(i32 %.val9.i.i.i, i1 false) ; 5 uses
  %i.dt = icmp ult i32 %i.ds, 10
  br i1 %i.dt, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i.i29.i.i.i, label %.lr.ph.i.i.i.i.i.i26.i.i.i

.lr.ph.i.i.i.i.i.i26.i.i.i:                       ; preds = %bb.t, %bb.z
  %.02230.i.i.i.i.i.i27.i.i.i = phi i32 [ %i.ea, %bb.z ], [ %i.ds, %bb.t ] ; 5 uses
  %.02329.i.i.i.i.i.i28.i.i.i = phi i32 [ %i.eb, %bb.z ], [ 1, %bb.t ] ; 4 uses
  %i.du = icmp ult i32 %.02230.i.i.i.i.i.i27.i.i.i, 100
  br i1 %i.du, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i26.i.i.i
  %i.dv = add i32 %.02329.i.i.i.i.i.i28.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i.i29.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i26.i.i.i
  %i.dw = icmp ult i32 %.02230.i.i.i.i.i.i27.i.i.i, 1000
  br i1 %i.dw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dx = add i32 %.02329.i.i.i.i.i.i28.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i.i29.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.dy = icmp ult i32 %.02230.i.i.i.i.i.i27.i.i.i, 10000
  br i1 %i.dy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dz = add i32 %.02329.i.i.i.i.i.i28.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i.i29.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.ea = udiv i32 %.02230.i.i.i.i.i.i27.i.i.i, 10000
  %i.eb = add i32 %.02329.i.i.i.i.i.i28.i.i.i, 4  ; 2 uses
  %i.ec = icmp ult i32 %.02230.i.i.i.i.i.i27.i.i.i, 100000
  br i1 %i.ec, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i.i29.i.i.i, label %.lr.ph.i.i.i.i.i.i26.i.i.i, !llvm.loop !222

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i.i29.i.i.i: ; preds = %bb.z, %bb.y, %bb.w, %bb.u, %bb.t
  %.0.i.i.i.i.i.i30.i.i.i = phi i32 [ %i.dz, %bb.y ], [ %i.dv, %bb.u ], [ %i.dx, %bb.w ], [ 1, %bb.t ], [ %i.eb, %bb.z ] ; 2 uses
  %.lobit.i.i.i.i.i31.i.i.i = lshr i32 %.val9.i.i.i, 31 ; 2 uses
  %i.ed = add i32 %.0.i.i.i.i.i.i30.i.i.i, %.lobit.i.i.i.i.i31.i.i.i
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.ef, ptr %3, align 8, !tbaa !58, !alias.scope !298, !noalias !289
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ee, i8 noundef signext 45) #26, !noalias !289
  %i.eg = zext nneg i32 %.lobit.i.i.i.i.i31.i.i.i to i64
  %i.eh = load ptr, ptr %3, align 8, !tbaa !60, !alias.scope !298, !noalias !289
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eg ; 4 uses
  %i.ej = icmp ugt i32 %i.ds, 99
  br i1 %i.ej, label %.lr.ph.preheader.i.i.i.i.i.i38.i.i.i, label %._crit_edge.i.i1.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i38.i.i.i:             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i.i29.i.i.i
  %i.ek = add i32 %.0.i.i.i.i.i.i30.i.i.i, -1
  br label %.lr.ph.i11.i.i.i.i.i39.i.i.i

.lr.ph.i11.i.i.i.i.i39.i.i.i:                     ; preds = %.lr.ph.i11.i.i.i.i.i39.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i38.i.i.i
  %.020.i.i.i.i.i.i40.i.i.i = phi i32 [ %i.en, %.lr.ph.i11.i.i.i.i.i39.i.i.i ], [ %i.ds, %.lr.ph.preheader.i.i.i.i.i.i38.i.i.i ] ; 3 uses
  %.01819.i.i.i.i.i.i41.i.i.i = phi i32 [ %i.ey, %.lr.ph.i11.i.i.i.i.i39.i.i.i ], [ %i.ek, %.lr.ph.preheader.i.i.i.i.i.i38.i.i.i ] ; 3 uses
  %i.el = urem i32 %.020.i.i.i.i.i.i40.i.i.i, 100
  %i.em = shl nuw nsw i32 %i.el, 1
  %i.en = udiv i32 %.020.i.i.i.i.i.i40.i.i.i, 100 ; 2 uses
  %i.eo = zext nneg i32 %i.em to i64
  %i.ep = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.eo ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !34, !noalias !301
  %i.es = zext i32 %.01819.i.i.i.i.i.i41.i.i.i to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.es
  store i8 %i.er, ptr %i.et, align 1, !tbaa !34, !noalias !289
  %i.eu = load i8, ptr %i.ep, align 2, !tbaa !34, !noalias !301
  %i.ev = add i32 %.01819.i.i.i.i.i.i41.i.i.i, -1
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ew
  store i8 %i.eu, ptr %i.ex, align 1, !tbaa !34, !noalias !289
  %i.ey = add i32 %.01819.i.i.i.i.i.i41.i.i.i, -2
  %i.ez = icmp ugt i32 %.020.i.i.i.i.i.i40.i.i.i, 9999
  br i1 %i.ez, label %.lr.ph.i11.i.i.i.i.i39.i.i.i, label %._crit_edge.i.i1.i.i.i.i.i.i.i, !llvm.loop !223

._crit_edge.i.i1.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i11.i.i.i.i.i39.i.i.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i.i29.i.i.i
  %.0.lcssa.i.i.i.i.i.i32.i.i.i = phi i32 [ %i.ds, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i.i.i.i29.i.i.i ], [ %i.en, %.lr.ph.i11.i.i.i.i.i39.i.i.i ] ; 3 uses
  %i.fa = icmp samesign ugt i32 %.0.lcssa.i.i.i.i.i.i32.i.i.i, 9
  br i1 %i.fa, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i1.i.i.i.i.i.i.i
  %i.fb = shl nuw nsw i32 %.0.lcssa.i.i.i.i.i.i32.i.i.i, 1
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !34, !noalias !301
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !34, !noalias !289
  %i.fh = load i8, ptr %i.fd, align 2, !tbaa !34, !noalias !301
  br label %_ZNSt7__cxx119to_stringEi.exit.i.i.i.i33.i.i.i

bb.ab:                                            ; preds = %._crit_edge.i.i1.i.i.i.i.i.i.i
  %i.fi = trunc nuw nsw i32 %.0.lcssa.i.i.i.i.i.i32.i.i.i to i8
  %i.fj = or disjoint i8 %i.fi, 48
  br label %_ZNSt7__cxx119to_stringEi.exit.i.i.i.i33.i.i.i

_ZNSt7__cxx119to_stringEi.exit.i.i.i.i33.i.i.i:   ; preds = %bb.ab, %bb.aa
  %storemerge.i.i.i.i.i.i34.i.i.i = phi i8 [ %i.fj, %bb.ab ], [ %i.fh, %bb.aa ]
  store i8 %storemerge.i.i.i.i.i.i34.i.i.i, ptr %i.ei, align 1, !tbaa !34, !noalias !289
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.fk = load ptr, ptr %3, align 8, !tbaa !60, !noalias !289 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.ef
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i36.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i35.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i35.i.i.i: ; preds = %_ZNSt7__cxx119to_stringEi.exit.i.i.i.i33.i.i.i
  %i.fm = load i64, ptr %i.ef, align 8, !tbaa !34, !noalias !289
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i36.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i36.i.i.i: ; preds = %_ZNSt7__cxx119to_stringEi.exit.i.i.i.i33.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i35.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !289
  %i.fo = load ptr, ptr %2, align 8, !tbaa !60, !noalias !289 ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.dp
  br i1 %i.fp, label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKN9Stockfish8overloadIJZNSB_9UCIEngine12format_scoreERKNSB_5ScoreEE3$_0ZNSD_12format_scoreESG_E3$_1ZNSD_12format_scoreESG_E3$_2EEERKSt7variantIJNSE_4MateENSE_9TablebaseENSE_13InternalUnitsEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_ST_.exit.i.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i36.i.i.i
  %i.fq = load i64, ptr %i.dp, align 8, !tbaa !34, !noalias !289
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #30
  br label %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKN9Stockfish8overloadIJZNSB_9UCIEngine12format_scoreERKNSB_5ScoreEE3$_0ZNSD_12format_scoreESG_E3$_1ZNSD_12format_scoreESG_E3$_2EEERKSt7variantIJNSE_4MateENSE_9TablebaseENSE_13InternalUnitsEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_ST_.exit.i.i.i"

"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKN9Stockfish8overloadIJZNSB_9UCIEngine12format_scoreERKNSB_5ScoreEE3$_0ZNSD_12format_scoreESG_E3$_1ZNSD_12format_scoreESG_E3$_2EEERKSt7variantIJNSE_4MateENSE_9TablebaseENSE_13InternalUnitsEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_ST_.exit.i.i.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i36.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !289
  br label %"_ZNK9Stockfish5Score5visitIRKNS_8overloadIJZNS_9UCIEngine12format_scoreB5cxx11ERKS0_E3$_0ZNS3_12format_scoreB5cxx11ES5_E3$_1ZNS3_12format_scoreB5cxx11ES5_E3$_2EEEEEDcOT_.exit"

bb.ac:                                            ; preds = %bb.a
  unreachable

"_ZNK9Stockfish5Score5visitIRKNS_8overloadIJZNS_9UCIEngine12format_scoreB5cxx11ERKS0_E3$_0ZNS3_12format_scoreB5cxx11ES5_E3$_1ZNS3_12format_scoreB5cxx11ES5_E3$_2EEEEEDcOT_.exit": ; preds = %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKN9Stockfish8overloadIJZNSB_9UCIEngine12format_scoreERKNSB_5ScoreEE3$_0ZNSD_12format_scoreESG_E3$_1ZNSD_12format_scoreESG_E3$_2EEERKSt7variantIJNSE_4MateENSE_9TablebaseENSE_13InternalUnitsEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESM_ST_.exit.i.i.i", %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKN9Stockfish8overloadIJZNSB_9UCIEngine12format_scoreERKNSB_5ScoreEE3$_0ZNSD_12format_scoreESG_E3$_1ZNSD_12format_scoreESG_E3$_2EEERKSt7variantIJNSE_4MateENSE_9TablebaseENSE_13InternalUnitsEEEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESM_ST_.exit.i.i.i", %"_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKN9Stockfish8overloadIJZNSB_9UCIEngine12format_scoreERKNSB_5ScoreEE3$_0ZNSD_12format_scoreESG_E3$_1ZNSD_12format_scoreESG_E3$_2EEERKSt7variantIJNSE_4MateENSE_9TablebaseENSE_13InternalUnitsEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESM_ST_.exit.i.i.i"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9Stockfish9UCIEngine5to_cpEiRKNS_8PositionE(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 148
  %2 = load i32, ptr %i.a, align 4, !tbaa !262
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 180
  %3 = load i32, ptr %i.b, align 4, !tbaa !262
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = load i32, ptr %i.c, align 8, !tbaa !262
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.f = load i32, ptr %i.e, align 8, !tbaa !262
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.h = load i32, ptr %i.g, align 4, !tbaa !262
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.j = load i32, ptr %i.i, align 4, !tbaa !262
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.m = load <2 x i32>, ptr %i.k, align 8, !tbaa !262
  %i.n = load <2 x i32>, ptr %i.l, align 8, !tbaa !262
  %i.o = add nsw <2 x i32> %i.n, %i.m
  %4 = mul nsw <2 x i32> %i.o, <i32 5, i32 9>     ; 2 uses
  %5 = add i32 %i.f, %i.d
  %6 = add i32 %5, %i.h
  %reass.add.i = add i32 %6, %i.j
  %reass.mul.i = mul i32 %reass.add.i, 3
  %i.p = add i32 %3, %2
  %i.q = add i32 %i.p, %reass.mul.i
  %7 = extractelement <2 x i32> %4, i64 0
  %8 = add i32 %i.q, %7
  %9 = extractelement <2 x i32> %4, i64 1
  %i.r = add i32 %8, %9
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.r, i32 17)
  %i.s = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i, i32 78)
  %i.t = uitofp nneg i32 %i.s to double
  %i.u = fdiv double %i.t, 5.800000e+01           ; 3 uses
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double f0xC05214D79629779E, double f0x40673E06B87628A6)
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double %i.u, double f0xC06212D5FDA861DE)
  %i.x = tail call double @llvm.fmuladd.f64(double %i.w, double %i.u, double f0x407A07312B96B1B3)
  %i.y = mul nsw i32 %0, 100
  %i.z = sitofp i32 %i.y to double
  %i.aa = fdiv double %i.z, %i.x
  %i.ab = tail call double @llvm.round.f64(double %i.aa)
  %i.ac = fptosi double %i.ab to i32
  ret i32 %i.ac
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish9UCIEngine3wdlB5cxx11EiRKNS_8PositionE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1048) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 344
  store ptr null, ptr %i.b, align 8, !tbaa !183
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 352
  store i8 0, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 353
  store i8 0, ptr %i.d, align 1, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !35
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 -24      ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %3, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !186
  %i.l = load ptr, ptr %3, align 8, !tbaa !35
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.o, ptr noundef null) #26
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !35
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8, !tbaa !35
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.p, i64 %i.x
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef null) #26
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.z, ptr %3, align 8, !tbaa !35
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %3, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %3, align 8, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.a, align 8, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.p, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #26
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 24, ptr %i.ah, align 8, !tbaa !302
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 4 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 0, ptr %i.ak, align 8, !tbaa !62
  store i8 0, ptr %i.aj, align 8, !tbaa !34
  %i.al = load ptr, ptr %3, align 8, !tbaa !35
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %3, i64 %i.an
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, ptr noundef nonnull %i.ae) #26
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 148 ; 2 uses
  %4 = load i32, ptr %i.ap, align 4, !tbaa !262
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 180 ; 2 uses
  %5 = load i32, ptr %i.aq, align 4, !tbaa !262
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !262
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !262
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 156 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !262
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 188 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !262
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.bb = load <2 x i32>, ptr %i.az, align 8, !tbaa !262
  %i.bc = load <2 x i32>, ptr %i.ba, align 8, !tbaa !262
  %i.bd = add nsw <2 x i32> %i.bc, %i.bb
  %6 = mul nsw <2 x i32> %i.bd, <i32 5, i32 9>    ; 2 uses
  %7 = add i32 %i.au, %i.as
  %8 = add i32 %7, %i.aw
  %reass.add.i.i = add i32 %8, %i.ay
  %reass.mul.i.i = mul i32 %reass.add.i.i, 3
  %i.be = add i32 %5, %4
  %i.bf = add i32 %i.be, %reass.mul.i.i
  %9 = extractelement <2 x i32> %6, i64 0
  %10 = add i32 %i.bf, %9
  %11 = extractelement <2 x i32> %6, i64 1
  %i.bg = add i32 %10, %11
  %.sroa.speculate.load.false.sroa.speculated.i.i = call i32 @llvm.smax.i32(i32 %i.bg, i32 17)
  %i.bh = call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i, i32 78)
  %i.bi = uitofp nneg i32 %i.bh to double
  %i.bj = fdiv double %i.bi, 5.800000e+01         ; 6 uses
  %i.bk = call double @llvm.fmuladd.f64(double %i.bj, double f0xC05214D79629779E, double f0x40673E06B87628A6)
  %i.bl = call double @llvm.fmuladd.f64(double %i.bk, double %i.bj, double f0xC06212D5FDA861DE)
  %i.bm = call double @llvm.fmuladd.f64(double %i.bl, double %i.bj, double f0x407A07312B96B1B3)
  %i.bn = call double @llvm.fmuladd.f64(double %i.bj, double f0x4054F78C55F9B1B2, double f0xC06101F4C6D6BE93)
  %i.bo = call double @llvm.fmuladd.f64(double %i.bn, double %i.bj, double f0x40517F3ED06A9118)
  %i.bp = call double @llvm.fmuladd.f64(double %i.bo, double %i.bj, double f0x4047D0838AA4085D)
  %i.bq = sitofp i32 %1 to double
  %i.br = fsub double %i.bm, %i.bq
  %i.bs = fdiv double %i.br, %i.bp
  %i.bt = call double @exp(double noundef %i.bs) #26
  %i.bu = sub nsw i32 0, %1
  %i.bv = load i32, ptr %i.ap, align 4, !tbaa !262
  %i.bw = load i32, ptr %i.aq, align 4, !tbaa !262
  %i.bx = load i32, ptr %i.ar, align 8, !tbaa !262
  %i.by = load i32, ptr %i.at, align 8, !tbaa !262
  %i.bz = load i32, ptr %i.av, align 4, !tbaa !262
  %i.ca = load i32, ptr %i.ax, align 4, !tbaa !262
  %i.cb = load <2 x i32>, ptr %i.az, align 8, !tbaa !262
  %i.cc = load <2 x i32>, ptr %i.ba, align 8, !tbaa !262
  %i.cd = add nsw <2 x i32> %i.cc, %i.cb
  %12 = mul nsw <2 x i32> %i.cd, <i32 5, i32 9>   ; 2 uses
  %13 = add i32 %i.by, %i.bx
  %14 = add i32 %13, %i.bz
  %reass.add.i.i8 = add i32 %14, %i.ca
  %reass.mul.i.i9 = mul i32 %reass.add.i.i8, 3
  %i.ce = add i32 %i.bw, %i.bv
  %i.cf = add i32 %i.ce, %reass.mul.i.i9
  %15 = extractelement <2 x i32> %12, i64 0
  %16 = add i32 %i.cf, %15
  %17 = extractelement <2 x i32> %12, i64 1
  %i.cg = add i32 %16, %17
  %.sroa.speculate.load.false.sroa.speculated.i.i10 = call i32 @llvm.smax.i32(i32 %i.cg, i32 17)
  %i.ch = call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i10, i32 78)
  %i.ci = uitofp nneg i32 %i.ch to double
  %i.cj = fdiv double %i.ci, 5.800000e+01         ; 6 uses
  %i.ck = call double @llvm.fmuladd.f64(double %i.cj, double f0xC05214D79629779E, double f0x40673E06B87628A6)
  %i.cl = call double @llvm.fmuladd.f64(double %i.ck, double %i.cj, double f0xC06212D5FDA861DE)
  %i.cm = call double @llvm.fmuladd.f64(double %i.cl, double %i.cj, double f0x407A07312B96B1B3)
  %i.cn = call double @llvm.fmuladd.f64(double %i.cj, double f0x4054F78C55F9B1B2, double f0xC06101F4C6D6BE93)
  %i.co = call double @llvm.fmuladd.f64(double %i.cn, double %i.cj, double f0x40517F3ED06A9118)
  %i.cp = call double @llvm.fmuladd.f64(double %i.co, double %i.cj, double f0x4047D0838AA4085D)
  %i.cq = sitofp i32 %i.bu to double
  %i.cr = fsub double %i.cm, %i.cq
  %i.cs = fdiv double %i.cr, %i.cp
  %i.ct = call double @exp(double noundef %i.cs) #26
  %i.cu = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.cv = insertelement <2 x double> %i.cu, double %i.ct, i64 1
  %i.cw = fadd <2 x double> %i.cv, splat (double 1.000000e+00)
  %i.cx = fdiv <2 x double> splat (double 1.000000e+03), %i.cw
  %i.cy = fadd <2 x double> %i.cx, splat (double 5.000000e-01)
  %i.cz = fptosi <2 x double> %i.cy to <2 x i32>  ; 2 uses
  %i.da = extractelement <2 x i32> %i.cz, i64 0   ; 2 uses
  %i.db = extractelement <2 x i32> %i.cz, i64 1   ; 2 uses
  %i.dc = add i32 %i.da, %i.db
  %i.dd = sub i32 1000, %i.dc
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 noundef %i.da) #26 ; 2 uses
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef nonnull @.str.3, i64 noundef 1) #26 ; 0 uses
  %i.dg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.de, i32 noundef %i.dd) #26 ; 2 uses
  %i.dh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull @.str.3, i64 noundef 1) #26 ; 0 uses
  %i.di = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, i32 noundef %i.db) #26 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.dj, ptr %0, align 8, !tbaa !58, !alias.scope !312
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.dk, align 8, !tbaa !62, !alias.scope !312
  store i8 0, ptr %i.dj, align 8, !tbaa !34, !alias.scope !312
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !313, !noalias !312 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.dm, null
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !312 ; 2 uses
  %i.dp = icmp ugt ptr %i.dm, %i.do
  %.08.i.i.i = select i1 %i.dp, ptr %i.dm, ptr %i.do ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !314, !noalias !312 ; 2 uses
  %i.ds = ptrtoint ptr %.08.i.i.i to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.dr, i64 noundef %i.du) #26 ; 0 uses
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ai) #26
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.c
  %i.dw = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dw, ptr %3, align 8, !tbaa !35
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.dy = getelementptr i8, ptr %i.dw, i64 -24
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds i8, ptr %3, i64 %i.dz
  store ptr %i.dx, ptr %i.ea, align 8, !tbaa !35
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.eb, ptr %i.p, align 8, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8, !tbaa !35
  %i.ec = load ptr, ptr %i.ai, align 8, !tbaa !60 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.aj
  br i1 %i.ed, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ee = load i64, ptr %i.aj, align 8, !tbaa !34
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #30
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8, !tbaa !35
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #26
  store ptr %i.f, ptr %3, align 8, !tbaa !35
  %i.eg = load i64, ptr %i.h, align 8
  %i.eh = getelementptr inbounds i8, ptr %3, i64 %i.eg
  store ptr %i.g, ptr %i.eh, align 8, !tbaa !35
  store i64 0, ptr %i.k, align 8, !tbaa !186
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9Stockfish9UCIEngine6squareB5cxx11ENS_6SquareE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef zeroext %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = and i8 %1, 7
  %i.b = add nuw nsw i8 %i.a, 97
  %i.c = lshr i8 %1, 3
  %i.d = add nuw nsw i8 %i.c, 49
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !58
  store i8 %i.b, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.d, ptr %.sroa.4.0..sroa_idx, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.f, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 0, ptr %i.g, align 2, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish9UCIEngine4moveB5cxx11ENS_4MoveEb(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i16 %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  switch i16 %1, label %bb.b [
    i16 0, label %._crit_edge.i.i
    i16 65, label %._crit_edge.i.i7
  ]

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.80, i64 6, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.b, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.c, align 2, !tbaa !34
  br label %bb.e

._crit_edge.i.i7:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !58
  store i32 808464432, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.e, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.f, align 4, !tbaa !34
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i16 %1, 6
  %i.h = trunc i16 %i.g to i8                     ; 3 uses
  %i.i = and i8 %i.h, 63                          ; 2 uses
  %i.j = trunc i16 %1 to i8
  %i.k = and i8 %i.j, 63                          ; 2 uses
  %i.l = and i16 %1, -16384
  %i.m = icmp ult i16 %1, -16384
  %or.cond = or i1 %i.m, %2
  %i.n = icmp samesign ugt i8 %i.k, %i.i
  %i.o = select i1 %i.n, i8 6, i8 2
  %i.p = and i8 %i.h, 56
  %i.q = or disjoint i8 %i.o, %i.p
  %.0 = select i1 %or.cond, i8 %i.k, i8 %i.q      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.r = and i8 %i.h, 7
  %i.s = add nuw nsw i8 %i.r, 97
  %i.t = lshr i8 %i.i, 3
  %i.u = add nuw nsw i8 %i.t, 49
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.v, ptr %3, align 8, !tbaa !58, !alias.scope !315
  store i8 %i.s, ptr %i.v, align 8, !alias.scope !315
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 %i.u, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !315
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.w, align 8, !tbaa !62, !alias.scope !315
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 0, ptr %i.x, align 2, !tbaa !34, !alias.scope !315
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.y = and i8 %.0, 7
  %i.z = add nuw nsw i8 %i.y, 97
  %i.aa = lshr i8 %.0, 3
  %i.ab = add nuw nsw i8 %i.aa, 49
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.ac, ptr %4, align 8, !tbaa !58, !alias.scope !318
  store i8 %i.z, ptr %i.ac, align 8, !alias.scope !318
  %.sroa.4.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 %i.ab, ptr %.sroa.4.0..sroa_idx.i9, align 1, !alias.scope !318
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.ad, align 8, !tbaa !62, !alias.scope !318
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 0, ptr %i.ae, align 2, !tbaa !34, !alias.scope !318
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.af = load ptr, ptr %4, align 8, !tbaa !60    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.ac
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !34
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.aj = load ptr, ptr %3, align 8, !tbaa !60    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.v
end_hunk_0
begin_hunk_1_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !58
  %i.t = load ptr, ptr %2, align 8, !tbaa !60     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !62   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.v, ptr %i.a, align 8, !tbaa !11
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #26 ; 2 uses
  store ptr %i.x, ptr %i.r, align 8, !tbaa !60
  %i.y = load i64, ptr %i.a, align 8, !tbaa !11
  store i64 %i.y, ptr %i.s, align 8, !tbaa !34
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.x, %bb.c ], [ %i.s, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.v, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !34
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !62
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !58, !alias.scope !387, !noalias !390
  %i.ag = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !60, !alias.scope !390, !noalias !387 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !62, !alias.scope !390, !noalias !387 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !392
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !60, !alias.scope !387, !noalias !390
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !34, !alias.scope !390, !noalias !387
  store i64 %i.an, ptr %i.af, align 8, !tbaa !34, !alias.scope !387, !noalias !390
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !62, !alias.scope !390, !noalias !387
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.ao = phi i64 [ %i.ak, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !62, !alias.scope !387, !noalias !390
  store ptr %i.ah, ptr %.0911.i.i.i, align 8, !tbaa !60, !alias.scope !390, !noalias !387
  store i64 0, ptr %i.ap, align 8, !tbaa !62, !alias.scope !390, !noalias !387
  store i8 0, ptr %i.ah, align 8, !tbaa !34, !alias.scope !390, !noalias !387
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !249

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.au, ptr %.012.i.i.i18, align 8, !tbaa !58, !alias.scope !393, !noalias !396
  %i.av = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !60, !alias.scope !396, !noalias !393 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.g:                                             ; preds = %.lr.ph.i.i.i17
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !62, !alias.scope !396, !noalias !393 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false), !alias.scope !398
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.av, ptr %.012.i.i.i18, align 8, !tbaa !60, !alias.scope !393, !noalias !396
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !34, !alias.scope !396, !noalias !393
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !34, !alias.scope !393, !noalias !396
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !62, !alias.scope !396, !noalias !393
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.g
  %i.bd = phi i64 [ %i.az, %bb.g ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !62, !alias.scope !393, !noalias !396
  store ptr %i.aw, ptr %.0911.i.i.i19, align 8, !tbaa !60, !alias.scope !396, !noalias !393
  store i64 0, ptr %i.be, align 8, !tbaa !62, !alias.scope !396, !noalias !393
  store i8 0, ptr %i.aw, align 8, !tbaa !34, !alias.scope !396, !noalias !393
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bg, %i.c
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !249

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.at, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.d, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !203
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bl) #30
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !200
  store ptr %.0.lcssa.i.i.i25, ptr %i.b, align 8, !tbaa !201
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !203
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #14

declare noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_uci.cpp() #0 section ".text.startup" {
bb.a:
  tail call void @_ZN9Stockfish20get_process_affinityEv(ptr dead_on_unwind nonnull writable sret(%"class.std::set") align 8 @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE)
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3setImSt4lessImESaImEED2Ev, ptr nonnull @_ZN9StockfishL26STARTUP_PROCESSOR_AFFINITYE, ptr nonnull @__dso_handle) #26 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { mustprogress nofree nounwind memory(readwrite, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="znver5" "target-features"="+adx,+aes,+avx,+avx2,+avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vp2intersect,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+mwaitx,+pclmul,+pku,+popcnt,+prefetchi,+prfchw,+rdpid,+rdpru,+rdrnd,+rdseed,+sahf,+sha,+shstk,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nounwind }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { builtin nounwind allocsize(0) }
attributes #30 = { builtin nounwind }
attributes #31 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"ThinLTO", i32 0}
!4 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260706082120+bf74249b5ecd-1~exp1~20260706082130.1707)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!14, !16, i64 0}
!14 = !{!"_ZTSSt15_Rb_tree_header", !15, i64 0, !12, i64 32}
!15 = !{!"_ZTSSt18_Rb_tree_node_base", !16, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!16 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!17 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !18, i64 0}
!18 = !{!"any pointer", !9, i64 0}
!19 = !{!14, !17, i64 8}
!20 = !{!14, !17, i64 16}
!21 = !{!14, !17, i64 24}
!22 = !{!14, !12, i64 32}
!23 = !{!17, !17, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !18, i64 0}
!29 = !{!30, !28, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!31 = !{!30, !28, i64 16}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 omnipotent char", !18, i64 0}
!34 = !{!9, !9, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !10, i64 0}
!37 = !{!38, !12, i64 16}
!38 = !{!"_ZTSSt8ios_base", !12, i64 8, !12, i64 16, !39, i64 24, !40, i64 28, !40, i64 32, !41, i64 40, !42, i64 48, !9, i64 64, !8, i64 192, !43, i64 200, !44, i64 208}
!39 = !{!"_ZTSSt13_Ios_Fmtflags", !9, i64 0}
!40 = !{!"_ZTSSt12_Ios_Iostate", !9, i64 0}
!41 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!42 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !12, i64 8}
!43 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!44 = !{!"_ZTSSt6locale", !45, i64 0}
!45 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!46 = distinct !{!46, !25}
!47 = !{!30, !28, i64 8}
!48 = !{i64 0, i64 8, !11, i64 8, i64 8, !32}
!49 = !{!50, !52}
!50 = distinct !{!50, !51, !"_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!51 = distinct !{!51, !"_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_"}
!52 = distinct !{!52, !51, !"_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!53 = distinct !{!53, !25}
!54 = !{!55, !57}
!55 = distinct !{!55, !56, !"_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!56 = distinct !{!56, !"_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_"}
!57 = distinct !{!57, !56, !"_ZSt19__relocate_object_aISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!58 = !{!59, !33, i64 0}
!59 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!60 = !{!61, !33, i64 0}
!61 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !59, i64 0, !12, i64 8, !9, i64 16}
!62 = !{!61, !12, i64 8}
!63 = !{!64, !65, i64 32}
!64 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !9, i64 0, !65, i64 32}
!65 = !{!"bool", !9, i64 0}
!66 = !{i8 0, i8 2}
!67 = !{}
!68 = !{!69, !8, i64 0}
!69 = !{!"_ZTSN9Stockfish11CommandLineE", !8, i64 0, !70, i64 8}
!70 = !{!"p2 omnipotent char", !71, i64 0}
!71 = !{!"any p2 pointer", !18, i64 0}
!72 = !{!69, !70, i64 8}
!73 = !{!74, !18, i64 24}
!74 = !{!"_ZTSSt8functionIFvSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE", !75, i64 0, !18, i64 24}
!75 = !{!"_ZTSSt14_Function_base", !9, i64 0, !18, i64 16}
!76 = !{!75, !18, i64 16}
!77 = distinct !{null}
!78 = !{!79, !18, i64 24}
!79 = !{!"_ZTSSt8functionIFvRKN9Stockfish6Search13InfoIterationEEE", !75, i64 0, !18, i64 24}
!80 = !{!81, !18, i64 24}
!81 = !{!"_ZTSSt8functionIFvRKN9Stockfish6Search9InfoShortEEE", !75, i64 0, !18, i64 24}
!82 = !{!83, !83, i64 0}
!83 = !{!"p1 _ZTSN9Stockfish9UCIEngineE", !18, i64 0}
!84 = !{!85, !18, i64 24}
!85 = !{!"_ZTSSt8functionIFvRKN9Stockfish6Search8InfoFullEEE", !75, i64 0, !18, i64 24}
!86 = !{!87, !18, i64 24}
!87 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEES3_EE", !75, i64 0, !18, i64 24}
!88 = !{!89, !18, i64 24}
!89 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !75, i64 0, !18, i64 24}
!90 = !{!91, !8, i64 1680}
!91 = !{!"_ZTSN9Stockfish9UCIEngineE", !92, i64 0, !69, i64 1680}
!92 = !{!"_ZTSN9Stockfish6EngineE", !61, i64 0, !93, i64 32, !110, i64 168, !121, i64 1216, !128, i64 1224, !134, i64 1304, !147, i64 1368, !149, i64 1392, !159, i64 1472, !89, i64 1600, !160, i64 1632}
!93 = !{!"_ZTSN9Stockfish22NumaReplicationContextE", !94, i64 0, !105, i64 88}
!94 = !{!"_ZTSN9Stockfish10NumaConfigE", !95, i64 0, !100, i64 24, !12, i64 72, !65, i64 80}
!95 = !{!"_ZTSSt6vectorISt3setImSt4lessImESaImEESaIS4_EE", !96, i64 0}
!96 = !{!"_ZTSSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE", !97, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE12_Vector_implE", !98, i64 0}
!98 = !{!"_ZTSNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE17_Vector_impl_dataE", !99, i64 0, !99, i64 8, !99, i64 16}
!99 = !{!"p1 _ZTSSt3setImSt4lessImESaImEE", !18, i64 0}
!100 = !{!"_ZTSSt3mapImmSt4lessImESaISt4pairIKmmEEE", !101, i64 0}
!101 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE", !102, i64 0}
!102 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !103, i64 0, !14, i64 8}
!103 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !104, i64 0}
!104 = !{!"_ZTSSt4lessImE"}
!105 = !{!"_ZTSSt3setIPN9Stockfish18NumaReplicatedBaseESt4lessIS2_ESaIS2_EE", !106, i64 0}
!106 = !{!"_ZTSSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE", !107, i64 0}
!107 = !{!"_ZTSNSt8_Rb_treeIPN9Stockfish18NumaReplicatedBaseES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !108, i64 0, !14, i64 8}
!108 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPN9Stockfish18NumaReplicatedBaseEEE", !109, i64 0}
!109 = !{!"_ZTSSt4lessIPN9Stockfish18NumaReplicatedBaseEE"}
!110 = !{!"_ZTSN9Stockfish8PositionE", !111, i64 0, !112, i64 64, !113, i64 128, !9, i64 144, !9, i64 208, !9, i64 464, !9, i64 480, !114, i64 608, !8, i64 616, !115, i64 620, !65, i64 621, !116, i64 622, !119, i64 632}
!111 = !{!"_ZTSSt5arrayIN9Stockfish5PieceELm64EE", !9, i64 0}
!112 = !{!"_ZTSSt5arrayImLm8EE", !9, i64 0}
!113 = !{!"_ZTSSt5arrayImLm2EE", !9, i64 0}
!114 = !{!"p1 _ZTSN9Stockfish9StateInfoE", !18, i64 0}
!115 = !{!"_ZTSN9Stockfish5ColorE", !9, i64 0}
!116 = !{!"_ZTSN9Stockfish10DirtyPieceE", !117, i64 0, !118, i64 1, !118, i64 2, !118, i64 3, !118, i64 4, !117, i64 5, !117, i64 6}
!117 = !{!"_ZTSN9Stockfish5PieceE", !9, i64 0}
!118 = !{!"_ZTSN9Stockfish6SquareE", !9, i64 0}
!119 = !{!"_ZTSN9Stockfish12DirtyThreatsE", !120, i64 0, !115, i64 392, !118, i64 393, !118, i64 394, !12, i64 400, !12, i64 408}
!120 = !{!"_ZTSN9Stockfish9ValueListINS_11DirtyThreatELm96EEE", !9, i64 0, !12, i64 384}
!121 = !{!"_ZTSSt10unique_ptrISt5dequeIN9Stockfish9StateInfoESaIS2_EESt14default_deleteIS4_EE", !122, i64 0}
!122 = !{!"_ZTSSt15__uniq_ptr_dataISt5dequeIN9Stockfish9StateInfoESaIS2_EESt14default_deleteIS4_ELb1ELb1EE", !123, i64 0}
!123 = !{!"_ZTSSt15__uniq_ptr_implISt5dequeIN9Stockfish9StateInfoESaIS2_EESt14default_deleteIS4_EE", !124, i64 0}
!124 = !{!"_ZTSSt5tupleIJPSt5dequeIN9Stockfish9StateInfoESaIS2_EESt14default_deleteIS4_EEE", !125, i64 0}
!125 = !{!"_ZTSSt11_Tuple_implILm0EJPSt5dequeIN9Stockfish9StateInfoESaIS2_EESt14default_deleteIS4_EEE", !126, i64 0}
!126 = !{!"_ZTSSt10_Head_baseILm0EPSt5dequeIN9Stockfish9StateInfoESaIS2_EELb0EE", !127, i64 0}
!127 = !{!"p1 _ZTSSt5dequeIN9Stockfish9StateInfoESaIS1_EE", !18, i64 0}
!128 = !{!"_ZTSN9Stockfish10OptionsMapE", !129, i64 0, !74, i64 48}
!129 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9Stockfish6OptionENS6_19CaseInsensitiveLessESaISt4pairIKS5_S7_EEE", !130, i64 0}
!130 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9Stockfish6OptionEESt10_Select1stISA_ENS8_19CaseInsensitiveLessESaISA_EE", !131, i64 0}
!131 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9Stockfish6OptionEESt10_Select1stISA_ENS8_19CaseInsensitiveLessESaISA_EE13_Rb_tree_implISD_Lb1EEE", !132, i64 0, !14, i64 8}
!132 = !{!"_ZTSSt20_Rb_tree_key_compareIN9Stockfish19CaseInsensitiveLessEE", !133, i64 0}
!133 = !{!"_ZTSN9Stockfish19CaseInsensitiveLessE"}
!134 = !{!"_ZTSN9Stockfish10ThreadPoolE", !135, i64 0, !135, i64 1, !135, i64 2, !121, i64 8, !137, i64 16, !142, i64 40}
!135 = !{!"_ZTSSt6atomicIbE", !136, i64 0}
!136 = !{!"_ZTSSt13__atomic_baseIbE", !65, i64 0}
!137 = !{!"_ZTSSt6vectorISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE", !138, i64 0}
!138 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE", !139, i64 0}
!139 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !140, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !141, i64 0, !141, i64 8, !141, i64 16}
!141 = !{!"p1 _ZTSSt10unique_ptrIN9Stockfish6ThreadESt14default_deleteIS1_EE", !18, i64 0}
!142 = !{!"_ZTSSt6vectorImSaImEE", !143, i64 0}
!143 = !{!"_ZTSSt12_Vector_baseImSaImEE", !144, i64 0}
!144 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !145, i64 0}
!145 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !146, i64 0, !146, i64 8, !146, i64 16}
!146 = !{!"p1 long", !18, i64 0}
!147 = !{!"_ZTSN9Stockfish18TranspositionTableE", !12, i64 0, !148, i64 8, !9, i64 16}
!148 = !{!"p1 _ZTSN9Stockfish7ClusterE", !18, i64 0}
!149 = !{!"_ZTSN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEE", !150, i64 0, !152, i64 16, !157, i64 40}
!150 = !{!"_ZTSN9Stockfish18NumaReplicatedBaseE", !151, i64 8}
!151 = !{!"p1 _ZTSN9Stockfish22NumaReplicationContextE", !18, i64 0}
!152 = !{!"_ZTSSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE", !153, i64 0}
!153 = !{!"_ZTSSt12_Vector_baseIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE", !154, i64 0}
!154 = !{!"_ZTSNSt12_Vector_baseIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE12_Vector_implE", !155, i64 0}
!155 = !{!"_ZTSNSt12_Vector_baseIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE17_Vector_impl_dataE", !156, i64 0, !156, i64 8, !156, i64 16}
!156 = !{!"p1 _ZTSN9Stockfish24SystemWideSharedConstantINS_4Eval4NNUE8NetworksEEE", !18, i64 0}
!157 = !{!"_ZTSSt5mutex", !158, i64 0}
!158 = !{!"_ZTSSt12__mutex_base", !9, i64 0}
!159 = !{!"_ZTSN9Stockfish6Search13SearchManager13UpdateContextE", !81, i64 0, !85, i64 32, !79, i64 64, !87, i64 96}
!160 = !{!"_ZTSSt3mapImN9Stockfish15SharedHistoriesESt4lessImESaISt4pairIKmS1_EEE", !161, i64 0}
!161 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmN9Stockfish15SharedHistoriesEESt10_Select1stIS4_ESt4lessImESaIS4_EE", !162, i64 0}
!162 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmN9Stockfish15SharedHistoriesEESt10_Select1stIS4_ESt4lessImESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !103, i64 0, !14, i64 8}
end_hunk_1
