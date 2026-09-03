Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/blend?download=true
inline.NumInlined: 43
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@tiling_callback_blendop:bb.a

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_develop_blend_legacy_params(ptr noundef %0, ptr nofree noundef readonly %1, i32 noundef %2, ptr nofree noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !29
  %i.e = tail call i32 %i.d() #14, !inline_history !0
  %i.f = and i32 %i.e, 2
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_blend_default_module_blend_colorspace.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !30
  %i.i = tail call i32 %i.h(ptr noundef nonnull %0, ptr noundef null, ptr noundef null) #14, !inline_history !0 ; 3 uses
  %i.j = icmp ult i32 %i.i, 6
  br i1 %i.j, label %switch.lookup, label %_blend_default_module_blend_colorspace.exit

switch.lookup:                                    ; preds = %bb.b
  %i.k = zext nneg i32 %i.i to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.dt_develop_blend_legacy_params, i64 %i.k
  %switch.load = load float, ptr %switch.gep, align 4
  %i.l = zext nneg i32 %i.i to i64
  %switch.gep577 = getelementptr inbounds nuw i8, ptr @switch.table.dt_develop_blend_legacy_params.8, i64 %i.l
  %switch.load578 = load i8, ptr %switch.gep577, align 1
  %switch.ext = zext i8 %switch.load578 to i32
  br label %_blend_default_module_blend_colorspace.exit

_blend_default_module_blend_colorspace.exit:      ; preds = %bb.b, %switch.lookup, %bb.a
  %.sroa.18.0 = phi float [ 0.000000e+00, %bb.a ], [ %switch.load, %switch.lookup ], [ 0.000000e+00, %bb.b ] ; 44 uses
  %.0.i = phi i32 [ 0, %bb.a ], [ %switch.ext, %switch.lookup ], [ 0, %bb.b ] ; 11 uses
  %i.m = sext i32 %5 to i64
  %.not910.i = icmp eq i32 %5, 0
  br i1 %.not910.i, label %.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = add nuw i64 %.0711.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.n, %i.m
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_blend_default_module_blend_colorspace.exit, %bb.c
  %.0711.i = phi i64 [ %i.n, %bb.c ], [ 0, %_blend_default_module_blend_colorspace.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.0711.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !189
  %.not.i379 = icmp eq i8 %i.p, 0
  br i1 %.not.i379, label %bb.c, label %_develop_blend_params_is_all_zero.exit

.loopexit:                                        ; preds = %bb.c, %_blend_default_module_blend_colorspace.exit
  store i32 0, ptr %3, align 4, !tbaa !79
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !79
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !190
  %.sroa.15463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.17516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !191
  br label %_fix_masks_combine.exit

_develop_blend_params_is_all_zero.exit:           ; preds = %.lr.ph.i
  %i.q = icmp eq i32 %2, 1
  %i.r = icmp eq i32 %4, 14                       ; 13 uses
  %or.cond = and i1 %i.q, %i.r
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_develop_blend_params_is_all_zero.exit
  %.not375 = icmp eq i32 %5, 12
  br i1 %.not375, label %bb.e, label %_fix_masks_combine.exit

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %3, align 4, !tbaa !79
  %.sroa.14.0..sroa_idx432 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i, ptr %.sroa.14.0..sroa_idx432, align 4, !tbaa !79
  %.sroa.15.0..sroa_idx453 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx453, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !190
  %.sroa.15463.0..sroa_idx464 = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx464, align 4
  %.sroa.16.0..sroa_idx485 = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx485, align 4
  %.sroa.17.0..sroa_idx506 = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx506, align 4
  %.sroa.17516.0..sroa_idx517 = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx517, align 4
  %.sroa.18.0..sroa_idx538 = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx538, align 4
  %.sroa.19.0..sroa_idx559 = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx559, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !191
  %i.s = load i32, ptr %1, align 4, !tbaa !193    ; 5 uses
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  store i32 %i.u, ptr %3, align 4, !tbaa !76
  %i.v = and i32 %i.s, 255                        ; 2 uses
  %trunc.i = trunc i32 %i.s to i8
  %i.w = icmp ult i8 %trunc.i, 37
  br i1 %i.w, label %switch.hole_check, label %_blend_legacy_blend_mode.exit

switch.hole_check:                                ; preds = %bb.e
  %trunc.i.mask = and i32 %i.s, 63
  %switch.maskindex = zext nneg i32 %trunc.i.mask to i64
  %switch.shifted = lshr i64 68722622467, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup580, label %_blend_legacy_blend_mode.exit

switch.lookup580:                                 ; preds = %switch.hole_check
  %trunc.i.mask601 = and i32 %i.s, 63
  %i.x = zext nneg i32 %trunc.i.mask601 to i64
  %switch.gep581 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._blend_legacy_blend_mode, i64 %i.x
  %switch.load582 = load i32, ptr %switch.gep581, align 4
  br label %_blend_legacy_blend_mode.exit

_blend_legacy_blend_mode.exit:                    ; preds = %switch.lookup580, %switch.hole_check, %bb.e
  %.not.i380 = phi i32 [ %i.v, %bb.e ], [ %switch.load582, %switch.lookup580 ], [ %i.v, %switch.hole_check ]
  store i32 %.not.i380, ptr %.sroa.15.0..sroa_idx453, align 4, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !194
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.z, ptr %i.aa, align 4, !tbaa !84
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !195
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !136
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.ae, align 4, !tbaa !138
  br label %_fix_masks_combine.exit

bb.f:                                             ; preds = %_develop_blend_params_is_all_zero.exit
  %i.af = icmp eq i32 %2, 2
  %or.cond3 = and i1 %i.af, %i.r
  br i1 %or.cond3, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not373 = icmp eq i32 %5, 144
  br i1 %.not373, label %bb.h, label %_fix_masks_combine.exit

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %3, align 4, !tbaa !79
  %.sroa.14.0..sroa_idx434 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i, ptr %.sroa.14.0..sroa_idx434, align 4, !tbaa !79
  %.sroa.15.0..sroa_idx454 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx454, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !190
  %.sroa.15463.0..sroa_idx466 = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx466, align 4
  %.sroa.16.0..sroa_idx487 = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx487, align 4
  %.sroa.17.0..sroa_idx507 = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx507, align 4
  %.sroa.17516.0..sroa_idx519 = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx519, align 4
  %.sroa.18.0..sroa_idx540 = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx540, align 4
  %.sroa.19.0..sroa_idx560 = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx560, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !191
  %i.ag = load i32, ptr %1, align 4, !tbaa !197   ; 5 uses
  %i.ah = icmp ne i32 %i.ag, 0                    ; 2 uses
  %i.ai = zext i1 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !198 ; 3 uses
  %.not374.inv = icmp slt i32 %i.ak, 0
  %i.al = and i1 %i.ah, %.not374.inv
  %spec.select = select i1 %i.al, i32 4, i32 0
  %i.am = or disjoint i32 %spec.select, %i.ai
  store i32 %i.am, ptr %3, align 4, !tbaa !76
  %i.an = and i32 %i.ag, 255                      ; 2 uses
  %trunc.i381 = trunc i32 %i.ag to i8
  %i.ao = icmp ult i8 %trunc.i381, 37
  br i1 %i.ao, label %switch.hole_check584, label %_blend_legacy_blend_mode.exit383

switch.hole_check584:                             ; preds = %bb.h
  %trunc.i381.mask = and i32 %i.ag, 63
  %switch.maskindex586 = zext nneg i32 %trunc.i381.mask to i64
  %switch.shifted587 = lshr i64 68722622467, %switch.maskindex586
  %switch.lobit588 = trunc i64 %switch.shifted587 to i1
  br i1 %switch.lobit588, label %switch.lookup585, label %_blend_legacy_blend_mode.exit383

switch.lookup585:                                 ; preds = %switch.hole_check584
  %trunc.i381.mask600 = and i32 %i.ag, 63
  %i.ap = zext nneg i32 %trunc.i381.mask600 to i64
  %switch.gep589 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._blend_legacy_blend_mode, i64 %i.ap
  %switch.load590 = load i32, ptr %switch.gep589, align 4
  br label %_blend_legacy_blend_mode.exit383

_blend_legacy_blend_mode.exit383:                 ; preds = %switch.lookup585, %switch.hole_check584, %bb.h
  %.not.i382 = phi i32 [ %i.an, %bb.h ], [ %switch.load590, %switch.lookup585 ], [ %i.an, %switch.hole_check584 ] ; 2 uses
  %i.aq = add i64 %i.b, 8
  %i.ar = add i64 %i.b, 196
  %i.as = add i64 %i.a, 4
  %i.at = add i64 %i.a, 144
  %rt.bound0 = icmp ult i64 %i.aq, %i.at
  %rt.bound1 = icmp ult i64 %i.as, %i.ar
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %_blend_legacy_blend_mode.exit383.rtscalar, label %_blend_legacy_blend_mode.exit383.rtvec, !prof !199

bb.i:                                             ; preds = %bb.f
  %i.au = icmp eq i32 %2, 3
  %or.cond5 = and i1 %i.au, %i.r
  br i1 %or.cond5, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %.not371 = icmp eq i32 %5, 272
  br i1 %.not371, label %bb.k, label %_fix_masks_combine.exit

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %3, align 4, !tbaa !79
  %.sroa.14.0..sroa_idx436 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i, ptr %.sroa.14.0..sroa_idx436, align 4, !tbaa !79
  %.sroa.15.0..sroa_idx455 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx455, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !190
  %.sroa.15463.0..sroa_idx468 = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx468, align 4
  %.sroa.16.0..sroa_idx489 = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx489, align 4
  %.sroa.17.0..sroa_idx508 = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx508, align 4
  %.sroa.17516.0..sroa_idx521 = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx521, align 4
  %.sroa.18.0..sroa_idx542 = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx542, align 4
  %.sroa.19.0..sroa_idx561 = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx561, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !191
  %i.av = load i32, ptr %1, align 4, !tbaa !201   ; 5 uses
  %i.aw = icmp ne i32 %i.av, 0                    ; 2 uses
  %i.ax = zext i1 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !202 ; 2 uses
  %.not372.inv = icmp slt i32 %i.az, 0
  %i.ba = and i1 %i.aw, %.not372.inv
  %spec.select376 = select i1 %i.ba, i32 4, i32 0
  %i.bb = or disjoint i32 %spec.select376, %i.ax
  store i32 %i.bb, ptr %3, align 4, !tbaa !76
  %i.bc = and i32 %i.av, 255                      ; 2 uses
  %trunc.i384 = trunc i32 %i.av to i8
  %i.bd = icmp ult i8 %trunc.i384, 37
  br i1 %i.bd, label %switch.hole_check592, label %_blend_legacy_blend_mode.exit386

switch.hole_check592:                             ; preds = %bb.k
  %trunc.i384.mask = and i32 %i.av, 63
  %switch.maskindex594 = zext nneg i32 %trunc.i384.mask to i64
  %switch.shifted595 = lshr i64 68722622467, %switch.maskindex594
  %switch.lobit596 = trunc i64 %switch.shifted595 to i1
  br i1 %switch.lobit596, label %switch.lookup593, label %_blend_legacy_blend_mode.exit386

switch.lookup593:                                 ; preds = %switch.hole_check592
  %trunc.i384.mask599 = and i32 %i.av, 63
  %i.be = zext nneg i32 %trunc.i384.mask599 to i64
  %switch.gep597 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._blend_legacy_blend_mode, i64 %i.be
  %switch.load598 = load i32, ptr %switch.gep597, align 4
  br label %_blend_legacy_blend_mode.exit386

_blend_legacy_blend_mode.exit386:                 ; preds = %switch.lookup593, %switch.hole_check592, %bb.k
  %.not.i385 = phi i32 [ %i.bc, %bb.k ], [ %switch.load598, %switch.lookup593 ], [ %i.bc, %switch.hole_check592 ]
  store i32 %.not.i385, ptr %.sroa.15.0..sroa_idx455, align 4, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !203
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.bg, ptr %i.bh, align 4, !tbaa !84
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !204
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !136
  %i.bl = and i32 %i.az, 2147483647
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !36
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.bn, ptr noundef nonnull align 4 dereferenceable(256) %i.bo, i64 256, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.bp, align 4, !tbaa !138
  br label %_fix_masks_combine.exit

bb.l:                                             ; preds = %bb.i
  %i.bq = icmp eq i32 %2, 4
  %or.cond7 = and i1 %i.bq, %i.r
  br i1 %or.cond7, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %.not369 = icmp eq i32 %5, 276
  br i1 %.not369, label %bb.n, label %_fix_masks_combine.exit

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %3, align 4, !tbaa !79
  %.sroa.14.0..sroa_idx438 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i, ptr %.sroa.14.0..sroa_idx438, align 4, !tbaa !79
  %.sroa.15.0..sroa_idx456 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx456, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !190
  %.sroa.15463.0..sroa_idx470 = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx470, align 4
  %.sroa.16.0..sroa_idx491 = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx491, align 4
  %.sroa.17.0..sroa_idx509 = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx509, align 4
  %.sroa.17516.0..sroa_idx523 = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx523, align 4
  %.sroa.18.0..sroa_idx544 = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx544, align 4
  %.sroa.19.0..sroa_idx562 = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx562, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !191
  %i.br = load i32, ptr %1, align 4, !tbaa !206   ; 2 uses
  %i.bs = icmp ne i32 %i.br, 0                    ; 2 uses
  %i.bt = zext i1 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bv = tail call fastcc i32 @_blend_legacy_blend_mode(i32 noundef %i.br)
  store i32 %i.bv, ptr %.sroa.15.0..sroa_idx456, align 4, !tbaa !35
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !207
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.bx, ptr %i.by, align 4, !tbaa !84
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !208
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.cc, ptr %i.cd, align 4, !tbaa !81
  %i.ce = load i32, ptr %i.bu, align 4, !tbaa !209
  %i.cf = load <2 x i32>, ptr %i.bz, align 4, !tbaa !79
  %.not370.inv = icmp slt i32 %i.ce, 0
  %i.cg = and i1 %i.bs, %.not370.inv
  %spec.select377 = select i1 %i.cg, i32 4, i32 0
  %i.ch = or disjoint i32 %spec.select377, %i.bt
  store i32 %i.ch, ptr %3, align 4, !tbaa !76
  %i.ci = and <2 x i32> %i.cf, <i32 -1, i32 2147483647>
  store <2 x i32> %i.ci, ptr %i.ca, align 4, !tbaa !79
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.cj, ptr noundef nonnull align 4 dereferenceable(256) %i.ck, i64 256, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.cl, align 4, !tbaa !138
  br label %_fix_masks_combine.exit

bb.o:                                             ; preds = %bb.l
  %i.cm = icmp eq i32 %2, 5
  %or.cond9 = and i1 %i.cm, %i.r
  br i1 %or.cond9, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %.not367 = icmp eq i32 %5, 300
  br i1 %.not367, label %bb.q, label %_fix_masks_combine.exit

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %3, align 4, !tbaa !79
  %.sroa.14.0..sroa_idx440 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i, ptr %.sroa.14.0..sroa_idx440, align 4, !tbaa !79
  %.sroa.15.0..sroa_idx457 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx457, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !190
  %.sroa.15463.0..sroa_idx472 = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx472, align 4
  %.sroa.16.0..sroa_idx493 = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx493, align 4
  %.sroa.17.0..sroa_idx510 = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx510, align 4
  %.sroa.17516.0..sroa_idx525 = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx525, align 4
  %.sroa.18.0..sroa_idx546 = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx546, align 4
  %.sroa.19.0..sroa_idx563 = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx563, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !191
  %i.cn = load i32, ptr %1, align 4, !tbaa !211   ; 2 uses
  store i32 %i.cn, ptr %3, align 4, !tbaa !76
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !212
  %i.cq = tail call fastcc i32 @_blend_legacy_blend_mode(i32 noundef %i.cp)
  store i32 %i.cq, ptr %.sroa.15.0..sroa_idx457, align 4, !tbaa !35
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !213
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.cs, ptr %i.ct, align 4, !tbaa !84
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.cw = load <2 x i32>, ptr %i.cu, align 4, !tbaa !79
  %i.cx = load i32, ptr %i.cu, align 4, !tbaa !214 ; 3 uses
  store <2 x i32> %i.cw, ptr %i.cv, align 4, !tbaa !79
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !215
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.cz, ptr %i.da, align 4, !tbaa !81
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !216 ; 3 uses
  %i.dd = or i32 %i.dc, 31
  %.not368571 = icmp slt i32 %i.dc, 0
  %i.de = select i1 %.not368571, i32 %i.dd, i32 %i.dc
  %i.df = and i32 %i.de, 2147483647
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !36
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.dh, ptr noundef nonnull align 4 dereferenceable(256) %i.di, i64 256, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.dj, align 4, !tbaa !138
  %i.dk = and i32 %i.cn, 2
  %.not.i387 = icmp eq i32 %i.dk, 0
  br i1 %.not.i387, label %_fix_masks_combine.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dl = and i32 %i.cx, 5
  switch i32 %i.dl, label %_fix_masks_combine.exit [
    i32 1, label %bb.s
    i32 5, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.dm = and i32 %i.cx, -6
  %i.dn = or disjoint i32 %i.dm, 4
  br label %.sink.split.i

bb.t:                                             ; preds = %bb.r
  %i.do = and i32 %i.cx, -6
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.t, %bb.s
  %.sink.i = phi i32 [ %i.dn, %bb.s ], [ %i.do, %bb.t ]
  store i32 %.sink.i, ptr %i.cv, align 4, !tbaa !128
  br label %_fix_masks_combine.exit

bb.u:                                             ; preds = %bb.o
  %i.dp = icmp eq i32 %2, 6
  %or.cond11 = and i1 %i.dp, %i.r
  br i1 %or.cond11, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %.not366 = icmp eq i32 %5, 300
  br i1 %.not366, label %bb.w, label %_fix_masks_combine.exit

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %3, align 4, !tbaa !79
  %.sroa.14.0..sroa_idx442 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i, ptr %.sroa.14.0..sroa_idx442, align 4, !tbaa !79
  %.sroa.15.0..sroa_idx458 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx458, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !190
  %.sroa.15463.0..sroa_idx474 = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx474, align 4
  %.sroa.16.0..sroa_idx495 = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx495, align 4
  %.sroa.17.0..sroa_idx511 = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx511, align 4
  %.sroa.17516.0..sroa_idx527 = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx527, align 4
  %.sroa.18.0..sroa_idx548 = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx548, align 4
  %.sroa.19.0..sroa_idx564 = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx564, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !191
  %i.dq = load i32, ptr %1, align 4, !tbaa !218   ; 2 uses
  store i32 %i.dq, ptr %3, align 4, !tbaa !76
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !219
  %i.dt = tail call fastcc i32 @_blend_legacy_blend_mode(i32 noundef %i.ds)
  store i32 %i.dt, ptr %.sroa.15.0..sroa_idx458, align 4, !tbaa !35
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dv = load float, ptr %i.du, align 4, !tbaa !220
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.dv, ptr %i.dw, align 4, !tbaa !84
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.dz = load <2 x i32>, ptr %i.dx, align 4, !tbaa !79
  %i.ea = load i32, ptr %i.dx, align 4, !tbaa !221 ; 3 uses
  store <2 x i32> %i.dz, ptr %i.dy, align 4, !tbaa !79
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !222
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.ec, ptr %i.ed, align 4, !tbaa !81
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !223
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !36
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.eh, ptr noundef nonnull align 4 dereferenceable(256) %i.ei, i64 256, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.ej, align 4, !tbaa !138
  %i.ek = and i32 %i.dq, 2
  %.not.i388 = icmp eq i32 %i.ek, 0
  br i1 %.not.i388, label %_fix_masks_combine.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.el = and i32 %i.ea, 5
  switch i32 %i.el, label %_fix_masks_combine.exit [
    i32 1, label %bb.y
    i32 5, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.em = and i32 %i.ea, -6
  %i.en = or disjoint i32 %i.em, 4
  br label %.sink.split.i389

bb.z:                                             ; preds = %bb.x
  %i.eo = and i32 %i.ea, -6
  br label %.sink.split.i389

.sink.split.i389:                                 ; preds = %bb.z, %bb.y
  %.sink.i390 = phi i32 [ %i.en, %bb.y ], [ %i.eo, %bb.z ]
  store i32 %.sink.i390, ptr %i.dy, align 4, !tbaa !128
  br label %_fix_masks_combine.exit

bb.aa:                                            ; preds = %bb.u
  %i.ep = icmp eq i32 %2, 7
  %or.cond13 = and i1 %i.ep, %i.r
  br i1 %or.cond13, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %.not365 = icmp eq i32 %5, 300
  br i1 %.not365, label %bb.ac, label %_fix_masks_combine.exit

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %3, align 4, !tbaa !79
  %.sroa.14.0..sroa_idx444 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i, ptr %.sroa.14.0..sroa_idx444, align 4, !tbaa !79
  %.sroa.15.0..sroa_idx459 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx459, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !190
  %.sroa.15463.0..sroa_idx476 = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx476, align 4
  %.sroa.16.0..sroa_idx497 = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx497, align 4
  %.sroa.17.0..sroa_idx512 = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx512, align 4
  %.sroa.17516.0..sroa_idx529 = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx529, align 4
  %.sroa.18.0..sroa_idx550 = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx550, align 4
  %.sroa.19.0..sroa_idx565 = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx565, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !191
  %i.eq = load i32, ptr %1, align 4, !tbaa !225   ; 2 uses
  store i32 %i.eq, ptr %3, align 4, !tbaa !76
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !226
  %i.et = tail call fastcc i32 @_blend_legacy_blend_mode(i32 noundef %i.es)
  store i32 %i.et, ptr %.sroa.15.0..sroa_idx459, align 4, !tbaa !35
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !227
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.ev, ptr %i.ew, align 4, !tbaa !84
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.ez = load <2 x i32>, ptr %i.ex, align 4, !tbaa !79
  %i.fa = load i32, ptr %i.ex, align 4, !tbaa !228 ; 3 uses
  store <2 x i32> %i.ez, ptr %i.ey, align 4, !tbaa !79
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !229
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.fc, ptr %i.fd, align 4, !tbaa !81
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !230
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !36
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.fh, ptr noundef nonnull align 4 dereferenceable(256) %i.fi, i64 256, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.fj, align 4, !tbaa !138
  %i.fk = and i32 %i.eq, 2
  %.not.i392 = icmp eq i32 %i.fk, 0
  br i1 %.not.i392, label %_fix_masks_combine.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fl = and i32 %i.fa, 5
  switch i32 %i.fl, label %_fix_masks_combine.exit [
    i32 1, label %bb.ae
    i32 5, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.fm = and i32 %i.fa, -6
  %i.fn = or disjoint i32 %i.fm, 4
  br label %.sink.split.i393

bb.af:                                            ; preds = %bb.ad
  %i.fo = and i32 %i.fa, -6
  br label %.sink.split.i393

.sink.split.i393:                                 ; preds = %bb.af, %bb.ae
  %.sink.i394 = phi i32 [ %i.fn, %bb.ae ], [ %i.fo, %bb.af ]
  store i32 %.sink.i394, ptr %i.ey, align 4, !tbaa !128
  br label %_fix_masks_combine.exit

bb.ag:                                            ; preds = %bb.aa
  %i.fp = icmp eq i32 %2, 8
  %or.cond15 = and i1 %i.fp, %i.r
  br i1 %or.cond15, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %.not364 = icmp eq i32 %5, 316
  br i1 %.not364, label %bb.ai, label %_fix_masks_combine.exit

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %3, align 4, !tbaa !79
  %.sroa.14.0..sroa_idx446 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i, ptr %.sroa.14.0..sroa_idx446, align 4, !tbaa !79
  %.sroa.15.0..sroa_idx460 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx460, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !190
  %.sroa.15463.0..sroa_idx478 = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx478, align 4
  %.sroa.16.0..sroa_idx499 = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx499, align 4
  %.sroa.17.0..sroa_idx513 = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx513, align 4
  %.sroa.17516.0..sroa_idx531 = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx531, align 4
  %.sroa.18.0..sroa_idx552 = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx552, align 4
  %.sroa.19.0..sroa_idx566 = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx566, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !191
  %i.fq = load i32, ptr %1, align 4, !tbaa !232   ; 2 uses
  store i32 %i.fq, ptr %3, align 4, !tbaa !76
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !233
  %i.ft = tail call fastcc i32 @_blend_legacy_blend_mode(i32 noundef %i.fs)
  store i32 %i.ft, ptr %.sroa.15.0..sroa_idx460, align 4, !tbaa !35
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !234
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.fv, ptr %i.fw, align 4, !tbaa !84
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.fz = load <2 x i32>, ptr %i.fx, align 4, !tbaa !79
  %i.ga = load i32, ptr %i.fx, align 4, !tbaa !235 ; 3 uses
  store <2 x i32> %i.fz, ptr %i.fy, align 4, !tbaa !79
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !236
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !36
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !237
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 32
  store float %i.gf, ptr %i.gg, align 4, !tbaa !80
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !238
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !83
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gm = load <2 x float>, ptr %i.gk, align 4, !tbaa !34
  store <2 x float> %i.gm, ptr %i.gl, align 4, !tbaa !34
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.go = load float, ptr %i.gn, align 4, !tbaa !239
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 48
  store float %i.go, ptr %i.gp, align 4, !tbaa !82
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.gq, ptr noundef nonnull align 4 dereferenceable(256) %i.gr, i64 256, i1 false)
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.gs, align 4, !tbaa !138
  %i.gt = and i32 %i.fq, 2
  %.not.i396 = icmp eq i32 %i.gt, 0
  br i1 %.not.i396, label %_fix_masks_combine.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gu = and i32 %i.ga, 5
  switch i32 %i.gu, label %_fix_masks_combine.exit [
    i32 1, label %bb.ak
    i32 5, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.gv = and i32 %i.ga, -6
  %i.gw = or disjoint i32 %i.gv, 4
  br label %.sink.split.i397

bb.al:                                            ; preds = %bb.aj
  %i.gx = and i32 %i.ga, -6
  br label %.sink.split.i397

.sink.split.i397:                                 ; preds = %bb.al, %bb.ak
  %.sink.i398 = phi i32 [ %i.gw, %bb.ak ], [ %i.gx, %bb.al ]
  store i32 %.sink.i398, ptr %i.fy, align 4, !tbaa !128
  br label %_fix_masks_combine.exit

bb.am:                                            ; preds = %bb.ag
  %i.gy = icmp eq i32 %2, 9
  %or.cond17 = and i1 %i.gy, %i.r
  br i1 %or.cond17, label %bb.an, label %bb.av

bb.an:                                            ; preds = %bb.am
  %.not362 = icmp eq i32 %5, 348
  br i1 %.not362, label %bb.ao, label %_fix_masks_combine.exit

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %3, align 4, !tbaa !79
  %.sroa.14.0..sroa_idx448 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i, ptr %.sroa.14.0..sroa_idx448, align 4, !tbaa !79
  %.sroa.15.0..sroa_idx461 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx461, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !190
  %.sroa.15463.0..sroa_idx480 = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx480, align 4
  %.sroa.16.0..sroa_idx501 = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx501, align 4
  %.sroa.17.0..sroa_idx514 = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx514, align 4
  %.sroa.17516.0..sroa_idx533 = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx533, align 4
  %.sroa.18.0..sroa_idx554 = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx554, align 4
  %.sroa.19.0..sroa_idx567 = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx567, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !191
  %i.gz = load i32, ptr %1, align 4, !tbaa !241   ; 3 uses
  store i32 %i.gz, ptr %3, align 4, !tbaa !76
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !242
  %i.hc = tail call fastcc i32 @_blend_legacy_blend_mode(i32 noundef %i.hb)
  store i32 %i.hc, ptr %.sroa.15.0..sroa_idx461, align 4, !tbaa !35
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.he = load float, ptr %i.hd, align 4, !tbaa !243
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.he, ptr %i.hf, align 4, !tbaa !84
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.hi = load <2 x i32>, ptr %i.hg, align 4, !tbaa !79
  %i.hj = load i32, ptr %i.hg, align 4, !tbaa !244 ; 3 uses
  store <2 x i32> %i.hi, ptr %i.hh, align 4, !tbaa !79
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !245
  %i.hm = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !36
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !246
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store float %i.ho, ptr %i.hp, align 4, !tbaa !80
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !247
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !83
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.hv = load <2 x float>, ptr %i.ht, align 4, !tbaa !34
  store <2 x float> %i.hv, ptr %i.hu, align 4, !tbaa !34
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !248
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 48
  store float %i.hx, ptr %i.hy, align 4, !tbaa !82
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.hz, ptr noundef nonnull align 4 dereferenceable(256) %i.ia, i64 256, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %3, i64 388
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 316 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ib, ptr noundef nonnull align 4 dereferenceable(20) %i.ic, i64 20, i1 false)
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !249
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 408
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !250
  %i.ig = load i8, ptr %i.ic, align 4, !tbaa !189
  %.not363 = icmp eq i8 %i.ig, 0
  br i1 %.not363, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 340
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !251
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.ij = phi i32 [ %i.ii, %bb.ap ], [ -1, %bb.ao ]
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 412
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !252
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.im = load i32, ptr %i.il, align 4, !tbaa !253
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 416
  store i32 %i.im, ptr %i.in, align 4, !tbaa !123
  %i.io = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.io, align 4, !tbaa !138
  %i.ip = and i32 %i.gz, 2
  %.not.i400 = icmp eq i32 %i.ip, 0
  br i1 %.not.i400, label %_fix_masks_combine.exit403, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.iq = and i32 %i.hj, 5
  switch i32 %i.iq, label %_fix_masks_combine.exit403 [
    i32 1, label %bb.as
    i32 5, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  %i.ir = and i32 %i.hj, -6
  %i.is = or disjoint i32 %i.ir, 4
  br label %.sink.split.i401

bb.at:                                            ; preds = %bb.ar
  %i.it = and i32 %i.hj, -6
  br label %.sink.split.i401

.sink.split.i401:                                 ; preds = %bb.at, %bb.as
  %.sink.i402 = phi i32 [ %i.is, %bb.as ], [ %i.it, %bb.at ]
  store i32 %.sink.i402, ptr %i.hh, align 4, !tbaa !128
  br label %_fix_masks_combine.exit403

_fix_masks_combine.exit403:                       ; preds = %bb.aq, %bb.ar, %.sink.split.i401
  %i.iu = and i32 %i.gz, 8
  %.not.i404 = icmp eq i32 %i.iu, 0
  br i1 %.not.i404, label %_fix_masks_combine.exit, label %bb.au

bb.au:                                            ; preds = %_fix_masks_combine.exit403
  store float 0.000000e+00, ptr %i.hp, align 4, !tbaa !80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hu, i8 0, i64 16, i1 false)
  store i32 5, ptr %i.hs, align 4, !tbaa !83
  br label %_fix_masks_combine.exit

bb.av:                                            ; preds = %bb.am
  %i.iv = icmp eq i32 %2, 10
  %or.cond19 = and i1 %i.iv, %i.r
  br i1 %or.cond19, label %bb.aw, label %bb.be

bb.aw:                                            ; preds = %bb.av
  %.not359 = icmp eq i32 %5, 420
  br i1 %.not359, label %bb.ax, label %_fix_masks_combine.exit

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %3, align 4, !tbaa !79
  %.sroa.14.0..sroa_idx450 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i, ptr %.sroa.14.0..sroa_idx450, align 4, !tbaa !79
  %.sroa.15.0..sroa_idx462 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(348) %.sroa.15.0..sroa_idx462, ptr noundef nonnull align 4 dereferenceable(348) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 8), i64 348, i1 false), !tbaa.struct !190
  %.sroa.15463.0..sroa_idx482 = getelementptr inbounds nuw i8, ptr %3, i64 356
  store float %.sroa.18.0, ptr %.sroa.15463.0..sroa_idx482, align 4
  %.sroa.16.0..sroa_idx503 = getelementptr inbounds nuw i8, ptr %3, i64 360
  store float %.sroa.18.0, ptr %.sroa.16.0..sroa_idx503, align 4
  %.sroa.17.0..sroa_idx515 = getelementptr inbounds nuw i8, ptr %3, i64 364
  store i64 0, ptr %.sroa.17.0..sroa_idx515, align 4
  %.sroa.17516.0..sroa_idx535 = getelementptr inbounds nuw i8, ptr %3, i64 372
  store float %.sroa.18.0, ptr %.sroa.17516.0..sroa_idx535, align 4
  %.sroa.18.0..sroa_idx556 = getelementptr inbounds nuw i8, ptr %3, i64 376
  store float %.sroa.18.0, ptr %.sroa.18.0..sroa_idx556, align 4
  %.sroa.19.0..sroa_idx568 = getelementptr inbounds nuw i8, ptr %3, i64 380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.19.0..sroa_idx568, ptr noundef nonnull align 4 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_default_blendop_params, i64 380), i64 40, i1 false), !tbaa.struct !191
  %i.iw = load <2 x i32>, ptr %1, align 4, !tbaa !79
  %i.ix = load i32, ptr %1, align 4, !tbaa !255   ; 2 uses
  store <2 x i32> %i.iw, ptr %3, align 4, !tbaa !79
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !256
  %i.ja = tail call fastcc i32 @_blend_legacy_blend_mode(i32 noundef %i.iz)
  store i32 %i.ja, ptr %.sroa.15.0..sroa_idx462, align 4, !tbaa !35
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.jd = load <2 x float>, ptr %i.jb, align 4, !tbaa !34
  store <2 x float> %i.jd, ptr %i.jc, align 4, !tbaa !34
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.jg = load <2 x i32>, ptr %i.je, align 4, !tbaa !79
  %i.jh = load i32, ptr %i.je, align 4, !tbaa !257 ; 3 uses
  store <2 x i32> %i.jg, ptr %i.jf, align 4, !tbaa !79
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !258
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !36
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !259
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store float %i.jm, ptr %i.jn, align 4, !tbaa !80
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !260
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  store i32 %i.jp, ptr %i.jq, align 4, !tbaa !83
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.jt = load <2 x float>, ptr %i.jr, align 4, !tbaa !34
  store <2 x float> %i.jt, ptr %i.js, align 4, !tbaa !34
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !261
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 48
  store float %i.jv, ptr %i.jw, align 4, !tbaa !82
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.jz = load float, ptr %i.jy, align 4          ; 2 uses
  %i.ka = fcmp ord float %i.jz, 0.000000e+00
  %i.kb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.jz, float -1.000000e+00)
  %i.kc = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.kb, float 1.000000e+00)
  %i.kd = select i1 %i.ka, float %i.kc, float 0.000000e+00
  store float %i.kd, ptr %i.jx, align 4, !tbaa !137
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.ke, ptr noundef nonnull align 4 dereferenceable(256) %i.kf, i64 256, i1 false)
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 324
  %i.kh = getelementptr inbounds nuw i8, ptr %1, i64 324
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.kg, ptr noundef nonnull align 4 dereferenceable(64) %i.kh, i64 64, i1 false)
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 388
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 388 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ki, ptr noundef nonnull align 4 dereferenceable(20) %i.kj, i64 20, i1 false)
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !262
  %i.km = getelementptr inbounds nuw i8, ptr %3, i64 408
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !250
  %i.kn = load i8, ptr %i.kj, align 4, !tbaa !189
  %.not361 = icmp eq i8 %i.kn, 0
  br i1 %.not361, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !263
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.kq = phi i32 [ %i.kp, %bb.ay ], [ -1, %bb.ax ]
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 412
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !252
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !264
  %i.ku = getelementptr inbounds nuw i8, ptr %3, i64 416
  store i32 %i.kt, ptr %i.ku, align 4, !tbaa !123
  %i.kv = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.kv, align 4, !tbaa !138
  %i.kw = and i32 %i.ix, 2
  %.not.i405 = icmp eq i32 %i.kw, 0
  br i1 %.not.i405, label %_fix_masks_combine.exit408, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kx = and i32 %i.jh, 5
  switch i32 %i.kx, label %_fix_masks_combine.exit408 [
    i32 1, label %bb.bb
    i32 5, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.ky = and i32 %i.jh, -6
  %i.kz = or disjoint i32 %i.ky, 4
  br label %.sink.split.i406

bb.bc:                                            ; preds = %bb.ba
  %i.la = and i32 %i.jh, -6
  br label %.sink.split.i406

.sink.split.i406:                                 ; preds = %bb.bc, %bb.bb
  %.sink.i407 = phi i32 [ %i.kz, %bb.bb ], [ %i.la, %bb.bc ]
  store i32 %.sink.i407, ptr %i.jf, align 4, !tbaa !128
  br label %_fix_masks_combine.exit408

_fix_masks_combine.exit408:                       ; preds = %bb.az, %bb.ba, %.sink.split.i406
  %i.lb = and i32 %i.ix, 8
  %.not.i409 = icmp eq i32 %i.lb, 0
  br i1 %.not.i409, label %_fix_masks_combine.exit, label %bb.bd

bb.bd:                                            ; preds = %_fix_masks_combine.exit408
  store float 0.000000e+00, ptr %i.jn, align 4, !tbaa !80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.js, i8 0, i64 16, i1 false)
  store i32 5, ptr %i.jq, align 4, !tbaa !83
  br label %_fix_masks_combine.exit

