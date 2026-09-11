Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.07?download=true
inline.NumInlined: 73
inline.NumDeleted: 50
begin_hunk_0_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyReNCNvBY_9configure0E0EB10_:bb.a
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyReNCNvB17_9configure0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #14
  %i.bm = shl nuw nsw i64 %..i22.i, 1
  %i.bn = or disjoint i64 %i.bm, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyReNCNvB15_9configure0E0EB17_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage7reverseBy_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEB14_.exit.i.i.i, %.preheader31.i, %bb.n, %bb.j
  %.sroa.0.0.i28.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader31.i ], [ %.sroa.0.0.i546165.i, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEB14_.exit.i.i.i ]
  %i.bo = shl nuw nsw i64 %.sroa.0.0.i28.i, 1
  %i.bp = or disjoint i64 %i.bo, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyReNCNvB15_9configure0E0EB17_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.bq = phi i64 [ %i.bk, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i546165.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.sroa.0.0.i546165.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEB14_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bw, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEB14_.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bs = xor i64 %.sroa.0.017.i.i.i, -1
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.bu = getelementptr [48 x i8], ptr %i.br, i64 %i.bs
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bu, i64 noundef 6)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEB14_.exit.i.i.i unwind label %bb.q, !noalias !38

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #15, !noalias !38
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageEB14_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bw = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bw, %i.bq
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage7reverseBy_.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyReNCNvB15_9configure0E0EB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage7reverseBy_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.bp, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs3tZ2SXJA1qv_8jiff_cli4args5Usage7reverseBy_.exit.i ], [ %i.bn, %bb.p ], [ %i.bl, %bb.o ] ; 2 uses
  %i.bx = lshr i64 %.sroa.023.0, 1
  %i.by = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bz = sub nsw i64 %factor, %i.bx
  %i.ca = add nuw i64 %i.by, %factor
  %i.cb = mul i64 %i.bz, %.sroa.0.0
  %i.cc = mul i64 %i.ca, %.sroa.0.0
  %i.cd = xor i64 %i.cc, %i.cb
  %i.ce = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cd, i1 false)
  %i.cf = trunc nuw nsw i64 %i.ce to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyReNCNvB18_9configure0E0EB1a_.exit
  %.sroa.02.136 = phi i64 [ %i.cg, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyReNCNvB18_9configure0E0EB1a_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyReNCNvB18_9configure0E0EB1a_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.cg = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.ci, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyReNCNvB18_9configure0E0EB1a_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyReNCNvB18_9configure0E0EB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyReNCNvB18_9configure0E0EB1a_.exit ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ck, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cg
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !5 ; 3 uses
  %i.cn = lshr i64 %i.cm, 1                       ; 5 uses
  %i.co = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.cp = add nuw i64 %i.cn, %i.co                ; 5 uses
  %i.cq = sub i64 %.sroa.09.0, %i.cp
  %i.cr = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.cq ; 3 uses
  %i.cs = icmp samesign ugt i64 %i.cp, %3
  %i.ct = trunc i64 %.sroa.023.135 to i1
  %i.cu = or i64 %i.cm, %.sroa.023.135
  %i.cv = trunc i64 %i.cu to i1
  %or.cond3.i = or i1 %i.cs, %i.cv
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cw = trunc i64 %i.cm to i1
  br i1 %i.cw, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cx = shl nuw nsw i64 %i.cp, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyReNCNvB18_9configure0E0EB1a_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ct, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cy = or i64 %i.cn, 1
  %i.cz = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cy, i1 true)
  %i.da = trunc nuw nsw i64 %i.cz to i32
  %i.db = shl nuw nsw i32 %i.da, 1
  %i.dc = xor i32 %i.db, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyReNCNvB17_9configure0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.cr, i64 noundef range(i64 0, 192153584101141163) %i.cn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #14
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw [48 x i8], ptr %i.cr, i64 %i.cn
  %i.de = or i64 %i.co, 1
  %i.df = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.de, i1 true)
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 1
  %i.di = xor i32 %i.dh, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyReNCNvB17_9configure0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.dd, i64 noundef range(i64 0, 192153584101141163) %i.co, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.di, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #14
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyReNCNvBZ_9configure0E0EB11_(ptr noalias nofree noundef nonnull align 8 %i.cr, i64 noundef range(i64 0, 192153584101141163) %i.cp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i64 noundef %i.cn, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.dj = shl nuw nsw i64 %i.cp, 1
  %i.dk = or disjoint i64 %i.dj, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyReNCNvB18_9configure0E0EB1a_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyReNCNvB18_9configure0E0EB1a_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.dk, %bb.x ], [ %i.cx, %bb.t ] ; 2 uses
  %i.dl = icmp ugt i64 %i.cg, 1
  br i1 %i.dl, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.dm = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dn = lshr i64 %.sroa.018.0, 1
  %i.do = add nuw i64 %i.dn, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dp = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dp, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dq = or i64 %1, 1
  %i.dr = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dq, i1 true)
  %i.ds = trunc nuw nsw i64 %i.dr to i32
  %i.dt = shl nuw nsw i32 %i.ds, 1
  %i.du = xor i32 %i.dt, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs3tZ2SXJA1qv_8jiff_cli4args5UsageNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyReNCNvB17_9configure0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i32 noundef %i.du, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #14
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2r_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.co, %bb.z ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cm, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2z_.exit
  %.sroa.021.0 = phi i8 [ %i.bf, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2z_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2z_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47)
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2y_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7reverseCs3tZ2SXJA1qv_8jiff_cli.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 32
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !47, !noalias !48, !noundef !5 ; 5 uses
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %.val17.i = load i64, ptr %i.q, align 8, !alias.scope !47, !noalias !48, !noundef !5 ; 2 uses
  %i.r = icmp eq i64 %.val15.i, %.val17.i
  br i1 %i.r, label %.split.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i

