inline.NumInlined: 3419
inline.NumDeleted: 948
begin_hunk_0_@_ZN11OpenImageIO4v3_18DDSInput13seek_subimageEii:bb.a

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %i.bk, align 8, !tbaa !124
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i
  %i.bu = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bl, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i6.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !127
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.k, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !128 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i7.i, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !129
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #35
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit:         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.as, ptr %i.ch, align 4, !tbaa !130
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %spec.store.select127.lcssa, ptr %i.ci, align 4, !tbaa !131
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %spec.store.select127.lcssa, ptr %i.cj, align 8, !tbaa !132
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %spec.store.select5129.lcssa, ptr %i.ck, align 8, !tbaa !133
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %spec.store.select5129.lcssa, ptr %i.cl, align 4, !tbaa !134
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.as, ptr %i.cm, align 4, !tbaa !135
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.as, ptr %i.cn, align 8, !tbaa !136
  br label %bb.q

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %spec.store.select127134 = phi i32 [ %i.ah, %.lr.ph.preheader.new ], [ %spec.store.select.1, %.lr.ph ]
  %spec.store.select5129133 = phi i32 [ %i.aj, %.lr.ph.preheader.new ], [ %spec.store.select5.1, %.lr.ph ]
  %spec.store.select2131132 = phi i32 [ %i.al, %.lr.ph.preheader.new ], [ %spec.store.select2.1, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.co = lshr i32 %spec.store.select127134, 2
  %spec.store.select.1 = tail call i32 @llvm.umax.i32(i32 %i.co, i32 1) ; 3 uses
  %i.cp = lshr i32 %spec.store.select5129133, 2
  %spec.store.select5.1 = tail call i32 @llvm.umax.i32(i32 %i.cp, i32 1) ; 3 uses
  %i.cq = lshr i32 %spec.store.select2131132, 2
  %spec.store.select2.1 = tail call i32 @llvm.umax.i32(i32 %i.cq, i32 1) ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !137

bb.m:                                             ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit
  call void @_ZN11OpenImageIO4v3_18DDSInput22internal_seek_subimageEiiRjS2_S2_(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef 0, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.cr = load i32, ptr %i.b, align 4, !tbaa !3
  %i.cs = load i32, ptr %i.c, align 4, !tbaa !3
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !102
  %i.cv = or disjoint i32 %..i, 256
  %.sroa.099.0.insert.insert = zext nneg i32 %i.cv to i64
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %5, i32 noundef %i.cr, i32 noundef %i.cs, i32 noundef %i.cu, i64 %.sroa.099.0.insert.insert) #34
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cx = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.cw, ptr noundef nonnull align 8 dereferenceable(160) %5) #34 ; 0 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !120 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !121 ; 2 uses
  %.not4.i.i.i.i71 = icmp eq ptr %i.cz, %i.db
  br i1 %.not4.i.i.i.i71, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i77, label %.lr.ph.i.i.i.i72

.lr.ph.i.i.i.i72:                                 ; preds = %bb.m, %.lr.ph.i.i.i.i72
  %.05.i.i.i.i73 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i72 ], [ %i.cz, %bb.m ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i73) #34
  %i.dc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i73, i64 40 ; 2 uses
  %.not.i.i.i.i74 = icmp eq ptr %i.dc, %i.db
  br i1 %.not.i.i.i.i74, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i75, label %.lr.ph.i.i.i.i72, !llvm.loop !122

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i75: ; preds = %.lr.ph.i.i.i.i72
  %.pr.i.i76 = load ptr, ptr %i.cy, align 8, !tbaa !120
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i77

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i77: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i75, %bb.m
  %i.dd = phi ptr [ %.pr.i.i76, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i75 ], [ %i.cz, %bb.m ] ; 3 uses
  %.not.i.i1.i.i78 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i1.i.i78, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i79, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i77
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !123
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #35
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i79

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i79: ; preds = %bb.n, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i77
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !124 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !125 ; 2 uses
  %.not4.i.i.i1.i80 = icmp eq ptr %i.dk, %i.dm
  br i1 %.not4.i.i.i1.i80, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i88, label %.lr.ph.i.i.i2.i81

