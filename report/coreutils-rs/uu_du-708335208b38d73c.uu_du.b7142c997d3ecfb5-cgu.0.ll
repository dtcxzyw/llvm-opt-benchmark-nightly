Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_du-708335208b38d73c.uu_du.b7142c997d3ecfb5-cgu.0?download=true
inline.NumInlined: 1742
inline.NumDeleted: 893
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read11read_to_endCsfIwuYbgPzJV_5uu_du:bb.a
  br label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsfIwuYbgPzJV_5uu_du.exit.thread

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsfIwuYbgPzJV_5uu_du.exit.thread: ; preds = %bb.d, %bb.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsfIwuYbgPzJV_5uu_du.exit
  %.sroa.4.0 = phi i64 [ %spec.select, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsfIwuYbgPzJV_5uu_du.exit ], [ 163208757251, %bb.b ], [ 163208757251, %bb.d ]
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsfIwuYbgPzJV_5uu_du.exit ], [ 1, %bb.b ], [ 1, %bb.d ]
  %i.aj = inttoptr i64 %.sroa.4.0 to ptr
  %i.ak = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.al = insertvalue { i64, ptr } %i.ak, ptr %i.aj, 1
  ret { i64, ptr } %i.al
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read13read_vectoredCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.idx = shl nuw nsw i64 %2, 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5b_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsfIwuYbgPzJV_5uu_du.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp samesign ult i64 %2, 5
  br i1 %min.iters.check, label %.preheader.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %i.d = and i64 %2, 3                            ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 4, i64 %i.d
  %n.vec = sub nsw i64 %2, %i.f                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi20 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %i.j = getelementptr i8, ptr %i.h, i64 40
  %wide.vec = load <4 x i64>, ptr %i.i, align 8
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec21 = load <4 x i64>, ptr %i.j, align 8
  %strided.vec22 = shufflevector <4 x i64> %wide.vec21, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.k = add <2 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.l = add <2 x i64> %strided.vec22, %vec.phi20 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !4090

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.l, %i.k
  %i.n = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.preheader26

.preheader.preheader26:                           ; preds = %.preheader.preheader, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.n, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader26, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.r, %.preheader ], [ %.sroa.04.0.i.ph, %.preheader.preheader26 ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.q, %.preheader ], [ %.sroa.02.0.i.ph, %.preheader.preheader26 ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.04.0.i
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val.i = load i64, ptr %i.p, align 8, !noundef !8
  %i.q = add i64 %.val.i, %.sroa.02.0.i           ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.s = icmp eq i64 %i.r, %2
  br i1 %i.s, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5b_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsfIwuYbgPzJV_5uu_du.exit, label %.preheader, !llvm.loop !4091

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5b_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsfIwuYbgPzJV_5uu_du.exit: ; preds = %.preheader, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.q, %.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !8 ; 3 uses
  %i.x = icmp ne i64 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %.not = icmp ult i64 %.sroa.0.0.i, %i.z
  %or.cond = select i1 %i.x, i1 true, i1 %.not
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5b_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsfIwuYbgPzJV_5uu_du.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4105)
  %.not.i = icmp ult i64 %i.u, %i.w
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !4105 ; 3 uses
  br i1 %.not.i, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsfIwuYbgPzJV_5uu_du.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4106
  store ptr %.pre.i, ptr %i.a, align 8, !noalias !4106
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !noalias !4106
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.ac, align 8, !noalias !4106
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !range !17, !alias.scope !4105, !noundef !8
  store i8 %i.af, ptr %i.ad, align 8, !noalias !4106
  %i.ag = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #25, !noalias !4107 ; 2 uses
  store i64 0, ptr %i.t, align 8, !alias.scope !4105
  %i.ah = load i64, ptr %i.ac, align 8, !noalias !4106, !noundef !8 ; 2 uses
  store i64 %i.ah, ptr %i.v, align 8, !alias.scope !4105
  %i.ai = load i8, ptr %i.ad, align 8, !range !17, !noalias !4106, !noundef !8
  store i8 %i.ai, ptr %i.ae, align 8, !alias.scope !4105
  %.not3.i = icmp eq ptr %i.ag, null
  br i1 %.not3.i, label %bb.d, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsfIwuYbgPzJV_5uu_du.exit.thread

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsfIwuYbgPzJV_5uu_du.exit.thread: ; preds = %bb.c
  %i.aj = ptrtoint ptr %i.ag to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4106
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4106
  br label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsfIwuYbgPzJV_5uu_du.exit

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.b, %bb.d
  %i.ak = phi i64 [ %i.w, %bb.b ], [ %i.ah, %bb.d ]
  %i.al = phi i64 [ %i.u, %bb.b ], [ 0, %bb.d ]   ; 2 uses
  %i.am = sub nuw i64 %i.ak, %i.al                ; 2 uses
  %i.an = icmp eq ptr %.pre.i, null
  br i1 %i.an, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5b_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsfIwuYbgPzJV_5uu_du.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.ap = tail call { i64, ptr } @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read13read_vectored(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2) #25
  br label %bb.j

