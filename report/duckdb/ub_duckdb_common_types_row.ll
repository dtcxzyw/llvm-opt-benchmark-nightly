Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common_types_row?download=true
inline.NumInlined: 10729
inline.NumDeleted: 3679
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 254
loop-unroll.NumUnrolled: 260
begin_hunk_0_@_ZN6duckdb14TupleDataChunk7AddPartERNS_16TupleDataSegmentENS_10unique_ptrINS_18TupleDataChunkPartENS_13arena_deleterIS4_EELb0EEE:bb.a

bb.j:                                             ; preds = %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit11
  %i.be = load i64, ptr %2, align 8, !tbaa !534
  store i64 %i.be, ptr %i.ao, align 8, !tbaa !534
  store ptr null, ptr %2, align 8, !tbaa !534
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.bf, ptr %i.an, align 8, !tbaa !620
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

bb.k:                                             ; preds = %_ZN6duckdb15ContinuousIdSet6InsertERKj.exit11
  %i.bg = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.bg, label %bb.l, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i, %i.at ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %i.at
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975)
  %i.bk = select i1 %i.bi, i64 1152921504606846975, i64 %i.bj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bl = shl nuw nsw i64 %i.bk, 3
  %i.bm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #29 ; 10 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.as
  %i.bo = load i64, ptr %2, align 8, !tbaa !534
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !534
  store ptr null, ptr %2, align 8, !tbaa !534
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bp = add i64 %i.aq, -8
  %i.bq = sub i64 %i.bp, %i.ar                    ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bq, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader22, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.bt = add i64 %i.aq, -8
  %i.bu = sub i64 %i.bt, %i.ar
  %i.bv = and i64 %i.bu, -8
  %i.bw = add i64 %i.bv, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bm, i64 %i.bw
  %scevgep18 = getelementptr i8, ptr %i.ap, i64 %i.bw
  %bound0 = icmp ult ptr %i.bm, %scevgep18
  %bound1 = icmp ult ptr %i.ap, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bs, 4611686018427387900     ; 3 uses
  %i.bx = shl i64 %n.vec, 3                       ; 2 uses
  %i.by = getelementptr i8, ptr %i.bm, i64 %i.bx  ; 2 uses
  %i.bz = getelementptr i8, ptr %i.ap, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bm, i64 %i.ca ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.ap, i64 %i.ca ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.cb = getelementptr i8, ptr %next.gep19, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep19, align 8, !tbaa !534, !alias.scope !627, !noalias !622
  %wide.load20 = load <2 x i64>, ptr %i.cb, align 8, !tbaa !534, !alias.scope !627, !noalias !622
  %i.cc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !534, !alias.scope !630, !noalias !627
  store <2 x i64> %wide.load20, ptr %i.cc, align 8, !tbaa !534, !alias.scope !630, !noalias !627
  %i.cd = getelementptr i8, ptr %next.gep19, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep19, align 8, !tbaa !534, !alias.scope !627, !noalias !622
  store <2 x ptr> splat (ptr null), ptr %i.cd, align 8, !tbaa !534, !alias.scope !627, !noalias !622
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !632

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader22

