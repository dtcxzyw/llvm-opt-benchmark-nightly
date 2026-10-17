Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_rustls-03d7430c87fe3e86.pingora_rustls.1fe7a3805b6a1ef9-cgu.1?download=true
inline.NumInlined: 114
inline.NumDeleted: 74
begin_hunk_0_@_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_4read4Read11read_to_endCs2JPny71o0qX_14pingora_rustls:bb.a
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2JPny71o0qX_14pingora_rustls.exit, %bb.a
  %.sroa.4.0 = phi i64 [ %spec.select, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2JPny71o0qX_14pingora_rustls.exit ], [ 163208757251, %bb.a ]
  %.sroa.0.0 = phi i64 [ %i.u, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2JPny71o0qX_14pingora_rustls.exit ], [ 1, %bb.a ]
  %i.z = inttoptr i64 %.sroa.4.0 to ptr
  %i.aa = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ab = insertvalue { i64, ptr } %i.aa, ptr %i.z, 1
  ret { i64, ptr } %i.ab
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_4read4Read13read_vectoredCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.idx = shl nuw nsw i64 %2, 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5a_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECs2JPny71o0qX_14pingora_rustls.exit, label %.preheader.preheader

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
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !64

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
  %.val.i = load i64, ptr %i.p, align 8, !noundef !6
  %i.q = add i64 %.val.i, %.sroa.02.0.i           ; 2 uses
  %i.r = add nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.s = icmp eq i64 %i.r, %2
  br i1 %i.s, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5a_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECs2JPny71o0qX_14pingora_rustls.exit, label %.preheader, !llvm.loop !65

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5a_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECs2JPny71o0qX_14pingora_rustls.exit: ; preds = %.preheader, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.q, %.preheader ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !6 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !6 ; 3 uses
  %i.x = icmp ne i64 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %.not = icmp ult i64 %.sroa.0.0.i, %i.z
  %or.cond = select i1 %i.x, i1 true, i1 %.not
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5a_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECs2JPny71o0qX_14pingora_rustls.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %.not.i = icmp ult i64 %i.u, %i.w
  %.pre.i = load ptr, ptr %0, align 8, !alias.scope !78 ; 4 uses
  br i1 %.not.i, label %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs2JPny71o0qX_14pingora_rustls.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79
  store ptr %.pre.i, ptr %i.a, align 8, !noalias !79
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !noalias !79
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.ac, align 8, !noalias !79
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !range !10, !alias.scope !78, !noundef !6
  store i8 %i.af, ptr %i.ad, align 8, !noalias !79
  %i.ag = call noundef ptr @_RNvXsa_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull %.pre.i, ptr noundef nonnull %i.a), !noalias !80 ; 2 uses
  store i64 0, ptr %i.t, align 8, !alias.scope !78
  %i.ah = load i64, ptr %i.ac, align 8, !noalias !79, !noundef !6 ; 2 uses
  store i64 %i.ah, ptr %i.v, align 8, !alias.scope !78
  %i.ai = load i8, ptr %i.ad, align 8, !range !10, !noalias !79, !noundef !6
  store i8 %i.ai, ptr %i.ae, align 8, !alias.scope !78
  %.not3.i = icmp eq ptr %i.ag, null
  br i1 %.not3.i, label %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs2JPny71o0qX_14pingora_rustls.exit.thread17, label %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs2JPny71o0qX_14pingora_rustls.exit.thread

_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs2JPny71o0qX_14pingora_rustls.exit.thread: ; preds = %bb.c
  %i.aj = ptrtoint ptr %i.ag to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79
  br label %bb.e

_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs2JPny71o0qX_14pingora_rustls.exit.thread17: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79
  br label %bb.f

_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs2JPny71o0qX_14pingora_rustls.exit: ; preds = %bb.b
  %i.ak = sub nuw i64 %i.w, %i.u                  ; 2 uses
  %i.al = icmp eq ptr %.pre.i, null
  br i1 %i.al, label %bb.e, label %bb.f

bb.d:                                             ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice10IoSliceMutENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1u_8adapters3map8map_foldRBQ_jjNCNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB2W_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB30_4read4Read13read_vectored0NCINvXsK_NtB1s_5accumjNtB5a_3Sum3sumINtB2e_3MapBF_B2O_EE0E0ECs2JPny71o0qX_14pingora_rustls.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.an = tail call { i64, ptr } @_RNvXsa_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read13read_vectored(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.am, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2)
  br label %bb.j