.lr.ph.i.i.i2.i81:                                ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i79, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i84
  %.05.i.i.i3.i82 = phi ptr [ %i.ds, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i84 ], [ %i.dk, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i79 ] ; 3 uses
  %i.dn = load ptr, ptr %.05.i.i.i3.i82, align 8, !tbaa !87 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i82, i64 16 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i83: ; preds = %.lr.ph.i.i.i2.i81
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !9
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i84

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i84: ; preds = %.lr.ph.i.i.i2.i81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i83
  %i.ds = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i82, i64 32 ; 2 uses
  %.not.i.i.i4.i85 = icmp eq ptr %i.ds, %i.dm
  br i1 %.not.i.i.i4.i85, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i86, label %.lr.ph.i.i.i2.i81, !llvm.loop !126

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i86: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i84
  %.pr.i5.i87 = load ptr, ptr %i.dj, align 8, !tbaa !124
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i88

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i88: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i86, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i79
  %i.dt = phi ptr [ %.pr.i5.i87, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i86 ], [ %i.dk, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i79 ] ; 3 uses
  %.not.i.i1.i6.i89 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i1.i6.i89, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i90, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i88
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !127
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.dt to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dy) #35
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i90

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i90: ; preds = %bb.o, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i88
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !128 ; 3 uses
  %.not.i.i.i7.i91 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i7.i91, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit93, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i90
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !129
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ef) #35
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit93

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit93:       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i90, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  %i.eg = load i32, ptr %i.d, align 4, !tbaa !3
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !130
  br label %bb.q

bb.q:                                             ; preds = %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit93, %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit
  %i.ei = load i32, ptr %i.aa, align 4, !tbaa !43
  %switch.tableidx = add i32 %i.ei, -1            ; 2 uses
  %i.ej = icmp ult i32 %switch.tableidx, 10
  br i1 %i.ej, label %switch.lookup, label %bb.r

switch.lookup:                                    ; preds = %bb.q
  %i.ek = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN11OpenImageIO4v3_18DDSInput13seek_subimageEii, i64 %i.ek
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.16, ptr %6, align 8, !tbaa !91
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 11, ptr %i.em, align 8, !tbaa !93
  store ptr %switch.load, ptr %7, align 8, !tbaa !91
  %i.en = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #34
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !93
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.el, ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %switch.lookup
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !105 ; 4 uses
  %.not45 = icmp eq i32 %i.eq, 0
  br i1 %.not45, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.es = load i32, ptr %i.er, align 8, !tbaa !99
  %i.et = and i32 %i.es, 131650
  %.not46 = icmp eq i32 %i.et, 0
  br i1 %.not46, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eu = call i32 @llvm.fshl.i32(i32 %i.eq, i32 %i.eq, i32 29)
  %switch = icmp ult i32 %i.eu, 5
  br i1 %switch, label %.thread109, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJjEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.17, ptr noundef nonnull align 4 dereferenceable(4) %i.ep)
  br label %bb.be

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !100
  %i.ex = icmp eq i32 %i.ew, 808540228
  br i1 %i.ex, label %bb.w, label %.thread109.thread179

bb.w:                                             ; preds = %bb.v
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !101
  %i.fa = call fastcc noundef i32 @_ZN11OpenImageIO4v3_1L25GetDxgiFormatBitsPerPixelEj(i32 noundef %i.ez) ; 2 uses
  %.not51 = icmp eq i32 %i.fa, 0
  br i1 %.not51, label %.thread109.thread, label %.thread109

.thread109:                                       ; preds = %bb.w, %bb.t
  %.032115 = phi i32 [ %i.fa, %bb.w ], [ %i.eq, %bb.t ]
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 %.032115, ptr %i.a, align 4, !tbaa !3
  store ptr @.str.18, ptr %3, align 8, !tbaa !91
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 18, ptr %i.fc, align 8, !tbaa !93
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %i.fb, ptr noundef nonnull dead_on_return %3, i64 262, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 380
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !100
  %i.fd = icmp eq i32 %.pre, 808540228
  br i1 %i.fd, label %.thread109.thread, label %.thread109.thread179

.thread109.thread:                                ; preds = %bb.w, %.thread109
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !101
  switch i32 %i.ff, label %.thread109.thread179 [
    i32 72, label %select.unfold
    i32 75, label %select.unfold
    i32 78, label %select.unfold
    i32 99, label %select.unfold
    i32 29, label %select.unfold
    i32 91, label %select.unfold
    i32 93, label %select.unfold
  ]

.thread109.thread179:                             ; preds = %bb.v, %.thread109.thread, %.thread109
  br i1 %or.cond.i, label %select.unfold, label %bb.x

bb.x:                                             ; preds = %.thread109.thread179
  store ptr null, ptr %8, align 8, !tbaa !91
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit95

