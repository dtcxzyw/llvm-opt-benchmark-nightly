Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.13?download=true
inline.NumInlined: 1332
inline.NumDeleted: 801
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils36truncate_max_binary_statistics_value:bb.a
bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.ck = phi ptr [ %i.bb, %bb.x ], [ %i.br, %bb.y ], !dbg !20746 ; 2 uses
  %.sroa.4.1.i.ph.i.i.i = phi i32 [ %i.bk, %bb.x ], [ %i.bv, %bb.y ] ; 8 uses
  %i.cl = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i, 1114112, !dbg !20747
  call void @llvm.assume(i1 %i.cl), !dbg !20747
  %i.cm = add nuw nsw i32 %.sroa.4.1.i.ph.i.i.i, 1, !dbg !20748 ; 2 uses
  %i.cn = xor i32 %i.cm, 55296, !dbg !20749
  %i.co = add nsw i32 %i.cn, -1114112, !dbg !20749
  %i.cp = icmp ult i32 %i.co, -1112064, !dbg !20749
  br i1 %i.cp, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTjcEB1g_NCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf80E0B1y_.exit.i.i, label %bb.ab, !dbg !20750

bb.ab:                                            ; preds = %bb.aa
  %i.cq = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i, 127, !dbg !20751
  br i1 %i.cq, label %select.unfold.i.i, label %bb.ac, !dbg !20751

bb.ac:                                            ; preds = %bb.ab
  %i.cr = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i, 2047, !dbg !20752
  br i1 %i.cr, label %bb.ad, label %bb.ae, !dbg !20752

bb.ad:                                            ; preds = %bb.ac
  %i.cs = icmp eq i32 %.sroa.4.1.i.ph.i.i.i, 127, !dbg !20753
  %spec.select.i.i.i.i = select i1 %i.cs, i64 1, i64 2, !dbg !20753
  br label %_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf800Bb_.exit.i.i.i.i.i, !dbg !20753

bb.ae:                                            ; preds = %bb.ac
  %i.ct = icmp eq i32 %.sroa.4.1.i.ph.i.i.i, 2047, !dbg !20754
  br i1 %i.ct, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTjcEB1g_NCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf80E0B1y_.exit.i.i, label %bb.af, !dbg !20754

bb.af:                                            ; preds = %bb.ae
  %i.cu = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i, 65535, !dbg !20755
  %..i.i.i.i.i.i = select i1 %i.cu, i64 3, i64 4, !dbg !20756
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i, 65536, !dbg !20757
  %.3.i.i.i.i.i.i = select i1 %i.cv, i64 3, i64 4, !dbg !20758
  br label %_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf800Bb_.exit.i.i.i.i.i, !dbg !20758

_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf800Bb_.exit.i.i.i.i.i: ; preds = %bb.af, %bb.ad
  %.sroa.0.0.i.i3.i.i.i.i = phi i64 [ 2, %bb.ad ], [ %..i.i.i.i.i.i, %bb.af ]
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.ad ], [ %.3.i.i.i.i.i.i, %bb.af ], !dbg !20758
  %i.cw = icmp eq i64 %.sroa.0.0.i.i3.i.i.i.i, %.sroa.01.0.i.i.i.i.i.i, !dbg !20759
  br i1 %i.cw, label %select.unfold.i.i, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTjcEB1g_NCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf80E0B1y_.exit.i.i, !dbg !20760

select.unfold.i.i:                                ; preds = %_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf800Bb_.exit.i.i.i.i.i, %bb.ab
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTjcEB1g_NCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf80E0B1y_.exit.i.i, !dbg !20760

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTjcEB1g_NCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf80E0B1y_.exit.i.i: ; preds = %select.unfold.i.i, %_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf800Bb_.exit.i.i.i.i.i, %bb.ae, %bb.aa
  %.sroa.02.0.i.i.i.i.i = phi i32 [ 1114112, %bb.aa ], [ 1114112, %_RNCNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf800Bb_.exit.i.i.i.i.i ], [ %i.cm, %select.unfold.i.i ], [ 1114112, %bb.ae ], !dbg !20761 ; 10 uses
  %.not.i.i.i = icmp eq i32 %.sroa.02.0.i.i.i.i.i, 1114112, !dbg !20762
  br i1 %.not.i.i.i, label %bb.v, label %bb.ag, !dbg !20763

