Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/proc_macro2-7802f6f634288680.proc_macro2.fa47854b249c73b4-cgu.1?download=true
inline.NumInlined: 292
inline.NumDeleted: 112
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor16starts_with_char:bb.a
  %i.u = trunc nuw nsw i32 %1 to i8
  store i8 %i.u, ptr %i.a, align 4, !alias.scope !215
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.v = or disjoint i8 %i.k, -64
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !215
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.i, ptr %i.w, align 1, !alias.scope !215
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.x = icmp samesign ult i32 %1, 65536
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = or disjoint i8 %i.o, -32
  store i8 %i.y, ptr %i.a, align 4, !alias.scope !215
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.m, ptr %i.z, align 1, !alias.scope !215
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.i, ptr %i.aa, align 2, !alias.scope !215
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.t, ptr %i.a, align 4, !alias.scope !215
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.q, ptr %i.ab, align 1, !alias.scope !215
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.m, ptr %i.ac, align 2, !alias.scope !215
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.i, ptr %i.ad, align 1, !alias.scope !215
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ae = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtCsluekWoTk8SK_11proc_macro25parseNtB2_6Cursor7advance(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 5 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ult i64 %1, %i.c
  br i1 %.not.i, label %bb.c, label %.split3.i

.split3.i:                                        ; preds = %bb.b
  %i.e = icmp eq i64 %1, %i.c
  br i1 %i.e, label %.split.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !219, !noalias !220, !noundef !5
  %i.h = icmp sgt i8 %i.g, -65
  br i1 %i.h, label %.split.i, label %bb.d

.split.i:                                         ; preds = %bb.c, %.split3.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %1
  %i.j = sub i64 %i.c, %1
  br label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit

_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit: ; preds = %.split.i, %bb.a
  %.sroa.8.0 = phi i64 [ %i.c, %bb.a ], [ %i.j, %.split.i ]
  %.sroa.6.0 = phi ptr [ %i.a, %bb.a ], [ %i.i, %.split.i ]
  %i.k = insertvalue { ptr, i64 } poison, ptr %.sroa.6.0, 0
  %i.l = insertvalue { ptr, i64 } %i.k, i64 %.sroa.8.0, 1
  ret { ptr, i64 } %i.l

bb.d:                                             ; preds = %bb.c, %.split3.i
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, i64 noundef 0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsluekWoTk8SK_11proc_macro25parse10punct_char(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [104 x i8], align 8               ; 19 uses
  %i.c = alloca [4 x i8], align 4                 ; 15 uses
  %i.d = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 2), !noalias !268
  br i1 %i.d, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 2), !noalias !269
  %i.f = icmp samesign eq i64 %2, 0
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.ao, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %1, align 1, !noalias !270, !noundef !5 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %.thread, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = and i8 %i.g, 31
  %i.k = zext nneg i8 %i.j to i32                 ; 3 uses
  %i.l = icmp samesign ne i64 %2, 1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = load i8, ptr %i.i, align 1, !noalias !270, !noundef !5
  %i.n = shl nuw nsw i32 %i.k, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.s = zext nneg i8 %i.g to i32
  br label %.split

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.u = icmp samesign ne i64 %2, 2
  tail call void @llvm.assume(i1 %i.u)
  %i.v = load i8, ptr %i.t, align 1, !noalias !270, !noundef !5
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.k, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i, label %bb.d

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ae = icmp samesign ne i64 %2, 3
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = load i8, ptr %i.ad, align 1, !noalias !270, !noundef !5
  %i.ag = shl nuw nsw i32 %i.k, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.ab, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i ], [ %i.am, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i ], [ %i.q, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i ] ; 13 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph, 128
  br i1 %i.ao, label %.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 0, ptr %i.c, align 4
  %i.ap = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  %i.aq = trunc i32 %.sroa.4.0.i.ph to i8
  %i.ar = and i8 %i.aq, 63
  %i.as = or disjoint i8 %i.ar, -128              ; 4 uses
  %i.at = lshr i32 %.sroa.4.0.i.ph, 6
  %i.au = trunc i32 %i.at to i8                   ; 2 uses
  %i.av = and i8 %i.au, 63
  %i.aw = or disjoint i8 %i.av, -128              ; 2 uses
  %i.ax = lshr i32 %.sroa.4.0.i.ph, 12
  %i.ay = trunc i32 %i.ax to i8                   ; 2 uses
  %i.az = and i8 %i.ay, 63
  %i.ba = or disjoint i8 %i.az, -128
  %i.bb = lshr i32 %.sroa.4.0.i.ph, 18
  %i.bc = trunc nuw nsw i32 %i.bb to i8
  %i.bd = or disjoint i8 %i.bc, -16
  br i1 %i.ap, label %.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = or disjoint i8 %i.ay, -32
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %i.as, ptr %i.bg, align 1, !alias.scope !271
  br label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sink25.i = phi i8 [ %i.bf, %bb.g ], [ %i.bd, %bb.h ] ; 6 uses
  %.sink24.i = phi i8 [ %i.aw, %bb.g ], [ %i.ba, %bb.h ]
  %.sink.i = phi i8 [ %i.as, %bb.g ], [ %i.aw, %bb.h ]
  %.sroa.0.05.i.i = phi i64 [ 3, %bb.g ], [ 4, %bb.h ] ; 7 uses
  store i8 %.sink25.i, ptr %i.c, align 4, !alias.scope !271
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.sink24.i, ptr %i.bh, align 1, !alias.scope !271
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %.sink.i, ptr %i.bi, align 2, !alias.scope !271
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.bj = add nsw i64 %.sroa.0.05.i.i, -1
  %i.bk = add nsw i64 %.sroa.0.05.i.i, -1         ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !274, !noalias !275, !noundef !5 ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i8 %i.bm, %.sink25.i
  br i1 %.not.i.not.i.i.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i.1, label %bb.i

