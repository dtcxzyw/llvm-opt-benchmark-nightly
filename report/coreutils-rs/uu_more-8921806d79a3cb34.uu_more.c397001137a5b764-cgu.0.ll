Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_more-8921806d79a3cb34.uu_more.c397001137a5b764-cgu.0?download=true
inline.NumInlined: 797
inline.NumDeleted: 452
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager25display_multi_file_header:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !922
  %i.bf = getelementptr inbounds nuw i8, ptr @108, i64 %i.z ; 2 uses
  %gepdiff.i = sub nuw nsw i64 36, %i.z           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !930)
  %i.bg = sub i64 %i.az, %i.bc
  %i.bh = icmp ugt i64 %gepdiff.i, %i.bg
  br i1 %i.bh, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i29.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i, !prof !14

._crit_edge.thread.i:                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgN7rS7e43TA_7uu_more.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !922
  br i1 %.not.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i29.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.thread.i, !prof !14

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i29.i: ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %gepdiff45.i = phi i64 [ 36, %._crit_edge.thread.i ], [ %gepdiff.i, %._crit_edge.i ] ; 2 uses
  %i.bi = phi ptr [ @108, %._crit_edge.thread.i ], [ %i.bf, %._crit_edge.i ]
  %i.bj = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.bc, %._crit_edge.i ]
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgN7rS7e43TA_7uu_more(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.bj, i64 noundef %gepdiff45.i, i64 noundef 1, i64 noundef 1) #26, !noalias !922
  %i.bk = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !930, !noalias !922, !noundef !6 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, -1
  tail call void @llvm.assume(i1 %i.bl)
  %.pre33.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !930, !noalias !922
  %.sroa.0.0.copyload.pre.pre = load i64, ptr %i.c, align 8, !noalias !931
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.thread.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i: ; preds = %._crit_edge.i
  %i.bm = icmp sgt i64 %i.bc, -1
  tail call void @llvm.assume(i1 %i.bm)
  %.not.i28.i = icmp eq i64 %i.z, 36
  br i1 %.not.i28.i, label %_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replaceReECsgN7rS7e43TA_7uu_more.exit, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.thread.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.thread.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i29.i, %._crit_edge.thread.i
  %.sroa.0.0.copyload.pre = phi i64 [ %.sroa.0.0.copyload.pre.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i29.i ], [ %.pre3136.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i ], [ %.pre29.i, %._crit_edge.thread.i ]
  %gepdiff43.i = phi i64 [ %gepdiff45.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i29.i ], [ %gepdiff.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i ], [ 36, %._crit_edge.thread.i ] ; 2 uses
  %i.bn = phi ptr [ %i.bi, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i29.i ], [ %i.bf, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i ], [ @108, %._crit_edge.thread.i ]
  %i.bo = phi ptr [ %.pre33.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i29.i ], [ %i.ay, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i ], [ %.sroa.10.0.i.i, %._crit_edge.thread.i ] ; 2 uses
  %i.bp = phi i64 [ %i.bk, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.thread.i29.i ], [ %i.bc, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i ], [ 0, %._crit_edge.thread.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr nonnull readonly align 1 %i.bn, i64 %gepdiff43.i, i1 false), !noalias !932
  br label %_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replaceReECsgN7rS7e43TA_7uu_more.exit

_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replaceReECsgN7rS7e43TA_7uu_more.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.thread.i
  %.sroa.6.0.copyload = phi ptr [ %i.bo, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.thread.i ], [ %i.ay, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i ] ; 3 uses
  %.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.thread.i ], [ %.pre3136.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i ] ; 4 uses
  %gepdiff46.i = phi i64 [ %gepdiff43.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.thread.i ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i ]
  %i.br = phi i64 [ %i.bp, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.thread.i ], [ %i.bc, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgN7rS7e43TA_7uu_more.exit.i27.i ]
  %i.bs = add nuw i64 %i.br, %gepdiff46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !922
  %i.bt = tail call fastcc noundef ptr @_RNvYNtCsgN7rS7e43TA_7uu_more10OutputTypeNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allB4_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.0.copyload, i64 noundef %i.bs) #26 ; 2 uses
  %.not27 = icmp eq ptr %i.bt, null
  br i1 %.not27, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replaceReECsgN7rS7e43TA_7uu_more.exit
  %i.bu = tail call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.bt) #26 ; 2 uses
  %i.bv = extractvalue { ptr, ptr } %i.bu, 0      ; 2 uses
  %i.bw = extractvalue { ptr, ptr } %i.bu, 1      ; 2 uses
  %i.bx = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.bx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !933
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit

