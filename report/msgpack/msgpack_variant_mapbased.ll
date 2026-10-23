Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msgpack/original/msgpack_variant_mapbased?download=true
inline.NumInlined: 4597
inline.NumDeleted: 2574
begin_hunk_0_@_ZN7msgpack2v113object_parser5parseINS0_24object_stringize_visitorEEEvRT_:bb.a
  %i.di = tail call i64 @llvm.umin.i64(i64 %i.dg, i64 384307168202282325)
  %i.dj = select i1 %i.dh, i64 384307168202282325, i64 %i.di ; 3 uses
  %.not.i.i.i.i26 = icmp ne i64 %i.dj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i26)
  %i.dk = mul nuw nsw i64 %i.dj, 24
  %i.dl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #33 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dd ; 4 uses
  store ptr %i.ct, ptr %i.dm, align 8, !tbaa !30
  %.sroa.5.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i64 %i.cv, ptr %.sroa.5.0..sroa_idx40, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i8 1, ptr %.sroa.6.0..sroa_idx42, align 8, !tbaa !104
  %.sroa.7.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.dm, i64 17
  store i8 1, ptr %.sroa.7.0..sroa_idx44, align 1, !tbaa !104
  %.not10.i.i.i.i.i.i27 = icmp eq ptr %i.da, %i.cw
  br i1 %.not10.i.i.i.i.i.i27, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32, label %.lr.ph.i.i.i.i.i.i28

.lr.ph.i.i.i.i.i.i28:                             ; preds = %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24, %.lr.ph.i.i.i.i.i.i28
  %.012.i.i.i.i.i.i29 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i28 ], [ %i.dl, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24 ] ; 2 uses
  %.0911.i.i.i.i.i.i30 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i28 ], [ %i.da, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i29, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i30, i64 24, i1 false), !tbaa.struct !304, !alias.scope !306
  %i.dn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i30, i64 24 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i29, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i31 = icmp eq ptr %i.dn, %i.cw
  br i1 %.not.i.i.i.i.i.i31, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32, label %.lr.ph.i.i.i.i.i.i28, !llvm.loop !299

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32: ; preds = %.lr.ph.i.i.i.i.i.i28, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24
  %.0.lcssa.i.i.i.i.i.i33 = phi ptr [ %i.dl, %_ZNKSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i24 ], [ %i.do, %.lr.ph.i.i.i.i.i.i28 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i33, i64 24
  %.not.i23.i.i.i34 = icmp eq ptr %i.da, null
  br i1 %.not.i23.i.i.i34, label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i35, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32
  tail call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.dd) #28
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i35

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i35: ; preds = %bb.y, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i32
  store ptr %i.dl, ptr %i.a, align 8, !tbaa !70
  store ptr %i.dp, ptr %i.b, align 8, !tbaa !303
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %i.dj
  store ptr %i.dq, ptr %i.c, align 8, !tbaa !71
  br label %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36

_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36: ; preds = %bb.v, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i35
  %i.dr = load ptr, ptr %0, align 8, !tbaa !69
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !30
  %i.du = icmp ne i32 %i.dt, 0
  br label %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit

bb.z:                                             ; preds = %bb.b
  %i.dv = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v110type_errorE, i64 16), ptr %i.dv, align 8, !tbaa !41
  tail call void @__cxa_throw(ptr nonnull %i.dv, ptr nonnull @_ZTIN7msgpack2v110type_errorE, ptr nonnull @_ZNSt8bad_castD2Ev) #29
  unreachable

_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit: ; preds = %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.k
  %.021.shrunk = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.f ], [ %i.du, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit36 ], [ %i.cm, %_ZNSt6vectorIN7msgpack2v113object_parser4elemESaIS3_EE9push_backEOS3_.exit ]
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !307
  %i.dx = load ptr, ptr %i.b, align 8, !tbaa !307 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64, label %bb.aa

bb.aa:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit
  br i1 %.021.shrunk, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit

_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit: ; preds = %bb.aa, %bb.ap
  %i.dz = phi ptr [ %i.fz, %bb.ap ], [ %i.dx, %bb.aa ] ; 7 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -16 ; 5 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !309 ; 3 uses
  %i.ec = icmp eq i64 %i.eb, 0
  %i.ed = getelementptr inbounds i8, ptr %i.dz, i64 -8
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !310, !range !121, !noundef !122
  %i.ef = trunc nuw i8 %i.ee to i1                ; 2 uses
  br i1 %i.ec, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !163
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -4
  store ptr %i.eh, ptr %i.d, align 8, !tbaa !163
  %i.ei = load ptr, ptr %1, align 8, !tbaa !162, !nonnull !122, !align !140 ; 2 uses
  br i1 %i.ef, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ej = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull @.str.38, i64 noundef 1) ; 0 uses
  br label %bb.ap

