Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/raw_hash_set?download=true
inline.NumInlined: 842
inline.NumDeleted: 267
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEE:bb.a
  %i.i = zext i32 %i.h to i64                     ; 9 uses
  %.not = icmp samesign ugt i64 %i.c, %i.f
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 131072, ptr %i.j, align 8, !tbaa !41
  %i.k = load i64, ptr %2, align 8, !tbaa !23     ; 3 uses
  %.not34 = icmp ugt i64 %i.k, %i.f
  br i1 %.not34, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.08.i = phi i64 [ %i.s, %bb.e ], [ 0, %bb.d ]  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.08.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !40
  %i.r = icmp sgt i8 %i.q, -1
  br i1 %i.r, label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_117FindFirstFullSlotEmmPKNS1_6ctrl_tE.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i64 %.08.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.k
  br i1 %exitcond.not.i, label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_117FindFirstFullSlotEmmPKNS1_6ctrl_tE.exit, label %.lr.ph.i, !llvm.loop !3

_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_117FindFirstFullSlotEmmPKNS1_6ctrl_tE.exit: ; preds = %.lr.ph.i, %bb.e
  %.0.lcssa.i = phi i64 [ %i.k, %bb.e ], [ %.08.i, %.lr.ph.i ]
  %i.t = mul i64 %.0.lcssa.i, %i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.t
  br label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_117FindFirstFullSlotEmmPKNS1_6ctrl_tE.exit, %bb.c
  %i.v = phi ptr [ %i.l, %bb.c ], [ %i.u, %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_117FindFirstFullSlotEmmPKNS1_6ctrl_tE.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void %4(ptr %3, ptr noundef nonnull %i.w, ptr noundef %i.v), !inline_history !120
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_2025051218container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.c)
  %i.x = load i64, ptr %0, align 8, !tbaa !23     ; 5 uses
  %i.y = icmp ult i64 %i.x, 17
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !26
  %.fr73 = freeze i64 %i.aa
  %i.ab = and i64 %.fr73, 65534
  %i.ac = or disjoint i64 %i.ab, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.fr72 = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.g ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = tail call noundef ptr %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %0) ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !45 ; 2 uses
  %i.ai = load i64, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !12 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !12 ; 3 uses
  %i.am = icmp ult i64 %i.ai, 15
  br i1 %i.am, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  %.0.copyload.i.i.i.i = load i64, ptr %i.an, align 1
  %i.ao = and i64 %.0.copyload.i.i.i.i, -9187201950435737472 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ak, i64 -1
  %i.aq = ptrtoint ptr %.sroa.0.0.copyload.i.i.i to i64
  %i.ar = sub i64 %i.aq, %i.i
  %i.as = inttoptr i64 %i.ar to ptr
  %.not6276.i = icmp eq i64 %i.ao, -9187201950435737472
  br i1 %.not6276.i, label %"_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_124IterateOverFullSlotsImplIZNS1_4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS4_NS0_11FunctionRefIFvPvPKvEEEE3$_0EEvSA_mT_.exit", label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %bb.j
  %i.at = xor i64 %i.ao, -9187201950435737472
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = icmp eq i64 %.fr72, 0
  br label %bb.k

