Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_fmt-2aa36b3364258ad0.uu_fmt.ff0b9b7f8b3f302-cgu.0?download=true
inline.NumInlined: 782
inline.NumDeleted: 499
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvCs1mQHuhqOwPS_6uu_fmt12process_file:bb.a
  %.sroa.8.i.i.i.i.sroa.11.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.sx, i64 57
  store i8 %.sroa.8.i.i.i.i.sroa.11.0, ptr %.sroa.8.i.i.i.i.sroa.11.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx, align 1, !noalias !704
  %.sroa.8.i.i.i.i.sroa.12.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.sx, i64 58
  store i8 %.sroa.8.i.i.i.i.sroa.12.0, ptr %.sroa.8.i.i.i.i.sroa.12.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx, align 2, !noalias !704
  %.sroa.8.i.i.i.i.sroa.13.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.sx, i64 59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.8.i.i.i.i.sroa.13.0..sroa.47.0..sroa_idx.i.i.i.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(5) %.sroa.8.i.i.i.i.sroa.13, i64 5, i1 false), !noalias !704
  store i64 %.sroa.0.110.i.i.i.i, ptr %i.sx, align 8, !noalias !704
  %i.sy = add nuw nsw i64 %i.qc, 1                ; 2 uses
  store i64 %i.sy, ptr %.sroa.5.0..sroa_idx.i.i150, align 8, !alias.scope !701, !noalias !702
  %.pre.i.i.i.pre.i.i.i = load i8, ptr %.sroa.522.0..sroa_idx.i.i.i, align 8, !alias.scope !705, !noalias !706
  %.promoted558.pre = load ptr, ptr %i.k, align 8
  %.sroa.021.sroa.5.0..sroa_idx.i.i.i.promoted.pre = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx.i.i.i, align 8
  %.pre833 = load ptr, ptr %.sroa.021.sroa.4.0..sroa_idx.i.i.i, align 8
  %.val.i.i.i.i.i.i.i.i.pre = load ptr, ptr %.sroa.021.sroa.6.0..sroa_idx.i.i.i, align 8
  %.val2.i.i.i.i.i.i.i.i.pre = load ptr, ptr %.sroa.021.sroa.7.0..sroa_idx.i.i.i, align 8
  br label %bb.cu

_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtB1M_4skip4SkipINtNtNtB1Q_5slice4iter4IterIBx_hEEENtBI_9WordSplitNCNvMs3_BI_NtBI_9ParaWords12create_wordss0_0EEBK_.exit.i.i.i: ; preds = %bb.ed, %.loopexit41.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !695
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !662
  br label %_RNvMs3_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9ParaWords3new.exit.i

_RNvMs3_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9ParaWords3new.exit.i: ; preds = %_RNvYNvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtNtBe_5slice4iter5SplithNCNCNvMs3_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB1B_9ParaWords12create_words00ENCB1t_s_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1D_.exit.thread.i.i.i.i.i.i.i.i, %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtB1M_4skip4SkipINtNtNtB1Q_5slice4iter4IterIBx_hEEENtBI_9WordSplitNCNvMs3_BI_NtBI_9ParaWords12create_wordss0_0EEBK_.exit.i.i.i, %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredNtBI_9WordSplitEBK_.exit.i.i.i
  %.sroa.9.0.copyload.i = phi i64 [ %i.qc, %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtB1M_4skip4SkipINtNtNtB1Q_5slice4iter4IterIBx_hEEENtBI_9WordSplitNCNvMs3_BI_NtBI_9ParaWords12create_wordss0_0EEBK_.exit.i.i.i ], [ %i.oz, %_RINvMsk_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoE16extend_desugaredNtBI_9WordSplitEBK_.exit.i.i.i ], [ %i.ko, %_RNvYNvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtNtBe_5slice4iter5SplithNCNCNvMs3_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB1B_9ParaWords12create_words00ENCB1t_s_0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1D_.exit.thread.i.i.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !641
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 8, !noalias !707 ; 3 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i149, align 8, !noalias !707, !nonnull !4, !noundef !4 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !641
  %.idx.i = shl nuw nsw i64 %.sroa.9.0.copyload.i, 6
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 %.idx.i ; 15 uses
  %i.ta = icmp eq i64 %.sroa.9.0.copyload.i, 0
  br i1 %i.ta, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %_RNvMs3_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9ParaWords3new.exit.i
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 64 ; 5 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 40
  %i.td = load i64, ptr %i.tc, align 8, !noundef !4
  br i1 %or.cond.i.i, label %bb.eh, label %bb.ei

bb.eg:                                            ; preds = %_RNvMs3_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_9ParaWords3new.exit.i
  %i.te = load i64, ptr %2, align 8, !range !5, !alias.scope !638, !noalias !708, !noundef !4
  %i.tf = load i64, ptr %i.ho, align 8, !alias.scope !638, !noalias !708, !noundef !4 ; 4 uses
  %i.tg = icmp sgt i64 %i.tf, -1
  call void @llvm.assume(i1 %i.tg)
  %i.th = sub nsw i64 %i.te, %i.tf
  %i.ti = icmp ugt i64 %i.th, 1
  br i1 %i.ti, label %bb.kh, label %bb.kg, !prof !8

bb.eh:                                            ; preds = %bb.ef
  %i.tj = load ptr, ptr %.sroa.720.0..sroa_idx21, align 8, !alias.scope !637, !noalias !639, !nonnull !4, !noundef !4 ; 2 uses
  %i.tk = load i64, ptr %i.hq, align 8, !alias.scope !637, !noalias !639, !noundef !4 ; 4 uses
  %i.tl = load i64, ptr %2, align 8, !range !5, !alias.scope !638, !noalias !708, !noundef !4
  %i.tm = load i64, ptr %i.ho, align 8, !alias.scope !638, !noalias !708, !noundef !4 ; 4 uses
  %i.tn = icmp sgt i64 %i.tm, -1
  call void @llvm.assume(i1 %i.tn)
  %i.to = sub nsw i64 %i.tl, %i.tm
  %i.tp = icmp ult i64 %i.tk, %i.to
  br i1 %i.tp, label %bb.eo, label %bb.en, !prof !8

bb.ei:                                            ; preds = %bb.ef
  br i1 %i.kj, label %bb.em, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.tq = load ptr, ptr %i.hm, align 8, !alias.scope !637, !noalias !639, !nonnull !4, !noundef !4 ; 2 uses
  %i.tr = load i64, ptr %i.hn, align 8, !alias.scope !637, !noalias !639, !noundef !4 ; 4 uses
  %i.ts = load i64, ptr %2, align 8, !range !5, !alias.scope !638, !noalias !708, !noundef !4
  %i.tt = load i64, ptr %i.ho, align 8, !alias.scope !638, !noalias !708, !noundef !4 ; 4 uses
  %i.tu = icmp sgt i64 %i.tt, -1
  call void @llvm.assume(i1 %i.tu)
  %i.tv = sub nsw i64 %i.ts, %i.tt
  %i.tw = icmp ult i64 %i.tr, %i.tv
  br i1 %i.tw, label %bb.el, label %bb.ek, !prof !8

bb.ek:                                            ; preds = %bb.ej
  %i.tx = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tq, i64 noundef %i.tr) #22 ; 2 uses
  %.not.i152 = icmp eq ptr %i.tx, null
  br i1 %.not.i152, label %bb.em, label %bb.et

bb.el:                                            ; preds = %bb.ej
  %i.ty = load ptr, ptr %i.hp, align 8, !alias.scope !638, !noalias !708, !nonnull !4, !noundef !4
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 %i.tt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tz, ptr nonnull align 1 %i.tq, i64 %i.tr, i1 false)
  %i.ua = add i64 %i.tt, %i.tr
  store i64 %i.ua, ptr %i.ho, align 8, !alias.scope !638, !noalias !708
  br label %bb.em

bb.em:                                            ; preds = %bb.ep, %bb.el, %bb.ek, %bb.ei
  %.sroa.012.0.i = phi i64 [ %i.up, %bb.ep ], [ 0, %bb.ei ], [ %i.kh, %bb.el ], [ %i.kh, %bb.ek ]
  %i.ub = add i64 %.sroa.012.0.i, %i.td           ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 16
  %i.ud = load ptr, ptr %i.uc, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 24
  %i.uf = load i64, ptr %i.ue, align 8, !noundef !4 ; 4 uses
  %i.ug = load i64, ptr %2, align 8, !range !5, !alias.scope !638, !noalias !708, !noundef !4
  %i.uh = load i64, ptr %i.ho, align 8, !alias.scope !638, !noalias !708, !noundef !4 ; 4 uses
  %i.ui = icmp sgt i64 %i.uh, -1
  call void @llvm.assume(i1 %i.ui)
  %i.uj = sub nsw i64 %i.ug, %i.uh
  %i.uk = icmp ult i64 %i.uf, %i.uj
  br i1 %i.uk, label %bb.er, label %bb.eq, !prof !8

bb.en:                                            ; preds = %bb.eh
  %i.ul = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.tj, i64 noundef %i.tk) #22 ; 2 uses
  %.not29.i = icmp eq ptr %i.ul, null
  br i1 %.not29.i, label %bb.ep, label %bb.et

bb.eo:                                            ; preds = %bb.eh
  %i.um = load ptr, ptr %i.hp, align 8, !alias.scope !638, !noalias !708, !nonnull !4, !noundef !4
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 %i.tm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.un, ptr nonnull align 1 %i.tj, i64 %i.tk, i1 false)
  %i.uo = add i64 %i.tm, %i.tk
  store i64 %i.uo, ptr %i.ho, align 8, !alias.scope !638, !noalias !708
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.up = load i64, ptr %i.hr, align 8, !alias.scope !637, !noalias !639, !noundef !4
  br label %bb.em

bb.eq:                                            ; preds = %bb.em
  %i.uq = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ud, i64 noundef %i.uf) #22 ; 2 uses
  %.not30.i = icmp eq ptr %i.uq, null
  br i1 %.not30.i, label %bb.es, label %bb.et

bb.er:                                            ; preds = %bb.em
  %i.ur = load ptr, ptr %i.hp, align 8, !alias.scope !638, !noalias !708, !nonnull !4, !noundef !4
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 %i.uh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.us, ptr nonnull align 1 %i.ud, i64 %i.uf, i1 false)
  %i.ut = add i64 %i.uh, %i.uf
  store i64 %i.ut, ptr %i.ho, align 8, !alias.scope !638, !noalias !708
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %.sroa.022.0.i = select i1 %i.kj, i8 1, i8 %.fr.i ; 2 uses
  %i.uu = load ptr, ptr %i.hm, align 8, !alias.scope !637, !noalias !639, !nonnull !4, !noundef !4 ; 8 uses
  %i.uv = load i64, ptr %i.hn, align 8, !alias.scope !637, !noalias !639, !noundef !4 ; 16 uses
  %i.uw = or i8 %i.hv, %i.ki
  %or.cond5.not.i = icmp eq i8 %i.uw, 0
  br i1 %or.cond5.not.i, label %bb.fr, label %bb.eu

bb.et:                                            ; preds = %bb.kh, %bb.kg, %bb.eq, %bb.en, %bb.ek
  %.sroa.0.1.i = phi ptr [ null, %bb.kh ], [ %i.aqr, %bb.kg ], [ %i.ul, %bb.en ], [ %i.tx, %bb.ek ], [ %i.uq, %bb.eq ] ; 2 uses
  %i.ux = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.ux, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak11break_lines.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9ParaWordsEBF_.exit.sink.split.i

bb.eu:                                            ; preds = %bb.es
  %i.uy = icmp eq i64 %.sroa.9.0.copyload.i, 1
  br i1 %i.uy, label %.loopexit6.i.i, label %.lr.ph.i.i.i153

.lr.ph.i.i.i153:                                  ; preds = %bb.eu
  %i.uz = trunc nuw i8 %.sroa.022.0.i to i1
  br label %bb.ev

bb.ev:                                            ; preds = %bb.fo, %.lr.ph.i.i.i153
  %.sroa.0.023.i.i.i = phi i64 [ %i.ub, %.lr.ph.i.i.i153 ], [ %.sroa.09.0.i.i.i, %bb.fo ] ; 3 uses
  %.sroa.7.022.i.i.i = phi i8 [ 0, %.lr.ph.i.i.i153 ], [ %.sink.i.i.i.i.i, %bb.fo ] ; 2 uses
  %i.va = phi ptr [ %i.tb, %.lr.ph.i.i.i153 ], [ %i.vb, %bb.fo ] ; 13 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !709)
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  %i.vc = getelementptr inbounds nuw i8, ptr %i.va, i64 40
  %i.vd = load i64, ptr %i.vc, align 8, !alias.scope !711, !noalias !712, !noundef !4 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.va, i64 48
  %i.vf = load i64, ptr %i.ve, align 8, !alias.scope !711, !noalias !712, !noundef !4 ; 2 uses
  %i.vg = load i64, ptr %i.va, align 8, !range !12, !alias.scope !711, !noalias !712, !noundef !4
  %i.vh = trunc nuw i64 %i.vg to i1
  br i1 %i.vh, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  br i1 %i.hz, label %bb.ez, label %bb.ey