bb.e:                                             ; preds = %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs2JPny71o0qX_14pingora_rustls.exit.thread, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs2JPny71o0qX_14pingora_rustls.exit
  %.sroa.610.013 = phi i64 [ %i.aj, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs2JPny71o0qX_14pingora_rustls.exit.thread ], [ %i.ak, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs2JPny71o0qX_14pingora_rustls.exit ]
  %i.ao = inttoptr i64 %.sroa.610.013 to ptr
  %i.ap = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.ao, 1
  br label %bb.j

bb.f:                                             ; preds = %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs2JPny71o0qX_14pingora_rustls.exit.thread17, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs2JPny71o0qX_14pingora_rustls.exit
  %i.aq = phi i64 [ %i.ah, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs2JPny71o0qX_14pingora_rustls.exit.thread17 ], [ %i.ak, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs2JPny71o0qX_14pingora_rustls.exit ]
  %i.ar = phi i64 [ 0, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs2JPny71o0qX_14pingora_rustls.exit.thread17 ], [ %i.u, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs2JPny71o0qX_14pingora_rustls.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.as = icmp eq i64 %2, 0
  br i1 %i.as, label %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ar
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i, %.lr.ph
  %.sroa.01.0.i19 = phi i64 [ 0, %.lr.ph ], [ %i.bc, %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ]
  %.sroa.03.0.i18 = phi ptr [ %1, %.lr.ph ], [ %i.aw, %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 3 uses
  %i.au = phi ptr [ %i.at, %.lr.ph ], [ %i.bd, %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 3 uses
  %i.av = phi i64 [ %i.aq, %.lr.ph ], [ %i.be, %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i18, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %.sroa.03.0.i18, align 8, !alias.scope !81, !noundef !6 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i18, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !81, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.av, i64 range(i64 0, -9223372036854775808) %i.az) ; 6 uses
  %i.ba = icmp eq i64 %..i.i.i, 1
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bb = load i8, ptr %i.au, align 1, !noalias !83, !noundef !6
  store i8 %i.bb, ptr %i.ax, align 1, !alias.scope !82, !noalias !84
  br label %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i

bb.i:                                             ; preds = %bb.g
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull %i.ax, i64 noundef %..i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %..i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11), !noalias !85
  br label %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i

_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i: ; preds = %bb.i, %bb.h
  %i.bc = add i64 %..i.i.i, %.sroa.01.0.i19       ; 2 uses
  %.not.i8 = icmp ule i64 %i.av, %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 %..i.i.i
  %i.be = sub nuw nsw i64 %i.av, %..i.i.i
  %i.bf = icmp eq ptr %i.aw, %i.b
  %or.cond26 = select i1 %.not.i8, i1 true, i1 %i.bf
  br i1 %or.cond26, label %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit, label %bb.g

_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit: ; preds = %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i, %bb.f
  %.sroa.01.1.i = phi i64 [ 0, %bb.f ], [ %i.bc, %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i ] ; 2 uses
  %i.bg = inttoptr i64 %.sroa.01.1.i to ptr
  %i.bh = load i64, ptr %i.t, align 8, !noundef !6
  %i.bi = add i64 %i.bh, %.sroa.01.1.i
  %i.bj = load i64, ptr %i.v, align 8, !noundef !6
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bi)
  store i64 %..i, ptr %i.t, align 8
  %i.bk = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.bg, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.e, %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit
  %.merged = phi { i64, ptr } [ %i.an, %bb.d ], [ %i.ap, %bb.e ], [ %i.bk, %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read13read_vectored.exit ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_4read4Read14read_buf_exactCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 3 uses
  %i.f = sub i64 %i.c, %i.e                       ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !95, !noundef !6 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !95, !noundef !6
  %i.k = sub nuw i64 %i.j, %i.h
  %.not.i.not = icmp ugt i64 %i.f, %i.k
  br i1 %.not.i.not, label %.lr.ph.i, label %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECs2JPny71o0qX_14pingora_rustls.exit.thread

_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECs2JPny71o0qX_14pingora_rustls.exit.thread: ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !alias.scope !95, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  tail call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull %i.n, i64 noundef range(i64 0, -9223372036854775808) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef range(i64 0, -9223372036854775808) %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9), !noalias !96
  %i.o = load i64, ptr %i.d, align 8, !noalias !97, !noundef !6
  %i.p = add i64 %i.o, %i.f
  store i64 %i.p, ptr %i.d, align 8, !noalias !97
  %i.q = add i64 %i.h, %i.f
  store i64 %i.q, ptr %i.g, align 8, !alias.scope !95
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECs2JPny71o0qX_14pingora_rustls.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.s = phi i64 [ %i.e, %.lr.ph.i ], [ %i.ar, %.backedge.i ]
  %i.t = call noundef ptr @_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_4read4Read8read_bufCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) ; 11 uses
  %.not4.i = icmp eq ptr %i.t, null
  br i1 %.not4.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = ptrtoint ptr %i.t to i64                 ; 4 uses
  %i.v = and i64 %i.u, 3
  switch i64 %i.v, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split17.i
    i64 0, label %.split18.i
    i64 1, label %.split.i
  ], !prof !5

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.w = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %bb.d
  %i.x = lshr i64 %i.u, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !6, !noundef !6
  %i.ab = invoke noundef zeroext i1 %i.aa(i32 noundef %i.y)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit.i unwind label %bb.j, !inline_history !0

