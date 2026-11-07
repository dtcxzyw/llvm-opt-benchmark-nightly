Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  br i1 %i.aat, label %.thread.i.i.i.i, label %.loopexit.i493.loopexit

.split27.i.i.i.i:                                 ; preds = %bb.es
  %i.aau = getelementptr i8, ptr %i.aag, i64 31
  %i.aav = load i8, ptr %i.aau, align 8, !range !32, !noalias !28761, !noundef !12
  %i.aaw = icmp eq i8 %i.aav, 35
  br i1 %i.aaw, label %bb.fb, label %.loopexit.i493.loopexit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i: ; preds = %bb.es
  %i.aax = lshr i64 %i.aaj, 32
  %i.aay = icmp ult ptr %i.aag, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i.i.i.i = trunc i64 %i.aax to i8
  %spec.select.i.i.i.i.i.i.i = select i1 %i.aay, i8 %switch.idx.cast.i.i.i.i.i.i.i, i8 -1 ; 2 uses
  %i.aaz = icmp ne i8 %spec.select.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.aaz)
  %i.aba = icmp eq i8 %spec.select.i.i.i.i.i.i.i, 35
  br i1 %i.aba, label %bb.fa, label %.loopexit.i493.loopexit

.loopexit975:                                     ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %.outer.i.i.i.i
  %.lcssa1093 = phi i8 [ %.promoted1092, %.outer.i.i.i.i ], [ %i.aai, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 2 uses
  %.lcssa1087 = phi i64 [ %.promoted1086, %.outer.i.i.i.i ], [ %i.aah, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 2 uses
  %.lcssa1084 = phi i64 [ %.promoted, %.outer.i.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  %.promoted4449.i.i.i.i.lcssa = phi i8 [ %.promoted4450.i.i.i.i, %.outer.i.i.i.i ], [ %i.aai, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  %.lcssa997 = phi i64 [ %i.aae, %.outer.i.i.i.i ], [ %i.aah, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ]
  store i64 %.lcssa1087, ptr %i.zu, align 8
  store i8 %.lcssa1093, ptr %i.zy, align 8
  br label %bb.et

bb.et:                                            ; preds = %.loopexit975, %bb.er
  %.promoted46.i.i.i.i1206.a = phi i8 [ %i.aai, %bb.er ], [ %.lcssa1093, %.loopexit975 ] ; 2 uses
  %.promoted.i.i.i.i1202.a = phi i64 [ %i.aah, %bb.er ], [ %.lcssa1087, %.loopexit975 ] ; 2 uses
  %.promoted4448.i.i.i.i = phi i8 [ %i.aai, %bb.er ], [ %.promoted4449.i.i.i.i.lcssa, %.loopexit975 ]
  %i.abb = phi i64 [ %i.aah, %bb.er ], [ %.lcssa997, %.loopexit975 ] ; 3 uses
  %i.abc = phi i64 [ 0, %bb.er ], [ %.lcssa1084, %.loopexit975 ] ; 3 uses
  %i.abd = sub nuw i64 %i.abb, %i.abc             ; 8 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.zq, i64 %i.abc ; 3 uses
  %i.abf = icmp samesign ult i64 %i.abd, 16
  br i1 %i.abf, label %.preheader.i.i.i.i.i, label %bb.eu

.preheader.i.i.i.i.i:                             ; preds = %bb.et
  %.not.i.i.i.i.i501 = icmp eq i64 %i.abd, 0
  br i1 %.not.i.i.i.i.i501, label %._crit_edge.i.i.i.i.i502, label %.lr.ph.i.i.i.i.i

bb.eu:                                            ; preds = %bb.et
  %i.abg = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.abe, i64 noundef range(i64 0, -9223372036854775808) %i.abd) #45, !noalias !28761
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i

._crit_edge.i.i.i.i.i502:                         ; preds = %bb.ev, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.abd, %bb.ev ], [ %.sroa.01.05.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ 0, %bb.ev ], [ 1, %.lr.ph.i.i.i.i.i ]
  %i.abh = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i, 0
  %i.abi = insertvalue { i64, i64 } %i.abh, i64 %.sroa.01.0.lcssa.i.i.i.i.i, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.ev
  %.sroa.01.05.i.i.i.i.i = phi i64 [ %i.abm, %bb.ev ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abe, i64 %.sroa.01.05.i.i.i.i.i
  %i.abk = load i8, ptr %i.abj, align 1, !alias.scope !28762, !noalias !28761, !noundef !12
  %i.abl = icmp eq i8 %i.abk, 0
  br i1 %i.abl, label %._crit_edge.i.i.i.i.i502, label %bb.ev

bb.ev:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.abm = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.abm, %i.abd
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i502, label %.lr.ph.i.i.i.i.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i502, %bb.eu
  %.merged.i.i.i.i.i = phi { i64, i64 } [ %i.abi, %._crit_edge.i.i.i.i.i502 ], [ %i.abg, %bb.eu ] ; 2 uses
  %i.abn = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 0
  %i.abo = trunc nuw i64 %i.abn to i1             ; 2 uses
  br i1 %i.abo, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i
  %i.abp = extractvalue { i64, i64 } %.merged.i.i.i.i.i, 1 ; 3 uses
  %i.abq = icmp ult i64 %i.abp, %i.abd
  br i1 %i.abq, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.ex, !prof !11

bb.ex:                                            ; preds = %bb.ew
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.abp, i64 noundef range(i64 0, -9223372036854775808) %i.abd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @336) #50, !noalias !28763
  unreachable

_RNvXs8_NtNtCs6JMX4GRUq9U_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.ew
  %i.abr = add nuw nsw i64 %i.abp, 1
  br label %bb.ey

bb.ey:                                            ; preds = %_RNvXs8_NtNtCs6JMX4GRUq9U_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i
  %.sroa.6.0.i.i.i.i = phi i64 [ %i.abr, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %i.abd, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28764)
  %i.abs = load i64, ptr %i.ah, align 8, !range !19, !alias.scope !28765, !noalias !28754, !noundef !12
  %i.abt = sub i64 %i.abs, %i.aad
  %i.abu = icmp ugt i64 %.sroa.6.0.i.i.i.i, %i.abt
  br i1 %i.abu, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, !prof !18

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i: ; preds = %bb.ey
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef %i.aad, i64 noundef %.sroa.6.0.i.i.i.i, i64 noundef 1, i64 noundef 1) #45, !noalias !28766
  %i.abv = load i64, ptr %i.zt, align 8, !alias.scope !28767, !noalias !28754, !noundef !12 ; 2 uses
  %i.abw = icmp sgt i64 %i.abv, -1
  call void @llvm.assume(i1 %i.abw)
  %.pre.i.i500 = load ptr, ptr %i.zs, align 8, !alias.scope !28767, !noalias !28754
  br label %bb.ez

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %bb.ey
  %i.abx = icmp sgt i64 %i.aad, -1
  call void @llvm.assume(i1 %i.abx)
  %.not.i15.i.i.i.i = icmp eq i64 %.sroa.6.0.i.i.i.i, 0
  br i1 %.not.i15.i.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.ez

bb.ez:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i
  %i.aby = phi ptr [ %.pre.i.i500, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i ], [ %i.aac, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ] ; 2 uses
  %i.abz = phi i64 [ %i.abv, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i.i.i ], [ %i.aad, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ] ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aby, i64 %i.abz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aca, ptr nonnull readonly align 1 %i.abe, i64 %.sroa.6.0.i.i.i.i, i1 false), !noalias !28768
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.ez, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  %i.acb = phi ptr [ %i.aby, %bb.ez ], [ %i.aac, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ]
  %i.acc = phi i64 [ %i.abz, %bb.ez ], [ %i.aad, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ]
  %i.acd = add i64 %i.acc, %.sroa.6.0.i.i.i.i     ; 6 uses
  store i64 %i.acd, ptr %i.zt, align 8, !alias.scope !28767, !noalias !28754
  %i.ace = add i64 %.sroa.6.0.i.i.i.i, %i.abc
  %..i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.abb, i64 %i.ace) ; 4 uses
  store i64 %..i.i.i.i.i.i, ptr %.sroa.2.sroa.0.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8, !alias.scope !28769
  %i.acf = add i64 %.sroa.6.0.i.i.i.i, %.sroa.01.0.ph.i.i.i.i ; 2 uses
  %i.acg = icmp eq i64 %.sroa.6.0.i.i.i.i, 0
  %or.cond.i.i.i.i498 = or i1 %i.acg, %i.abo
  br i1 %or.cond.i.i.i.i498, label %bb.fc, label %.outer.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.split28.i.i.i.i, %.split.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !28770
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.fa:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !28770
  call void @llvm.assume(i1 %i.aay)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.fb:                                            ; preds = %.split27.i.i.i.i
  %i.ach = getelementptr i8, ptr %i.aag, i64 -1   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !28770
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ach) ]
  store ptr %i.ach, ptr %i.aaa, align 8, !alias.scope !28771, !noalias !28770
  store i8 3, ptr %i.af, align 8, !alias.scope !28771, !noalias !28770
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aaa) #45, !noalias !28770
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.fb, %bb.fa, %.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !28770
  %.not.i.i.i.i.i.i492.not = icmp eq i64 %i.aah, 0
  br i1 %.not.i.i.i.i.i.i492.not, label %bb.eq, label %.loopexit975