bb.be:                                            ; preds = %bb.av
  %i.lc = icmp eq i32 %2, 11
  %or.cond21 = and i1 %i.lc, %i.r
  br i1 %or.cond21, label %bb.bf, label %bb.bn

bb.bf:                                            ; preds = %bb.be
  %.not357 = icmp eq i32 %5, 420
  br i1 %.not357, label %bb.bg, label %_fix_masks_combine.exit

bb.bg:                                            ; preds = %bb.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(420) %3, ptr noundef nonnull align 4 dereferenceable(420) %1, i64 420, i1 false), !tbaa.struct !265
  %i.ld = load i32, ptr %3, align 4, !tbaa !76    ; 2 uses
  %i.le = and i32 %i.ld, 2
  %.not.i411 = icmp eq i32 %i.le, 0
  br i1 %.not.i411, label %_fix_masks_combine.exit414, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !128 ; 3 uses
  %i.lh = and i32 %i.lg, 5
  switch i32 %i.lh, label %_fix_masks_combine.exit414 [
    i32 1, label %bb.bi
    i32 5, label %bb.bj
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.li = and i32 %i.lg, -6
  %i.lj = or disjoint i32 %i.li, 4
  br label %.sink.split.i412

bb.bj:                                            ; preds = %bb.bh
  %i.lk = and i32 %i.lg, -6
  br label %.sink.split.i412

.sink.split.i412:                                 ; preds = %bb.bj, %bb.bi
  %.sink.i413 = phi i32 [ %i.lj, %bb.bi ], [ %i.lk, %bb.bj ]
  store i32 %.sink.i413, ptr %i.lf, align 4, !tbaa !128
  br label %_fix_masks_combine.exit414

_fix_masks_combine.exit414:                       ; preds = %bb.bg, %bb.bh, %.sink.split.i412
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.lm = load i8, ptr %i.ll, align 4, !tbaa !189
  %.not358 = icmp eq i8 %i.lm, 0
  br i1 %.not358, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_fix_masks_combine.exit414
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !252
  br label %bb.bl

bb.bl:                                            ; preds = %_fix_masks_combine.exit414, %bb.bk
  %i.lp = phi i32 [ %i.lo, %bb.bk ], [ -1, %_fix_masks_combine.exit414 ]
  %i.lq = getelementptr inbounds nuw i8, ptr %3, i64 412
  store i32 %i.lp, ptr %i.lq, align 4, !tbaa !252
  %i.lr = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.lr, align 4, !tbaa !138
  %i.ls = and i32 %i.ld, 8
  %.not.i415 = icmp eq i32 %i.ls, 0
  br i1 %.not.i415, label %_fix_masks_combine.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lt = getelementptr inbounds nuw i8, ptr %3, i64 32
  store float 0.000000e+00, ptr %i.lt, align 4, !tbaa !80
  %i.lu = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.lv = getelementptr inbounds nuw i8, ptr %3, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.lu, i8 0, i64 16, i1 false)
  store i32 5, ptr %i.lv, align 4, !tbaa !83
  br label %_fix_masks_combine.exit

