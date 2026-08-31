Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.04?download=true
inline.NumInlined: 9870
inline.NumDeleted: 3940
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_RNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRNtNtCs2mZqlW55729_12polars_utils7float164pf16RSB1B_E0CsfcROwRM8ZtH_11polars_plan:bb.a
  store ptr %i.p, ptr %i.r, align 8, !dbg !138229
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !138229 ; 4 uses
  store i64 0, ptr %i.s, align 8, !dbg !138229
  %i.t = icmp eq i64 %i.f, 0, !dbg !138230
  br i1 %i.t, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1G_8adapters9enumerateINtB2v_9EnumeratepEB1A_4fold9enumerateRBQ_uNCINvNvB1A_8for_each4callTjB3y_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB3y_RSBQ_E00E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.e, !dbg !138242

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !138243
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.v, align 8, !noalias !138244, !nonnull !13, !noundef !13
  %i.y = load i64, ptr %i.w, align 8, !noalias !138244, !noundef !13
  %i.z = load i64, ptr %i.u, align 8
  %i.aa = zext i64 %i.z to i128
  br label %bb.f, !dbg !138254

bb.f:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.e
  %i.ab = phi i64 [ 0, %bb.e ], [ %i.dm, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ab, !dbg !138258
  %.val.i = load i16, ptr %i.ac, align 2, !dbg !138262, !alias.scope !138263, !noalias !138266, !noundef !13 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !138268, !noalias !138244
  store i16 %.val.i, ptr %i.a, align 2, !dbg !138276, !noalias !138244
  %i.ad = add i64 %i.ab, %i.h, !dbg !138277
  %i.ae = trunc i64 %i.ad to i32, !dbg !138277
  %i.af = invoke fastcc noundef i16 @_RNvNtNtCshdiYQzaKNQ1_4half8binary164arch16add_f16_fallback(i16 noundef %.val.i) #48
          to label %.noexc unwind label %bb.c, !dbg !138279 ; 2 uses

.noexc:                                           ; preds = %bb.f
  %i.ag = and i16 %i.af, 32767, !dbg !138298
  %i.ah = icmp samesign ugt i16 %i.ag, 31744, !dbg !138298
  %spec.store.select.i.i.i.i.i.i = select i1 %i.ah, i16 32256, i16 %i.af, !dbg !138304
  %i.ai = zext i16 %spec.store.select.i.i.i.i.i.i to i64, !dbg !138305
  %i.aj = mul i64 %i.ai, 6195824352614963433, !dbg !138309
  %i.ak = zext i64 %i.aj to i128, !dbg !138313
  %i.al = mul nuw i128 %i.aa, %i.ak, !dbg !138316
  %i.am = lshr i128 %i.al, 64, !dbg !138317
  %i.an = trunc nuw i128 %i.am to i64, !dbg !138317 ; 2 uses
  %i.ao = icmp ugt i64 %i.y, %i.an, !dbg !138318
  call void @llvm.assume(i1 %i.ao), !dbg !138323
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.an, !dbg !138324 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24, !dbg !138325
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !138325, !alias.scope !138335, !noalias !138338, !noundef !13
  %i.as = icmp eq i64 %i.ar, 0, !dbg !138340
  br i1 %i.as, label %select.unfold.i.i.i.i, label %bb.g, !dbg !138340

bb.g:                                             ; preds = %.noexc
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32, !dbg !138341
  %i.au = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtB1J_7float164pf16EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.at, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a)
          to label %.noexc13 unwind label %bb.c, !dbg !138342 ; 3 uses

.noexc13:                                         ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !138345), !dbg !138348
  call void @llvm.experimental.noalias.scope.decl(metadata !138352), !dbg !138355
  %i.av = lshr i64 %i.au, 57, !dbg !138358
  %i.aw = trunc nuw nsw i64 %i.av to i8, !dbg !138361
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 8, !dbg !138362
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !138362, !alias.scope !138364, !noalias !138365, !noundef !13 ; 5 uses
  %i.az = load ptr, ptr %i.ap, align 8, !alias.scope !138364, !noalias !138365, !nonnull !13, !noundef !13 ; 5 uses
  %i.ba = insertelement <16 x i8> poison, i8 %i.aw, i64 0
  %i.bb = shufflevector <16 x i8> %i.ba, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.bc = and i16 %.val.i, 32767
  %i.bd = icmp samesign ugt i16 %i.bc, 31744
  br i1 %i.bd, label %.split48.us.i.i.i.i.i.i, label %.split48.i.i.i.i.i.i

.split48.us.i.i.i.i.i.i:                          ; preds = %.noexc13, %bb.h
  %.sroa.011.0.i.us.i.i.i.i.i.i = phi i64 [ %i.bk, %bb.h ], [ 0, %.noexc13 ], !dbg !138368
  %.pn.i.us.i.i.i.i.i.i = phi i64 [ %i.bl, %bb.h ], [ %i.au, %.noexc13 ]
  %.sroa.01.0.i.us.i.i.i.i.i.i = and i64 %.pn.i.us.i.i.i.i.i.i, %i.ay, !dbg !138368 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.01.0.i.us.i.i.i.i.i.i, !dbg !138369
  %.sroa.0.0.copyload.i27.us.i.i.i.i.i.i = load <16 x i8>, ptr %i.be, align 1, !dbg !138372, !noalias !138376 ; 2 uses
  %i.bf = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i.i.i.i.i.i, %i.bb, !dbg !138379
  %i.bg = bitcast <16 x i1> %i.bf to i16, !dbg !138382 ; 3 uses
  %.not.i.not33.us.i.i.i.i.i.i = icmp eq i16 %i.bg, 0, !dbg !138384
  br i1 %.not.i.not33.us.i.i.i.i.i.i, label %._crit_edge.split.us.us.i.i.i.i.i.i, label %.lr.ph.us.i.i.i.i.i.i, !dbg !138387

._crit_edge.split.us.us.i.i.i.i.i.i:              ; preds = %.lr.ph41.us.i.i.i.i.i.i, %.split48.us.i.i.i.i.i.i
  %i.bh = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i.i.i.i.i.i, splat (i8 -1), !dbg !138388
  %i.bi = bitcast <16 x i1> %i.bh to i16, !dbg !138392
  %i.bj = icmp eq i16 %i.bi, 0, !dbg !138394
  br i1 %i.bj, label %bb.h, label %select.unfold.i.i.i.i, !dbg !138394, !prof !261

bb.h:                                             ; preds = %._crit_edge.split.us.us.i.i.i.i.i.i
  %i.bk = add i64 %.sroa.011.0.i.us.i.i.i.i.i.i, 16, !dbg !138396 ; 2 uses
  %i.bl = add i64 %.sroa.01.0.i.us.i.i.i.i.i.i, %i.bk, !dbg !138398
  br label %.split48.us.i.i.i.i.i.i, !dbg !138399

.lr.ph.us.i.i.i.i.i.i:                            ; preds = %.split48.us.i.i.i.i.i.i
  %i.bm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bg, i1 true), !dbg !138400
  %i.bn = zext nneg i16 %i.bm to i64, !dbg !138403
  %i.bo = add i64 %.sroa.01.0.i.us.i.i.i.i.i.i, %i.bn, !dbg !138404
  %i.bp = and i64 %i.bo, %i.ay, !dbg !138404
  %i.bq = sub nsw i64 0, %i.bp, !dbg !138405
  %i.br = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.bq, !dbg !138414
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -2, !dbg !138415
  %.val2.i.us39.us.i.i.i.i.i.i = load i16, ptr %i.bs, align 2, !dbg !138421, !noalias !138422
  %i.bt = and i16 %.val2.i.us39.us.i.i.i.i.i.i, 32767, !dbg !138425
  %i.bu = icmp samesign ugt i16 %i.bt, 31744, !dbg !138425
  br i1 %i.bu, label %.loopexit.i.i.i.i, label %.lr.ph41.us.i.i.i.i.i.i, !dbg !138431, !prof !78518

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtBX_7float164pf16EuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.us.us.i.i.i.i.i.i: ; preds = %.lr.ph41.us.i.i.i.i.i.i
  %i.bv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cf, i1 true), !dbg !138400
  %i.bw = zext nneg i16 %i.bv to i64, !dbg !138403
  %i.bx = add i64 %.sroa.01.0.i.us.i.i.i.i.i.i, %i.bw, !dbg !138404
  %i.by = and i64 %i.bx, %i.ay, !dbg !138404
  %i.bz = sub nsw i64 0, %i.by, !dbg !138405
  %i.ca = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.bz, !dbg !138414
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -2, !dbg !138415
  %.val2.i.us.us.i.i.i.i.i.i = load i16, ptr %i.cb, align 2, !dbg !138421, !noalias !138422
  %i.cc = and i16 %.val2.i.us.us.i.i.i.i.i.i, 32767, !dbg !138425
  %i.cd = icmp samesign ugt i16 %i.cc, 31744, !dbg !138425
  br i1 %i.cd, label %.loopexit.i.i.i.i, label %.lr.ph41.us.i.i.i.i.i.i, !dbg !138431, !prof !78523

.lr.ph41.us.i.i.i.i.i.i:                          ; preds = %.lr.ph.us.i.i.i.i.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtBX_7float164pf16EuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.us.us.i.i.i.i.i.i
  %.sroa.05.0.i34.us40.us.i.i.i.i.i.i = phi i16 [ %i.cf, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtBX_7float164pf16EuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.us.us.i.i.i.i.i.i ], [ %i.bg, %.lr.ph.us.i.i.i.i.i.i ] ; 2 uses
  %i.ce = add i16 %.sroa.05.0.i34.us40.us.i.i.i.i.i.i, -1, !dbg !138433
  %i.cf = and i16 %i.ce, %.sroa.05.0.i34.us40.us.i.i.i.i.i.i, !dbg !138435 ; 3 uses
  %.not.i.not.us.us.i.i.i.i.i.i = icmp eq i16 %i.cf, 0, !dbg !138384
  br i1 %.not.i.not.us.us.i.i.i.i.i.i, label %._crit_edge.split.us.us.i.i.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtBX_7float164pf16EuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.us.us.i.i.i.i.i.i, !dbg !138387

.split48.i.i.i.i.i.i:                             ; preds = %.noexc13, %bb.j
  %.sroa.011.0.i.i.i.i.i.i.i = phi i64 [ %i.db, %bb.j ], [ 0, %.noexc13 ], !dbg !138368
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.dc, %bb.j ], [ %i.au, %.noexc13 ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.ay, !dbg !138368 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.01.0.i.i.i.i.i.i.i, !dbg !138369
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i = load <16 x i8>, ptr %i.cg, align 1, !dbg !138372, !noalias !138376 ; 2 uses
  %i.ch = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i, %i.bb, !dbg !138379
  %i.ci = bitcast <16 x i1> %i.ch to i16, !dbg !138382 ; 2 uses
  %.not.i.not33.i.i.i.i.i.i = icmp eq i16 %i.ci, 0, !dbg !138384
  br i1 %.not.i.not33.i.i.i.i.i.i, label %._crit_edge.split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !138387

.lr.ph.i.i.i.i.i.i:                               ; preds = %.split48.i.i.i.i.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtBX_7float164pf16EuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i.i
  %.sroa.05.0.i34.i.i.i.i.i.i = phi i16 [ %i.da, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtBX_7float164pf16EuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i.i ], [ %i.ci, %.split48.i.i.i.i.i.i ] ; 3 uses
  %i.cj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.i.i.i.i.i.i, i1 true), !dbg !138400
  %i.ck = zext nneg i16 %i.cj to i64, !dbg !138403
  %i.cl = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.ck, !dbg !138404
  %i.cm = and i64 %i.cl, %i.ay, !dbg !138404
  %i.cn = sub nsw i64 0, %i.cm, !dbg !138405
  %i.co = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.cn, !dbg !138414
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -2, !dbg !138415
  %.val2.i.i.i.i.i.i.i = load i16, ptr %i.cp, align 2, !dbg !138421, !noalias !138422 ; 3 uses
  %i.cq = and i16 %.val2.i.i.i.i.i.i.i, 32767, !dbg !138425
  %i.cr = icmp samesign ugt i16 %i.cq, 31744, !dbg !138425
  br i1 %i.cr, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtBX_7float164pf16EuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i.i, label %bb.i, !dbg !138437

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cs = icmp eq i16 %.val.i, %.val2.i.i.i.i.i.i.i, !dbg !138438
  br i1 %i.cs, label %.loopexit.i.i.i.i, label %.split.i.i.i.i.i.i, !dbg !138438

.split.i.i.i.i.i.i:                               ; preds = %bb.i
  %i.ct = or i16 %.val2.i.i.i.i.i.i.i, %.val.i, !dbg !138442
  %i.cu = and i16 %i.ct, 32767, !dbg !138442
  %i.cv = icmp eq i16 %i.cu, 0, !dbg !138443
  br i1 %i.cv, label %.loopexit.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtBX_7float164pf16EuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i.i, !dbg !138431, !prof !78543

._crit_edge.split.i.i.i.i.i.i:                    ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtBX_7float164pf16EuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i.i, %.split48.i.i.i.i.i.i
  %i.cw = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i, splat (i8 -1), !dbg !138388
  %i.cx = bitcast <16 x i1> %i.cw to i16, !dbg !138392
  %i.cy = icmp eq i16 %i.cx, 0, !dbg !138394
  br i1 %i.cy, label %bb.j, label %select.unfold.i.i.i.i, !dbg !138394, !prof !261

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtBX_7float164pf16EuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.cz = add i16 %.sroa.05.0.i34.i.i.i.i.i.i, -1, !dbg !138433
  %i.da = and i16 %i.cz, %.sroa.05.0.i34.i.i.i.i.i.i, !dbg !138435 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.da, 0, !dbg !138384
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !138387

bb.j:                                             ; preds = %._crit_edge.split.i.i.i.i.i.i
  %i.db = add i64 %.sroa.011.0.i.i.i.i.i.i.i, 16, !dbg !138396 ; 2 uses
  %i.dc = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.db, !dbg !138398
  br label %.split48.i.i.i.i.i.i, !dbg !138399

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.us.i.i.i.i.i.i, %.split.i.i.i.i.i.i, %bb.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapNtNtBX_7float164pf16EuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.us.us.i.i.i.i.i.i
  %i.dd = load i64, ptr %i.s, align 8, !dbg !138444, !alias.scope !138449, !noalias !138244, !noundef !13 ; 3 uses
  %i.de = load i64, ptr %i.c, align 8, !dbg !138452, !range !38010, !alias.scope !138449, !noalias !138244, !noundef !13
  %i.df = icmp eq i64 %i.dd, %i.de, !dbg !138455
  br i1 %i.df, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !138455

