Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ptx-f695fb62d915b013.uu_ptx.c0c590d8fc0ebb31-cgu.0?download=true
inline.NumInlined: 1812
inline.NumDeleted: 1075
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvCsgy7pbN39oAf_6uu_ptx24write_traditional_output:bb.a
  %i.eb = load i16, ptr %i.ea, align 2, !noalias !2693, !noundef !7
  %i.ec = icmp ult i16 %i.dz, %i.eb
  br i1 %i.ec, label %bb.p, label %.lr.ph.i.i.i.i95.i

bb.o:                                             ; preds = %.lr.ph.i.i.i.i95.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27, !noalias !2695
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ed = zext i16 %i.dz to i64                   ; 4 uses
  %i.ee = icmp eq i64 %i.dx, 0
  br i1 %i.ee, label %.thread.i, label %bb.q

.thread.i:                                        ; preds = %bb.p, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i
  %.sroa.06.0.ph.i.i.i165.i = phi ptr [ %i.dw, %bb.p ], [ %.sroa.013.0.lcssa.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i ] ; 2 uses
  %.sroa.10.0.ph.i.i.i163.i = phi i64 [ %i.ed, %bb.p ], [ 0, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i ] ; 2 uses
  %i.ef = add nuw nsw i64 %.sroa.10.0.ph.i.i.i163.i, 1
  br label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i

bb.q:                                             ; preds = %bb.p
  %i.eg = icmp ult i16 %i.dz, 11
  call void @llvm.assume(i1 %i.eg)
  %i.eh = getelementptr i8, ptr %i.dw, i64 904
  %i.ei = getelementptr [8 x i8], ptr %i.eh, i64 %i.ed ; 2 uses
  %xtraiter1580 = and i64 %i.dx, 7                ; 2 uses
  %lcmp.mod1581.not = icmp eq i64 %xtraiter1580, 0
  br i1 %lcmp.mod1581.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.q, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.prol = phi ptr [ %i.ej, %.prol.preheader ], [ %i.ei, %bb.q ]
  %.sroa.019.0.in.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ], [ %i.dx, %bb.q ]
  %prol.iter1582 = phi i64 [ %prol.iter1582.next, %.prol.preheader ], [ 0, %bb.q ]
  %.sroa.019.0.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.prol, align 8, !noalias !2696, !nonnull !7, !noundef !7 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.prol, i64 896 ; 2 uses
  %prol.iter1582.next = add i64 %prol.iter1582, 1 ; 2 uses
  %prol.iter1582.cmp.not = icmp eq i64 %prol.iter1582.next, %xtraiter1580
  br i1 %prol.iter1582.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !2347

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.q
  %.sroa.017.0.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.q ], [ %.sroa.017.0.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.unr = phi ptr [ %i.ei, %bb.q ], [ %i.ej, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.unr = phi i64 [ %i.dx, %bb.q ], [ %.sroa.019.0.i.i.i.i.i.prol, %.prol.preheader ]
  %i.ek = icmp ult i64 %.sroa.5.021.i.i.i.i.i, 7
  br i1 %i.ek, label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i = phi ptr [ %i.et, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i, align 8, !noalias !2696, !nonnull !7, !noundef !7
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i, i64 896
  %.sroa.017.0.i.i.i.i.i.1 = load ptr, ptr %i.el, align 8, !noalias !2696, !nonnull !7, !noundef !7
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.1, i64 896
  %.sroa.017.0.i.i.i.i.i.2 = load ptr, ptr %i.em, align 8, !noalias !2696, !nonnull !7, !noundef !7
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.2, i64 896
  %.sroa.017.0.i.i.i.i.i.3 = load ptr, ptr %i.en, align 8, !noalias !2696, !nonnull !7, !noundef !7
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.3, i64 896
  %.sroa.017.0.i.i.i.i.i.4 = load ptr, ptr %i.eo, align 8, !noalias !2696, !nonnull !7, !noundef !7
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.4, i64 896
  %.sroa.017.0.i.i.i.i.i.5 = load ptr, ptr %i.ep, align 8, !noalias !2696, !nonnull !7, !noundef !7
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.5, i64 896
  %.sroa.017.0.i.i.i.i.i.6 = load ptr, ptr %i.eq, align 8, !noalias !2696, !nonnull !7, !noundef !7
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.6, i64 896
  %.sroa.019.0.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.7 = load ptr, ptr %i.er, align 8, !noalias !2696, !nonnull !7, !noundef !7 ; 2 uses
  %i.es = icmp eq i64 %.sroa.019.0.i.i.i.i.i.7, 0
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.7, i64 896
  br i1 %i.es, label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i, label %.new

.critedge.i.i:                                    ; preds = %bb.l
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #27, !noalias !2697
  unreachable

_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i: ; preds = %.prol.loopexit, %.new, %.thread.i
  %.sroa.06.0.ph.i.i.i164.i = phi ptr [ %.sroa.06.0.ph.i.i.i165.i, %.thread.i ], [ %i.dw, %.new ], [ %i.dw, %.prol.loopexit ]
  %.sroa.10.0.ph.i.i.i162.i = phi i64 [ %.sroa.10.0.ph.i.i.i163.i, %.thread.i ], [ %i.ed, %.new ], [ %i.ed, %.prol.loopexit ] ; 2 uses
  %.sroa.78.0.i.i.i.i = phi i64 [ %i.ef, %.thread.i ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 2 uses
  %.sroa.07.0.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i165.i, %.thread.i ], [ %.sroa.017.0.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.7, %.new ] ; 3 uses
  %i.eu = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i162.i, 11
  call void @llvm.assume(i1 %i.eu)
  %i.ev = getelementptr inbounds nuw [80 x i8], ptr %.sroa.06.0.ph.i.i.i164.i, i64 %.sroa.10.0.ph.i.i.i162.i
  %i.ew = getelementptr i8, ptr %i.ev, i64 56
  %.val.i.i.i = load i64, ptr %i.ew, align 8, !noalias !2698, !noundef !7 ; 2 uses
  %i.ex = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ex, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i
  %i.ey = uitofp i64 %.val.i.i.i to double
  %i.ez = call double @llvm.log10.f64(double %i.ey)
  %i.fa = call i64 @llvm.fptoui.sat.i64.f64(double %i.ez)
  %i.fb = add i64 %i.fa, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i
  %.sroa.3.0.i.ph.i.i = phi i64 [ 1, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i ], [ %i.fb, %bb.r ] ; 2 uses
  %i.fc = icmp eq i64 %i.de, 0
  br i1 %i.fc, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefENCNvB1O_26get_auto_max_reference_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2U_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1O_.exit.i, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i7.i.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i7.i.i.i: ; preds = %bb.s
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i, i64 890
  %i.fe = load i16, ptr %i.fd, align 2, !noalias !2699, !noundef !7
  %i.ff = zext i16 %i.fe to i64
  %i.fg = icmp samesign ult i64 %.sroa.78.0.i.i.i.i, %i.ff
  br i1 %i.fg, label %.thread174.i, label %.lr.ph.i.i.i.i13.i.i.i

.lr.ph.i.i.i.i13.i.i.i:                           ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i7.i.i.i, %bb.t
  %.sroa.0.022.i.i.i.i14.i.i.i = phi ptr [ %i.fi, %bb.t ], [ %.sroa.07.0.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i7.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i15.i.i.i = phi i64 [ %i.fj, %bb.t ], [ 0, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i7.i.i.i ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i14.i.i.i, i64 880
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !2700, !noundef !7 ; 7 uses
  %.not.i.i.i.i.i16.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i16.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i13.i.i.i
  %i.fj = add i64 %.sroa.5.021.i.i.i.i15.i.i.i, 1 ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i14.i.i.i, i64 888
  %i.fl = load i16, ptr %i.fk, align 8, !noalias !2700 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 890
  %i.fn = load i16, ptr %i.fm, align 2, !noalias !2699, !noundef !7
  %i.fo = icmp ult i16 %i.fl, %i.fn
  br i1 %i.fo, label %bb.v, label %.lr.ph.i.i.i.i13.i.i.i

bb.u:                                             ; preds = %.lr.ph.i.i.i.i13.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27, !noalias !2701
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.fp = zext i16 %i.fl to i64                   ; 4 uses
  %i.fq = icmp eq i64 %i.fj, 0
  br i1 %i.fq, label %.thread174.i, label %bb.w

.thread174.i:                                     ; preds = %bb.v, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i7.i.i.i
  %.sroa.06.0.ph.i.i.i20.i.i181.i = phi ptr [ %i.fi, %bb.v ], [ %.sroa.07.0.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i7.i.i.i ] ; 2 uses
  %.sroa.10.0.ph.i.i.i18.i.i179.i = phi i64 [ %i.fp, %bb.v ], [ %.sroa.78.0.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i7.i.i.i ] ; 2 uses
  %i.fr = add nuw nsw i64 %.sroa.10.0.ph.i.i.i18.i.i179.i, 1
  br label %.lr.ph.i.preheader.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.fs = icmp ult i16 %i.fl, 11
  call void @llvm.assume(i1 %i.fs)
  %i.ft = getelementptr i8, ptr %i.fi, i64 904
  %i.fu = getelementptr [8 x i8], ptr %i.ft, i64 %i.fp ; 2 uses
  %xtraiter1588 = and i64 %i.fj, 7                ; 2 uses
  %lcmp.mod1589.not = icmp eq i64 %xtraiter1588, 0
  br i1 %lcmp.mod1589.not, label %.prol.loopexit1585, label %.prol.preheader1584

.prol.preheader1584:                              ; preds = %bb.w, %.prol.preheader1584
  %.sroa.017.0.in.i.i.i.i21.i.i.i.prol = phi ptr [ %i.fv, %.prol.preheader1584 ], [ %i.fu, %bb.w ]
  %.sroa.019.0.in.i.i.i.i22.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i23.i.i.i.prol, %.prol.preheader1584 ], [ %i.fj, %bb.w ]
  %prol.iter1590 = phi i64 [ %prol.iter1590.next, %.prol.preheader1584 ], [ 0, %bb.w ]
  %.sroa.019.0.i.i.i.i23.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i22.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i24.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i21.i.i.i.prol, align 8, !noalias !2702, !nonnull !7, !noundef !7 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i24.i.i.i.prol, i64 896 ; 2 uses
  %prol.iter1590.next = add i64 %prol.iter1590, 1 ; 2 uses
  %prol.iter1590.cmp.not = icmp eq i64 %prol.iter1590.next, %xtraiter1588
  br i1 %prol.iter1590.cmp.not, label %.prol.loopexit1585, label %.prol.preheader1584, !llvm.loop !2369

.prol.loopexit1585:                               ; preds = %.prol.preheader1584, %bb.w
  %.sroa.017.0.i.i.i.i24.i.i.i.lcssa.unr = phi ptr [ poison, %bb.w ], [ %.sroa.017.0.i.i.i.i24.i.i.i.prol, %.prol.preheader1584 ]
  %.sroa.017.0.in.i.i.i.i21.i.i.i.unr = phi ptr [ %i.fu, %bb.w ], [ %i.fv, %.prol.preheader1584 ]
  %.sroa.019.0.in.i.i.i.i22.i.i.i.unr = phi i64 [ %i.fj, %bb.w ], [ %.sroa.019.0.i.i.i.i23.i.i.i.prol, %.prol.preheader1584 ]
  %i.fw = icmp ult i64 %.sroa.5.021.i.i.i.i15.i.i.i, 7
  br i1 %i.fw, label %.lr.ph.i.preheader.i.i.i, label %.new1586

.new1586:                                         ; preds = %.prol.loopexit1585, %.new1586
  %.sroa.017.0.in.i.i.i.i21.i.i.i = phi ptr [ %i.gf, %.new1586 ], [ %.sroa.017.0.in.i.i.i.i21.i.i.i.unr, %.prol.loopexit1585 ]
  %.sroa.019.0.in.i.i.i.i22.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i23.i.i.i.7, %.new1586 ], [ %.sroa.019.0.in.i.i.i.i22.i.i.i.unr, %.prol.loopexit1585 ]
  %.sroa.017.0.i.i.i.i24.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i21.i.i.i, align 8, !noalias !2702, !nonnull !7, !noundef !7
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i24.i.i.i, i64 896
  %.sroa.017.0.i.i.i.i24.i.i.i.1 = load ptr, ptr %i.fx, align 8, !noalias !2702, !nonnull !7, !noundef !7
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i24.i.i.i.1, i64 896
  %.sroa.017.0.i.i.i.i24.i.i.i.2 = load ptr, ptr %i.fy, align 8, !noalias !2702, !nonnull !7, !noundef !7
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i24.i.i.i.2, i64 896
  %.sroa.017.0.i.i.i.i24.i.i.i.3 = load ptr, ptr %i.fz, align 8, !noalias !2702, !nonnull !7, !noundef !7
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i24.i.i.i.3, i64 896
  %.sroa.017.0.i.i.i.i24.i.i.i.4 = load ptr, ptr %i.ga, align 8, !noalias !2702, !nonnull !7, !noundef !7
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i24.i.i.i.4, i64 896
  %.sroa.017.0.i.i.i.i24.i.i.i.5 = load ptr, ptr %i.gb, align 8, !noalias !2702, !nonnull !7, !noundef !7
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i24.i.i.i.5, i64 896
  %.sroa.017.0.i.i.i.i24.i.i.i.6 = load ptr, ptr %i.gc, align 8, !noalias !2702, !nonnull !7, !noundef !7
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i24.i.i.i.6, i64 896
  %.sroa.019.0.i.i.i.i23.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i22.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i24.i.i.i.7 = load ptr, ptr %i.gd, align 8, !noalias !2702, !nonnull !7, !noundef !7 ; 2 uses
  %i.ge = icmp eq i64 %.sroa.019.0.i.i.i.i23.i.i.i.7, 0
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i24.i.i.i.7, i64 896
  br i1 %i.ge, label %.lr.ph.i.preheader.i.i.i, label %.new1586

.lr.ph.i.preheader.i.i.i:                         ; preds = %.prol.loopexit1585, %.new1586, %.thread174.i
  %.sroa.06.0.ph.i.i.i20.i.i180.i = phi ptr [ %.sroa.06.0.ph.i.i.i20.i.i181.i, %.thread174.i ], [ %i.fi, %.new1586 ], [ %i.fi, %.prol.loopexit1585 ]
  %.sroa.10.0.ph.i.i.i18.i.i178.i = phi i64 [ %.sroa.10.0.ph.i.i.i18.i.i179.i, %.thread174.i ], [ %i.fp, %.new1586 ], [ %i.fp, %.prol.loopexit1585 ] ; 2 uses
  %.sroa.78.0.i.i.i26.i.i.i = phi i64 [ %i.fr, %.thread174.i ], [ 0, %.new1586 ], [ 0, %.prol.loopexit1585 ]
  %.sroa.07.0.i.i.i27.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i20.i.i181.i, %.thread174.i ], [ %.sroa.017.0.i.i.i.i24.i.i.i.lcssa.unr, %.prol.loopexit1585 ], [ %.sroa.017.0.i.i.i.i24.i.i.i.7, %.new1586 ]
  %i.gg = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i18.i.i178.i, 11
  call void @llvm.assume(i1 %i.gg)
  %i.gh = getelementptr inbounds nuw [80 x i8], ptr %.sroa.06.0.ph.i.i.i20.i.i180.i, i64 %.sroa.10.0.ph.i.i.i18.i.i178.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.sroa.21.0.i.i.i = phi i64 [ %.sroa.78.0.i.i.i.i.i.i, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i ], [ %.sroa.78.0.i.i.i26.i.i.i, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.sroa.2741.0.in.i.i.i = phi i64 [ %.sroa.2741.0.i.i.i, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i ], [ %i.de, %.lr.ph.i.preheader.i.i.i ]
  %.sroa.7.0.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i.i, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i ], [ %.sroa.07.0.i.i.i27.i.i.i, %.lr.ph.i.preheader.i.i.i ] ; 4 uses
  %i.gi = phi ptr [ %i.hu, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i ], [ %i.gh, %.lr.ph.i.preheader.i.i.i ]
  %.sroa.0.06.i.i.i.i = phi i64 [ %..i.i.i.i.i.i.i, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i ], [ %.sroa.3.0.i.ph.i.i, %.lr.ph.i.preheader.i.i.i ]
  %.sroa.2741.0.i.i.i = add i64 %.sroa.2741.0.in.i.i.i, -1 ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 56
  %.val.i.i.i.i = load i64, ptr %i.gj, align 8, !noalias !2703, !noundef !7 ; 2 uses
  %i.gk = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.gk, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtCsgy7pbN39oAf_6uu_ptx7WordRefjjNCNvBX_26get_auto_max_reference_len0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0BX_.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i
  %i.gl = uitofp i64 %.val.i.i.i.i to double
  %i.gm = call double @llvm.log10.f64(double %i.gl)
  %i.gn = call i64 @llvm.fptoui.sat.i64.f64(double %i.gm)
  %i.go = add i64 %i.gn, 1
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtCsgy7pbN39oAf_6uu_ptx7WordRefjjNCNvBX_26get_auto_max_reference_len0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0BX_.exit.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtCsgy7pbN39oAf_6uu_ptx7WordRefjjNCNvBX_26get_auto_max_reference_len0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0BX_.exit.i.i.i.i: ; preds = %bb.x, %.lr.ph.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.go, %bb.x ], [ 1, %.lr.ph.i.i.i.i ]
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.06.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i) ; 2 uses
  %i.gp = icmp eq i64 %.sroa.2741.0.i.i.i, 0
  br i1 %i.gp, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefENCNvB1O_26get_auto_max_reference_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2U_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1O_.exit.i, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i.i.i: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtCsgy7pbN39oAf_6uu_ptx7WordRefjjNCNvBX_26get_auto_max_reference_len0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0BX_.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i.i.i) ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i.i, i64 890
  %i.gr = load i16, ptr %i.gq, align 2, !noalias !2704, !noundef !7
  %i.gs = zext i16 %i.gr to i64
  %i.gt = icmp ult i64 %.sroa.21.0.i.i.i, %i.gs
  br i1 %i.gt, label %.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i.i.i, %bb.y
  %.sroa.0.022.i.i.i.i.i.i.i = phi ptr [ %i.gv, %bb.y ], [ %.sroa.7.0.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i.i = phi i64 [ %i.gw, %bb.y ], [ 0, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i.i.i ] ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i, i64 880
  %i.gv = load ptr, ptr %i.gu, align 8, !noalias !2705, !noundef !7 ; 7 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.gw = add i64 %.sroa.5.021.i.i.i.i.i.i.i, 1   ; 5 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i, i64 888
  %i.gy = load i16, ptr %i.gx, align 8, !noalias !2705 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 890
  %i.ha = load i16, ptr %i.gz, align 2, !noalias !2704, !noundef !7
  %i.hb = icmp ult i16 %i.gy, %i.ha
  br i1 %i.hb, label %bb.aa, label %.lr.ph.i.i.i.i.i.i.i

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27, !noalias !2706
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.hc = zext i16 %i.gy to i64                   ; 4 uses
  %i.hd = icmp eq i64 %i.gw, 0
  br i1 %i.hd, label %.thread.i.i.i, label %bb.ab

.thread.i.i.i:                                    ; preds = %bb.aa, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i.i.i
  %.sroa.06.0.ph.i.i.i71.i.i.i = phi ptr [ %i.gv, %bb.aa ], [ %.sroa.7.0.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i.i.i ] ; 2 uses
  %.sroa.10.0.ph.i.i.i69.i.i.i = phi i64 [ %i.hc, %bb.aa ], [ %.sroa.21.0.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i.i.i ] ; 2 uses
  %i.he = add nuw nsw i64 %.sroa.10.0.ph.i.i.i69.i.i.i, 1
  br label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.hf = icmp ult i16 %i.gy, 11
  call void @llvm.assume(i1 %i.hf)
  %i.hg = getelementptr i8, ptr %i.gv, i64 904
  %i.hh = getelementptr [8 x i8], ptr %i.hg, i64 %i.hc ; 2 uses
  %xtraiter1596 = and i64 %i.gw, 7                ; 2 uses
  %lcmp.mod1597.not = icmp eq i64 %xtraiter1596, 0
  br i1 %lcmp.mod1597.not, label %.prol.loopexit1593, label %.prol.preheader1592

.prol.preheader1592:                              ; preds = %bb.ab, %.prol.preheader1592
  %.sroa.017.0.in.i.i.i.i.i.i.i.prol = phi ptr [ %i.hi, %.prol.preheader1592 ], [ %i.hh, %bb.ab ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.prol, %.prol.preheader1592 ], [ %i.gw, %bb.ab ]
  %prol.iter1598 = phi i64 [ %prol.iter1598.next, %.prol.preheader1592 ], [ 0, %bb.ab ]
  %.sroa.019.0.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.prol, align 8, !noalias !2707, !nonnull !7, !noundef !7 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.prol, i64 896 ; 2 uses
  %prol.iter1598.next = add i64 %prol.iter1598, 1 ; 2 uses
  %prol.iter1598.cmp.not = icmp eq i64 %prol.iter1598.next, %xtraiter1596
  br i1 %prol.iter1598.cmp.not, label %.prol.loopexit1593, label %.prol.preheader1592, !llvm.loop !2387

.prol.loopexit1593:                               ; preds = %.prol.preheader1592, %bb.ab
  %.sroa.017.0.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ab ], [ %.sroa.017.0.i.i.i.i.i.i.i.prol, %.prol.preheader1592 ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.unr = phi ptr [ %i.hh, %bb.ab ], [ %i.hi, %.prol.preheader1592 ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.unr = phi i64 [ %i.gw, %bb.ab ], [ %.sroa.019.0.i.i.i.i.i.i.i.prol, %.prol.preheader1592 ]
  %i.hj = icmp ult i64 %.sroa.5.021.i.i.i.i.i.i.i, 7
  br i1 %i.hj, label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i, label %.new1594

.new1594:                                         ; preds = %.prol.loopexit1593, %.new1594
  %.sroa.017.0.in.i.i.i.i.i.i.i = phi ptr [ %i.hs, %.new1594 ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.unr, %.prol.loopexit1593 ]
  %.sroa.019.0.in.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.7, %.new1594 ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.unr, %.prol.loopexit1593 ]
  %.sroa.017.0.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i, align 8, !noalias !2707, !nonnull !7, !noundef !7
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.1 = load ptr, ptr %i.hk, align 8, !noalias !2707, !nonnull !7, !noundef !7
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.1, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.2 = load ptr, ptr %i.hl, align 8, !noalias !2707, !nonnull !7, !noundef !7
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.2, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.3 = load ptr, ptr %i.hm, align 8, !noalias !2707, !nonnull !7, !noundef !7
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.3, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.4 = load ptr, ptr %i.hn, align 8, !noalias !2707, !nonnull !7, !noundef !7
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.4, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.5 = load ptr, ptr %i.ho, align 8, !noalias !2707, !nonnull !7, !noundef !7
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.5, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.6 = load ptr, ptr %i.hp, align 8, !noalias !2707, !nonnull !7, !noundef !7
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.6, i64 896
  %.sroa.019.0.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.7 = load ptr, ptr %i.hq, align 8, !noalias !2707, !nonnull !7, !noundef !7 ; 2 uses
  %i.hr = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.7, 0
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.7, i64 896
  br i1 %i.hr, label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i, label %.new1594

_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i: ; preds = %.prol.loopexit1593, %.new1594, %.thread.i.i.i
  %.sroa.06.0.ph.i.i.i70.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i71.i.i.i, %.thread.i.i.i ], [ %i.gv, %.new1594 ], [ %i.gv, %.prol.loopexit1593 ]
  %.sroa.10.0.ph.i.i.i68.i.i.i = phi i64 [ %.sroa.10.0.ph.i.i.i69.i.i.i, %.thread.i.i.i ], [ %i.hc, %.new1594 ], [ %i.hc, %.prol.loopexit1593 ] ; 2 uses
  %.sroa.78.0.i.i.i.i.i.i = phi i64 [ %i.he, %.thread.i.i.i ], [ 0, %.new1594 ], [ 0, %.prol.loopexit1593 ]
  %.sroa.07.0.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i71.i.i.i, %.thread.i.i.i ], [ %.sroa.017.0.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit1593 ], [ %.sroa.017.0.i.i.i.i.i.i.i.7, %.new1594 ]
  %i.ht = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i68.i.i.i, 11
  call void @llvm.assume(i1 %i.ht)
  %i.hu = getelementptr inbounds nuw [80 x i8], ptr %.sroa.06.0.ph.i.i.i70.i.i.i, i64 %.sroa.10.0.ph.i.i.i68.i.i.i
  br label %.lr.ph.i.i.i.i