bb.k:                                             ; preds = %"_ZZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEEENK3$_0clEPKNS1_6ctrl_tESA_.exit.i", %.lr.ph79.i
  %.3 = phi i64 [ %i.x, %.lr.ph79.i ], [ %i.cg, %"_ZZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEEENK3$_0clEPKNS1_6ctrl_tESA_.exit.i" ]
  %.sroa.056.077.i = phi i64 [ %i.at, %.lr.ph79.i ], [ %i.cr, %"_ZZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEEENK3$_0clEPKNS1_6ctrl_tESA_.exit.i" ] ; 3 uses
  %i.ay = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.056.077.i, i1 true)
  %i.az = lshr i64 %i.ay, 3                       ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.az
  %i.bb = mul nuw nsw i64 %i.az, %i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bb ; 2 uses
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = tail call noundef i64 %i.ah(ptr noundef %i.af, ptr noundef %i.bc), !inline_history !121
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !12 ; 4 uses
  %i.bf = load i64, ptr %i.av, align 8, !tbaa !26
  %i.bg = and i64 %i.bf, 65535
  %i.bh = lshr i64 %i.bd, 7
  %i.bi = xor i64 %i.bg, %i.bh
  %i.bj = load i64, ptr %0, align 8, !tbaa !23    ; 5 uses
  %i.bk = and i64 %i.bi, %i.bj                    ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bk ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !40
  %i.bn = icmp slt i8 %i.bm, -1
  br i1 %i.bn, label %"_ZZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEEENK3$_0clEPKNS1_6ctrl_tESA_.exit.i", label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.l
  %i.bo = load <16 x i8>, ptr %i.bl, align 1, !tbaa !12
  %i.bp = icmp slt <16 x i8> %i.bo, splat (i8 -1)
  %i.bq = bitcast <16 x i1> %i.bp to i16          ; 2 uses
  %.not17.i.i.i.i = icmp eq i16 %i.bq, 0
  br i1 %.not17.i.i.i.i, label %.lr.ph.i.i.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %i.bk, %.preheader.i.i.i.i ], [ %i.bx, %.lr.ph.i.i.i.i ]
  %.lcssa.i.i.i.i = phi i16 [ %i.bq, %.preheader.i.i.i.i ], [ %i.cb, %.lr.ph.i.i.i.i ]
  %i.br = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.bs = zext nneg i16 %i.br to i64
  %i.bt = add i64 %.sroa.5.0.lcssa.i.i.i.i, %i.bs
  %i.bu = and i64 %i.bt, %i.bj
  br label %"_ZZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEEENK3$_0clEPKNS1_6ctrl_tESA_.exit.i"

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.5.019.i.i.i.i = phi i64 [ %i.bx, %.lr.ph.i.i.i.i ], [ %i.bk, %.preheader.i.i.i.i ]
  %.sroa.12.018.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  %i.bv = add i64 %.sroa.12.018.i.i.i.i, 16       ; 2 uses
  %i.bw = add i64 %i.bv, %.sroa.5.019.i.i.i.i
  %i.bx = and i64 %i.bw, %i.bj                    ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bx
  %i.bz = load <16 x i8>, ptr %i.by, align 1, !tbaa !12
  %i.ca = icmp slt <16 x i8> %i.bz, splat (i8 -1)
  %i.cb = bitcast <16 x i1> %i.ca to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.cb, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.thread.i.i.i.i, !llvm.loop !2

bb.m:                                             ; preds = %bb.k
  %i.cc = add i64 %.3, %.fr72
  %i.cd = and i64 %i.cc, %i.x
  %.pre = load ptr, ptr %i.au, align 8, !tbaa !12
  %.pre82 = load i64, ptr %0, align 8, !tbaa !23
  br label %"_ZZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEEENK3$_0clEPKNS1_6ctrl_tESA_.exit.i"