select.unfold.i.i.i.i:                            ; preds = %._crit_edge.split.i.i.i.i.i.i, %._crit_edge.split.us.us.i.i.i.i.i.i, %.noexc
  %i.dg = load i64, ptr %i.s, align 8, !dbg !138456, !alias.scope !138459, !noalias !138244, !noundef !13 ; 3 uses
  %i.dh = load i64, ptr %i.c, align 8, !dbg !138462, !range !38010, !alias.scope !138459, !noalias !138244, !noundef !13
  %i.di = icmp eq i64 %i.dg, %i.dh, !dbg !138465
  br i1 %i.di, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !138465

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i: ; preds = %select.unfold.i.i.i.i, %.loopexit.i.i.i.i
  %.sink29.ph.i = phi i64 [ %i.dd, %.loopexit.i.i.i.i ], [ %i.dg, %select.unfold.i.i.i.i ]
  %.sink.ph.i = phi i8 [ 1, %.loopexit.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ]
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmbEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.c, !dbg !138466

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, %select.unfold.i.i.i.i, %.loopexit.i.i.i.i
  %.sink29.i = phi i64 [ %i.dd, %.loopexit.i.i.i.i ], [ %i.dg, %select.unfold.i.i.i.i ], [ %.sink29.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i ] ; 2 uses
  %.sink.i = phi i8 [ 1, %.loopexit.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ], [ %.sink.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i ]
  %i.dj = load ptr, ptr %i.r, align 8, !dbg !138469, !noalias !138244, !nonnull !13, !noundef !13
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.sink29.i, !dbg !138474 ; 2 uses
  store i32 %i.ae, ptr %i.dk, align 4, !dbg !138476, !noalias !138244
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4, !dbg !138476
  store i8 %.sink.i, ptr %i.dl, align 4, !dbg !138476, !noalias !138244
  %storemerge.i = add i64 %.sink29.i, 1, !dbg !138478
  store i64 %storemerge.i, ptr %i.s, align 8, !dbg !138478, !noalias !138244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !138479, !noalias !138244
  %i.dm = add nuw i64 %i.ab, 1, !dbg !138480      ; 2 uses
  %i.dn = icmp eq i64 %i.dm, %i.f, !dbg !138482
  br i1 %i.dn, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1G_8adapters9enumerateINtB2v_9EnumeratepEB1A_4fold9enumerateRBQ_uNCINvNvB1A_8for_each4callTjB3y_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB3y_RSBQ_E00E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.f, !dbg !138482

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1G_8adapters9enumerateINtB2v_9EnumeratepEB1A_4fold9enumerateRBQ_uNCINvNvB1A_8for_each4callTjB3y_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB3y_RSBQ_E00E0E0ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7float164pf16uNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !138483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !138219
  ret void, !dbg !138484

bb.k:                                             ; preds = %bb.c
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !138485
  unreachable, !dbg !138485

bb.l:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.o, !dbg !138485
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashRSB1B_E0CsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !138486 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = load ptr, ptr %2, align 8, !dbg !138487, !nonnull !13, !align !478, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !138487
  %i.f = load i64, ptr %i.e, align 8, !dbg !138487, !noundef !13 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !138488
  %i.h = load i64, ptr %i.g, align 8, !dbg !138488, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !138489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !138493
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !dbg !138493
  %i.i = load i64, ptr %i.b, align 8, !dbg !138493, !range !39786, !noundef !13
  %i.j = trunc nuw i64 %i.i to i1, !dbg !138502
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !138503
  %i.l = load i64, ptr %i.k, align 8, !dbg !138503, !range !38593, !noundef !13 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !138503 ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.d, !dbg !138502, !prof !261

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !dbg !138504
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #45, !dbg !138505
  unreachable

bb.c:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmbEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.c) #46
          to label %bb.m unwind label %bb.l, !dbg !138507

bb.d:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.m, align 8, !dbg !138508, !nonnull !13, !noundef !13
  %i.q = icmp samesign ule i64 %i.f, %i.l, !dbg !138509
  tail call void @llvm.assume(i1 %i.q), !dbg !138513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !138516
  store i64 %i.l, ptr %i.c, align 8, !dbg !138517
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !138517 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8, !dbg !138517
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !138517 ; 4 uses
  store i64 0, ptr %i.s, align 8, !dbg !138517
  %i.t = icmp eq i64 %i.f, 0, !dbg !138518
  br i1 %i.t, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1L_8adapters9enumerateINtB2A_9EnumeratepEB1F_4fold9enumerateRBQ_uNCINvNvB1F_8for_each4callTjB3D_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB3D_RSBQ_E00E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.e, !dbg !138530

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !138531
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load ptr, ptr %i.v, align 8, !noalias !138532, !nonnull !13, !noundef !13
  %i.aa = load i64, ptr %i.w, align 8, !noalias !138532, !noundef !13
  %i.ab = load i64, ptr %i.u, align 8, !noalias !138532, !noundef !13
  %i.ac = zext i64 %i.ab to i128
  br label %bb.f, !dbg !138544

bb.f:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.e
  %i.ad = phi i64 [ 0, %bb.e ], [ %i.dg, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.ad, !dbg !138548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !138552, !noalias !138532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !dbg !138560, !alias.scope !138563, !noalias !138567
  %i.af = add i64 %i.ad, %i.h, !dbg !138568
  %i.ag = trunc i64 %i.af to i32, !dbg !138568
  %.val6.i.i.i.i = load i64, ptr %i.x, align 8, !dbg !138570, !noalias !138532, !noundef !13 ; 3 uses
  %i.ah = zext i64 %.val6.i.i.i.i to i128, !dbg !138572
  %i.ai = mul nuw i128 %i.ac, %i.ah, !dbg !138575
  %i.aj = lshr i128 %i.ai, 64, !dbg !138576
  %i.ak = trunc nuw i128 %i.aj to i64, !dbg !138576 ; 2 uses
  %i.al = icmp ugt i64 %i.aa, %i.ak, !dbg !138577
  call void @llvm.assume(i1 %i.al), !dbg !138582
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %i.ak, !dbg !138583 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !138584), !dbg !138587
  call void @llvm.experimental.noalias.scope.decl(metadata !138591), !dbg !138587
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !138593
  %i.ao = load i64, ptr %i.an, align 8, !dbg !138593, !alias.scope !138584, !noalias !138600, !noundef !13
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !138601
  br i1 %i.ap, label %select.unfold.i.i.i.i, label %bb.g, !dbg !138601

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 32, !dbg !138602
  %i.ar = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %.noexc unwind label %bb.c, !dbg !138603 ; 3 uses

.noexc:                                           ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !138606), !dbg !138609
  call void @llvm.experimental.noalias.scope.decl(metadata !138613), !dbg !138609
  call void @llvm.experimental.noalias.scope.decl(metadata !138615), !dbg !138618
  %i.as = lshr i64 %i.ar, 57, !dbg !138621
  %i.at = trunc nuw nsw i64 %i.as to i8, !dbg !138624
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !138625
  %i.av = load i64, ptr %i.au, align 8, !dbg !138625, !alias.scope !138627, !noalias !138628, !noundef !13 ; 4 uses
  %i.aw = load ptr, ptr %i.am, align 8, !alias.scope !138627, !noalias !138628, !nonnull !13, !noundef !13 ; 4 uses
  %i.ax = insertelement <16 x i8> poison, i8 %i.at, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.az = load ptr, ptr %i.a, align 8, !alias.scope !138630, !noalias !138631
  %.fr.i.i.i.i.i.i = freeze ptr %i.az             ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.fr.i.i.i.i.i.i, null
  %i.ba = load i64, ptr %i.y, align 8, !alias.scope !138630, !noalias !138631 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.split39.us.i.i.i.i.i.i, label %.split39.i.i.i.i.i.i

.split39.us.i.i.i.i.i.i:                          ; preds = %.noexc, %bb.h
  %.sroa.011.0.i.us.i.i.i.i.i.i = phi i64 [ %i.bh, %bb.h ], [ 0, %.noexc ], !dbg !138632
  %.pn.i.us.i.i.i.i.i.i = phi i64 [ %i.bi, %bb.h ], [ %i.ar, %.noexc ]
  %.sroa.01.0.i.us.i.i.i.i.i.i = and i64 %.pn.i.us.i.i.i.i.i.i, %i.av, !dbg !138632 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.01.0.i.us.i.i.i.i.i.i, !dbg !138633
  %.sroa.0.0.copyload.i27.us.i.i.i.i.i.i = load <16 x i8>, ptr %i.bb, align 1, !dbg !138636, !noalias !138640 ; 2 uses
  %i.bc = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i.i.i.i.i.i, %i.ay, !dbg !138643
  %i.bd = bitcast <16 x i1> %i.bc to i16, !dbg !138646 ; 2 uses
  %.not.i.not33.us.i.i.i.i.i.i = icmp eq i16 %i.bd, 0, !dbg !138648
  br i1 %.not.i.not33.us.i.i.i.i.i.i, label %._crit_edge.split.us.us.i.i.i.i.i.i, label %.lr.ph.us.i.i.i.i.i.i, !dbg !138651

._crit_edge.split.us.us.i.i.i.i.i.i:              ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.us.us.i.i.i.i.i.i, %.split39.us.i.i.i.i.i.i
  %i.be = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.us.i.i.i.i.i.i, splat (i8 -1), !dbg !138652
  %i.bf = bitcast <16 x i1> %i.be to i16, !dbg !138656
  %i.bg = icmp eq i16 %i.bf, 0, !dbg !138658
  br i1 %i.bg, label %bb.h, label %select.unfold.i.i.i.i, !dbg !138658, !prof !261

bb.h:                                             ; preds = %._crit_edge.split.us.us.i.i.i.i.i.i
  %i.bh = add i64 %.sroa.011.0.i.us.i.i.i.i.i.i, 16, !dbg !138660 ; 2 uses
  %i.bi = add i64 %.sroa.01.0.i.us.i.i.i.i.i.i, %i.bh, !dbg !138662
  br label %.split39.us.i.i.i.i.i.i, !dbg !138663

.lr.ph.us.i.i.i.i.i.i:                            ; preds = %.split39.us.i.i.i.i.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.us.us.i.i.i.i.i.i
  %.sroa.05.0.i34.us.us.i.i.i.i.i.i = phi i16 [ %i.bw, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.us.us.i.i.i.i.i.i ], [ %i.bd, %.split39.us.i.i.i.i.i.i ] ; 3 uses
  %i.bj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.us.us.i.i.i.i.i.i, i1 true), !dbg !138664
  %i.bk = zext nneg i16 %i.bj to i64, !dbg !138667
  %i.bl = add i64 %.sroa.01.0.i.us.i.i.i.i.i.i, %i.bk, !dbg !138668
  %i.bm = and i64 %i.bl, %i.av, !dbg !138668
  %i.bn = sub nsw i64 0, %i.bm, !dbg !138669
  %i.bo = getelementptr inbounds [24 x i8], ptr %i.aw, i64 %i.bn, !dbg !138678 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !138679), !dbg !138682, !noalias !138683
  call void @llvm.experimental.noalias.scope.decl(metadata !138684), !dbg !138687, !noalias !138683
  call void @llvm.experimental.noalias.scope.decl(metadata !138690), !dbg !138693, !noalias !138683
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -8, !dbg !138695
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !138695, !alias.scope !138697, !noalias !138698, !noundef !13
  %i.br = icmp eq i64 %.val6.i.i.i.i, %i.bq, !dbg !138703
  br i1 %i.br, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.us.us.i.i.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.us.us.i.i.i.i.i.i, !dbg !138703, !prof !234

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.us.us.i.i.i.i.i.i: ; preds = %.lr.ph.us.i.i.i.i.i.i
  %i.bs = getelementptr inbounds i8, ptr %i.bo, i64 -24, !dbg !138704
  %i.bt = load ptr, ptr %i.bs, align 8, !dbg !138710, !alias.scope !138697, !noalias !138698, !noundef !13
  %i.bu = icmp eq ptr %i.bt, null, !dbg !138710
  br i1 %i.bu, label %.loopexit.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.us.us.i.i.i.i.i.i, !dbg !138712, !prof !249

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.us.us.i.i.i.i.i.i: ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.us.us.i.i.i.i.i.i, %.lr.ph.us.i.i.i.i.i.i
  %i.bv = add i16 %.sroa.05.0.i34.us.us.i.i.i.i.i.i, -1, !dbg !138714
  %i.bw = and i16 %i.bv, %.sroa.05.0.i34.us.us.i.i.i.i.i.i, !dbg !138716 ; 2 uses
  %.not.i.not.us.us.i.i.i.i.i.i = icmp eq i16 %i.bw, 0, !dbg !138648
  br i1 %.not.i.not.us.us.i.i.i.i.i.i, label %._crit_edge.split.us.us.i.i.i.i.i.i, label %.lr.ph.us.i.i.i.i.i.i, !dbg !138651

.split39.i.i.i.i.i.i:                             ; preds = %.noexc, %bb.k
  %.sroa.011.0.i.i.i.i.i.i.i = phi i64 [ %i.cv, %bb.k ], [ 0, %.noexc ], !dbg !138632
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.cw, %bb.k ], [ %i.ar, %.noexc ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.av, !dbg !138632 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.01.0.i.i.i.i.i.i.i, !dbg !138633
  %.sroa.0.0.copyload.i27.i.i.i.i.i.i = load <16 x i8>, ptr %i.bx, align 1, !dbg !138636, !noalias !138640 ; 2 uses
  %i.by = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i, %i.ay, !dbg !138643
  %i.bz = bitcast <16 x i1> %i.by to i16, !dbg !138646 ; 2 uses
  %.not.i.not33.i.i.i.i.i.i = icmp eq i16 %i.bz, 0, !dbg !138648
  br i1 %.not.i.not33.i.i.i.i.i.i, label %._crit_edge.split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !138651

.lr.ph.i.i.i.i.i.i:                               ; preds = %.split39.i.i.i.i.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i.i.i.i.i
  %.sroa.05.0.i34.i.i.i.i.i.i = phi i16 [ %i.cu, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i.i.i.i.i ], [ %i.bz, %.split39.i.i.i.i.i.i ] ; 3 uses
  %i.ca = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i34.i.i.i.i.i.i, i1 true), !dbg !138664
  %i.cb = zext nneg i16 %i.ca to i64, !dbg !138667
  %i.cc = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.cb, !dbg !138668
  %i.cd = and i64 %i.cc, %i.av, !dbg !138668
  %i.ce = sub nsw i64 0, %i.cd, !dbg !138669
  %i.cf = getelementptr inbounds [24 x i8], ptr %i.aw, i64 %i.ce, !dbg !138678 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !138679), !dbg !138682, !noalias !138683
  call void @llvm.experimental.noalias.scope.decl(metadata !138684), !dbg !138687, !noalias !138683
  call void @llvm.experimental.noalias.scope.decl(metadata !138690), !dbg !138693, !noalias !138683
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8, !dbg !138695
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !138695, !alias.scope !138697, !noalias !138698, !noundef !13
  %i.ci = icmp eq i64 %.val6.i.i.i.i, %i.ch, !dbg !138703
  br i1 %i.ci, label %bb.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i.i.i.i.i, !dbg !138703, !prof !234

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 -24, !dbg !138704
  %i.ck = load ptr, ptr %i.cj, align 8, !dbg !138710, !alias.scope !138697, !noalias !138698, !noundef !13 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null, !dbg !138710
  br i1 %i.cl, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i.i.i.i.i, label %bb.j, !dbg !138718

