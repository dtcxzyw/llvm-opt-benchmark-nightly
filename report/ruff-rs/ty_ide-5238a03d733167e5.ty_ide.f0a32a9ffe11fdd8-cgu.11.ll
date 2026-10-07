Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_ide-5238a03d733167e5.ty_ide.f0a32a9ffe11fdd8-cgu.11?download=true
inline.NumInlined: 874
inline.NumDeleted: 530
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMNtNtCskEUeM34gmJU_6ty_ide11all_symbols5mergeNtB2_5Group5merge:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 8 dereferenceable(12) %i.hp, i64 12, i1 false)
  %i.hq = call noundef nonnull align 8 ptr @_RNvMsb_NtCsfDzkztWVnn_18ty_module_resolver6moduleNtB5_6Module4name(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.k, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.hr = call { ptr, i64 } @_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName15first_component(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hq) ; 2 uses
  %i.hs = extractvalue { ptr, i64 } %i.hr, 1
  %i.ht = icmp eq i64 %i.dp, %i.hs
  br i1 %i.ht, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %bb.as
  %i.hu = load i8, ptr %i.ds, align 1, !range !627, !noundef !3
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 73
  store i8 %i.hu, ptr %i.hv, align 1
  %i.hw = load i8, ptr %i.dt, align 8, !range !18, !noundef !3
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hm, i64 72
  store i8 %i.hw, ptr %i.hx, align 8
  br label %bb.at

bb.av:                                            ; preds = %bb.at
  %i.hy = extractvalue { ptr, i64 } %i.hr, 0
  %bcmp = call i32 @bcmp(ptr %i.do, ptr %i.hy, i64 %i.dp)
  %.not44 = icmp eq i32 %bcmp, 0
  br i1 %.not44, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.at, %bb.av
  %i.hz = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterjuENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l)
  %i.ia = extractvalue { ptr, ptr } %i.hz, 0      ; 2 uses
  %.not = icmp eq ptr %i.ia, null
  br i1 %.not, label %.outer._crit_edge, label %bb.s

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMNtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB2_10ModuleName10components(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hq)
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %.promoted.i89 = load i8, ptr %i.y, align 1, !alias.scope !629
  %.promoted15.i90 = load i64, ptr %i.j, align 8, !alias.scope !628 ; 3 uses
  %i.ib = trunc nuw i8 %.promoted.i89 to i1
  br i1 %i.ib, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BK_5count0ECskEUeM34gmJU_6ty_ide.exit128, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.ax
  %.val.i.i.i92 = load ptr, ptr %i.z, align 8, !alias.scope !629, !nonnull !3, !noundef !3 ; 2 uses
  %.val1.i.i.i93 = load i64, ptr %i.aa, align 8, !alias.scope !629, !noundef !3 ; 2 uses
  %i.ic = load i64, ptr %i.ab, align 8, !alias.scope !630, !noalias !631, !noundef !3 ; 5 uses
  %.not.i.i.i.i94 = icmp ugt i64 %i.ic, %.val1.i.i.i93
  %i.id = load i8, ptr %i.ad, align 8, !alias.scope !628 ; 2 uses
  %i.ie = zext nneg i8 %i.id to i64               ; 4 uses
  %i.if = icmp ult i8 %i.id, 5
  %i.ig = getelementptr i8, ptr %i.ac, i64 %i.ie
  %i.ih = getelementptr i8, ptr %i.ig, i64 -1
  %i.ii = load i8, ptr %i.ae, align 8, !range !18, !alias.scope !628
  %i.ij = trunc nuw i8 %i.ii to i1                ; 2 uses
  %.pre2.i.i.i.i96 = load i64, ptr %.phi.trans.insert.i.i.i.i95, align 8, !alias.scope !628 ; 2 uses
  br i1 %.not.i.i.i.i94, label %.lr.ph.split.us.i124, label %.lr.ph.split.preheader.i97

.lr.ph.split.preheader.i97:                       ; preds = %.lr.ph.i91
  %.promoted21.i98 = load i64, ptr %i.af, align 8, !alias.scope !630, !noalias !631 ; 2 uses
  %i.ik = icmp ult i64 %i.ic, %.promoted21.i98
  br i1 %i.ik, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskEUeM34gmJU_6ty_ide.exit.i.i.i106, label %.lr.ph.i.i.i.i102.lr.ph

.lr.ph.i.i.i.i102.lr.ph:                          ; preds = %.lr.ph.split.preheader.i97
  call void @llvm.assume(i1 %i.if)
  %.pre.i.i.i.i103 = load i8, ptr %i.ih, align 1, !alias.scope !630, !noalias !631 ; 2 uses
  br label %.lr.ph.i.i.i.i102

.lr.ph.split.us.i124:                             ; preds = %.lr.ph.i91
  %.not.i3.i.i.us.i125 = icmp ne i64 %.pre2.i.i.i.i96, %.promoted15.i90
  %or.cond.not.i.i.i.us.i126 = select i1 %i.ij, i1 true, i1 %.not.i3.i.i.us.i125
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  %..i127 = zext i1 %or.cond.not.i.i.i.us.i126 to i64
  br label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BK_5count0ECskEUeM34gmJU_6ty_ide.exit128

.lr.ph.i.i.i.i102:                                ; preds = %.lr.ph.i.i.i.i102.lr.ph, %select.unfold.i115
  %.lcssa1718.i101195 = phi i64 [ %.promoted15.i90, %.lr.ph.i.i.i.i102.lr.ph ], [ %i.jb, %select.unfold.i115 ] ; 2 uses
  %.sroa.0.019.i100194 = phi i64 [ 0, %.lr.ph.i.i.i.i102.lr.ph ], [ %i.jh, %select.unfold.i115 ] ; 3 uses
  %i.il = phi i64 [ %.promoted21.i98, %.lr.ph.i.i.i.i102.lr.ph ], [ %i.jb, %select.unfold.i115 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bc, %.lr.ph.i.i.i.i102
  %i.im = phi i64 [ %i.il, %.lr.ph.i.i.i.i102 ], [ %i.jb, %bb.bc ] ; 3 uses
  %i.in = sub nuw i64 %i.ic, %i.im                ; 5 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.val.i.i.i92, i64 %i.im ; 2 uses
  %i.ip = icmp samesign ult i64 %i.in, 16
  br i1 %i.ip, label %.preheader.i.i.i.i.i116, label %bb.az

.preheader.i.i.i.i.i116:                          ; preds = %bb.ay
  %.not.i.i.i.i.i117 = icmp eq i64 %i.in, 0
  br i1 %.not.i.i.i.i.i117, label %._crit_edge.i.i.i.i.i121, label %.lr.ph.i.i.i.i.i118

bb.az:                                            ; preds = %bb.ay
  %i.iq = call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i103, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.io, i64 noundef range(i64 0, -9223372036854775808) %i.in), !noalias !635
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i104

