Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ndarray-rs/original/ndarray-18d58f11e60f2111.ndarray.7486451c7a887e6a-cgu.0?download=true
inline.NumInlined: 162
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvMs8_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplNtB5_9IxDynImpl6insert:bb.a
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i, %.noexc10
  %.pre51 = phi i64 [ %.pre51.pre, %.noexc10 ], [ %.sroa.440.0, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i ]
  %i.af = phi ptr [ %.pre, %.noexc10 ], [ %i.v, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i ] ; 2 uses
  %i.ag = phi i64 [ %i.ad, %.noexc10 ], [ 0, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = shl nuw nsw i64 %2, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull readonly align 8 %.sroa.0.0.i, i64 %i.ai, i1 false), !noalias !62
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i
  %i.aj = phi ptr [ %i.af, %bb.i ], [ %i.v, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i ]
  %i.ak = phi i64 [ %.pre51, %bb.i ], [ %.sroa.440.0, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i ]
  %i.al = phi i64 [ %i.ag, %bb.i ], [ 0, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i ]
  %i.am = add nuw nsw i64 %i.al, %2               ; 4 uses
  store i64 %i.am, ptr %i.y, align 8, !alias.scope !62
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.an = icmp eq i64 %i.am, %i.ak
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsa0fWqW2HhWg_7ndarray(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #28
          to label %._crit_edge unwind label %bb.u

._crit_edge:                                      ; preds = %bb.k
  %.pre52 = load ptr, ptr %i.x, align 8, !alias.scope !63
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %i.ao = phi ptr [ %.pre52, %._crit_edge ], [ %i.aj, %bb.j ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  store i64 1, ptr %i.ap, align 8, !noalias !63
  %i.aq = add i64 %i.am, 1                        ; 6 uses
  store i64 %i.aq, ptr %i.y, align 8, !alias.scope !63
  %i.ar = sub nuw i64 %.sroa.3.0, %2              ; 4 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.at = load i64, ptr %i.a, align 8, !range !4, !alias.scope !65, !noundef !5 ; 3 uses
  %i.au = sub i64 %i.at, %i.aq
  %i.av = icmp ugt i64 %i.ar, %i.au
  br i1 %i.av, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.thread.i19, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i17, !prof !11

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.thread.i19: ; preds = %bb.l
  invoke fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsa0fWqW2HhWg_7ndarray(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.aq, i64 noundef range(i64 0, 2305843009213693952) %i.ar)
          to label %.noexc20 unwind label %bb.u

.noexc20:                                         ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.thread.i19
  %i.aw = load i64, ptr %i.y, align 8, !alias.scope !64, !noundef !5 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ax)
  %.sroa.036.0.copyload.pre.pre = load i64, ptr %i.a, align 8
  br label %bb.m

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i17: ; preds = %bb.l
  %i.ay = icmp ult i64 %i.aq, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ay)
  %.not.i18 = icmp eq i64 %.sroa.3.0, %2
  br i1 %.not.i18, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i17._crit_edge, label %bb.m

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i17._crit_edge: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i17
  %.sroa.437.0.copyload.pre = load ptr, ptr %i.x, align 8
  br label %bb.n

bb.m:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i17, %.noexc20
  %.sroa.036.0.copyload.pre = phi i64 [ %.sroa.036.0.copyload.pre.pre, %.noexc20 ], [ %i.at, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i17 ]
  %i.az = phi i64 [ %i.aw, %.noexc20 ], [ %i.aq, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i17 ] ; 2 uses
  %i.ba = load ptr, ptr %i.x, align 8, !alias.scope !64, !nonnull !5, !noundef !5 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.az
  %i.bc = shl nuw nsw i64 %i.ar, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.as, i64 %i.bc, i1 false), !noalias !64
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i17._crit_edge, %bb.m
  %.sroa.437.0.copyload = phi ptr [ %i.ba, %bb.m ], [ %.sroa.437.0.copyload.pre, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i17._crit_edge ] ; 5 uses
  %.sroa.036.0.copyload = phi i64 [ %.sroa.036.0.copyload.pre, %bb.m ], [ %i.at, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i17._crit_edge ] ; 2 uses
  %i.bd = phi i64 [ %i.az, %bb.m ], [ %i.aq, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.i17._crit_edge ]
  %i.be = add nuw nsw i64 %i.bd, %i.ar            ; 5 uses
  %i.bf = icmp ugt i64 %.sroa.036.0.copyload, %i.be
  br i1 %i.bf, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.437.0.copyload) ]
  %i.bg = shl nuw i64 %.sroa.036.0.copyload, 3    ; 4 uses
  %i.bh = icmp eq i64 %i.be, 0
  br i1 %i.bh, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i, label %bb.p

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.o
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.437.0.copyload, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !66
  br label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bi = shl nuw i64 %i.be, 3                    ; 3 uses
  %i.bj = icmp ule i64 %i.bi, %i.bg
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.437.0.copyload, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 8, i64 noundef range(i64 8, 0) %i.bi) #26, !noalias !66 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.bi) #25
          to label %bb.r unwind label %.body, !noalias !59

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.p, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.n
  %.sroa.42.0.copyload.i = phi ptr [ %i.bk, %bb.p ], [ inttoptr (i64 8 to ptr), %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i ], [ %.sroa.437.0.copyload, %bb.n ]
  %i.bm = icmp ult i64 %i.be, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.t

