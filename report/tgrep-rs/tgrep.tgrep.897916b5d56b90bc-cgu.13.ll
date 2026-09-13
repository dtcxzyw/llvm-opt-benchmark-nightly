Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.13?download=true
inline.NumInlined: 920
inline.NumDeleted: 448
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2y_:bb.a
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2G_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2F_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.val5.i = load ptr, ptr %5, align 8, !alias.scope !1123, !noalias !1124, !nonnull !8, !align !9, !noundef !8 ; 3 uses
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0B1y_(ptr nonnull %.val5.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o) #31, !noalias !1125 ; 2 uses
  %.not25.i = icmp eq i64 %i.n, 2                 ; 2 uses
  br i1 %i.r, label %.preheader.i, label %.preheader14.i

.preheader14.i:                                   ; preds = %bb.k
  br i1 %.not25.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not25.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph20.i

.lr.ph.i:                                         ; preds = %.preheader14.i, %bb.l
  %.sroa.01.0.i16.i = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader14.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i16.i ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -32
  %i.u = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0B1y_(ptr nonnull %.val5.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t) #31, !noalias !1125
  br i1 %i.u, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2F_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.v = add nuw nsw i64 %.sroa.01.0.i16.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2F_.exit.i, label %.lr.ph.i

.lr.ph20.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i19.i = phi i64 [ %i.z, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.1.i19.i ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -32
  %i.y = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0B1y_(ptr nonnull %.val5.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x) #31, !noalias !1125
  br i1 %i.y, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2F_.exit.i

bb.m:                                             ; preds = %.lr.ph20.i
  %i.z = add nuw nsw i64 %.sroa.01.1.i19.i, 1     ; 2 uses
  %exitcond28.not.i = icmp eq i64 %i.z, %i.n
  br i1 %exitcond28.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2F_.exit.i, label %.lr.ph20.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2F_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph20.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.m ], [ %.sroa.01.1.i19.i, %.lr.ph20.i ], [ %.sroa.01.0.i16.i, %.lr.ph.i ], [ %i.n, %bb.l ] ; 5 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.aa)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2F_.exit.i
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.ab, 0
  %or.cond.not.i = and i1 %i.r, %.not.i.i.i
  br i1 %or.cond.not.i, label %.lr.ph.preheader.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value7reverseCsbNLsQi0JuJ4_5tgrep.exit.i

bb.o:                                             ; preds = %bb.i
  %i.ac = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 288230376151711744) %i.n)
  %i.ad = shl nuw nsw i64 %i.ac, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2G_.exit

