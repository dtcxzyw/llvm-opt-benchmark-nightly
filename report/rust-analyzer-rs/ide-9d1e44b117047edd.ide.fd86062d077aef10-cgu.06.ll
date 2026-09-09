Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.06?download=true
inline.NumInlined: 1705
inline.NumDeleted: 679
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyyNCNvNvBZ_18view_memory_layout11read_layouts0_0E0EB11_:bb.a
  %.sroa.0.1.i10.i = phi i64 [ %.sroa.0.2.i11.i, %bb.w ], [ %.sroa.0.0.i9.i, %bb.x ]
  %i.cj = icmp ult i64 %.sroa.0.1.i.i, %.sroa.0.1.i10.i
  br i1 %i.cj, label %bb.y, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyyNCNvNvB15_18view_memory_layout11read_layouts0_0E0EB17_.exit.i

bb.y:                                             ; preds = %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_.exit
  %i.ck = add nuw i64 %.sroa.01.1.i.i97, 1        ; 2 uses
  %exitcond114.not = icmp eq i64 %i.ck, %i.s
  br i1 %exitcond114.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyyNCNvNvB15_18view_memory_layout11read_layouts0_0E0EB17_.exit.i, label %.lr.ph98

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyyNCNvNvB15_18view_memory_layout11read_layouts0_0E0EB17_.exit.i: ; preds = %bb.y, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_.exit, %bb.t, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_.exit60
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i95, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_.exit60 ], [ %i.s, %bb.t ], [ %.sroa.01.1.i.i97, %_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_.exit ], [ %i.s, %bb.y ] ; 5 uses
  %i.cl = icmp samesign ule i64 %.sroa.0.0.i.i, %i.s
  tail call void @llvm.assume(i1 %i.cl)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.z

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyyNCNvNvB15_18view_memory_layout11read_layouts0_0E0EB17_.exit.i.thread127: ; preds = %.preheader
  br i1 %.not5.i129, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyyNCNvNvB15_18view_memory_layout11read_layouts0_0E0EB17_.exit.i.thread: ; preds = %.preheader93
  br i1 %.not5.i124, label %bb.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE7reverseBz_.exit

bb.z:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyyNCNvNvB15_18view_memory_layout11read_layouts0_0E0EB17_.exit.i
  %i.cm = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.cm, 0
  %or.cond = or i1 %i.ao, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE7reverseBz_.exit, label %.lr.ph.preheader.i.i

bb.aa:                                            ; preds = %bb.i
  %..i34 = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.s, i64 %.sroa.01.0)
  %i.cn = shl nuw nsw i64 %..i34, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyyNCNvNvB16_18view_memory_layout11read_layouts0_0E0EB18_.exit

bb.ab:                                            ; preds = %bb.i
  %..i33 = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 230584300921369396) %i.s, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyyNCNvNvB18_18view_memory_layout11read_layouts0_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.t, i64 noundef %..i33, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #33, !inline_history !481
  %i.co = shl nuw nsw i64 %..i33, 1
  %i.cp = or disjoint i64 %i.co, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyyNCNvNvB16_18view_memory_layout11read_layouts0_0E0EB18_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE7reverseBz_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeEEB15_.exit.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyyNCNvNvB15_18view_memory_layout11read_layouts0_0E0EB17_.exit.i.thread, %bb.j, %bb.z
  %.sroa.0.0.i.i8992 = phi i64 [ %i.s, %bb.j ], [ %.sroa.0.0.i.i, %bb.z ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyyNCNvNvB15_18view_memory_layout11read_layouts0_0E0EB17_.exit.i.thread ], [ %.sroa.0.0.i.i125132136, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeEEB15_.exit.i.i ]
  %i.cq = shl nuw nsw i64 %.sroa.0.0.i.i8992, 1
  %i.cr = or disjoint i64 %i.cq, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyyNCNvNvB16_18view_memory_layout11read_layouts0_0E0EB18_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.z, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyyNCNvNvB15_18view_memory_layout11read_layouts0_0E0EB17_.exit.i.thread127
  %i.cs = phi i64 [ %i.cm, %bb.z ], [ 1, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyyNCNvNvB15_18view_memory_layout11read_layouts0_0E0EB17_.exit.i.thread127 ]
  %.sroa.0.0.i.i125132136 = phi i64 [ %.sroa.0.0.i.i, %bb.z ], [ 2, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB12_11sort_by_keyyNCNvNvB15_18view_memory_layout11read_layouts0_0E0EB17_.exit.i.thread127 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %.sroa.0.0.i.i125132136
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeEEB15_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.cy, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeEEB15_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.cu = xor i64 %.sroa.0.017.i.i, -1
  %i.cv = getelementptr inbounds nuw [40 x i8], ptr %i.t, i64 %.sroa.0.017.i.i
  %i.cw = getelementptr [40 x i8], ptr %i.ct, i64 %i.cu
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECslLuZgPVt6hg_3ide(ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cw, i64 noundef 5)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeEEB15_.exit.i.i unwind label %bb.ac, !noalias !489

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #36, !noalias !489
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeEEB15_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.cy = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cy, %i.cs
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE7reverseBz_.exit, label %.lr.ph.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyyNCNvNvB16_18view_memory_layout11read_layouts0_0E0EB18_.exit: ; preds = %bb.aa, %bb.ab, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE7reverseBz_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.cr, %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE7reverseBz_.exit ], [ %i.cp, %bb.ab ], [ %i.cn, %bb.aa ] ; 2 uses
  %i.cz = lshr i64 %.sroa.023.0, 1
  %i.da = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.db = sub nsw i64 %factor, %i.cz
  %i.dc = add nuw nsw i64 %i.da, %factor
  %i.dd = mul i64 %i.db, %.sroa.0.0
  %i.de = mul i64 %i.dc, %.sroa.0.0
  %i.df = xor i64 %i.de, %i.dd
  %i.dg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.df, i1 false)
  %i.dh = trunc nuw nsw i64 %i.dg to i8
  br label %bb.g