bb.i:                                             ; preds = %_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replaceReECsgN7rS7e43TA_7uu_more.exit
  %i.by = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.by, label %.lr.ph.split.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !934
  br label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %bb.i, %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !6
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %select.unfold.i.i.i, %.lr.ph.split.preheader.i
  %i.cb = phi i64 [ %i.cr, %select.unfold.i.i.i ], [ 0, %.lr.ph.split.preheader.i ] ; 2 uses
  %.sroa.0.016.i = phi i64 [ %i.cv, %select.unfold.i.i.i ], [ 0, %.lr.ph.split.preheader.i ] ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.n, %.lr.ph.split.i
  %i.cc = phi i64 [ %i.cr, %bb.n ], [ %i.cb, %.lr.ph.split.i ] ; 6 uses
  %i.cd = sub nuw nsw i64 36, %i.cc               ; 3 uses
  %i.ce = getelementptr i8, ptr @108, i64 %i.cc   ; 3 uses
  %i.cf = icmp ugt i64 %i.cc, 20
  br i1 %i.cf, label %.preheader.i.i.i.i.i.i.i, label %bb.k

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cc, 36
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.k:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.cg = tail call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef range(i64 0, -9223372036854775808) %i.cd) #26, !noalias !935
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %i.cd, %bb.l ], [ %.sroa.01.05.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %bb.l ], [ 1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ch = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i, 0
  %i.ci = insertvalue { i64, i64 } %i.ch, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.l
  %.sroa.01.05.i.i.i.i.i.i.i = phi i64 [ %i.cm, %bb.l ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.01.05.i.i.i.i.i.i.i
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !936, !noalias !935, !noundef !6
  %i.cl = icmp eq i8 %i.ck, 10
  br i1 %i.cl, label %._crit_edge.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cm = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.cm, %i.cd
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.k
  %.merged.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.ci, %._crit_edge.i.i.i.i.i.i.i ], [ %i.cg, %bb.k ] ; 2 uses
  %i.cn = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 0
  %i.co = trunc nuw i64 %i.cn to i1
  br i1 %i.co, label %bb.m, label %_RINvYNtNtNtCs6JMX4GRUq9U_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECsgN7rS7e43TA_7uu_more.exit

bb.m:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  %i.cp = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.cq = add i64 %i.cc, 1
  %i.cr = add i64 %i.cq, %i.cp                    ; 3 uses
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.cr, 36
  %i.cs = add i64 %i.cp, %i.cc
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %i.cs, 35
  br i1 %or.cond.i.i.i.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.m
  br i1 %.not12.i.i.i.i.i.i, label %_RINvYNtNtNtCs6JMX4GRUq9U_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECsgN7rS7e43TA_7uu_more.exit, label %.lr.ph.split.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ct = getelementptr i8, ptr %i.ce, i64 %i.cp
  %lhsc = load i8, ptr %i.ct, align 1
  %i.cu = icmp eq i8 %lhsc, 10
  br i1 %i.cu, label %select.unfold.i.i.i, label %bb.n

select.unfold.i.i.i:                              ; preds = %bb.o
  %i.cv = add i64 %.sroa.0.016.i, 1
  br label %.lr.ph.split.i

_RINvYNtNtNtCs6JMX4GRUq9U_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECsgN7rS7e43TA_7uu_more.exit: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i, %bb.n
  %.not.i3.i.i.i.i.i = icmp ne i64 %i.cb, 36
  %i.cw = zext i1 %.not.i3.i.i.i.i.i to i64
  %spec.select.i = add i64 %.sroa.0.016.i, %i.cw
  %i.cx = tail call i64 @llvm.usub.sat.i64(i64 %i.ca, i64 %spec.select.i)
  store i64 %i.cx, ptr %i.bz, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit: ; preds = %bb.h, %bb.g, %_RINvYNtNtNtCs6JMX4GRUq9U_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECsgN7rS7e43TA_7uu_more.exit, %bb.b
  %.sroa.4.0 = phi ptr [ %i.j, %bb.b ], [ undef, %_RINvYNtNtNtCs6JMX4GRUq9U_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECsgN7rS7e43TA_7uu_more.exit ], [ %i.bw, %bb.g ], [ %i.bw, %bb.h ]
  %.sroa.0.0 = phi ptr [ %i.i, %bb.b ], [ null, %_RINvYNtNtNtCs6JMX4GRUq9U_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECsgN7rS7e43TA_7uu_more.exit ], [ %i.bv, %bb.g ], [ %i.bv, %bb.h ]
  %i.cy = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.cz = insertvalue { ptr, ptr } %i.cy, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.cz
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager4draw(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0, i32 noundef range(i32 -1, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.0.i = alloca i32, align 4                ; 14 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 14 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [2 x i8], align 2                ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 22 uses
  %i.ad = alloca [24 x i8], align 8               ; 10 uses
  %i.ae = alloca [104 x i8], align 8              ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 11 uses
  %i.ag = alloca [48 x i8], align 16              ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 7 uses
  %i.al = alloca [24 x i8], align 8               ; 13 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1059)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !16, !alias.scope !1060, !noundef !6
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.thread.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.i: ; preds = %bb.a
  %i.aq = tail call fastcc noundef ptr @_RNvYNtCsgN7rS7e43TA_7uu_more10OutputTypeNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allB4_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef range(i64 0, -9223372036854775808) 4) #26, !noalias !1061 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.i
  %i.ar = tail call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.aq) #26
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10draw_lines.exit

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.thread.i: ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.i, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  store i64 0, ptr %i.as, align 8, !alias.scope !1059
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !1059, !noundef !6
  %.not108.i = icmp eq i64 %i.av, 0
  br i1 %.not108.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10draw_lines.exit.thread, label %.lr.ph.lr.ph.i

