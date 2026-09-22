Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-layout?download=true
inline.NumInlined: 23696
inline.NumDeleted: 10355
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN2OT17item_variations_t16as_item_varstoreEbb:bb.a
  %i.ju = call noundef zeroext i1 @_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE13set_with_hashIS3_iEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %.0.lcssa.i.i.i.i.i213, ptr noundef nonnull align 4 dereferenceable(4) %i.d, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.as

bb.as:                                            ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3setIiEEbOS3_OT_b.exit, %bb.am
  %.not.i214 = icmp slt i32 %.sroa.12590.0825, %.sroa.0584.1824
  %.pre998 = add i32 %.sroa.12590.0825, 1         ; 6 uses
  br i1 %.not.i214, label %.critedge.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jv = icmp slt i32 %.sroa.0584.1824, 0
  br i1 %i.jv, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit, label %bb.au, !prof !112

bb.au:                                            ; preds = %bb.at
  %.not.i380 = icmp ugt i32 %.pre998, %.sroa.0584.1824
  br i1 %.not.i380, label %.preheader.i382, label %.critedge.i, !prof !112

.preheader.i382:                                  ; preds = %bb.au, %.preheader.i382
  %.043.i = phi i32 [ %i.jy, %.preheader.i382 ], [ %.sroa.0584.1824, %bb.au ] ; 2 uses
  %i.jw = lshr i32 %.043.i, 1
  %i.jx = add i32 %.043.i, 8
  %i.jy = add i32 %i.jx, %i.jw                    ; 8 uses
  %i.jz = icmp ugt i32 %.pre998, %i.jy
  br i1 %i.jz, label %.preheader.i382, label %.thread.i383, !llvm.loop !13

.thread.i383:                                     ; preds = %.preheader.i382
  %i.ka = icmp ugt i32 %i.jy, 536870911
  br i1 %i.ka, label %.critedge.i391, label %bb.av, !prof !112

.critedge.i391:                                   ; preds = %.thread.i383
  %i.kb = xor i32 %.sroa.0584.1824, -1
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit

bb.av:                                            ; preds = %.thread.i383
  %.not49.i = icmp eq i32 %.sroa.0584.1824, 0
  br i1 %.not49.i, label %bb.aw, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i

bb.aw:                                            ; preds = %bb.av
  %.not9.i.i.i = icmp eq ptr %.sroa.21594.1827, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kc = shl nuw i32 %i.jy, 3
  %i.kd = zext i32 %i.kc to i64
  %i.ke = call ptr @hb_malloc(i64 noundef %i.kd) #21 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.ke, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, label %bb.ay, !prof !112

bb.ay:                                            ; preds = %bb.ax
  %.not.i.i.i.i390 = icmp eq i32 %.sroa.12590.0825, 0
  br i1 %.not.i.i.i.i390, label %.critedge.i, label %bb.az, !prof !112

bb.az:                                            ; preds = %bb.ay
  %i.kf = zext i32 %.sroa.12590.0825 to i64
  %i.kg = shl nuw nsw i64 %i.kf, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ke, ptr nonnull readonly align 1 %.sroa.21594.1827, i64 %i.kg, i1 false), !alias.scope !1083
  br label %.critedge.i

_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i: ; preds = %bb.aw, %bb.av
  %i.kh = phi ptr [ null, %bb.aw ], [ %.sroa.21594.1827, %bb.av ]
  %i.ki = shl nuw i32 %i.jy, 3
  %i.kj = zext i32 %i.ki to i64
  %i.kk = call ptr @hb_realloc(ptr noundef %i.kh, i64 noundef %i.kj) #21 ; 2 uses
  %.not22.i385 = icmp eq ptr %i.kk, null
  br i1 %.not22.i385, label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, label %.critedge.i, !prof !198

_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, %bb.ax
  %i.kl = xor i32 %.sroa.0584.1824, -1
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit

_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit:  ; preds = %bb.at, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, %.critedge.i391
  %.sroa.0584.10 = phi i32 [ %.sroa.0584.1824, %bb.at ], [ %i.kl, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i ], [ %i.kb, %.critedge.i391 ]
  store i64 %i.ck, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit.thread

.critedge.i:                                      ; preds = %bb.as, %bb.ay, %bb.az, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, %bb.au
  %.pre-phi999 = phi i32 [ %.pre998, %bb.au ], [ 1, %bb.ay ], [ %.pre998, %bb.az ], [ %.pre998, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i ], [ %.pre998, %bb.as ]
  %.sroa.0584.8 = phi i32 [ %.sroa.0584.1824, %bb.au ], [ %i.jy, %bb.ay ], [ %i.jy, %bb.az ], [ %i.jy, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i ], [ %.sroa.0584.1824, %bb.as ]
  %.sroa.21594.7 = phi ptr [ %.sroa.21594.1827, %bb.au ], [ %i.ke, %bb.ay ], [ %i.ke, %bb.az ], [ %i.kk, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i ], [ %.sroa.21594.1827, %bb.as ] ; 2 uses
  %i.km = zext i32 %.sroa.12590.0825 to i64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.21594.7, i64 %i.km
  store ptr %.0.i193, ptr %i.kn, align 8, !tbaa !391
  br label %_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit.thread