bb.p:                                             ; preds = %bb.i
  %i.ae = tail call i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2I_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.ae, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  %i.af = shl nuw nsw i64 %i.ae, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2G_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value7reverseCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i.i, %.preheader14.i, %bb.n, %bb.j
  %.sroa.0.0.i11.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader14.i ], [ %.sroa.0.0.i374448.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i.i ]
  %i.ah = shl nuw nsw i64 %.sroa.0.0.i11.i, 1
  %i.ai = or disjoint i64 %i.ah, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2G_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.aj = phi i64 [ %i.ab, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i374448.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0.i374448.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.ap, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.al = xor i64 %.sroa.0.017.i.i.i, -1
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.017.i.i.i
  %i.an = getelementptr [32 x i8], ptr %i.ak, i64 %i.al
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %i.am, ptr noundef nonnull %i.an, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i.i unwind label %bb.q, !noalias !1125

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #33, !noalias !1125
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ap = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ap, %i.aj
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2G_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value7reverseCsbNLsQi0JuJ4_5tgrep.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ai, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs6MoqnCnVQOT_10serde_json5value5Value7reverseCsbNLsQi0JuJ4_5tgrep.exit.i ], [ %i.ag, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  %i.aq = lshr i64 %.sroa.023.0, 1
  %i.ar = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.as = sub nsw i64 %factor, %i.aq
  %i.at = add nuw nsw i64 %i.ar, %factor
  %i.au = mul i64 %i.as, %.sroa.0.0
  %i.av = mul i64 %i.at, %.sroa.0.0
  %i.aw = xor i64 %i.av, %i.au
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 false)
  %i.ay = trunc nuw nsw i64 %i.ax to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2J_.exit
  %.sroa.02.136 = phi i64 [ %i.az, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2J_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2J_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.az = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noundef !8
  %.not28 = icmp ult i8 %i.bb, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2J_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2J_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2J_.exit ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bd, align 1
  br i1 %i.l, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.az
  %i.bf = load i64, ptr %i.be, align 8, !noundef !8 ; 3 uses
  %i.bg = lshr i64 %i.bf, 1                       ; 5 uses
  %i.bh = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bi = add nuw i64 %i.bg, %i.bh                ; 5 uses
  %i.bj = sub i64 %.sroa.09.0, %i.bi
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bj ; 3 uses
  %i.bl = icmp samesign ugt i64 %i.bi, %3
  %i.bm = trunc i64 %.sroa.023.135 to i1
  %i.bn = or i64 %i.bf, %.sroa.023.135
  %i.bo = trunc i64 %i.bn to i1
  %or.cond3.i = or i1 %i.bl, %i.bo
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bp = trunc i64 %i.bf to i1
  br i1 %i.bp, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bq = shl nuw nsw i64 %i.bi, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2J_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bm, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.br = or i64 %i.bg, 1
  %i.bs = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.br, i1 true)
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 1
  %i.bv = xor i32 %i.bu, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2I_(ptr noalias nofree noundef nonnull align 8 %i.bk, i64 noundef range(i64 0, 288230376151711744) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %i.bg
  %i.bx = or i64 %i.bh, 1
  %i.by = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 1
  %i.cb = xor i32 %i.ca, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2I_(ptr noalias nofree noundef nonnull align 8 %i.bw, i64 noundef range(i64 0, 288230376151711744) %i.bh, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2z_(ptr noalias nofree noundef nonnull align 8 %i.bk, i64 noundef range(i64 0, 288230376151711744) %i.bi, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i64 noundef %i.bg, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cc = shl nuw nsw i64 %i.bi, 1
  %i.cd = or disjoint i64 %i.cc, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2J_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2J_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cd, %bb.x ], [ %i.bq, %bb.t ] ; 2 uses
  %i.ce = icmp ugt i64 %i.az, 1
  br i1 %i.ce, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cf = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cg = lshr i64 %.sroa.018.0, 1
  %i.ch = add nuw nsw i64 %i.cg, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.ci = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ci, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cj = or i64 %1, 1
  %i.ck = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyjNCNvNtCsbNLsQi0JuJ4_5tgrep6search17search_via_servers9_0E0EB2I_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2u_13WatchRegistry4sync0E0EB2w_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 {
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
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cq, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.co, %bb.y ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2C_13WatchRegistry4sync0E0EB2E_.exit
  %.sroa.021.0 = phi i8 [ %i.bh, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2C_13WatchRegistry4sync0E0EB2E_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2C_13WatchRegistry4sync0E0EB2E_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2B_13WatchRegistry4sync0E0EB2D_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val7.i = load ptr, ptr %i.q, align 8, !alias.scope !1137, !noalias !1138, !nonnull !8, !align !9, !noundef !8 ; 3 uses
  %.val8.i = load ptr, ptr %i.o, align 8, !alias.scope !1137, !noalias !1138
  %i.r = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB1u_13WatchRegistry4sync0E0B1w_(ptr nonnull %.val7.i, ptr %.val8.i) #31, !noalias !1139 ; 2 uses
  %.not28.i = icmp eq i64 %i.n, 2                 ; 2 uses
  br i1 %i.r, label %.preheader.i, label %.preheader17.i

.preheader17.i:                                   ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.preheader.i.i.i, label %.lr.ph23.i

.lr.ph.i:                                         ; preds = %.preheader17.i, %bb.l
  %.val6.i = phi ptr [ %.val5.i, %bb.l ], [ %.val7.i, %.preheader17.i ]
  %.sroa.01.0.i19.i = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader17.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i19.i
  %.val5.i = load ptr, ptr %i.s, align 8, !alias.scope !1137, !noalias !1138, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.t = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB1u_13WatchRegistry4sync0E0B1w_(ptr nonnull %.val5.i, ptr nonnull %.val6.i) #31, !noalias !1139
  br i1 %i.t, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2B_13WatchRegistry4sync0E0EB2D_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.u = add nuw nsw i64 %.sroa.01.0.i19.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2B_13WatchRegistry4sync0E0EB2D_.exit.i, label %.lr.ph.i

.lr.ph23.i:                                       ; preds = %.preheader.i, %bb.m
  %.val4.i = phi ptr [ %.val.i, %bb.m ], [ %.val7.i, %.preheader.i ]
  %.sroa.01.1.i22.i = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i22.i
  %.val.i = load ptr, ptr %i.v, align 8, !alias.scope !1137, !noalias !1138, !nonnull !8, !align !9, !noundef !8 ; 2 uses
  %i.w = tail call fastcc noundef zeroext i1 @_RNCINvMNtCsgCecv3eZDcN_5alloc5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB1u_13WatchRegistry4sync0E0B1w_(ptr nonnull %.val.i, ptr nonnull %.val4.i) #31, !noalias !1139
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2B_13WatchRegistry4sync0E0EB2D_.exit.i

bb.m:                                             ; preds = %.lr.ph23.i
  %i.x = add nuw nsw i64 %.sroa.01.1.i22.i, 1     ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.x, %i.n
  br i1 %exitcond31.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2B_13WatchRegistry4sync0E0EB2D_.exit.i, label %.lr.ph23.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2B_13WatchRegistry4sync0E0EB2D_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph23.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.m ], [ %.sroa.01.1.i22.i, %.lr.ph23.i ], [ %.sroa.01.0.i19.i, %.lr.ph.i ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2B_13WatchRegistry4sync0E0EB2D_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbNLsQi0JuJ4_5tgrep.exit.i

bb.o:                                             ; preds = %bb.i
  %i.z = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 1152921504606846976) %i.n)
  %i.aa = shl nuw nsw i64 %i.z, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2C_13WatchRegistry4sync0E0EB2E_.exit

bb.p:                                             ; preds = %bb.i
  %i.ab = tail call i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2E_13WatchRegistry4sync0E0EB2G_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.ab, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  %i.ac = shl nuw nsw i64 %i.ab, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2C_13WatchRegistry4sync0E0EB2E_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i, %middle.block, %.preheader17.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i14.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader17.i ], [ %.sroa.0.0.i424953.i, %middle.block ], [ %.sroa.0.0.i424953.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i ]
  %i.ae = shl nuw nsw i64 %.sroa.0.0.i14.i, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2C_13WatchRegistry4sync0E0EB2E_.exit

bb.q:                                             ; preds = %bb.n
  %i.ag = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1141)
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.preheader.i.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.ah = phi i64 [ %i.ag, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i424953.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i424953.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ah, 4
  br i1 %min.iters.check, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.preheader.i.i.i
  %n.vec = and i64 %i.ah, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = xor i64 %index, -1
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.al = getelementptr [8 x i8], ptr %i.ai, i64 %i.aj ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ak, align 8, !alias.scope !1142, !noalias !1143
  %wide.load54 = load <2 x ptr>, ptr %i.am, align 8, !alias.scope !1142, !noalias !1143
  %i.an = getelementptr i8, ptr %i.al, i64 -8
  %i.ao = getelementptr i8, ptr %i.al, i64 -24
  %wide.load55 = load <2 x i64>, ptr %i.an, align 8, !alias.scope !1144, !noalias !1145
  %wide.load56 = load <2 x i64>, ptr %i.ao, align 8, !alias.scope !1144, !noalias !1145
  %reverse = shufflevector <2 x i64> %wide.load55, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse57 = shufflevector <2 x i64> %wide.load56, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x i64> %reverse, ptr %i.ak, align 8, !alias.scope !1142, !noalias !1143
  store <2 x i64> %reverse57, ptr %i.ap, align 8, !alias.scope !1142, !noalias !1143
  %i.aq = getelementptr i8, ptr %i.al, i64 -8
  %i.ar = getelementptr i8, ptr %i.al, i64 -24
  %reverse58 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x ptr> %wide.load54, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse58, ptr %i.aq, align 8, !alias.scope !1144, !noalias !1145
  store <2 x ptr> %reverse59, ptr %i.ar, align 8, !alias.scope !1144, !noalias !1145
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1135

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i.preheader

_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i.preheader: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i.preheader, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.ay, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i.preheader ] ; 3 uses
  %i.at = xor i64 %.sroa.0.016.i.i.i, -1
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.ai, i64 %i.at ; 2 uses
  %i.aw = load ptr, ptr %i.au, align 8, !alias.scope !1142, !noalias !1143, !nonnull !8, !align !9, !noundef !8
  %i.ax = load i64, ptr %i.av, align 8, !alias.scope !1144, !noalias !1145
  store i64 %i.ax, ptr %i.au, align 8, !alias.scope !1142, !noalias !1143
  store ptr %i.aw, ptr %i.av, align 8, !alias.scope !1144, !noalias !1145
  %i.ay = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ay, %i.ah
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf12split_at_mutCsbNLsQi0JuJ4_5tgrep.exit11.i.i.i, !llvm.loop !1136

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2C_13WatchRegistry4sync0E0EB2E_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbNLsQi0JuJ4_5tgrep.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.af, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCs5Xr050g3D4S_3std4path7PathBuf7reverseCsbNLsQi0JuJ4_5tgrep.exit.i ], [ %i.ad, %bb.p ], [ %i.aa, %bb.o ] ; 2 uses
  %i.az = lshr i64 %.sroa.023.0, 1
  %i.ba = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bb = sub nsw i64 %factor, %i.az
  %i.bc = add nuw nsw i64 %i.ba, %factor
  %i.bd = mul i64 %i.bb, %.sroa.0.0
  %i.be = mul i64 %i.bc, %.sroa.0.0
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 false)
  %i.bh = trunc nuw nsw i64 %i.bg to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2F_13WatchRegistry4sync0E0EB2H_.exit
  %.sroa.02.136 = phi i64 [ %i.bi, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2F_13WatchRegistry4sync0E0EB2H_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2F_13WatchRegistry4sync0E0EB2H_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bi = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !8
  %.not28 = icmp ult i8 %i.bk, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2F_13WatchRegistry4sync0E0EB2H_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2F_13WatchRegistry4sync0E0EB2H_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2F_13WatchRegistry4sync0E0EB2H_.exit ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bm, align 1
  br i1 %i.l, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bi
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !8 ; 3 uses
  %i.bp = lshr i64 %i.bo, 1                       ; 5 uses
  %i.bq = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.br = add nuw i64 %i.bp, %i.bq                ; 5 uses
  %i.bs = sub i64 %.sroa.09.0, %i.br
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bs ; 3 uses
  %i.bu = icmp samesign ugt i64 %i.br, %3
  %i.bv = trunc i64 %.sroa.023.135 to i1
  %i.bw = or i64 %i.bo, %.sroa.023.135
  %i.bx = trunc i64 %i.bw to i1
  %or.cond3.i = or i1 %i.bu, %i.bx
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = trunc i64 %i.bo to i1
  br i1 %i.by, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bz = shl nuw nsw i64 %i.br, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2F_13WatchRegistry4sync0E0EB2H_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bv, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ca = or i64 %i.bp, 1
  %i.cb = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 1
  %i.ce = xor i32 %i.cd, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2E_13WatchRegistry4sync0E0EB2G_(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 1152921504606846976) %i.bp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ce, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bp
  %i.cg = or i64 %i.bq, 1
  %i.ch = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cg, i1 true)
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = shl nuw nsw i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2E_13WatchRegistry4sync0E0EB2G_(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 1152921504606846976) %i.bq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2v_13WatchRegistry4sync0E0EB2x_(ptr noalias nofree noundef nonnull align 8 %i.bt, i64 noundef range(i64 0, 1152921504606846976) %i.br, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.bp, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cl = shl nuw nsw i64 %i.br, 1
  %i.cm = or disjoint i64 %i.cl, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2F_13WatchRegistry4sync0E0EB2H_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2F_13WatchRegistry4sync0E0EB2H_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cm, %bb.x ], [ %i.bz, %bb.t ] ; 2 uses
  %i.cn = icmp ugt i64 %i.bi, 1
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.co = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cp = lshr i64 %.sroa.018.0, 1
  %i.cq = add nuw nsw i64 %i.cp, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cr = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cr, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cs = or i64 %1, 1
  %i.ct = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortRNtNtCs5Xr050g3D4S_3std4path7PathBufNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_11sort_by_keyjNCNvMs9_NtCsbNLsQi0JuJ4_5tgrep5serveNtB2E_13WatchRegistry4sync0E0EB2G_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB12_6ondisk12PostingEntryEENCINvMNtB1R_5sliceSBW_11sort_by_keyjNCINvB10_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB42_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cm, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ck, %bb.y ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4a_.exit
  %.sroa.021.0 = phi i8 [ %i.bd, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4a_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4a_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB49_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 56
  %.val7.i = load i64, ptr %i.q, align 8, !alias.scope !1150, !noalias !1151, !noundef !8 ; 4 uses
  %i.r = getelementptr i8, ptr %i.o, i64 24
  %.val8.i = load i64, ptr %i.r, align 8, !alias.scope !1150, !noalias !1151, !noundef !8 ; 2 uses
  %i.s = icmp ult i64 %.val7.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp ult i64 %.val8.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp samesign uge i64 %.val7.i, %.val8.i ; 2 uses
  %.not28.i = icmp eq i64 %i.n, 2                 ; 2 uses
  br i1 %i.u, label %.preheader17.i, label %.preheader.i

.preheader17.i:                                   ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not28.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph23.i

.lr.ph.i:                                         ; preds = %.preheader17.i, %bb.l
  %.val6.i = phi i64 [ %.val5.i, %bb.l ], [ %.val7.i, %.preheader17.i ]
  %.sroa.01.0.i19.i = phi i64 [ %i.z, %bb.l ], [ 2, %.preheader17.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i19.i
  %i.w = getelementptr i8, ptr %i.v, i64 24
  %.val5.i = load i64, ptr %i.w, align 8, !alias.scope !1150, !noalias !1151, !noundef !8 ; 3 uses
  %i.x = icmp ult i64 %.val5.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.x)
  %i.y = icmp samesign ult i64 %.val5.i, %.val6.i
  br i1 %i.y, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB49_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.z = add nuw nsw i64 %.sroa.01.0.i19.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.z, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB49_.exit.i, label %.lr.ph.i

.lr.ph23.i:                                       ; preds = %.preheader.i, %bb.m
  %.val4.i = phi i64 [ %.val.i, %bb.m ], [ %.val7.i, %.preheader.i ]
  %.sroa.01.1.i22.i = phi i64 [ %i.ae, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.1.i22.i
  %i.ab = getelementptr i8, ptr %i.aa, i64 24
  %.val.i = load i64, ptr %i.ab, align 8, !alias.scope !1150, !noalias !1151, !noundef !8 ; 3 uses
  %i.ac = icmp ult i64 %.val.i, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp samesign ult i64 %.val.i, %.val4.i
  br i1 %i.ad, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB49_.exit.i

bb.m:                                             ; preds = %.lr.ph23.i
  %i.ae = add nuw nsw i64 %.sroa.01.1.i22.i, 1    ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.ae, %i.n
  br i1 %exitcond31.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB49_.exit.i, label %.lr.ph23.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB49_.exit.i: ; preds = %bb.m, %.lr.ph23.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.l ], [ %.sroa.01.0.i19.i, %.lr.ph.i ], [ %.sroa.01.1.i22.i, %.lr.ph23.i ], [ %i.n, %bb.m ] ; 5 uses
  %i.af = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.af)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB18_6ondisk12PostingEntryEENCINvMNtB1X_5sliceSB12_11sort_by_keyjNCINvB16_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB49_.exit.i
  %i.ag = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  %or.cond.i = or i1 %i.u, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.ah = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 288230376151711744) %i.n)
  %i.ai = shl nuw nsw i64 %i.ah, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4a_.exit

