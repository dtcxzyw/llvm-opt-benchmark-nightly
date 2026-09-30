Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-var?download=true
inline.NumInlined: 11366
inline.NumDeleted: 4744
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZNK2OT4avar13_subset_avar2EP19hb_subset_context_tRK11hb_vector_tIS3_INS_12AxisValueMapELb0EELb0EE:bb.a
  %i.bo = shl nuw nsw i32 %i.bm, 2
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.bp) #18 ; 6 uses
  %.not22.i515 = icmp eq ptr %i.bq, null
  br i1 %.not22.i515, label %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE5allocEjb.exit, label %bb.p, !prof !190

bb.h:                                             ; preds = %.lr.ph, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE4pushIJRS3_EEEPS3_DpOT_.exit
  %.0209948 = phi i32 [ 0, %.lr.ph ], [ %i.cq, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE4pushIJRS3_EEEPS3_DpOT_.exit ]
  %.sroa.0696.0947 = phi i32 [ %i.l, %.lr.ph ], [ %.sroa.0696.4, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE4pushIJRS3_EEEPS3_DpOT_.exit ] ; 10 uses
  %.sroa.11.0945 = phi i32 [ 0, %.lr.ph ], [ %.sroa.11.1, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE4pushIJRS3_EEEPS3_DpOT_.exit ] ; 6 uses
  %.0739944 = phi ptr [ %i.r, %.lr.ph ], [ %i.cp, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE4pushIJRS3_EEEPS3_DpOT_.exit ] ; 3 uses
  %.sroa.20.0943 = phi ptr [ %i.p, %.lr.ph ], [ %.sroa.20.5, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE4pushIJRS3_EEEPS3_DpOT_.exit ] ; 6 uses
  %.not.i253 = icmp slt i32 %.sroa.11.0945, %.sroa.0696.0947
  %.pre1105 = add i32 %.sroa.11.0945, 1           ; 6 uses
  br i1 %.not.i253, label %.critedge.i254, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = icmp slt i32 %.sroa.0696.0947, 0
  br i1 %i.br, label %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE5allocEjb.exit545, label %bb.j, !prof !103

bb.j:                                             ; preds = %bb.i
  %.not.i525 = icmp ugt i32 %.pre1105, %.sroa.0696.0947
  br i1 %.not.i525, label %.preheader.i527, label %.critedge.i254, !prof !103

.preheader.i527:                                  ; preds = %bb.j, %.preheader.i527
  %.043.i528 = phi i32 [ %i.bu, %.preheader.i527 ], [ %.sroa.0696.0947, %bb.j ] ; 2 uses
  %i.bs = lshr i32 %.043.i528, 1
  %i.bt = add i32 %.043.i528, 8
  %i.bu = add i32 %i.bt, %i.bs                    ; 8 uses
  %i.bv = icmp ugt i32 %.pre1105, %i.bu
  br i1 %i.bv, label %.preheader.i527, label %.thread.i529, !llvm.loop !3390

.thread.i529:                                     ; preds = %.preheader.i527
  %i.bw = icmp ugt i32 %i.bu, 536870911
  br i1 %i.bw, label %.critedge.i544, label %bb.k, !prof !103

.critedge.i544:                                   ; preds = %.thread.i529
  %i.bx = xor i32 %.sroa.0696.0947, -1
  br label %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE5allocEjb.exit545

bb.k:                                             ; preds = %.thread.i529
  %.not49.i531 = icmp eq i32 %.sroa.0696.0947, 0
  br i1 %.not49.i531, label %bb.l, label %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.i532

bb.l:                                             ; preds = %bb.k
  %.not9.i.i.i541 = icmp eq ptr %.sroa.20.0943, null
  br i1 %.not9.i.i.i541, label %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.i532, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.by = shl nuw i32 %i.bu, 3
  %i.bz = zext i32 %i.by to i64
  %i.ca = tail call ptr @hb_malloc(i64 noundef %i.bz) #18 ; 4 uses
  %.not10.i.i.i542 = icmp eq ptr %i.ca, null
  br i1 %.not10.i.i.i542, label %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.thread53.i539, label %bb.n, !prof !103

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i543 = icmp eq i32 %.sroa.11.0945, 0
  br i1 %.not.i.i.i.i543, label %.critedge.i254, label %bb.o, !prof !103