bb.f:                                             ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsfIwuYbgPzJV_5uu_du.exit.thread, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsfIwuYbgPzJV_5uu_du.exit
  %.sroa.610.013 = phi i64 [ %i.aj, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsfIwuYbgPzJV_5uu_du.exit.thread ], [ %i.am, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsfIwuYbgPzJV_5uu_du.exit ]
  %i.aq = inttoptr i64 %.sroa.610.013 to ptr
  %i.ar = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.aq, 1
  br label %bb.j

bb.g:                                             ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsfIwuYbgPzJV_5uu_du.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !4108)
  %i.as = icmp eq i64 %2, 0
  br i1 %i.as, label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.al
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i, %.lr.ph
  %.sroa.01.0.i18 = phi i64 [ 0, %.lr.ph ], [ %i.bc, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ]
  %.sroa.03.0.i17 = phi ptr [ %1, %.lr.ph ], [ %i.aw, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 3 uses
  %i.au = phi ptr [ %i.at, %.lr.ph ], [ %i.bd, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 3 uses
  %i.av = phi i64 [ %i.am, %.lr.ph ], [ %i.be, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i17, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %.sroa.03.0.i17, align 8, !alias.scope !4108, !noundef !8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i17, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !4108, !noundef !8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4109)
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.av, i64 range(i64 0, -9223372036854775808) %i.az) ; 5 uses
  %i.ba = icmp eq i64 %..i.i.i, 1
  br i1 %i.ba, label %bb.i, label %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsfIwuYbgPzJV_5uu_du.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.bb = load i8, ptr %i.au, align 1, !noalias !4110, !noundef !8
  store i8 %i.bb, ptr %i.ax, align 1, !alias.scope !4109, !noalias !4111
  br label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i

_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsfIwuYbgPzJV_5uu_du.exit.i.i: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %i.au, i64 range(i64 0, -9223372036854775808) %..i.i.i, i1 false), !alias.scope !4112, !noalias !4113
  br label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i

_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsfIwuYbgPzJV_5uu_du.exit.i.i, %bb.i
  %i.bc = add i64 %..i.i.i, %.sroa.01.0.i18       ; 2 uses
  %.not.i8 = icmp ule i64 %i.av, %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 %..i.i.i
  %i.be = sub nuw nsw i64 %i.av, %..i.i.i
  %i.bf = icmp eq ptr %i.aw, %i.b
  %or.cond25 = select i1 %.not.i8, i1 true, i1 %i.bf
  br i1 %or.cond25, label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit, label %bb.h

_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit: ; preds = %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i, %bb.g
  %.sroa.01.1.i = phi i64 [ 0, %bb.g ], [ %i.bc, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 2 uses
  %i.bg = inttoptr i64 %.sroa.01.1.i to ptr
  %i.bh = load i64, ptr %i.t, align 8, !noundef !8
  %i.bi = add i64 %i.bh, %.sroa.01.1.i
  %i.bj = load i64, ptr %i.v, align 8, !noundef !8
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bi)
  store i64 %..i, ptr %i.t, align 8
  %i.bk = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.bg, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.f, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit
  %.merged = phi { i64, ptr } [ %i.ap, %bb.e ], [ %i.ar, %bb.f ], [ %i.bk, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exactCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !8 ; 4 uses
  %i.f = sub i64 %i.c, %i.e                       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4130)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !4130, !noundef !8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !4130, !noundef !8
  %i.k = sub nuw i64 %i.j, %i.h
  %.not.i.not = icmp ugt i64 %i.f, %i.k
  br i1 %.not.i.not, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECsfIwuYbgPzJV_5uu_du.exit, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECsfIwuYbgPzJV_5uu_du.exit.thread

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECsfIwuYbgPzJV_5uu_du.exit.thread: ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !alias.scope !4130, !nonnull !8, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = load ptr, ptr %1, align 8, !noalias !4131, !nonnull !8, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %i.m, i64 range(i64 0, -9223372036854775808) %i.f, i1 false), !alias.scope !4132, !noalias !4133
  store i64 %i.c, ptr %i.d, align 8, !noalias !4131
  %i.p = add i64 %i.h, %i.f
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !4130
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfIwuYbgPzJV_5uu_du.exit

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4134)
  %.not9.i = icmp eq i64 %i.c, %i.e
  br i1 %.not9.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfIwuYbgPzJV_5uu_du.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECsfIwuYbgPzJV_5uu_du.exit
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.q = phi i64 [ %i.e, %.lr.ph.i ], [ %i.ap, %.backedge.i ]
  %i.r = call noundef ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read8read_bufCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #25 ; 10 uses
  %.not2.i = icmp eq ptr %i.r, null
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = ptrtoint ptr %i.r to i64                 ; 4 uses
  %i.t = and i64 %i.s, 3
  switch i64 %i.t, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split7.i
    i64 1, label %.split6.i
  ], !prof !19

default.unreachable:                              ; preds = %bb.c
  unreachable