bb.t:                                             ; preds = %_RNvXsb_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplNtB5_9IxDynImplINtNtNtCsf3Ta7LF998c_4core3ops5index5IndexINtNtB1d_5range5RangejEE5indexB9_.exit33, %bb.s
  %.sroa.8.0 = phi i64 [ %.sroa.4.0.copyload, %_RNvXsb_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplNtB5_9IxDynImplINtNtNtCsf3Ta7LF998c_4core3ops5index5IndexINtNtB1d_5range5RangejEE5indexB9_.exit33 ], [ %i.be, %bb.s ]
  %.sroa.6.0 = phi ptr [ %.sroa.02.0.copyload, %_RNvXsb_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplNtB5_9IxDynImplINtNtNtCsf3Ta7LF998c_4core3ops5index5IndexINtNtB1d_5range5RangejEE5indexB9_.exit33 ], [ %.sroa.42.0.copyload.i, %bb.s ]
  %.sroa.5.0 = phi i32 [ %i.bz, %_RNvXsb_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplNtB5_9IxDynImplINtNtNtCsf3Ta7LF998c_4core3ops5index5IndexINtNtB1d_5range5RangejEE5indexB9_.exit33 ], [ undef, %bb.s ]
  %.sroa.01.0 = phi i32 [ 0, %_RNvXsb_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplNtB5_9IxDynImplINtNtNtCsf3Ta7LF998c_4core3ops5index5IndexINtNtB1d_5range5RangejEE5indexB9_.exit33 ], [ 1, %bb.s ]
  store i32 %.sroa.01.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsa0fWqW2HhWg_7ndarray.exit: ; preds = %bb.v, %bb.u, %.body
  %eh.lpad-body49 = phi { ptr, i32 } [ %i.z, %.body ], [ %i.bn, %bb.u ], [ %i.bn, %bb.v ]
  resume { ptr, i32 } %eh.lpad-body49

bb.u:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.thread.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecjE7reserveCsa0fWqW2HhWg_7ndarray.exit.thread.i19, %bb.g, %bb.k
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bo = icmp eq i64 %.val, 0
  br i1 %i.bo, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsa0fWqW2HhWg_7ndarray.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.val9 = load ptr, ptr %i.x, align 8, !nonnull !5, !noundef !5
  %i.bp = shl nuw i64 %.val, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsa0fWqW2HhWg_7ndarray.exit

bb.w:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable

bb.x:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %.not.i.i23 = icmp samesign ugt i64 %2, %.sroa.3.0
  br i1 %.not.i.i23, label %bb.y, label %_RNvXsb_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplNtB5_9IxDynImplINtNtNtCsf3Ta7LF998c_4core3ops5index5IndexINtNtB1d_5range5RangejEE5indexB9_.exit33, !prof !58

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef range(i64 0, 1152921504606846976) %.sroa.3.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #27, !noalias !68
  unreachable