.lr.ph103:                                        ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyyNCNvNvB19_18view_memory_layout11read_layouts0_0E0EB1b_.exit
  %.sroa.02.1102 = phi i64 [ %i.di, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyyNCNvNvB19_18view_memory_layout11read_layouts0_0E0EB1b_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.1101 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyyNCNvNvB19_18view_memory_layout11read_layouts0_0E0EB1b_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.di = add i64 %.sroa.02.1102, -1              ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.dk, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.ad

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyyNCNvNvB19_18view_memory_layout11read_layouts0_0E0EB1b_.exit, %.lr.ph103, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1101, %.lr.ph103 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyyNCNvNvB19_18view_memory_layout11read_layouts0_0E0EB1b_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1102, %.lr.ph103 ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyyNCNvNvB19_18view_memory_layout11read_layouts0_0E0EB1b_.exit ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.dm, align 1
  br i1 %i.q, label %bb.ak, label %bb.al

bb.ad:                                            ; preds = %.lr.ph103
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.di
  %i.do = load i64, ptr %i.dn, align 8, !noundef !5 ; 3 uses
  %i.dp = lshr i64 %i.do, 1                       ; 5 uses
  %i.dq = lshr i64 %.sroa.023.1101, 1             ; 3 uses
  %i.dr = add nuw i64 %i.dp, %i.dq                ; 5 uses
  %i.ds = sub i64 %.sroa.09.0, %i.dr
  %i.dt = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.ds ; 3 uses
  %i.du = icmp samesign ugt i64 %i.dr, %3
  %i.dv = trunc i64 %.sroa.023.1101 to i1
  %i.dw = or i64 %i.do, %.sroa.023.1101
  %i.dx = trunc i64 %i.dw to i1
  %or.cond3.i = or i1 %i.du, %i.dx
  br i1 %or.cond3.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dy = trunc i64 %i.do to i1
  br i1 %i.dy, label %bb.ag, label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.dz = shl nuw nsw i64 %i.dr, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyyNCNvNvB19_18view_memory_layout11read_layouts0_0E0EB1b_.exit

bb.ag:                                            ; preds = %bb.ah, %bb.ae
  br i1 %i.dv, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.ea = or i64 %i.dp, 1
  %i.eb = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ea, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = xor i32 %i.ed, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyyNCNvNvB18_18view_memory_layout11read_layouts0_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.dt, i64 noundef range(i64 0, 230584300921369396) %i.dp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.ee, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #33, !inline_history !482
  br label %bb.ag

bb.ai:                                            ; preds = %bb.ag
  %i.ef = getelementptr inbounds nuw [40 x i8], ptr %i.dt, i64 %i.dp
  %i.eg = or i64 %i.dq, 1
  %i.eh = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.eg, i1 true)
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = shl nuw nsw i32 %i.ei, 1
  %i.ek = xor i32 %i.ej, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyyNCNvNvB18_18view_memory_layout11read_layouts0_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %i.ef, i64 noundef range(i64 0, 230584300921369396) %i.dq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.ek, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #33, !inline_history !482
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBX_11sort_by_keyyNCNvNvB10_18view_memory_layout11read_layouts0_0E0EB12_(ptr noalias nofree noundef nonnull align 8 %i.dt, i64 noundef range(i64 0, 230584300921369396) %i.dr, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i64 noundef %i.dp, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.el = shl nuw nsw i64 %i.dr, 1
  %i.em = or disjoint i64 %i.el, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyyNCNvNvB19_18view_memory_layout11read_layouts0_0E0EB1b_.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB16_11sort_by_keyyNCNvNvB19_18view_memory_layout11read_layouts0_0E0EB1b_.exit: ; preds = %bb.af, %bb.aj
  %.sroa.0.0.i = phi i64 [ %i.em, %bb.aj ], [ %i.dz, %bb.af ] ; 2 uses
  %i.en = icmp ugt i64 %i.di, 1
  br i1 %i.en, label %.lr.ph103, label %._crit_edge

bb.ak:                                            ; preds = %._crit_edge
  %i.eo = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.ep = lshr i64 %.sroa.018.0, 1
  %i.eq = add nuw i64 %i.ep, %.sroa.09.0
  br label %bb.f

bb.al:                                            ; preds = %._crit_edge
  %i.er = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.er, 0
  br i1 %.not30, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.es = or i64 %1, 1
  %i.et = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.es, i1 true)
  %i.eu = trunc nuw nsw i64 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 1
  %i.ew = xor i32 %i.ev, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyyNCNvNvB18_18view_memory_layout11read_layouts0_0E0EB1a_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %i.ew, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #33, !inline_history !482
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.a, %bb.an
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB15_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 4 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef nonnull %6) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph132 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.fx, %.outer ] ; 23 uses
  %.sroa.16.0.ph131 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.fi, %.outer ] ; 2 uses
  %.sroa.025.0.ph130 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.i, %.outer ] ; 2 uses
  %.sroa.028.0.ph129 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 3 uses
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph132, i64 4
  %i.e = ptrtoint ptr %.sroa.0.0.ph132 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph129, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph129, i64 4
  %i.g = icmp eq i32 %.sroa.025.0.ph130, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph282

bb.b:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db5input5Crate12split_at_mutCslLuZgPVt6hg_3ide.exit
  %i.h = icmp eq i32 %i.i, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph282

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db5input5Crate12split_at_mutCslLuZgPVt6hg_3ide.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa122 = phi ptr [ %i.fj, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph132, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db5input5Crate12split_at_mutCslLuZgPVt6hg_3ide.exit ], [ %i.fx, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db5input5Crate12split_at_mutCslLuZgPVt6hg_3ide.exit ], [ %i.fi, %.outer ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB1s_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 4 %.sroa.0.0.ph.lcssa122, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias nofree noundef nonnull %6)
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0125.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph131, %.lr.ph ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYBW_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 4 %.sroa.0.0.ph132, i64 noundef %.sroa.16.0125.lcssa, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull %6)
  br label %bb.f

