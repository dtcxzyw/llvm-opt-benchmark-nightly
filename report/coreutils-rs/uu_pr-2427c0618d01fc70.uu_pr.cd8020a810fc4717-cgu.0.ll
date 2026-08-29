Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_pr-2427c0618d01fc70.uu_pr.cd8020a810fc4717-cgu.0?download=true
inline.NumInlined: 1527
inline.NumDeleted: 885
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvCshDScVpnq8df_5uu_pr10write_pageNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEB2_:bb.a
  %.sroa.5.0..sroa_idx.4.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 112
  store i64 0, ptr %.sroa.5.0..sroa_idx.4.i, align 8, !noalias !31
  br label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit.preheader

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #31, !noalias !31
  unreachable

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 314
  %.val3782 = load i8, ptr %i.cx, align 2         ; 2 uses
  %i.cy = trunc nuw i8 %.val3782 to i1
  store i64 0, ptr %i.ac, align 8, !alias.scope !31
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cz, align 8, !alias.scope !31
  %i.da = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 0, ptr %i.da, align 8, !alias.scope !31
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECshDScVpnq8df_5uu_pr.exit

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit.preheader: ; preds = %_RNvCshDScVpnq8df_5uu_pr14header_content.exit, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.preheader.i
  %.val3788.ph = phi i8 [ 1, %_RNvCshDScVpnq8df_5uu_pr14header_content.exit ], [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.preheader.i ]
  %.sink4.i.ph = phi i64 [ 0, %_RNvCshDScVpnq8df_5uu_pr14header_content.exit ], [ 5, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.preheader.i ] ; 4 uses
  %.sink2.i.ph = phi ptr [ inttoptr (i64 8 to ptr), %_RNvCshDScVpnq8df_5uu_pr14header_content.exit ], [ %i.cv, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.preheader.i ] ; 3 uses
  store i64 %.sink4.i.ph, ptr %i.ac, align 8, !alias.scope !31
  %i.db = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.sink2.i.ph, ptr %i.db, align 8, !alias.scope !31
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.sink4.i.ph, ptr %i.dc, align 8, !alias.scope !31
  %.ptr = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 3 uses
  %.sroa.071.0.copyload72 = load i64, ptr %i.cf, align 8, !noalias !34 ; 5 uses
  %.sroa.8.0..sroa.669.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa.669.8..sroa_idx, align 8, !noalias !34 ; 5 uses
  %.not = icmp eq i64 %.sroa.071.0.copyload72, -1
  br i1 %.not, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit.preheader
  %.sroa.8.sroa.6.0..sroa.8.0..sroa.669.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.sroa.8.sroa.6.0.copyload = load i64, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa.669.8..sroa_idx.sroa_idx, align 8, !noalias !34
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload) ]
  %i.dd = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.8.sroa.0.0.copyload, i64 noundef %.sroa.8.sroa.6.0.copyload) #30 ; 2 uses
  %.not35 = icmp eq ptr %i.dd, null
  br i1 %.not35, label %bb.dq, label %bb.ej

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit.thread: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit.preheader
  %.sroa.669.0162.idx.lcssa.neg = phi i64 [ 4, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit.preheader ], [ 2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.1 ], [ 3, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.2 ]
  %.ptr.lcssa = phi ptr [ %.ptr, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit.preheader ], [ %.ptr.2, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.1 ], [ %.ptr.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit ], [ %.ptr.3, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.2 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.df, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.i ], [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCshDScVpnq8df_5uu_pr.exit.thread ] ; 2 uses
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %.ptr.lcssa, i64 %.sroa.0.03.i.i.i ; 2 uses
  %i.df = add nuw nsw i64 %.sroa.0.03.i.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %.val.i.i.i.i.i = load i64, ptr %i.de, align 8, !range !18, !alias.scope !46, !noalias !47, !noundef !4 ; 2 uses
  %i.dg = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.dg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !46, !noalias !47, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !52
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.i: ; preds = %bb.s, %.lr.ph.i.i.i
  %i.di = icmp eq i64 %i.df, %.sroa.669.0162.idx.lcssa.neg
  br i1 %i.di, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.critedge: ; preds = %bb.eh, %bb.ei, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.3
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.critedge
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !47
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECshDScVpnq8df_5uu_pr.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECshDScVpnq8df_5uu_pr.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i
  %.sink2.i338346358 = phi ptr [ inttoptr (i64 8 to ptr), %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.thread ], [ %.sink2.i.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i ] ; 3 uses
  %.sink4.i334347357 = phi i64 [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.thread ], [ %.sink4.i.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i ] ; 3 uses
  %i.dj = phi i1 [ true, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.thread ], [ %i.cu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i ] ; 2 uses
  %.val3788328350356 = phi i8 [ %.val3782, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.thread ], [ %.val3788.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i ]
  %i.dk = phi i1 [ %i.cy, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i.thread ], [ %i.cu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !56, !noalias !58, !nonnull !4, !noundef !4
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !56, !noalias !58, !noundef !4
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 312
  %i.dq = load i8, ptr %i.dp, align 8, !range !10, !alias.scope !56, !noalias !58, !noundef !4
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !56, !noalias !58
  %i.dt = zext nneg i8 %i.dq to i64
  %.sroa.02.0.i = lshr i64 %i.ds, %i.dt           ; 42 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !range !21, !alias.scope !56, !noalias !58, !noundef !4 ; 6 uses
  %i.dw = trunc nuw i64 %i.dv to i1
  br i1 %i.dw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECshDScVpnq8df_5uu_pr.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !56, !noalias !58
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 232
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !range !60, !alias.scope !56, !noalias !58
  br label %bb.v

bb.u:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECshDScVpnq8df_5uu_pr.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.ea = load i64, ptr %i.dz, align 8, !range !60, !alias.scope !61, !noalias !58, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ea, -1
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 264
  %.val.i.i.i38 = load i64, ptr %i.eb, align 8, !alias.scope !61, !noalias !58
  %.sroa.02.0.i.i.i = select i1 %.not.i.i, i64 1, i64 %.val.i.i.i38
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ec = phi i64 [ %.pre.i, %bb.t ], [ %i.ea, %bb.u ]
  %.sroa.09.0.i = phi i64 [ %i.dy, %bb.t ], [ %.sroa.02.0.i.i.i, %bb.u ] ; 49 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ee = load i64, ptr %i.ed, align 8, !range !21, !alias.scope !56, !noalias !58, !noundef !4
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !56, !noalias !58
  %.not76.i = icmp eq i64 %i.ec, -1
  br i1 %.not76.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.ei = load i8, ptr %i.eh, align 8, !range !10, !alias.scope !56, !noalias !58, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !64
  store i64 0, ptr %i.r, align 8, !noalias !64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ej, align 8, !noalias !64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %i.ek, align 8, !noalias !64
  %.not78.i = icmp eq i64 %i.dv, 0
  br i1 %.not78.i, label %.thread.i, label %bb.z

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !64
  store i64 0, ptr %i.r, align 8, !noalias !64
  %i.el = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.el, align 8, !noalias !64
  %i.em = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %i.em, align 8, !noalias !64
  %.not77.i = icmp eq i64 %i.dv, 0
  br i1 %.not77.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.en = mul i64 %.sroa.09.0.i, %.sroa.02.0.i
  %i.eo = icmp ult i64 %2, %i.en
  br i1 %i.eo, label %bb.aa, label %bb.ag

bb.z:                                             ; preds = %bb.x, %bb.w
  %.sroa.020.0.i = phi i8 [ %i.ei, %bb.w ], [ 0, %bb.x ] ; 2 uses
  %.not291.i = icmp eq i64 %.sroa.09.0.i, 0       ; 2 uses
  br i1 %.not291.i, label %._crit_edge284.thread.i, label %.lr.ph283.i

.lr.ph283.i:                                      ; preds = %bb.z
  %i.ep = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %2
  %i.eq = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  br label %bb.aq

bb.aa:                                            ; preds = %.thread.i, %bb.y
  %i.es = icmp eq i64 %.sroa.09.0.i, 0
  br i1 %i.es, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.et = udiv i64 %2, %.sroa.09.0.i              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !65
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.eu = mul nuw nsw i64 %i.et, 24               ; 2 uses
  %i.ev = icmp ugt i64 %.sroa.09.0.i, %2
  br i1 %i.ev, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_19to_table_short_file0EE9from_iterB1M_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !72
  %i.ew = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.eu, i64 noundef range(i64 1, 9) 8) #30, !noalias !72 ; 3 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.ad, label %.lr.ph.i.i.i.i.i.i.preheader13.i.i

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.eu) #31, !noalias !76
  unreachable