bb.j:                                             ; preds = %bb.i
  %i.cm = getelementptr inbounds i8, ptr %i.cf, i64 -16, !dbg !138710
  %i.cn = load i64, ptr %i.cm, align 8, !dbg !138719, !alias.scope !138697, !noalias !138698, !noundef !13
  %i.co = icmp eq i64 %i.ba, %i.cn, !dbg !138721
  br i1 %i.co, label %.split.i.i.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i.i.i.i.i, !dbg !138721, !prof !234

.split.i.i.i.i.i.i:                               ; preds = %bb.j
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %.fr.i.i.i.i.i.i, ptr nonnull %i.ck, i64 %i.ba), !dbg !138723, !noalias !138725
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0, !dbg !138723
  br i1 %i.cp, label %.loopexit.i.i.i.i, label %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i.i.i.i.i, !dbg !138712, !prof !249

._crit_edge.split.i.i.i.i.i.i:                    ; preds = %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i.i.i.i.i, %.split39.i.i.i.i.i.i
  %i.cq = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i.i.i.i, splat (i8 -1), !dbg !138652
  %i.cr = bitcast <16 x i1> %i.cq to i16, !dbg !138656
  %i.cs = icmp eq i16 %i.cr, 0, !dbg !138658
  br i1 %i.cs, label %bb.k, label %select.unfold.i.i.i.i, !dbg !138658, !prof !261

_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i, %bb.j, %bb.i, %.lr.ph.i.i.i.i.i.i
  %i.ct = add i16 %.sroa.05.0.i34.i.i.i.i.i.i, -1, !dbg !138714
  %i.cu = and i16 %i.ct, %.sroa.05.0.i34.i.i.i.i.i.i, !dbg !138716 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.cu, 0, !dbg !138648
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !138651

bb.k:                                             ; preds = %._crit_edge.split.i.i.i.i.i.i
  %i.cv = add i64 %.sroa.011.0.i.i.i.i.i.i.i, 16, !dbg !138660 ; 2 uses
  %i.cw = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.cv, !dbg !138662
  br label %.split39.i.i.i.i.i.i, !dbg !138663

.loopexit.i.i.i.i:                                ; preds = %.split.i.i.i.i.i.i, %_RNCINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB8_8RawTableTNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0CsfcROwRM8ZtH_11polars_plan.exit.us.us.i.i.i.i.i.i
  %i.cx = load i64, ptr %i.s, align 8, !dbg !138726, !alias.scope !138731, !noalias !138532, !noundef !13 ; 3 uses
  %i.cy = load i64, ptr %i.c, align 8, !dbg !138734, !range !38010, !alias.scope !138731, !noalias !138532, !noundef !13
  %i.cz = icmp eq i64 %i.cx, %i.cy, !dbg !138737
  br i1 %i.cz, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !138737

select.unfold.i.i.i.i:                            ; preds = %._crit_edge.split.i.i.i.i.i.i, %._crit_edge.split.us.us.i.i.i.i.i.i, %bb.f
  %i.da = load i64, ptr %i.s, align 8, !dbg !138738, !alias.scope !138741, !noalias !138532, !noundef !13 ; 3 uses
  %i.db = load i64, ptr %i.c, align 8, !dbg !138744, !range !38010, !alias.scope !138741, !noalias !138532, !noundef !13
  %i.dc = icmp eq i64 %i.da, %i.db, !dbg !138747
  br i1 %i.dc, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !138747

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i: ; preds = %select.unfold.i.i.i.i, %.loopexit.i.i.i.i
  %.sink28.ph.i = phi i64 [ %i.cx, %.loopexit.i.i.i.i ], [ %i.da, %select.unfold.i.i.i.i ]
  %.sink.ph.i = phi i8 [ 1, %.loopexit.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ]
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmbEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.c, !dbg !138748

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, %select.unfold.i.i.i.i, %.loopexit.i.i.i.i
  %.sink28.i = phi i64 [ %i.cx, %.loopexit.i.i.i.i ], [ %i.da, %select.unfold.i.i.i.i ], [ %.sink28.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i ] ; 2 uses
  %.sink.i = phi i8 [ 1, %.loopexit.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ], [ %.sink.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i ]
  %i.dd = load ptr, ptr %i.r, align 8, !dbg !138751, !noalias !138532, !nonnull !13, !noundef !13
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.sink28.i, !dbg !138756 ; 2 uses
  store i32 %i.ag, ptr %i.de, align 4, !dbg !138758, !noalias !138532
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4, !dbg !138758
  store i8 %.sink.i, ptr %i.df, align 4, !dbg !138758, !noalias !138532
  %storemerge.i = add i64 %.sink28.i, 1, !dbg !138760
  store i64 %storemerge.i, ptr %i.s, align 8, !dbg !138760, !noalias !138532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !138761, !noalias !138532
  %i.dg = add nuw i64 %i.ad, 1, !dbg !138762      ; 2 uses
  %i.dh = icmp eq i64 %i.dg, %i.f, !dbg !138764
  br i1 %i.dh, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1L_8adapters9enumerateINtB2A_9EnumeratepEB1F_4fold9enumerateRBQ_uNCINvNvB1F_8for_each4callTjB3D_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB3D_RSBQ_E00E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.f, !dbg !138764

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1L_8adapters9enumerateINtB2A_9EnumeratepEB1F_4fold9enumerateRBQ_uNCINvNvB1F_8for_each4callTjB3D_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB3D_RSBQ_E00E0E0ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs2mZqlW55729_12polars_utils7hashing9BytesHashuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSB22_E00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !138765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !138507
  ret void, !dbg !138766

bb.l:                                             ; preds = %bb.c
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !138767
  unreachable, !dbg !138767

bb.m:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.o, !dbg !138767
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRdRSdE0CsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !138768 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = load ptr, ptr %2, align 8, !dbg !138769, !nonnull !13, !align !478, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !138769
  %i.f = load i64, ptr %i.e, align 8, !dbg !138769, !noundef !13 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !138770
  %i.h = load i64, ptr %i.g, align 8, !dbg !138770, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !138771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !138775
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !dbg !138775
  %i.i = load i64, ptr %i.b, align 8, !dbg !138775, !range !39786, !noundef !13
  %i.j = trunc nuw i64 %i.i to i1, !dbg !138784
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !138785
  %i.l = load i64, ptr %i.k, align 8, !dbg !138785, !range !38593, !noundef !13 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !138785 ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.d, !dbg !138784, !prof !261

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !dbg !138786
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #45, !dbg !138787
  unreachable

bb.c:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmbEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.c) #46
          to label %bb.m unwind label %bb.l, !dbg !138789

bb.d:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.m, align 8, !dbg !138790, !nonnull !13, !noundef !13
  %i.q = icmp samesign ule i64 %i.f, %i.l, !dbg !138791
  tail call void @llvm.assume(i1 %i.q), !dbg !138795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !138798
  store i64 %i.l, ptr %i.c, align 8, !dbg !138799
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !138799 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8, !dbg !138799
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !138799 ; 4 uses
  store i64 0, ptr %i.s, align 8, !dbg !138799
  %i.t = icmp eq i64 %i.f, 0, !dbg !138800
  br i1 %i.t, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRduNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSdE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.e, !dbg !138812

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !138813
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.v, align 8, !noalias !138814, !nonnull !13, !noundef !13
  %i.y = load i64, ptr %i.w, align 8, !noalias !138814, !noundef !13
  %i.z = load i64, ptr %i.u, align 8, !noalias !138814, !noundef !13
  %i.aa = zext i64 %i.z to i128
  br label %bb.f, !dbg !138824

bb.f:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.e
  %i.ab = phi i64 [ 0, %bb.e ], [ %storemerge.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ]
  %i.ac = phi i64 [ 0, %bb.e ], [ %i.cf, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ac, !dbg !138828
  %.val.i = load double, ptr %i.ad, align 8, !dbg !138832, !alias.scope !138833, !noalias !138836, !noundef !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !138838, !noalias !138814
  store double %.val.i, ptr %i.a, align 8, !dbg !138846, !noalias !138814
  %i.ae = add i64 %i.ac, %i.h, !dbg !138847
  %i.af = trunc i64 %i.ae to i32, !dbg !138847
  %i.ag = fadd double %.val.i, 0.000000e+00, !dbg !138849
  %i.ah = fcmp uno double %.val.i, 0.000000e+00, !dbg !138858 ; 2 uses
  %i.ai = bitcast double %i.ag to i64, !dbg !138862
  %i.aj = mul i64 %i.ai, 6195824352614963433, !dbg !138865
  %i.ak = zext i64 %i.aj to i128, !dbg !138871
  %i.al = select i1 %i.ah, i128 13310388698693500928, i128 %i.ak, !dbg !138874
  %i.am = mul nuw i128 %i.al, %i.aa, !dbg !138875
  %i.an = lshr i128 %i.am, 64, !dbg !138876
  %i.ao = trunc nuw i128 %i.an to i64, !dbg !138876 ; 2 uses
  %i.ap = icmp ugt i64 %i.y, %i.ao, !dbg !138877
  call void @llvm.assume(i1 %i.ap), !dbg !138882
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.ao, !dbg !138883 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24, !dbg !138884
  %i.as = load i64, ptr %i.ar, align 8, !dbg !138884, !alias.scope !138894, !noalias !138897, !noundef !13
  %i.at = icmp eq i64 %i.as, 0, !dbg !138899
  br i1 %i.at, label %select.unfold.i.i.i.i, label %bb.g, !dbg !138899

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 32, !dbg !138900
  %i.av = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapdEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.c, !dbg !138901 ; 2 uses

.noexc:                                           ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !138904), !dbg !138907
  call void @llvm.experimental.noalias.scope.decl(metadata !138911), !dbg !138914
  %i.aw = lshr i64 %i.av, 57, !dbg !138917
  %i.ax = trunc nuw nsw i64 %i.aw to i8, !dbg !138920
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 8, !dbg !138921
  %i.az = load i64, ptr %i.ay, align 8, !dbg !138921, !alias.scope !138923, !noalias !138924, !noundef !13 ; 2 uses
  %i.ba = load ptr, ptr %i.aq, align 8, !alias.scope !138923, !noalias !138924, !nonnull !13, !noundef !13 ; 2 uses
  %i.bb = insertelement <16 x i8> poison, i8 %i.ax, i64 0
  %i.bc = shufflevector <16 x i8> %i.bb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h, !dbg !138927

bb.h:                                             ; preds = %bb.j, %.noexc
  %.sroa.011.0.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.bu, %bb.j ], !dbg !138928
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.av, %.noexc ], [ %i.bv, %bb.j ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.az, !dbg !138928 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sroa.01.0.i.i.i.i.i.i.i, !dbg !138929
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.bd, align 1, !dbg !138932, !noalias !138936 ; 2 uses
  %i.be = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %i.bc, !dbg !138939
  %i.bf = bitcast <16 x i1> %i.be to i16, !dbg !138942 ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.bf, 0, !dbg !138944
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !138947

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %bb.i
  %.sroa.05.0.i33.i.i.i.i.i.i = phi i16 [ %i.bt, %bb.i ], [ %i.bf, %bb.h ] ; 3 uses
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i.i.i.i.i, i1 true), !dbg !138948
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !138951
  %i.bi = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bh, !dbg !138952
  %i.bj = and i64 %i.bi, %i.az, !dbg !138952
  %i.bk = sub nsw i64 0, %i.bj, !dbg !138953
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bk, !dbg !138962
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8, !dbg !138963
  %.val2.i.i.i.i.i.i.i = load double, ptr %i.bm, align 8, !dbg !138969, !noalias !138970 ; 2 uses
  %i.bn = fcmp uno double %.val2.i.i.i.i.i.i.i, 0.000000e+00, !dbg !138973
  %i.bo = fcmp oeq double %.val.i, %.val2.i.i.i.i.i.i.i, !dbg !138973
  %.sroa.0.0.in.i.i.i.i.i.i.i.i.i.i = select i1 %i.ah, i1 %i.bn, i1 %i.bo, !dbg !138973
  br i1 %.sroa.0.0.in.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.i, !dbg !138979, !prof !1152

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.i, %bb.h
  %i.bp = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1), !dbg !138981
  %i.bq = bitcast <16 x i1> %i.bp to i16, !dbg !138985
  %i.br = icmp eq i16 %i.bq, 0, !dbg !138987
  br i1 %i.br, label %bb.j, label %select.unfold.i.i.i.i.loopexit, !dbg !138987, !prof !261

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bs = add i16 %.sroa.05.0.i33.i.i.i.i.i.i, -1, !dbg !138989
  %i.bt = and i16 %i.bs, %.sroa.05.0.i33.i.i.i.i.i.i, !dbg !138991 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.bt, 0, !dbg !138944
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !138947

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bu = add i64 %.sroa.011.0.i.i.i.i.i.i.i, 16, !dbg !138993 ; 2 uses
  %i.bv = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bu, !dbg !138995
  br label %bb.h, !dbg !138927

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bw = load i64, ptr %i.s, align 8, !dbg !138996, !alias.scope !139001, !noalias !138814, !noundef !13 ; 3 uses
  %i.bx = load i64, ptr %i.c, align 8, !dbg !139004, !range !38010, !alias.scope !139001, !noalias !138814, !noundef !13
  %i.by = icmp eq i64 %i.bw, %i.bx, !dbg !139007
  br i1 %i.by, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !139007