bb.fc:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %i.aci = icmp eq i64 %i.acf, 0
  br i1 %i.aci, label %.loopexit.i493, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.acj = icmp sgt i64 %i.acd, -1
  call void @llvm.assume(i1 %i.acj)
  %i.ack = add nsw i64 %i.acd, -1                 ; 3 uses
  %.not.i.i499 = icmp eq i64 %i.acd, 0
  br i1 %.not.i.i499, label %bb.fg, label %bb.ff

.loopexit.i493.loopexit:                          ; preds = %.split.i.i.i.i, %.split28.i.i.i.i, %.split27.i.i.i.i, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i
  store i64 0, ptr %.sroa.2.sroa.0.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  store i64 %i.aah, ptr %i.zu, align 8
  store i8 %i.aai, ptr %i.zy, align 8
  br label %.loopexit.i493

.loopexit.i493:                                   ; preds = %.loopexit.i493.loopexit, %bb.fc
  %.promoted46.i.i.i.i1205 = phi i8 [ %.promoted46.i.i.i.i1206.a, %bb.fc ], [ %i.aai, %.loopexit.i493.loopexit ] ; 2 uses
  %.promoted.i.i.i.i1201 = phi i64 [ %.promoted.i.i.i.i1202.a, %bb.fc ], [ %i.aah, %.loopexit.i493.loopexit ] ; 2 uses
  %.promoted45.i.i.i.i1198 = phi i64 [ %..i.i.i.i.i.i, %bb.fc ], [ 0, %.loopexit.i493.loopexit ] ; 2 uses
  %.sroa.8.0.i = phi ptr [ undef, %bb.fc ], [ %i.aag, %.loopexit.i493.loopexit ] ; 2 uses
  %.sroa.0.0.i494 = phi i64 [ -2, %bb.fc ], [ -1, %.loopexit.i493.loopexit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28772)
  %.val.i.i.i495 = load i64, ptr %i.ah, align 8, !range !19, !alias.scope !28772, !noalias !28754, !noundef !12 ; 2 uses
  %i.acl = icmp eq i64 %.val.i.i.i495, 0
  br i1 %i.acl, label %_RNvXs7_NtNtCs7tKScEop1B6_5alloc2io4utilINtB5_5SplitINtNtNtB7_8buffered9bufreader9BufReaderINtNtB9_5boxed3BoxDNtNtB7_4read4ReadNtNtCs6JMX4GRUq9U_4core6marker4SendEL_EEENtNtNtNtB24_4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.fe

bb.fe:                                            ; preds = %.loopexit.i493
  %.val1.i.i.i496 = load ptr, ptr %i.zs, align 8, !alias.scope !28772, !noalias !28754, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i496, i64 noundef %.val.i.i.i495, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28773
  br label %_RNvXs7_NtNtCs7tKScEop1B6_5alloc2io4utilINtB5_5SplitINtNtNtB7_8buffered9bufreader9BufReaderINtNtB9_5boxed3BoxDNtNtB7_4read4ReadNtNtCs6JMX4GRUq9U_4core6marker4SendEL_EEENtNtNtNtB24_4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i

bb.ff:                                            ; preds = %bb.fd
  %i.acm = load ptr, ptr %i.zs, align 8, !noalias !28754, !nonnull !12, !noundef !12 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 %i.ack
  %i.aco = load i8, ptr %i.acn, align 1, !noalias !28754, !noundef !12
  %.not8.i.i = icmp eq i8 %i.aco, 0
  %.sroa.0.0.copyload1.pre.i = load i64, ptr %i.ah, align 8, !noalias !28774
  %spec.select.i = select i1 %.not8.i.i, i64 %i.ack, i64 %i.acd
  br label %_RNvXs7_NtNtCs7tKScEop1B6_5alloc2io4utilINtB5_5SplitINtNtNtB7_8buffered9bufreader9BufReaderINtNtB9_5boxed3BoxDNtNtB7_4read4ReadNtNtCs6JMX4GRUq9U_4core6marker4SendEL_EEENtNtNtNtB24_4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i

bb.fg:                                            ; preds = %bb.fd
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.ack, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1280) #50, !noalias !28754
  unreachable