bb.ex:                                            ; preds = %bb.ey, %bb.ev
  %.sroa.0.0.i.i.i.i34.i = phi i64 [ %i.vt, %bb.ey ], [ %i.vf, %bb.ev ]
  %i.vi = getelementptr inbounds nuw i8, ptr %i.va, i64 58
  %i.vj = load i8, ptr %i.vi, align 2, !range !15, !alias.scope !711, !noalias !712, !noundef !4 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.va, i64 56
  %i.vl = load i8, ptr %i.vk, align 8, !range !15, !alias.scope !711, !noalias !712, !noundef !4 ; 2 uses
  br i1 %i.uz, label %bb.fb, label %bb.fa

bb.ey:                                            ; preds = %bb.ew
  %i.vm = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vn = load i64, ptr %i.vm, align 8, !alias.scope !711, !noalias !712, !noundef !4
  %i.vo = add i64 %i.vn, %.sroa.0.023.i.i.i
  %i.vp = udiv i64 %i.vo, %i.hy
  %i.vq = add i64 %i.vp, 1
  %i.vr = mul i64 %i.vq, %i.hy
  %i.vs = sub i64 %i.vf, %.sroa.0.023.i.i.i
  %i.vt = add i64 %i.vs, %i.vr
  br label %bb.ex

bb.ez:                                            ; preds = %bb.ew
  call void @_RNvNtNtCs6JMX4GRUq9U_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24, !noalias !713
  unreachable

bb.fa:                                            ; preds = %bb.ex
  %i.vu = trunc nuw i8 %i.vj to i1
  br i1 %i.vu, label %bb.fc, label %bb.fd

bb.fb:                                            ; preds = %bb.ex
  %3 = trunc nuw i8 %i.vl to i1
  %i.vv = and i8 %i.vj, %.sroa.7.022.i.i.i
  %brmerge2.demorgan.i.i.i.i.i = icmp ne i8 %i.vv, 0
  %or.cond.i.i.i.i.i = or i1 %brmerge2.demorgan.i.i.i.i.i, %3
  br i1 %or.cond.i.i.i.i.i, label %bb.fd, label %bb.fe

bb.fc:                                            ; preds = %bb.fa
  %i.vw = or i8 %i.vl, %.sroa.7.022.i.i.i
  %brmerge.i.i.not.i.i.i = icmp eq i8 %i.vw, 0
  br i1 %brmerge.i.i.not.i.i.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fe, %bb.fc, %bb.fb, %bb.fa
  %.sroa.04.0.i.i.i.i.i = phi i64 [ 0, %bb.fa ], [ 1, %bb.fe ], [ 2, %bb.fb ], [ 2, %bb.fc ] ; 2 uses
  %i.vx = add i64 %i.vd, %.sroa.0.023.i.i.i
  %i.vy = add i64 %i.vx, %.sroa.0.0.i.i.i.i34.i
  %i.vz = add i64 %i.vy, %.sroa.04.0.i.i.i.i.i    ; 2 uses
  %i.wa = icmp ugt i64 %i.vz, %i.ia
  br i1 %i.wa, label %bb.fg, label %bb.ff

bb.fe:                                            ; preds = %bb.fc, %bb.fb
  br label %bb.fd

bb.ff:                                            ; preds = %bb.fd
  %i.wb = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  %i.wc = load ptr, ptr %i.wb, align 8, !alias.scope !711, !noalias !712, !nonnull !4, !noundef !4
  %i.wd = getelementptr inbounds nuw i8, ptr %i.va, i64 24
  %i.we = load i64, ptr %i.wd, align 8, !alias.scope !711, !noalias !712, !noundef !4
  %i.wf = call fastcc noundef ptr @_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.wc, i64 noundef %i.we, i64 noundef %.sroa.04.0.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2) #23, !noalias !713 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.wf, null
  br i1 %.not.i.i.i.i.i, label %bb.fo, label %_RINvNtCs1mQHuhqOwPS_6uu_fmt9linebreak12break_simpleINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtB4_9parasplit8WordInfoEEB4_.exit.i

bb.fg:                                            ; preds = %bb.fd
  call void @llvm.experimental.noalias.scope.decl(metadata !714)
  %i.wg = load i64, ptr %2, align 8, !range !5, !alias.scope !715, !noalias !716, !noundef !4 ; 2 uses
  %i.wh = load i64, ptr %i.ho, align 8, !alias.scope !715, !noalias !716, !noundef !4 ; 4 uses
  %i.wi = icmp sgt i64 %i.wh, -1
  call void @llvm.assume(i1 %i.wi)
  %i.wj = sub nsw i64 %i.wg, %i.wh
  %i.wk = icmp ugt i64 %i.wj, 1
  br i1 %i.wk, label %bb.fi, label %bb.fh, !prof !8

bb.fh:                                            ; preds = %bb.fg
  %i.wl = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 1) #22, !noalias !717 ; 2 uses
  %.not.i.i.i.i.i35.i = icmp eq ptr %i.wl, null
  br i1 %.not.i.i.i.i.i35.i, label %._crit_edge.i.i.i.i.i.i, label %_RINvNtCs1mQHuhqOwPS_6uu_fmt9linebreak12break_simpleINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtB4_9parasplit8WordInfoEEB4_.exit.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.fh
  %.pre.i.i.i.i.i36.i = load i64, ptr %i.ho, align 8, !alias.scope !715, !noalias !716
  %.pre.i.i.i.i.i = load i64, ptr %2, align 8, !range !5, !alias.scope !715, !noalias !716
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fg
  %i.wm = load ptr, ptr %i.hp, align 8, !alias.scope !715, !noalias !716, !nonnull !4, !noundef !4
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 %i.wh
  store i8 10, ptr %i.wn, align 1, !noalias !718
  %i.wo = add nuw i64 %i.wh, 1                    ; 2 uses
  store i64 %i.wo, ptr %i.ho, align 8, !alias.scope !715, !noalias !716
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %._crit_edge.i.i.i.i.i.i
  %i.wp = phi i64 [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.wg, %bb.fi ]
  %i.wq = phi i64 [ %.pre.i.i.i.i.i36.i, %._crit_edge.i.i.i.i.i.i ], [ %i.wo, %bb.fi ] ; 4 uses
  %i.wr = icmp sgt i64 %i.wq, -1
  call void @llvm.assume(i1 %i.wr)
  %i.ws = sub nsw i64 %i.wp, %i.wq
  %i.wt = icmp ult i64 %i.uv, %i.ws
  br i1 %i.wt, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.thread.i.i.i.i.i, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.i.i.i.i.i, !prof !8

_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.thread.i.i.i.i.i: ; preds = %bb.fj
  %i.wu = load ptr, ptr %i.hp, align 8, !alias.scope !715, !noalias !716, !nonnull !4, !noundef !4
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 %i.wq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wv, ptr nonnull readonly align 1 %i.uu, i64 range(i64 0, -9223372036854775808) %i.uv, i1 false), !noalias !713
  %i.ww = add nuw i64 %i.wq, %i.uv
  store i64 %i.ww, ptr %i.ho, align 8, !alias.scope !715, !noalias !716
  br label %bb.fk

_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.i.i.i.i.i: ; preds = %bb.fj
  %i.wx = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.uu, i64 noundef range(i64 0, -9223372036854775808) %i.uv) #22, !noalias !713 ; 2 uses
  %.not20.i.i.i.i.i = icmp eq ptr %i.wx, null
  br i1 %.not20.i.i.i.i.i, label %bb.fk, label %_RINvNtCs1mQHuhqOwPS_6uu_fmt9linebreak12break_simpleINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtB4_9parasplit8WordInfoEEB4_.exit.i

bb.fk:                                            ; preds = %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.i.i.i.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.thread.i.i.i.i.i
  %i.wy = getelementptr inbounds nuw i8, ptr %i.va, i64 24
  %i.wz = load i64, ptr %i.wy, align 8, !alias.scope !711, !noalias !712, !noundef !4 ; 4 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.va, i64 32
  %i.xb = load i64, ptr %i.xa, align 8, !alias.scope !711, !noalias !712, !noundef !4 ; 4 uses
  %i.xc = icmp ugt i64 %i.xb, %i.wz
  br i1 %i.xc, label %bb.fm, label %bb.fl, !prof !14

bb.fl:                                            ; preds = %bb.fk
  %i.xd = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  %i.xe = load ptr, ptr %i.xd, align 8, !alias.scope !711, !noalias !712, !nonnull !4, !noundef !4
  %i.xf = sub nuw i64 %i.wz, %i.xb                ; 4 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.xb ; 2 uses
  %i.xh = load i64, ptr %2, align 8, !range !5, !alias.scope !719, !noalias !720, !noundef !4
  %i.xi = load i64, ptr %i.ho, align 8, !alias.scope !719, !noalias !720, !noundef !4 ; 4 uses
  %i.xj = icmp sgt i64 %i.xi, -1
  call void @llvm.assume(i1 %i.xj)
  %i.xk = sub nsw i64 %i.xh, %i.xi
  %i.xl = icmp ult i64 %i.xf, %i.xk
  br i1 %i.xl, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.thread.i.i.i.i.i, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.i.i.i.i.i, !prof !8

_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.thread.i.i.i.i.i: ; preds = %bb.fl
  %i.xm = load ptr, ptr %i.hp, align 8, !alias.scope !719, !noalias !720, !nonnull !4, !noundef !4
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 %i.xi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xn, ptr nonnull readonly align 1 %i.xg, i64 range(i64 0, -9223372036854775808) %i.xf, i1 false), !noalias !713
  %i.xo = add nuw i64 %i.xi, %i.xf
  store i64 %i.xo, ptr %i.ho, align 8, !alias.scope !719, !noalias !720
  br label %bb.fn

_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.i.i.i.i.i: ; preds = %bb.fl
  %i.xp = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.xg, i64 noundef range(i64 0, -9223372036854775808) %i.xf) #22, !noalias !713 ; 2 uses
  %.not21.i.i.i.i.i = icmp eq ptr %i.xp, null
  br i1 %.not21.i.i.i.i.i, label %bb.fn, label %_RINvNtCs1mQHuhqOwPS_6uu_fmt9linebreak12break_simpleINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtB4_9parasplit8WordInfoEEB4_.exit.i

bb.fm:                                            ; preds = %bb.fk
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.xb, i64 noundef %i.wz, i64 noundef %i.wz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #24, !noalias !713
  unreachable

bb.fn:                                            ; preds = %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.i.i.i.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.thread.i.i.i.i.i
  %i.xq = add i64 %i.vd, %i.kh
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.ff
  %.sroa.09.0.i.i.i = phi i64 [ %i.xq, %bb.fn ], [ %i.vz, %bb.ff ]
  %.sink.i.i.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.va, i64 57
  %.sink.i.i.i.i.i = load i8, ptr %.sink.i.i.in.i.i.i, align 1, !range !15, !alias.scope !711, !noalias !712, !noundef !4
  %i.xr = icmp eq ptr %i.vb, %i.sz
  br i1 %i.xr, label %.loopexit6.i.i, label %bb.ev

.loopexit6.i.i:                                   ; preds = %bb.fo, %bb.eu
  %i.xs = load i64, ptr %2, align 8, !range !5, !alias.scope !638, !noalias !721, !noundef !4
  %i.xt = load i64, ptr %i.ho, align 8, !alias.scope !638, !noalias !721, !noundef !4 ; 4 uses
  %i.xu = icmp sgt i64 %i.xt, -1
  call void @llvm.assume(i1 %i.xu)
  %i.xv = sub nsw i64 %i.xs, %i.xt
  %i.xw = icmp ugt i64 %i.xv, 1
  br i1 %i.xw, label %bb.fq, label %bb.fp, !prof !8

bb.fp:                                            ; preds = %.loopexit6.i.i
  %i.xx = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 1) #22, !noalias !722
  br label %_RINvNtCs1mQHuhqOwPS_6uu_fmt9linebreak12break_simpleINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtB4_9parasplit8WordInfoEEB4_.exit.i

bb.fq:                                            ; preds = %.loopexit6.i.i
  %i.xy = load ptr, ptr %i.hp, align 8, !alias.scope !638, !noalias !721, !nonnull !4, !noundef !4
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 %i.xt
  store i8 10, ptr %i.xz, align 1, !noalias !722
  %i.ya = add nuw i64 %i.xt, 1
  store i64 %i.ya, ptr %i.ho, align 8, !alias.scope !638, !noalias !721
  br label %_RINvNtCs1mQHuhqOwPS_6uu_fmt9linebreak12break_simpleINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtB4_9parasplit8WordInfoEEB4_.exit.i