._crit_edge.i.i.i.i.i121:                         ; preds = %bb.ba, %.lr.ph.i.i.i.i.i118, %.preheader.i.i.i.i.i116
  %.sroa.01.0.lcssa.i.i.i.i.i122 = phi i64 [ 0, %.preheader.i.i.i.i.i116 ], [ %i.in, %bb.ba ], [ %.sroa.01.05.i.i.i.i.i119, %.lr.ph.i.i.i.i.i118 ]
  %.sroa.0.1.i.i.i.i.i123 = phi i64 [ 0, %.preheader.i.i.i.i.i116 ], [ 0, %bb.ba ], [ 1, %.lr.ph.i.i.i.i.i118 ]
  %i.ir = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i123, 0
  %i.is = insertvalue { i64, i64 } %i.ir, i64 %.sroa.01.0.lcssa.i.i.i.i.i122, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i104

.lr.ph.i.i.i.i.i118:                              ; preds = %.preheader.i.i.i.i.i116, %bb.ba
  %.sroa.01.05.i.i.i.i.i119 = phi i64 [ %i.iw, %bb.ba ], [ 0, %.preheader.i.i.i.i.i116 ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 %.sroa.01.05.i.i.i.i.i119
  %i.iu = load i8, ptr %i.it, align 1, !alias.scope !636, !noalias !635, !noundef !3
  %i.iv = icmp eq i8 %i.iu, %.pre.i.i.i.i103
  br i1 %i.iv, label %._crit_edge.i.i.i.i.i121, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i.i118
  %i.iw = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i119, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i120 = icmp eq i64 %i.iw, %i.in
  br i1 %exitcond.not.i.i.i.i.i120, label %._crit_edge.i.i.i.i.i121, label %.lr.ph.i.i.i.i.i118

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i104: ; preds = %._crit_edge.i.i.i.i.i121, %bb.az
  %.merged.i.i.i.i.i105 = phi { i64, i64 } [ %i.is, %._crit_edge.i.i.i.i.i121 ], [ %i.iq, %bb.az ] ; 2 uses
  %i.ix = extractvalue { i64, i64 } %.merged.i.i.i.i.i105, 0
  %i.iy = trunc nuw i64 %i.ix to i1
  br i1 %i.iy, label %bb.bb, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskEUeM34gmJU_6ty_ide.exit.i.i.i106

bb.bb:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i104
  %i.iz = extractvalue { i64, i64 } %.merged.i.i.i.i.i105, 1
  %i.ja = add i64 %i.im, 1
  %i.jb = add i64 %i.ja, %i.iz                    ; 9 uses
  %.not12.i.i.i.i111 = icmp ult i64 %i.jb, %i.ie
  %.not13.i.i.i.i112 = icmp ugt i64 %i.jb, %.val1.i.i.i93
  %or.cond.i.i.i.i113 = or i1 %.not12.i.i.i.i111, %.not13.i.i.i.i112
  br i1 %or.cond.i.i.i.i113, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bd, %bb.bb
  %i.jc = icmp ult i64 %i.ic, %i.jb
  br i1 %i.jc, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskEUeM34gmJU_6ty_ide.exit.i.i.i106, label %bb.ay

bb.bd:                                            ; preds = %bb.bb
  %i.jd = sub nuw i64 %i.jb, %i.ie
  %i.je = getelementptr inbounds nuw i8, ptr %.val.i.i.i92, i64 %i.jd
  %bcmp.i.i.i.i114 = call i32 @bcmp(ptr nonnull %i.je, ptr nonnull readonly %i.ac, i64 %i.ie), !noalias !631
  %i.jf = icmp eq i32 %bcmp.i.i.i.i114, 0
  br i1 %i.jf, label %select.unfold.i115, label %bb.bc

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskEUeM34gmJU_6ty_ide.exit.i.i.i106: ; preds = %select.unfold.i115, %bb.bc, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i104, %.lr.ph.split.preheader.i97
  %.sroa.0.019.i100150 = phi i64 [ 0, %.lr.ph.split.preheader.i97 ], [ %.sroa.0.019.i100194, %bb.bc ], [ %.sroa.0.019.i100194, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i104 ], [ %i.jh, %select.unfold.i115 ]
  %.lcssa1718.i101148 = phi i64 [ %.promoted15.i90, %.lr.ph.split.preheader.i97 ], [ %.lcssa1718.i101195, %bb.bc ], [ %.lcssa1718.i101195, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i104 ], [ %i.jb, %select.unfold.i115 ]
  %.not.i3.i.i.i107 = icmp ne i64 %.pre2.i.i.i.i96, %.lcssa1718.i101148
  %or.cond.not.i.i.i.i108 = select i1 %i.ij, i1 true, i1 %.not.i3.i.i.i107
  %i.jg = zext i1 %or.cond.not.i.i.i.i108 to i64
  %spec.select.i109 = add i64 %.sroa.0.019.i100150, %i.jg
  br label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BK_5count0ECskEUeM34gmJU_6ty_ide.exit128

select.unfold.i115:                               ; preds = %bb.bd
  %i.jh = add i64 %.sroa.0.019.i100194, 1         ; 2 uses
  %i.ji = icmp ult i64 %i.ic, %i.jb
  br i1 %i.ji, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskEUeM34gmJU_6ty_ide.exit.i.i.i106, label %.lr.ph.i.i.i.i102

_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BK_5count0ECskEUeM34gmJU_6ty_ide.exit128: ; preds = %bb.ax, %.lr.ph.split.us.i124, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskEUeM34gmJU_6ty_ide.exit.i.i.i106
  %.sroa.0.0.lcssa.i110 = phi i64 [ 0, %bb.ax ], [ %spec.select.i109, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskEUeM34gmJU_6ty_ide.exit.i.i.i106 ], [ %..i127, %.lr.ph.split.us.i124 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.jj = call i64 @llvm.umin.i64(i64 %.sroa.0.0.lcssa.i110, i64 %.sroa.4.0.ph199)
  %.sroa.4.1 = select i1 %.sroa.06.0.ph200, i64 %i.jj, i64 %.sroa.0.0.lcssa.i110 ; 2 uses
  %i.jk = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterjuENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.l)
  %i.jl = extractvalue { ptr, ptr } %i.jk, 0      ; 2 uses
  %.not190 = icmp eq ptr %i.jl, null
  br i1 %.not190, label %.outer._crit_edge.thread, label %.lr.ph

.outer._crit_edge.thread:                         ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BK_5count0ECskEUeM34gmJU_6ty_ide.exit128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document12preformattedNtB2_13MarkdownFence12is_closed_by(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre18trim_start_matchescECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef 32) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  %i.g = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document12preformattedNtB2_13MarkdownFence4find(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre18trim_start_matchescECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef 32) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 14 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 9 uses
  %i.d = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 3) ; 2 uses
  %i.e = tail call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 3)
  %brmerge = or i1 %i.d, %i.e
  br i1 %brmerge, label %bb.b, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread45

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.f, label %bb.c