_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefENCNvB1O_26get_auto_max_reference_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2U_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1O_.exit.i: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtCsgy7pbN39oAf_6uu_ptx7WordRefjjNCNvBX_26get_auto_max_reference_len0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0BX_.exit.i.i.i.i, %bb.s, %bb.k
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.k ], [ %.sroa.3.0.i.ph.i.i, %bb.s ], [ %..i.i.i.i.i.i.i, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtCsgy7pbN39oAf_6uu_ptx7WordRefjjNCNvBX_26get_auto_max_reference_len0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0BX_.exit.i.i.i.i ]
  %i.hv = icmp eq i64 %.sroa.5.0.i, 0
  br i1 %i.hv, label %_RNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_len.exit, label %.lr.ph1316

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkRNtCsgy7pbN39oAf_6uu_ptx7WordRefQNCNvB1f_26get_auto_max_reference_lens_0E0B1f_.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core3ops8function5implsQNCNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_lens_0INtB7_5FnMutTRRNtBS_7WordRefEE8call_mutBS_.exit.i.i.i.i.i.i.i
  %i.hw = icmp eq i64 %i.hx, 0
  br i1 %i.hw, label %_RNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_len.exit, label %.lr.ph1316

.lr.ph1316:                                       ; preds = %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefENCNvB1O_26get_auto_max_reference_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2U_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1O_.exit.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkRNtCsgy7pbN39oAf_6uu_ptx7WordRefQNCNvB1f_26get_auto_max_reference_lens_0E0B1f_.exit.i.i.i.i.i.i
  %.sroa.0143.0.i1315 = phi i1 [ true, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkRNtCsgy7pbN39oAf_6uu_ptx7WordRefQNCNvB1f_26get_auto_max_reference_lens_0E0B1f_.exit.i.i.i.i.i.i ], [ %.not.i, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefENCNvB1O_26get_auto_max_reference_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2U_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1O_.exit.i ]
  %.sroa.6145.0.i1314 = phi ptr [ %.sroa.07.0.i.i.i126.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkRNtCsgy7pbN39oAf_6uu_ptx7WordRefQNCNvB1f_26get_auto_max_reference_lens_0E0B1f_.exit.i.i.i.i.i.i ], [ null, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefENCNvB1O_26get_auto_max_reference_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2U_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1O_.exit.i ] ; 2 uses
  %.sroa.17147.0.i1313 = phi i64 [ %.sroa.78.0.i.i.i125.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkRNtCsgy7pbN39oAf_6uu_ptx7WordRefQNCNvB1f_26get_auto_max_reference_lens_0E0B1f_.exit.i.i.i.i.i.i ], [ %.sroa.07.sroa.7.sroa.6.0.i, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefENCNvB1O_26get_auto_max_reference_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2U_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1O_.exit.i ] ; 6 uses
  %.sroa.26154.0.i1312 = phi i64 [ %i.hx, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkRNtCsgy7pbN39oAf_6uu_ptx7WordRefQNCNvB1f_26get_auto_max_reference_lens_0E0B1f_.exit.i.i.i.i.i.i ], [ %.sroa.5.0.i, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefENCNvB1O_26get_auto_max_reference_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2U_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1O_.exit.i ]
  %.sroa.11146.0.i1311 = phi i64 [ 0, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkRNtCsgy7pbN39oAf_6uu_ptx7WordRefQNCNvB1f_26get_auto_max_reference_lens_0E0B1f_.exit.i.i.i.i.i.i ], [ %i.dc, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefENCNvB1O_26get_auto_max_reference_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2U_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1O_.exit.i ] ; 2 uses
  %i.hx = add i64 %.sroa.26154.0.i1312, -1        ; 4 uses
  br i1 %.sroa.0143.0.i1315, label %bb.ac, label %.critedge.i100.i