.split.i:                                         ; preds = %bb.c
  %i.u = lshr i64 %i.s, 32
  %i.v = trunc nuw i64 %i.u to i32
  %i.w = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #25
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !8, !noundef !8
  %i.z = call noundef zeroext i1 %i.y(i32 noundef %i.v) #25, !inline_history !4126
  br i1 %i.z, label %.thread.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfIwuYbgPzJV_5uu_du.exit

.split7.i:                                        ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !22, !noundef !8
  %i.ac = icmp eq i8 %i.ab, 35
  br i1 %i.ac, label %.thread.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfIwuYbgPzJV_5uu_du.exit

.split6.i:                                        ; preds = %bb.c
  %i.ad = getelementptr i8, ptr %i.r, i64 31
  %i.ae = load i8, ptr %i.ad, align 8, !range !22, !noundef !8
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %bb.f, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfIwuYbgPzJV_5uu_du.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.c
  %i.ag = lshr i64 %i.s, 32
  %i.ah = icmp ult ptr %i.r, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.ag to i8
  %spec.select.i.i.i.i = select i1 %i.ah, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.ai = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.aj, label %bb.e, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfIwuYbgPzJV_5uu_du.exit

bb.d:                                             ; preds = %bb.b
  %i.ak = load i64, ptr %i.d, align 8, !alias.scope !4134, !noundef !8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, %i.q
  br i1 %i.al, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfIwuYbgPzJV_5uu_du.exit, label %.backedge.i

.thread.i:                                        ; preds = %.split7.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4135
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i

bb.e:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4135
  %i.am = and i64 %i.s, 1095216660480
  %i.an = icmp ne i64 %i.am, 1095216660480
  call void @llvm.assume(i1 %i.ah)
  call void @llvm.assume(i1 %i.an)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i

bb.f:                                             ; preds = %.split6.i
  %i.ao = getelementptr i8, ptr %i.r, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4135
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  store ptr %i.ao, ptr %2, align 8, !alias.scope !4136, !noalias !4135
  store i8 3, ptr %i.a, align 8, !alias.scope !4136, !noalias !4135
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i: ; preds = %bb.f, %bb.e, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4135
  %.pre.i = load i64, ptr %i.d, align 8, !alias.scope !4134
  br label %.backedge.i

.backedge.i:                                      ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i, %bb.d
  %i.ap = phi i64 [ %.pre.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i ], [ %i.ak, %bb.d ] ; 2 uses
  %i.aq = load i64, ptr %i.b, align 8, !alias.scope !4134, !noundef !8
  %.not.i1 = icmp eq i64 %i.aq, %i.ap
  br i1 %.not.i1, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfIwuYbgPzJV_5uu_du.exit, label %bb.b

