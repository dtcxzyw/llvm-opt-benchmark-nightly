Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_df-46e7ca1752cf580c.uu_df.542a784a59c1bc9-cgu.0?download=true
inline.NumInlined: 1449
inline.NumDeleted: 844
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvMs7_NtCss03989lGqH_5uu_df5tableNtB5_5Table3new:bb.a
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCss03989lGqH_5uu_df5table4CellEE8grow_oneB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #27, !noalias !2634
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit: ; preds = %bb.at, %bb.au
  %i.gj = load ptr, ptr %i.cp, align 8, !alias.scope !2633, !noalias !2634, !nonnull !6, !noundef !6 ; 2 uses
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %i.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gk, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !2633
  %i.gl = add i64 %i.fv, 1                        ; 2 uses
  store i64 %i.gl, ptr %i.cq, align 8, !alias.scope !2633, !noalias !2634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.as

.loopexit:                                        ; preds = %bb.be, %.lr.ph121
  %i.gm = icmp eq ptr %i.gn, %i.gd
  br i1 %i.gm, label %._crit_edge, label %.lr.ph121

.lr.ph121:                                        ; preds = %bb.as, %.loopexit
  %.sroa.09.0120 = phi ptr [ %i.gn, %.loopexit ], [ %i.gc, %bb.as ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.09.0120, i64 24 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.09.0120, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.09.0120, i64 16
  %i.gr = load i64, ptr %i.gq, align 8, !noundef !6 ; 2 uses
  %.idx123 = shl nuw nsw i64 %i.gr, 5
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx123
  %i.gt = icmp eq i64 %i.gr, 0
  br i1 %i.gt, label %.loopexit, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  store i64 0, ptr %i.a, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.gv, align 8
  br i1 %i.ab, label %_RNvMs7_NtCss03989lGqH_5uu_df5tableNtB5_5Table14get_alignments.exit, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %._crit_edge, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df7columns9AlignmentE8push_mutBJ_.exit.i
  %i.gw = phi ptr [ %i.hd, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df7columns9AlignmentE8push_mutBJ_.exit.i ], [ inttoptr (i64 1 to ptr), %._crit_edge ]
  %i.gx = phi i64 [ %i.hf, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df7columns9AlignmentE8push_mutBJ_.exit.i ], [ 0, %._crit_edge ] ; 3 uses
  %.sroa.0.01.i = phi ptr [ %i.gy, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df7columns9AlignmentE8push_mutBJ_.exit.i ], [ %i.x, %._crit_edge ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i, i64 1 ; 2 uses
  %i.gz = load i8, ptr %.sroa.0.01.i, align 1, !range !24, !noalias !2635, !noundef !6
  %i.ha = zext nneg i8 %i.gz to i64
  %switch.gep171 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs7_NtCss03989lGqH_5uu_df5tableNtB5_5Table3new.385, i64 %i.ha
  %switch.load172 = load i8, ptr %switch.gep171, align 1
  %i.hb = load i64, ptr %i.a, align 8, !range !7, !noundef !6
  %i.hc = icmp eq i64 %i.gx, %i.hb
  br i1 %i.hc, label %bb.av, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df7columns9AlignmentE8push_mutBJ_.exit.i

bb.av:                                            ; preds = %.lr.ph.i37
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCss03989lGqH_5uu_df7columns9AlignmentE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #27
  %.pre.i = load ptr, ptr %i.gu, align 8
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df7columns9AlignmentE8push_mutBJ_.exit.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df7columns9AlignmentE8push_mutBJ_.exit.i: ; preds = %bb.av, %.lr.ph.i37
  %i.hd = phi ptr [ %i.gw, %.lr.ph.i37 ], [ %.pre.i, %bb.av ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.gx
  store i8 %switch.load172, ptr %i.he, align 1, !noalias !2636
  %i.hf = add nuw i64 %i.gx, 1                    ; 2 uses
  store i64 %i.hf, ptr %i.gv, align 8
  %i.hg = icmp eq ptr %i.gy, %i.aa
  br i1 %i.hg, label %_RNvMs7_NtCss03989lGqH_5uu_df5tableNtB5_5Table14get_alignments.exit, label %.lr.ph.i37

_RNvMs7_NtCss03989lGqH_5uu_df5tableNtB5_5Table14get_alignments.exit: ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCss03989lGqH_5uu_df7columns9AlignmentE8push_mutBJ_.exit.i, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hh, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.4.0.i.i, ptr %i.hi, align 8
  %.sroa.4.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx77, align 8
  %.sroa.6.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx78, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !2637)
  %.val2.i = load i64, ptr %i.dd, align 8, !range !16, !alias.scope !2637, !noundef !6 ; 2 uses
  %i.hj = icmp sgt i64 %.val2.i, 0
  br i1 %i.hj, label %bb.aw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECss03989lGqH_5uu_df.exit.i

bb.aw:                                            ; preds = %_RNvMs7_NtCss03989lGqH_5uu_df5tableNtB5_5Table14get_alignments.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %i.s, i64 208
  %.val3.i = load ptr, ptr %i.hk, align 16, !alias.scope !2637, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2637
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECss03989lGqH_5uu_df.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECss03989lGqH_5uu_df.exit.i: ; preds = %bb.aw, %_RNvMs7_NtCss03989lGqH_5uu_df5tableNtB5_5Table14get_alignments.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2638)
  %.val.i.i38 = load i64, ptr %i.de, align 16, !range !7, !alias.scope !2639, !noundef !6 ; 2 uses
  %i.hl = icmp eq i64 %.val.i.i38, 0
  br i1 %i.hl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i40, label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECss03989lGqH_5uu_df.exit.i
  %.val1.i.i39 = load ptr, ptr %.sroa.44.0..sroa_idx.i31, align 8, !alias.scope !2639, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i39, i64 noundef %.val.i.i38, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2639
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i40

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i40: ; preds = %bb.ax, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECss03989lGqH_5uu_df.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2640)
  %.val.i4.i = load i64, ptr %i.df, align 8, !range !7, !alias.scope !2641, !noundef !6 ; 2 uses
  %i.hm = icmp eq i64 %.val.i4.i, 0
  br i1 %i.hm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i40
  %.val1.i5.i = load ptr, ptr %.sroa.49.0..sroa_idx.i, align 16, !alias.scope !2641, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i, i64 noundef %.val.i4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2641
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i: ; preds = %bb.ay, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i40
  %.val.i41 = load i64, ptr %i.dg, align 16, !range !7, !alias.scope !2637, !noundef !6 ; 2 uses
  %i.hn = icmp eq i64 %.val.i41, 0
  br i1 %i.hn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit, label %bb.az