select.unfold.i.i.i.i.loopexit:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %.pre = load i64, ptr %i.s, align 8, !dbg !139008, !alias.scope !139011, !noalias !138814
  br label %select.unfold.i.i.i.i, !dbg !139008

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i.loopexit, %bb.f
  %i.bz = phi i64 [ %.pre, %select.unfold.i.i.i.i.loopexit ], [ %i.ab, %bb.f ], !dbg !139008 ; 3 uses
  %i.ca = load i64, ptr %i.c, align 8, !dbg !139014, !range !38010, !alias.scope !139011, !noalias !138814, !noundef !13
  %i.cb = icmp eq i64 %i.bz, %i.ca, !dbg !139017
  br i1 %i.cb, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !139017

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i: ; preds = %select.unfold.i.i.i.i, %bb.k
  %.sink18.ph.i = phi i64 [ %i.bw, %bb.k ], [ %i.bz, %select.unfold.i.i.i.i ]
  %.sink.ph.i = phi i8 [ 1, %bb.k ], [ 0, %select.unfold.i.i.i.i ]
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmbEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.c, !dbg !139018

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, %select.unfold.i.i.i.i, %bb.k
  %.sink18.i = phi i64 [ %i.bw, %bb.k ], [ %i.bz, %select.unfold.i.i.i.i ], [ %.sink18.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i ] ; 2 uses
  %.sink.i = phi i8 [ 1, %bb.k ], [ 0, %select.unfold.i.i.i.i ], [ %.sink.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i ]
  %i.cc = load ptr, ptr %i.r, align 8, !dbg !139021, !noalias !138814, !nonnull !13, !noundef !13
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.sink18.i, !dbg !139026 ; 2 uses
  store i32 %i.af, ptr %i.cd, align 4, !dbg !139028, !noalias !138814
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4, !dbg !139028
  store i8 %.sink.i, ptr %i.ce, align 4, !dbg !139028, !noalias !138814
  %storemerge.i = add i64 %.sink18.i, 1, !dbg !139030 ; 2 uses
  store i64 %storemerge.i, ptr %i.s, align 8, !dbg !139030, !noalias !138814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !139031, !noalias !138814
  %i.cf = add nuw i64 %i.ac, 1, !dbg !139032      ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.f, !dbg !139034
  br i1 %i.cg, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRduNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSdE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.f, !dbg !139034

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRduNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSdE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRduNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSdE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !139035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !138789
  ret void, !dbg !139036

bb.l:                                             ; preds = %bb.c
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !139037
  unreachable, !dbg !139037

bb.m:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.o, !dbg !139037
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRfRSfE0CsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !139038 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = load ptr, ptr %2, align 8, !dbg !139039, !nonnull !13, !align !63583, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !139039
  %i.f = load i64, ptr %i.e, align 8, !dbg !139039, !noundef !13 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !139040
  %i.h = load i64, ptr %i.g, align 8, !dbg !139040, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !139041
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !139045
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !dbg !139045
  %i.i = load i64, ptr %i.b, align 8, !dbg !139045, !range !39786, !noundef !13
  %i.j = trunc nuw i64 %i.i to i1, !dbg !139054
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !139055
  %i.l = load i64, ptr %i.k, align 8, !dbg !139055, !range !38593, !noundef !13 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !139055 ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.d, !dbg !139054, !prof !261

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !dbg !139056
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #45, !dbg !139057
  unreachable

bb.c:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRfuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSfE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmbEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.c) #46
          to label %bb.m unwind label %bb.l, !dbg !139059

bb.d:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.m, align 8, !dbg !139060, !nonnull !13, !noundef !13
  %i.q = icmp samesign ule i64 %i.f, %i.l, !dbg !139061
  tail call void @llvm.assume(i1 %i.q), !dbg !139065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !139068
  store i64 %i.l, ptr %i.c, align 8, !dbg !139069
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !139069 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8, !dbg !139069
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !139069 ; 4 uses
  store i64 0, ptr %i.s, align 8, !dbg !139069
  %i.t = icmp eq i64 %i.f, 0, !dbg !139070
  br i1 %i.t, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRfuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSfE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.e, !dbg !139082

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !139083
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.v, align 8, !noalias !139084, !nonnull !13, !noundef !13
  %i.y = load i64, ptr %i.w, align 8, !noalias !139084, !noundef !13
  %i.z = load i64, ptr %i.u, align 8, !noalias !139084, !noundef !13
  %i.aa = zext i64 %i.z to i128
  br label %bb.f, !dbg !139094

bb.f:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRfuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSfE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.e
  %i.ab = phi i64 [ 0, %bb.e ], [ %storemerge.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRfuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSfE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ]
  %i.ac = phi i64 [ 0, %bb.e ], [ %i.cg, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRfuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSfE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ac, !dbg !139098
  %.val.i = load float, ptr %i.ad, align 4, !dbg !139102, !alias.scope !139103, !noalias !139106, !noundef !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !139108, !noalias !139084
  store float %.val.i, ptr %i.a, align 4, !dbg !139116, !noalias !139084
  %i.ae = add i64 %i.ac, %i.h, !dbg !139117
  %i.af = trunc i64 %i.ae to i32, !dbg !139117
  %i.ag = fadd float %.val.i, 0.000000e+00, !dbg !139119
  %i.ah = fcmp uno float %.val.i, 0.000000e+00, !dbg !139128 ; 2 uses
  %i.ai = bitcast float %i.ag to i32, !dbg !139132
  %i.aj = zext i32 %i.ai to i64, !dbg !139135
  %i.ak = mul i64 %i.aj, 6195824352614963433, !dbg !139139
  %i.al = zext i64 %i.ak to i128, !dbg !139142
  %i.am = select i1 %i.ah, i128 11757516945845387264, i128 %i.al, !dbg !139145
  %i.an = mul nuw i128 %i.am, %i.aa, !dbg !139146
  %i.ao = lshr i128 %i.an, 64, !dbg !139147
  %i.ap = trunc nuw i128 %i.ao to i64, !dbg !139147 ; 2 uses
  %i.aq = icmp ugt i64 %i.y, %i.ap, !dbg !139148
  call void @llvm.assume(i1 %i.aq), !dbg !139153
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.ap, !dbg !139154 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24, !dbg !139155
  %i.at = load i64, ptr %i.as, align 8, !dbg !139155, !alias.scope !139165, !noalias !139168, !noundef !13
  %i.au = icmp eq i64 %i.at, 0, !dbg !139170
  br i1 %i.au, label %select.unfold.i.i.i.i, label %bb.g, !dbg !139170

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32, !dbg !139171
  %i.aw = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRINtNtCs2mZqlW55729_12polars_utils9total_ord12TotalOrdWrapfEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.c, !dbg !139172 ; 2 uses

.noexc:                                           ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !139175), !dbg !139178
  call void @llvm.experimental.noalias.scope.decl(metadata !139182), !dbg !139185
  %i.ax = lshr i64 %i.aw, 57, !dbg !139188
  %i.ay = trunc nuw nsw i64 %i.ax to i8, !dbg !139191
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !139192
  %i.ba = load i64, ptr %i.az, align 8, !dbg !139192, !alias.scope !139194, !noalias !139195, !noundef !13 ; 2 uses
  %i.bb = load ptr, ptr %i.ar, align 8, !alias.scope !139194, !noalias !139195, !nonnull !13, !noundef !13 ; 2 uses
  %i.bc = insertelement <16 x i8> poison, i8 %i.ay, i64 0
  %i.bd = shufflevector <16 x i8> %i.bc, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h, !dbg !139198

bb.h:                                             ; preds = %bb.j, %.noexc
  %.sroa.011.0.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.bv, %bb.j ], !dbg !139199
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.aw, %.noexc ], [ %i.bw, %bb.j ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.ba, !dbg !139199 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.01.0.i.i.i.i.i.i.i, !dbg !139200
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.be, align 1, !dbg !139203, !noalias !139207 ; 2 uses
  %i.bf = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %i.bd, !dbg !139210
  %i.bg = bitcast <16 x i1> %i.bf to i16, !dbg !139213 ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.bg, 0, !dbg !139215
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !139218

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %bb.i
  %.sroa.05.0.i33.i.i.i.i.i.i = phi i16 [ %i.bu, %bb.i ], [ %i.bg, %bb.h ] ; 3 uses
  %i.bh = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i.i.i.i.i, i1 true), !dbg !139219
  %i.bi = zext nneg i16 %i.bh to i64, !dbg !139222
  %i.bj = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bi, !dbg !139223
  %i.bk = and i64 %i.bj, %i.ba, !dbg !139223
  %i.bl = sub nsw i64 0, %i.bk, !dbg !139224
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bl, !dbg !139233
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -4, !dbg !139234
  %.val2.i.i.i.i.i.i.i = load float, ptr %i.bn, align 4, !dbg !139240, !noalias !139241 ; 2 uses
  %i.bo = fcmp uno float %.val2.i.i.i.i.i.i.i, 0.000000e+00, !dbg !139244
  %i.bp = fcmp oeq float %.val.i, %.val2.i.i.i.i.i.i.i, !dbg !139244
  %.sroa.0.0.in.i.i.i.i.i.i.i.i.i.i = select i1 %i.ah, i1 %i.bo, i1 %i.bp, !dbg !139244
  br i1 %.sroa.0.0.in.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.i, !dbg !139250, !prof !1152

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.i, %bb.h
  %i.bq = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1), !dbg !139252
  %i.br = bitcast <16 x i1> %i.bq to i16, !dbg !139256
  %i.bs = icmp eq i16 %i.br, 0, !dbg !139258
  br i1 %i.bs, label %bb.j, label %select.unfold.i.i.i.i.loopexit, !dbg !139258, !prof !261

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bt = add i16 %.sroa.05.0.i33.i.i.i.i.i.i, -1, !dbg !139260
  %i.bu = and i16 %i.bt, %.sroa.05.0.i33.i.i.i.i.i.i, !dbg !139262 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.bu, 0, !dbg !139215
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !139218

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bv = add i64 %.sroa.011.0.i.i.i.i.i.i.i, 16, !dbg !139264 ; 2 uses
  %i.bw = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bv, !dbg !139266
  br label %bb.h, !dbg !139198

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bx = load i64, ptr %i.s, align 8, !dbg !139267, !alias.scope !139272, !noalias !139084, !noundef !13 ; 3 uses
  %i.by = load i64, ptr %i.c, align 8, !dbg !139275, !range !38010, !alias.scope !139272, !noalias !139084, !noundef !13
  %i.bz = icmp eq i64 %i.bx, %i.by, !dbg !139278
  br i1 %i.bz, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRfuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSfE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRfuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSfE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !139278

select.unfold.i.i.i.i.loopexit:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %.pre = load i64, ptr %i.s, align 8, !dbg !139279, !alias.scope !139282, !noalias !139084
  br label %select.unfold.i.i.i.i, !dbg !139279

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i.loopexit, %bb.f
  %i.ca = phi i64 [ %.pre, %select.unfold.i.i.i.i.loopexit ], [ %i.ab, %bb.f ], !dbg !139279 ; 3 uses
  %i.cb = load i64, ptr %i.c, align 8, !dbg !139285, !range !38010, !alias.scope !139282, !noalias !139084, !noundef !13
  %i.cc = icmp eq i64 %i.ca, %i.cb, !dbg !139288
  br i1 %i.cc, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRfuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSfE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRfuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSfE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !139288

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRfuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSfE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i: ; preds = %select.unfold.i.i.i.i, %bb.k
  %.sink18.ph.i = phi i64 [ %i.bx, %bb.k ], [ %i.ca, %select.unfold.i.i.i.i ]
  %.sink.ph.i = phi i8 [ 1, %bb.k ], [ 0, %select.unfold.i.i.i.i ]
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmbEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRfuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSfE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.c, !dbg !139289

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRfuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSfE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRfuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSfE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, %select.unfold.i.i.i.i, %bb.k
  %.sink18.i = phi i64 [ %i.bx, %bb.k ], [ %i.ca, %select.unfold.i.i.i.i ], [ %.sink18.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRfuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSfE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i ] ; 2 uses
  %.sink.i = phi i8 [ 1, %bb.k ], [ 0, %select.unfold.i.i.i.i ], [ %.sink.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRfuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSfE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i ]
  %i.cd = load ptr, ptr %i.r, align 8, !dbg !139292, !noalias !139084, !nonnull !13, !noundef !13
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.sink18.i, !dbg !139297 ; 2 uses
  store i32 %i.af, ptr %i.ce, align 4, !dbg !139299, !noalias !139084
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4, !dbg !139299
  store i8 %.sink.i, ptr %i.cf, align 4, !dbg !139299, !noalias !139084
  %storemerge.i = add i64 %.sink18.i, 1, !dbg !139301 ; 2 uses
  store i64 %storemerge.i, ptr %i.s, align 8, !dbg !139301, !noalias !139084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !139302, !noalias !139084
  %i.cg = add nuw i64 %i.ac, 1, !dbg !139303      ; 2 uses
  %i.ch = icmp eq i64 %i.cg, %i.f, !dbg !139305
  br i1 %i.ch, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRfuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSfE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.f, !dbg !139305

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRfuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSfE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRfuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSfE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !139306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !139059
  ret void, !dbg !139307

bb.l:                                             ; preds = %bb.c
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !139308
  unreachable, !dbg !139308

bb.m:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.o, !dbg !139308
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRhRShE0CsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !139309 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = load ptr, ptr %2, align 8, !dbg !139310, !nonnull !13, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !139310
  %i.f = load i64, ptr %i.e, align 8, !dbg !139310, !noundef !13 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !139311
  %i.h = load i64, ptr %i.g, align 8, !dbg !139311, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !139312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !139316
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !dbg !139316
  %i.i = load i64, ptr %i.b, align 8, !dbg !139316, !range !39786, !noundef !13
  %i.j = trunc nuw i64 %i.i to i1, !dbg !139325
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !139326
  %i.l = load i64, ptr %i.k, align 8, !dbg !139326, !range !38593, !noundef !13 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !139326 ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.d, !dbg !139325, !prof !261

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !dbg !139327
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #45, !dbg !139328
  unreachable

bb.c:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RShE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmbEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.c) #46
          to label %bb.m unwind label %bb.l, !dbg !139330