_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread45: ; preds = %bb.j, %.lr.ph.i.i, %.split.i37, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit, %.preheader.i.i, %bb.c, %.split.i, %bb.e, %bb.a
  %.sroa.4.0 = phi i64 [ undef, %bb.a ], [ %i.j, %.split.i ], [ %i.r, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit ], [ %i.r, %.preheader.i.i ], [ %i.j, %bb.e ], [ 0, %bb.c ], [ %i.r, %.split.i37 ], [ %i.r, %.lr.ph.i.i ], [ %i.r, %bb.j ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.b, %.split.i ], [ %spec.select49, %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit ], [ %i.b, %.preheader.i.i ], [ %i.b, %bb.e ], [ %i.b, %bb.c ], [ %i.b, %.split.i37 ], [ %i.b, %bb.j ], [ null, %.lr.ph.i.i ]
  %i.f = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.g

bb.c:                                             ; preds = %bb.b
  %i.h = tail call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre18trim_start_matchescECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.c, i32 noundef 126)
  %i.i = extractvalue { ptr, i64 } %i.h, 1        ; 2 uses
  %i.j = sub i64 %i.c, %i.i                       ; 7 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread45, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp ult i64 %i.j, %i.c
  br i1 %.not.i, label %bb.e, label %.split.i

.split.i:                                         ; preds = %bb.d
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread45, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.j
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !645, !noundef !3
  %i.o = icmp sgt i8 %i.n, -65
  br i1 %i.o, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread45, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

bb.f:                                             ; preds = %bb.b
  %i.p = tail call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre18trim_start_matchescECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.c, i32 noundef 96) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 1        ; 6 uses
  %i.r = sub i64 %i.c, %i.q                       ; 10 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i36 = icmp ult i64 %i.r, %i.c
  br i1 %.not.i36, label %bb.h, label %.split.i37