.lr.ph282:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0124281 = phi i32 [ %i.i, %bb.b ], [ %.sroa.025.0.ph130, %.lr.ph ]
  %.sroa.16.0125280 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph131, %.lr.ph ] ; 19 uses
  %i.i = add i32 %.sroa.025.0124281, -1           ; 4 uses
  %i.j = lshr i64 %.sroa.16.0125280, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.j, 5
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph132, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.j, 56
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph132, i64 %.idx2.i ; 4 uses
  %i.m = icmp samesign ult i64 %.sroa.16.0125280, 64
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph282
  %i.n = call noundef ptr @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot11median3_recNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB14_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide(ptr noundef nonnull readonly align 4 %.sroa.0.0.ph132, ptr noundef nonnull readonly %i.k, ptr noundef nonnull readonly %i.l, i64 noundef %i.j, ptr noalias nofree noundef nonnull %6)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph282
  %.val10.i = load i32, ptr %.sroa.0.0.ph132, align 4, !range !17, !alias.scope !559, !noalias !560, !noundef !5 ; 4 uses
  %.val11.i = load i32, ptr %i.d, align 4, !alias.scope !559, !noalias !560 ; 2 uses
  %.val12.i = load i32, ptr %i.k, align 4, !range !17, !alias.scope !559, !noalias !560, !noundef !5 ; 4 uses
  %i.o = getelementptr i8, ptr %i.k, i64 4
  %.val13.i = load i32, ptr %i.o, align 4, !alias.scope !559, !noalias !560 ; 2 uses
  %i.p = icmp eq i32 %.val10.i, %.val12.i
  %i.q = icmp ult i32 %.val11.i, %.val13.i
  %i.r = icmp ult i32 %.val10.i, %.val12.i
  %i.s = select i1 %i.p, i1 %i.q, i1 %i.r         ; 2 uses
  %.val8.i = load i32, ptr %i.l, align 4, !range !17, !alias.scope !559, !noalias !560, !noundef !5 ; 4 uses
  %i.t = getelementptr i8, ptr %i.l, i64 4
  %.val9.i = load i32, ptr %i.t, align 4, !alias.scope !559, !noalias !560 ; 2 uses
  %i.u = icmp eq i32 %.val10.i, %.val8.i
  %i.v = icmp ult i32 %.val11.i, %.val9.i
  %i.w = icmp ult i32 %.val10.i, %.val8.i
  %i.x = select i1 %i.u, i1 %i.v, i1 %i.w
  %i.y = xor i1 %i.s, %i.x
  br i1 %i.y, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = icmp eq i32 %.val12.i, %.val8.i
  %i.aa = icmp ult i32 %.val13.i, %.val9.i
  %i.ab = icmp ult i32 %.val12.i, %.val8.i
  %i.ac = select i1 %i.z, i1 %i.aa, i1 %i.ab
  %i.ad = xor i1 %i.s, %i.ac
  %..i.i = select i1 %i.ad, ptr %i.l, ptr %i.k
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.n, %bb.c ], [ %.sroa.0.0.ph132, %bb.d ], [ %..i.i, %bb.e ]
  %i.ae = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.af = sub nuw i64 %i.ae, %i.e                 ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.af, 3          ; 3 uses
  %i.ag = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0125280
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph132, i64 %i.af ; 5 uses
  %7 = load i32, ptr %i.ah, align 4               ; 13 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %9 = load i32, ptr %8, align 4                  ; 7 uses
  store i32 %7, ptr %i.a, align 4
  store i32 %9, ptr %i.c, align 4
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.028.0.val = load i32, ptr %.sroa.028.0.ph129, align 4, !range !17, !noundef !5 ; 2 uses
  %.sroa.028.0.val37 = load i32, ptr %i.f, align 4
  %i.ai = icmp eq i32 %.sroa.028.0.val, %7
  %i.aj = icmp ult i32 %.sroa.028.0.val37, %9
  %i.ak = icmp ult i32 %.sroa.028.0.val, %7
  %i.al = select i1 %i.ai, i1 %i.aj, i1 %i.ak
  br i1 %i.al, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !561)
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %.not89 = icmp samesign ult i64 %3, %.sroa.16.0125280
  br i1 %.not89, label %bb.k, label %bb.j, !prof !12

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0125280 ; 3 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.43.0.i = phi ptr [ %i.am, %bb.j ], [ %i.bt, %bb.m ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.27.2.lcssa.i, %bb.m ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph132, %bb.j ], [ %i.bw, %bb.m ] ; 3 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.0125280, %bb.m ] ; 3 uses
  %i.an = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i39, i64 3)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %i.an ; 2 uses
  %i.ap = icmp ult ptr %.sroa.9.0.i, %i.ao
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %i.bc, %.lr.ph.i ], [ %.sroa.9.0.i, %bb.l ] ; 10 uses
  %.sroa.27.130.i = phi i64 [ %i.bb, %.lr.ph.i ], [ %.sroa.27.0.i, %bb.l ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %39, %.lr.ph.i ], [ %.sroa.43.0.i, %bb.l ] ; 4 uses
  %.val29.i = load i32, ptr %.sroa.9.131.i, align 4, !range !17, !alias.scope !561, !noalias !562, !noundef !5 ; 2 uses
  %i.aq = getelementptr i8, ptr %.sroa.9.131.i, i64 4
  %.val30.i = load i32, ptr %i.aq, align 4, !alias.scope !561, !noalias !562
  %10 = icmp eq i32 %.val29.i, %7
  %11 = icmp ult i32 %.val30.i, %9
  %12 = icmp ult i32 %.val29.i, %7
  %13 = select i1 %10, i1 %11, i1 %12             ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8
  %.sroa.01.0.i.i = select i1 %13, ptr %2, ptr %i.ar
  %14 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  %i.as = load i64, ptr %.sroa.9.131.i, align 4, !alias.scope !561, !noalias !563
  store i64 %i.as, ptr %14, align 4, !alias.scope !562, !noalias !564
  %15 = zext i1 %13 to i64
  %16 = add i64 %.sroa.27.130.i, %15              ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8 ; 2 uses
  %.val25.i = load i32, ptr %17, align 4, !range !17, !alias.scope !561, !noalias !562, !noundef !5 ; 2 uses
  %18 = getelementptr i8, ptr %.sroa.9.131.i, i64 12
  %.val26.i = load i32, ptr %18, align 4, !alias.scope !561, !noalias !562
  %19 = icmp eq i32 %.val25.i, %7
  %20 = icmp ult i32 %.val26.i, %9
  %21 = icmp ult i32 %.val25.i, %7
  %22 = select i1 %19, i1 %20, i1 %21             ; 2 uses
  %23 = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i33.i.a = select i1 %22, ptr %2, ptr %23
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i33.i.a, i64 %16
  %24 = load i64, ptr %17, align 4, !alias.scope !561, !noalias !565
  store i64 %24, ptr %i.at, align 4, !alias.scope !562, !noalias !566
  %i.au = zext i1 %22 to i64
  %i.av = add i64 %16, %i.au                      ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16 ; 2 uses
  %.val21.i = load i32, ptr %25, align 4, !range !17, !alias.scope !561, !noalias !562, !noundef !5 ; 2 uses
  %26 = getelementptr i8, ptr %.sroa.9.131.i, i64 20
  %.val22.i = load i32, ptr %26, align 4, !alias.scope !561, !noalias !562
  %27 = icmp eq i32 %.val21.i, %7
  %28 = icmp ult i32 %.val22.i, %9
  %29 = icmp ult i32 %.val21.i, %7
  %30 = select i1 %27, i1 %28, i1 %29             ; 2 uses
  %31 = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -24
  %.sroa.01.0.i34.i.a = select i1 %30, ptr %2, ptr %31
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i34.i.a, i64 %i.av
  %32 = load i64, ptr %25, align 4, !alias.scope !561, !noalias !567
  store i64 %32, ptr %i.aw, align 4, !alias.scope !562, !noalias !568
  %i.ax = zext i1 %30 to i64
  %i.ay = add i64 %i.av, %i.ax                    ; 2 uses
  %33 = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 24 ; 2 uses
  %.val17.i = load i32, ptr %33, align 4, !range !17, !alias.scope !561, !noalias !562, !noundef !5 ; 2 uses
  %34 = getelementptr i8, ptr %.sroa.9.131.i, i64 28
  %.val18.i = load i32, ptr %34, align 4, !alias.scope !561, !noalias !562
  %35 = icmp eq i32 %.val17.i, %7
  %36 = icmp ult i32 %.val18.i, %9
  %37 = icmp ult i32 %.val17.i, %7
  %38 = select i1 %35, i1 %36, i1 %37             ; 2 uses
  %39 = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32 ; 3 uses
  %.sroa.01.0.i35.i = select i1 %38, ptr %2, ptr %39
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i35.i, i64 %i.ay
  %40 = load i64, ptr %33, align 4, !alias.scope !561, !noalias !569
  store i64 %40, ptr %i.az, align 4, !alias.scope !562, !noalias !570
  %i.ba = zext i1 %38 to i64
  %i.bb = add i64 %i.ay, %i.ba                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 3 uses
  %i.bd = icmp ult ptr %i.bc, %i.ao
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.l
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.l ], [ %39, %.lr.ph.i ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.l ], [ %i.bb, %.lr.ph.i ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.l ], [ %i.bc, %.lr.ph.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.0.0.i39 ; 2 uses
  %i.bf = icmp ult ptr %.sroa.9.1.lcssa.i, %i.be
  br i1 %i.bf, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.bm, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.bq, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.br, %.lr.ph38.i ] ; 2 uses
  %i.bg = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.0125280
  br i1 %i.bg, label %bb.n, label %bb.m

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.br, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.sroa.27.235.i = phi i64 [ %i.bq, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.bm, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i32, ptr %.sroa.9.236.i, align 4, !range !17, !alias.scope !561, !noalias !562, !noundef !5 ; 2 uses
  %i.bh = getelementptr i8, ptr %.sroa.9.236.i, i64 4
  %.val14.i = load i32, ptr %i.bh, align 4, !alias.scope !561, !noalias !562
  %i.bi = icmp eq i32 %.val.i, %7
  %i.bj = icmp ult i32 %.val14.i, %9
  %i.bk = icmp ult i32 %.val.i, %7
  %i.bl = select i1 %i.bi, i1 %i.bj, i1 %i.bk     ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8 ; 3 uses
  %.sroa.01.0.i36.i = select i1 %i.bl, ptr %2, ptr %i.bm
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i36.i, i64 %.sroa.27.235.i
  %i.bo = load i64, ptr %.sroa.9.236.i, align 4, !alias.scope !561, !noalias !571
  store i64 %i.bo, ptr %i.bn, align 4, !alias.scope !562, !noalias !572
  %i.bp = zext i1 %i.bl to i64
  %i.bq = add i64 %.sroa.27.235.i, %i.bp          ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8 ; 3 uses
  %i.bs = icmp ult ptr %i.br, %i.be
  br i1 %i.bs, label %.lr.ph38.i, label %._crit_edge39.i

bb.m:                                             ; preds = %._crit_edge39.i
  %i.bt = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.sroa.27.2.lcssa.i
  %i.bv = load i64, ptr %.sroa.9.2.lcssa.i, align 4, !alias.scope !561, !noalias !573
  store i64 %i.bv, ptr %i.bu, align 4, !alias.scope !562, !noalias !574
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.l

bb.n:                                             ; preds = %._crit_edge39.i
  %i.bx = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph132, ptr nonnull align 4 %2, i64 %i.bx, i1 false), !alias.scope !575
  %i.by = sub i64 %.sroa.16.0125280, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0125280, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.n
  %i.bz = getelementptr [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check289 = icmp ult i64 %i.by, 4
  br i1 %min.iters.check289, label %scalar.ph288.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %.lr.ph45.i
  %n.vec291 = and i64 %i.by, -4                   ; 3 uses
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next298, %vector.body292 ] ; 3 uses
  %i.ca = xor i64 %index293, -1
  %i.cb = getelementptr [8 x i8], ptr %i.am, i64 %i.ca ; 2 uses
  %i.cc = getelementptr [8 x i8], ptr %i.bz, i64 %index293 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cb, i64 -8
  %i.ce = getelementptr i8, ptr %i.cb, i64 -24
  %wide.load294 = load <2 x i64>, ptr %i.cd, align 4, !alias.scope !562, !noalias !561
  %wide.load295 = load <2 x i64>, ptr %i.ce, align 4, !alias.scope !562, !noalias !561
  %reverse296 = shufflevector <2 x i64> %wide.load294, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse297 = shufflevector <2 x i64> %wide.load295, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.cf = getelementptr i8, ptr %i.cc, i64 16
  store <2 x i64> %reverse296, ptr %i.cc, align 4, !alias.scope !561, !noalias !562
  store <2 x i64> %reverse297, ptr %i.cf, align 4, !alias.scope !561, !noalias !562
  %index.next298 = add nuw i64 %index293, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next298, %n.vec291
  br i1 %i.cg, label %middle.block299, label %vector.body292, !llvm.loop !537