.lr.ph.i.i.i.i.i.i.preheader22:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bm, %vector.memcheck ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.by, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader22, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader22 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader22 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.cf = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !534, !alias.scope !625, !noalias !622
  store i64 %i.cf, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !534, !alias.scope !622, !noalias !625
  store ptr null, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !534, !alias.scope !625, !noalias !622
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cg, %i.ao
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !633

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bm, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.by, %middle.block ], [ %i.ch, %.lr.ph.i.i.i.i.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ap) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i
  store ptr %i.bm, ptr %i.am, align 8, !tbaa !533
  store ptr %i.ci, ptr %i.an, align 8, !tbaa !620
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.cj, ptr %i.bc, align 8, !tbaa !621
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %bb.j, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18TupleDataChunkPartENS0_13arena_deleterIS2_EELb0EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18TupleDataAllocator14BuildChunkPartERNS_16TupleDataSegmentERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmmRNS_14TupleDataChunkE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.325") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull align 8 dereferenceable(488) %4, i64 noundef %5, i64 noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_14ArenaAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !634
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.d = tail call noundef ptr @_ZN6duckdb14ArenaAllocator15AllocateAlignedEm(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 48), !noalias !635 ; 17 uses
  tail call void @_ZN6duckdb18TupleDataChunkPartC1ERSt5mutex(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.c), !noalias !635
  store ptr %i.d, ptr %0, align 8, !tbaa !534, !alias.scope !635
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !472, !nonnull !60, !align !61 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i64 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !638  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !638  ; 3 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = getelementptr i8, ptr %i.l, i64 %i.r     ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !498
  %i.v = getelementptr i8, ptr %i.s, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !504
  %i.x = sub i64 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !528, !nonnull !60, !align !61
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !289
  %i.ac = icmp ult i64 %i.x, %i.ab
  br i1 %i.ac, label %bb.c, label %_ZN6duckdb11NumericCastIjmvEET_T0_.exit83

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6duckdb18TupleDataAllocator14CreateRowBlockERNS_16TupleDataSegmentE(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(192) %2)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !240
  %.not92 = icmp eq i64 %i.ae, -1
  %.pre104 = load ptr, ptr %i.m, align 8, !tbaa !511 ; 2 uses
  %.pre106 = load ptr, ptr %i.k, align 8, !tbaa !510 ; 3 uses
  br i1 %.not92, label %_ZN6duckdb11NumericCastIjmvEET_T0_.exit83, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = ptrtoint ptr %.pre104 to i64
  %i.ag = ptrtoint ptr %.pre106 to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr i8, ptr %.pre106, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 -32
  %i.ak = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !515, !nonnull !60, !align !61
  %i.an = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) ; 3 uses
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = lshr i64 %i.an, 1
  %i.ap = or i64 %i.ao, %i.an                     ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = or i64 %i.aq, %i.ap                     ; 2 uses
  %i.as = lshr i64 %i.ar, 4
  %i.at = or i64 %i.as, %i.ar                     ; 2 uses
  %i.au = lshr i64 %i.at, 8
  %i.av = or i64 %i.au, %i.at                     ; 2 uses
  %i.aw = lshr i64 %i.av, 16
  %i.ax = or i64 %i.aw, %i.av                     ; 2 uses
  %i.ay = lshr i64 %i.ax, 32
  %i.az = or i64 %i.ay, %i.ax
  %i.ba = mul i64 %i.az, 285870213051386505
  %i.bb = lshr i64 %i.ba, 55
  %.0..sroa_stride.i.i = and i64 %i.bb, 504
  %.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr @__const._ZN6duckdb10CountZerosImE7LeadingEm.index64msb, i64 %.0..sroa_stride.i.i
  %i.bc = load i64, ptr %.0..sroa_idx.i.i, align 8, !tbaa !92
  %i.bd = add i64 %i.bc, 1
  br label %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit

