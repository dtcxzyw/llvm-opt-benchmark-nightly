inline.NumInlined: 2280
inline.NumDeleted: 605
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z14showColorStatsR4DataRK7Options:bb.a
  %i.i = load i8, ptr %i.h, align 4, !tbaa !78, !range !75, !noundef !76
  %i.j = trunc nuw i8 %i.i to i1
  %_ZSt3hexRSt8ios_base._ZSt3decRSt8ios_base = select i1 %i.j, ptr @_ZSt3hexRSt8ios_base, ptr @_ZSt3decRSt8ios_base
  %i.k = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.m
  %i.o = tail call noundef nonnull align 8 dereferenceable(216) ptr %_ZSt3hexRSt8ios_base._ZSt3decRSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.n), !inline_history !82 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.c, label %._ZN4Data10loadPixelsEv.exit_crit_edge

._ZN4Data10loadPixelsEv.exit_crit_edge:           ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 728
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !77
  br label %_ZN4Data10loadPixelsEv.exit

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %_ZN4Data8loadFileEv.exit.i.i, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !77
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 732
  store i8 1, ptr %i.ac, align 4, !tbaa !115
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 6, ptr %i.ad, align 8, !tbaa !186
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 16, ptr %i.ae, align 4, !tbaa !170
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i

_ZN4Data8loadFileEv.exit.i.i:                     ; preds = %bb.c
  %i.af = tail call noundef i32 @_ZN7lodepng9load_fileERSt6vectorIhSaIhEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(736) %0) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 3 uses
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !77
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN4Data10loadPixelsEv.exit.thread

bb.d:                                             ; preds = %_ZN4Data8loadFileEv.exit.i.i
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !117 ; 2 uses
  %.pre1.i = load ptr, ptr %i.t, align 8, !tbaa !116
  %i.ah = icmp eq ptr %.pre1.i, %.pre.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 732
  store i8 1, ptr %i.ai, align 4, !tbaa !115
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 6, ptr %i.aj, align 8, !tbaa !186
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 16, ptr %i.ak, align 4, !tbaa !170
  br i1 %i.ah, label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.d
  store ptr %.pre.i, ptr %i.t, align 8, !tbaa !116
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i

_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i:            ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.d, %.thread.i
  %i.al = phi ptr [ %i.ab, %.thread.i ], [ %i.ag, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ %i.ag, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.an = tail call noundef i32 @_ZN7lodepng6decodeERSt6vectorIhSaIhEERjS4_RNS_5StateERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull align 8 dereferenceable(640) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.w) ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !77
  br label %_ZN4Data10loadPixelsEv.exit

_ZN4Data10loadPixelsEv.exit:                      ; preds = %._ZN4Data10loadPixelsEv.exit_crit_edge, %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i
  %i.ao = phi i32 [ %.pre, %._ZN4Data10loadPixelsEv.exit_crit_edge ], [ %i.an, %_ZNSt6vectorIhSaIhEE5clearEv.exit.i.i ]
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.e, label %_ZN4Data10loadPixelsEv.exit.thread