_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit.thread: ; preds = %bb.al, %bb.ak, %.critedge.i, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit
  %.sroa.21594.2633 = phi ptr [ %.sroa.21594.1827, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit ], [ %.sroa.21594.7, %.critedge.i ], [ %.sroa.21594.1827, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit ], [ %.sroa.21594.1827, %bb.ak ], [ %.sroa.21594.1827, %bb.al ] ; 6 uses
  %.sroa.12590.1632 = phi i32 [ %.sroa.12590.0825, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit ], [ %.pre-phi999, %.critedge.i ], [ %.sroa.12590.0825, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit ], [ %.sroa.12590.0825, %bb.ak ], [ %.sroa.12590.0825, %bb.al ] ; 4 uses
  %.sroa.0584.2631 = phi i32 [ %.sroa.0584.1824, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE3hasIjEEbRKS3_PPT_.exit ], [ %.sroa.0584.8, %.critedge.i ], [ %.sroa.0584.10, %_ZN11hb_vector_tIPKS_IiLb0EELb0EE5allocEjb.exit ], [ %.sroa.0584.1824, %bb.ak ], [ %.sroa.0584.1824, %bb.al ] ; 4 uses
  %indvars.iv.next957 = add nuw nsw i64 %indvars.iv956, 1 ; 2 uses
  %exitcond960.not = icmp eq i64 %indvars.iv.next957, %wide.trip.count959
  br i1 %exitcond960.not, label %bb.ba, label %bb.ah, !llvm.loop !1049

bb.ba:                                            ; preds = %_ZN11hb_vector_tIPKS_IiLb0EELb0EE4pushIJS2_EEEPS2_DpOT_.exit.thread
  %.not756 = icmp eq i32 %.sroa.12590.1632, 0
  br i1 %.not756, label %_ZN2OT20delta_row_encoding_tD2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.cl, label %_ZN2OT20delta_row_encoding_tC2EO11hb_vector_tIPKS1_IiLb0EELb0EEj.exit, label %.preheader.i.i.i, !prof !112

.preheader.i.i.i:                                 ; preds = %bb.bb, %.preheader.i.i.i
  %.053.i.i.i = phi i32 [ %i.kq, %.preheader.i.i.i ], [ 0, %bb.bb ] ; 2 uses
  %i.ko = lshr i32 %.053.i.i.i, 1
  %i.kp = add nuw i32 %.053.i.i.i, 8
  %i.kq = add nuw i32 %i.kp, %i.ko                ; 4 uses
  %i.kr = icmp ugt i32 %i.f, %i.kq
  br i1 %i.kr, label %.preheader.i.i.i, label %.thread39.i.i.i, !llvm.loop !14

.thread39.i.i.i:                                  ; preds = %.preheader.i.i.i
  %i.ks = zext i32 %i.kq to i64
  %i.kt = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ks) #21 ; 51 uses
  %.not22.i.i.i217 = icmp eq ptr %i.kt, null
  br i1 %.not22.i.i.i217, label %_ZN2OT20delta_row_encoding_tC2EO11hb_vector_tIPKS1_IiLb0EELb0EEj.exit, label %.preheader.lr.ph.i, !prof !173

.preheader.lr.ph.i:                               ; preds = %.thread39.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.kt, i8 0, i64 %i.cm, i1 false)
  %i.ku = zext i32 %.sroa.12590.1632 to i64
  %.idx.i = shl nuw nsw i64 %i.ku, 3
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.21594.2633, i64 %.idx.i
  br label %.preheader.i393

.preheader.i393:                                  ; preds = %._crit_edge.i398, %.preheader.lr.ph.i
  %.03551.i = phi ptr [ %.sroa.21594.2633, %.preheader.lr.ph.i ], [ %i.kz, %._crit_edge.i398 ] ; 3 uses
  %.03650.i = phi i1 [ false, %.preheader.lr.ph.i ], [ %.1.lcssa.i, %._crit_edge.i398 ] ; 2 uses
  %i.kw = load ptr, ptr %.03551.i, align 8, !tbaa !391 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !283
  %.not58.i = icmp eq i32 %i.ky, 0
  br i1 %.not58.i, label %._crit_edge.i398, label %.lr.ph.i394

._crit_edge52.i:                                  ; preds = %._crit_edge.i398
  br i1 %.1.lcssa.i, label %iter.check, label %.lr.ph.i.i.i401.preheader

