Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/tensor_tools.tensor_tools.f3cbf8f2a35afc65-cgu.05?download=true
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2y_:bb.a
  %.not38.i = icmp eq i64 %i.n, 2                 ; 2 uses
  br i1 %i.y, label %.preheader27.i, label %.preheader.i

.preheader27.i:                                   ; preds = %bb.k
  br i1 %.not38.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfo7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not38.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph33.i

.lr.ph.i:                                         ; preds = %.preheader27.i, %bb.l
  %.val10.i = phi i64 [ %.val8.i, %bb.l ], [ %.val12.i, %.preheader27.i ] ; 2 uses
  %.val9.i = phi ptr [ %.val7.i, %bb.l ], [ %.val11.i, %.preheader27.i ]
  %.sroa.01.0.i29.i = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader27.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [120 x i8], ptr %i.o, i64 %.sroa.01.0.i29.i ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val7.i = load ptr, ptr %i.aa, align 8, !alias.scope !169, !noalias !170, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  %.val8.i = load i64, ptr %i.ab, align 8, !alias.scope !169, !noalias !170, !noundef !5 ; 3 uses
  %spec.store.select.i.i15.i = tail call i64 @llvm.umin.i64(i64 %.val8.i, i64 %.val10.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val7.i, ptr nonnull readonly %.val9.i, i64 %spec.store.select.i.i15.i), !noalias !171 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %.val8.i, %.val10.i
  %spec.select.i.i16.i = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = icmp slt i64 %spec.select.i.i16.i, 0
  br i1 %i.ag, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2F_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ah = add nuw nsw i64 %.sroa.01.0.i29.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2F_.exit.i, label %.lr.ph.i

.lr.ph33.i:                                       ; preds = %.preheader.i, %bb.m
  %.val6.i = phi i64 [ %.val4.i, %bb.m ], [ %.val12.i, %.preheader.i ] ; 2 uses
  %.val5.i = phi ptr [ %.val.i, %bb.m ], [ %.val11.i, %.preheader.i ]
  %.sroa.01.1.i32.i = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [120 x i8], ptr %i.o, i64 %.sroa.01.1.i32.i ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.val.i = load ptr, ptr %i.aj, align 8, !alias.scope !169, !noalias !170, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 16
  %.val4.i = load i64, ptr %i.ak, align 8, !alias.scope !169, !noalias !170, !noundef !5 ; 3 uses
  %spec.store.select.i.i17.i = tail call i64 @llvm.umin.i64(i64 %.val4.i, i64 %.val6.i)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val5.i, i64 %spec.store.select.i.i17.i), !noalias !171 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 %.val4.i, %.val6.i
  %spec.select.i.i18.i = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i18.i, 0
  br i1 %i.ap, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2F_.exit.i

bb.m:                                             ; preds = %.lr.ph33.i
  %i.aq = add nuw nsw i64 %.sroa.01.1.i32.i, 1    ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.aq, %i.n
  br i1 %exitcond41.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2F_.exit.i, label %.lr.ph33.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2F_.exit.i: ; preds = %bb.m, %.lr.ph33.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.l ], [ %.sroa.01.0.i29.i, %.lr.ph.i ], [ %.sroa.01.1.i32.i, %.lr.ph33.i ], [ %i.n, %bb.m ] ; 5 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ar)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2F_.exit.i
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.as, 0
  %or.cond.i = or i1 %i.y, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfo7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.at = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 76861433640456466) %i.n)
  %i.au = shl nuw nsw i64 %i.at, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2G_.exit

bb.p:                                             ; preds = %bb.i
  %i.av = tail call i64 @llvm.umin.i64(i64 range(i64 0, 76861433640456466) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2I_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.av, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  %i.aw = shl nuw nsw i64 %i.av, 1
  %i.ax = or disjoint i64 %i.aw, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2G_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfo7reverseCskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoECskVIURZGHVHJ_12tensor_tools.exit.i.i.i, %.preheader27.i, %bb.n, %bb.j
  %.sroa.0.0.i24.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader27.i ], [ %.sroa.0.0.i596670.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoECskVIURZGHVHJ_12tensor_tools.exit.i.i.i ]
  %i.ay = shl nuw nsw i64 %.sroa.0.0.i24.i, 1
  %i.az = or disjoint i64 %i.ay, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2G_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ba = phi i64 [ %i.as, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i596670.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [120 x i8], ptr %i.o, i64 %.sroa.0.0.i596670.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoECskVIURZGHVHJ_12tensor_tools.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bg, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoECskVIURZGHVHJ_12tensor_tools.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bc = xor i64 %.sroa.0.017.i.i.i, -1
  %i.bd = getelementptr inbounds nuw [120 x i8], ptr %i.o, i64 %.sroa.0.017.i.i.i
  %i.be = getelementptr [120 x i8], ptr %i.bb, i64 %i.bc
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskVIURZGHVHJ_12tensor_tools(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be, i64 noundef 15)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoECskVIURZGHVHJ_12tensor_tools.exit.i.i.i unwind label %bb.q, !noalias !170

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #17, !noalias !170
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoECskVIURZGHVHJ_12tensor_tools.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bg = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bg, %i.ba
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfo7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2G_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfo7reverseCskVIURZGHVHJ_12tensor_tools.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.az, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfo7reverseCskVIURZGHVHJ_12tensor_tools.exit.i ], [ %i.ax, %bb.p ], [ %i.au, %bb.o ] ; 2 uses
  %i.bh = lshr i64 %.sroa.023.0, 1
  %i.bi = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bj = sub nsw i64 %factor, %i.bh
  %i.bk = add nuw i64 %i.bi, %factor
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false)
  %i.bp = trunc nuw nsw i64 %i.bo to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2J_.exit
  %.sroa.02.136 = phi i64 [ %i.bq, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2J_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2J_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bq = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bs, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2J_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2J_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2J_.exit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bu, align 1
  br i1 %i.l, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bq
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !5 ; 3 uses
  %i.bx = lshr i64 %i.bw, 1                       ; 5 uses
  %i.by = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bz = add nuw i64 %i.bx, %i.by                ; 5 uses
  %i.ca = sub i64 %.sroa.09.0, %i.bz
  %i.cb = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %i.ca ; 3 uses
  %i.cc = icmp samesign ugt i64 %i.bz, %3
  %i.cd = trunc i64 %.sroa.023.135 to i1
  %i.ce = or i64 %i.bw, %.sroa.023.135
  %i.cf = trunc i64 %i.ce to i1
  %or.cond3.i = or i1 %i.cc, %i.cf
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = trunc i64 %i.bw to i1
  br i1 %i.cg, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ch = shl nuw nsw i64 %i.bz, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2J_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cd, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ci = or i64 %i.bx, 1
  %i.cj = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2I_(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 76861433640456466) %i.bx, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw [120 x i8], ptr %i.cb, i64 %i.bx
  %i.co = or i64 %i.by, 1
  %i.cp = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2I_(ptr noalias nofree noundef nonnull align 8 %i.cn, i64 noundef range(i64 0, 76861433640456466) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2z_(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 76861433640456466) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i64 noundef %i.bx, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ct = shl nuw nsw i64 %i.bz, 1
  %i.cu = or disjoint i64 %i.ct, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2J_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2J_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cu, %bb.x ], [ %i.ch, %bb.t ] ; 2 uses
  %i.cv = icmp ugt i64 %i.bq, 1
  br i1 %i.cv, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cw = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cx = lshr i64 %.sroa.018.0, 1
  %i.cy = add nuw nsw i64 %i.cx, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cz = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cz, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.da = or i64 %1, 1
  %i.db = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 1
  %i.de = xor i32 %i.dd, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsltEA4u8Pgfu_11candle_core6pickle10TensorInfoNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss_0E0EB2I_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 76861433640456466) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 76861433640456466) %3, i32 noundef %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYBW_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #0 {
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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dk, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.di, %bb.y ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit
  %.sroa.021.0 = phi i8 [ %i.cb, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val7.i = load ptr, ptr %i.q, align 8, !alias.scope !192, !noalias !193, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %.val8.i = load ptr, ptr %i.o, align 8, !alias.scope !192, !noalias !193, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.r = getelementptr i8, ptr %.val7.i, i64 8
  %.val.i.i.i = load ptr, ptr %i.r, align 8, !noalias !194, !nonnull !5, !noundef !5 ; 3 uses
  %i.s = getelementptr i8, ptr %.val7.i, i64 16
  %.val1.i.i.i = load i64, ptr %i.s, align 8, !noalias !194, !noundef !5 ; 4 uses
  %i.t = getelementptr i8, ptr %.val8.i, i64 8
  %.val2.i.i.i = load ptr, ptr %i.t, align 8, !noalias !194, !nonnull !5, !noundef !5
  %i.u = getelementptr i8, ptr %.val8.i, i64 16
  %.val3.i.i.i = load i64, ptr %i.u, align 8, !noalias !194, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i.i)
  %i.v = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !195, !noalias !194 ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp eq i32 %i.v, 0
  %i.y = sub nsw i64 %.val1.i.i.i, %.val3.i.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.x, i64 %i.y, i64 %i.w
  %i.z = icmp slt i64 %spec.select.i.i.i.i.i.i.i, 0 ; 2 uses
  %.not40.i = icmp eq i64 %i.n, 2                 ; 2 uses
  br i1 %i.z, label %.preheader.i, label %.preheader29.i

.preheader29.i:                                   ; preds = %bb.k
  br i1 %.not40.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not40.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.preheader.i.i.i, label %.lr.ph35.i