_RNvXs7_NtNtCs7tKScEop1B6_5alloc2io4utilINtB5_5SplitINtNtNtB7_8buffered9bufreader9BufReaderINtNtB9_5boxed3BoxDNtNtB7_4read4ReadNtNtCs6JMX4GRUq9U_4core6marker4SendEL_EEENtNtNtNtB24_4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.ff, %bb.fe, %.loopexit.i493
  %.promoted46.i.i.i.i1204 = phi i8 [ %.promoted46.i.i.i.i1205, %.loopexit.i493 ], [ %.promoted46.i.i.i.i1205, %bb.fe ], [ %.promoted46.i.i.i.i1206.a, %bb.ff ]
  %.promoted.i.i.i.i1200 = phi i64 [ %.promoted.i.i.i.i1201, %.loopexit.i493 ], [ %.promoted.i.i.i.i1201, %bb.fe ], [ %.promoted.i.i.i.i1202.a, %bb.ff ]
  %.promoted45.i.i.i.i1197 = phi i64 [ %.promoted45.i.i.i.i1198, %.loopexit.i493 ], [ %.promoted45.i.i.i.i1198, %bb.fe ], [ %..i.i.i.i.i.i, %bb.ff ]
  %.sroa.9.0.i = phi i64 [ undef, %.loopexit.i493 ], [ undef, %bb.fe ], [ %spec.select.i, %bb.ff ] ; 4 uses
  %.sroa.8.1.i = phi ptr [ %.sroa.8.0.i, %.loopexit.i493 ], [ %.sroa.8.0.i, %bb.fe ], [ %i.acm, %bb.ff ] ; 7 uses
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i494, %.loopexit.i493 ], [ %.sroa.0.0.i494, %bb.fe ], [ %.sroa.0.0.copyload1.pre.i, %bb.ff ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !28754
  %.not.i497 = icmp eq i64 %.sroa.0.1.i, -2
  br i1 %.not.i497, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %_RNvXs7_NtNtCs7tKScEop1B6_5alloc2io4utilINtB5_5SplitINtNtNtB7_8buffered9bufreader9BufReaderINtNtB9_5boxed3BoxDNtNtB7_4read4ReadNtNtCs6JMX4GRUq9U_4core6marker4SendEL_EEENtNtNtNtB24_4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i
  %i.acp = add i64 %i.aab, 1                      ; 3 uses
  store i64 %i.acp, ptr %i.fc, align 8, !alias.scope !28752
  %i.acq = icmp eq i64 %.sroa.0.1.i, -1
  br i1 %i.acq, label %bb.mq, label %bb.mr

bb.fi:                                            ; preds = %_RNvXs7_NtNtCs7tKScEop1B6_5alloc2io4utilINtB5_5SplitINtNtNtB7_8buffered9bufreader9BufReaderINtNtB9_5boxed3BoxDNtNtB7_4read4ReadNtNtCs6JMX4GRUq9U_4core6marker4SendEL_EEENtNtNtNtB24_4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc2io4util5SplitINtNtNtB1q_8buffered9bufreader9BufReaderINtNtB1s_5boxed3BoxDNtNtB1q_4read4ReadNtNtB4_6marker4SendEL_EEEEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(72) %i.fc) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  %i.acr = load i64, ptr %i.yo, align 8, !noundef !12 ; 2 uses
  %i.acs = icmp ult i64 %i.acr, 384307168202282326
  call void @llvm.assume(i1 %i.acs)
  %i.act = icmp eq i64 %i.acr, 0
  br i1 %i.act, label %bb.fl, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %i.fd, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd)
  %i.acu = icmp eq i64 %.sroa.15.0, 0
  br i1 %i.acu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit505, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0, i64 noundef %.sroa.15.0, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28775
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsl8pJiQOn4hA_9coreutils.exit505

bb.fl:                                            ; preds = %bb.fi
  %i.acv = call fastcc noundef nonnull align 8 ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 64) #51, !noalias !28776 ; 5 uses
  store i64 -9223372036854775798, ptr %i.acv, align 8
  %.sroa.4708.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acv, i64 8
  store i64 %.sroa.15.0, ptr %.sroa.4708.0..sroa_idx, align 8
  %.sroa.4708.sroa.4.0..sroa.4708.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.acv, i64 16
  store ptr %.sroa.9.0, ptr %.sroa.4708.sroa.4.0..sroa.4708.0..sroa_idx.sroa_idx, align 8
  %.sroa.4708.sroa.5.0..sroa.4708.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.acv, i64 24
  store i64 %.sroa.15.0, ptr %.sroa.4708.sroa.5.0..sroa.4708.0..sroa_idx.sroa_idx, align 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fd) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit523

bb.fm:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit
  %i.acw = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  %i.acx = load ptr, ptr %i.acw, align 8, !nonnull !12, !noundef !12 ; 12 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  %i.acz = load i64, ptr %i.acy, align 8, !noundef !12
  switch i64 %i.acz, label %bb.ft [
    i64 13, label %bb.fn
    i64 5, label %bb.fo
    i64 15, label %bb.fp
    i64 7, label %bb.fq
    i64 6, label %bb.fs
  ]

bb.fn:                                            ; preds = %bb.fm
  %i.ada = load i64, ptr %i.acx, align 1
  %i.adb = xor i64 %i.ada, 8461750701979956584
  %i.adc = getelementptr i8, ptr %i.acx, i64 5
  %i.add = load i64, ptr %i.adc, align 1
  %i.ade = xor i64 %i.add, 7163382462263160365
  %i.adf = or i64 %i.adb, %i.ade
  %i.adg = icmp ne i64 %i.adf, 0
  %i.adh = zext i1 %i.adg to i32
  %i.adi = icmp eq i32 %i.adh, 0
  %. = select i1 %i.adi, i8 1, i8 %i.xl
  br label %bb.ft

bb.fo:                                            ; preds = %bb.fm
  %i.adj = load i32, ptr %i.acx, align 1
  %i.adk = xor i32 %i.adj, 1953394541
  %i.adl = getelementptr i8, ptr %i.acx, i64 4
  %i.adm = load i8, ptr %i.adl, align 1
  %i.adn = zext i8 %i.adm to i32
  %i.ado = xor i32 %i.adn, 104
  %i.adp = or i32 %i.adk, %i.ado
  %i.adq = icmp ne i32 %i.adp, 0
  %i.adr = zext i1 %i.adq to i32
  %i.ads = icmp eq i32 %i.adr, 0
  %spec.select967 = select i1 %i.ads, i8 1, i8 %i.xm
  br label %bb.ft

bb.fp:                                            ; preds = %bb.fm
  %i.adt = load i64, ptr %i.acx, align 1
  %i.adu = xor i64 %i.adt, 3273098173147407719
  %i.adv = getelementptr i8, ptr %i.acx, i64 7
  %i.adw = load i64, ptr %i.adv, align 1
  %i.adx = xor i64 %i.adw, 7163382462263160365
  %i.ady = or i64 %i.adu, %i.adx
  %i.adz = icmp ne i64 %i.ady, 0
  %i.aea = zext i1 %i.adz to i32
  %i.aeb = icmp eq i32 %i.aea, 0
  %spec.select968 = select i1 %i.aeb, i8 1, i8 %i.xk
  br label %bb.ft