bb.ag:                                            ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8find_map5checkTjcEB1g_NCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils14increment_utf80E0B1y_.exit.i.i
  %i.cx = ptrtoint ptr %i.ck to i64
  %i.cy = ptrtoint ptr %i.av to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 6 uses
  %i.da = icmp ugt i64 %i.cz, %i.ax, !dbg !20764
  br i1 %i.da, label %bb.ap, label %bb.ah, !dbg !20764, !prof !737

bb.ah:                                            ; preds = %bb.ag
  %i.db = sub nuw i64 %i.ax, %i.cz, !dbg !20765   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.cz, !dbg !20766 ; 10 uses
  %i.dd = icmp samesign ult i32 %.sroa.02.0.i.i.i.i.i, 128, !dbg !20767
  br i1 %i.dd, label %.thread.i.i, label %bb.ai, !dbg !20767

bb.ai:                                            ; preds = %bb.ah
  %i.de = icmp samesign ult i32 %.sroa.02.0.i.i.i.i.i, 2048, !dbg !20768 ; 2 uses
  %i.df = icmp samesign ult i32 %.sroa.02.0.i.i.i.i.i, 65536, !dbg !20768 ; 2 uses
  %..i.i = select i1 %i.df, i64 3, i64 4, !dbg !20768
  %.sroa.0.0.i12.i = select i1 %i.de, i64 2, i64 %..i.i, !dbg !20768 ; 2 uses
  %i.dg = icmp samesign ult i64 %i.db, %.sroa.0.0.i12.i, !dbg !20769
  br i1 %i.dg, label %bb.ao, label %bb.aj, !dbg !20769

.thread.i.i:                                      ; preds = %bb.ah
  %i.dh = icmp eq i64 %i.ax, %i.cz, !dbg !20769
  br i1 %i.dh, label %bb.ao, label %.thread7.i.i, !dbg !20769

bb.aj:                                            ; preds = %bb.ai
  %i.di = trunc i32 %.sroa.02.0.i.i.i.i.i to i8, !dbg !20770
  %i.dj = and i8 %i.di, 63, !dbg !20770
  %i.dk = or disjoint i8 %i.dj, -128, !dbg !20770 ; 3 uses
  %i.dl = lshr i32 %.sroa.02.0.i.i.i.i.i, 6, !dbg !20771
  %i.dm = trunc i32 %i.dl to i8, !dbg !20772      ; 2 uses
  %i.dn = and i8 %i.dm, 63, !dbg !20772
  %i.do = or disjoint i8 %i.dn, -128, !dbg !20772 ; 2 uses
  %i.dp = lshr i32 %.sroa.02.0.i.i.i.i.i, 12, !dbg !20773
  %i.dq = trunc i32 %i.dp to i8, !dbg !20774      ; 2 uses
  %i.dr = and i8 %i.dq, 63, !dbg !20774
  %i.ds = or disjoint i8 %i.dr, -128, !dbg !20774
  %i.dt = lshr i32 %.sroa.02.0.i.i.i.i.i, 18, !dbg !20775
  %i.du = trunc nuw nsw i32 %i.dt to i8, !dbg !20776
  %i.dv = or disjoint i8 %i.du, -16, !dbg !20776
  br i1 %i.de, label %bb.ak, label %bb.al, !dbg !20777

.thread7.i.i:                                     ; preds = %.thread.i.i
  %i.dw = trunc nuw nsw i32 %.sroa.02.0.i.i.i.i.i to i8, !dbg !20778
  store i8 %i.dw, ptr %i.dc, align 1, !dbg !20778, !alias.scope !20641
  br label %bb.aq, !dbg !20779

bb.ak:                                            ; preds = %bb.aj
  %i.dx = or disjoint i8 %i.dm, -64, !dbg !20780
  store i8 %i.dx, ptr %i.dc, align 1, !dbg !20780, !alias.scope !20641
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dc, i64 1, !dbg !20781
  store i8 %i.dk, ptr %i.dy, align 1, !dbg !20782, !alias.scope !20641
  br label %bb.aq, !dbg !20783

