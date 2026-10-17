Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ptx-f695fb62d915b013.uu_ptx.c0c590d8fc0ebb31-cgu.0?download=true
inline.NumInlined: 1812
inline.NumDeleted: 1075
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_11read_to_endCsgy7pbN39oAf_6uu_ptx:bb.a

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_13read_vectoredCsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.idx = shl nuw nsw i64 %2, 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderINtNtB32_5boxed3BoxDNtNtB30_4read4ReadEL_EEB4j_13read_vectored0NCINvXsK_NtB1s_5accumjNtB59_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsgy7pbN39oAf_6uu_ptx.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp samesign ult i64 %2, 5
  br i1 %min.iters.check, label %.preheader.preheader27, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %i.d = and i64 %2, 3                            ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 4, i64 %i.d
  %n.vec = sub nsw i64 %2, %i.f                   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi21 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %i.j = getelementptr i8, ptr %i.h, i64 40
  %wide.vec = load <4 x i64>, ptr %i.i, align 8
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec22 = load <4 x i64>, ptr %i.j, align 8
  %strided.vec23 = shufflevector <4 x i64> %wide.vec22, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.k = add <2 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.l = add <2 x i64> %strided.vec23, %vec.phi21 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !4232

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.l, %i.k
  %i.n = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.preheader.preheader27

.preheader.preheader27:                           ; preds = %.preheader.preheader, %middle.block
  %.sroa.04.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.0.i.ph = phi i64 [ 0, %.preheader.preheader ], [ %i.n, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader27, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.r, %.preheader ], [ %.sroa.04.0.i.ph, %.preheader.preheader27 ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.q, %.preheader ], [ %.sroa.02.0.i.ph, %.preheader.preheader27 ]
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.04.0.i
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val.i = load i64, ptr %i.p, align 8, !noundef !7
  %i.q = add i64 %.val.i, %.sroa.02.0.i           ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.s = icmp eq i64 %i.r, %2
  br i1 %i.s, label %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderINtNtB32_5boxed3BoxDNtNtB30_4read4ReadEL_EEB4j_13read_vectored0NCINvXsK_NtB1s_5accumjNtB59_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsgy7pbN39oAf_6uu_ptx.exit, label %.preheader, !llvm.loop !4233