bb.d:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.m, align 8, !dbg !139331, !nonnull !13, !noundef !13
  %i.q = icmp ule i64 %i.f, %i.l, !dbg !139332
  tail call void @llvm.assume(i1 %i.q), !dbg !139336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !139339
  store i64 %i.l, ptr %i.c, align 8, !dbg !139340
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !139340 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8, !dbg !139340
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !139340 ; 4 uses
  store i64 0, ptr %i.s, align 8, !dbg !139340
  %i.t = icmp samesign eq i64 %i.f, 0, !dbg !139341
  br i1 %i.t, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRhuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RShE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.e, !dbg !139353

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !139354
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.v, align 8, !noalias !139355, !nonnull !13, !noundef !13
  %i.y = load i64, ptr %i.w, align 8, !noalias !139355, !noundef !13
  %i.z = load i64, ptr %i.u, align 8, !noalias !139355, !noundef !13
  %i.aa = zext i64 %i.z to i128
  br label %bb.f, !dbg !139365

bb.f:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RShE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.e
  %i.ab = phi i64 [ 0, %bb.e ], [ %storemerge.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RShE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ]
  %i.ac = phi i64 [ 0, %bb.e ], [ %i.cb, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RShE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ac, !dbg !139369
  %.val.i = load i8, ptr %i.ad, align 1, !dbg !139373, !alias.scope !139374, !noalias !139377, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !139379, !noalias !139355
  store i8 %.val.i, ptr %i.a, align 1, !dbg !139387, !noalias !139355
  %i.ae = add i64 %i.ac, %i.h, !dbg !139388
  %i.af = trunc i64 %i.ae to i32, !dbg !139388
  %i.ag = zext i8 %.val.i to i64, !dbg !139390
  %i.ah = mul i64 %i.ag, 6195824352614963433, !dbg !139395
  %i.ai = zext i64 %i.ah to i128, !dbg !139398
  %i.aj = mul nuw i128 %i.aa, %i.ai, !dbg !139401
  %i.ak = lshr i128 %i.aj, 64, !dbg !139402
  %i.al = trunc nuw i128 %i.ak to i64, !dbg !139402 ; 2 uses
  %i.am = icmp ugt i64 %i.y, %i.al, !dbg !139403
  call void @llvm.assume(i1 %i.am), !dbg !139408
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.al, !dbg !139409 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24, !dbg !139410
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !139410, !alias.scope !139420, !noalias !139423, !noundef !13
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !139425
  br i1 %i.aq, label %select.unfold.i.i.i.i, label %bb.g, !dbg !139425

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 32, !dbg !139426
  %i.as = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRhECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a)
          to label %.noexc unwind label %bb.c, !dbg !139427 ; 2 uses

.noexc:                                           ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !139430), !dbg !139433
  call void @llvm.experimental.noalias.scope.decl(metadata !139437), !dbg !139440
  %i.at = lshr i64 %i.as, 57, !dbg !139443
  %i.au = trunc nuw nsw i64 %i.at to i8, !dbg !139446
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !139447
  %i.aw = load i64, ptr %i.av, align 8, !dbg !139447, !alias.scope !139449, !noalias !139450, !noundef !13 ; 2 uses
  %i.ax = load ptr, ptr %i.an, align 8, !alias.scope !139449, !noalias !139450, !nonnull !13, !noundef !13 ; 2 uses
  %i.ay = insertelement <16 x i8> poison, i8 %i.au, i64 0
  %i.az = shufflevector <16 x i8> %i.ay, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h, !dbg !139453

bb.h:                                             ; preds = %bb.j, %.noexc
  %.sroa.011.0.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.bq, %bb.j ], !dbg !139454
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.as, %.noexc ], [ %i.br, %bb.j ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.aw, !dbg !139454 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.01.0.i.i.i.i.i.i.i, !dbg !139455
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.ba, align 1, !dbg !139458, !noalias !139462 ; 2 uses
  %i.bb = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %i.az, !dbg !139465
  %i.bc = bitcast <16 x i1> %i.bb to i16, !dbg !139468 ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.bc, 0, !dbg !139470
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !139473

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %bb.i
  %.sroa.05.0.i33.i.i.i.i.i.i = phi i16 [ %i.bp, %bb.i ], [ %i.bc, %bb.h ] ; 3 uses
  %i.bd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i.i.i.i.i, i1 true), !dbg !139474
  %i.be = zext nneg i16 %i.bd to i64, !dbg !139477
  %i.bf = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.be, !dbg !139478
  %i.bg = and i64 %i.bf, %i.aw, !dbg !139478
  %i.bh = sub nsw i64 0, %i.bg, !dbg !139479
  %i.bi = getelementptr inbounds i8, ptr %i.ax, i64 %i.bh, !dbg !139488
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -1, !dbg !139489
  %.val2.i.i.i.i.i.i.i = load i8, ptr %i.bj, align 1, !dbg !139495, !noalias !139496, !noundef !13
  %i.bk = icmp eq i8 %.val.i, %.val2.i.i.i.i.i.i.i, !dbg !139499
  br i1 %i.bk, label %bb.k, label %bb.i, !dbg !139504, !prof !1152

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.i, %bb.h
  %i.bl = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1), !dbg !139506
  %i.bm = bitcast <16 x i1> %i.bl to i16, !dbg !139510
  %i.bn = icmp eq i16 %i.bm, 0, !dbg !139512
  br i1 %i.bn, label %bb.j, label %select.unfold.i.i.i.i.loopexit, !dbg !139512, !prof !261

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bo = add i16 %.sroa.05.0.i33.i.i.i.i.i.i, -1, !dbg !139514
  %i.bp = and i16 %i.bo, %.sroa.05.0.i33.i.i.i.i.i.i, !dbg !139516 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.bp, 0, !dbg !139470
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !139473

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bq = add i64 %.sroa.011.0.i.i.i.i.i.i.i, 16, !dbg !139518 ; 2 uses
  %i.br = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bq, !dbg !139520
  br label %bb.h, !dbg !139453

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bs = load i64, ptr %i.s, align 8, !dbg !139521, !alias.scope !139526, !noalias !139355, !noundef !13 ; 3 uses
  %i.bt = load i64, ptr %i.c, align 8, !dbg !139529, !range !38010, !alias.scope !139526, !noalias !139355, !noundef !13
  %i.bu = icmp eq i64 %i.bs, %i.bt, !dbg !139532
  br i1 %i.bu, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RShE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RShE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !139532

select.unfold.i.i.i.i.loopexit:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %.pre = load i64, ptr %i.s, align 8, !dbg !139533, !alias.scope !139536, !noalias !139355
  br label %select.unfold.i.i.i.i, !dbg !139533

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i.loopexit, %bb.f
  %i.bv = phi i64 [ %.pre, %select.unfold.i.i.i.i.loopexit ], [ %i.ab, %bb.f ], !dbg !139533 ; 3 uses
  %i.bw = load i64, ptr %i.c, align 8, !dbg !139539, !range !38010, !alias.scope !139536, !noalias !139355, !noundef !13
  %i.bx = icmp eq i64 %i.bv, %i.bw, !dbg !139542
  br i1 %i.bx, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RShE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RShE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !139542

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RShE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i: ; preds = %select.unfold.i.i.i.i, %bb.k
  %.sink18.ph.i = phi i64 [ %i.bs, %bb.k ], [ %i.bv, %select.unfold.i.i.i.i ]
  %.sink.ph.i = phi i8 [ 1, %bb.k ], [ 0, %select.unfold.i.i.i.i ]
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmbEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RShE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.c, !dbg !139543

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RShE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RShE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, %select.unfold.i.i.i.i, %bb.k
  %.sink18.i = phi i64 [ %i.bs, %bb.k ], [ %i.bv, %select.unfold.i.i.i.i ], [ %.sink18.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RShE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i ] ; 2 uses
  %.sink.i = phi i8 [ 1, %bb.k ], [ 0, %select.unfold.i.i.i.i ], [ %.sink.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RShE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i ]
  %i.by = load ptr, ptr %i.r, align 8, !dbg !139546, !noalias !139355, !nonnull !13, !noundef !13
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sink18.i, !dbg !139551 ; 2 uses
  store i32 %i.af, ptr %i.bz, align 4, !dbg !139553, !noalias !139355
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4, !dbg !139553
  store i8 %.sink.i, ptr %i.ca, align 4, !dbg !139553, !noalias !139355
  %storemerge.i = add i64 %.sink18.i, 1, !dbg !139555 ; 2 uses
  store i64 %storemerge.i, ptr %i.s, align 8, !dbg !139555, !noalias !139355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !139556, !noalias !139355
  %i.cb = add nuw i64 %i.ac, 1, !dbg !139557      ; 2 uses
  %i.cc = icmp eq i64 %i.cb, %i.f, !dbg !139559
  br i1 %i.cc, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRhuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RShE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.f, !dbg !139559

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRhuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RShE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRhuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RShE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !139560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !139330
  ret void, !dbg !139561

bb.l:                                             ; preds = %bb.c
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !139562
  unreachable, !dbg !139562

bb.m:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.o, !dbg !139562
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRmRSmE0CsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !139563 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = load ptr, ptr %2, align 8, !dbg !139564, !nonnull !13, !align !63583, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !139564
  %i.f = load i64, ptr %i.e, align 8, !dbg !139564, !noundef !13 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !139565
  %i.h = load i64, ptr %i.g, align 8, !dbg !139565, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !139566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !139570
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !dbg !139570
  %i.i = load i64, ptr %i.b, align 8, !dbg !139570, !range !39786, !noundef !13
  %i.j = trunc nuw i64 %i.i to i1, !dbg !139579
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !139580
  %i.l = load i64, ptr %i.k, align 8, !dbg !139580, !range !38593, !noundef !13 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !139580 ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.d, !dbg !139579, !prof !261

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !dbg !139581
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #45, !dbg !139582
  unreachable

bb.c:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSmE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmbEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.c) #46
          to label %bb.m unwind label %bb.l, !dbg !139584

bb.d:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.m, align 8, !dbg !139585, !nonnull !13, !noundef !13
  %i.q = icmp samesign ule i64 %i.f, %i.l, !dbg !139586
  tail call void @llvm.assume(i1 %i.q), !dbg !139590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !139593
  store i64 %i.l, ptr %i.c, align 8, !dbg !139594
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !139594 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8, !dbg !139594
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !139594 ; 4 uses
  store i64 0, ptr %i.s, align 8, !dbg !139594
  %i.t = icmp eq i64 %i.f, 0, !dbg !139595
  br i1 %i.t, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRmuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSmE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.e, !dbg !139607

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !139608
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.v, align 8, !noalias !139609, !nonnull !13, !noundef !13
  %i.y = load i64, ptr %i.w, align 8, !noalias !139609, !noundef !13
  %i.z = load i64, ptr %i.u, align 8, !noalias !139609, !noundef !13
  %i.aa = zext i64 %i.z to i128
  br label %bb.f, !dbg !139619

bb.f:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSmE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.e
  %i.ab = phi i64 [ 0, %bb.e ], [ %storemerge.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSmE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ]
  %i.ac = phi i64 [ 0, %bb.e ], [ %i.cb, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSmE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ac, !dbg !139623
  %.val.i = load i32, ptr %i.ad, align 4, !dbg !139627, !alias.scope !139628, !noalias !139631, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !139633, !noalias !139609
  store i32 %.val.i, ptr %i.a, align 4, !dbg !139641, !noalias !139609
  %i.ae = add i64 %i.ac, %i.h, !dbg !139642
  %i.af = trunc i64 %i.ae to i32, !dbg !139642
  %i.ag = zext i32 %.val.i to i64, !dbg !139644
  %i.ah = mul i64 %i.ag, 6195824352614963433, !dbg !139648
  %i.ai = zext i64 %i.ah to i128, !dbg !139651
  %i.aj = mul nuw i128 %i.aa, %i.ai, !dbg !139654
  %i.ak = lshr i128 %i.aj, 64, !dbg !139655
  %i.al = trunc nuw i128 %i.ak to i64, !dbg !139655 ; 2 uses
  %i.am = icmp ugt i64 %i.y, %i.al, !dbg !139656
  call void @llvm.assume(i1 %i.am), !dbg !139661
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.al, !dbg !139662 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24, !dbg !139663
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !139663, !alias.scope !139673, !noalias !139676, !noundef !13
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !139678
  br i1 %i.aq, label %select.unfold.i.i.i.i, label %bb.g, !dbg !139678

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 32, !dbg !139679
  %i.as = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRmECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.c, !dbg !139680 ; 2 uses

.noexc:                                           ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !139683), !dbg !139686
  call void @llvm.experimental.noalias.scope.decl(metadata !139690), !dbg !139693
  %i.at = lshr i64 %i.as, 57, !dbg !139696
  %i.au = trunc nuw nsw i64 %i.at to i8, !dbg !139699
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !139700
  %i.aw = load i64, ptr %i.av, align 8, !dbg !139700, !alias.scope !139702, !noalias !139703, !noundef !13 ; 2 uses
  %i.ax = load ptr, ptr %i.an, align 8, !alias.scope !139702, !noalias !139703, !nonnull !13, !noundef !13 ; 2 uses
  %i.ay = insertelement <16 x i8> poison, i8 %i.au, i64 0
  %i.az = shufflevector <16 x i8> %i.ay, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h, !dbg !139706