"_ZZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEEENK3$_0clEPKNS1_6ctrl_tESA_.exit.i": ; preds = %bb.m, %.thread.i.i.i.i, %bb.l
  %i.ce = phi i64 [ %.pre82, %bb.m ], [ %i.bj, %.thread.i.i.i.i ], [ %i.bj, %bb.l ] ; 2 uses
  %i.cf = phi ptr [ %.pre, %bb.m ], [ %i.be, %.thread.i.i.i.i ], [ %i.be, %bb.l ] ; 2 uses
  %i.cg = phi i64 [ %i.cd, %bb.m ], [ %i.bu, %.thread.i.i.i.i ], [ %i.bk, %bb.l ] ; 4 uses
  %i.ch = load i8, ptr %i.ba, align 1, !tbaa !40  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cg
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !40
  %i.cj = add i64 %i.cg, -15
  %i.ck = and i64 %i.ce, %i.cj
  %i.cl = and i64 %i.ce, 15
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.ck
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.cl
  store i8 %i.ch, ptr %i.cn, align 1, !tbaa !40
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !12
  %i.co = mul i64 %i.cg, %i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.co
  tail call void %4(ptr %3, ptr noundef %i.cp, ptr noundef %i.bc), !inline_history !122
  %i.cq = add i64 %.sroa.056.077.i, -1
  %i.cr = and i64 %i.cq, %.sroa.056.077.i         ; 2 uses
  %.not62.i = icmp eq i64 %i.cr, 0
  br i1 %.not62.i, label %"_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_124IterateOverFullSlotsImplIZNS1_4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS4_NS0_11FunctionRefIFvPvPKvEEEE3$_0EEvSA_mT_.exit", label %bb.k

bb.n:                                             ; preds = %bb.i
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !26
  %i.ct = lshr i64 %i.cs, 17                      ; 3 uses
  %.not70.i = icmp eq i64 %i.ct, 0
  br i1 %.not70.i, label %"_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_124IterateOverFullSlotsImplIZNS1_4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS4_NS0_11FunctionRefIFvPvPKvEEEE3$_0EEvSA_mT_.exit", label %.lr.ph75.i

.lr.ph75.i:                                       ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cw = shl nuw nsw i64 %i.i, 4                 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cy = icmp eq i64 %.fr72, 0
  br i1 %i.cy, label %.lr.ph75.i.split.us, label %.lr.ph75.i.split

.lr.ph75.i.split.us:                              ; preds = %.lr.ph75.i, %._crit_edge.i.us
  %.073.i.us = phi i64 [ %.1.lcssa.i.us, %._crit_edge.i.us ], [ %i.ct, %.lr.ph75.i ] ; 2 uses
  %.03072.i.us = phi ptr [ %5, %._crit_edge.i.us ], [ %i.ak, %.lr.ph75.i ] ; 3 uses
  %.03171.i.us = phi ptr [ %8, %._crit_edge.i.us ], [ %.sroa.0.0.copyload.i.i.i, %.lr.ph75.i ] ; 2 uses
  %i.cz = load <16 x i8>, ptr %.03072.i.us, align 1, !tbaa !12
  %i.da = icmp sgt <16 x i8> %i.cz, splat (i8 -1)
  %i.db = bitcast <16 x i1> %i.da to i16          ; 2 uses
  %.not6167.i.us = icmp eq i16 %i.db, 0
  br i1 %.not6167.i.us, label %._crit_edge.i.us, label %.lr.ph.i35.us.us

.lr.ph.i35.us.us:                                 ; preds = %.lr.ph75.i.split.us, %"_ZZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEEENK3$_0clEPKNS1_6ctrl_tESA_.exit49.i.us.us"
  %.169.i.us.us = phi i64 [ %i.eq, %"_ZZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEEENK3$_0clEPKNS1_6ctrl_tESA_.exit49.i.us.us" ], [ %.073.i.us, %.lr.ph75.i.split.us ]
  %.sroa.050.068.i.us.us = phi i16 [ %i.es, %"_ZZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEEENK3$_0clEPKNS1_6ctrl_tESA_.exit49.i.us.us" ], [ %i.db, %.lr.ph75.i.split.us ] ; 3 uses
  %i.dc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.050.068.i.us.us, i1 true)
  %i.dd = zext nneg i16 %i.dc to i64              ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.03072.i.us, i64 %i.dd
  %i.df = mul nuw nsw i64 %i.dd, %i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.03171.i.us, i64 %i.df ; 2 uses
  %i.dh = tail call noundef i64 %i.ah(ptr noundef %i.af, ptr noundef %i.dg), !inline_history !121
  %i.di = load ptr, ptr %i.cu, align 8, !tbaa !12 ; 4 uses
  %i.dj = load i64, ptr %i.cv, align 8, !tbaa !26
  %i.dk = and i64 %i.dj, 65535
  %i.dl = lshr i64 %i.dh, 7
  %i.dm = xor i64 %i.dk, %i.dl
  %i.dn = load i64, ptr %0, align 8, !tbaa !23    ; 5 uses
  %i.do = and i64 %i.dm, %i.dn                    ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.do ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !40
  %i.dr = icmp slt i8 %i.dq, -1
  br i1 %i.dr, label %"_ZZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEEENK3$_0clEPKNS1_6ctrl_tESA_.exit49.i.us.us", label %.preheader.i.i.i38.i.us.us