bb.ad:                                            ; preds = %bb.ab
  %i.ek = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef nonnull @.str.39, i64 noundef 1) ; 0 uses
  br label %bb.ap

bb.ae:                                            ; preds = %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit
  br i1 %i.ef, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.el = getelementptr inbounds i8, ptr %i.dz, i64 -7
  %i.em = load i8, ptr %i.el, align 1, !tbaa !311, !range !121, !noundef !122
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eo = getelementptr inbounds i8, ptr %i.dz, i64 -7
  %i.ep = load ptr, ptr %1, align 8, !tbaa !162, !nonnull !122, !align !140
  %i.eq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull @.str.40, i64 noundef 1) ; 0 uses
  store i8 0, ptr %i.eo, align 1, !tbaa !311
  br label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62

bb.ah:                                            ; preds = %bb.af
  %i.er = load ptr, ptr %i.d, align 8, !tbaa !312
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -4 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !32
  %i.eu = add i32 %i.et, -1                       ; 2 uses
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !32
  %.not.i.i37 = icmp eq i32 %i.eu, 0
  br i1 %.not.i.i37, label %_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ev = load ptr, ptr %1, align 8, !tbaa !162, !nonnull !122, !align !140
  %i.ew = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull @.str.41, i64 noundef 1) ; 0 uses
  %.pre13.i = load i64, ptr %i.ea, align 8, !tbaa !309
  br label %_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i

_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i: ; preds = %bb.ai, %bb.ah
  %i.ex = phi i64 [ %.pre13.i, %bb.ai ], [ %i.eb, %bb.ah ]
  %i.ey = add i64 %i.ex, -1                       ; 2 uses
  store i64 %i.ey, ptr %i.ea, align 8, !tbaa !309
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i
  %i.fa = load ptr, ptr %i.d, align 8, !tbaa !163
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 -4
  store ptr %i.fb, ptr %i.d, align 8, !tbaa !163
  %i.fc = load ptr, ptr %1, align 8, !tbaa !162, !nonnull !122, !align !140
  %i.fd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, ptr noundef nonnull @.str.38, i64 noundef 1) ; 0 uses
  br label %bb.ap

bb.ak:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor13end_map_valueEv.exit.i
  %i.fe = getelementptr inbounds i8, ptr %i.dz, i64 -7
  %i.ff = getelementptr inbounds i8, ptr %i.dz, i64 -24 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !30
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  store ptr %i.fh, ptr %i.ff, align 8, !tbaa !30
  store i8 1, ptr %i.fe, align 1, !tbaa !311
  br label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62

bb.al:                                            ; preds = %bb.ae
  %i.fi = load ptr, ptr %i.d, align 8, !tbaa !312
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -4 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !32
  %i.fl = add i32 %i.fk, -1                       ; 2 uses
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !32
  %.not.i12.i = icmp eq i32 %i.fl, 0
  br i1 %.not.i12.i, label %_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fm = load ptr, ptr %1, align 8, !tbaa !162, !nonnull !122, !align !140
  %i.fn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef nonnull @.str.41, i64 noundef 1) ; 0 uses
  %.pre.i = load i64, ptr %i.ea, align 8, !tbaa !309
  br label %_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i

_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i: ; preds = %bb.am, %bb.al
  %i.fo = phi i64 [ %.pre.i, %bb.am ], [ %i.eb, %bb.al ]
  %i.fp = add i64 %i.fo, -1                       ; 2 uses
  store i64 %i.fp, ptr %i.ea, align 8, !tbaa !309
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i
  %i.fr = load ptr, ptr %i.d, align 8, !tbaa !163
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -4
  store ptr %i.fs, ptr %i.d, align 8, !tbaa !163
  %i.ft = load ptr, ptr %1, align 8, !tbaa !162, !nonnull !122, !align !140
  %i.fu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ft, ptr noundef nonnull @.str.39, i64 noundef 1) ; 0 uses
  br label %bb.ap

bb.ao:                                            ; preds = %_ZN7msgpack2v124object_stringize_visitor14end_array_itemEv.exit.i
  %i.fv = getelementptr inbounds i8, ptr %i.dz, i64 -24 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !30
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  store ptr %i.fx, ptr %i.fv, align 8, !tbaa !30
  br label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62

bb.ap:                                            ; preds = %bb.ad, %bb.aj, %bb.ac, %bb.an
  %i.fy = load ptr, ptr %i.b, align 8, !tbaa !303
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 -24 ; 3 uses
  store ptr %i.fz, ptr %i.b, align 8, !tbaa !303
  %i.ga = load ptr, ptr %i.a, align 8, !tbaa !307
  %i.gb = icmp eq ptr %i.ga, %i.fz
  br i1 %i.gb, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64, label %_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit

_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread62: ; preds = %bb.ak, %bb.ag, %bb.ao, %bb.aa
  %i.gc = load ptr, ptr %i.b, align 8, !tbaa !307 ; 3 uses
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 -24
  %i.ge = getelementptr inbounds i8, ptr %i.gc, i64 -8
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !310, !range !121, !noundef !122
  %i.gg = trunc nuw i8 %i.gf to i1
  %i.gh = load ptr, ptr %i.gd, align 8
  %i.gi = getelementptr inbounds i8, ptr %i.gc, i64 -7
  %i.gj = load i8, ptr %i.gi, align 1, !range !121
  %2 = icmp eq i8 %i.gj, 0
  %i.gk = select i1 %i.gg, i1 %2, i1 false
  %.0.idx.i = select i1 %i.gk, i64 24, i64 0
  %.0.i38 = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.0.idx.i ; 2 uses
  store ptr %.0.i38, ptr %0, align 8, !tbaa !69
  br label %bb.b

_ZN7msgpack2v113object_parser4elem4nextINS0_24object_stringize_visitorEEENS1_8next_retERT_.exit.thread64: ; preds = %bb.k, %bb.n, %_ZN7msgpack2v124object_stringize_visitor13visit_booleanEb.exit, %bb.t, %bb.ap
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7msgpack2v124object_stringize_visitor9visit_strEPKcj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !122, !align !140 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 34, ptr %i.c, align 1, !tbaa !30
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !315
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i8 noundef signext 34) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.v, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !122, !align !140 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 34, ptr %i.b, align 1, !tbaa !30
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !315
  %.not.i14 = icmp eq i64 %i.s, 0
  br i1 %.not.i14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16

bb.e:                                             ; preds = %._crit_edge
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i8 noundef signext 34) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit16: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 true

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !30    ; 6 uses
  switch i8 %i.w, label %bb.n [
    i8 92, label %bb.f
    i8 34, label %bb.g
    i8 47, label %bb.h
    i8 8, label %bb.i
    i8 12, label %bb.j
    i8 10, label %bb.k
    i8 13, label %bb.l
    i8 9, label %bb.m
  ]

bb.f:                                             ; preds = %.lr.ph
  %i.x = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !122, !align !140
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.21, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.g:                                             ; preds = %.lr.ph
  %i.z = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !122, !align !140
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.22, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.h:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !122, !align !140
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.23, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.i:                                             ; preds = %.lr.ph
  %i.ad = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !122, !align !140
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.24, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.j:                                             ; preds = %.lr.ph
  %i.af = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !122, !align !140
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.25, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.k:                                             ; preds = %.lr.ph
  %i.ah = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !122, !align !140
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.26, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.l:                                             ; preds = %.lr.ph
  %i.aj = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !122, !align !140
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.27, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.m:                                             ; preds = %.lr.ph
  %i.al = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !122, !align !140
  %i.am = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.28, i64 noundef 2) ; 0 uses
  br label %bb.v

bb.n:                                             ; preds = %.lr.ph
  %i.an = icmp ult i8 %i.w, 32
  %i.ao = icmp eq i8 %i.w, 127
  %or.cond = or i1 %i.an, %i.ao
  %i.ap = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !122, !align !140 ; 12 uses
  br i1 %or.cond, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !41
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !316
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef nonnull @.str.29, i64 noundef 2) ; 0 uses
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !41
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24    ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.ap, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !316
  %i.bd = and i32 %i.bc, -75
  %i.be = or disjoint i32 %i.bd, 8
  store i32 %i.be, ptr %i.bb, align 8, !tbaa !317
  %i.bf = load i64, ptr %i.ay, align 8
  %i.bg = getelementptr inbounds i8, ptr %i.ap, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 4, ptr %i.bh, align 8, !tbaa !315
  %i.bi = load i64, ptr %i.ay, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.ap, i64 %i.bi ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 225 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !318, !range !121, !noundef !122
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 240
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !55 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i, label %bb.q, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @_ZSt16__throw_bad_castv() #29
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !61
  %.not.i1.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i1.i.i.i.i, label %bb.r, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.r:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bo)
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef signext i8 %i.bt(ptr noundef nonnull align 8 dereferenceable(570) %i.bo, i8 noundef signext 32), !inline_history !313 ; 0 uses
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %bb.r, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  store i8 1, ptr %i.bk, align 1, !tbaa !318
  br label %_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit

_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St8_SetfillIS3_E.exit: ; preds = %bb.o, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 224
  store i8 48, ptr %i.bv, align 8, !tbaa !319
  %i.bw = zext nneg i8 %i.w to i64
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i64 noundef %i.bw) ; 0 uses
  %i.by = load ptr, ptr %0, align 8, !tbaa !162, !nonnull !122, !align !140 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !41
  %i.ca = getelementptr i8, ptr %i.bz, i64 -24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i32 %i.av, ptr %i.cd, align 8, !tbaa !316
  br label %bb.v
end_hunk_0