.split.i:                                         ; preds = %bb.k
  %.val16.i = load ptr, ptr %i.n, align 8, !alias.scope !47, !noalias !48, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.val14.i = load ptr, ptr %i.s, align 8, !alias.scope !47, !noalias !48, !nonnull !5, !noundef !5
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %.val15.i), !noalias !49
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.preheader.i, label %.preheader35.i

.preheader.i:                                     ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i, %.split.i
  %.not46.i = icmp eq i64 %i.m, 2
  br i1 %.not46.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2y_.exit.i, label %.lr.ph41.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i: ; preds = %bb.k
  %i.v = icmp ult i64 %.val17.i, %.val15.i
  br i1 %i.v, label %.preheader.i, label %.preheader35.i

.preheader35.i:                                   ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit.i, %.split.i
  %.not45.i = icmp eq i64 %i.m, 2
  br i1 %.not45.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2y_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader35.i, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader35.i ] ; 3 uses
  %.sroa.01.0.i37.i = phi i64 [ %i.ac, %bb.l ], [ 2, %.preheader35.i ] ; 5 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.0.i37.i ; 2 uses
  %6 = add nsw i64 %.sroa.01.0.i37.i, -1          ; 2 uses
  %7 = icmp samesign ult i64 %6, %i.m
  tail call void @llvm.assume(i1 %7)
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val11.i = load i64, ptr %i.x, align 8, !alias.scope !47, !noalias !48, !noundef !5 ; 3 uses
  %i.y = icmp eq i64 %.val11.i, %.val13.i
  br i1 %i.y, label %.split25.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit19.i

.split25.i:                                       ; preds = %.lr.ph.i
  %8 = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %6
  %.val12.i = load ptr, ptr %8, align 8, !alias.scope !47, !noalias !48, !nonnull !5, !noundef !5
  %.val10.i = load ptr, ptr %i.w, align 8, !alias.scope !47, !noalias !48, !nonnull !5, !noundef !5
  %i.z = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %.val13.i), !noalias !49
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2y_.exit.i, label %bb.l

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit19.i: ; preds = %.lr.ph.i
  %i.ab = icmp ult i64 %.val13.i, %.val11.i
  br i1 %i.ab, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2y_.exit.i, label %bb.l