bb.al:                                            ; preds = %bb.aj
  br i1 %i.df, label %bb.am, label %bb.an, !dbg !20784

bb.am:                                            ; preds = %bb.al
  %i.dz = or disjoint i8 %i.dq, -32, !dbg !20785
  store i8 %i.dz, ptr %i.dc, align 1, !dbg !20785, !alias.scope !20641
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dc, i64 1, !dbg !20786
  store i8 %i.do, ptr %i.ea, align 1, !dbg !20787, !alias.scope !20641
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dc, i64 2, !dbg !20788
  store i8 %i.dk, ptr %i.eb, align 1, !dbg !20789, !alias.scope !20641
  br label %bb.aq, !dbg !20783

bb.an:                                            ; preds = %bb.al
  store i8 %i.dv, ptr %i.dc, align 1, !dbg !20790, !alias.scope !20641
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dc, i64 1, !dbg !20791
  store i8 %i.ds, ptr %i.ec, align 1, !dbg !20792, !alias.scope !20641
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dc, i64 2, !dbg !20793
  store i8 %i.do, ptr %i.ed, align 1, !dbg !20794, !alias.scope !20641
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dc, i64 3, !dbg !20795
  store i8 %i.dk, ptr %i.ee, align 1, !dbg !20796, !alias.scope !20641
  br label %bb.aq, !dbg !20797

bb.ao:                                            ; preds = %.thread.i.i, %bb.ai
  %.sroa.0.06.i.i = phi i64 [ 1, %.thread.i.i ], [ %.sroa.0.0.i12.i, %bb.ai ]
  invoke fastcc void @_RNvNvNvNtNtCscgRAwXFJnXP_4core4char7methods15encode_utf8_raw8do_panic7runtime(i32 noundef range(i32 1, 1114112) %.sroa.02.0.i.i.i.i.i, i64 noundef %.sroa.0.06.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.db) #35
          to label %.noexc25 unwind label %bb.f, !dbg !20798

.noexc25:                                         ; preds = %bb.ao
  unreachable, !dbg !20798

bb.ap:                                            ; preds = %bb.ag
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.cz, i64 noundef %i.ax, i64 noundef %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc26 unwind label %bb.f, !dbg !20799

.noexc26:                                         ; preds = %bb.ap
  unreachable, !dbg !20799

bb.aq:                                            ; preds = %.thread7.i.i, %bb.ak, %bb.am, %bb.an
  %.sroa.0.059.i.i = phi i64 [ 1, %.thread7.i.i ], [ 2, %bb.ak ], [ 3, %bb.am ], [ 4, %bb.an ]
  %i.ef = add i64 %.sroa.0.059.i.i, %i.cz, !dbg !20800 ; 2 uses
  %i.eg = load i64, ptr %i.i, align 8, !dbg !20801, !noundef !636
  %i.eh = icmp ugt i64 %i.ef, %i.eg, !dbg !20802
  br i1 %i.eh, label %.loopexit, label %bb.ar, !dbg !20802

bb.ar:                                            ; preds = %bb.aq
  store i64 %i.ef, ptr %i.i, align 8, !dbg !20803
  br label %.loopexit, !dbg !20804

bb.as:                                            ; preds = %.loopexit, %bb.c
  ret void, !dbg !20805

bb.at:                                            ; preds = %bb.f
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !20806
  unreachable, !dbg !20806

bb.au:                                            ; preds = %bb.f
  resume { ptr, i32 } %i.z, !dbg !20806
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write5utils36truncate_min_binary_statistics_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20807 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20838 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !20838, !noundef !636 ; 5 uses
  %i.g = icmp sgt i64 %i.f, -1, !dbg !20839
  tail call void @llvm.assume(i1 %i.g), !dbg !20840
  %.not = icmp ugt i64 %i.f, %2, !dbg !20841
  br i1 %.not, label %bb.b, label %bb.c, !dbg !20841

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.d, label %.sink.split, !dbg !20842

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !20843
  br label %bb.i, !dbg !20844

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20845
  %i.i = load ptr, ptr %i.h, align 8, !dbg !20845, !nonnull !636, !noundef !636 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !20846, !noalias !20835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !20846, !noalias !20835
  store ptr %i.i, ptr %i.c, align 8, !dbg !20847, !noalias !20835
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !20847
  store i64 %2, ptr %i.j, align 8, !dbg !20847, !noalias !20835
  invoke void @_RNvXs2_NtNtCscgRAwXFJnXP_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %.noexc unwind label %bb.g, !dbg !20848