bb.bn:                                            ; preds = %bb.be
  %i.lw = icmp eq i32 %2, 12
  %or.cond23 = and i1 %i.lw, %i.r
  br i1 %or.cond23, label %bb.bo, label %bb.bt

bb.bo:                                            ; preds = %bb.bn
  %.not355 = icmp eq i32 %5, 420
  br i1 %.not355, label %bb.bp, label %_fix_masks_combine.exit

bb.bp:                                            ; preds = %bb.bo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(420) %3, ptr noundef nonnull align 4 dereferenceable(420) %1, i64 420, i1 false), !tbaa.struct !265
  %i.lx = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.ly = load i8, ptr %i.lx, align 4, !tbaa !189
  %.not356 = icmp eq i8 %i.ly, 0
  br i1 %.not356, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 412
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !252
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %i.mb = phi i32 [ %i.ma, %bb.bq ], [ -1, %bb.bp ]
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 412
  store i32 %i.mb, ptr %i.mc, align 4, !tbaa !252
  %i.md = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.md, align 4, !tbaa !138
  %i.me = load i32, ptr %3, align 4, !tbaa !76
  %i.mf = and i32 %i.me, 8
  %.not.i417 = icmp eq i32 %i.mf, 0
  br i1 %.not.i417, label %_fix_masks_combine.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mg = getelementptr inbounds nuw i8, ptr %3, i64 32
  store float 0.000000e+00, ptr %i.mg, align 4, !tbaa !80
  %i.mh = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.mi = getelementptr inbounds nuw i8, ptr %3, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mh, i8 0, i64 16, i1 false)
  store i32 5, ptr %i.mi, align 4, !tbaa !83
  br label %_fix_masks_combine.exit