.split.i37:                                       ; preds = %bb.g
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread45, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.r
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !646, !noundef !3
  %i.w = icmp sgt i8 %i.v, -65
  br i1 %i.w, label %bb.i, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread: ; preds = %.split.i37, %bb.h, %.split.i, %bb.e
  %.sroa.06.0 = phi i64 [ %i.j, %.split.i ], [ %i.j, %bb.e ], [ %i.r, %bb.h ], [ %i.r, %.split.i37 ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.c, i64 noundef 0, i64 noundef %.sroa.06.0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #27
  unreachable

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.x = extractvalue { ptr, i64 } %i.p, 0        ; 2 uses
  %i.y = icmp samesign ult i64 %i.q, 16
  br i1 %i.y, label %.preheader.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit

.preheader.i.i:                                   ; preds = %bb.i
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread45, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.j
  %.sroa.01.05.i.i = phi i64 [ %i.ac, %bb.j ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.01.05.i.i
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !647, !noundef !3
  %i.ab = icmp eq i8 %i.aa, 96
  br i1 %i.ab, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread45, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.ac = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ac, %i.q
  br i1 %exitcond.not.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread45, label %.lr.ph.i.i

_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit: ; preds = %bb.i
  %i.ad = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 96, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef range(i64 0, -9223372036854775808) %i.q)
  %i.ae = extractvalue { i64, i64 } %i.ad, 0
  %i.af = icmp eq i64 %i.ae, 1
  %spec.select49 = select i1 %i.af, ptr null, ptr %i.b
  br label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread45
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6googleNtB2_20ParameterDisplayName5parse(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 19 uses
  %i.b = alloca [24 x i8], align 8                ; 16 uses
  %i.c = alloca [96 x i8], align 8                ; 23 uses
  %i.d = alloca [96 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8, !alias.scope !672, !noalias !673
  %.sroa.4.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx1.i, align 8, !alias.scope !672, !noalias !673
  %.sroa.6.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx3.i, align 8, !alias.scope !672, !noalias !673
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %2, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx3.sroa_idx.i, align 8, !alias.scope !672, !noalias !673
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %1, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.i, align 8, !alias.scope !672, !noalias !673
  %.sroa.6.sroa.5.sroa.4.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %2, ptr %.sroa.6.sroa.5.sroa.4.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i, align 8, !alias.scope !672, !noalias !673
  %.sroa.6.sroa.5.sroa.5.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 0, ptr %.sroa.6.sroa.5.sroa.5.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i, align 8, !alias.scope !672, !noalias !673
  %.sroa.6.sroa.5.sroa.6.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %2, ptr %.sroa.6.sroa.5.sroa.6.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i, align 8, !alias.scope !672, !noalias !673
  %.sroa.6.sroa.5.sroa.7.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 44, ptr %.sroa.6.sroa.5.sroa.7.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i, align 8, !alias.scope !672, !noalias !673
  %.sroa.6.sroa.5.sroa.8.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 44, ptr %.sroa.6.sroa.5.sroa.8.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i, align 4, !alias.scope !672, !noalias !673
  %.sroa.6.sroa.5.sroa.9.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i8 1, ptr %.sroa.6.sroa.5.sroa.9.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i, align 8, !alias.scope !672, !noalias !673
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i8 1, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx3.sroa_idx.i, align 8, !alias.scope !672, !noalias !673
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx3.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 89
  store i8 0, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx3.sroa_idx.i, align 1, !alias.scope !672, !noalias !673
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = call noundef zeroext i1 @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_3str4iter5SplitcEINtNtBb_6option8IntoIterReEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldB1P_B1P_uINtNtNtBb_3ops12control_flow11ControlFlowuENvMB15_e4trimNCINvNvB1T_3all5checkB1P_NvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6google17is_parameter_nameE0E0B3c_EB4D_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d, ptr noalias noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.f, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 26 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 25 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %.sroa.4.0..sroa_idx1.i62 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.52.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx3.i64 = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx3.sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %.sroa.6.sroa.5.sroa.4.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sroa.6.sroa.5.sroa.5.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %.sroa.6.sroa.5.sroa.6.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %.sroa.6.sroa.5.sroa.7.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %.sroa.6.sroa.5.sroa.8.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.c, i64 76 ; 2 uses
  %.sroa.6.sroa.5.sroa.9.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx3.sroa_idx.sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx3.sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx3.sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.c, i64 89 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !674
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 5)
  call void @llvm.experimental.noalias.scope.decl(metadata !675)
  call void @llvm.experimental.noalias.scope.decl(metadata !676)
  %i.s = load i64, ptr %i.a, align 8, !range !5, !alias.scope !676, !noalias !677, !noundef !3
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.l, label %.preheader.i.i

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.6.0..sroa_idx2, align 8
  %.sroa.7.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.7.0..sroa_idx4, align 8
  br label %bb.q

.preheader.i.i:                                   ; preds = %.noexc
  %i.u = load i8, ptr %i.g, align 2, !range !18, !alias.scope !678, !noalias !679, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_RNvXsw_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_15ReverseSearcher9next_back.exit.thread7.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.w = load ptr, ptr %i.j, align 8, !alias.scope !678, !noalias !679, !nonnull !3, !noundef !3 ; 8 uses
  %i.x = load i64, ptr %i.k, align 8, !alias.scope !678, !noalias !679, !noundef !3 ; 8 uses
  %.promoted.i.i = load i8, ptr %i.h, align 1, !alias.scope !678, !noalias !679
  %.promoted29.i.i = load i64, ptr %i.i, align 8, !alias.scope !678, !noalias !679 ; 12 uses
  %i.y = trunc nuw i8 %.promoted.i.i to i1        ; 2 uses
  %i.z = icmp eq i64 %.promoted29.i.i, 0
  br i1 %i.z, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.promoted29.i.i, %i.x
  br i1 %.not.i.i.i.peel.i, label %bb.c, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %.lr.ph.i
  %i.aa = icmp eq i64 %.promoted29.i.i, %i.x
  br i1 %i.aa, label %bb.d, label %.loopexit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %.promoted29.i.i
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !680, !noalias !681, !noundef !3
  %i.ad = icmp sgt i8 %i.ac, -65
  br i1 %i.ad, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c, %.split.i.i.i.peel.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 %.promoted29.i.i ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -1
  %i.ag = load i8, ptr %i.af, align 1, !noalias !682, !noundef !3 ; 3 uses
  %i.ah = icmp sgt i8 %i.ag, -1
  br i1 %i.ah, label %bb.g, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit17.i.i.i.peel.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit17.i.i.i.peel.i: ; preds = %bb.d
  %i.ai = icmp ne i64 %.promoted29.i.i, 1
  call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 -2
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !682, !noundef !3 ; 3 uses
  %i.al = and i8 %i.ak, 31
  %i.am = zext nneg i8 %i.al to i32
  %i.an = icmp slt i8 %i.ak, -64
  br i1 %i.an, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit19.i.i.i.peel.i, label %bb.f

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit19.i.i.i.peel.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit17.i.i.i.peel.i
  %i.ao = icmp ne i64 %.promoted29.i.i, 2
  call void @llvm.assume(i1 %i.ao)
  %i.ap = getelementptr inbounds i8, ptr %i.ae, i64 -3
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !682, !noundef !3 ; 3 uses
  %i.ar = and i8 %i.aq, 15
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = icmp slt i8 %i.aq, -64
  br i1 %i.at, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit21.i.i.i.peel.i, label %bb.e

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit21.i.i.i.peel.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit19.i.i.i.peel.i
  %i.au = icmp ne i64 %.promoted29.i.i, 3
  call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.aw = load i8, ptr %i.av, align 1, !noalias !682, !noundef !3
  %i.ax = and i8 %i.aw, 7
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = shl nuw nsw i32 %i.ay, 6
  %i.ba = and i8 %i.aq, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit21.i.i.i.peel.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit19.i.i.i.peel.i
  %.sroa.010.1.i.i.i.peel.i = phi i32 [ %i.bc, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit21.i.i.i.peel.i ], [ %i.as, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit19.i.i.i.peel.i ]
  %i.bd = shl nuw nsw i32 %.sroa.010.1.i.i.i.peel.i, 6
  %i.be = and i8 %i.ak, 63
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bd, %i.bf
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit17.i.i.i.peel.i
  %.sroa.010.0.i.i.i.peel.i = phi i32 [ %i.bg, %bb.e ], [ %i.am, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCskEUeM34gmJU_6ty_ide.exit17.i.i.i.peel.i ]
  %i.bh = shl nuw nsw i32 %.sroa.010.0.i.i.i.peel.i, 6
  %i.bi = and i8 %i.ag, 63
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bh, %i.bj
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.bl = zext nneg i8 %i.ag to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.1.i.ph.i.i.peel.i = phi i32 [ %i.bl, %bb.g ], [ %i.bk, %bb.f ] ; 4 uses
  %i.bm = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.peel.i, 1114112
  call void @llvm.assume(i1 %i.bm)
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structured11render_into:bb.a
          to label %.body47.i unwind label %bb.ea, !noalias !1268

bb.ck:                                            ; preds = %bb.cj
  %i.lk = load ptr, ptr %.sroa.411.0..sroa_idx.i.i.i.i, align 8, !noalias !1269, !nonnull !3, !noundef !3 ; 2 uses
  %i.ll = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !noalias !1269, !noundef !3 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.cs, %bb.ck
  %.lcssa3546.i.i.i.i.i = phi i64 [ %.lcssa3544.i.i.i.i.i, %bb.cs ], [ 0, %bb.ck ] ; 3 uses
  %.sroa.01.041.i.i.i.i.i = phi i64 [ %i.mr, %bb.cs ], [ 0, %bb.ck ] ; 17 uses
  %.sroa.06.040.i.i.i.i.i = phi i1 [ %.mux.i.i.i.i.i, %bb.cs ], [ false, %bb.ck ] ; 2 uses
  %.lcssa3839.i.i.i.i.i = phi i64 [ %.lcssa37.i.i.i.i.i, %bb.cs ], [ 0, %bb.ck ] ; 4 uses
  %i.lm = icmp ult i64 %i.ll, %.lcssa3546.i.i.i.i.i
  br i1 %i.lm, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskEUeM34gmJU_6ty_ide.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i.i, %bb.co
  %i.ln = phi i64 [ %i.mc, %bb.co ], [ %.lcssa3546.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i ] ; 4 uses
  %i.lo = sub nuw i64 %i.ll, %i.ln                ; 5 uses
  %i.lp = getelementptr i8, ptr %i.lk, i64 %i.ln  ; 3 uses
  %i.lq = icmp samesign ult i64 %i.lo, 16
  br i1 %i.lq, label %.preheader.i.i.i.i.i.i.i.i, label %bb.cl

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.lo, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.cl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.lr = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.lp, i64 noundef range(i64 0, -9223372036854775808) %i.lo)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !1268

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.cm, %.lr.ph.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.lo, %bb.cm ]
  %.sroa.0.1.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.cm ]
  %i.ls = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i.i, 0
  %i.lt = insertvalue { i64, i64 } %i.ls, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.i.i, %bb.cm
  %.sroa.01.05.i.i.i.i.i.i.i.i = phi i64 [ %i.lx, %bb.cm ], [ 0, %.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 %.sroa.01.05.i.i.i.i.i.i.i.i
  %i.lv = load i8, ptr %i.lu, align 1, !alias.scope !1271, !noalias !1272, !noundef !3
  %i.lw = icmp eq i8 %i.lv, 10
  br i1 %i.lw, label %._crit_edge.i.i.i.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.lx = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.lx, %i.lo
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.cl
  %.merged.i.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.lt, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.lr, %bb.cl ] ; 2 uses
  %i.ly = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i.i, 0
  %i.lz = trunc nuw i64 %i.ly to i1
  br i1 %i.lz, label %bb.cn, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskEUeM34gmJU_6ty_ide.exit.i.i.i.i.i.i