bb.e:                                             ; preds = %_ZN4Data10loadPixelsEv.exit
  %i.ap = load i8, ptr %1, align 4, !tbaa !237, !range !75, !noundef !76
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.168, i64 noundef 12) ; 0 uses
  %i.as = load i32, ptr %i.q, align 8, !tbaa !127
  %i.at = load i32, ptr %i.r, align 4, !tbaa !127
  %i.au = mul i32 %i.at, %i.as
  %i.av = zext i32 %i.au to i64
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.av) ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !8
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 240
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !28
  %.not.i1.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 67
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bc)
  %i.bh = load ptr, ptr %i.bc, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef signext i8 %i.bj(ptr noundef nonnull align 8 dereferenceable(570) %i.bc, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi i8 [ %i.bg, %bb.h ], [ %i.bk, %bb.i ]
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext %.0.i.i.i)
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bl) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.bn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.169, i64 noundef 19) ; 0 uses
  %i.bo = load i32, ptr %i.q, align 8, !tbaa !127
  %i.bp = load i32, ptr %i.r, align 4, !tbaa !127
  %i.bq = call noundef i64 @_Z11countColorsRKSt6vectorIhSaIhEEjjPmS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i32 noundef %i.bo, i32 noundef %i.bp, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.br = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.bq) ; 0 uses
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.170, i64 noundef 5) ; 0 uses
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !87
  %i.bu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.bt) ; 2 uses
  %i.bv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.143, i64 noundef 5) ; 0 uses
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !87
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i64 noundef %i.bw) ; 2 uses
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull @.str.144, i64 noundef 5) ; 0 uses
  %i.bz = load i64, ptr %i.c, align 8, !tbaa !87
  %i.ca = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, i64 noundef %i.bz) ; 2 uses
  %i.cb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull @.str.171, i64 noundef 5) ; 0 uses
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !87
  %i.cd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, i64 noundef %i.cc)
  %i.ce = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  %i.cf = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 240
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i52 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i52, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i53

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i53: ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !28
  %.not.i1.i.i54 = icmp eq i8 %i.cm, 0
  br i1 %.not.i1.i.i54, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i53
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 67
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit56

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i53
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ck)
  %i.cp = load ptr, ptr %i.ck, align 8, !tbaa !8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = tail call noundef signext i8 %i.cr(ptr noundef nonnull align 8 dereferenceable(570) %i.ck, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit56

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit56: ; preds = %bb.l, %bb.m
  %.0.i.i.i55 = phi i8 [ %i.co, %bb.l ], [ %i.cs, %bb.m ]
  %i.ct = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i55)
  %i.cu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct) ; 0 uses
  %i.cv = load i32, ptr %i.q, align 8, !tbaa !127 ; 4 uses
  %.not49 = icmp eq i32 %i.cv, 0
  br i1 %.not49, label %bb.ab, label %bb.n

bb.n:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit56
  %i.cw = load i32, ptr %i.r, align 4, !tbaa !127 ; 3 uses
  %.not50 = icmp eq i32 %i.cw, 0
  br i1 %.not50, label %bb.ab, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = load ptr, ptr %i.p, align 8, !tbaa !117 ; 8 uses
  %wide.trip.count = zext i32 %i.cv to i64
  br label %.preheader77

.preheader77:                                     ; preds = %bb.o, %bb.p
  %.sroa.0109.1 = phi double [ 0.000000e+00, %bb.o ], [ %11, %bb.p ]
  %.sroa.8112.1 = phi double [ 0.000000e+00, %bb.o ], [ %22, %bb.p ]
  %.sroa.13115.1 = phi double [ 0.000000e+00, %bb.o ], [ %37, %bb.p ]
  %.sroa.18118.1 = phi double [ 0.000000e+00, %bb.o ], [ %49, %bb.p ]
  %.sroa.13103.1 = phi double [ 9.999990e+05, %bb.o ], [ %.sroa.speculated75.2.a, %bb.p ]
  %.sroa.097.1 = phi double [ 9.999990e+05, %bb.o ], [ %.sroa.speculated75, %bb.p ]
  %.sroa.0.1 = phi double [ 0.000000e+00, %bb.o ], [ %.sroa.speculated, %bb.p ]
  %.sroa.13.1 = phi double [ 0.000000e+00, %bb.o ], [ %.sroa.speculated.2.a, %bb.p ]
  %.04880 = phi i32 [ 0, %bb.o ], [ %i.eh, %bb.p ] ; 2 uses
  %i.cy = phi <2 x double> [ <double 9.999990e+05, double 0.000000e+00>, %bb.o ], [ %27, %bb.p ]
  %2 = phi <2 x double> [ <double 9.999990e+05, double 0.000000e+00>, %bb.o ], [ %i.eg, %bb.p ]
  %i.cz = mul i32 %.04880, %i.cv
  br label %.preheader76