.lr.ph.lr.ph.i:                                   ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10clear_line.exit.thread.i
  %i.aw = load i64, ptr %i.at, align 8, !alias.scope !1059, !noundef !6
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 178
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 5 uses
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.656.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit49.i, %.lr.ph.lr.ph.i
  %.sroa.04.0.ph104.i = phi i64 [ 0, %.lr.ph.lr.ph.i ], [ %i.go, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit49.i ] ; 4 uses
  %.sroa.08.0.ph103.i = phi i64 [ %i.aw, %.lr.ph.lr.ph.i ], [ %i.gp, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsgN7rS7e43TA_7uu_more.exit49.i ]
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.08.0101.i = phi i64 [ %.sroa.08.0.ph103.i, %.lr.ph.i ], [ %i.co, %bb.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1059
  call fastcc void @_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager15read_until_line(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %.sroa.08.0101.i) #26
  %i.bk = load ptr, ptr %i.am, align 8, !noalias !1059, !noundef !6 ; 2 uses
  %.not27.i = icmp eq ptr %i.bk, null
  br i1 %.not27.i, label %bb.d, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10draw_lines.exit.thread39

.loopexit63.i:                                    ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 1, ptr %i.bl, align 8, !alias.scope !1059
  %i.bm = load i64, ptr %i.au, align 8, !alias.scope !1059, !noundef !6 ; 3 uses
  %i.bn = call i64 @llvm.usub.sat.i64(i64 %.sroa.08.0101.i, i64 %i.bm)
  store i64 %i.bn, ptr %i.at, align 8, !alias.scope !1059
  %i.bo = icmp ult i64 %.sroa.04.0.ph104.i, %i.bm
  br i1 %i.bo, label %.lr.ph107.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10draw_lines.exit.thread

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10draw_lines.exit.thread39: ; preds = %bb.c
  %i.bp = load ptr, ptr %i.ax, align 8, !noalias !1059, !nonnull !6, !align !8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1059
  br label %bb.ak

bb.d:                                             ; preds = %bb.c
  %i.bq = load i8, ptr %i.ax, align 8, !range !13, !noalias !1059, !noundef !6
  %i.br = trunc nuw i8 %i.bq to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1059
  br i1 %i.br, label %bb.e, label %.loopexit63.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  %i.bs = load i8, ptr %i.ay, align 2, !range !13, !alias.scope !1063, !noundef !6
  %i.bt = trunc nuw i8 %i.bs to i1
  %i.bu = icmp ne i64 %.sroa.08.0101.i, 0
  %or.cond.not.i.i = and i1 %i.bu, %i.bt
  %i.bv = load i64, ptr %i.az, align 8, !alias.scope !1063 ; 2 uses
  %i.bw = icmp ult i64 %.sroa.08.0101.i, %i.bv    ; 2 uses
  %or.cond.i.i = select i1 %or.cond.not.i.i, i1 %i.bw, i1 false
  br i1 %or.cond.i.i, label %bb.f, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.bx = load ptr, ptr %i.ba, align 8, !alias.scope !1063, !nonnull !6, !noundef !6 ; 3 uses
  %i.by = getelementptr [24 x i8], ptr %i.bx, i64 %.sroa.08.0101.i ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !1062, !noundef !6 ; 2 uses
  %i.cb = icmp sgt i64 %i.ca, -1
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.ca, 0
  br i1 %i.cc, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1059
  br label %bb.j

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.i: ; preds = %bb.f
  %i.cd = getelementptr i8, ptr %i.by, i64 -8
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !1062, !noundef !6 ; 2 uses
  %i.cf = icmp sgt i64 %i.ce, -1
  call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp eq i64 %i.ce, 0
  br i1 %i.cg, label %bb.i, label %.thread.i

.thread.i:                                        ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1059
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph107.i
  %i.ch = add nuw i64 %.sroa.04.1106.i, 1         ; 2 uses
  %i.ci = load i64, ptr %i.au, align 8, !alias.scope !1059, !noundef !6 ; 2 uses
  %i.cj = icmp ult i64 %i.ch, %i.ci
  br i1 %i.cj, label %.lr.ph107.i, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10draw_lines.exit.thread

.lr.ph107.i:                                      ; preds = %.loopexit63.i, %bb.g
  %.sroa.04.1106.i = phi i64 [ %i.ch, %bb.g ], [ %.sroa.04.0.ph104.i, %.loopexit63.i ]
  %i.ck = call fastcc noundef ptr @_RNvYNtCsgN7rS7e43TA_7uu_more10OutputTypeNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allB4_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 3) #26 ; 2 uses
  %.not28.i = icmp eq ptr %i.ck, null
  br i1 %.not28.i, label %bb.g, label %bb.h