bb.az:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i
  %.val1.i42 = load ptr, ptr %.sroa.418.0..sroa_idx.i, align 8, !alias.scope !2637, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i42, i64 noundef %.val.i41, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2637
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !2642)
  br i1 %i.cb, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i, label %.lr.ph.i.i.i45

.lr.ph.i.i.i45:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i
  %.sroa.0.03.i.i.i46 = phi i64 [ %i.hp, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.0.03.i.i.i46 ; 2 uses
  %i.hp = add nuw nsw i64 %.sroa.0.03.i.i.i46, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2643)
  %.val.i.i.i.i47 = load i64, ptr %i.ho, align 8, !range !7, !alias.scope !2644, !noalias !2645, !noundef !6 ; 2 uses
  %i.hq = icmp eq i64 %.val.i.i.i.i47, 0
  br i1 %i.hq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i.i45
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %.val1.i.i.i.i48 = load ptr, ptr %i.hr, align 8, !alias.scope !2644, !noalias !2645, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i48, i64 noundef %.val.i.i.i.i47, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2646
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i: ; preds = %bb.ba, %.lr.ph.i.i.i45
  %i.hs = icmp eq i64 %i.hp, %.sroa.7100.0.copyload
  br i1 %i.hs, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i, label %.lr.ph.i.i.i45

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit
  %i.ht = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ht, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECss03989lGqH_5uu_df.exit, label %bb.bb