_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderINtNtB32_5boxed3BoxDNtNtB30_4read4ReadEL_EEB4j_13read_vectored0NCINvXsK_NtB1s_5accumjNtB59_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %.preheader, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.q, %.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !7 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !7 ; 3 uses
  %i.x = icmp ne i64 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %.not = icmp ult i64 %.sroa.0.0.i, %i.z
  %or.cond = select i1 %i.x, i1 true, i1 %.not
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderINtNtB32_5boxed3BoxDNtNtB30_4read4ReadEL_EEB4j_13read_vectored0NCINvXsK_NtB1s_5accumjNtB59_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsgy7pbN39oAf_6uu_ptx.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4255)
  %.not.i = icmp ult i64 %i.u, %i.w
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !4254 ; 3 uses
  br i1 %.not.i, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4256
  store ptr %.pre.i, ptr %i.a, align 8, !noalias !4256
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !noalias !4256
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.ac, align 8, !noalias !4256
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !range !16, !alias.scope !4254, !noundef !7
  store i8 %i.af, ptr %i.ad, align 8, !noalias !4256
  %.val.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !4255, !noalias !4257, !nonnull !7, !noundef !7
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !4255, !noalias !4257, !nonnull !7, !align !9, !noundef !7
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !7, !noalias !4258, !nonnull !7
  %i.aj = call noundef ptr %i.ai(ptr noundef nonnull %.val.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #29, !noalias !4256, !inline_history !2 ; 2 uses
  store i64 0, ptr %i.t, align 8, !alias.scope !4254
  %i.ak = load i64, ptr %i.ac, align 8, !noalias !4256, !noundef !7 ; 2 uses
  store i64 %i.ak, ptr %i.v, align 8, !alias.scope !4254
  %i.al = load i8, ptr %i.ad, align 8, !range !16, !noalias !4256, !noundef !7
  store i8 %i.al, ptr %i.ae, align 8, !alias.scope !4254
  %.not3.i = icmp eq ptr %i.aj, null
  br i1 %.not3.i, label %bb.d, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.thread

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.thread: ; preds = %bb.c
  %i.am = ptrtoint ptr %i.aj to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4256
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4256
  br label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %bb.b, %bb.d
  %i.an = phi i64 [ %i.w, %bb.b ], [ %i.ak, %bb.d ] ; 2 uses
  %i.ao = phi i64 [ %i.u, %bb.b ], [ 0, %bb.d ]   ; 3 uses
  %i.ap = sub nuw i64 %i.an, %i.ao                ; 2 uses
  %i.aq = icmp eq ptr %.pre.i, null
  br i1 %i.aq, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_RINvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderINtNtB32_5boxed3BoxDNtNtB30_4read4ReadEL_EEB4j_13read_vectored0NCINvXsK_NtB1s_5accumjNtB59_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECsgy7pbN39oAf_6uu_ptx.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %.val = load ptr, ptr %i.ar, align 8, !nonnull !7, !noundef !7
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val8 = load ptr, ptr %i.as, align 8, !nonnull !7, !align !9, !noundef !7
  %i.at = getelementptr inbounds nuw i8, ptr %.val8, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !7, !noalias !4259, !nonnull !7
  %i.av = tail call { i64, ptr } %i.au(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) #29, !inline_history !4244
  br label %bb.j

bb.f:                                             ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.thread, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit
  %.sroa.611.014 = phi i64 [ %i.am, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.thread ], [ %i.ap, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit ]
  %i.aw = inttoptr i64 %.sroa.611.014 to ptr
  %i.ax = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.aw, 1
  br label %bb.j

bb.g:                                             ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !4260)
  %i.ay = icmp eq i64 %2, 0
  br i1 %i.ay, label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ao
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i, %.lr.ph
  %.sroa.01.0.i19 = phi i64 [ 0, %.lr.ph ], [ %i.bi, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ]
  %.sroa.03.0.i18 = phi ptr [ %1, %.lr.ph ], [ %i.bc, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 3 uses
  %i.ba = phi ptr [ %i.az, %.lr.ph ], [ %i.bj, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 3 uses
  %i.bb = phi i64 [ %i.ap, %.lr.ph ], [ %i.bk, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i18, i64 16 ; 2 uses
  %i.bd = load ptr, ptr %.sroa.03.0.i18, align 8, !alias.scope !4260, !noundef !7 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i18, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !4260, !noundef !7 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4261)
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bb, i64 range(i64 0, -9223372036854775808) %i.bf) ; 5 uses
  %i.bg = icmp eq i64 %..i.i.i, 1
  br i1 %i.bg, label %bb.i, label %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.bh = load i8, ptr %i.ba, align 1, !noalias !4262, !noundef !7
  store i8 %i.bh, ptr %i.bd, align 1, !alias.scope !4261, !noalias !4263
  br label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i

_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx.exit.i.i: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull readonly align 1 %i.ba, i64 range(i64 0, -9223372036854775808) %..i.i.i, i1 false), !alias.scope !4264, !noalias !4265
  br label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i

_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECsgy7pbN39oAf_6uu_ptx.exit.i.i, %bb.i
  %i.bi = add i64 %..i.i.i, %.sroa.01.0.i19       ; 2 uses
  %.not.i9 = icmp ule i64 %i.bb, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 %..i.i.i
  %i.bk = sub nuw nsw i64 %i.bb, %..i.i.i
  %i.bl = icmp eq ptr %i.bc, %i.b
  %or.cond26 = select i1 %.not.i9, i1 true, i1 %i.bl
  br i1 %or.cond26, label %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit, label %bb.h