bb.h:                                             ; preds = %bb.j, %.noexc
  %.sroa.011.0.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.bq, %bb.j ], !dbg !139707
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.as, %.noexc ], [ %i.br, %bb.j ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.aw, !dbg !139707 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.01.0.i.i.i.i.i.i.i, !dbg !139708
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.ba, align 1, !dbg !139711, !noalias !139715 ; 2 uses
  %i.bb = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %i.az, !dbg !139718
  %i.bc = bitcast <16 x i1> %i.bb to i16, !dbg !139721 ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.bc, 0, !dbg !139723
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !139726

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %bb.i
  %.sroa.05.0.i33.i.i.i.i.i.i = phi i16 [ %i.bp, %bb.i ], [ %i.bc, %bb.h ] ; 3 uses
  %i.bd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i.i.i.i.i, i1 true), !dbg !139727
  %i.be = zext nneg i16 %i.bd to i64, !dbg !139730
  %i.bf = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.be, !dbg !139731
  %i.bg = and i64 %i.bf, %i.aw, !dbg !139731
  %i.bh = sub nsw i64 0, %i.bg, !dbg !139732
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.bh, !dbg !139741
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -4, !dbg !139742
  %.val2.i.i.i.i.i.i.i = load i32, ptr %i.bj, align 4, !dbg !139748, !noalias !139749, !noundef !13
  %i.bk = icmp eq i32 %.val.i, %.val2.i.i.i.i.i.i.i, !dbg !139752
  br i1 %i.bk, label %bb.k, label %bb.i, !dbg !139757, !prof !1152

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.i, %bb.h
  %i.bl = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1), !dbg !139759
  %i.bm = bitcast <16 x i1> %i.bl to i16, !dbg !139763
  %i.bn = icmp eq i16 %i.bm, 0, !dbg !139765
  br i1 %i.bn, label %bb.j, label %select.unfold.i.i.i.i.loopexit, !dbg !139765, !prof !261

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bo = add i16 %.sroa.05.0.i33.i.i.i.i.i.i, -1, !dbg !139767
  %i.bp = and i16 %i.bo, %.sroa.05.0.i33.i.i.i.i.i.i, !dbg !139769 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.bp, 0, !dbg !139723
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !139726

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bq = add i64 %.sroa.011.0.i.i.i.i.i.i.i, 16, !dbg !139771 ; 2 uses
  %i.br = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bq, !dbg !139773
  br label %bb.h, !dbg !139706

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bs = load i64, ptr %i.s, align 8, !dbg !139774, !alias.scope !139779, !noalias !139609, !noundef !13 ; 3 uses
  %i.bt = load i64, ptr %i.c, align 8, !dbg !139782, !range !38010, !alias.scope !139779, !noalias !139609, !noundef !13
  %i.bu = icmp eq i64 %i.bs, %i.bt, !dbg !139785
  br i1 %i.bu, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSmE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSmE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !139785

select.unfold.i.i.i.i.loopexit:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %.pre = load i64, ptr %i.s, align 8, !dbg !139786, !alias.scope !139789, !noalias !139609
  br label %select.unfold.i.i.i.i, !dbg !139786

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i.loopexit, %bb.f
  %i.bv = phi i64 [ %.pre, %select.unfold.i.i.i.i.loopexit ], [ %i.ab, %bb.f ], !dbg !139786 ; 3 uses
  %i.bw = load i64, ptr %i.c, align 8, !dbg !139792, !range !38010, !alias.scope !139789, !noalias !139609, !noundef !13
  %i.bx = icmp eq i64 %i.bv, %i.bw, !dbg !139795
  br i1 %i.bx, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSmE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSmE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !139795

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSmE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i: ; preds = %select.unfold.i.i.i.i, %bb.k
  %.sink18.ph.i = phi i64 [ %i.bs, %bb.k ], [ %i.bv, %select.unfold.i.i.i.i ]
  %.sink.ph.i = phi i8 [ 1, %bb.k ], [ 0, %select.unfold.i.i.i.i ]
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmbEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSmE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.c, !dbg !139796

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSmE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSmE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, %select.unfold.i.i.i.i, %bb.k
  %.sink18.i = phi i64 [ %i.bs, %bb.k ], [ %i.bv, %select.unfold.i.i.i.i ], [ %.sink18.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSmE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i ] ; 2 uses
  %.sink.i = phi i8 [ 1, %bb.k ], [ 0, %select.unfold.i.i.i.i ], [ %.sink.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSmE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i ]
  %i.by = load ptr, ptr %i.r, align 8, !dbg !139799, !noalias !139609, !nonnull !13, !noundef !13
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sink18.i, !dbg !139804 ; 2 uses
  store i32 %i.af, ptr %i.bz, align 4, !dbg !139806, !noalias !139609
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4, !dbg !139806
  store i8 %.sink.i, ptr %i.ca, align 4, !dbg !139806, !noalias !139609
  %storemerge.i = add i64 %.sink18.i, 1, !dbg !139808 ; 2 uses
  store i64 %storemerge.i, ptr %i.s, align 8, !dbg !139808, !noalias !139609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !139809, !noalias !139609
  %i.cb = add nuw i64 %i.ac, 1, !dbg !139810      ; 2 uses
  %i.cc = icmp eq i64 %i.cb, %i.f, !dbg !139812
  br i1 %i.cc, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRmuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSmE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.f, !dbg !139812

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRmuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSmE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRmuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSmE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !139813
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !139584
  ret void, !dbg !139814

bb.l:                                             ; preds = %bb.c
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !139815
  unreachable, !dbg !139815

bb.m:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.o, !dbg !139815
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRoRSoE0CsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !139816 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = load ptr, ptr %2, align 8, !dbg !139817, !nonnull !13, !align !70994, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !139817
  %i.f = load i64, ptr %i.e, align 8, !dbg !139817, !noundef !13 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !139818
  %i.h = load i64, ptr %i.g, align 8, !dbg !139818, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !139819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !139823
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !dbg !139823
  %i.i = load i64, ptr %i.b, align 8, !dbg !139823, !range !39786, !noundef !13
  %i.j = trunc nuw i64 %i.i to i1, !dbg !139832
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !139833
  %i.l = load i64, ptr %i.k, align 8, !dbg !139833, !range !38593, !noundef !13 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !139833 ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.d, !dbg !139832, !prof !261

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !dbg !139834
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #45, !dbg !139835
  unreachable

bb.c:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRouNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSoE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmbEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.c) #46
          to label %bb.m unwind label %bb.l, !dbg !139837

bb.d:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.m, align 8, !dbg !139838, !nonnull !13, !noundef !13
  %i.q = icmp samesign ule i64 %i.f, %i.l, !dbg !139839
  tail call void @llvm.assume(i1 %i.q), !dbg !139843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !139846
  store i64 %i.l, ptr %i.c, align 8, !dbg !139847
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !139847 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8, !dbg !139847
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !139847 ; 4 uses
  store i64 0, ptr %i.s, align 8, !dbg !139847
  %i.t = icmp eq i64 %i.f, 0, !dbg !139848
  br i1 %i.t, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRouNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSoE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.e, !dbg !139860

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !139861
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.v, align 8, !noalias !139862, !nonnull !13, !noundef !13
  %i.y = load i64, ptr %i.w, align 8, !noalias !139862, !noundef !13
  %i.z = load i64, ptr %i.u, align 8, !noalias !139862, !noundef !13
  %i.aa = zext i64 %i.z to i128
  br label %bb.f, !dbg !139872

bb.f:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRouNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSoE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.e
  %i.ab = phi i64 [ 0, %bb.e ], [ %storemerge.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRouNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSoE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ]
  %i.ac = phi i64 [ 0, %bb.e ], [ %i.ce, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRouNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSoE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.ac, !dbg !139876
  %.val.i = load i128, ptr %i.ad, align 16, !dbg !139880, !alias.scope !139881, !noalias !139884, !noundef !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !139886, !noalias !139862
  store i128 %.val.i, ptr %i.a, align 16, !dbg !139894, !noalias !139862
  %i.ae = add i64 %i.ac, %i.h, !dbg !139895
  %i.af = trunc i64 %i.ae to i32, !dbg !139895
  %i.ag = trunc i128 %.val.i to i64, !dbg !139897
  %i.ah = mul i64 %i.ag, 6195824352614963433, !dbg !139902
  %i.ai = lshr i128 %.val.i, 64, !dbg !139905
  %i.aj = trunc nuw i128 %i.ai to i64, !dbg !139905
  %i.ak = add i64 %i.ah, %i.aj, !dbg !139906
  %i.al = zext i64 %i.ak to i128, !dbg !139909
  %i.am = mul nuw i128 %i.aa, %i.al, !dbg !139912
  %i.an = lshr i128 %i.am, 64, !dbg !139913
  %i.ao = trunc nuw i128 %i.an to i64, !dbg !139913 ; 2 uses
  %i.ap = icmp ugt i64 %i.y, %i.ao, !dbg !139914
  call void @llvm.assume(i1 %i.ap), !dbg !139919
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.ao, !dbg !139920 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24, !dbg !139921
  %i.as = load i64, ptr %i.ar, align 8, !dbg !139921, !alias.scope !139931, !noalias !139934, !noundef !13
  %i.at = icmp eq i64 %i.as, 0, !dbg !139936
  br i1 %i.at, label %select.unfold.i.i.i.i, label %bb.g, !dbg !139936

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 32, !dbg !139937
  %i.av = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRoECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %.noexc unwind label %bb.c, !dbg !139938 ; 2 uses

.noexc:                                           ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !139941), !dbg !139944
  call void @llvm.experimental.noalias.scope.decl(metadata !139948), !dbg !139951
  %i.aw = lshr i64 %i.av, 57, !dbg !139954
  %i.ax = trunc nuw nsw i64 %i.aw to i8, !dbg !139957
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 8, !dbg !139958
  %i.az = load i64, ptr %i.ay, align 8, !dbg !139958, !alias.scope !139960, !noalias !139961, !noundef !13 ; 2 uses
  %i.ba = load ptr, ptr %i.aq, align 8, !alias.scope !139960, !noalias !139961, !nonnull !13, !noundef !13 ; 2 uses
  %i.bb = insertelement <16 x i8> poison, i8 %i.ax, i64 0
  %i.bc = shufflevector <16 x i8> %i.bb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h, !dbg !139964

bb.h:                                             ; preds = %bb.j, %.noexc
  %.sroa.011.0.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.bt, %bb.j ], !dbg !139965
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.av, %.noexc ], [ %i.bu, %bb.j ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.az, !dbg !139965 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.sroa.01.0.i.i.i.i.i.i.i, !dbg !139966
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.bd, align 1, !dbg !139969, !noalias !139973 ; 2 uses
  %i.be = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %i.bc, !dbg !139976
  %i.bf = bitcast <16 x i1> %i.be to i16, !dbg !139979 ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.bf, 0, !dbg !139981
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !139984

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %bb.i
  %.sroa.05.0.i33.i.i.i.i.i.i = phi i16 [ %i.bs, %bb.i ], [ %i.bf, %bb.h ] ; 3 uses
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i.i.i.i.i, i1 true), !dbg !139985
  %i.bh = zext nneg i16 %i.bg to i64, !dbg !139988
  %i.bi = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bh, !dbg !139989
  %i.bj = and i64 %i.bi, %i.az, !dbg !139989
  %i.bk = sub nsw i64 0, %i.bj, !dbg !139990
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.ba, i64 %i.bk, !dbg !139999
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -16, !dbg !140000
  %.val2.i.i.i.i.i.i.i = load i128, ptr %i.bm, align 16, !dbg !140006, !noalias !140007, !noundef !13
  %i.bn = icmp eq i128 %.val.i, %.val2.i.i.i.i.i.i.i, !dbg !140010
  br i1 %i.bn, label %bb.k, label %bb.i, !dbg !140015, !prof !1152

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.i, %bb.h
  %i.bo = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1), !dbg !140017
  %i.bp = bitcast <16 x i1> %i.bo to i16, !dbg !140021
  %i.bq = icmp eq i16 %i.bp, 0, !dbg !140023
  br i1 %i.bq, label %bb.j, label %select.unfold.i.i.i.i.loopexit, !dbg !140023, !prof !261

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.br = add i16 %.sroa.05.0.i33.i.i.i.i.i.i, -1, !dbg !140025
  %i.bs = and i16 %i.br, %.sroa.05.0.i33.i.i.i.i.i.i, !dbg !140027 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.bs, 0, !dbg !139981
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !139984

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bt = add i64 %.sroa.011.0.i.i.i.i.i.i.i, 16, !dbg !140029 ; 2 uses
  %i.bu = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bt, !dbg !140031
  br label %bb.h, !dbg !139964

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bv = load i64, ptr %i.s, align 8, !dbg !140032, !alias.scope !140037, !noalias !139862, !noundef !13 ; 3 uses
  %i.bw = load i64, ptr %i.c, align 8, !dbg !140040, !range !38010, !alias.scope !140037, !noalias !139862, !noundef !13
  %i.bx = icmp eq i64 %i.bv, %i.bw, !dbg !140043
  br i1 %i.bx, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRouNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSoE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRouNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSoE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !140043

select.unfold.i.i.i.i.loopexit:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %.pre = load i64, ptr %i.s, align 8, !dbg !140044, !alias.scope !140047, !noalias !139862
  br label %select.unfold.i.i.i.i, !dbg !140044

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i.loopexit, %bb.f
  %i.by = phi i64 [ %.pre, %select.unfold.i.i.i.i.loopexit ], [ %i.ab, %bb.f ], !dbg !140044 ; 3 uses
  %i.bz = load i64, ptr %i.c, align 8, !dbg !140050, !range !38010, !alias.scope !140047, !noalias !139862, !noundef !13
  %i.ca = icmp eq i64 %i.by, %i.bz, !dbg !140053
  br i1 %i.ca, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRouNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSoE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRouNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSoE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !140053

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRouNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSoE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i: ; preds = %select.unfold.i.i.i.i, %bb.k
  %.sink18.ph.i = phi i64 [ %i.bv, %bb.k ], [ %i.by, %select.unfold.i.i.i.i ]
  %.sink.ph.i = phi i8 [ 1, %bb.k ], [ 0, %select.unfold.i.i.i.i ]
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmbEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRouNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSoE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.c, !dbg !140054

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRouNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSoE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRouNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSoE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, %select.unfold.i.i.i.i, %bb.k
  %.sink18.i = phi i64 [ %i.bv, %bb.k ], [ %i.by, %select.unfold.i.i.i.i ], [ %.sink18.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRouNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSoE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i ] ; 2 uses
  %.sink.i = phi i8 [ 1, %bb.k ], [ 0, %select.unfold.i.i.i.i ], [ %.sink.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRouNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSoE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i ]
  %i.cb = load ptr, ptr %i.r, align 8, !dbg !140057, !noalias !139862, !nonnull !13, !noundef !13
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.sink18.i, !dbg !140062 ; 2 uses
  store i32 %i.af, ptr %i.cc, align 4, !dbg !140064, !noalias !139862
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4, !dbg !140064
  store i8 %.sink.i, ptr %i.cd, align 4, !dbg !140064, !noalias !139862
  %storemerge.i = add i64 %.sink18.i, 1, !dbg !140066 ; 2 uses
  store i64 %storemerge.i, ptr %i.s, align 8, !dbg !140066, !noalias !139862
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !140067, !noalias !139862
  %i.ce = add nuw i64 %i.ac, 1, !dbg !140068      ; 2 uses
  %i.cf = icmp eq i64 %i.ce, %i.f, !dbg !140070
  br i1 %i.cf, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRouNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSoE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.f, !dbg !140070

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRouNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSoE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRouNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSoE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !140071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !139837
  ret void, !dbg !140072