.lr.ph.i.i.i.i.i.i.preheader13.i.i:               ; preds = %bb.ac
  %i.ey = shl nuw nsw i64 %.sroa.09.0.i, 3        ; 2 uses
  %xtraiter595 = and i64 %.sroa.09.0.i, 1
  %i.ez = icmp eq i64 %.sroa.09.0.i, 1
  %unroll_iter601 = and i64 %.sroa.09.0.i, -2
  %lcmp.mod599.not = icmp eq i64 %xtraiter595, 0
  %lcmp.mod600 = trunc i64 %.sroa.09.0.i to i1
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_19to_table_short_file0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader13.i.i
  %i.fa = phi i64 [ %i.fb, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_19to_table_short_file0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader13.i.i ] ; 5 uses
  %i.fb = add nuw nsw i64 %i.fa, 1                ; 2 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !77
  %i.fc = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ey, i64 noundef range(i64 1, 9) 8) #30, !noalias !77 ; 5 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %.split.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ey) #31, !noalias !102
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fe = phi i64 [ %i.fl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %niter602 = phi i64 [ %niter602.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.ff = or disjoint i64 %i.fe, 1                ; 2 uses
  %i.fg = mul i64 %i.fe, %i.et
  %i.fh = add i64 %i.fg, %i.fa                    ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %2
  %i.fj = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.fh
  %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.fi, ptr %i.fj, ptr null
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fe
  store ptr %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.fk, align 8, !noalias !103
  %i.fl = add nuw i64 %i.fe, 2                    ; 2 uses
  %i.fm = mul i64 %i.ff, %i.et
  %i.fn = add i64 %i.fm, %i.fa                    ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %2
  %i.fp = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.fn
  %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = select i1 %i.fo, ptr %i.fp, ptr null
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.ff
  store ptr %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, ptr %i.fq, align 8, !noalias !103
  %niter602.next.1 = add i64 %niter602, 2         ; 2 uses
  %niter602.ncmp.1 = icmp eq i64 %niter602.next.1, %unroll_iter601
  br i1 %niter602.ncmp.1, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_19to_table_short_file0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_19to_table_short_file0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %lcmp.mod599.not, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_19to_table_short_file0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_19to_table_short_file0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init598 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fl, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_19to_table_short_file0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod600)
  %i.fr = mul i64 %.epil.init598, %i.et
  %i.fs = add i64 %i.fr, %i.fa                    ; 2 uses
  %i.ft = icmp ult i64 %i.fs, %2
  %i.fu = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.fs
  %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = select i1 %i.ft, ptr %i.fu, ptr null
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.epil.init598
  store ptr %.sroa.0.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, ptr %i.fv, align 8, !noalias !103
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_19to_table_short_file0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_19to_table_short_file0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_19to_table_short_file0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %i.fa ; 3 uses
  store i64 %.sroa.09.0.i, ptr %i.fw, align 8, !noalias !126
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr %i.fc, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !126
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store i64 %.sroa.09.0.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !126
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.fb, %i.et
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_19to_table_short_file0EE9from_iterB1M_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_19to_table_short_file0EE9from_iterB1M_.exit.i.i: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_19to_table_short_file0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.i.i, %bb.ab
  %.sroa.4.0.i.i27.i.i = phi i64 [ 0, %bb.ab ], [ %i.et, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_19to_table_short_file0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.10.0.i.i26.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ab ], [ %i.ew, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtBa_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEuNCNvB1R_19to_table_short_file0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_BY_IBW_BV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2n_EE0E0E0B1R_.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  store i64 %.sroa.4.0.i.i27.i.i, ptr %i.p, align 8, !alias.scope !69, !noalias !131
  %.sroa.4.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i26.i.i, ptr %.sroa.4.0..sroa_idx8.i.i.i, align 8, !alias.scope !69, !noalias !131
  %.sroa.6.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store i64 %.sroa.4.0.i.i27.i.i, ptr %.sroa.6.0..sroa_idx10.i.i.i, align 8, !noalias !65
  %i.fx = icmp ult i64 %i.et, %.sroa.02.0.i
  br i1 %i.fx, label %.lr.ph.i.i, label %_RNvCshDScVpnq8df_5uu_pr19to_table_short_file.exit.i

.lr.ph.i.i:                                       ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_19to_table_short_file0EE9from_iterB1M_.exit.i.i
  %i.fy = shl i64 %.sroa.09.0.i, 3                ; 3 uses
  %i.fz = icmp ugt i64 %.sroa.09.0.i, 2305843009213693951
  %.not.i3.i.i.i = icmp ugt i64 %i.fy, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.fz, %.not.i3.i.i.i
  br i1 %or.cond.i.i.i.i, label %.split12.i.i, label %.lr.ph.split.i.i, !prof !132

bb.ae:                                            ; preds = %bb.aa
  call void @_RNvNtNtCs6JMX4GRUq9U_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #32, !noalias !133
  unreachable

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE8push_mutB1o_.exit.i.i
  %i.ga = phi ptr [ %i.gh, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE8push_mutB1o_.exit.i.i ], [ %.sroa.10.0.i.i26.i.i, %.lr.ph.i.i ]
  %i.gb = phi i64 [ %i.gj, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE8push_mutB1o_.exit.i.i ], [ %.sroa.4.0.i.i27.i.i, %.lr.ph.i.i ] ; 3 uses
  %.sroa.01.011.i.i = phi i64 [ %i.gc, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE8push_mutB1o_.exit.i.i ], [ %i.et, %.lr.ph.i.i ]
  %i.gc = add nuw i64 %.sroa.01.011.i.i, 1        ; 2 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !134
  %i.gd = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.fy, i64 noundef range(i64 1, 9) 8) #30, !noalias !134 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %.split12.i.i, label %_RINvXs_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elemINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalEB1s_.exit.i.i

.split12.i.i:                                     ; preds = %.lr.ph.split.i.i, %.lr.ph.i.i
  %.sroa.4.0.ph.i.split.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ 8, %.lr.ph.split.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.split.i.i, i64 %i.fy) #31, !noalias !139
  unreachable