_RNvXsb_NtNtCsa0fWqW2HhWg_7ndarray9dimension12dynindeximplNtB5_9IxDynImplINtNtNtCsf3Ta7LF998c_4core3ops5index5IndexINtNtB1d_5range5RangejEE5indexB9_.exit33: ; preds = %bb.x
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !67, !noalias !69, !nonnull !5
  %.sroa.0.0.i25 = select i1 %i.d, ptr %i.br, ptr %i.bq ; 2 uses
  %i.bs = shl nuw nsw i64 %2, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.b, ptr nonnull readonly align 8 %.sroa.0.0.i25, i64 %i.bs, i1 false), !alias.scope !70, !noalias !71
  %i.bt = sub nuw nsw i64 %.sroa.3.0, %2
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i25, i64 %2
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = shl nuw nsw i64 %i.bt, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr nonnull readonly align 8 %i.bu, i64 %i.bx, i1 false), !alias.scope !72, !noalias !73
  %i.by = trunc nuw nsw i64 %.sroa.3.0 to i32
  %i.bz = add nuw nsw i32 %i.by, 1
  %.sroa.02.0.copyload = load ptr, ptr %i.b, align 8
  %.sroa.4.0.copyload = load i64, ptr %i.s, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.t
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCsa0fWqW2HhWg_7ndarray11arrayformat20format_with_overflow(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6, ptr noundef nonnull %7, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %8) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %1, %2
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = lshr i64 %2, 1                           ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !5, !nonnull !5 ; 3 uses
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) #29
  br i1 %i.e, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %umax = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1)
  br label %.preheader

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !5, !nonnull !5 ; 2 uses
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) #29
  br i1 %i.h, label %.loopexit, label %.preheader15.preheader

.preheader15.preheader:                           ; preds = %bb.d
  %exitcond.not.not30 = icmp eq i64 %1, 1
  br i1 %exitcond.not.not30, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %.preheader.preheader, %bb.j
  %.sroa.08.0 = phi i64 [ %9, %bb.j ], [ 1, %.preheader.preheader ] ; 3 uses
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  br i1 %i.i, label %.loopexit, label %.lr.ph37

.lr.ph37:                                         ; preds = %.preheader
  %exitcond21.not = icmp eq i64 %.sroa.08.0, %umax
  br i1 %exitcond21.not, label %bb.e, label %bb.j

bb.e:                                             ; preds = %.lr.ph37
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %5, i64 noundef %6)
  br i1 %i.j, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not46 = icmp eq i64 %i.b, 0
  br i1 %.not46, label %.loopexit, label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.f
  %i.k = sub nuw i64 %1, %i.b
  br label %bb.h

bb.g:                                             ; preds = %bb.i
  %i.l = add nuw i64 %.sroa.010.039, 1            ; 2 uses
  %i.m = icmp ult i64 %i.l, %1
  br i1 %i.m, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph40, %bb.g
  %.sroa.010.039 = phi i64 [ %i.k, %.lr.ph40 ], [ %i.l, %bb.g ] ; 2 uses
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  br i1 %i.n, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call noundef zeroext i1 %i.d(ptr noundef nonnull %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.010.039) #29
  br i1 %i.o, label %.loopexit, label %bb.g

bb.j:                                             ; preds = %.lr.ph37
  %9 = add nuw i64 %.sroa.08.0, 1
  %i.p = tail call noundef zeroext i1 %i.d(ptr noundef nonnull %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.08.0) #29
  br i1 %i.p, label %.loopexit, label %.preheader

.preheader15:                                     ; preds = %bb.k
  %i.q = add i64 %.sroa.06.031, 1                 ; 2 uses
  %exitcond.not.not = icmp eq i64 %i.q, %1
  br i1 %exitcond.not.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader15.preheader, %.preheader15
  %.sroa.06.031 = phi i64 [ %i.q, %.preheader15 ], [ 1, %.preheader15.preheader ] ; 2 uses
  %i.r = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  br i1 %i.r, label %.loopexit, label %bb.k

.loopexit:                                        ; preds = %.preheader15, %bb.k, %.lr.ph, %.preheader, %bb.j, %bb.g, %bb.i, %bb.h, %.preheader15.preheader, %bb.f, %bb.d, %bb.e, %bb.c, %bb.a
  %.sroa.0.2 = phi i1 [ true, %bb.e ], [ true, %bb.h ], [ true, %bb.d ], [ false, %bb.a ], [ true, %.preheader ], [ true, %bb.c ], [ false, %bb.f ], [ false, %.preheader15.preheader ], [ true, %bb.i ], [ false, %bb.g ], [ true, %bb.j ], [ true, %.lr.ph ], [ false, %.preheader15 ], [ true, %bb.k ]
  ret i1 %.sroa.0.2