.thread.i.i.i:                                    ; preds = %bb.e
  %i.bn = or disjoint i8 %i.au, -64               ; 2 uses
  store i8 %i.bn, ptr %i.c, align 4, !alias.scope !271
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.as, ptr %i.bo, align 1, !alias.scope !271
  %i.bp = insertelement <16 x i8> poison, i8 %i.bn, i64 0
  %i.bq = shufflevector <16 x i8> %i.bp, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %._crit_edge.i.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i.1: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i
  %i.br = add nsw i64 %.sroa.0.05.i.i, -2         ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !274, !noalias !275, !noundef !5 ; 2 uses
  %.not.i.not.i.i.i.i.1 = icmp eq i8 %i.bt, %.sink25.i
  br i1 %.not.i.not.i.i.i.i.1, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i.2, label %bb.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i.2: ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i.1
  %i.bu = add nsw i64 %.sroa.0.05.i.i, -3         ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !274, !noalias !275, !noundef !5 ; 2 uses
  %.not.i.not.i.i.i.i.2 = icmp eq i8 %i.bw, %.sink25.i
  br i1 %.not.i.not.i.i.i.i.2, label %.preheader.split.i.i.i.2, label %bb.i

.preheader.split.i.i.i.2:                         ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i.2
  %.not.i.i.i.2 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i.2, label %.preheader.split.i.i.i.3, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i.3

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i.3: ; preds = %.preheader.split.i.i.i.2
  %i.bx = add nsw i64 %.sroa.0.05.i.i, -4         ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !274, !noalias !275, !noundef !5 ; 2 uses
  %.not.i.not.i.i.i.i.3 = icmp eq i8 %i.bz, %.sink25.i
  br i1 %.not.i.not.i.i.i.i.3, label %.preheader.split.i.i.i.3, label %bb.i

