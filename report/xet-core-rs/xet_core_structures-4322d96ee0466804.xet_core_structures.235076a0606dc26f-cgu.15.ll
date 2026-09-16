Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.15?download=true
inline.NumInlined: 267
inline.NumDeleted: 115
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortTyTmmEENCINvMB6_SBT_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEINtNtB38_9bufwriter9BufWriterQINtNtNtB1J_10merklehash9data_hash11HashedWriteB42_EEEs2_0E0EB1J_:bb.a
.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEINtNtB3i_9bufwriter9BufWriterQINtNtNtB1T_10merklehash9data_hash11HashedWriteB4c_EEEs2_0E0EB1T_.exit.thread
  %i.q = lshr i64 %1, 1
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTyTmmEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.w, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTyTmmEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.s = xor i64 %.sroa.0.017.i.i, -1
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.u = getelementptr [16 x i8], ptr %i.r, i64 %i.s
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs31YAwBA1AlL_19xet_core_structures(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i64 noundef 2)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTyTmmEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTyTmmEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i: ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.sroa.0.017.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %i.q
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCskKLDkoKarTP_4core5sliceSj7reverseCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load i64, ptr %i.b, align 8, !alias.scope !74, !noalias !75, !noundef !4 ; 3 uses
  %.val6 = load i64, ptr %0, align 8, !alias.scope !75, !noalias !74, !noundef !4
  %i.c = icmp ult i64 %.val5, %.val6              ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %.val4 = phi i64 [ %.val3, %bb.c ], [ %.val5, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader11 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i13
  %.val3 = load i64, ptr %i.d, align 8, !alias.scope !74, !noalias !75, !noundef !4 ; 2 uses
  %i.e = icmp ult i64 %.val3, %.val4
  br i1 %i.e, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.val2 = phi i64 [ %.val, %bb.d ], [ %.val5, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i16
  %.val = load i64, ptr %i.g, align 8, !alias.scope !74, !noalias !75, !noundef !4 ; 2 uses
  %i.h = icmp ult i64 %.val, %.val2
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.i = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.i, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.thread, label %.lr.ph17

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.thread, label %bb.e

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit
  br i1 %i.c, label %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSj7reverseCs31YAwBA1AlL_19xet_core_structures.exit

bb.e:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.p, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSj7reverseCs31YAwBA1AlL_19xet_core_structures.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSj7reverseCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.thread, %bb.e
  ret void

_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runjNvYjNtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.thread
  %i.q = lshr i64 %1, 1                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i
  %n.vec = and i64 %i.q, 576460752303423484       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = xor i64 %index, -1
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.u = getelementptr [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.t, align 8, !alias.scope !78, !noalias !77
  %wide.load39 = load <2 x i64>, ptr %i.v, align 8, !alias.scope !78, !noalias !77
  %i.w = getelementptr i8, ptr %i.u, i64 -8       ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -24      ; 2 uses
  %wide.load40 = load <2 x i64>, ptr %i.w, align 8, !alias.scope !79, !noalias !76
  %wide.load41 = load <2 x i64>, ptr %i.x, align 8, !alias.scope !79, !noalias !76
  %reverse = shufflevector <2 x i64> %wide.load40, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse42 = shufflevector <2 x i64> %wide.load41, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.t, align 8, !alias.scope !78, !noalias !77
  store <2 x i64> %reverse42, ptr %i.v, align 8, !alias.scope !78, !noalias !77
  %reverse43 = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse44 = shufflevector <2 x i64> %wide.load39, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse43, ptr %i.w, align 8, !alias.scope !79, !noalias !76
  store <2 x i64> %reverse44, ptr %i.x, align 8, !alias.scope !79, !noalias !76
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_RNvMNtCskKLDkoKarTP_4core5sliceSj7reverseCs31YAwBA1AlL_19xet_core_structures.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.ae, %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i.preheader ] ; 3 uses
  %i.z = xor i64 %.sroa.0.016.i.i, -1
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.r, i64 %i.z ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !alias.scope !78, !noalias !77, !noundef !4
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !79, !noalias !76
  store i64 %i.ad, ptr %i.aa, align 8, !alias.scope !78, !noalias !77
  store i64 %i.ac, ptr %i.ab, align 8, !alias.scope !79, !noalias !76
  %i.ae = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ae, %i.q
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSj7reverseCs31YAwBA1AlL_19xet_core_structures.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSj12split_at_mutCs31YAwBA1AlL_19xet_core_structures.exit11.i.i, !llvm.loop !73
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB13_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2c_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB4c_8BTreeMapBX_B27_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB5e_8adapters3map3MapINtNtB6a_6filter6FilterINtB4c_4IterBX_B27_ENCNvMNtB2J_15shard_in_memoryNtB7j_16MDBInMemoryShard10difference0ENCB7g_s_0EE0E0EB13_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i75 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i80 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cj, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ch, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1a_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2j_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2j_11collections5btree3mapINtB4k_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5n_8adapters3map3MapINtNtB6k_6filter6FilterINtB4k_4IterB14_B2e_ENCNvMNtB2Q_15shard_in_memoryNtB7u_16MDBInMemoryShard10difference0ENCB7r_s_0EE0E0EB1a_.exit
  %.sroa.021.0 = phi i8 [ %i.ba, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1a_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2j_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2j_11collections5btree3mapINtB4k_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5n_8adapters3map3MapINtNtB6k_6filter6FilterINtB4k_4IterB14_B2e_ENCNvMNtB2Q_15shard_in_memoryNtB7u_16MDBInMemoryShard10difference0ENCB7r_s_0EE0E0EB1a_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1a_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2j_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2j_11collections5btree3mapINtB4k_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5n_8adapters3map3MapINtNtB6k_6filter6FilterINtB4k_4IterB14_B2e_ENCNvMNtB2Q_15shard_in_memoryNtB7u_16MDBInMemoryShard10difference0ENCB7r_s_0EE0E0EB1a_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph55, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 9 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread78, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE7reverseBB_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.q = tail call noundef range(i8 -1, 2) i8 @_RNvXs9_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHashNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n), !noalias !85
  %i.r = icmp ne i8 %i.q, -1                      ; 2 uses
  %.not62 = icmp eq i64 %i.m, 2                   ; 2 uses
  br i1 %i.r, label %.preheader43, label %.preheader

.preheader43:                                     ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader43
  %smax = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread78, label %.lr.ph49.preheader

.lr.ph49.preheader:                               ; preds = %.preheader
  %smax65 = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3) ; 2 uses
  br label %.lr.ph49

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.sroa.01.0.i.i45 = phi i64 [ %i.x, %bb.l ], [ 2, %.lr.ph.preheader ] ; 4 uses
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.0.i.i45
  %i.t = getelementptr [40 x i8], ptr %i.n, i64 %.sroa.01.0.i.i45
  %i.u = getelementptr i8, ptr %i.t, i64 -40
  %i.v = tail call noundef range(i8 -1, 2) i8 @_RNvXs9_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHashNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.u), !noalias !85
  %i.w = icmp eq i8 %i.v, -1
  br i1 %i.w, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.x = add nuw nsw i64 %.sroa.01.0.i.i45, 1     ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %smax
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i, label %.lr.ph

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %bb.m
  %.sroa.01.1.i.i48 = phi i64 [ %i.ad, %bb.m ], [ 2, %.lr.ph49.preheader ] ; 4 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.01.1.i.i48
  %i.z = getelementptr [40 x i8], ptr %i.n, i64 %.sroa.01.1.i.i48
  %i.aa = getelementptr i8, ptr %i.z, i64 -40
  %i.ab = tail call noundef range(i8 -1, 2) i8 @_RNvXs9_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHashNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aa), !noalias !85
  %i.ac = icmp eq i8 %i.ab, -1
  br i1 %i.ac, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i

bb.m:                                             ; preds = %.lr.ph49
  %i.ad = add nuw nsw i64 %.sroa.01.1.i.i48, 1    ; 2 uses
  %exitcond65.not = icmp eq i64 %i.ad, %smax65
  br i1 %exitcond65.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i, label %.lr.ph49

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i: ; preds = %bb.m, %.lr.ph49, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i45, %.lr.ph ], [ %smax, %bb.l ], [ %.sroa.01.1.i.i48, %.lr.ph49 ], [ %smax65, %bb.m ] ; 5 uses
  %i.ae = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ae)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread78: ; preds = %.preheader
  br i1 %.not5.i80, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread: ; preds = %.preheader43
  br i1 %.not5.i75, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE7reverseBB_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i
  %i.af = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.af, 0
  %or.cond = or i1 %i.r, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE7reverseBB_.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %..i34 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 %.sroa.01.0)
  %i.ag = shl nuw nsw i64 %..i34, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1a_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2j_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2j_11collections5btree3mapINtB4k_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5n_8adapters3map3MapINtNtB6k_6filter6FilterINtB4k_4IterB14_B2e_ENCNvMNtB2Q_15shard_in_memoryNtB7u_16MDBInMemoryShard10difference0ENCB7r_s_0EE0E0EB1a_.exit