bb.ac:                                            ; preds = %.lr.ph1316
  %.not.i.i101.i = icmp eq ptr %.sroa.6145.0.i1314, null
  br i1 %.not.i.i101.i, label %bb.ad, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i106.i

bb.ad:                                            ; preds = %bb.ac
  %i.hy = inttoptr i64 %.sroa.11146.0.i1311 to ptr ; 3 uses
  %i.hz = icmp eq i64 %.sroa.17147.0.i1313, 0
  br i1 %i.hz, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i106.i, label %.lr.ph.i.i130.i.preheader

.lr.ph.i.i130.i.preheader:                        ; preds = %bb.ad
  %xtraiter1599 = and i64 %.sroa.17147.0.i1313, 7 ; 2 uses
  %lcmp.mod1600.not = icmp eq i64 %xtraiter1599, 0
  br i1 %lcmp.mod1600.not, label %.lr.ph.i.i130.i.prol.loopexit, label %.lr.ph.i.i130.i.prol

.lr.ph.i.i130.i.prol:                             ; preds = %.lr.ph.i.i130.i.preheader, %.lr.ph.i.i130.i.prol
  %.sroa.013.017.i.i131.i.prol = phi ptr [ %.sroa.013.0.i.i133.i.prol, %.lr.ph.i.i130.i.prol ], [ %i.hy, %.lr.ph.i.i130.i.preheader ]
  %.sroa.011.016.i.i132.i.prol = phi i64 [ %i.ib, %.lr.ph.i.i130.i.prol ], [ %.sroa.17147.0.i1313, %.lr.ph.i.i130.i.preheader ]
  %prol.iter1601 = phi i64 [ %prol.iter1601.next, %.lr.ph.i.i130.i.prol ], [ 0, %.lr.ph.i.i130.i.preheader ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i131.i.prol, i64 896
  %i.ib = add i64 %.sroa.011.016.i.i132.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i133.i.prol = load ptr, ptr %i.ia, align 8, !noalias !2708, !nonnull !7, !noundef !7 ; 3 uses
  %prol.iter1601.next = add i64 %prol.iter1601, 1 ; 2 uses
  %prol.iter1601.cmp.not = icmp eq i64 %prol.iter1601.next, %xtraiter1599
  br i1 %prol.iter1601.cmp.not, label %.lr.ph.i.i130.i.prol.loopexit, label %.lr.ph.i.i130.i.prol, !llvm.loop !2392

.lr.ph.i.i130.i.prol.loopexit:                    ; preds = %.lr.ph.i.i130.i.prol, %.lr.ph.i.i130.i.preheader
  %.sroa.013.0.i.i133.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i130.i.preheader ], [ %.sroa.013.0.i.i133.i.prol, %.lr.ph.i.i130.i.prol ]
  %.sroa.013.017.i.i131.i.unr = phi ptr [ %i.hy, %.lr.ph.i.i130.i.preheader ], [ %.sroa.013.0.i.i133.i.prol, %.lr.ph.i.i130.i.prol ]
  %.sroa.011.016.i.i132.i.unr = phi i64 [ %.sroa.17147.0.i1313, %.lr.ph.i.i130.i.preheader ], [ %i.ib, %.lr.ph.i.i130.i.prol ]
  %i.ic = icmp ult i64 %.sroa.17147.0.i1313, 8
  br i1 %i.ic, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i106.i, label %.lr.ph.i.i130.i

.lr.ph.i.i130.i:                                  ; preds = %.lr.ph.i.i130.i.prol.loopexit, %.lr.ph.i.i130.i
  %.sroa.013.017.i.i131.i = phi ptr [ %.sroa.013.0.i.i133.i.7, %.lr.ph.i.i130.i ], [ %.sroa.013.017.i.i131.i.unr, %.lr.ph.i.i130.i.prol.loopexit ]
  %.sroa.011.016.i.i132.i = phi i64 [ %i.il, %.lr.ph.i.i130.i ], [ %.sroa.011.016.i.i132.i.unr, %.lr.ph.i.i130.i.prol.loopexit ]
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i131.i, i64 896
  %.sroa.013.0.i.i133.i = load ptr, ptr %i.id, align 8, !noalias !2708, !nonnull !7, !noundef !7
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i133.i, i64 896
  %.sroa.013.0.i.i133.i.1 = load ptr, ptr %i.ie, align 8, !noalias !2708, !nonnull !7, !noundef !7
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i133.i.1, i64 896
  %.sroa.013.0.i.i133.i.2 = load ptr, ptr %i.if, align 8, !noalias !2708, !nonnull !7, !noundef !7
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i133.i.2, i64 896
  %.sroa.013.0.i.i133.i.3 = load ptr, ptr %i.ig, align 8, !noalias !2708, !nonnull !7, !noundef !7
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i133.i.3, i64 896
  %.sroa.013.0.i.i133.i.4 = load ptr, ptr %i.ih, align 8, !noalias !2708, !nonnull !7, !noundef !7
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i133.i.4, i64 896
  %.sroa.013.0.i.i133.i.5 = load ptr, ptr %i.ii, align 8, !noalias !2708, !nonnull !7, !noundef !7
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i133.i.5, i64 896
  %.sroa.013.0.i.i133.i.6 = load ptr, ptr %i.ij, align 8, !noalias !2708, !nonnull !7, !noundef !7
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i133.i.6, i64 896
  %i.il = add i64 %.sroa.011.016.i.i132.i, -8     ; 2 uses
  %.sroa.013.0.i.i133.i.7 = load ptr, ptr %i.ik, align 8, !noalias !2708, !nonnull !7, !noundef !7 ; 2 uses
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i106.i, label %.lr.ph.i.i130.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i106.i: ; preds = %.lr.ph.i.i130.i.prol.loopexit, %.lr.ph.i.i130.i, %bb.ad, %bb.ac
  %.sroa.59.0.copyload.i.i107.i = phi i64 [ %.sroa.17147.0.i1313, %bb.ac ], [ 0, %bb.ad ], [ 0, %.lr.ph.i.i130.i ], [ 0, %.lr.ph.i.i130.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i108.i = phi i64 [ %.sroa.11146.0.i1311, %bb.ac ], [ 0, %bb.ad ], [ 0, %.lr.ph.i.i130.i ], [ 0, %.lr.ph.i.i130.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i109.i = phi ptr [ %.sroa.6145.0.i1314, %bb.ac ], [ %i.hy, %bb.ad ], [ %.sroa.013.0.i.i133.i.lcssa.unr, %.lr.ph.i.i130.i.prol.loopexit ], [ %.sroa.013.0.i.i133.i.7, %.lr.ph.i.i130.i ] ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i109.i, i64 890
  %i.io = load i16, ptr %i.in, align 2, !noalias !2709, !noundef !7
  %i.ip = zext i16 %i.io to i64
  %i.iq = icmp ult i64 %.sroa.59.0.copyload.i.i107.i, %i.ip
  br i1 %i.iq, label %bb.ag, label %.lr.ph.i.i.i.i112.i

.lr.ph.i.i.i.i112.i:                              ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i106.i, %bb.ae
  %.sroa.0.022.i.i.i.i113.i = phi ptr [ %i.is, %bb.ae ], [ %.sroa.07.0.copyload.i.i109.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i106.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i114.i = phi i64 [ %i.iu, %bb.ae ], [ %.sroa.48.0.copyload.i.i108.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i106.i ]
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i113.i, i64 880
  %i.is = load ptr, ptr %i.ir, align 8, !noalias !2710, !noundef !7 ; 4 uses
  %.not.i.i.i.i.i115.i = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i.i.i115.i, label %bb.af, label %bb.ae

._crit_edge.loopexit.i.i.i.i116.i:                ; preds = %bb.ae
  %i.it = zext i16 %i.iw to i64
  br label %bb.ag

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i112.i
  %i.iu = add i64 %.sroa.5.021.i.i.i.i114.i, 1    ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i113.i, i64 888
  %i.iw = load i16, ptr %i.iv, align 8, !noalias !2710 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 890
  %i.iy = load i16, ptr %i.ix, align 2, !noalias !2709, !noundef !7
  %i.iz = icmp ult i16 %i.iw, %i.iy
end_hunk_0
begin_hunk_1_@_RNvCsgy7pbN39oAf_6uu_ptx24write_traditional_output:bb.a
  %.sroa.017.0.i.i.i.i123.i.1 = load ptr, ptr %i.jh, align 8, !noalias !2712, !nonnull !7, !noundef !7
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i123.i.1, i64 896
  %.sroa.017.0.i.i.i.i123.i.2 = load ptr, ptr %i.ji, align 8, !noalias !2712, !nonnull !7, !noundef !7
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i123.i.2, i64 896
  %.sroa.017.0.i.i.i.i123.i.3 = load ptr, ptr %i.jj, align 8, !noalias !2712, !nonnull !7, !noundef !7
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i123.i.3, i64 896
  %.sroa.017.0.i.i.i.i123.i.4 = load ptr, ptr %i.jk, align 8, !noalias !2712, !nonnull !7, !noundef !7
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i123.i.4, i64 896
  %.sroa.017.0.i.i.i.i123.i.5 = load ptr, ptr %i.jl, align 8, !noalias !2712, !nonnull !7, !noundef !7
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i123.i.5, i64 896
  %.sroa.017.0.i.i.i.i123.i.6 = load ptr, ptr %i.jm, align 8, !noalias !2712, !nonnull !7, !noundef !7
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i123.i.6, i64 896
  %.sroa.019.0.i.i.i.i122.i.7 = add i64 %.sroa.019.0.in.i.i.i.i121.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i123.i.7 = load ptr, ptr %i.jn, align 8, !noalias !2712, !nonnull !7, !noundef !7 ; 2 uses
  %i.jo = icmp eq i64 %.sroa.019.0.i.i.i.i122.i.7, 0
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i123.i.7, i64 896
  br i1 %i.jo, label %.loopexit.i, label %.new1605

.critedge.i100.i:                                 ; preds = %.lr.ph1316
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #27, !noalias !2713
  unreachable

.loopexit.i:                                      ; preds = %.prol.loopexit1604, %.new1605, %bb.ah
  %.sroa.78.0.i.i.i125.i = phi i64 [ %i.jb, %bb.ah ], [ 0, %.new1605 ], [ 0, %.prol.loopexit1604 ] ; 3 uses
  %.sroa.07.0.i.i.i126.i = phi ptr [ %.sroa.06.0.ph.i.i.i119.i, %bb.ah ], [ %.sroa.017.0.i.i.i.i123.i.lcssa.unr, %.prol.loopexit1604 ], [ %.sroa.017.0.i.i.i.i123.i.7, %.new1605 ] ; 4 uses
  %i.jq = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i117.i, 11
  call void @llvm.assume(i1 %i.jq)
  %i.jr = getelementptr inbounds nuw [80 x i8], ptr %.sroa.06.0.ph.i.i.i119.i, i64 %.sroa.10.0.ph.i.i.i117.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2714)
  %i.js = getelementptr i8, ptr %i.jr, i64 40
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.js, align 8, !alias.scope !2714, !noalias !2715, !noundef !7 ; 2 uses
  %i.jt = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i, 1
  %i.ju = getelementptr i8, ptr %i.jr, i64 32
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ju, align 8, !noalias !2716 ; 2 uses
  br i1 %i.jt, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core3ops8function5implsQNCNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_lens_0INtB7_5FnMutTRRNtBS_7WordRefEE8call_mutBS_.exit.i.i.i.i.i.i.i, label %split.i.i.i

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core3ops8function5implsQNCNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_lens_0INtB7_5FnMutTRRNtBS_7WordRefEE8call_mutBS_.exit.i.i.i.i.i.i.i: ; preds = %.loopexit.i
  %lhsc.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.val.i.i.i.i.i.i.i.i.i, align 1, !noalias !2717
  %lhsc.i.i.i.fr.i.i.i.i.i.i.i = freeze i8 %lhsc.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i8 %lhsc.i.i.i.fr.i.i.i.i.i.i.i, 45
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkRNtCsgy7pbN39oAf_6uu_ptx7WordRefQNCNvB1f_26get_auto_max_reference_lens_0E0B1f_.exit.i.i.i.i.i.i, label %split.i.i.i

split.i.i.i:                                      ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core3ops8function5implsQNCNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_lens_0INtB7_5FnMutTRRNtBS_7WordRefEE8call_mutBS_.exit.i.i.i.i.i.i.i, %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !2716
  store i64 1, ptr %i.ba, align 8, !noalias !2716
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %.val.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2716
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %.val1.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !2716
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i8 0, ptr %i.jv, align 8, !noalias !2716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !2718
  store i64 0, ptr %i.az, align 8, !noalias !2718
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2718
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !2718
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 1610612768, ptr %i.jw, align 8, !noalias !2718
  store ptr %i.az, ptr %i.ay, align 8, !noalias !2718
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @85, ptr %i.jx, align 8, !noalias !2718
  %i.jy = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ba, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay) #28, !noalias !2719
  br i1 %i.jy, label %bb.aj, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i, !prof !12

bb.aj:                                            ; preds = %split.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @209, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @167, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @211) #27, !noalias !2719
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i: ; preds = %split.i.i.i
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.az, align 8, !noalias !2720 ; 2 uses
  %.sroa.4.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2720 ; 2 uses
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2720 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !2718
  %i.jz = icmp sgt i64 %.sroa.5.0.copyload.i.i.i.i, -1
  call void @llvm.assume(i1 %i.jz)
  %i.ka = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 0
  br i1 %i.ka, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2721
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !2716
  %i.kb = icmp eq i64 %i.hx, 0
  br i1 %i.kb, label %_RNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_len.exit, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i8.i.i.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i8.i.i.i.i: ; preds = %bb.al
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i126.i, i64 890
  %i.kd = load i16, ptr %i.kc, align 2, !noalias !2722, !noundef !7
  %i.ke = zext i16 %i.kd to i64
  %i.kf = icmp samesign ult i64 %.sroa.78.0.i.i.i125.i, %i.ke
  br i1 %i.kf, label %.thread190.i, label %.lr.ph.i.i.i.i14.i.i.i.i