bb.k:                                             ; preds = %.lr.ph
  %i.s = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.06.031) #29
  br i1 %i.s, label %.loopexit, label %.preheader15
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvNtCsa0fWqW2HhWg_7ndarray11arraytraits19array_out_of_bounds() unnamed_addr #4 {
bb.a:
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsa0fWqW2HhWg_7ndarray9dimension13slice_min_max(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !78, !noalias !79, !noundef !5 ; 2 uses
  %i.c = load i64, ptr %2, align 8, !range !6, !alias.scope !78, !noalias !79, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !78, !noalias !79
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !78, !noalias !79, !noundef !5 ; 4 uses
  %i.h = icmp slt i64 %i.b, 0
  %i.i = select i1 %i.h, i64 %1, i64 0
  %.sroa.02.0.i = add i64 %i.i, %i.b              ; 7 uses
  %i.j = trunc nuw i64 %i.c to i1
  %.sroa.06.0.i = select i1 %i.j, i64 %i.e, i64 %1 ; 2 uses
  %i.k = icmp slt i64 %.sroa.06.0.i, 0
  %i.l = select i1 %i.k, i64 %1, i64 0
  %.sroa.09.0.i = add i64 %i.l, %.sroa.06.0.i     ; 3 uses
  %.not.i = icmp ugt i64 %.sroa.02.0.i, %1
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 35, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #27, !noalias !80
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not14.i = icmp ugt i64 %.sroa.09.0.i, %1
  br i1 %.not14.i, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 33, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #27, !noalias !80
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.g, 0
  br i1 %i.m, label %bb.f, label %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12to_abs_slice.exit, !prof !11

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #27, !noalias !80
  unreachable

_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12to_abs_slice.exit: ; preds = %bb.e
  %.sroa.09.1.i = tail call i64 @llvm.umax.i64(i64 %.sroa.09.0.i, i64 %.sroa.02.0.i) ; 3 uses
  %.not = icmp ult i64 %.sroa.02.0.i, %.sroa.09.0.i
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12to_abs_slice.exit
  %i.n = icmp sgt i64 %i.g, 0
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = xor i64 %.sroa.02.0.i, -1
  %i.p = add i64 %.sroa.09.1.i, %i.o
  %i.q = urem i64 %i.p, %i.g
  %i.r = xor i64 %i.q, -1
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.s = sub i64 0, %i.g
  %i.t = xor i64 %.sroa.02.0.i, -1
  %i.u = add i64 %.sroa.09.1.i, %i.t
  %i.v = urem i64 %i.u, %i.s
  %i.w = add i64 %i.v, %.sroa.02.0.i
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.i
  %.sink9 = phi i64 [ -1, %bb.i ], [ %i.r, %bb.h ]
  %.sink7 = phi i64 [ %i.w, %bb.i ], [ %.sroa.02.0.i, %bb.h ]
  %i.x = add i64 %.sroa.09.1.i, %.sink9
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink7, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %i.z, align 8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12to_abs_slice.exit
  %.sink = phi i64 [ 0, %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12to_abs_slice.exit ], [ 1, %.sink.split ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCsa0fWqW2HhWg_7ndarray9dimension19arith_seq_intersect(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !5   ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load i64, ptr %1, align 8, !noundef !5   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = icmp sgt i64 %i.a, %i.f
  %i.h = icmp sgt i64 %i.d, %i.c
  %or.cond = or i1 %i.h, %i.g
  br i1 %or.cond, label %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension27solve_linear_diophantine_eq.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %.sroa.01.0 = tail call i64 @llvm.abs.i64(i64 %i.l, i1 false) ; 6 uses
  %.sroa.08.0 = tail call i64 @llvm.abs.i64(i64 %i.j, i1 false) ; 4 uses
  %i.m = sub i64 0, %.sroa.01.0                   ; 2 uses
  %i.n = sub i64 %i.a, %i.d                       ; 2 uses
  %i.o = icmp eq i64 %i.l, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = icmp slt i64 %.sroa.08.0, 0
  br i1 %i.p, label %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12extended_gcd.exit.thread.i, label %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12extended_gcd.exit.i

bb.d:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %i.j, 0
  br i1 %i.q, label %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12extended_gcd.exit.thread.i, label %.preheader.i.i

bb.e:                                             ; preds = %bb.g
  %i.r = icmp sgt i64 %.sroa.011.041.i.i, 0
  br i1 %i.r, label %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12extended_gcd.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = sub i64 0, %.sroa.011.041.i.i
  %i.t = sub i64 0, %.sroa.023.040.i.i
  br label %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12extended_gcd.exit.thread.i

.preheader.i.i:                                   ; preds = %bb.d, %bb.g
  %.sroa.0.042.i.i = phi i64 [ %.sroa.011.041.i.i, %bb.g ], [ %i.m, %bb.d ] ; 3 uses
  %.sroa.011.041.i.i = phi i64 [ %.recomposed, %bb.g ], [ %.sroa.08.0, %bb.d ] ; 8 uses
  %.sroa.023.040.i.i = phi i64 [ %i.aa, %bb.g ], [ 0, %bb.d ] ; 4 uses
  %.sroa.027.038.i.i = phi i64 [ %.sroa.023.040.i.i, %bb.g ], [ 1, %bb.d ]
  %i.u = icmp eq i64 %.sroa.011.041.i.i, -1
  %i.v = icmp eq i64 %.sroa.0.042.i.i, -9223372036854775808
  %i.w = and i1 %i.v, %i.u
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader.i.i
  %i.x = sdiv i64 %.sroa.0.042.i.i, %.sroa.011.041.i.i ; 2 uses
  %i.y = mul i64 %i.x, %.sroa.011.041.i.i         ; 0 uses
  %.recomposed = srem i64 %.sroa.0.042.i.i, %.sroa.011.041.i.i ; 2 uses
  %i.z = mul i64 %i.x, %.sroa.023.040.i.i
  %i.aa = sub i64 %.sroa.027.038.i.i, %i.z
  %i.ab = icmp eq i64 %.recomposed, 0
  br i1 %i.ab, label %bb.e, label %.preheader.i.i

bb.h:                                             ; preds = %.preheader.i.i
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const24panic_const_div_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #27, !noalias !85
  unreachable

_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12extended_gcd.exit.i: ; preds = %bb.c
  %i.ac = icmp eq i64 %i.j, 0
  br i1 %i.ac, label %bb.i, label %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12extended_gcd.exit.thread.i

bb.i:                                             ; preds = %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12extended_gcd.exit.i
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #27, !noalias !86
  unreachable

_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12extended_gcd.exit.thread.i: ; preds = %bb.d, %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12extended_gcd.exit.i, %bb.f, %bb.e, %bb.c
  %.sink52.i5.i = phi i64 [ 0, %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12extended_gcd.exit.i ], [ %i.t, %bb.f ], [ %.sroa.023.040.i.i, %bb.e ], [ 0, %bb.c ], [ -1, %bb.d ]
  %.sink54.i4.i = phi i64 [ %.sroa.08.0, %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12extended_gcd.exit.i ], [ %i.s, %bb.f ], [ %.sroa.011.041.i.i, %bb.e ], [ -9223372036854775808, %bb.c ], [ %.sroa.01.0, %bb.d ] ; 3 uses
  %i.ad = srem i64 %i.n, %.sink54.i4.i
  %i.ae = sdiv i64 %i.n, %.sink54.i4.i
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %bb.j, label %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension27solve_linear_diophantine_eq.exit

bb.j:                                             ; preds = %_RNvNtCsa0fWqW2HhWg_7ndarray9dimension12extended_gcd.exit.thread.i
  %i.ag = mul i64 %i.ae, %.sink52.i5.i            ; 3 uses
  %i.ah = sdiv i64 %.sroa.08.0, %.sink54.i4.i
  %.sroa.0.0.i = tail call i64 @llvm.abs.i64(i64 %i.ah, i1 false) ; 4 uses
  %i.ai = tail call i64 @llvm.smax.i64(i64 %i.a, i64 %i.d) ; 2 uses
  %i.aj = tail call i64 @llvm.smin.i64(i64 %i.c, i64 %i.f) ; 2 uses
  %i.ak = mul i64 %i.ag, %.sroa.01.0
  %i.al = add i64 %i.ak, %i.a                     ; 2 uses
  %i.am = sub i64 %i.ai, %i.al                    ; 3 uses
  %i.an = mul i64 %.sroa.0.0.i, %i.m              ; 6 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = icmp eq i64 %i.an, -1
  %i.aq = icmp eq i64 %i.am, -9223372036854775808
  %i.ar = and i1 %i.ap, %i.aq
  br i1 %i.ar, label %bb.m, label %_RNvXsb_Csb8BmOv8X38Q_11num_integeriNtB5_7Integer7div_rem.exit.i.i

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #27
  unreachable
end_hunk_0