_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit: ; preds = %bb.e, %bb.d
  %.0.i.neg.i = phi i64 [ %i.bd, %bb.e ], [ 0, %bb.d ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.am, i64 168
  store atomic i64 %.0.i.neg.i, ptr %i.be seq_cst, align 8
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !511
  %.pre105 = load ptr, ptr %i.k, align 8, !tbaa !510
  br label %_ZN6duckdb11NumericCastIjmvEET_T0_.exit83

_ZN6duckdb11NumericCastIjmvEET_T0_.exit83:        ; preds = %bb.c, %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit, %bb.b
  %i.bf = phi ptr [ %.pre106, %bb.c ], [ %.pre105, %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit ], [ %i.l, %bb.b ]
  %i.bg = phi ptr [ %.pre104, %bb.c ], [ %.pre, %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit ], [ %i.n, %bb.b ]
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 5
  %i.bl = add nsw i64 %i.bk, -1
  %i.bm = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.bl) ; 2 uses
  store i32 %i.bm, ptr %i.d, align 8, !tbaa !536
  %i.bn = zext i32 %i.bm to i64
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !510
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bn ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 4 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !504
  %i.bs = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.br)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !545
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !528, !nonnull !60, !align !61
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !289
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !498
  %i.ca = load i64, ptr %i.bq, align 8, !tbaa !504
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = udiv i64 %i.cb, %i.bx
  %i.cd = tail call noundef i64 @llvm.umin.i64(i64 %i.cc, i64 %6)
  %i.ce = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.cd) ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 4 uses
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !546
  %i.cg = load ptr, ptr %i.bu, align 8, !tbaa !528, !nonnull !60, !align !61
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 152
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !145, !range !175, !noundef !60
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.r, label %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit

_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit: ; preds = %_ZN6duckdb11NumericCastIjmvEET_T0_.exit83
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 256
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ck)
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 288
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !176 ; 6 uses
  %i.cn = load i32, ptr %i.cf, align 8, !tbaa !546 ; 5 uses
  %i.co = zext i32 %i.cn to i64                   ; 4 uses
  %.not100 = icmp eq i32 %i.cn, 0
  br i1 %.not100, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit
  %i.cp = getelementptr [8 x i8], ptr %i.cm, i64 %5 ; 2 uses
  %min.iters.check = icmp ult i32 %i.cn, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.co, 4294967292              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cs, %vector.body ]
  %vec.phi137 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ct, %vector.body ]
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %index ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 16
  %wide.load = load <2 x i64>, ptr %i.cq, align 8, !tbaa !92
  %wide.load138 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !92
  %i.cs = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.ct = add <2 x i64> %wide.load138, %vec.phi137 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !639

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ct, %i.cs
  %i.cv = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.co
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.06996.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.07095.ph = phi i64 [ 0, %.lr.ph ], [ %i.cv, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i64 [ %i.cv, %middle.block ], [ %i.cz, %scalar.ph ] ; 3 uses
  %i.cw = icmp eq i64 %.lcssa, 0
  br i1 %i.cw, label %._crit_edge.thread, label %bb.f

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.06996 = phi i64 [ %i.da, %scalar.ph ], [ %.06996.ph, %scalar.ph.preheader ] ; 2 uses
  %.07095 = phi i64 [ %i.cz, %scalar.ph ], [ %.07095.ph, %scalar.ph.preheader ]
  %i.cx = getelementptr [8 x i8], ptr %i.cp, i64 %.06996
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !92
  %i.cz = add i64 %i.cy, %.07095                  ; 2 uses
  %i.da = add nuw nsw i64 %.06996, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.da, %i.co
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !640

._crit_edge.thread:                               ; preds = %_ZN6duckdb10FlatVector7GetDataImEEPT_RNS_6VectorE.exit, %._crit_edge
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 -1, ptr %i.db, align 8, !tbaa !641
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 -1, ptr %i.dc, align 4, !tbaa !642
  %i.dd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i8 0, i64 16, i1 false)
  br label %bb.r

bb.f:                                             ; preds = %._crit_edge
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 5 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !638 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !638 ; 2 uses
  %i.di = icmp eq ptr %i.df, %i.dh
  br i1 %i.di, label %._crit_edge107, label %bb.g