bb.p:                                             ; preds = %bb.i
  %..i33 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1c_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2l_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2l_11collections5btree3mapINtB4m_8BTreeMapB16_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5p_8adapters3map3MapINtNtB6m_6filter6FilterINtB4m_4IterB16_B2g_ENCNvMNtB2S_15shard_in_memoryNtB7w_16MDBInMemoryShard10difference0ENCB7t_s_0EE0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18, !inline_history !83
  %i.ah = shl nuw nsw i64 %..i33, 1
  %i.ai = or disjoint i64 %i.ah, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1a_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2j_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2j_11collections5btree3mapINtB4k_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5n_8adapters3map3MapINtNtB6k_6filter6FilterINtB4k_4IterB14_B2e_ENCNvMNtB2Q_15shard_in_memoryNtB7u_16MDBInMemoryShard10difference0ENCB7r_s_0EE0E0EB1a_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE7reverseBB_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB17_14metadata_shard12xorb_structs11MDBXorbInfoEEEB17_.exit.i.i, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i3942 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread ], [ %.sroa.0.0.i.i768387, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB17_14metadata_shard12xorb_structs11MDBXorbInfoEEEB17_.exit.i.i ]
  %i.aj = shl nuw nsw i64 %.sroa.0.0.i.i3942, 1
  %i.ak = or disjoint i64 %i.aj, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1a_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2j_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2j_11collections5btree3mapINtB4k_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5n_8adapters3map3MapINtNtB6k_6filter6FilterINtB4k_4IterB14_B2e_ENCNvMNtB2Q_15shard_in_memoryNtB7u_16MDBInMemoryShard10difference0ENCB7r_s_0EE0E0EB1a_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread78
  %i.al = phi i64 [ %i.af, %bb.n ], [ 1, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread78 ]
  %.sroa.0.0.i.i768387 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB19_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2i_5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2i_11collections5btree3mapINtB4j_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB5m_8adapters3map3MapINtNtB6j_6filter6FilterINtB4j_4IterB13_B2d_ENCNvMNtB2P_15shard_in_memoryNtB7t_16MDBInMemoryShard10difference0ENCB7q_s_0EE0E0EB19_.exit.i.thread78 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.0.i.i768387
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB17_14metadata_shard12xorb_structs11MDBXorbInfoEEEB17_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ar, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB17_14metadata_shard12xorb_structs11MDBXorbInfoEEEB17_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.an = xor i64 %.sroa.0.017.i.i, -1
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.0.017.i.i
  %i.ap = getelementptr [40 x i8], ptr %i.am, i64 %i.an
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs31YAwBA1AlL_19xet_core_structures(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap, i64 noundef 5)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB17_14metadata_shard12xorb_structs11MDBXorbInfoEEEB17_.exit.i.i unwind label %bb.q, !noalias !85

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !85
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB17_14metadata_shard12xorb_structs11MDBXorbInfoEEEB17_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ar = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ar, %i.al
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE7reverseBB_.exit, label %.lr.ph.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1a_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2j_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2j_11collections5btree3mapINtB4k_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5n_8adapters3map3MapINtNtB6k_6filter6FilterINtB4k_4IterB14_B2e_ENCNvMNtB2Q_15shard_in_memoryNtB7u_16MDBInMemoryShard10difference0ENCB7r_s_0EE0E0EB1a_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE7reverseBB_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ak, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE7reverseBB_.exit ], [ %i.ai, %bb.p ], [ %i.ag, %bb.o ] ; 2 uses
  %i.as = lshr i64 %.sroa.023.0, 1
  %i.at = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.au = sub nsw i64 %factor, %i.as
  %i.av = add nuw nsw i64 %i.at, %factor
  %i.aw = mul i64 %i.au, %.sroa.0.0
  %i.ax = mul i64 %i.av, %.sroa.0.0
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 false)
  %i.ba = trunc nuw nsw i64 %i.az to i8
  br label %bb.g

.lr.ph55:                                         ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2m_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2m_11collections5btree3mapINtB4n_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5q_8adapters3map3MapINtNtB6n_6filter6FilterINtB4n_4IterB17_B2h_ENCNvMNtB2T_15shard_in_memoryNtB7x_16MDBInMemoryShard10difference0ENCB7u_s_0EE0E0EB1d_.exit
  %.sroa.02.154 = phi i64 [ %i.bb, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2m_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2m_11collections5btree3mapINtB4n_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5q_8adapters3map3MapINtNtB6n_6filter6FilterINtB4n_4IterB17_B2h_ENCNvMNtB2T_15shard_in_memoryNtB7x_16MDBInMemoryShard10difference0ENCB7u_s_0EE0E0EB1d_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.153 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2m_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2m_11collections5btree3mapINtB4n_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5q_8adapters3map3MapINtNtB6n_6filter6FilterINtB4n_4IterB17_B2h_ENCNvMNtB2T_15shard_in_memoryNtB7x_16MDBInMemoryShard10difference0ENCB7u_s_0EE0E0EB1d_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bb = add i64 %.sroa.02.154, -1               ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bd, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2m_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2m_11collections5btree3mapINtB4n_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5q_8adapters3map3MapINtNtB6n_6filter6FilterINtB4n_4IterB17_B2h_ENCNvMNtB2T_15shard_in_memoryNtB7x_16MDBInMemoryShard10difference0ENCB7u_s_0EE0E0EB1d_.exit, %.lr.ph55, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.153, %.lr.ph55 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2m_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2m_11collections5btree3mapINtB4n_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5q_8adapters3map3MapINtNtB6n_6filter6FilterINtB4n_4IterB17_B2h_ENCNvMNtB2T_15shard_in_memoryNtB7x_16MDBInMemoryShard10difference0ENCB7u_s_0EE0E0EB1d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.154, %.lr.ph55 ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2m_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2m_11collections5btree3mapINtB4n_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5q_8adapters3map3MapINtNtB6n_6filter6FilterINtB4n_4IterB17_B2h_ENCNvMNtB2T_15shard_in_memoryNtB7x_16MDBInMemoryShard10difference0ENCB7u_s_0EE0E0EB1d_.exit ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bf, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph55
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bb
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !4 ; 3 uses
  %i.bi = lshr i64 %i.bh, 1                       ; 5 uses
  %i.bj = lshr i64 %.sroa.023.153, 1              ; 3 uses
  %i.bk = add nuw i64 %i.bi, %i.bj                ; 5 uses
  %i.bl = sub i64 %.sroa.09.0, %i.bk
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.bl ; 3 uses
  %i.bn = icmp samesign ugt i64 %i.bk, %3
  %i.bo = trunc i64 %.sroa.023.153 to i1
  %i.bp = or i64 %i.bh, %.sroa.023.153
  %i.bq = trunc i64 %i.bp to i1
  %or.cond3.i = or i1 %i.bn, %i.bq
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.br = trunc i64 %i.bh to i1
  br i1 %i.br, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bs = shl nuw nsw i64 %i.bk, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2m_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2m_11collections5btree3mapINtB4n_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5q_8adapters3map3MapINtNtB6n_6filter6FilterINtB4n_4IterB17_B2h_ENCNvMNtB2T_15shard_in_memoryNtB7x_16MDBInMemoryShard10difference0ENCB7u_s_0EE0E0EB1d_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bo, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bt = or i64 %i.bi, 1
  %i.bu = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bt, i1 true)
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 1
  %i.bx = xor i32 %i.bw, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1c_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2l_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2l_11collections5btree3mapINtB4m_8BTreeMapB16_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5p_8adapters3map3MapINtNtB6m_6filter6FilterINtB4m_4IterB16_B2g_ENCNvMNtB2S_15shard_in_memoryNtB7w_16MDBInMemoryShard10difference0ENCB7t_s_0EE0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.bm, i64 noundef range(i64 0, 230584300921369396) %i.bi, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18, !inline_history !84
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.bm, i64 %i.bi
  %i.bz = or i64 %i.bj, 1
  %i.ca = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = xor i32 %i.cc, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1c_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2l_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2l_11collections5btree3mapINtB4m_8BTreeMapB16_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5p_8adapters3map3MapINtNtB6m_6filter6FilterINtB4m_4IterB16_B2g_ENCNvMNtB2S_15shard_in_memoryNtB7w_16MDBInMemoryShard10difference0ENCB7t_s_0EE0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 230584300921369396) %i.bj, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18, !inline_history !84
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB14_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2d_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB2d_11collections5btree3mapINtB4d_8BTreeMapBY_B28_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5f_8adapters3map3MapINtNtB6b_6filter6FilterINtB4d_4IterBY_B28_ENCNvMNtB2K_15shard_in_memoryNtB7k_16MDBInMemoryShard10difference0ENCB7h_s_0EE0E0EB14_(ptr noalias nofree noundef nonnull align 8 %i.bm, i64 noundef range(i64 0, 230584300921369396) %i.bk, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ce = shl nuw nsw i64 %i.bk, 1
  %i.cf = or disjoint i64 %i.ce, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2m_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2m_11collections5btree3mapINtB4n_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5q_8adapters3map3MapINtNtB6n_6filter6FilterINtB4n_4IterB17_B2h_ENCNvMNtB2T_15shard_in_memoryNtB7x_16MDBInMemoryShard10difference0ENCB7u_s_0EE0E0EB1d_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1d_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2m_5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2m_11collections5btree3mapINtB4n_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB5q_8adapters3map3MapINtNtB6n_6filter6FilterINtB4n_4IterB17_B2h_ENCNvMNtB2T_15shard_in_memoryNtB7x_16MDBInMemoryShard10difference0ENCB7u_s_0EE0E0EB1d_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cf, %bb.x ], [ %i.bs, %bb.t ] ; 2 uses
  %i.cg = icmp ugt i64 %i.bb, 1
  br i1 %i.cg, label %.lr.ph55, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ch = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ci = lshr i64 %.sroa.018.0, 1
  %i.cj = add nuw i64 %i.ci, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.ck = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ck, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cl = or i64 %1, 1
  %i.cm = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1c_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2l_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2l_11collections5btree3mapINtB4m_8BTreeMapB16_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5p_8adapters3map3MapINtNtB6m_6filter6FilterINtB4m_4IterB16_B2g_ENCNvMNtB2S_15shard_in_memoryNtB7w_16MDBInMemoryShard10difference0ENCB7t_s_0EE0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18, !inline_history !84
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB13_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB37_11collections5btree3mapINtB3T_8BTreeMapBX_B27_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4V_8adapters3map3MapINtNtB5R_6filter6FilterINtB3T_4IterBX_B27_ENCNvMNtB2b_15shard_in_memoryNtB70_16MDBInMemoryShard10differences0_0ENCB6X_s1_0EE0E0EB13_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 50127021939428130) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 50127021939428130) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i75 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i80 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cj, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ch, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3e_11collections5btree3mapINtB41_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB54_8adapters3map3MapINtNtB61_6filter6FilterINtB41_4IterB14_B2e_ENCNvMNtB2i_15shard_in_memoryNtB7b_16MDBInMemoryShard10differences0_0ENCB78_s1_0EE0E0EB1a_.exit
  %.sroa.021.0 = phi i8 [ %i.ba, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3e_11collections5btree3mapINtB41_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB54_8adapters3map3MapINtNtB61_6filter6FilterINtB41_4IterB14_B2e_ENCNvMNtB2i_15shard_in_memoryNtB7b_16MDBInMemoryShard10differences0_0ENCB78_s1_0EE0E0EB1a_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3e_11collections5btree3mapINtB41_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB54_8adapters3map3MapINtNtB61_6filter6FilterINtB41_4IterB14_B2e_ENCNvMNtB2i_15shard_in_memoryNtB7b_16MDBInMemoryShard10differences0_0ENCB78_s1_0EE0E0EB1a_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph55, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 9 uses
  %i.n = getelementptr inbounds nuw [184 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread78, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtBB_14metadata_shard12file_structs11MDBFileInfoE7reverseBB_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  %i.q = tail call noundef range(i8 -1, 2) i8 @_RNvXs9_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHashNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.n), !noalias !91
  %i.r = icmp ne i8 %i.q, -1                      ; 2 uses
  %.not62 = icmp eq i64 %i.m, 2                   ; 2 uses
  br i1 %i.r, label %.preheader43, label %.preheader

.preheader43:                                     ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader43
  %smax = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3) ; 2 uses
  br label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not62, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread78, label %.lr.ph49.preheader