_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECsfIwuYbgPzJV_5uu_du.exit: ; preds = %.backedge.i, %bb.d, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split6.i, %.split7.i, %.split.i, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECsfIwuYbgPzJV_5uu_du.exit, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECsfIwuYbgPzJV_5uu_du.exit.thread
  %.sroa.0.0 = phi ptr [ null, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECsfIwuYbgPzJV_5uu_du.exit.thread ], [ null, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECsfIwuYbgPzJV_5uu_du.exit ], [ null, %.backedge.i ], [ %i.r, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.r, %.split.i ], [ %i.r, %.split6.i ], [ @28, %bb.d ], [ %i.r, %.split7.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read14read_to_stringCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !8 ; 6 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.i, align 8
  %i.j = call { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read11read_to_endCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #25 ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4146)
  %i.m = tail call { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read11read_to_endCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #25 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !4146, !nonnull !8, !noundef !8
  %i.p = load i64, ptr %i.d, align 8, !alias.scope !4146, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4147
  call void @_RNvMNtCs6JMX4GRUq9U_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.p) #25
  %i.q = load i64, ptr %i.a, align 8, !range !11, !noalias !4147, !noundef !8
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4147
  %i.r = load i64, ptr %i.d, align 8, !alias.scope !4146, !noundef !8 ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  call void @llvm.assume(i1 %i.s)
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtB2_4Read14read_to_string0ECsfIwuYbgPzJV_5uu_du.exit

bb.e:                                             ; preds = %bb.c
  %i.t = extractvalue { i64, ptr } %i.m, 1
  %i.u = extractvalue { i64, ptr } %i.m, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4147
  %i.v = trunc nuw i64 %i.u to i1
  %..i = select i1 %i.v, ptr %i.t, ptr @24
  %i.w = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %..i, 1
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtB2_4Read14read_to_string0ECsfIwuYbgPzJV_5uu_du.exit

_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtB2_4Read14read_to_string0ECsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.012.i = phi i64 [ %i.r, %bb.d ], [ 0, %bb.e ]
  %.merged.i = phi { i64, ptr } [ %i.m, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  store i64 %.sroa.0.012.i, ptr %i.d, align 8, !alias.scope !4148
  %i.x = extractvalue { i64, ptr } %.merged.i, 0
  %i.y = extractvalue { i64, ptr } %.merged.i, 1
  %i.z = ptrtoint ptr %i.y to i64
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  %i.aa = extractvalue { i64, ptr } %i.j, 1
  %i.ab = ptrtoint ptr %i.aa to i64
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  %i.ad = load i64, ptr %i.i, align 8, !noundef !8
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad) #25
  %i.ae = load i64, ptr %i.b, align 8, !range !11, !noundef !8
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !8, !noundef !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !4149)
  %i.ak = load i64, ptr %1, align 8, !range !9, !alias.scope !4150, !noundef !8
  %i.al = sub nsw i64 %i.ak, %i.e
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfIwuYbgPzJV_5uu_du.exit.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfIwuYbgPzJV_5uu_du.exit.i, !prof !12

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfIwuYbgPzJV_5uu_du.exit.thread.i: ; preds = %bb.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.e, i64 noundef %i.aj, i64 noundef 1, i64 noundef 1) #25
  %i.an = load i64, ptr %i.d, align 8, !alias.scope !4149, !noundef !8 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, -1
  call void @llvm.assume(i1 %i.ao)
  br label %bb.j

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfIwuYbgPzJV_5uu_du.exit.i: ; preds = %bb.i
  %.not.i12 = icmp eq i64 %i.aj, 0
  br i1 %.not.i12, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsfIwuYbgPzJV_5uu_du.exit, label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfIwuYbgPzJV_5uu_du.exit.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfIwuYbgPzJV_5uu_du.exit.thread.i
  %i.ap = phi i64 [ %i.an, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfIwuYbgPzJV_5uu_du.exit.thread.i ], [ %i.e, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfIwuYbgPzJV_5uu_du.exit.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !4149, !nonnull !8, !noundef !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull readonly align 1 %i.ah, i64 %i.aj, i1 false), !noalias !4149
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsfIwuYbgPzJV_5uu_du.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsfIwuYbgPzJV_5uu_du.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfIwuYbgPzJV_5uu_du.exit.i, %bb.j
  %i.at = phi i64 [ %i.ap, %bb.j ], [ %i.e, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfIwuYbgPzJV_5uu_du.exit.i ]
  %i.au = add i64 %i.at, %i.aj
  store i64 %i.au, ptr %i.d, align 8, !alias.scope !4149
  %.val10 = load i64, ptr %i.c, align 8, !range !9, !noundef !8 ; 2 uses
  %i.av = icmp eq i64 %.val10, 0
  br i1 %i.av, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit, label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsfIwuYbgPzJV_5uu_du.exit
  %.val11 = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11, i64 noundef %.val10, i64 noundef range(i64 1, -9223372036854775807) 1) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsfIwuYbgPzJV_5uu_du.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.l:                                             ; preds = %bb.h, %bb.f
  %.sroa.5.0 = phi i64 [ %i.ab, %bb.f ], [ ptrtoint (ptr @24 to i64), %bb.h ]
  %.val = load i64, ptr %i.c, align 8, !range !9, !noundef !8 ; 2 uses
  %i.aw = icmp eq i64 %.val, 0
  br i1 %i.aw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit13, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val9 = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit13

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit13: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtB2_4Read14read_to_string0ECsfIwuYbgPzJV_5uu_du.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit13
  %.sroa.5.1 = phi i64 [ %i.z, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtB2_4Read14read_to_string0ECsfIwuYbgPzJV_5uu_du.exit ], [ %.sroa.5.0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit13 ], [ %i.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit ]
  %.sroa.0.1 = phi i64 [ %i.x, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtB2_4Read14read_to_string0ECsfIwuYbgPzJV_5uu_du.exit ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit13 ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit ]
  %i.ax = inttoptr i64 %.sroa.5.1 to ptr
  %i.ay = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.az = insertvalue { i64, ptr } %i.ay, ptr %i.ax, 1
  ret { i64, ptr } %i.az
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read16is_read_vectoredCsfIwuYbgPzJV_5uu_du(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtB9_4read4Read4readCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !8 ; 3 uses
  %i.f = icmp ne i64 %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.not = icmp ult i64 %2, %i.h
  %or.cond = select i1 %i.f, i1 true, i1 %.not
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4161)
  %.not.i = icmp ult i64 %i.c, %i.e
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !4161 ; 3 uses
  br i1 %.not.i, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs2vKOLqTMYjT_3std2fs4FileECsfIwuYbgPzJV_5uu_du.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4162
  store ptr %.pre.i, ptr %i.a, align 8, !noalias !4162
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.j, align 8, !noalias !4162
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8, !noalias !4162
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !range !17, !alias.scope !4161, !noundef !8
  store i8 %i.n, ptr %i.l, align 8, !noalias !4162
  %i.o = call noundef ptr @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #25, !noalias !4163 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !4161
  %i.p = load i64, ptr %i.k, align 8, !noalias !4162, !noundef !8 ; 2 uses
  store i64 %i.p, ptr %i.d, align 8, !alias.scope !4161
  %i.q = load i8, ptr %i.l, align 8, !range !17, !noalias !4162, !noundef !8
  store i8 %i.q, ptr %i.m, align 8, !alias.scope !4161