bb.cn:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i
  %i.ma = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.mb = add i64 %i.ln, 1
  %i.mc = add i64 %i.mb, %i.ma                    ; 6 uses
  %.not13.i.i.i.i.i.i.i = icmp ugt i64 %i.mc, %i.ll
  %i.md = add i64 %i.ma, %i.ln
  %or.cond.i.i.not.i.i.i.i.i = icmp ult i64 %i.md, %i.ll
  br i1 %or.cond.i.i.not.i.i.i.i.i, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cp, %bb.cn
  br i1 %.not13.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskEUeM34gmJU_6ty_ide.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.cp:                                            ; preds = %bb.cn
  %i.me = getelementptr i8, ptr %i.lp, i64 %i.ma
  %lhsc.i.i.i.i.i = load i8, ptr %i.me, align 1, !alias.scope !1270, !noalias !1268
  %i.mf = icmp eq i8 %lhsc.i.i.i.i.i, 10
  br i1 %i.mf, label %select.unfold.i.i.i.i.i, label %bb.co

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskEUeM34gmJU_6ty_ide.exit.i.i.i.i.i.i: ; preds = %bb.co, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i
  %.lcssa3545.i.i.i.i.i = phi i64 [ %.lcssa3546.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i ], [ %i.mc, %bb.co ], [ %i.ll, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i ]
  %.not.i3.i.not.i.i.i.i.i = icmp eq i64 %i.ll, %.lcssa3839.i.i.i.i.i
  br i1 %.not.i3.i.not.i.i.i.i.i, label %bb.dd, label %select.unfold.i.i.i.i.i

select.unfold.i.i.i.i.i:                          ; preds = %bb.cp, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskEUeM34gmJU_6ty_ide.exit.i.i.i.i.i.i
  %.lcssa3544.i.i.i.i.i = phi i64 [ %.lcssa3545.i.i.i.i.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskEUeM34gmJU_6ty_ide.exit.i.i.i.i.i.i ], [ %i.mc, %bb.cp ]
  %.lcssa37.i.i.i.i.i = phi i64 [ %.lcssa3839.i.i.i.i.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskEUeM34gmJU_6ty_ide.exit.i.i.i.i.i.i ], [ %i.mc, %bb.cp ]
  %i.mg = phi i1 [ true, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskEUeM34gmJU_6ty_ide.exit.i.i.i.i.i.i ], [ false, %bb.cp ]
  %.pn.i.i.i.i.i = phi i64 [ %i.ll, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskEUeM34gmJU_6ty_ide.exit.i.i.i.i.i.i ], [ %i.mc, %bb.cp ]
  %.sroa.4.1.i.i.i.i.i.i = sub nuw i64 %.pn.i.i.i.i.i, %.lcssa3839.i.i.i.i.i ; 3 uses
  %.sroa.0.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.lcssa3839.i.i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1273
  store i32 10, ptr %i.b, align 4, !noalias !1273
  %i.mh = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
          to label %.noexc38.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.i.i.i, !noalias !1268

.noexc38.i.i.i.i:                                 ; preds = %select.unfold.i.i.i.i.i
  %i.mi = sext i1 %i.mh to i64
  %.sroa.6.0.i.i.i.i.i = add i64 %.sroa.4.1.i.i.i.i.i.i, %i.mi ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1273
  %i.mj = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre18trim_start_matchescECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i.i, i64 noundef %.sroa.6.0.i.i.i.i.i, i32 noundef 32)
          to label %.noexc39.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.i.i.i, !noalias !1268 ; 2 uses