bb.i:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i.3, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i.2, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i.1, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i
  %.lcssa115 = phi i64 [ %i.bk, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i ], [ %i.br, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i.1 ], [ %i.bu, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i.2 ], [ %i.bx, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i.3 ]
  %.lcssa113 = phi i8 [ %i.bm, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i ], [ %i.bt, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i.1 ], [ %i.bw, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i.2 ], [ %i.bz, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i.3 ]
  %i.ca = insertelement <16 x i8> poison, i8 %.sink25.i, i64 0
  %i.cb = shufflevector <16 x i8> %i.ca, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.cc = xor i64 %.sroa.0.05.i.i, 7
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.i, %.thread.i.i.i
  %i.cd = phi i64 [ 1, %.thread.i.i.i ], [ %i.bj, %bb.i ]
  %.sroa.0.05.i2.i = phi i64 [ 5, %.thread.i.i.i ], [ %i.cc, %bb.i ] ; 2 uses
  %i.ce = phi i8 [ %i.as, %.thread.i.i.i ], [ %.lcssa113, %bb.i ]
  %i.cf = phi <16 x i8> [ %i.bq, %.thread.i.i.i ], [ %i.cb, %bb.i ]
  %storemerge21.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ %.lcssa115, %bb.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !274
  store ptr @7, ptr %i.a, align 8, !noalias !274
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 22, ptr %i.ch, align 8, !noalias !274
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.cg, ptr %i.ci, align 8, !noalias !274
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.cd, ptr %i.cj, align 8, !noalias !274
  %i.ck = insertelement <16 x i8> poison, i8 %i.ce, i64 0
  %i.cl = shufflevector <16 x i8> %i.ck, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.cm = getelementptr inbounds nuw i8, ptr @7, i64 %.sroa.0.05.i2.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.cm, align 1, !noalias !276
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %storemerge21.i.i.i
  %.sroa.01.0.copyload.i.i.i.i = load <16 x i8>, ptr %i.cn, align 1, !noalias !276
  %i.co = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i.i, %i.cf
  %i.cp = icmp eq <16 x i8> %.sroa.01.0.copyload.i.i.i.i, %i.cl
  %i.cq = and <16 x i1> %i.co, %i.cp
  %i.cr = bitcast <16 x i1> %i.cq to i16          ; 2 uses
  %i.cs = icmp eq i16 %i.cr, 0
  br i1 %i.cs, label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.ct = call fastcc noundef zeroext i1 @_RNCNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_containss0_0CsluekWoTk8SK_11proc_macro2(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.0.05.i2.i, i16 noundef %i.cr, i1 noundef zeroext false) #20
  %i.cu = zext i1 %i.ct to i8
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i