bb.l:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !140073
  unreachable, !dbg !140073

bb.m:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.o, !dbg !140073
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRtRStE0CsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !140074 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = load ptr, ptr %2, align 8, !dbg !140075, !nonnull !13, !align !58577, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !140075
  %i.f = load i64, ptr %i.e, align 8, !dbg !140075, !noundef !13 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !140076
  %i.h = load i64, ptr %i.g, align 8, !dbg !140076, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !140077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !140081
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !dbg !140081
  %i.i = load i64, ptr %i.b, align 8, !dbg !140081, !range !39786, !noundef !13
  %i.j = trunc nuw i64 %i.i to i1, !dbg !140090
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !140091
  %i.l = load i64, ptr %i.k, align 8, !dbg !140091, !range !38593, !noundef !13 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !140091 ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.d, !dbg !140090, !prof !261

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !dbg !140092
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #45, !dbg !140093
  unreachable

bb.c:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmbEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.c) #46
          to label %bb.m unwind label %bb.l, !dbg !140095

bb.d:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.m, align 8, !dbg !140096, !nonnull !13, !noundef !13
  %i.q = icmp samesign ule i64 %i.f, %i.l, !dbg !140097
  tail call void @llvm.assume(i1 %i.q), !dbg !140101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !140104
  store i64 %i.l, ptr %i.c, align 8, !dbg !140105
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !140105 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8, !dbg !140105
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !140105 ; 4 uses
  store i64 0, ptr %i.s, align 8, !dbg !140105
  %i.t = icmp eq i64 %i.f, 0, !dbg !140106
  br i1 %i.t, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRtuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RStE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.e, !dbg !140118

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !140119
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.v, align 8, !noalias !140120, !nonnull !13, !noundef !13
  %i.y = load i64, ptr %i.w, align 8, !noalias !140120, !noundef !13
  %i.z = load i64, ptr %i.u, align 8, !noalias !140120, !noundef !13
  %i.aa = zext i64 %i.z to i128
  br label %bb.f, !dbg !140130

bb.f:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.e
  %i.ab = phi i64 [ 0, %bb.e ], [ %storemerge.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ]
  %i.ac = phi i64 [ 0, %bb.e ], [ %i.cb, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ac, !dbg !140134
  %.val.i = load i16, ptr %i.ad, align 2, !dbg !140138, !alias.scope !140139, !noalias !140142, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !140144, !noalias !140120
  store i16 %.val.i, ptr %i.a, align 2, !dbg !140152, !noalias !140120
  %i.ae = add i64 %i.ac, %i.h, !dbg !140153
  %i.af = trunc i64 %i.ae to i32, !dbg !140153
  %i.ag = zext i16 %.val.i to i64, !dbg !140155
  %i.ah = mul i64 %i.ag, 6195824352614963433, !dbg !140159
  %i.ai = zext i64 %i.ah to i128, !dbg !140162
  %i.aj = mul nuw i128 %i.aa, %i.ai, !dbg !140165
  %i.ak = lshr i128 %i.aj, 64, !dbg !140166
  %i.al = trunc nuw i128 %i.ak to i64, !dbg !140166 ; 2 uses
  %i.am = icmp ugt i64 %i.y, %i.al, !dbg !140167
  call void @llvm.assume(i1 %i.am), !dbg !140172
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.al, !dbg !140173 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24, !dbg !140174
  %i.ap = load i64, ptr %i.ao, align 8, !dbg !140174, !alias.scope !140184, !noalias !140187, !noundef !13
  %i.aq = icmp eq i64 %i.ap, 0, !dbg !140189
  br i1 %i.aq, label %select.unfold.i.i.i.i, label %bb.g, !dbg !140189

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 32, !dbg !140190
  %i.as = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRtECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a)
          to label %.noexc unwind label %bb.c, !dbg !140191 ; 2 uses

.noexc:                                           ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !140194), !dbg !140197
  call void @llvm.experimental.noalias.scope.decl(metadata !140201), !dbg !140204
  %i.at = lshr i64 %i.as, 57, !dbg !140207
  %i.au = trunc nuw nsw i64 %i.at to i8, !dbg !140210
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !140211
  %i.aw = load i64, ptr %i.av, align 8, !dbg !140211, !alias.scope !140213, !noalias !140214, !noundef !13 ; 2 uses
  %i.ax = load ptr, ptr %i.an, align 8, !alias.scope !140213, !noalias !140214, !nonnull !13, !noundef !13 ; 2 uses
  %i.ay = insertelement <16 x i8> poison, i8 %i.au, i64 0
  %i.az = shufflevector <16 x i8> %i.ay, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h, !dbg !140217

bb.h:                                             ; preds = %bb.j, %.noexc
  %.sroa.011.0.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.bq, %bb.j ], !dbg !140218
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.as, %.noexc ], [ %i.br, %bb.j ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.aw, !dbg !140218 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.01.0.i.i.i.i.i.i.i, !dbg !140219
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.ba, align 1, !dbg !140222, !noalias !140226 ; 2 uses
  %i.bb = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %i.az, !dbg !140229
  %i.bc = bitcast <16 x i1> %i.bb to i16, !dbg !140232 ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.bc, 0, !dbg !140234
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !140237

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %bb.i
  %.sroa.05.0.i33.i.i.i.i.i.i = phi i16 [ %i.bp, %bb.i ], [ %i.bc, %bb.h ] ; 3 uses
  %i.bd = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i.i.i.i.i, i1 true), !dbg !140238
  %i.be = zext nneg i16 %i.bd to i64, !dbg !140241
  %i.bf = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.be, !dbg !140242
  %i.bg = and i64 %i.bf, %i.aw, !dbg !140242
  %i.bh = sub nsw i64 0, %i.bg, !dbg !140243
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.bh, !dbg !140252
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -2, !dbg !140253
  %.val2.i.i.i.i.i.i.i = load i16, ptr %i.bj, align 2, !dbg !140259, !noalias !140260, !noundef !13
  %i.bk = icmp eq i16 %.val.i, %.val2.i.i.i.i.i.i.i, !dbg !140263
  br i1 %i.bk, label %bb.k, label %bb.i, !dbg !140268, !prof !1152

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.i, %bb.h
  %i.bl = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1), !dbg !140270
  %i.bm = bitcast <16 x i1> %i.bl to i16, !dbg !140274
  %i.bn = icmp eq i16 %i.bm, 0, !dbg !140276
  br i1 %i.bn, label %bb.j, label %select.unfold.i.i.i.i.loopexit, !dbg !140276, !prof !261

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bo = add i16 %.sroa.05.0.i33.i.i.i.i.i.i, -1, !dbg !140278
  %i.bp = and i16 %i.bo, %.sroa.05.0.i33.i.i.i.i.i.i, !dbg !140280 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.bp, 0, !dbg !140234
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !140237

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bq = add i64 %.sroa.011.0.i.i.i.i.i.i.i, 16, !dbg !140282 ; 2 uses
  %i.br = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bq, !dbg !140284
  br label %bb.h, !dbg !140217

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bs = load i64, ptr %i.s, align 8, !dbg !140285, !alias.scope !140290, !noalias !140120, !noundef !13 ; 3 uses
  %i.bt = load i64, ptr %i.c, align 8, !dbg !140293, !range !38010, !alias.scope !140290, !noalias !140120, !noundef !13
  %i.bu = icmp eq i64 %i.bs, %i.bt, !dbg !140296
  br i1 %i.bu, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !140296

select.unfold.i.i.i.i.loopexit:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %.pre = load i64, ptr %i.s, align 8, !dbg !140297, !alias.scope !140300, !noalias !140120
  br label %select.unfold.i.i.i.i, !dbg !140297

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i.loopexit, %bb.f
  %i.bv = phi i64 [ %.pre, %select.unfold.i.i.i.i.loopexit ], [ %i.ab, %bb.f ], !dbg !140297 ; 3 uses
  %i.bw = load i64, ptr %i.c, align 8, !dbg !140303, !range !38010, !alias.scope !140300, !noalias !140120, !noundef !13
  %i.bx = icmp eq i64 %i.bv, %i.bw, !dbg !140306
  br i1 %i.bx, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !140306

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i: ; preds = %select.unfold.i.i.i.i, %bb.k
  %.sink18.ph.i = phi i64 [ %i.bs, %bb.k ], [ %i.bv, %select.unfold.i.i.i.i ]
  %.sink.ph.i = phi i8 [ 1, %bb.k ], [ 0, %select.unfold.i.i.i.i ]
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmbEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.c, !dbg !140307

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, %select.unfold.i.i.i.i, %bb.k
  %.sink18.i = phi i64 [ %i.bs, %bb.k ], [ %i.bv, %select.unfold.i.i.i.i ], [ %.sink18.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i ] ; 2 uses
  %.sink.i = phi i8 [ 1, %bb.k ], [ 0, %select.unfold.i.i.i.i ], [ %.sink.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i ]
  %i.by = load ptr, ptr %i.r, align 8, !dbg !140310, !noalias !140120, !nonnull !13, !noundef !13
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.sink18.i, !dbg !140315 ; 2 uses
  store i32 %i.af, ptr %i.bz, align 4, !dbg !140317, !noalias !140120
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4, !dbg !140317
  store i8 %.sink.i, ptr %i.ca, align 4, !dbg !140317, !noalias !140120
  %storemerge.i = add i64 %.sink18.i, 1, !dbg !140319 ; 2 uses
  store i64 %storemerge.i, ptr %i.s, align 8, !dbg !140319, !noalias !140120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !140320, !noalias !140120
  %i.cb = add nuw i64 %i.ac, 1, !dbg !140321      ; 2 uses
  %i.cc = icmp eq i64 %i.cb, %i.f, !dbg !140323
  br i1 %i.cc, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRtuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RStE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.f, !dbg !140323

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRtuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RStE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRtuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RStE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !140324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !140095
  ret void, !dbg !140325

bb.l:                                             ; preds = %bb.c
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !140326
  unreachable, !dbg !140326

bb.m:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.o, !dbg !140326
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implRyRSyE0CsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !140327 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = load ptr, ptr %2, align 8, !dbg !140328, !nonnull !13, !align !478, !noundef !13
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !140328
  %i.f = load i64, ptr %i.e, align 8, !dbg !140328, !noundef !13 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !140329
  %i.h = load i64, ptr %i.g, align 8, !dbg !140329, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !140330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !140334
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.f, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8), !dbg !140334
  %i.i = load i64, ptr %i.b, align 8, !dbg !140334, !range !39786, !noundef !13
  %i.j = trunc nuw i64 %i.i to i1, !dbg !140343
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !140344
  %i.l = load i64, ptr %i.k, align 8, !dbg !140344, !range !38593, !noundef !13 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !140344 ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.d, !dbg !140343, !prof !261

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !dbg !140345
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #45, !dbg !140346
  unreachable

bb.c:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecTmbEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.c) #46
          to label %bb.m unwind label %bb.l, !dbg !140348

bb.d:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.m, align 8, !dbg !140349, !nonnull !13, !noundef !13
  %i.q = icmp samesign ule i64 %i.f, %i.l, !dbg !140350
  tail call void @llvm.assume(i1 %i.q), !dbg !140354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !140357
  store i64 %i.l, ptr %i.c, align 8, !dbg !140358
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !140358 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8, !dbg !140358
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !140358 ; 4 uses
  store i64 0, ptr %i.s, align 8, !dbg !140358
  %i.t = icmp eq i64 %i.f, 0, !dbg !140359
  br i1 %i.t, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRyuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSyE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.e, !dbg !140371

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !140372
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.v, align 8, !noalias !140373, !nonnull !13, !noundef !13
  %i.y = load i64, ptr %i.w, align 8, !noalias !140373, !noundef !13
  %i.z = load i64, ptr %i.u, align 8, !noalias !140373, !noundef !13
  %i.aa = zext i64 %i.z to i128
  br label %bb.f, !dbg !140383

bb.f:                                             ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.e
  %i.ab = phi i64 [ 0, %bb.e ], [ %storemerge.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ]
  %i.ac = phi i64 [ 0, %bb.e ], [ %i.ca, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ac, !dbg !140387
  %.val.i = load i64, ptr %i.ad, align 8, !dbg !140391, !alias.scope !140392, !noalias !140395, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !140397, !noalias !140373
  store i64 %.val.i, ptr %i.a, align 8, !dbg !140405, !noalias !140373
  %i.ae = add i64 %i.ac, %i.h, !dbg !140406
  %i.af = trunc i64 %i.ae to i32, !dbg !140406
  %i.ag = mul i64 %.val.i, 6195824352614963433, !dbg !140408
  %i.ah = zext i64 %i.ag to i128, !dbg !140414
  %i.ai = mul nuw i128 %i.aa, %i.ah, !dbg !140417
  %i.aj = lshr i128 %i.ai, 64, !dbg !140418
  %i.ak = trunc nuw i128 %i.aj to i64, !dbg !140418 ; 2 uses
  %i.al = icmp ugt i64 %i.y, %i.ak, !dbg !140419
  call void @llvm.assume(i1 %i.al), !dbg !140424
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.ak, !dbg !140425 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !140426
  %i.ao = load i64, ptr %i.an, align 8, !dbg !140426, !alias.scope !140436, !noalias !140439, !noundef !13
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !140441
  br i1 %i.ap, label %select.unfold.i.i.i.i, label %bb.g, !dbg !140441

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 32, !dbg !140442
  %i.ar = invoke noundef i64 @_RINvYNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateNtNtCscgRAwXFJnXP_4core4hash11BuildHasher8hash_oneRyECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.c, !dbg !140443 ; 2 uses

.noexc:                                           ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !140446), !dbg !140449
  call void @llvm.experimental.noalias.scope.decl(metadata !140453), !dbg !140456
  %i.as = lshr i64 %i.ar, 57, !dbg !140459
  %i.at = trunc nuw nsw i64 %i.as to i8, !dbg !140462
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !140463
  %i.av = load i64, ptr %i.au, align 8, !dbg !140463, !alias.scope !140465, !noalias !140466, !noundef !13 ; 2 uses
  %i.aw = load ptr, ptr %i.am, align 8, !alias.scope !140465, !noalias !140466, !nonnull !13, !noundef !13 ; 2 uses
  %i.ax = insertelement <16 x i8> poison, i8 %i.at, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h, !dbg !140469