.split17.i:                                       ; preds = %bb.c
  %i.ac = lshr i64 %i.u, 32
  %i.ad = icmp ult ptr %i.t, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.ac to i8
  %spec.select.i.i.i.i = select i1 %i.ad, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.ae = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.af, label %bb.f, label %_RINvNtNtCsexYYUdYSQU6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECs2JPny71o0qX_14pingora_rustls.exit

.split18.i:                                       ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !range !9, !noundef !6
  %i.ai = icmp eq i8 %i.ah, 35
  br i1 %i.ai, label %.thread20.i, label %_RINvNtNtCsexYYUdYSQU6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECs2JPny71o0qX_14pingora_rustls.exit

.split.i:                                         ; preds = %bb.c
  %i.aj = getelementptr i8, ptr %i.t, i64 31
  %i.ak = load i8, ptr %i.aj, align 8, !range !9, !noundef !6
  %i.al = icmp eq i8 %i.ak, 35
  br i1 %i.al, label %bb.g, label %_RINvNtNtCsexYYUdYSQU6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECs2JPny71o0qX_14pingora_rustls.exit

bb.e:                                             ; preds = %bb.b
  %i.am = load i64, ptr %i.d, align 8, !noalias !98, !noundef !6 ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.s
  br i1 %i.an, label %_RINvNtNtCsexYYUdYSQU6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECs2JPny71o0qX_14pingora_rustls.exit, label %.backedge.i

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %.noexc.i
  br i1 %i.ab, label %.thread20.i, label %_RINvNtNtCsexYYUdYSQU6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECs2JPny71o0qX_14pingora_rustls.exit

.thread20.i:                                      ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split18.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98
  br label %bb.h

bb.f:                                             ; preds = %.split17.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98
  %i.ao = and i64 %i.u, 1095216660480
  %i.ap = icmp ne i64 %i.ao, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.ap)
  br label %bb.h

bb.g:                                             ; preds = %.split.i
  %i.aq = getelementptr i8, ptr %i.t, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !98
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  store ptr %i.aq, ptr %i.r, align 8, !alias.scope !99, !noalias !98
  store i8 3, ptr %i.a, align 8, !alias.scope !99, !noalias !98
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !98
  %.pre.i = load i64, ptr %i.d, align 8, !noalias !98
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.h, %bb.e
  %i.ar = phi i64 [ %.pre.i, %bb.h ], [ %i.am, %bb.e ] ; 2 uses
  %i.as = load i64, ptr %i.b, align 8, !noalias !98, !noundef !6
  %.not.i1 = icmp eq i64 %i.as, %i.ar
  br i1 %.not.i1, label %_RINvNtNtCsexYYUdYSQU6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECs2JPny71o0qX_14pingora_rustls.exit, label %bb.b

bb.i:                                             ; preds = %bb.j
  resume { ptr, i32 } %lpad.thr_comm.i