bb.bb:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i
  %i.hu = mul nuw i64 %.sroa.0.0.copyload, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.hu, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !noalias !2645
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECss03989lGqH_5uu_df.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtBG_6string6StringEECss03989lGqH_5uu_df.exit: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCss03989lGqH_5uu_df.exit.i, %bb.bb
  ret void

.lr.ph:                                           ; preds = %.lr.ph121, %bb.be
  %.sroa.096.0119 = phi ptr [ %i.hv, %bb.be ], [ %i.gp, %.lr.ph121 ] ; 2 uses
  %.sroa.798.0118 = phi i64 [ %i.hw, %bb.be ], [ 0, %.lr.ph121 ] ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.096.0119, i64 32 ; 2 uses
  %i.hw = add nuw nsw i64 %.sroa.798.0118, 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.096.0119, i64 24
  %i.hy = load i64, ptr %i.hx, align 8, !noundef !6 ; 2 uses
  %exitcond129.not = icmp eq i64 %.sroa.798.0118, %i.z
  br i1 %exitcond129.not, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i.i, i64 %.sroa.798.0118 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !noundef !6
  %i.ib = icmp ugt i64 %i.hy, %i.ia
  br i1 %i.ib, label %bb.bf, label %bb.be

bb.bd:                                            ; preds = %.lr.ph
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #29
  unreachable

bb.be:                                            ; preds = %bb.bc, %bb.bf
  %i.ic = icmp eq ptr %i.hv, %i.gs
  br i1 %i.ic, label %.loopexit, label %.lr.ph

bb.bf:                                            ; preds = %bb.bc
  store i64 %i.hy, ptr %i.hz, align 8
  br label %bb.be