bb.h:                                             ; preds = %bb.j, %.noexc
  %.sroa.011.0.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.bp, %bb.j ], !dbg !140470
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.ar, %.noexc ], [ %i.bq, %bb.j ]
  %.sroa.01.0.i.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i.i, %i.av, !dbg !140470 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sroa.01.0.i.i.i.i.i.i.i, !dbg !140471
  %.sroa.0.0.copyload.i26.i.i.i.i.i.i = load <16 x i8>, ptr %i.az, align 1, !dbg !140474, !noalias !140478 ; 2 uses
  %i.ba = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, %i.ay, !dbg !140481
  %i.bb = bitcast <16 x i1> %i.ba to i16, !dbg !140484 ; 2 uses
  %.not.i.not32.i.i.i.i.i.i = icmp eq i16 %i.bb, 0, !dbg !140486
  br i1 %.not.i.not32.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !140489

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %bb.i
  %.sroa.05.0.i33.i.i.i.i.i.i = phi i16 [ %i.bo, %bb.i ], [ %i.bb, %bb.h ] ; 3 uses
  %i.bc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i.i.i.i.i, i1 true), !dbg !140490
  %i.bd = zext nneg i16 %i.bc to i64, !dbg !140493
  %i.be = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bd, !dbg !140494
  %i.bf = and i64 %i.be, %i.av, !dbg !140494
  %i.bg = sub nsw i64 0, %i.bf, !dbg !140495
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bg, !dbg !140504
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8, !dbg !140505
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.bi, align 8, !dbg !140511, !noalias !140512, !noundef !13
  %i.bj = icmp eq i64 %.val.i, %.val2.i.i.i.i.i.i.i, !dbg !140515
  br i1 %i.bj, label %bb.k, label %bb.i, !dbg !140520, !prof !1152

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.i, %bb.h
  %i.bk = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i.i, splat (i8 -1), !dbg !140522
  %i.bl = bitcast <16 x i1> %i.bk to i16, !dbg !140526
  %i.bm = icmp eq i16 %i.bl, 0, !dbg !140528
  br i1 %i.bm, label %bb.j, label %select.unfold.i.i.i.i.loopexit, !dbg !140528, !prof !261

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bn = add i16 %.sroa.05.0.i33.i.i.i.i.i.i, -1, !dbg !140530
  %i.bo = and i16 %i.bn, %.sroa.05.0.i33.i.i.i.i.i.i, !dbg !140532 ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq i16 %i.bo, 0, !dbg !140486
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !140489

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.bp = add i64 %.sroa.011.0.i.i.i.i.i.i.i, 16, !dbg !140534 ; 2 uses
  %i.bq = add i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.bp, !dbg !140536
  br label %bb.h, !dbg !140469

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.br = load i64, ptr %i.s, align 8, !dbg !140537, !alias.scope !140542, !noalias !140373, !noundef !13 ; 3 uses
  %i.bs = load i64, ptr %i.c, align 8, !dbg !140545, !range !38010, !alias.scope !140542, !noalias !140373, !noundef !13
  %i.bt = icmp eq i64 %i.br, %i.bs, !dbg !140548
  br i1 %i.bt, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !140548

select.unfold.i.i.i.i.loopexit:                   ; preds = %._crit_edge.i.i.i.i.i.i
  %.pre = load i64, ptr %i.s, align 8, !dbg !140549, !alias.scope !140552, !noalias !140373
  br label %select.unfold.i.i.i.i, !dbg !140549

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i.loopexit, %bb.f
  %i.bu = phi i64 [ %.pre, %select.unfold.i.i.i.i.loopexit ], [ %i.ab, %bb.f ], !dbg !140549 ; 3 uses
  %i.bv = load i64, ptr %i.c, align 8, !dbg !140555, !range !38010, !alias.scope !140552, !noalias !140373, !noundef !13
  %i.bw = icmp eq i64 %i.bu, %i.bv, !dbg !140558
  br i1 %i.bw, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !140558

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i: ; preds = %select.unfold.i.i.i.i, %bb.k
  %.sink18.ph.i = phi i64 [ %i.br, %bb.k ], [ %i.bu, %select.unfold.i.i.i.i ]
  %.sink.ph.i = phi i8 [ 1, %bb.k ], [ 0, %select.unfold.i.i.i.i ]
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmbEE8grow_oneCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i unwind label %bb.c, !dbg !140559

_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i, %select.unfold.i.i.i.i, %bb.k
  %.sink18.i = phi i64 [ %i.br, %bb.k ], [ %i.bu, %select.unfold.i.i.i.i ], [ %.sink18.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i ] ; 2 uses
  %.sink.i = phi i8 [ 1, %bb.k ], [ 0, %select.unfold.i.i.i.i ], [ %.sink.ph.i, %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.sink.split.i ]
  %i.bx = load ptr, ptr %i.r, align 8, !dbg !140562, !noalias !140373, !nonnull !13, !noundef !13
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.sink18.i, !dbg !140567 ; 2 uses
  store i32 %i.af, ptr %i.by, align 4, !dbg !140569, !noalias !140373
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4, !dbg !140569
  store i8 %.sink.i, ptr %i.bz, align 4, !dbg !140569, !noalias !140373
  %storemerge.i = add i64 %.sink18.i, 1, !dbg !140571 ; 2 uses
  store i64 %storemerge.i, ptr %i.s, align 8, !dbg !140571, !noalias !140373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !140572, !noalias !140373
  %i.ca = add nuw i64 %i.ac, 1, !dbg !140573      ; 2 uses
  %i.cb = icmp eq i64 %i.ca, %i.f, !dbg !140575
  br i1 %i.cb, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRyuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSyE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.f, !dbg !140575

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBY_8adapters9enumerateINtB1N_9EnumeratepEBS_4fold9enumerateRyuNCINvNvBS_8for_each4callTjB2O_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB2O_RSyE00E0E0ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RNCINvNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRyuNCINvNvB1e_8for_each4callTjB21_ENCNCINvNtNtNtNtCsePnBjWcsLF5_10polars_ops5frame4join9hash_join21single_keys_semi_anti14semi_anti_implB21_RSyE00E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !140576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !140348
  ret void, !dbg !140577

bb.l:                                             ; preds = %bb.c
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !140578
  unreachable, !dbg !140578

bb.m:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.o, !dbg !140578
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @_RNCINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5array7binview12read_binviewShINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1p_6cursor6CursorQRB1k_EEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(128) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !140579 {
bb.a:
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !dbg !140581, !noalias !140594
  %i.a = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 128, i64 noundef range(i64 8, 129) 8) #39, !dbg !140597, !noalias !140594 ; 3 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !140598
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShEE3newCsfcROwRM8ZtH_11polars_plan.exit, !dbg !140599, !prof !261

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #45
          to label %.noexc unwind label %bb.c, !dbg !140600

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !140600

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(128) %0) #46
          to label %bb.e unwind label %bb.d, !dbg !140601

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !140602
  unreachable, !dbg !140602

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c, !dbg !140602

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericShEE3newCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false), !dbg !140603
  ret ptr %i.a, !dbg !140605
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @_RNCINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5array7binview12read_binvieweINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1o_6cursor6CursorQRShEEEs0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(128) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !140606 {
bb.a:
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !dbg !140607, !noalias !140617
  %i.a = tail call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 128, i64 noundef range(i64 8, 129) 8) #39, !dbg !140620, !noalias !140617 ; 3 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !140621
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeEE3newCsfcROwRM8ZtH_11polars_plan.exit, !dbg !140622, !prof !261

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #45
          to label %.noexc unwind label %bb.c, !dbg !140623

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !140623

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(128) %0) #46
          to label %bb.e unwind label %bb.d, !dbg !140624

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !140625
  unreachable, !dbg !140625

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c, !dbg !140625

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtNtCs8774dFTUdNv_12polars_arrow5array7binview22BinaryViewArrayGenericeEE3newCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false), !dbg !140626
  ret ptr %i.a, !dbg !140628
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE5force0E0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCsfcROwRM8ZtH_11polars_plan(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !140629 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !140630, !nonnull !13, !align !478, !noundef !13 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140631), !dbg !140630
  %i.c = load ptr, ptr %i.b, align 8, !dbg !140634, !alias.scope !140631, !noalias !140640, !align !478, !noundef !13 ; 3 uses
  store ptr null, ptr %i.b, align 8, !dbg !140643, !alias.scope !140631, !noalias !140640
  %.not.i.i = icmp eq ptr %i.c, null, !dbg !140644
  br i1 %.not.i.i, label %bb.d, label %bb.b, !dbg !140646, !prof !261

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4, !dbg !140647
  %.val.i.i = load i8, ptr %i.d, align 4, !dbg !140647, !range !32196, !noalias !140648, !noundef !13
  %i.e = trunc nuw i8 %.val.i.i to i1, !dbg !140649
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE5force0E0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit, !dbg !140653, !prof !261

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std4sync9lazy_lock14panic_poisoned() #44, !dbg !140654, !noalias !140648
  unreachable, !dbg !140654

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #44, !dbg !140655, !noalias !140648
  unreachable, !dbg !140655

_RNvYNCINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE5force0E0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !dbg !140656, !noalias !140648, !nonnull !13, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !140659, !noalias !140648
  call void %i.f(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !dbg !140660, !noalias !140648, !inline_history !140662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !140663, !noalias !140648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !140664, !noalias !140648
  ret void, !dbg !140630
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7builderINtB2_29BinaryViewArrayGenericBuildereE26push_value_ignore_validityCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(272) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !140665 {
bb.a:
  %.sroa.4 = alloca [12 x i8], align 4            ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248, !dbg !140669 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !140669, !noundef !13
  %i.c = add i64 %i.b, %2, !dbg !140669
  store i64 %i.c, ptr %i.a, align 8, !dbg !140669
  %i.d = icmp ugt i64 %2, 12, !dbg !140671
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !140671

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4), !dbg !140672
  store i32 0, ptr %.sroa.4, align 4, !dbg !140678
  %.sroa.4.4..sroa_idx10 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4, !dbg !140678
  store i32 0, ptr %.sroa.4.4..sroa_idx10, align 4, !dbg !140678
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 8, !dbg !140678
  store i32 0, ptr %.sroa.4.8..sroa_idx, align 4, !dbg !140678
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.4, ptr nonnull align 1 %1, i64 %2, i1 false), !dbg !140679
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.3.4.copyload = load i32, ptr %.sroa.4, align 4, !dbg !140685
  %.sroa.4.4..sroa_idx11 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4, !dbg !140685
  %.sroa.4.4..sroa.4.4..sroa.4.4..sroa.5.4.copyload = load i32, ptr %.sroa.4.4..sroa_idx11, align 4, !dbg !140685
  %.sroa.4.8..sroa_idx12 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 8, !dbg !140685
  %.sroa.4.8..sroa.4.8..sroa.4.8..sroa.6.4.copyload = load i32, ptr %.sroa.4.8..sroa_idx12, align 4, !dbg !140685
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4), !dbg !140686
  br label %bb.d, !dbg !140687

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !140688 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !140688 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !140688, !noundef !13 ; 3 uses
  %i.h = icmp sgt i64 %i.g, -1, !dbg !140693
  tail call void @llvm.assume(i1 %i.h), !dbg !140695
  %i.i = load i64, ptr %i.e, align 8, !dbg !140696, !range !38010, !noundef !13
  %i.j = tail call i64 @llvm.uadd.sat.i64(i64 %i.g, i64 %2), !dbg !140704
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 -1, -9223372036854775808) %i.i, i64 2147483647), !dbg !140708
  %i.k = icmp ugt i64 %i.j, %.sroa.0.0.i, !dbg !140710
  br i1 %i.k, label %bb.f, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfcROwRM8ZtH_11polars_plan.exit, !dbg !140710, !prof !261

bb.d:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfcROwRM8ZtH_11polars_plan.exit, %bb.b
  %.sroa.6.0 = phi i32 [ %i.ag, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.4.8..sroa.4.8..sroa.4.8..sroa.6.4.copyload, %bb.b ], !dbg !140711
  %.sroa.5.0 = phi i32 [ %i.af, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.4.4..sroa.4.4..sroa.4.4..sroa.5.4.copyload, %bb.b ], !dbg !140711
  %.sroa.3.0 = phi i32 [ %.sroa.0.0.copyload, %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfcROwRM8ZtH_11polars_plan.exit ], [ %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.3.4.copyload, %bb.b ], !dbg !140711
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !140712 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !140712, !alias.scope !140718, !noalias !140721, !noundef !13 ; 3 uses
  %i.n = load i64, ptr %0, align 8, !dbg !140723, !range !38010, !alias.scope !140718, !noalias !140721, !noundef !13
  %i.o = icmp eq i64 %i.m, %i.n, !dbg !140729
  br i1 %i.o, label %bb.e, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8push_mutCsfcROwRM8ZtH_11polars_plan.exit, !dbg !140729

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0), !dbg !140730, !noalias !140721
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8push_mutCsfcROwRM8ZtH_11polars_plan.exit, !dbg !140730

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8push_mutCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0 = trunc i64 %2 to i32, !dbg !140711
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !140731
  %i.q = load ptr, ptr %i.p, align 8, !dbg !140731, !alias.scope !140718, !noalias !140721, !nonnull !13, !noundef !13
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.m, !dbg !140740 ; 4 uses
  store i32 %.sroa.0.0, ptr %i.r, align 4, !dbg !140743
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 4, !dbg !140743
  store i32 %.sroa.3.0, ptr %.sroa.3.0..sroa_idx, align 4, !dbg !140743
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !140743
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !140743
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 12, !dbg !140743
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 4, !dbg !140743
  %i.s = add i64 %i.m, 1, !dbg !140747
  store i64 %i.s, ptr %i.l, align 8, !dbg !140747, !alias.scope !140718, !noalias !140721
  ret void, !dbg !140748

bb.f:                                             ; preds = %bb.c
  tail call fastcc void @_RNvMNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7builderINtB2_29BinaryViewArrayGenericBuildereE26reserve_active_buffer_slowCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(272) %0, i64 noundef %2), !dbg !140749
  %.pre = load i64, ptr %i.f, align 8, !dbg !140750
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfcROwRM8ZtH_11polars_plan.exit, !dbg !140749

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.c, %bb.f
  %i.t = phi i64 [ %i.g, %bb.c ], [ %.pre, %bb.f ], !dbg !140750 ; 2 uses
  %i.u = icmp sgt i64 %i.t, -1, !dbg !140752
  tail call void @llvm.assume(i1 %i.u), !dbg !140754
end_hunk_0