middle.block299:                                  ; preds = %vector.body292
  %cmp.n300 = icmp eq i64 %i.by, %n.vec291
  br i1 %cmp.n300, label %.loopexit, label %scalar.ph288.preheader

scalar.ph288.preheader:                           ; preds = %.lr.ph45.i, %middle.block299
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec291, %middle.block299 ]
  br label %scalar.ph288

scalar.ph288:                                     ; preds = %scalar.ph288.preheader, %scalar.ph288
  %.sroa.07.043.i = phi i64 [ %i.ch, %scalar.ph288 ], [ %.sroa.07.043.i.ph, %scalar.ph288.preheader ] ; 3 uses
  %i.ch = add nuw i64 %.sroa.07.043.i, 1          ; 2 uses
  %i.ci = xor i64 %.sroa.07.043.i, -1
  %i.cj = getelementptr [8 x i8], ptr %i.am, i64 %i.ci
  %i.ck = getelementptr [8 x i8], ptr %i.bz, i64 %.sroa.07.043.i
  %i.cl = load i64, ptr %i.cj, align 4, !alias.scope !562, !noalias !561
  store i64 %i.cl, ptr %i.ck, align 4, !alias.scope !561, !noalias !562
  %exitcond.not.i = icmp eq i64 %i.ch, %i.by
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph288, !llvm.loop !538

.loopexit:                                        ; preds = %scalar.ph288, %middle.block299, %bb.n
  %i.cm = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.cm, label %.thread, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %.not.i40 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0125280
  br i1 %.not.i40, label %bb.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db5input5Crate12split_at_mutCslLuZgPVt6hg_3ide.exit, !prof !10

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @52, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #35, !noalias !578
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db5input5Crate12split_at_mutCslLuZgPVt6hg_3ide.exit: ; preds = %bb.o
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph132) ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB15_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 4 %i.cn, i64 noundef %i.by, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias nofree noundef nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.co = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.co, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !579)
  call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %.not90 = icmp samesign ult i64 %3, %.sroa.16.0125280
  br i1 %.not90, label %bb.r, label %bb.q, !prof !12

bb.q:                                             ; preds = %.thread
  %i.cq = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0125280 ; 3 uses
  br label %bb.s

bb.r:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.u, %bb.q
  %.sroa.43.0.i43 = phi ptr [ %i.cq, %bb.q ], [ %i.fc, %bb.u ] ; 2 uses
  %.sroa.27.0.i44 = phi i64 [ 0, %bb.q ], [ %i.ff, %bb.u ] ; 2 uses
  %.sroa.9.0.i45 = phi ptr [ %.sroa.0.0.ph132, %bb.q ], [ %i.fg, %bb.u ] ; 3 uses
  %.sroa.0.0.i46 = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %.sroa.16.0125280, %bb.u ] ; 3 uses
  %i.cr = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i46, i64 3)
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %i.cr ; 2 uses
  %i.ct = icmp ult ptr %.sroa.9.0.i45, %i.cs
  br i1 %i.ct, label %.lr.ph.i68, label %._crit_edge.i47

.lr.ph.i68:                                       ; preds = %bb.s
  %.val31.i69 = load i32, ptr %i.ah, align 4, !range !17, !alias.scope !579, !noalias !580, !noundef !5 ; 8 uses
  %.val32.i75 = load i32, ptr %i.cp, align 4, !alias.scope !579, !noalias !580 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i68
  %.sroa.9.131.i70 = phi ptr [ %.sroa.9.0.i45, %.lr.ph.i68 ], [ %i.el, %bb.t ] ; 10 uses
  %.sroa.27.130.i71 = phi i64 [ %.sroa.27.0.i44, %.lr.ph.i68 ], [ %i.ek, %bb.t ] ; 2 uses
  %.sroa.43.129.i72 = phi ptr [ %.sroa.43.0.i43, %.lr.ph.i68 ], [ %i.eg, %bb.t ] ; 4 uses
  %.val29.i73 = load i32, ptr %.sroa.9.131.i70, align 4, !range !17, !alias.scope !579, !noalias !580, !noundef !5 ; 2 uses
  %i.cu = getelementptr i8, ptr %.sroa.9.131.i70, i64 4
  %.val30.i74 = load i32, ptr %i.cu, align 4, !alias.scope !579, !noalias !580
  %i.cv = icmp eq i32 %.val31.i69, %.val29.i73
  %i.cw = icmp uge i32 %.val32.i75, %.val30.i74
  %i.cx = icmp uge i32 %.val31.i69, %.val29.i73
  %i.cy = select i1 %i.cv, i1 %i.cw, i1 %i.cx     ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -8
  %.sroa.01.0.i.i76 = select i1 %i.cy, ptr %2, ptr %i.cz
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i76, i64 %.sroa.27.130.i71
  %i.db = load i64, ptr %.sroa.9.131.i70, align 4, !alias.scope !579, !noalias !581
  store i64 %i.db, ptr %i.da, align 4, !alias.scope !580, !noalias !582
  %i.dc = zext i1 %i.cy to i64
  %i.dd = add i64 %.sroa.27.130.i71, %i.dc        ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 8 ; 2 uses
  %.val25.i77 = load i32, ptr %i.de, align 4, !range !17, !alias.scope !579, !noalias !580, !noundef !5 ; 2 uses
  %i.df = getelementptr i8, ptr %.sroa.9.131.i70, i64 12
  %.val26.i78 = load i32, ptr %i.df, align 4, !alias.scope !579, !noalias !580
  %i.dg = icmp eq i32 %.val31.i69, %.val25.i77
  %i.dh = icmp uge i32 %.val32.i75, %.val26.i78
  %i.di = icmp uge i32 %.val31.i69, %.val25.i77
  %i.dj = select i1 %i.dg, i1 %i.dh, i1 %i.di     ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -16
  %.sroa.01.0.i33.i79 = select i1 %i.dj, ptr %2, ptr %i.dk
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i33.i79, i64 %i.dd
  %i.dm = load i64, ptr %i.de, align 4, !alias.scope !579, !noalias !583
  store i64 %i.dm, ptr %i.dl, align 4, !alias.scope !580, !noalias !584
  %i.dn = zext i1 %i.dj to i64
  %i.do = add i64 %i.dd, %i.dn                    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 16 ; 2 uses
  %.val21.i80 = load i32, ptr %i.dp, align 4, !range !17, !alias.scope !579, !noalias !580, !noundef !5 ; 2 uses
  %i.dq = getelementptr i8, ptr %.sroa.9.131.i70, i64 20
  %.val22.i81 = load i32, ptr %i.dq, align 4, !alias.scope !579, !noalias !580
  %i.dr = icmp eq i32 %.val31.i69, %.val21.i80
  %i.ds = icmp uge i32 %.val32.i75, %.val22.i81
  %i.dt = icmp uge i32 %.val31.i69, %.val21.i80
  %i.du = select i1 %i.dr, i1 %i.ds, i1 %i.dt     ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -24
  %.sroa.01.0.i34.i82 = select i1 %i.du, ptr %2, ptr %i.dv
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i34.i82, i64 %i.do
  %i.dx = load i64, ptr %i.dp, align 4, !alias.scope !579, !noalias !585
  store i64 %i.dx, ptr %i.dw, align 4, !alias.scope !580, !noalias !586
  %i.dy = zext i1 %i.du to i64
  %i.dz = add i64 %i.do, %i.dy                    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 24 ; 2 uses
  %.val17.i83 = load i32, ptr %i.ea, align 4, !range !17, !alias.scope !579, !noalias !580, !noundef !5 ; 2 uses
  %i.eb = getelementptr i8, ptr %.sroa.9.131.i70, i64 28
  %.val18.i84 = load i32, ptr %i.eb, align 4, !alias.scope !579, !noalias !580
  %i.ec = icmp eq i32 %.val31.i69, %.val17.i83
  %i.ed = icmp uge i32 %.val32.i75, %.val18.i84
  %i.ee = icmp uge i32 %.val31.i69, %.val17.i83
  %i.ef = select i1 %i.ec, i1 %i.ed, i1 %i.ee     ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %.sroa.43.129.i72, i64 -32 ; 3 uses
  %.sroa.01.0.i35.i85 = select i1 %i.ef, ptr %2, ptr %i.eg
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i35.i85, i64 %i.dz
  %i.ei = load i64, ptr %i.ea, align 4, !alias.scope !579, !noalias !587
  store i64 %i.ei, ptr %i.eh, align 4, !alias.scope !580, !noalias !588
  %i.ej = zext i1 %i.ef to i64
  %i.ek = add i64 %i.dz, %i.ej                    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i70, i64 32 ; 3 uses
  %i.em = icmp ult ptr %i.el, %i.cs
  br i1 %i.em, label %bb.t, label %._crit_edge.i47