bb.h:                                             ; preds = %.lr.ph107.i
  %i.cl = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %i.ck) #26
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10draw_lines.exit

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1059
  br i1 %i.bw, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.i._crit_edge, label %bb.k

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.i._crit_edge: ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.i
  %.pre.a = load ptr, ptr %i.ba, align 8, !alias.scope !1059
  br label %bb.j

bb.i:                                             ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.i
  %i.cm = load i64, ptr %i.as, align 8, !alias.scope !1059, !noundef !6
  %i.cn = add i64 %i.cm, 1
  store i64 %i.cn, ptr %i.as, align 8, !alias.scope !1059
  %i.co = add nuw i64 %.sroa.08.0101.i, 1
  %i.cp = load i64, ptr %i.au, align 8, !alias.scope !1059, !noundef !6 ; 2 uses
  %i.cq = icmp ult i64 %.sroa.04.0.ph104.i, %i.cp
  br i1 %i.cq, label %bb.c, label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager10draw_lines.exit.thread

bb.j:                                             ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.i._crit_edge, %.thread.i, %.thread63.i
  %2 = phi ptr [ %.pre.a, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.i._crit_edge ], [ %i.bx, %.thread63.i ], [ %i.bx, %.thread.i ]
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.08.0101.i
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cr) #26
  %i.cs = load i64, ptr %i.bb, align 8, !range !12, !alias.scope !1059, !noundef !6
  %.not29.i = icmp eq i64 %i.cs, -1
  br i1 %.not29.i, label %.split.i, label %bb.l

bb.k:                                             ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager19should_squeeze_line.exit.thread.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.08.0101.i, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #27
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1059
  %i.ct = load ptr, ptr %i.bc, align 8, !alias.scope !1059, !nonnull !6, !noundef !6 ; 2 uses
  %i.cu = load i64, ptr %i.bd, align 8, !alias.scope !1059, !noundef !6 ; 9 uses
  %.val32.i = load i64, ptr %i.an, align 8, !range !16, !alias.scope !1059, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1059
  store ptr %i.ct, ptr %i.ah, align 8, !noalias !1065
  store i64 %i.cu, ptr %i.be, align 8, !noalias !1065
  %i.cv = icmp eq i64 %.val32.i, 0
  br i1 %i.cv, label %.split.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i = icmp slt i64 %i.cu, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n, !prof !19