.lr.ph49.preheader:                               ; preds = %.preheader
  %smax65 = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3) ; 2 uses
  br label %.lr.ph49

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.sroa.01.0.i.i45 = phi i64 [ %i.x, %bb.l ], [ 2, %.lr.ph.preheader ] ; 4 uses
  %i.s = getelementptr inbounds nuw [184 x i8], ptr %i.n, i64 %.sroa.01.0.i.i45
  %i.t = getelementptr [184 x i8], ptr %i.n, i64 %.sroa.01.0.i.i45
  %i.u = getelementptr i8, ptr %i.t, i64 -184
  %i.v = tail call noundef range(i8 -1, 2) i8 @_RNvXs9_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHashNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.u), !noalias !91
  %i.w = icmp eq i8 %i.v, -1
  br i1 %i.w, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.x = add nuw nsw i64 %.sroa.01.0.i.i45, 1     ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %smax
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i, label %.lr.ph

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %bb.m
  %.sroa.01.1.i.i48 = phi i64 [ %i.ad, %bb.m ], [ 2, %.lr.ph49.preheader ] ; 4 uses
  %i.y = getelementptr inbounds nuw [184 x i8], ptr %i.n, i64 %.sroa.01.1.i.i48
  %i.z = getelementptr [184 x i8], ptr %i.n, i64 %.sroa.01.1.i.i48
  %i.aa = getelementptr i8, ptr %i.z, i64 -184
  %i.ab = tail call noundef range(i8 -1, 2) i8 @_RNvXs9_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHashNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.aa), !noalias !91
  %i.ac = icmp eq i8 %i.ab, -1
  br i1 %i.ac, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i

bb.m:                                             ; preds = %.lr.ph49
  %i.ad = add nuw nsw i64 %.sroa.01.1.i.i48, 1    ; 2 uses
  %exitcond65.not = icmp eq i64 %i.ad, %smax65
  br i1 %exitcond65.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i, label %.lr.ph49

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i: ; preds = %bb.m, %.lr.ph49, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i45, %.lr.ph ], [ %smax, %bb.l ], [ %.sroa.01.1.i.i48, %.lr.ph49 ], [ %smax65, %bb.m ] ; 5 uses
  %i.ae = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ae)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread78: ; preds = %.preheader
  br i1 %.not5.i80, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread: ; preds = %.preheader43
  br i1 %.not5.i75, label %bb.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtBB_14metadata_shard12file_structs11MDBFileInfoE7reverseBB_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i
  %i.af = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.af, 0
  %or.cond = or i1 %i.r, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtBB_14metadata_shard12file_structs11MDBFileInfoE7reverseBB_.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %..i34 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 50127021939428130) %i.m, i64 %.sroa.01.0)
  %i.ag = shl nuw nsw i64 %..i34, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3e_11collections5btree3mapINtB41_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB54_8adapters3map3MapINtNtB61_6filter6FilterINtB41_4IterB14_B2e_ENCNvMNtB2i_15shard_in_memoryNtB7b_16MDBInMemoryShard10differences0_0ENCB78_s1_0EE0E0EB1a_.exit

bb.p:                                             ; preds = %bb.i
  %..i33 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 50127021939428130) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1c_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3g_11collections5btree3mapINtB43_8BTreeMapB16_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB56_8adapters3map3MapINtNtB63_6filter6FilterINtB43_4IterB16_B2g_ENCNvMNtB2k_15shard_in_memoryNtB7d_16MDBInMemoryShard10differences0_0ENCB7a_s1_0EE0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 50127021939428130) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(184) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18, !inline_history !89
  %i.ah = shl nuw nsw i64 %..i33, 1
  %i.ai = or disjoint i64 %i.ah, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3e_11collections5btree3mapINtB41_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB54_8adapters3map3MapINtNtB61_6filter6FilterINtB41_4IterB14_B2e_ENCNvMNtB2i_15shard_in_memoryNtB7b_16MDBInMemoryShard10differences0_0ENCB78_s1_0EE0E0EB1a_.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtBB_14metadata_shard12file_structs11MDBFileInfoE7reverseBB_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB17_14metadata_shard12file_structs11MDBFileInfoEEB17_.exit.i.i, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i3942 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread ], [ %.sroa.0.0.i.i768387, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB17_14metadata_shard12file_structs11MDBFileInfoEEB17_.exit.i.i ]
  %i.aj = shl nuw nsw i64 %.sroa.0.0.i.i3942, 1
  %i.ak = or disjoint i64 %i.aj, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3e_11collections5btree3mapINtB41_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB54_8adapters3map3MapINtNtB61_6filter6FilterINtB41_4IterB14_B2e_ENCNvMNtB2i_15shard_in_memoryNtB7b_16MDBInMemoryShard10differences0_0ENCB78_s1_0EE0E0EB1a_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread78
  %i.al = phi i64 [ %i.af, %bb.n ], [ 1, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread78 ]
  %.sroa.0.0.i.i768387 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB19_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB3d_11collections5btree3mapINtB40_8BTreeMapB13_B2d_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB53_8adapters3map3MapINtNtB60_6filter6FilterINtB40_4IterB13_B2d_ENCNvMNtB2h_15shard_in_memoryNtB7a_16MDBInMemoryShard10differences0_0ENCB77_s1_0EE0E0EB19_.exit.i.thread78 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [184 x i8], ptr %i.n, i64 %.sroa.0.0.i.i768387
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB17_14metadata_shard12file_structs11MDBFileInfoEEB17_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ar, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB17_14metadata_shard12file_structs11MDBFileInfoEEB17_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.an = xor i64 %.sroa.0.017.i.i, -1
  %i.ao = getelementptr inbounds nuw [184 x i8], ptr %i.n, i64 %.sroa.0.017.i.i
  %i.ap = getelementptr [184 x i8], ptr %i.am, i64 %i.an
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs31YAwBA1AlL_19xet_core_structures(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap, i64 noundef 23)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB17_14metadata_shard12file_structs11MDBFileInfoEEB17_.exit.i.i unwind label %bb.q, !noalias !91