.preheader:                                       ; preds = %bb.p
  %i.da = mul i32 %i.cw, %i.cv
  %i.db = uitofp i32 %i.da to double
  %i.dc = fmul nnan double %i.db, 2.570000e+02    ; 4 uses
  %i.dd = fdiv double %11, %i.dc
  %i.de = fdiv double %.sroa.speculated75, 2.570000e+02
  %i.df = fdiv double %.sroa.speculated, 2.570000e+02
  %i.dg = fdiv double %22, %i.dc
  %i.dh = fdiv <2 x double> %27, splat (double 2.570000e+02) ; 2 uses
  %i.di = fdiv double %37, %i.dc
  %i.dj = fdiv double %.sroa.speculated75.2.a, 2.570000e+02
  %i.dk = fdiv double %.sroa.speculated.2.a, 2.570000e+02
  %i.dl = fdiv double %49, %i.dc
  %i.dm = fdiv <2 x double> %i.eg, splat (double 2.570000e+02) ; 2 uses
  %i.dn = load i8, ptr %1, align 4, !tbaa !237, !range !75, !noundef !76
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.q, label %bb.u

.preheader76:                                     ; preds = %.preheader77, %.preheader76
  %.sroa.0109.0 = phi double [ %.sroa.0109.1, %.preheader77 ], [ %11, %.preheader76 ]
  %.sroa.8112.0 = phi double [ %.sroa.8112.1, %.preheader77 ], [ %22, %.preheader76 ]
  %.sroa.13115.0 = phi double [ %.sroa.13115.1, %.preheader77 ], [ %37, %.preheader76 ]
  %.sroa.18118.0 = phi double [ %.sroa.18118.1, %.preheader77 ], [ %49, %.preheader76 ]
  %.sroa.13103.0 = phi double [ %.sroa.13103.1, %.preheader77 ], [ %.sroa.speculated75.2.a, %.preheader76 ] ; 2 uses
  %.sroa.097.0 = phi double [ %.sroa.097.1, %.preheader77 ], [ %.sroa.speculated75, %.preheader76 ] ; 2 uses
  %.sroa.0.0 = phi double [ %.sroa.0.1, %.preheader77 ], [ %.sroa.speculated, %.preheader76 ] ; 2 uses
  %.sroa.13.0 = phi double [ %.sroa.13.1, %.preheader77 ], [ %.sroa.speculated.2.a, %.preheader76 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader77 ], [ %indvars.iv.next, %.preheader76 ] ; 2 uses
  %i.dp = phi <2 x double> [ %i.cy, %.preheader77 ], [ %27, %.preheader76 ] ; 3 uses
  %3 = phi <2 x double> [ %2, %.preheader77 ], [ %i.eg, %.preheader76 ] ; 3 uses
  %i.dq = trunc nuw i64 %indvars.iv to i32
  %reass.add = add i32 %i.cz, %i.dq
  %reass.mul = shl i32 %reass.add, 3
  %i.dr = zext i32 %reass.mul to i64              ; 8 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dr
  %4 = load i8, ptr %i.ds, align 1, !tbaa !34
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dr
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %7 = load i8, ptr %i.du, align 1, !tbaa !34
  %8 = zext i8 %7 to i32
  %9 = or disjoint i32 %6, %8
  %10 = uitofp nneg i32 %9 to double              ; 5 uses
  %11 = fadd double %.sroa.0109.0, %10            ; 3 uses
  %12 = fcmp ogt double %.sroa.097.0, %10
  %.sroa.speculated75 = select i1 %12, double %10, double %.sroa.097.0 ; 3 uses
  %13 = fcmp olt double %.sroa.0.0, %10
  %.sroa.speculated = select i1 %13, double %10, double %.sroa.0.0 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dr
  %14 = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.dw = load i8, ptr %14, align 1, !tbaa !34
  %15 = zext i8 %i.dw to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dr
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 3
  %i.dx = load i8, ptr %18, align 1, !tbaa !34
  %19 = zext i8 %i.dx to i32
  %20 = or disjoint i32 %16, %19
  %21 = uitofp nneg i32 %20 to double             ; 3 uses
  %22 = fadd double %.sroa.8112.0, %21            ; 3 uses
  %23 = insertelement <2 x double> %i.dp, double %21, i64 1 ; 2 uses
  %24 = insertelement <2 x double> %i.dp, double %21, i64 0
  %25 = fcmp ogt <2 x double> %23, %24
  %26 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %27 = select <2 x i1> %25, <2 x double> %26, <2 x double> %i.dp ; 3 uses
  %28 = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dr
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 4
  %30 = load i8, ptr %29, align 1, !tbaa !34
  %i.dy = zext i8 %30 to i32
  %31 = shl nuw nsw i32 %i.dy, 8
  %32 = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dr
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 5
  %34 = load i8, ptr %33, align 1, !tbaa !34
  %35 = zext i8 %34 to i32
  %36 = or disjoint i32 %31, %35
  %i.dz = uitofp nneg i32 %36 to double           ; 5 uses
  %37 = fadd double %.sroa.13115.0, %i.dz         ; 3 uses
  %i.ea = fcmp ogt double %.sroa.13103.0, %i.dz
  %.sroa.speculated75.2.a = select i1 %i.ea, double %i.dz, double %.sroa.13103.0 ; 3 uses
  %i.eb = fcmp olt double %.sroa.13.0, %i.dz
  %.sroa.speculated.2.a = select i1 %i.eb, double %i.dz, double %.sroa.13.0 ; 3 uses
  %38 = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dr
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 6
  %40 = load i8, ptr %39, align 1, !tbaa !34
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dr
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 7
  %45 = load i8, ptr %44, align 1, !tbaa !34
  %46 = zext i8 %45 to i32
  %47 = or disjoint i32 %42, %46
  %48 = uitofp nneg i32 %47 to double             ; 3 uses
  %49 = fadd double %.sroa.18118.0, %48           ; 3 uses
  %i.ec = insertelement <2 x double> %3, double %48, i64 1 ; 2 uses
  %i.ed = insertelement <2 x double> %3, double %48, i64 0
  %i.ee = fcmp ogt <2 x double> %i.ec, %i.ed
  %i.ef = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eg = select <2 x i1> %i.ee, <2 x double> %i.ef, <2 x double> %3 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.p, label %.preheader76, !llvm.loop !310