._crit_edge.i398:                                 ; preds = %bb.bh, %.preheader.i393
  %.1.lcssa.i = phi i1 [ %.03650.i, %.preheader.i393 ], [ %.3.i396, %bb.bh ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.03551.i, i64 8 ; 2 uses
  %.not.i399 = icmp eq ptr %i.kz, %i.kv
  br i1 %.not.i399, label %._crit_edge52.i, label %.preheader.i393

.lr.ph.i394:                                      ; preds = %.preheader.i393, %bb.bh
  %indvars.iv.i395 = phi i64 [ %indvars.iv.next.i397, %bb.bh ], [ 0, %.preheader.i393 ] ; 4 uses
  %i.la = phi ptr [ %i.ln, %bb.bh ], [ %i.kw, %.preheader.i393 ]
  %.147.i = phi i1 [ %.3.i396, %bb.bh ], [ %.03650.i, %.preheader.i393 ] ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !339
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv.i395
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !218 ; 3 uses
  %i.lf = icmp eq i32 %i.le, 0
  br i1 %i.lf, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i394
  %i.lg = add i32 %i.le, -32768
  %or.cond.i = icmp ult i32 %i.lg, -65536
  br i1 %or.cond.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kt, i64 %indvars.iv.i395 ; 2 uses
  %.val42.i = load i8, ptr %i.lh, align 1, !tbaa !282
  %i.li = call i8 @llvm.umax.i8(i8 %.val42.i, i8 4)
  store i8 %i.li, ptr %i.lh, align 1, !tbaa !282
  br label %bb.bh

bb.be:                                            ; preds = %bb.bc
  %i.lj = add nsw i32 %i.le, -128
  %or.cond3.i = icmp ult i32 %i.lj, -256
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kt, i64 %indvars.iv.i395 ; 3 uses
  %.val40.i = load i8, ptr %i.lk, align 1, !tbaa !282 ; 2 uses
  br i1 %or.cond3.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ll = call i8 @llvm.umax.i8(i8 %.val40.i, i8 2)
  store i8 %i.ll, ptr %i.lk, align 1, !tbaa !282
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.lm = call i8 @llvm.umax.i8(i8 %.val40.i, i8 1)
  store i8 %i.lm, ptr %i.lk, align 1, !tbaa !282
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.bd, %.lr.ph.i394
  %.3.i396 = phi i1 [ %.147.i, %.lr.ph.i394 ], [ true, %bb.bd ], [ %.147.i, %bb.bf ], [ %.147.i, %bb.bg ] ; 2 uses
  %indvars.iv.next.i397 = add nuw nsw i64 %indvars.iv.i395, 1 ; 2 uses
  %i.ln = load ptr, ptr %.03551.i, align 8, !tbaa !391 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !283
  %i.lq = zext i32 %i.lp to i64
  %i.lr = icmp samesign ult i64 %indvars.iv.next.i397, %i.lq
  br i1 %i.lr, label %.lr.ph.i394, label %._crit_edge.i398, !llvm.loop !15

iter.check:                                       ; preds = %._crit_edge52.i
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.cm
  br i1 %min.iters.check1252, label %.lr.ph57.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1253, label %vec.epilog.ph, label %vector.ph1254

vector.ph1254:                                    ; preds = %vector.main.loop.iter.check
  %i.lt = getelementptr i8, ptr %i.kt, i64 %n.vec1255
  br label %vector.body1256

vector.body1256:                                  ; preds = %pred.store.continue1352, %vector.ph1254
  %index1257 = phi i64 [ 0, %vector.ph1254 ], [ %index.next1353, %pred.store.continue1352 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.kt, i64 %index1257 ; 3 uses
  %i.lu = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1258 = getelementptr i8, ptr %i.lu, i64 1
  %i.lv = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1259 = getelementptr i8, ptr %i.lv, i64 2
  %i.lw = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1260 = getelementptr i8, ptr %i.lw, i64 3
  %i.lx = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1261 = getelementptr i8, ptr %i.lx, i64 4
  %i.ly = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1262 = getelementptr i8, ptr %i.ly, i64 5
  %i.lz = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1263 = getelementptr i8, ptr %i.lz, i64 6
  %i.ma = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1264 = getelementptr i8, ptr %i.ma, i64 7
  %i.mb = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1265 = getelementptr i8, ptr %i.mb, i64 8
  %i.mc = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1266 = getelementptr i8, ptr %i.mc, i64 9
  %i.md = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1267 = getelementptr i8, ptr %i.md, i64 10
  %i.me = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1268 = getelementptr i8, ptr %i.me, i64 11
  %i.mf = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1269 = getelementptr i8, ptr %i.mf, i64 12
  %i.mg = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1270 = getelementptr i8, ptr %i.mg, i64 13
  %i.mh = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1271 = getelementptr i8, ptr %i.mh, i64 14
  %i.mi = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1272 = getelementptr i8, ptr %i.mi, i64 15
  %i.mj = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1273 = getelementptr i8, ptr %i.mj, i64 16
  %i.mk = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1274 = getelementptr i8, ptr %i.mk, i64 17
  %i.ml = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1275 = getelementptr i8, ptr %i.ml, i64 18
  %i.mm = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1276 = getelementptr i8, ptr %i.mm, i64 19
  %i.mn = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1277 = getelementptr i8, ptr %i.mn, i64 20
  %i.mo = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1278 = getelementptr i8, ptr %i.mo, i64 21
  %i.mp = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1279 = getelementptr i8, ptr %i.mp, i64 22
  %i.mq = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1280 = getelementptr i8, ptr %i.mq, i64 23
  %i.mr = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1281 = getelementptr i8, ptr %i.mr, i64 24
  %i.ms = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1282 = getelementptr i8, ptr %i.ms, i64 25
  %i.mt = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1283 = getelementptr i8, ptr %i.mt, i64 26
  %i.mu = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1284 = getelementptr i8, ptr %i.mu, i64 27
  %i.mv = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1285 = getelementptr i8, ptr %i.mv, i64 28
  %i.mw = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1286 = getelementptr i8, ptr %i.mw, i64 29
  %i.mx = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1287 = getelementptr i8, ptr %i.mx, i64 30
  %i.my = getelementptr i8, ptr %i.kt, i64 %index1257
  %next.gep1288 = getelementptr i8, ptr %i.my, i64 31
  %i.mz = getelementptr i8, ptr %next.gep, i64 16
  %wide.load1289 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !282
  %wide.load1290 = load <16 x i8>, ptr %i.mz, align 1, !tbaa !282
  %i.na = icmp eq <16 x i8> %wide.load1289, splat (i8 1) ; 16 uses
  %i.nb = icmp eq <16 x i8> %wide.load1290, splat (i8 1) ; 16 uses
  %i.nc = extractelement <16 x i1> %i.na, i64 0
  br i1 %i.nc, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body1256
  store i8 2, ptr %next.gep, align 1, !tbaa !282
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body1256
  %i.nd = extractelement <16 x i1> %i.na, i64 1
  br i1 %i.nd, label %pred.store.if1291, label %pred.store.continue1292

pred.store.if1291:                                ; preds = %pred.store.continue
  store i8 2, ptr %next.gep1258, align 1, !tbaa !282
  br label %pred.store.continue1292

pred.store.continue1292:                          ; preds = %pred.store.if1291, %pred.store.continue
  %i.ne = extractelement <16 x i1> %i.na, i64 2
  br i1 %i.ne, label %pred.store.if1293, label %pred.store.continue1294

pred.store.if1293:                                ; preds = %pred.store.continue1292
  store i8 2, ptr %next.gep1259, align 1, !tbaa !282
  br label %pred.store.continue1294

pred.store.continue1294:                          ; preds = %pred.store.if1293, %pred.store.continue1292
  %i.nf = extractelement <16 x i1> %i.na, i64 3
  br i1 %i.nf, label %pred.store.if1295, label %pred.store.continue1296

pred.store.if1295:                                ; preds = %pred.store.continue1294
  store i8 2, ptr %next.gep1260, align 1, !tbaa !282
  br label %pred.store.continue1296

pred.store.continue1296:                          ; preds = %pred.store.if1295, %pred.store.continue1294
  %i.ng = extractelement <16 x i1> %i.na, i64 4
  br i1 %i.ng, label %pred.store.if1297, label %pred.store.continue1298

pred.store.if1297:                                ; preds = %pred.store.continue1296
  store i8 2, ptr %next.gep1261, align 1, !tbaa !282
  br label %pred.store.continue1298

pred.store.continue1298:                          ; preds = %pred.store.if1297, %pred.store.continue1296
  %i.nh = extractelement <16 x i1> %i.na, i64 5
  br i1 %i.nh, label %pred.store.if1299, label %pred.store.continue1300

pred.store.if1299:                                ; preds = %pred.store.continue1298
  store i8 2, ptr %next.gep1262, align 1, !tbaa !282
  br label %pred.store.continue1300

pred.store.continue1300:                          ; preds = %pred.store.if1299, %pred.store.continue1298
  %i.ni = extractelement <16 x i1> %i.na, i64 6
  br i1 %i.ni, label %pred.store.if1301, label %pred.store.continue1302

pred.store.if1301:                                ; preds = %pred.store.continue1300
  store i8 2, ptr %next.gep1263, align 1, !tbaa !282
  br label %pred.store.continue1302

pred.store.continue1302:                          ; preds = %pred.store.if1301, %pred.store.continue1300
  %i.nj = extractelement <16 x i1> %i.na, i64 7
  br i1 %i.nj, label %pred.store.if1303, label %pred.store.continue1304

pred.store.if1303:                                ; preds = %pred.store.continue1302
  store i8 2, ptr %next.gep1264, align 1, !tbaa !282
  br label %pred.store.continue1304

pred.store.continue1304:                          ; preds = %pred.store.if1303, %pred.store.continue1302
  %i.nk = extractelement <16 x i1> %i.na, i64 8
  br i1 %i.nk, label %pred.store.if1305, label %pred.store.continue1306

pred.store.if1305:                                ; preds = %pred.store.continue1304
  store i8 2, ptr %next.gep1265, align 1, !tbaa !282
  br label %pred.store.continue1306

pred.store.continue1306:                          ; preds = %pred.store.if1305, %pred.store.continue1304
  %i.nl = extractelement <16 x i1> %i.na, i64 9
  br i1 %i.nl, label %pred.store.if1307, label %pred.store.continue1308

pred.store.if1307:                                ; preds = %pred.store.continue1306
  store i8 2, ptr %next.gep1266, align 1, !tbaa !282
  br label %pred.store.continue1308

pred.store.continue1308:                          ; preds = %pred.store.if1307, %pred.store.continue1306
  %i.nm = extractelement <16 x i1> %i.na, i64 10
  br i1 %i.nm, label %pred.store.if1309, label %pred.store.continue1310

pred.store.if1309:                                ; preds = %pred.store.continue1308
  store i8 2, ptr %next.gep1267, align 1, !tbaa !282
  br label %pred.store.continue1310

pred.store.continue1310:                          ; preds = %pred.store.if1309, %pred.store.continue1308
  %i.nn = extractelement <16 x i1> %i.na, i64 11
  br i1 %i.nn, label %pred.store.if1311, label %pred.store.continue1312

pred.store.if1311:                                ; preds = %pred.store.continue1310
  store i8 2, ptr %next.gep1268, align 1, !tbaa !282
  br label %pred.store.continue1312

pred.store.continue1312:                          ; preds = %pred.store.if1311, %pred.store.continue1310
  %i.no = extractelement <16 x i1> %i.na, i64 12
  br i1 %i.no, label %pred.store.if1313, label %pred.store.continue1314

pred.store.if1313:                                ; preds = %pred.store.continue1312
  store i8 2, ptr %next.gep1269, align 1, !tbaa !282
  br label %pred.store.continue1314

pred.store.continue1314:                          ; preds = %pred.store.if1313, %pred.store.continue1312
  %i.np = extractelement <16 x i1> %i.na, i64 13
  br i1 %i.np, label %pred.store.if1315, label %pred.store.continue1316

pred.store.if1315:                                ; preds = %pred.store.continue1314
  store i8 2, ptr %next.gep1270, align 1, !tbaa !282
  br label %pred.store.continue1316

pred.store.continue1316:                          ; preds = %pred.store.if1315, %pred.store.continue1314
  %i.nq = extractelement <16 x i1> %i.na, i64 14
  br i1 %i.nq, label %pred.store.if1317, label %pred.store.continue1318

pred.store.if1317:                                ; preds = %pred.store.continue1316
  store i8 2, ptr %next.gep1271, align 1, !tbaa !282
  br label %pred.store.continue1318

pred.store.continue1318:                          ; preds = %pred.store.if1317, %pred.store.continue1316
  %i.nr = extractelement <16 x i1> %i.na, i64 15
  br i1 %i.nr, label %pred.store.if1319, label %pred.store.continue1320

pred.store.if1319:                                ; preds = %pred.store.continue1318
  store i8 2, ptr %next.gep1272, align 1, !tbaa !282
  br label %pred.store.continue1320

pred.store.continue1320:                          ; preds = %pred.store.if1319, %pred.store.continue1318
  %i.ns = extractelement <16 x i1> %i.nb, i64 0
  br i1 %i.ns, label %pred.store.if1321, label %pred.store.continue1322

end_hunk_0
begin_hunk_1_@_ZN2OT17item_variations_t18compile_varidx_mapERK12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE:bb.a
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.i.i.i.i
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !218
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.i.i.i.i
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !218
  %.not10.i.i.i.i = icmp eq i32 %i.eo, %i.eq
  br i1 %.not10.i.i.i.i, label %bb.u, label %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i

_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.t, %.lr.ph.i
  %i.er = trunc i32 %i.eb to i1
  %i.es = icmp ne i32 %.03257.i, -1
  %or.cond.not.i = select i1 %i.er, i1 true, i1 %i.es
  %spec.select.i = select i1 %or.cond.not.i, i32 %.03257.i, i32 %.03158.i ; 2 uses
  %i.et = add i32 %.060.i, 1                      ; 3 uses
  %i.eu = add i32 %i.et, %.03158.i
  %i.ev = and i32 %i.eu, %i.ea                    ; 3 uses
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.ew ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i32, ptr %i.ey, align 8            ; 2 uses
  %i.fa = and i32 %i.ez, 2
  %.not.i114 = icmp eq i32 %i.fa, 0
  br i1 %.not.i114, label %.loopexit40.thread.i, label %.lr.ph.i, !llvm.loop !1446

.loopexit40.thread.i:                             ; preds = %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i, %.preheader.i.i.i.i, %bb.u
  %.03254.i = phi i32 [ %.03257.i, %bb.u ], [ %.03257.i, %.preheader.i.i.i.i ], [ %spec.select.i, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i ]
  %.03150.i = phi i32 [ %.03158.i, %bb.u ], [ %.03158.i, %.preheader.i.i.i.i ], [ %i.ev, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i ]
  %.03046.i = phi i32 [ %.060.i, %bb.u ], [ %.060.i, %.preheader.i.i.i.i ], [ %i.et, %_ZNK12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_teqERKS3_.exit.i ] ; 2 uses
  %.03254.fr.i = freeze i32 %.03254.i             ; 2 uses
  %i.fb = icmp eq i32 %.03254.fr.i, -1
  %spec.select94.i = select i1 %i.fb, i32 %.03150.i, i32 %.03254.fr.i
  %.phi.trans.insert = zext i32 %spec.select94.i to i64
  %.phi.trans.insert353 = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %.phi.trans.insert ; 3 uses
  %.phi.trans.insert354 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert353, i64 8 ; 4 uses
  %.pre = load i32, ptr %.phi.trans.insert354, align 8
  %.pre361 = and i32 %.pre, 2
  %i.fc = icmp eq i32 %.pre361, 0
  br i1 %i.fc, label %.loopexit40.thread.i.thread, label %bb.v

bb.v:                                             ; preds = %.loopexit40.thread.i
  %i.fd = load i32, ptr %i.m, align 8, !tbaa !474
  %i.fe = add i32 %i.fd, -1
  store i32 %i.fe, ptr %i.m, align 8, !tbaa !474
  %i.ff = load i32, ptr %.phi.trans.insert354, align 8
  %i.fg = and i32 %i.ff, 1
  %i.fh = load i32, ptr %i.o, align 4, !tbaa !476
  %i.fi = sub i32 %i.fh, %i.fg
  store i32 %i.fi, ptr %i.o, align 4, !tbaa !476
  br label %.loopexit40.thread.i.thread

.loopexit40.thread.i.thread:                      ; preds = %.critedge.i113, %bb.v, %.loopexit40.thread.i
  %i.fj = phi ptr [ %.phi.trans.insert354, %.loopexit40.thread.i ], [ %.phi.trans.insert354, %bb.v ], [ %i.dx, %.critedge.i113 ]
  %i.fk = phi ptr [ %.phi.trans.insert353, %.loopexit40.thread.i ], [ %.phi.trans.insert353, %bb.v ], [ %i.dw, %.critedge.i113 ] ; 2 uses
  %.0304681.i401 = phi i32 [ %.03046.i, %.loopexit40.thread.i ], [ %.03046.i, %bb.v ], [ 0, %.critedge.i113 ]
  store ptr %i.av, ptr %i.fk, align 8, !tbaa !395
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  %i.fm = add i32 %i.ap, %i.ar
  store i32 %i.fm, ptr %i.fl, align 4, !tbaa !478
  %i.fn = shl nuw i32 %.0.lcssa.i.i.i.i.i, 2
  %i.fo = or disjoint i32 %i.fn, 3
  store i32 %i.fo, ptr %i.fj, align 8
  %i.fp = load <2 x i32>, ptr %i.o, align 4, !tbaa !218
  %i.fq = add <2 x i32> %i.fp, splat (i32 1)      ; 2 uses
  store <2 x i32> %i.fq, ptr %i.o, align 4, !tbaa !218
  %i.fr = load i16, ptr %i.f, align 2, !tbaa !477
  %i.fs = zext i16 %i.fr to i32
  %i.ft = icmp ugt i32 %.0304681.i401, %i.fs
  br i1 %i.ft, label %bb.w, label %bb.y, !prof !112

bb.w:                                             ; preds = %.loopexit40.thread.i.thread
  %i.fu = extractelement <2 x i32> %i.fq, i64 1
  %i.fv = shl i32 %i.fu, 3
  %i.fw = load i32, ptr %i.n, align 4, !tbaa !475 ; 2 uses
  %i.fx = icmp ugt i32 %i.fv, %i.fw
  br i1 %i.fx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fy = add i32 %i.fw, -8
  %i.fz = call noundef zeroext i1 @_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.fy) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %.loopexit40.thread.i.thread, %bb.x, %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %umax
  br i1 %exitcond.not, label %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE13set_with_hashIRKS3_jEEbOT_jOT0_b.exit.loopexit, label %bb.f, !llvm.loop !1447

_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE13set_with_hashIRKS3_jEEbOT_jOT0_b.exit.loopexit: ; preds = %bb.y
  br i1 %i.ab, label %_ZN2OT20delta_row_encoding_tC2EO11hb_vector_tIPKS1_IiLb0EELb0EEj.exit, label %bb.z, !prof !112

bb.z:                                             ; preds = %_ZN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE13set_with_hashIRKS3_jEEbOT_jOT0_b.exit.loopexit
  br i1 %.not.i.i.i59.not, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i.i, label %.preheader.i.i.i, !prof !219

.preheader.i.i.i:                                 ; preds = %bb.z, %.preheader.i.i.i
  %.053.i.i.i = phi i32 [ %i.gc, %.preheader.i.i.i ], [ 0, %bb.z ] ; 2 uses
  %i.ga = lshr i32 %.053.i.i.i, 1
  %i.gb = add nuw i32 %.053.i.i.i, 8
  %i.gc = add nuw i32 %i.gb, %i.ga                ; 4 uses
  %i.gd = icmp ugt i32 %i.y, %i.gc
  br i1 %i.gd, label %.preheader.i.i.i, label %.thread39.i.i.i, !llvm.loop !14

.thread39.i.i.i:                                  ; preds = %.preheader.i.i.i
  %i.ge = zext i32 %i.gc to i64
  %i.gf = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ge) #21 ; 3 uses
  %.not22.i.i.i = icmp eq ptr %i.gf, null
  br i1 %.not22.i.i.i, label %_ZN2OT20delta_row_encoding_tC2EO11hb_vector_tIPKS1_IiLb0EELb0EEj.exit, label %_ZN11hb_vector_tIhLb0EE11grow_vectorIhTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i, !prof !173