bb.fq:                                            ; preds = %bb.fm
  %i.aec = load i32, ptr %i.acx, align 1
  %i.aed = xor i32 %i.aec, 1701672302
  %i.aee = getelementptr i8, ptr %i.acx, i64 3
  %i.aef = load i32, ptr %i.aee, align 1
  %i.aeg = xor i32 %i.aef, 1667854949
  %i.aeh = or i32 %i.aed, %i.aeg
  %i.aei = icmp ne i32 %i.aeh, 0
  %i.aej = zext i1 %i.aei to i32
  %i.aek = icmp eq i32 %i.aej, 0
  br i1 %i.aek, label %bb.ft, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ael = load i32, ptr %i.acx, align 1
  %i.aem = xor i32 %i.ael, 1936876918
  %i.aen = getelementptr i8, ptr %i.acx, i64 3
  %i.aeo = load i32, ptr %i.aen, align 1
  %i.aep = xor i32 %i.aeo, 1852795251
  %i.aeq = or i32 %i.aem, %i.aep
  %i.aer = icmp ne i32 %i.aeq, 0
  %i.aes = zext i1 %i.aer to i32
  %i.aet = icmp eq i32 %i.aes, 0
  %.406 = select i1 %i.aet, i8 1, i8 %i.xn
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fm
  %i.aeu = load i32, ptr %i.acx, align 1
  %i.aev = xor i32 %i.aeu, 1684955506
  %i.aew = getelementptr i8, ptr %i.acx, i64 4
  %i.aex = load i16, ptr %i.aew, align 1
  %i.aey = zext i16 %i.aex to i32
  %i.aez = xor i32 %i.aey, 28015
  %i.afa = or i32 %i.aev, %i.aez
  %i.afb = icmp ne i32 %i.afa, 0
  %i.afc = zext i1 %i.afb to i32
  %i.afd = icmp eq i32 %i.afc, 0
  %spec.select = select i1 %i.afd, i8 1, i8 %i.xo
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fp, %bb.fo, %bb.fs, %bb.fm, %bb.fn, %bb.fq, %bb.fr, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit
  %.sroa.13.1 = phi i8 [ %i.xo, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit ], [ %i.xo, %bb.fm ], [ %i.xo, %bb.fr ], [ %i.xo, %bb.fn ], [ %spec.select, %bb.fs ], [ %i.xo, %bb.fq ], [ %i.xo, %bb.fp ], [ %i.xo, %bb.fo ] ; 4 uses
  %.sroa.11.1 = phi i8 [ %i.xn, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit ], [ %i.xn, %bb.fm ], [ %.406, %bb.fr ], [ %i.xn, %bb.fn ], [ %i.xn, %bb.fs ], [ %i.xn, %bb.fq ], [ %i.xn, %bb.fp ], [ %i.xn, %bb.fo ] ; 2 uses
  %.sroa.963.1 = phi i8 [ %i.xm, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit ], [ %i.xm, %bb.fm ], [ %i.xm, %bb.fr ], [ %i.xm, %bb.fn ], [ %i.xm, %bb.fs ], [ %i.xm, %bb.fq ], [ %i.xm, %bb.fp ], [ %spec.select967, %bb.fo ] ; 3 uses
  %.sroa.758.1 = phi i8 [ %i.xl, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit ], [ %i.xl, %bb.fm ], [ %i.xl, %bb.fr ], [ %., %bb.fn ], [ %i.xl, %bb.fs ], [ %i.xl, %bb.fq ], [ %i.xl, %bb.fp ], [ %i.xl, %bb.fo ] ; 3 uses
  %.sroa.553.1 = phi i8 [ %i.xk, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit ], [ %i.xk, %bb.fm ], [ %i.xk, %bb.fr ], [ %i.xk, %bb.fn ], [ %i.xk, %bb.fs ], [ %i.xk, %bb.fq ], [ %spec.select968, %bb.fp ], [ %i.xk, %bb.fo ] ; 3 uses
  %.sroa.050.1.shrunk = phi i1 [ %i.xh, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit ], [ %i.xh, %bb.fm ], [ %i.xh, %bb.fr ], [ %i.xh, %bb.fn ], [ %i.xh, %bb.fs ], [ true, %bb.fq ], [ %i.xh, %bb.fp ], [ %i.xh, %bb.fo ] ; 3 uses
  %i.afe = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @588, i64 noundef 16) #45 ; 3 uses
  %i.aff = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @589, i64 noundef 18) #45 ; 3 uses
  %i.afg = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @590, i64 noundef 11) #45 ; 2 uses
  %i.afh = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @591, i64 noundef 3) #45
  br i1 %i.afh, label %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread915, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %.sroa.0350.0.insert.ext = zext i1 %.sroa.050.1.shrunk to i48
  %.sroa.0350.1.insert.ext = zext nneg i8 %.sroa.553.1 to i48
  %.sroa.0350.1.insert.shift = shl nuw nsw i48 %.sroa.0350.1.insert.ext, 8
  %.sroa.0350.1.insert.insert = or disjoint i48 %.sroa.0350.1.insert.shift, %.sroa.0350.0.insert.ext
  %.sroa.0350.2.insert.ext = zext nneg i8 %.sroa.758.1 to i48
  %.sroa.0350.2.insert.shift = shl nuw nsw i48 %.sroa.0350.2.insert.ext, 16
  %.sroa.0350.3.insert.ext = zext nneg i8 %.sroa.963.1 to i48
  %.sroa.0350.3.insert.shift = shl nuw nsw i48 %.sroa.0350.3.insert.ext, 24
  %i.afi = or disjoint i48 %.sroa.0350.1.insert.insert, %.sroa.0350.3.insert.shift
  %.sroa.0350.3.insert.insert = or disjoint i48 %i.afi, %.sroa.0350.2.insert.shift
  %.sroa.0350.4.insert.ext = zext nneg i8 %.sroa.11.1 to i48
  %.sroa.0350.4.insert.shift = shl nuw nsw i48 %.sroa.0350.4.insert.ext, 32
  %.sroa.0350.5.insert.ext = zext nneg i8 %.sroa.13.1 to i48
  %.sroa.0350.5.insert.shift = shl nuw nsw i48 %.sroa.0350.5.insert.ext, 40
  %i.afj = or disjoint i48 %.sroa.0350.3.insert.insert, %.sroa.0350.4.insert.shift ; 2 uses
  %.sroa.0350.5.insert.insert = or disjoint i48 %i.afj, %.sroa.0350.5.insert.shift
  %.sroa.01.0.extract.trunc.i = zext i1 %.sroa.050.1.shrunk to i8
  %i.afk = add nuw nsw i8 %.sroa.758.1, %.sroa.963.1
  %i.afl = add nuw nsw i8 %i.afk, %.sroa.553.1
  %i.afm = add nuw nsw i8 %i.afl, %.sroa.01.0.extract.trunc.i ; 2 uses
  %i.afn = icmp samesign ugt i8 %i.afm, 1
  br i1 %i.afn, label %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.afo = icmp eq i8 %i.afm, 1
  br i1 %i.afo, label %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit, label %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread915

_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit: ; preds = %bb.fv
  %i.afp = and i48 %i.afj, 4294967296
  %.not.i506 = icmp ne i48 %i.afp, 0
  %i.afq = icmp ne i8 %.sroa.13.1, 0
  %brmerge.i = or i1 %i.afq, %i.afe
  %or.cond.i507 = select i1 %.not.i506, i1 true, i1 %brmerge.i
  %spec.select.i508 = or i1 %i.aff, %or.cond.i507
  br i1 %spec.select.i508, label %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread, label %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread915