bb.bt:                                            ; preds = %bb.bn
  %i.mj = icmp eq i32 %2, 13
  %.not354 = icmp eq i32 %5, 420
  %i.mk = and i1 %i.mj, %.not354
  %or.cond378 = and i1 %i.r, %i.mk
  br i1 %or.cond378, label %bb.bu, label %_fix_masks_combine.exit

bb.bu:                                            ; preds = %bb.bt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(420) %3, ptr noundef nonnull align 4 dereferenceable(420) %1, i64 420, i1 false), !tbaa.struct !265
  %i.ml = load i32, ptr %3, align 4, !tbaa !76
  %i.mm = and i32 %i.ml, 8
  %.not.i419 = icmp eq i32 %i.mm, 0
  br i1 %.not.i419, label %_fix_masks_combine.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mn = getelementptr inbounds nuw i8, ptr %3, i64 32
  store float 0.000000e+00, ptr %i.mn, align 4, !tbaa !80
  %i.mo = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.mp = getelementptr inbounds nuw i8, ptr %3, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.mo, i8 0, i64 16, i1 false)
  store i32 5, ptr %i.mp, align 4, !tbaa !83
  br label %_fix_masks_combine.exit

_fix_masks_combine.exit:                          ; preds = %_blend_legacy_blend_mode.exit383.rtvec, %_blend_legacy_blend_mode.exit383.rtscalar, %bb.bv, %bb.bu, %bb.bs, %bb.br, %bb.bm, %bb.bl, %bb.bd, %_fix_masks_combine.exit408, %bb.au, %_fix_masks_combine.exit403, %.sink.split.i397, %bb.aj, %bb.ai, %.sink.split.i393, %bb.ad, %bb.ac, %.sink.split.i389, %bb.x, %bb.w, %.sink.split.i, %bb.r, %bb.q, %bb.bt, %bb.bo, %bb.bf, %bb.aw, %bb.an, %bb.ah, %bb.ab, %bb.v, %bb.p, %bb.m, %bb.j, %bb.g, %bb.d, %bb.n, %_blend_legacy_blend_mode.exit386, %_blend_legacy_blend_mode.exit, %.loopexit
  %.0 = phi i32 [ 0, %.loopexit ], [ 1, %bb.bt ], [ 0, %_blend_legacy_blend_mode.exit ], [ 1, %bb.d ], [ 0, %bb.bv ], [ 1, %bb.g ], [ 0, %_blend_legacy_blend_mode.exit386 ], [ 1, %bb.j ], [ 0, %bb.n ], [ 1, %bb.m ], [ 0, %bb.bs ], [ 1, %bb.p ], [ 0, %.sink.split.i ], [ 1, %bb.v ], [ 0, %.sink.split.i389 ], [ 1, %bb.ab ], [ 0, %.sink.split.i393 ], [ 1, %bb.ah ], [ 0, %.sink.split.i397 ], [ 1, %bb.an ], [ 0, %bb.au ], [ 1, %bb.aw ], [ 0, %bb.bd ], [ 1, %bb.bf ], [ 0, %bb.bm ], [ 1, %bb.bo ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.ac ], [ 0, %bb.ad ], [ 0, %bb.ai ], [ 0, %bb.aj ], [ 0, %_fix_masks_combine.exit403 ], [ 0, %_fix_masks_combine.exit408 ], [ 0, %bb.bl ], [ 0, %bb.br ], [ 0, %bb.bu ], [ 0, %_blend_legacy_blend_mode.exit383.rtscalar ], [ 0, %_blend_legacy_blend_mode.exit383.rtvec ]
  ret i32 %.0