bb.l:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit19.i, %.split25.i
  %i.ac = add nuw nsw i64 %.sroa.01.0.i37.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2y_.exit.i, label %.lr.ph.i

.lr.ph41.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ] ; 3 uses
  %.sroa.01.1.i40.i = phi i64 [ %i.aj, %bb.m ], [ 2, %.preheader.i ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.01.1.i40.i ; 2 uses
  %9 = add nsw i64 %.sroa.01.1.i40.i, -1          ; 2 uses
  %10 = icmp samesign ult i64 %9, %i.m
  tail call void @llvm.assume(i1 %10)
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val7.i = load i64, ptr %i.ae, align 8, !alias.scope !47, !noalias !48, !noundef !5 ; 3 uses
  %i.af = icmp eq i64 %.val7.i, %.val9.i
  br i1 %i.af, label %.split26.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit21.i

.split26.i:                                       ; preds = %.lr.ph41.i
  %11 = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %9
  %.val8.i = load ptr, ptr %11, align 8, !alias.scope !47, !noalias !48, !nonnull !5, !noundef !5
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !47, !noalias !48, !nonnull !5, !noundef !5
  %i.ag = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %.val9.i), !noalias !49
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2y_.exit.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit21.i: ; preds = %.lr.ph41.i
  %i.ai = icmp ult i64 %.val9.i, %.val7.i
  br i1 %i.ai, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2y_.exit.i

bb.m:                                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit21.i, %.split26.i
  %i.aj = add nuw nsw i64 %.sroa.01.1.i40.i, 1    ; 2 uses
  %exitcond50.not.i = icmp eq i64 %i.aj, %i.m
  br i1 %exitcond50.not.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2y_.exit.i, label %.lr.ph41.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2y_.exit.i: ; preds = %bb.l, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit19.i, %.split25.i, %bb.m, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit21.i, %.split26.i, %.preheader35.i, %.preheader.i
  %.sroa.3.0.i.i = phi i1 [ true, %.preheader.i ], [ false, %.preheader35.i ], [ true, %bb.m ], [ true, %.split26.i ], [ true, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit21.i ], [ false, %.split25.i ], [ false, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit19.i ], [ false, %bb.l ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader.i ], [ 2, %.preheader35.i ], [ %i.m, %bb.m ], [ %.sroa.01.1.i40.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit21.i ], [ %.sroa.01.1.i40.i, %.split26.i ], [ %i.m, %bb.l ], [ %.sroa.01.0.i37.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0B1r_.exit19.i ], [ %.sroa.01.0.i37.i, %.split25.i ] ; 7 uses
  %i.ak = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ak)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2y_.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7reverseCs3tZ2SXJA1qv_8jiff_cli.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 %.sroa.01.0)
  %i.al = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2z_.exit

bb.p:                                             ; preds = %bb.i
  %..i22.i = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2B_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i22.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #14
  %i.am = shl nuw nsw i64 %..i22.i, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2z_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7reverseCs3tZ2SXJA1qv_8jiff_cli.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i32.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ %.sroa.0.0.i.i, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i ]
  %i.ao = shl nuw nsw i64 %.sroa.0.0.i32.i, 1
  %i.ap = or disjoint i64 %i.ao, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2z_.exit