._crit_edge107:                                   ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %5
  %.pre108 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !92
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.df to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = getelementptr i8, ptr %i.df, i64 %i.dl  ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 -16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !498
  %i.dp = getelementptr i8, ptr %i.dm, i64 -8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !504
  %i.dr = sub i64 %i.do, %i.dq                    ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %5
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !92 ; 2 uses
  %.not = icmp ult i64 %i.dr, %i.dt
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge107, %bb.g
  %i.du = phi i64 [ %.pre108, %._crit_edge107 ], [ %i.dt, %bb.g ]
  %i.dv = tail call noundef i64 @llvm.umax.i64(i64 %i.j, i64 %i.du)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.068 = phi i64 [ %i.dv, %bb.h ], [ %i.dr, %bb.g ] ; 2 uses
  %.not77 = icmp ugt i64 %.lcssa, %.068
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  br i1 %.not77, label %.lr.ph99, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.i
  store i64 %.lcssa, ptr %i.dw, align 8, !tbaa !569
  br label %bb.m

.lr.ph99:                                         ; preds = %bb.i
  store i64 0, ptr %i.dw, align 8, !tbaa !569
  %i.dx = getelementptr [8 x i8], ptr %i.cm, i64 %5
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph99, %bb.k
  %i.dy = phi i64 [ 0, %.lr.ph99 ], [ %i.eb, %bb.k ]
  %.06797 = phi i64 [ 0, %.lr.ph99 ], [ %i.ed, %bb.k ] ; 3 uses
  %i.dz = getelementptr [8 x i8], ptr %i.dx, i64 %.06797
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !92
  %i.eb = add i64 %i.ea, %i.dy                    ; 4 uses
  %.not78 = icmp ugt i64 %i.eb, %.068
  br i1 %.not78, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.j
  %i.ec = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %.06797) ; 2 uses
  store i32 %i.ec, ptr %i.cf, align 8, !tbaa !546
  %.pre110 = load i64, ptr %i.dw, align 8, !tbaa !569
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  store i64 %i.eb, ptr %i.dw, align 8, !tbaa !569
  %i.ed = add nuw nsw i64 %.06797, 1              ; 2 uses
  %exitcond103.not = icmp eq i64 %i.ed, %i.co
  br i1 %exitcond103.not, label %.loopexit, label %bb.j, !llvm.loop !643

.loopexit:                                        ; preds = %bb.k, %.thread
  %i.ee = phi i32 [ %i.ec, %.thread ], [ %i.cn, %bb.k ]
  %i.ef = phi i64 [ %.pre110, %.thread ], [ %i.eb, %bb.k ]
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 -1, ptr %i.eh, align 8, !tbaa !641
  %i.ei = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 -1, ptr %i.ei, align 4, !tbaa !642
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i8 0, i64 16, i1 false)
  br label %bb.r

bb.m:                                             ; preds = %.loopexit.thread, %.loopexit
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.el = load ptr, ptr %i.de, align 8, !tbaa !638 ; 4 uses
  %i.em = load ptr, ptr %i.dg, align 8, !tbaa !638 ; 3 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %._crit_edge111, label %bb.n

._crit_edge111:                                   ; preds = %bb.m
  %.phi.trans.insert112 = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %5
  %.pre113 = load i64, ptr %.phi.trans.insert112, align 8, !tbaa !92
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.el to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = getelementptr i8, ptr %i.el, i64 %i.eq  ; 2 uses
  %i.es = getelementptr i8, ptr %i.er, i64 -16
  %i.et = load i64, ptr %i.es, align 8, !tbaa !498
  %i.eu = getelementptr i8, ptr %i.er, i64 -8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !504
  %i.ew = sub i64 %i.et, %i.ev
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %5
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !92 ; 2 uses
  %i.ez = icmp ult i64 %i.ew, %i.ey
  br i1 %i.ez, label %bb.o, label %_ZN6duckdb11NumericCastIjmvEET_T0_.exit90