_blend_legacy_blend_mode.exit383.rtvec:           ; preds = %_blend_legacy_blend_mode.exit383
  store i32 %.not.i382, ptr %.sroa.15.0..sroa_idx454, align 4, !tbaa !35
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !266
  %i.ms = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.mr, ptr %i.ms, align 4, !tbaa !84
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !267
  %i.mv = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.mu, ptr %i.mv, align 4, !tbaa !136
  %i.mw = and i32 %i.ak, 255
  %i.mx = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.mw, ptr %i.mx, align 4, !tbaa !36
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.mz = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.na = load <8 x float>, ptr %i.my, align 4, !tbaa !34
  store <8 x float> %i.na, ptr %i.mz, align 4, !tbaa !34
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.nc = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.nd = load <8 x float>, ptr %i.nb, align 4, !tbaa !34
  store <8 x float> %i.nd, ptr %i.nc, align 4, !tbaa !34
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.nf = getelementptr inbounds nuw i8, ptr %3, i64 132
  %i.ng = load <8 x float>, ptr %i.ne, align 4, !tbaa !34
  store <8 x float> %i.ng, ptr %i.nf, align 4, !tbaa !34
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ni = getelementptr inbounds nuw i8, ptr %3, i64 164
  %i.nj = load <8 x float>, ptr %i.nh, align 4, !tbaa !34
  store <8 x float> %i.nj, ptr %i.ni, align 4, !tbaa !34
  %i.nk = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.nk, align 4, !tbaa !138
  br label %_fix_masks_combine.exit

_blend_legacy_blend_mode.exit383.rtscalar:        ; preds = %_blend_legacy_blend_mode.exit383
  store i32 %.not.i382, ptr %.sroa.15.0..sroa_idx454, align 4, !tbaa !35
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !266
  %i.nn = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.nm, ptr %i.nn, align 4, !tbaa !84
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.np = load i32, ptr %i.no, align 4, !tbaa !267
  %i.nq = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.np, ptr %i.nq, align 4, !tbaa !136
  %i.nr = and i32 %i.ak, 255
  %i.ns = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.nr, ptr %i.ns, align 4, !tbaa !36
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nu = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.nv = load float, ptr %i.nt, align 4, !tbaa !34
  store float %i.nv, ptr %i.nu, align 4, !tbaa !34
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !34
  %i.ny = getelementptr inbounds nuw i8, ptr %3, i64 72
  store float %i.nx, ptr %i.ny, align 4, !tbaa !34
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !34
  %i.ob = getelementptr inbounds nuw i8, ptr %3, i64 76
  store float %i.oa, ptr %i.ob, align 4, !tbaa !34
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.od = load float, ptr %i.oc, align 4, !tbaa !34
  %i.oe = getelementptr inbounds nuw i8, ptr %3, i64 80
  store float %i.od, ptr %i.oe, align 4, !tbaa !34
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.og = load float, ptr %i.of, align 4, !tbaa !34
  %i.oh = getelementptr inbounds nuw i8, ptr %3, i64 84
  store float %i.og, ptr %i.oh, align 4, !tbaa !34
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !34
  %i.ok = getelementptr inbounds nuw i8, ptr %3, i64 88
  store float %i.oj, ptr %i.ok, align 4, !tbaa !34
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.om = load float, ptr %i.ol, align 4, !tbaa !34
  %i.on = getelementptr inbounds nuw i8, ptr %3, i64 92
  store float %i.om, ptr %i.on, align 4, !tbaa !34
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.op = load float, ptr %i.oo, align 4, !tbaa !34
  %i.oq = getelementptr inbounds nuw i8, ptr %3, i64 96
  store float %i.op, ptr %i.oq, align 4, !tbaa !34
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.os = load float, ptr %i.or, align 4, !tbaa !34
  %i.ot = getelementptr inbounds nuw i8, ptr %3, i64 100
  store float %i.os, ptr %i.ot, align 4, !tbaa !34
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !34
  %i.ow = getelementptr inbounds nuw i8, ptr %3, i64 104
  store float %i.ov, ptr %i.ow, align 4, !tbaa !34
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !34
  %i.oz = getelementptr inbounds nuw i8, ptr %3, i64 108
  store float %i.oy, ptr %i.oz, align 4, !tbaa !34
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !34
  %i.pc = getelementptr inbounds nuw i8, ptr %3, i64 112
  store float %i.pb, ptr %i.pc, align 4, !tbaa !34
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !34
  %i.pf = getelementptr inbounds nuw i8, ptr %3, i64 116
  store float %i.pe, ptr %i.pf, align 4, !tbaa !34
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !34
  %i.pi = getelementptr inbounds nuw i8, ptr %3, i64 120
  store float %i.ph, ptr %i.pi, align 4, !tbaa !34
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !34
  %i.pl = getelementptr inbounds nuw i8, ptr %3, i64 124
  store float %i.pk, ptr %i.pl, align 4, !tbaa !34
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !34
  %i.po = getelementptr inbounds nuw i8, ptr %3, i64 128
  store float %i.pn, ptr %i.po, align 4, !tbaa !34
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !34
  %i.pr = getelementptr inbounds nuw i8, ptr %3, i64 132
  store float %i.pq, ptr %i.pr, align 4, !tbaa !34
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !34
  %i.pu = getelementptr inbounds nuw i8, ptr %3, i64 136
  store float %i.pt, ptr %i.pu, align 4, !tbaa !34
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !34
  %i.px = getelementptr inbounds nuw i8, ptr %3, i64 140
  store float %i.pw, ptr %i.px, align 4, !tbaa !34
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.pz = load float, ptr %i.py, align 4, !tbaa !34
  %i.qa = getelementptr inbounds nuw i8, ptr %3, i64 144
  store float %i.pz, ptr %i.qa, align 4, !tbaa !34
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !34
  %i.qd = getelementptr inbounds nuw i8, ptr %3, i64 148
  store float %i.qc, ptr %i.qd, align 4, !tbaa !34
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !34
  %i.qg = getelementptr inbounds nuw i8, ptr %3, i64 152
  store float %i.qf, ptr %i.qg, align 4, !tbaa !34
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !34
  %i.qj = getelementptr inbounds nuw i8, ptr %3, i64 156
  store float %i.qi, ptr %i.qj, align 4, !tbaa !34
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !34
  %i.qm = getelementptr inbounds nuw i8, ptr %3, i64 160
  store float %i.ql, ptr %i.qm, align 4, !tbaa !34
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !34
  %i.qp = getelementptr inbounds nuw i8, ptr %3, i64 164
  store float %i.qo, ptr %i.qp, align 4, !tbaa !34
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !34
  %i.qs = getelementptr inbounds nuw i8, ptr %3, i64 168
  store float %i.qr, ptr %i.qs, align 4, !tbaa !34
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !34
  %i.qv = getelementptr inbounds nuw i8, ptr %3, i64 172
  store float %i.qu, ptr %i.qv, align 4, !tbaa !34
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !34
  %i.qy = getelementptr inbounds nuw i8, ptr %3, i64 176
  store float %i.qx, ptr %i.qy, align 4, !tbaa !34
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !34
  %i.rb = getelementptr inbounds nuw i8, ptr %3, i64 180
  store float %i.ra, ptr %i.rb, align 4, !tbaa !34
  %i.rc = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !34
  %i.re = getelementptr inbounds nuw i8, ptr %3, i64 184
  store float %i.rd, ptr %i.re, align 4, !tbaa !34
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !34
  %i.rh = getelementptr inbounds nuw i8, ptr %3, i64 188
  store float %i.rg, ptr %i.rh, align 4, !tbaa !34
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !34
  %i.rk = getelementptr inbounds nuw i8, ptr %3, i64 192
  store float %i.rj, ptr %i.rk, align 4, !tbaa !34
  %i.rl = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 0, ptr %i.rl, align 4, !tbaa !138
  br label %_fix_masks_combine.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 0, -2147483622) i32 @_blend_legacy_blend_mode(i32 noundef %0) unnamed_addr #9 {