bb.p:                                             ; preds = %bb.i
  %i.aj = tail call i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1b_6ondisk12PostingEntryEENCINvMNtB20_5sliceSB15_11sort_by_keyjNCINvB19_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4c_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.aj, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  %i.ak = shl nuw nsw i64 %i.aj, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4a_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB16_6ondisk12PostingEntryEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i, %.preheader17.i, %bb.n, %bb.j
  %.sroa.0.0.i14.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader17.i ], [ %.sroa.0.0.i485559.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB16_6ondisk12PostingEntryEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i ]
  %i.am = shl nuw nsw i64 %.sroa.0.0.i14.i, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4a_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ao = phi i64 [ %i.ag, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i485559.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0.i485559.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB16_6ondisk12PostingEntryEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.au, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB16_6ondisk12PostingEntryEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.aq = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.017.i.i.i
  %i.as = getelementptr [32 x i8], ptr %i.ap, i64 %i.aq
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB16_6ondisk12PostingEntryEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i unwind label %bb.q, !noalias !1151

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #33, !noalias !1151
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB16_6ondisk12PostingEntryEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.au = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.au, %i.ao
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseCsbNLsQi0JuJ4_5tgrep.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB19_6ondisk12PostingEntryEENCINvMNtB1Y_5sliceSB13_11sort_by_keyjNCINvB17_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4a_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseCsbNLsQi0JuJ4_5tgrep.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.an, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBA_6ondisk12PostingEntryEE7reverseCsbNLsQi0JuJ4_5tgrep.exit.i ], [ %i.al, %bb.p ], [ %i.ai, %bb.o ] ; 2 uses
  %i.av = lshr i64 %.sroa.023.0, 1
  %i.aw = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ax = sub nsw i64 %factor, %i.av
  %i.ay = add nuw i64 %i.aw, %factor
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 false)
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4d_.exit
  %.sroa.02.136 = phi i64 [ %i.be, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4d_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4d_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.be = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noundef !8
  %.not28 = icmp ult i8 %i.bg, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4d_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4d_.exit ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bi, align 1
  br i1 %i.l, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.be
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !8 ; 3 uses
  %i.bl = lshr i64 %i.bk, 1                       ; 5 uses
  %i.bm = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bn = add nuw i64 %i.bl, %i.bm                ; 5 uses
  %i.bo = sub i64 %.sroa.09.0, %i.bn
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bo ; 3 uses
  %i.bq = icmp samesign ugt i64 %i.bn, %3
  %i.br = trunc i64 %.sroa.023.135 to i1
  %i.bs = or i64 %i.bk, %.sroa.023.135
  %i.bt = trunc i64 %i.bs to i1
  %or.cond3.i = or i1 %i.bq, %i.bt
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bu = trunc i64 %i.bk to i1
  br i1 %i.bu, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bv = shl nuw nsw i64 %i.bn, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4d_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.br, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bw = or i64 %i.bl, 1
  %i.bx = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = xor i32 %i.bz, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1b_6ondisk12PostingEntryEENCINvMNtB20_5sliceSB15_11sort_by_keyjNCINvB19_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4c_(ptr noalias nofree noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 288230376151711744) %i.bl, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %i.bl
  %i.cc = or i64 %i.bm, 1
  %i.cd = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = xor i32 %i.cf, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1b_6ondisk12PostingEntryEENCINvMNtB20_5sliceSB15_11sort_by_keyjNCINvB19_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4c_(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 288230376151711744) %i.bm, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB13_6ondisk12PostingEntryEENCINvMNtB1S_5sliceSBX_11sort_by_keyjNCINvB11_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB43_(ptr noalias nofree noundef nonnull align 8 %i.bp, i64 noundef range(i64 0, 288230376151711744) %i.bn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i64 noundef %i.bl, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ch = shl nuw nsw i64 %i.bn, 1
  %i.ci = or disjoint i64 %i.ch, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4d_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1c_6ondisk12PostingEntryEENCINvMNtB21_5sliceSB16_11sort_by_keyjNCINvB1a_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4d_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.ci, %bb.x ], [ %i.bv, %bb.t ] ; 2 uses
  %i.cj = icmp ugt i64 %i.be, 1
  br i1 %i.cj, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ck = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cl = lshr i64 %.sroa.018.0, 1
  %i.cm = add nuw nsw i64 %i.cl, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cn = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cn, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.co = or i64 %1, 1
  %i.cp = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1b_6ondisk12PostingEntryEENCINvMNtB20_5sliceSB15_11sort_by_keyjNCINvB19_23execute_plan_with_masksNCNvNtCsbNLsQi0JuJ4_5tgrep6search18search_local_indexs_0Es_0E0EB4c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !21, !alias.scope !1154, !noundef !8 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.c)
  %i.h = icmp eq i64 %4, 1
  %i.i = icmp ult i64 %4, 1025
  %..i = select i1 %i.i, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.h, i64 8, i64 %..i
  %i.j = tail call i64 @llvm.umax.i64(i64 %.sroa.08.0.i, i64 %i.g) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1154
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.k, align 8, !alias.scope !1154
  call fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1154
  %i.l = load i64, ptr %i.a, align 8, !range !13, !noalias !1154, !noundef !8
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.n, align 8, !range !26, !noalias !1154, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !1154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1154
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.q, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.o, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #36
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.n, align 8, !noalias !1154, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1154
  store ptr %i.r, ptr %i.k, align 8, !alias.scope !1154
  %i.s = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.s)
  store i64 %i.j, ptr %0, align 8, !alias.scope !1154
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNvMs_NtCs4ciboHeBKjP_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB22_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE6resize0uE0ECsbNLsQi0JuJ4_5tgrep(ptr nofree noundef readonly captures(none) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !8
  %i.b = and i64 %i.a, -8                         ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNCINvMNtCs4ciboHeBKjP_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE6resize0uE0CsbNLsQi0JuJ4_5tgrep.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8
  %i.i = shl nuw nsw i64 %i.f, 4
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.i, i64 noundef 8) #34
  br label %_RNCINvMNtCs4ciboHeBKjP_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE6resize0uE0CsbNLsQi0JuJ4_5tgrep.exit