select.unfold:                                    ; preds = %.thread109.thread, %.thread109.thread, %.thread109.thread, %.thread109.thread, %.thread109.thread, %.thread109.thread, %.thread109.thread, %.thread109.thread179
  %.ph = phi ptr [ @.str.20, %.thread109.thread179 ], [ @.str.19, %.thread109.thread ], [ @.str.19, %.thread109.thread ], [ @.str.19, %.thread109.thread ], [ @.str.19, %.thread109.thread ], [ @.str.19, %.thread109.thread ], [ @.str.19, %.thread109.thread ], [ @.str.19, %.thread109.thread ] ; 2 uses
  store ptr %.ph, ptr %8, align 8, !tbaa !91
  %i.fg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.ph) #34
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit95

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit95: ; preds = %bb.x, %select.unfold
  %i.fh = phi i64 [ %i.fg, %select.unfold ], [ 0, %bb.x ]
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.fh, ptr %i.fj, align 8, !tbaa !93
  call void @_ZN11OpenImageIO4v3_19ImageSpec14set_colorspaceENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(160) %i.fi, ptr noundef nonnull dead_on_return %8)
  call void @_ZN11OpenImageIO4v3_19ImageSpec21default_channel_namesEv(ptr noundef nonnull align 8 dereferenceable(160) %i.fi) #34
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !102
  %i.fm = icmp eq i32 %i.fl, 2
  br i1 %i.fm, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit95
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !99
  %i.fp = and i32 %i.fo, 131073
  %or.cond70.not = icmp eq i32 %i.fp, 131073
  br i1 %or.cond70.not, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !124
  %i.fs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.fr, ptr noundef nonnull @.str.21) ; 0 uses
  %i.ft = load ptr, ptr %i.fq, align 8, !tbaa !124
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.fu, ptr noundef nonnull @.str.22) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit95
  %i.fw = load i32, ptr %i.ad, align 8, !tbaa !97 ; 2 uses
  %i.fx = and i32 %i.fw, 2097152
  %.not54 = icmp eq i32 %i.fx, 0
  br i1 %.not54, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr @.str.23, ptr %9, align 8, !tbaa !91
  %i.fy = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 13, ptr %i.fy, align 8, !tbaa !93
  store ptr @.str.24, ptr %10, align 8, !tbaa !91
  %i.fz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 14, ptr %i.fz, align 8, !tbaa !93
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.fi, ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10)
  br label %bb.bd

bb.ac:                                            ; preds = %bb.aa
  %i.ga = and i32 %i.fw, 512
  %.not55 = icmp eq i32 %i.ga, 0
  br i1 %.not55, label %bb.bc, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr @.str.23, ptr %11, align 8, !tbaa !91
  %i.gb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 13, ptr %i.gb, align 8, !tbaa !93
  store ptr @.str.25, ptr %12, align 8, !tbaa !91
  %i.gc = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 20, ptr %i.gc, align 8, !tbaa !93
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.fi, ptr noundef nonnull dead_on_return %11, ptr noundef nonnull dead_on_return %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #34
  %i.gd = load i32, ptr %i.ad, align 8, !tbaa !97 ; 2 uses
  %i.ge = and i32 %i.gd, 1024
  %.not56 = icmp eq i32 %i.ge, 0
  br i1 %.not56, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.27)
          to label %._crit_edge138 unwind label %bb.af ; 0 uses

._crit_edge138:                                   ; preds = %bb.ae
  %.pre139 = load i32, ptr %i.ad, align 8, !tbaa !97
  br label %bb.ag

bb.af:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.av, %bb.au, %bb.ar, %bb.aq, %bb.an, %bb.am, %bb.aj, %bb.ai, %bb.ae
  %i.gg = landingpad { ptr, i32 }
          cleanup
  %i.gh = load ptr, ptr %13, align 8, !tbaa !87   ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.af
  %i.gk = load i64, ptr %i.gi, align 8, !tbaa !9
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ag:                                            ; preds = %._crit_edge138, %bb.ad
  %i.gm = phi i32 [ %.pre139, %._crit_edge138 ], [ %i.gd, %bb.ad ] ; 2 uses
  %i.gn = and i32 %i.gm, 2048
  %.not57 = icmp eq i32 %i.gn, 0
  br i1 %.not57, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.go = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !40
  %.not58 = icmp eq i64 %i.gp, 0
  br i1 %.not58, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.28)
          to label %bb.aj unwind label %bb.af     ; 0 uses

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.29)
          to label %._crit_edge140 unwind label %bb.af ; 0 uses

._crit_edge140:                                   ; preds = %bb.aj
  %.pre141 = load i32, ptr %i.ad, align 8, !tbaa !97
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge140, %bb.ag
  %i.gs = phi i32 [ %.pre141, %._crit_edge140 ], [ %i.gm, %bb.ag ] ; 2 uses
  %i.gt = and i32 %i.gs, 4096
  %.not59 = icmp eq i32 %i.gt, 0
  br i1 %.not59, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !40
  %.not60 = icmp eq i64 %i.gv, 0
  br i1 %.not60, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.28)
          to label %bb.an unwind label %bb.af     ; 0 uses

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.30)
          to label %._crit_edge142 unwind label %bb.af ; 0 uses

._crit_edge142:                                   ; preds = %bb.an
  %.pre143 = load i32, ptr %i.ad, align 8, !tbaa !97
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge142, %bb.ak
  %i.gy = phi i32 [ %.pre143, %._crit_edge142 ], [ %i.gs, %bb.ak ] ; 2 uses
end_hunk_0
