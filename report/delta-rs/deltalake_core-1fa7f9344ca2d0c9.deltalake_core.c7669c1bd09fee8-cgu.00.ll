Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.00?download=true
inline.NumInlined: 17049
inline.NumDeleted: 6599
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtCscVxtfYSVfE7_9itertools11groupbylazy6ChunksINtNtB7_6cloned6ClonedINtNtB7_7flatten7FlattenINtNtNtBb_5slice4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtB30_6string6StringjEEEEEENCNvXs0_NtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan9exec_metaNtB4s_17DeltaScanMetaExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan13repartitioneds_0ENtNtNtB9_6traits8iterator8Iterator4nextB4C_:bb.a
  store i64 %i.bf, ptr %.0.val, align 8, !noalias !32916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

_RNvXsb_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB5_6ChunksINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB10_7flatten7FlattenINtNtNtB14_5slice4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtB2M_6string6StringjEEEEEENtNtNtB12_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMs1_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB5_10GroupInnerjINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB16_7flatten7FlattenINtNtNtB1a_5slice4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtB2S_6string6StringjEEEEENtB5_10ChunkIndexE4stepCs14kWLkQVSKO_14deltalake_core.exit.i
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx2, i64 24, i1 false)
  %i.bg = add i64 %.pre, 1
  store i64 %i.bg, ptr %.0.val, align 8, !noalias !32916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %.pr.i, -9223372036854775807
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RNvXsb_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB5_6ChunksINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB10_7flatten7FlattenINtNtNtB14_5slice4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtB2M_6string6StringjEEEEEENtNtNtB12_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %.pr.i, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.0.val, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.e, ptr %.sroa.65.0..sroa_idx, align 8
  call void @_RNvXNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque14spec_from_iterINtB4_8VecDequeTNtNtB8_6string6StringjEEINtB2_12SpecFromIterB1k_INtNtCscVxtfYSVfE7_9itertools11groupbylazy5ChunkINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB2Y_7flatten7FlattenINtNtNtB32_5slice4iter4IterB15_EEEEE14spec_from_iterCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.v

bb.u:                                             ; preds = %_RNvXsb_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB5_6ChunksINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB10_7flatten7FlattenINtNtNtB14_5slice4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtB2M_6string6StringjEEEEEENtNtNtB12_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, %_RNvXsb_NtCscVxtfYSVfE7_9itertools11groupbylazyINtB5_6ChunksINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB10_7flatten7FlattenINtNtNtB14_5slice4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeTNtNtB2M_6string6StringjEEEEEENtNtNtB12_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter15SplitTerminatorReENCNvMNtCsjyY8HP3IvQ6_12object_store4pathNtB1E_4Path5parts0ENtNtNtB9_6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32945)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !197, !alias.scope !32946, !noundef !108
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !32946, !nonnull !108, !noundef !108 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val1.i.i = load i64, ptr %i.f, align 8, !alias.scope !32946, !noundef !108 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32946
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32948)
  %i.g = load i64, ptr %1, align 8, !range !111, !alias.scope !32949, !noundef !108
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.h, label %bb.l, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !range !197, !alias.scope !32950, !noundef !108
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %.promoted.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !32949 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %.promoted26.i.i.i = load i8, ptr %i.m, align 8, !alias.scope !32950 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32951)
  %i.n = trunc nuw i8 %.promoted26.i.i.i to i1    ; 2 uses
  %i.o = icmp eq i64 %.promoted.i.i.i, 0
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i.peel.i.i = icmp ult i64 %.promoted.i.i.i, %.val1.i.i
  br i1 %.not.i.i.i.peel.i.i, label %bb.d, label %.split.i.i.i.peel.i.i