.lr.ph.i:                                         ; preds = %.preheader29.i, %bb.l
  %.val3.i.i12.i = phi i64 [ %.val1.i.i10.i, %bb.l ], [ %.val1.i.i.i, %.preheader29.i ] ; 2 uses
  %.val2.i.i11.i = phi ptr [ %.val.i.i9.i, %bb.l ], [ %.val.i.i.i, %.preheader29.i ]
  %.sroa.01.0.i31.i = phi i64 [ %i.ai, %bb.l ], [ 2, %.preheader29.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i31.i
  %.val5.i = load ptr, ptr %i.aa, align 8, !alias.scope !192, !noalias !193, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.ab = getelementptr i8, ptr %.val5.i, i64 8
  %.val.i.i9.i = load ptr, ptr %i.ab, align 8, !noalias !194, !nonnull !5, !noundef !5 ; 2 uses
  %i.ac = getelementptr i8, ptr %.val5.i, i64 16
  %.val1.i.i10.i = load i64, ptr %i.ac, align 8, !noalias !194, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i.i13.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i10.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i12.i)
  %i.ad = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i9.i, ptr nonnull readonly %.val2.i.i11.i, i64 %spec.store.select.i.i.i.i.i.i13.i), !alias.scope !196, !noalias !194 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp eq i32 %i.ad, 0
  %i.ag = sub nsw i64 %.val1.i.i10.i, %.val3.i.i12.i
  %spec.select.i.i.i.i.i.i14.i = select i1 %i.af, i64 %i.ag, i64 %i.ae
  %i.ah = icmp slt i64 %spec.select.i.i.i.i.i.i14.i, 0
  br i1 %i.ah, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ai = add nuw nsw i64 %.sroa.01.0.i31.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.i

.lr.ph35.i:                                       ; preds = %.preheader.i, %bb.m
  %.val3.i.i18.i = phi i64 [ %.val1.i.i16.i, %bb.m ], [ %.val1.i.i.i, %.preheader.i ] ; 2 uses
  %.val2.i.i17.i = phi ptr [ %.val.i.i15.i, %bb.m ], [ %.val.i.i.i, %.preheader.i ]
  %.sroa.01.1.i34.i = phi i64 [ %i.ar, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i34.i
  %.val.i = load ptr, ptr %i.aj, align 8, !alias.scope !192, !noalias !193, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.ak = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i15.i = load ptr, ptr %i.ak, align 8, !noalias !194, !nonnull !5, !noundef !5 ; 2 uses
  %i.al = getelementptr i8, ptr %.val.i, i64 16
  %.val1.i.i16.i = load i64, ptr %i.al, align 8, !noalias !194, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i.i19.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i16.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i18.i)
  %i.am = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i15.i, ptr nonnull readonly %.val2.i.i17.i, i64 %spec.store.select.i.i.i.i.i.i19.i), !alias.scope !197, !noalias !194 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp eq i32 %i.am, 0
  %i.ap = sub nsw i64 %.val1.i.i16.i, %.val3.i.i18.i
  %spec.select.i.i.i.i.i.i20.i = select i1 %i.ao, i64 %i.ap, i64 %i.an
  %i.aq = icmp slt i64 %spec.select.i.i.i.i.i.i20.i, 0
  br i1 %i.aq, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit.i

bb.m:                                             ; preds = %.lr.ph35.i
  %i.ar = add nuw nsw i64 %.sroa.01.1.i34.i, 1    ; 2 uses
  %exitcond43.not.i = icmp eq i64 %i.ar, %i.n
  br i1 %exitcond43.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph35.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph35.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.m ], [ %.sroa.01.1.i34.i, %.lr.ph35.i ], [ %.sroa.01.0.i31.i, %.lr.ph.i ], [ %i.n, %bb.l ] ; 6 uses
  %i.as = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.as)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit.i
  br i1 %i.z, label %bb.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCskVIURZGHVHJ_12tensor_tools.exit.i

bb.o:                                             ; preds = %bb.i
  %i.at = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 1152921504606846976) %i.n)
  %i.au = shl nuw nsw i64 %i.at, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit

bb.p:                                             ; preds = %bb.i
  %i.av = tail call i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.av, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #16
  %i.aw = shl nuw nsw i64 %i.av, 1
  %i.ax = or disjoint i64 %i.aw, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i, %middle.block, %.preheader29.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i26.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader29.i ], [ %.sroa.0.0.i626973.i, %middle.block ], [ %.sroa.0.0.i626973.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i ]
  %i.ay = shl nuw nsw i64 %.sroa.0.0.i26.i, 1
  %i.az = or disjoint i64 %i.ay, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit

bb.q:                                             ; preds = %bb.n
  %i.ba = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %.not.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.preheader.i.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.bb = phi i64 [ %i.ba, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i626973.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i626973.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bb, 4
  br i1 %min.iters.check, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.preheader.i.i.i
  %n.vec = and i64 %i.bb, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = xor i64 %index, -1
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.bf = getelementptr [8 x i8], ptr %i.bc, i64 %i.bd ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load = load <2 x ptr>, ptr %i.be, align 8, !alias.scope !200, !noalias !201
  %wide.load54 = load <2 x ptr>, ptr %i.bg, align 8, !alias.scope !200, !noalias !201
  %i.bh = getelementptr i8, ptr %i.bf, i64 -8
  %i.bi = getelementptr i8, ptr %i.bf, i64 -24
  %wide.load55 = load <2 x i64>, ptr %i.bh, align 8, !alias.scope !202, !noalias !203
  %wide.load56 = load <2 x i64>, ptr %i.bi, align 8, !alias.scope !202, !noalias !203
  %reverse = shufflevector <2 x i64> %wide.load55, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse57 = shufflevector <2 x i64> %wide.load56, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x i64> %reverse, ptr %i.be, align 8, !alias.scope !200, !noalias !201
  store <2 x i64> %reverse57, ptr %i.bj, align 8, !alias.scope !200, !noalias !201
  %i.bk = getelementptr i8, ptr %i.bf, i64 -8
  %i.bl = getelementptr i8, ptr %i.bf, i64 -24
  %reverse58 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse59 = shufflevector <2 x ptr> %wide.load54, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse58, ptr %i.bk, align 8, !alias.scope !202, !noalias !203
  store <2 x ptr> %reverse59, ptr %i.bl, align 8, !alias.scope !202, !noalias !203
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i.preheader

_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i.preheader: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i.preheader, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.bs, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i.preheader ] ; 3 uses
  %i.bn = xor i64 %.sroa.0.016.i.i.i, -1
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bp = getelementptr [8 x i8], ptr %i.bc, i64 %i.bn ; 2 uses
  %i.bq = load ptr, ptr %i.bo, align 8, !alias.scope !200, !noalias !201, !nonnull !5, !align !7, !noundef !5
  %i.br = load i64, ptr %i.bp, align 8, !alias.scope !202, !noalias !203
  store i64 %i.br, ptr %i.bo, align 8, !alias.scope !200, !noalias !201
  store ptr %i.bq, ptr %i.bp, align 8, !alias.scope !202, !noalias !203
  %i.bs = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bs, %i.bb
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i, !llvm.loop !191

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCskVIURZGHVHJ_12tensor_tools.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.az, %_RNvMNtCsf3Ta7LF998c_4core5sliceSRNtNtCsgCecv3eZDcN_5alloc6string6String7reverseCskVIURZGHVHJ_12tensor_tools.exit.i ], [ %i.ax, %bb.p ], [ %i.au, %bb.o ] ; 2 uses
  %i.bt = lshr i64 %.sroa.023.0, 1
  %i.bu = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bv = sub nsw i64 %factor, %i.bt
  %i.bw = add nuw nsw i64 %i.bu, %factor
  %i.bx = mul i64 %i.bv, %.sroa.0.0
  %i.by = mul i64 %i.bw, %.sroa.0.0
  %i.bz = xor i64 %i.by, %i.bx
  %i.ca = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bz, i1 false)
  %i.cb = trunc nuw nsw i64 %i.ca to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit
  %.sroa.02.136 = phi i64 [ %i.cc, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.cc = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.ce, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cg, align 1
  br i1 %i.l, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cc
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !5 ; 3 uses
  %i.cj = lshr i64 %i.ci, 1                       ; 5 uses
  %i.ck = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.cl = add nuw i64 %i.cj, %i.ck                ; 5 uses
  %i.cm = sub i64 %.sroa.09.0, %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cm ; 3 uses
  %i.co = icmp samesign ugt i64 %i.cl, %3
  %i.cp = trunc i64 %.sroa.023.135 to i1
  %i.cq = or i64 %i.ci, %.sroa.023.135
  %i.cr = trunc i64 %i.cq to i1
  %or.cond3.i = or i1 %i.co, %i.cr
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cs = trunc i64 %i.ci to i1
  br i1 %i.cs, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ct = shl nuw nsw i64 %i.cl, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cp, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cu = or i64 %i.cj, 1
  %i.cv = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cu, i1 true)
  %i.cw = trunc nuw nsw i64 %i.cv to i32
  %i.cx = shl nuw nsw i32 %i.cw, 1
  %i.cy = xor i32 %i.cx, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 %i.cn, i64 noundef range(i64 0, 1152921504606846976) %i.cj, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #16
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cj
  %i.da = or i64 %i.ck, 1
  %i.db = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 1
  %i.de = xor i32 %i.dd, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 %i.cz, i64 noundef range(i64 0, 1152921504606846976) %i.ck, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 %i.cn, i64 noundef range(i64 0, 1152921504606846976) %i.cl, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i64 noundef %i.cj, ptr noalias nofree noundef nonnull %5)
  %i.df = shl nuw nsw i64 %i.cl, 1
  %i.dg = or disjoint i64 %i.df, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.dg, %bb.x ], [ %i.ct, %bb.t ] ; 2 uses
  %i.dh = icmp ugt i64 %i.cc, 1
  br i1 %i.dh, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.di = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.dj = lshr i64 %.sroa.018.0, 1
  %i.dk = add nuw nsw i64 %i.dj, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dl = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dl, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dm = or i64 %1, 1
  %i.dn = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dm, i1 true)
  %i.do = trunc nuw nsw i64 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 1
  %i.dq = xor i32 %i.dp, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortRNtNtCsgCecv3eZDcN_5alloc6string6StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull %5) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB11_5sliceSBW_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB2V_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 128102389400760776) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cy, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cw, %bb.y ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB33_.exit
  %.sroa.021.0 = phi i8 [ %i.bp, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB33_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB33_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB32_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 80
  %.val11.i = load ptr, ptr %i.q, align 8, !alias.scope !210, !noalias !211, !nonnull !5, !noundef !5 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 88
  %.val12.i = load i64, ptr %i.r, align 8, !alias.scope !210, !noalias !211, !noundef !5 ; 4 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val13.i = load ptr, ptr %i.s, align 8, !alias.scope !210, !noalias !211, !nonnull !5, !noundef !5
  %i.t = getelementptr i8, ptr %i.o, i64 16
  %.val14.i = load i64, ptr %i.t, align 8, !alias.scope !210, !noalias !211, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val14.i)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly %.val11.i, ptr nonnull readonly %.val13.i, i64 %spec.store.select.i.i.i), !noalias !212 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub i64 %.val12.i, %.val14.i
  %spec.select.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = icmp sgt i64 %spec.select.i.i.i, -1      ; 2 uses
  %.not38.i = icmp eq i64 %i.n, 2                 ; 2 uses
  br i1 %i.y, label %.preheader27.i, label %.preheader.i