_ZN11hb_vector_tIhLb0EE11grow_vectorIhTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i: ; preds = %.thread39.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gf, i8 0, i64 %i.ac, i1 false)
  br label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i.i

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i.i: ; preds = %bb.z, %_ZN11hb_vector_tIhLb0EE11grow_vectorIhTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i
  %.sroa.16151.0234 = phi ptr [ %i.gf, %_ZN11hb_vector_tIhLb0EE11grow_vectorIhTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i ], [ null, %bb.z ] ; 49 uses
  %.sroa.0144.0232 = phi i32 [ %i.gc, %_ZN11hb_vector_tIhLb0EE11grow_vectorIhTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i.i ], [ 0, %bb.z ]
  %i.gg = zext i32 %.sroa.13182.2 to i64
  %.idx.i = shl nuw nsw i64 %i.gg, 3
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.21.6, i64 %.idx.i
  %.not49.i116 = icmp eq i32 %.sroa.13182.2, 0
  br i1 %.not49.i116, label %.loopexit.i121, label %.preheader.i117

.preheader.i117:                                  ; preds = %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i.i, %._crit_edge.i
  %.03551.i = phi ptr [ %i.gl, %._crit_edge.i ], [ %.sroa.21.6, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i.i ] ; 3 uses
  %.03650.i = phi i1 [ %.1.lcssa.i, %._crit_edge.i ], [ false, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i.i ] ; 2 uses
  %i.gi = load ptr, ptr %.03551.i, align 8, !tbaa !391 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !283
  %.not58.i = icmp eq i32 %i.gk, 0
  br i1 %.not58.i, label %._crit_edge.i, label %.lr.ph.i118