bb.fr:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !723
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !724
  %i.yb = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef range(i64 1, 9) 8) #23, !noalias !724 ; 9 uses
  %i.yc = icmp eq ptr %i.yb, null
  br i1 %i.yc, label %bb.fs, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i, !prof !14

bb.fs:                                            ; preds = %bb.fr
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #26, !noalias !724
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i: ; preds = %bb.fr
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yb, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yb, i8 0, i64 24, i1 false), !noalias !724
  store i64 %i.ub, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !724
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yb, i64 32
  store float +qnan, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !724
  %.sroa.8.0..sroa_idx.i.i38.i = getelementptr inbounds nuw i8, ptr %i.yb, i64 36
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i38.i, align 4, !noalias !724
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yb, i64 37
  store i8 0, ptr %.sroa.9.0..sroa_idx.i.i.i, align 1, !noalias !724
  store i64 1, ptr %i.g, align 8, !noalias !723
  store ptr %i.yb, ptr %i.ib, align 8, !noalias !723
  store i64 1, ptr %i.ic, align 8, !noalias !723
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !724
  %i.yd = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8, i64 noundef range(i64 1, 9) 8) #23, !noalias !724 ; 3 uses
  %i.ye = icmp eq ptr %i.yd, null
  br i1 %i.ye, label %bb.ft, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit113.i.i.i, !prof !14

bb.ft:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #26, !noalias !724
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit113.i.i.i: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i
  store i64 0, ptr %i.yd, align 8, !noalias !724
  %i.yf = ptrtoint ptr %i.yd to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !723
  store i64 0, ptr %i.f, align 8, !noalias !723
  store ptr inttoptr (i64 8 to ptr), ptr %i.id, align 8, !noalias !723
  store i64 0, ptr %i.ie, align 8, !noalias !723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !723
  store i64 0, ptr %i.e, align 8, !noalias !723
  store ptr inttoptr (i64 8 to ptr), ptr %i.il, align 8, !noalias !723
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ig, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit113.i.i.i
  %i.yg = phi ptr [ %i.yb, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit113.i.i.i ], [ %i.agt, %bb.ig ] ; 2 uses
  %i.yh = phi ptr [ %i.yb, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit113.i.i.i ], [ %i.agu, %bb.ig ] ; 2 uses
  %i.yi = phi i64 [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit113.i.i.i ], [ %i.agv, %bb.ig ] ; 12 uses
  %.sroa.12140.0.i.i.i = phi i64 [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit113.i.i.i ], [ %.sroa.02.0.copyload.i.i.i.2.i.i.i.i.i, %bb.ig ] ; 6 uses
  %.sroa.6.0.i.i.i = phi i64 [ %i.yf, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit113.i.i.i ], [ %.sroa.02.0.copyload.i.i.i.1.i.i.i.i.i, %bb.ig ] ; 3 uses
  %.sroa.0137.0.i.i.i = phi i64 [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit113.i.i.i ], [ %.sroa.02.0.copyload.i.i.i.i.i.i.i.i, %bb.ig ] ; 3 uses
  %.sroa.12.0.i.i.i = phi ptr [ %i.tb, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit113.i.i.i ], [ %.sroa.12.3194.i.i.i, %bb.ig ] ; 5 uses
  %.sroa.8.0179.i.i.i = phi ptr [ undef, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit113.i.i.i ], [ %.sroa.0.0.i.i.i195.i.i.i, %bb.ig ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvCs1mQHuhqOwPS_6uu_fmt12process_file:bb.a
  %i.agp = add nuw nsw i64 %i.agc, 1              ; 3 uses
  store i64 %i.agp, ptr %i.ic, align 8, !alias.scope !767, !noalias !768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.agq = icmp eq ptr %i.agd, %i.aga
  br i1 %i.agq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakEEB1m_.exit.i.i.i, label %.lr.ph292.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakEEB1m_.exit.i.i.i: ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakE8push_mutBJ_.exit127.i.i.i, %._crit_edge318.i.i.i
  %.ph.i = phi ptr [ %i.yg, %._crit_edge318.i.i.i ], [ %i.agn, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakE8push_mutBJ_.exit127.i.i.i ]
  %.ph58.i = phi ptr [ %i.yh, %._crit_edge318.i.i.i ], [ %i.agn, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakE8push_mutBJ_.exit127.i.i.i ]
  %.ph59.i = phi i64 [ %i.yi, %._crit_edge318.i.i.i ], [ %i.agp, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakE8push_mutBJ_.exit127.i.i.i ] ; 2 uses
  %.pr.i = load i64, ptr %i.ie, align 8, !noalias !723 ; 3 uses
  %i.agr = icmp ult i64 %.pr.i, 1152921504606846976
  call void @llvm.assume(i1 %i.agr)
  %i.ags = icmp eq i64 %.pr.i, 0
  br i1 %i.ags, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakEEB1m_.exit.i.i.thread.i, label %bb.ig

bb.ig:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakE8push_mutBJ_.exit131.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakEEB1m_.exit.i.i.i
  %.sroa.02.0.copyload.i.i.i.2.i.i.i.i.i = phi i64 [ %.sroa.02.0.copyload.i.i.i.2.i.i.pre.i.i.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakE8push_mutBJ_.exit131.i.i.i ], [ %.pr.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakEEB1m_.exit.i.i.i ]
  %i.agt = phi ptr [ %i.aif, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakE8push_mutBJ_.exit131.i.i.i ], [ %.ph.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakEEB1m_.exit.i.i.i ]
  %i.agu = phi ptr [ %i.aif, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakE8push_mutBJ_.exit131.i.i.i ], [ %.ph58.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakEEB1m_.exit.i.i.i ]
  %i.agv = phi i64 [ %i.aih, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakE8push_mutBJ_.exit131.i.i.i ], [ %.ph59.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakEEB1m_.exit.i.i.i ]
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !771, !noalias !772
  store i64 %.sroa.0137.0.i.i.i, ptr %i.f, align 8, !alias.scope !771, !noalias !772
  %.sroa.02.0.copyload.i.i.i.1.i.i.i.i.i = load i64, ptr %i.id, align 8, !alias.scope !773, !noalias !774
  store i64 %.sroa.6.0.i.i.i, ptr %i.id, align 8, !alias.scope !773, !noalias !774
  store i64 %.sroa.12140.0.i.i.i, ptr %i.ie, align 8, !alias.scope !775, !noalias !776
  br label %bb.fu

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakEEB1m_.exit.i.i.thread.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakEEB1m_.exit.i.i.i, %bb.gt
  %i.agw = phi i64 [ %.ph59.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakEEB1m_.exit.i.i.i ], [ %i.yi, %bb.gt ] ; 7 uses
  %.sroa.014.0.lcssa381383.i273.i61.i = phi i64 [ %spec.select100.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakEEB1m_.exit.i.i.i ], [ 0, %bb.gt ] ; 4 uses
  %i.agx = icmp ult i64 %.sroa.014.0.lcssa381383.i273.i61.i, %i.agw
  br i1 %i.agx, label %bb.ih, label %bb.iq

bb.ih:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakEEB1m_.exit.i.i.thread.i
  %i.agy = load ptr, ptr %i.ib, align 8, !noalias !723, !nonnull !4, !noundef !4 ; 2 uses
  %i.agz = getelementptr inbounds nuw [40 x i8], ptr %i.agy, i64 %.sroa.014.0.lcssa381383.i273.i61.i ; 2 uses
  %i.aha = getelementptr i8, ptr %i.agz, i64 24
  %.val111.i.i.i = load i64, ptr %i.aha, align 8, !noalias !724 ; 4 uses
  %i.ahb = getelementptr i8, ptr %i.agz, i64 37
  %.val112.i.i.i = load i8, ptr %i.ahb, align 1, !range !15, !noalias !724, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %i.ahc = trunc nuw i8 %.val112.i.i.i to i1
  br i1 %i.ahc, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak21restart_active_breaks.exit.i.i.i, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.ahd = getelementptr inbounds nuw i8, ptr %.sroa.06.0190.i.i.i, i64 40
  %i.ahe = load i64, ptr %i.ahd, align 8, !alias.scope !777, !noalias !778, !noundef !4 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %.sroa.06.0190.i.i.i, i64 48
  %i.ahg = load i64, ptr %i.ahf, align 8, !alias.scope !777, !noalias !778, !noundef !4 ; 2 uses
  %i.ahh = load i64, ptr %.sroa.06.0190.i.i.i, align 8, !range !12, !alias.scope !777, !noalias !778, !noundef !4
  %i.ahi = trunc nuw i64 %i.ahh to i1
  br i1 %i.ahi, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  br i1 %i.hz, label %bb.im, label %bb.il

bb.ik:                                            ; preds = %bb.il, %bb.ii
  %.sroa.0.0.i128.i.i.i = phi i64 [ %i.ahg, %bb.ii ], [ %i.ahw, %bb.il ]
  %i.ahj = sub i64 %spec.select, %.val111.i.i.i
  %i.ahk = sub i64 %.sroa.012.0.i.i.i, %i.ia
  %i.ahl = add i64 %i.ahk, %.val111.i.i.i
  %i.ahm = add i64 %i.ahl, %i.ahe
  %i.ahn = add i64 %i.ahm, %.sroa.0.0.i128.i.i.i
  %i.aho = icmp sgt i64 %i.ahn, %i.ahj
  br i1 %i.aho, label %bb.in, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak21restart_active_breaks.exit.i.i.i

bb.il:                                            ; preds = %bb.ij
  %i.ahp = getelementptr inbounds nuw i8, ptr %.sroa.06.0190.i.i.i, i64 8
  %i.ahq = load i64, ptr %i.ahp, align 8, !alias.scope !777, !noalias !778, !noundef !4
  %i.ahr = add i64 %i.ahq, %.val111.i.i.i
  %i.ahs = udiv i64 %i.ahr, %i.hy
  %i.aht = add i64 %i.ahs, 1
  %i.ahu = mul i64 %i.aht, %i.hy
  %i.ahv = sub i64 %i.ahg, %.val111.i.i.i
  %i.ahw = add i64 %i.ahv, %i.ahu
  br label %bb.ik

bb.im:                                            ; preds = %bb.ij
  call void @_RNvNtNtCs6JMX4GRUq9U_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24, !noalias !779
  unreachable

bb.in:                                            ; preds = %bb.ik
  %i.ahx = add i64 %i.ahe, %i.kh
  br label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak21restart_active_breaks.exit.i.i.i

_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak21restart_active_breaks.exit.i.i.i: ; preds = %bb.in, %bb.ik, %bb.ih
  %.sroa.05.1.i.i.i.i = phi i8 [ 1, %bb.in ], [ 0, %bb.ik ], [ 0, %bb.ih ] ; 2 uses
  %.sroa.04.0.i129.i.i.i = phi float [ 1.000000e+00, %bb.in ], [ -1.000000e+00, %bb.ik ], [ -1.000000e+00, %bb.ih ]
  %.sroa.02.1.i.i.i.i = phi i64 [ %i.ahx, %bb.in ], [ %i.kh, %bb.ik ], [ %i.kh, %bb.ih ]
  %i.ahy = xor i8 %.sroa.05.1.i.i.i.i, 1
  %i.ahz = icmp ult i64 %i.agw, 230584300921369396
  call void @llvm.assume(i1 %i.ahz)
  %i.aia = load i64, ptr %i.f, align 8, !range !5, !alias.scope !780, !noalias !723, !noundef !4
  %i.aib = icmp eq i64 %i.aia, 0
  br i1 %i.aib, label %bb.io, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs1mQHuhqOwPS_6uu_fmt.exit130.i.i.i

bb.io:                                            ; preds = %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak21restart_active_breaks.exit.i.i.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsb8JHtmRizrl_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #22, !noalias !724
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs1mQHuhqOwPS_6uu_fmt.exit130.i.i.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs1mQHuhqOwPS_6uu_fmt.exit130.i.i.i: ; preds = %bb.io, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak21restart_active_breaks.exit.i.i.i
  %i.aic = load ptr, ptr %i.id, align 8, !alias.scope !780, !noalias !723, !nonnull !4, !noundef !4
  store i64 %i.agw, ptr %i.aic, align 8, !noalias !724
  store i64 1, ptr %i.ie, align 8, !alias.scope !780, !noalias !723
  call void @llvm.experimental.noalias.scope.decl(metadata !781)
  %i.aid = load i64, ptr %i.g, align 8, !range !5, !alias.scope !781, !noalias !782, !noundef !4
  %i.aie = icmp eq i64 %i.agw, %i.aid
  br i1 %i.aie, label %bb.ip, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakE8push_mutBJ_.exit131.i.i.i

bb.ip:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs1mQHuhqOwPS_6uu_fmt.exit130.i.i.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #22, !noalias !783
  %.pre321.i.i.i = load ptr, ptr %i.ib, align 8, !alias.scope !781, !noalias !782
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakE8push_mutBJ_.exit131.i.i.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakE8push_mutBJ_.exit131.i.i.i: ; preds = %bb.ip, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs1mQHuhqOwPS_6uu_fmt.exit130.i.i.i
  %i.aif = phi ptr [ %i.agy, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs1mQHuhqOwPS_6uu_fmt.exit130.i.i.i ], [ %.pre321.i.i.i, %bb.ip ] ; 3 uses
  %i.aig = getelementptr inbounds nuw [40 x i8], ptr %i.aif, i64 %i.agw ; 7 uses
  store i64 %.sroa.014.0.lcssa381383.i273.i61.i, ptr %i.aig, align 8, !noalias !784
  %.sroa.4170.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aig, i64 8
  store ptr %.sroa.06.0190.i.i.i, ptr %.sroa.4170.0..sroa_idx.i.i.i, align 8, !noalias !784
  %.sroa.5171.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aig, i64 16
  store i64 0, ptr %.sroa.5171.0..sroa_idx.i.i.i, align 8, !noalias !784
  %.sroa.6172.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aig, i64 24
  store i64 %.sroa.02.1.i.i.i.i, ptr %.sroa.6172.0..sroa_idx.i.i.i, align 8, !noalias !784
  %.sroa.7173.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aig, i64 32
  store float %.sroa.04.0.i129.i.i.i, ptr %.sroa.7173.0..sroa_idx.i.i.i, align 8, !noalias !784
  %.sroa.8174.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aig, i64 36
  store i8 %.sroa.05.1.i.i.i.i, ptr %.sroa.8174.0..sroa_idx.i.i.i, align 4, !noalias !784
  %.sroa.9175.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aig, i64 37
  store i8 %i.ahy, ptr %.sroa.9175.0..sroa_idx.i.i.i, align 1, !noalias !784
  %i.aih = add nuw nsw i64 %i.agw, 1              ; 2 uses
  store i64 %i.aih, ptr %i.ic, align 8, !alias.scope !781, !noalias !782
  %.sroa.02.0.copyload.i.i.i.2.i.i.pre.i.i.i = load i64, ptr %i.ie, align 8, !alias.scope !775, !noalias !776
  br label %bb.ig

bb.iq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec5drain5DrainNtNtCs1mQHuhqOwPS_6uu_fmt9linebreak9LineBreakEEB1m_.exit.i.i.thread.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.014.0.lcssa381383.i273.i61.i, i64 noundef %i.agw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24, !noalias !724
  unreachable

_RINvNtCs1mQHuhqOwPS_6uu_fmt9linebreak19find_kp_breakpointsINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtB4_9parasplit8WordInfoEEB4_.exit.i.i: ; preds = %bb.gm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecjEECs1mQHuhqOwPS_6uu_fmt.exit115.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !723
  %i.aii = icmp samesign eq i64 %.sroa.14.0.i.i, 0
  br i1 %i.aii, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterTRNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfobEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldTbbENCINvNtBP_9linebreak17break_knuth_plassIB4_BL_EE0INtNtBa_6result6ResultB2C_NtNtNtBa_2io5error5ErrorEEBP_.exit.thread.i.i, label %.lr.ph.i23.i.i

.lr.ph.i23.i.i:                                   ; preds = %_RINvNtCs1mQHuhqOwPS_6uu_fmt9linebreak19find_kp_breakpointsINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtB4_9parasplit8WordInfoEEB4_.exit.i.i
  %i.aij = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i.i, i64 %.sroa.14.0.i.i
  %i.aik = trunc i8 %.sroa.022.0.i to i1          ; 4 uses
  br label %bb.ir

bb.ir:                                            ; preds = %.loopexit.i.i.i, %.lr.ph.i23.i.i
  %.sroa.0.055.i.i = phi ptr [ %i.tb, %.lr.ph.i23.i.i ], [ %.sroa.0.4.i.i, %.loopexit.i.i.i ] ; 13 uses
  %.sroa.0.058.i.i.i = phi i8 [ 0, %.lr.ph.i23.i.i ], [ %.sroa.4.0.i.i.i, %.loopexit.i.i.i ] ; 4 uses
  %.sroa.7.057.i.i.i = phi i8 [ 0, %.lr.ph.i23.i.i ], [ %.sroa.6.0.i25.i.i, %.loopexit.i.i.i ]
  %i.ail = phi ptr [ %i.aij, %.lr.ph.i23.i.i ], [ %i.aim, %.loopexit.i.i.i ] ; 2 uses
  %i.aim = getelementptr inbounds i8, ptr %i.ail, i64 -16 ; 3 uses
  %i.ain = trunc nuw i8 %.sroa.7.057.i.i.i to i1
  %.val.i24.i.i = load ptr, ptr %i.aim, align 8, !noalias !785, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.aio = getelementptr i8, ptr %i.ail, i64 -8
  %.val8.i.i.i = load i8, ptr %i.aio, align 8, !range !15, !noalias !785, !noundef !4
  %i.aip = trunc nuw i8 %.val8.i.i.i to i1
  br i1 %i.ain, label %bb.iz, label %.peel.begin.i.i.thread.i.i

.peel.begin.i.i.i.i:                              ; preds = %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.i.i.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.thread.i.i.i.i
  %i.aiq = icmp eq ptr %.sroa.0.055.i.i, %i.sz
  br i1 %i.aiq, label %.loopexit.i.i.i, label %bb.is

.peel.begin.i.i.thread.i.i:                       ; preds = %bb.ir
  %i.air = icmp eq ptr %.sroa.0.055.i.i, %i.sz
  br i1 %i.air, label %.loopexit.i.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %.peel.begin.i.i.thread.i.i
  %i.ais = getelementptr inbounds nuw i8, ptr %.sroa.0.055.i.i, i64 16
  %i.ait = load ptr, ptr %i.ais, align 8, !noalias !786, !nonnull !4, !noundef !4 ; 3 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %.sroa.0.055.i.i, i64 24
  %i.aiv = load i64, ptr %i.aiu, align 8, !noalias !786, !noundef !4 ; 3 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %.sroa.0.055.i.i, i64 58
  %i.aix = load i8, ptr %i.aiw, align 2, !range !15, !noalias !786, !noundef !4 ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %.sroa.0.055.i.i, i64 56
  %i.aiz = load i8, ptr %i.aiy, align 8, !range !15, !noalias !786, !noundef !4 ; 2 uses
  br i1 %i.aik, label %bb.iu, label %bb.it

bb.is:                                            ; preds = %.peel.begin.i.i.i.i
  %i.aja = getelementptr inbounds nuw i8, ptr %.sroa.0.055.i.i, i64 24
  %i.ajb = load i64, ptr %i.aja, align 8, !noalias !786, !noundef !4 ; 4 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %.sroa.0.055.i.i, i64 32
  %i.ajd = load i64, ptr %i.ajc, align 8, !noalias !786, !noundef !4 ; 4 uses
  %i.aje = icmp ugt i64 %i.ajd, %i.ajb
  br i1 %i.aje, label %bb.jd, label %bb.iw, !prof !14

bb.it:                                            ; preds = %.thread.i.i
  %i.ajf = or i8 %i.aiz, %.sroa.0.058.i.i.i
  %i.ajg = icmp eq i8 %i.ajf, 0
  %i.ajh = trunc nuw i8 %i.aix to i1              ; 2 uses
  %brmerge.not.i.i = select i1 %i.ajh, i1 %i.ajg, i1 false
  %.mux.i.i = select i1 %i.ajh, i64 2, i64 0
  br i1 %brmerge.not.i.i, label %bb.iv, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i.i.i

bb.iu:                                            ; preds = %.thread.i.i
  %i.aji = and i8 %i.aix, %.sroa.0.058.i.i.i
  %4 = icmp ne i8 %i.aji, 0
  %5 = trunc nuw i8 %i.aiz to i1
  %6 = or i1 %4, %5
  br i1 %6, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i.i.i, label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.it
  br label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i.i.i

bb.iw:                                            ; preds = %bb.is
  %i.ajj = getelementptr inbounds nuw i8, ptr %.sroa.0.055.i.i, i64 16
  %i.ajk = load ptr, ptr %i.ajj, align 8, !noalias !786, !nonnull !4, !noundef !4
  %i.ajl = sub nuw nsw i64 %i.ajb, %i.ajd
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajk, i64 %i.ajd
  br label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i.i.i

_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i.i.i: ; preds = %bb.iw, %bb.iv, %bb.iu, %bb.it
  %.sink10.i.peel.i.i.i.i = phi i64 [ 0, %bb.iw ], [ %.mux.i.i, %bb.it ], [ 1, %bb.iv ], [ 2, %bb.iu ] ; 2 uses
  %.sink8.i.peel.i.i.i.i = phi ptr [ %i.ajm, %bb.iw ], [ %i.ait, %bb.it ], [ %i.ait, %bb.iv ], [ %i.ait, %bb.iu ] ; 2 uses
  %.sink.i.peel.i.i.i.i = phi i64 [ %i.ajl, %bb.iw ], [ %i.aiv, %bb.it ], [ %i.aiv, %bb.iv ], [ %i.aiv, %bb.iu ] ; 2 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %.sroa.0.055.i.i, i64 64 ; 3 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %.sroa.0.055.i.i, i64 57
  %i.ajp = load i8, ptr %i.ajo, align 1, !range !15, !noalias !786, !noundef !4 ; 3 uses
  %i.ajq = icmp eq ptr %.sroa.0.055.i.i, %.val.i24.i.i
  br i1 %i.ajq, label %.loopexit68.i.i.i.i, label %bb.ix

bb.ix:                                            ; preds = %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i.i.i
  %i.ajr = call fastcc noundef ptr @_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink8.i.peel.i.i.i.i, i64 noundef %.sink.i.peel.i.i.i.i, i64 noundef %.sink10.i.peel.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2) #23, !noalias !786 ; 2 uses
  %.not25.peel.i.i.i.i = icmp eq ptr %i.ajr, null
  br i1 %.not25.peel.i.i.i.i, label %.peel.next.i.i.preheader.i.i, label %.loopexit.i.i154