._crit_edge.i47:                                  ; preds = %bb.t, %bb.s
  %.sroa.43.1.lcssa.i48 = phi ptr [ %.sroa.43.0.i43, %bb.s ], [ %i.eg, %bb.t ] ; 2 uses
  %.sroa.27.1.lcssa.i49 = phi i64 [ %.sroa.27.0.i44, %bb.s ], [ %i.ek, %bb.t ] ; 2 uses
  %.sroa.9.1.lcssa.i50 = phi ptr [ %.sroa.9.0.i45, %bb.s ], [ %i.el, %bb.t ] ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.0.0.i46 ; 2 uses
  %i.eo = icmp ult ptr %.sroa.9.1.lcssa.i50, %i.en
  br i1 %i.eo, label %.lr.ph38.i59.preheader, label %._crit_edge39.i51

.lr.ph38.i59.preheader:                           ; preds = %._crit_edge.i47
  %.val15.i65 = load i32, ptr %i.ah, align 4, !range !17, !alias.scope !579, !noalias !580, !noundef !5 ; 2 uses
  %.val16.i66 = load i32, ptr %i.cp, align 4, !alias.scope !579, !noalias !580
  br label %.lr.ph38.i59

._crit_edge39.i51:                                ; preds = %.lr.ph38.i59, %._crit_edge.i47
  %.sroa.43.2.lcssa.i52 = phi ptr [ %.sroa.43.1.lcssa.i48, %._crit_edge.i47 ], [ %i.ev, %.lr.ph38.i59 ]
  %.sroa.27.2.lcssa.i53 = phi i64 [ %.sroa.27.1.lcssa.i49, %._crit_edge.i47 ], [ %i.ez, %.lr.ph38.i59 ] ; 9 uses
  %.sroa.9.2.lcssa.i54 = phi ptr [ %.sroa.9.1.lcssa.i50, %._crit_edge.i47 ], [ %i.fa, %.lr.ph38.i59 ] ; 2 uses
  %i.ep = icmp eq i64 %.sroa.0.0.i46, %.sroa.16.0125280
  br i1 %i.ep, label %bb.v, label %bb.u

.lr.ph38.i59:                                     ; preds = %.lr.ph38.i59.preheader, %.lr.ph38.i59
  %.sroa.9.236.i60 = phi ptr [ %i.fa, %.lr.ph38.i59 ], [ %.sroa.9.1.lcssa.i50, %.lr.ph38.i59.preheader ] ; 4 uses
  %.sroa.27.235.i61 = phi i64 [ %i.ez, %.lr.ph38.i59 ], [ %.sroa.27.1.lcssa.i49, %.lr.ph38.i59.preheader ] ; 2 uses
  %.sroa.43.234.i62 = phi ptr [ %i.ev, %.lr.ph38.i59 ], [ %.sroa.43.1.lcssa.i48, %.lr.ph38.i59.preheader ]
  %.val.i63 = load i32, ptr %.sroa.9.236.i60, align 4, !range !17, !alias.scope !579, !noalias !580, !noundef !5 ; 2 uses
  %i.eq = getelementptr i8, ptr %.sroa.9.236.i60, i64 4
  %.val14.i64 = load i32, ptr %i.eq, align 4, !alias.scope !579, !noalias !580
  %i.er = icmp eq i32 %.val15.i65, %.val.i63
  %i.es = icmp uge i32 %.val16.i66, %.val14.i64
  %i.et = icmp uge i32 %.val15.i65, %.val.i63
  %i.eu = select i1 %i.er, i1 %i.es, i1 %i.et     ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %.sroa.43.234.i62, i64 -8 ; 3 uses
  %.sroa.01.0.i36.i67 = select i1 %i.eu, ptr %2, ptr %i.ev
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i36.i67, i64 %.sroa.27.235.i61
  %i.ex = load i64, ptr %.sroa.9.236.i60, align 4, !alias.scope !579, !noalias !589
  store i64 %i.ex, ptr %i.ew, align 4, !alias.scope !580, !noalias !590
  %i.ey = zext i1 %i.eu to i64
  %i.ez = add i64 %.sroa.27.235.i61, %i.ey        ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i60, i64 8 ; 3 uses
  %i.fb = icmp ult ptr %i.fa, %i.en
  br i1 %i.fb, label %.lr.ph38.i59, label %._crit_edge39.i51

bb.u:                                             ; preds = %._crit_edge39.i51
  %i.fc = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i52, i64 -8
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i53
  %i.fe = load i64, ptr %.sroa.9.2.lcssa.i54, align 4, !alias.scope !579, !noalias !591
  store i64 %i.fe, ptr %i.fd, align 4, !alias.scope !580, !noalias !592
  %i.ff = add i64 %.sroa.27.2.lcssa.i53, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i54, i64 8
  br label %bb.s

bb.v:                                             ; preds = %._crit_edge39.i51
  %i.fh = shl nuw nsw i64 %.sroa.27.2.lcssa.i53, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph132, ptr nonnull align 4 %2, i64 %i.fh, i1 false), !alias.scope !593
  %i.fi = sub i64 %.sroa.16.0125280, %.sroa.27.2.lcssa.i53 ; 7 uses
  %.not47.i55 = icmp eq i64 %.sroa.16.0125280, %.sroa.27.2.lcssa.i53
  %i.fj = getelementptr [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.27.2.lcssa.i53 ; 3 uses
  br i1 %.not47.i55, label %.outer.thread, label %.lr.ph45.i56

.lr.ph45.i56:                                     ; preds = %bb.v
  %min.iters.check = icmp ult i64 %i.fi, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph45.i56
  %n.vec = and i64 %i.fi, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fk = xor i64 %index, -1
  %i.fl = getelementptr [8 x i8], ptr %i.cq, i64 %i.fk ; 2 uses
  %i.fm = getelementptr [8 x i8], ptr %i.fj, i64 %index ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fl, i64 -8
  %i.fo = getelementptr i8, ptr %i.fl, i64 -24
  %wide.load = load <2 x i64>, ptr %i.fn, align 4, !alias.scope !580, !noalias !579
  %wide.load286 = load <2 x i64>, ptr %i.fo, align 4, !alias.scope !580, !noalias !579
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse287 = shufflevector <2 x i64> %wide.load286, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.fp = getelementptr i8, ptr %i.fm, i64 16
  store <2 x i64> %reverse, ptr %i.fm, align 4, !alias.scope !579, !noalias !580
  store <2 x i64> %reverse287, ptr %i.fp, align 4, !alias.scope !579, !noalias !580
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !557

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fi, %n.vec
  br i1 %cmp.n, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslLuZgPVt6hg_3ide.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph45.i56, %middle.block
  %.sroa.07.043.i57.ph = phi i64 [ 0, %.lr.ph45.i56 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i57 = phi i64 [ %i.fr, %scalar.ph ], [ %.sroa.07.043.i57.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fr = add nuw i64 %.sroa.07.043.i57, 1        ; 2 uses
  %i.fs = xor i64 %.sroa.07.043.i57, -1
  %i.ft = getelementptr [8 x i8], ptr %i.cq, i64 %i.fs
  %i.fu = getelementptr [8 x i8], ptr %i.fj, i64 %.sroa.07.043.i57
  %i.fv = load i64, ptr %i.ft, align 4, !alias.scope !580, !noalias !579
  store i64 %i.fv, ptr %i.fu, align 4, !alias.scope !579, !noalias !580
  %exitcond.not.i58 = icmp eq i64 %i.fr, %i.fi
  br i1 %exitcond.not.i58, label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslLuZgPVt6hg_3ide.exit, label %scalar.ph, !llvm.loop !558

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslLuZgPVt6hg_3ide.exit: ; preds = %scalar.ph, %middle.block
  %i.fw = icmp ugt i64 %.sroa.27.2.lcssa.i53, %.sroa.16.0125280
  br i1 %i.fw, label %bb.w, label %.outer, !prof !10

.outer.thread:                                    ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslLuZgPVt6hg_3ide.exit
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph132, i64 %.sroa.27.2.lcssa.i53 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fy = icmp ult i64 %i.fi, 33
  br i1 %i.fy, label %.outer._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslLuZgPVt6hg_3ide.exit
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i53, i64 noundef %.sroa.16.0125280, i64 noundef %.sroa.16.0125280, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #35
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2H_bENCNvB17_11annotationss1_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 57646075230342349) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 57646075230342349) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(160) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 6 uses
  %i.b = alloca [12 x i8], align 8                ; 6 uses
  %i.c = alloca [12 x i8], align 8                ; 6 uses
  %i.d = alloca [12 x i8], align 8                ; 6 uses
  %i.e = alloca [12 x i8], align 8                ; 6 uses
  %i.f = alloca [12 x i8], align 8                ; 6 uses
  %i.g = alloca [12 x i8], align 4                ; 6 uses
  %i.h = alloca [12 x i8], align 4                ; 6 uses
  %i.i = alloca [12 x i8], align 4                ; 6 uses
  %i.j = alloca [12 x i8], align 4                ; 6 uses
  %i.k = alloca [12 x i8], align 4                ; 6 uses
  %i.l = alloca [12 x i8], align 4                ; 6 uses
  %i.m = alloca [160 x i8], align 8               ; 6 uses
  %i.n = icmp samesign ult i64 %1, 33
  br i1 %i.n, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph99 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.gp, %.outer ] ; 22 uses
  %.sroa.16.0.ph98 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.ga, %.outer ] ; 2 uses
  %.sroa.025.0.ph97 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.as, %.outer ] ; 2 uses
  %.sroa.028.0.ph96 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph99, i64 152
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph99, i64 156
  %i.ao = ptrtoint ptr %.sroa.0.0.ph99 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph96, null
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph96, i64 152
  %i.aq = icmp eq i32 %.sroa.025.0.ph97, 0
  br i1 %i.aq, label %.lr.ph._crit_edge, label %.lr.ph236