.preheader.i.i.i38.i.us.us:                       ; preds = %.lr.ph.i35.us.us
  %i.ds = load <16 x i8>, ptr %i.dp, align 1, !tbaa !12
  %i.dt = icmp slt <16 x i8> %i.ds, splat (i8 -1)
  %i.du = bitcast <16 x i1> %i.dt to i16          ; 2 uses
  %.not17.i.i.i39.i.us.us = icmp eq i16 %i.du, 0
  br i1 %.not17.i.i.i39.i.us.us, label %.lr.ph.i.i.i45.i.us.us, label %.thread.i.i.i40.i.us.us

.lr.ph.i.i.i45.i.us.us:                           ; preds = %.preheader.i.i.i38.i.us.us, %.lr.ph.i.i.i45.i.us.us
  %.sroa.5.019.i.i.i46.i.us.us = phi i64 [ %i.dx, %.lr.ph.i.i.i45.i.us.us ], [ %i.do, %.preheader.i.i.i38.i.us.us ]
  %.sroa.12.018.i.i.i47.i.us.us = phi i64 [ %i.dv, %.lr.ph.i.i.i45.i.us.us ], [ 0, %.preheader.i.i.i38.i.us.us ]
  %i.dv = add i64 %.sroa.12.018.i.i.i47.i.us.us, 16 ; 2 uses
  %i.dw = add i64 %i.dv, %.sroa.5.019.i.i.i46.i.us.us
  %i.dx = and i64 %i.dw, %i.dn                    ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dx
  %i.dz = load <16 x i8>, ptr %i.dy, align 1, !tbaa !12
  %i.ea = icmp slt <16 x i8> %i.dz, splat (i8 -1)
  %i.eb = bitcast <16 x i1> %i.ea to i16          ; 2 uses
  %.not.i.i.i48.i.us.us = icmp eq i16 %i.eb, 0
  br i1 %.not.i.i.i48.i.us.us, label %.lr.ph.i.i.i45.i.us.us, label %.thread.i.i.i40.i.us.us, !llvm.loop !2

.thread.i.i.i40.i.us.us:                          ; preds = %.lr.ph.i.i.i45.i.us.us, %.preheader.i.i.i38.i.us.us
  %.sroa.5.0.lcssa.i.i.i41.i.us.us = phi i64 [ %i.do, %.preheader.i.i.i38.i.us.us ], [ %i.dx, %.lr.ph.i.i.i45.i.us.us ]
  %.lcssa.i.i.i42.i.us.us = phi i16 [ %i.du, %.preheader.i.i.i38.i.us.us ], [ %i.eb, %.lr.ph.i.i.i45.i.us.us ]
  %i.ec = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i42.i.us.us, i1 true)
  %i.ed = zext nneg i16 %i.ec to i64
  %i.ee = add i64 %.sroa.5.0.lcssa.i.i.i41.i.us.us, %i.ed
  %i.ef = and i64 %i.ee, %i.dn
  br label %"_ZZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEEENK3$_0clEPKNS1_6ctrl_tESA_.exit49.i.us.us"