.peel.next.i.i.preheader.i.i:                     ; preds = %bb.ix
  br i1 %i.aik, label %.peel.next.i.i.us.i.i, label %.peel.next.i.i.i.i

.peel.next.i.i.us.i.i:                            ; preds = %.peel.next.i.i.preheader.i.i, %bb.iy
  %.sroa.0.257.us.i.i = phi ptr [ %i.ajt, %bb.iy ], [ %i.ajn, %.peel.next.i.i.preheader.i.i ] ; 9 uses
  %.sroa.08.0.i.i.us.i.i = phi i8 [ %i.ake, %bb.iy ], [ %i.ajp, %.peel.next.i.i.preheader.i.i ] ; 2 uses
  %i.ajs = icmp eq ptr %.sroa.0.257.us.i.i, %i.sz
  br i1 %i.ajs, label %.loopexit.i.i.i, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i.us.i.i

_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i.us.i.i: ; preds = %.peel.next.i.i.us.i.i
  %i.ajt = getelementptr inbounds nuw i8, ptr %.sroa.0.257.us.i.i, i64 64 ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %.sroa.0.257.us.i.i, i64 16
  %i.ajv = load ptr, ptr %i.aju, align 8, !noalias !786, !nonnull !4, !noundef !4 ; 2 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %.sroa.0.257.us.i.i, i64 24
  %i.ajx = load i64, ptr %i.ajw, align 8, !noalias !786, !noundef !4 ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %.sroa.0.257.us.i.i, i64 58
  %i.ajz = load i8, ptr %i.ajy, align 2, !range !15, !noalias !786, !noundef !4
  %i.aka = getelementptr inbounds nuw i8, ptr %.sroa.0.257.us.i.i, i64 56
  %i.akb = load i8, ptr %i.aka, align 8, !range !15, !noalias !786, !noundef !4
  %7 = trunc nuw i8 %i.akb to i1
  %i.akc = and i8 %i.ajz, %.sroa.08.0.i.i.us.i.i
  %brmerge2.demorgan.i.i.i.us.i.i = icmp ne i8 %i.akc, 0
  %or.cond.i.i.i.us.i.i = or i1 %brmerge2.demorgan.i.i.i.us.i.i, %7
  %spec.select.i.i = select i1 %or.cond.i.i.i.us.i.i, i64 2, i64 1 ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %.sroa.0.257.us.i.i, i64 57
  %i.ake = load i8, ptr %i.akd, align 1, !range !15, !noalias !786, !noundef !4 ; 2 uses
  %i.akf = icmp eq ptr %.sroa.0.257.us.i.i, %.val.i24.i.i
  br i1 %i.akf, label %.loopexit68.i.i.i.i, label %bb.iy