bb.o:                                             ; preds = %._crit_edge111, %bb.n
  %i.fa = phi i64 [ %.pre113, %._crit_edge111 ], [ %i.ey, %bb.n ]
  %i.fb = tail call noundef i64 @llvm.umax.i64(i64 %i.j, i64 %i.fa)
  tail call void @_ZN6duckdb18TupleDataAllocator15CreateHeapBlockERNS_16TupleDataSegmentEm(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, i64 noundef %i.fb)
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !240
  %.not93 = icmp eq i64 %i.fd, -1
  %.pre115 = load ptr, ptr %i.dg, align 8, !tbaa !511 ; 2 uses
  %.pre117.a = load ptr, ptr %i.de, align 8, !tbaa !510 ; 3 uses
  br i1 %.not93, label %_ZN6duckdb11NumericCastIjmvEET_T0_.exit90, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fe = ptrtoint ptr %.pre115 to i64
  %i.ff = ptrtoint ptr %.pre117.a to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = getelementptr i8, ptr %.pre117.a, i64 %i.fg
  %i.fi = getelementptr i8, ptr %i.fh, i64 -32
  %i.fj = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_11BlockHandleELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fi)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 64
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !515, !nonnull !60, !align !61
  %i.fm = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fc) ; 3 uses
  %.not.i.i86 = icmp eq i64 %i.fm, 0
  br i1 %.not.i.i86, label %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit88, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fn = lshr i64 %i.fm, 1
  %i.fo = or i64 %i.fn, %i.fm                     ; 2 uses
  %i.fp = lshr i64 %i.fo, 2
  %i.fq = or i64 %i.fp, %i.fo                     ; 2 uses
  %i.fr = lshr i64 %i.fq, 4
  %i.fs = or i64 %i.fr, %i.fq                     ; 2 uses
  %i.ft = lshr i64 %i.fs, 8
  %i.fu = or i64 %i.ft, %i.fs                     ; 2 uses
  %i.fv = lshr i64 %i.fu, 16
  %i.fw = or i64 %i.fv, %i.fu                     ; 2 uses
  %i.fx = lshr i64 %i.fw, 32
  %i.fy = or i64 %i.fx, %i.fw
  %i.fz = mul i64 %i.fy, 285870213051386505
  %i.ga = lshr i64 %i.fz, 55
  %.0..sroa_stride.i.i87 = and i64 %i.ga, 504
  %.0..sroa_idx.i.i88 = getelementptr inbounds nuw i8, ptr @__const._ZN6duckdb10CountZerosImE7LeadingEm.index64msb, i64 %.0..sroa_stride.i.i87
  %i.gb = load i64, ptr %.0..sroa_idx.i.i88, align 8, !tbaa !92
  %i.gc = add i64 %i.gb, 1
  br label %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit88