_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit: ; preds = %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i, %bb.g
  %.sroa.01.1.i = phi i64 [ 0, %bb.g ], [ %i.bi, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 2 uses
  %i.bm = inttoptr i64 %.sroa.01.1.i to ptr
  %i.bn = add i64 %i.ao, %.sroa.01.1.i
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.an, i64 %i.bn)
  store i64 %..i, ptr %i.t, align 8
  %i.bo = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.bm, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.f, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit
  %.merged = phi { i64, ptr } [ %i.av, %bb.e ], [ %i.ax, %bb.f ], [ %i.bo, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_14read_buf_exactCsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !7 ; 4 uses
  %i.g = sub i64 %i.d, %i.f                       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4305)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4305, !noundef !7 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4305, !noundef !7 ; 2 uses
  %i.l = sub nuw i64 %i.k, %i.i
  %.not.i.not = icmp ugt i64 %i.g, %i.l
  br i1 %.not.i.not, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB28_14read_buf_exact0ECsgy7pbN39oAf_6uu_ptx.exit, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB28_14read_buf_exact0ECsgy7pbN39oAf_6uu_ptx.exit.thread

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB28_14read_buf_exact0ECsgy7pbN39oAf_6uu_ptx.exit.thread: ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !alias.scope !4305, !nonnull !7, !noundef !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  %i.o = load ptr, ptr %1, align 8, !noalias !4306, !nonnull !7, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull readonly align 1 %i.n, i64 range(i64 0, -9223372036854775808) %i.g, i1 false), !alias.scope !4307, !noalias !4308
  store i64 %i.d, ptr %i.e, align 8, !noalias !4306
  %i.q = add i64 %i.i, %i.g
  store i64 %i.q, ptr %i.h, align 8, !alias.scope !4305
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx.exit

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB28_14read_buf_exact0ECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4310)
  %.not11.i = icmp eq i64 %i.d, %i.f
  br i1 %.not11.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB28_14read_buf_exact0ECsgy7pbN39oAf_6uu_ptx.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !4309 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i1 = load ptr, ptr %i.t, align 8, !alias.scope !4309, !nonnull !7 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val5.i.i = load ptr, ptr %i.u, align 8, !alias.scope !4309, !nonnull !7, !align !9
  %i.v = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 72 ; 2 uses
  %.pre.i.i.i = load ptr, ptr %0, align 8, !alias.scope !4309 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = icmp eq ptr %.pre.i.i.i, null
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.promoted.i = load i8, ptr %i.z, align 8, !alias.scope !4309
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.ac = phi i64 [ %i.k, %.lr.ph.i ], [ %i.ch, %.backedge.i ] ; 3 uses
  %i.ad = phi i64 [ %i.i, %.lr.ph.i ], [ %i.ci, %.backedge.i ] ; 3 uses
  %i.ae = phi i8 [ %.promoted.i, %.lr.ph.i ], [ %i.cj, %.backedge.i ] ; 3 uses
  %i.af = phi i64 [ %i.f, %.lr.ph.i ], [ %i.cg, %.backedge.i ] ; 4 uses
  %i.ag = phi i64 [ %i.d, %.lr.ph.i ], [ %i.ck, %.backedge.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4311)
  call void @llvm.experimental.noalias.scope.decl(metadata !4312)
  %i.ah = icmp ne i64 %i.ad, %i.ac
  %i.ai = sub i64 %i.ag, %i.af                    ; 2 uses
  %.not.i.i = icmp ult i64 %i.ai, %i.s
  %or.cond.i = select i1 %i.ah, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !4313)
  %.not.i.i.i3 = icmp ult i64 %i.ad, %i.ac
  br i1 %.not.i.i.i3, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4314
  store ptr %.pre.i.i.i, ptr %i.b, align 8, !noalias !4314
  store i64 %i.s, ptr %i.w, align 8, !noalias !4314
  store i64 0, ptr %i.x, align 8, !noalias !4314
  store i8 %i.ae, ptr %i.y, align 8, !noalias !4314
  %i.aj = load ptr, ptr %i.v, align 8, !invariant.load !7, !noalias !4315, !nonnull !7
  %i.ak = call noundef ptr %i.aj(ptr noundef nonnull %.val.i.i1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #29, !noalias !4316, !inline_history !4290 ; 2 uses
  store i64 0, ptr %i.h, align 8, !alias.scope !4317
  %i.al = load i64, ptr %i.x, align 8, !noalias !4314, !noundef !7 ; 3 uses
  store i64 %i.al, ptr %i.j, align 8, !alias.scope !4317
  %i.am = load i8, ptr %i.y, align 8, !range !16, !noalias !4314, !noundef !7 ; 3 uses
  store i8 %i.am, ptr %i.z, align 8, !alias.scope !4317
  %.not3.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not3.i.i.i, label %bb.d, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.thread.i.i

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.thread.i.i: ; preds = %bb.c
  %i.an = ptrtoint ptr %i.ak to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4314
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4314
  br label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.i.i

_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.i.i: ; preds = %bb.d, %._crit_edge.i.i
  %i.ao = phi i64 [ %i.ac, %._crit_edge.i.i ], [ %i.al, %bb.d ] ; 4 uses
  %i.ap = phi i64 [ %i.ad, %._crit_edge.i.i ], [ 0, %bb.d ] ; 4 uses
  %i.aq = phi i8 [ %i.ae, %._crit_edge.i.i ], [ %i.am, %bb.d ] ; 2 uses
  %i.ar = sub nuw i64 %i.ao, %i.ap                ; 2 uses
  br i1 %i.aa, label %bb.f, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx.exit.thread.i

bb.e:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false), !alias.scope !4318
  %i.as = load ptr, ptr %i.v, align 8, !invariant.load !7, !noalias !4319, !nonnull !7
  %i.at = call noundef ptr %i.as(ptr noundef nonnull %.val.i.i1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #29, !noalias !4318, !inline_history !4293
  br label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx.exit.i

bb.f:                                             ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.i.i, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.thread.i.i
  %i.au = phi i64 [ %i.al, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.thread.i.i ], [ %i.ao, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.i.i ]
  %i.av = phi i64 [ 0, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.thread.i.i ], [ %i.ap, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.i.i ]
  %i.aw = phi i8 [ %i.am, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.thread.i.i ], [ %i.aq, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.i.i ]
  %.sroa.67.010.i.i = phi i64 [ %i.an, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.thread.i.i ], [ %i.ar, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.i.i ]
  %i.ax = inttoptr i64 %.sroa.67.010.i.i to ptr
  br label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx.exit.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx.exit.thread.i: ; preds = %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %i.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !4320)
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ar, i64 %i.ai) ; 3 uses
  %i.az = load ptr, ptr %1, align 8, !alias.scope !4321, !noalias !4322, !nonnull !7, !noundef !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr nonnull readonly align 1 %i.ay, i64 range(i64 0, -9223372036854775808) %..i.i.i.i, i1 false), !alias.scope !4323, !noalias !4324
  %i.bb = add i64 %..i.i.i.i, %i.af               ; 2 uses
  store i64 %i.bb, ptr %i.e, align 8, !alias.scope !4321, !noalias !4322
  %i.bc = add i64 %..i.i.i.i, %i.ap
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ao, i64 %i.bc) ; 2 uses
  store i64 %..i.i.i, ptr %i.h, align 8, !alias.scope !4318
  br label %bb.h

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx.exit.i: ; preds = %bb.f, %bb.e
  %i.bd = phi i64 [ 0, %bb.e ], [ %i.au, %bb.f ]  ; 2 uses
  %i.be = phi i64 [ 0, %bb.e ], [ %i.av, %bb.f ]  ; 2 uses
  %i.bf = phi i8 [ %i.ae, %bb.e ], [ %i.aw, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.at, %bb.e ], [ %i.ax, %bb.f ] ; 10 uses
  %.not2.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not2.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx.exit._crit_edge.i, label %bb.g

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx.exit._crit_edge.i: ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx.exit.i
  %.pre19.i = load i64, ptr %i.e, align 8, !alias.scope !4310
  br label %bb.h