bb.o:                                             ; preds = %bb.n
  %i.cb = zext i32 %.sroa.11.0945 to i64
  %i.cc = shl nuw nsw i64 %i.cb, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull readonly align 1 %.sroa.20.0943, i64 %i.cc, i1 false), !alias.scope !3411
  br label %.critedge.i254

_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.i532: ; preds = %bb.l, %bb.k
  %i.cd = phi ptr [ null, %bb.l ], [ %.sroa.20.0943, %bb.k ]
  %i.ce = shl nuw i32 %i.bu, 3
  %i.cf = zext i32 %i.ce to i64
  %i.cg = tail call ptr @hb_realloc(ptr noundef %i.cd, i64 noundef %i.cf) #18 ; 2 uses
  %.not22.i533 = icmp eq ptr %i.cg, null
  br i1 %.not22.i533, label %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.thread53.i539, label %.critedge.i254, !prof !190

_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.thread53.i539: ; preds = %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.i532, %bb.m
  %i.ch = xor i32 %.sroa.0696.0947, -1
  br label %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE5allocEjb.exit545

_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE5allocEjb.exit545: ; preds = %bb.i, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.thread53.i539, %.critedge.i544
  %.sroa.0696.5 = phi i32 [ %.sroa.0696.0947, %bb.i ], [ %i.ch, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.thread53.i539 ], [ %i.bx, %.critedge.i544 ]
  store i64 %i.s, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE4pushIJRS3_EEEPS3_DpOT_.exit

.critedge.i254:                                   ; preds = %bb.h, %bb.n, %bb.o, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.i532, %bb.j
  %.pre-phi = phi i32 [ %.pre1105, %bb.j ], [ 1, %bb.n ], [ %.pre1105, %bb.o ], [ %.pre1105, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.i532 ], [ %.pre1105, %bb.h ]
  %.sroa.20.4 = phi ptr [ %.sroa.20.0943, %bb.j ], [ %i.ca, %bb.n ], [ %i.ca, %bb.o ], [ %i.cg, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.i532 ], [ %.sroa.20.0943, %bb.h ] ; 2 uses
  %.sroa.0696.3 = phi i32 [ %.sroa.0696.0947, %bb.j ], [ %i.bu, %bb.n ], [ %i.bu, %bb.o ], [ %i.bu, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE14realloc_vectorIS3_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS3_j11hb_priorityILj0EE.exit.i532 ], [ %.sroa.0696.0947, %bb.h ]
  %i.ci = zext i32 %.sroa.11.0945 to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.20.4, i64 %i.ci
  store ptr %.0739944, ptr %i.cj, align 8, !tbaa !3413
  br label %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE4pushIJRS3_EEEPS3_DpOT_.exit

_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE4pushIJRS3_EEEPS3_DpOT_.exit: ; preds = %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE5allocEjb.exit545, %.critedge.i254
  %.sroa.20.5 = phi ptr [ %.sroa.20.4, %.critedge.i254 ], [ %.sroa.20.0943, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE5allocEjb.exit545 ] ; 2 uses
  %.sroa.11.1 = phi i32 [ %.pre-phi, %.critedge.i254 ], [ %.sroa.11.0945, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE5allocEjb.exit545 ] ; 2 uses
  %.sroa.0696.4 = phi i32 [ %.sroa.0696.3, %.critedge.i254 ], [ %.sroa.0696.5, %_ZN11hb_vector_tIPKN2OT11SegmentMapsELb0EE5allocEjb.exit545 ] ; 2 uses
  %i.ck = load i16, ptr %.0739944, align 1, !tbaa !240
  %i.cl = tail call noundef i16 @llvm.bswap.i16(i16 %i.ck)
  %i.cm = zext i16 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 2
  %i.co = getelementptr inbounds nuw i8, ptr %.0739944, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2 ; 2 uses
  %i.cq = add nuw nsw i32 %.0209948, 1            ; 2 uses
  %i.cr = load i16, ptr %i.e, align 1, !tbaa !240
  %i.cs = tail call noundef i16 @llvm.bswap.i16(i16 %i.cr)
  %i.ct = zext i16 %i.cs to i32
  %i.cu = icmp samesign ult i32 %i.cq, %i.ct
  br i1 %i.cu, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !3394