.lr.ph.i.i.i.i14.i.i.i.i:                         ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i8.i.i.i.i, %bb.am
  %.sroa.0.022.i.i.i.i15.i.i.i.i = phi ptr [ %i.kh, %bb.am ], [ %.sroa.07.0.i.i.i126.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i8.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i16.i.i.i.i = phi i64 [ %i.ki, %bb.am ], [ 0, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i8.i.i.i.i ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i15.i.i.i.i, i64 880
  %i.kh = load ptr, ptr %i.kg, align 8, !noalias !2723, !noundef !7 ; 7 uses
  %.not.i.i.i.i.i17.i.i.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i.i.i17.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.i14.i.i.i.i
  %i.ki = add i64 %.sroa.5.021.i.i.i.i16.i.i.i.i, 1 ; 5 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i15.i.i.i.i, i64 888
  %i.kk = load i16, ptr %i.kj, align 8, !noalias !2723 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 890
  %i.km = load i16, ptr %i.kl, align 2, !noalias !2722, !noundef !7
  %i.kn = icmp ult i16 %i.kk, %i.km
  br i1 %i.kn, label %bb.ao, label %.lr.ph.i.i.i.i14.i.i.i.i

bb.an:                                            ; preds = %.lr.ph.i.i.i.i14.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27, !noalias !2724
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.ko = zext i16 %i.kk to i64                   ; 4 uses
  %i.kp = icmp eq i64 %i.ki, 0
  br i1 %i.kp, label %.thread190.i, label %bb.ap

.thread190.i:                                     ; preds = %bb.ao, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i8.i.i.i.i
  %.sroa.06.0.ph.i.i.i21.i.i.i197.i = phi ptr [ %i.kh, %bb.ao ], [ %.sroa.07.0.i.i.i126.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i8.i.i.i.i ] ; 2 uses
  %.sroa.10.0.ph.i.i.i19.i.i.i195.i = phi i64 [ %i.ko, %bb.ao ], [ %.sroa.78.0.i.i.i125.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i8.i.i.i.i ] ; 2 uses
  %i.kq = add nuw nsw i64 %.sroa.10.0.ph.i.i.i19.i.i.i195.i, 1
  br label %.lr.ph.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.kr = icmp ult i16 %i.kk, 11
  call void @llvm.assume(i1 %i.kr)
  %i.ks = getelementptr i8, ptr %i.kh, i64 904
  %i.kt = getelementptr [8 x i8], ptr %i.ks, i64 %i.ko ; 2 uses
  %xtraiter1614 = and i64 %i.ki, 7                ; 2 uses
  %lcmp.mod1615.not = icmp eq i64 %xtraiter1614, 0
  br i1 %lcmp.mod1615.not, label %.prol.loopexit1611, label %.prol.preheader1610

.prol.preheader1610:                              ; preds = %bb.ap, %.prol.preheader1610
  %.sroa.017.0.in.i.i.i.i22.i.i.i.i.prol = phi ptr [ %i.ku, %.prol.preheader1610 ], [ %i.kt, %bb.ap ]
  %.sroa.019.0.in.i.i.i.i23.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i24.i.i.i.i.prol, %.prol.preheader1610 ], [ %i.ki, %bb.ap ]
  %prol.iter1616 = phi i64 [ %prol.iter1616.next, %.prol.preheader1610 ], [ 0, %bb.ap ]
  %.sroa.019.0.i.i.i.i24.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i23.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i25.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i22.i.i.i.i.prol, align 8, !noalias !2725, !nonnull !7, !noundef !7 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i25.i.i.i.i.prol, i64 896 ; 2 uses
  %prol.iter1616.next = add i64 %prol.iter1616, 1 ; 2 uses
  %prol.iter1616.cmp.not = icmp eq i64 %prol.iter1616.next, %xtraiter1614
  br i1 %prol.iter1616.cmp.not, label %.prol.loopexit1611, label %.prol.preheader1610, !llvm.loop !2443

.prol.loopexit1611:                               ; preds = %.prol.preheader1610, %bb.ap
  %.sroa.017.0.i.i.i.i25.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.ap ], [ %.sroa.017.0.i.i.i.i25.i.i.i.i.prol, %.prol.preheader1610 ]
  %.sroa.017.0.in.i.i.i.i22.i.i.i.i.unr = phi ptr [ %i.kt, %bb.ap ], [ %i.ku, %.prol.preheader1610 ]
  %.sroa.019.0.in.i.i.i.i23.i.i.i.i.unr = phi i64 [ %i.ki, %bb.ap ], [ %.sroa.019.0.i.i.i.i24.i.i.i.i.prol, %.prol.preheader1610 ]
  %i.kv = icmp ult i64 %.sroa.5.021.i.i.i.i16.i.i.i.i, 7
  br i1 %i.kv, label %.lr.ph.i.i.i.i.i, label %.new1612

.new1612:                                         ; preds = %.prol.loopexit1611, %.new1612
  %.sroa.017.0.in.i.i.i.i22.i.i.i.i = phi ptr [ %i.le, %.new1612 ], [ %.sroa.017.0.in.i.i.i.i22.i.i.i.i.unr, %.prol.loopexit1611 ]
  %.sroa.019.0.in.i.i.i.i23.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i24.i.i.i.i.7, %.new1612 ], [ %.sroa.019.0.in.i.i.i.i23.i.i.i.i.unr, %.prol.loopexit1611 ]
  %.sroa.017.0.i.i.i.i25.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i22.i.i.i.i, align 8, !noalias !2725, !nonnull !7, !noundef !7
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i25.i.i.i.i, i64 896
  %.sroa.017.0.i.i.i.i25.i.i.i.i.1 = load ptr, ptr %i.kw, align 8, !noalias !2725, !nonnull !7, !noundef !7
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i25.i.i.i.i.1, i64 896
  %.sroa.017.0.i.i.i.i25.i.i.i.i.2 = load ptr, ptr %i.kx, align 8, !noalias !2725, !nonnull !7, !noundef !7
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i25.i.i.i.i.2, i64 896
  %.sroa.017.0.i.i.i.i25.i.i.i.i.3 = load ptr, ptr %i.ky, align 8, !noalias !2725, !nonnull !7, !noundef !7
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i25.i.i.i.i.3, i64 896
  %.sroa.017.0.i.i.i.i25.i.i.i.i.4 = load ptr, ptr %i.kz, align 8, !noalias !2725, !nonnull !7, !noundef !7
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i25.i.i.i.i.4, i64 896
  %.sroa.017.0.i.i.i.i25.i.i.i.i.5 = load ptr, ptr %i.la, align 8, !noalias !2725, !nonnull !7, !noundef !7
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i25.i.i.i.i.5, i64 896
  %.sroa.017.0.i.i.i.i25.i.i.i.i.6 = load ptr, ptr %i.lb, align 8, !noalias !2725, !nonnull !7, !noundef !7
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i25.i.i.i.i.6, i64 896
  %.sroa.019.0.i.i.i.i24.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i23.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i25.i.i.i.i.7 = load ptr, ptr %i.lc, align 8, !noalias !2725, !nonnull !7, !noundef !7 ; 2 uses
  %i.ld = icmp eq i64 %.sroa.019.0.i.i.i.i24.i.i.i.i.7, 0
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i25.i.i.i.i.7, i64 896
  br i1 %i.ld, label %.lr.ph.i.i.i.i.i, label %.new1612

.lr.ph.i.i.i.i.i:                                 ; preds = %.prol.loopexit1611, %.new1612, %.thread190.i
  %.sroa.06.0.ph.i.i.i21.i.i.i196.i = phi ptr [ %.sroa.06.0.ph.i.i.i21.i.i.i197.i, %.thread190.i ], [ %i.kh, %.new1612 ], [ %i.kh, %.prol.loopexit1611 ]
  %.sroa.10.0.ph.i.i.i19.i.i.i194.i = phi i64 [ %.sroa.10.0.ph.i.i.i19.i.i.i195.i, %.thread190.i ], [ %i.ko, %.new1612 ], [ %i.ko, %.prol.loopexit1611 ] ; 2 uses
  %.sroa.78.0.i.i.i27.i.i.i.i = phi i64 [ %i.kq, %.thread190.i ], [ 0, %.new1612 ], [ 0, %.prol.loopexit1611 ]
  %.sroa.07.0.i.i.i28.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i21.i.i.i197.i, %.thread190.i ], [ %.sroa.017.0.i.i.i.i25.i.i.i.i.lcssa.unr, %.prol.loopexit1611 ], [ %.sroa.017.0.i.i.i.i25.i.i.i.i.7, %.new1612 ]
  %i.lf = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i19.i.i.i194.i, 11
  call void @llvm.assume(i1 %i.lf)
  %i.lg = getelementptr inbounds nuw [80 x i8], ptr %.sroa.06.0.ph.i.i.i21.i.i.i196.i, i64 %.sroa.10.0.ph.i.i.i19.i.i.i194.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.lj = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  br label %bb.aq

bb.aq:                                            ; preds = %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.21.0.i.i.i.i = phi i64 [ %.sroa.78.0.i.i.i27.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.78.0.i.i.i.i.i.i.i, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i.i ] ; 2 uses
  %.sroa.2742.0.in.i.i.i.i = phi i64 [ %i.hx, %.lr.ph.i.i.i.i.i ], [ %.sroa.2742.0.i.i.i.i, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i.i ]
  %.sroa.7.0.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i28.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.07.0.i.i.i.i.i.i.i, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i.i ] ; 4 uses
  %i.lk = phi ptr [ %i.lg, %.lr.ph.i.i.i.i.i ], [ %i.mw, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i91.i, %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i.i ] ; 2 uses
  %.sroa.2742.0.i.i.i.i = add i64 %.sroa.2742.0.in.i.i.i.i, -1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2726)
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 40
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ll, align 8, !alias.scope !2726, !noalias !2727, !noundef !7 ; 2 uses
  %i.lm = icmp eq i64 %.val1.i.i.i.i.i.i.i, 1
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 32
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ln, align 8, !alias.scope !2726, !noalias !2727 ; 2 uses
  br i1 %i.lm, label %_RNCNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_lens_0B3_.exit.i.i.i.i.i.i, label %_RNCNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_lens_0B3_.exit.thread.i.i.i.i.i.i

_RNCNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_lens_0B3_.exit.i.i.i.i.i.i: ; preds = %bb.aq
  %lhsc.i.i.i.i.i.i.i.i = load i8, ptr %.val.i.i.i.i.i.i.i, align 1, !noalias !2728
  %.not.i.i.i.i7.i.i = icmp eq i8 %lhsc.i.i.i.i.i.i.i.i, 45
  br i1 %.not.i.i.i.i7.i.i, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter11filter_foldRNtCsgy7pbN39oAf_6uu_ptx7WordRefjNCNvB14_26get_auto_max_reference_lens_0NCINvNtB6_3map8map_foldB11_jjNCB1A_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0E0B14_.exit.i.i.i.i.i, label %_RNCNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_lens_0B3_.exit.thread.i.i.i.i.i.i

_RNCNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_lens_0B3_.exit.thread.i.i.i.i.i.i: ; preds = %_RNCNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_lens_0B3_.exit.i.i.i.i.i.i, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !2728
  store i64 1, ptr %i.ax, align 8, !noalias !2728
  store ptr %.val.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !2728
  store i64 %.val1.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !2728
  store i8 0, ptr %i.lh, align 8, !noalias !2728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2729
  store i64 0, ptr %i.aw, align 8, !noalias !2729
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2729
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2729
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2729
  store i64 1610612768, ptr %i.li, align 8, !noalias !2729
  store ptr %i.aw, ptr %i.av, align 8, !noalias !2729
  store ptr @85, ptr %i.lj, align 8, !noalias !2729
  %i.lo = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.av) #28, !noalias !2730
  br i1 %i.lo, label %bb.ar, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i.i, !prof !12