bb.g:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx.exit.i
  %i.bg = ptrtoint ptr %.sroa.0.0.i.i to i64      ; 4 uses
  %i.bh = and i64 %i.bg, 3
  switch i64 %i.bh, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split9.i
    i64 1, label %.split8.i
  ], !prof !17

default.unreachable:                              ; preds = %bb.g
  unreachable

.split.i:                                         ; preds = %bb.g
  %i.bi = lshr i64 %i.bg, 32
  %i.bj = trunc nuw i64 %i.bi to i32
  %i.bk = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #28, !noalias !4309
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !4309, !nonnull !7, !noundef !7
  %i.bn = call noundef zeroext i1 %i.bm(i32 noundef %i.bj) #28, !noalias !4309, !inline_history !4302
  br i1 %i.bn, label %.thread.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx.exit

.split9.i:                                        ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 16
  %i.bp = load i8, ptr %i.bo, align 8, !range !22, !noalias !4309, !noundef !7
  %i.bq = icmp eq i8 %i.bp, 35
  br i1 %i.bq, label %.thread.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx.exit

.split8.i:                                        ; preds = %bb.g
  %i.br = getelementptr i8, ptr %.sroa.0.0.i.i, i64 31
  %i.bs = load i8, ptr %i.br, align 8, !range !22, !noalias !4309, !noundef !7
  %i.bt = icmp eq i8 %i.bs, 35
  br i1 %i.bt, label %bb.j, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.g
  %i.bu = lshr i64 %i.bg, 32
  %i.bv = icmp ult ptr %.sroa.0.0.i.i, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.bu to i8
  %spec.select.i.i.i.i = select i1 %i.bv, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.bw = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.bw)
  %i.bx = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.bx, label %bb.i, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx.exit