bb.b:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation12split_at_mutBy_.exit
  %i.ar = icmp eq i32 %i.as, 0
  br i1 %i.ar, label %.lr.ph._crit_edge, label %.lr.ph236

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation12split_at_mutBy_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa90 = phi ptr [ %i.gb, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph99, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation12split_at_mutBy_.exit ], [ %i.gp, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation12split_at_mutBy_.exit ], [ %i.ga, %.outer ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1s_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB34_bENCNvB1u_11annotationss1_0E0EB1w_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa90, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 57646075230342349) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.l

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.092.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph98, %.lr.ph ]
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBW_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2x_bENCNvBY_11annotationss1_0E0EB10_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph99, i64 noundef %.sroa.16.092.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.l

.lr.ph236:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.091235 = phi i32 [ %i.as, %bb.b ], [ %.sroa.025.0.ph97, %.lr.ph ]
  %.sroa.16.092234 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph98, %.lr.ph ] ; 21 uses
  %i.as = add i32 %.sroa.025.091235, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.at = lshr i64 %.sroa.16.092234, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.at, 640
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph99, i64 %.idx.i ; 5 uses
  %.idx2.i = mul nuw nsw i64 %i.at, 1120
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph99, i64 %.idx2.i ; 5 uses
  %i.aw = icmp samesign ult i64 %.sroa.16.092234, 64
  br i1 %i.aw, label %bb.d, label %bb.c