.noexc:                                           ; preds = %bb.d
  %i.k = load ptr, ptr %i.d, align 8, !dbg !20849, !noalias !20835, !noundef !636
  %.not10.i = icmp eq ptr %i.k, null, !dbg !20849
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !20850
  %i.m = load i64, ptr %i.l, align 8, !dbg !20850, !noalias !20835 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !20851, !noalias !20835
  %.not7.i16.i = icmp eq i64 %i.m, 0, !dbg !20852
  %i.n = select i1 %.not10.i, i1 true, i1 %.not7.i16.i, !dbg !20852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20853, !noalias !20835
  br i1 %i.n, label %bb.e, label %bb.h, !dbg !20854

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20855, !noalias !20835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20855, !noalias !20835
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.f, i64 4), !dbg !20856
  store ptr %i.i, ptr %i.a, align 8, !dbg !20857, !noalias !20835
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !20857
  store i64 %.sroa.0.0.i.i, ptr %i.o, align 8, !dbg !20857, !noalias !20835
  invoke void @_RNvXs2_NtNtCscgRAwXFJnXP_4core3str5lossyNtB5_10Utf8ChunksNtNtNtNtB9_4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.noexc8 unwind label %bb.g, !dbg !20858

.noexc8:                                          ; preds = %bb.e
  %i.p = load ptr, ptr %i.b, align 8, !dbg !20859, !noalias !20835, !noundef !636
  %.not13.i = icmp eq ptr %i.p, null, !dbg !20859 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !20860
  %i.r = load i64, ptr %i.q, align 8, !dbg !20860, !noalias !20835
  %.sroa.57.0.i = select i1 %.not13.i, i64 undef, i64 %i.r, !dbg !20860 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20861, !noalias !20835
  %i.s = icmp eq i64 %.sroa.57.0.i, 0, !dbg !20862
  %i.t = icmp uge i64 %.sroa.57.0.i, %i.f, !dbg !20862
  %.sroa.0.0.i.not.i.i = or i1 %i.s, %i.t, !dbg !20862
  %i.u = select i1 %.not13.i, i1 true, i1 %.sroa.0.0.i.not.i.i, !dbg !20862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20863, !noalias !20835
  br i1 %i.u, label %bb.f, label %.sink.split, !dbg !20864

.sink.split:                                      ; preds = %bb.b, %bb.h, %.noexc8
  %.sroa.6.0.i.ph16.sink = phi i64 [ %.sroa.57.0.i, %.noexc8 ], [ %i.m, %bb.h ], [ %2, %bb.b ]
  store i64 %.sroa.6.0.i.ph16.sink, ptr %i.e, align 8, !dbg !20865
  br label %bb.f, !dbg !20866

bb.f:                                             ; preds = %.sink.split, %.noexc8, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !20866
  br label %bb.i, !dbg !20844

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %1) #31
          to label %bb.k unwind label %bb.j, !dbg !20844

bb.h:                                             ; preds = %.noexc
  %i.w = icmp ugt i64 %i.m, %i.f, !dbg !20867
  br i1 %i.w, label %bb.f, label %.sink.split, !dbg !20867

bb.i:                                             ; preds = %bb.f, %bb.c
  ret void, !dbg !20868

bb.j:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !20869
  unreachable, !dbg !20869

bb.k:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.v, !dbg !20869
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested17write_rep_and_def(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, ptr noalias noundef align 8 dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !20870 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 6 uses
  %i.e = alloca [4 x i8], align 4                 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21114), !dbg !21148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !21149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !21149
  %i.f = icmp eq i64 %3, 0, !dbg !21149
  br i1 %i.f, label %.thread, label %.preheader.i.i.preheader, !dbg !21150