_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread: ; preds = %bb.fu, %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb)
  call void @_RNvCsgcf5BHVXlUt_7uu_sort20ordering_opts_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fb, i48 %.sroa.0350.5.insert.insert, i1 noundef zeroext %i.afe, i1 noundef zeroext %i.aff, i1 noundef zeroext %i.afg) #45
  %i.afr = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.afs = load ptr, ptr %i.afr, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.afu = load i64, ptr %i.aft, align 8, !noundef !12
  %i.afv = call { ptr, ptr } @_RNvCsgcf5BHVXlUt_7uu_sort26incompatible_options_error(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.afs, i64 noundef %i.afu) #45 ; 2 uses
  %i.afw = extractvalue { ptr, ptr } %i.afv, 0
  %i.afx = extractvalue { ptr, ptr } %i.afv, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !28777)
  call void @llvm.experimental.noalias.scope.decl(metadata !28778)
  %.val.i.i509 = load i64, ptr %i.fb, align 8, !range !19, !alias.scope !28779, !noundef !12 ; 2 uses
  %i.afy = icmp eq i64 %.val.i.i509, 0
end_hunk_0
begin_hunk_1_@_RINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEECsl8pJiQOn4hA_9coreutils:bb.a
bb.ly:                                            ; preds = %bb.lx
  %lhsc.i620 = load i8, ptr %.val.i.i610, align 1, !noalias !28876
  %i.ayb = icmp eq i8 %lhsc.i620, 45
  br i1 %i.ayb, label %bb.ma, label %.split.i621

.split.i621:                                      ; preds = %bb.ly
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28878
  store i128 18446745954905227264, ptr %i.a, align 16, !noalias !28878
  call void @_RNvMsj_NtCs2vKOLqTMYjT_3std2fsNtB5_11OpenOptions5__open(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i610, i64 noundef 1) #45, !noalias !28876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28878
  br label %bb.lz

bb.lz:                                            ; preds = %.split.i621, %.split1.i612
  %i.ayc = load i32, ptr %i.c, align 8, !range !31, !noalias !28876, !noundef !12
  %i.ayd = trunc nuw i32 %i.ayc to i1
  br i1 %i.ayd, label %bb.mc, label %bb.me

bb.ma:                                            ; preds = %bb.ly
  %i.aye = call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio5stdin() #45, !noalias !28876
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !28876
  %i.ayf = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !28876 ; 3 uses
  %i.ayg = icmp eq ptr %i.ayf, null
  br i1 %i.ayg, label %bb.mb, label %_RINvCsgcf5BHVXlUt_7uu_sort4openRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.thread, !prof !15

bb.mb:                                            ; preds = %bb.ma
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #52, !noalias !28876
  unreachable

_RINvCsgcf5BHVXlUt_7uu_sort4openRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %bb.ma
  store ptr %i.aye, ptr %i.ayf, align 8, !noalias !28876
  br label %bb.mh

bb.mc:                                            ; preds = %bb.lz
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ayi = load ptr, ptr %i.ayh, align 8, !noalias !28876, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i609), !noalias !28876
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.i609, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i610, i64 noundef %.val1.i.i611) #45, !noalias !28876
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !28879
  %i.ayj = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !28879 ; 5 uses
  %i.ayk = icmp eq ptr %i.ayj, null
  br i1 %i.ayk, label %bb.md, label %bb.mg, !prof !15

bb.md:                                            ; preds = %bb.mc
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #52, !noalias !28879
  unreachable

bb.me:                                            ; preds = %bb.lz
  %i.ayl = load i32, ptr %i.axl, align 4, !range !33, !noalias !28876, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !28876
  %i.aym = call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !28876 ; 3 uses
  %i.ayn = icmp eq ptr %i.aym, null
  br i1 %i.ayn, label %bb.mf, label %_RINvCsgcf5BHVXlUt_7uu_sort4openRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit, !prof !15

bb.mf:                                            ; preds = %bb.me
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #52, !noalias !28876
  unreachable

_RINvCsgcf5BHVXlUt_7uu_sort4openRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.me
  store i32 %i.ayl, ptr %i.aym, align 4, !noalias !28876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28876
  br label %bb.mh

._crit_edge:                                      ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBG_2io4read4ReadNtNtB4_6marker4SendEL_EECsl8pJiQOn4hA_9coreutils.exit, %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtCsgcf5BHVXlUt_7uu_sort13FieldSelectorENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCINvNvBS_6uumain6uumainINtNtNtB1A_8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB2G_6cloned6ClonedIBG_B3V_EEEEs5_0ECsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.bu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @580, i64 noundef 6) #45
  %i.ayo = call fastcc noundef align 8 ptr @_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @580, i64 noundef 6, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %i.bu) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call fastcc void @_RINvMs_Csgcf5BHVXlUt_7uu_sortNtB5_6Output3newRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.ayo) #45
  %i.ayp = load i64, ptr %i.cw, align 8, !range !20, !noundef !12 ; 2 uses
  %i.ayq = icmp eq i64 %i.ayp, -2
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.ays = load ptr, ptr %i.ayr, align 8          ; 2 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.ayu = load ptr, ptr %i.ayt, align 8          ; 2 uses
  br i1 %i.ayq, label %bb.mk, label %bb.ml

bb.mg:                                            ; preds = %bb.mc
  store i64 -9223372036854775807, ptr %i.ayj, align 8, !noalias !28876
  %.sroa.4.0..sroa_idx.i618 = getelementptr inbounds nuw i8, ptr %i.ayj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i618, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.i609, i64 24, i1 false), !noalias !28876
  %.sroa.5.0..sroa_idx.i619 = getelementptr inbounds nuw i8, ptr %i.ayj, i64 32
  store ptr %i.ayi, ptr %.sroa.5.0..sroa_idx.i619, align 8, !noalias !28876
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i609), !noalias !28876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28876
  br label %bb.jq

bb.mh:                                            ; preds = %_RINvCsgcf5BHVXlUt_7uu_sort4openRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit, %_RINvCsgcf5BHVXlUt_7uu_sort4openRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.thread
  %.sroa.6774.0957 = phi ptr [ %i.ayf, %_RINvCsgcf5BHVXlUt_7uu_sort4openRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.thread ], [ %i.aym, %_RINvCsgcf5BHVXlUt_7uu_sort4openRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit ] ; 2 uses
  %.sroa.10776.0956 = phi ptr [ @163, %_RINvCsgcf5BHVXlUt_7uu_sort4openRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.thread ], [ @160, %_RINvCsgcf5BHVXlUt_7uu_sort4openRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit ] ; 3 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %.sroa.0172.01108, i64 24 ; 2 uses
  %i.ayw = load ptr, ptr %.sroa.10776.0956, align 8, !invariant.load !12 ; 2 uses
  %.not.i623 = icmp eq ptr %i.ayw, null
  br i1 %.not.i623, label %bb.mj, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  call void %i.ayw(ptr noundef nonnull %.sroa.6774.0957) #51, !inline_history !28556
  br label %bb.mj