.noexc39.i.i.i.i:                                 ; preds = %.noexc38.i.i.i.i
  %i.mk = extractvalue { ptr, i64 } %i.mj, 0      ; 2 uses
  %i.ml = extractvalue { ptr, i64 } %i.mj, 1      ; 4 uses
  %i.mm = sub i64 %.sroa.6.0.i.i.i.i.i, %i.ml     ; 2 uses
  %i.mn = icmp eq i64 %i.ml, 0                    ; 2 uses
  %.sroa.06.040.not.i.i.i.i.i = xor i1 %.sroa.06.040.i.i.i.i.i, true
  %brmerge.i.i.i.i.i = select i1 %.sroa.06.040.not.i.i.i.i.i, i1 true, i1 %i.mn
  %.mux.i.i.i.i.i = select i1 %.sroa.06.040.i.i.i.i.i, i1 true, i1 %i.mn
  br i1 %brmerge.i.i.i.i.i, label %bb.cq, label %.noexc40.i.thread.i.i.i

bb.cq:                                            ; preds = %.noexc39.i.i.i.i
  %i.mo = icmp eq i64 %.sroa.01.041.i.i.i.i.i, 0  ; 2 uses
  %i.mp = icmp ugt i64 %i.mm, 3
  %or.cond.i.i.i.i.i = select i1 %i.mo, i1 %i.mp, i1 false
  br i1 %or.cond.i.i.i.i.i, label %.thread92.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.mq = icmp ult i64 %i.mm, 4
  br i1 %i.mq, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %_RNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structured34line_starts_markdown_block_content.exit.i.i.i.i.i, %.noexc41.i.i.i.i, %bb.cr
  %i.mr = add i64 %.sroa.4.1.i.i.i.i.i.i, %.sroa.01.041.i.i.i.i.i
  br i1 %i.mg, label %bb.dd, label %.lr.ph.split.i.i.i.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.ms = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre18trim_start_matchescECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.mk, i64 noundef %i.ml, i32 noundef 32)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.i.i.i, !noalias !1242 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.ct
  %i.mt = extractvalue { ptr, i64 } %i.ms, 0      ; 7 uses
  %i.mu = extractvalue { ptr, i64 } %i.ms, 1      ; 9 uses
  %i.mv = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.mt, i64 noundef %i.mu, ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 3)
          to label %.noexc15.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.i.i.i, !noalias !1242 ; 2 uses

.noexc15.i.i.i:                                   ; preds = %.noexc.i.i.i
  %i.mw = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.mt, i64 noundef %i.mu, ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 3)
          to label %.noexc16.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.i.i.i, !noalias !1242

.noexc16.i.i.i:                                   ; preds = %.noexc15.i.i.i
  %brmerge.i.i.i.i = or i1 %i.mv, %i.mw
  br i1 %brmerge.i.i.i.i, label %bb.cu, label %.noexc40.i.i.i.i

bb.cu:                                            ; preds = %.noexc16.i.i.i
  br i1 %i.mv, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.mx = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre18trim_start_matchescECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.mt, i64 noundef %i.mu, i32 noundef 126)
          to label %.noexc17.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.i.i.i, !noalias !1242

.noexc17.i.i.i:                                   ; preds = %bb.cv
  %i.my = extractvalue { ptr, i64 } %i.mx, 1      ; 2 uses
  %i.mz = sub i64 %i.mu, %i.my                    ; 5 uses
  %i.na = icmp eq i64 %i.mz, 0
  br i1 %i.na, label %.noexc40.i.thread.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %.noexc17.i.i.i
  %.not.i.i12.i.i.i = icmp ult i64 %i.mz, %i.mu
  br i1 %.not.i.i12.i.i.i, label %bb.cx, label %.split.i.i13.i.i.i

.split.i.i13.i.i.i:                               ; preds = %bb.cw
  %i.nb = icmp eq i64 %i.my, 0
  br i1 %i.nb, label %.noexc40.i.thread.i.i.i, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i.i.i

bb.cx:                                            ; preds = %bb.cw
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.mz
  %i.nd = load i8, ptr %i.nc, align 1, !alias.scope !1274, !noalias !1268, !noundef !3
  %i.ne = icmp sgt i8 %i.nd, -65
  br i1 %i.ne, label %.noexc40.i.thread.i.i.i, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i.i.i

bb.cy:                                            ; preds = %bb.cu
  %i.nf = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre18trim_start_matchescECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.mt, i64 noundef %i.mu, i32 noundef 96)
          to label %.noexc18.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.i.i.i, !noalias !1242 ; 2 uses

.noexc18.i.i.i:                                   ; preds = %bb.cy
  %i.ng = extractvalue { ptr, i64 } %i.nf, 1      ; 6 uses
  %i.nh = sub i64 %i.mu, %i.ng                    ; 5 uses
  %i.ni = icmp eq i64 %i.nh, 0
  br i1 %i.ni, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %.noexc18.i.i.i
  %.not.i36.i.i.i.i = icmp ult i64 %i.nh, %i.mu
  br i1 %.not.i36.i.i.i.i, label %bb.da, label %.split.i37.i.i.i.i

.split.i37.i.i.i.i:                               ; preds = %bb.cz
  %i.nj = icmp eq i64 %i.ng, 0
  br i1 %i.nj, label %.noexc40.i.thread.i.i.i, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.nh
  %i.nl = load i8, ptr %i.nk, align 1, !alias.scope !1275, !noalias !1268, !noundef !3
  %i.nm = icmp sgt i8 %i.nl, -65
  br i1 %i.nm, label %bb.db, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i.i.i

_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i.i.i: ; preds = %.split.i37.i.i.i.i, %bb.cx, %.split.i.i13.i.i.i, %bb.da
  %.sroa.06.0.i.i.i.i = phi i64 [ %i.nh, %bb.da ], [ %i.mz, %bb.cx ], [ %i.nh, %.split.i37.i.i.i.i ], [ %i.mz, %.split.i.i13.i.i.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.mt, i64 noundef %i.mu, i64 noundef 0, i64 noundef %.sroa.06.0.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #27
          to label %.noexc19.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !1242

.noexc19.i.i.i:                                   ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i.i.i
  unreachable

bb.db:                                            ; preds = %bb.da, %.noexc18.i.i.i
  %i.nn = extractvalue { ptr, i64 } %i.nf, 0      ; 2 uses
  %i.no = icmp samesign ult i64 %i.ng, 16
  br i1 %i.no, label %.preheader.i.i.i.i.i.i, label %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.db
  %.not.i.i.i14.i.i.i = icmp eq i64 %i.ng, 0
  br i1 %.not.i.i.i14.i.i.i, label %.noexc40.i.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.dc
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.ns, %bb.dc ], [ 0, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.nq = load i8, ptr %i.np, align 1, !alias.scope !1276, !noalias !1268, !noundef !3
  %i.nr = icmp eq i8 %i.nq, 96
  br i1 %i.nr, label %.noexc40.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ns = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ns, %i.ng
  br i1 %exitcond.not.i.i.i.i.i.i, label %.noexc40.i.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i.i.i.i: ; preds = %bb.db
  %i.nt = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 96, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.nn, i64 noundef range(i64 0, -9223372036854775808) %i.ng)
          to label %.noexc20.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.i.i.i, !noalias !1242