bb.q:                                             ; preds = %.lr.ph.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !91
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB17_14metadata_shard12file_structs11MDBFileInfoEEB17_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ar = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ar, %i.al
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtBB_14metadata_shard12file_structs11MDBFileInfoE7reverseBB_.exit, label %.lr.ph.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3e_11collections5btree3mapINtB41_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB54_8adapters3map3MapINtNtB61_6filter6FilterINtB41_4IterB14_B2e_ENCNvMNtB2i_15shard_in_memoryNtB7b_16MDBInMemoryShard10differences0_0ENCB78_s1_0EE0E0EB1a_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtBB_14metadata_shard12file_structs11MDBFileInfoE7reverseBB_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ak, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtBB_14metadata_shard12file_structs11MDBFileInfoE7reverseBB_.exit ], [ %i.ai, %bb.p ], [ %i.ag, %bb.o ] ; 2 uses
  %i.as = lshr i64 %.sroa.023.0, 1
  %i.at = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.au = sub nsw i64 %factor, %i.as
  %i.av = add nuw nsw i64 %i.at, %factor
  %i.aw = mul i64 %i.au, %.sroa.0.0
  %i.ax = mul i64 %i.av, %.sroa.0.0
  %i.ay = xor i64 %i.ax, %i.aw
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ay, i1 false)
  %i.ba = trunc nuw nsw i64 %i.az to i8
  br label %bb.g

.lr.ph55:                                         ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1d_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3h_11collections5btree3mapINtB44_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB57_8adapters3map3MapINtNtB64_6filter6FilterINtB44_4IterB17_B2h_ENCNvMNtB2l_15shard_in_memoryNtB7e_16MDBInMemoryShard10differences0_0ENCB7b_s1_0EE0E0EB1d_.exit
  %.sroa.02.154 = phi i64 [ %i.bb, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1d_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3h_11collections5btree3mapINtB44_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB57_8adapters3map3MapINtNtB64_6filter6FilterINtB44_4IterB17_B2h_ENCNvMNtB2l_15shard_in_memoryNtB7e_16MDBInMemoryShard10differences0_0ENCB7b_s1_0EE0E0EB1d_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.153 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1d_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3h_11collections5btree3mapINtB44_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB57_8adapters3map3MapINtNtB64_6filter6FilterINtB44_4IterB17_B2h_ENCNvMNtB2l_15shard_in_memoryNtB7e_16MDBInMemoryShard10differences0_0ENCB7b_s1_0EE0E0EB1d_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bb = add i64 %.sroa.02.154, -1               ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bd, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1d_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3h_11collections5btree3mapINtB44_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB57_8adapters3map3MapINtNtB64_6filter6FilterINtB44_4IterB17_B2h_ENCNvMNtB2l_15shard_in_memoryNtB7e_16MDBInMemoryShard10differences0_0ENCB7b_s1_0EE0E0EB1d_.exit, %.lr.ph55, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.153, %.lr.ph55 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1d_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3h_11collections5btree3mapINtB44_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB57_8adapters3map3MapINtNtB64_6filter6FilterINtB44_4IterB17_B2h_ENCNvMNtB2l_15shard_in_memoryNtB7e_16MDBInMemoryShard10differences0_0ENCB7b_s1_0EE0E0EB1d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.154, %.lr.ph55 ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1d_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3h_11collections5btree3mapINtB44_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB57_8adapters3map3MapINtNtB64_6filter6FilterINtB44_4IterB17_B2h_ENCNvMNtB2l_15shard_in_memoryNtB7e_16MDBInMemoryShard10differences0_0ENCB7b_s1_0EE0E0EB1d_.exit ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bf, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph55
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bb
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !4 ; 3 uses
  %i.bi = lshr i64 %i.bh, 1                       ; 5 uses
  %i.bj = lshr i64 %.sroa.023.153, 1              ; 3 uses
  %i.bk = add nuw i64 %i.bi, %i.bj                ; 5 uses
  %i.bl = sub i64 %.sroa.09.0, %i.bk
  %i.bm = getelementptr inbounds nuw [184 x i8], ptr %0, i64 %i.bl ; 3 uses
  %i.bn = icmp samesign ugt i64 %i.bk, %3
  %i.bo = trunc i64 %.sroa.023.153 to i1
  %i.bp = or i64 %i.bh, %.sroa.023.153
  %i.bq = trunc i64 %i.bp to i1
  %or.cond3.i = or i1 %i.bn, %i.bq
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.br = trunc i64 %i.bh to i1
  br i1 %i.br, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bs = shl nuw nsw i64 %i.bk, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1d_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3h_11collections5btree3mapINtB44_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB57_8adapters3map3MapINtNtB64_6filter6FilterINtB44_4IterB17_B2h_ENCNvMNtB2l_15shard_in_memoryNtB7e_16MDBInMemoryShard10differences0_0ENCB7b_s1_0EE0E0EB1d_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bo, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bt = or i64 %i.bi, 1
  %i.bu = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.bt, i1 true)
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 1
  %i.bx = xor i32 %i.bw, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1c_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3g_11collections5btree3mapINtB43_8BTreeMapB16_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB56_8adapters3map3MapINtNtB63_6filter6FilterINtB43_4IterB16_B2g_ENCNvMNtB2k_15shard_in_memoryNtB7d_16MDBInMemoryShard10differences0_0ENCB7a_s1_0EE0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.bm, i64 noundef range(i64 0, 50127021939428130) %i.bi, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 50127021939428130) %3, i32 noundef %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(184) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18, !inline_history !90
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw [184 x i8], ptr %i.bm, i64 %i.bi
  %i.bz = or i64 %i.bj, 1
  %i.ca = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = xor i32 %i.cc, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1c_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3g_11collections5btree3mapINtB43_8BTreeMapB16_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB56_8adapters3map3MapINtNtB63_6filter6FilterINtB43_4IterB16_B2g_ENCNvMNtB2k_15shard_in_memoryNtB7d_16MDBInMemoryShard10differences0_0ENCB7a_s1_0EE0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.by, i64 noundef range(i64 0, 50127021939428130) %i.bj, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 50127021939428130) %3, i32 noundef %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(184) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18, !inline_history !90
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB14_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB38_11collections5btree3mapINtB3U_8BTreeMapBY_B28_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4W_8adapters3map3MapINtNtB5S_6filter6FilterINtB3U_4IterBY_B28_ENCNvMNtB2c_15shard_in_memoryNtB71_16MDBInMemoryShard10differences0_0ENCB6Y_s1_0EE0E0EB14_(ptr noalias nofree noundef nonnull align 8 %i.bm, i64 noundef range(i64 0, 50127021939428130) %i.bk, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 50127021939428130) %3, i64 noundef %i.bi, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ce = shl nuw nsw i64 %i.bk, 1
  %i.cf = or disjoint i64 %i.ce, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1d_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3h_11collections5btree3mapINtB44_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB57_8adapters3map3MapINtNtB64_6filter6FilterINtB44_4IterB17_B2h_ENCNvMNtB2l_15shard_in_memoryNtB7e_16MDBInMemoryShard10differences0_0ENCB7b_s1_0EE0E0EB1d_.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1d_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB3h_11collections5btree3mapINtB44_8BTreeMapB17_B2h_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB57_8adapters3map3MapINtNtB64_6filter6FilterINtB44_4IterB17_B2h_ENCNvMNtB2l_15shard_in_memoryNtB7e_16MDBInMemoryShard10differences0_0ENCB7b_s1_0EE0E0EB1d_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cf, %bb.x ], [ %i.bs, %bb.t ] ; 2 uses
  %i.cg = icmp ugt i64 %i.bb, 1
  br i1 %i.cg, label %.lr.ph55, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ch = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ci = lshr i64 %.sroa.018.0, 1
  %i.cj = add nuw i64 %i.ci, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.ck = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ck, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cl = or i64 %1, 1
  %i.cm = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1c_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB3g_11collections5btree3mapINtB43_8BTreeMapB16_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB56_8adapters3map3MapINtNtB63_6filter6FilterINtB43_4IterB16_B2g_ENCNvMNtB2k_15shard_in_memoryNtB7d_16MDBInMemoryShard10differences0_0ENCB7a_s1_0EE0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 50127021939428130) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 50127021939428130) %3, i32 noundef %i.cp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(184) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #18, !inline_history !90
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTyTmmEENvYBW_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.df, %bb.z ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dd, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTyTmmEENvYB13_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit
  %.sroa.021.0 = phi i8 [ %i.bw, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTyTmmEENvYB13_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTyTmmEENvYB13_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph78, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 12 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 13 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENvYB12_NtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117), !noalias !118
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119), !noalias !118
  %.val.i.i45 = load i64, ptr %i.p, align 8, !alias.scope !120, !noalias !121, !noundef !4 ; 4 uses
  %.val3.i.i46 = load i64, ptr %i.n, align 8, !alias.scope !122, !noalias !123, !noundef !4 ; 2 uses
  %i.q = icmp eq i64 %.val.i.i45, %.val3.i.i46
  br i1 %i.q, label %_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures.exit53, label %.split