_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.i.i: ; preds = %bb.j, %._crit_edge.i.i.i
  %.sroa.014.5.i.i.i = phi i8 [ 0, %._crit_edge.i.i.i ], [ %i.cu, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !274
  br label %_RNvXs2_NtNtCshzWfHUSfYae_4core3str7patterncNtB5_7Pattern15is_contained_in.exit

.preheader.split.i.i.i.3:                         ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsluekWoTk8SK_11proc_macro2.exit.i.i.i.i.3, %.preheader.split.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !272
  call void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 22, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef range(i64 1, 5) %.sroa.0.05.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.cv = load i64, ptr %i.b, align 8, !range !7, !alias.scope !277, !noalias !278, !noundef !5
  %i.cw = trunc nuw i64 %i.cv to i1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.cw, label %bb.t, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.split.i.i.i.3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.cz = load i8, ptr %i.cy, align 2, !range !279, !alias.scope !280, !noalias !281, !noundef !5
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %.lr.ph.i3.i.i

.lr.ph.i3.i.i:                                    ; preds = %.preheader.i.i.i
  %.promoted.i.i.i = load i64, ptr %i.cx, align 8, !alias.scope !277, !noalias !278 ; 12 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !280, !noalias !281, !nonnull !5, !noundef !5 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !280, !noalias !281, !noundef !5 ; 14 uses
  %.promoted52.i.i.i = load i8, ptr %i.db, align 8, !alias.scope !280, !noalias !281 ; 2 uses
  %i.dg = trunc nuw i8 %.promoted52.i.i.i to i1
  %i.dh = icmp eq i64 %.promoted.i.i.i, 0
  br i1 %i.dh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i3.i.i
  %.not.i.i.i.peel.i.i = icmp ult i64 %.promoted.i.i.i, %i.df
  br i1 %.not.i.i.i.peel.i.i, label %bb.l, label %.split.i.i.i.peel.i.i

.split.i.i.i.peel.i.i:                            ; preds = %bb.k
  %i.di = icmp eq i64 %.promoted.i.i.i, %i.df
  br i1 %i.di, label %bb.m, label %.loopexit.i.i

bb.l:                                             ; preds = %bb.k
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.promoted.i.i.i
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !282, !noalias !283, !noundef !5
  %i.dl = icmp sgt i8 %i.dk, -65
  br i1 %i.dl, label %bb.m, label %.loopexit.i.i

bb.m:                                             ; preds = %bb.l, %.split.i.i.i.peel.i.i, %.lr.ph.i3.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.promoted.i.i.i ; 4 uses
  %i.dn = icmp samesign eq i64 %.promoted.i.i.i, %i.df
  br i1 %i.dn, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.do = load i8, ptr %i.dm, align 1, !noalias !284, !noundef !5 ; 5 uses
  %i.dp = icmp sgt i8 %i.do, -1
  br i1 %i.dp, label %bb.o, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i.i.peel.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i.i.peel.i.i: ; preds = %bb.n
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.dr = and i8 %i.do, 31
  %i.ds = zext nneg i8 %i.dr to i32               ; 3 uses
  %i.dt = add nuw nsw i64 %.promoted.i.i.i, 1
  %i.du = icmp samesign ne i64 %i.dt, %i.df
  call void @llvm.assume(i1 %i.du)
  %i.dv = load i8, ptr %i.dq, align 1, !noalias !284, !noundef !5
  %i.dw = shl nuw nsw i32 %i.ds, 6
  %i.dx = and i8 %i.dv, 63
  %i.dy = zext nneg i8 %i.dx to i32               ; 2 uses
  %i.dz = or disjoint i32 %i.dw, %i.dy
  %i.ea = icmp samesign ugt i8 %i.do, -33
  br i1 %i.ea, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i.i.peel.i.i, label %bb.p

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i.i.peel.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %i.ec = add nuw nsw i64 %.promoted.i.i.i, 2
  %i.ed = icmp samesign ne i64 %i.ec, %i.df
  call void @llvm.assume(i1 %i.ed)
  %i.ee = load i8, ptr %i.eb, align 1, !noalias !284, !noundef !5
  %i.ef = shl nuw nsw i32 %i.dy, 6
  %i.eg = and i8 %i.ee, 63
  %i.eh = zext nneg i8 %i.eg to i32
  %i.ei = or disjoint i32 %i.ef, %i.eh            ; 2 uses
  %i.ej = shl nuw nsw i32 %i.ds, 12
  %i.ek = or disjoint i32 %i.ei, %i.ej
  %i.el = icmp samesign ugt i8 %i.do, -17
  br i1 %i.el, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i.i.peel.i.i, label %bb.p

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i.i.peel.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.dm, i64 3
  %i.en = add nuw nsw i64 %.promoted.i.i.i, 3
  %i.eo = icmp samesign ne i64 %i.en, %i.df
  call void @llvm.assume(i1 %i.eo)
  %i.ep = load i8, ptr %i.em, align 1, !noalias !284, !noundef !5
  %i.eq = shl nuw nsw i32 %i.ds, 18
  %i.er = and i32 %i.eq, 1835008
  %i.es = shl nuw nsw i32 %i.ei, 6
  %i.et = and i8 %i.ep, 63
  %i.eu = zext nneg i8 %i.et to i32
  %i.ev = or disjoint i32 %i.es, %i.eu
  %i.ew = or disjoint i32 %i.ev, %i.er
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ex = zext nneg i8 %i.do to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i.i.peel.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i.i.peel.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i.i.peel.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i = phi i32 [ %i.ek, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i.i.peel.i.i ], [ %i.ew, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i.i.peel.i.i ], [ %i.dz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i.i.peel.i.i ], [ %i.ex, %bb.o ] ; 4 uses
  %i.ey = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 1114112
  call void @llvm.assume(i1 %i.ey)
  br i1 %i.dg, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ez = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 128
  br i1 %i.ez, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fa = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 2048
  br i1 %i.fa, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fb = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 65536
  %..i.i.peel.i.i = select i1 %i.fb, i64 3, i64 4
  br label %bb.u

bb.t:                                             ; preds = %.preheader.split.i.i.i.3
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !277, !noalias !278, !noundef !5 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, -1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.fg = load ptr, ptr %i.ff, align 8, !alias.scope !277, !noalias !278, !nonnull !5, !noundef !5 ; 8 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !277, !noalias !278, !noundef !5 ; 10 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.fk = load ptr, ptr %i.fj, align 8, !alias.scope !277, !noalias !278, !nonnull !5, !noundef !5 ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !277, !noalias !278, !noundef !5 ; 14 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.fo = add nsw i64 %i.fm, -1                   ; 5 uses
  br i1 %i.fe, label %bb.ah, label %bb.z

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.01.0.i.i.peel.i.i = phi i64 [ 2, %bb.r ], [ %..i.i.peel.i.i, %bb.s ], [ 1, %bb.q ]
  %i.fp = add i64 %.sroa.01.0.i.i.peel.i.i, %.promoted.i.i.i ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i.i.i = icmp ult i64 %i.fp, %i.df
  br i1 %.not.i.i.i.i.i, label %bb.w, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.v
  %i.fr = icmp eq i64 %i.fp, %i.df
  br i1 %i.fr, label %bb.x, label %.loopexit.i.i

bb.w:                                             ; preds = %bb.v
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.fp
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !282, !noalias !286, !noundef !5
  %i.fu = icmp sgt i8 %i.ft, -65
  br i1 %i.fu, label %bb.x, label %.loopexit.i.i

bb.x:                                             ; preds = %bb.w, %.split.i.i.i.i.i, %bb.u
  %i.fv = icmp samesign eq i64 %i.fp, %i.df
  br i1 %i.fv, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.fp
  %i.fx = load i8, ptr %i.fw, align 1, !noalias !287, !noundef !5 ; 3 uses
  %i.fy = icmp sgt i8 %i.fx, -1
  br i1 %i.fy, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i.i.i.i: ; preds = %bb.y
  %i.fz = add nuw nsw i64 %i.fp, 1
  %i.ga = icmp samesign ne i64 %i.fz, %i.df
  call void @llvm.assume(i1 %i.ga)
  %i.gb = icmp samesign ugt i8 %i.fx, -33
  br i1 %i.gb, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit12.i.i.i.i.i
  %i.gc = add nuw nsw i64 %i.fp, 2
  %i.gd = icmp samesign ne i64 %i.gc, %i.df
  call void @llvm.assume(i1 %i.gd)
  %i.ge = icmp samesign ugt i8 %i.fx, -17
  br i1 %i.ge, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsluekWoTk8SK_11proc_macro2.exit14.i.i.i.i.i
  %i.gf = add nuw nsw i64 %i.fp, 3
  %i.gg = icmp samesign ne i64 %i.gf, %i.df
  call void @llvm.assume(i1 %i.gg)
  br label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.loopexit.i.i:                                    ; preds = %bb.w, %.split.i.i.i.i.i, %bb.l, %.split.i.i.i.peel.i.i
  %.lcssa65.i.i = phi i64 [ %.promoted.i.i.i, %.split.i.i.i.peel.i.i ], [ %.promoted.i.i.i, %bb.l ], [ %i.fp, %.split.i.i.i.i.i ], [ %i.fp, %bb.w ]
  call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dd, i64 noundef %i.df, i64 noundef %.lcssa65.i.i, i64 noundef %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #19, !noalias !286
  unreachable

bb.z:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %.promoted.i.i.i.i = load i64, ptr %i.fn, align 8, !alias.scope !291, !noalias !292 ; 2 uses
  %i.gh = add i64 %.promoted.i.i.i.i, %i.fo       ; 2 uses
  %i.gi = icmp ult i64 %i.gh, %i.fi
  br i1 %i.gi, label %.lr.ph.i1.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

.lr.ph.i1.i.i.i:                                  ; preds = %bb.z
end_hunk_0