._crit_edge52.i:                                  ; preds = %._crit_edge.i
  br i1 %.1.lcssa.i, label %bb.ag, label %.loopexit.i121

._crit_edge.i:                                    ; preds = %bb.af, %.preheader.i117
  %.1.lcssa.i = phi i1 [ %.03650.i, %.preheader.i117 ], [ %.3.i119, %bb.af ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.03551.i, i64 8 ; 2 uses
  %.not.i120 = icmp eq ptr %i.gl, %i.gh
  br i1 %.not.i120, label %._crit_edge52.i, label %.preheader.i117

.lr.ph.i118:                                      ; preds = %.preheader.i117, %bb.af
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.af ], [ 0, %.preheader.i117 ] ; 4 uses
  %i.gm = phi ptr [ %i.gz, %bb.af ], [ %i.gi, %.preheader.i117 ]
  %.147.i = phi i1 [ %.3.i119, %bb.af ], [ %.03650.i, %.preheader.i117 ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !339
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv.i
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !218 ; 3 uses
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i118
  %i.gs = add i32 %i.gq, -32768
  %or.cond.i = icmp ult i32 %i.gs, -65536
  br i1 %or.cond.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.16151.0234, i64 %indvars.iv.i ; 2 uses
  %.val42.i = load i8, ptr %i.gt, align 1, !tbaa !282
  %i.gu = call i8 @llvm.umax.i8(i8 %.val42.i, i8 4)
  store i8 %i.gu, ptr %i.gt, align 1, !tbaa !282
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.gv = add nsw i32 %i.gq, -128
  %or.cond3.i = icmp ult i32 %i.gv, -256
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.16151.0234, i64 %indvars.iv.i ; 3 uses
  %.val40.i = load i8, ptr %i.gw, align 1, !tbaa !282 ; 2 uses
  br i1 %or.cond3.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gx = call i8 @llvm.umax.i8(i8 %.val40.i, i8 2)
  store i8 %i.gx, ptr %i.gw, align 1, !tbaa !282
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.gy = call i8 @llvm.umax.i8(i8 %.val40.i, i8 1)
  store i8 %i.gy, ptr %i.gw, align 1, !tbaa !282
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ab, %.lr.ph.i118
  %.3.i119 = phi i1 [ %.147.i, %.lr.ph.i118 ], [ true, %bb.ab ], [ %.147.i, %bb.ad ], [ %.147.i, %bb.ae ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gz = load ptr, ptr %.03551.i, align 8, !tbaa !391 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !283
  %i.hc = zext i32 %i.hb to i64
  %i.hd = icmp samesign ult i64 %indvars.iv.next.i, %i.hc
  br i1 %i.hd, label %.lr.ph.i118, label %._crit_edge.i, !llvm.loop !15

bb.ag:                                            ; preds = %._crit_edge52.i
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.16151.0234, i64 %i.ac
  br i1 %.not.i.i.i59.not, label %_ZN2OT20delta_row_encoding_t15calculate_charsEv.exit, label %iter.check

iter.check:                                       ; preds = %bb.ag
  br i1 %min.iters.check618, label %.lr.ph57.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check619, label %vec.epilog.ph, label %vector.ph620

vector.ph620:                                     ; preds = %vector.main.loop.iter.check
  %i.hf = getelementptr i8, ptr %.sroa.16151.0234, i64 %n.vec621
  br label %vector.body622

vector.body622:                                   ; preds = %pred.store.continue718, %vector.ph620
  %index623 = phi i64 [ 0, %vector.ph620 ], [ %index.next719, %pred.store.continue718 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623 ; 3 uses
  %i.hg = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep624 = getelementptr i8, ptr %i.hg, i64 1
  %i.hh = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep625 = getelementptr i8, ptr %i.hh, i64 2
  %i.hi = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep626 = getelementptr i8, ptr %i.hi, i64 3
  %i.hj = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep627 = getelementptr i8, ptr %i.hj, i64 4
  %i.hk = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep628 = getelementptr i8, ptr %i.hk, i64 5
  %i.hl = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep629 = getelementptr i8, ptr %i.hl, i64 6
  %i.hm = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep630 = getelementptr i8, ptr %i.hm, i64 7
  %i.hn = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep631 = getelementptr i8, ptr %i.hn, i64 8
  %i.ho = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep632 = getelementptr i8, ptr %i.ho, i64 9
  %i.hp = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep633 = getelementptr i8, ptr %i.hp, i64 10
  %i.hq = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep634 = getelementptr i8, ptr %i.hq, i64 11
  %i.hr = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep635 = getelementptr i8, ptr %i.hr, i64 12
  %i.hs = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep636 = getelementptr i8, ptr %i.hs, i64 13
  %i.ht = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep637 = getelementptr i8, ptr %i.ht, i64 14
  %i.hu = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep638 = getelementptr i8, ptr %i.hu, i64 15
  %i.hv = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep639 = getelementptr i8, ptr %i.hv, i64 16
  %i.hw = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep640 = getelementptr i8, ptr %i.hw, i64 17
  %i.hx = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep641 = getelementptr i8, ptr %i.hx, i64 18
  %i.hy = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep642 = getelementptr i8, ptr %i.hy, i64 19
  %i.hz = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep643 = getelementptr i8, ptr %i.hz, i64 20
  %i.ia = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep644 = getelementptr i8, ptr %i.ia, i64 21
  %i.ib = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep645 = getelementptr i8, ptr %i.ib, i64 22
  %i.ic = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep646 = getelementptr i8, ptr %i.ic, i64 23
  %i.id = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep647 = getelementptr i8, ptr %i.id, i64 24
  %i.ie = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep648 = getelementptr i8, ptr %i.ie, i64 25
  %i.if = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep649 = getelementptr i8, ptr %i.if, i64 26
  %i.ig = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep650 = getelementptr i8, ptr %i.ig, i64 27
  %i.ih = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep651 = getelementptr i8, ptr %i.ih, i64 28
  %i.ii = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep652 = getelementptr i8, ptr %i.ii, i64 29
  %i.ij = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep653 = getelementptr i8, ptr %i.ij, i64 30
  %i.ik = getelementptr i8, ptr %.sroa.16151.0234, i64 %index623
  %next.gep654 = getelementptr i8, ptr %i.ik, i64 31
  %i.il = getelementptr i8, ptr %next.gep, i64 16
  %wide.load655 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !282
  %wide.load656 = load <16 x i8>, ptr %i.il, align 1, !tbaa !282
  %i.im = icmp eq <16 x i8> %wide.load655, splat (i8 1) ; 16 uses
  %i.in = icmp eq <16 x i8> %wide.load656, splat (i8 1) ; 16 uses
  %i.io = extractelement <16 x i1> %i.im, i64 0
  br i1 %i.io, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body622
  store i8 2, ptr %next.gep, align 1, !tbaa !282
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body622
  %i.ip = extractelement <16 x i1> %i.im, i64 1
  br i1 %i.ip, label %pred.store.if657, label %pred.store.continue658

pred.store.if657:                                 ; preds = %pred.store.continue
  store i8 2, ptr %next.gep624, align 1, !tbaa !282
  br label %pred.store.continue658

pred.store.continue658:                           ; preds = %pred.store.if657, %pred.store.continue
  %i.iq = extractelement <16 x i1> %i.im, i64 2
  br i1 %i.iq, label %pred.store.if659, label %pred.store.continue660

pred.store.if659:                                 ; preds = %pred.store.continue658
  store i8 2, ptr %next.gep625, align 1, !tbaa !282
  br label %pred.store.continue660

pred.store.continue660:                           ; preds = %pred.store.if659, %pred.store.continue658
  %i.ir = extractelement <16 x i1> %i.im, i64 3
  br i1 %i.ir, label %pred.store.if661, label %pred.store.continue662

pred.store.if661:                                 ; preds = %pred.store.continue660
  store i8 2, ptr %next.gep626, align 1, !tbaa !282
  br label %pred.store.continue662

pred.store.continue662:                           ; preds = %pred.store.if661, %pred.store.continue660
  %i.is = extractelement <16 x i1> %i.im, i64 4
  br i1 %i.is, label %pred.store.if663, label %pred.store.continue664

pred.store.if663:                                 ; preds = %pred.store.continue662
  store i8 2, ptr %next.gep627, align 1, !tbaa !282
  br label %pred.store.continue664

pred.store.continue664:                           ; preds = %pred.store.if663, %pred.store.continue662
  %i.it = extractelement <16 x i1> %i.im, i64 5
  br i1 %i.it, label %pred.store.if665, label %pred.store.continue666

pred.store.if665:                                 ; preds = %pred.store.continue664
  store i8 2, ptr %next.gep628, align 1, !tbaa !282
  br label %pred.store.continue666

pred.store.continue666:                           ; preds = %pred.store.if665, %pred.store.continue664
  %i.iu = extractelement <16 x i1> %i.im, i64 6
  br i1 %i.iu, label %pred.store.if667, label %pred.store.continue668

pred.store.if667:                                 ; preds = %pred.store.continue666
  store i8 2, ptr %next.gep629, align 1, !tbaa !282
  br label %pred.store.continue668

pred.store.continue668:                           ; preds = %pred.store.if667, %pred.store.continue666
  %i.iv = extractelement <16 x i1> %i.im, i64 7
  br i1 %i.iv, label %pred.store.if669, label %pred.store.continue670

pred.store.if669:                                 ; preds = %pred.store.continue668
  store i8 2, ptr %next.gep630, align 1, !tbaa !282
  br label %pred.store.continue670

pred.store.continue670:                           ; preds = %pred.store.if669, %pred.store.continue668
  %i.iw = extractelement <16 x i1> %i.im, i64 8
  br i1 %i.iw, label %pred.store.if671, label %pred.store.continue672

pred.store.if671:                                 ; preds = %pred.store.continue670
  store i8 2, ptr %next.gep631, align 1, !tbaa !282
  br label %pred.store.continue672

pred.store.continue672:                           ; preds = %pred.store.if671, %pred.store.continue670
  %i.ix = extractelement <16 x i1> %i.im, i64 9
  br i1 %i.ix, label %pred.store.if673, label %pred.store.continue674

pred.store.if673:                                 ; preds = %pred.store.continue672
  store i8 2, ptr %next.gep632, align 1, !tbaa !282
  br label %pred.store.continue674

pred.store.continue674:                           ; preds = %pred.store.if673, %pred.store.continue672
  %i.iy = extractelement <16 x i1> %i.im, i64 10
  br i1 %i.iy, label %pred.store.if675, label %pred.store.continue676

pred.store.if675:                                 ; preds = %pred.store.continue674
  store i8 2, ptr %next.gep633, align 1, !tbaa !282
  br label %pred.store.continue676

pred.store.continue676:                           ; preds = %pred.store.if675, %pred.store.continue674
  %i.iz = extractelement <16 x i1> %i.im, i64 11
  br i1 %i.iz, label %pred.store.if677, label %pred.store.continue678

pred.store.if677:                                 ; preds = %pred.store.continue676
  store i8 2, ptr %next.gep634, align 1, !tbaa !282
  br label %pred.store.continue678

pred.store.continue678:                           ; preds = %pred.store.if677, %pred.store.continue676
  %i.ja = extractelement <16 x i1> %i.im, i64 12
  br i1 %i.ja, label %pred.store.if679, label %pred.store.continue680

pred.store.if679:                                 ; preds = %pred.store.continue678
  store i8 2, ptr %next.gep635, align 1, !tbaa !282
  br label %pred.store.continue680

pred.store.continue680:                           ; preds = %pred.store.if679, %pred.store.continue678
  %i.jb = extractelement <16 x i1> %i.im, i64 13
  br i1 %i.jb, label %pred.store.if681, label %pred.store.continue682

pred.store.if681:                                 ; preds = %pred.store.continue680
  store i8 2, ptr %next.gep636, align 1, !tbaa !282
  br label %pred.store.continue682

pred.store.continue682:                           ; preds = %pred.store.if681, %pred.store.continue680
  %i.jc = extractelement <16 x i1> %i.im, i64 14
  br i1 %i.jc, label %pred.store.if683, label %pred.store.continue684

pred.store.if683:                                 ; preds = %pred.store.continue682
  store i8 2, ptr %next.gep637, align 1, !tbaa !282
  br label %pred.store.continue684

pred.store.continue684:                           ; preds = %pred.store.if683, %pred.store.continue682
  %i.jd = extractelement <16 x i1> %i.im, i64 15
  br i1 %i.jd, label %pred.store.if685, label %pred.store.continue686

pred.store.if685:                                 ; preds = %pred.store.continue684
  store i8 2, ptr %next.gep638, align 1, !tbaa !282
  br label %pred.store.continue686

pred.store.continue686:                           ; preds = %pred.store.if685, %pred.store.continue684
  %i.je = extractelement <16 x i1> %i.in, i64 0
  br i1 %i.je, label %pred.store.if687, label %pred.store.continue688

end_hunk_1