.split:                                           ; preds = %bb.k
  %i.r = icmp ult i64 %.val.i.i45, %.val3.i.i46
  br i1 %i.r, label %.preheader, label %.preheader66

.preheader:                                       ; preds = %_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures.exit53, %.split
  %.not85 = icmp eq i64 %i.m, 2
  br i1 %.not85, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENvYB12_NtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.i, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %.preheader
  %smax88 = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3) ; 2 uses
  br label %.lr.ph72

_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures.exit53: ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val4.i.i48 = load i32, ptr %i.s, align 8, !alias.scope !120, !noalias !121, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %.val5.i.i49 = load i32, ptr %i.u, align 4, !alias.scope !120, !noalias !121
  %.val6.i.i50 = load i32, ptr %i.t, align 8, !alias.scope !122, !noalias !123, !noundef !4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.val7.i.i51 = load i32, ptr %i.v, align 4, !alias.scope !122, !noalias !123
  %i.w = icmp eq i32 %.val4.i.i48, %.val6.i.i50
  %i.x = icmp ult i32 %.val4.i.i48, %.val6.i.i50
  %i.y = icmp ult i32 %.val5.i.i49, %.val7.i.i51
  %.sroa.0.0.i8.i.i52 = select i1 %i.w, i1 %i.y, i1 %i.x
  br i1 %.sroa.0.0.i8.i.i52, label %.preheader, label %.preheader66

.preheader66:                                     ; preds = %_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures.exit53, %.split
  %.not84 = icmp eq i64 %i.m, 2
  br i1 %.not84, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENvYB12_NtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader66
  %smax = tail call i64 @llvm.smax.i64(i64 %i.m, i64 3) ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.val3.i.i37 = phi i64 [ %.val.i.i36, %bb.l ], [ %.val.i.i45, %.lr.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i68 = phi i64 [ %i.am, %bb.l ], [ 2, %.lr.ph.preheader ] ; 5 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i.i68 ; 3 uses
  %i.aa = add nsw i64 %.sroa.01.0.i.i68, -1       ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.m
  tail call void @llvm.assume(i1 %i.ab)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126), !noalias !118
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127), !noalias !118
  %.val.i.i36 = load i64, ptr %i.z, align 8, !alias.scope !128, !noalias !129, !noundef !4 ; 3 uses
  %i.ac = icmp eq i64 %.val.i.i36, %.val3.i.i37
  br i1 %i.ac, label %_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures.exit44, label %.split56

.split56:                                         ; preds = %.lr.ph
  %i.ad = icmp ult i64 %.val.i.i36, %.val3.i.i37
  br i1 %i.ad, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENvYB12_NtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.i, label %bb.l

_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures.exit44: ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.aa ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val4.i.i39 = load i32, ptr %i.af, align 8, !alias.scope !128, !noalias !129, !noundef !4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.val5.i.i40 = load i32, ptr %i.ah, align 4, !alias.scope !128, !noalias !129
  %.val6.i.i41 = load i32, ptr %i.ag, align 8, !alias.scope !130, !noalias !131, !noundef !4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %.val7.i.i42 = load i32, ptr %i.ai, align 4, !alias.scope !130, !noalias !131
  %i.aj = icmp eq i32 %.val4.i.i39, %.val6.i.i41
  %i.ak = icmp ult i32 %.val4.i.i39, %.val6.i.i41
  %i.al = icmp ult i32 %.val5.i.i40, %.val7.i.i42
  %.sroa.0.0.i8.i.i43 = select i1 %i.aj, i1 %i.al, i1 %i.ak
  br i1 %.sroa.0.0.i8.i.i43, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENvYB12_NtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.i, label %bb.l

bb.l:                                             ; preds = %.split56, %_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures.exit44
  %i.am = add nuw nsw i64 %.sroa.01.0.i.i68, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %smax
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENvYB12_NtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.i, label %.lr.ph

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %bb.m
  %.val3.i.i = phi i64 [ %.val.i.i, %bb.m ], [ %.val.i.i45, %.lr.ph72.preheader ] ; 2 uses
  %.sroa.01.1.i.i71 = phi i64 [ %i.ba, %bb.m ], [ 2, %.lr.ph72.preheader ] ; 5 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i.i71 ; 3 uses
  %i.ao = add nsw i64 %.sroa.01.1.i.i71, -1       ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.m
  tail call void @llvm.assume(i1 %i.ap)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134), !noalias !118
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135), !noalias !118
  %.val.i.i = load i64, ptr %i.an, align 8, !alias.scope !136, !noalias !137, !noundef !4 ; 3 uses
  %i.aq = icmp eq i64 %.val.i.i, %.val3.i.i
  br i1 %i.aq, label %_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures.exit, label %.split57

.split57:                                         ; preds = %.lr.ph72
  %i.ar = icmp ult i64 %.val.i.i, %.val3.i.i
  br i1 %i.ar, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENvYB12_NtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.i

_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %.lr.ph72
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.ao ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.val4.i.i = load i32, ptr %i.at, align 8, !alias.scope !136, !noalias !137, !noundef !4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.val5.i.i = load i32, ptr %i.av, align 4, !alias.scope !136, !noalias !137
  %.val6.i.i = load i32, ptr %i.au, align 8, !alias.scope !138, !noalias !139, !noundef !4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %.val7.i.i = load i32, ptr %i.aw, align 4, !alias.scope !138, !noalias !139
  %i.ax = icmp eq i32 %.val4.i.i, %.val6.i.i
  %i.ay = icmp ult i32 %.val4.i.i, %.val6.i.i
  %i.az = icmp ult i32 %.val5.i.i, %.val7.i.i
  %.sroa.0.0.i8.i.i = select i1 %i.ax, i1 %i.az, i1 %i.ay
  br i1 %.sroa.0.0.i8.i.i, label %bb.m, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENvYB12_NtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.i

bb.m:                                             ; preds = %.split57, %_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures.exit
  %i.ba = add nuw nsw i64 %.sroa.01.1.i.i71, 1    ; 2 uses
  %exitcond89.not = icmp eq i64 %i.ba, %smax88
  br i1 %exitcond89.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENvYB12_NtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.i, label %.lr.ph72

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENvYB12_NtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.i: ; preds = %bb.l, %_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures.exit44, %.split56, %bb.m, %_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures.exit, %.split57, %.preheader66, %.preheader
  %.sroa.3.0.i.i = phi i1 [ true, %.preheader ], [ false, %.preheader66 ], [ true, %bb.m ], [ true, %.split57 ], [ true, %_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures.exit ], [ false, %.split56 ], [ false, %_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures.exit44 ], [ false, %bb.l ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader ], [ 2, %.preheader66 ], [ %smax88, %bb.m ], [ %.sroa.01.1.i.i71, %_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures.exit ], [ %.sroa.01.1.i.i71, %.split57 ], [ %smax, %bb.l ], [ %.sroa.01.0.i.i68, %_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures.exit44 ], [ %.sroa.01.0.i.i68, %.split56 ] ; 7 uses
  %i.bb = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.bb)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENvYB12_NtNtB8_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.q, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit

bb.o:                                             ; preds = %bb.i
  %..i34 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0)
  %i.bc = shl nuw nsw i64 %..i34, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTyTmmEENvYB13_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit

bb.p:                                             ; preds = %bb.i
  %..i33 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTyTmmEENvYB15_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #18, !inline_history !113
  %i.bd = shl nuw nsw i64 %..i33, 1
  %i.be = or disjoint i64 %i.bd, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTyTmmEENvYB13_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTyTmmEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i6265 = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ %.sroa.0.0.i.i, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTyTmmEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i ]
  %i.bf = shl nuw nsw i64 %.sroa.0.0.i.i6265, 1
  %i.bg = or disjoint i64 %i.bf, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTyTmmEENvYB13_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit

bb.q:                                             ; preds = %bb.n
  %i.bh = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTyTmmEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.bn, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTyTmmEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bj = xor i64 %.sroa.0.017.i.i, -1
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.017.i.i
  %i.bl = getelementptr [16 x i8], ptr %i.bi, i64 %i.bj
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs31YAwBA1AlL_19xet_core_structures(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, i64 noundef 2)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTyTmmEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i unwind label %bb.r, !noalias !118

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #16, !noalias !118
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTyTmmEEECs31YAwBA1AlL_19xet_core_structures.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bn = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bn, %i.bh
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit, label %.lr.ph.i.i

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTyTmmEENvYB13_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit
  %.sroa.0.0.i32 = phi i64 [ %i.bg, %_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures.exit ], [ %i.be, %bb.p ], [ %i.bc, %bb.o ] ; 2 uses
  %i.bo = lshr i64 %.sroa.023.0, 1
  %i.bp = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bq = sub nsw i64 %factor, %i.bo
  %i.br = add nuw nsw i64 %i.bp, %factor
  %i.bs = mul i64 %i.bq, %.sroa.0.0
  %i.bt = mul i64 %i.br, %.sroa.0.0
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bu, i1 false)
  %i.bw = trunc nuw nsw i64 %i.bv to i8
  br label %bb.g