bb.bg:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %.sroa.490.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.692.0..sroa_idx, i64 24, i1 false)
  %.sroa.793.0.copyload = load i64, ptr %.sroa.793.0..sroa_idx, align 8 ; 2 uses
  %.sroa.894.0.copyload = load ptr, ptr %.sroa.894.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1095.0.copyload = load i64, ptr %.sroa.1095.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8 ; 3 uses
  %.sroa.16.0.copyload = load i64, ptr %.sroa.16.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2647)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.dz, ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %i.fa, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.fb, i64 24, i1 false)
  %.sroa.0.0.i50 = zext i1 %i.fi to i64
  %.sroa.17.0.copyload.a = load i64, ptr %.sroa.17.0..sroa_idx, align 8 ; 4 uses
  %.sroa.18.0.copyload.a = load i64, ptr %.sroa.18.0..sroa_idx, align 8 ; 2 uses
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8
  %i.id = call i64 @llvm.usub.sat.i64(i64 %.sroa.17.0.copyload.a, i64 %.sroa.18.0.copyload.a) ; 2 uses
  %i.ie = call i64 @llvm.usub.sat.i64(i64 %i.fh, i64 %.sroa.15.0.copyload) ; 3 uses
  %i.if = add i64 %i.ie, %.sroa.16.0.copyload
  %i.ig = icmp ne i64 %.sroa.17.0.copyload.a, 0
  %i.ih = insertelement <2 x i64> poison, i64 %i.ie, i64 0
  %i.ii = insertelement <2 x i64> %i.ih, i64 %i.id, i64 1
  %i.ij = uitofp <2 x i64> %i.ii to <2 x double>
  %3 = uitofp i64 %.sroa.17.0.copyload.a to double
  %i.ik = uitofp i64 %i.if to double
  %i.il = insertelement <2 x double> poison, double %i.ik, i64 0
  %i.im = insertelement <2 x double> %i.il, double %3, i64 1
  %i.in = fdiv <2 x double> %i.ij, %i.im          ; 2 uses
  %.sroa.01.0.i = zext i1 %i.ig to i64
  %i.io = zext i64 %.sroa.18.0.copyload.a to i128
  %i.ip = zext i64 %i.id to i128
  %i.iq = zext i64 %.sroa.17.0.copyload.a to i128
  %i.ir = mul i64 %i.ie, %.sroa.13.0.copyload     ; 2 uses
  %i.is = mul i64 %.sroa.16.0.copyload, %.sroa.13.0.copyload ; 2 uses
  %i.it = insertelement <2 x i64> poison, i64 %i.is, i64 0
  %i.iu = insertelement <2 x i64> %i.it, i64 %i.ir, i64 1
  %i.iv = uitofp <2 x i64> %i.iu to <2 x double>
  %i.iw = fdiv <2 x double> %i.iv, %i.fd          ; 2 uses
  %i.ix = extractelement <2 x double> %i.iw, i64 0
  %i.iy = call double @llvm.ceil.f64(double %i.ix)
  %i.iz = call i64 @llvm.fptoui.sat.i64.f64(double %i.iy)
  %i.ja = extractelement <2 x double> %i.iw, i64 1
  %i.jb = call double @llvm.ceil.f64(double %i.ja)
  %i.jc = call i64 @llvm.fptoui.sat.i64.f64(double %i.jb)
  %i.jd = mul i64 %.sroa.13.0.copyload, %i.fh     ; 2 uses
  %i.je = uitofp i64 %i.jd to double
  %i.jf = fdiv double %i.je, %i.ed
  %i.jg = call double @llvm.ceil.f64(double %i.jf)
  %i.jh = call i64 @llvm.fptoui.sat.i64.f64(double %i.jg)
  store i64 %i.jd, ptr %i.ee, align 16, !alias.scope !2647, !noalias !2648
  store i64 %i.jh, ptr %i.ef, align 8, !alias.scope !2647, !noalias !2648
  store i64 %i.ir, ptr %i.eg, align 16, !alias.scope !2647, !noalias !2648
  store i64 %i.jc, ptr %i.eh, align 8, !alias.scope !2647, !noalias !2648
  store i64 %i.is, ptr %i.ei, align 16, !alias.scope !2647, !noalias !2648
  store i64 %i.iz, ptr %i.ej, align 8, !alias.scope !2647, !noalias !2648
  store i64 %.sroa.0.0.i50, ptr %i.q, align 16, !alias.scope !2647, !noalias !2648
  %i.ji = extractelement <2 x double> %i.in, i64 0
  store double %i.ji, ptr %i.ek, align 8, !alias.scope !2647, !noalias !2648
  store i128 %i.iq, ptr %i.el, align 16, !alias.scope !2647, !noalias !2648
  store i128 %i.ip, ptr %i.em, align 16, !alias.scope !2647, !noalias !2648
  store i128 %i.io, ptr %i.en, align 16, !alias.scope !2647, !noalias !2648
  store i64 %.sroa.01.0.i, ptr %i.eo, align 16, !alias.scope !2647, !noalias !2648
  %i.jj = extractelement <2 x double> %i.in, i64 1
  store double %i.jj, ptr %i.ep, align 8, !alias.scope !2647, !noalias !2648
  %i.jk = icmp eq i64 %.sroa.087.0.copyload88, 0
  br i1 %i.jk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i53, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.490.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.490.0.copyload, i64 noundef %.sroa.087.0.copyload88, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2649
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i53

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i53: ; preds = %bb.bh, %bb.bg
  %i.jl = icmp eq i64 %.sroa.793.0.copyload, 0
  br i1 %i.jl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECss03989lGqH_5uu_df.exit.i, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.894.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.894.0.copyload, i64 noundef %.sroa.793.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2650
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECss03989lGqH_5uu_df.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECss03989lGqH_5uu_df.exit.i: ; preds = %bb.bi, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i53
  %i.jm = icmp eq i64 %.sroa.1095.0.copyload, 0
  br i1 %i.jm, label %_RNvMs0_NtCss03989lGqH_5uu_df5tableNtB5_3Row15from_filesystem.exit, label %bb.bj

bb.bj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECss03989lGqH_5uu_df.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0.copyload, i64 noundef %.sroa.1095.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2651
  br label %_RNvMs0_NtCss03989lGqH_5uu_df5tableNtB5_3Row15from_filesystem.exit