"_ZZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEEENK3$_0clEPKNS1_6ctrl_tESA_.exit49.i.us.us": ; preds = %.thread.i.i.i40.i.us.us, %.lr.ph.i35.us.us
  %i.eg = phi i64 [ %i.do, %.lr.ph.i35.us.us ], [ %i.ef, %.thread.i.i.i40.i.us.us ] ; 3 uses
  %i.eh = load i8, ptr %i.de, align 1, !tbaa !40  ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.eg
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !40
  %i.ej = add i64 %i.eg, -15
  %i.ek = and i64 %i.dn, %i.ej
  %i.el = and i64 %i.dn, 15
  %i.em = getelementptr i8, ptr %i.di, i64 %i.ek
  %i.en = getelementptr i8, ptr %i.em, i64 %i.el
  store i8 %i.eh, ptr %i.en, align 1, !tbaa !40
  %.sroa.0.0.copyload.i.i.i36.i.us.us = load ptr, ptr %i.cx, align 8, !tbaa !12
  %i.eo = mul i64 %i.eg, %i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i36.i.us.us, i64 %i.eo
  tail call void %4(ptr %3, ptr noundef %i.ep, ptr noundef %i.dg), !inline_history !122
  %i.eq = add i64 %.169.i.us.us, -1               ; 2 uses
  %i.er = add i16 %.sroa.050.068.i.us.us, -1
  %i.es = and i16 %i.er, %.sroa.050.068.i.us.us   ; 2 uses
  %.not61.i.us.us = icmp eq i16 %i.es, 0
  br i1 %.not61.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i35.us.us

._crit_edge.i.us:                                 ; preds = %"_ZZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEEENK3$_0clEPKNS1_6ctrl_tESA_.exit49.i.us.us", %.lr.ph75.i.split.us
  %.1.lcssa.i.us = phi i64 [ %.073.i.us, %.lr.ph75.i.split.us ], [ %i.eq, %"_ZZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEEENK3$_0clEPKNS1_6ctrl_tESA_.exit49.i.us.us" ] ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.03072.i.us, i64 16
  %6 = ptrtoint ptr %.03171.i.us to i64
  %7 = add i64 %i.cw, %6
  %8 = inttoptr i64 %7 to ptr
  %.not.i36.us = icmp eq i64 %.1.lcssa.i.us, 0
  br i1 %.not.i36.us, label %"_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_124IterateOverFullSlotsImplIZNS1_4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS4_NS0_11FunctionRefIFvPvPKvEEEE3$_0EEvSA_mT_.exit", label %.lr.ph75.i.split.us, !llvm.loop !123

.lr.ph75.i.split:                                 ; preds = %.lr.ph75.i, %._crit_edge.i
  %.0 = phi i64 [ %.2, %._crit_edge.i ], [ %i.x, %.lr.ph75.i ] ; 2 uses
  %.073.i = phi i64 [ %.1.lcssa.i, %._crit_edge.i ], [ %i.ct, %.lr.ph75.i ] ; 2 uses
  %.03072.i = phi ptr [ %i.ew, %._crit_edge.i ], [ %i.ak, %.lr.ph75.i ] ; 3 uses
  %.03171.i = phi ptr [ %i.ez, %._crit_edge.i ], [ %.sroa.0.0.copyload.i.i.i, %.lr.ph75.i ] ; 2 uses
  %i.et = load <16 x i8>, ptr %.03072.i, align 1, !tbaa !12
  %i.eu = icmp sgt <16 x i8> %i.et, splat (i8 -1)
  %i.ev = bitcast <16 x i1> %i.eu to i16          ; 2 uses
  %.not6167.i = icmp eq i16 %i.ev, 0
  br i1 %.not6167.i, label %._crit_edge.i, label %.lr.ph.i35