.preheader27.i:                                   ; preds = %bb.k
  br i1 %.not38.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not38.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph33.i

.lr.ph.i:                                         ; preds = %.preheader27.i, %bb.l
  %.val10.i = phi i64 [ %.val8.i, %bb.l ], [ %.val12.i, %.preheader27.i ] ; 2 uses
  %.val9.i = phi ptr [ %.val7.i, %bb.l ], [ %.val11.i, %.preheader27.i ]
  %.sroa.01.0.i29.i = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader27.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.01.0.i29.i ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val7.i = load ptr, ptr %i.aa, align 8, !alias.scope !210, !noalias !211, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  %.val8.i = load i64, ptr %i.ab, align 8, !alias.scope !210, !noalias !211, !noundef !5 ; 3 uses
  %spec.store.select.i.i15.i = tail call i64 @llvm.umin.i64(i64 %.val8.i, i64 %.val10.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val7.i, ptr nonnull readonly %.val9.i, i64 %spec.store.select.i.i15.i), !noalias !212 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %.val8.i, %.val10.i
  %spec.select.i.i16.i = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = icmp slt i64 %spec.select.i.i16.i, 0
  br i1 %i.ag, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB32_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ah = add nuw nsw i64 %.sroa.01.0.i29.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB32_.exit.i, label %.lr.ph.i

.lr.ph33.i:                                       ; preds = %.preheader.i, %bb.m
  %.val6.i = phi i64 [ %.val4.i, %bb.m ], [ %.val12.i, %.preheader.i ] ; 2 uses
  %.val5.i = phi ptr [ %.val.i, %bb.m ], [ %.val11.i, %.preheader.i ]
  %.sroa.01.1.i32.i = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.01.1.i32.i ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.val.i = load ptr, ptr %i.aj, align 8, !alias.scope !210, !noalias !211, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 16
  %.val4.i = load i64, ptr %i.ak, align 8, !alias.scope !210, !noalias !211, !noundef !5 ; 3 uses
  %spec.store.select.i.i17.i = tail call i64 @llvm.umin.i64(i64 %.val4.i, i64 %.val6.i)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val5.i, i64 %spec.store.select.i.i17.i), !noalias !212 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 %.val4.i, %.val6.i
  %spec.select.i.i18.i = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i18.i, 0
  br i1 %i.ap, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB32_.exit.i

bb.m:                                             ; preds = %.lr.ph33.i
  %i.aq = add nuw nsw i64 %.sroa.01.1.i32.i, 1    ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.aq, %i.n
  br i1 %exitcond41.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB32_.exit.i, label %.lr.ph33.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB32_.exit.i: ; preds = %bb.m, %.lr.ph33.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.l ], [ %.sroa.01.0.i29.i, %.lr.ph.i ], [ %.sroa.01.1.i32.i, %.lr.ph33.i ], [ %i.n, %bb.m ] ; 5 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ar)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB32_.exit.i
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.as, 0
  %or.cond.i = or i1 %i.y, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.at = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 128102389400760776) %i.n)
  %i.au = shl nuw nsw i64 %i.at, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB33_.exit

bb.p:                                             ; preds = %bb.i
  %i.av = tail call i64 @llvm.umin.i64(i64 range(i64 0, 128102389400760776) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB1a_5sliceSB15_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB35_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.av, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  %i.aw = shl nuw nsw i64 %i.av, 1
  %i.ax = or disjoint i64 %i.aw, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB33_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i, %.preheader27.i, %bb.n, %bb.j
  %.sroa.0.0.i24.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader27.i ], [ %.sroa.0.0.i596670.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i ]
  %i.ay = shl nuw nsw i64 %.sroa.0.0.i24.i, 1
  %i.az = or disjoint i64 %i.ay, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB33_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ba = phi i64 [ %i.as, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i596670.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.0.0.i596670.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bg, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bc = xor i64 %.sroa.0.017.i.i.i, -1
  %i.bd = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %.sroa.0.017.i.i.i
  %i.be = getelementptr [72 x i8], ptr %i.bb, i64 %i.bc
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskVIURZGHVHJ_12tensor_tools(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be, i64 noundef 9)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i unwind label %bb.q, !noalias !211

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #17, !noalias !211
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bg = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bg, %i.ba
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB33_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.az, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i ], [ %i.ax, %bb.p ], [ %i.au, %bb.o ] ; 2 uses
  %i.bh = lshr i64 %.sroa.023.0, 1
  %i.bi = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bj = sub nsw i64 %factor, %i.bh
  %i.bk = add nuw i64 %i.bi, %factor
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false)
  %i.bp = trunc nuw nsw i64 %i.bo to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB36_.exit
  %.sroa.02.136 = phi i64 [ %i.bq, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB36_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB36_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bq = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bs, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB36_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB36_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB36_.exit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bu, align 1
  br i1 %i.l, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bq
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !5 ; 3 uses
  %i.bx = lshr i64 %i.bw, 1                       ; 5 uses
  %i.by = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bz = add nuw i64 %i.bx, %i.by                ; 5 uses
  %i.ca = sub i64 %.sroa.09.0, %i.bz
  %i.cb = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.ca ; 3 uses
  %i.cc = icmp samesign ugt i64 %i.bz, %3
  %i.cd = trunc i64 %.sroa.023.135 to i1
  %i.ce = or i64 %i.bw, %.sroa.023.135
  %i.cf = trunc i64 %i.ce to i1
  %or.cond3.i = or i1 %i.cc, %i.cf
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = trunc i64 %i.bw to i1
  br i1 %i.cg, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ch = shl nuw nsw i64 %i.bz, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB36_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cd, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ci = or i64 %i.bx, 1
  %i.cj = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB1a_5sliceSB15_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB35_(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 128102389400760776) %i.bx, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw [72 x i8], ptr %i.cb, i64 %i.bx
  %i.co = or i64 %i.by, 1
  %i.cp = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB1a_5sliceSB15_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB35_(ptr noalias nofree noundef nonnull align 8 %i.cn, i64 noundef range(i64 0, 128102389400760776) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, i32 noundef %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB12_5sliceSBX_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB2W_(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 128102389400760776) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, i64 noundef %i.bx, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ct = shl nuw nsw i64 %i.bz, 1
  %i.cu = or disjoint i64 %i.ct, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB36_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB36_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cu, %bb.x ], [ %i.ch, %bb.t ] ; 2 uses
  %i.cv = icmp ugt i64 %i.bq, 1
  br i1 %i.cv, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cw = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cx = lshr i64 %.sroa.018.0, 1
  %i.cy = add nuw nsw i64 %i.cx, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cz = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cz, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.da = or i64 %1, 1
  %i.db = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 1
  %i.de = xor i32 %i.dd, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsOwuIBbUsgI_11safetensors6tensor10TensorViewENCINvMNtB1a_5sliceSB15_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_ls0E0EB35_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 128102389400760776) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 128102389400760776) %3, i32 noundef %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB11_5sliceSBW_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB2V_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 88686269585142076) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 88686269585142076) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cy, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cw, %bb.y ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB33_.exit
  %.sroa.021.0 = phi i8 [ %i.bp, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB33_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB33_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB32_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 112
  %.val11.i = load ptr, ptr %i.q, align 8, !alias.scope !217, !noalias !218, !nonnull !5, !noundef !5 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 120
  %.val12.i = load i64, ptr %i.r, align 8, !alias.scope !217, !noalias !218, !noundef !5 ; 4 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val13.i = load ptr, ptr %i.s, align 8, !alias.scope !217, !noalias !218, !nonnull !5, !noundef !5
  %i.t = getelementptr i8, ptr %i.o, i64 16
  %.val14.i = load i64, ptr %i.t, align 8, !alias.scope !217, !noalias !218, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val14.i)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly %.val11.i, ptr nonnull readonly %.val13.i, i64 %spec.store.select.i.i.i), !noalias !219 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub i64 %.val12.i, %.val14.i
  %spec.select.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = icmp sgt i64 %spec.select.i.i.i, -1      ; 2 uses
  %.not38.i = icmp eq i64 %i.n, 2                 ; 2 uses
  br i1 %i.y, label %.preheader27.i, label %.preheader.i

.preheader27.i:                                   ; preds = %bb.k
  br i1 %.not38.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not38.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph33.i