.split.i.i.i.peel.i.i:                            ; preds = %bb.c
  %i.p = icmp eq i64 %.promoted.i.i.i, %.val1.i.i
  br i1 %i.p, label %bb.e, label %.loopexit.i.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.promoted.i.i.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !32952, !noalias !32953, !noundef !108
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.e, label %.loopexit.i.i

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel.i.i, %.lr.ph.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.promoted.i.i.i ; 4 uses
  %i.u = icmp samesign eq i64 %.promoted.i.i.i, %.val1.i.i
  br i1 %i.u, label %.loopexit19.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.t, align 1, !noalias !32954, !noundef !108 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.peel.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.peel.i.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.y = and i8 %i.v, 31
  %i.z = zext nneg i8 %i.y to i32                 ; 3 uses
  %i.aa = add nuw nsw i64 %.promoted.i.i.i, 1
  %i.ab = icmp samesign ne i64 %i.aa, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = load i8, ptr %i.x, align 1, !noalias !32954, !noundef !108
  %i.ad = shl nuw nsw i32 %i.z, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.peel.i.i, label %bb.h

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.peel.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aj = add nuw nsw i64 %.promoted.i.i.i, 2
  %i.ak = icmp samesign ne i64 %i.aj, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.ai, align 1, !noalias !32954, !noundef !108
  %i.am = shl nuw nsw i32 %i.af, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.z, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.v, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.peel.i.i, label %bb.h

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.peel.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.au = add nuw nsw i64 %.promoted.i.i.i, 3
  %i.av = icmp samesign ne i64 %i.au, %.val1.i.i
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.at, align 1, !noalias !32954, !noundef !108
  %i.ax = shl nuw nsw i32 %i.z, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.ap, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = zext nneg i8 %i.v to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.peel.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.peel.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.peel.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i = phi i32 [ %i.ar, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.peel.i.i ], [ %i.bd, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.peel.i.i ], [ %i.ag, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.peel.i.i ], [ %i.be, %bb.g ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  br i1 %i.n, label %.sink.split.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 128
  br i1 %i.bg, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 2048
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 65536
  %..i.i.peel.i.i = select i1 %i.bi, i64 3, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !32949, !noundef !108
  %i.bl = icmp eq i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !32949, !nonnull !108, !noundef !108 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !32949, !noundef !108 ; 2 uses
  br i1 %i.bl, label %bb.t, label %bb.u

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.i.i.peel.i.i = phi i64 [ 2, %bb.j ], [ %..i.i.peel.i.i, %bb.k ], [ 1, %bb.i ]
  %i.bq = add i64 %.sroa.01.0.i.i.peel.i.i, %.promoted.i.i.i ; 16 uses
  store i64 %i.bq, ptr %i.i, align 8, !alias.scope !32955
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32956)
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i.i = icmp ult i64 %i.bq, %.val1.i.i
  br i1 %.not.i.i.i.i.i, label %bb.o, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.n
  %i.bs = icmp eq i64 %i.bq, %.val1.i.i
  br i1 %i.bs, label %bb.p, label %.loopexit.i.i

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !32952, !noalias !32957, !noundef !108
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %bb.p, label %.loopexit.i.i

bb.p:                                             ; preds = %bb.o, %.split.i.i.i.i.i, %bb.m
  %i.bw = icmp samesign eq i64 %i.bq, %.val1.i.i
  br i1 %i.bw, label %.sink.split.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bq
  %i.by = load i8, ptr %i.bx, align 1, !noalias !32958, !noundef !108 ; 3 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %.sink.split.i.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i: ; preds = %bb.q
  %i.ca = add nuw nsw i64 %i.bq, 1
  %i.cb = icmp samesign ne i64 %i.ca, %.val1.i.i
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp samesign ugt i8 %i.by, -33
  br i1 %i.cc, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i, label %.sink.split.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i
  %i.cd = add nuw nsw i64 %i.bq, 2
  %i.ce = icmp samesign ne i64 %i.cd, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp samesign ugt i8 %i.by, -17
  br i1 %i.cf, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i.i, label %.sink.split.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i
  %i.cg = add nuw nsw i64 %i.bq, 3
  %i.ch = icmp samesign ne i64 %i.cg, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ch)
  br label %.sink.split.i.i

.loopexit.i.i:                                    ; preds = %bb.o, %.split.i.i.i.i.i, %bb.d, %.split.i.i.i.peel.i.i
  %.lcssa15.i.i = phi i8 [ %.promoted26.i.i.i, %.split.i.i.i.peel.i.i ], [ %.promoted26.i.i.i, %bb.d ], [ 1, %.split.i.i.i.i.i ], [ 1, %bb.o ]
  %.lcssa12.i.i = phi i64 [ %.promoted.i.i.i, %.split.i.i.i.peel.i.i ], [ %.promoted.i.i.i, %bb.d ], [ %i.bq, %.split.i.i.i.i.i ], [ %i.bq, %bb.o ]
  %i.ci = xor i8 %.lcssa15.i.i, 1
  store i8 %i.ci, ptr %i.m, align 8, !alias.scope !32950
  tail call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, i64 noundef %.lcssa12.i.i, i64 noundef %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #28, !noalias !32957
  unreachable

.loopexit19.i.i:                                  ; preds = %bb.e
  %i.cj = xor i8 %.promoted26.i.i.i, 1
  store i8 %i.cj, ptr %i.m, align 8, !alias.scope !32950
  br i1 %i.n, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit19.i.i
  store i8 1, ptr %i.j, align 2, !alias.scope !32950
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i

.sink.split.i.i:                                  ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i.i, %bb.q, %bb.p, %bb.h
  %.ph.i.i = phi i64 [ %.val1.i.i, %bb.p ], [ %.promoted.i.i.i, %bb.h ], [ %i.bq, %bb.q ], [ %i.bq, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i ]
  store i8 0, ptr %i.m, align 8, !alias.scope !32950
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i.i, %.loopexit19.i.i
  %2 = phi i64 [ %.val1.i.i, %.loopexit19.i.i ], [ %.ph.i.i, %.sink.split.i.i ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.ck, align 8, !alias.scope !32947, !noalias !32946
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.cl, align 8, !alias.scope !32947, !noalias !32946
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i: ; preds = %bb.s, %bb.r, %.preheader.i.i.i
  %storemerge.i.i.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ], [ 0, %.preheader.i.i.i ]
  store i64 %storemerge.i.i.i, ptr %i.a, align 8, !alias.scope !32947, !noalias !32946
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