.preheader.i.i.preheader:                         ; preds = %bb.a
  %xtraiter = and i64 %3, 1, !dbg !21151
  %i.g = icmp eq i64 %3, 1, !dbg !21151
  br i1 %i.g, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new, !dbg !21151

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i64 %3, 144115188075855870, !dbg !21151
  br label %.preheader.i.i, !dbg !21151

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !21152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !21152
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !21153 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !21153, !noundef !636 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1, !dbg !21154
  tail call void @llvm.assume(i1 %i.j), !dbg !21155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21156
  br label %bb.u, !dbg !21157

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.p, %.preheader.i.i ], !dbg !21158 ; 3 uses
  %.sroa.02.0.i.i.i = phi i16 [ 0, %.preheader.i.i.preheader.new ], [ %i.o, %.preheader.i.i ], !dbg !21159
  %niter = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i ]
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %2, i64 %.sroa.04.0.i.i.i, !dbg !21160
  %.val.i.i.i = load i64, ptr %i.k, align 8, !dbg !21161, !range !21116, !noalias !21117, !noundef !636
  %.off.i.i.i.i.i = add nsw i64 %.val.i.i.i, -1, !dbg !21162
  %switch.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 3, !dbg !21162
  %..i.i.i.i.i = zext i1 %switch.i.i.i.i.i to i16, !dbg !21163
  %i.l = add i16 %.sroa.02.0.i.i.i, %..i.i.i.i.i, !dbg !21164
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %2, i64 %.sroa.04.0.i.i.i, !dbg !21160
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72, !dbg !21160
  %.val.i.i.i.1 = load i64, ptr %i.n, align 8, !dbg !21161, !range !21116, !noalias !21117, !noundef !636
  %.off.i.i.i.i.i.1 = add nsw i64 %.val.i.i.i.1, -1, !dbg !21162
  %switch.i.i.i.i.i.1 = icmp ult i64 %.off.i.i.i.i.i.1, 3, !dbg !21162
  %..i.i.i.i.i.1 = zext i1 %switch.i.i.i.i.i.1 to i16, !dbg !21163
  %i.o = add i16 %i.l, %..i.i.i.i.i.1, !dbg !21164 ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.04.0.i.i.i, 2, !dbg !21165 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2, !dbg !21151 ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !21151
  br i1 %niter.ncmp.1, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i.unr-lcssa, label %.preheader.i.i, !dbg !21151

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i.unr-lcssa: ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !21151
  br i1 %lcmp.mod.not, label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i, label %.preheader.i.i.epil.preheader, !dbg !21151

.preheader.i.i.epil.preheader:                    ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i.unr-lcssa, %.preheader.i.i.preheader
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.p, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.epil.init = phi i16 [ 0, %.preheader.i.i.preheader ], [ %i.o, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i.unr-lcssa ]
  %lcmp.mod64 = trunc i64 %3 to i1, !dbg !21151
  tail call void @llvm.assume(i1 %lcmp.mod64), !dbg !21151
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %2, i64 %.sroa.04.0.i.i.i.epil.init, !dbg !21160
  %.val.i.i.i.epil = load i64, ptr %i.q, align 8, !dbg !21161, !range !21116, !noalias !21117, !noundef !636
  %.off.i.i.i.i.i.epil = add nsw i64 %.val.i.i.i.epil, -1, !dbg !21162
  %switch.i.i.i.i.i.epil = icmp ult i64 %.off.i.i.i.i.i.epil, 3, !dbg !21162
  %..i.i.i.i.i.epil = zext i1 %switch.i.i.i.i.i.epil to i16, !dbg !21163
  %i.r = add i16 %.sroa.02.0.i.i.i.epil.init, %..i.i.i.i.i.epil, !dbg !21164
  br label %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i, !dbg !21166

_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i: ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i.unr-lcssa, %.preheader.i.i.epil.preheader
  %.lcssa62 = phi i16 [ %i.o, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i.unr-lcssa ], [ %i.r, %.preheader.i.i.epil.preheader ], !dbg !21164 ; 2 uses
  %i.s = icmp eq i16 %.lcssa62, 0, !dbg !21166
  br i1 %i.s, label %bb.i, label %bb.b, !dbg !21166