bb.iy:                                            ; preds = %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i.us.i.i
  %i.akg = call fastcc noundef ptr @_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ajv, i64 noundef %i.ajx, i64 noundef %spec.select.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2) #23, !noalias !786 ; 2 uses
  %.not25.i.i.us.i.i = icmp eq ptr %i.akg, null
  br i1 %.not25.i.i.us.i.i, label %.peel.next.i.i.us.i.i, label %.loopexit.i.i154, !llvm.loop !546

bb.iz:                                            ; preds = %bb.ir
  call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %i.akh = load i64, ptr %2, align 8, !range !5, !alias.scope !789, !noalias !790, !noundef !4 ; 2 uses
  %i.aki = load i64, ptr %i.ho, align 8, !alias.scope !789, !noalias !790, !noundef !4 ; 4 uses
  %i.akj = icmp sgt i64 %i.aki, -1
  call void @llvm.assume(i1 %i.akj)
  %i.akk = sub nsw i64 %i.akh, %i.aki
  %i.akl = icmp ugt i64 %i.akk, 1
  br i1 %i.akl, label %bb.jb, label %bb.ja, !prof !8

bb.ja:                                            ; preds = %bb.iz
  %i.akm = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 1) #22, !noalias !791 ; 2 uses
  %.not.i.i.i27.i.i = icmp eq ptr %i.akm, null
  br i1 %.not.i.i.i27.i.i, label %._crit_edge.i.i.i28.i.i, label %.loopexit.i.i154

._crit_edge.i.i.i28.i.i:                          ; preds = %bb.ja
  %.pre.i.i.i29.i.i = load i64, ptr %i.ho, align 8, !alias.scope !789, !noalias !790
  %.pre.i.i.i.i = load i64, ptr %2, align 8, !range !5, !alias.scope !789, !noalias !790
  br label %bb.jc

bb.jb:                                            ; preds = %bb.iz
  %i.akn = load ptr, ptr %i.hp, align 8, !alias.scope !789, !noalias !790, !nonnull !4, !noundef !4
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 %i.aki
  store i8 10, ptr %i.ako, align 1, !noalias !792
  %i.akp = add nuw i64 %i.aki, 1                  ; 2 uses
  store i64 %i.akp, ptr %i.ho, align 8, !alias.scope !789, !noalias !790
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %._crit_edge.i.i.i28.i.i
  %i.akq = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i28.i.i ], [ %i.akh, %bb.jb ]
  %i.akr = phi i64 [ %.pre.i.i.i29.i.i, %._crit_edge.i.i.i28.i.i ], [ %i.akp, %bb.jb ] ; 4 uses
  %i.aks = icmp sgt i64 %i.akr, -1
  call void @llvm.assume(i1 %i.aks)
  %i.akt = sub nsw i64 %i.akq, %i.akr
  %i.aku = icmp ult i64 %i.uv, %i.akt
  br i1 %i.aku, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.thread.i.i.i.i, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.i.i.i.i, !prof !8

_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.thread.i.i.i.i: ; preds = %bb.jc
  %i.akv = load ptr, ptr %i.hp, align 8, !alias.scope !789, !noalias !790, !nonnull !4, !noundef !4
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 %i.akr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.akw, ptr nonnull readonly align 1 %i.uu, i64 range(i64 0, -9223372036854775808) %i.uv, i1 false), !noalias !786
  %i.akx = add nuw i64 %i.akr, %i.uv
  store i64 %i.akx, ptr %i.ho, align 8, !alias.scope !789, !noalias !790
  br label %.peel.begin.i.i.i.i

_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.i.i.i.i: ; preds = %bb.jc
  %i.aky = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.uu, i64 noundef range(i64 0, -9223372036854775808) %i.uv) #22, !noalias !786 ; 2 uses
  %.not.i.i.i45.i = icmp eq ptr %i.aky, null
  br i1 %.not.i.i.i45.i, label %.peel.begin.i.i.i.i, label %.loopexit.i.i154

.peel.next.i.i.i.i:                               ; preds = %.peel.next.i.i.preheader.i.i, %bb.je
  %.sroa.0.257.i.i = phi ptr [ %i.ala, %bb.je ], [ %i.ajn, %.peel.next.i.i.preheader.i.i ] ; 9 uses
  %.sroa.08.0.i.i.i.i = phi i8 [ %i.alm, %bb.je ], [ %i.ajp, %.peel.next.i.i.preheader.i.i ] ; 2 uses
  %i.akz = icmp eq ptr %.sroa.0.257.i.i, %i.sz
  br i1 %i.akz, label %.loopexit.i.i.i, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i.i.i

_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i.i.i: ; preds = %.peel.next.i.i.i.i
  %i.ala = getelementptr inbounds nuw i8, ptr %.sroa.0.257.i.i, i64 64 ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %.sroa.0.257.i.i, i64 16
  %i.alc = load ptr, ptr %i.alb, align 8, !noalias !786, !nonnull !4, !noundef !4 ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %.sroa.0.257.i.i, i64 24
  %i.ale = load i64, ptr %i.ald, align 8, !noalias !786, !noundef !4 ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %.sroa.0.257.i.i, i64 58
  %i.alg = load i8, ptr %i.alf, align 2, !range !15, !noalias !786, !noundef !4
  %i.alh = getelementptr inbounds nuw i8, ptr %.sroa.0.257.i.i, i64 56
  %i.ali = load i8, ptr %i.alh, align 8, !range !15, !noalias !786, !noundef !4
  %i.alj = trunc nuw i8 %i.alg to i1
  %i.alk = or i8 %i.ali, %.sroa.08.0.i.i.i.i
  %brmerge.i.not.i.i.i.i = icmp eq i8 %i.alk, 0
  %spec.select131.i.i = select i1 %brmerge.i.not.i.i.i.i, i64 1, i64 2
  %.sink10.i.i.i.i.i = select i1 %i.alj, i64 %spec.select131.i.i, i64 0 ; 2 uses
  %i.all = getelementptr inbounds nuw i8, ptr %.sroa.0.257.i.i, i64 57
  %i.alm = load i8, ptr %i.all, align 1, !range !15, !noalias !786, !noundef !4 ; 2 uses
  %i.aln = icmp eq ptr %.sroa.0.257.i.i, %.val.i24.i.i
  br i1 %i.aln, label %.loopexit68.i.i.i.i, label %bb.je

bb.jd:                                            ; preds = %bb.is
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.ajd, i64 noundef range(i64 0, -9223372036854775808) %i.ajb, i64 noundef range(i64 0, -9223372036854775808) %i.ajb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #24, !noalias !793
  unreachable

bb.je:                                            ; preds = %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i.i.i
  %i.alo = call fastcc noundef ptr @_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.alc, i64 noundef %i.ale, i64 noundef %.sink10.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2) #23, !noalias !786 ; 2 uses
  %.not25.i.i.i.i = icmp eq ptr %i.alo, null
  br i1 %.not25.i.i.i.i, label %.peel.next.i.i.i.i, label %.loopexit.i.i154, !llvm.loop !546

.loopexit68.i.i.i.i:                              ; preds = %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i.us.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i.i.i
  %.sroa.0.3.i.i = phi ptr [ %i.ajn, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i.i.i ], [ %i.ajt, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i.us.i.i ], [ %i.ala, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i.i.i ] ; 3 uses
  %.sink10.i.lcssa.i.i.i.i = phi i64 [ %.sink10.i.peel.i.i.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i.i.i ], [ %spec.select.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i.us.i.i ], [ %.sink10.i.i.i.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i.i.i ]
  %.sink8.i.lcssa.i.i.i.i = phi ptr [ %.sink8.i.peel.i.i.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i.i.i ], [ %i.ajv, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i.us.i.i ], [ %i.alc, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i.i.i ]
  %.sink.i.lcssa.i.i.i.i = phi i64 [ %.sink.i.peel.i.i.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i.i.i ], [ %i.ajx, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i.us.i.i ], [ %i.ale, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i.i.i ]
  %.lcssa61.i.i.i.i = phi i8 [ %i.ajp, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i.i.i ], [ %i.ake, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i.us.i.i ], [ %i.alm, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i.i.i ] ; 3 uses
  %.lcssa47.i.i.i.i = phi ptr [ %.sroa.0.055.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i.i.i ], [ %.sroa.0.257.us.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i.us.i.i ], [ %.sroa.0.257.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i.i.i ] ; 3 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %.lcssa47.i.i.i.i, i64 16
  %i.alq = getelementptr inbounds nuw i8, ptr %.lcssa47.i.i.i.i, i64 24
  %i.alr = getelementptr inbounds nuw i8, ptr %.lcssa47.i.i.i.i, i64 32
  br i1 %i.aip, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %.loopexit68.i.i.i.i
  %i.als = call fastcc noundef ptr @_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink8.i.lcssa.i.i.i.i, i64 noundef %.sink.i.lcssa.i.i.i.i, i64 noundef %.sink10.i.lcssa.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2) #23, !noalias !786 ; 2 uses
  %.not26.i.i.i.i = icmp eq ptr %i.als, null
  br i1 %.not26.i.i.i.i, label %.loopexit.i.i.i, label %.loopexit.i.i154

bb.jg:                                            ; preds = %.loopexit68.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %i.alt = load i64, ptr %2, align 8, !range !5, !alias.scope !795, !noalias !796, !noundef !4 ; 2 uses
  %i.alu = load i64, ptr %i.ho, align 8, !alias.scope !795, !noalias !796, !noundef !4 ; 4 uses
  %i.alv = icmp sgt i64 %i.alu, -1
  call void @llvm.assume(i1 %i.alv)
  %i.alw = sub nsw i64 %i.alt, %i.alu
  %i.alx = icmp ugt i64 %i.alw, 1
  br i1 %i.alx, label %bb.ji, label %bb.jh, !prof !8

bb.jh:                                            ; preds = %bb.jg
  %i.aly = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 1) #22, !noalias !797 ; 2 uses
  %.not.i30.i.i.i.i = icmp eq ptr %i.aly, null
  br i1 %.not.i30.i.i.i.i, label %._crit_edge.i32.i.i.i.i, label %.loopexit.i.i154

._crit_edge.i32.i.i.i.i:                          ; preds = %bb.jh
  %.pre.i33.i.i.i.i = load i64, ptr %i.ho, align 8, !alias.scope !795, !noalias !796
  %.pre71.i.i.i.i = load i64, ptr %2, align 8, !range !5, !alias.scope !795, !noalias !796
  br label %bb.jj

bb.ji:                                            ; preds = %bb.jg
  %i.alz = load ptr, ptr %i.hp, align 8, !alias.scope !795, !noalias !796, !nonnull !4, !noundef !4
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 %i.alu
  store i8 10, ptr %i.ama, align 1, !noalias !798
  %i.amb = add nuw i64 %i.alu, 1                  ; 2 uses
  store i64 %i.amb, ptr %i.ho, align 8, !alias.scope !795, !noalias !796
  br label %bb.jj

bb.jj:                                            ; preds = %bb.ji, %._crit_edge.i32.i.i.i.i
  %i.amc = phi i64 [ %.pre71.i.i.i.i, %._crit_edge.i32.i.i.i.i ], [ %i.alt, %bb.ji ]
  %i.amd = phi i64 [ %.pre.i33.i.i.i.i, %._crit_edge.i32.i.i.i.i ], [ %i.amb, %bb.ji ] ; 4 uses
  %i.ame = icmp sgt i64 %i.amd, -1
  call void @llvm.assume(i1 %i.ame)
  %i.amf = sub nsw i64 %i.amc, %i.amd
  %i.amg = icmp ult i64 %i.uv, %i.amf
  br i1 %i.amg, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit34.thread.i.i.i.i, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit34.i.i.i.i, !prof !8

_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit34.thread.i.i.i.i: ; preds = %bb.jj
  %i.amh = load ptr, ptr %i.hp, align 8, !alias.scope !795, !noalias !796, !nonnull !4, !noundef !4
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amh, i64 %i.amd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ami, ptr nonnull readonly align 1 %i.uu, i64 range(i64 0, -9223372036854775808) %i.uv, i1 false), !noalias !786
  %i.amj = add nuw i64 %i.amd, %i.uv
  store i64 %i.amj, ptr %i.ho, align 8, !alias.scope !795, !noalias !796
  br label %bb.jk

_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit34.i.i.i.i: ; preds = %bb.jj
  %i.amk = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.uu, i64 noundef range(i64 0, -9223372036854775808) %i.uv) #22, !noalias !786 ; 2 uses
  %.not27.i.i.i.i = icmp eq ptr %i.amk, null
  br i1 %.not27.i.i.i.i, label %bb.jk, label %.loopexit.i.i154