bb.t:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext true) #34
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

bb.u:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext false) #34
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %bb.u, %bb.t, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i
  %i.cm = load i64, ptr %i.a, align 8, !range !111, !noalias !32946, !noundef !108
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !noalias !32946, !noundef !108
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !32946, !noundef !108
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !32946, !noundef !108 ; 2 uses
  %i.cu = sub nuw i64 %i.cp, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ct
  store i64 %i.cr, ptr %i.cs, align 8, !alias.scope !32946
  br label %bb.aa

bb.w:                                             ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i
  %i.cw = load i8, ptr %i.b, align 1, !range !197, !alias.scope !32959, !noundef !108
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread6, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.b, align 1, !alias.scope !32959
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cz = load i8, ptr %i.cy, align 8, !range !197, !alias.scope !32959, !noundef !108
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %._crit_edge.i.i.i, label %bb.y

._crit_edge.i.i.i:                                ; preds = %bb.x
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !32959
  %.phi.trans.insert2.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre3.i.i.i = load i64, ptr %.phi.trans.insert2.i.i.i, align 8, !alias.scope !32959
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !32959, !noundef !108 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !32959, !noundef !108 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.dc, %i.de
  br i1 %.not.i.i.i, label %_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread6, label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i
  %i.df = phi i64 [ %.pre3.i.i.i, %._crit_edge.i.i.i ], [ %i.dc, %bb.y ]
  %i.dg = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.de, %bb.y ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !32959, !nonnull !108, !noundef !108
  %i.dh = sub nuw i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.dg
  br label %bb.aa

_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread6: ; preds = %bb.y, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32946
  br label %_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread

bb.aa:                                            ; preds = %bb.z, %bb.v
  %.sroa.4.0.i.i = phi i64 [ %i.cu, %bb.v ], [ %i.dh, %bb.z ]
  %.sroa.0.0.i.i = phi ptr [ %i.cv, %bb.v ], [ %i.di, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32946
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.ab

_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.a, %_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread6
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, %bb.aa
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitcENCINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB1v_10ColumnNameINtNtNtB9_6traits7collect12FromIteratorReE9from_iterBW_E0ENtNtB2P_8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32984)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !197, !alias.scope !32985, !noundef !108
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !32985, !nonnull !108, !noundef !108 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.f, align 8, !alias.scope !32985, !noundef !108 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32986)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !32987, !noundef !108 ; 5 uses
  %.promoted.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !32987 ; 2 uses
  %i.j = icmp ult i64 %i.i, %.promoted.i.i.i
  br i1 %i.j, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %.not.i.i.i = icmp ugt i64 %i.i, %.val1.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !32987 ; 2 uses
  %i.n = zext nneg i8 %i.m to i64                 ; 4 uses
  %i.o = icmp ult i8 %i.m, 5
  br i1 %.not.i.i.i, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.p = getelementptr i8, ptr %i.k, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  tail call void @llvm.assume(i1 %i.o)
  %.pre.i.i.i = load i8, ptr %i.q, align 1, !alias.scope !32987 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.split.i.i.i
  %i.r = phi i64 [ %.promoted.i.i.i, %.lr.ph.split.i.i.i ], [ %i.ag, %bb.h ] ; 3 uses
  %i.s = sub nuw i64 %i.i, %i.r                   ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.r ; 2 uses
  %i.u = icmp samesign ult i64 %i.s, 16
  br i1 %i.u, label %.preheader.i.i.i.i, label %bb.d

.preheader.i.i.i.i:                               ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef range(i64 0, -9223372036854775808) %i.s), !noalias !32988
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.s, %bb.e ]
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ], [ 0, %bb.e ]
  %i.w = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i, 0
  %i.x = insertvalue { i64, i64 } %i.w, i64 %.sroa.01.0.lcssa.i.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.e
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.ab, %bb.e ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.05.i.i.i.i
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !32989, !noalias !32988, !noundef !108
  %i.aa = icmp eq i8 %i.z, %.pre.i.i.i
  br i1 %i.aa, label %._crit_edge.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ab, %i.s
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.d
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.x, %._crit_edge.i.i.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %i.ac = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i
  %i.ae = extractvalue { i64, i64 } %.merged.i.i.i.i, 1
  %i.af = add i64 %i.r, 1
  %i.ag = add i64 %i.af, %i.ae                    ; 7 uses
  store i64 %i.ag, ptr %i.g, align 8, !alias.scope !32987
  %.not12.i.i.i = icmp ult i64 %i.ag, %i.n
  %.not13.i.i.i = icmp ugt i64 %i.ag, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not12.i.i.i, %.not13.i.i.i
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i
  store i64 %i.i, ptr %i.g, align 8, !alias.scope !32987
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.ah = icmp ult i64 %i.i, %i.ag
  br i1 %i.ah, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.c

bb.i:                                             ; preds = %bb.f
  %i.ai = sub nuw i64 %i.ag, %i.n                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ai
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.aj, ptr nonnull %i.k, i64 %i.n), !noalias !32990
  %i.ak = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ak, label %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.h

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.i
end_hunk_0