._crit_edge.i:                                    ; preds = %.lr.ph.i35, %.lr.ph75.i.split
  %.2 = phi i64 [ %.0, %.lr.ph75.i.split ], [ %i.fg, %.lr.ph.i35 ]
  %.1.lcssa.i = phi i64 [ %.073.i, %.lr.ph75.i.split ], [ %i.fs, %.lr.ph.i35 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.03072.i, i64 16
  %i.ex = ptrtoint ptr %.03171.i to i64
  %i.ey = add i64 %i.cw, %i.ex
  %i.ez = inttoptr i64 %i.ey to ptr
  %.not.i36 = icmp eq i64 %.1.lcssa.i, 0
  br i1 %.not.i36, label %"_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_124IterateOverFullSlotsImplIZNS1_4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS4_NS0_11FunctionRefIFvPvPKvEEEE3$_0EEvSA_mT_.exit", label %.lr.ph75.i.split, !llvm.loop !123

.lr.ph.i35:                                       ; preds = %.lr.ph75.i.split, %.lr.ph.i35
  %.1 = phi i64 [ %i.fg, %.lr.ph.i35 ], [ %.0, %.lr.ph75.i.split ]
  %.169.i = phi i64 [ %i.fs, %.lr.ph.i35 ], [ %.073.i, %.lr.ph75.i.split ]
  %.sroa.050.068.i = phi i16 [ %i.fu, %.lr.ph.i35 ], [ %i.ev, %.lr.ph75.i.split ] ; 3 uses
  %i.fa = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.050.068.i, i1 true)
  %i.fb = zext nneg i16 %i.fa to i64              ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.03072.i, i64 %i.fb
  %i.fd = mul nuw nsw i64 %i.fb, %i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.03171.i, i64 %i.fd
  %i.ff = add i64 %.1, %.fr72
  %i.fg = and i64 %i.ff, %i.x                     ; 5 uses
  %i.fh = load i8, ptr %i.fc, align 1, !tbaa !40  ; 2 uses
  %i.fi = load ptr, ptr %i.cu, align 8, !tbaa !12 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fg
  store i8 %i.fh, ptr %i.fj, align 1, !tbaa !40
  %i.fk = add i64 %i.fg, -15
  %i.fl = load i64, ptr %0, align 8, !tbaa !23    ; 2 uses
  %i.fm = and i64 %i.fl, %i.fk
  %i.fn = and i64 %i.fl, 15
  %i.fo = getelementptr i8, ptr %i.fi, i64 %i.fm
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.fn
  store i8 %i.fh, ptr %i.fp, align 1, !tbaa !40
  %.sroa.0.0.copyload.i.i.i36.i = load ptr, ptr %i.cx, align 8, !tbaa !12
  %i.fq = mul i64 %i.fg, %i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i36.i, i64 %i.fq
  tail call void %4(ptr %3, ptr noundef %i.fr, ptr noundef %i.fe), !inline_history !122
  %i.fs = add i64 %.169.i, -1                     ; 2 uses
  %i.ft = add i16 %.sroa.050.068.i, -1
  %i.fu = and i16 %i.ft, %.sroa.050.068.i         ; 2 uses
  %.not61.i = icmp eq i16 %i.fu, 0
  br i1 %.not61.i, label %._crit_edge.i, label %.lr.ph.i35

"_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_124IterateOverFullSlotsImplIZNS1_4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS4_NS0_11FunctionRefIFvPvPKvEEEE3$_0EEvSA_mT_.exit": ; preds = %._crit_edge.i, %._crit_edge.i.us, %"_ZZN4absl12lts_2025051218container_internal4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS2_NS0_11FunctionRefIFvPvPKvEEEENK3$_0clEPKNS1_6ctrl_tESA_.exit.i", %bb.n, %bb.j
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fw = and i64 %i.b, -131072
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !26
  %i.fy = add i64 %i.fx, %i.fw
  store i64 %i.fy, ptr %i.fv, align 8, !tbaa !26
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !12
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -8 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !28
  %i.gd = sub i64 %i.gc, %i.c
  store i64 %i.gd, ptr %i.gb, align 8, !tbaa !28
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %"_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_124IterateOverFullSlotsImplIZNS1_4CopyERNS1_12CommonFieldsERKNS1_15PolicyFunctionsERKS4_NS0_11FunctionRefIFvPvPKvEEEE3$_0EEvSA_mT_.exit"
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051218container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i64 noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.d = icmp ult i64 %i.c, 131072
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.f = load i8, ptr %i.e, align 2, !range !34
  %i.g = zext nneg i8 %i.f to i64                 ; 3 uses
  %i.h = icmp ule i64 %i.a, %i.g
  %or.cond = select i1 %i.d, i1 %i.h, i1 false, !prof !131
  br i1 %or.cond, label %bb.b, label %.critedge, !prof !131

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !18, !alias.scope !132 ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = icmp ult i32 %i.j, 131072
  br i1 %i.l, label %_ZN4absl12lts_2025051218container_internal16IsAboveValidSizeILm8EEEbmm.exit.i.i, label %_ZN4absl12lts_2025051218container_internal12MaxValidSizeILm8EEEmm.exit.i.i.i, !prof !11