bb.h:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx.exit._crit_edge.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx.exit.thread.i
  %i.by = phi i64 [ %i.bb, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx.exit.thread.i ], [ %.pre19.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx.exit._crit_edge.i ] ; 2 uses
  %i.bz = phi i64 [ %i.ao, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx.exit.thread.i ], [ %i.bd, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx.exit._crit_edge.i ]
  %i.ca = phi i64 [ %..i.i.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx.exit.thread.i ], [ %i.be, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx.exit._crit_edge.i ]
  %i.cb = phi i8 [ %i.aq, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx.exit.thread.i ], [ %i.bf, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_8read_bufCsgy7pbN39oAf_6uu_ptx.exit._crit_edge.i ]
  %i.cc = icmp eq i64 %i.by, %i.af
  br i1 %i.cc, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx.exit, label %.backedge.i

.thread.i:                                        ; preds = %.split9.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4325
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgy7pbN39oAf_6uu_ptx.exit.i

bb.i:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4325
  %i.cd = and i64 %i.bg, 1095216660480
  %i.ce = icmp ne i64 %i.cd, 1095216660480
  call void @llvm.assume(i1 %i.bv)
  call void @llvm.assume(i1 %i.ce)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgy7pbN39oAf_6uu_ptx.exit.i

bb.j:                                             ; preds = %.split8.i
  %i.cf = getelementptr i8, ptr %.sroa.0.0.i.i, i64 -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4325
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cf) ]
  store ptr %i.cf, ptr %i.ab, align 8, !alias.scope !4326, !noalias !4325
  store i8 3, ptr %i.a, align 8, !alias.scope !4326, !noalias !4325
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #28, !noalias !4309
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgy7pbN39oAf_6uu_ptx.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgy7pbN39oAf_6uu_ptx.exit.i: ; preds = %bb.j, %bb.i, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4325
  %.pre20.i = load i64, ptr %i.e, align 8, !alias.scope !4310
  br label %.backedge.i