_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit88: ; preds = %bb.q, %bb.p
  %.0.i.neg.i87 = phi i64 [ %i.gc, %bb.q ], [ 0, %bb.p ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fl, i64 168
  store atomic i64 %.0.i.neg.i87, ptr %i.gd seq_cst, align 8
  %.pre114 = load ptr, ptr %i.dg, align 8, !tbaa !511
  %.pre116 = load ptr, ptr %i.de, align 8, !tbaa !510
  br label %_ZN6duckdb11NumericCastIjmvEET_T0_.exit90

_ZN6duckdb11NumericCastIjmvEET_T0_.exit90:        ; preds = %bb.o, %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit88, %bb.n
  %i.ge = phi ptr [ %.pre117.a, %bb.o ], [ %.pre116, %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit88 ], [ %i.el, %bb.n ]
  %i.gf = phi ptr [ %.pre115, %bb.o ], [ %.pre114, %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit88 ], [ %i.em, %bb.n ]
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.ge to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = ashr exact i64 %i.gi, 5
  %i.gk = add nsw i64 %i.gj, -1
  %i.gl = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.gk) ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %i.gl, ptr %i.gm, align 8, !tbaa !641
  %i.gn = zext i32 %i.gl to i64
  %i.go = load ptr, ptr %i.de, align 8, !tbaa !510
  %i.gp = getelementptr inbounds nuw [32 x i8], ptr %i.go, i64 %i.gn
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 24 ; 3 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !504
  %i.gs = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.gr)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !642
  %i.gu = load i64, ptr %i.ek, align 8, !tbaa !569
  %i.gv = load i64, ptr %i.gq, align 8, !tbaa !504
  %i.gw = add i64 %i.gv, %i.gu
  store i64 %i.gw, ptr %i.gq, align 8, !tbaa !504
  %i.gx = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb18TupleDataAllocator12PinHeapBlockERNS_17TupleDataPinStateERKNS_18TupleDataChunkPartE(ptr noundef nonnull readonly align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.d)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gy)
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !538
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !541
  %i.hc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !644
  %.pre118 = load i32, ptr %i.cf, align 8, !tbaa !546
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread, %_ZN6duckdb11NumericCastIjmvEET_T0_.exit90, %bb.l, %_ZN6duckdb11NumericCastIjmvEET_T0_.exit83
  %i.hd = phi i32 [ %i.cn, %._crit_edge.thread ], [ %.pre118, %_ZN6duckdb11NumericCastIjmvEET_T0_.exit90 ], [ %i.ee, %bb.l ], [ %i.ce, %_ZN6duckdb11NumericCastIjmvEET_T0_.exit83 ]
  %i.he = zext i32 %i.hd to i64
  %i.hf = load ptr, ptr %i.bu, align 8, !tbaa !528, !nonnull !60, !align !61
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 120
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !289
  %i.hi = mul i64 %i.hh, %i.he
  %i.hj = load i64, ptr %i.bq, align 8, !tbaa !504
  %i.hk = add i64 %i.hj, %i.hi
  store i64 %i.hk, ptr %i.bq, align 8, !tbaa !504
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.172", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !448
  %i.e = load ptr, ptr %0, align 8, !tbaa !449    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !92
  store i64 %i.i, ptr %i.b, align 8, !tbaa !92
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorImLb1ESaImEE3getILb1EEERKmm.exit, label %bb.b, !prof !450

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !53     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorImLb1ESaImEE3getILb1EEERKmm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10FastMemsetEPvim(ptr noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #11 comdat {
bb.a:
  switch i64 %2, label %bb.ix [
    i64 0, label %bb.iy
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.f
    i64 6, label %bb.g
    i64 7, label %bb.h
    i64 8, label %bb.i
    i64 9, label %bb.j
    i64 10, label %bb.k
    i64 11, label %bb.l
    i64 12, label %bb.m
    i64 13, label %bb.n
    i64 14, label %bb.o
    i64 15, label %bb.p
    i64 16, label %bb.q
    i64 17, label %bb.r
    i64 18, label %bb.s
    i64 19, label %bb.t
    i64 20, label %bb.u
    i64 21, label %bb.v
    i64 22, label %bb.w
    i64 23, label %bb.x
    i64 24, label %bb.y
    i64 25, label %bb.z
    i64 26, label %bb.aa
    i64 27, label %bb.ab
    i64 28, label %bb.ac
    i64 29, label %bb.ad
    i64 30, label %bb.ae
    i64 31, label %bb.af
    i64 32, label %bb.ag
    i64 33, label %bb.ah
    i64 34, label %bb.ai
    i64 35, label %bb.aj
    i64 36, label %bb.ak
    i64 37, label %bb.al
    i64 38, label %bb.am
    i64 39, label %bb.an
    i64 40, label %bb.ao
    i64 41, label %bb.ap
    i64 42, label %bb.aq
    i64 43, label %bb.ar
    i64 44, label %bb.as
    i64 45, label %bb.at
    i64 46, label %bb.au
    i64 47, label %bb.av
    i64 48, label %bb.aw
    i64 49, label %bb.ax
    i64 50, label %bb.ay
    i64 51, label %bb.az
    i64 52, label %bb.ba
    i64 53, label %bb.bb
    i64 54, label %bb.bc
    i64 55, label %bb.bd
end_hunk_0