_ZN4absl12lts_2025051218container_internal12MaxValidSizeILm8EEEmm.exit.i.i.i: ; preds = %bb.b
  %i.m = udiv i64 4611686018427387904, %i.k
  br label %_ZN4absl12lts_2025051218container_internal16IsAboveValidSizeILm8EEEbmm.exit.i.i

_ZN4absl12lts_2025051218container_internal16IsAboveValidSizeILm8EEEbmm.exit.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal12MaxValidSizeILm8EEEmm.exit.i.i.i, %bb.b
  %.pn.i.i.i = phi i64 [ %i.m, %_ZN4absl12lts_2025051218container_internal12MaxValidSizeILm8EEEmm.exit.i.i.i ], [ 123145302310912, %bb.b ]
  %.0.i.i.i = icmp ugt i64 %2, %.pn.i.i.i
  br i1 %.0.i.i.i, label %bb.c, label %_ZN4absl12lts_2025051218container_internal14SizeToCapacityEm.exit.i

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218container_internal16IsAboveValidSizeILm8EEEbmm.exit.i.i
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_121HashTableSizeOverflowEv() #21, !noalias !132
  unreachable

_ZN4absl12lts_2025051218container_internal14SizeToCapacityEm.exit.i: ; preds = %_ZN4absl12lts_2025051218container_internal16IsAboveValidSizeILm8EEEbmm.exit.i.i
  %i.n = icmp ne i64 %2, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true) ; 2 uses
  %i.p = lshr i64 -2305843009213693952, %i.o
  %i.q = icmp samesign ugt i64 %2, %i.p
  %.neg.i.i = sext i1 %i.q to i64
  %i.r = add nsw i64 %i.o, %.neg.i.i              ; 2 uses
  %i.s = lshr i64 -1, %i.r                        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load i16, ptr %i.v, align 4, !tbaa !19, !alias.scope !135
  %i.x = zext i16 %i.w to i64                     ; 2 uses
  store i64 %i.s, ptr %0, align 8, !tbaa !23, !noalias !135
  %i.y = add nuw nsw i64 %i.s, 23
  %i.z = add nuw nsw i64 %i.y, %i.x
  %i.aa = sub nsw i64 0, %i.x
  %i.ab = and i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = mul i64 %i.s, %i.k
  %i.ad = add i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24, !alias.scope !135
  %i.ag = tail call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(32) %0), !noalias !135, !inline_history !130
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !25, !alias.scope !135
  %i.aj = tail call noundef ptr %i.ai(ptr noundef %i.ag, i64 noundef %i.ad), !noalias !135, !inline_history !130 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 5 uses
  store ptr %i.ak, ptr %i.t, align 8, !tbaa !32, !noalias !135
  %i.al = load i64, ptr %i.b, align 8, !tbaa !26, !noalias !135
  %i.am = load i8, ptr @_ZGVZN4absl12lts_2025051218container_internal8NextSeedEvE4seed, align 8, !noalias !135
  %i.an = icmp eq i8 %i.am, 0
  %i.ao = tail call align 2 ptr @llvm.threadlocal.address.p0(ptr align 2 @_ZZN4absl12lts_2025051218container_internal8NextSeedEvE4seed) ; 3 uses
  br i1 %i.an, label %bb.d, label %._ZN4absl12lts_2025051218container_internal8NextSeedEv.exit_crit_edge.i.i.i.i.i.i, !prof !29