_RNCINvMNtCs4ciboHeBKjP_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCsdB2fuMRIQJX_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCs8sO4Nh65sHq_10rayon_core3job6JobRefE6resize0uE0CsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 16, i64 noundef 8) #34
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXCsgkkDPjMtGWv_3lruINtB3_6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtCsf3Ta7LF998c_4core4hash4Hash4hashNtNtCs9tUge3wv4pz_9hashbrown6hasher13DefaultHasherECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !8   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8 ; 8 uses
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !8 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1175, !noalias !1176, !noundef !8 ; 2 uses
  %i.f = tail call noundef i64 @llvm.fshr.i64(i64 %i.e, i64 %i.e, i64 %.val1) ; 6 uses
  store i64 %i.f, ptr %i.d, align 8, !alias.scope !1175, !noalias !1176
  %i.g = icmp samesign ult i64 %.val1, 17
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 16, !alias.scope !1175, !noalias !1176, !nonnull !8, !align !9, !noundef !8 ; 3 uses
  br i1 %i.g, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i64 @_RNvCskCtw33CmGvF_8foldhash15hash_bytes_long(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef range(i64 0, -9223372036854775808) %.val1, i64 noundef %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i) #32, !noalias !1175
  br label %_RNvXs_NtCskCtw33CmGvF_8foldhash4fastNtB4_10FoldHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher5write.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1178, !noalias !1179, !noundef !8 ; 4 uses
  %i.m = icmp samesign ugt i64 %.val1, 7
  br i1 %i.m, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNLsQi0JuJ4_5tgrep.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp samesign ugt i64 %.val1, 3
  br i1 %i.n, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNLsQi0JuJ4_5tgrep.exit.i.i.i, label %bb.e

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %bb.c
  %.sroa.014.0.copyload.i.i.i.i = load i64, ptr %.val, align 1, !alias.scope !1180, !noalias !1181
  %i.o = xor i64 %.sroa.014.0.copyload.i.i.i.i, %i.f
  %i.p = getelementptr i8, ptr %.val, i64 %.val1
  %i.q = getelementptr i8, ptr %i.p, i64 -8
  %.sroa.016.0.copyload.i.i.i.i = load i64, ptr %i.q, align 1, !alias.scope !1180, !noalias !1181
  %i.r = xor i64 %.sroa.016.0.copyload.i.i.i.i, %i.l
  br label %_RNvCskCtw33CmGvF_8foldhash16hash_bytes_short.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i = icmp eq i64 %.val1, 0
  br i1 %.not.i.i.i.i, label %_RNvCskCtw33CmGvF_8foldhash16hash_bytes_short.exit.i.i.i, label %bb.f

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNLsQi0JuJ4_5tgrep.exit.i.i.i: ; preds = %bb.d
  %i.s = getelementptr i8, ptr %.val, i64 %.val1
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %.sroa.019.0.copyload.i.i.i.i = load i32, ptr %i.t, align 1, !alias.scope !1180, !noalias !1181
  %.sroa.018.0.copyload.i.i.i.i = load i32, ptr %.val, align 1, !alias.scope !1180, !noalias !1181
  %i.u = zext i32 %.sroa.018.0.copyload.i.i.i.i to i64
  %i.v = xor i64 %i.f, %i.u
  %i.w = zext i32 %.sroa.019.0.copyload.i.i.i.i to i64
  %i.x = xor i64 %i.l, %i.w
  br label %_RNvCskCtw33CmGvF_8foldhash16hash_bytes_short.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.y = load i8, ptr %.val, align 1, !alias.scope !1180, !noalias !1181, !noundef !8
  %i.z = lshr i64 %.val1, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !1180, !noalias !1181, !noundef !8
  %i.ac = getelementptr i8, ptr %.val, i64 %.val1
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !1180, !noalias !1181, !noundef !8
  %i.af = zext i8 %i.y to i64
  %i.ag = xor i64 %i.f, %i.af
  %i.ah = zext i8 %i.ae to i64
  %i.ai = shl nuw nsw i64 %i.ah, 8
  %i.aj = zext i8 %i.ab to i64
  %i.ak = or disjoint i64 %i.ai, %i.aj
  %i.al = xor i64 %i.ak, %i.l
  br label %_RNvCskCtw33CmGvF_8foldhash16hash_bytes_short.exit.i.i.i