bb.jk:                                            ; preds = %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit34.i.i.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit34.thread.i.i.i.i
  %i.aml = load i64, ptr %i.alq, align 8, !noalias !786, !noundef !4 ; 4 uses
  %i.amm = load i64, ptr %i.alr, align 8, !noalias !786, !noundef !4 ; 4 uses
  %i.amn = icmp ugt i64 %i.amm, %i.aml
  br i1 %i.amn, label %bb.jm, label %bb.jl, !prof !14

bb.jl:                                            ; preds = %bb.jk
  %i.amo = load ptr, ptr %i.alp, align 8, !noalias !786, !nonnull !4, !noundef !4
  %i.amp = sub nuw i64 %i.aml, %i.amm             ; 4 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amo, i64 %i.amm ; 2 uses
  %i.amr = load i64, ptr %2, align 8, !range !5, !alias.scope !799, !noalias !800, !noundef !4
  %i.ams = load i64, ptr %i.ho, align 8, !alias.scope !799, !noalias !800, !noundef !4 ; 4 uses
  %i.amt = icmp sgt i64 %i.ams, -1
  call void @llvm.assume(i1 %i.amt)
  %i.amu = sub nsw i64 %i.amr, %i.ams
  %i.amv = icmp ult i64 %i.amp, %i.amu
  br i1 %i.amv, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.thread.i.i.i.i, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.i.i.i.i, !prof !8

_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.thread.i.i.i.i: ; preds = %bb.jl
  %i.amw = load ptr, ptr %i.hp, align 8, !alias.scope !799, !noalias !800, !nonnull !4, !noundef !4
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 %i.ams
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.amx, ptr nonnull readonly align 1 %i.amq, i64 range(i64 0, -9223372036854775808) %i.amp, i1 false), !noalias !786
  %i.amy = add nuw i64 %i.ams, %i.amp
  store i64 %i.amy, ptr %i.ho, align 8, !alias.scope !799, !noalias !800
  br label %.loopexit.i.i.i

_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.i.i.i.i: ; preds = %bb.jl
  %i.amz = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.amq, i64 noundef range(i64 0, -9223372036854775808) %i.amp) #22, !noalias !786 ; 2 uses
  %.not28.i.i.i.i = icmp eq ptr %i.amz, null
  br i1 %.not28.i.i.i.i, label %.loopexit.i.i.i, label %.loopexit.i.i154

bb.jm:                                            ; preds = %bb.jk
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.amm, i64 noundef %i.aml, i64 noundef %i.aml, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #24, !noalias !786
  unreachable

.loopexit.i.i.i:                                  ; preds = %.peel.next.i.i.i.i, %.peel.next.i.i.us.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.i.i.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.thread.i.i.i.i, %bb.jf, %.peel.begin.i.i.thread.i.i, %.peel.begin.i.i.i.i
  %.sroa.0.4.i.i = phi ptr [ %i.sz, %.peel.begin.i.i.i.i ], [ %.sroa.0.3.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.thread.i.i.i.i ], [ %.sroa.0.3.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.i.i.i.i ], [ %.sroa.0.3.i.i, %bb.jf ], [ %i.sz, %.peel.begin.i.i.thread.i.i ], [ %i.sz, %.peel.next.i.i.us.i.i ], [ %i.sz, %.peel.next.i.i.i.i ] ; 12 uses
  %.sroa.6.0.i25.i.i = phi i8 [ 1, %.peel.begin.i.i.i.i ], [ 0, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.thread.i.i.i.i ], [ 0, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.i.i.i.i ], [ 1, %bb.jf ], [ 0, %.peel.begin.i.i.thread.i.i ], [ 0, %.peel.next.i.i.us.i.i ], [ 0, %.peel.next.i.i.i.i ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i8 [ %.sroa.0.058.i.i.i, %.peel.begin.i.i.i.i ], [ %.lcssa61.i.i.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.thread.i.i.i.i ], [ %.lcssa61.i.i.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.i.i.i.i ], [ %.lcssa61.i.i.i.i, %bb.jf ], [ %.sroa.0.058.i.i.i, %.peel.begin.i.i.thread.i.i ], [ %.sroa.08.0.i.i.us.i.i, %.peel.next.i.i.us.i.i ], [ %.sroa.08.0.i.i.i.i, %.peel.next.i.i.i.i ] ; 3 uses
  %i.ana = icmp eq ptr %.sroa.9.0.i.i, %i.aim
  br i1 %i.ana, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterTRNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfobEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldTbbENCINvNtBP_9linebreak17break_knuth_plassIB4_BL_EE0INtNtBa_6result6ResultB2C_NtNtNtBa_2io5error5ErrorEEBP_.exit.i.i, label %bb.ir

.loopexit.i.i154:                                 ; preds = %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.i.i.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit34.i.i.i.i, %bb.jh, %bb.jf, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.i.i.i.i, %bb.ja, %bb.ix, %bb.je, %bb.iy
  %.sroa.1038.0.ph.i.i = phi ptr [ %i.alo, %bb.je ], [ %i.akg, %bb.iy ], [ %i.als, %bb.jf ], [ %i.amz, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.i.i.i.i ], [ %i.akm, %bb.ja ], [ %i.aky, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.i.i.i.i ], [ %i.ajr, %bb.ix ], [ %i.amk, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit34.i.i.i.i ], [ %i.aly, %bb.jh ] ; 2 uses
  %i.anb = icmp eq i64 %.sroa.0.050.i.i, 0
  br i1 %i.anb, label %_RINvNtCs1mQHuhqOwPS_6uu_fmt9linebreak12break_simpleINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtB4_9parasplit8WordInfoEEB4_.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecTRNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfobEEEB1e_.exit.sink.split.i.i

_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterTRNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfobEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldTbbENCINvNtBP_9linebreak17break_knuth_plassIB4_BL_EE0INtNtBa_6result6ResultB2C_NtNtNtBa_2io5error5ErrorEEBP_.exit.i.i: ; preds = %.loopexit.i.i.i
  %i.anc = icmp eq ptr %.sroa.0.4.i.i, %i.sz
  br i1 %i.anc, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.thread.i.i, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.peel.i.i

_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterTRNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfobEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldTbbENCINvNtBP_9linebreak17break_knuth_plassIB4_BL_EE0INtNtBa_6result6ResultB2C_NtNtNtBa_2io5error5ErrorEEBP_.exit.thread.i.i: ; preds = %_RINvNtCs1mQHuhqOwPS_6uu_fmt9linebreak19find_kp_breakpointsINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtB4_9parasplit8WordInfoEEB4_.exit.i.i
  %i.and = icmp eq i64 %.sroa.9.0.copyload.i, 1
  br i1 %i.and, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.thread.i.i, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.peel.thread.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.peel.thread.i.i: ; preds = %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterTRNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfobEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldTbbENCINvNtBP_9linebreak17break_knuth_plassIB4_BL_EE0INtNtBa_6result6ResultB2C_NtNtNtBa_2io5error5ErrorEEBP_.exit.thread.i.i
  %i.ane = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 80
  %i.anf = load ptr, ptr %i.ane, align 8, !noalias !801, !nonnull !4, !noundef !4 ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 88
  %i.anh = load i64, ptr %i.ang, align 8, !noalias !801, !noundef !4 ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 122
  %i.anj = load i8, ptr %i.ani, align 2, !range !15, !noalias !801, !noundef !4 ; 2 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i, i64 120
  %i.anl = load i8, ptr %i.ank, align 8, !range !15, !noalias !801, !noundef !4 ; 2 uses
  br i1 %i.in, label %bb.jq, label %bb.jo

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.peel.i.i: ; preds = %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterTRNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfobEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldTbbENCINvNtBP_9linebreak17break_knuth_plassIB4_BL_EE0INtNtBa_6result6ResultB2C_NtNtNtBa_2io5error5ErrorEEBP_.exit.i.i
  %i.anm = trunc nuw i8 %.sroa.6.0.i25.i.i to i1
  br i1 %i.anm, label %bb.js, label %bb.jn

bb.jn:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.peel.i.i
  %i.ann = getelementptr inbounds nuw i8, ptr %.sroa.0.4.i.i, i64 16
  %i.ano = load ptr, ptr %i.ann, align 8, !noalias !801, !nonnull !4, !noundef !4 ; 2 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %.sroa.0.4.i.i, i64 24
  %i.anq = load i64, ptr %i.anp, align 8, !noalias !801, !noundef !4 ; 2 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %.sroa.0.4.i.i, i64 58
  %i.ans = load i8, ptr %i.anr, align 2, !range !15, !noalias !801, !noundef !4 ; 2 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %.sroa.0.4.i.i, i64 56
  %i.anu = load i8, ptr %i.ant, align 8, !range !15, !noalias !801, !noundef !4 ; 2 uses
  br i1 %i.aik, label %bb.jq, label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.peel.thread.i.i
  %i.anv = phi i8 [ %i.anl, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.peel.thread.i.i ], [ %i.anu, %bb.jn ]
  %i.anw = phi i8 [ %i.anj, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.peel.thread.i.i ], [ %i.ans, %bb.jn ]
  %i.anx = phi i64 [ %i.anh, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.peel.thread.i.i ], [ %i.anq, %bb.jn ] ; 3 uses
  %i.any = phi ptr [ %i.anf, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.peel.thread.i.i ], [ %i.ano, %bb.jn ] ; 3 uses
  %.sroa.6.0285289298.i.i = phi i8 [ 0, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.peel.thread.i.i ], [ %.sroa.4.0.i.i.i, %bb.jn ]
  %.sroa.0.6283290294.i.i = phi ptr [ %i.tb, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.peel.thread.i.i ], [ %.sroa.0.4.i.i, %bb.jn ] ; 3 uses
  %i.anz = trunc nuw i8 %i.anw to i1
  br i1 %i.anz, label %bb.jp, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i

bb.jp:                                            ; preds = %bb.jo
  %i.aoa = or i8 %.sroa.6.0285289298.i.i, %i.anv
  %brmerge.i.not.peel.i.i = icmp eq i8 %i.aoa, 0
  br i1 %brmerge.i.not.peel.i.i, label %bb.jr, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i

bb.jq:                                            ; preds = %bb.jn, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.peel.thread.i.i
  %i.aob = phi i8 [ %i.anl, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.peel.thread.i.i ], [ %i.anu, %bb.jn ]
  %i.aoc = phi i8 [ %i.anj, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.peel.thread.i.i ], [ %i.ans, %bb.jn ]
  %i.aod = phi i64 [ %i.anh, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.peel.thread.i.i ], [ %i.anq, %bb.jn ] ; 2 uses
  %i.aoe = phi ptr [ %i.anf, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.peel.thread.i.i ], [ %i.ano, %bb.jn ] ; 2 uses
  %.sroa.6.0285289297.i.i = phi i8 [ 0, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.peel.thread.i.i ], [ %.sroa.4.0.i.i.i, %bb.jn ]
  %.sroa.0.6283290296.i.i = phi ptr [ %i.tb, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.peel.thread.i.i ], [ %.sroa.0.4.i.i, %bb.jn ] ; 2 uses
  %8 = trunc nuw i8 %i.aob to i1
  %i.aof = and i8 %.sroa.6.0285289297.i.i, %i.aoc
  %brmerge2.demorgan.i.peel.i.i = icmp ne i8 %i.aof, 0
  %or.cond.i31.peel.i.i = or i1 %brmerge2.demorgan.i.peel.i.i, %8
  br i1 %or.cond.i31.peel.i.i, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i, label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %i.aog = phi i64 [ %i.aod, %bb.jq ], [ %i.anx, %bb.jp ]
  %i.aoh = phi ptr [ %i.aoe, %bb.jq ], [ %i.any, %bb.jp ]
  %i.aoi = phi i1 [ true, %bb.jq ], [ false, %bb.jp ]
  %.sroa.0.6283290295.i.i = phi ptr [ %.sroa.0.6283290296.i.i, %bb.jq ], [ %.sroa.0.6283290294.i.i, %bb.jp ]
  br label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i

bb.js:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.peel.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %i.aoj = load i64, ptr %2, align 8, !range !5, !alias.scope !803, !noalias !804, !noundef !4
  %i.aok = load i64, ptr %i.ho, align 8, !alias.scope !803, !noalias !804, !noundef !4 ; 4 uses
  %i.aol = icmp sgt i64 %i.aok, -1
  call void @llvm.assume(i1 %i.aol)
  %i.aom = sub nsw i64 %i.aoj, %i.aok
  %i.aon = icmp ugt i64 %i.aom, 1
  br i1 %i.aon, label %bb.ju, label %bb.jt, !prof !8

bb.jt:                                            ; preds = %bb.js
  %i.aoo = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 1) #22, !noalias !805 ; 2 uses
  %.not.i32.peel.i.i = icmp eq ptr %i.aoo, null
  br i1 %.not.i32.peel.i.i, label %._crit_edge.i34.peel.i.i, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.thread70.i.i