end_hunk_0
begin_hunk_1_@_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read11read_to_endCsfIwuYbgPzJV_5uu_du:bb.a
  br label %_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsfIwuYbgPzJV_5uu_du.exit.thread

_RNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsfIwuYbgPzJV_5uu_du.exit.thread: ; preds = %bb.d, %bb.b, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsfIwuYbgPzJV_5uu_du.exit
  %.sroa.4.0 = phi i64 [ %spec.select, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsfIwuYbgPzJV_5uu_du.exit ], [ 163208757251, %bb.b ], [ 163208757251, %bb.d ]
  %.sroa.0.0 = phi i64 [ %i.ae, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsfIwuYbgPzJV_5uu_du.exit ], [ 1, %bb.b ], [ 1, %bb.d ]
  %i.aj = inttoptr i64 %.sroa.4.0 to ptr
  %i.ak = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.al = insertvalue { i64, ptr } %i.ak, ptr %i.aj, 1
  ret { i64, ptr } %i.al
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read13read_vectoredCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.idx = shl nuw nsw i64 %2, 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5k_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsfIwuYbgPzJV_5uu_du.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp samesign ult i64 %2, 5
  br i1 %min.iters.check, label %.preheader.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %i.d = and i64 %2, 3                            ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 4, i64 %i.d
  %n.vec = sub nsw i64 %2, %i.f                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi20 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %i.j = getelementptr i8, ptr %i.h, i64 40
  %wide.vec = load <4 x i64>, ptr %i.i, align 8
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec21 = load <4 x i64>, ptr %i.j, align 8
  %strided.vec22 = shufflevector <4 x i64> %wide.vec21, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.k = add <2 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.l = add <2 x i64> %strided.vec22, %vec.phi20 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !4239

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.l, %i.k
  %i.n = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.preheader26

.preheader.preheader26:                           ; preds = %.preheader.preheader, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.n, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader26, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.r, %.preheader ], [ %.sroa.04.0.i.ph, %.preheader.preheader26 ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.q, %.preheader ], [ %.sroa.02.0.i.ph, %.preheader.preheader26 ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.04.0.i
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val.i = load i64, ptr %i.p, align 8, !noundef !8
  %i.q = add i64 %.val.i, %.sroa.02.0.i           ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.s = icmp eq i64 %i.r, %2
  br i1 %i.s, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5k_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsfIwuYbgPzJV_5uu_du.exit, label %.preheader, !llvm.loop !4240

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5k_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsfIwuYbgPzJV_5uu_du.exit: ; preds = %.preheader, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.q, %.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !8 ; 3 uses
  %i.x = icmp ne i64 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %.not = icmp ult i64 %.sroa.0.0.i, %i.z
  %or.cond = select i1 %i.x, i1 true, i1 %.not
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5k_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsfIwuYbgPzJV_5uu_du.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4254)
  %.not.i = icmp ult i64 %i.u, %i.w
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !4254 ; 3 uses
  br i1 %.not.i, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinECsfIwuYbgPzJV_5uu_du.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4255
  store ptr %.pre.i, ptr %i.a, align 8, !noalias !4255
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !noalias !4255
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.ac, align 8, !noalias !4255
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !range !17, !alias.scope !4254, !noundef !8
  store i8 %i.af, ptr %i.ad, align 8, !noalias !4255
  %i.ag = call noundef ptr @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #25, !noalias !4256 ; 2 uses
  store i64 0, ptr %i.t, align 8, !alias.scope !4254
  %i.ah = load i64, ptr %i.ac, align 8, !noalias !4255, !noundef !8 ; 2 uses
  store i64 %i.ah, ptr %i.v, align 8, !alias.scope !4254
  %i.ai = load i8, ptr %i.ad, align 8, !range !17, !noalias !4255, !noundef !8
  store i8 %i.ai, ptr %i.ae, align 8, !alias.scope !4254
  %.not3.i = icmp eq ptr %i.ag, null
  br i1 %.not3.i, label %bb.d, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinECsfIwuYbgPzJV_5uu_du.exit.thread

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinECsfIwuYbgPzJV_5uu_du.exit.thread: ; preds = %bb.c
  %i.aj = ptrtoint ptr %i.ag to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4255
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4255
  br label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinECsfIwuYbgPzJV_5uu_du.exit

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinECsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.b, %bb.d
  %i.ak = phi i64 [ %i.w, %bb.b ], [ %i.ah, %bb.d ]
  %i.al = phi i64 [ %i.u, %bb.b ], [ 0, %bb.d ]   ; 2 uses
  %i.am = sub nuw i64 %i.ak, %i.al                ; 2 uses
  %i.an = icmp eq ptr %.pre.i, null
  br i1 %i.an, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5k_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsfIwuYbgPzJV_5uu_du.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.ap = tail call { i64, ptr } @_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read13read_vectored(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2) #25
  br label %bb.j