_RINvXs_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elemINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalEB1s_.exit.i.i: ; preds = %.lr.ph.split.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.gf = load i64, ptr %i.p, align 8, !range !18, !alias.scope !140, !noalias !143, !noundef !4
  %i.gg = icmp eq i64 %i.gb, %i.gf
  br i1 %i.gg, label %bb.af, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE8push_mutB1o_.exit.i.i

bb.af:                                            ; preds = %_RINvXs_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elemINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalEB1s_.exit.i.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE8grow_oneB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #33, !noalias !145
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx8.i.i.i, align 8, !alias.scope !140, !noalias !143
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE8push_mutB1o_.exit.i.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE8push_mutB1o_.exit.i.i: ; preds = %bb.af, %_RINvXs_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elemINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalEB1s_.exit.i.i
  %i.gh = phi ptr [ %i.ga, %_RINvXs_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elemINtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalEB1s_.exit.i.i ], [ %.pre.i.i, %bb.af ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.gh, i64 %i.gb ; 3 uses
  store i64 %.sroa.09.0.i, ptr %i.gi, align 8, !noalias !146
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store ptr %i.gd, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !146
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store i64 %.sroa.09.0.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !146
  %i.gj = add i64 %i.gb, 1                        ; 3 uses
  store i64 %i.gj, ptr %.sroa.6.0..sroa_idx10.i.i.i, align 8, !noalias !65
  %i.gk = icmp ult i64 %i.gc, %.sroa.02.0.i
  br i1 %i.gk, label %.lr.ph.split.i.i, label %_RNvCshDScVpnq8df_5uu_pr19to_table_short_file.exit.loopexit.i

_RNvCshDScVpnq8df_5uu_pr19to_table_short_file.exit.loopexit.i: ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE8push_mutB1o_.exit.i.i
  %.sroa.0.0.copyload.pre.i = load i64, ptr %i.p, align 8, !noalias !147
  %.sroa.9.0.copyload.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx8.i.i.i, align 8, !noalias !147
  br label %_RNvCshDScVpnq8df_5uu_pr19to_table_short_file.exit.i

_RNvCshDScVpnq8df_5uu_pr19to_table_short_file.exit.i: ; preds = %_RNvCshDScVpnq8df_5uu_pr19to_table_short_file.exit.loopexit.i, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_19to_table_short_file0EE9from_iterB1M_.exit.i.i
  %.sroa.13.0.copyload.i = phi i64 [ %i.gj, %_RNvCshDScVpnq8df_5uu_pr19to_table_short_file.exit.loopexit.i ], [ %.sroa.4.0.i.i27.i.i, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_19to_table_short_file0EE9from_iterB1M_.exit.i.i ] ; 2 uses
  %.sroa.9.0.copyload.i = phi ptr [ %.sroa.9.0.copyload.pre.i, %_RNvCshDScVpnq8df_5uu_pr19to_table_short_file.exit.loopexit.i ], [ %.sroa.10.0.i.i26.i.i, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_19to_table_short_file0EE9from_iterB1M_.exit.i.i ]
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.pre.i, %_RNvCshDScVpnq8df_5uu_pr19to_table_short_file.exit.loopexit.i ], [ %.sroa.4.0.i.i27.i.i, %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecIBU_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1c_4iter8adapters3map3MapINtNtNtB1c_3ops5range5RangejENCNvB1M_19to_table_short_file0EE9from_iterB1M_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !65
  %.pre243 = mul nuw nsw i64 %.sroa.13.0.copyload.i, 24
  br label %_RNvCshDScVpnq8df_5uu_pr8to_table.exit.i

bb.ag:                                            ; preds = %bb.ar, %bb.y
  %i.gl = mul i64 %.sroa.02.0.i, 24               ; 6 uses
  %or.cond.i.i.i.i.i = icmp ugt i64 %.sroa.02.0.i, 384307168202282325
  br i1 %or.cond.i.i.i.i.i, label %bb.aj, label %bb.ah, !prof !132

bb.ah:                                            ; preds = %bb.ag
  %i.gm = icmp eq i64 %i.gl, 0
  br i1 %i.gm, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !148
  %i.gn = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.gl, i64 noundef range(i64 1, 9) 8) #30, !noalias !148 ; 2 uses
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %bb.aj, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.ai ], [ 0, %bb.ag ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.gl) #31, !noalias !157
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ah ], [ %i.gn, %bb.ai ] ; 10 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %bb.ah ], [ %.sroa.02.0.i, %bb.ai ] ; 5 uses
  %i.gp = icmp samesign ule i64 %.sroa.02.0.i, %.sroa.4.0.i.i.i.i
  call void @llvm.assume(i1 %i.gp)
  %.not.i101.i = icmp eq i64 %.sroa.02.0.i, 0
  br i1 %.not.i101.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecINtNtB4_6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEEB1x_.exit.thread.i, label %.lr.ph.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.preheader.i.i:                 ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecIBv_INtNtCs6JMX4GRUq9U_4core6option6OptionRNtCshDScVpnq8df_5uu_pr8FileLineEEE7reserveB1n_.exit.i.i.i.i.i
  %i.gq = shl i64 %.sroa.09.0.i, 3                ; 4 uses
  %i.gr = icmp ugt i64 %.sroa.09.0.i, 2305843009213693951
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.gq, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.gr, %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gs = icmp ne i64 %i.gq, 0
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i111.i, label %.lr.ph.i.i.i.i.i.i.preheader.split.i.i, !prof !132