bb.n:                                             ; preds = %bb.m
  %i.cw = icmp eq i64 %i.cu, 0
  br i1 %i.cw, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more.exit.thread8.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.n
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1066
  %i.cx = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.cu, i64 noundef range(i64 1, 9) 1) #26, !noalias !1066 ; 3 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.o, label %bb.p

.split.i.i:                                       ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1065
  store <2 x ptr> <ptr @90, ptr @_RNvXNtNtNtCsfxi9wTnNW09_9crossterm5style5types9attributeNtB2_9AttributeNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt>, ptr %i.ag, align 16, !noalias !1065
  store ptr %i.ah, ptr %i.bf, align 16, !noalias !1065
  store <2 x ptr> <ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsgN7rS7e43TA_7uu_more, ptr @91>, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !1065
  store ptr @_RNvXNtNtNtCsfxi9wTnNW09_9crossterm5style5types9attributeNtB2_9AttributeNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !1065
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noundef nonnull @92, ptr noundef nonnull %i.ag) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1065
  %.pre.i = load ptr, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !1059
  %.pre153.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1059
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14highlight_text.exit.i

bb.o:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.m
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.m ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.cu) #29, !noalias !1064
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more.exit.thread8.i.i: ; preds = %bb.p, %bb.n
  %i.cz = phi ptr [ %i.cx, %bb.p ], [ inttoptr (i64 1 to ptr), %bb.n ] ; 2 uses
  store i64 %i.cu, ptr %i.ak, align 8, !alias.scope !1064, !noalias !1059
  store ptr %i.cz, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !alias.scope !1064, !noalias !1059
  store i64 %i.cu, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1064, !noalias !1059
  br label %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14highlight_text.exit.i

bb.p:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cx, ptr nonnull readonly align 1 %i.ct, i64 %i.cu, i1 false), !noalias !1064
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more.exit.thread8.i.i

_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14highlight_text.exit.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more.exit.thread8.i.i, %.split.i.i
  %i.da = phi i64 [ %.pre153.i, %.split.i.i ], [ %i.cu, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more.exit.thread8.i.i ] ; 7 uses
  %i.db = phi ptr [ %.pre.i, %.split.i.i ], [ %i.cz, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgN7rS7e43TA_7uu_more.exit.thread8.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1059
  %i.dc = load ptr, ptr %i.bg, align 8, !noalias !1059, !nonnull !6, !noundef !6 ; 6 uses
  %i.dd = load i64, ptr %i.bh, align 8, !noalias !1059, !noundef !6 ; 26 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  call void @llvm.experimental.noalias.scope.decl(metadata !1068)
  call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1059
  %i.de = load i64, ptr %i.bd, align 8, !alias.scope !1070, !noalias !1071, !noundef !6 ; 2 uses
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14highlight_text.exit.i
  %i.dg = load ptr, ptr %i.bc, align 8, !alias.scope !1070, !noalias !1071, !nonnull !6, !noundef !6
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !1072, !noundef !6 ; 3 uses
  %i.di = icmp eq i64 %i.da, 1
  br i1 %i.di, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.dj = load i8, ptr %i.db, align 1, !alias.scope !1069, !noundef !6 ; 3 uses
  %.not.i.i.i.i.i = icmp slt i64 %i.dd, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s, !prof !19

bb.s:                                             ; preds = %bb.r
  %i.dk = icmp samesign eq i64 %i.dd, 0
  br i1 %i.dk, label %_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replaceRNtNtB8_6string6StringECsgN7rS7e43TA_7uu_more.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.s
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1073
  %i.dl = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.dd, i64 noundef range(i64 1, 9) 1) #26, !noalias !1073 ; 7 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.t, label %iter.check