bb.p:                                             ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i
  %i.cv = shl nuw nsw i32 %i.bj, 2
  %i.cw = zext nneg i32 %i.cv to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bq, i8 0, i64 %i.cw, i1 false)
  %.pre1084 = load i16, ptr %i.e, align 1, !tbaa !240 ; 2 uses
  %.not996 = icmp eq i16 %.pre1084, 0
  br i1 %.not996, label %._crit_edge957, label %.lr.ph956

.lr.ph956:                                        ; preds = %bb.p
  %i.cx = tail call noundef i16 @llvm.bswap.i16(i16 %.pre1084)
  %i.cy = load ptr, ptr %i.af, align 8, !tbaa !199 ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 2696
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 2688
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 2684
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 2552
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 2544
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 2540
  %i.df = load i32, ptr @_hb_NullPool, align 16   ; 2 uses
  %i.dg = zext i16 %i.bi to i64                   ; 2 uses
  %wide.trip.count = zext i16 %i.cx to i64
  %.pre1085 = load ptr, ptr %i.cz, align 8, !tbaa !281 ; 4 uses
  %.not.i259 = icmp eq ptr %.pre1085, null
  br label %bb.s

._crit_edge957:                                   ; preds = %bb.ad, %.loopexit888, %bb.p
  %.sroa.14.1750.ph1189 = phi ptr [ null, %.loopexit888 ], [ %i.bq, %bb.p ], [ %i.bq, %bb.ad ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i248, i64 2 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 1, !tbaa !242 ; 2 uses
  %i.dj = icmp eq i32 %i.di, 0
  %i.dk = tail call i32 @llvm.bswap.i32(i32 %i.di)
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i.i248, i64 %i.dl
  %.0.i.i.i255 = select i1 %i.dj, ptr @_hb_NullPool, ptr %i.dm, !prof !103
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i.i.i255, i64 2
  %i.do = load i16, ptr %i.dn, align 1, !tbaa !240 ; 2 uses
  %i.dp = tail call noundef i16 @llvm.bswap.i16(i16 %i.do) ; 3 uses
  %i.dq = zext i16 %i.dp to i32                   ; 2 uses
  %.not.i.i = icmp eq i16 %i.do, 0
  br i1 %.not.i.i, label %.loopexit886, label %bb.q

bb.q:                                             ; preds = %._crit_edge957
  %i.dr = zext i16 %i.dp to i64                   ; 5 uses
  %i.ds = shl nuw nsw i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 4
  %i.du = tail call ptr @hb_malloc(i64 noundef %i.dt) #18 ; 6 uses
  %.not16.i.i = icmp eq ptr %i.du, null
  br i1 %.not16.i.i, label %.loopexit886, label %bb.r, !prof !103

bb.r:                                             ; preds = %bb.q
  store i32 %i.dq, ptr %i.du, align 4, !tbaa !853
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 12 uses
  %i.dw = icmp ugt i16 %i.dp, 3
  br i1 %i.dw, label %.lr.ph.i25.i.i.preheader, label %.preheader.i17.i.i

.lr.ph.i25.i.i.preheader:                         ; preds = %bb.r
  %i.dx = add nsw i64 %i.dr, -4                   ; 2 uses
  %i.dy = lshr i64 %i.dx, 2                       ; 2 uses
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 2 uses
  %i.ea = icmp eq i64 %i.dy, 0
  br i1 %i.ea, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i64 %i.dz, 9223372036854775806
  br label %.lr.ph.i25.i.i

.preheader.i17.i.loopexit.i.unr-lcssa:            ; preds = %.lr.ph.i25.i.i
  %i.eb = and i64 %i.dx, 4
  %lcmp.mod.not.not = icmp eq i64 %i.eb, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i25.i.i.epil.preheader, label %.preheader.i17.i.loopexit.i

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i25.i.i.preheader ], [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod1396 = trunc i64 %i.dz to i1
  tail call void @llvm.assume(i1 %lcmp.mod1396)
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i.epil.init ; 4 uses
  store atomic i32 -2147483648, ptr %i.ec monotonic, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store atomic i32 -2147483648, ptr %i.ed monotonic, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store atomic i32 -2147483648, ptr %i.ee monotonic, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  store atomic i32 -2147483648, ptr %i.ef monotonic, align 4
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil.init, 4
  br label %.preheader.i17.i.loopexit.i

.preheader.i17.i.loopexit.i:                      ; preds = %.preheader.i17.i.loopexit.i.unr-lcssa, %.lr.ph.i25.i.i.epil.preheader
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.1, %.preheader.i17.i.loopexit.i.unr-lcssa ], [ %indvars.iv.next.i.epil, %.lr.ph.i25.i.i.epil.preheader ]
  %i.eg = trunc nuw nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.preheader.i17.i.i