.lr.ph.i.i.i.i.i.i.preheader.split.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.preheader.i.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.09.0.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.us.us.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.split.split.i.i

.lr.ph.i.i.i.i.i.i.us.us.i.i.preheader:           ; preds = %.lr.ph.i.i.i.i.i.i.preheader.split.i.i
  %i.gt = add nsw i64 %.sroa.02.0.i, -1
  %xtraiter587 = and i64 %.sroa.02.0.i, 3         ; 3 uses
  %i.gu = icmp ult i64 %i.gt, 3
  br i1 %i.gu, label %.lr.ph.i.i.i.i.i.i.us.us.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.us.us.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.us.us.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i.i.preheader
  %unroll_iter593 = and i64 %.sroa.02.0.i, 576460752303423484
  br label %.lr.ph.i.i.i.i.i.i.us.us.i.i

.lr.ph.i.i.i.i.i.i.us.us.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.us.us.i.i, %.lr.ph.i.i.i.i.i.i.us.us.i.i.preheader.new
  %i.gv = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.us.us.i.i.preheader.new ], [ %i.hb, %.lr.ph.i.i.i.i.i.i.us.us.i.i ] ; 5 uses
  %niter594 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.us.us.i.i.preheader.new ], [ %niter594.next.3, %.lr.ph.i.i.i.i.i.i.us.us.i.i ]
  %i.gw = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i, i64 %i.gv ; 3 uses
  store i64 0, ptr %i.gw, align 8, !noalias !158
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i.i, align 8, !noalias !158
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i.i, align 8, !noalias !158
  %i.gx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i.i.i.i, i64 %i.gv ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  store i64 0, ptr %i.gy, align 8, !noalias !158
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i.i.1 = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.us.us.i.i.1, align 8, !noalias !158
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i.i.1 = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.us.us.i.i.1, align 8, !noalias !158
end_hunk_0