bb.p:                                             ; preds = %.preheader76
  %i.eh = add nuw i32 %.04880, 1                  ; 2 uses
  %exitcond84.not = icmp eq i32 %i.eh, %i.cw
  br i1 %exitcond84.not, label %.preheader, label %.preheader77, !llvm.loop !311

bb.q:                                             ; preds = %.preheader
  %i.ei = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.172, i64 noundef 48) ; 0 uses
  %i.ej = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.ek = getelementptr i8, ptr %i.ej, i64 -24
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 240
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i57 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i57, label %bb.r, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i58

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i58: ; preds = %bb.q
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  %i.eq = load i8, ptr %i.ep, align 8, !tbaa !28
  %.not.i1.i.i59 = icmp eq i8 %i.eq, 0
  br i1 %.not.i1.i.i59, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i58
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 67
  %i.es = load i8, ptr %i.er, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit61

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i58
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.eo)
  %i.et = load ptr, ptr %i.eo, align 8, !tbaa !8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = tail call noundef signext i8 %i.ev(ptr noundef nonnull align 8 dereferenceable(570) %i.eo, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit61

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit61: ; preds = %bb.s, %bb.t
  %.0.i.i.i60 = phi i8 [ %i.es, %bb.s ], [ %i.ew, %bb.t ]
  %i.ex = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i60)
  %i.ey = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ex) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit61, %.preheader
  %i.ez = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.173, i64 noundef 15) ; 0 uses
  %i.fa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.dd) ; 2 uses
  %i.fb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef nonnull @.str.39, i64 noundef 2) ; 0 uses
  %i.fc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, double noundef %i.dg) ; 2 uses
  %i.fd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, ptr noundef nonnull @.str.39, i64 noundef 2) ; 0 uses
  %i.fe = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, double noundef %i.di) ; 2 uses
  %i.ff = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef nonnull @.str.39, i64 noundef 2) ; 0 uses
  %i.fg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, double noundef %i.dl) ; 3 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !8
  %i.fi = getelementptr i8, ptr %i.fh, i64 -24
  %i.fj = load i64, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds i8, ptr %i.fg, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 240
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i62 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i62, label %bb.v, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i63

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i63: ; preds = %bb.u
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %i.fo = load i8, ptr %i.fn, align 8, !tbaa !28
  %.not.i1.i.i64 = icmp eq i8 %i.fo, 0
  br i1 %.not.i1.i.i64, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i63
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 67
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit66