bb.b:                                             ; preds = %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i
  %i.t = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 range(i16 1, 0) %.lcssa62, i1 true), !dbg !21167
  %narrow.i.i = sub nuw nsw i16 16, %i.t, !dbg !21168
  %i.u = zext nneg i16 %narrow.i.i to i32, !dbg !21168 ; 2 uses
  store i32 %i.u, ptr %i.e, align 4, !dbg !21169, !noalias !21117
  call void @_RNvMs_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested6dremelNtB4_18BufferedDremelIter3new(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3), !dbg !21170, !noalias !21117
  br i1 %1, label %bb.c, label %bb.d, !dbg !21171

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle7encoder6encodemINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapNtNtNtNtNtBa_5arrow5write6nested6dremel18BufferedDremelIterNCNvB2O_16write_rep_levels0EEBa_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.d, i32 noundef %i.u), !dbg !21172
  br label %bb.i, !dbg !21173

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !21174, !noalias !21117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !dbg !21174, !noalias !21117
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 72, !dbg !21174
  store ptr %i.e, ptr %i.v, align 8, !dbg !21174, !noalias !21117
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 4)
          to label %bb.e unwind label %bb.f, !dbg !21175, !noalias !21124

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !21176 ; 7 uses
  %i.x = load i64, ptr %i.w, align 8, !dbg !21176, !alias.scope !21125, !noalias !21124, !noundef !636 ; 2 uses
  %i.y = icmp sgt i64 %i.x, -1, !dbg !21177
  call void @llvm.assume(i1 %i.y), !dbg !21178
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8, !dbg !21179 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !21179, !alias.scope !21125, !noalias !21124, !nonnull !636, !noundef !636
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x, !dbg !21180
  store i32 0, ptr %i.ab, align 1, !dbg !21181, !noalias !21124
  %.pre.i.i.i = load i64, ptr %i.w, align 8, !dbg !21182, !alias.scope !21125, !noalias !21124 ; 7 uses
  %i.ac = add nsw i64 %.pre.i.i.i, 4, !dbg !21182 ; 2 uses
  store i64 %i.ac, ptr %i.w, align 8, !dbg !21182, !alias.scope !21125, !noalias !21124
  %i.ad = load i32, ptr %i.e, align 4, !dbg !21183, !noalias !21126, !noundef !636
  call fastcc void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle7encoder6encodemINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapNtNtNtNtNtBa_5arrow5write6nested6dremel18BufferedDremelIterNCNvB2O_16write_rep_levels0EEBa_(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(80) %i.c, i32 noundef %i.ad), !dbg !21184
  %i.ae = load i64, ptr %i.w, align 8, !dbg !21185, !alias.scope !21128, !noalias !21124, !noundef !636 ; 4 uses
  %i.af = icmp sgt i64 %i.ae, -1, !dbg !21186
  call void @llvm.assume(i1 %i.af), !dbg !21187
  %i.ag = sub nsw i64 %i.ae, %i.ac, !dbg !21188   ; 4 uses
  %.sroa.417.0.extract.shift28.i.i = lshr i64 %i.ag, 8, !dbg !21189
  %.sroa.417.0.extract.trunc.i.i = trunc i64 %.sroa.417.0.extract.shift28.i.i to i8, !dbg !21189
  %.sroa.518.0.extract.shift29.i.i = lshr i64 %i.ag, 16, !dbg !21189
  %.sroa.518.0.extract.trunc.i.i = trunc i64 %.sroa.518.0.extract.shift29.i.i to i8, !dbg !21189
  %i.ah = icmp ult i64 %.pre.i.i.i, %i.ae, !dbg !21190
  br i1 %i.ah, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.i.i.i, label %.noexc.i.i, !dbg !21190