_RNvCskCtw33CmGvF_8foldhash16hash_bytes_short.exit.i.i.i: ; preds = %bb.f, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNLsQi0JuJ4_5tgrep.exit.i.i.i, %bb.e, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNLsQi0JuJ4_5tgrep.exit.i.i.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.r, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNLsQi0JuJ4_5tgrep.exit.i.i.i ], [ %i.x, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNLsQi0JuJ4_5tgrep.exit.i.i.i ], [ %i.al, %bb.f ], [ %i.l, %bb.e ]
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.o, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNLsQi0JuJ4_5tgrep.exit.i.i.i ], [ %i.v, %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsbNLsQi0JuJ4_5tgrep.exit.i.i.i ], [ %i.ag, %bb.f ], [ %i.f, %bb.e ]
  %i.am = zext i64 %.sroa.0.0.i.i.i.i to i128
  %i.an = zext i64 %.sroa.04.0.i.i.i.i to i128
  %i.ao = mul nuw i128 %i.am, %i.an               ; 2 uses
  %i.ap = lshr i128 %i.ao, 64
  %i.aq = xor i128 %i.ap, %i.ao
  %i.ar = trunc i128 %i.aq to i64
  br label %_RNvXs_NtCskCtw33CmGvF_8foldhash4fastNtB4_10FoldHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher5write.exit.i.i

_RNvXs_NtCskCtw33CmGvF_8foldhash4fastNtB4_10FoldHasherNtNtCsf3Ta7LF998c_4core4hash6Hasher5write.exit.i.i: ; preds = %_RNvCskCtw33CmGvF_8foldhash16hash_bytes_short.exit.i.i.i, %bb.b
  %storemerge.i.i.i = phi i64 [ %i.j, %bb.b ], [ %i.ar, %_RNvCskCtw33CmGvF_8foldhash16hash_bytes_short.exit.i.i.i ] ; 2 uses
  store i64 %storemerge.i.i.i, ptr %i.d, align 8, !alias.scope !1175, !noalias !1176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
end_hunk_0