.lr.ph.i:                                         ; preds = %.preheader27.i, %bb.l
  %.val10.i = phi i64 [ %.val8.i, %bb.l ], [ %.val12.i, %.preheader27.i ] ; 2 uses
  %.val9.i = phi ptr [ %.val7.i, %bb.l ], [ %.val11.i, %.preheader27.i ]
  %.sroa.01.0.i29.i = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader27.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [104 x i8], ptr %i.o, i64 %.sroa.01.0.i29.i ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val7.i = load ptr, ptr %i.aa, align 8, !alias.scope !217, !noalias !218, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  %.val8.i = load i64, ptr %i.ab, align 8, !alias.scope !217, !noalias !218, !noundef !5 ; 3 uses
  %spec.store.select.i.i15.i = tail call i64 @llvm.umin.i64(i64 %.val8.i, i64 %.val10.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val7.i, ptr nonnull readonly %.val9.i, i64 %spec.store.select.i.i15.i), !noalias !219 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %.val8.i, %.val10.i
  %spec.select.i.i16.i = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = icmp slt i64 %spec.select.i.i16.i, 0
  br i1 %i.ag, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB32_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ah = add nuw nsw i64 %.sroa.01.0.i29.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB32_.exit.i, label %.lr.ph.i

.lr.ph33.i:                                       ; preds = %.preheader.i, %bb.m
  %.val6.i = phi i64 [ %.val4.i, %bb.m ], [ %.val12.i, %.preheader.i ] ; 2 uses
  %.val5.i = phi ptr [ %.val.i, %bb.m ], [ %.val11.i, %.preheader.i ]
  %.sroa.01.1.i32.i = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [104 x i8], ptr %i.o, i64 %.sroa.01.1.i32.i ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.val.i = load ptr, ptr %i.aj, align 8, !alias.scope !217, !noalias !218, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 16
  %.val4.i = load i64, ptr %i.ak, align 8, !alias.scope !217, !noalias !218, !noundef !5 ; 3 uses
  %spec.store.select.i.i17.i = tail call i64 @llvm.umin.i64(i64 %.val4.i, i64 %.val6.i)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val5.i, i64 %spec.store.select.i.i17.i), !noalias !219 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 %.val4.i, %.val6.i
  %spec.select.i.i18.i = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i18.i, 0
  br i1 %i.ap, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB32_.exit.i

bb.m:                                             ; preds = %.lr.ph33.i
  %i.aq = add nuw nsw i64 %.sroa.01.1.i32.i, 1    ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.aq, %i.n
  br i1 %exitcond41.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB32_.exit.i, label %.lr.ph33.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB32_.exit.i: ; preds = %bb.m, %.lr.ph33.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.l ], [ %.sroa.01.0.i29.i, %.lr.ph.i ], [ %.sroa.01.1.i32.i, %.lr.ph33.i ], [ %i.n, %bb.m ] ; 5 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ar)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB32_.exit.i
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.as, 0
  %or.cond.i = or i1 %i.y, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.at = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 88686269585142076) %i.n)
  %i.au = shl nuw nsw i64 %i.at, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB33_.exit

bb.p:                                             ; preds = %bb.i
  %i.av = tail call i64 @llvm.umin.i64(i64 range(i64 0, 88686269585142076) %i.n, i64 16) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB1a_5sliceSB15_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB35_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.av, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 88686269585142076) %3, i32 noundef 0, ptr noundef align 8 null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  %i.aw = shl nuw nsw i64 %i.av, 1
  %i.ax = or disjoint i64 %i.aw, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB33_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i, %.preheader27.i, %bb.n, %bb.j
  %.sroa.0.0.i24.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader27.i ], [ %.sroa.0.0.i596670.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i ]
  %i.ay = shl nuw nsw i64 %.sroa.0.0.i24.i, 1
  %i.az = or disjoint i64 %i.ay, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB33_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ba = phi i64 [ %i.as, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i596670.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [104 x i8], ptr %i.o, i64 %.sroa.0.0.i596670.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bg, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bc = xor i64 %.sroa.0.017.i.i.i, -1
  %i.bd = getelementptr inbounds nuw [104 x i8], ptr %i.o, i64 %.sroa.0.017.i.i.i
  %i.be = getelementptr [104 x i8], ptr %i.bb, i64 %i.bc
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskVIURZGHVHJ_12tensor_tools(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be, i64 noundef 13)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i unwind label %bb.q, !noalias !218

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #17, !noalias !218
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bg = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bg, %i.ba
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB33_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.az, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i ], [ %i.ax, %bb.p ], [ %i.au, %bb.o ] ; 2 uses
  %i.bh = lshr i64 %.sroa.023.0, 1
  %i.bi = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bj = sub nsw i64 %factor, %i.bh
  %i.bk = add nuw i64 %i.bi, %factor
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false)
  %i.bp = trunc nuw nsw i64 %i.bo to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB36_.exit
  %.sroa.02.136 = phi i64 [ %i.bq, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB36_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB36_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bq = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bs, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB36_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB36_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB36_.exit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bu, align 1
  br i1 %i.l, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bq
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !5 ; 3 uses
  %i.bx = lshr i64 %i.bw, 1                       ; 5 uses
  %i.by = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bz = add nuw i64 %i.bx, %i.by                ; 5 uses
  %i.ca = sub i64 %.sroa.09.0, %i.bz
  %i.cb = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %i.ca ; 3 uses
  %i.cc = icmp samesign ugt i64 %i.bz, %3
  %i.cd = trunc i64 %.sroa.023.135 to i1
  %i.ce = or i64 %i.bw, %.sroa.023.135
  %i.cf = trunc i64 %i.ce to i1
  %or.cond3.i = or i1 %i.cc, %i.cf
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = trunc i64 %i.bw to i1
  br i1 %i.cg, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ch = shl nuw nsw i64 %i.bz, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB36_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cd, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ci = or i64 %i.bx, 1
  %i.cj = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB1a_5sliceSB15_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB35_(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 88686269585142076) %i.bx, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 88686269585142076) %3, i32 noundef %i.cm, ptr noundef align 8 null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw [104 x i8], ptr %i.cb, i64 %i.bx
  %i.co = or i64 %i.by, 1
  %i.cp = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB1a_5sliceSB15_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB35_(ptr noalias nofree noundef nonnull align 8 %i.cn, i64 noundef range(i64 0, 88686269585142076) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 88686269585142076) %3, i32 noundef %i.cs, ptr noundef align 8 null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB12_5sliceSBX_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB2W_(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 88686269585142076) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 88686269585142076) %3, i64 noundef %i.bx, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ct = shl nuw nsw i64 %i.bz, 1
  %i.cu = or disjoint i64 %i.ct, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB36_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB36_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cu, %bb.x ], [ %i.ch, %bb.t ] ; 2 uses
  %i.cv = icmp ugt i64 %i.bq, 1
  br i1 %i.cv, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cw = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cx = lshr i64 %.sroa.018.0, 1
  %i.cy = add nuw nsw i64 %i.cx, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cz = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cz, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.da = or i64 %1, 1
  %i.db = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 1
  %i.de = xor i32 %i.dd, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorENCINvMNtB1a_5sliceSB15_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss0_0E0EB35_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 88686269585142076) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 88686269585142076) %3, i32 noundef %i.de, ptr noundef align 8 null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB11_5sliceSBW_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 144115188075855872) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 144115188075855872) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cy, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cw, %bb.y ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3j_.exit
  %.sroa.021.0 = phi i8 [ %i.bp, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3j_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3j_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3i_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 72
  %.val11.i = load ptr, ptr %i.q, align 8, !alias.scope !224, !noalias !225, !nonnull !5, !noundef !5 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 80
  %.val12.i = load i64, ptr %i.r, align 8, !alias.scope !224, !noalias !225, !noundef !5 ; 4 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val13.i = load ptr, ptr %i.s, align 8, !alias.scope !224, !noalias !225, !nonnull !5, !noundef !5
  %i.t = getelementptr i8, ptr %i.o, i64 16
  %.val14.i = load i64, ptr %i.t, align 8, !alias.scope !224, !noalias !225, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val14.i)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly %.val11.i, ptr nonnull readonly %.val13.i, i64 %spec.store.select.i.i.i), !noalias !226 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub i64 %.val12.i, %.val14.i
  %spec.select.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = icmp sgt i64 %spec.select.i.i.i, -1      ; 2 uses
  %.not38.i = icmp eq i64 %i.n, 2                 ; 2 uses
  br i1 %i.y, label %.preheader27.i, label %.preheader.i

.preheader27.i:                                   ; preds = %bb.k
  br i1 %.not38.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not38.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph33.i

.lr.ph.i:                                         ; preds = %.preheader27.i, %bb.l
  %.val10.i = phi i64 [ %.val8.i, %bb.l ], [ %.val12.i, %.preheader27.i ] ; 2 uses
  %.val9.i = phi ptr [ %.val7.i, %bb.l ], [ %.val11.i, %.preheader27.i ]
  %.sroa.01.0.i29.i = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader27.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %.sroa.01.0.i29.i ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val7.i = load ptr, ptr %i.aa, align 8, !alias.scope !224, !noalias !225, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  %.val8.i = load i64, ptr %i.ab, align 8, !alias.scope !224, !noalias !225, !noundef !5 ; 3 uses
  %spec.store.select.i.i15.i = tail call i64 @llvm.umin.i64(i64 %.val8.i, i64 %.val10.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val7.i, ptr nonnull readonly %.val9.i, i64 %spec.store.select.i.i15.i), !noalias !226 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %.val8.i, %.val10.i
  %spec.select.i.i16.i = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = icmp slt i64 %spec.select.i.i16.i, 0
  br i1 %i.ag, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3i_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ah = add nuw nsw i64 %.sroa.01.0.i29.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3i_.exit.i, label %.lr.ph.i

.lr.ph33.i:                                       ; preds = %.preheader.i, %bb.m
  %.val6.i = phi i64 [ %.val4.i, %bb.m ], [ %.val12.i, %.preheader.i ] ; 2 uses
  %.val5.i = phi ptr [ %.val.i, %bb.m ], [ %.val11.i, %.preheader.i ]
  %.sroa.01.1.i32.i = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %.sroa.01.1.i32.i ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.val.i = load ptr, ptr %i.aj, align 8, !alias.scope !224, !noalias !225, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 16
  %.val4.i = load i64, ptr %i.ak, align 8, !alias.scope !224, !noalias !225, !noundef !5 ; 3 uses
  %spec.store.select.i.i17.i = tail call i64 @llvm.umin.i64(i64 %.val4.i, i64 %.val6.i)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val5.i, i64 %spec.store.select.i.i17.i), !noalias !226 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 %.val4.i, %.val6.i
  %spec.select.i.i18.i = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i18.i, 0
  br i1 %i.ap, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3i_.exit.i