.preheader.i17.i.i:                               ; preds = %.preheader.i17.i.loopexit.i, %bb.r
  %.0.lcssa.i18.i.i = phi i32 [ 0, %bb.r ], [ %i.eg, %.preheader.i17.i.loopexit.i ] ; 2 uses
  %i.eh = icmp ult i32 %.0.lcssa.i18.i.i, %i.dq
  br i1 %i.eh, label %.lr.ph18.preheader.i19.i.i, label %.loopexit886

.lr.ph18.preheader.i19.i.i:                       ; preds = %.preheader.i17.i.i
  %i.ei = zext i32 %.0.lcssa.i18.i.i to i64       ; 4 uses
  %i.ej = sub nsw i64 %i.dr, %i.ei
  %xtraiter1397 = and i64 %i.ej, 7                ; 2 uses
  %lcmp.mod1398.not = icmp eq i64 %xtraiter1397, 0
  br i1 %lcmp.mod1398.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol

.lr.ph18.i21.i.i.prol:                            ; preds = %.lr.ph18.preheader.i19.i.i, %.lr.ph18.i21.i.i.prol
  %indvars.iv.i22.i.i.prol = phi i64 [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ], [ %i.ei, %.lr.ph18.preheader.i19.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i21.i.i.prol ], [ 0, %.lr.ph18.preheader.i19.i.i ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i22.i.i.prol
  store atomic i32 -2147483648, ptr %i.ek monotonic, align 4
  %indvars.iv.next.i23.i.i.prol = add nuw nsw i64 %indvars.iv.i22.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1397
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i21.i.i.prol.loopexit, label %.lr.ph18.i21.i.i.prol, !llvm.loop !3395

.lr.ph18.i21.i.i.prol.loopexit:                   ; preds = %.lr.ph18.i21.i.i.prol, %.lr.ph18.preheader.i19.i.i
  %indvars.iv.i22.i.i.unr = phi i64 [ %i.ei, %.lr.ph18.preheader.i19.i.i ], [ %indvars.iv.next.i23.i.i.prol, %.lr.ph18.i21.i.i.prol ]
  %i.el = sub nsw i64 %i.ei, %i.dr
  %i.em = icmp ugt i64 %i.el, -8
  br i1 %i.em, label %.loopexit886, label %.lr.ph18.i21.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i25.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i25.i.i ]
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i ; 4 uses
  store atomic i32 -2147483648, ptr %i.en monotonic, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store atomic i32 -2147483648, ptr %i.eo monotonic, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store atomic i32 -2147483648, ptr %i.ep monotonic, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store atomic i32 -2147483648, ptr %i.eq monotonic, align 4
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store atomic i32 -2147483648, ptr %i.es monotonic, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 20
  store atomic i32 -2147483648, ptr %i.et monotonic, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  store atomic i32 -2147483648, ptr %i.eu monotonic, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 28
  store atomic i32 -2147483648, ptr %i.ev monotonic, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 8 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.i17.i.loopexit.i.unr-lcssa, label %.lr.ph.i25.i.i, !llvm.loop !3396

.lr.ph18.i21.i.i:                                 ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i
  %indvars.iv.i22.i.i = phi i64 [ %indvars.iv.next.i23.i.i.7, %.lr.ph18.i21.i.i ], [ %indvars.iv.i22.i.i.unr, %.lr.ph18.i21.i.i.prol.loopexit ] ; 9 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i22.i.i
  store atomic i32 -2147483648, ptr %i.ew monotonic, align 4
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i22.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store atomic i32 -2147483648, ptr %i.ey monotonic, align 4
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i22.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store atomic i32 -2147483648, ptr %i.fa monotonic, align 4
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i22.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store atomic i32 -2147483648, ptr %i.fc monotonic, align 4
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i22.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store atomic i32 -2147483648, ptr %i.fe monotonic, align 4
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i22.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 20
  store atomic i32 -2147483648, ptr %i.fg monotonic, align 4
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i22.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  store atomic i32 -2147483648, ptr %i.fi monotonic, align 4
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.i22.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 28
  store atomic i32 -2147483648, ptr %i.fk monotonic, align 4
  %indvars.iv.next.i23.i.i.7 = add nuw nsw i64 %indvars.iv.i22.i.i, 8 ; 2 uses
  %exitcond.not.i24.i.i.7 = icmp eq i64 %indvars.iv.next.i23.i.i.7, %i.dr
  br i1 %exitcond.not.i24.i.i.7, label %.loopexit886, label %.lr.ph18.i21.i.i, !llvm.loop !3397