.noexc20.i.i.i:                                   ; preds = %_RNvXs2_NtNtCs4NRVxsYgnAr_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i.i.i.i
  %i.nu = extractvalue { i64, i64 } %i.nt, 0
  %i.nv = icmp eq i64 %i.nu, 1
  br label %.noexc40.i.i.i.i

.noexc40.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc20.i.i.i, %.noexc16.i.i.i
  %.sroa.0.0.i.i.i.i = phi i1 [ true, %.noexc16.i.i.i ], [ %i.nv, %.noexc20.i.i.i ], [ true, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %brmerge.i.not.i.i.i.i.i = and i1 %i.mo, %.sroa.0.0.i.i.i.i
  br i1 %brmerge.i.not.i.i.i.i.i, label %.split.i.i.i.i.i, label %_RNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structured34line_starts_markdown_block_content.exit.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %.noexc40.i.i.i.i
  %i.nw = invoke noundef zeroext i1 @_RNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8document6syntax30starts_with_markdown_list_item(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.mk, i64 noundef %i.ml)
          to label %.noexc41.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.loopexit.i.i.i, !noalias !1268

.noexc41.i.i.i.i:                                 ; preds = %.split.i.i.i.i.i
  br i1 %i.nw, label %.thread92.i.i.i.i, label %bb.cs

_RNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structured34line_starts_markdown_block_content.exit.i.i.i.i.i: ; preds = %.noexc40.i.i.i.i
  br i1 %.sroa.0.0.i.i.i.i, label %bb.cs, label %.noexc40.i.thread.i.i.i

.noexc40.i.thread.i.i.i:                          ; preds = %_RNvNtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structured34line_starts_markdown_block_content.exit.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %.noexc39.i.i.i.i, %bb.dc, %.split.i37.i.i.i.i, %bb.cx, %.split.i.i13.i.i.i, %.noexc17.i.i.i
  %i.nx = icmp eq i64 %.sroa.01.041.i.i.i.i.i, 0
  br i1 %i.nx, label %.thread92.i.i.i.i, label %bb.dm

bb.dd:                                            ; preds = %bb.cs, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCskEUeM34gmJU_6ty_ide.exit.i.i.i.i.i.i
  br i1 %.sroa.0.1.i.i.i.i, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ny = load ptr, ptr %.sroa.411.0..sroa_idx.i.i.i.i, align 8, !noalias !1269, !nonnull !3, !noundef !3
  %i.nz = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !noalias !1269, !noundef !3 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.nz)
          to label %.noexc43.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i.i, !noalias !1268

.noexc43.i.i.i.i:                                 ; preds = %bb.de
  %i.oa = load i64, ptr %i.co, align 8, !alias.scope !1277, !noalias !1267, !noundef !3 ; 3 uses
  %i.ob = icmp sgt i64 %i.oa, -1
  call void @llvm.assume(i1 %i.ob)
  %.not.i.i.i.i.i = icmp eq i64 %i.nz, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %.noexc43.i.i.i.i
  %i.oc = load ptr, ptr %i.cp, align 8, !alias.scope !1277, !noalias !1267, !nonnull !3, !noundef !3
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.od, ptr nonnull readonly align 1 %i.ny, i64 %i.nz, i1 false), !noalias !1268
  %.pre.i42.i.i.i.i = load i64, ptr %i.co, align 8, !alias.scope !1277, !noalias !1267
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit.i.i.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit.i.i.i.i: ; preds = %bb.df, %.noexc43.i.i.i.i
  %i.oe = phi i64 [ %.pre.i42.i.i.i.i, %bb.df ], [ %i.oa, %.noexc43.i.i.i.i ]
  %i.of = add i64 %i.oe, %i.nz
  br label %bb.dj

bb.dg:                                            ; preds = %bb.dd
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 3)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i.i, !noalias !1268

bb.dh:                                            ; preds = %bb.dg
  %i.og = load i64, ptr %i.co, align 8, !alias.scope !1278, !noalias !1267, !noundef !3 ; 2 uses
  %i.oh = icmp sgt i64 %i.og, -1
  call void @llvm.assume(i1 %i.oh)
  %i.oi = load ptr, ptr %i.cp, align 8, !alias.scope !1278, !noalias !1267, !nonnull !3, !noundef !3
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.og
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.oj, ptr noundef nonnull align 1 dereferenceable(3) @43, i64 3, i1 false), !noalias !1268
  %.pre.i44.i.i.i.i = load i64, ptr %i.co, align 8, !alias.scope !1278, !noalias !1267
  %i.ok = add i64 %.pre.i44.i.i.i.i, 3
  store i64 %i.ok, ptr %i.co, align 8, !alias.scope !1278, !noalias !1267
  %i.ol = load ptr, ptr %.sroa.411.0..sroa_idx.i.i.i.i, align 8, !noalias !1269, !nonnull !3, !noundef !3
  %i.om = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !noalias !1269, !noundef !3 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.om)
          to label %.noexc49.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i.i, !noalias !1268

.noexc49.i.i.i.i:                                 ; preds = %bb.dh
  %i.on = load i64, ptr %i.co, align 8, !alias.scope !1279, !noalias !1267, !noundef !3 ; 3 uses
  %i.oo = icmp sgt i64 %i.on, -1
  call void @llvm.assume(i1 %i.oo)
  %.not.i47.i.i.i.i = icmp eq i64 %i.om, 0
  br i1 %.not.i47.i.i.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit50.i.i.i.i, label %bb.di