bb.m:                                             ; preds = %.lr.ph33.i
  %i.aq = add nuw nsw i64 %.sroa.01.1.i32.i, 1    ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.aq, %i.n
  br i1 %exitcond41.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3i_.exit.i, label %.lr.ph33.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3i_.exit.i: ; preds = %bb.m, %.lr.ph33.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.l ], [ %.sroa.01.0.i29.i, %.lr.ph.i ], [ %.sroa.01.1.i32.i, %.lr.ph33.i ], [ %i.n, %bb.m ] ; 5 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ar)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3i_.exit.i
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.as, 0
  %or.cond.i = or i1 %i.y, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.at = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 144115188075855872) %i.n)
  %i.au = shl nuw nsw i64 %i.at, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3j_.exit

bb.p:                                             ; preds = %bb.i
  %i.av = tail call i64 @llvm.umin.i64(i64 range(i64 0, 144115188075855872) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB1a_5sliceSB15_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3l_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.av, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 144115188075855872) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  %i.aw = shl nuw nsw i64 %i.av, 1
  %i.ax = or disjoint i64 %i.aw, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3j_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i, %.preheader27.i, %bb.n, %bb.j
  %.sroa.0.0.i24.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader27.i ], [ %.sroa.0.0.i596670.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i ]
  %i.ay = shl nuw nsw i64 %.sroa.0.0.i24.i, 1
  %i.az = or disjoint i64 %i.ay, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3j_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ba = phi i64 [ %i.as, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i596670.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %.sroa.0.0.i596670.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bg, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bc = xor i64 %.sroa.0.017.i.i.i, -1
  %i.bd = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %.sroa.0.017.i.i.i
  %i.be = getelementptr [64 x i8], ptr %i.bb, i64 %i.bc
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskVIURZGHVHJ_12tensor_tools(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be, i64 noundef 8)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i unwind label %bb.q, !noalias !225

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #17, !noalias !225
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bg = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bg, %i.ba
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3j_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.az, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i ], [ %i.ax, %bb.p ], [ %i.au, %bb.o ] ; 2 uses
  %i.bh = lshr i64 %.sroa.023.0, 1
  %i.bi = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bj = sub nsw i64 %factor, %i.bh
  %i.bk = add nuw i64 %i.bi, %factor
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false)
  %i.bp = trunc nuw nsw i64 %i.bo to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3m_.exit
  %.sroa.02.136 = phi i64 [ %i.bq, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3m_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3m_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bq = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bs, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3m_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3m_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3m_.exit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bu, align 1
  br i1 %i.l, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bq
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !5 ; 3 uses
  %i.bx = lshr i64 %i.bw, 1                       ; 5 uses
  %i.by = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bz = add nuw i64 %i.bx, %i.by                ; 5 uses
  %i.ca = sub i64 %.sroa.09.0, %i.bz
  %i.cb = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.ca ; 3 uses
  %i.cc = icmp samesign ugt i64 %i.bz, %3
  %i.cd = trunc i64 %.sroa.023.135 to i1
  %i.ce = or i64 %i.bw, %.sroa.023.135
  %i.cf = trunc i64 %i.ce to i1
  %or.cond3.i = or i1 %i.cc, %i.cf
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = trunc i64 %i.bw to i1
  br i1 %i.cg, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ch = shl nuw nsw i64 %i.bz, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3m_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cd, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ci = or i64 %i.bx, 1
  %i.cj = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB1a_5sliceSB15_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3l_(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 144115188075855872) %i.bx, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 144115188075855872) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw [64 x i8], ptr %i.cb, i64 %i.bx
  %i.co = or i64 %i.by, 1
  %i.cp = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB1a_5sliceSB15_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3l_(ptr noalias nofree noundef nonnull align 8 %i.cn, i64 noundef range(i64 0, 144115188075855872) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 144115188075855872) %3, i32 noundef %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB12_5sliceSBX_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3c_(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 144115188075855872) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 144115188075855872) %3, i64 noundef %i.bx, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ct = shl nuw nsw i64 %i.bz, 1
  %i.cu = or disjoint i64 %i.ct, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3m_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3m_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cu, %bb.x ], [ %i.ch, %bb.t ] ; 2 uses
  %i.cv = icmp ugt i64 %i.bq, 1
  br i1 %i.cv, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cw = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cx = lshr i64 %.sroa.018.0, 1
  %i.cy = add nuw nsw i64 %i.cx, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cz = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cz, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.da = or i64 %1, 1
  %i.db = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 1
  %i.de = xor i32 %i.dd, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file10TensorInfoENCINvMNtB1a_5sliceSB15_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss2_0E0EB3l_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 144115188075855872) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 144115188075855872) %3, i32 noundef %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB11_5sliceSBW_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB35_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cy, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cw, %bb.y ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3d_.exit
  %.sroa.021.0 = phi i8 [ %i.bp, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3d_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3d_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3c_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 64
  %.val11.i = load ptr, ptr %i.q, align 8, !alias.scope !231, !noalias !232, !nonnull !5, !noundef !5 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 72
  %.val12.i = load i64, ptr %i.r, align 8, !alias.scope !231, !noalias !232, !noundef !5 ; 4 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val13.i = load ptr, ptr %i.s, align 8, !alias.scope !231, !noalias !232, !nonnull !5, !noundef !5
  %i.t = getelementptr i8, ptr %i.o, i64 16
  %.val14.i = load i64, ptr %i.t, align 8, !alias.scope !231, !noalias !232, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val14.i)
  %i.u = tail call i32 @memcmp(ptr nonnull readonly %.val11.i, ptr nonnull readonly %.val13.i, i64 %spec.store.select.i.i.i), !noalias !233 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %i.x = sub i64 %.val12.i, %.val14.i
  %spec.select.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.v
  %i.y = icmp sgt i64 %spec.select.i.i.i, -1      ; 2 uses
  %.not38.i = icmp eq i64 %i.n, 2                 ; 2 uses
  br i1 %i.y, label %.preheader27.i, label %.preheader.i

.preheader27.i:                                   ; preds = %bb.k
  br i1 %.not38.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not38.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph33.i

.lr.ph.i:                                         ; preds = %.preheader27.i, %bb.l
  %.val10.i = phi i64 [ %.val8.i, %bb.l ], [ %.val12.i, %.preheader27.i ] ; 2 uses
  %.val9.i = phi ptr [ %.val7.i, %bb.l ], [ %.val11.i, %.preheader27.i ]
  %.sroa.01.0.i29.i = phi i64 [ %i.ah, %bb.l ], [ 2, %.preheader27.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.01.0.i29.i ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val7.i = load ptr, ptr %i.aa, align 8, !alias.scope !231, !noalias !232, !nonnull !5, !noundef !5 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  %.val8.i = load i64, ptr %i.ab, align 8, !alias.scope !231, !noalias !232, !noundef !5 ; 3 uses
  %spec.store.select.i.i15.i = tail call i64 @llvm.umin.i64(i64 %.val8.i, i64 %.val10.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val7.i, ptr nonnull readonly %.val9.i, i64 %spec.store.select.i.i15.i), !noalias !233 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %.val8.i, %.val10.i
  %spec.select.i.i16.i = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = icmp slt i64 %spec.select.i.i16.i, 0
  br i1 %i.ag, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3c_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ah = add nuw nsw i64 %.sroa.01.0.i29.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3c_.exit.i, label %.lr.ph.i

.lr.ph33.i:                                       ; preds = %.preheader.i, %bb.m
  %.val6.i = phi i64 [ %.val4.i, %bb.m ], [ %.val12.i, %.preheader.i ] ; 2 uses
  %.val5.i = phi ptr [ %.val.i, %bb.m ], [ %.val11.i, %.preheader.i ]
  %.sroa.01.1.i32.i = phi i64 [ %i.aq, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.01.1.i32.i ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %.val.i = load ptr, ptr %i.aj, align 8, !alias.scope !231, !noalias !232, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 16
  %.val4.i = load i64, ptr %i.ak, align 8, !alias.scope !231, !noalias !232, !noundef !5 ; 3 uses
  %spec.store.select.i.i17.i = tail call i64 @llvm.umin.i64(i64 %.val4.i, i64 %.val6.i)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val5.i, i64 %spec.store.select.i.i17.i), !noalias !233 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 %.val4.i, %.val6.i
  %spec.select.i.i18.i = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i18.i, 0
  br i1 %i.ap, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3c_.exit.i

bb.m:                                             ; preds = %.lr.ph33.i
  %i.aq = add nuw nsw i64 %.sroa.01.1.i32.i, 1    ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.aq, %i.n
  br i1 %exitcond41.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3c_.exit.i, label %.lr.ph33.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3c_.exit.i: ; preds = %bb.m, %.lr.ph33.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.l ], [ %.sroa.01.0.i29.i, %.lr.ph.i ], [ %.sroa.01.1.i32.i, %.lr.ph33.i ], [ %i.n, %bb.m ] ; 5 uses
  %i.ar = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ar)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB17_5sliceSB12_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3c_.exit.i
  %i.as = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.as, 0
  %or.cond.i = or i1 %i.y, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.at = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 164703072086692426) %i.n)
  %i.au = shl nuw nsw i64 %i.at, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3d_.exit