.lr.ph78:                                         ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTyTmmEENvYB16_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit
  %.sroa.02.177 = phi i64 [ %i.bx, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTyTmmEENvYB16_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.176 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTyTmmEENvYB16_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bx = add i64 %.sroa.02.177, -1               ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noundef !4
  %.not28 = icmp ult i8 %i.bz, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTyTmmEENvYB16_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit, %.lr.ph78, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.176, %.lr.ph78 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTyTmmEENvYB16_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.177, %.lr.ph78 ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTyTmmEENvYB16_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cb, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.s:                                             ; preds = %.lr.ph78
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bx
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !4 ; 3 uses
  %i.ce = lshr i64 %i.cd, 1                       ; 5 uses
  %i.cf = lshr i64 %.sroa.023.176, 1              ; 3 uses
  %i.cg = add nuw i64 %i.ce, %i.cf                ; 5 uses
  %i.ch = sub i64 %.sroa.09.0, %i.cg
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ch ; 3 uses
  %i.cj = icmp samesign ugt i64 %i.cg, %3
  %i.ck = trunc i64 %.sroa.023.176 to i1
  %i.cl = or i64 %i.cd, %.sroa.023.176
  %i.cm = trunc i64 %i.cl to i1
  %or.cond3.i = or i1 %i.cj, %i.cm
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cn = trunc i64 %i.cd to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.co = shl nuw nsw i64 %i.cg, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTyTmmEENvYB16_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ck, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cp = or i64 %i.ce, 1
  %i.cq = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTyTmmEENvYB15_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 576460752303423488) %i.ce, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #18, !inline_history !114
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.ce
  %i.cv = or i64 %i.cf, 1
  %i.cw = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = xor i32 %i.cy, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTyTmmEENvYB15_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 %i.cu, i64 noundef range(i64 0, 576460752303423488) %i.cf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #18, !inline_history !114
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTyTmmEENvYBX_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 576460752303423488) %i.cg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.ce, ptr noalias nofree noundef nonnull %5)
  %i.da = shl nuw nsw i64 %i.cg, 1
  %i.db = or disjoint i64 %i.da, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTyTmmEENvYB16_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeTyTmmEENvYB16_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.u, %bb.y
  %.sroa.0.0.i = phi i64 [ %i.db, %bb.y ], [ %i.co, %bb.u ] ; 2 uses
  %i.dc = icmp ugt i64 %i.bx, 1
  br i1 %i.dc, label %.lr.ph78, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.dd = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.de = lshr i64 %.sroa.018.0, 1
  %i.df = add nuw i64 %i.de, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.dg = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dg, 0
  br i1 %.not30, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dh = or i64 %1, 1
  %i.di = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true)
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = xor i32 %i.dk, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTyTmmEENvYB15_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.dl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #18, !inline_history !114
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1c_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2l_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2l_11collections5btree3mapINtB4m_8BTreeMapB16_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5p_8adapters3map3MapINtNtB6m_6filter6FilterINtB4m_4IterB16_B2g_ENCNvMNtB2S_15shard_in_memoryNtB7w_16MDBInMemoryShard10difference0ENCB7t_s_0EE0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph94 = phi ptr [ %i.cm, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph93 = phi i64 [ %i.bx, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph92 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph91 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph94 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph91, null
  %i.d = icmp eq i32 %.sroa.025.0.ph92, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph217

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE12split_at_mutBB_.exit
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph217

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE12split_at_mutBB_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa85 = phi ptr [ %i.by, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph94, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE12split_at_mutBB_.exit ], [ %i.cm, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE12split_at_mutBB_.exit ], [ %i.bx, %.outer ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1z_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2I_5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB2I_11collections5btree3mapINtB4J_8BTreeMapB1t_B2D_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB5M_8adapters3map3MapINtNtB6J_6filter6FilterINtB4J_4IterB1t_B2D_ENCNvMNtB3f_15shard_in_memoryNtB7T_16MDBInMemoryShard10difference0ENCB7Q_s_0EE0E0EB1z_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa85, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.087.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph93, %.lr.ph ]
  call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB13_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2c_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB2c_11collections5btree3mapINtB4c_8BTreeMapBX_B27_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB5e_8adapters3map3MapINtNtB6a_6filter6FilterINtB4c_4IterBX_B27_ENCNvMNtB2J_15shard_in_memoryNtB7j_16MDBInMemoryShard10difference0ENCB7g_s_0EE0E0EB13_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph94, i64 noundef %.sroa.16.087.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash19merkle_hash_subtreeNtB5_17MerkleHashSubtreeNtNtCskKLDkoKarTP_4core5clone5Clone5clone:bb.a
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.k:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortTRyRTmmEENCINvMB8_SB17_20sort_unstable_by_keyB18_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB23_12MDBShardInfo26convert_and_save_xorb_infoINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0EB27_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16), i32 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortTRyRTmmEENCINvMB8_SB17_20sort_unstable_by_keyB18_NCINvMs2_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12shard_formatNtB23_12MDBShardInfo26convert_and_save_xorb_infoINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterQINtNtNtB27_10merklehash9data_hash11HashedWriteNtNtCsG258MDvU3F_3std2fs4FileEEE0E0EB27_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16), i32 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortTyTmmEENCINvMB8_SB17_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEINtNtB3n_9bufwriter9BufWriterQINtNtNtB1Y_10merklehash9data_hash11HashedWriteB4h_EEEs2_0E0EB1Y_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16), i32 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortjNvYjNtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8), i32 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1b_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2k_5sliceSB14_7sort_byNCINvXs1o_NtNtNtB2k_11collections5btree3mapINtB4l_8BTreeMapB15_B2f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB5o_8adapters3map3MapINtNtB6l_6filter6FilterINtB4l_4IterB15_B2f_ENCNvMNtB2R_15shard_in_memoryNtB7v_16MDBInMemoryShard10difference0ENCB7s_s_0EE0E0EB1b_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1b_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_7sort_byNCINvXs1o_NtNtNtB3f_11collections5btree3mapINtB42_8BTreeMapB15_B2f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB55_8adapters3map3MapINtNtB62_6filter6FilterINtB42_4IterB15_B2f_ENCNvMNtB2j_15shard_in_memoryNtB7c_16MDBInMemoryShard10differences0_0ENCB79_s1_0EE0E0EB1b_(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTyTmmEENvYB14_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB14_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2d_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB2d_11collections5btree3mapINtB4d_8BTreeMapBY_B28_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB5f_8adapters3map3MapINtNtB6b_6filter6FilterINtB4d_4IterBY_B28_ENCNvMNtB2K_15shard_in_memoryNtB7k_16MDBInMemoryShard10difference0ENCB7h_s_0EE0E0EB14_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB14_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB38_11collections5btree3mapINtB3U_8BTreeMapBY_B28_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4W_8adapters3map3MapINtNtB5S_6filter6FilterINtB3U_4IterBY_B28_ENCNvMNtB2c_15shard_in_memoryNtB71_16MDBInMemoryShard10differences0_0ENCB6Y_s1_0EE0E0EB14_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 50127021939428130), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 50127021939428130), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeTyTmmEENvYBX_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), i64 noundef, ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1z_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2I_5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB2I_11collections5btree3mapINtB4J_8BTreeMapB1t_B2D_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB5M_8adapters3map3MapINtNtB6J_6filter6FilterINtB4J_4IterB1t_B2D_ENCNvMNtB3f_15shard_in_memoryNtB7T_16MDBInMemoryShard10difference0ENCB7Q_s_0EE0E0EB1z_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 230584300921369396), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1z_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB3D_11collections5btree3mapINtB4q_8BTreeMapB1t_B2D_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB5t_8adapters3map3MapINtNtB6q_6filter6FilterINtB4q_4IterB1t_B2D_ENCNvMNtB2H_15shard_in_memoryNtB7A_16MDBInMemoryShard10differences0_0ENCB7x_s1_0EE0E0EB1z_(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 50127021939428130), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 50127021939428130), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTyTmmEENvYB1s_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 2) i8 @_RNvXs9_NtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hashNtB5_8DataHashNtNtCskKLDkoKarTP_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs31YAwBA1AlL_19xet_core_structures(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB5_22XorbChunkSequenceEntry3newjjEB9_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2U_5slice4iter4IterNtNtNtB1a_11xorb_object5chunk5ChunkENCNvMNtB44_13raw_xorb_dataNtB4F_11RawXorbData11from_chunks0EE9from_iterB1a_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structsNtB3_23XorbChunkSequenceHeader3newjjEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE7reserveBL_(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTjjEE7reserveCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCslc8SwK8fohf_5bytes5bytes5BytesE8grow_oneCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard12xorb_structs22XorbChunkSequenceEntryE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE8grow_oneBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCs8rVFV1hdcx_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsUrhh0HcRih_5tokio(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs31YAwBA1AlL_19xet_core_structures(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE6resizeBM_(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash26compute_internal_node_hash(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtNtCsUrhh0HcRih_5tokio7runtime4task5error9JoinErrorNtB6_5Debug3fmtCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCsarFSTFZzLuM_11xet_runtime5utils12rw_task_lockNtB5_15RwTaskLockErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBM_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjjEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs31YAwBA1AlL_19xet_core_structures(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs31YAwBA1AlL_19xet_core_structures(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { cold }
attributes #18 = { noinline }
attributes #19 = { noinline noreturn }
attributes #20 = { noreturn }
attributes #21 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{i64 8}
!6 = !{!"llvm.loop.isvectorized", i32 1}
!7 = !{!"llvm.loop.unroll.runtime.disable"}
!8 = !{!"branch_weights", i32 4001, i32 4000000}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{i64 0, i64 2}
!11 = !{i64 0, i64 -9223372036854775807}
!12 = !{i64 0, i64 -9223372036854775808}
!13 = !{i8 0, i8 2}
!14 = distinct !{!14, !"_RNvXs12_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_10PartialOrd2lt"}
!15 = distinct !{!15, !14, !"_RNvXs12_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 0"}
!16 = distinct !{!16, !14, !"_RNvXs12_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 1"}
!17 = distinct !{!17, !"_RNvXs12_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_10PartialOrd2lt"}
!18 = distinct !{!18, !17, !"_RNvXs12_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 0"}
!19 = distinct !{!19, !17, !"_RNvXs12_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 1"}
!20 = distinct !{!20, !"_RNvXs12_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_10PartialOrd2lt"}
!21 = distinct !{!21, !20, !"_RNvXs12_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 0"}
!22 = distinct !{!22, !20, !"_RNvXs12_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 1"}
!23 = distinct !{!23, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures"}
!24 = distinct !{!24, !23, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!25 = distinct !{!25, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTRyRTmmEEECs31YAwBA1AlL_19xet_core_structures"}
!26 = distinct !{!26, !25, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTRyRTmmEEECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!27 = distinct !{!27, !25, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTRyRTmmEEECs31YAwBA1AlL_19xet_core_structures: argument 1"}
!28 = !{!15}
!29 = !{!16}
!30 = !{!18}
!31 = !{!19}
!32 = !{!21}
!33 = !{!22}
!34 = !{!26, !24}
!35 = !{!27}
!36 = !{!26, !27, !24}
!37 = !{!27, !24}
!38 = !{!26}
!39 = distinct !{!39, !"_RNvXs12_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_10PartialOrd2lt"}
!40 = distinct !{!40, !39, !"_RNvXs12_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 0"}
!41 = distinct !{!41, !39, !"_RNvXs12_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 1"}
!42 = distinct !{!42, !"_RNvXs12_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_10PartialOrd2lt"}
!43 = distinct !{!43, !42, !"_RNvXs12_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 0"}
!44 = distinct !{!44, !42, !"_RNvXs12_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 1"}
!45 = distinct !{!45, !"_RNvXs12_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_10PartialOrd2lt"}
!46 = distinct !{!46, !45, !"_RNvXs12_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 0"}
!47 = distinct !{!47, !45, !"_RNvXs12_NtNtCskKLDkoKarTP_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 1"}
!48 = distinct !{!48, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures"}
!49 = distinct !{!49, !48, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTRyRTmmEE7reverseCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!50 = distinct !{!50, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTRyRTmmEEECs31YAwBA1AlL_19xet_core_structures"}
!51 = distinct !{!51, !50, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTRyRTmmEEECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!52 = distinct !{!52, !50, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapTRyRTmmEEECs31YAwBA1AlL_19xet_core_structures: argument 1"}
!53 = !{!40}
!54 = !{!41}
!55 = !{!43}
!56 = !{!44}
!57 = !{!46}
!58 = !{!47}
!59 = !{!51, !49}
!60 = !{!52}
!61 = !{!51, !52, !49}
!62 = !{!52, !49}
!63 = !{!51}
!64 = distinct !{!64, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt"}
!65 = distinct !{!65, !64, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 0"}
!66 = distinct !{!66, !64, !"_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt: argument 1"}
!67 = distinct !{!67, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapjECs31YAwBA1AlL_19xet_core_structures"}
!68 = distinct !{!68, !67, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapjECs31YAwBA1AlL_19xet_core_structures: argument 0"}
!69 = distinct !{!69, !67, !"_RINvNvMNtCskKLDkoKarTP_4core5sliceSp7reverse7revswapjECs31YAwBA1AlL_19xet_core_structures: argument 1"}
!70 = distinct !{!70, !"_RNvMNtCskKLDkoKarTP_4core5sliceSj7reverseCs31YAwBA1AlL_19xet_core_structures"}
!71 = distinct !{!71, !70, !"_RNvMNtCskKLDkoKarTP_4core5sliceSj7reverseCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!72 = distinct !{!72, !6, !7}
!73 = distinct !{!73, !7, !6}
!74 = !{!65}
!75 = !{!66}
!76 = !{!68}
!77 = !{!69}
!78 = !{!68, !71}
!79 = !{!69, !71}
!80 = distinct !{!80, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1a_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2j_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2j_11collections5btree3mapINtB4k_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5n_8adapters3map3MapINtNtB6k_6filter6FilterINtB4k_4IterB14_B2e_ENCNvMNtB2Q_15shard_in_memoryNtB7u_16MDBInMemoryShard10difference0ENCB7r_s_0EE0E0EB1a_"}
!81 = distinct !{!81, !80, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1a_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2j_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2j_11collections5btree3mapINtB4k_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5n_8adapters3map3MapINtNtB6k_6filter6FilterINtB4k_4IterB14_B2e_ENCNvMNtB2Q_15shard_in_memoryNtB7u_16MDBInMemoryShard10difference0ENCB7r_s_0EE0E0EB1a_: argument 2"}
!82 = distinct !{!82, !80, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1a_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2j_5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2j_11collections5btree3mapINtB4k_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB5n_8adapters3map3MapINtNtB6k_6filter6FilterINtB4k_4IterB14_B2e_ENCNvMNtB2Q_15shard_in_memoryNtB7u_16MDBInMemoryShard10difference0ENCB7r_s_0EE0E0EB1a_: argument 1"}
!83 = distinct !{null}
!84 = distinct !{null}
!85 = !{!82, !81}
!86 = distinct !{!86, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3e_11collections5btree3mapINtB41_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB54_8adapters3map3MapINtNtB61_6filter6FilterINtB41_4IterB14_B2e_ENCNvMNtB2i_15shard_in_memoryNtB7b_16MDBInMemoryShard10differences0_0ENCB78_s1_0EE0E0EB1a_"}
!87 = distinct !{!87, !86, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3e_11collections5btree3mapINtB41_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB54_8adapters3map3MapINtNtB61_6filter6FilterINtB41_4IterB14_B2e_ENCNvMNtB2i_15shard_in_memoryNtB7b_16MDBInMemoryShard10differences0_0ENCB78_s1_0EE0E0EB1a_: argument 2"}
!88 = distinct !{!88, !86, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashNtNtNtB1a_14metadata_shard12file_structs11MDBFileInfoENCINvMNtCsexYYUdYSQU6_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB3e_11collections5btree3mapINtB41_8BTreeMapB14_B2e_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB54_8adapters3map3MapINtNtB61_6filter6FilterINtB41_4IterB14_B2e_ENCNvMNtB2i_15shard_in_memoryNtB7b_16MDBInMemoryShard10differences0_0ENCB78_s1_0EE0E0EB1a_: argument 1"}
!89 = distinct !{null}
!90 = distinct !{null}
!91 = !{!88, !87}
!92 = distinct !{!92, !"_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures"}
!93 = distinct !{!93, !92, !"_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!94 = distinct !{!94, !92, !"_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures: argument 1"}
!95 = distinct !{!95, !"_RNvXsc_NtCskKLDkoKarTP_4core5tupleTyTmmEENtNtB7_3cmp10PartialOrd2ltCs31YAwBA1AlL_19xet_core_structures"}
!96 = distinct !{!96, !95, !"_RNvXsc_NtCskKLDkoKarTP_4core5tupleTyTmmEENtNtB7_3cmp10PartialOrd2ltCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!97 = distinct !{!97, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTyTmmEENvYB13_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures"}
!98 = distinct !{!98, !97, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTyTmmEENvYB13_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures: argument 2"}
!99 = distinct !{!99, !97, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift10create_runTyTmmEENvYB13_NtNtBa_3cmp10PartialOrd2ltECs31YAwBA1AlL_19xet_core_structures: argument 1"}
!100 = distinct !{!100, !95, !"_RNvXsc_NtCskKLDkoKarTP_4core5tupleTyTmmEENtNtB7_3cmp10PartialOrd2ltCs31YAwBA1AlL_19xet_core_structures: argument 1"}
!101 = distinct !{!101, !"_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures"}
!102 = distinct !{!102, !101, !"_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!103 = distinct !{!103, !101, !"_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures: argument 1"}
!104 = distinct !{!104, !"_RNvXsc_NtCskKLDkoKarTP_4core5tupleTyTmmEENtNtB7_3cmp10PartialOrd2ltCs31YAwBA1AlL_19xet_core_structures"}
!105 = distinct !{!105, !104, !"_RNvXsc_NtCskKLDkoKarTP_4core5tupleTyTmmEENtNtB7_3cmp10PartialOrd2ltCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!106 = distinct !{!106, !104, !"_RNvXsc_NtCskKLDkoKarTP_4core5tupleTyTmmEENtNtB7_3cmp10PartialOrd2ltCs31YAwBA1AlL_19xet_core_structures: argument 1"}
!107 = distinct !{!107, !"_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures"}
!108 = distinct !{!108, !107, !"_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!109 = distinct !{!109, !107, !"_RNvYNvYTyTmmEENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBg_3ops8function5FnMutTRB5_B1m_EE8call_mutCs31YAwBA1AlL_19xet_core_structures: argument 1"}
!110 = distinct !{!110, !"_RNvXsc_NtCskKLDkoKarTP_4core5tupleTyTmmEENtNtB7_3cmp10PartialOrd2ltCs31YAwBA1AlL_19xet_core_structures"}
!111 = distinct !{!111, !110, !"_RNvXsc_NtCskKLDkoKarTP_4core5tupleTyTmmEENtNtB7_3cmp10PartialOrd2ltCs31YAwBA1AlL_19xet_core_structures: argument 0"}
!112 = distinct !{!112, !110, !"_RNvXsc_NtCskKLDkoKarTP_4core5tupleTyTmmEENtNtB7_3cmp10PartialOrd2ltCs31YAwBA1AlL_19xet_core_structures: argument 1"}
!113 = distinct !{null}
!114 = distinct !{null}
!115 = !{!93}
!116 = !{!94}
!117 = !{!96}
!118 = !{!99, !98}
!119 = !{!100}
!120 = !{!96, !93}
!121 = !{!100, !94, !99, !98}
!122 = !{!100, !94}
!123 = !{!96, !93, !99, !98}
!124 = !{!102}
!125 = !{!103}
!126 = !{!105}
!127 = !{!106}
!128 = !{!105, !102}
!129 = !{!106, !103, !99, !98}
!130 = !{!106, !103}
!131 = !{!105, !102, !99, !98}
!132 = !{!108}
!133 = !{!109}
!134 = !{!111}
!135 = !{!112}
!136 = !{!111, !108}
!137 = !{!112, !109, !99, !98}
!138 = !{!112, !109}
!139 = !{!111, !108, !99, !98}
!140 = distinct !{!140, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1c_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2l_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2l_11collections5btree3mapINtB4m_8BTreeMapB16_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5p_8adapters3map3MapINtNtB6m_6filter6FilterINtB4m_4IterB16_B2g_ENCNvMNtB2S_15shard_in_memoryNtB7w_16MDBInMemoryShard10difference0ENCB7t_s_0EE0E0EB1c_"}
!141 = distinct !{!141, !140, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot12choose_pivotTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1c_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2l_5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2l_11collections5btree3mapINtB4m_8BTreeMapB16_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB5p_8adapters3map3MapINtNtB6m_6filter6FilterINtB4m_4IterB16_B2g_ENCNvMNtB2S_15shard_in_memoryNtB7w_16MDBInMemoryShard10difference0ENCB7t_s_0EE0E0EB1c_: argument 1"}
!142 = distinct !{!142, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1k_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2t_5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2t_11collections5btree3mapINtB4u_8BTreeMapB1e_B2o_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB5x_8adapters3map3MapINtNtB6u_6filter6FilterINtB4u_4IterB1e_B2o_ENCNvMNtB30_15shard_in_memoryNtB7E_16MDBInMemoryShard10difference0ENCB7B_s_0EE0E0EB1k_"}
!143 = distinct !{!143, !142, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1k_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2t_5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2t_11collections5btree3mapINtB4u_8BTreeMapB1e_B2o_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB5x_8adapters3map3MapINtNtB6u_6filter6FilterINtB4u_4IterB1e_B2o_ENCNvMNtB30_15shard_in_memoryNtB7E_16MDBInMemoryShard10difference0ENCB7B_s_0EE0E0EB1k_: argument 1"}
!144 = distinct !{!144, !142, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1k_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvMNtB2t_5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2t_11collections5btree3mapINtB4u_8BTreeMapB1e_B2o_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB5x_8adapters3map3MapINtNtB6u_6filter6FilterINtB4u_4IterB1e_B2o_ENCNvMNtB30_15shard_in_memoryNtB7E_16MDBInMemoryShard10difference0ENCB7B_s_0EE0E0EB1k_: argument 0"}
!145 = distinct !{!145, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1o_14metadata_shard12xorb_structs11MDBXorbInfoEEE13partition_oneB1o_"}
!146 = distinct !{!146, !145, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1o_14metadata_shard12xorb_structs11MDBXorbInfoEEE13partition_oneB1o_: argument 0"}
!147 = distinct !{!147, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1o_14metadata_shard12xorb_structs11MDBXorbInfoEEE13partition_oneB1o_"}
!148 = distinct !{!148, !147, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1o_14metadata_shard12xorb_structs11MDBXorbInfoEEE13partition_oneB1o_: argument 0"}
!149 = distinct !{!149, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE12split_at_mutBB_"}
!150 = distinct !{!150, !149, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE12split_at_mutBB_: argument 1"}
!151 = distinct !{!151, !149, !"_RNvMNtCskKLDkoKarTP_4core5sliceSTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBB_14metadata_shard12xorb_structs11MDBXorbInfoEE12split_at_mutBB_: argument 0"}
!152 = distinct !{!152, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1k_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvB2_9quicksortB1d_NCINvMNtB2t_5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2t_11collections5btree3mapINtB4Q_8BTreeMapB1e_B2o_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB5T_8adapters3map3MapINtNtB6Q_6filter6FilterINtB4Q_4IterB1e_B2o_ENCNvMNtB30_15shard_in_memoryNtB80_16MDBInMemoryShard10difference0ENCB7X_s_0EE0E0E0EB1k_"}
!153 = distinct !{!153, !152, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1k_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvB2_9quicksortB1d_NCINvMNtB2t_5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2t_11collections5btree3mapINtB4Q_8BTreeMapB1e_B2o_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB5T_8adapters3map3MapINtNtB6Q_6filter6FilterINtB4Q_4IterB1e_B2o_ENCNvMNtB30_15shard_in_memoryNtB80_16MDBInMemoryShard10difference0ENCB7X_s_0EE0E0E0EB1k_: argument 1"}
!154 = distinct !{!154, !152, !"_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort16stable_partitionTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1k_14metadata_shard12xorb_structs11MDBXorbInfoEENCINvB2_9quicksortB1d_NCINvMNtB2t_5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2t_11collections5btree3mapINtB4Q_8BTreeMapB1e_B2o_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB5T_8adapters3map3MapINtNtB6Q_6filter6FilterINtB4Q_4IterB1e_B2o_ENCNvMNtB30_15shard_in_memoryNtB80_16MDBInMemoryShard10difference0ENCB7X_s_0EE0E0E0EB1k_: argument 0"}
!155 = distinct !{!155, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1o_14metadata_shard12xorb_structs11MDBXorbInfoEEE13partition_oneB1o_"}
!156 = distinct !{!156, !155, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1o_14metadata_shard12xorb_structs11MDBXorbInfoEEE13partition_oneB1o_: argument 0"}
!157 = distinct !{!157, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1o_14metadata_shard12xorb_structs11MDBXorbInfoEEE13partition_oneB1o_"}
!158 = distinct !{!158, !157, !"_RNvMNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB1o_14metadata_shard12xorb_structs11MDBXorbInfoEEE13partition_oneB1o_: argument 0"}
!159 = !{!141}
!160 = !{!143}
!161 = !{!144, !143}
!162 = !{!146}
!163 = !{!148}
!164 = !{!151, !150}
!165 = !{!153}
!166 = !{!154, !153}
!167 = !{!156}
!168 = !{!158}
end_hunk_1