bb.mj:                                            ; preds = %bb.mi, %bb.mh
  %i.ayx = getelementptr inbounds nuw i8, ptr %.sroa.10776.0956, i64 8
  %i.ayy = load i64, ptr %i.ayx, align 8, !range !19, !invariant.load !12 ; 2 uses
  %i.ayz = icmp eq i64 %i.ayy, 0
  br i1 %i.ayz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBG_2io4read4ReadNtNtB4_6marker4SendEL_EECsl8pJiQOn4hA_9coreutils.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.mj
  %i.aza = getelementptr inbounds nuw i8, ptr %.sroa.10776.0956, i64 16
  %i.azb = load i64, ptr %i.aza, align 8, !range !25, !invariant.load !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6774.0957, i64 noundef %i.ayy, i64 noundef range(i64 1, -9223372036854775807) %i.azb) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBG_2io4read4ReadNtNtB4_6marker4SendEL_EECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBG_2io4read4ReadNtNtB4_6marker4SendEL_EECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.mj, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i
  %i.azc = icmp eq ptr %i.ayv, %i.axj
  br i1 %i.azc, label %._crit_edge, label %bb.lx

bb.mk:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br label %bb.jq

bb.ml:                                            ; preds = %._crit_edge
  %.sroa.6348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %.sroa.6348.0.copyload = load i64, ptr %.sroa.6348.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  store i64 %i.ayp, ptr %i.cv, align 8
  %.sroa.6182.0..sroa_idx183 = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.ays, ptr %.sroa.6182.0..sroa_idx183, align 8
  %.sroa.8185.0..sroa_idx186 = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store ptr %i.ayu, ptr %.sroa.8185.0..sroa_idx186, align 8
  %.sroa.10188.0..sroa_idx189 = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store i64 %.sroa.6348.0.copyload, ptr %.sroa.10188.0..sroa_idx189, align 8
  %i.azd = load i8, ptr %i.fp, align 2, !range !21, !noundef !12
  %i.aze = trunc nuw i8 %i.azd to i1
  br i1 %i.aze, label %bb.mo, label %bb.mm

bb.mm:                                            ; preds = %bb.mo, %bb.ml
  %i.azf = call noundef zeroext i1 @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n8collator21init_locale_collation() #45
  call void @_RNvMs2_Csgcf5BHVXlUt_7uu_sortNtB5_14GlobalSettings16init_precomputed(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.fk, i1 noundef zeroext %i.azf) #45
  %i.azg = load ptr, ptr %i.axg, align 8, !nonnull !12, !noundef !12
  %i.azh = load i64, ptr %i.ash, align 8, !noundef !12
  %i.azi = call { ptr, ptr } @_RNvCsgcf5BHVXlUt_7uu_sort4exec(ptr noalias nofree noundef nonnull align 8 %i.azg, i64 noundef %i.azh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.fk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.cv, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ez) #45
  call void @_RNvMNtCsgcf5BHVXlUt_7uu_sort7tmp_dirNtB2_13TmpDirWrapper14wait_if_signal(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ez) #45
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort7tmp_dir13TmpDirWrapperECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(64) %i.ez) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fe) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(56) %i.fh) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fh)
  %i.azj = icmp eq i64 %.sroa.6649.1864, 0
  br i1 %i.azj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort16LegacyKeyWarningEECsl8pJiQOn4hA_9coreutils.exit, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.azk = shl nuw i64 %.sroa.6649.1864, 6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10651.1863) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10651.1863, i64 noundef %i.azk, i64 noundef range(i64 1, -9223372036854775807) 8) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort16LegacyKeyWarningEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort16LegacyKeyWarningEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.mm, %bb.mn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort14GlobalSettingsECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(160) %i.fk) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk)
  br label %bb.mp

bb.mo:                                            ; preds = %bb.ml
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @_RNvMsb_Csgcf5BHVXlUt_7uu_sortNtB5_17GlobalOptionFlags12from_matches(ptr noalias nofree noundef nonnull sret([12 x i8]) align 1 captures(none) dereferenceable(12) %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh) #45
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10651.1863) ]
  call void @_RNvCsgcf5BHVXlUt_7uu_sort19emit_debug_warnings(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.fk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(12) %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.10651.1863, i64 noundef %.sroa.12.1862) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %bb.mm

bb.mp:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort14GlobalSettingsECsl8pJiQOn4hA_9coreutils.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort16LegacyKeyWarningEECsl8pJiQOn4hA_9coreutils.exit
  %.merged = phi { ptr, ptr } [ %i.baz, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort14GlobalSettingsECsl8pJiQOn4hA_9coreutils.exit ], [ %i.azi, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort16LegacyKeyWarningEECsl8pJiQOn4hA_9coreutils.exit ]
  ret { ptr, ptr } %.merged

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit523: ; preds = %bb.fl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit640, %bb.ei, %bb.ej, %bb.gd, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i521
  %.sroa.24.6 = phi ptr [ %.sroa.24.1, %bb.gd ], [ %.sroa.24.1, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i521 ], [ @162, %bb.fl ], [ @162, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit640 ], [ @162, %bb.ei ], [ @162, %bb.ej ]
  %.sroa.0.6 = phi ptr [ %.sroa.0.1, %bb.gd ], [ %.sroa.0.1, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i521 ], [ %i.acv, %bb.fl ], [ %.sroa.0.9, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit640 ], [ %.sroa.0.0, %bb.ei ], [ %.sroa.0.0, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  br label %bb.nc

bb.mq:                                            ; preds = %bb.fh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.1.i) ]
  call fastcc void @_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs_0Csl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.co, ptr nonnull %.sroa.9.0, i64 %.sroa.15.0, ptr noundef nonnull %.sroa.8.1.i) #51
  %.sroa.643.sroa.7.0..sroa.643.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %.sroa.643.sroa.7.0.copyload = load ptr, ptr %.sroa.643.sroa.7.0..sroa.643.0..sroa_idx.sroa_idx, align 16
  %.sroa.643.sroa.8.0..sroa.643.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %.sroa.643.sroa.8.0.copyload = load i64, ptr %.sroa.643.sroa.8.0..sroa.643.0..sroa_idx.sroa_idx, align 8
  %i.azl = call fastcc noundef nonnull align 8 ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 64) #51, !noalias !28880 ; 5 uses
  %i.azm = load <2 x i64>, ptr %i.co, align 16
  store <2 x i64> %i.azm, ptr %i.azl, align 8
  %.sroa.5801.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azl, i64 16
  store ptr %.sroa.643.sroa.7.0.copyload, ptr %.sroa.5801.0..sroa_idx, align 8
  %.sroa.6802.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azl, i64 24
  store i64 %.sroa.643.sroa.8.0.copyload, ptr %.sroa.6802.0..sroa_idx, align 8
  %.sroa.7803.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azl, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7803.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(32) %i.cp, i64 32, i1 false)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.mr:                                            ; preds = %bb.fh
  %1 = icmp eq i64 %.sroa.9.0.i, 1                ; 3 uses
  br i1 %1, label %bb.ms, label %2

bb.ms:                                            ; preds = %bb.mr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.1.i) ]
  %lhsc = load i8, ptr %.sroa.8.1.i, align 1
  %i.azn = icmp eq i8 %lhsc, 45
  br i1 %i.azn, label %bb.mt, label %.thread964