bb.di:                                            ; preds = %.noexc49.i.i.i.i
  %i.op = load ptr, ptr %i.cp, align 8, !alias.scope !1279, !noalias !1267, !nonnull !3, !noundef !3
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.on
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.oq, ptr nonnull readonly align 1 %i.ol, i64 %i.om, i1 false), !noalias !1268
  %.pre.i48.i.i.i.i = load i64, ptr %i.co, align 8, !alias.scope !1279, !noalias !1267
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit50.i.i.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit50.i.i.i.i: ; preds = %bb.di, %.noexc49.i.i.i.i
  %i.or = phi i64 [ %.pre.i48.i.i.i.i, %bb.di ], [ %i.on, %.noexc49.i.i.i.i ]
  %i.os = add i64 %i.or, %i.om
  br label %bb.dj

bb.dj:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit81.i.i.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit57.i.i.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit50.i.i.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit.i.i.i.i
  %.sink.i.i.i = phi i64 [ %i.qu, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit81.i.i.i.i ], [ %i.pi, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit57.i.i.i.i ], [ %i.os, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit50.i.i.i.i ], [ %i.of, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit.i.i.i.i ]
  store i64 %.sink.i.i.i, ptr %i.co, align 8, !alias.scope !1280, !noalias !1267
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit.i.i.i.i unwind label %bb.dk, !noalias !1268

bb.dk:                                            ; preds = %bb.dj
  %i.ot = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body47.i unwind label %bb.dl, !noalias !1268

bb.dl:                                            ; preds = %bb.dk
  %i.ou = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !1268
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit.i.i.i.i: ; preds = %bb.dj
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc49.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1204

.noexc49.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECskEUeM34gmJU_6ty_ide.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1269
  br label %_RNvMs1_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structuredNtB5_11SectionItem6render.exit.i.i.i.backedge

_RNvMs1_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structuredNtB5_11SectionItem6render.exit.i.i.i.backedge: ; preds = %.noexc49.i, %.noexc36.i
  br label %_RNvMs1_NtNtNtCskEUeM34gmJU_6ty_ide9docstring8markdown10structuredNtB5_11SectionItem6render.exit.i.i.i

.thread92.i.i.i.i:                                ; preds = %.noexc41.i.i.i.i, %bb.cq, %.noexc40.i.thread.i.i.i
  br i1 %.sroa.0.1.i.i.i.i, label %bb.dq, label %bb.do

bb.dm:                                            ; preds = %.noexc40.i.thread.i.i.i
  %i.ov = load ptr, ptr %.sroa.411.0..sroa_idx.i.i.i.i, align 8, !noalias !1269, !nonnull !3, !noundef !3 ; 4 uses
  %i.ow = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !noalias !1269, !noundef !3 ; 4 uses
  %.not.i51.i.i.i.i = icmp ult i64 %.sroa.01.041.i.i.i.i.i, %i.ow
  br i1 %.not.i51.i.i.i.i, label %bb.dn, label %.split.i52.i.i.i.i

.split.i52.i.i.i.i:                               ; preds = %bb.dm
  %i.ox = icmp eq i64 %.sroa.01.041.i.i.i.i.i, %i.ow
  br i1 %i.ox, label %bb.dr, label %.invoke.i.i.i.i

bb.dn:                                            ; preds = %bb.dm
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 %.sroa.01.041.i.i.i.i.i
  %i.oz = load i8, ptr %i.oy, align 1, !alias.scope !1281, !noalias !1268, !noundef !3
  %i.pa = icmp sgt i8 %i.oz, -65
  br i1 %i.pa, label %bb.dr, label %.invoke.i.i.i.i

bb.do:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit60.i.i.i.i, %.thread92.i.i.i.i
  %i.pb = load ptr, ptr %.sroa.411.0..sroa_idx.i.i.i.i, align 8, !noalias !1269, !nonnull !3, !noundef !3
  %i.pc = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !noalias !1269, !noundef !3 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.pc)
          to label %.noexc56.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i.i, !noalias !1268

.noexc56.i.i.i.i:                                 ; preds = %bb.do
  %i.pd = load i64, ptr %i.co, align 8, !alias.scope !1282, !noalias !1267, !noundef !3 ; 3 uses
  %i.pe = icmp sgt i64 %i.pd, -1
  call void @llvm.assume(i1 %i.pe)
  %.not.i54.i.i.i.i = icmp eq i64 %i.pc, 0
  br i1 %.not.i54.i.i.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit57.i.i.i.i, label %bb.dp

bb.dp:                                            ; preds = %.noexc56.i.i.i.i
  %i.pf = load ptr, ptr %i.cp, align 8, !alias.scope !1282, !noalias !1267, !nonnull !3, !noundef !3
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pg, ptr nonnull readonly align 1 %i.pb, i64 %i.pc, i1 false), !noalias !1268
  %.pre.i55.i.i.i.i = load i64, ptr %i.co, align 8, !alias.scope !1282, !noalias !1267
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit57.i.i.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit57.i.i.i.i: ; preds = %bb.dp, %.noexc56.i.i.i.i
  %i.ph = phi i64 [ %.pre.i55.i.i.i.i, %bb.dp ], [ %i.pd, %.noexc56.i.i.i.i ]
  %i.pi = add i64 %i.ph, %i.pc
  br label %bb.dj

bb.dq:                                            ; preds = %.thread92.i.i.i.i
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit60.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.i.i.i, !noalias !1268

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCskEUeM34gmJU_6ty_ide.exit60.i.i.i.i: ; preds = %bb.dq
  %i.pj = load i64, ptr %i.co, align 8, !alias.scope !1283, !noalias !1267, !noundef !3 ; 2 uses
  %i.pk = icmp sgt i64 %i.pj, -1
  call void @llvm.assume(i1 %i.pk)
  %i.pl = load ptr, ptr %i.cp, align 8, !alias.scope !1283, !noalias !1267, !nonnull !3, !noundef !3
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pj
  store i16 2570, ptr %i.pm, align 1, !noalias !1268
  %.pre.i58.i.i.i.i = load i64, ptr %i.co, align 8, !alias.scope !1283, !noalias !1267
  %i.pn = add i64 %.pre.i58.i.i.i.i, 2
  store i64 %i.pn, ptr %i.co, align 8, !alias.scope !1283, !noalias !1267
end_hunk_1