bb.x:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i63
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.fm)
  %i.fr = load ptr, ptr %i.fm, align 8, !tbaa !8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 48
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = tail call noundef signext i8 %i.ft(ptr noundef nonnull align 8 dereferenceable(570) %i.fm, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit66

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit66: ; preds = %bb.w, %bb.x
  %.0.i.i.i65 = phi i8 [ %i.fq, %bb.w ], [ %i.fu, %bb.x ]
  %i.fv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fg, i8 noundef signext %.0.i.i.i65)
  %i.fw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fv) ; 0 uses
  %i.fx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.174, i64 noundef 14) ; 0 uses
  %i.fy = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.de) ; 2 uses
  %i.fz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, ptr noundef nonnull @.str.175, i64 noundef 1) ; 0 uses
  %i.ga = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, double noundef %i.df) ; 2 uses
  %i.gb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef nonnull @.str.39, i64 noundef 2) ; 0 uses
  %i.gc = extractelement <2 x double> %i.dh, i64 0
  %i.gd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, double noundef %i.gc) ; 2 uses
  %i.ge = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, ptr noundef nonnull @.str.175, i64 noundef 1) ; 0 uses
  %i.gf = extractelement <2 x double> %i.dh, i64 1
  %i.gg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gd, double noundef %i.gf) ; 2 uses
  %i.gh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gg, ptr noundef nonnull @.str.39, i64 noundef 2) ; 0 uses
  %i.gi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gg, double noundef %i.dj) ; 2 uses
  %i.gj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, ptr noundef nonnull @.str.175, i64 noundef 1) ; 0 uses
  %i.gk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gi, double noundef %i.dk) ; 2 uses
  %i.gl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, ptr noundef nonnull @.str.39, i64 noundef 2) ; 0 uses
  %i.gm = extractelement <2 x double> %i.dm, i64 0
  %i.gn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gk, double noundef %i.gm) ; 2 uses
  %i.go = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, ptr noundef nonnull @.str.175, i64 noundef 1) ; 0 uses
  %i.gp = extractelement <2 x double> %i.dm, i64 1
  %i.gq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.gn, double noundef %i.gp) ; 3 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !8
  %i.gs = getelementptr i8, ptr %i.gr, i64 -24
  %i.gt = load i64, ptr %i.gs, align 8
  %i.gu = getelementptr inbounds i8, ptr %i.gq, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 240
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !10 ; 6 uses
  %.not.i.i.i67 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i67, label %bb.y, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i68

bb.y:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit66
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i68: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit66
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 56
  %i.gy = load i8, ptr %i.gx, align 8, !tbaa !28
  %.not.i1.i.i69 = icmp eq i8 %i.gy, 0
  br i1 %.not.i1.i.i69, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i68
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 67
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit71

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i68
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.gw)
  %i.hb = load ptr, ptr %i.gw, align 8, !tbaa !8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = tail call noundef signext i8 %i.hd(ptr noundef nonnull align 8 dereferenceable(570) %i.gw, i8 noundef signext 10), !inline_history !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit71

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit71: ; preds = %bb.z, %bb.aa
  %.0.i.i.i70 = phi i8 [ %i.ha, %bb.z ], [ %i.he, %bb.aa ]
  %i.hf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.gq, i8 noundef signext %.0.i.i.i70)
  %i.hg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hf) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit71, %bb.n, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN4Data10loadPixelsEv.exit.thread

_ZN4Data10loadPixelsEv.exit.thread:               ; preds = %_ZN4Data8loadFileEv.exit.i.i, %bb.ab, %_ZN4Data10loadPixelsEv.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define void @_Z10showErrorsRK4DataRK7Options(ptr noundef nonnull align 8 dereferenceable(736) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(37) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.Data, align 8               ; 13 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.176, i64 noundef 14) ; 0 uses
  %i.b = load ptr, ptr @_ZSt4cout, align 8, !tbaa !8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !10   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i8, ptr %i.h, align 8, !tbaa !28
  %.not.i1.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 67
  %i.k = load i8, ptr %i.j, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.g)
end_hunk_0