._crit_edge.i34.peel.i.i:                         ; preds = %bb.jt
  %.pre.i35.peel.i.i = load i64, ptr %i.ho, align 8, !alias.scope !803, !noalias !804
  br label %bb.jv

bb.ju:                                            ; preds = %bb.js
  %i.aop = load ptr, ptr %i.hp, align 8, !alias.scope !803, !noalias !804, !nonnull !4, !noundef !4
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 %i.aok
  store i8 10, ptr %i.aoq, align 1, !noalias !806
  %i.aor = add nuw i64 %i.aok, 1                  ; 2 uses
  store i64 %i.aor, ptr %i.ho, align 8, !alias.scope !803, !noalias !804
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %._crit_edge.i34.peel.i.i
  %i.aos = phi i64 [ %.pre.i35.peel.i.i, %._crit_edge.i34.peel.i.i ], [ %i.aor, %bb.ju ] ; 4 uses
  %i.aot = load i64, ptr %2, align 8, !range !5, !alias.scope !803, !noalias !804, !noundef !4
  %i.aou = icmp sgt i64 %i.aos, -1
  call void @llvm.assume(i1 %i.aou)
  %i.aov = sub nsw i64 %i.aot, %i.aos
  %i.aow = icmp ult i64 %i.uv, %i.aov
  br i1 %i.aow, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.thread.peel.i.i, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.peel.i.i, !prof !8

_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.peel.i.i: ; preds = %bb.jv
  %i.aox = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.uu, i64 noundef range(i64 0, -9223372036854775808) %i.uv) #22, !noalias !801 ; 2 uses
  %.not14.peel.i.i = icmp eq ptr %i.aox, null
  br i1 %.not14.peel.i.i, label %bb.jw, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.thread70.i.i

_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.thread.peel.i.i: ; preds = %bb.jv
  %i.aoy = load ptr, ptr %i.hp, align 8, !alias.scope !803, !noalias !804, !nonnull !4, !noundef !4
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 %i.aos
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aoz, ptr nonnull readonly align 1 %i.uu, i64 range(i64 0, -9223372036854775808) %i.uv, i1 false), !noalias !801
  %i.apa = add nuw i64 %i.aos, %i.uv
  store i64 %i.apa, ptr %i.ho, align 8, !alias.scope !803, !noalias !804
  br label %bb.jw

bb.jw:                                            ; preds = %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.thread.peel.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.peel.i.i
  %i.apb = getelementptr inbounds nuw i8, ptr %.sroa.0.4.i.i, i64 24
  %i.apc = load i64, ptr %i.apb, align 8, !noalias !801, !noundef !4 ; 4 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %.sroa.0.4.i.i, i64 32
  %i.ape = load i64, ptr %i.apd, align 8, !noalias !801, !noundef !4 ; 4 uses
  %i.apf = icmp ugt i64 %i.ape, %i.apc
  br i1 %i.apf, label %bb.kf, label %bb.jx, !prof !14

bb.jx:                                            ; preds = %bb.jw
  %i.apg = getelementptr inbounds nuw i8, ptr %.sroa.0.4.i.i, i64 16
  %i.aph = load ptr, ptr %i.apg, align 8, !noalias !801, !nonnull !4, !noundef !4
  %i.api = sub nuw nsw i64 %i.apc, %i.ape
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aph, i64 %i.ape
  br label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i

_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i: ; preds = %bb.jx, %bb.jr, %bb.jq, %bb.jp, %bb.jo
  %.sroa.0.6283291.i.i = phi ptr [ %.sroa.0.4.i.i, %bb.jx ], [ %.sroa.0.6283290294.i.i, %bb.jo ], [ %.sroa.0.6283290295.i.i, %bb.jr ], [ %.sroa.0.6283290296.i.i, %bb.jq ], [ %.sroa.0.6283290294.i.i, %bb.jp ] ; 2 uses
  %i.apk = phi i1 [ %i.aik, %bb.jx ], [ false, %bb.jo ], [ %i.aoi, %bb.jr ], [ true, %bb.jq ], [ false, %bb.jp ]
  %.sink10.i.peel.i.i = phi i64 [ 0, %bb.jx ], [ 0, %bb.jo ], [ 1, %bb.jr ], [ 2, %bb.jq ], [ 2, %bb.jp ]
  %.sink8.i.peel.i.i = phi ptr [ %i.apj, %bb.jx ], [ %i.any, %bb.jo ], [ %i.aoh, %bb.jr ], [ %i.aoe, %bb.jq ], [ %i.any, %bb.jp ]
  %.sink.i.peel.i.i = phi i64 [ %i.api, %bb.jx ], [ %i.anx, %bb.jo ], [ %i.aog, %bb.jr ], [ %i.aod, %bb.jq ], [ %i.anx, %bb.jp ]
  %i.apl = getelementptr inbounds nuw i8, ptr %.sroa.0.6283291.i.i, i64 57
  %i.apm = load i8, ptr %i.apl, align 1, !range !15, !noalias !801, !noundef !4
  %i.apn = call fastcc noundef ptr @_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sink8.i.peel.i.i, i64 noundef %.sink.i.peel.i.i, i64 noundef %.sink10.i.peel.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2) #23, !noalias !801 ; 2 uses
  %.not15.peel.i.i = icmp eq ptr %i.apn, null
  br i1 %.not15.peel.i.i, label %.peel.next.i.i, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.thread70.i.i

.peel.next.i.i:                                   ; preds = %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i
  %.sroa.0.6.pn.i.i = phi ptr [ %.sroa.045.0.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i ], [ %.sroa.0.6283291.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i ] ; 6 uses
  %.sroa.011.0.i.i = phi i8 [ %i.aqm, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i ], [ %i.apm, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i ] ; 2 uses
  %.sroa.045.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.6.pn.i.i, i64 64 ; 2 uses
  %i.apo = icmp eq ptr %.sroa.045.0.i.i, %i.sz
  br i1 %i.apo, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.thread.i.i, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.thread.i.i: ; preds = %.peel.next.i.i, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterTRNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfobEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldTbbENCINvNtBP_9linebreak17break_knuth_plassIB4_BL_EE0INtNtBa_6result6ResultB2C_NtNtNtBa_2io5error5ErrorEEBP_.exit.thread.i.i, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterTRNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfobEENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldTbbENCINvNtBP_9linebreak17break_knuth_plassIB4_BL_EE0INtNtBa_6result6ResultB2C_NtNtNtBa_2io5error5ErrorEEBP_.exit.i.i
  %i.app = load i64, ptr %2, align 8, !range !5, !alias.scope !638, !noalias !807, !noundef !4
  %i.apq = load i64, ptr %i.ho, align 8, !alias.scope !638, !noalias !807, !noundef !4 ; 4 uses
  %i.apr = icmp sgt i64 %i.apq, -1
  call void @llvm.assume(i1 %i.apr)
  %i.aps = sub nsw i64 %i.app, %i.apq
  %i.apt = icmp ugt i64 %i.aps, 1
  br i1 %i.apt, label %bb.jz, label %bb.jy, !prof !8

bb.jy:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.thread.i.i
  %i.apu = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 1) #22, !noalias !801
  br label %bb.ka

bb.jz:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.thread.i.i
  %i.apv = load ptr, ptr %i.hp, align 8, !alias.scope !638, !noalias !807, !nonnull !4, !noundef !4
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 %i.apq
  store i8 10, ptr %i.apw, align 1, !noalias !801
  %i.apx = add nuw i64 %i.apq, 1
  store i64 %i.apx, ptr %i.ho, align 8, !alias.scope !638, !noalias !807
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy
  %.sroa.0.0.i44.i = phi ptr [ null, %bb.jz ], [ %i.apu, %bb.jy ] ; 2 uses
  %i.apy = icmp eq i64 %.sroa.0.050.i.i, 0
  br i1 %i.apy, label %_RINvNtCs1mQHuhqOwPS_6uu_fmt9linebreak12break_simpleINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtB4_9parasplit8WordInfoEEB4_.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecTRNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfobEEEB1e_.exit.sink.split.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecTRNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfobEEEB1e_.exit.sink.split.i.i: ; preds = %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.thread70.i.i, %bb.ka, %.loopexit.i.i154
  %.sroa.0.1.ph.i.i = phi ptr [ %.sroa.0.2.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.thread70.i.i ], [ %.sroa.1038.0.ph.i.i, %.loopexit.i.i154 ], [ %.sroa.0.0.i44.i, %bb.ka ]
  %i.apz = shl nuw i64 %.sroa.0.050.i.i, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.i.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0.i.i, i64 noundef %i.apz, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !801
  br label %_RINvNtCs1mQHuhqOwPS_6uu_fmt9linebreak12break_simpleINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtB4_9parasplit8WordInfoEEB4_.exit.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.i.i: ; preds = %.peel.next.i.i
  %i.aqa = getelementptr inbounds nuw i8, ptr %.sroa.0.6.pn.i.i, i64 80
  %i.aqb = load ptr, ptr %i.aqa, align 8, !noalias !801, !nonnull !4, !noundef !4
  %i.aqc = getelementptr inbounds nuw i8, ptr %.sroa.0.6.pn.i.i, i64 88
  %i.aqd = load i64, ptr %i.aqc, align 8, !noalias !801, !noundef !4
  %i.aqe = getelementptr inbounds nuw i8, ptr %.sroa.0.6.pn.i.i, i64 122
  %i.aqf = load i8, ptr %i.aqe, align 2, !range !15, !noalias !801, !noundef !4 ; 2 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %.sroa.0.6.pn.i.i, i64 120
  %i.aqh = load i8, ptr %i.aqg, align 8, !range !15, !noalias !801, !noundef !4 ; 2 uses
  br i1 %i.apk, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.i.i
  %i.aqi = trunc nuw i8 %i.aqf to i1
  br i1 %i.aqi, label %bb.kd, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i

bb.kc:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfoENtNtNtNtBa_4iter6traits8iterator8Iterator4nextBT_.exit.i.i
  %9 = trunc nuw i8 %i.aqh to i1
  %i.aqj = and i8 %i.aqf, %.sroa.011.0.i.i
  %brmerge2.demorgan.i.i.i = icmp ne i8 %i.aqj, 0
  %or.cond.i31.i.i = or i1 %brmerge2.demorgan.i.i.i, %9
  br i1 %or.cond.i31.i.i, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i, label %bb.ke

bb.kd:                                            ; preds = %bb.kb
  %i.aqk = or i8 %i.aqh, %.sroa.011.0.i.i
  %brmerge.i.not.i.i = icmp eq i8 %i.aqk, 0
  br i1 %brmerge.i.not.i.i, label %bb.ke, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i

bb.ke:                                            ; preds = %bb.kd, %bb.kc
  br label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i

bb.kf:                                            ; preds = %bb.jw
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.ape, i64 noundef range(i64 0, -9223372036854775808) %i.apc, i64 noundef range(i64 0, -9223372036854775808) %i.apc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #24, !noalias !808
  unreachable

_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i: ; preds = %bb.ke, %bb.kd, %bb.kc, %bb.kb
  %.sink10.i.i.i = phi i64 [ 2, %bb.kd ], [ 0, %bb.kb ], [ 1, %bb.ke ], [ 2, %bb.kc ]
  %i.aql = getelementptr inbounds nuw i8, ptr %.sroa.0.6.pn.i.i, i64 121
  %i.aqm = load i8, ptr %i.aql, align 1, !range !15, !noalias !801, !noundef !4
  %i.aqn = call fastcc noundef ptr @_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aqb, i64 noundef %i.aqd, i64 noundef %.sink10.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2) #23, !noalias !801 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.aqn, null
  br i1 %.not15.i.i, label %.peel.next.i.i, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.thread70.i.i, !llvm.loop !565

_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.thread70.i.i: ; preds = %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.peel.i.i, %bb.jt
  %.sroa.0.2.i.i = phi ptr [ %i.aoo, %bb.jt ], [ %i.aox, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.peel.i.i ], [ %i.apn, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.peel.i.i ], [ %i.aqn, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak14slice_if_fresh.exit.i.i ] ; 2 uses
  %i.aqo = icmp eq i64 %.sroa.0.050.i.i, 0
  br i1 %i.aqo, label %_RINvNtCs1mQHuhqOwPS_6uu_fmt9linebreak12break_simpleINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtB4_9parasplit8WordInfoEEB4_.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecTRNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfobEEEB1e_.exit.sink.split.i.i