_RNvMs0_NtCss03989lGqH_5uu_df5tableNtB5_3Row15from_filesystem.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECss03989lGqH_5uu_df.exit.i, %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.q, ptr %i.o, align 8
  store ptr %1, ptr %i.eq, align 8
  store i8 0, ptr %i.er, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call fastcc void @_RNvMs5_NtCss03989lGqH_5uu_df5tableNtB5_12RowFormatter9get_cells(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o) #28
  br i1 %i.eu, label %bb.bt, label %bb.bn

bb.bk:                                            ; preds = %bb.ap
  %.val.i59 = load i64, ptr %i.dw, align 8, !range !16, !noundef !6 ; 2 uses
  %i.jn = icmp sgt i64 %.val.i59, 0
  br i1 %i.jn, label %bb.bl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit

bb.bl:                                            ; preds = %bb.bk
  %.val1.i61 = load ptr, ptr %i.dx, align 8, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i61, i64 noundef %.val.i59, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2652
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit: ; preds = %bb.bk, %bb.bl
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features5fsext9MountInfoECss03989lGqH_5uu_df(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(232) %i.p) #28
  br label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit75, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit
  %i.jo = phi ptr [ %i.kf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit75 ], [ %i.fe, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit ]
  %i.jp = phi i64 [ %i.kg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit75 ], [ %i.ff, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBF_.exit ] ; 2 uses
  %i.jq = icmp eq ptr %i.fg, %i.dq
  br i1 %i.jq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueSNtNtCss03989lGqH_5uu_df10filesystem10FilesystemEBG_.exit.i.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCss03989lGqH_5uu_df10filesystem10FilesystemENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB10_.exit

bb.bn:                                            ; preds = %_RNvMs0_NtCss03989lGqH_5uu_df5tableNtB5_3Row15from_filesystem.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !2653)
  %i.jr = load i64, ptr %i.t, align 8, !range !7, !alias.scope !2653, !noalias !2654, !noundef !6
  %i.js = icmp eq i64 %i.ff, %i.jr
  br i1 %i.js, label %bb.bo, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit62

bb.bo:                                            ; preds = %bb.bn
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCss03989lGqH_5uu_df5table4CellEE8grow_oneB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #27, !noalias !2654
  %.pre = load ptr, ptr %i.cp, align 8, !alias.scope !2653, !noalias !2654
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit62

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit62: ; preds = %bb.bn, %bb.bo
  %i.jt = phi ptr [ %i.fe, %bb.bn ], [ %.pre, %bb.bo ] ; 3 uses
  %i.ju = getelementptr inbounds nuw [24 x i8], ptr %i.jt, i64 %i.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ju, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !2653
  %i.jv = add i64 %i.ff, 1                        ; 3 uses
  store i64 %i.jv, ptr %i.cq, align 8, !alias.scope !2653, !noalias !2654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  %.val2.i63 = load i64, ptr %i.ec, align 8, !range !16, !alias.scope !2655, !noundef !6 ; 2 uses
  %i.jw = icmp sgt i64 %.val2.i63, 0
  br i1 %i.jw, label %bb.bp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECss03989lGqH_5uu_df.exit.i64

bb.bp:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit62
  %.val3.i74 = load ptr, ptr %i.ev, align 16, !alias.scope !2655, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i74, i64 noundef %.val2.i63, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2655
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECss03989lGqH_5uu_df.exit.i64

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECss03989lGqH_5uu_df.exit.i64: ; preds = %bb.bp, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit62
  call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  %.val.i.i65 = load i64, ptr %i.dz, align 16, !range !7, !alias.scope !2657, !noundef !6 ; 2 uses
  %i.jx = icmp eq i64 %.val.i.i65, 0
  br i1 %i.jx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i67, label %bb.bq

bb.bq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECss03989lGqH_5uu_df.exit.i64
  %.val1.i.i66 = load ptr, ptr %i.ew, align 8, !alias.scope !2657, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i66, i64 noundef %.val.i.i65, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2657
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i67

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i67: ; preds = %bb.bq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECss03989lGqH_5uu_df.exit.i64
  call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  %.val.i4.i68 = load i64, ptr %i.ea, align 8, !range !7, !alias.scope !2659, !noundef !6 ; 2 uses
  %i.jy = icmp eq i64 %.val.i4.i68, 0
  br i1 %i.jy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i70, label %bb.br