bb.p:                                             ; preds = %bb.i
  %i.av = tail call i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB1a_5sliceSB15_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3f_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.av, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  %i.aw = shl nuw nsw i64 %i.av, 1
  %i.ax = or disjoint i64 %i.aw, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3d_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i, %.preheader27.i, %bb.n, %bb.j
  %.sroa.0.0.i24.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader27.i ], [ %.sroa.0.0.i596670.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i ]
  %i.ay = shl nuw nsw i64 %.sroa.0.0.i24.i, 1
  %i.az = or disjoint i64 %i.ay, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3d_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ba = phi i64 [ %i.as, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i596670.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.0.0.i596670.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bg, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bc = xor i64 %.sroa.0.017.i.i.i, -1
  %i.bd = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.0.017.i.i.i
  %i.be = getelementptr [56 x i8], ptr %i.bb, i64 %i.bc
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskVIURZGHVHJ_12tensor_tools(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be, i64 noundef 7)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i unwind label %bb.q, !noalias !232

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #17, !noalias !232
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bg = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bg, %i.ba
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB18_5sliceSB13_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3d_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.az, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i ], [ %i.ax, %bb.p ], [ %i.au, %bb.o ] ; 2 uses
  %i.bh = lshr i64 %.sroa.023.0, 1
  %i.bi = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bj = sub nsw i64 %factor, %i.bh
  %i.bk = add nuw i64 %i.bi, %factor
  %i.bl = mul i64 %i.bj, %.sroa.0.0
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false)
  %i.bp = trunc nuw nsw i64 %i.bo to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3g_.exit
  %.sroa.02.136 = phi i64 [ %i.bq, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3g_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3g_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bq = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bs, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3g_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3g_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3g_.exit ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bu, align 1
  br i1 %i.l, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bq
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !5 ; 3 uses
  %i.bx = lshr i64 %i.bw, 1                       ; 5 uses
  %i.by = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bz = add nuw i64 %i.bx, %i.by                ; 5 uses
  %i.ca = sub i64 %.sroa.09.0, %i.bz
  %i.cb = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.ca ; 3 uses
  %i.cc = icmp samesign ugt i64 %i.bz, %3
  %i.cd = trunc i64 %.sroa.023.135 to i1
  %i.ce = or i64 %i.bw, %.sroa.023.135
  %i.cf = trunc i64 %i.ce to i1
  %or.cond3.i = or i1 %i.cc, %i.cf
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = trunc i64 %i.bw to i1
  br i1 %i.cg, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ch = shl nuw nsw i64 %i.bz, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3g_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cd, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ci = or i64 %i.bx, 1
  %i.cj = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 1
  %i.cm = xor i32 %i.cl, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB1a_5sliceSB15_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3f_(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 164703072086692426) %i.bx, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw [56 x i8], ptr %i.cb, i64 %i.bx
  %i.co = or i64 %i.by, 1
  %i.cp = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB1a_5sliceSB15_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3f_(ptr noalias nofree noundef nonnull align 8 %i.cn, i64 noundef range(i64 0, 164703072086692426) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB12_5sliceSBX_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB36_(ptr noalias nofree noundef nonnull align 8 %i.cb, i64 noundef range(i64 0, 164703072086692426) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %i.bx, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ct = shl nuw nsw i64 %i.bz, 1
  %i.cu = or disjoint i64 %i.ct, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3g_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB1b_5sliceSB16_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3g_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cu, %bb.x ], [ %i.ch, %bb.t ] ; 2 uses
  %i.cv = icmp ugt i64 %i.bq, 1
  br i1 %i.cv, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cw = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.cx = lshr i64 %.sroa.018.0, 1
  %i.cy = add nuw nsw i64 %i.cx, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cz = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cz, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.da = or i64 %1, 1
  %i.db = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.da, i1 true)
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 1
  %i.de = xor i32 %i.dd, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENCINvMNtB1a_5sliceSB15_7sort_byNCNvCskVIURZGHVHJ_12tensor_tools6run_lss1_0E0EB3f_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB12_5sliceSBW_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareBX_B1A_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBY_B1B_EE0E0ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ab, label %bb.b

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

bb.f:                                             ; preds = %bb.x, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.x ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eu, %bb.x ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.es, %bb.x ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB19_5sliceSB13_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB14_B1H_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB15_B1I_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit
  %.sroa.021.0 = phi i8 [ %i.dl, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB19_5sliceSB13_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB14_B1H_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB15_B1I_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB19_5sliceSB13_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB14_B1H_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB15_B1I_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB18_5sliceSB12_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB13_B1G_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB14_B1H_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit.i, %bb.h
  br i1 %4, label %bb.o, label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %switch.lookup

switch.lookup:                                    ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.val11.i = load ptr, ptr %i.q, align 8, !alias.scope !252, !noalias !253 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 24
  %.val12.i = load ptr, ptr %i.r, align 8, !alias.scope !252, !noalias !253, !nonnull !5, !noundef !5
  %.val13.i = load ptr, ptr %i.o, align 8, !alias.scope !252, !noalias !253 ; 3 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val14.i = load ptr, ptr %i.s, align 8, !alias.scope !252, !noalias !253, !nonnull !5, !align !7, !noundef !5
  %i.t = load ptr, ptr %.val14.i, align 8, !noalias !254, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 146
  %i.v = load i8, ptr %i.u, align 2, !range !255, !noalias !254, !noundef !5
  %i.w = zext nneg i8 %i.v to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB12_5sliceSBW_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareBX_B1A_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBY_B1B_EE0E0ECskVIURZGHVHJ_12tensor_tools.63, i64 %i.w
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  %i.x = load ptr, ptr %.val12.i, align 8, !noalias !254, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 146
  %i.z = load i8, ptr %i.y, align 2, !range !255, !noalias !254, !noundef !5 ; 3 uses
  %i.aa = zext nneg i8 %i.z to i64
  %switch.gep69 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB12_5sliceSBW_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareBX_B1A_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBY_B1B_EE0E0ECskVIURZGHVHJ_12tensor_tools.63, i64 %i.aa
  %switch.load70 = load i8, ptr %switch.gep69, align 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.ab = getelementptr i8, ptr %.val11.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.ab, align 8, !noalias !254, !nonnull !5, !noundef !5 ; 3 uses
  %i.ac = getelementptr i8, ptr %.val11.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.ac, align 8, !noalias !254, !noundef !5 ; 4 uses
  %i.ad = getelementptr i8, ptr %.val13.i, i64 8
  %.val2.i.i.i.i = load ptr, ptr %i.ad, align 8, !noalias !254, !nonnull !5, !noundef !5
  %i.ae = getelementptr i8, ptr %.val13.i, i64 16
  %.val3.i.i.i.i = load i64, ptr %i.ae, align 8, !noalias !254, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i.i.i)
  %i.af = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !256, !noalias !254 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = sub nsw i64 %.val1.i.i.i.i, %.val3.i.i.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.ag
  %i.aj = icmp eq i8 %switch.load, %switch.load70
  %i.ak = icmp slt i64 %spec.select.i.i.i.i.i.i.i, 0
  %i.al = icmp samesign ult i8 %switch.load, %switch.load70
  %i.am = select i1 %i.aj, i1 %i.ak, i1 %i.al     ; 2 uses
  %.not56.i = icmp eq i64 %i.n, 2                 ; 2 uses
  br i1 %i.am, label %.preheader.i, label %.preheader45.i

.preheader45.i:                                   ; preds = %switch.lookup
  br i1 %.not56.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %switch.lookup
  br i1 %.not56.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.preheader.i.i.i, label %.lr.ph52.i

.lr.ph.i:                                         ; preds = %.preheader45.i, %bb.k
  %.val3.i.i.i21.i = phi i64 [ %.val1.i.i.i19.i, %bb.k ], [ %.val1.i.i.i.i, %.preheader45.i ] ; 2 uses
  %.val2.i.i.i20.i = phi ptr [ %.val.i.i.i18.i, %bb.k ], [ %.val.i.i.i.i, %.preheader45.i ]
  %i.an = phi i8 [ %i.av, %bb.k ], [ %i.z, %.preheader45.i ]
  %.sroa.01.0.i49.i = phi i64 [ %i.bh, %bb.k ], [ 2, %.preheader45.i ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i49.i ; 2 uses
  %i.ap = add nsw i64 %.sroa.01.0.i49.i, -1
  %i.aq = icmp samesign ult i64 %i.ap, %i.n
  tail call void @llvm.assume(i1 %i.aq)
  %.val7.i = load ptr, ptr %i.ao, align 8, !alias.scope !252, !noalias !253, !nonnull !5, !noundef !5 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ao, i64 8
  %.val8.i = load ptr, ptr %i.ar, align 8, !alias.scope !252, !noalias !253, !nonnull !5, !noundef !5
  %i.as = zext nneg i8 %i.an to i64
  %switch.gep63 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB12_5sliceSBW_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareBX_B1A_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBY_B1B_EE0E0ECskVIURZGHVHJ_12tensor_tools.63, i64 %i.as
  %switch.load64 = load i8, ptr %switch.gep63, align 1 ; 2 uses
  %i.at = load ptr, ptr %.val8.i, align 8, !noalias !254, !nonnull !5, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 146
  %i.av = load i8, ptr %i.au, align 2, !range !255, !noalias !254, !noundef !5 ; 2 uses
  %i.aw = zext nneg i8 %i.av to i64
  %switch.gep72 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB12_5sliceSBW_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareBX_B1A_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBY_B1B_EE0E0ECskVIURZGHVHJ_12tensor_tools.63, i64 %i.aw
  %switch.load73 = load i8, ptr %switch.gep72, align 1 ; 2 uses
  %i.ax = getelementptr i8, ptr %.val7.i, i64 8
  %.val.i.i.i18.i = load ptr, ptr %i.ax, align 8, !noalias !254, !nonnull !5, !noundef !5 ; 2 uses
  %i.ay = getelementptr i8, ptr %.val7.i, i64 16
  %.val1.i.i.i19.i = load i64, ptr %i.ay, align 8, !noalias !254, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i.i22.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i.i19.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i.i21.i)
  %i.az = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i18.i, ptr nonnull readonly %.val2.i.i.i20.i, i64 %spec.store.select.i.i.i.i.i.i22.i), !alias.scope !257, !noalias !254 ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp eq i32 %i.az, 0
  %i.bc = sub nsw i64 %.val1.i.i.i19.i, %.val3.i.i.i21.i
  %spec.select.i.i.i.i.i.i23.i = select i1 %i.bb, i64 %i.bc, i64 %i.ba
  %i.bd = icmp eq i8 %switch.load64, %switch.load73
  %i.be = icmp slt i64 %spec.select.i.i.i.i.i.i23.i, 0
  %i.bf = icmp samesign ult i8 %switch.load64, %switch.load73
  %i.bg = select i1 %i.bd, i1 %i.be, i1 %i.bf
  br i1 %i.bg, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB18_5sliceSB12_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB13_B1G_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB14_B1H_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.bh = add nuw nsw i64 %.sroa.01.0.i49.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bh, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB18_5sliceSB12_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB13_B1G_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB14_B1H_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph.i