end_hunk_0
begin_hunk_1_@llvm.abs.i128
!364 = !{!359, !353, !352}
!365 = !{!359, !356}
!366 = !{!358, !353, !352}
!367 = !{!359}
!368 = !{!358}
!369 = distinct !{!369, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_"}
!370 = distinct !{!370, !369, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 0"}
!371 = distinct !{!371, !369, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 1"}
!372 = distinct !{!372, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2F_bENCNvB15_11annotationss1_0E0EB17_"}
!373 = distinct !{!373, !372, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2F_bENCNvB15_11annotationss1_0E0EB17_: argument 2"}
!374 = distinct !{!374, !372, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2F_bENCNvB15_11annotationss1_0E0EB17_: argument 1"}
!375 = distinct !{!375, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!376 = distinct !{!376, !375, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!377 = distinct !{!377, !375, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!378 = distinct !{!378, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!379 = distinct !{!379, !378, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!380 = distinct !{!380, !378, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!381 = distinct !{!381, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_"}
!382 = distinct !{!382, !381, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 0"}
!383 = distinct !{!383, !381, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 1"}
!384 = distinct !{!384, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!385 = distinct !{!385, !384, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!386 = distinct !{!386, !384, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!387 = distinct !{!387, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!388 = distinct !{!388, !387, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!389 = distinct !{!389, !387, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!390 = distinct !{!390, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_"}
!391 = distinct !{!391, !390, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 0"}
!392 = distinct !{!392, !390, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 1"}
!393 = distinct !{!393, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!394 = distinct !{!394, !393, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!395 = distinct !{!395, !393, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!396 = distinct !{!396, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!397 = distinct !{!397, !396, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!398 = distinct !{!398, !396, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!399 = distinct !{null}
!400 = distinct !{null}
!401 = !{!370}
!402 = !{!371}
!403 = !{!370, !371, !374, !373}
!404 = !{!376}
!405 = !{!374, !373}
!406 = !{!377}
!407 = !{!377, !370}
!408 = !{!376, !371, !374, !373}
!409 = !{!377, !370, !371, !374, !373}
!410 = !{!379}
!411 = !{!380}
!412 = !{!380, !371}
!413 = !{!379, !370, !374, !373}
!414 = !{!380, !370, !371, !374, !373}
!415 = !{!382}
!416 = !{!383}
!417 = !{!382, !383, !374, !373}
!418 = !{!385}
!419 = !{!386}
!420 = !{!386, !382}
!421 = !{!385, !383, !374, !373}
!422 = !{!386, !382, !383, !374, !373}
!423 = !{!388}
!424 = !{!389}
!425 = !{!389, !383}
!426 = !{!388, !382, !374, !373}
!427 = !{!389, !382, !383, !374, !373}
!428 = !{!391}
!429 = !{!392}
!430 = !{!391, !392, !374, !373}
!431 = !{!394}
!432 = !{!395}
!433 = !{!395, !391}
!434 = !{!394, !392, !374, !373}
!435 = !{!395, !391, !392, !374, !373}
!436 = !{!397}
!437 = !{!398}
!438 = !{!398, !392}
!439 = !{!397, !391, !374, !373}
!440 = !{!398, !391, !392, !374, !373}
!441 = distinct !{!441, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB15_29dedupe_or_merge_hover_actions0E0EB17_"}
!442 = distinct !{!442, !441, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB15_29dedupe_or_merge_hover_actions0E0EB17_: argument 0"}
!443 = distinct !{!443, !441, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB15_29dedupe_or_merge_hover_actions0E0EB17_: argument 2"}
!444 = distinct !{!444, !441, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNCNvB15_29dedupe_or_merge_hover_actions0E0EB17_: argument 1"}
!445 = distinct !{null}
!446 = distinct !{null}
!447 = !{!442}
!448 = !{!444, !443}
!449 = !{!442, !444, !443}
!450 = distinct !{!450, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCslLuZgPVt6hg_3ide9runnables8RunnableNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNvB15_13cmp_runnablesE0EB17_"}
!451 = distinct !{!451, !450, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCslLuZgPVt6hg_3ide9runnables8RunnableNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNvB15_13cmp_runnablesE0EB17_: argument 2"}
!452 = distinct !{!452, !450, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runNtNtCslLuZgPVt6hg_3ide9runnables8RunnableNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_7sort_byNvB15_13cmp_runnablesE0EB17_: argument 1"}
!453 = distinct !{null}
!454 = distinct !{null}
!455 = !{!452, !451}
!456 = distinct !{!456, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyyNCNvNvB16_18view_memory_layout11read_layouts0_0E0EB18_"}
!457 = distinct !{!457, !456, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyyNCNvNvB16_18view_memory_layout11read_layouts0_0E0EB18_: argument 2"}
!458 = distinct !{!458, !456, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyyNCNvNvB16_18view_memory_layout11read_layouts0_0E0EB18_: argument 1"}
!459 = distinct !{!459, !456, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB13_11sort_by_keyyNCNvNvB16_18view_memory_layout11read_layouts0_0E0EB18_: argument 0"}
!460 = distinct !{!460, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_"}
!461 = distinct !{!461, !460, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_: argument 0"}
!462 = distinct !{!462, !460, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_: argument 1"}
!463 = distinct !{!463, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_"}
!464 = distinct !{!464, !463, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_: argument 0"}
!465 = distinct !{!465, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_"}
!466 = distinct !{!466, !465, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_: argument 0"}
!467 = distinct !{!467, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_"}
!468 = distinct !{!468, !467, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_: argument 0"}
!469 = distinct !{!469, !467, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_: argument 1"}
!470 = distinct !{!470, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_"}
!471 = distinct !{!471, !470, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_: argument 0"}
!472 = distinct !{!472, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_"}
!473 = distinct !{!473, !472, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_: argument 0"}
!474 = distinct !{!474, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_"}
!475 = distinct !{!475, !474, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_: argument 0"}
!476 = distinct !{!476, !474, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSTNtNtCslLuZgPVt6hg_3ide18view_memory_layout15FieldOrTupleIdxNtCs8Xq8PKFYOms_3hir4TypeE11sort_by_keyyNCNvNvBB_18view_memory_layout11read_layouts0_0E0BD_: argument 1"}
!477 = distinct !{!477, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_"}
!478 = distinct !{!478, !477, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_: argument 0"}
!479 = distinct !{!479, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_"}
!480 = distinct !{!480, !479, !"_RNCNvNvNtCslLuZgPVt6hg_3ide18view_memory_layout18view_memory_layout11read_layouts0_0B7_: argument 0"}
!481 = distinct !{null}
!482 = distinct !{null}
!483 = !{!457}
!484 = !{!459, !458}
!485 = !{!461}
!486 = !{!462}
!487 = !{!461, !462, !458, !457}
!488 = !{!464}
!489 = !{!458, !457}
!490 = !{!464, !461}
!491 = !{!462, !458, !457}
!492 = !{!464, !461, !462, !458, !457}
!493 = !{!466}
!494 = !{!466, !462}
!495 = !{!461, !458, !457}
!496 = !{!466, !461, !462, !458, !457}
!497 = !{!468}
!498 = !{!469}
!499 = !{!468, !469, !458, !457}
!500 = !{!471}
!501 = !{!471, !468}
!502 = !{!469, !458, !457}
!503 = !{!471, !468, !469, !458, !457}
!504 = !{!473}
!505 = !{!473, !469}
!506 = !{!468, !458, !457}
!507 = !{!473, !468, !469, !458, !457}
!508 = !{!475}
!509 = !{!476}
!510 = !{!475, !476, !458, !457}
!511 = !{!478}
!512 = !{!478, !475}
!513 = !{!476, !458, !457}
!514 = !{!478, !475, !476, !458, !457}
!515 = !{!480}
!516 = !{!480, !476}
!517 = !{!475, !458, !457}
!518 = !{!480, !475, !476, !458, !457}
!519 = distinct !{!519, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB15_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide"}
!520 = distinct !{!520, !519, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB15_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide: argument 0"}
!521 = distinct !{!521, !519, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB15_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide: argument 1"}
!522 = distinct !{!522, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB1d_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide"}
!523 = distinct !{!523, !522, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB1d_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide: argument 0"}
!524 = distinct !{!524, !522, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNvYB1d_NtNtBa_3cmp10PartialOrd2ltECslLuZgPVt6hg_3ide: argument 1"}
!525 = distinct !{!525, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!526 = distinct !{!526, !525, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!527 = distinct !{!527, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!528 = distinct !{!528, !527, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!529 = distinct !{!529, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!530 = distinct !{!530, !529, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!531 = distinct !{!531, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!532 = distinct !{!532, !531, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!533 = distinct !{!533, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!534 = distinct !{!534, !533, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!535 = distinct !{!535, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!536 = distinct !{!536, !535, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!537 = distinct !{!537, !576, !577}
!538 = distinct !{!538, !577, !576}
!539 = distinct !{!539, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db5input5Crate12split_at_mutCslLuZgPVt6hg_3ide"}
!540 = distinct !{!540, !539, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db5input5Crate12split_at_mutCslLuZgPVt6hg_3ide: argument 1"}
!541 = distinct !{!541, !539, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCsgIpRO4v45SJ_7base_db5input5Crate12split_at_mutCslLuZgPVt6hg_3ide: argument 0"}
!542 = distinct !{!542, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslLuZgPVt6hg_3ide"}
!543 = distinct !{!543, !542, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslLuZgPVt6hg_3ide: argument 0"}
!544 = distinct !{!544, !542, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCsgIpRO4v45SJ_7base_db5input5CrateNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECslLuZgPVt6hg_3ide: argument 1"}
!545 = distinct !{!545, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!546 = distinct !{!546, !545, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!547 = distinct !{!547, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!548 = distinct !{!548, !547, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!549 = distinct !{!549, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!550 = distinct !{!550, !549, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!551 = distinct !{!551, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!552 = distinct !{!552, !551, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!553 = distinct !{!553, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!554 = distinct !{!554, !553, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!555 = distinct !{!555, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide"}
!556 = distinct !{!556, !555, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCsgIpRO4v45SJ_7base_db5input5CrateE13partition_oneCslLuZgPVt6hg_3ide: argument 0"}
!557 = distinct !{!557, !576, !577}
!558 = distinct !{!558, !577, !576}
!559 = !{!520}
!560 = !{!521}
!561 = !{!523}
!562 = !{!524}
!563 = !{!526, !524}
!564 = !{!526, !523}
!565 = !{!528, !524}
!566 = !{!528, !523}
!567 = !{!530, !524}
!568 = !{!530, !523}
!569 = !{!532, !524}
!570 = !{!532, !523}
!571 = !{!534, !524}
!572 = !{!534, !523}
!573 = !{!536, !524}
!574 = !{!536, !523}
!575 = !{!523, !524}
!576 = !{!"llvm.loop.isvectorized", i32 1}
!577 = !{!"llvm.loop.unroll.runtime.disable"}
!578 = !{!541, !540}
!579 = !{!543}
!580 = !{!544}
!581 = !{!546, !544}
!582 = !{!546, !543}
!583 = !{!548, !544}
!584 = !{!548, !543}
!585 = !{!550, !544}
!586 = !{!550, !543}
!587 = !{!552, !544}
!588 = !{!552, !543}
!589 = !{!554, !544}
!590 = !{!554, !543}
!591 = !{!556, !544}
!592 = !{!556, !543}
!593 = !{!543, !544}
!594 = distinct !{!594, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2H_bENCNvB17_11annotationss1_0E0EB19_"}
!595 = distinct !{!595, !594, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2H_bENCNvB17_11annotationss1_0E0EB19_: argument 0"}
!596 = distinct !{!596, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_"}
!597 = distinct !{!597, !596, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 0"}
!598 = distinct !{!598, !596, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 1"}
!599 = distinct !{!599, !594, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2H_bENCNvB17_11annotationss1_0E0EB19_: argument 1"}
!600 = distinct !{!600, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!601 = distinct !{!601, !600, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!602 = distinct !{!602, !600, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!603 = distinct !{!603, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!604 = distinct !{!604, !603, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!605 = distinct !{!605, !603, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!606 = distinct !{!606, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_"}
!607 = distinct !{!607, !606, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 1"}
!608 = distinct !{!608, !606, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 0"}
!609 = distinct !{!609, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!610 = distinct !{!610, !609, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!611 = distinct !{!611, !609, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!612 = distinct !{!612, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!613 = distinct !{!613, !612, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!614 = distinct !{!614, !612, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!615 = distinct !{!615, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_"}
!616 = distinct !{!616, !615, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 1"}
!617 = distinct !{!617, !615, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 0"}
!618 = distinct !{!618, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!619 = distinct !{!619, !618, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!620 = distinct !{!620, !618, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!621 = distinct !{!621, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!622 = distinct !{!622, !621, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!623 = distinct !{!623, !621, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!624 = distinct !{!624, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_"}
!625 = distinct !{!625, !624, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 0"}
!626 = distinct !{!626, !624, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 1"}
!627 = distinct !{!627, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!628 = distinct !{!628, !627, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!629 = distinct !{!629, !627, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!630 = distinct !{!630, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!631 = distinct !{!631, !630, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!632 = distinct !{!632, !630, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!633 = distinct !{!633, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2P_bENCNvB1f_11annotationss1_0E0EB1h_"}
!634 = distinct !{!634, !633, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2P_bENCNvB1f_11annotationss1_0E0EB1h_: argument 0"}
!635 = distinct !{!635, !633, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2P_bENCNvB1f_11annotationss1_0E0EB1h_: argument 1"}
!636 = distinct !{!636, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_"}
!637 = distinct !{!637, !636, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 1"}
!638 = distinct !{!638, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!639 = distinct !{!639, !638, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!640 = distinct !{!640, !636, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 0"}
!641 = distinct !{!641, !638, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!642 = distinct !{!642, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!643 = distinct !{!643, !642, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!644 = distinct !{!644, !642, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!645 = distinct !{!645, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationE13partition_oneB1l_"}
!646 = distinct !{!646, !645, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationE13partition_oneB1l_: argument 0"}
!647 = distinct !{!647, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationE13partition_oneB1l_"}
!648 = distinct !{!648, !647, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationE13partition_oneB1l_: argument 0"}
!649 = distinct !{!649, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation12split_at_mutBy_"}
!650 = distinct !{!650, !649, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation12split_at_mutBy_: argument 1"}
!651 = distinct !{!651, !649, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation12split_at_mutBy_: argument 0"}
!652 = distinct !{!652, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB3b_bENCNvB1f_11annotationss1_0E0E0EB1h_"}
!653 = distinct !{!653, !652, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB3b_bENCNvB1f_11annotationss1_0E0E0EB1h_: argument 0"}
!654 = distinct !{!654, !652, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB3b_bENCNvB1f_11annotationss1_0E0E0EB1h_: argument 1"}
!655 = distinct !{!655, !"_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2J_bENCNvB19_11annotationss1_0E0E0B1b_"}
!656 = distinct !{!656, !655, !"_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2J_bENCNvB19_11annotationss1_0E0E0B1b_: argument 1"}
!657 = distinct !{!657, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_"}
!658 = distinct !{!658, !657, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 0"}
!659 = distinct !{!659, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!660 = distinct !{!660, !659, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!661 = distinct !{!661, !655, !"_RNCINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB17_11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB2J_bENCNvB19_11annotationss1_0E0E0B1b_: argument 0"}
!662 = distinct !{!662, !657, !"_RNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtCslLuZgPVt6hg_3ide11annotations10Annotation11sort_by_keyTNtNtCsuAhG64lL82_9text_size4size8TextSizeB1x_bENCNvBA_11annotationss1_0E0BC_: argument 1"}
!663 = distinct !{!663, !659, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!664 = distinct !{!664, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_"}
!665 = distinct !{!665, !664, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 0"}
!666 = distinct !{!666, !664, !"_RNCNvNtCslLuZgPVt6hg_3ide11annotations11annotationss1_0B5_: argument 1"}
!667 = distinct !{!667, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationE13partition_oneB1l_"}
!668 = distinct !{!668, !667, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationE13partition_oneB1l_: argument 0"}
!669 = distinct !{!669, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationE13partition_oneB1l_"}
!670 = distinct !{!670, !669, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCslLuZgPVt6hg_3ide11annotations10AnnotationE13partition_oneB1l_: argument 0"}
!671 = !{!595}
!672 = !{!597}
!673 = !{!598}
!674 = !{!597, !598, !595, !599}
!675 = !{!601}
!676 = !{!602}
!677 = !{!602, !597, !595}
!678 = !{!601, !598, !599}
!679 = !{!602, !597, !598, !595, !599}
!680 = !{!604}
!681 = !{!605}
!682 = !{!605, !598, !595}
!683 = !{!604, !597, !599}
!684 = !{!605, !597, !598, !595, !599}
!685 = !{!607}
!686 = !{!608, !607, !595, !599}
!687 = !{!610}
!688 = !{!611, !608, !607, !595, !599}
!689 = !{!613}
!690 = !{!614}
!691 = !{!614, !607, !595}
!692 = !{!613, !608, !599}
!693 = !{!614, !608, !607, !595, !599}
!694 = !{!617, !616, !595, !599}
!695 = !{!619}
!696 = !{!620, !617, !616, !595, !599}
!697 = !{!622}
!698 = !{!623, !617, !616, !595, !599}
!699 = !{!625}
!700 = !{!626}
!701 = !{!625, !626}
!702 = !{!628}
!703 = !{!629}
!704 = !{!629, !625}
!705 = !{!628, !626}
!706 = !{!629, !625, !626}
!707 = !{!631}
!708 = !{!632}
!709 = !{!632, !626}
!710 = !{!631, !625}
!711 = !{!632, !625, !626}
!712 = !{!634}
!713 = !{!635}
!714 = !{!639, !637, !634}
!715 = !{!641, !640, !635}
!716 = !{!640}
!717 = !{!637}
!718 = !{!640, !637, !634, !635}
!719 = !{!643}
!720 = !{!644}
!721 = !{!644, !640, !634}
!722 = !{!643, !637, !635}
!723 = !{!644, !640, !637, !634, !635}
!724 = !{!641}
!725 = !{!639}
!726 = !{!639, !640, !637, !634, !635}
!727 = !{!634, !635}
!728 = !{!646}
!729 = !{!648}
!730 = !{!651, !650}
!731 = !{!653}
!732 = !{!654}
!733 = !{!660, !658, !656, !653}
!734 = !{!663, !662, !661, !654}
!735 = !{!661}
!736 = !{!656}
!737 = !{!658}
!738 = !{!662}
!739 = !{!658, !662, !661, !656, !653, !654}
!740 = !{!663}
!741 = !{!660}
!742 = !{!660, !658, !662, !661, !656, !653, !654}
!743 = !{!665}
!744 = !{!666}
!745 = !{!666, !662, !661, !653}
!746 = !{!665, !658, !656, !654}
!747 = !{!666, !658, !662, !661, !656, !653, !654}
!748 = !{!653, !654}
!749 = !{!668}
!750 = !{!670}
!751 = distinct !{!751, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvB17_29dedupe_or_merge_hover_actions0E0EB19_"}
!752 = distinct !{!752, !751, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvB17_29dedupe_or_merge_hover_actions0E0EB19_: argument 0"}
!753 = distinct !{!753, !751, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared5pivot12choose_pivotNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB15_7sort_byNCNvB17_29dedupe_or_merge_hover_actions0E0EB19_: argument 1"}
!754 = distinct !{!754, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvB1f_29dedupe_or_merge_hover_actions0E0EB1h_"}
!755 = distinct !{!755, !754, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvB1f_29dedupe_or_merge_hover_actions0E0EB1h_: argument 0"}
!756 = distinct !{!756, !754, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvB1f_29dedupe_or_merge_hover_actions0E0EB1h_: argument 1"}
!757 = distinct !{!757, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataE13partition_oneB1l_"}
!758 = distinct !{!758, !757, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataE13partition_oneB1l_: argument 0"}
!759 = distinct !{!759, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataE13partition_oneB1l_"}
!760 = distinct !{!760, !759, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataE13partition_oneB1l_: argument 0"}
!761 = distinct !{!761, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeData12split_at_mutBy_"}
!762 = distinct !{!762, !761, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeData12split_at_mutBy_: argument 1"}
!763 = distinct !{!763, !761, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeData12split_at_mutBy_: argument 0"}
!764 = distinct !{!764, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvB1f_29dedupe_or_merge_hover_actions0E0E0EB1h_"}
!765 = distinct !{!765, !764, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvB1f_29dedupe_or_merge_hover_actions0E0E0EB1h_: argument 0"}
!766 = distinct !{!766, !764, !"_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort16stable_partitionNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNCINvB2_9quicksortB1d_NCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1d_7sort_byNCNvB1f_29dedupe_or_merge_hover_actions0E0E0EB1h_: argument 1"}
!767 = distinct !{!767, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataE13partition_oneB1l_"}
!768 = distinct !{!768, !767, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataE13partition_oneB1l_: argument 0"}
!769 = distinct !{!769, !"_RNvMNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksortINtB2_14PartitionStateNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataE13partition_oneB1l_"}
end_hunk_1
