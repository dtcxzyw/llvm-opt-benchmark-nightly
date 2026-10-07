Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/pngdetail?download=true
inline.NumInlined: 2280
inline.NumDeleted: 605
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z21loadWithErrorRecoveryR4DataRK7Optionsb:bb.a
bb.ag:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i76
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 67
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit79

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i76
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dv)
  %i.ea = load ptr, ptr %i.dv, align 8, !tbaa !17
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = tail call noundef signext i8 %i.ec(ptr noundef nonnull align 8 dereferenceable(570) %i.dv, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit79

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit79: ; preds = %bb.ag, %bb.ah
  %.0.i.i.i78 = phi i8 [ %i.dz, %bb.ag ], [ %i.ed, %bb.ah ]
  %i.ee = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i78)
  %i.ef = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ee) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit79, %bb.ad
  store i32 1, ptr %i.an, align 8, !tbaa !212
  %i.eg = load ptr, ptr %i.ao, align 8, !tbaa !44
  %i.eh = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZN4Data8loadFileEv.exit.i56, label %_ZN4Data8loadFileEv.exit.thread.i52

_ZN4Data8loadFileEv.exit.thread.i52:              ; preds = %bb.ai
  store i32 0, ptr %i.a, align 8, !tbaa !74
  br label %bb.aj

_ZN4Data8loadFileEv.exit.i56:                     ; preds = %bb.ai
  %i.ej = tail call noundef i32 @_ZN7lodepng9load_fileERSt6vectorIhSaIhEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(736) %0) ; 3 uses
  store i32 %i.ej, ptr %i.a, align 8, !tbaa !74
  %.not.i57 = icmp eq i32 %i.ej, 0
  br i1 %.not.i57, label %bb.aj, label %_ZN4Data12reloadPixelsEv.exit

bb.aj:                                            ; preds = %_ZN4Data8loadFileEv.exit.i56, %_ZN4Data8loadFileEv.exit.thread.i52
  store i8 1, ptr %i.aq, align 4, !tbaa !98
  store i32 6, ptr %i.ar, align 8, !tbaa !126
  store i32 16, ptr %i.as, align 4, !tbaa !121
  %i.ek = load ptr, ptr %i.c, align 8, !tbaa !100 ; 2 uses
  %i.el = load ptr, ptr %i.e, align 8, !tbaa !99
  %.not.i.i.i53 = icmp eq ptr %i.el, %i.ek
  br i1 %.not.i.i.i53, label %_ZN4Data12reloadPixelsEv.exit.sink.split, label %_ZN4Data12reloadPixelsEv.exit.sink.split.sink.split

bb.ak:                                            ; preds = %.lr.ph
  br i1 %2, label %.thread108.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.em = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.56, i64 noundef 29) ; 0 uses
  %i.en = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !17
  %i.eo = getelementptr i8, ptr %i.en, i64 -24
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 240
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i80 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i80, label %bb.am, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i81

bb.am:                                            ; preds = %bb.al
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i81: ; preds = %bb.al
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 56
  %i.eu = load i8, ptr %i.et, align 8, !tbaa !41
  %.not.i1.i.i82 = icmp eq i8 %i.eu, 0
  br i1 %.not.i1.i.i82, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i81
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 67
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit84

bb.ao:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i81
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.es)
  %i.ex = load ptr, ptr %i.es, align 8, !tbaa !17
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = tail call noundef signext i8 %i.ez(ptr noundef nonnull align 8 dereferenceable(570) %i.es, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit84

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit84: ; preds = %bb.an, %bb.ao
  %.0.i.i.i83 = phi i8 [ %i.ew, %bb.an ], [ %i.fa, %bb.ao ]
  %i.fb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i83)
  br label %.thread108.thread111.sink.split

_ZN4Data12reloadPixelsEv.exit.sink.split.sink.split: ; preds = %bb.aj, %bb.ac, %bb.v, %bb.o
  %.sink160 = phi ptr [ %i.dn, %bb.ac ], [ %i.cq, %bb.v ], [ %i.bt, %bb.o ], [ %i.ek, %bb.aj ]
  store ptr %.sink160, ptr %i.e, align 8, !tbaa !99
  br label %_ZN4Data12reloadPixelsEv.exit.sink.split

_ZN4Data12reloadPixelsEv.exit.sink.split:         ; preds = %_ZN4Data12reloadPixelsEv.exit.sink.split.sink.split, %bb.aj, %bb.ac, %bb.v, %bb.o
  %i.fc = tail call noundef i32 @_ZN7lodepng6decodeERSt6vectorIhSaIhEERjS4_RNS_5StateERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.at, ptr noundef nonnull align 4 dereferenceable(4) %i.au, ptr noundef nonnull align 8 dereferenceable(640) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ao) ; 2 uses
  store i32 %i.fc, ptr %i.a, align 8, !tbaa !74
  br label %_ZN4Data12reloadPixelsEv.exit