.lr.ph52.i:                                       ; preds = %.preheader.i, %bb.l
  %.val3.i.i.i32.i = phi i64 [ %.val1.i.i.i30.i, %bb.l ], [ %.val1.i.i.i.i, %.preheader.i ] ; 2 uses
  %.val2.i.i.i31.i = phi ptr [ %.val.i.i.i29.i, %bb.l ], [ %.val.i.i.i.i, %.preheader.i ]
  %i.bi = phi i8 [ %i.bq, %bb.l ], [ %i.z, %.preheader.i ]
  %.sroa.01.1.i51.i = phi i64 [ %i.cc, %bb.l ], [ 2, %.preheader.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i51.i ; 2 uses
  %i.bk = add nsw i64 %.sroa.01.1.i51.i, -1
  %i.bl = icmp samesign ult i64 %i.bk, %i.n
  tail call void @llvm.assume(i1 %i.bl)
  %.val.i = load ptr, ptr %i.bj, align 8, !alias.scope !252, !noalias !253, !nonnull !5, !noundef !5 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  %.val4.i = load ptr, ptr %i.bm, align 8, !alias.scope !252, !noalias !253, !nonnull !5, !noundef !5
  %i.bn = zext nneg i8 %i.bi to i64
  %switch.gep66 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB12_5sliceSBW_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareBX_B1A_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBY_B1B_EE0E0ECskVIURZGHVHJ_12tensor_tools.63, i64 %i.bn
  %switch.load67 = load i8, ptr %switch.gep66, align 1 ; 2 uses
  %i.bo = load ptr, ptr %.val4.i, align 8, !noalias !254, !nonnull !5, !noundef !5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 146
  %i.bq = load i8, ptr %i.bp, align 2, !range !255, !noalias !254, !noundef !5 ; 2 uses
  %i.br = zext nneg i8 %i.bq to i64
  %switch.gep75 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB12_5sliceSBW_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareBX_B1A_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBY_B1B_EE0E0ECskVIURZGHVHJ_12tensor_tools.63, i64 %i.br
  %switch.load76 = load i8, ptr %switch.gep75, align 1 ; 2 uses
  %i.bs = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i.i29.i = load ptr, ptr %i.bs, align 8, !noalias !254, !nonnull !5, !noundef !5 ; 2 uses
  %i.bt = getelementptr i8, ptr %.val.i, i64 16
  %.val1.i.i.i30.i = load i64, ptr %i.bt, align 8, !noalias !254, !noundef !5 ; 3 uses
  %spec.store.select.i.i.i.i.i.i33.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val1.i.i.i30.i, i64 range(i64 0, -9223372036854775808) %.val3.i.i.i32.i)
  %i.bu = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i.i29.i, ptr nonnull readonly %.val2.i.i.i31.i, i64 %spec.store.select.i.i.i.i.i.i33.i), !alias.scope !258, !noalias !254 ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp eq i32 %i.bu, 0
  %i.bx = sub nsw i64 %.val1.i.i.i30.i, %.val3.i.i.i32.i
  %spec.select.i.i.i.i.i.i34.i = select i1 %i.bw, i64 %i.bx, i64 %i.bv
  %i.by = icmp eq i8 %switch.load67, %switch.load76
  %i.bz = icmp slt i64 %spec.select.i.i.i.i.i.i34.i, 0
  %i.ca = icmp samesign ult i8 %switch.load67, %switch.load76
  %i.cb = select i1 %i.by, i1 %i.bz, i1 %i.ca
  br i1 %i.cb, label %bb.l, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB18_5sliceSB12_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB13_B1G_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB14_B1H_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit.i

bb.l:                                             ; preds = %.lr.ph52.i
  %i.cc = add nuw nsw i64 %.sroa.01.1.i51.i, 1    ; 2 uses
  %exitcond60.not.i = icmp eq i64 %i.cc, %i.n
  br i1 %exitcond60.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB18_5sliceSB12_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB13_B1G_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB14_B1H_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit.i, label %.lr.ph52.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB18_5sliceSB12_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB13_B1G_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB14_B1H_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %bb.k, %.lr.ph.i, %bb.l, %.lr.ph52.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.l ], [ %.sroa.01.1.i51.i, %.lr.ph52.i ], [ %.sroa.01.0.i49.i, %.lr.ph.i ], [ %i.n, %bb.k ] ; 6 uses
  %i.cd = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.cd)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB18_5sliceSB12_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB13_B1G_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB14_B1H_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit.i
  br i1 %i.am, label %bb.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i

bb.n:                                             ; preds = %bb.i
  %i.ce = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 576460752303423488) %i.n)
  %i.cf = shl nuw nsw i64 %i.ce, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB19_5sliceSB13_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB14_B1H_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB15_B1I_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit

bb.o:                                             ; preds = %bb.i
  %i.cg = tail call i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1b_5sliceSB15_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB16_B1J_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB17_B1K_EE0E0ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.cg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  %i.ch = shl nuw nsw i64 %i.cg, 1
  %i.ci = or disjoint i64 %i.ch, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB19_5sliceSB13_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB14_B1H_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB15_B1I_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i.epil.preheader

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i.loopexit.unr-lcssa, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.preheader.i.i.i
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.preheader.i.i.i ], [ %i.dc, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod79 = trunc i64 %i.cq to i1
  tail call void @llvm.assume(i1 %lcmp.mod79)
  %i.cj = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.i.epil.init ; 2 uses
  %i.cl = getelementptr [16 x i8], ptr %i.cr, i64 %i.cj ; 2 uses
  %i.cm = load <2 x ptr>, ptr %i.ck, align 8, !alias.scope !259, !noalias !260
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !alias.scope !261, !noalias !253
  store <2 x ptr> %i.cm, ptr %i.cl, align 8, !alias.scope !262, !noalias !263
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i.epil.preheader, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i.loopexit.unr-lcssa, %.preheader45.i, %bb.p, %bb.m, %bb.j
  %.sroa.0.0.i42.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.m ], [ %.sroa.0.0.i.i, %bb.p ], [ 2, %.preheader45.i ], [ %.sroa.0.0.i849195.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i849195.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i.epil.preheader ]
  %i.cn = shl nuw nsw i64 %.sroa.0.0.i42.i, 1
  %i.co = or disjoint i64 %i.cn, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB19_5sliceSB13_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB14_B1H_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB15_B1I_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit

bb.p:                                             ; preds = %bb.m
  %i.cp = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %.not.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.preheader.i.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.p
  %i.cq = phi i64 [ %i.cp, %bb.p ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i849195.i = phi i64 [ %.sroa.0.0.i.i, %bb.p ], [ 2, %.preheader.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i849195.i ; 3 uses
  %xtraiter = and i64 %i.cq, 1
  %i.cs = icmp eq i64 %i.cq, 1
  br i1 %i.cs, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i.epil.preheader, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.preheader.i.i.i.new

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.preheader.i.i.i
  %unroll_iter = and i64 %i.cq, 9223372036854775806
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.preheader.i.i.i.new ], [ %i.dc, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i ]
  %i.ct = xor i64 %.sroa.0.016.i.i.i, -1
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.cv = getelementptr [16 x i8], ptr %i.cr, i64 %i.ct ; 2 uses
  %i.cw = load <2 x ptr>, ptr %i.cu, align 8, !alias.scope !259, !noalias !260
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i64 16, i1 false), !alias.scope !261, !noalias !253
  store <2 x ptr> %i.cw, ptr %i.cv, align 8, !alias.scope !262, !noalias !263
  %i.cx = xor i64 %.sroa.0.016.i.i.i, -2
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.da = getelementptr [16 x i8], ptr %i.cr, i64 %i.cx ; 2 uses
  %i.db = load <2 x ptr>, ptr %i.cz, align 8, !alias.scope !259, !noalias !260
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %i.da, i64 16, i1 false), !alias.scope !261, !noalias !253
  store <2 x ptr> %i.db, ptr %i.da, align 8, !alias.scope !262, !noalias !263
  %i.dc = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i.loopexit.unr-lcssa, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE12split_at_mutCskVIURZGHVHJ_12tensor_tools.exit11.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB19_5sliceSB13_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB14_B1H_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB15_B1I_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.n, %bb.o, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.co, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorE7reverseCskVIURZGHVHJ_12tensor_tools.exit.i ], [ %i.ci, %bb.o ], [ %i.cf, %bb.n ] ; 2 uses
  %i.dd = lshr i64 %.sroa.023.0, 1
  %i.de = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.df = sub nsw i64 %factor, %i.dd
  %i.dg = add nuw nsw i64 %i.de, %factor
  %i.dh = mul i64 %i.df, %.sroa.0.0
  %i.di = mul i64 %i.dg, %.sroa.0.0
  %i.dj = xor i64 %i.di, %i.dh
  %i.dk = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dj, i1 false)
  %i.dl = trunc nuw nsw i64 %i.dk to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1c_5sliceSB16_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB17_B1K_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB18_B1L_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit
  %.sroa.02.138 = phi i64 [ %i.dm, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1c_5sliceSB16_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB17_B1K_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB18_B1L_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.137 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1c_5sliceSB16_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB17_B1K_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB18_B1L_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.dm = add i64 %.sroa.02.138, -1               ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.do, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1c_5sliceSB16_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB17_B1K_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB18_B1L_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.137, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1c_5sliceSB16_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB17_B1K_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB18_B1L_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.138, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1c_5sliceSB16_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB17_B1K_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB18_B1L_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.dq, align 1
  br i1 %i.l, label %bb.x, label %bb.y

bb.q:                                             ; preds = %.lr.ph
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dm
  %i.ds = load i64, ptr %i.dr, align 8, !noundef !5 ; 3 uses
  %i.dt = lshr i64 %i.ds, 1                       ; 5 uses
  %i.du = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.dv = add nuw i64 %i.dt, %i.du                ; 5 uses
  %i.dw = sub i64 %.sroa.09.0, %i.dv
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.dw ; 3 uses
  %i.dy = icmp samesign ugt i64 %i.dv, %3
  %i.dz = trunc i64 %.sroa.023.137 to i1
  %i.ea = or i64 %i.ds, %.sroa.023.137
  %i.eb = trunc i64 %i.ea to i1
  %or.cond3.i = or i1 %i.dy, %i.eb
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ec = trunc i64 %i.ds to i1
  br i1 %i.ec, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.ed = shl nuw nsw i64 %i.dv, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1c_5sliceSB16_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB17_B1K_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB18_B1L_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.dz, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.ee = or i64 %i.dt, 1
  %i.ef = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ee, i1 true)
  %i.eg = trunc nuw nsw i64 %i.ef to i32
  %i.eh = shl nuw nsw i32 %i.eg, 1
  %i.ei = xor i32 %i.eh, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1b_5sliceSB15_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB16_B1J_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB17_B1K_EE0E0ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 %i.dx, i64 noundef range(i64 0, 576460752303423488) %i.dt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ei, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.t