2:                                                ; preds = %bb.mr
  %3 = icmp sgt i64 %.sroa.9.0.i, -1
  call void @llvm.assume(i1 %3)
  %4 = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %4, label %bb.mv, label %.thread964

bb.mt:                                            ; preds = %bb.ms
  %i.azo = call fastcc noundef nonnull align 8 ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 64) #51, !noalias !28881 ; 2 uses
  store i64 -9223372036854775799, ptr %i.azo, align 8
  br label %bb.mw

.thread964:                                       ; preds = %bb.ms, %2
  %i.azp = load i64, ptr %i.yo, align 8, !alias.scope !28882, !noundef !12 ; 3 uses
  %i.azq = load i64, ptr %i.fd, align 8, !range !19, !alias.scope !28882, !noundef !12
  %i.azr = icmp eq i64 %i.azp, %i.azq
  br i1 %i.azr, label %bb.mu, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCsl8pJiQOn4hA_9coreutils.exit624

bb.mu:                                            ; preds = %.thread964
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fd) #53, !noalias !28883
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCsl8pJiQOn4hA_9coreutils.exit624

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE8push_mutCsl8pJiQOn4hA_9coreutils.exit624: ; preds = %.thread964, %bb.mu
  %i.azs = load ptr, ptr %i.yn, align 8, !alias.scope !28882, !nonnull !12, !noundef !12
  %i.azt = getelementptr inbounds nuw [24 x i8], ptr %i.azs, i64 %i.azp ; 3 uses
  store i64 %.sroa.0.1.i, ptr %i.azt, align 8
  %.sroa.2814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azt, i64 8
  store ptr %.sroa.8.1.i, ptr %.sroa.2814.0..sroa_idx, align 8
  %.sroa.3815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azt, i64 16
  store i64 %.sroa.9.0.i, ptr %.sroa.3815.0..sroa_idx, align 8
  %i.azu = add i64 %i.azp, 1
  store i64 %i.azu, ptr %i.yo, align 8, !alias.scope !28882
  br label %bb.ep

bb.mv:                                            ; preds = %2
  %i.azv = call fastcc noundef nonnull align 8 ptr @_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 64) #51, !noalias !28884 ; 6 uses
  store i64 -9223372036854775797, ptr %i.azv, align 8
  %.sroa.4698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azv, i64 8
  store i64 %.sroa.15.0, ptr %.sroa.4698.0..sroa_idx, align 8
  %.sroa.4698.sroa.4.0..sroa.4698.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.azv, i64 16
  store ptr %.sroa.9.0, ptr %.sroa.4698.sroa.4.0..sroa.4698.0..sroa_idx.sroa_idx, align 8
  %.sroa.4698.sroa.5.0..sroa.4698.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.azv, i64 24
  store i64 %.sroa.15.0, ptr %.sroa.4698.sroa.5.0..sroa.4698.0..sroa_idx.sroa_idx, align 8
  %.sroa.5699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.azv, i64 32
  store i64 %i.acp, ptr %.sroa.5699.0..sroa_idx, align 8
  br label %bb.mw

bb.mw:                                            ; preds = %bb.mv, %bb.mt
  %.sroa.0.8 = phi ptr [ %i.azo, %bb.mt ], [ %i.azv, %bb.mv ] ; 2 uses
  %i.azw = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %i.azw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.1.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.1.i, i64 noundef %.sroa.0.1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28885
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsl8pJiQOn4hA_9coreutils.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.mx, %bb.mw, %bb.mq
  %.sroa.0191.1 = phi i1 [ true, %bb.mq ], [ %1, %bb.mw ], [ %1, %bb.mx ]
  %.sroa.0.9 = phi ptr [ %i.azl, %bb.mq ], [ %.sroa.0.8, %bb.mw ], [ %.sroa.0.8, %bb.mx ] ; 2 uses
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.zq, i64 noundef 8192, i64 noundef 1) #45, !noalias !28886
  %i.azx = load ptr, ptr %.sroa.10677.0896, align 8, !invariant.load !12, !noalias !28886 ; 2 uses
  %.not.i.i.i.i629 = icmp eq ptr %i.azx, null
  br i1 %.not.i.i.i.i629, label %bb.mz, label %bb.my

bb.my:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void %i.azx(ptr noundef nonnull %.sroa.6675.0898) #51, !noalias !28886, !inline_history !28574
  br label %bb.mz

bb.mz:                                            ; preds = %bb.my, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %i.azy = getelementptr inbounds nuw i8, ptr %.sroa.10677.0896, i64 8
  %i.azz = load i64, ptr %i.azy, align 8, !range !19, !invariant.load !12, !noalias !28886 ; 2 uses
  %i.baa = icmp eq i64 %i.azz, 0
  br i1 %i.baa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc2io4util5SplitINtNtNtB1q_8buffered9bufreader9BufReaderINtNtB1s_5boxed3BoxDNtNtB1q_4read4ReadNtNtB4_6marker4SendEL_EEEEECsl8pJiQOn4hA_9coreutils.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i630

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i630: ; preds = %bb.mz
  %i.bab = getelementptr inbounds nuw i8, ptr %.sroa.10677.0896, i64 16
  %i.bac = load i64, ptr %i.bab, align 8, !range !25, !invariant.load !12, !noalias !28886
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6675.0898, i64 noundef %i.azz, i64 noundef range(i64 1, -9223372036854775807) %i.bac) #45, !noalias !28886
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc2io4util5SplitINtNtNtB1q_8buffered9bufreader9BufReaderINtNtB1s_5boxed3BoxDNtNtB1q_4read4ReadNtNtB4_6marker4SendEL_EEEEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc2io4util5SplitINtNtNtB1q_8buffered9bufreader9BufReaderINtNtB1s_5boxed3BoxDNtNtB1q_4read4ReadNtNtB4_6marker4SendEL_EEEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.mz, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  call void @llvm.experimental.noalias.scope.decl(metadata !28887)
  %.val2.i631 = load ptr, ptr %i.yn, align 8, !alias.scope !28887, !nonnull !12, !noundef !12 ; 2 uses
  %.val3.i632 = load i64, ptr %i.yo, align 8, !alias.scope !28887, !noundef !12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28888)
  %i.bad = icmp eq i64 %.val3.i632, 0
  br i1 %i.bad, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i638, label %.lr.ph.i.i.i633

.lr.ph.i.i.i633:                                  ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc2io4util5SplitINtNtNtB1q_8buffered9bufreader9BufReaderINtNtB1s_5boxed3BoxDNtNtB1q_4read4ReadNtNtB4_6marker4SendEL_EEEEECsl8pJiQOn4hA_9coreutils.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i637
  %.sroa.0.03.i.i.i634 = phi i64 [ %i.baf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i637 ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc2io4util5SplitINtNtNtB1q_8buffered9bufreader9BufReaderINtNtB1s_5boxed3BoxDNtNtB1q_4read4ReadNtNtB4_6marker4SendEL_EEEEECsl8pJiQOn4hA_9coreutils.exit ] ; 2 uses
  %i.bae = getelementptr inbounds nuw [24 x i8], ptr %.val2.i631, i64 %.sroa.0.03.i.i.i634 ; 2 uses
  %i.baf = add nuw nsw i64 %.sroa.0.03.i.i.i634, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28889)
  %.val.i.i.i.i635 = load i64, ptr %i.bae, align 8, !range !19, !alias.scope !28890, !noalias !28887, !noundef !12 ; 2 uses
  %i.bag = icmp eq i64 %.val.i.i.i.i635, 0
  br i1 %i.bag, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i637, label %bb.na