bb.f:                                             ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinECsfIwuYbgPzJV_5uu_du.exit.thread, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinECsfIwuYbgPzJV_5uu_du.exit
  %.sroa.610.013 = phi i64 [ %i.aj, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinECsfIwuYbgPzJV_5uu_du.exit.thread ], [ %i.am, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinECsfIwuYbgPzJV_5uu_du.exit ]
  %i.aq = inttoptr i64 %.sroa.610.013 to ptr
  %i.ar = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.aq, 1
  br label %bb.j

bb.g:                                             ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinECsfIwuYbgPzJV_5uu_du.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !4257)
  %i.as = icmp eq i64 %2, 0
  br i1 %i.as, label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.al
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i, %.lr.ph
  %.sroa.01.0.i18 = phi i64 [ 0, %.lr.ph ], [ %i.bc, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ]
  %.sroa.03.0.i17 = phi ptr [ %1, %.lr.ph ], [ %i.aw, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 3 uses
  %i.au = phi ptr [ %i.at, %.lr.ph ], [ %i.bd, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 3 uses
  %i.av = phi i64 [ %i.am, %.lr.ph ], [ %i.be, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i17, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %.sroa.03.0.i17, align 8, !alias.scope !4257, !noundef !8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i17, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !4257, !noundef !8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4258)
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.av, i64 range(i64 0, -9223372036854775808) %i.az) ; 5 uses
  %i.ba = icmp eq i64 %..i.i.i, 1
  br i1 %i.ba, label %bb.i, label %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsfIwuYbgPzJV_5uu_du.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.bb = load i8, ptr %i.au, align 1, !noalias !4259, !noundef !8
  store i8 %i.bb, ptr %i.ax, align 1, !alias.scope !4258, !noalias !4260
  br label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i

_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsfIwuYbgPzJV_5uu_du.exit.i.i: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %i.au, i64 range(i64 0, -9223372036854775808) %..i.i.i, i1 false), !alias.scope !4261, !noalias !4262
  br label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i

_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsfIwuYbgPzJV_5uu_du.exit.i.i, %bb.i
  %i.bc = add i64 %..i.i.i, %.sroa.01.0.i18       ; 2 uses
  %.not.i8 = icmp ule i64 %i.av, %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 %..i.i.i
  %i.be = sub nuw nsw i64 %i.av, %..i.i.i
  %i.bf = icmp eq ptr %i.aw, %i.b
  %or.cond25 = select i1 %.not.i8, i1 true, i1 %i.bf
  br i1 %or.cond25, label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit, label %bb.h

_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit: ; preds = %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i, %bb.g
  %.sroa.01.1.i = phi i64 [ 0, %bb.g ], [ %i.bc, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 2 uses
  %i.bg = inttoptr i64 %.sroa.01.1.i to ptr
  %i.bh = load i64, ptr %i.t, align 8, !noundef !8
  %i.bi = add i64 %i.bh, %.sroa.01.1.i
  %i.bj = load i64, ptr %i.v, align 8, !noundef !8
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bi)
  store i64 %..i, ptr %i.t, align 8
  %i.bk = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.bg, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.f, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit
  %.merged = phi { i64, ptr } [ %i.ap, %bb.e ], [ %i.ar, %bb.f ], [ %i.bk, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read14read_buf_exactCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !8 ; 4 uses
  %i.f = sub i64 %i.c, %i.e                       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4279)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !4279, !noundef !8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !4279, !noundef !8
  %i.k = sub nuw i64 %i.j, %i.h
  %.not.i.not = icmp ugt i64 %i.f, %i.k
  br i1 %.not.i.not, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read14read_buf_exact0ECsfIwuYbgPzJV_5uu_du.exit, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read14read_buf_exact0ECsfIwuYbgPzJV_5uu_du.exit.thread

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read14read_buf_exact0ECsfIwuYbgPzJV_5uu_du.exit.thread: ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !alias.scope !4279, !nonnull !8, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = load ptr, ptr %1, align 8, !noalias !4280, !nonnull !8, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %i.m, i64 range(i64 0, -9223372036854775808) %i.f, i1 false), !alias.scope !4281, !noalias !4282
  store i64 %i.c, ptr %i.d, align 8, !noalias !4280
  %i.p = add i64 %i.h, %i.f
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !4279
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEECsfIwuYbgPzJV_5uu_du.exit

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read14read_buf_exact0ECsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4283)
  %.not9.i = icmp eq i64 %i.c, %i.e
  br i1 %.not9.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEECsfIwuYbgPzJV_5uu_du.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read14read_buf_exact0ECsfIwuYbgPzJV_5uu_du.exit
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.q = phi i64 [ %i.e, %.lr.ph.i ], [ %i.ap, %.backedge.i ]
  %i.r = call noundef ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read8read_bufCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #25 ; 10 uses
  %.not2.i = icmp eq ptr %i.r, null
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = ptrtoint ptr %i.r to i64                 ; 4 uses
  %i.t = and i64 %i.s, 3
  switch i64 %i.t, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split7.i
    i64 1, label %.split6.i
  ], !prof !19

default.unreachable:                              ; preds = %bb.c
  unreachable