.noexc.i.i:                                       ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.2.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.1.i.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.i.i.i, %bb.e
  %.lcssa10.i.i.i = phi i64 [ %.pre.i.i.i, %bb.e ], [ %i.ak, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.i.i.i ], [ %i.ap, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.1.i.i.i ], [ %i.au, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.2.i.i.i ], !dbg !21191
  %.lcssa.i.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.al, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.i.i.i ], [ %i.aq, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.1.i.i.i ], [ %i.av, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.2.i.i.i ], !dbg !21192
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.lcssa10.i.i.i, i64 noundef %.lcssa.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #29, !dbg !21190, !noalias !21124
  unreachable, !dbg !21190

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.i.i.i: ; preds = %bb.e
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.ag to i8, !dbg !21189
  %i.ai = load ptr, ptr %i.z, align 8, !dbg !21193, !alias.scope !21128, !noalias !21130, !nonnull !636, !noundef !636
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.pre.i.i.i, !dbg !21194
  store i8 %.sroa.0.0.extract.trunc.i.i, ptr %i.aj, align 1, !dbg !21195, !noalias !21130
  %i.ak = add nuw nsw i64 %.pre.i.i.i, 1, !dbg !21191 ; 3 uses
  %i.al = load i64, ptr %i.w, align 8, !dbg !21192, !alias.scope !21128, !noalias !21131, !noundef !636 ; 2 uses
  %i.am = icmp ult i64 %i.ak, %i.al, !dbg !21190
  br i1 %i.am, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.1.i.i.i, label %.noexc.i.i, !dbg !21190

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.1.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.i.i.i
  %i.an = load ptr, ptr %i.z, align 8, !dbg !21193, !alias.scope !21128, !noalias !21131, !nonnull !636, !noundef !636
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ak, !dbg !21194
  store i8 %.sroa.417.0.extract.trunc.i.i, ptr %i.ao, align 1, !dbg !21195, !noalias !21131
  %i.ap = add nuw i64 %.pre.i.i.i, 2, !dbg !21191 ; 3 uses
  %i.aq = load i64, ptr %i.w, align 8, !dbg !21192, !alias.scope !21128, !noalias !21132, !noundef !636 ; 2 uses
  %i.ar = icmp ult i64 %i.ap, %i.aq, !dbg !21190
  br i1 %i.ar, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.2.i.i.i, label %.noexc.i.i, !dbg !21190

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.2.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.1.i.i.i
  %i.as = load ptr, ptr %i.z, align 8, !dbg !21193, !alias.scope !21128, !noalias !21132, !nonnull !636, !noundef !636
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ap, !dbg !21194
  store i8 %.sroa.518.0.extract.trunc.i.i, ptr %i.at, align 1, !dbg !21195, !noalias !21132
  %i.au = add nuw i64 %.pre.i.i.i, 3, !dbg !21191 ; 3 uses
  %i.av = load i64, ptr %i.w, align 8, !dbg !21192, !alias.scope !21128, !noalias !21133, !noundef !636 ; 2 uses
  %i.aw = icmp ult i64 %i.au, %i.av, !dbg !21190
  br i1 %i.aw, label %bb.h, label %.noexc.i.i, !dbg !21190

common.resume:                                    ; preds = %bb.s, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.f ], [ %lpad.thr_comm.split-lp.i.i6, %bb.s ]
  resume { ptr, i32 } %common.resume.op, !dbg !21196

bb.f:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested16write_rep_levelss_0EBQ_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c) #31
          to label %common.resume unwind label %bb.g, !dbg !21197, !noalias !21134

bb.g:                                             ; preds = %bb.f
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !21198, !noalias !21134
  unreachable, !dbg !21198

bb.h:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4calljNCINvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested15write_levels_v1NCNvB1l_16write_rep_levelss_0E0E0B1r_.exit.2.i.i.i
  %.sroa.619.0.extract.shift30.i.i = lshr i64 %i.ag, 24, !dbg !21189
  %.sroa.619.0.extract.trunc.i.i = trunc i64 %.sroa.619.0.extract.shift30.i.i to i8, !dbg !21189
  %i.ay = load ptr, ptr %i.z, align 8, !dbg !21193, !alias.scope !21128, !noalias !21133, !nonnull !636, !noundef !636
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.au, !dbg !21194
  store i8 %.sroa.619.0.extract.trunc.i.i, ptr %i.az, align 1, !dbg !21195, !noalias !21133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !21199, !noalias !21117
  br label %bb.i, !dbg !21200

bb.i:                                             ; preds = %bb.h, %bb.c, %_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested13max_rep_level.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !21152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !21152
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16, !dbg !21153 ; 11 uses
end_hunk_0