bb.na:                                            ; preds = %.lr.ph.i.i.i633
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bae, i64 8
  %.val1.i.i.i.i636 = load ptr, ptr %i.bah, align 8, !alias.scope !28891, !noalias !28887, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i636, i64 noundef %.val.i.i.i.i635, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28892
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i637

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i637: ; preds = %bb.na, %.lr.ph.i.i.i633
  %i.bai = icmp eq i64 %i.baf, %.val3.i632
  br i1 %i.bai, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i638, label %.lr.ph.i.i.i633

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i638: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i637, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc2io4util5SplitINtNtNtB1q_8buffered9bufreader9BufReaderINtNtB1s_5boxed3BoxDNtNtB1q_4read4ReadNtNtB4_6marker4SendEL_EEEEECsl8pJiQOn4hA_9coreutils.exit
  %.val.i639 = load i64, ptr %i.fd, align 8, !range !19, !alias.scope !28887, !noundef !12 ; 2 uses
  %i.baj = icmp eq i64 %.val.i639, 0
  br i1 %i.baj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit640, label %bb.nb

bb.nb:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i638
  %i.bak = mul nuw i64 %.val.i639, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i631, i64 noundef %i.bak, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !28887
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit640

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit640: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i638, %bb.nb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd)
  br i1 %.sroa.0191.1, label %bb.ei, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit523

bb.nc:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit523, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %.sroa.24.10 = phi ptr [ @162, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.24.6, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit523 ]
  %.sroa.0.10 = phi ptr [ %i.tx, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.0.6, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit523 ]
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(56) %i.fh) #45
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %bb.cj
  %.sroa.24.11 = phi ptr [ %i.ry, %bb.cj ], [ %.sroa.24.10, %bb.nc ]
  %.sroa.0.11 = phi ptr [ %i.rw, %bb.cj ], [ %.sroa.0.10, %bb.nc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fh)
  %i.bal = icmp eq i64 %.sroa.6649.1864, 0
  br i1 %i.bal, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort16LegacyKeyWarningEECsl8pJiQOn4hA_9coreutils.exit641, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.bam = shl nuw i64 %.sroa.6649.1864, 6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10651.1863) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10651.1863, i64 noundef %i.bam, i64 noundef range(i64 1, -9223372036854775807) 8) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort16LegacyKeyWarningEECsl8pJiQOn4hA_9coreutils.exit641

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort16LegacyKeyWarningEECsl8pJiQOn4hA_9coreutils.exit641: ; preds = %bb.nd, %bb.ne
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi)
  call void @llvm.experimental.noalias.scope.decl(metadata !28893)
  call void @llvm.experimental.noalias.scope.decl(metadata !28894)
  %i.ban = load i64, ptr %i.gh, align 8, !range !13, !alias.scope !28895, !noundef !12 ; 3 uses
  %i.bao = icmp eq i64 %i.ban, -1
  br i1 %i.bao, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.nf

bb.nf:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort16LegacyKeyWarningEECsl8pJiQOn4hA_9coreutils.exit641
  call void @llvm.experimental.noalias.scope.decl(metadata !28896)
  call void @llvm.experimental.noalias.scope.decl(metadata !28897)
  %i.bap = icmp eq i64 %i.ban, 0
  br i1 %i.bap, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.baq = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %.val1.i.i.i.i642 = load ptr, ptr %i.baq, align 8, !alias.scope !28898, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i642, i64 noundef %i.ban, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28899
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.ng, %bb.nf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort16LegacyKeyWarningEECsl8pJiQOn4hA_9coreutils.exit641
  %.val.i643 = load i64, ptr %i.fk, align 8, !range !19, !alias.scope !28893, !noundef !12 ; 2 uses
  %i.bar = icmp eq i64 %.val.i643, 0
  br i1 %i.bar, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort13FieldSelectorEECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.nh

bb.nh:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsl8pJiQOn4hA_9coreutils.exit.i
  %i.bas = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %.val1.i644 = load ptr, ptr %i.bas, align 8, !alias.scope !28893, !nonnull !12, !noundef !12
  %i.bat = mul nuw i64 %.val.i643, 56
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i644, i64 noundef %i.bat, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !28893
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort13FieldSelectorEECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort13FieldSelectorEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.nh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !28900)
  %i.bau = load i64, ptr %i.gv, align 8, !range !13, !alias.scope !28901, !noundef !12 ; 3 uses
  %i.bav = icmp eq i64 %i.bau, -1
  br i1 %i.bav, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort14GlobalSettingsECsl8pJiQOn4hA_9coreutils.exit, label %bb.ni

bb.ni:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort13FieldSelectorEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !28902)
  call void @llvm.experimental.noalias.scope.decl(metadata !28903)
  %i.baw = icmp eq i64 %i.bau, 0
  br i1 %i.baw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort14GlobalSettingsECsl8pJiQOn4hA_9coreutils.exit, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.bax = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  %.val1.i.i.i2.i = load ptr, ptr %i.bax, align 8, !alias.scope !28904, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i2.i, i64 noundef %i.bau, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !28904
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort14GlobalSettingsECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsgcf5BHVXlUt_7uu_sort14GlobalSettingsECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsgcf5BHVXlUt_7uu_sort13FieldSelectorEECsl8pJiQOn4hA_9coreutils.exit.i, %bb.ni, %bb.nj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk)
  %i.bay = insertvalue { ptr, ptr } poison, ptr %.sroa.0.11, 0
  %i.baz = insertvalue { ptr, ptr } %i.bay, ptr %.sroa.24.11, 1
  br label %bb.mp
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RINvNvCsiibOIv6tv3q_7uu_date6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 16               ; 4 uses
  %i.r = alloca [176 x i8], align 8               ; 6 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %i.ag = alloca [16 x i8], align 8               ; 4 uses
  %i.ah = alloca [16 x i8], align 8               ; 4 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %i.aj = alloca [16 x i8], align 8               ; 4 uses
  %i.ak = alloca [16 x i8], align 8               ; 4 uses
  %i.al = alloca [16 x i8], align 8               ; 6 uses
  %i.am = alloca [16 x i8], align 8               ; 4 uses
  %i.an = alloca [12 x i8], align 8               ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 9 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 6 uses
  %i.av = alloca [24 x i8], align 8               ; 9 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [8 x i8], align 8                ; 8 uses
  %i.ay = alloca [40 x i8], align 8               ; 11 uses
  %i.az = alloca [40 x i8], align 8               ; 8 uses
  %i.ba = alloca [48 x i8], align 8               ; 7 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [24 x i8], align 8               ; 6 uses
end_hunk_1