.loopexit886:                                     ; preds = %.lr.ph18.i21.i.i.prol.loopexit, %.lr.ph18.i21.i.i, %.preheader.i17.i.i, %bb.q, %._crit_edge957
  %.1.i.i256 = phi ptr [ @_hb_NullPool, %._crit_edge957 ], [ @_hb_NullPool, %bb.q ], [ %i.du, %.preheader.i17.i.i ], [ %i.du, %.lr.ph18.i21.i.i ], [ %i.du, %.lr.ph18.i21.i.i.prol.loopexit ] ; 5 uses
  %i.fl = load i16, ptr %i.e, align 1, !tbaa !240 ; 2 uses
  %i.fm = tail call noundef i16 @llvm.bswap.i16(i16 %i.fl) ; 2 uses
  %i.fn = zext i16 %i.fm to i32                   ; 2 uses
  %.not.i546.not.not = icmp eq i16 %i.fl, 0       ; 2 uses
  br i1 %.not.i546.not.not, label %._crit_edge961, label %.preheader.i548, !prof !207

.preheader.i548:                                  ; preds = %.loopexit886, %.preheader.i548
  %.043.i549 = phi i32 [ %i.fq, %.preheader.i548 ], [ 0, %.loopexit886 ] ; 2 uses
  %i.fo = lshr i32 %.043.i549, 1
  %i.fp = add nuw nsw i32 %.043.i549, 8
  %i.fq = add nuw nsw i32 %i.fp, %i.fo            ; 3 uses
  %i.fr = icmp samesign ult i32 %i.fq, %i.fn
  br i1 %i.fr, label %.preheader.i548, label %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i, !llvm.loop !31

_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i: ; preds = %.preheader.i548
  %i.fs = shl nuw nsw i32 %i.fq, 2
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ft) #18 ; 6 uses
  %.not22.i553 = icmp eq ptr %i.fu, null
  br i1 %.not22.i553, label %bb.ae, label %_ZN11hb_vector_tIfLb0EE6resizeEi.exit, !prof !190

_ZN11hb_vector_tIfLb0EE6resizeEi.exit:            ; preds = %_ZN11hb_vector_tIfLb0EE14realloc_vectorIfTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPfj11hb_priorityILj0EE.exit.i
  %i.fv = shl nuw nsw i32 %i.fn, 2
  %i.fw = zext nneg i32 %i.fv to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fu, i8 0, i64 %i.fw, i1 false)
  %.pre1086 = load i16, ptr %i.e, align 1, !tbaa !240
  %i.fx = icmp eq i16 %.pre1086, 0
  %i.fy = zext i16 %i.fm to i64                   ; 4 uses
  br i1 %i.fx, label %._crit_edge961, label %.lr.ph960

.lr.ph960:                                        ; preds = %_ZN11hb_vector_tIfLb0EE6resizeEi.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i.i248, i64 6
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.i.i248, i64 8
  %i.gb = load i32, ptr @_hb_NullPool, align 16   ; 2 uses
  br label %bb.ah

bb.s:                                             ; preds = %.lr.ph956, %bb.ad
  %indvars.iv = phi i64 [ 0, %.lr.ph956 ], [ %indvars.iv.next, %bb.ad ] ; 8 uses
  br i1 %.not.i259, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gc = trunc nuw nsw i64 %indvars.iv to i32
  %i.gd = mul i32 %i.gc, 506952113
  %i.ge = and i32 %i.gd, 1073741823
  %i.gf = load i32, ptr %i.da, align 8, !tbaa !385
  %i.gg = urem i32 %i.ge, %i.gf                   ; 2 uses
  %i.gh = zext nneg i32 %i.gg to i64              ; 2 uses
  %i.gi = getelementptr inbounds nuw [12 x i8], ptr %.pre1085, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gk = load i32, ptr %i.gj, align 4            ; 2 uses
  %i.gl = and i32 %i.gk, 2
  %.not15.i.i.i = icmp eq i32 %i.gl, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread, label %.lr.ph.i.i.i260