bb.ar:                                            ; preds = %_RNCNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_lens_0B3_.exit.thread.i.i.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @209, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @167, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @211) #27, !noalias !2730
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i.i: ; preds = %_RNCNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_lens_0B3_.exit.thread.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.aw, align 8, !noalias !2731 ; 2 uses
  %.sroa.4.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2731 ; 2 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2731 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2729
  %i.lp = icmp sgt i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.lp)
  %i.lq = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %i.lq, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtCsgy7pbN39oAf_6uu_ptx7WordRefjjNCNvBX_26get_auto_max_reference_lens0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0BX_.exit.i.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i.i.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2732
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtCsgy7pbN39oAf_6uu_ptx7WordRefjjNCNvBX_26get_auto_max_reference_lens0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0BX_.exit.i.i.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtCsgy7pbN39oAf_6uu_ptx7WordRefjjNCNvBX_26get_auto_max_reference_lens0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0BX_.exit.i.i.i.i.i.i: ; preds = %bb.as, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2728
  %..i.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %.sroa.0.07.i.i.i.i.i, i64 %.sroa.5.0.copyload.i.i.i.i.i.i.i.i)
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter11filter_foldRNtCsgy7pbN39oAf_6uu_ptx7WordRefjNCNvB14_26get_auto_max_reference_lens_0NCINvNtB6_3map8map_foldB11_jjNCB1A_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0E0B14_.exit.i.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter11filter_foldRNtCsgy7pbN39oAf_6uu_ptx7WordRefjNCNvB14_26get_auto_max_reference_lens_0NCINvNtB6_3map8map_foldB11_jjNCB1A_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0E0B14_.exit.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtCsgy7pbN39oAf_6uu_ptx7WordRefjjNCNvBX_26get_auto_max_reference_lens0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0BX_.exit.i.i.i.i.i.i, %_RNCNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_lens_0B3_.exit.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i91.i = phi i64 [ %..i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtCsgy7pbN39oAf_6uu_ptx7WordRefjjNCNvBX_26get_auto_max_reference_lens0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0BX_.exit.i.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %_RNCNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_lens_0B3_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.lr = icmp eq i64 %.sroa.2742.0.i.i.i.i, 0
  br i1 %i.lr, label %_RNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_len.exit, label %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i.i.i.i

_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter11filter_foldRNtCsgy7pbN39oAf_6uu_ptx7WordRefjNCNvB14_26get_auto_max_reference_lens_0NCINvNtB6_3map8map_foldB11_jjNCB1A_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0E0B14_.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i.i.i.i) ]
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i.i.i.i, i64 890
  %i.lt = load i16, ptr %i.ls, align 2, !noalias !2733, !noundef !7
  %i.lu = zext i16 %i.lt to i64
  %i.lv = icmp ult i64 %.sroa.21.0.i.i.i.i, %i.lu
  br i1 %i.lv, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i.i.i.i, %bb.at
  %.sroa.0.022.i.i.i.i.i.i.i.i = phi ptr [ %i.lx, %bb.at ], [ %.sroa.7.0.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i.i.i = phi i64 [ %i.ly, %bb.at ], [ 0, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i.i.i.i ] ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i, i64 880
  %i.lx = load ptr, ptr %i.lw, align 8, !noalias !2734, !noundef !7 ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ly = add i64 %.sroa.5.021.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i, i64 888
  %i.ma = load i16, ptr %i.lz, align 8, !noalias !2734 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 890
  %i.mc = load i16, ptr %i.mb, align 2, !noalias !2733, !noundef !7
  %i.md = icmp ult i16 %i.ma, %i.mc
  br i1 %i.md, label %bb.av, label %.lr.ph.i.i.i.i.i.i.i.i

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27, !noalias !2735
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.me = zext i16 %i.ma to i64                   ; 4 uses
  %i.mf = icmp eq i64 %i.ly, 0
  br i1 %i.mf, label %.thread.i.i.i.i, label %bb.aw

.thread.i.i.i.i:                                  ; preds = %bb.av, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i.i.i.i
  %.sroa.06.0.ph.i.i.i72.i.i.i.i = phi ptr [ %i.lx, %bb.av ], [ %.sroa.7.0.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0.ph.i.i.i70.i.i.i.i = phi i64 [ %i.me, %bb.av ], [ %.sroa.21.0.i.i.i.i, %_RNvMsc_NtNtNtCs7tKScEop1B6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTE10init_frontB1L_.exit.i.i.i.i.i ] ; 2 uses
  %i.mg = add nuw nsw i64 %.sroa.10.0.ph.i.i.i70.i.i.i.i, 1
  br label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.mh = icmp ult i16 %i.ma, 11
  call void @llvm.assume(i1 %i.mh)
  %i.mi = getelementptr i8, ptr %i.lx, i64 904
  %i.mj = getelementptr [8 x i8], ptr %i.mi, i64 %i.me ; 2 uses
  %xtraiter1622 = and i64 %i.ly, 7                ; 2 uses
  %lcmp.mod1623.not = icmp eq i64 %xtraiter1622, 0
  br i1 %lcmp.mod1623.not, label %.prol.loopexit1619, label %.prol.preheader1618

.prol.preheader1618:                              ; preds = %bb.aw, %.prol.preheader1618
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.mk, %.prol.preheader1618 ], [ %i.mj, %bb.aw ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader1618 ], [ %i.ly, %bb.aw ]
  %prol.iter1624 = phi i64 [ %prol.iter1624.next, %.prol.preheader1618 ], [ 0, %bb.aw ]
  %.sroa.019.0.i.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.prol, align 8, !noalias !2736, !nonnull !7, !noundef !7 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.prol, i64 896 ; 2 uses
  %prol.iter1624.next = add i64 %prol.iter1624, 1 ; 2 uses
  %prol.iter1624.cmp.not = icmp eq i64 %prol.iter1624.next, %xtraiter1622
  br i1 %prol.iter1624.cmp.not, label %.prol.loopexit1619, label %.prol.preheader1618, !llvm.loop !2468

.prol.loopexit1619:                               ; preds = %.prol.preheader1618, %bb.aw
  %.sroa.017.0.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.aw ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader1618 ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.mj, %bb.aw ], [ %i.mk, %.prol.preheader1618 ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ly, %bb.aw ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.prol, %.prol.preheader1618 ]
  %i.ml = icmp ult i64 %.sroa.5.021.i.i.i.i.i.i.i.i, 7
  br i1 %i.ml, label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i.i, label %.new1620

.new1620:                                         ; preds = %.prol.loopexit1619, %.new1620
  %.sroa.017.0.in.i.i.i.i.i.i.i.i = phi ptr [ %i.mu, %.new1620 ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit1619 ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.7, %.new1620 ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.unr, %.prol.loopexit1619 ]
  %.sroa.017.0.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i, align 8, !noalias !2736, !nonnull !7, !noundef !7
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.mm, align 8, !noalias !2736, !nonnull !7, !noundef !7
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.1, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.mn, align 8, !noalias !2736, !nonnull !7, !noundef !7
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.2, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.mo, align 8, !noalias !2736, !nonnull !7, !noundef !7
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.3, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.mp, align 8, !noalias !2736, !nonnull !7, !noundef !7
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.4, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.mq, align 8, !noalias !2736, !nonnull !7, !noundef !7
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.5, i64 896
  %.sroa.017.0.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.mr, align 8, !noalias !2736, !nonnull !7, !noundef !7
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.6, i64 896
  %.sroa.019.0.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.ms, align 8, !noalias !2736, !nonnull !7, !noundef !7 ; 2 uses
  %i.mt = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.7, 0
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.7, i64 896
  br i1 %i.mt, label %_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i.i, label %.new1620

_RNvXsk_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefNtNtB7_7set_val9SetValZSTENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB15_.exit.i.i.i.i: ; preds = %.prol.loopexit1619, %.new1620, %.thread.i.i.i.i
  %.sroa.06.0.ph.i.i.i71.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i72.i.i.i.i, %.thread.i.i.i.i ], [ %i.lx, %.new1620 ], [ %i.lx, %.prol.loopexit1619 ]
  %.sroa.10.0.ph.i.i.i69.i.i.i.i = phi i64 [ %.sroa.10.0.ph.i.i.i70.i.i.i.i, %.thread.i.i.i.i ], [ %i.me, %.new1620 ], [ %i.me, %.prol.loopexit1619 ] ; 2 uses
  %.sroa.78.0.i.i.i.i.i.i.i = phi i64 [ %i.mg, %.thread.i.i.i.i ], [ 0, %.new1620 ], [ 0, %.prol.loopexit1619 ]
  %.sroa.07.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i72.i.i.i.i, %.thread.i.i.i.i ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit1619 ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.7, %.new1620 ]
  %i.mv = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i69.i.i.i.i, 11
  call void @llvm.assume(i1 %i.mv)
  %i.mw = getelementptr inbounds nuw [80 x i8], ptr %.sroa.06.0.ph.i.i.i71.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i69.i.i.i.i
  br label %bb.aq

_RNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_len.exit: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkRNtCsgy7pbN39oAf_6uu_ptx7WordRefQNCNvB1f_26get_auto_max_reference_lens_0E0B1f_.exit.i.i.i.i.i.i, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter11filter_foldRNtCsgy7pbN39oAf_6uu_ptx7WordRefjNCNvB14_26get_auto_max_reference_lens_0NCINvNtB6_3map8map_foldB11_jjNCB1A_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0E0B14_.exit.i.i.i.i.i, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefENCNvB1O_26get_auto_max_reference_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2U_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1O_.exit.i, %bb.al
  %.sroa.0.0.i93.i = phi i64 [ 0, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3set4IterNtCsgy7pbN39oAf_6uu_ptx7WordRefENCNvB1O_26get_auto_max_reference_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2U_6max_by4foldjNvYjNtNtBc_3cmp3Ord3cmpE0EB1O_.exit.i ], [ %.sroa.5.0.copyload.i.i.i.i, %bb.al ], [ %.sroa.0.0.i.i.i.i.i91.i, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter11filter_foldRNtCsgy7pbN39oAf_6uu_ptx7WordRefjNCNvB14_26get_auto_max_reference_lens_0NCINvNtB6_3map8map_foldB11_jjNCB1A_s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6max_by4foldjNvYjNtNtBa_3cmp3Ord3cmpE0E0E0B14_.exit.i.i.i.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4find5checkRNtCsgy7pbN39oAf_6uu_ptx7WordRefQNCNvB1f_26get_auto_max_reference_lens_0E0B1f_.exit.i.i.i.i.i.i ]
  %i.mx = add i64 %.sroa.0.0.i.i, 1
  %i.my = add i64 %i.mx, %.sroa.0.0.i93.i
  br label %bb.ax

bb.ax:                                            ; preds = %bb.j, %_RNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_len.exit
  %.sroa.03.0 = phi i64 [ %i.my, %_RNvCsgy7pbN39oAf_6uu_ptx26get_auto_max_reference_len.exit ], [ 0, %bb.j ]
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.na = load i64, ptr %i.mz, align 8, !noundef !7
  %i.nb = call i64 @llvm.usub.sat.i64(i64 %i.na, i64 %.sroa.03.0)
  store i64 %i.nb, ptr %i.mz, align 8
  br label %.preheader

.lr.ph:                                           ; preds = %.preheader
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.nd = load ptr, ptr %i.nc, align 8, !nonnull !7 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nf = load i64, ptr %i.ne, align 8
  %.fr478 = freeze i64 %i.nf                      ; 2 uses
  %.idx = mul nuw nsw i64 %.fr478, 80
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.idx
  %i.nh = icmp eq i64 %.fr478, 0
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 113 ; 4 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 114 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 7 uses
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 5 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.nn = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.no = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.42.0..sroa_idx.i105 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 117
  %.sroa.4.0..sroa_idx.i143 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5.0..sroa_idx.i144 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.49.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4.0..sroa_idx1.i148 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6.0..sroa_idx.i150 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.nq = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.43.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.64.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.nr = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.46.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %.sroa.67.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %.sroa.49.0..sroa_idx10.i163 = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %.sroa.611.0..sroa_idx.i165 = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.nt = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %.sroa.413.0..sroa_idx.i168 = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %.sroa.614.0..sroa_idx.i170 = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %.sroa.424.0..sroa_idx.i172 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.428.0..sroa_idx.i173 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.nv = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.432.0..sroa_idx.i174 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.nw = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.436.0..sroa_idx.i175 = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.nx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.440.0..sroa_idx.i176 = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ny = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.456.0..sroa_idx.i198 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.od = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.5.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.4.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.oe = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.64.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.of = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.og = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %.sroa.49.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.oh = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %.sroa.424.0..sroa_idx.i137 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.428.0..sroa_idx.i138 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.oj = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ok = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ol = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.om = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.on = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.oo = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.op = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.t, i64 8
end_hunk_1
begin_hunk_2_@_RNvMs_Csgy7pbN39oAf_6uu_ptxNtB4_10WordFilter3new:bb.a
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gj, i64 noundef %i.ge, i64 noundef range(i64 1, -9223372036854775807) 16) #28, !noalias !4039
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetNtNtCs7tKScEop1B6_5alloc6string6StringEECsgy7pbN39oAf_6uu_ptx.exit

bb.au:                                            ; preds = %_RNvCsgy7pbN39oAf_6uu_ptx21read_char_filter_file.exit
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.647.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12242, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12242)
  store ptr %.sroa.0239.0.copyload, ptr %i.s, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %.sroa.7240.0.copyload, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.sroa.11241.0.copyload, ptr %.sroa.546.0..sroa_idx, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.gl = load i8, ptr %i.gk, align 8, !range !16, !noundef !7
  %i.gm = trunc nuw i8 %i.gl to i1
  %i.gn = ptrtoint ptr %.sroa.7240.0.copyload to i64
  br i1 %i.gm, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.go = ptrtoint ptr %.sroa.11241.0.copyload to i64
  %i.gp = load i64, ptr %.sroa.647.0..sroa_idx, align 8, !alias.scope !4040, !noalias !4041, !noundef !7
  %i.gq = icmp eq i64 %i.gp, 0
  %.sroa.0.1.i.i = select i1 %i.gq, i64 3, i64 2  ; 2 uses
  %i.gr = icmp ugt i64 %.sroa.0.1.i.i, %i.go
  br i1 %i.gr, label %bb.aw, label %_RINvXs8_NtCs7GWc7oqutCf_9hashbrown3setINtB6_7HashSetcNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendcE6extendAcj3_ECsgy7pbN39oAf_6uu_ptx.exit, !prof !12