bb.j:                                             ; preds = %.noexc.i, %bb.d
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2JPny71o0qX_14pingora_rustls(ptr nonnull %i.t) #12
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtNtCsexYYUdYSQU6_5alloc2io4read22default_read_buf_exactINtNtNtB4_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEECs2JPny71o0qX_14pingora_rustls.exit: ; preds = %.backedge.i, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %bb.e, %.split.i, %.split18.i, %.split17.i, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECs2JPny71o0qX_14pingora_rustls.exit.thread
  %.sroa.0.0 = phi ptr [ null, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer12consume_withNCNvXs4_B5_INtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_4read4Read14read_buf_exact0ECs2JPny71o0qX_14pingora_rustls.exit.thread ], [ null, %.backedge.i ], [ %i.t, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.t, %.split.i ], [ %i.t, %.split17.i ], [ @5, %bb.e ], [ %i.t, %.split18.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_4read4Read14read_to_stringCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  store i64 0, ptr %i.j, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.k = load ptr, ptr %0, align 8, !alias.scope !118, !nonnull !6, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !118, !noundef !6 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !118, !noundef !6 ; 2 uses
  %i.p = sub nuw i64 %i.o, %i.m                   ; 5 uses
  %i.q = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0, i64 noundef %i.p, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %.not.i = icmp eq i64 %i.r, -1
  br i1 %.not.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %.noexc
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.p)
          to label %.noexc11 unwind label %bb.p

.noexc11:                                         ; preds = %bb.c
  %i.s = load i64, ptr %i.j, align 8, !alias.scope !120, !noundef !6 ; 3 uses
  %i.t = icmp sgt i64 %i.s, -1
  call void @llvm.assume(i1 %i.t)
  %.not.i.i = icmp eq i64 %i.o, %i.m
  br i1 %.not.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2JPny71o0qX_14pingora_rustls.exit.i, label %bb.d

bb.d:                                             ; preds = %.noexc11
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %i.v = load ptr, ptr %i.i, align 8, !alias.scope !120, !nonnull !6, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.u, i64 %i.p, i1 false), !noalias !118
  %.pre.i.i = load i64, ptr %i.j, align 8, !alias.scope !120
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2JPny71o0qX_14pingora_rustls.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2JPny71o0qX_14pingora_rustls.exit.i: ; preds = %bb.d, %.noexc11
  %i.x = phi i64 [ %.pre.i.i, %bb.d ], [ %i.s, %.noexc11 ]
  %i.y = add i64 %i.x, %i.p
  store i64 %i.y, ptr %i.j, align 8, !alias.scope !120
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !alias.scope !118
  %i.aa = invoke { i64, ptr } @_RNvXsa_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read11read_to_end(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.q unwind label %bb.p       ; 2 uses

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !123
  store i64 0, ptr %i.b, align 8, !noalias !123
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %1, ptr %i.ab, align 8, !noalias !123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !128, !nonnull !6, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !128, !noundef !6 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !128, !noundef !6 ; 2 uses
  %i.ah = sub nuw i64 %i.ag, %i.ae                ; 5 uses
  %i.ai = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 noundef %i.ah, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.i, !noalias !122

.noexc.i:                                         ; preds = %bb.e
  %i.aj = extractvalue { i64, i64 } %i.ai, 0
  %.not.i.i.i = icmp eq i64 %i.aj, -1
  br i1 %.not.i.i.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ah)
          to label %.noexc7.i unwind label %bb.i, !noalias !122

.noexc7.i:                                        ; preds = %bb.f
  %i.ak = load i64, ptr %i.e, align 8, !alias.scope !129, !noundef !6 ; 3 uses
  %i.al = icmp sgt i64 %i.ak, -1
  tail call void @llvm.assume(i1 %i.al)
  %.not.i.i.i.i = icmp eq i64 %i.ag, %i.ae
  br i1 %.not.i.i.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2JPny71o0qX_14pingora_rustls.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.noexc7.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !129, !nonnull !6, !noundef !6
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull readonly align 1 %i.am, i64 %i.ah, i1 false), !noalias !128
  %.pre.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !129
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2JPny71o0qX_14pingora_rustls.exit.i.i.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2JPny71o0qX_14pingora_rustls.exit.i.i.i: ; preds = %bb.g, %.noexc7.i
  %i.aq = phi i64 [ %.pre.i.i.i.i, %bb.g ], [ %i.ak, %.noexc7.i ]
  %i.ar = add i64 %i.aq, %i.ah
  store i64 %i.ar, ptr %i.e, align 8, !alias.scope !129
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false), !alias.scope !128
  %i.at = invoke { i64, ptr } @_RNvXsa_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read11read_to_end(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc8.i unwind label %bb.i  ; 2 uses

.noexc8.i:                                        ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2JPny71o0qX_14pingora_rustls.exit.i.i.i
  %i.au = extractvalue { i64, ptr } %i.at, 0      ; 2 uses
  %i.av = extractvalue { i64, ptr } %i.at, 1
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = trunc nuw i64 %i.au to i1
  %i.ay = select i1 %i.ax, i64 0, i64 %i.ah
  %spec.select.i.i.i = add i64 %i.ay, %i.aw
  %.pre.i = load ptr, ptr %i.ab, align 8, !noalias !123
  %.pre13.i = load i64, ptr %i.b, align 8, !noalias !123
  br label %bb.j

bb.h:                                             ; preds = %bb.k, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.bi, %bb.k ], [ %i.az, %bb.i ]
  invoke void @_RNvXs1_NtNtCskKLDkoKarTP_4core3mem10drop_guardINtB5_9DropGuardTjQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENCINvNtNtB16_2io4read16append_to_stringNCNvXs4_NtNtB1I_8buffered9bufreaderINtB2m_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtB1G_4Read14read_to_string0E0ENtNtNtB9_3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %common.resume unwind label %bb.o