.backedge.i:                                      ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgy7pbN39oAf_6uu_ptx.exit.i, %bb.h
  %i.cg = phi i64 [ %.pre20.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgy7pbN39oAf_6uu_ptx.exit.i ], [ %i.by, %bb.h ] ; 2 uses
  %i.ch = phi i64 [ %i.bd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgy7pbN39oAf_6uu_ptx.exit.i ], [ %i.bz, %bb.h ]
  %i.ci = phi i64 [ %i.be, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgy7pbN39oAf_6uu_ptx.exit.i ], [ %i.ca, %bb.h ]
  %i.cj = phi i8 [ %i.bf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgy7pbN39oAf_6uu_ptx.exit.i ], [ %i.cb, %bb.h ]
  %i.ck = load i64, ptr %i.c, align 8, !alias.scope !4310, !noundef !7 ; 2 uses
  %.not.i2 = icmp eq i64 %i.ck, %i.cg
  br i1 %.not.i2, label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx.exit, label %bb.b

_RINvNtNtCs7tKScEop1B6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %.backedge.i, %bb.h, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split8.i, %.split9.i, %.split.i, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB28_14read_buf_exact0ECsgy7pbN39oAf_6uu_ptx.exit, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB28_14read_buf_exact0ECsgy7pbN39oAf_6uu_ptx.exit.thread
  %.sroa.0.0 = phi ptr [ null, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB28_14read_buf_exact0ECsgy7pbN39oAf_6uu_ptx.exit.thread ], [ null, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB28_14read_buf_exact0ECsgy7pbN39oAf_6uu_ptx.exit ], [ null, %.backedge.i ], [ %.sroa.0.0.i.i, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %.sroa.0.0.i.i, %.split.i ], [ %.sroa.0.0.i.i, %.split8.i ], [ @44, %bb.h ], [ %.sroa.0.0.i.i, %.split9.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_14read_to_stringCsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !7 ; 6 uses
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
  %i.j = call { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_11read_to_endCsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #28 ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4336)
  %i.m = tail call { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_11read_to_endCsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #28 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !4336, !nonnull !7, !noundef !7
  %i.p = load i64, ptr %i.d, align 8, !alias.scope !4336, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4337
  call void @_RNvMNtCs6JMX4GRUq9U_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.p) #28, !noalias !4338
  %i.q = load i64, ptr %i.a, align 8, !range !23, !noalias !4337, !noundef !7
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4337
  %i.r = load i64, ptr %i.d, align 8, !alias.scope !4336, !noundef !7 ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  call void @llvm.assume(i1 %i.s)
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEB1X_14read_to_string0ECsgy7pbN39oAf_6uu_ptx.exit

bb.e:                                             ; preds = %bb.c
  %i.t = extractvalue { i64, ptr } %i.m, 1
  %i.u = extractvalue { i64, ptr } %i.m, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4337
  %i.v = trunc nuw i64 %i.u to i1
  %..i = select i1 %i.v, ptr %i.t, ptr @40
  %i.w = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %..i, 1
  br label %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEB1X_14read_to_string0ECsgy7pbN39oAf_6uu_ptx.exit

_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEB1X_14read_to_string0ECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.012.i = phi i64 [ %i.r, %bb.d ], [ 0, %bb.e ]
  %.merged.i = phi { i64, ptr } [ %i.m, %bb.d ], [ %i.w, %bb.e ] ; 2 uses
  store i64 %.sroa.0.012.i, ptr %i.d, align 8, !alias.scope !4339
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
  %i.ac = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7
  %i.ad = load i64, ptr %i.i, align 8, !noundef !7
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad) #28
  %i.ae = load i64, ptr %i.b, align 8, !range !23, !noundef !7
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !7, !noundef !7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !7 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !4340)
  %i.ak = load i64, ptr %1, align 8, !range !14, !alias.scope !4341, !noundef !7
  %i.al = sub nsw i64 %i.ak, %i.e
  %i.am = icmp ugt i64 %i.aj, %i.al
  br i1 %i.am, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i, !prof !12

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.thread.i: ; preds = %bb.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.e, i64 noundef %i.aj, i64 noundef 1, i64 noundef 1) #28
  %i.an = load i64, ptr %i.d, align 8, !alias.scope !4340, !noundef !7 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, -1
  call void @llvm.assume(i1 %i.ao)
  br label %bb.j

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i: ; preds = %bb.i
  %.not.i12 = icmp eq i64 %i.aj, 0
  br i1 %.not.i12, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx.exit, label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.thread.i
  %i.ap = phi i64 [ %i.an, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.thread.i ], [ %i.e, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !4340, !nonnull !7, !noundef !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull readonly align 1 %i.ah, i64 %i.aj, i1 false), !noalias !4340
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i, %bb.j
  %i.at = phi i64 [ %i.ap, %bb.j ], [ %i.e, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgy7pbN39oAf_6uu_ptx.exit.i ]
  %i.au = add i64 %i.at, %i.aj
  store i64 %i.au, ptr %i.d, align 8, !alias.scope !4340
  %.val10 = load i64, ptr %i.c, align 8, !range !14, !noundef !7 ; 2 uses
  %i.av = icmp eq i64 %.val10, 0
  br i1 %i.av, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgy7pbN39oAf_6uu_ptx.exit, label %bb.k