bb.aw:                                            ; preds = %bb.av
  %i.gs = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.gt = call { i64, i64 } @_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTcuEE14reserve_rehashNCINvNtB8_3map11make_hashercuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE0ECsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s, i64 noundef %.sroa.0.1.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gs, i1 noundef zeroext true) #31, !noalias !4041 ; 0 uses
  br label %_RINvXs8_NtCs7GWc7oqutCf_9hashbrown3setINtB6_7HashSetcNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendcE6extendAcj3_ECsgy7pbN39oAf_6uu_ptx.exit

_RINvXs8_NtCs7GWc7oqutCf_9hashbrown3setINtB6_7HashSetcNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendcE6extendAcj3_ECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %bb.av, %bb.aw
  call fastcc void @_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapcuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE6insertCsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s, i32 noundef range(i32 0, 1114112) 32) #28
  call fastcc void @_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapcuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE6insertCsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s, i32 noundef range(i32 0, 1114112) 9) #28
  call fastcc void @_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapcuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateE6insertCsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s, i32 noundef range(i32 0, 1114112) 10) #28
  %.sroa.0245.0.copyload.pre = load ptr, ptr %i.s, align 8
  %.sroa.4246.0.copyload.pre = load i64, ptr %.sroa.445.0..sroa_idx, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %_RINvXs8_NtCs7GWc7oqutCf_9hashbrown3setINtB6_7HashSetcNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendcE6extendAcj3_ECsgy7pbN39oAf_6uu_ptx.exit, %bb.au
  %.sroa.4246.0.copyload = phi i64 [ %.sroa.4246.0.copyload.pre, %_RINvXs8_NtCs7GWc7oqutCf_9hashbrown3setINtB6_7HashSetcNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendcE6extendAcj3_ECsgy7pbN39oAf_6uu_ptx.exit ], [ %i.gn, %bb.au ]
  %.sroa.0245.0.copyload = phi ptr [ %.sroa.0245.0.copyload.pre, %_RINvXs8_NtCs7GWc7oqutCf_9hashbrown3setINtB6_7HashSetcNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendcE6extendAcj3_ECsgy7pbN39oAf_6uu_ptx.exit ], [ %.sroa.0239.0.copyload, %bb.au ]
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.647.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.m, %bb.p, %bb.ax
  %.sroa.10233.sroa.5.0 = phi i64 [ %.sroa.5.sroa.4.0.copyload, %bb.ax ], [ undef, %bb.p ], [ undef, %bb.m ] ; 3 uses
  %.sroa.9230.0 = phi i64 [ %.sroa.4246.0.copyload, %bb.ax ], [ undef, %bb.p ], [ undef, %bb.m ] ; 8 uses
  %.sroa.0227.0 = phi ptr [ %.sroa.0245.0.copyload, %bb.ax ], [ null, %bb.p ], [ null, %bb.m ] ; 8 uses
  %i.gu = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 11) #28
  br i1 %i.gu, label %bb.be, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringE6filterNCNvMs_Csgy7pbN39oAf_6uu_ptxNtB1A_10WordFilter3new0EB1A_.exit.thread

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetNtNtCs7tKScEop1B6_5alloc6string6StringEECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %bb.at, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs7tKScEop1B6_5alloc6string6StringuEECsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i, %bb.ao, %bb.n
  %i.gv = icmp eq i64 %.sroa.3.0, 0
  br i1 %i.gv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetNtNtCs7tKScEop1B6_5alloc6string6StringEECsgy7pbN39oAf_6uu_ptx.exit167, label %bb.az

bb.az:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetNtNtCs7tKScEop1B6_5alloc6string6StringEECsgy7pbN39oAf_6uu_ptx.exit
  %i.gw = icmp eq i64 %.sroa.5.sroa.0.0, 0
  br i1 %i.gw, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs7tKScEop1B6_5alloc6string6StringuEECsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i162, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.val3.i.i.i.i.i.i.i.i149 = load <16 x i8>, ptr %.sroa.07.0, align 16, !noalias !4042
  %i.gx = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i149, splat (i8 -1)
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 16
  %i.gz = bitcast <16 x i1> %i.gx to i16
  br label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtCs7tKScEop1B6_5alloc6string6StringuEECsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i161, %bb.ba
  %.sroa.06.017.i.i.i.i.i.i.i150 = phi ptr [ %.sroa.07.0, %bb.ba ], [ %.sroa.06.1.i.i.i.i.i.i.i157, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtCs7tKScEop1B6_5alloc6string6StringuEECsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i161 ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i.i151 = phi ptr [ %i.gy, %bb.ba ], [ %.sroa.6.1.i.i.i.i.i.i.i156, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtCs7tKScEop1B6_5alloc6string6StringuEECsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i161 ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i.i152 = phi i16 [ %i.gz, %bb.ba ], [ %i.hi, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtCs7tKScEop1B6_5alloc6string6StringuEECsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i161 ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i.i153 = phi i64 [ %.sroa.5.sroa.0.0, %bb.ba ], [ %i.hl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtCs7tKScEop1B6_5alloc6string6StringuEECsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i161 ]
  %.not11.i.i.i.i.i.i.i.i154 = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i.i152, 0
  br i1 %.not11.i.i.i.i.i.i.i.i154, label %.lr.ph.i.i.i.i.i.i.i.i163, label %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs7tKScEop1B6_5alloc6string6StringuEE9next_implKb0_ECsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i155

.lr.ph.i.i.i.i.i.i.i.i163:                        ; preds = %bb.bb, %.lr.ph.i.i.i.i.i.i.i.i163
  %i.ha = phi ptr [ %i.he, %.lr.ph.i.i.i.i.i.i.i.i163 ], [ %.sroa.6.016.i.i.i.i.i.i.i151, %bb.bb ] ; 2 uses
  %i.hb = phi ptr [ %i.hd, %.lr.ph.i.i.i.i.i.i.i.i163 ], [ %.sroa.06.017.i.i.i.i.i.i.i150, %bb.bb ]
  %.val9.i.i.i.i.i.i.i.i164 = load <16 x i8>, ptr %i.ha, align 16, !noalias !4043
  %i.hc = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i.i164, splat (i8 -1)
  %i.hd = getelementptr inbounds i8, ptr %i.hb, i64 -384 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i165 = bitcast <16 x i1> %i.hc to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i166 = icmp eq i16 %.cast.i.i.i.i.i.i.i.i165, 0
  br i1 %.not.i.i.i.i.i.i.i.i166, label %.lr.ph.i.i.i.i.i.i.i.i163, label %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs7tKScEop1B6_5alloc6string6StringuEE9next_implKb0_ECsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i155

_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs7tKScEop1B6_5alloc6string6StringuEE9next_implKb0_ECsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i155: ; preds = %.lr.ph.i.i.i.i.i.i.i.i163, %bb.bb
  %.sroa.6.1.i.i.i.i.i.i.i156 = phi ptr [ %.sroa.6.016.i.i.i.i.i.i.i151, %bb.bb ], [ %i.he, %.lr.ph.i.i.i.i.i.i.i.i163 ]
  %.sroa.06.1.i.i.i.i.i.i.i157 = phi ptr [ %.sroa.06.017.i.i.i.i.i.i.i150, %bb.bb ], [ %i.hd, %.lr.ph.i.i.i.i.i.i.i.i163 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i158 = phi i16 [ %.sroa.87.015.i.i.i.i.i.i.i152, %bb.bb ], [ %.cast.i.i.i.i.i.i.i.i165, %.lr.ph.i.i.i.i.i.i.i.i163 ] ; 3 uses
  %i.hf = add i16 %.lcssa.i.i.i.i.i.i.i.i158, -1
  %i.hg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i158, i1 true)
  %i.hh = zext nneg i16 %i.hg to i64
  %i.hi = and i16 %i.hf, %.lcssa.i.i.i.i.i.i.i.i158
  %i.hj = sub nsw i64 0, %i.hh
  %i.hk = getelementptr inbounds [24 x i8], ptr %.sroa.06.1.i.i.i.i.i.i.i157, i64 %i.hj ; 2 uses
  %i.hl = add i64 %.sroa.108.014.i.i.i.i.i.i.i153, -1 ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %i.hk, i64 -24
  %.val.i.i.i.i.i.i.i159 = load i64, ptr %i.hm, align 8, !range !14, !alias.scope !4044, !noalias !4045, !noundef !7 ; 2 uses
  %i.hn = icmp eq i64 %.val.i.i.i.i.i.i.i159, 0
  br i1 %i.hn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtCs7tKScEop1B6_5alloc6string6StringuEECsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i161, label %bb.bc

bb.bc:                                            ; preds = %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs7tKScEop1B6_5alloc6string6StringuEE9next_implKb0_ECsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i155
  %i.ho = getelementptr i8, ptr %i.hk, i64 -16
  %.val5.i.i.i.i.i.i.i160 = load ptr, ptr %i.ho, align 8, !noalias !4045, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i160, i64 noundef %.val.i.i.i.i.i.i.i159, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !4046
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtCs7tKScEop1B6_5alloc6string6StringuEECsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i161

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtCs7tKScEop1B6_5alloc6string6StringuEECsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i161: ; preds = %bb.bc, %_RINvMsi_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs7tKScEop1B6_5alloc6string6StringuEE9next_implKb0_ECsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i155
  %i.hp = icmp eq i64 %i.hl, 0
  br i1 %i.hp, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs7tKScEop1B6_5alloc6string6StringuEECsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i162, label %bb.bb

_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs7tKScEop1B6_5alloc6string6StringuEECsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i162: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTNtNtCs7tKScEop1B6_5alloc6string6StringuEECsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i161, %bb.az
  %i.hq = mul i64 %.sroa.3.0, 24
  %i.hr = icmp slt i64 %.sroa.3.0, 768614336404564650
  call void @llvm.assume(i1 %i.hr)
  %i.hs = and i64 %i.hq, -16                      ; 2 uses
  %i.ht = add i64 %i.hs, 32                       ; 2 uses
  %i.hu = add nsw i64 %.sroa.3.0, 17
  %i.hv = add i64 %i.hu, %i.ht                    ; 4 uses
  %i.hw = icmp uge i64 %i.hv, %i.ht
  %i.hx = icmp ult i64 %i.hv, 9223372036854775793
  call void @llvm.assume(i1 %i.hw)
  call void @llvm.assume(i1 %i.hx)
  %i.hy = icmp eq i64 %i.hv, 0
  br i1 %i.hy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetNtNtCs7tKScEop1B6_5alloc6string6StringEECsgy7pbN39oAf_6uu_ptx.exit167, label %bb.bd

bb.bd:                                            ; preds = %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs7tKScEop1B6_5alloc6string6StringuEECsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i162
  %i.hz = sub i64 -32, %i.hs
  %i.ia = getelementptr inbounds i8, ptr %.sroa.07.0, i64 %i.hz
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ia, i64 noundef %i.hv, i64 noundef range(i64 1, -9223372036854775807) 16) #28, !noalias !4047
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetNtNtCs7tKScEop1B6_5alloc6string6StringEECsgy7pbN39oAf_6uu_ptx.exit167

bb.be:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 11) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !4048)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @194, ptr %i.d, align 8, !noalias !4049
  %i.ib = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 11, ptr %i.ib, align 8, !noalias !4049
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4049
  %i.ic = load i64, ptr %i.n, align 8, !range !19, !alias.scope !4048, !noalias !4050, !noundef !7
  %.not.i168 = icmp eq i64 %i.ic, 2
  br i1 %.not.i168, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgy7pbN39oAf_6uu_ptx.exit, label %bb.bf, !prof !11

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.n, i64 40, i1 false), !noalias !4050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4049
  store ptr %i.d, ptr %i.b, align 8, !noalias !4049
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsgy7pbN39oAf_6uu_ptx, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4049
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.id, align 8, !noalias !4049
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !4049
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #27, !noalias !4048
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %bb.be
  %i.ie = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !alias.scope !4048, !noalias !4050, !align !9, !noundef !7 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not.i169 = icmp eq ptr %i.if, null
  br i1 %.not.i169, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringE6filterNCNvMs_Csgy7pbN39oAf_6uu_ptxNtB1A_10WordFilter3new0EB1A_.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgy7pbN39oAf_6uu_ptx.exit
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load i64, ptr %i.ig, align 8, !alias.scope !4051, !noundef !7 ; 2 uses
  %i.ii = icmp sgt i64 %i.ih, -1
  call void @llvm.assume(i1 %i.ii)
  %.not3.i = icmp eq i64 %i.ih, 0
  br i1 %.not3.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringE6filterNCNvMs_Csgy7pbN39oAf_6uu_ptxNtB1A_10WordFilter3new0EB1A_.exit.thread, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringE6filterNCNvMs_Csgy7pbN39oAf_6uu_ptxNtB1A_10WordFilter3new0EB1A_.exit

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringE6filterNCNvMs_Csgy7pbN39oAf_6uu_ptxNtB1A_10WordFilter3new0EB1A_.exit.thread: ; preds = %bb.bg, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsgy7pbN39oAf_6uu_ptx.exit, %bb.ay
  %.not125 = icmp eq ptr %.sroa.0227.0, null
  br i1 %.not125, label %bb.bv, label %.split

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringE6filterNCNvMs_Csgy7pbN39oAf_6uu_ptxNtB1A_10WordFilter3new0EB1A_.exit: ; preds = %bb.bg
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.if) #28
  %.sroa.048.0.copyload = load i64, ptr %i.m, align 8
  store i64 %.sroa.048.0.copyload, ptr %i.q, align 8
  %.sroa.7.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx50, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  br label %bb.cc