iter.check:                                       ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  %min.iters.check = icmp ult i64 %i.dd, 8
  br i1 %min.iters.check, label %.preheader.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check273 = icmp ult i64 %i.dd, 32
  br i1 %min.iters.check273, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dn = and i64 %i.dd, 24
  %n.vec = and i64 %i.dd, 9223372036854775776     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.dh, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert274 = insertelement <16 x i8> poison, i8 %i.dj, i64 0
  %broadcast.splat275 = shufflevector <16 x i8> %broadcast.splatinsert274, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load = load <16 x i8>, ptr %i.do, align 1, !alias.scope !1067, !noalias !1074 ; 2 uses
  %wide.load276 = load <16 x i8>, ptr %i.dp, align 1, !alias.scope !1067, !noalias !1074 ; 2 uses
  %i.dq = icmp eq <16 x i8> %wide.load, %broadcast.splat
  %i.dr = icmp eq <16 x i8> %wide.load276, %broadcast.splat
  %i.ds = select <16 x i1> %i.dq, <16 x i8> %broadcast.splat275, <16 x i8> %wide.load
  %i.dt = select <16 x i1> %i.dr, <16 x i8> %broadcast.splat275, <16 x i8> %wide.load276
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store <16 x i8> %i.ds, ptr %i.du, align 1, !noalias !1075
  store <16 x i8> %i.dt, ptr %i.dv, align 1, !noalias !1075
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !984

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dd, %n.vec
  br i1 %cmp.n, label %_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replaceRNtNtB8_6string6StringECsgN7rS7e43TA_7uu_more.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dn, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !1076

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec277 = and i64 %i.dd, 9223372036854775800  ; 3 uses
  %broadcast.splatinsert278 = insertelement <8 x i8> poison, i8 %i.dh, i64 0
  %broadcast.splat279 = shufflevector <8 x i8> %broadcast.splatinsert278, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert280 = insertelement <8 x i8> poison, i8 %i.dj, i64 0
  %broadcast.splat281 = shufflevector <8 x i8> %broadcast.splatinsert280, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index282 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next284, %vec.epilog.vector.body ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dc, i64 %index282
  %wide.load283 = load <8 x i8>, ptr %i.dx, align 1, !alias.scope !1067, !noalias !1074 ; 2 uses
  %i.dy = icmp eq <8 x i8> %wide.load283, %broadcast.splat279
  %i.dz = select <8 x i1> %i.dy, <8 x i8> %broadcast.splat281, <8 x i8> %wide.load283
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index282
  store <8 x i8> %i.dz, ptr %i.ea, align 1, !noalias !1075
  %index.next284 = add nuw i64 %index282, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next284, %n.vec277
  br i1 %i.eb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !985

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n285 = icmp eq i64 %i.dd, %n.vec277
  br i1 %cmp.n285, label %_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replaceRNtNtB8_6string6StringECsgN7rS7e43TA_7uu_more.exit.i, label %.preheader.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec277, %vec.epilog.middle.block ]
  br label %.preheader.i.i.i.i.i

bb.t:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i, %bb.r
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i ], [ 0, %bb.r ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.dd) #29, !noalias !1077
  unreachable

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i
  %i.ec = phi i64 [ %i.eg, %.preheader.i.i.i.i.i ], [ %.ph, %.preheader.i.i.i.i.i.preheader ] ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ec
  %.val11.i.i.i.i.i.i.i.i = load i8, ptr %i.ed, align 1, !alias.scope !1067, !noalias !1074, !noundef !6 ; 2 uses
  %i.ee = icmp eq i8 %.val11.i.i.i.i.i.i.i.i, %i.dh
  %spec.select.i.i = select i1 %i.ee, i8 %i.dj, i8 %.val11.i.i.i.i.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ec
  store i8 %spec.select.i.i, ptr %i.ef, align 1, !noalias !1075
  %i.eg = add nuw nsw i64 %i.ec, 1                ; 2 uses
  %i.eh = icmp eq i64 %i.eg, %i.dd
  br i1 %i.eh, label %_RINvMs3_NtCs7tKScEop1B6_5alloc3stre7replaceRNtNtB8_6string6StringECsgN7rS7e43TA_7uu_more.exit.i, label %.preheader.i.i.i.i.i, !llvm.loop !986

bb.u:                                             ; preds = %bb.q, %_RNvMs5_CsgN7rS7e43TA_7uu_moreNtB5_5Pager14highlight_text.exit.i
  %.not.i.i = icmp ugt i64 %i.de, %i.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1078
  br i1 %.not.i.i, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgN7rS7e43TA_7uu_more.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i.i = icmp slt i64 %i.dd, 0
  br i1 %.not.i.i.i.i, label %bb.x, label %bb.w, !prof !22

bb.w:                                             ; preds = %bb.v
  %i.ei = icmp eq i64 %i.dd, 0
  br i1 %i.ei, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgN7rS7e43TA_7uu_more.exit.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i
end_hunk_0