bb.a:
  %i.a = and i32 %0, 255                          ; 2 uses
  %trunc = trunc i32 %0 to i8
  %i.b = icmp ult i8 %trunc, 37
  br i1 %i.b, label %switch.hole_check, label %bb.b

switch.hole_check:                                ; preds = %bb.a
  %trunc.mask = and i32 %0, 63
  %switch.maskindex = zext nneg i32 %trunc.mask to i64
  %switch.shifted = lshr i64 68722622467, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %switch.hole_check
  %trunc.mask5 = and i32 %0, 63
  %i.c = zext nneg i32 %trunc.mask5 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._blend_legacy_blend_mode, i64 %i.c
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %switch.hole_check, %bb.a
  %.not = phi i32 [ %i.a, %bb.a ], [ %switch.load, %switch.lookup ], [ %i.a, %switch.hole_check ]
  ret i32 %.not
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #6

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_develop_blend_legacy_params_from_so(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(1120) ptr @calloc(i64 noundef 1, i64 noundef 1120) #15 ; 5 uses
  %i.b = tail call i32 @dt_iop_load_module_by_so(ptr noundef %i.a, ptr noundef %0, ptr noundef null) #14
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 696
  %i.d = load i32, ptr %i.c, align 8, !tbaa !268
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @dt_develop_blend_legacy_params(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 14, i32 noundef %5)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.0.ph = phi i32 [ %i.f, %bb.c ], [ 1, %bb.b ]
  tail call void @dt_iop_cleanup_module(ptr noundef nonnull %i.a) #14
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %.0.ph, %.sink.split ]
  tail call void @free(ptr noundef %i.a) #14
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