bb.k:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx.exit
  %.val11 = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11, i64 noundef %.val10, i64 noundef range(i64 1, -9223372036854775807) 1) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgy7pbN39oAf_6uu_ptx.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgy7pbN39oAf_6uu_ptx.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCsgy7pbN39oAf_6uu_ptx.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.l:                                             ; preds = %bb.h, %bb.f
  %.sroa.5.0 = phi i64 [ %i.ab, %bb.f ], [ ptrtoint (ptr @40 to i64), %bb.h ]
  %.val = load i64, ptr %i.c, align 8, !range !14, !noundef !7 ; 2 uses
  %i.aw = icmp eq i64 %.val, 0
  br i1 %i.aw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgy7pbN39oAf_6uu_ptx.exit13, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val9 = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgy7pbN39oAf_6uu_ptx.exit13

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgy7pbN39oAf_6uu_ptx.exit13: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEB1X_14read_to_string0ECsgy7pbN39oAf_6uu_ptx.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgy7pbN39oAf_6uu_ptx.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgy7pbN39oAf_6uu_ptx.exit13
  %.sroa.5.1 = phi i64 [ %i.z, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEB1X_14read_to_string0ECsgy7pbN39oAf_6uu_ptx.exit ], [ %.sroa.5.0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgy7pbN39oAf_6uu_ptx.exit13 ], [ %i.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgy7pbN39oAf_6uu_ptx.exit ]
  %.sroa.0.1 = phi i64 [ %i.x, %_RINvNtNtCs7tKScEop1B6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderINtNtB6_5boxed3BoxDNtB2_4ReadEL_EEB1X_14read_to_string0ECsgy7pbN39oAf_6uu_ptx.exit ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgy7pbN39oAf_6uu_ptx.exit13 ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECsgy7pbN39oAf_6uu_ptx.exit ]
  %i.ax = inttoptr i64 %.sroa.5.1 to ptr
  %i.ay = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.az = insertvalue { i64, ptr } %i.ay, ptr %i.ax, 1
  ret { i64, ptr } %i.az
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_16is_read_vectoredCsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !7, !align !9, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !7, !nonnull !7
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull %.val) #29, !inline_history !4342
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EEB1q_4readCsgy7pbN39oAf_6uu_ptx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !7 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !7 ; 3 uses
  %i.f = icmp ne i64 %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.not = icmp ult i64 %2, %i.h
  %or.cond = select i1 %i.f, i1 true, i1 %.not
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4361)
  %.not.i = icmp ult i64 %i.c, %i.e
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !4360 ; 3 uses
  br i1 %.not.i, label %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQINtNtBb_5boxed3BoxDNtNtB9_4read4ReadEL_EECsgy7pbN39oAf_6uu_ptx.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4362
  store ptr %.pre.i, ptr %i.a, align 8, !noalias !4362
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.j, align 8, !noalias !4362
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8, !noalias !4362
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
end_hunk_0