.lr.ph.i.i.i260:                                  ; preds = %bb.t
  %i.gm = load i32, ptr %i.db, align 4
  %i.gn = load i32, ptr %i.gi, align 4, !tbaa !206
  %i.go = zext i32 %i.gn to i64
  %i.gp = icmp eq i64 %indvars.iv, %i.go
  br i1 %i.gp, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.gq = load i32, ptr %i.gx, align 4, !tbaa !206
  %i.gr = zext i32 %i.gq to i64
  %i.gs = icmp eq i64 %indvars.iv, %i.gr
  br i1 %i.gs, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i, !llvm.loop !10

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i260, %bb.u
  %.01016.i20.i.i = phi i32 [ %i.gv, %bb.u ], [ %i.gg, %.lr.ph.i.i.i260 ]
  %.017.i19.i.i = phi i32 [ %i.gt, %bb.u ], [ 0, %.lr.ph.i.i.i260 ]
  %i.gt = add i32 %.017.i19.i.i, 1                ; 2 uses
  %i.gu = add i32 %i.gt, %.01016.i20.i.i
  %i.gv = and i32 %i.gu, %i.gm                    ; 2 uses
  %i.gw = zext i32 %i.gv to i64                   ; 2 uses
  %i.gx = getelementptr inbounds nuw [12 x i8], ptr %.pre1085, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.gz = load i32, ptr %i.gy, align 4            ; 2 uses
  %i.ha = and i32 %i.gz, 2
  %.not.i.i.i261 = icmp eq i32 %i.ha, 0
  br i1 %.not.i.i.i261, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread, label %bb.u, !llvm.loop !10

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i: ; preds = %bb.u, %.lr.ph.i.i.i260
  %.lcssa17.i.i = phi i32 [ %i.gk, %.lr.ph.i.i.i260 ], [ %i.gz, %bb.u ]
  %i.hb = phi i64 [ %i.gh, %.lr.ph.i.i.i260 ], [ %i.gw, %bb.u ]
  %i.hc = trunc i32 %.lcssa17.i.i to i1
  br i1 %i.hc, label %bb.v, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread

bb.v:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i
  %i.hd = load ptr, ptr %i.dc, align 8, !tbaa !364 ; 5 uses
  %.not.i263 = icmp eq ptr %i.hd, null
  br i1 %.not.i263, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.he = getelementptr inbounds nuw [12 x i8], ptr %.pre1085, i64 %i.hb
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %.val.i264 = load i32, ptr %i.hf, align 4, !tbaa !206 ; 4 uses
  %i.hg = mul i32 %.val.i264, 506952113
  %i.hh = and i32 %i.hg, 1073741823
  %i.hi = load i32, ptr %i.dd, align 8, !tbaa !486
  %i.hj = urem i32 %i.hh, %i.hi                   ; 3 uses
  %i.hk = zext nneg i32 %i.hj to i64              ; 2 uses
  %i.hl = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %i.hk ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hn = load i32, ptr %i.hm, align 4            ; 3 uses
  %i.ho = and i32 %i.hn, 2
  %.not15.i.i.i265 = icmp eq i32 %i.ho, 0
  br i1 %.not15.i.i.i265, label %_ZNK12hb_hashmap_tIjjLb1EE3hasIjEEbRKjPPT_.exit.thread, label %.lr.ph.i.i.i266

.lr.ph.i.i.i266:                                  ; preds = %bb.w
  %i.hp = load i32, ptr %i.de, align 4            ; 2 uses
  %i.hq = load i32, ptr %i.hl, align 4, !tbaa !206
  %i.hr = icmp eq i32 %i.hq, %.val.i264
  br i1 %i.hr, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread, label %.lr.ph.i.i267

bb.x:                                             ; preds = %.lr.ph.i.i267
  %i.hs = load i32, ptr %i.hy, align 4, !tbaa !206
  %i.ht = icmp eq i32 %i.hs, %.val.i264
  br i1 %i.ht, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit, label %.lr.ph.i.i267, !llvm.loop !36

end_hunk_0