bb.v:                                             ; preds = %bb.t
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %i.dt
  %i.ek = or i64 %i.du, 1
  %i.el = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ek, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 1
  %i.eo = xor i32 %i.en, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1b_5sliceSB15_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB16_B1J_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB17_B1K_EE0E0ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 %i.ej, i64 noundef range(i64 0, 576460752303423488) %i.du, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.eo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB13_5sliceSBX_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareBY_B1B_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapBZ_B1C_EE0E0ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 %i.dx, i64 noundef range(i64 0, 576460752303423488) %i.dv, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.dt, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ep = shl nuw nsw i64 %i.dv, 1
  %i.eq = or disjoint i64 %i.ep, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1c_5sliceSB16_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB17_B1K_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB18_B1L_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1c_5sliceSB16_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB17_B1K_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB18_B1L_EE0E0ECskVIURZGHVHJ_12tensor_tools.exit: ; preds = %bb.s, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.eq, %bb.w ], [ %i.ed, %bb.s ] ; 2 uses
  %i.er = icmp ugt i64 %i.dm, 1
  br i1 %i.er, label %.lr.ph, label %._crit_edge

bb.x:                                             ; preds = %._crit_edge
  %i.es = add nsw i64 %.sroa.02.1.lcssa, 1
  %i.et = lshr i64 %.sroa.018.0, 1
  %i.eu = add nuw nsw i64 %i.et, %.sroa.09.0
  br label %bb.f

bb.y:                                             ; preds = %._crit_edge
  %i.ev = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ev, 0
  br i1 %.not30, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ew = or i64 %1, 1
  %i.ex = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ew, i1 true)
  %i.ey = trunc nuw nsw i64 %i.ex to i32
  %i.ez = shl nuw nsw i32 %i.ey, 1
  %i.fa = xor i32 %i.ez, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTRNtNtCsgCecv3eZDcN_5alloc6string6StringRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorENCINvMNtB1b_5sliceSB15_7sort_byNCINvNtCsOwuIBbUsgI_11safetensors6tensor7prepareB16_B1J_RINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapB17_B1K_EE0E0ECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.fa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %bb.aa
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvNtNtCs7fP0opQOXdx_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEINtNtB6_3map11MapConsumerIB33_INtNtB6_10while_some17WhileSomeConsumerINtNtNtB6_7collect8consumer15CollectConsumerTB1F_NtNtB2l_9quantized7QTensorEEENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB6_20FromParallelIteratorIB5N_ppEE13from_par_iter2okB4R_NtNtB2l_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EEB7P_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull align 8 %5, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 14 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [80 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %4, ptr %i.q, align 8
  store ptr %5, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store i64 %6, ptr %i.r, align 8
  %i.s = invoke noundef zeroext i1 @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerINtNtNtB7_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB4b_ppEE13from_par_iter2okB2k_NtNtB31_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EINtNtB7_8plumbing8ConsumerTB2l_NtNtB31_6tensor6TensorEE4fullB6d_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %7)
          to label %bb.b unwind label %bb.t

bb.b:                                             ; preds = %bb.a
  br i1 %i.s, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = lshr i64 %1, 1                           ; 4 uses
  %.not.i = icmp ult i64 %i.t, %4
  br i1 %.not.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not1.i = icmp eq i64 %3, 0
  br i1 %.not1.i, label %bb.i, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = invoke noundef i64 @_RNvCsa5n7gMT4fih_10rayon_core19current_num_threads()
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.f
  %i.v = lshr i64 %3, 1
  %i.w = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.v)
  %.pre = load ptr, ptr %i.n, align 8
  %.pre38 = load i64, ptr %i.r, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.x = lshr i64 %3, 1
  br label %bb.j

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerINtNtNtB7_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB4b_ppEE13from_par_iter2okB2k_NtNtB31_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EINtNtB7_8plumbing8ConsumerTB2l_NtNtB31_6tensor6TensorEE11into_folderB6d_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %7)
          to label %bb.r unwind label %bb.t

bb.i:                                             ; preds = %bb.c, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %5, ptr %i.c, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %6, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerINtNtNtB7_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB4b_ppEE13from_par_iter2okB2k_NtNtB31_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EINtNtB7_8plumbing8ConsumerTB2l_NtNtB31_6tensor6TensorEE11into_folderB6d_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %7)
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.g, %.noexc
  %i.z = phi i64 [ %.pre38, %.noexc ], [ %6, %bb.g ]
  %i.aa = phi ptr [ %.pre, %.noexc ], [ %5, %bb.g ]
  %.sink.i = phi i64 [ %i.w, %.noexc ], [ %i.x, %bb.g ]
  store i64 %.sink.i, ptr %i.o, align 8, !alias.scope !268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %i.t, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXs9_NtCs7fP0opQOXdx_5rayon3vecINtB5_13DrainProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtB7_4iter8plumbing8Producer8split_atCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 %i.aa, i64 noundef %i.z, i64 noundef %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ab = load ptr, ptr %i.i, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5 ; 2 uses
  store ptr %i.ab, ptr %i.k, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.ad, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5, !align !7, !noundef !5 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5 ; 2 uses
  store ptr %i.ag, ptr %i.j, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.ai, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXs4_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerINtNtNtB7_7collect8consumer15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB4b_ppEE13from_par_iter2okB2k_NtNtB31_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EINtNtB7_8plumbing8ConsumerTB2l_NtNtB31_6tensor6TensorEE8split_atB6d_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %7, i64 noundef %i.t)
          to label %bb.n unwind label %bb.p

bb.k:                                             ; preds = %bb.i
  call void @_RINvYINtNtCs7fP0opQOXdx_5rayon3vec13DrainProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtB8_4iter8plumbing8Producer9fold_withINtNtB2d_3map9MapFolderIB2Q_INtNtB2d_10while_some15WhileSomeFolderINtNtNtB2d_7collect8consumer13CollectResultTBM_NtNtB1s_9quantized7QTensorEEENCINvNvXs2_NtB8_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB2d_20FromParallelIteratorIB5v_ppEE13from_par_iter2okB4A_NtNtB1s_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EEB7y_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull align 8 %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXs6_NtNtCs7fP0opQOXdx_5rayon4iter3mapINtB5_9MapFolderIBD_INtNtB7_10while_some15WhileSomeFolderINtNtNtB7_7collect8consumer13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEENCINvNvXs2_NtB9_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB7_20FromParallelIteratorIB44_ppEE13from_par_iter2okB2d_NtNtB2U_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EINtNtB7_8plumbing6FolderTB2e_NtNtB2U_6tensor6TensorEE8completeB66_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsa_NtCs7fP0opQOXdx_5rayon3vecINtB5_13DrainProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs7fP0opQOXdx_5rayon3vec13DrainProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEECskVIURZGHVHJ_12tensor_tools.exit22 unwind label %bb.m

bb.m:                                             ; preds = %bb.t, %bb.q, %bb.p, %bb.l
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.n:                                             ; preds = %bb.j
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.am, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.p, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ag, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.ai, ptr %.sroa.75.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.l, ptr %i.an, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.ab, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RINvNtCsa5n7gMT4fih_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs7fP0opQOXdx_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1r_3vec13DrainProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEEINtNtB1p_3map11MapConsumerIB4n_INtNtB1p_10while_some17WhileSomeConsumerINtNtNtB1p_7collect8consumer15CollectConsumerTB2Z_NtNtB3F_9quantized7QTensorEEENCINvNvXs2_NtB1r_6resultINtNtCsf3Ta7LF998c_4core6result6ResultppEINtB1p_20FromParallelIteratorIB7b_ppEE13from_par_iter2okB6e_NtNtB3F_5error5ErrorE0ENCNvCskVIURZGHVHJ_12tensor_tools24run_quantize_safetensors0EE0NCB1i_s_0INtB5y_13CollectResultB6e_EBaj_E0TBaj_Baj_EEB9e_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvXs6_NtNtNtCs7fP0opQOXdx_5rayon4iter7collect8consumerNtB5_14CollectReducerINtNtB9_8plumbing7ReducerINtB5_13CollectResultTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core9quantized7QTensorEEE6reduceCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n, %bb.s
  ret void

bb.p:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsa_NtCs7fP0opQOXdx_5rayon3vecINtB5_13DrainProducerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %bb.q unwind label %bb.m

end_hunk_0