_ZN4Data12reloadPixelsEv.exit:                    ; preds = %_ZN4Data12reloadPixelsEv.exit.sink.split, %_ZN4Data8loadFileEv.exit.i56, %_ZN4Data8loadFileEv.exit.i49, %_ZN4Data8loadFileEv.exit.i42, %_ZN4Data8loadFileEv.exit.i
  %i.fd = phi i32 [ %i.bs, %_ZN4Data8loadFileEv.exit.i ], [ %i.ej, %_ZN4Data8loadFileEv.exit.i56 ], [ %i.cp, %_ZN4Data8loadFileEv.exit.i42 ], [ %i.dm, %_ZN4Data8loadFileEv.exit.i49 ], [ %i.fc, %_ZN4Data12reloadPixelsEv.exit.sink.split ] ; 4 uses
  br i1 %2, label %.thread, label %bb.ap

.thread:                                          ; preds = %_ZN4Data12reloadPixelsEv.exit
  %.not114 = icmp eq i32 %i.fd, %i.ax
  br i1 %.not114, label %.thread108.thread.thread, label %select.unfold

bb.ap:                                            ; preds = %_ZN4Data12reloadPixelsEv.exit
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.ff = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.57, i64 noundef 30) ; 0 uses
  %i.fg = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !17
  %i.fh = getelementptr i8, ptr %i.fg, i64 -24
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 240
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i85 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i85, label %bb.ar, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i86

bb.ar:                                            ; preds = %bb.aq
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i86: ; preds = %bb.aq
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 56
  %i.fn = load i8, ptr %i.fm, align 8, !tbaa !41
  %.not.i1.i.i87 = icmp eq i8 %i.fn, 0
  br i1 %.not.i1.i.i87, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i86
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 67
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit89

bb.at:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i86
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fl)
  %i.fq = load ptr, ptr %i.fl, align 8, !tbaa !17
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = tail call noundef signext i8 %i.fs(ptr noundef nonnull align 8 dereferenceable(570) %i.fl, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit89

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit89: ; preds = %bb.as, %bb.at
  %.0.i.i.i88 = phi i8 [ %i.fp, %bb.as ], [ %i.ft, %bb.at ]
  %i.fu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i88)
  %i.fv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fu) ; 0 uses
  %.pre129 = load i32, ptr %i.a, align 8, !tbaa !106
  br label %bb.au

bb.au:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit89, %bb.ap
  %i.fw = phi i32 [ %.pre129, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit89 ], [ %i.fd, %bb.ap ] ; 2 uses
  %.not113 = icmp eq i32 %i.fw, %i.ax
  br i1 %.not113, label %bb.av, label %select.unfold

bb.av:                                            ; preds = %bb.au
  %i.fx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.58, i64 noundef 26) ; 0 uses
  %i.fy = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !17
  %i.fz = getelementptr i8, ptr %i.fy, i64 -24
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 240
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i90 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i90, label %bb.aw, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91: ; preds = %bb.av
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 56
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !41
  %.not.i1.i.i92 = icmp eq i8 %i.gf, 0
  br i1 %.not.i1.i.i92, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 67
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit94

bb.ay:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i91
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gd)
  %i.gi = load ptr, ptr %i.gd, align 8, !tbaa !17
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = tail call noundef signext i8 %i.gk(ptr noundef nonnull align 8 dereferenceable(570) %i.gd, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit94

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit94: ; preds = %bb.ax, %bb.ay
  %.0.i.i.i93 = phi i8 [ %i.gh, %bb.ax ], [ %i.gl, %bb.ay ]
  %i.gm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i93)
  br label %.thread108.thread111.sink.split

select.unfold:                                    ; preds = %.thread, %bb.au
  %i.gn = phi i32 [ %i.fw, %bb.au ], [ %i.fd, %.thread ]
  %.not35 = icmp eq i32 %i.gn, 0
  br i1 %.not35, label %.thread108, label %.lr.ph

.thread108:                                       ; preds = %select.unfold, %bb.h
  br i1 %2, label %.thread108.thread, label %.thread108.thread111

.thread108.thread:                                ; preds = %.thread108, %bb.ak
  %3 = phi i32 [ %i.ax, %bb.ak ], [ 0, %.thread108 ]
  %.not36 = icmp eq i32 %3, 0
  br i1 %.not36, label %bb.az, label %.thread108.thread.thread