bb.br:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i67
  %.val1.i5.i69 = load ptr, ptr %i.ex, align 16, !alias.scope !2659, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i69, i64 noundef %.val.i4.i68, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2659
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i70

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i70: ; preds = %bb.br, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit.i67
  %.val.i71 = load i64, ptr %i.eb, align 16, !range !7, !alias.scope !2655, !noundef !6 ; 2 uses
  %i.jz = icmp eq i64 %.val.i71, 0
  br i1 %i.jz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit75, label %bb.bs

bb.bs:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i70
  %.val1.i72 = load ptr, ptr %i.ey, align 8, !alias.scope !2655, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i72, i64 noundef %.val.i71, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !2655
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit75

bb.bt:                                            ; preds = %_RNvMs0_NtCss03989lGqH_5uu_df5tableNtB5_3Row15from_filesystem.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %i.m, ptr noundef nonnull align 16 dereferenceable(224) %i.q, i64 224, i1 false)
  call void @_RNvXs_NtCss03989lGqH_5uu_df5tableNtB4_3RowNtNtNtCs6JMX4GRUq9U_4core3ops5arith9AddAssign10add_assign(ptr noalias nofree noundef nonnull align 16 dereferenceable(224) %i.s, ptr noalias nofree noundef nonnull align 16 captures(address) dereferenceable(224) %i.m) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  %i.ka = load i64, ptr %i.t, align 8, !range !7, !alias.scope !2660, !noalias !2661, !noundef !6
  %i.kb = icmp eq i64 %i.ff, %i.ka
  br i1 %i.kb, label %bb.bu, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit76

bb.bu:                                            ; preds = %bb.bt
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCss03989lGqH_5uu_df5table4CellEE8grow_oneB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t) #27, !noalias !2661
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit76

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit76: ; preds = %bb.bt, %bb.bu
  %i.kc = load ptr, ptr %i.cp, align 8, !alias.scope !2660, !noalias !2661, !nonnull !6, !noundef !6 ; 2 uses
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %i.kc, i64 %i.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kd, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !2660
  %i.ke = add i64 %i.ff, 1                        ; 2 uses
  store i64 %i.ke, ptr %i.cq, align 8, !alias.scope !2660, !noalias !2661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit75

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCss03989lGqH_5uu_df5table3RowEBF_.exit75: ; preds = %bb.bs, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i70, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit76
  %i.kf = phi ptr [ %i.jt, %bb.bs ], [ %i.jt, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i70 ], [ %i.kc, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit76 ]
  %i.kg = phi i64 [ %i.jv, %bb.bs ], [ %i.jv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECss03989lGqH_5uu_df.exit6.i70 ], [ %i.ke, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecIBw_NtNtCss03989lGqH_5uu_df5table4CellEE8push_mutBN_.exit76 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.bm
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef ptr @_RNvMs7_NtCss03989lGqH_5uu_df5tableNtB5_5Table8write_to(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !6 ; 14 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !6
  %.not270 = icmp eq i64 %i.h, 0
  %.not271 = icmp eq i64 %i.l, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.y, %.lr.ph
  %.sroa.01.0164 = phi ptr [ %i.b, %.lr.ph ], [ %i.s, %bb.y ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.0164, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.01.0164, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !6, !noundef !6 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.0164, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !6 ; 3 uses
  %.idx269 = shl nuw nsw i64 %i.w, 5
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx269
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %.loopexit198, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjRNtNtCss03989lGqH_5uu_df5table4CellEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1S_8PeekableINtNtB1U_9enumerate9EnumerateINtNtNtB5_5slice4iter4IterBP_EEE4peek0EBT_.exit.peel

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_TjRNtNtCss03989lGqH_5uu_df5table4CellEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1S_8PeekableINtNtB1U_9enumerate9EnumerateINtNtNtB5_5slice4iter4IterBP_EEE4peek0EBT_.exit.peel: ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
end_hunk_0