.split:                                           ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringE6filterNCNvMs_Csgy7pbN39oAf_6uu_ptxNtB1A_10WordFilter3new0EB1A_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %.val3.i.i.i = load <16 x i8>, ptr %.sroa.0227.0, align 16, !noalias !4052
  %i.ij = icmp eq i64 %.sroa.9230.0, 0            ; 2 uses
  br i1 %i.ij, label %_RNvXsE_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapcuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12IntoIterator9into_iterCsgy7pbN39oAf_6uu_ptx.exit, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %.split
  %i.ik = icmp slt i64 %.sroa.9230.0, 4611686018427387900
  call void @llvm.assume(i1 %i.ik)
  %i.il = shl i64 %.sroa.9230.0, 2
  %i.im = and i64 %i.il, -16                      ; 2 uses
  %3 = add i64 %i.im, 16                          ; 2 uses
  %i.in = add nsw i64 %.sroa.9230.0, 17
  %i.io = add i64 %i.in, %3                       ; 3 uses
  %4 = icmp uge i64 %i.io, %3
  call void @llvm.assume(i1 %4)
  %5 = icmp ult i64 %i.io, 9223372036854775793
  call void @llvm.assume(i1 %5)
  %i.ip = sub nuw nsw i64 -16, %i.im
  %i.iq = getelementptr inbounds i8, ptr %.sroa.0227.0, i64 %i.ip
  br label %_RNvXsE_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapcuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12IntoIterator9into_iterCsgy7pbN39oAf_6uu_ptx.exit

_RNvXsE_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapcuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12IntoIterator9into_iterCsgy7pbN39oAf_6uu_ptx.exit: ; preds = %.split, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %.sroa.49.0.i.i = phi i64 [ undef, %.split ], [ %i.io, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ] ; 2 uses
  %.sroa.510.0.i.i = phi ptr [ undef, %.split ], [ %i.iq, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ] ; 2 uses
  %.sink.i.i.i = phi i64 [ 0, %.split ], [ 16, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4053
  store i64 0, ptr %i.a, align 8, !noalias !4053
  %.sroa.4.0..sroa_idx.i172 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i172, align 8, !noalias !4053
  %.sroa.5.0..sroa_idx.i173 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i173, align 8, !noalias !4053
  call void @llvm.experimental.noalias.scope.decl(metadata !4054)
  %.not.i174 = icmp eq i64 %.sroa.10233.sroa.5.0, 0
  br i1 %.not.i174, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !prof !11

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i.i: ; preds = %_RNvXsE_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapcuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12IntoIterator9into_iterCsgy7pbN39oAf_6uu_ptx.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !4055)
  call void @llvm.experimental.noalias.scope.decl(metadata !4056)
  call void @llvm.experimental.noalias.scope.decl(metadata !4057)
  br label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvXsE_NtCs7GWc7oqutCf_9hashbrown3mapINtB5_7HashMapcuNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12IntoIterator9into_iterCsgy7pbN39oAf_6uu_ptx.exit
  %i.ir = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.is = bitcast <16 x i1> %i.ir to i16
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0227.0, i64 16
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %.sroa.10233.sroa.5.0, i64 noundef 1, i64 noundef 1) #28, !noalias !4058
  br label %bb.bh

bb.bh:                                            ; preds = %_RNCINvXss_NtCs7GWc7oqutCf_9hashbrown3setINtB8_8IntoItercENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduNCINvNvBT_8for_each4callcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB2s_6StringINtNtBX_7collect6ExtendcE6extendINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set8IntoItercEE0E0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i = phi ptr [ %i.it, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa12.i.i.i.i.i.i, %_RNCINvXss_NtCs7GWc7oqutCf_9hashbrown3setINtB8_8IntoItercENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduNCINvNvBT_8for_each4callcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB2s_6StringINtNtBX_7collect6ExtendcE6extendINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set8IntoItercEE0E0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i ] ; 2 uses
  %.lcssa610.i.i.i.i.i.i = phi ptr [ %.sroa.0227.0, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa69.i.i.i.i.i.i, %_RNCINvXss_NtCs7GWc7oqutCf_9hashbrown3setINtB8_8IntoItercENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduNCINvNvBT_8for_each4callcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB2s_6StringINtNtBX_7collect6ExtendcE6extendINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set8IntoItercEE0E0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i ] ; 2 uses
  %i.iu = phi i16 [ %i.is, %.lr.ph.i.i.i.i.i.i ], [ %i.je, %_RNCINvXss_NtCs7GWc7oqutCf_9hashbrown3setINtB8_8IntoItercENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduNCINvNvBT_8for_each4callcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB2s_6StringINtNtBX_7collect6ExtendcE6extendINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set8IntoItercEE0E0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i ] ; 2 uses
  %i.iv = phi i64 [ %.sroa.10233.sroa.5.0, %.lr.ph.i.i.i.i.i.i ], [ %i.jh, %_RNCINvXss_NtCs7GWc7oqutCf_9hashbrown3setINtB8_8IntoItercENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduNCINvNvBT_8for_each4callcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB2s_6StringINtNtBX_7collect6ExtendcE6extendINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set8IntoItercEE0E0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i.i175 = icmp eq i16 %i.iu, 0
  br i1 %.not11.i.i.i.i.i.i.i.i175, label %.lr.ph.i.i.i.i.i.i.i.i177, label %._crit_edge18.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i177:                        ; preds = %bb.bh, %.lr.ph.i.i.i.i.i.i.i.i177
  %i.iw = phi ptr [ %i.ja, %.lr.ph.i.i.i.i.i.i.i.i177 ], [ %.lcssa13.i.i.i.i.i.i, %bb.bh ] ; 2 uses
  %i.ix = phi ptr [ %i.iz, %.lr.ph.i.i.i.i.i.i.i.i177 ], [ %.lcssa610.i.i.i.i.i.i, %bb.bh ]
  %.val9.i.i.i.i.i.i.i.i178 = load <16 x i8>, ptr %i.iw, align 16, !noalias !4059
  %i.iy = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i.i178, splat (i8 -1)
  %i.iz = getelementptr inbounds i8, ptr %i.ix, i64 -64 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i179 = bitcast <16 x i1> %i.iy to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i180 = icmp eq i16 %.cast.i.i.i.i.i.i.i.i179, 0
  br i1 %.not.i.i.i.i.i.i.i.i180, label %.lr.ph.i.i.i.i.i.i.i.i177, label %._crit_edge18.i.i.i.i.i.i.i.i

._crit_edge18.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i177, %bb.bh
  %.lcssa12.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i, %bb.bh ], [ %i.ja, %.lr.ph.i.i.i.i.i.i.i.i177 ]
  %.lcssa69.i.i.i.i.i.i = phi ptr [ %.lcssa610.i.i.i.i.i.i, %bb.bh ], [ %i.iz, %.lr.ph.i.i.i.i.i.i.i.i177 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i176 = phi i16 [ %i.iu, %bb.bh ], [ %.cast.i.i.i.i.i.i.i.i179, %.lr.ph.i.i.i.i.i.i.i.i177 ] ; 3 uses
  %i.jb = add i16 %.lcssa.i.i.i.i.i.i.i.i176, -1
  %i.jc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i176, i1 true)
  %i.jd = zext nneg i16 %i.jc to i64
  %i.je = and i16 %i.jb, %.lcssa.i.i.i.i.i.i.i.i176
  %i.jf = sub nsw i64 0, %i.jd
  %i.jg = getelementptr inbounds [4 x i8], ptr %.lcssa69.i.i.i.i.i.i, i64 %i.jf
  %i.jh = add i64 %i.iv, -1                       ; 2 uses
  %i.ji = getelementptr inbounds i8, ptr %i.jg, i64 -4
  %i.jj = load i32, ptr %i.ji, align 4, !range !25, !noalias !4060, !noundef !7 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4061)
  %i.jk = load i64, ptr %.sroa.5.0..sroa_idx.i173, align 8, !alias.scope !4062, !noalias !4063, !noundef !7 ; 5 uses
  %i.jl = icmp sgt i64 %i.jk, -1
  call void @llvm.assume(i1 %i.jl)
  %i.jm = icmp samesign ult i32 %i.jj, 128        ; 2 uses
  br i1 %i.jm, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge18.i.i.i.i.i.i.i.i
  %i.jn = icmp samesign ult i32 %i.jj, 2048
  br i1 %i.jn, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jo = icmp samesign ult i32 %i.jj, 65536
  %..i.i.i.i.i.i.i.i.i.i = select i1 %i.jo, i64 3, i64 4
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %._crit_edge18.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.bi ], [ %..i.i.i.i.i.i.i.i.i.i, %bb.bj ], [ 1, %._crit_edge18.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.jp = load i64, ptr %i.a, align 8, !range !14, !alias.scope !4064, !noalias !4063, !noundef !7
  %i.jq = sub nsw i64 %i.jp, %i.jk
  %i.jr = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %i.jq
  br i1 %i.jr, label %bb.bl, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i.i.i.i, !prof !12

bb.bl:                                            ; preds = %bb.bk
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.jk, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1) #28, !noalias !4063
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i.i.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bl, %bb.bk
  %i.js = load ptr, ptr %.sroa.4.0..sroa_idx.i172, align 8, !alias.scope !4062, !noalias !4063, !nonnull !7, !noundef !7 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.jk ; 10 uses
  br i1 %i.jm, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i.i.i.i
  %i.ju = icmp samesign ult i32 %i.jj, 2048
  %i.jv = trunc i32 %i.jj to i8
  %i.jw = and i8 %i.jv, 63
  %i.jx = or disjoint i8 %i.jw, -128              ; 3 uses
  %i.jy = lshr i32 %i.jj, 6
  %i.jz = trunc i32 %i.jy to i8                   ; 2 uses
  %i.ka = and i8 %i.jz, 63
  %i.kb = or disjoint i8 %i.ka, -128              ; 2 uses
  %i.kc = lshr i32 %i.jj, 12
  %i.kd = trunc i32 %i.kc to i8                   ; 2 uses
  %i.ke = and i8 %i.kd, 63
  %i.kf = or disjoint i8 %i.ke, -128
  %i.kg = lshr i32 %i.jj, 18
  %i.kh = trunc nuw nsw i32 %i.kg to i8
  %i.ki = or disjoint i8 %i.kh, -16
  br i1 %i.ju, label %bb.bo, label %bb.bp

bb.bn:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i.i.i.i.i
  %i.kj = trunc nuw nsw i32 %i.jj to i8
  store i8 %i.kj, ptr %i.jt, align 1, !noalias !4065
  br label %_RNCINvXss_NtCs7GWc7oqutCf_9hashbrown3setINtB8_8IntoItercENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduNCINvNvBT_8for_each4callcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB2s_6StringINtNtBX_7collect6ExtendcE6extendINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set8IntoItercEE0E0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.kk = or disjoint i8 %i.jz, -64
  store i8 %i.kk, ptr %i.jt, align 1, !noalias !4065
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  store i8 %i.jx, ptr %i.kl, align 1, !noalias !4065
  br label %_RNCINvXss_NtCs7GWc7oqutCf_9hashbrown3setINtB8_8IntoItercENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduNCINvNvBT_8for_each4callcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB2s_6StringINtNtBX_7collect6ExtendcE6extendINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set8IntoItercEE0E0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bm
  %i.km = icmp samesign ult i32 %i.jj, 65536
  br i1 %i.km, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.kn = or disjoint i8 %i.kd, -32
  store i8 %i.kn, ptr %i.jt, align 1, !noalias !4065
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  store i8 %i.kb, ptr %i.ko, align 1, !noalias !4065
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jt, i64 2
  store i8 %i.jx, ptr %i.kp, align 1, !noalias !4065
  br label %_RNCINvXss_NtCs7GWc7oqutCf_9hashbrown3setINtB8_8IntoItercENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduNCINvNvBT_8for_each4callcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB2s_6StringINtNtBX_7collect6ExtendcE6extendINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set8IntoItercEE0E0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i

bb.br:                                            ; preds = %bb.bp
  store i8 %i.ki, ptr %i.jt, align 1, !noalias !4065
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  store i8 %i.kf, ptr %i.kq, align 1, !noalias !4065
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jt, i64 2
  store i8 %i.kb, ptr %i.kr, align 1, !noalias !4065
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jt, i64 3
  store i8 %i.jx, ptr %i.ks, align 1, !noalias !4065
  br label %_RNCINvXss_NtCs7GWc7oqutCf_9hashbrown3setINtB8_8IntoItercENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduNCINvNvBT_8for_each4callcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB2s_6StringINtNtBX_7collect6ExtendcE6extendINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set8IntoItercEE0E0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i

_RNCINvXss_NtCs7GWc7oqutCf_9hashbrown3setINtB8_8IntoItercENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduNCINvNvBT_8for_each4callcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB2s_6StringINtNtBX_7collect6ExtendcE6extendINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set8IntoItercEE0E0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i: ; preds = %bb.br, %bb.bq, %bb.bo, %bb.bn
  %i.kt = add nuw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %i.jk ; 2 uses
  store i64 %i.kt, ptr %.sroa.5.0..sroa_idx.i173, align 8, !alias.scope !4062, !noalias !4063
  %i.ku = icmp eq i64 %i.jh, 0
  br i1 %i.ku, label %._crit_edge.i.i.i.i.i.i, label %bb.bh