bb.az:                                            ; preds = %.thread108.thread
  %i.go = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.59, i64 noundef 24) ; 0 uses
  %i.gp = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.gq = getelementptr i8, ptr %i.gp, i64 -24
  %i.gr = load i64, ptr %i.gq, align 8
  %i.gs = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 240
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i95 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i95, label %bb.ba, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i96

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i96: ; preds = %bb.az
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 56
  %i.gw = load i8, ptr %i.gv, align 8, !tbaa !41
  %.not.i1.i.i97 = icmp eq i8 %i.gw, 0
  br i1 %.not.i1.i.i97, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i96
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 67
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit99

bb.bc:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i96
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gu)
  %i.gz = load ptr, ptr %i.gu, align 8, !tbaa !17
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = tail call noundef signext i8 %i.hb(ptr noundef nonnull align 8 dereferenceable(570) %i.gu, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit99

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit99: ; preds = %bb.bb, %bb.bc
  %.0.i.i.i98 = phi i8 [ %i.gy, %bb.bb ], [ %i.hc, %bb.bc ]
  %i.hd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i98)
  br label %.thread108.thread111.sink.split

.thread108.thread.thread:                         ; preds = %.thread, %.thread108.thread
  %i.he = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.60, i64 noundef 28) ; 0 uses
  %i.hf = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.hg = getelementptr i8, ptr %i.hf, i64 -24
  %i.hh = load i64, ptr %i.hg, align 8
  %i.hi = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 240
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i100 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i100, label %bb.bd, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i101

bb.bd:                                            ; preds = %.thread108.thread.thread
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i101: ; preds = %.thread108.thread.thread
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 56
  %i.hm = load i8, ptr %i.hl, align 8, !tbaa !41
  %.not.i1.i.i102 = icmp eq i8 %i.hm, 0
  br i1 %.not.i1.i.i102, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i101
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 67
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit104

bb.bf:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i101
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hk)
  %i.hp = load ptr, ptr %i.hk, align 8, !tbaa !17
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 48
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = tail call noundef signext i8 %i.hr(ptr noundef nonnull align 8 dereferenceable(570) %i.hk, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit104

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit104: ; preds = %bb.be, %bb.bf
  %.0.i.i.i103 = phi i8 [ %i.ho, %bb.be ], [ %i.hs, %bb.bf ]
  %i.ht = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i103)
  br label %.thread108.thread111.sink.split

.thread108.thread111.sink.split:                  ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit99, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit104, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit94, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit84
  %.sink = phi ptr [ %i.fb, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit84 ], [ %i.gm, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit94 ], [ %i.ht, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit104 ], [ %i.hd, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit99 ], [ %i.am, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %i.hu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) ; 0 uses
  br label %.thread108.thread111

.thread108.thread111:                             ; preds = %.thread108.thread111.sink.split, %.thread108
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z21showSingleLineSummaryR4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(37) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN4Data11loadInspectEv(ptr noundef nonnull align 8 dereferenceable(736) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.b = load i32, ptr %i.a, align 8, !tbaa !74
  switch i32 %i.b, label %bb.p [
    i32 0, label %bb.b
    i32 57, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.d = load i8, ptr %i.c, align 4, !tbaa !78, !range !72, !noundef !73
  %i.e = trunc nuw i8 %i.d to i1
  %_ZSt3hexRSt8ios_base._ZSt3decRSt8ios_base = select i1 %i.e, ptr @_ZSt3hexRSt8ios_base, ptr @_ZSt3decRSt8ios_base
  %i.f = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.h
  %i.j = tail call noundef nonnull align 8 dereferenceable(216) ptr %_ZSt3hexRSt8ios_base._ZSt3decRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.i), !inline_history !1 ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.61, i64 noundef 10) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !100
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.r) ; 2 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.9, i64 noundef 2) ; 0 uses
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !100
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = lshr i64 %i.y, 10
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef %i.z)
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.62, i64 noundef 2) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 734
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !102, !range !72, !noundef !73
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.63, i64 noundef 66) ; 0 uses
  %i.ag = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.ah = getelementptr i8, ptr %i.ag, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 240
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = load i8, ptr %i.am, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 67
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.al)
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef signext i8 %i.as(ptr noundef nonnull align 8 dereferenceable(570) %i.al, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi i8 [ %i.ap, %bb.e ], [ %i.at, %bb.f ]
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.av = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au) ; 0 uses
  br label %bb.p

bb.g:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 735
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !101, !range !72, !noundef !73
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.64, i64 noundef 62) ; 0 uses
  %i.ba = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 240
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !35 ; 6 uses
  %.not.i.i.i18 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i18, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19: ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !41
  %.not.i1.i.i20 = icmp eq i8 %i.bh, 0
  br i1 %.not.i1.i.i20, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 67
end_hunk_0