declare i32 @dt_iop_load_module_by_so(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dt_iop_cleanup_module(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

declare ptr @dt_masks_calc_detail_mask(ptr noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare ptr @dt_dev_distort_detail_mask(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

declare void @guided_filter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @dt_iop_image_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS8_GModule", !12, i64 0}
!14 = !{!"p1 int", !12, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!"dt_dev_histogram_stats_t", !9, i64 0, !15, i64 8, !9, i64 16, !9, i64 20}
!17 = !{!"p1 _ZTS12dt_develop_t", !12, i64 0}
!18 = !{!"dt_pthread_mutex_t", !8, i64 0}
!19 = !{!"p1 _ZTS25dt_develop_blend_params_t", !12, i64 0}
!20 = !{!"p1 _ZTS11_GHashTable", !12, i64 0}
!21 = !{!"", !20, i64 0, !20, i64 8}
!22 = !{!"p1 _ZTS15dt_iop_module_t", !12, i64 0}
!23 = !{!"", !22, i64 0, !9, i64 8}
!24 = !{!"", !21, i64 0, !23, i64 16}
!25 = !{!"p1 _ZTS10_GtkWidget", !12, i64 0}
!26 = !{!"p1 _ZTS7_GSList", !12, i64 0}
!27 = !{!"p1 _ZTS18dt_iop_module_so_t", !12, i64 0}
!28 = !{!"dt_iop_module_t", !9, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !12, i64 368, !12, i64 376, !12, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !12, i64 440, !13, i64 448, !8, i64 456, !9, i64 476, !9, i64 480, !9, i64 484, !9, i64 488, !9, i64 492, !9, i64 496, !9, i64 500, !9, i64 504, !8, i64 512, !8, i64 528, !8, i64 544, !8, i64 560, !8, i64 576, !8, i64 592, !14, i64 608, !16, i64 616, !8, i64 640, !9, i64 656, !9, i64 660, !17, i64 664, !9, i64 672, !9, i64 676, !12, i64 680, !12, i64 688, !9, i64 696, !12, i64 704, !18, i64 712, !12, i64 752, !12, i64 760, !19, i64 768, !19, i64 776, !12, i64 784, !24, i64 792, !25, i64 824, !25, i64 832, !25, i64 840, !25, i64 848, !25, i64 856, !25, i64 864, !25, i64 872, !9, i64 880, !25, i64 888, !25, i64 896, !25, i64 904, !26, i64 912, !26, i64 920, !25, i64 928, !25, i64 936, !9, i64 944, !27, i64 952, !9, i64 960, !8, i64 964, !9, i64 1092, !25, i64 1096, !12, i64 1104, !9, i64 1112}
!29 = !{!28, !12, i64 64}
!30 = !{!28, !12, i64 144}
!31 = !{!"float", !8, i64 0}
!32 = !{!"dt_develop_blend_params_t", !9, i64 0, !9, i64 4, !9, i64 8, !31, i64 12, !31, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !31, i64 32, !9, i64 36, !31, i64 40, !31, i64 44, !31, i64 48, !31, i64 52, !9, i64 56, !8, i64 60, !8, i64 68, !8, i64 324, !8, i64 388, !9, i64 408, !9, i64 412, !9, i64 416}
!33 = !{!32, !9, i64 4}
!34 = !{!31, !31, i64 0}
!35 = !{!32, !9, i64 8}
!36 = !{!32, !9, i64 28}
!37 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !12, i64 0}
!38 = !{!"p1 _ZTS18dt_histogram_roi_t", !12, i64 0}
!39 = !{!"dt_dev_histogram_collection_params_t", !38, i64 0, !9, i64 8}
!40 = !{!"dt_iop_roi_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !31, i64 16}
!41 = !{!"short", !8, i64 0}
!42 = !{!"", !41, i64 0, !41, i64 2}
!43 = !{!"", !9, i64 0, !8, i64 16}
!44 = !{!"dt_iop_buffer_dsc_t", !9, i64 0, !9, i64 4, !9, i64 8, !8, i64 12, !42, i64 48, !43, i64 64, !8, i64 96, !9, i64 112}
!45 = !{!"p1 float", !12, i64 0}
!46 = !{!"dt_dev_distorted_mask_cache_t", !45, i64 0, !40, i64 8, !15, i64 32, !15, i64 40}
!47 = !{!"dt_dev_pixelpipe_iop_t", !22, i64 0, !37, i64 8, !12, i64 16, !12, i64 24, !9, i64 32, !9, i64 36, !39, i64 40, !14, i64 56, !16, i64 64, !8, i64 88, !31, i64 104, !9, i64 108, !9, i64 112, !15, i64 120, !9, i64 128, !9, i64 132, !40, i64 136, !40, i64 156, !40, i64 176, !40, i64 196, !9, i64 216, !9, i64 220, !44, i64 224, !44, i64 352, !8, i64 480, !9, i64 516, !20, i64 520, !46, i64 528, !46, i64 576}
!48 = !{!47, !12, i64 24}
!49 = !{!47, !22, i64 0}
!50 = !{!47, !37, i64 8}
!51 = !{!28, !17, i64 664}
!52 = !{!"double", !8, i64 0}
!53 = !{!"p1 omnipotent char", !12, i64 0}
!54 = !{!"dt_image_raw_parameters_t", !9, i64 0, !9, i64 3}
!55 = !{!"dt_image_geoloc_t", !52, i64 0, !52, i64 8, !52, i64 16}
!56 = !{!"_color_harmony_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !8, i64 16}
!57 = !{!"p1 _ZTS6_GList", !12, i64 0}
!58 = !{!"p1 _ZTS16dt_cache_entry_t", !12, i64 0}
!59 = !{!"dt_image_t", !9, i64 0, !9, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20, !31, i64 24, !31, i64 28, !31, i64 32, !31, i64 36, !9, i64 40, !8, i64 44, !8, i64 108, !8, i64 172, !8, i64 300, !8, i64 364, !8, i64 428, !8, i64 492, !15, i64 560, !9, i64 568, !8, i64 572, !8, i64 800, !8, i64 864, !8, i64 928, !8, i64 992, !9, i64 1120, !8, i64 1124, !9, i64 1380, !9, i64 1384, !9, i64 1388, !9, i64 1392, !9, i64 1396, !9, i64 1400, !9, i64 1404, !9, i64 1408, !9, i64 1412, !9, i64 1416, !31, i64 1420, !9, i64 1424, !9, i64 1428, !9, i64 1432, !9, i64 1436, !9, i64 1440, !9, i64 1444, !15, i64 1448, !15, i64 1456, !15, i64 1464, !15, i64 1472, !9, i64 1480, !44, i64 1488, !8, i64 1616, !53, i64 1656, !9, i64 1664, !9, i64 1668, !54, i64 1672, !55, i64 1680, !56, i64 1704, !41, i64 1736, !8, i64 1738, !9, i64 1748, !9, i64 1752, !31, i64 1756, !31, i64 1760, !8, i64 1776, !8, i64 1792, !8, i64 1840, !57, i64 1856, !58, i64 1864, !9, i64 1872, !9, i64 1876}
!60 = !{!"p1 _ZTS15dt_masks_form_t", !12, i64 0}
!61 = !{!"p1 _ZTS19dt_masks_form_gui_t", !12, i64 0}
!62 = !{!"dt_dev_proxy_exposure_t", !22, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!63 = !{!"p1 _ZTS15dt_lib_module_t", !12, i64 0}
!64 = !{!"", !63, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64}
!65 = !{!"", !63, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!66 = !{!"", !62, i64 0, !22, i64 40, !64, i64 48, !65, i64 120}
!67 = !{!"dt_dev_chroma_t", !22, i64 0, !22, i64 8, !8, i64 16, !8, i64 32, !8, i64 64, !9, i64 96}
!68 = !{!"", !22, i64 0, !22, i64 8, !12, i64 16}
!69 = !{!"", !25, i64 0, !25, i64 8, !9, i64 16, !9, i64 20, !31, i64 24, !31, i64 28, !9, i64 32}
!70 = !{!"", !25, i64 0, !25, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !31, i64 28}
!71 = !{!"", !25, i64 0, !25, i64 8}
!72 = !{!"", !25, i64 0, !9, i64 8}
!73 = !{!"", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32}
!74 = !{!"dt_dev_viewport_t", !25, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !31, i64 68, !31, i64 72, !31, i64 76, !37, i64 80, !25, i64 88, !17, i64 96}
!75 = !{!"dt_develop_t", !9, i64 0, !9, i64 4, !9, i64 8, !12, i64 16, !52, i64 24, !52, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !52, i64 64, !9, i64 72, !9, i64 76, !9, i64 80, !22, i64 88, !37, i64 96, !59, i64 112, !9, i64 2000, !9, i64 2004, !18, i64 2008, !9, i64 2048, !57, i64 2056, !9, i64 2064, !22, i64 2072, !9, i64 2080, !57, i64 2088, !57, i64 2096, !9, i64 2104, !57, i64 2112, !57, i64 2120, !14, i64 2128, !14, i64 2136, !9, i64 2144, !9, i64 2148, !57, i64 2152, !60, i64 2160, !61, i64 2168, !57, i64 2176, !9, i64 2184, !9, i64 2188, !9, i64 2192, !31, i64 2196, !31, i64 2200, !22, i64 2208, !9, i64 2216, !66, i64 2224, !67, i64 2384, !68, i64 2496, !69, i64 2520, !70, i64 2560, !71, i64 2592, !72, i64 2608, !73, i64 2624, !25, i64 2664, !25, i64 2672, !74, i64 2680, !74, i64 2784, !9, i64 2888, !9, i64 2892, !9, i64 2896, !9, i64 2900, !57, i64 2904, !9, i64 2912, !17, i64 2920}
!76 = !{!32, !9, i64 0}
!77 = !{!40, !9, i64 8}
!78 = !{!40, !9, i64 12}
!79 = !{!9, !9, i64 0}
!80 = !{!32, !31, i64 32}
!81 = !{!32, !31, i64 40}
!82 = !{!32, !31, i64 48}
!83 = !{!32, !9, i64 36}
!84 = !{!32, !31, i64 16}
!85 = !{!"dt_codepath_t", !9, i64 0}
!86 = !{!"p1 _ZTS11_JsonParser", !12, i64 0}
!87 = !{!"p1 _ZTS9dt_conf_t", !12, i64 0}
!88 = !{!"p1 _ZTS8dt_lib_t", !12, i64 0}
!89 = !{!"p1 _ZTS17dt_view_manager_t", !12, i64 0}
!90 = !{!"p1 _ZTS12dt_control_t", !12, i64 0}
!91 = !{!"p1 _ZTS19dt_control_signal_t", !12, i64 0}
!92 = !{!"p1 _ZTS12dt_gui_gtk_t", !12, i64 0}
!93 = !{!"p1 _ZTS17dt_mipmap_cache_t", !12, i64 0}
!94 = !{!"p1 _ZTS16dt_image_cache_t", !12, i64 0}
!95 = !{!"p1 _ZTS12dt_bauhaus_t", !12, i64 0}
!96 = !{!"p1 _ZTS13dt_database_t", !12, i64 0}
!97 = !{!"p1 _ZTS14dt_pwstorage_t", !12, i64 0}
!98 = !{!"p1 _ZTS11dt_camctl_t", !12, i64 0}
!99 = !{!"p1 _ZTS15dt_collection_t", !12, i64 0}
!100 = !{!"p1 _ZTS14dt_selection_t", !12, i64 0}
!101 = !{!"p1 _ZTS11dt_points_t", !12, i64 0}
!102 = !{!"p1 _ZTS12dt_imageio_t", !12, i64 0}
!103 = !{!"p1 _ZTS11dt_opencl_t", !12, i64 0}
!104 = !{!"p1 _ZTS9dt_dbus_t", !12, i64 0}
!105 = !{!"p1 _ZTS9dt_undo_t", !12, i64 0}
!106 = !{!"p1 _ZTS16dt_colorspaces_t", !12, i64 0}
!107 = !{!"p1 _ZTS9dt_l10n_t", !12, i64 0}
!108 = !{!"p1 _ZTS9lua_State", !12, i64 0}
!109 = !{!"_Bool", !8, i64 0}
!110 = !{!"p1 _ZTS10_GMainLoop", !12, i64 0}
!111 = !{!"p1 _ZTS13_GMainContext", !12, i64 0}
!112 = !{!"p1 _ZTS12_GThreadPool", !12, i64 0}
!113 = !{!"p1 _ZTS12_GAsyncQueue", !12, i64 0}
!114 = !{!"", !108, i64 0, !18, i64 8, !8, i64 48, !109, i64 96, !109, i64 97, !110, i64 104, !111, i64 112, !112, i64 120, !113, i64 128, !113, i64 136, !113, i64 144}
!115 = !{!"p1 _ZTS10_GTimeZone", !12, i64 0}
!116 = !{!"p1 _ZTS10_GDateTime", !12, i64 0}
!117 = !{!"dt_sys_resources_t", !15, i64 0, !15, i64 8, !14, i64 16, !14, i64 24, !9, i64 32}
!118 = !{!"dt_backthumb_t", !52, i64 0, !52, i64 8, !9, i64 16, !9, i64 20}
!119 = !{!"dt_gimp_t", !9, i64 0, !53, i64 8, !53, i64 16, !9, i64 24, !9, i64 28}
!120 = !{!"dt_splash_t", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !9, i64 32}
!121 = !{!"darktable_t", !85, i64 0, !9, i64 4, !9, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !86, i64 48, !87, i64 56, !17, i64 64, !88, i64 72, !89, i64 80, !90, i64 88, !91, i64 96, !92, i64 104, !93, i64 112, !94, i64 120, !95, i64 128, !96, i64 136, !97, i64 144, !98, i64 152, !99, i64 160, !100, i64 168, !101, i64 176, !102, i64 184, !103, i64 192, !104, i64 200, !105, i64 208, !106, i64 216, !107, i64 224, !8, i64 232, !18, i64 2792, !18, i64 2832, !18, i64 2872, !18, i64 2912, !18, i64 2952, !18, i64 2992, !53, i64 3032, !53, i64 3040, !53, i64 3048, !53, i64 3056, !53, i64 3064, !53, i64 3072, !53, i64 3080, !53, i64 3088, !53, i64 3096, !53, i64 3104, !53, i64 3112, !53, i64 3120, !53, i64 3128, !114, i64 3136, !57, i64 3288, !52, i64 3296, !57, i64 3304, !9, i64 3312, !8, i64 3316, !9, i64 3512, !9, i64 3516, !115, i64 3520, !116, i64 3528, !117, i64 3536, !118, i64 3576, !119, i64 3600, !120, i64 3632, !9, i64 3672}
!122 = !{!121, !9, i64 8}
!123 = !{!32, !9, i64 416}
!124 = !{!"llvm.loop.isvectorized", i32 1}
!125 = !{!"llvm.loop.unroll.runtime.disable"}
!126 = !{!"branch_weights", i32 4, i32 28}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = !{!32, !9, i64 20}
!129 = !{!"any p2 pointer", !12, i64 0}
!130 = !{!"p1 long", !12, i64 0}
!131 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !12, i64 0}
!132 = !{!"dt_dev_pixelpipe_cache_t", !9, i64 0, !15, i64 8, !15, i64 16, !129, i64 24, !130, i64 32, !131, i64 40, !130, i64 48, !14, i64 56, !14, i64 64, !15, i64 72, !9, i64 80, !15, i64 88, !15, i64 96, !9, i64 104, !9, i64 108, !9, i64 112}
!133 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !12, i64 0}
!134 = !{!"dt_dev_detail_mask_t", !40, i64 0, !15, i64 24, !45, i64 32}
!135 = !{!"dt_dev_pixelpipe_t", !132, i64 0, !9, i64 120, !15, i64 128, !45, i64 136, !9, i64 144, !9, i64 148, !31, i64 152, !9, i64 156, !9, i64 160, !44, i64 176, !133, i64 304, !133, i64 312, !133, i64 320, !133, i64 328, !57, i64 336, !9, i64 344, !9, i64 348, !9, i64 352, !9, i64 356, !53, i64 360, !15, i64 368, !9, i64 376, !9, i64 380, !31, i64 384, !8, i64 388, !15, i64 416, !18, i64 424, !18, i64 464, !18, i64 504, !9, i64 544, !9, i64 548, !9, i64 552, !134, i64 560, !9, i64 600, !9, i64 604, !9, i64 608, !8, i64 612, !9, i64 616, !9, i64 620, !9, i64 624, !9, i64 628, !9, i64 632, !9, i64 636, !9, i64 640, !9, i64 644, !9, i64 648, !9, i64 652, !59, i64 656, !9, i64 2544, !53, i64 2552, !9, i64 2560, !57, i64 2568, !57, i64 2576, !57, i64 2584, !9, i64 2592, !45, i64 2600, !15, i64 2608, !8, i64 2616, !8, i64 2632}
!136 = !{!32, !9, i64 24}
!137 = !{!32, !31, i64 52}
!138 = !{!32, !9, i64 56}
!139 = !{!32, !31, i64 12}
!140 = !{!75, !57, i64 2088}
!141 = distinct !{!141, !124, !125}
!142 = distinct !{!142, !124, !125}
!143 = distinct !{!143, !127}
!144 = distinct !{!144, !124}
!145 = distinct !{!145, !"_develop_blend_process_mask_tone_curve"}
!146 = distinct !{!146, !145, !"_develop_blend_process_mask_tone_curve: argument 0"}
!147 = distinct !{!147, !124, !125}
!148 = distinct !{!148, !124, !125}
!149 = distinct !{!149, !124, !125}
!150 = distinct !{!150, !124, !125}
!151 = distinct !{!151, !125, !124}
!152 = distinct !{!152, !125, !124}
!153 = distinct !{!153, !125, !124}
!154 = distinct !{!154, !125, !124}
!155 = !{!47, !9, i64 132}
!156 = !{!75, !37, i64 2760}
!157 = !{!28, !9, i64 500}
!158 = !{!28, !9, i64 504}
!159 = !{!32, !31, i64 44}
!160 = !{!28, !22, i64 808}
!161 = !{!28, !9, i64 816}
!162 = !{!135, !57, i64 2584}
!163 = !{!28, !19, i64 768}
!164 = !{!40, !31, i64 16}
!165 = !{!47, !31, i64 104}
!166 = !{!146}
!167 = !{!135, !9, i64 628}
!168 = distinct !{!168, !"LVerDomain"}
!169 = distinct !{!169, !168}
!170 = distinct !{!170, !168}
!171 = distinct !{!171, !124, !125}
!172 = distinct !{!172, !124, !125}
!173 = distinct !{!173, !127}
!174 = distinct !{!174, !124}
!175 = !{!135, !45, i64 592}
!176 = !{!135, !15, i64 584}
!177 = !{!169}
!178 = !{!170}
!179 = !{!"dt_develop_tiling_t", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !9, i64 16, !9, i64 20, !9, i64 24}
!180 = !{!179, !9, i64 16}
!181 = !{!179, !9, i64 20}
!182 = !{!179, !9, i64 24}
!183 = !{!134, !45, i64 32}
!184 = !{!134, !9, i64 8}
!185 = !{!134, !9, i64 12}
!186 = !{!135, !9, i64 652}
!187 = !{!179, !31, i64 0}
!188 = !{!179, !31, i64 4}
!189 = !{!8, !8, i64 0}
!190 = !{i64 0, i64 4, !79, i64 4, i64 4, !34, i64 8, i64 4, !34, i64 12, i64 4, !79, i64 16, i64 4, !79, i64 20, i64 4, !79, i64 24, i64 4, !34, i64 28, i64 4, !79, i64 32, i64 4, !34, i64 36, i64 4, !34, i64 40, i64 4, !34, i64 44, i64 4, !34, i64 48, i64 4, !79, i64 52, i64 8, !189, i64 60, i64 256, !189, i64 316, i64 64, !189, i64 380, i64 20, !189, i64 400, i64 4, !79, i64 404, i64 4, !79, i64 408, i64 4, !79}
!191 = !{i64 0, i64 8, !189, i64 8, i64 20, !189, i64 28, i64 4, !79, i64 32, i64 4, !79, i64 36, i64 4, !79}
!192 = !{!"dt_develop_blend_params1_t", !9, i64 0, !31, i64 4, !9, i64 8}
!193 = !{!192, !9, i64 0}
!194 = !{!192, !31, i64 4}
!195 = !{!192, !9, i64 8}
!196 = !{!"dt_develop_blend_params2_t", !9, i64 0, !31, i64 4, !9, i64 8, !9, i64 12, !8, i64 16}
!197 = !{!196, !9, i64 0}
!198 = !{!196, !9, i64 12}
!199 = !{!"branch_weights", i32 1, i32 1048575}
!200 = !{!"dt_develop_blend_params3_t", !9, i64 0, !31, i64 4, !9, i64 8, !9, i64 12, !8, i64 16}
!201 = !{!200, !9, i64 0}
!202 = !{!200, !9, i64 12}
!203 = !{!200, !31, i64 4}
!204 = !{!200, !9, i64 8}
!205 = !{!"dt_develop_blend_params4_t", !9, i64 0, !31, i64 4, !9, i64 8, !9, i64 12, !31, i64 16, !8, i64 20}
!206 = !{!205, !9, i64 0}
!207 = !{!205, !31, i64 4}
!208 = !{!205, !31, i64 16}
!209 = !{!205, !9, i64 12}
!210 = !{!"dt_develop_blend_params5_t", !9, i64 0, !9, i64 4, !31, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !31, i64 24, !8, i64 28, !8, i64 44}
!211 = !{!210, !9, i64 0}
!212 = !{!210, !9, i64 4}
!213 = !{!210, !31, i64 8}
!214 = !{!210, !9, i64 12}
!215 = !{!210, !31, i64 24}
!216 = !{!210, !9, i64 20}
!217 = !{!"dt_develop_blend_params6_t", !9, i64 0, !9, i64 4, !31, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !31, i64 24, !8, i64 28, !8, i64 44}
!218 = !{!217, !9, i64 0}
!219 = !{!217, !9, i64 4}
!220 = !{!217, !31, i64 8}
!221 = !{!217, !9, i64 12}
!222 = !{!217, !31, i64 24}
!223 = !{!217, !9, i64 20}
!224 = !{!"dt_develop_blend_params7_t", !9, i64 0, !9, i64 4, !31, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !31, i64 24, !8, i64 28, !8, i64 44}
!225 = !{!224, !9, i64 0}
!226 = !{!224, !9, i64 4}
!227 = !{!224, !31, i64 8}
!228 = !{!224, !9, i64 12}
!229 = !{!224, !31, i64 24}
!230 = !{!224, !9, i64 20}
!231 = !{!"dt_develop_blend_params8_t", !9, i64 0, !9, i64 4, !31, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !31, i64 24, !9, i64 28, !31, i64 32, !31, i64 36, !31, i64 40, !8, i64 44, !8, i64 60}
!232 = !{!231, !9, i64 0}
!233 = !{!231, !9, i64 4}
!234 = !{!231, !31, i64 8}
!235 = !{!231, !9, i64 12}
!236 = !{!231, !9, i64 20}
!237 = !{!231, !31, i64 24}
!238 = !{!231, !9, i64 28}
!239 = !{!231, !31, i64 40}
!240 = !{!"dt_develop_blend_params9_t", !9, i64 0, !9, i64 4, !31, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !31, i64 24, !9, i64 28, !31, i64 32, !31, i64 36, !31, i64 40, !8, i64 44, !8, i64 60, !8, i64 316, !9, i64 336, !9, i64 340, !9, i64 344}
!241 = !{!240, !9, i64 0}
!242 = !{!240, !9, i64 4}
!243 = !{!240, !31, i64 8}
!244 = !{!240, !9, i64 12}
!245 = !{!240, !9, i64 20}
!246 = !{!240, !31, i64 24}
!247 = !{!240, !9, i64 28}
!248 = !{!240, !31, i64 40}
!249 = !{!240, !9, i64 336}
!250 = !{!32, !9, i64 408}
!251 = !{!240, !9, i64 340}
!252 = !{!32, !9, i64 412}
!253 = !{!240, !9, i64 344}
!254 = !{!"dt_develop_blend_params10_t", !9, i64 0, !9, i64 4, !9, i64 8, !31, i64 12, !31, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !31, i64 32, !9, i64 36, !31, i64 40, !31, i64 44, !31, i64 48, !8, i64 52, !8, i64 68, !8, i64 324, !8, i64 388, !9, i64 408, !9, i64 412, !9, i64 416}
!255 = !{!254, !9, i64 0}
!256 = !{!254, !9, i64 8}
!257 = !{!254, !9, i64 20}
!258 = !{!254, !9, i64 28}
!259 = !{!254, !31, i64 32}
!260 = !{!254, !9, i64 36}
!261 = !{!254, !31, i64 48}
!262 = !{!254, !9, i64 408}
!263 = !{!254, !9, i64 412}
!264 = !{!254, !9, i64 416}
!265 = !{i64 0, i64 4, !79, i64 4, i64 4, !79, i64 8, i64 4, !79, i64 12, i64 4, !34, i64 16, i64 4, !34, i64 20, i64 4, !79, i64 24, i64 4, !79, i64 28, i64 4, !79, i64 32, i64 4, !34, i64 36, i64 4, !79, i64 40, i64 4, !34, i64 44, i64 4, !34, i64 48, i64 4, !34, i64 52, i64 4, !34, i64 56, i64 4, !79, i64 60, i64 8, !189, i64 68, i64 256, !189, i64 324, i64 64, !189, i64 388, i64 20, !189, i64 408, i64 4, !79, i64 412, i64 4, !79, i64 416, i64 4, !79}
!266 = !{!196, !31, i64 4}
!267 = !{!196, !9, i64 8}
!268 = !{!28, !9, i64 696}
end_hunk_0