.split.i:                                         ; preds = %bb.c
  %i.u = lshr i64 %i.s, 32
  %i.v = trunc nuw i64 %i.u to i32
  %i.w = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #25
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !8, !noundef !8
  %i.z = call noundef zeroext i1 %i.y(i32 noundef %i.v) #25, !inline_history !4275
  br i1 %i.z, label %.thread.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEECsfIwuYbgPzJV_5uu_du.exit

.split7.i:                                        ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !range !22, !noundef !8
  %i.ac = icmp eq i8 %i.ab, 35
  br i1 %i.ac, label %.thread.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEECsfIwuYbgPzJV_5uu_du.exit

.split6.i:                                        ; preds = %bb.c
  %i.ad = getelementptr i8, ptr %i.r, i64 31
  %i.ae = load i8, ptr %i.ad, align 8, !range !22, !noundef !8
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %bb.f, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEECsfIwuYbgPzJV_5uu_du.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.c
  %i.ag = lshr i64 %i.s, 32
  %i.ah = icmp ult ptr %i.r, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.ag to i8
  %spec.select.i.i.i.i = select i1 %i.ah, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.ai = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.aj, label %bb.e, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEECsfIwuYbgPzJV_5uu_du.exit

bb.d:                                             ; preds = %bb.b
  %i.ak = load i64, ptr %i.d, align 8, !alias.scope !4283, !noundef !8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, %i.q
  br i1 %i.al, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEECsfIwuYbgPzJV_5uu_du.exit, label %.backedge.i

.thread.i:                                        ; preds = %.split7.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4284
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i

bb.e:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4284
  %i.am = and i64 %i.s, 1095216660480
  %i.an = icmp ne i64 %i.am, 1095216660480
  call void @llvm.assume(i1 %i.ah)
  call void @llvm.assume(i1 %i.an)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i

bb.f:                                             ; preds = %.split6.i
  %i.ao = getelementptr i8, ptr %i.r, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4284
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  store ptr %i.ao, ptr %2, align 8, !alias.scope !4285, !noalias !4284
  store i8 3, ptr %i.a, align 8, !alias.scope !4285, !noalias !4284
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i: ; preds = %bb.f, %bb.e, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4284
  %.pre.i = load i64, ptr %i.d, align 8, !alias.scope !4283
  br label %.backedge.i

.backedge.i:                                      ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i, %bb.d
  %i.ap = phi i64 [ %.pre.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsfIwuYbgPzJV_5uu_du.exit.i ], [ %i.ak, %bb.d ] ; 2 uses
  %i.aq = load i64, ptr %i.b, align 8, !alias.scope !4283, !noundef !8
  %.not.i1 = icmp eq i64 %i.aq, %i.ap
  br i1 %.not.i1, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEECsfIwuYbgPzJV_5uu_du.exit, label %bb.b