._ZN4absl12lts_2025051218container_internal8NextSeedEv.exit_crit_edge.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal14SizeToCapacityEm.exit.i
  %.pre.i.i.i.i.i.i = load i16, ptr %i.ao, align 2, !tbaa !30, !noalias !135
  br label %_ZN4absl12lts_2025051218container_internal12CommonFields11set_controlILb1EEEvPNS1_6ctrl_tE.exit.i.i.i

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal14SizeToCapacityEm.exit.i
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = trunc i64 %i.ap to i16
  store i8 1, ptr @_ZGVZN4absl12lts_2025051218container_internal8NextSeedEvE4seed, align 8, !noalias !135
  br label %_ZN4absl12lts_2025051218container_internal12CommonFields11set_controlILb1EEEvPNS1_6ctrl_tE.exit.i.i.i

_ZN4absl12lts_2025051218container_internal12CommonFields11set_controlILb1EEEvPNS1_6ctrl_tE.exit.i.i.i: ; preds = %bb.d, %._ZN4absl12lts_2025051218container_internal8NextSeedEv.exit_crit_edge.i.i.i.i.i.i
  %i.ar = phi i16 [ %.pre.i.i.i.i.i.i, %._ZN4absl12lts_2025051218container_internal8NextSeedEv.exit_crit_edge.i.i.i.i.i.i ], [ %i.aq, %bb.d ]
  %i.as = and i64 %i.al, -65536
  %i.at = add i16 %i.ar, -21165                   ; 2 uses
  store i16 %i.at, ptr %i.ao, align 2, !tbaa !30, !noalias !135
  %i.au = zext i16 %i.at to i64
  %i.av = or disjoint i64 %i.as, %i.au
  store i64 %i.av, ptr %i.b, align 8, !tbaa !26, !noalias !135
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  store ptr %i.aw, ptr %i.u, align 8, !tbaa !12, !noalias !135
  %i.ax = load i64, ptr %0, align 8, !tbaa !23, !noalias !135 ; 5 uses
  %i.ay = icmp ult i64 %i.ax, 32
  br i1 %i.ay, label %bb.e, label %bb.g, !prof !11

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12CommonFields11set_controlILb1EEEvPNS1_6ctrl_tE.exit.i.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ak, i8 -128, i64 16, i1 false), !noalias !135
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ax
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.az, i8 -128, i64 16, i1 false), !noalias !135
  %i.ba = icmp eq i64 %i.ax, 31
  br i1 %i.ba, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_141ReserveEmptyNonAllocatedTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm.exit

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bb, i8 -128, i64 16, i1 false), !noalias !135
  br label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_141ReserveEmptyNonAllocatedTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12CommonFields11set_controlILb1EEEvPNS1_6ctrl_tE.exit.i.i.i
  %i.bc = add i64 %i.ax, 16
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 -128, i64 %i.bc, i1 false), !noalias !135
  br label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_141ReserveEmptyNonAllocatedTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm.exit

_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_141ReserveEmptyNonAllocatedTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ax
  store i8 -1, ptr %i.bd, align 1, !tbaa !40, !noalias !135
  %i.be = lshr i64 2305843009213693951, %i.r
  %i.bf = sub nuw nsw i64 %i.s, %i.be
  store i64 %i.bf, ptr %i.aj, align 8, !tbaa !28, !noalias !135
  br label %bb.k

.critedge:                                        ; preds = %bb.a
  %.not = icmp ugt i64 %i.a, %i.g
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge
  %i.bg = lshr i64 %i.c, 17
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !12
end_hunk_0