._crit_edge.i.i.i.i.i.i:                          ; preds = %_RNCINvXss_NtCs7GWc7oqutCf_9hashbrown3setINtB8_8IntoItercENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduNCINvNvBT_8for_each4callcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB2s_6StringINtNtBX_7collect6ExtendcE6extendINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set8IntoItercEE0E0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i.i
  %.sroa.6250.0.copyload392 = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i.i ], [ %i.kt, %_RNCINvXss_NtCs7GWc7oqutCf_9hashbrown3setINtB8_8IntoItercENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduNCINvNvBT_8for_each4callcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB2s_6StringINtNtBX_7collect6ExtendcE6extendINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set8IntoItercEE0E0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i ]
  %.sroa.4249.0.copyload390 = phi ptr [ inttoptr (i64 1 to ptr), %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i.i ], [ %i.js, %_RNCINvXss_NtCs7GWc7oqutCf_9hashbrown3setINtB8_8IntoItercENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4folduNCINvNvBT_8for_each4callcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB2s_6StringINtNtBX_7collect6ExtendcE6extendINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set8IntoItercEE0E0E0Csgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i ]
  %i.kv = icmp eq i64 %.sroa.49.0.i.i, 0
  %or.cond.i.i.i.i.i = or i1 %i.ij, %i.kv
  br i1 %or.cond.i.i.i.i.i, label %_RINvXs5_NtCs7tKScEop1B6_5alloc6stringNtB6_6StringINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set8IntoItercEECsgy7pbN39oAf_6uu_ptx.exit, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.510.0.i.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.510.0.i.i, i64 noundef %.sroa.49.0.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i) #28, !noalias !4066
  %.sroa.4249.0.copyload.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i172, align 8, !noalias !4067
  %.sroa.6250.0.copyload.pre = load i64, ptr %.sroa.5.0..sroa_idx.i173, align 8, !noalias !4067
  br label %_RINvXs5_NtCs7tKScEop1B6_5alloc6stringNtB6_6StringINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set8IntoItercEECsgy7pbN39oAf_6uu_ptx.exit

_RINvXs5_NtCs7tKScEop1B6_5alloc6stringNtB6_6StringINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set8IntoItercEECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.bs
  %.sroa.6250.0.copyload = phi i64 [ %.sroa.6250.0.copyload392, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.6250.0.copyload.pre, %bb.bs ]
  %.sroa.4249.0.copyload = phi ptr [ %.sroa.4249.0.copyload390, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.4249.0.copyload.pre, %bb.bs ] ; 2 uses
  %.sroa.0248.0.copyload = load i64, ptr %i.a, align 8, !noalias !4067 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4053
  call void @_RNvCsipSpXIjCLRi_5regex6escape(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4249.0.copyload, i64 noundef %.sroa.6250.0.copyload) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.p, ptr %i.o, align 8
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4110.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @182, ptr noundef nonnull %i.o) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !4068)
  %.val.i = load i64, ptr %i.p, align 8, !range !14, !alias.scope !4068, !noundef !7 ; 2 uses
  %i.kw = icmp eq i64 %.val.i, 0
  br i1 %i.kw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit, label %bb.bt

bb.bt:                                            ; preds = %_RINvXs5_NtCs7tKScEop1B6_5alloc6stringNtB6_6StringINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set8IntoItercEECsgy7pbN39oAf_6uu_ptx.exit
  %i.kx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val1.i = load ptr, ptr %i.kx, align 8, !alias.scope !4068, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !4068
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %_RINvXs5_NtCs7tKScEop1B6_5alloc6stringNtB6_6StringINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set8IntoItercEECsgy7pbN39oAf_6uu_ptx.exit, %bb.bt
  %i.ky = icmp eq i64 %.sroa.0248.0.copyload, 0
  br i1 %i.ky, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit183, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4249.0.copyload, i64 noundef %.sroa.0248.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !4069
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit183

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit183: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %.sroa.053.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.07.0, ptr %.sroa.053.sroa.8.0..sroa_idx, align 8
  %.sroa.053.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.3.0, ptr %.sroa.053.sroa.10.0..sroa_idx, align 8
  %.sroa.053.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.4.0, ptr %.sroa.053.sroa.12.0..sroa_idx, align 8
  %.sroa.053.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.5.sroa.0.0, ptr %.sroa.053.sroa.14.0..sroa_idx, align 8
  %.sroa.053.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.5.sroa.3.0, ptr %.sroa.053.sroa.16.0..sroa_idx, align 8
  %.sroa.053.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.5.sroa.4.0, ptr %.sroa.053.sroa.18.0..sroa_idx, align 8
  %.sroa.053.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.024.0, ptr %.sroa.053.sroa.20.0..sroa_idx, align 8
  %.sroa.053.sroa.20.sroa.8.0..sroa.053.sroa.20.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.326.0, ptr %.sroa.053.sroa.20.sroa.8.0..sroa.053.sroa.20.0..sroa_idx.sroa_idx, align 8
  %.sroa.053.sroa.20.sroa.10.0..sroa.053.sroa.20.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.429.0, ptr %.sroa.053.sroa.20.sroa.10.0..sroa.053.sroa.20.0..sroa_idx.sroa_idx, align 8
  %.sroa.053.sroa.20.sroa.12.0..sroa.053.sroa.20.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.532.sroa.0.0, ptr %.sroa.053.sroa.20.sroa.12.0..sroa.053.sroa.20.0..sroa_idx.sroa_idx, align 8
  %.sroa.053.sroa.20.sroa.14.0..sroa.053.sroa.20.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.532.sroa.3.0, ptr %.sroa.053.sroa.20.sroa.14.0..sroa.053.sroa.20.0..sroa_idx.sroa_idx, align 8
  %.sroa.053.sroa.20.sroa.16.0..sroa.053.sroa.20.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.532.sroa.4.0, ptr %.sroa.053.sroa.20.sroa.16.0..sroa.053.sroa.20.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %.sroa.0119.0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 %.sroa.0121.0, ptr %.sroa.14.0..sroa_idx, align 1
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetNtNtCs7tKScEop1B6_5alloc6string6StringEECsgy7pbN39oAf_6uu_ptx.exit167

bb.bv:                                            ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringE6filterNCNvMs_Csgy7pbN39oAf_6uu_ptxNtB1A_10WordFilter3new0EB1A_.exit.thread
  %i.kz = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.la = load i8, ptr %i.kz, align 8, !range !16, !noundef !7
  %i.lb = trunc nuw i8 %i.la to i1
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !7
  br i1 %i.lb, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lc = call noundef dereferenceable_or_null(7) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 7, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !4070 ; 3 uses
  %i.ld = icmp eq ptr %i.lc, null
  br i1 %i.ld, label %bb.by, label %bb.bz

bb.bx:                                            ; preds = %bb.bv
  %i.le = call noundef dereferenceable_or_null(3) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 3, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !4071 ; 3 uses
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %bb.ca, label %bb.cb

bb.by:                                            ; preds = %bb.bw
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 7) #30
  unreachable

bb.bz:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.lc, ptr noundef nonnull align 1 dereferenceable(7) @59, i64 7, i1 false)
  store i64 7, ptr %i.q, align 8
  %.sroa.4117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.lc, ptr %.sroa.4117.0..sroa_idx, align 8
  %.sroa.6118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 7, ptr %.sroa.6118.0..sroa_idx, align 8
  br label %bb.cc

bb.ca:                                            ; preds = %bb.bx
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #30
  unreachable

bb.cb:                                            ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.le, ptr noundef nonnull align 1 dereferenceable(3) @183, i64 3, i1 false)
  store i64 3, ptr %i.q, align 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.le, ptr %.sroa.4114.0..sroa_idx, align 8
  %.sroa.6115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 3, ptr %.sroa.6115.0..sroa_idx, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.bz, %bb.cb, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringE6filterNCNvMs_Csgy7pbN39oAf_6uu_ptxNtB1A_10WordFilter3new0EB1A_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %.sroa.053.sroa.8.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.07.0, ptr %.sroa.053.sroa.8.0..sroa_idx271, align 8
  %.sroa.053.sroa.10.0..sroa_idx273 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.3.0, ptr %.sroa.053.sroa.10.0..sroa_idx273, align 8
  %.sroa.053.sroa.12.0..sroa_idx275 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.4.0, ptr %.sroa.053.sroa.12.0..sroa_idx275, align 8
  %.sroa.053.sroa.14.0..sroa_idx277 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.5.sroa.0.0, ptr %.sroa.053.sroa.14.0..sroa_idx277, align 8
  %.sroa.053.sroa.16.0..sroa_idx279 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.5.sroa.3.0, ptr %.sroa.053.sroa.16.0..sroa_idx279, align 8
  %.sroa.053.sroa.18.0..sroa_idx281 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.5.sroa.4.0, ptr %.sroa.053.sroa.18.0..sroa_idx281, align 8
  %.sroa.053.sroa.20.0..sroa_idx283 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.024.0, ptr %.sroa.053.sroa.20.0..sroa_idx283, align 8
  %.sroa.053.sroa.20.sroa.8.0..sroa.053.sroa.20.0..sroa_idx283.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.326.0, ptr %.sroa.053.sroa.20.sroa.8.0..sroa.053.sroa.20.0..sroa_idx283.sroa_idx, align 8
  %.sroa.053.sroa.20.sroa.10.0..sroa.053.sroa.20.0..sroa_idx283.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.429.0, ptr %.sroa.053.sroa.20.sroa.10.0..sroa.053.sroa.20.0..sroa_idx283.sroa_idx, align 8
  %.sroa.053.sroa.20.sroa.12.0..sroa.053.sroa.20.0..sroa_idx283.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.532.sroa.0.0, ptr %.sroa.053.sroa.20.sroa.12.0..sroa.053.sroa.20.0..sroa_idx283.sroa_idx, align 8
  %.sroa.053.sroa.20.sroa.14.0..sroa.053.sroa.20.0..sroa_idx283.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.532.sroa.3.0, ptr %.sroa.053.sroa.20.sroa.14.0..sroa.053.sroa.20.0..sroa_idx283.sroa_idx, align 8
  %.sroa.053.sroa.20.sroa.16.0..sroa.053.sroa.20.0..sroa_idx283.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.532.sroa.4.0, ptr %.sroa.053.sroa.20.sroa.16.0..sroa.053.sroa.20.0..sroa_idx283.sroa_idx, align 8
  %.sroa.12.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %.sroa.0119.0, ptr %.sroa.12.0..sroa_idx56, align 8
  %.sroa.14.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 %.sroa.0121.0, ptr %.sroa.14.0..sroa_idx58, align 1
  %.not126 = icmp eq ptr %.sroa.0227.0, null
  %i.lg = icmp eq i64 %.sroa.9230.0, 0
  %or.cond = select i1 %.not126, i1 true, i1 %i.lg
  br i1 %or.cond, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetNtNtCs7tKScEop1B6_5alloc6string6StringEECsgy7pbN39oAf_6uu_ptx.exit167, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.cc
  %i.lh = shl i64 %.sroa.9230.0, 2
  %i.li = icmp slt i64 %.sroa.9230.0, 4611686018427387900
  call void @llvm.assume(i1 %i.li)
  %i.lj = and i64 %i.lh, -16                      ; 2 uses
  %i.lk = add i64 %i.lj, 16                       ; 2 uses
  %i.ll = add nsw i64 %.sroa.9230.0, 17
  %i.lm = add i64 %i.ll, %i.lk                    ; 4 uses
  %i.ln = icmp uge i64 %i.lm, %i.lk
  %i.lo = icmp ult i64 %i.lm, 9223372036854775793
  call void @llvm.assume(i1 %i.ln)
  call void @llvm.assume(i1 %i.lo)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0227.0) ]
  %i.lp = icmp eq i64 %i.lm, 0
  br i1 %i.lp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetNtNtCs7tKScEop1B6_5alloc6string6StringEECsgy7pbN39oAf_6uu_ptx.exit167, label %bb.cd

bb.cd:                                            ; preds = %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.lq = sub nuw nsw i64 -16, %i.lj
  %i.lr = getelementptr inbounds i8, ptr %.sroa.0227.0, i64 %i.lq
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lr, i64 noundef %i.lm, i64 noundef range(i64 1, -9223372036854775807) 16) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetNtNtCs7tKScEop1B6_5alloc6string6StringEECsgy7pbN39oAf_6uu_ptx.exit167

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetNtNtCs7tKScEop1B6_5alloc6string6StringEECsgy7pbN39oAf_6uu_ptx.exit167: ; preds = %bb.cc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgy7pbN39oAf_6uu_ptx.exit183, %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.cd, %bb.bd, %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs7tKScEop1B6_5alloc6string6StringuEECsgy7pbN39oAf_6uu_ptx.exit.i.i.i.i.i.i162, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std11collections4hash3set7HashSetNtNtCs7tKScEop1B6_5alloc6string6StringEECsgy7pbN39oAf_6uu_ptx.exit, %bb.g
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterINtNtBa_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE14write_all_coldCsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !7 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = sub nsw i64 %i.a, %i.c
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterINtNtBa_5boxed3BoxDNtNtNtCs6JMX4GRUq9U_4core2io5write5WriteEL_EE9flush_bufCsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef align 8 dereferenceable(48) %0) #28 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i64, ptr %0, align 8, !range !14
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.h = phi i64 [ %.pre, %._crit_edge ], [ %i.a, %bb.a ]
end_hunk_2