_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEECsfIwuYbgPzJV_5uu_du.exit: ; preds = %.backedge.i, %bb.d, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split6.i, %.split7.i, %.split.i, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read14read_buf_exact0ECsfIwuYbgPzJV_5uu_du.exit, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read14read_buf_exact0ECsfIwuYbgPzJV_5uu_du.exit.thread
  %.sroa.0.0 = phi ptr [ null, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read14read_buf_exact0ECsfIwuYbgPzJV_5uu_du.exit.thread ], [ null, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read14read_buf_exact0ECsfIwuYbgPzJV_5uu_du.exit ], [ null, %.backedge.i ], [ %i.r, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.r, %.split.i ], [ %i.r, %.split6.i ], [ @28, %bb.d ], [ %i.r, %.split7.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read14read_to_stringCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !8 ; 6 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.i, align 8
  %i.j = call { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read11read_to_endCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #25 ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4295)
  %i.m = tail call { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read11read_to_endCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #25 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !4295, !nonnull !8, !noundef !8
  %i.p = load i64, ptr %i.d, align 8, !alias.scope !4295, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4296
  call void @_RNvMNtCs6JMX4GRUq9U_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.p) #25
  %i.q = load i64, ptr %i.a, align 8, !range !11, !noalias !4296, !noundef !8
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4296
  %i.r = load i64, ptr %i.d, align 8, !alias.scope !4295, !noundef !8 ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  call void @llvm.assume(i1 %i.s)
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtB2_4Read14read_to_string0ECsfIwuYbgPzJV_5uu_du.exit

bb.e:                                             ; preds = %bb.c
  %i.t = extractvalue { i64, ptr } %i.m, 1
  %i.u = extractvalue { i64, ptr } %i.m, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4296
  %i.v = trunc nuw i64 %i.u to i1
  %..i = select i1 %i.v, ptr %i.t, ptr @24
  %i.w = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %..i, 1
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtB2_4Read14read_to_string0ECsfIwuYbgPzJV_5uu_du.exit

_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtB2_4Read14read_to_string0ECsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.012.i = phi i64 [ %i.r, %bb.d ], [ 0, %bb.e ]
  %.merged.i = phi { i64, ptr } [ %i.m, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  store i64 %.sroa.0.012.i, ptr %i.d, align 8, !alias.scope !4297
  %i.x = extractvalue { i64, ptr } %.merged.i, 0
  %i.y = extractvalue { i64, ptr } %.merged.i, 1
  %i.z = ptrtoint ptr %i.y to i64
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  %i.aa = extractvalue { i64, ptr } %i.j, 1
  %i.ab = ptrtoint ptr %i.aa to i64
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ac = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  %i.ad = load i64, ptr %i.i, align 8, !noundef !8
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad) #25
  %i.ae = load i64, ptr %i.b, align 8, !range !11, !noundef !8
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !8, !noundef !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !4298)
  %i.ak = load i64, ptr %1, align 8, !range !9, !alias.scope !4299, !noundef !8
  %i.al = sub nsw i64 %i.ak, %i.e
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfIwuYbgPzJV_5uu_du.exit.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfIwuYbgPzJV_5uu_du.exit.i, !prof !12

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfIwuYbgPzJV_5uu_du.exit.thread.i: ; preds = %bb.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.e, i64 noundef %i.aj, i64 noundef 1, i64 noundef 1) #25
  %i.an = load i64, ptr %i.d, align 8, !alias.scope !4298, !noundef !8 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, -1
  call void @llvm.assume(i1 %i.ao)
  br label %bb.j

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfIwuYbgPzJV_5uu_du.exit.i: ; preds = %bb.i
  %.not.i12 = icmp eq i64 %i.aj, 0
  br i1 %.not.i12, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsfIwuYbgPzJV_5uu_du.exit, label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfIwuYbgPzJV_5uu_du.exit.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfIwuYbgPzJV_5uu_du.exit.thread.i
  %i.ap = phi i64 [ %i.an, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfIwuYbgPzJV_5uu_du.exit.thread.i ], [ %i.e, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfIwuYbgPzJV_5uu_du.exit.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !4298, !nonnull !8, !noundef !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull readonly align 1 %i.ah, i64 %i.aj, i1 false), !noalias !4298
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsfIwuYbgPzJV_5uu_du.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsfIwuYbgPzJV_5uu_du.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfIwuYbgPzJV_5uu_du.exit.i, %bb.j
  %i.at = phi i64 [ %i.ap, %bb.j ], [ %i.e, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsfIwuYbgPzJV_5uu_du.exit.i ]
  %i.au = add i64 %i.at, %i.aj
  store i64 %i.au, ptr %i.d, align 8, !alias.scope !4298
  %.val10 = load i64, ptr %i.c, align 8, !range !9, !noundef !8 ; 2 uses
  %i.av = icmp eq i64 %.val10, 0
  br i1 %i.av, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit, label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsfIwuYbgPzJV_5uu_du.exit
  %.val11 = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11, i64 noundef %.val10, i64 noundef range(i64 1, -9223372036854775807) 1) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsfIwuYbgPzJV_5uu_du.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.l:                                             ; preds = %bb.h, %bb.f
  %.sroa.5.0 = phi i64 [ %i.ab, %bb.f ], [ ptrtoint (ptr @24 to i64), %bb.h ]
  %.val = load i64, ptr %i.c, align 8, !range !9, !noundef !8 ; 2 uses
  %i.aw = icmp eq i64 %.val, 0
  br i1 %i.aw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit13, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val9 = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #25
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit13

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit13: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtB2_4Read14read_to_string0ECsfIwuYbgPzJV_5uu_du.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit13
  %.sroa.5.1 = phi i64 [ %i.z, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtB2_4Read14read_to_string0ECsfIwuYbgPzJV_5uu_du.exit ], [ %.sroa.5.0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit13 ], [ %i.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit ]
  %.sroa.0.1 = phi i64 [ %i.x, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtB2_4Read14read_to_string0ECsfIwuYbgPzJV_5uu_du.exit ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit13 ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsfIwuYbgPzJV_5uu_du.exit ]
  %i.ax = inttoptr i64 %.sroa.5.1 to ptr
  %i.ay = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.az = insertvalue { i64, ptr } %i.ay, ptr %i.ax, 1
  ret { i64, ptr } %i.az
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read16is_read_vectoredCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = tail call { ptr, i1 } @_RNvMs1_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5Stdin4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #25 ; 2 uses
  %i.c = extractvalue { ptr, i1 } %i.b, 0         ; 4 uses
  %i.d = extractvalue { ptr, i1 } %i.b, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  br i1 %i.d, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !4302
  %i.g = and i64 %i.f, 9223372036854775807
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #28
  br i1 %i.i, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.e monotonic, align 1
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.j = atomicrmw xchg ptr %i.c, i32 0 release, align 4
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.e, label %_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read16is_read_vectored.exit, !prof !12

bb.e:                                             ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.c) #25
  br label %_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read16is_read_vectored.exit

_RNvXs3_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_5StdinNtNtNtCs7tKScEop1B6_5alloc2io4read4Read16is_read_vectored.exit: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %bb.e
  ret i1 true
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinENtNtB9_4read4Read4readCsfIwuYbgPzJV_5uu_du(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
end_hunk_1