bb.q:                                             ; preds = %bb.n
  %i.aq = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7reverseCs3tZ2SXJA1qv_8jiff_cli.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.aw, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.as = xor i64 %.sroa.0.017.i.i.i, -1
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.au = getelementptr [24 x i8], ptr %i.ar, i64 %i.as
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs3tZ2SXJA1qv_8jiff_cli(ptr noundef nonnull %i.at, ptr noundef nonnull %i.au, i64 noundef 3)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i unwind label %bb.r, !noalias !48

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #15, !noalias !48
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitEECs3tZ2SXJA1qv_8jiff_cli.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aw = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.aw, %i.aq
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7reverseCs3tZ2SXJA1qv_8jiff_cli.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2z_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7reverseCs3tZ2SXJA1qv_8jiff_cli.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ap, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitE7reverseCs3tZ2SXJA1qv_8jiff_cli.exit.i ], [ %i.an, %bb.p ], [ %i.al, %bb.o ] ; 2 uses
  %i.ax = lshr i64 %.sroa.023.0, 1
  %i.ay = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.az = sub nsw i64 %factor, %i.ax
  %i.ba = add nuw nsw i64 %i.ay, %factor
  %i.bb = mul i64 %i.az, %.sroa.0.0
  %i.bc = mul i64 %i.ba, %.sroa.0.0
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bd, i1 false)
  %i.bf = trunc nuw nsw i64 %i.be to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2C_.exit
  %.sroa.02.136 = phi i64 [ %i.bg, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2C_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2C_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bg = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bi, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2C_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2C_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2C_.exit ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bk, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.s:                                             ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bg
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !5 ; 3 uses
  %i.bn = lshr i64 %i.bm, 1                       ; 5 uses
  %i.bo = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bp = add nuw i64 %i.bn, %i.bo                ; 5 uses
  %i.bq = sub i64 %.sroa.09.0, %i.bp
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bq ; 3 uses
  %i.bs = icmp samesign ugt i64 %i.bp, %3
  %i.bt = trunc i64 %.sroa.023.135 to i1
  %i.bu = or i64 %i.bm, %.sroa.023.135
  %i.bv = trunc i64 %i.bu to i1
  %or.cond3.i = or i1 %i.bs, %i.bv
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bw = trunc i64 %i.bm to i1
  br i1 %i.bw, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bx = shl nuw nsw i64 %i.bp, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2C_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bt, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.by = or i64 %i.bn, 1
  %i.bz = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.by, i1 true)
  %i.ca = trunc nuw nsw i64 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 1
  %i.cc = xor i32 %i.cb, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2B_(ptr noalias nofree noundef nonnull align 8 %i.br, i64 noundef range(i64 0, 384307168202282326) %i.bn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #14
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %i.bn
  %i.ce = or i64 %i.bo, 1
  %i.cf = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ce, i1 true)
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 1
  %i.ci = xor i32 %i.ch, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2B_(ptr noalias nofree noundef nonnull align 8 %i.cd, i64 noundef range(i64 0, 384307168202282326) %i.bo, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2s_(ptr noalias nofree noundef nonnull align 8 %i.br, i64 noundef range(i64 0, 384307168202282326) %i.bp, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i64 noundef %i.bn, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.cj = shl nuw nsw i64 %i.bp, 1
  %i.ck = or disjoint i64 %i.cj, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2C_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2C_.exit: ; preds = %bb.u, %bb.y
  %.sroa.0.0.i = phi i64 [ %i.ck, %bb.y ], [ %i.bx, %bb.u ] ; 2 uses
  %i.cl = icmp ugt i64 %i.bg, 1
  br i1 %i.cl, label %.lr.ph, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.cm = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cn = lshr i64 %.sroa.018.0, 1
  %i.co = add nuw i64 %i.cn, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.cp = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cp, 0
  br i1 %.not30, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cq = or i64 %1, 1
  %i.cr = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cq, i1 true)
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 1
  %i.cu = xor i32 %i.ct, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTReNtNtCsa9sSWSfjDbm_4jiff4span4UnitENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvNtNtNtCs3tZ2SXJA1qv_8jiff_cli3cmd8generate21unit_designator_match11write_match0E0EB2B_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNCNvNtCs3tZ2SXJA1qv_8jiff_cli4args9configure0B5_(ptr nonnull %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !76
  call void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef %.8.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 2), !noalias !77
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.b = load i64, ptr %i.a, align 8, !range !79, !alias.scope !78, !noalias !80, !noundef !5
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %.preheader.i.i
    i64 1, label %bb.o
    i64 2, label %bb.p
end_hunk_0