bb.i:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2JPny71o0qX_14pingora_rustls.exit.i.i.i, %bb.f, %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %.noexc8.i, %.noexc.i
  %i.ba = phi i64 [ %.pre13.i, %.noexc8.i ], [ 0, %.noexc.i ] ; 2 uses
  %i.bb = phi ptr [ %.pre.i, %.noexc8.i ], [ %1, %.noexc.i ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ %spec.select.i.i.i, %.noexc8.i ], [ 163208757251, %.noexc.i ] ; 3 uses
  %.sroa.0.0.i.i.i = phi i64 [ %i.au, %.noexc8.i ], [ 1, %.noexc.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !6, !noundef !6
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !noundef !6
  %i.bg = sub nuw i64 %i.bf, %i.ba
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !123
  invoke void @_RNvMNtCskKLDkoKarTP_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef %i.bg)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = inttoptr i64 %.sroa.4.0.i.i.i to ptr
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECs2JPny71o0qX_14pingora_rustls(i64 %.sroa.0.0.i.i.i, ptr %i.bj) #12
          to label %bb.h unwind label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bk = load i64, ptr %i.a, align 8, !range !11, !noalias !123, !noundef !6
  %.not.i13 = icmp eq i64 %i.bk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !123
  br i1 %.not.i13, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bl = load ptr, ptr %i.ab, align 8, !noalias !123, !nonnull !6, !align !12, !noundef !6
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !6 ; 2 uses
  %i.bo = icmp sgt i64 %i.bn, -1
  call void @llvm.assume(i1 %i.bo)
  store i64 %i.bn, ptr %i.b, align 8, !noalias !123
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtB2_4Read14read_to_string0ECs2JPny71o0qX_14pingora_rustls.exit

bb.n:                                             ; preds = %bb.l
  %i.bp = trunc nuw i64 %.sroa.0.0.i.i.i to i1
  %i.bq = select i1 %i.bp, i64 %.sroa.4.0.i.i.i, i64 ptrtoint (ptr @1 to i64)
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtB2_4Read14read_to_string0ECs2JPny71o0qX_14pingora_rustls.exit

bb.o:                                             ; preds = %bb.k, %bb.h
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.z, %bb.x, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.cp, %bb.z ], [ %.pn.i, %bb.h ], [ %i.cn, %bb.x ], [ %i.bs, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_RINvNtNtCsexYYUdYSQU6_5alloc2io4read16append_to_stringNCNvXs4_NtNtB4_8buffered9bufreaderINtBY_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtB2_4Read14read_to_string0ECs2JPny71o0qX_14pingora_rustls.exit: ; preds = %bb.m, %bb.n
  %.sroa.5.0.i = phi i64 [ %i.bq, %bb.n ], [ %.sroa.4.0.i.i.i, %bb.m ]
  %.sroa.0.0.i15 = phi i64 [ 1, %bb.n ], [ %.sroa.0.0.i.i.i, %bb.m ]
  call void @_RNvXs1_NtNtCskKLDkoKarTP_4core3mem10drop_guardINtB5_9DropGuardTjQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENCINvNtNtB16_2io4read16append_to_stringNCNvXs4_NtNtB1I_8buffered9bufreaderINtB2m_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtB1G_4Read14read_to_string0E0ENtNtNtB9_3ops4drop4Drop4dropCs2JPny71o0qX_14pingora_rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !123
end_hunk_0