_RINvNtCs1mQHuhqOwPS_6uu_fmt9linebreak12break_simpleINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtB4_9parasplit8WordInfoEEB4_.exit.i: ; preds = %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.i.i.i.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.i.i.i.i.i, %bb.fh, %bb.ff, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.thread70.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecTRNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfobEEEB1e_.exit.sink.split.i.i, %bb.ka, %.loopexit.i.i154, %bb.fq, %bb.fp
  %.sroa.0.2.i = phi ptr [ %.sroa.0.0.i44.i, %bb.ka ], [ %i.xx, %bb.fp ], [ null, %bb.fq ], [ %.sroa.0.2.i.i, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.thread70.i.i ], [ %.sroa.1038.0.ph.i.i, %.loopexit.i.i154 ], [ %.sroa.0.1.ph.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecTRNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit8WordInfobEEEB1e_.exit.sink.split.i.i ], [ %i.xp, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak17write_with_spaces.exit.i.i.i.i.i ], [ %i.wl, %bb.fh ], [ %i.wf, %bb.ff ], [ %i.wx, %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak13write_newline.exit.i.i.i.i.i ] ; 2 uses
  %i.aqp = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.aqp, label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak11break_lines.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9ParaWordsEBF_.exit.sink.split.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9ParaWordsEBF_.exit.sink.split.i: ; preds = %_RINvNtCs1mQHuhqOwPS_6uu_fmt9linebreak12break_simpleINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtB4_9parasplit8WordInfoEEB4_.exit.i, %bb.et
  %.sroa.0.3.ph.i = phi ptr [ %.sroa.0.1.i, %bb.et ], [ %.sroa.0.2.i, %_RINvNtCs1mQHuhqOwPS_6uu_fmt9linebreak12break_simpleINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtB4_9parasplit8WordInfoEEB4_.exit.i ]
  %i.aqq = shl nuw i64 %.sroa.0.0.copyload.i, 6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %i.aqq, i64 noundef range(i64 1, -9223372036854775807) 8) #23
  br label %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak11break_lines.exit

bb.kg:                                            ; preds = %bb.eg
  %i.aqr = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 1) #22
  br label %bb.et

bb.kh:                                            ; preds = %bb.eg
  %i.aqs = load ptr, ptr %i.hp, align 8, !alias.scope !638, !noalias !708, !nonnull !4, !noundef !4
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 %i.tf
  store i8 10, ptr %i.aqt, align 1
  %i.aqu = add nuw i64 %i.tf, 1
  store i64 %i.aqu, ptr %i.ho, align 8, !alias.scope !638, !noalias !708
  br label %bb.et

_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak11break_lines.exit: ; preds = %bb.et, %_RINvNtCs1mQHuhqOwPS_6uu_fmt9linebreak12break_simpleINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtB4_9parasplit8WordInfoEEB4_.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9ParaWordsEBF_.exit.sink.split.i
  %.sroa.0.3.i = phi ptr [ %.sroa.0.2.i, %_RINvNtCs1mQHuhqOwPS_6uu_fmt9linebreak12break_simpleINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterNtNtB4_9parasplit8WordInfoEEB4_.exit.i ], [ %.sroa.0.1.i, %bb.et ], [ %.sroa.0.3.ph.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9ParaWordsEBF_.exit.sink.split.i ] ; 2 uses
  %.not.i157 = icmp eq ptr %.sroa.0.3.i, null
  br i1 %.not.i157, label %bb.kp, label %bb.ki

bb.ki:                                            ; preds = %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak11break_lines.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i156)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.0.i156, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 32) #23
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !809
  %i.aqv = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #23, !noalias !809 ; 4 uses
  %i.aqw = icmp eq ptr %i.aqv, null
  br i1 %i.aqw, label %bb.kj, label %bb.kk, !prof !14

bb.kj:                                            ; preds = %bb.ki
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #26, !noalias !809
  unreachable

bb.kk:                                            ; preds = %bb.ki
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i156, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i159 = getelementptr inbounds nuw i8, ptr %i.aqv, i64 24
  store ptr %.sroa.0.3.i, ptr %.sroa.4.0..sroa_idx.i159, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i156)
  call void @llvm.experimental.noalias.scope.decl(metadata !810)
  call void @llvm.experimental.noalias.scope.decl(metadata !811)
  %.val.i.i = load ptr, ptr %.sroa.618.0..sroa_idx19, align 8, !alias.scope !812, !nonnull !4, !noundef !4 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.618.sroa.6.0..sroa.618.0..sroa_idx19.sroa_idx, align 8, !alias.scope !812, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %i.aqx = icmp eq i64 %.val1.i.i, 0
  br i1 %i.aqx, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs1mQHuhqOwPS_6uu_fmt.exit.i.i, label %.lr.ph.i.i.i.i161

.lr.ph.i.i.i.i161:                                ; preds = %bb.kk, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i.i.i.i
  %.sroa.0.04.i.i.i.i = phi i64 [ %i.aqz, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i.i.i.i ], [ 0, %bb.kk ] ; 2 uses
  %i.aqy = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.0.04.i.i.i.i ; 2 uses
  %i.aqz = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 1 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.aqy, align 8, !range !5, !alias.scope !813, !noalias !812, !noundef !4 ; 2 uses
  %i.ara = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ara, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i.i.i.i, label %bb.kl

bb.kl:                                            ; preds = %.lr.ph.i.i.i.i161
  %i.arb = getelementptr i8, ptr %i.aqy, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.arb, align 8, !alias.scope !813, !noalias !812, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !814
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i.i.i.i: ; preds = %bb.kl, %.lr.ph.i.i.i.i161
  %i.arc = icmp eq i64 %i.aqz, %.val1.i.i
  br i1 %i.arc, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs1mQHuhqOwPS_6uu_fmt.exit.i.i, label %.lr.ph.i.i.i.i161

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs1mQHuhqOwPS_6uu_fmt.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i.i.i.i, %bb.kk
  %.val2.i.i = load i64, ptr %i.af, align 8, !range !5, !alias.scope !812, !noundef !4 ; 2 uses
  %i.ard = icmp eq i64 %.val2.i.i, 0
  br i1 %i.ard, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecIBC_hEEECs1mQHuhqOwPS_6uu_fmt.exit.i, label %bb.km

bb.km:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs1mQHuhqOwPS_6uu_fmt.exit.i.i
  %i.are = mul nuw i64 %.val2.i.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.are, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !812
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecIBC_hEEECs1mQHuhqOwPS_6uu_fmt.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecIBC_hEEECs1mQHuhqOwPS_6uu_fmt.exit.i: ; preds = %bb.km, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs1mQHuhqOwPS_6uu_fmt.exit.i.i
  %.val2.i162 = load i64, ptr %.sroa.618.sroa.7.0..sroa.618.0..sroa_idx19.sroa_idx, align 8, !range !5, !alias.scope !810, !noundef !4 ; 2 uses
  %i.arf = icmp eq i64 %.val2.i162, 0
  br i1 %i.arf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i, label %bb.kn

bb.kn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecIBC_hEEECs1mQHuhqOwPS_6uu_fmt.exit.i
  %.val3.i163 = load ptr, ptr %.sroa.720.0..sroa_idx21, align 8, !alias.scope !810, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i163, i64 noundef %.val2.i162, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !810
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i: ; preds = %bb.kn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecIBC_hEEECs1mQHuhqOwPS_6uu_fmt.exit.i
  %.val.i164 = load i64, ptr %i.it, align 8, !range !5, !alias.scope !810, !noundef !4 ; 2 uses
  %i.arg = icmp eq i64 %.val.i164, 0
  br i1 %i.arg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9ParagraphEBF_.exit, label %bb.ko

bb.ko:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i
  %.val1.i165 = load ptr, ptr %i.hm, align 8, !alias.scope !810, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i165, i64 noundef %.val.i164, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !810
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9ParagraphEBF_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9ParagraphEBF_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i, %bb.ko
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit198

bb.kp:                                            ; preds = %_RNvNtCs1mQHuhqOwPS_6uu_fmt9linebreak11break_lines.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !815)
  call void @llvm.experimental.noalias.scope.decl(metadata !816)
  %.val.i.i166 = load ptr, ptr %.sroa.618.0..sroa_idx19, align 8, !alias.scope !817, !nonnull !4, !noundef !4 ; 2 uses
  %.val1.i.i167 = load i64, ptr %.sroa.618.sroa.6.0..sroa.618.0..sroa_idx19.sroa_idx, align 8, !alias.scope !817, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %i.arh = icmp eq i64 %.val1.i.i167, 0
  br i1 %i.arh, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs1mQHuhqOwPS_6uu_fmt.exit.i.i173, label %.lr.ph.i.i.i.i168

.lr.ph.i.i.i.i168:                                ; preds = %bb.kp, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i.i.i.i172
  %.sroa.0.04.i.i.i.i169 = phi i64 [ %i.arj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i.i.i.i172 ], [ 0, %bb.kp ] ; 2 uses
  %i.ari = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i166, i64 %.sroa.0.04.i.i.i.i169 ; 2 uses
  %i.arj = add nuw nsw i64 %.sroa.0.04.i.i.i.i169, 1 ; 2 uses
  %.val.i.i.i.i170 = load i64, ptr %i.ari, align 8, !range !5, !alias.scope !818, !noalias !817, !noundef !4 ; 2 uses
  %i.ark = icmp eq i64 %.val.i.i.i.i170, 0
  br i1 %i.ark, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i.i.i.i172, label %bb.kq

bb.kq:                                            ; preds = %.lr.ph.i.i.i.i168
  %i.arl = getelementptr i8, ptr %i.ari, i64 8
  %.val3.i.i.i.i171 = load ptr, ptr %i.arl, align 8, !alias.scope !818, !noalias !817, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i171, i64 noundef %.val.i.i.i.i170, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !819
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i.i.i.i172

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i.i.i.i172: ; preds = %bb.kq, %.lr.ph.i.i.i.i168
  %i.arm = icmp eq i64 %i.arj, %.val1.i.i167
  br i1 %i.arm, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs1mQHuhqOwPS_6uu_fmt.exit.i.i173, label %.lr.ph.i.i.i.i168

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs1mQHuhqOwPS_6uu_fmt.exit.i.i173: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i.i.i.i172, %bb.kp
  %.val2.i.i174 = load i64, ptr %i.af, align 8, !range !5, !alias.scope !817, !noundef !4 ; 2 uses
  %i.arn = icmp eq i64 %.val2.i.i174, 0
  br i1 %i.arn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecIBC_hEEECs1mQHuhqOwPS_6uu_fmt.exit.i175, label %bb.kr

bb.kr:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs1mQHuhqOwPS_6uu_fmt.exit.i.i173
  %i.aro = mul nuw i64 %.val2.i.i174, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i166, i64 noundef %i.aro, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !817
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecIBC_hEEECs1mQHuhqOwPS_6uu_fmt.exit.i175

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecIBC_hEEECs1mQHuhqOwPS_6uu_fmt.exit.i175: ; preds = %bb.kr, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs1mQHuhqOwPS_6uu_fmt.exit.i.i173
  %.val2.i176 = load i64, ptr %.sroa.618.sroa.7.0..sroa.618.0..sroa_idx19.sroa_idx, align 8, !range !5, !alias.scope !815, !noundef !4 ; 2 uses
  %i.arp = icmp eq i64 %.val2.i176, 0
  br i1 %i.arp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i178, label %bb.ks

bb.ks:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecIBC_hEEECs1mQHuhqOwPS_6uu_fmt.exit.i175
  %.val3.i177 = load ptr, ptr %.sroa.720.0..sroa_idx21, align 8, !alias.scope !815, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i177, i64 noundef %.val2.i176, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !815
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i178

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i178: ; preds = %bb.ks, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecIBC_hEEECs1mQHuhqOwPS_6uu_fmt.exit.i175
  %.val.i179 = load i64, ptr %i.it, align 8, !range !5, !alias.scope !815, !noundef !4 ; 2 uses
  %i.arq = icmp eq i64 %.val.i179, 0
  br i1 %i.arq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9ParagraphEBF_.exit181, label %bb.kt

bb.kt:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i178
  %.val1.i180 = load ptr, ptr %i.hm, align 8, !alias.scope !815, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i180, i64 noundef %.val.i179, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !815
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9ParagraphEBF_.exit181

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9ParagraphEBF_.exit181: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit.i178, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit: ; preds = %bb.lf, %bb.le, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9ParagraphEBF_.exit181
  call void @_RNvXs2_NtCs1mQHuhqOwPS_6uu_fmt9parasplitNtB5_15ParagraphStreamNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ah) #23
  %i.arr = load i64, ptr %i.ag, align 8, !range !17, !noundef !4 ; 2 uses
  %.not79 = icmp eq i64 %i.arr, -2
  br i1 %.not79, label %._crit_edge, label %bb.bc

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs1mQHuhqOwPS_6uu_fmt.exit198: ; preds = %bb.lh, %bb.lg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9ParagraphEBF_.exit
  %.sroa.0.5 = phi ptr [ %i.aqv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs1mQHuhqOwPS_6uu_fmt9parasplit9ParagraphEBF_.exit ], [ %.sroa.0.6, %bb.lg ], [ %.sroa.0.6, %bb.lh ]
end_hunk_1
