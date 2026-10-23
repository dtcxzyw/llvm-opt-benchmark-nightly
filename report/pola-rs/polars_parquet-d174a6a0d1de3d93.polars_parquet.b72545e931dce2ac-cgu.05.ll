Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.05?download=true
inline.NumInlined: 2523
inline.NumDeleted: 1103
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_array:bb.a
  %i.kt = alloca [400 x i8], align 8              ; 4 uses
  %i.ku = alloca [24 x i8], align 8               ; 4 uses
  %i.kv = alloca [32 x i8], align 8               ; 5 uses
  %i.kw = alloca [232 x i8], align 8              ; 4 uses
  %i.kx = alloca [400 x i8], align 8              ; 7 uses
  %.sroa.6140 = alloca [32 x i8], align 8         ; 6 uses
  %i.ky = alloca [80 x i8], align 8               ; 10 uses
  %.sroa.6135.sroa.8 = alloca [24 x i8], align 8  ; 7 uses
  %i.kz = alloca [32 x i8], align 8               ; 7 uses
  %i.la = alloca [24 x i8], align 8               ; 7 uses
  %i.lb = alloca [8 x i8], align 8                ; 2 uses
  %i.lc = alloca [40 x i8], align 8               ; 4 uses
  %i.ld = alloca [400 x i8], align 8              ; 4 uses
  %i.le = alloca [24 x i8], align 8               ; 4 uses
  %i.lf = alloca [32 x i8], align 8               ; 4 uses
  %i.lg = alloca [232 x i8], align 8              ; 4 uses
  %i.lh = alloca [400 x i8], align 8              ; 7 uses
  %.sroa.6129 = alloca [32 x i8], align 8         ; 6 uses
  %i.li = alloca [80 x i8], align 8               ; 8 uses
  %.sroa.6123 = alloca [32 x i8], align 8         ; 6 uses
  %i.lj = alloca [24 x i8], align 8               ; 5 uses
  %i.lk = alloca [40 x i8], align 8               ; 14 uses
  %i.ll = alloca [40 x i8], align 8               ; 4 uses
  %i.lm = alloca [408 x i8], align 8              ; 4 uses
  %i.ln = alloca [24 x i8], align 8               ; 4 uses
  %i.lo = alloca [24 x i8], align 8               ; 4 uses
  %i.lp = alloca [32 x i8], align 8               ; 5 uses
  %i.lq = alloca [232 x i8], align 8              ; 5 uses
  %i.lr = alloca [408 x i8], align 8              ; 7 uses
  %.sroa.6117 = alloca [32 x i8], align 8         ; 6 uses
  %i.ls = alloca [80 x i8], align 8               ; 8 uses
  %.sroa.6111 = alloca [32 x i8], align 8         ; 6 uses
  %i.lt = alloca [40 x i8], align 8               ; 4 uses
  %i.lu = alloca [408 x i8], align 8              ; 4 uses
  %i.lv = alloca [24 x i8], align 8               ; 4 uses
  %i.lw = alloca [24 x i8], align 8               ; 4 uses
  %i.lx = alloca [32 x i8], align 8               ; 5 uses
  %i.ly = alloca [232 x i8], align 8              ; 5 uses
  %i.lz = alloca [408 x i8], align 8              ; 7 uses
  %.sroa.6105 = alloca [32 x i8], align 8         ; 6 uses
  %i.ma = alloca [80 x i8], align 8               ; 8 uses
  %.sroa.699 = alloca [32 x i8], align 8          ; 6 uses
  %i.mb = alloca [40 x i8], align 8               ; 4 uses
  %i.mc = alloca [408 x i8], align 8              ; 4 uses
  %i.md = alloca [24 x i8], align 8               ; 4 uses
  %i.me = alloca [24 x i8], align 8               ; 4 uses
  %i.mf = alloca [32 x i8], align 8               ; 5 uses
  %i.mg = alloca [232 x i8], align 8              ; 5 uses
  %i.mh = alloca [408 x i8], align 8              ; 7 uses
  %.sroa.693 = alloca [32 x i8], align 8          ; 6 uses
  %i.mi = alloca [80 x i8], align 8               ; 8 uses
  %.sroa.687 = alloca [32 x i8], align 8          ; 6 uses
  %i.mj = alloca [40 x i8], align 8               ; 4 uses
  %i.mk = alloca [408 x i8], align 8              ; 4 uses
  %i.ml = alloca [24 x i8], align 8               ; 4 uses
  %i.mm = alloca [24 x i8], align 8               ; 4 uses
  %i.mn = alloca [32 x i8], align 8               ; 5 uses
  %i.mo = alloca [232 x i8], align 8              ; 5 uses
  %i.mp = alloca [408 x i8], align 8              ; 7 uses
  %.sroa.681 = alloca [32 x i8], align 8          ; 6 uses
  %i.mq = alloca [80 x i8], align 8               ; 8 uses
  %.sroa.675 = alloca [32 x i8], align 8          ; 6 uses
  %i.mr = alloca [40 x i8], align 8               ; 4 uses
  %i.ms = alloca [408 x i8], align 8              ; 4 uses
  %i.mt = alloca [24 x i8], align 8               ; 4 uses
  %i.mu = alloca [24 x i8], align 8               ; 4 uses
  %i.mv = alloca [32 x i8], align 8               ; 5 uses
  %i.mw = alloca [232 x i8], align 8              ; 5 uses
  %i.mx = alloca [408 x i8], align 8              ; 7 uses
  %.sroa.669 = alloca [32 x i8], align 8          ; 6 uses
  %i.my = alloca [80 x i8], align 8               ; 8 uses
  %.sroa.663 = alloca [32 x i8], align 8          ; 6 uses
  %i.mz = alloca [40 x i8], align 8               ; 4 uses
  %i.na = alloca [408 x i8], align 8              ; 4 uses
  %i.nb = alloca [24 x i8], align 8               ; 4 uses
  %i.nc = alloca [24 x i8], align 8               ; 4 uses
  %i.nd = alloca [32 x i8], align 8               ; 5 uses
  %i.ne = alloca [232 x i8], align 8              ; 5 uses
  %i.nf = alloca [408 x i8], align 8              ; 7 uses
  %.sroa.657 = alloca [32 x i8], align 8          ; 6 uses
  %i.ng = alloca [80 x i8], align 8               ; 8 uses
  %.sroa.651 = alloca [32 x i8], align 8          ; 6 uses
  %i.nh = alloca [40 x i8], align 8               ; 4 uses
  %i.ni = alloca [408 x i8], align 8              ; 4 uses
  %i.nj = alloca [24 x i8], align 8               ; 4 uses
  %i.nk = alloca [24 x i8], align 8               ; 4 uses
  %i.nl = alloca [32 x i8], align 8               ; 5 uses
  %i.nm = alloca [232 x i8], align 8              ; 5 uses
  %i.nn = alloca [408 x i8], align 8              ; 7 uses
  %.sroa.645 = alloca [32 x i8], align 8          ; 6 uses
  %i.no = alloca [80 x i8], align 8               ; 8 uses
  %.sroa.639 = alloca [32 x i8], align 8          ; 6 uses
  %i.np = alloca [40 x i8], align 8               ; 4 uses
  %i.nq = alloca [392 x i8], align 8              ; 4 uses
  %i.nr = alloca [24 x i8], align 8               ; 4 uses
  %i.ns = alloca [32 x i8], align 8               ; 4 uses
  %i.nt = alloca [232 x i8], align 8              ; 4 uses
  %i.nu = alloca [392 x i8], align 8              ; 7 uses
  %.sroa.633 = alloca [32 x i8], align 8          ; 6 uses
  %i.nv = alloca [80 x i8], align 8               ; 8 uses
  %.sroa.627 = alloca [32 x i8], align 8          ; 6 uses
  %i.nw = alloca [40 x i8], align 8               ; 6 uses
  %i.nx = alloca [24 x i8], align 8               ; 3 uses
  %i.ny = alloca [40 x i8], align 8               ; 4 uses
  %i.nz = alloca [392 x i8], align 8              ; 4 uses
  %i.oa = alloca [24 x i8], align 8               ; 4 uses
  %i.ob = alloca [32 x i8], align 8               ; 4 uses
  %i.oc = alloca [232 x i8], align 8              ; 4 uses
  %i.od = alloca [392 x i8], align 8              ; 7 uses
  %.sroa.619 = alloca [32 x i8], align 8          ; 6 uses
  %i.oe = alloca [80 x i8], align 8               ; 10 uses
  %.sroa.615.sroa.8 = alloca [24 x i8], align 8   ; 7 uses
  %i.of = alloca [32 x i8], align 8               ; 5 uses
  %i.og = alloca [24 x i8], align 8               ; 5 uses
  %i.oh = alloca [40 x i8], align 8               ; 4 uses
  %i.oi = alloca [368 x i8], align 8              ; 4 uses
  %i.oj = alloca [24 x i8], align 8               ; 4 uses
  %i.ok = alloca [32 x i8], align 8               ; 4 uses
  %i.ol = alloca [232 x i8], align 8              ; 4 uses
  %i.om = alloca [368 x i8], align 8              ; 7 uses
  %.sroa.69 = alloca [32 x i8], align 8           ; 6 uses
  %i.on = alloca [80 x i8], align 8               ; 8 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.oo = alloca [32 x i8], align 8               ; 60 uses
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 80, !dbg !35363
  %i.oq = invoke noundef zeroext i1 @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow9datatypes5fieldNtB4_5Field21is_pl_pq_empty_struct(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %3)
          to label %bb.b unwind label %.split.thread, !dbg !35364

.thread1605:                                      ; preds = %.thread1611
  br i1 %.sroa.0649.21602, label %.thread1605.thread1721, label %.thread1605.thread, !dbg !35365

.split.thread:                                    ; preds = %bb.op, %bb.a
  %.sroa.0644.1.ph = phi i8 [ 1, %bb.a ], [ %.sroa.0644.2, %bb.op ]
  %lpad.thr_comm1902 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1605.thread1721, !dbg !35365

.split:                                           ; preds = %bb.eh, %bb.ef
  %.sroa.0650.1.ph = phi i8 [ %.sroa.0650.14, %bb.eh ], [ 0, %bb.ef ]
  %.sroa.0639.1.ph = phi i8 [ %.sroa.0639.6, %bb.eh ], [ %.sroa.0639.5, %bb.ef ]
  %lpad.thr_comm.split-lp1903 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1605.thread, !dbg !35365

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oo), !dbg !35366
  %i.or = load i8, ptr %3, align 8, !dbg !35367, !range !1100, !noundef !1032
  %i.os = and i8 %i.or, 62, !dbg !35368
  %switch = icmp eq i8 %i.os, 34, !dbg !35368
  br i1 %switch, label %bb.d, label %bb.c, !dbg !35368

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.oo, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !35369
  br label %bb.e, !dbg !35370

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !35371
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oo, i64 8, !dbg !35372
  %i.ou = load <2 x i64>, ptr %.sroa.0.0.in, align 8, !dbg !35371
  store <2 x i64> %i.ou, ptr %i.ot, align 8, !dbg !35372
  store i8 33, ptr %i.oo, align 8, !dbg !35372
  br label %bb.e, !dbg !35373

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0644.2 = phi i8 [ 0, %bb.c ], [ 1, %bb.d ], !dbg !35374 ; 31 uses
  %i.ov = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB4_13ArrowDataType10to_storage(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.oo)
          to label %bb.g unwind label %.thread1620, !dbg !35375 ; 7 uses

.thread1620:                                      ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1528, %.thread1650, %bb.ox, %bb.xo, %bb.qq, %bb.qt, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1502, %bb.vs, %bb.vg, %bb.ve, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1490, %bb.pw, %bb.qb, %bb.qe, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1498, %bb.dz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1400, %bb.fw, %bb.ft, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1406, %bb.gn, %bb.gk, %bb.dw, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1429, %bb.kc, %bb.jz, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1437, %bb.kt, %bb.kq, %bb.lk, %bb.lh, %bb.lr, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1459, %bb.nk, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit, %bb.ny, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1468, %bb.oc, %bb.nz, %bb.e
  %.sroa.0650.3.ph = phi i8 [ 1, %bb.e ], [ 1, %bb.nz ], [ 0, %bb.oc ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1468 ], [ 1, %bb.ny ], [ 1, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit ], [ 0, %bb.nk ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1459 ], [ 1, %bb.lr ], [ 1, %bb.lh ], [ 0, %bb.lk ], [ 1, %bb.kq ], [ 0, %bb.kt ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1437 ], [ 1, %bb.jz ], [ 0, %bb.kc ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1429 ], [ 1, %bb.dw ], [ 1, %bb.gk ], [ 0, %bb.gn ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1406 ], [ 1, %bb.ft ], [ 0, %bb.fw ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1400 ], [ 0, %bb.dz ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1498 ], [ 0, %bb.qe ], [ 1, %bb.qb ], [ 1, %bb.pw ], [ 1, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1490 ], [ 1, %bb.ve ], [ 1, %bb.vg ], [ 1, %bb.vs ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1502 ], [ 0, %bb.qt ], [ 1, %bb.qq ], [ 0, %bb.xo ], [ 1, %bb.ox ], [ 1, %.thread1650 ], [ 1, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1528 ]
  %.sroa.0649.3.ph = phi i1 [ true, %bb.e ], [ false, %bb.nz ], [ false, %bb.oc ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1468 ], [ true, %bb.ny ], [ true, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit ], [ false, %bb.nk ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1459 ], [ true, %bb.lr ], [ false, %bb.lh ], [ false, %bb.lk ], [ false, %bb.kq ], [ false, %bb.kt ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1437 ], [ false, %bb.jz ], [ false, %bb.kc ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1429 ], [ false, %bb.dw ], [ false, %bb.gk ], [ false, %bb.gn ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1406 ], [ false, %bb.ft ], [ false, %bb.fw ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1400 ], [ false, %bb.dz ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1498 ], [ false, %bb.qe ], [ false, %bb.qb ], [ true, %bb.pw ], [ true, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1490 ], [ true, %bb.ve ], [ true, %bb.vg ], [ true, %bb.vs ], [ false, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1502 ], [ false, %bb.qt ], [ false, %bb.qq ], [ false, %bb.xo ], [ true, %bb.ox ], [ true, %.thread1650 ], [ true, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1528 ]
  %.sroa.0639.3.ph = phi i8 [ 1, %bb.e ], [ 1, %bb.nz ], [ 1, %bb.oc ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1468 ], [ 1, %bb.ny ], [ 1, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit ], [ 1, %bb.nk ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1459 ], [ 1, %bb.lr ], [ 1, %bb.lh ], [ 1, %bb.lk ], [ 1, %bb.kq ], [ 1, %bb.kt ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1437 ], [ 1, %bb.jz ], [ 1, %bb.kc ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1429 ], [ 1, %bb.dw ], [ 1, %bb.gk ], [ 1, %bb.gn ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1406 ], [ 1, %bb.ft ], [ 1, %bb.fw ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1400 ], [ 1, %bb.dz ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1498 ], [ 1, %bb.qe ], [ 1, %bb.qb ], [ 1, %bb.pw ], [ 1, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1490 ], [ 1, %bb.ve ], [ 1, %bb.vg ], [ 0, %bb.vs ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1502 ], [ 1, %bb.qt ], [ 1, %bb.qq ], [ 0, %bb.xo ], [ 1, %bb.ox ], [ 1, %.thread1650 ], [ 1, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1528 ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread1611, !dbg !35376

bb.f:                                             ; preds = %bb.r, %bb.u, %bb.ad, %bb.ag, %bb.as, %bb.bh, %bb.bv, %bb.cj, %bb.da, %bb.dl, %bb.er, %bb.jc, %bb.jl, %bb.lv, %bb.ly, %bb.mo, %bb.mz, %bb.pf, %bb.pn, %bb.rt, %bb.se, %bb.ss, %bb.tg, %bb.tn, %bb.tq, %bb.ty, %bb.uj, %bb.uw, %bb.wm, %bb.wu, %bb.xd, %bb.hp, %bb.ia, %bb.ie, %bb.ii, %bb.im, %bb.iq, %bb.iv
  %.sroa.0650.3.ph1618 = phi i8 [ 0, %bb.bv ], [ 0, %bb.mo ], [ 0, %bb.da ], [ 0, %bb.jc ], [ 0, %bb.as ], [ 0, %bb.pf ], [ 0, %bb.cj ], [ 0, %bb.er ], [ 0, %bb.ie ], [ 0, %bb.uw ], [ 1, %bb.lv ], [ 0, %bb.uj ], [ 0, %bb.ag ], [ 0, %bb.ty ], [ 1, %bb.ad ], [ 1, %bb.tn ], [ 0, %bb.tq ], [ 0, %bb.ly ], [ 0, %bb.tg ], [ 0, %bb.u ], [ 0, %bb.ss ], [ 0, %bb.iv ], [ 0, %bb.se ], [ 0, %bb.jl ], [ 0, %bb.rt ], [ 0, %bb.ii ], [ 0, %bb.dl ], [ 0, %bb.pn ], [ 0, %bb.im ], [ 0, %bb.xd ], [ 0, %bb.bh ], [ 0, %bb.wu ], [ 0, %bb.ia ], [ 0, %bb.wm ], [ 1, %bb.r ], [ 0, %bb.mz ], [ 0, %bb.hp ], [ 0, %bb.iq ]
  %.sroa.0639.3.ph1619 = phi i8 [ 1, %bb.bv ], [ 1, %bb.mo ], [ 1, %bb.da ], [ 1, %bb.jc ], [ 1, %bb.as ], [ 1, %bb.pf ], [ 1, %bb.cj ], [ 1, %bb.er ], [ 1, %bb.ie ], [ 1, %bb.uw ], [ 1, %bb.lv ], [ 1, %bb.uj ], [ 1, %bb.ag ], [ 1, %bb.ty ], [ 1, %bb.ad ], [ 1, %bb.tn ], [ 1, %bb.tq ], [ 1, %bb.ly ], [ 1, %bb.tg ], [ 1, %bb.u ], [ 1, %bb.ss ], [ 1, %bb.iv ], [ 1, %bb.se ], [ 1, %bb.jl ], [ 1, %bb.rt ], [ 1, %bb.ii ], [ 1, %bb.dl ], [ 1, %bb.pn ], [ 1, %bb.im ], [ 0, %bb.xd ], [ 1, %bb.bh ], [ 0, %bb.wu ], [ 1, %bb.ia ], [ 0, %bb.wm ], [ 1, %bb.r ], [ 1, %bb.mz ], [ 1, %bb.hp ], [ 1, %bb.iq ]
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread1605.thread, !dbg !35376

bb.g:                                             ; preds = %bb.e
  %i.ow = load i8, ptr %i.ov, align 8, !dbg !35377, !range !1100, !noundef !1032 ; 9 uses
  switch i8 %i.ow, label %.thread-pre-split_crit_edge [
    i8 0, label %bb.h
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
    i8 7, label %bb.n
    i8 8, label %bb.o
    i8 9, label %bb.p
    i8 30, label %bb.q
  ], !dbg !35378

.thread-pre-split_crit_edge:                      ; preds = %bb.g
  %.pr.pre = load i64, ptr %2, align 8, !dbg !35377
  br label %thread-pre-split, !dbg !35378

thread-pre-split:                                 ; preds = %.thread-pre-split_crit_edge, %bb.q, %bb.p, %bb.k
  %6 = phi i64 [ %i.ph, %bb.k ], [ %i.ps, %bb.q ], [ %i.pr, %bb.p ], [ %.pr.pre, %.thread-pre-split_crit_edge ], !dbg !35377 ; 11 uses
  %i.ox = icmp eq i64 %6, 1, !dbg !35378
  br i1 %i.ox, label %bb.ei, label %bb.ej, !dbg !35378

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !34549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.on), !dbg !34549
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69), !dbg !34549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.om), !dbg !34549
  %i.oy = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !35379 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !35380
  %i.pa = load i8, ptr %i.oz, align 1, !dbg !35380, !range !1108, !alias.scope !34548, !noundef !1032 ; 2 uses
  %i.pb = icmp ugt i8 %i.pa, -41, !dbg !35381
  br i1 %i.pb, label %bb.j, label %bb.i, !dbg !35381

bb.i:                                             ; preds = %bb.h
  %i.pc = add i8 %i.pa, 64, !dbg !35382
  %i.pd = call i8 @llvm.umin.i8(i8 %i.pc, i8 24), !dbg !35383
  %.sroa.0.0.i.i = zext nneg i8 %i.pd to i64, !dbg !35383
  br label %bb.r, !dbg !35384

bb.j:                                             ; preds = %bb.h
  %i.pe = load ptr, ptr %i.oy, align 8, !dbg !35385, !alias.scope !34548, !noundef !1032
  %i.pf = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !35386
  %i.pg = load i64, ptr %i.pf, align 8, !dbg !35386, !alias.scope !34548, !noundef !1032
  br label %bb.r, !dbg !35387

bb.k:                                             ; preds = %bb.g
  %i.ph = load i64, ptr %2, align 8, !dbg !35377, !range !1574, !noundef !1032 ; 2 uses
  %i.pi = icmp eq i64 %i.ph, 0, !dbg !35378
  br i1 %i.pi, label %bb.aa, label %thread-pre-split, !dbg !35378

bb.l:                                             ; preds = %bb.g
  %i.pj = load i64, ptr %2, align 8, !dbg !35377, !range !1574, !noundef !1032 ; 2 uses
  %i.pk = icmp eq i64 %i.pj, 1, !dbg !35378
  br i1 %i.pk, label %bb.al, label %.thread1627.thread, !dbg !35378

bb.m:                                             ; preds = %bb.g
  %i.pl = load i64, ptr %2, align 8, !dbg !35377, !range !1574, !noundef !1032 ; 2 uses
  %i.pm = icmp eq i64 %i.pl, 1, !dbg !35378
  br i1 %i.pm, label %bb.ba, label %.thread1627.thread, !dbg !35378

bb.n:                                             ; preds = %bb.g
  %i.pn = load i64, ptr %2, align 8, !dbg !35377, !range !1574, !noundef !1032 ; 2 uses
  %i.po = icmp eq i64 %i.pn, 1, !dbg !35378
  br i1 %i.po, label %bb.bo, label %.thread1627.thread, !dbg !35378

bb.o:                                             ; preds = %bb.g
  %i.pp = load i64, ptr %2, align 8, !dbg !35377, !range !1574, !noundef !1032 ; 2 uses
  %i.pq = icmp eq i64 %i.pp, 1, !dbg !35378
  br i1 %i.pq, label %bb.cc, label %.thread1627.thread, !dbg !35378

bb.p:                                             ; preds = %bb.g
  %i.pr = load i64, ptr %2, align 8, !dbg !35377, !range !1574, !noundef !1032 ; 2 uses
  switch i64 %i.pr, label %thread-pre-split [
    i64 1, label %bb.cq
    i64 2, label %bb.ct
  ], !dbg !35378

bb.q:                                             ; preds = %bb.g
  %i.ps = load i64, ptr %2, align 8, !dbg !35377, !range !1574, !noundef !1032 ; 2 uses
  %i.pt = icmp eq i64 %i.ps, 0, !dbg !35378
  br i1 %i.pt, label %bb.ds, label %thread-pre-split, !dbg !35378

bb.r:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.i = phi i64 [ %i.pg, %bb.j ], [ %.sroa.0.0.i.i, %bb.i ], !dbg !35388
  %.sroa.0.0.i = phi ptr [ %i.pe, %bb.j ], [ %i.oy, %bb.i ], !dbg !35389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ol), !dbg !35390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ol, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !35390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ok), !dbg !35391
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ok, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !35391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oj), !dbg !35392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oj, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !35392
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_4null11NullDecoderE3newBd_(ptr noalias noundef nonnull sret([368 x i8]) align 8 captures(none) dereferenceable(368) %i.om, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.01.0.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.ol, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ok, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.oj)
          to label %bb.s unwind label %bb.f, !dbg !34549

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oj), !dbg !35393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ok), !dbg !35393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ol), !dbg !35393
  %i.pu = load i64, ptr %i.om, align 8, !dbg !35394, !range !1573, !noundef !1032 ; 2 uses
  %i.pv = icmp eq i64 %i.pu, 8, !dbg !35394
  %i.pw = getelementptr inbounds nuw i8, ptr %i.om, i64 8, !dbg !35395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69, ptr noundef nonnull align 8 dereferenceable(32) %i.pw, i64 32, i1 false), !dbg !35395
  br i1 %i.pv, label %bb.t, label %bb.u, !dbg !35396

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.om), !dbg !35397
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.px, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69, i64 32, i1 false), !dbg !35397
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.on), !dbg !35399
  br label %bb.z, !dbg !35400

bb.u:                                             ; preds = %bb.s
  %.sroa.6710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.om, i64 40, !dbg !35401
  %.sroa.811.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.oi, i64 40, !dbg !34549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.811.0..sroa_idx12, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.6710.0..sroa_idx, i64 328, i1 false), !dbg !35401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.om), !dbg !35397
  store i64 %i.pu, ptr %i.oi, align 8, !dbg !34549
  %.sroa.69.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.oi, i64 8, !dbg !34549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.69, i64 32, i1 false), !dbg !34549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oh), !dbg !35402
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.oh, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !35402
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_4null11NullDecoderE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.on, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(368) %i.oi, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.oh)
          to label %bb.v unwind label %bb.f, !dbg !35403

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oh), !dbg !35404
  %i.py = load i64, ptr %i.on, align 8, !dbg !35405, !range !1034, !noundef !1032 ; 2 uses
  %i.pz = icmp eq i64 %i.py, -9223372036854775808, !dbg !35405
  %i.qa = getelementptr inbounds nuw i8, ptr %i.on, i64 8, !dbg !35406
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.qa, i64 32, i1 false), !dbg !35406
  br i1 %i.pz, label %bb.w, label %bb.x, !dbg !35407

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.on), !dbg !35399
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qb, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !dbg !35399
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35408
  br label %bb.z, !dbg !35399

bb.x:                                             ; preds = %bb.v
  %.sroa.6713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.on, i64 40, !dbg !35409
  %.sroa.40.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !34549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6713.0..sroa_idx, i64 40, i1 false), !dbg !35409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.on), !dbg !35399
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !dbg !34549
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69), !dbg !35399
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !35399
  br label %bb.y, !dbg !35399

bb.y:                                             ; preds = %bb.wp, %bb.wx, %bb.xg, %bb.uz, %bb.um, %bb.ub, %bb.tt, %bb.tj, %bb.sv, %bb.sh, %bb.rw, %bb.pq, %bb.pi, %bb.nc, %bb.mr, %bb.mb, %bb.jo, %bb.jf, %bb.eu, %bb.do, %bb.dd, %bb.cm, %bb.by, %bb.bk, %bb.av, %bb.aj, %bb.x
  %.sroa.0639.4 = phi i8 [ 0, %bb.wp ], [ 0, %bb.wx ], [ 0, %bb.xg ], [ 1, %bb.rw ], [ 1, %bb.sh ], [ 1, %bb.sv ], [ 1, %bb.tj ], [ 1, %bb.tt ], [ 1, %bb.ub ], [ 1, %bb.um ], [ 1, %bb.uz ], [ 1, %bb.eu ], [ 1, %bb.jf ], [ 1, %bb.mr ], [ 1, %bb.pi ], [ 1, %bb.jo ], [ 1, %bb.mb ], [ 1, %bb.nc ], [ 1, %bb.pq ], [ 1, %bb.x ], [ 1, %bb.aj ], [ 1, %bb.av ], [ 1, %bb.bk ], [ 1, %bb.by ], [ 1, %bb.cm ], [ 1, %bb.dd ], [ 1, %bb.do ], !dbg !35374
  %.sroa.0521.0 = phi i64 [ %i.avr, %bb.wp ], [ %i.awb, %bb.wx ], [ %i.awm, %bb.xg ], [ %i.aos, %bb.rw ], [ %i.apb, %bb.sh ], [ %i.apt, %bb.sv ], [ %i.aql, %bb.tj ], [ %i.aqu, %bb.tt ], [ %i.ard, %bb.ub ], [ %i.arw, %bb.um ], [ %i.asq, %bb.uz ], [ %i.wk, %bb.eu ], [ %i.acj, %bb.jf ], [ %i.ahr, %bb.mr ], [ %i.alg, %bb.pi ], [ %i.acr, %bb.jo ], [ %i.agp, %bb.mb ], [ %i.aia, %bb.nc ], [ %i.alo, %bb.pq ], [ %i.py, %bb.x ], [ %i.qp, %bb.aj ], [ %i.rg, %bb.av ], [ %i.rz, %bb.bk ], [ %i.sr, %bb.by ], [ %i.tj, %bb.cm ], [ %i.uk, %bb.dd ], [ %i.ut, %bb.do ], !dbg !35410
  store i64 %.sroa.0521.0, ptr %0, align 8, !dbg !35411
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.40.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.40, i64 72, i1 false), !dbg !35411
  br label %bb.xh, !dbg !35376

bb.z:                                             ; preds = %bb.w, %bb.t
  %.sroa.0650.4 = phi i8 [ 1, %bb.t ], [ 0, %bb.w ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69), !dbg !35399
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !35399
  br label %bb.yi, !dbg !35400

bb.aa:                                            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.627), !dbg !34565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nv), !dbg !34565
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.633), !dbg !34565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nu), !dbg !34565
  %i.qc = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !35412 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !35413
  %i.qe = load i8, ptr %i.qd, align 1, !dbg !35413, !range !1108, !alias.scope !34564, !noundef !1032 ; 2 uses
  %i.qf = icmp ugt i8 %i.qe, -41, !dbg !35414
  br i1 %i.qf, label %bb.ac, label %bb.ab, !dbg !35414

bb.ab:                                            ; preds = %bb.aa
  %i.qg = add i8 %i.qe, 64, !dbg !35415
  %i.qh = call i8 @llvm.umin.i8(i8 %i.qg, i8 24), !dbg !35416
  %.sroa.0.0.i.i1347 = zext nneg i8 %i.qh to i64, !dbg !35416
  br label %bb.ad, !dbg !35417

bb.ac:                                            ; preds = %bb.aa
  %i.qi = load ptr, ptr %i.qc, align 8, !dbg !35418, !alias.scope !34564, !noundef !1032
  %i.qj = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !35419
  %i.qk = load i64, ptr %i.qj, align 8, !dbg !35419, !alias.scope !34564, !noundef !1032
  br label %bb.ad, !dbg !35420

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.01.0.i1348 = phi i64 [ %i.qk, %bb.ac ], [ %.sroa.0.0.i.i1347, %bb.ab ], !dbg !35421
  %.sroa.0.0.i1349 = phi ptr [ %i.qi, %bb.ac ], [ %i.qc, %bb.ab ], !dbg !35422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nt), !dbg !35423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.nt, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !35423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ns), !dbg !35424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ns, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !35424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.nr), !dbg !35425
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nr, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !35425
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_7boolean14BooleanDecoderE3newBd_(ptr noalias noundef nonnull sret([392 x i8]) align 8 captures(none) dereferenceable(392) %i.nu, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1349, i64 noundef %.sroa.01.0.i1348, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.nt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ns, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.nr)
          to label %bb.ae unwind label %bb.f, !dbg !34565

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nr), !dbg !35426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ns), !dbg !35426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nt), !dbg !35426
  %i.ql = load i64, ptr %i.nu, align 8, !dbg !35427, !range !1573, !noundef !1032 ; 2 uses
  %i.qm = icmp eq i64 %i.ql, 8, !dbg !35427
  %i.qn = getelementptr inbounds nuw i8, ptr %i.nu, i64 8, !dbg !35428
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.633, ptr noundef nonnull align 8 dereferenceable(32) %i.qn, i64 32, i1 false), !dbg !35428
  br i1 %i.qm, label %bb.af, label %bb.ag, !dbg !35429

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nu), !dbg !35430
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qo, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.633, i64 32, i1 false), !dbg !35430
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nv), !dbg !35432
  br label %bb.ak, !dbg !35400

bb.ag:                                            ; preds = %bb.ae
  %.sroa.6722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nu, i64 40, !dbg !35433
  %.sroa.835.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.nq, i64 40, !dbg !34565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %.sroa.835.0..sroa_idx36, ptr noundef nonnull align 8 dereferenceable(352) %.sroa.6722.0..sroa_idx, i64 352, i1 false), !dbg !35433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nu), !dbg !35430
  store i64 %i.ql, ptr %i.nq, align 8, !dbg !34565
  %.sroa.633.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.nq, i64 8, !dbg !34565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.633.0..sroa_idx34, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.633, i64 32, i1 false), !dbg !34565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.np), !dbg !35434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.np, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !35434
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_7boolean14BooleanDecoderE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.nv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(392) %i.nq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.np)
          to label %bb.ah unwind label %bb.f, !dbg !35435

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.np), !dbg !35436
  %i.qp = load i64, ptr %i.nv, align 8, !dbg !35437, !range !1034, !noundef !1032 ; 2 uses
  %i.qq = icmp eq i64 %i.qp, -9223372036854775808, !dbg !35437
  %i.qr = getelementptr inbounds nuw i8, ptr %i.nv, i64 8, !dbg !35438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.627, ptr noundef nonnull align 8 dereferenceable(32) %i.qr, i64 32, i1 false), !dbg !35438
  br i1 %i.qq, label %bb.ai, label %bb.aj, !dbg !35439

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nv), !dbg !35432
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qs, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.627, i64 32, i1 false), !dbg !35432
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35440
  br label %bb.ak, !dbg !35432

bb.aj:                                            ; preds = %bb.ah
  %.sroa.6725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nv, i64 40, !dbg !35441
  %.sroa.40.40..sroa_idx556 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !34565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx556, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6725.0..sroa_idx, i64 40, i1 false), !dbg !35441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.nv), !dbg !35432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.627, i64 32, i1 false), !dbg !34565
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.633), !dbg !35432
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627), !dbg !35432
  br label %bb.y, !dbg !35432

bb.ak:                                            ; preds = %bb.ai, %bb.af
  %.sroa.0650.5 = phi i8 [ 1, %bb.af ], [ 0, %bb.ai ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.633), !dbg !35432
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.627), !dbg !35432
  br label %bb.yi, !dbg !35400

bb.al:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.687), !dbg !34579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mi), !dbg !34579
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.693), !dbg !34579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mh), !dbg !34579
  %i.qt = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !35442 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !35443
  %i.qv = load i8, ptr %i.qu, align 1, !dbg !35443, !range !1108, !alias.scope !34578, !noundef !1032 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_array:bb.a

bb.cu:                                            ; preds = %bb.ct
  %i.ub = add i8 %i.tz, 64, !dbg !35579
  %i.uc = call i8 @llvm.umin.i8(i8 %i.ub, i8 24), !dbg !35580
  %.sroa.0.0.i.i1371 = zext nneg i8 %i.uc to i64, !dbg !35580
  br label %bb.dh, !dbg !35581

bb.cv:                                            ; preds = %bb.ct
  %i.ud = load ptr, ptr %i.tx, align 8, !dbg !35582, !alias.scope !34642, !noundef !1032
  %i.ue = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !35583
  %i.uf = load i64, ptr %i.ue, align 8, !dbg !35583, !alias.scope !34642, !noundef !1032
  br label %bb.dh, !dbg !35584

bb.cw:                                            ; preds = %bb.cs, %bb.cr
  %.sroa.01.0.i1368 = phi i64 [ %i.tw, %bb.cs ], [ %.sroa.0.0.i.i1367, %bb.cr ], !dbg !35585
  %.sroa.0.0.i1369 = phi ptr [ %i.tu, %bb.cs ], [ %i.to, %bb.cr ], !dbg !35586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mw), !dbg !35587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.mw, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !35587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mv), !dbg !35588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mv, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !35588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mu), !dbg !35589
  invoke void @_RNvMs1_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderlmINtB7_17AsDecoderFunctionlmEE7cast_asBf_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.mu)
          to label %bb.cx unwind label %bb.df, !dbg !35589

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mt), !dbg !35590
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mt, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !35590
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderlmINtB1z_17AsDecoderFunctionlmEEE3newBd_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.mx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1369, i64 noundef %.sroa.01.0.i1368, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.mw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.mv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.mu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.mt)
          to label %bb.cy unwind label %.thread1676, !dbg !34643

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mt), !dbg !35591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mu), !dbg !35591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mv), !dbg !35591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mw), !dbg !35591
  %i.ug = load i64, ptr %i.mx, align 8, !dbg !35592, !range !1573, !noundef !1032 ; 2 uses
  %i.uh = icmp eq i64 %i.ug, 8, !dbg !35592
  %i.ui = getelementptr inbounds nuw i8, ptr %i.mx, i64 8, !dbg !35593
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.669, ptr noundef nonnull align 8 dereferenceable(32) %i.ui, i64 32, i1 false), !dbg !35593
  br i1 %i.uh, label %bb.cz, label %bb.da, !dbg !35594

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mx), !dbg !35595
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.uj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.669, i64 32, i1 false), !dbg !35595
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.my), !dbg !35597
  br label %bb.de, !dbg !35400

bb.da:                                            ; preds = %bb.cy
  %.sroa.6740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mx, i64 40, !dbg !35598
  %.sroa.871.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.ms, i64 40, !dbg !34643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.871.0..sroa_idx72, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6740.0..sroa_idx, i64 368, i1 false), !dbg !35598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mx), !dbg !35595
  store i64 %i.ug, ptr %i.ms, align 8, !dbg !34643
  %.sroa.669.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.ms, i64 8, !dbg !34643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.669.0..sroa_idx70, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.669, i64 32, i1 false), !dbg !34643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mr), !dbg !35599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.mr, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !35599
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderlmINtB1z_17AsDecoderFunctionlmEEE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.my, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.ms, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.mr)
          to label %bb.db unwind label %bb.f, !dbg !35600

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mr), !dbg !35601
  %i.uk = load i64, ptr %i.my, align 8, !dbg !35602, !range !1034, !noundef !1032 ; 2 uses
  %i.ul = icmp eq i64 %i.uk, -9223372036854775808, !dbg !35602
  %i.um = getelementptr inbounds nuw i8, ptr %i.my, i64 8, !dbg !35603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.663, ptr noundef nonnull align 8 dereferenceable(32) %i.um, i64 32, i1 false), !dbg !35603
  br i1 %i.ul, label %bb.dc, label %bb.dd, !dbg !35604

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.my), !dbg !35597
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.un, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.663, i64 32, i1 false), !dbg !35597
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35605
  br label %bb.de, !dbg !35597

bb.dd:                                            ; preds = %bb.db
  %.sroa.6743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.my, i64 40, !dbg !35606
  %.sroa.40.40..sroa_idx559 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !34643
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx559, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6743.0..sroa_idx, i64 40, i1 false), !dbg !35606
  call void @llvm.lifetime.end.p0(ptr nonnull %i.my), !dbg !35597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.663, i64 32, i1 false), !dbg !34643
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.669), !dbg !35597
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.663), !dbg !35597
  br label %bb.y, !dbg !35597

bb.de:                                            ; preds = %bb.dc, %bb.cz
  %.sroa.0650.10 = phi i8 [ 1, %bb.cz ], [ 0, %bb.dc ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.669), !dbg !35597
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.663), !dbg !35597
  br label %bb.yi, !dbg !35400

bb.df:                                            ; preds = %bb.cw
  %i.uo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.mv) #39
          to label %bb.dg unwind label %bb.ay, !dbg !35591

bb.dg:                                            ; preds = %bb.df
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read11compression17BasicDecompressorEBO_(ptr noalias noundef align 8 dereferenceable(232) %i.mw) #39
          to label %.thread1605.thread1721 unwind label %bb.ay, !dbg !35591

bb.dh:                                            ; preds = %bb.cv, %bb.cu
  %.sroa.01.0.i1372 = phi i64 [ %i.uf, %bb.cv ], [ %.sroa.0.0.i.i1371, %bb.cu ], !dbg !35607
  %.sroa.0.0.i1373 = phi ptr [ %i.ud, %bb.cv ], [ %i.tx, %bb.cu ], !dbg !35608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mo), !dbg !35609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.mo, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !35609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mn), !dbg !35610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mn, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !35610
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mm), !dbg !35611
  invoke void @_RNvMs1_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderxmINtB7_17AsDecoderFunctionxmEE7cast_asBf_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.mm)
          to label %bb.di unwind label %bb.dq, !dbg !35611

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ml), !dbg !35612
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ml, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !35612
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderxmINtB1z_17AsDecoderFunctionxmEEE3newBd_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.mp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1373, i64 noundef %.sroa.01.0.i1372, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.mo, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.mn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.mm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ml)
          to label %bb.dj unwind label %.thread1676, !dbg !34649

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ml), !dbg !35613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mm), !dbg !35613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mn), !dbg !35613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mo), !dbg !35613
  %i.up = load i64, ptr %i.mp, align 8, !dbg !35614, !range !1573, !noundef !1032 ; 2 uses
  %i.uq = icmp eq i64 %i.up, 8, !dbg !35614
  %i.ur = getelementptr inbounds nuw i8, ptr %i.mp, i64 8, !dbg !35615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.681, ptr noundef nonnull align 8 dereferenceable(32) %i.ur, i64 32, i1 false), !dbg !35615
  br i1 %i.uq, label %bb.dk, label %bb.dl, !dbg !35616

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mp), !dbg !35617
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.us, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.681, i64 32, i1 false), !dbg !35617
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mq), !dbg !35619
  br label %bb.dp, !dbg !35400

bb.dl:                                            ; preds = %bb.dj
  %.sroa.6746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mp, i64 40, !dbg !35620
  %.sroa.883.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.mk, i64 40, !dbg !34649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.883.0..sroa_idx84, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6746.0..sroa_idx, i64 368, i1 false), !dbg !35620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mp), !dbg !35617
  store i64 %i.up, ptr %i.mk, align 8, !dbg !34649
  %.sroa.681.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.mk, i64 8, !dbg !34649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.681.0..sroa_idx82, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.681, i64 32, i1 false), !dbg !34649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.mj), !dbg !35621
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.mj, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !35621
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderxmINtB1z_17AsDecoderFunctionxmEEE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.mq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.mk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.mj)
          to label %bb.dm unwind label %bb.f, !dbg !35622

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mj), !dbg !35623
  %i.ut = load i64, ptr %i.mq, align 8, !dbg !35624, !range !1034, !noundef !1032 ; 2 uses
  %i.uu = icmp eq i64 %i.ut, -9223372036854775808, !dbg !35624
  %i.uv = getelementptr inbounds nuw i8, ptr %i.mq, i64 8, !dbg !35625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.675, ptr noundef nonnull align 8 dereferenceable(32) %i.uv, i64 32, i1 false), !dbg !35625
  br i1 %i.uu, label %bb.dn, label %bb.do, !dbg !35626

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mq), !dbg !35619
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.uw, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.675, i64 32, i1 false), !dbg !35619
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35627
  br label %bb.dp, !dbg !35619

bb.do:                                            ; preds = %bb.dm
  %.sroa.6749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mq, i64 40, !dbg !35628
  %.sroa.40.40..sroa_idx560 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !34649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx560, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6749.0..sroa_idx, i64 40, i1 false), !dbg !35628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.mq), !dbg !35619
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.675, i64 32, i1 false), !dbg !34649
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.681), !dbg !35619
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675), !dbg !35619
  br label %bb.y, !dbg !35619

bb.dp:                                            ; preds = %bb.dn, %bb.dk
  %.sroa.0650.11 = phi i8 [ 1, %bb.dk ], [ 0, %bb.dn ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.681), !dbg !35619
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675), !dbg !35619
  br label %bb.yi, !dbg !35400

bb.dq:                                            ; preds = %bb.dh
  %i.ux = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.mn) #39
          to label %bb.dr unwind label %bb.ay, !dbg !35613

bb.dr:                                            ; preds = %bb.dq
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read11compression17BasicDecompressorEBO_(ptr noalias noundef align 8 dereferenceable(232) %i.mo) #39
          to label %.thread1605.thread1721 unwind label %bb.ay, !dbg !35613

bb.ds:                                            ; preds = %bb.q
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ov, i64 24, !dbg !35629
  %i.uz = load i64, ptr %i.uy, align 8, !dbg !35629, !noundef !1032 ; 2 uses
  %i.va = icmp ult i64 %i.uz, 128102389400760776, !dbg !35630
  call void @llvm.assume(i1 %i.va), !dbg !35631
  %i.vb = icmp eq i64 %i.uz, 0, !dbg !35632
  %brmerge.not = and i1 %i.oq, %i.vb, !dbg !35632
  br i1 %brmerge.not, label %bb.dt, label %.thread1627.thread, !dbg !35632

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.615.sroa.8), !dbg !34665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oe), !dbg !34665
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619), !dbg !34665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.od), !dbg !34665
  %i.vc = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !35633 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !35634
  %i.ve = load i8, ptr %i.vd, align 1, !dbg !35634, !range !1108, !alias.scope !34664, !noundef !1032 ; 2 uses
  %i.vf = icmp ugt i8 %i.ve, -41, !dbg !35635
  br i1 %i.vf, label %bb.dv, label %bb.du, !dbg !35635

bb.du:                                            ; preds = %bb.dt
  %i.vg = add i8 %i.ve, 64, !dbg !35636
  %i.vh = call i8 @llvm.umin.i8(i8 %i.vg, i8 24), !dbg !35637
  %.sroa.0.0.i.i1375 = zext nneg i8 %i.vh to i64, !dbg !35637
  br label %bb.dw, !dbg !35638

bb.dv:                                            ; preds = %bb.dt
  %i.vi = load ptr, ptr %i.vc, align 8, !dbg !35639, !alias.scope !34664, !noundef !1032
  %i.vj = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !35640
  %i.vk = load i64, ptr %i.vj, align 8, !dbg !35640, !alias.scope !34664, !noundef !1032
  br label %bb.dw, !dbg !35641

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.sroa.01.0.i1376 = phi i64 [ %i.vk, %bb.dv ], [ %.sroa.0.0.i.i1375, %bb.du ], !dbg !35642
  %.sroa.0.0.i1377 = phi ptr [ %i.vi, %bb.dv ], [ %i.vc, %bb.du ], !dbg !35643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oc), !dbg !35644
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.oc, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !35644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ob), !dbg !35645
  store i8 1, ptr %i.ob, align 8, !dbg !35645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.oa), !dbg !35646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.oa, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !35646
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_7boolean14BooleanDecoderE3newBd_(ptr noalias noundef nonnull sret([392 x i8]) align 8 captures(none) dereferenceable(392) %i.od, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1377, i64 noundef %.sroa.01.0.i1376, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.oc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ob, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.oa)
          to label %bb.dx unwind label %.thread1620, !dbg !34665

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oa), !dbg !35647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ob), !dbg !35647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oc), !dbg !35647
  %i.vl = load i64, ptr %i.od, align 8, !dbg !35648, !range !1573, !noundef !1032 ; 2 uses
  %i.vm = icmp eq i64 %i.vl, 8, !dbg !35648
  %i.vn = getelementptr inbounds nuw i8, ptr %i.od, i64 8, !dbg !35649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.619, ptr noundef nonnull align 8 dereferenceable(32) %i.vn, i64 32, i1 false), !dbg !35649
  br i1 %i.vm, label %bb.dy, label %bb.dz, !dbg !35650

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.od), !dbg !35651
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.vo, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.619, i64 32, i1 false), !dbg !35651
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oe), !dbg !35653
  br label %bb.eg, !dbg !35654

bb.dz:                                            ; preds = %bb.dx
  %.sroa.6716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.od, i64 40, !dbg !35655
  %.sroa.821.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.nz, i64 40, !dbg !34665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %.sroa.821.0..sroa_idx22, ptr noundef nonnull align 8 dereferenceable(352) %.sroa.6716.0..sroa_idx, i64 352, i1 false), !dbg !35655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.od), !dbg !35651
  store i64 %i.vl, ptr %i.nz, align 8, !dbg !34665
  %.sroa.619.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.nz, i64 8, !dbg !34665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.619.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.619, i64 32, i1 false), !dbg !34665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ny), !dbg !35656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ny, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !35656
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_7boolean14BooleanDecoderE7collectBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.oe, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(392) %i.nz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ny)
          to label %bb.ea unwind label %.thread1620, !dbg !35657

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ny), !dbg !35658
  %i.vp = load i64, ptr %i.oe, align 8, !dbg !35659, !range !1034, !noundef !1032 ; 2 uses
  %i.vq = icmp eq i64 %i.vp, -9223372036854775808, !dbg !35659
  %i.vr = getelementptr inbounds nuw i8, ptr %i.oe, i64 8, !dbg !35660
  %.sroa.01059.0.copyload = load ptr, ptr %i.vr, align 8, !dbg !35660 ; 5 uses
  %.sroa.51060.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oe, i64 16, !dbg !35660
  %.sroa.51060.0.copyload = load i64, ptr %.sroa.51060.0..sroa_idx, align 8, !dbg !35660 ; 3 uses
  %.sroa.61061.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oe, i64 24, !dbg !35660 ; 2 uses
  br i1 %i.vq, label %bb.eb, label %bb.ec, !dbg !35661

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.615.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61061.0..sroa_idx, i64 16, i1 false), !dbg !35662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oe), !dbg !35653
  %.sroa.31055.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !35663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.31055.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.615.sroa.8, i64 16, i1 false), !dbg !35653
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35663
  store ptr %.sroa.01059.0.copyload, ptr %i.vs, align 8, !dbg !35663
  %.sroa.21054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !35663
  store i64 %.sroa.51060.0.copyload, ptr %.sroa.21054.0..sroa_idx, align 8, !dbg !35663
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35663
  br label %bb.eg, !dbg !35664

bb.ec:                                            ; preds = %bb.ea
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61061.0..sroa_idx, i64 24, i1 false), !dbg !35665
  %.sroa.6719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oe, i64 48, !dbg !35665
  call void @llvm.lifetime.start.p0(ptr nonnull %i.of), !dbg !35666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.of, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6719.0..sroa_idx, i64 32, i1 false), !dbg !35665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.oe), !dbg !35653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.og), !dbg !35667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.og, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615.sroa.8, i64 24, i1 false), !dbg !34665
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619), !dbg !35664
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615.sroa.8), !dbg !35664
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01059.0.copyload) ], !dbg !35668
  %i.vt = icmp ult i64 %.sroa.51060.0.copyload, 96076792050570582, !dbg !35669
  call void @llvm.assume(i1 %i.vt), !dbg !35670
  %i.vu = getelementptr inbounds nuw [96 x i8], ptr %.sroa.01059.0.copyload, i64 %.sroa.51060.0.copyload, !dbg !35671
  store ptr %.sroa.01059.0.copyload, ptr %i.nw, align 8, !dbg !35672
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8, !dbg !35672
  store ptr %.sroa.01059.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !35672
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16, !dbg !35672
  store i64 %i.vp, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !35672
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nw, i64 24, !dbg !35672
  store ptr %i.vu, ptr %.sroa.624.0..sroa_idx, align 8, !dbg !35672
  %i.vv = getelementptr inbounds nuw i8, ptr %i.nw, i64 32, !dbg !35672
  store ptr %i.oo, ptr %i.vv, align 8, !dbg !35672
  invoke void @_RINvNtNtCsgZ49sUHp3tW_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow5array7boolean12BooleanArrayENCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_array0EINtNtB6_5boxed3BoxDNtB2p_5ArrayEL_EEB3y_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.nx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.nw)
          to label %bb.ee unwind label %bb.ed, !dbg !35673

bb.ed:                                            ; preds = %bb.ec
  %i.vw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.of)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit unwind label %bb.ay, !dbg !35674

bb.ee:                                            ; preds = %bb.ec
  %.sroa.40.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 16, !dbg !35675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.40.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.og, i64 24, i1 false), !dbg !35676
  %.sroa.40.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 40, !dbg !35675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.of, i64 32, i1 false), !dbg !35677
  %.sroa.0521.0.copyload523 = load i64, ptr %i.nx, align 8, !dbg !35675
  %.sroa.40.0..sroa_idx535 = getelementptr inbounds nuw i8, ptr %i.nx, i64 8, !dbg !35675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.40.0..sroa_idx535, i64 16, i1 false), !dbg !35675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.of), !dbg !35678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.og), !dbg !35678
  br label %bb.ef, !dbg !35679

bb.ef:                                            ; preds = %bb.xt, %bb.ra, %bb.ql, %bb.oj, %bb.nr, %bb.lp, %bb.la, %bb.kj, %bb.gu, %bb.gd, %bb.ee
  %.sroa.0639.5 = phi i8 [ 0, %bb.xt ], [ 1, %bb.gd ], [ 1, %bb.gu ], [ 1, %bb.kj ], [ 1, %bb.la ], [ 1, %bb.lp ], [ 1, %bb.nr ], [ 1, %bb.oj ], [ 1, %bb.ra ], [ 1, %bb.ql ], [ 1, %bb.ee ], !dbg !35374 ; 2 uses
  %.sroa.0521.1 = phi i64 [ %.sroa.0521.0.copyload533, %bb.xt ], [ %.sroa.0836.0.copyload, %bb.gd ], [ %.sroa.0819.0.copyload, %bb.gu ], [ %.sroa.0780.0.copyload, %bb.kj ], [ %.sroa.0796.0.copyload, %bb.la ], [ %.sroa.0521.0.copyload528, %bb.lp ], [ %.sroa.0888.0.copyload, %bb.nr ], [ %.sroa.0871.0.copyload, %bb.oj ], [ %.sroa.0917.0.copyload, %bb.ra ], [ %.sroa.0934.0.copyload, %bb.ql ], [ %.sroa.0521.0.copyload523, %bb.ee ], !dbg !35410
  store i64 %.sroa.0521.1, ptr %0, align 8, !dbg !35411
  %.sroa.40.0..sroa_idx534 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35411
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.40.0..sroa_idx534, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.40, i64 72, i1 false), !dbg !35411
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.oo)
          to label %bb.xh unwind label %.split, !dbg !35376

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.ed
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils11NestedStateEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.og) #39
          to label %.thread1611 unwind label %bb.ay, !dbg !35678

bb.eg:                                            ; preds = %bb.eb, %bb.dy
  %.sroa.0650.13 = phi i8 [ 1, %bb.dy ], [ 0, %bb.eb ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619), !dbg !35664
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615.sroa.8), !dbg !35664
  br label %bb.eh, !dbg !35400

bb.eh:                                            ; preds = %bb.yh, %bb.rd, %bb.qo, %bb.om, %bb.nu, %bb.nt, %bb.lq, %bb.ld, %bb.lc, %bb.km, %bb.kl, %bb.gx, %bb.gw, %bb.gg, %bb.gf, %bb.eg
  %.sroa.0650.14 = phi i8 [ %.sroa.0650.47, %bb.yh ], [ %.sroa.0650.16, %bb.gg ], [ 0, %bb.gf ], [ %.sroa.0650.17, %bb.gx ], [ 0, %bb.gw ], [ %.sroa.0650.20, %bb.km ], [ 0, %bb.kl ], [ %.sroa.0650.21, %bb.ld ], [ 0, %bb.lc ], [ %.sroa.0650.22, %bb.lq ], [ %.sroa.0650.26, %bb.nu ], [ 0, %bb.nt ], [ %.sroa.0650.27, %bb.om ], [ %.sroa.0650.33, %bb.rd ], [ %.sroa.0650.31, %bb.qo ], [ %.sroa.0650.13, %bb.eg ], !dbg !35374 ; 2 uses
  %.sroa.0639.6 = phi i8 [ 0, %bb.yh ], [ 1, %bb.gg ], [ 1, %bb.gf ], [ 1, %bb.gx ], [ 1, %bb.gw ], [ 1, %bb.km ], [ 1, %bb.kl ], [ 1, %bb.ld ], [ 1, %bb.lc ], [ 1, %bb.lq ], [ 1, %bb.nu ], [ 1, %bb.nt ], [ 1, %bb.om ], [ 1, %bb.rd ], [ 1, %bb.qo ], [ 1, %bb.eg ], !dbg !35374 ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.oo)
          to label %bb.yi unwind label %.split, !dbg !35376

bb.ei:                                            ; preds = %thread-pre-split
  switch i8 %i.ow, label %.thread1650 [
    i8 4, label %bb.ek
    i8 16, label %bb.ek
    i8 18, label %bb.ek
    i8 36, label %bb.fg
    i8 33, label %bb.fd
    i8 32, label %bb.ve
    i8 17, label %bb.fa
    i8 25, label %bb.ox
    i8 22, label %bb.ox
  ], !dbg !35378, !prof !34682

.thread1627.thread:                               ; preds = %bb.ds, %bb.l, %bb.m, %bb.n, %bb.o
  %.ph = phi i64 [ 0, %bb.ds ], [ %i.pp, %bb.o ], [ %i.pn, %bb.n ], [ %i.pl, %bb.m ], [ %i.pj, %bb.l ]
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !35377
  br label %bb.ey, !dbg !35378

bb.ej:                                            ; preds = %thread-pre-split
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !35377 ; 10 uses
  switch i8 %i.ow, label %bb.ey [
    i8 6, label %bb.fj
    i8 11, label %bb.fk
    i8 15, label %bb.ez
    i8 17, label %bb.fl
    i8 21, label %bb.fm
    i8 23, label %bb.fn
    i8 33, label %bb.fo
    i8 36, label %bb.fp
  ], !dbg !35378

bb.ek:                                            ; preds = %bb.ei, %bb.ei, %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6111), !dbg !34691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ls), !dbg !34691
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6117), !dbg !34691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lr), !dbg !34691
  %i.vx = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !35680 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !35681
  %i.vz = load i8, ptr %i.vy, align 1, !dbg !35681, !range !1108, !alias.scope !34690, !noundef !1032 ; 2 uses
  %i.wa = icmp ugt i8 %i.vz, -41, !dbg !35682
  br i1 %i.wa, label %bb.em, label %bb.el, !dbg !35682

bb.el:                                            ; preds = %bb.ek
  %i.wb = add i8 %i.vz, 64, !dbg !35683
  %i.wc = call i8 @llvm.umin.i8(i8 %i.wb, i8 24), !dbg !35684
  %.sroa.0.0.i.i1379 = zext nneg i8 %i.wc to i64, !dbg !35684
  br label %bb.en, !dbg !35685

bb.em:                                            ; preds = %bb.ek
  %i.wd = load ptr, ptr %i.vx, align 8, !dbg !35686, !alias.scope !34690, !noundef !1032
  %i.we = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !35687
  %i.wf = load i64, ptr %i.we, align 8, !dbg !35687, !alias.scope !34690, !noundef !1032
  br label %bb.en, !dbg !35688

bb.en:                                            ; preds = %bb.em, %bb.el
  %.sroa.01.0.i1380 = phi i64 [ %i.wf, %bb.em ], [ %.sroa.0.0.i.i1379, %bb.el ], !dbg !35689
  %.sroa.0.0.i1381 = phi ptr [ %i.wd, %bb.em ], [ %i.vx, %bb.el ], !dbg !35690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lq), !dbg !35691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.lq, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !35691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lp), !dbg !35692
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lp, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !35692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lo), !dbg !35693
  invoke void @_RNvMs0_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderllINtB7_19UnitDecoderFunctionlEE4unitBf_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.lo)
          to label %bb.eo unwind label %bb.ew, !dbg !35693

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ln), !dbg !35694
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ln, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !35694
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderllINtB1z_19UnitDecoderFunctionlEEE3newBd_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.lr, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1381, i64 noundef %.sroa.01.0.i1380, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.lq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.lp, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.lo, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ln)
          to label %bb.ep unwind label %.thread1676, !dbg !34691

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ln), !dbg !35695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lo), !dbg !35695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lp), !dbg !35695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lq), !dbg !35695
  %i.wg = load i64, ptr %i.lr, align 8, !dbg !35696, !range !1573, !noundef !1032 ; 2 uses
  %i.wh = icmp eq i64 %i.wg, 8, !dbg !35696
  %i.wi = getelementptr inbounds nuw i8, ptr %i.lr, i64 8, !dbg !35697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6117, ptr noundef nonnull align 8 dereferenceable(32) %i.wi, i64 32, i1 false), !dbg !35697
  br i1 %i.wh, label %bb.eq, label %bb.er, !dbg !35698

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lr), !dbg !35699
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.wj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6117, i64 32, i1 false), !dbg !35699
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ls), !dbg !35701
  br label %bb.ev, !dbg !35400

bb.er:                                            ; preds = %bb.ep
  %.sroa.6764.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lr, i64 40, !dbg !35702
  %.sroa.8119.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %i.lm, i64 40, !dbg !34691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.8119.0..sroa_idx120, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6764.0..sroa_idx, i64 368, i1 false), !dbg !35702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lr), !dbg !35699
  store i64 %i.wg, ptr %i.lm, align 8, !dbg !34691
  %.sroa.6117.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.lm, i64 8, !dbg !34691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6117.0..sroa_idx118, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6117, i64 32, i1 false), !dbg !34691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ll), !dbg !35703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ll, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !35703
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderllINtB1z_19UnitDecoderFunctionlEEE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ls, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.lm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ll)
          to label %bb.es unwind label %bb.f, !dbg !35704

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ll), !dbg !35705
  %i.wk = load i64, ptr %i.ls, align 8, !dbg !35706, !range !1034, !noundef !1032 ; 2 uses
  %i.wl = icmp eq i64 %i.wk, -9223372036854775808, !dbg !35706
  %i.wm = getelementptr inbounds nuw i8, ptr %i.ls, i64 8, !dbg !35707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6111, ptr noundef nonnull align 8 dereferenceable(32) %i.wm, i64 32, i1 false), !dbg !35707
  br i1 %i.wl, label %bb.et, label %bb.eu, !dbg !35708

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ls), !dbg !35701
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.wn, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6111, i64 32, i1 false), !dbg !35701
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35709
  br label %bb.ev, !dbg !35701

bb.eu:                                            ; preds = %bb.es
  %.sroa.6767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ls, i64 40, !dbg !35710
  %.sroa.40.40..sroa_idx563 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !34691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx563, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6767.0..sroa_idx, i64 40, i1 false), !dbg !35710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ls), !dbg !35701
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6111, i64 32, i1 false), !dbg !34691
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6117), !dbg !35701
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6111), !dbg !35701
  br label %bb.y, !dbg !35701

bb.ev:                                            ; preds = %bb.et, %bb.eq
  %.sroa.0650.15 = phi i8 [ 1, %bb.eq ], [ 0, %bb.et ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6117), !dbg !35701
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6111), !dbg !35701
  br label %bb.yi, !dbg !35400

bb.ew:                                            ; preds = %bb.en
  %i.wo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.lp) #39
          to label %bb.ex unwind label %bb.ay, !dbg !35695

bb.ex:                                            ; preds = %bb.ew
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read11compression17BasicDecompressorEBO_(ptr noalias noundef align 8 dereferenceable(232) %i.lq) #39
          to label %.thread1605.thread1721 unwind label %bb.ay, !dbg !35695

bb.ey:                                            ; preds = %.thread1627.thread, %bb.ej
  %9 = phi ptr [ %7, %.thread1627.thread ], [ %8, %bb.ej ]
  %10 = phi i64 [ %.ph, %.thread1627.thread ], [ %6, %bb.ej ]
  switch i64 %10, label %.thread1647 [
    i64 2, label %bb.oq
    i64 4, label %bb.rg
    i64 5, label %bb.rh
    i64 6, label %bb.rf
    i64 7, label %bb.ri
  ], !dbg !35378

bb.ez:                                            ; preds = %bb.ej
  %i.wp = and i64 %6, -2, !dbg !35378
  %switch1750 = icmp eq i64 %i.wp, 2, !dbg !35378
  br i1 %switch1750, label %bb.gy, label %.thread1650, !dbg !35378

bb.fa:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6365), !dbg !34839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn), !dbg !34839
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6371), !dbg !34839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm), !dbg !34839
  %i.wq = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !35711 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !35712
  %i.ws = load i8, ptr %i.wr, align 1, !dbg !35712, !range !1108, !alias.scope !34704, !noundef !1032 ; 2 uses
  %i.wt = icmp ugt i8 %i.ws, -41, !dbg !35713
  br i1 %i.wt, label %bb.fc, label %bb.fb, !dbg !35713

bb.fb:                                            ; preds = %bb.fa
  %i.wu = add i8 %i.ws, 64, !dbg !35714
  %i.wv = call i8 @llvm.umin.i8(i8 %i.wu, i8 24), !dbg !35715
  %.sroa.0.0.i.i1383 = zext nneg i8 %i.wv to i64, !dbg !35715
  br label %bb.iz, !dbg !35716

bb.fc:                                            ; preds = %bb.fa
  %i.ww = load ptr, ptr %i.wq, align 8, !dbg !35717, !alias.scope !34704, !noundef !1032
  %i.wx = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !35718
  %i.wy = load i64, ptr %i.wx, align 8, !dbg !35718, !alias.scope !34704, !noundef !1032
  br label %bb.iz, !dbg !35719

bb.fd:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6233), !dbg !34973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iw), !dbg !34973
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6239), !dbg !34973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iv), !dbg !34973
  %i.wz = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !35720 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !35721
  %i.xb = load i8, ptr %i.xa, align 1, !dbg !35721, !range !1108, !alias.scope !34712, !noundef !1032 ; 2 uses
  %i.xc = icmp ugt i8 %i.xb, -41, !dbg !35722
  br i1 %i.xc, label %bb.ff, label %bb.fe, !dbg !35722

bb.fe:                                            ; preds = %bb.fd
  %i.xd = add i8 %i.xb, 64, !dbg !35723
  %i.xe = call i8 @llvm.umin.i8(i8 %i.xd, i8 24), !dbg !35724
  %.sroa.0.0.i.i1387 = zext nneg i8 %i.xe to i64, !dbg !35724
  br label %bb.mk, !dbg !35725

bb.ff:                                            ; preds = %bb.fd
  %i.xf = load ptr, ptr %i.wz, align 8, !dbg !35726, !alias.scope !34712, !noundef !1032
  %i.xg = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !35727
  %i.xh = load i64, ptr %i.xg, align 8, !dbg !35727, !alias.scope !34712, !noundef !1032
  br label %bb.mk, !dbg !35728

bb.fg:                                            ; preds = %bb.ei
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6299), !dbg !35064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hf), !dbg !35064
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6305), !dbg !35064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.he), !dbg !35064
  %i.xi = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !35729 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !35730
  %i.xk = load i8, ptr %i.xj, align 1, !dbg !35730, !range !1108, !alias.scope !34720, !noundef !1032 ; 2 uses
  %i.xl = icmp ugt i8 %i.xk, -41, !dbg !35731
  br i1 %i.xl, label %bb.fi, label %bb.fh, !dbg !35731

bb.fh:                                            ; preds = %bb.fg
  %i.xm = add i8 %i.xk, 64, !dbg !35732
  %i.xn = call i8 @llvm.umin.i8(i8 %i.xm, i8 24), !dbg !35733
  %.sroa.0.0.i.i1391 = zext nneg i8 %i.xn to i64, !dbg !35733
  br label %bb.pc, !dbg !35734

bb.fi:                                            ; preds = %bb.fg
  %i.xo = load ptr, ptr %i.xi, align 8, !dbg !35735, !alias.scope !34720, !noundef !1032
  %i.xp = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !35736
  %i.xq = load i64, ptr %i.xp, align 8, !dbg !35736, !alias.scope !34720, !noundef !1032
  br label %bb.pc, !dbg !35737

bb.fj:                                            ; preds = %bb.ej
  %cond1748.a = icmp eq i64 %6, 7, !dbg !35378
  %i.xr = load i64, ptr %8, align 8, !dbg !35378
  %i.xs = icmp eq i64 %i.xr, 16, !dbg !35378
  %or.cond = select i1 %cond1748.a, i1 %i.xs, i1 false, !dbg !35378
  br i1 %or.cond, label %bb.fq, label %.thread1650, !dbg !35378

bb.fk:                                            ; preds = %bb.ej
  %cond1747.a = icmp eq i64 %6, 7, !dbg !35378
  %i.xt = load i64, ptr %8, align 8, !dbg !35378
  %i.xu = icmp eq i64 %i.xt, 16, !dbg !35378
  %or.cond1753 = select i1 %cond1747.a, i1 %i.xu, i1 false, !dbg !35378
  br i1 %or.cond1753, label %bb.gh, label %.thread1650, !dbg !35378

bb.fl:                                            ; preds = %bb.ej
  %cond.a = icmp eq i64 %6, 2, !dbg !35378
  br i1 %cond.a, label %bb.iw, label %.thread1650, !dbg !35378

bb.fm:                                            ; preds = %bb.ej
  %cond1746 = icmp eq i64 %6, 7, !dbg !35378
  br i1 %cond1746, label %bb.js, label %.thread1650, !dbg !35378

bb.fn:                                            ; preds = %bb.ej
  %cond1745 = icmp eq i64 %6, 7, !dbg !35378
  br i1 %cond1745, label %bb.lr, label %.thread1650, !dbg !35378

bb.fo:                                            ; preds = %bb.ej
  switch i64 %6, label %.thread1650 [
    i64 7, label %bb.mj
    i64 2, label %bb.md
    i64 6, label %bb.mg
  ], !dbg !35378

bb.fp:                                            ; preds = %bb.ej
  switch i64 %6, label %.thread1650 [
    i64 7, label %bb.pb
    i64 2, label %bb.oy
  ], !dbg !35378

bb.fq:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6212.sroa.8), !dbg !34730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jf), !dbg !34730
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6217), !dbg !34730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.je), !dbg !34730
  %i.xv = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !35738 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !35739
  %i.xx = load i8, ptr %i.xw, align 1, !dbg !35739, !range !1108, !alias.scope !34728, !noundef !1032 ; 2 uses
  %i.xy = icmp ugt i8 %i.xx, -41, !dbg !35740
  br i1 %i.xy, label %bb.fs, label %bb.fr, !dbg !35740

bb.fr:                                            ; preds = %bb.fq
  %i.xz = add i8 %i.xx, 64, !dbg !35741
  %i.ya = call i8 @llvm.umin.i8(i8 %i.xz, i8 24), !dbg !35742
  %.sroa.0.0.i.i1395 = zext nneg i8 %i.ya to i64, !dbg !35742
  br label %bb.ft, !dbg !35743

bb.fs:                                            ; preds = %bb.fq
  %i.yb = load ptr, ptr %i.xv, align 8, !dbg !35744, !alias.scope !34728, !noundef !1032
  %i.yc = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !35745
  %i.yd = load i64, ptr %i.yc, align 8, !dbg !35745, !alias.scope !34728, !noundef !1032
  br label %bb.ft, !dbg !35746

.thread1647:                                      ; preds = %bb.ey
  switch i8 %i.ow, label %.thread1650 [
    i8 22, label %bb.ox
    i8 25, label %bb.ox
    i8 32, label %bb.ve
  ], !dbg !35378, !prof !34729

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.sroa.01.0.i1396 = phi i64 [ %i.yd, %bb.fs ], [ %.sroa.0.0.i.i1395, %bb.fr ], !dbg !35747
  %.sroa.0.0.i1397 = phi ptr [ %i.yb, %bb.fs ], [ %i.xv, %bb.fr ], !dbg !35748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jd), !dbg !35749
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.jd, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !35749
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jc), !dbg !35750
  %i.ye = getelementptr inbounds nuw i8, ptr %i.jc, i64 8, !dbg !35750
  store i64 16, ptr %i.ye, align 8, !dbg !35750
  store i8 23, ptr %i.jc, align 8, !dbg !35750
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jb), !dbg !35751
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jb, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !35751
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_17fixed_size_binary13BinaryDecoderE3newBd_(ptr noalias noundef nonnull sret([400 x i8]) align 8 captures(none) dereferenceable(400) %i.je, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1397, i64 noundef %.sroa.01.0.i1396, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.jd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.jc, i64 noundef 16, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.jb)
          to label %bb.fu unwind label %.thread1620, !dbg !34730

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jb), !dbg !35752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jc), !dbg !35752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jd), !dbg !35752
  %i.yf = load i64, ptr %i.je, align 8, !dbg !35753, !range !1573, !noundef !1032 ; 2 uses
  %i.yg = icmp eq i64 %i.yf, 8, !dbg !35753
  %i.yh = getelementptr inbounds nuw i8, ptr %i.je, i64 8, !dbg !35754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6217, ptr noundef nonnull align 8 dereferenceable(32) %i.yh, i64 32, i1 false), !dbg !35754
  br i1 %i.yg, label %bb.fv, label %bb.fw, !dbg !35755

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.je), !dbg !35756
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yi, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6217, i64 32, i1 false), !dbg !35756
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jf), !dbg !35758
  br label %bb.gg, !dbg !35759

bb.fw:                                            ; preds = %bb.fu
  %.sroa.6832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 40, !dbg !35760
  %.sroa.8219.0..sroa_idx220 = getelementptr inbounds nuw i8, ptr %i.ja, i64 40, !dbg !34730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.8219.0..sroa_idx220, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.6832.0..sroa_idx, i64 360, i1 false), !dbg !35760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.je), !dbg !35756
  store i64 %i.yf, ptr %i.ja, align 8, !dbg !34730
  %.sroa.6217.0..sroa_idx218 = getelementptr inbounds nuw i8, ptr %i.ja, i64 8, !dbg !34730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6217.0..sroa_idx218, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6217, i64 32, i1 false), !dbg !34730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iz), !dbg !35761
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.iz, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !35761
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_17fixed_size_binary13BinaryDecoderE7collectBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.jf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(400) %i.ja, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.iz)
          to label %bb.fx unwind label %.thread1620, !dbg !35762

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iz), !dbg !35763
  %i.yj = load i64, ptr %i.jf, align 8, !dbg !35764, !range !1034, !noundef !1032 ; 2 uses
  %i.yk = icmp eq i64 %i.yj, -9223372036854775808, !dbg !35764
  %i.yl = getelementptr inbounds nuw i8, ptr %i.jf, i64 8, !dbg !35765
  %.sroa.01164.0.copyload = load ptr, ptr %i.yl, align 8, !dbg !35765 ; 5 uses
  %.sroa.51165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jf, i64 16, !dbg !35765
  %.sroa.51165.0.copyload = load i64, ptr %.sroa.51165.0..sroa_idx, align 8, !dbg !35765 ; 3 uses
  %.sroa.61166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jf, i64 24, !dbg !35765 ; 2 uses
  br i1 %i.yk, label %bb.fy, label %bb.fz, !dbg !35766

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6212.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61166.0..sroa_idx, i64 16, i1 false), !dbg !35767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jf), !dbg !35758
  %.sroa.31160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !35768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.31160.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6212.sroa.8, i64 16, i1 false), !dbg !35758
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35768
  store ptr %.sroa.01164.0.copyload, ptr %i.ym, align 8, !dbg !35768
  %.sroa.21159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !35768
  store i64 %.sroa.51165.0.copyload, ptr %.sroa.21159.0..sroa_idx, align 8, !dbg !35768
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35768
  br label %bb.gg, !dbg !35769

bb.fz:                                            ; preds = %bb.fx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6212.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61166.0..sroa_idx, i64 24, i1 false), !dbg !35770
  %.sroa.6835.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jf, i64 48, !dbg !35770
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jg), !dbg !35771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jg, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6835.0..sroa_idx, i64 32, i1 false), !dbg !35770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jf), !dbg !35758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jh), !dbg !35772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jh, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6212.sroa.8, i64 24, i1 false), !dbg !34730
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6217), !dbg !35769
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6212.sroa.8), !dbg !35769
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6223.sroa.7), !dbg !34750
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iy), !dbg !34750
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01164.0.copyload) ], !dbg !35773
  %i.yn = icmp ult i64 %.sroa.51165.0.copyload, 96076792050570582, !dbg !35774
  call void @llvm.assume(i1 %i.yn), !dbg !35775
  %i.yo = getelementptr inbounds nuw [96 x i8], ptr %.sroa.01164.0.copyload, i64 %.sroa.51165.0.copyload, !dbg !35776
  store ptr %.sroa.01164.0.copyload, ptr %i.ix, align 8, !dbg !35777
  %.sroa.4226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ix, i64 8, !dbg !35777
  store ptr %.sroa.01164.0.copyload, ptr %.sroa.4226.0..sroa_idx, align 8, !dbg !35777
  %.sroa.5227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ix, i64 16, !dbg !35777
  store i64 %i.yj, ptr %.sroa.5227.0..sroa_idx, align 8, !dbg !35777
  %.sroa.6228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ix, i64 24, !dbg !35777
  store ptr %i.yo, ptr %.sroa.6228.0..sroa_idx, align 8, !dbg !35777
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ix, i64 32, !dbg !35777
  store ptr %i.oo, ptr %i.yp, align 8, !dbg !35777
  invoke void @_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayENCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_arrays3_0EINtNtB1d_5boxed3BoxDNtB1Y_5ArrayEL_EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB3q_7parquet5error12ParquetErrorENCINvXso_B5r_IB5p_INtB1b_3VecB4O_EB6b_EINtNtNtB4_6traits7collect12FromIteratorIB5p_B4O_B6b_EE9from_iterBQ_E0B76_EB3q_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.iy, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.ix)
          to label %bb.gb unwind label %bb.ga, !dbg !35778

bb.ga:                                            ; preds = %bb.fz
  %i.yq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.jg)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1399 unwind label %bb.ay, !dbg !35779

bb.gb:                                            ; preds = %bb.fz
  %i.yr = load i64, ptr %i.iy, align 8, !dbg !35780, !range !1553, !noundef !1032 ; 2 uses
  %.not1296 = icmp eq i64 %i.yr, -9223372036854775803, !dbg !35780
  %i.ys = getelementptr inbounds nuw i8, ptr %i.iy, i64 8, !dbg !35781
  %.sroa.0836.0.copyload = load i64, ptr %i.ys, align 8, !dbg !35781 ; 2 uses
  %.sroa.5837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iy, i64 16, !dbg !35781
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6223.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5837.0..sroa_idx, i64 16, i1 false), !dbg !35781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iy), !dbg !35782
  br i1 %.not1296, label %bb.gd, label %bb.gc, !dbg !35783

bb.gc:                                            ; preds = %bb.gb
  %.sroa.3846.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !35784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3846.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6223.sroa.7, i64 16, i1 false), !dbg !35782
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35784
  store i64 %i.yr, ptr %i.yt, align 8, !dbg !35784
  %.sroa.2845.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !35784
  store i64 %.sroa.0836.0.copyload, ptr %.sroa.2845.0..sroa_idx, align 8, !dbg !35784
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35784
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6223.sroa.7), !dbg !35785
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.jg)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1400 unwind label %bb.ge, !dbg !35786

bb.gd:                                            ; preds = %bb.gb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6223.sroa.7, i64 16, i1 false), !dbg !34750
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6223.sroa.7), !dbg !35785
  %.sroa.40.24..sroa_idx546 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 16, !dbg !35787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.40.24..sroa_idx546, ptr noundef nonnull align 8 dereferenceable(24) %i.jh, i64 24, i1 false), !dbg !35788
  %.sroa.40.48..sroa_idx582 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 40, !dbg !35787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40.48..sroa_idx582, ptr noundef nonnull align 8 dereferenceable(32) %i.jg, i64 32, i1 false), !dbg !35789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jg), !dbg !35790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jh), !dbg !35790
  br label %bb.ef, !dbg !35791

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1399: ; preds = %bb.ga, %bb.ge
  %.pn1297 = phi { ptr, i32 } [ %i.yu, %bb.ge ], [ %i.yq, %bb.ga ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils11NestedStateEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.jh) #39
          to label %.thread1611 unwind label %bb.ay, !dbg !35790

bb.ge:                                            ; preds = %bb.gc
end_hunk_1
begin_hunk_2_@_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_array:bb.a
  %i.abw = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !35999 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36000
  %i.aby = load i8, ptr %i.abx, align 1, !dbg !36000, !range !1108, !alias.scope !34837, !noundef !1032 ; 2 uses
  %i.abz = icmp ugt i8 %i.aby, -41, !dbg !36001
  br i1 %i.abz, label %bb.iy, label %bb.ix, !dbg !36001

bb.ix:                                            ; preds = %bb.iw
  %i.aca = add i8 %i.aby, 64, !dbg !36002
  %i.acb = call i8 @llvm.umin.i8(i8 %i.aca, i8 24), !dbg !36003
  %.sroa.0.0.i.i1418 = zext nneg i8 %i.acb to i64, !dbg !36003
  br label %bb.jh, !dbg !36004

bb.iy:                                            ; preds = %bb.iw
  %i.acc = load ptr, ptr %i.abw, align 8, !dbg !36005, !alias.scope !34837, !noundef !1032
  %i.acd = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36006
  %i.ace = load i64, ptr %i.acd, align 8, !dbg !36006, !alias.scope !34837, !noundef !1032
  br label %bb.jh, !dbg !36007

bb.iz:                                            ; preds = %bb.fb, %bb.fc
  %.sroa.01.0.i1384 = phi i64 [ %i.wy, %bb.fc ], [ %.sroa.0.0.i.i1383, %bb.fb ], !dbg !36008
  %.sroa.0.0.i1385 = phi ptr [ %i.ww, %bb.fc ], [ %i.wq, %bb.fb ], !dbg !36009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl), !dbg !36010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.fl, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36010
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk), !dbg !36011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fk, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !36011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj), !dbg !36012
  store i64 0, ptr %i.fj, align 8, !dbg !36013, !alias.scope !34838
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 8, !dbg !36013
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !36013, !alias.scope !34838
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fj, i64 16, !dbg !36013
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !dbg !36013, !alias.scope !34838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi), !dbg !36014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36014
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderlxINtB1z_22ClosureDecoderFunctionlxNCNvNtB7_6simple18page_iter_to_arraysa_0EEE3newBd_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.fm, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1385, i64 noundef %.sroa.01.0.i1384, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.fl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.fk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.fj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.fi)
          to label %bb.ja unwind label %.thread1676, !dbg !34839

bb.ja:                                            ; preds = %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi), !dbg !36015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj), !dbg !36015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk), !dbg !36015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl), !dbg !36015
  %i.acf = load i64, ptr %i.fm, align 8, !dbg !36016, !range !1573, !noundef !1032 ; 2 uses
  %i.acg = icmp eq i64 %i.acf, 8, !dbg !36016
  %i.ach = getelementptr inbounds nuw i8, ptr %i.fm, i64 8, !dbg !36017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6371, ptr noundef nonnull align 8 dereferenceable(32) %i.ach, i64 32, i1 false), !dbg !36017
  br i1 %i.acg, label %bb.jb, label %bb.jc, !dbg !36018

bb.jb:                                            ; preds = %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !dbg !36019
  %i.aci = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36020
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aci, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6371, i64 32, i1 false), !dbg !36019
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn), !dbg !36021
  br label %bb.jg, !dbg !35400

bb.jc:                                            ; preds = %bb.ja
  %.sroa.6953.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 40, !dbg !36022
  %.sroa.8373.0..sroa_idx374 = getelementptr inbounds nuw i8, ptr %i.fh, i64 40, !dbg !34839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.8373.0..sroa_idx374, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6953.0..sroa_idx, i64 368, i1 false), !dbg !36022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !dbg !36019
  store i64 %i.acf, ptr %i.fh, align 8, !dbg !34839
  %.sroa.6371.0..sroa_idx372 = getelementptr inbounds nuw i8, ptr %i.fh, i64 8, !dbg !34839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6371.0..sroa_idx372, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6371, i64 32, i1 false), !dbg !34839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg), !dbg !36023
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fg, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36023
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderlxINtB1z_22ClosureDecoderFunctionlxNCNvNtB7_6simple18page_iter_to_arraysa_0EEE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.fn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.fh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.fg)
          to label %bb.jd unwind label %bb.f, !dbg !36024

bb.jd:                                            ; preds = %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg), !dbg !36025
  %i.acj = load i64, ptr %i.fn, align 8, !dbg !36026, !range !1034, !noundef !1032 ; 2 uses
  %i.ack = icmp eq i64 %i.acj, -9223372036854775808, !dbg !36026
  %i.acl = getelementptr inbounds nuw i8, ptr %i.fn, i64 8, !dbg !36027
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6365, ptr noundef nonnull align 8 dereferenceable(32) %i.acl, i64 32, i1 false), !dbg !36027
  br i1 %i.ack, label %bb.je, label %bb.jf, !dbg !36028

bb.je:                                            ; preds = %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn), !dbg !36021
  %i.acm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36029
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.acm, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6365, i64 32, i1 false), !dbg !36021
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36029
  br label %bb.jg, !dbg !36021

bb.jf:                                            ; preds = %bb.jd
  %.sroa.6956.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 40, !dbg !36030
  %.sroa.40.40..sroa_idx569 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !34839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx569, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6956.0..sroa_idx, i64 40, i1 false), !dbg !36030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn), !dbg !36021
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6365, i64 32, i1 false), !dbg !34839
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6371), !dbg !36021
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6365), !dbg !36021
  br label %bb.y, !dbg !36021

bb.jg:                                            ; preds = %bb.je, %bb.jb
  %.sroa.0650.18 = phi i8 [ 1, %bb.jb ], [ 0, %bb.je ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6371), !dbg !36021
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6365), !dbg !36021
  br label %bb.yi, !dbg !35400

bb.jh:                                            ; preds = %bb.iy, %bb.ix
  %.sroa.01.0.i1419 = phi i64 [ %i.ace, %bb.iy ], [ %.sroa.0.0.i.i1418, %bb.ix ], !dbg !36031
  %.sroa.0.0.i1420 = phi ptr [ %i.acc, %bb.iy ], [ %i.abw, %bb.ix ], !dbg !36032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fd), !dbg !36033
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.fd, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc), !dbg !36034
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !36034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb), !dbg !36035
  invoke void @_RNvMs0_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderxxINtB7_19UnitDecoderFunctionxEE4unitBf_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fb)
          to label %bb.ji unwind label %bb.jq, !dbg !36035

bb.ji:                                            ; preds = %bb.jh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa), !dbg !36036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36036
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderxxINtB1z_19UnitDecoderFunctionxEEE3newBd_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.fe, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1420, i64 noundef %.sroa.01.0.i1419, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.fd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.fc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.fb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.fa)
          to label %bb.jj unwind label %.thread1676, !dbg !34845

bb.jj:                                            ; preds = %bb.ji
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa), !dbg !36037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb), !dbg !36037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc), !dbg !36037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd), !dbg !36037
  %i.acn = load i64, ptr %i.fe, align 8, !dbg !36038, !range !1573, !noundef !1032 ; 2 uses
  %i.aco = icmp eq i64 %i.acn, 8, !dbg !36038
  %i.acp = getelementptr inbounds nuw i8, ptr %i.fe, i64 8, !dbg !36039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6383, ptr noundef nonnull align 8 dereferenceable(32) %i.acp, i64 32, i1 false), !dbg !36039
  br i1 %i.aco, label %bb.jk, label %bb.jl, !dbg !36040

bb.jk:                                            ; preds = %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe), !dbg !36041
  %i.acq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.acq, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6383, i64 32, i1 false), !dbg !36041
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff), !dbg !36043
  br label %bb.jp, !dbg !35400

bb.jl:                                            ; preds = %bb.jj
  %.sroa.6959.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fe, i64 40, !dbg !36044
  %.sroa.8385.0..sroa_idx386 = getelementptr inbounds nuw i8, ptr %i.ez, i64 40, !dbg !34845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.8385.0..sroa_idx386, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6959.0..sroa_idx, i64 368, i1 false), !dbg !36044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe), !dbg !36041
  store i64 %i.acn, ptr %i.ez, align 8, !dbg !34845
  %.sroa.6383.0..sroa_idx384 = getelementptr inbounds nuw i8, ptr %i.ez, i64 8, !dbg !34845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6383.0..sroa_idx384, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6383, i64 32, i1 false), !dbg !34845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey), !dbg !36045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ey, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36045
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderxxINtB1z_19UnitDecoderFunctionxEEE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ff, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.ez, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ey)
          to label %bb.jm unwind label %bb.f, !dbg !36046

bb.jm:                                            ; preds = %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey), !dbg !36047
  %i.acr = load i64, ptr %i.ff, align 8, !dbg !36048, !range !1034, !noundef !1032 ; 2 uses
  %i.acs = icmp eq i64 %i.acr, -9223372036854775808, !dbg !36048
  %i.act = getelementptr inbounds nuw i8, ptr %i.ff, i64 8, !dbg !36049
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6377, ptr noundef nonnull align 8 dereferenceable(32) %i.act, i64 32, i1 false), !dbg !36049
  br i1 %i.acs, label %bb.jn, label %bb.jo, !dbg !36050

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff), !dbg !36043
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36051
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.acu, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6377, i64 32, i1 false), !dbg !36043
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36051
  br label %bb.jp, !dbg !36043

bb.jo:                                            ; preds = %bb.jm
  %.sroa.6962.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ff, i64 40, !dbg !36052
  %.sroa.40.40..sroa_idx570 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !34845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx570, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6962.0..sroa_idx, i64 40, i1 false), !dbg !36052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff), !dbg !36043
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6377, i64 32, i1 false), !dbg !34845
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6383), !dbg !36043
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6377), !dbg !36043
  br label %bb.y, !dbg !36043

bb.jp:                                            ; preds = %bb.jn, %bb.jk
  %.sroa.0650.19 = phi i8 [ 1, %bb.jk ], [ 0, %bb.jn ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6383), !dbg !36043
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6377), !dbg !36043
  br label %bb.yi, !dbg !35400

bb.jq:                                            ; preds = %bb.jh
  %i.acv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.fc) #39
          to label %bb.jr unwind label %bb.ay, !dbg !36037

bb.jr:                                            ; preds = %bb.jq
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read11compression17BasicDecompressorEBO_(ptr noalias noundef align 8 dereferenceable(232) %i.fd) #39
          to label %.thread1605.thread1721 unwind label %bb.ay, !dbg !36037

bb.js:                                            ; preds = %bb.fm
  %i.acw = getelementptr inbounds nuw i8, ptr %i.ov, i64 1, !dbg !35377
  %i.acx = load i8, ptr %i.acw, align 1, !dbg !35377, !range !1576, !noundef !1032
  switch i8 %i.acx, label %default.unreachable1901 [
    i8 0, label %bb.jt
    i8 1, label %bb.ju
    i8 3, label %bb.jv
    i8 2, label %.thread1650
  ], !dbg !35378

bb.jt:                                            ; preds = %bb.js
  %i.acy = load i64, ptr %8, align 8, !dbg !35378, !noundef !1032
  %i.acz = icmp eq i64 %i.acy, 12, !dbg !35378
  br i1 %i.acz, label %bb.jw, label %.thread1650, !dbg !35378

bb.ju:                                            ; preds = %bb.js
  %i.ada = load i64, ptr %8, align 8, !dbg !35378, !noundef !1032
  %i.adb = icmp eq i64 %i.ada, 12, !dbg !35378
  br i1 %i.adb, label %bb.kn, label %.thread1650, !dbg !35378

bb.jv:                                            ; preds = %bb.js
  %i.adc = load i64, ptr %8, align 8, !dbg !35378, !noundef !1032
  %i.add = icmp eq i64 %i.adc, 12, !dbg !35378
  br i1 %i.add, label %bb.le, label %.thread1650, !dbg !35378

bb.jw:                                            ; preds = %bb.jt
  store i64 12, ptr %i.lb, align 8, !dbg !36053
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6135.sroa.8), !dbg !34859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ky), !dbg !34859
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6140), !dbg !34859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kx), !dbg !34859
  %i.ade = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36054 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36055
  %i.adg = load i8, ptr %i.adf, align 1, !dbg !36055, !range !1108, !alias.scope !34858, !noundef !1032 ; 2 uses
  %i.adh = icmp ugt i8 %i.adg, -41, !dbg !36056
  br i1 %i.adh, label %bb.jy, label %bb.jx, !dbg !36056

bb.jx:                                            ; preds = %bb.jw
  %i.adi = add i8 %i.adg, 64, !dbg !36057
  %i.adj = call i8 @llvm.umin.i8(i8 %i.adi, i8 24), !dbg !36058
  %.sroa.0.0.i.i1422 = zext nneg i8 %i.adj to i64, !dbg !36058
  br label %bb.jz, !dbg !36059

bb.jy:                                            ; preds = %bb.jw
  %i.adk = load ptr, ptr %i.ade, align 8, !dbg !36060, !alias.scope !34858, !noundef !1032
  %i.adl = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36061
  %i.adm = load i64, ptr %i.adl, align 8, !dbg !36061, !alias.scope !34858, !noundef !1032
  br label %bb.jz, !dbg !36062

bb.jz:                                            ; preds = %bb.jy, %bb.jx
  %.sroa.01.0.i1423 = phi i64 [ %i.adm, %bb.jy ], [ %.sroa.0.0.i.i1422, %bb.jx ], !dbg !36063
  %.sroa.0.0.i1424 = phi ptr [ %i.adk, %bb.jy ], [ %i.ade, %bb.jx ], !dbg !36064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kw), !dbg !36065
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.kw, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kv), !dbg !36066
  %i.adn = getelementptr inbounds nuw i8, ptr %i.kv, i64 8, !dbg !36066
  store i64 12, ptr %i.adn, align 8, !dbg !36066
  store i8 23, ptr %i.kv, align 8, !dbg !36066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ku), !dbg !36067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ku, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36067
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_17fixed_size_binary13BinaryDecoderE3newBd_(ptr noalias noundef nonnull sret([400 x i8]) align 8 captures(none) dereferenceable(400) %i.kx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1424, i64 noundef %.sroa.01.0.i1423, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.kw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.kv, i64 noundef 12, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ku)
          to label %bb.ka unwind label %.thread1620, !dbg !34859

bb.ka:                                            ; preds = %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ku), !dbg !36068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kv), !dbg !36068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kw), !dbg !36068
  %i.ado = load i64, ptr %i.kx, align 8, !dbg !36069, !range !1573, !noundef !1032 ; 2 uses
  %i.adp = icmp eq i64 %i.ado, 8, !dbg !36069
  %i.adq = getelementptr inbounds nuw i8, ptr %i.kx, i64 8, !dbg !36070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6140, ptr noundef nonnull align 8 dereferenceable(32) %i.adq, i64 32, i1 false), !dbg !36070
  br i1 %i.adp, label %bb.kb, label %bb.kc, !dbg !36071

bb.kb:                                            ; preds = %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kx), !dbg !36072
  %i.adr = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36073
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.adr, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6140, i64 32, i1 false), !dbg !36072
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ky), !dbg !36074
  br label %bb.km, !dbg !36075

bb.kc:                                            ; preds = %bb.ka
  %.sroa.6776.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kx, i64 40, !dbg !36076
  %.sroa.8142.0..sroa_idx143 = getelementptr inbounds nuw i8, ptr %i.kt, i64 40, !dbg !34859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.8142.0..sroa_idx143, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.6776.0..sroa_idx, i64 360, i1 false), !dbg !36076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kx), !dbg !36072
  store i64 %i.ado, ptr %i.kt, align 8, !dbg !34859
  %.sroa.6140.0..sroa_idx141 = getelementptr inbounds nuw i8, ptr %i.kt, i64 8, !dbg !34859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6140.0..sroa_idx141, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6140, i64 32, i1 false), !dbg !34859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ks), !dbg !36077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ks, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36077
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_17fixed_size_binary13BinaryDecoderE7collectBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ky, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(400) %i.kt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ks)
          to label %bb.kd unwind label %.thread1620, !dbg !36078

bb.kd:                                            ; preds = %bb.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ks), !dbg !36079
  %i.ads = load i64, ptr %i.ky, align 8, !dbg !36080, !range !1034, !noundef !1032 ; 2 uses
  %i.adt = icmp eq i64 %i.ads, -9223372036854775808, !dbg !36080
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ky, i64 8, !dbg !36081
  %.sroa.01080.0.copyload = load ptr, ptr %i.adu, align 8, !dbg !36081 ; 5 uses
  %.sroa.51081.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ky, i64 16, !dbg !36081
  %.sroa.51081.0.copyload = load i64, ptr %.sroa.51081.0..sroa_idx, align 8, !dbg !36081 ; 3 uses
  %.sroa.61082.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ky, i64 24, !dbg !36081 ; 2 uses
  br i1 %i.adt, label %bb.ke, label %bb.kf, !dbg !36082

bb.ke:                                            ; preds = %bb.kd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6135.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61082.0..sroa_idx, i64 16, i1 false), !dbg !36083
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ky), !dbg !36074
  %.sroa.31076.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !36084
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.31076.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6135.sroa.8, i64 16, i1 false), !dbg !36074
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36084
  store ptr %.sroa.01080.0.copyload, ptr %i.adv, align 8, !dbg !36084
  %.sroa.21075.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !36084
  store i64 %.sroa.51081.0.copyload, ptr %.sroa.21075.0..sroa_idx, align 8, !dbg !36084
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36084
  br label %bb.km, !dbg !36085

bb.kf:                                            ; preds = %bb.kd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6135.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61082.0..sroa_idx, i64 24, i1 false), !dbg !36086
  %.sroa.6779.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ky, i64 48, !dbg !36086
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kz), !dbg !36087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kz, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6779.0..sroa_idx, i64 32, i1 false), !dbg !36086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ky), !dbg !36074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.la), !dbg !36088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.la, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6135.sroa.8, i64 24, i1 false), !dbg !34859
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6140), !dbg !36085
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6135.sroa.8), !dbg !36085
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6146.sroa.7), !dbg !34879
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kr), !dbg !34879
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01080.0.copyload) ], !dbg !36089
  %i.adw = icmp ult i64 %.sroa.51081.0.copyload, 96076792050570582, !dbg !36090
  call void @llvm.assume(i1 %i.adw), !dbg !36091
  %i.adx = getelementptr inbounds nuw [96 x i8], ptr %.sroa.01080.0.copyload, i64 %.sroa.51081.0.copyload, !dbg !36092
  store ptr %.sroa.01080.0.copyload, ptr %i.kq, align 8, !dbg !36093
  %.sroa.4149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kq, i64 8, !dbg !36093
  store ptr %.sroa.01080.0.copyload, ptr %.sroa.4149.0..sroa_idx, align 8, !dbg !36093
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kq, i64 16, !dbg !36093
  store i64 %i.ads, ptr %.sroa.5150.0..sroa_idx, align 8, !dbg !36093
  %.sroa.6151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kq, i64 24, !dbg !36093
  store ptr %i.adx, ptr %.sroa.6151.0..sroa_idx, align 8, !dbg !36093
  %i.ady = getelementptr inbounds nuw i8, ptr %i.kq, i64 32, !dbg !36093
  store ptr %i.lb, ptr %i.ady, align 8, !dbg !36093
  %i.adz = getelementptr inbounds nuw i8, ptr %i.kq, i64 40, !dbg !36093
  store ptr %i.oo, ptr %i.adz, align 8, !dbg !36093
  invoke void @_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayENCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_arrays_0EINtNtB1d_5boxed3BoxDNtB1Y_5ArrayEL_EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB3q_7parquet5error12ParquetErrorENCINvXso_B5q_IB5o_INtB1b_3VecB4N_EB6a_EINtNtNtB4_6traits7collect12FromIteratorIB5o_B4N_B6a_EE9from_iterBQ_E0B75_EB3q_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.kr, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.kq)
          to label %bb.kh unwind label %bb.kg, !dbg !36094

bb.kg:                                            ; preds = %bb.kf
  %i.aea = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.kz)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1427 unwind label %bb.ay, !dbg !36095

bb.kh:                                            ; preds = %bb.kf
  %i.aeb = load i64, ptr %i.kr, align 8, !dbg !36096, !range !1553, !noundef !1032 ; 2 uses
  %.not1290 = icmp eq i64 %i.aeb, -9223372036854775803, !dbg !36096
  %i.aec = getelementptr inbounds nuw i8, ptr %i.kr, i64 8, !dbg !36097
  %.sroa.0780.0.copyload = load i64, ptr %i.aec, align 8, !dbg !36097 ; 2 uses
  %.sroa.5781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kr, i64 16, !dbg !36097
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6146.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5781.0..sroa_idx, i64 16, i1 false), !dbg !36097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kr), !dbg !36098
  br i1 %.not1290, label %bb.kj, label %bb.ki, !dbg !36099

bb.ki:                                            ; preds = %bb.kh
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !36100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6146.sroa.7, i64 16, i1 false), !dbg !36098
  %i.aed = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36100
  store i64 %i.aeb, ptr %i.aed, align 8, !dbg !36100
  %.sroa.2789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !36100
  store i64 %.sroa.0780.0.copyload, ptr %.sroa.2789.0..sroa_idx, align 8, !dbg !36100
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36100
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6146.sroa.7), !dbg !36101
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.kz)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1429 unwind label %bb.kk, !dbg !36102

bb.kj:                                            ; preds = %bb.kh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6146.sroa.7, i64 16, i1 false), !dbg !34879
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6146.sroa.7), !dbg !36101
  %.sroa.40.24..sroa_idx548 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 16, !dbg !36103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.40.24..sroa_idx548, ptr noundef nonnull align 8 dereferenceable(24) %i.la, i64 24, i1 false), !dbg !36104
  %.sroa.40.48..sroa_idx584 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 40, !dbg !36103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40.48..sroa_idx584, ptr noundef nonnull align 8 dereferenceable(32) %i.kz, i64 32, i1 false), !dbg !36105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kz), !dbg !36106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.la), !dbg !36106
  br label %bb.ef, !dbg !36107

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1427: ; preds = %bb.kg, %bb.kk
  %.pn1291 = phi { ptr, i32 } [ %i.aee, %bb.kk ], [ %i.aea, %bb.kg ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils11NestedStateEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.la) #39
          to label %.thread1611 unwind label %bb.ay, !dbg !36106

bb.kk:                                            ; preds = %bb.ki
  %i.aee = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1427

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1429: ; preds = %bb.ki
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kz), !dbg !36106
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils11NestedStateEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.la)
          to label %bb.kl unwind label %.thread1620, !dbg !36106

bb.kl:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.la), !dbg !36106
  br label %bb.eh, !dbg !36075

bb.km:                                            ; preds = %bb.ke, %bb.kb
  %.sroa.0650.20 = phi i8 [ 1, %bb.kb ], [ 0, %bb.ke ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6140), !dbg !36085
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6135.sroa.8), !dbg !36085
  br label %bb.eh, !dbg !36075

bb.kn:                                            ; preds = %bb.ju
  store i64 12, ptr %i.kp, align 8, !dbg !36108
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6155.sroa.8), !dbg !34890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.km), !dbg !34890
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6160), !dbg !34890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kl), !dbg !34890
  %i.aef = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36109 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36110
  %i.aeh = load i8, ptr %i.aeg, align 1, !dbg !36110, !range !1108, !alias.scope !34889, !noundef !1032 ; 2 uses
  %i.aei = icmp ugt i8 %i.aeh, -41, !dbg !36111
  br i1 %i.aei, label %bb.kp, label %bb.ko, !dbg !36111
end_hunk_2
begin_hunk_3_@_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_array:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6176.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61124.0..sroa_idx, i64 24, i1 false), !dbg !36194
  %.sroa.6812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kb, i64 48, !dbg !36194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kc), !dbg !36195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kc, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6812.0..sroa_idx, i64 32, i1 false), !dbg !36194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kb), !dbg !36183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.kd), !dbg !36196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kd, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6176.sroa.8, i64 24, i1 false), !dbg !34921
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6181), !dbg !36193
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6176.sroa.8), !dbg !36193
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01122.0.copyload) ], !dbg !36197
  %i.afy = icmp ult i64 %.sroa.51123.0.copyload, 96076792050570582, !dbg !36198
  call void @llvm.assume(i1 %i.afy), !dbg !36199
  %i.afz = getelementptr inbounds nuw [96 x i8], ptr %.sroa.01122.0.copyload, i64 %.sroa.51123.0.copyload, !dbg !36200
  store ptr %.sroa.01122.0.copyload, ptr %i.jt, align 8, !dbg !36201
  %.sroa.4186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 8, !dbg !36201
  store ptr %.sroa.01122.0.copyload, ptr %.sroa.4186.0..sroa_idx, align 8, !dbg !36201
  %.sroa.5187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 16, !dbg !36201
  store i64 %i.afu, ptr %.sroa.5187.0..sroa_idx, align 8, !dbg !36201
  %.sroa.6188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jt, i64 24, !dbg !36201
  store ptr %i.afz, ptr %.sroa.6188.0..sroa_idx, align 8, !dbg !36201
  invoke void @_RINvNtNtCsgZ49sUHp3tW_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayENCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_arrays1_0EINtNtB6_5boxed3BoxDNtB2p_5ArrayEL_EEB3R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ju, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.jt)
          to label %bb.lp unwind label %bb.lo, !dbg !36202

bb.lo:                                            ; preds = %bb.ln
  %i.aga = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.kc)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1443 unwind label %bb.ay, !dbg !36203

bb.lp:                                            ; preds = %bb.ln
  %.sroa.40.24..sroa_idx550 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 16, !dbg !36204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.40.24..sroa_idx550, ptr noundef nonnull align 8 dereferenceable(24) %i.kd, i64 24, i1 false), !dbg !36205
  %.sroa.40.48..sroa_idx586 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 40, !dbg !36204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40.48..sroa_idx586, ptr noundef nonnull align 8 dereferenceable(32) %i.kc, i64 32, i1 false), !dbg !36206
  %.sroa.0521.0.copyload528 = load i64, ptr %i.ju, align 8, !dbg !36204
  %.sroa.40.0..sroa_idx540 = getelementptr inbounds nuw i8, ptr %i.ju, i64 8, !dbg !36204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.40.0..sroa_idx540, i64 16, i1 false), !dbg !36204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kc), !dbg !36207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.kd), !dbg !36207
  br label %bb.ef, !dbg !36207

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1443: ; preds = %bb.lo
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils11NestedStateEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.kd) #39
          to label %.thread1611 unwind label %bb.ay, !dbg !36207

bb.lq:                                            ; preds = %bb.lm, %bb.lj
  %.sroa.0650.22 = phi i8 [ 1, %bb.lj ], [ 0, %bb.lm ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6181), !dbg !36193
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6176.sroa.8), !dbg !36193
  br label %bb.eh, !dbg !35400

bb.lr:                                            ; preds = %bb.fn
  %i.agb = invoke noundef i64 @_RNvMs1_NtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binaryNtB5_20FixedSizeBinaryArray8get_size(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.oo)
          to label %bb.ls unwind label %.thread1620, !dbg !36208

bb.ls:                                            ; preds = %bb.lr
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6123), !dbg !34949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.li), !dbg !34949
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6129), !dbg !34949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lh), !dbg !34949
  %i.agc = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36209 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36210
  %i.age = load i8, ptr %i.agd, align 1, !dbg !36210, !range !1108, !alias.scope !34948, !noundef !1032 ; 2 uses
  %i.agf = icmp ugt i8 %i.age, -41, !dbg !36211
  br i1 %i.agf, label %bb.lu, label %bb.lt, !dbg !36211

bb.lt:                                            ; preds = %bb.ls
  %i.agg = add i8 %i.age, 64, !dbg !36212
  %i.agh = call i8 @llvm.umin.i8(i8 %i.agg, i8 24), !dbg !36213
  %.sroa.0.0.i.i1444 = zext nneg i8 %i.agh to i64, !dbg !36213
  br label %bb.lv, !dbg !36214

bb.lu:                                            ; preds = %bb.ls
  %i.agi = load ptr, ptr %i.agc, align 8, !dbg !36215, !alias.scope !34948, !noundef !1032
  %i.agj = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36216
  %i.agk = load i64, ptr %i.agj, align 8, !dbg !36216, !alias.scope !34948, !noundef !1032
  br label %bb.lv, !dbg !36217

bb.lv:                                            ; preds = %bb.lu, %bb.lt
  %.sroa.01.0.i1445 = phi i64 [ %i.agk, %bb.lu ], [ %.sroa.0.0.i.i1444, %bb.lt ], !dbg !36218
  %.sroa.0.0.i1446 = phi ptr [ %i.agi, %bb.lu ], [ %i.agc, %bb.lt ], !dbg !36219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lg), !dbg !36220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.lg, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lf), !dbg !36221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lf, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !36221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.le), !dbg !36222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.le, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36222
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_17fixed_size_binary13BinaryDecoderE3newBd_(ptr noalias noundef nonnull sret([400 x i8]) align 8 captures(none) dereferenceable(400) %i.lh, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1446, i64 noundef %.sroa.01.0.i1445, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.lg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.lf, i64 noundef %i.agb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.le)
          to label %bb.lw unwind label %bb.f, !dbg !34949

bb.lw:                                            ; preds = %bb.lv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.le), !dbg !36223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lf), !dbg !36223
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lg), !dbg !36223
  %i.agl = load i64, ptr %i.lh, align 8, !dbg !36224, !range !1573, !noundef !1032 ; 2 uses
  %i.agm = icmp eq i64 %i.agl, 8, !dbg !36224
  %i.agn = getelementptr inbounds nuw i8, ptr %i.lh, i64 8, !dbg !36225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6129, ptr noundef nonnull align 8 dereferenceable(32) %i.agn, i64 32, i1 false), !dbg !36225
  br i1 %i.agm, label %bb.lx, label %bb.ly, !dbg !36226

bb.lx:                                            ; preds = %bb.lw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lh), !dbg !36227
  %i.ago = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ago, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6129, i64 32, i1 false), !dbg !36227
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.li), !dbg !36229
  br label %bb.mc, !dbg !36230

bb.ly:                                            ; preds = %bb.lw
  %.sroa.6770.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lh, i64 40, !dbg !36231
  %.sroa.8131.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %i.ld, i64 40, !dbg !34949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.8131.0..sroa_idx132, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.6770.0..sroa_idx, i64 360, i1 false), !dbg !36231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lh), !dbg !36227
  store i64 %i.agl, ptr %i.ld, align 8, !dbg !34949
  %.sroa.6129.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %i.ld, i64 8, !dbg !34949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6129.0..sroa_idx130, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6129, i64 32, i1 false), !dbg !34949
  call void @llvm.lifetime.start.p0(ptr nonnull %i.lc), !dbg !36232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.lc, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36232
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_17fixed_size_binary13BinaryDecoderE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.li, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(400) %i.ld, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.lc)
          to label %bb.lz unwind label %bb.f, !dbg !36233

bb.lz:                                            ; preds = %bb.ly
  call void @llvm.lifetime.end.p0(ptr nonnull %i.lc), !dbg !36234
  %i.agp = load i64, ptr %i.li, align 8, !dbg !36235, !range !1034, !noundef !1032 ; 2 uses
  %i.agq = icmp eq i64 %i.agp, -9223372036854775808, !dbg !36235
  %i.agr = getelementptr inbounds nuw i8, ptr %i.li, i64 8, !dbg !36236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6123, ptr noundef nonnull align 8 dereferenceable(32) %i.agr, i64 32, i1 false), !dbg !36236
  br i1 %i.agq, label %bb.ma, label %bb.mb, !dbg !36237

bb.ma:                                            ; preds = %bb.lz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.li), !dbg !36229
  %i.ags = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ags, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6123, i64 32, i1 false), !dbg !36229
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36238
  br label %bb.mc, !dbg !36229

bb.mb:                                            ; preds = %bb.lz
  %.sroa.6773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.li, i64 40, !dbg !36239
  %.sroa.40.40..sroa_idx564 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !34949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx564, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6773.0..sroa_idx, i64 40, i1 false), !dbg !36239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.li), !dbg !36229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6123, i64 32, i1 false), !dbg !34949
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6129), !dbg !36229
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6123), !dbg !36229
  br label %bb.y, !dbg !36240

bb.mc:                                            ; preds = %bb.ma, %bb.lx
  %.sroa.0650.23 = phi i8 [ 1, %bb.lx ], [ 0, %bb.ma ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6129), !dbg !36229
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6123), !dbg !36229
  br label %bb.yi, !dbg !35400

bb.md:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6245), !dbg !34979
  call void @llvm.lifetime.start.p0(ptr nonnull %i.io), !dbg !34979
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6251), !dbg !34979
  call void @llvm.lifetime.start.p0(ptr nonnull %i.in), !dbg !34979
  %i.agt = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36241 ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36242
  %i.agv = load i8, ptr %i.agu, align 1, !dbg !36242, !range !1108, !alias.scope !34964, !noundef !1032 ; 2 uses
  %i.agw = icmp ugt i8 %i.agv, -41, !dbg !36243
  br i1 %i.agw, label %bb.mf, label %bb.me, !dbg !36243

bb.me:                                            ; preds = %bb.md
  %i.agx = add i8 %i.agv, 64, !dbg !36244
  %i.agy = call i8 @llvm.umin.i8(i8 %i.agx, i8 24), !dbg !36245
  %.sroa.0.0.i.i1448 = zext nneg i8 %i.agy to i64, !dbg !36245
  br label %bb.mv, !dbg !36246

bb.mf:                                            ; preds = %bb.md
  %i.agz = load ptr, ptr %i.agt, align 8, !dbg !36247, !alias.scope !34964, !noundef !1032
  %i.aha = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36248
  %i.ahb = load i64, ptr %i.aha, align 8, !dbg !36248, !alias.scope !34964, !noundef !1032
  br label %bb.mv, !dbg !36249

bb.mg:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6278.sroa.8), !dbg !34985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ho), !dbg !34985
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6283), !dbg !34985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hn), !dbg !34985
  %i.ahc = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36250 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36251
  %i.ahe = load i8, ptr %i.ahd, align 1, !dbg !36251, !range !1108, !alias.scope !34972, !noundef !1032 ; 2 uses
  %i.ahf = icmp ugt i8 %i.ahe, -41, !dbg !36252
  br i1 %i.ahf, label %bb.mi, label %bb.mh, !dbg !36252

bb.mh:                                            ; preds = %bb.mg
  %i.ahg = add i8 %i.ahe, 64, !dbg !36253
  %i.ahh = call i8 @llvm.umin.i8(i8 %i.ahg, i8 24), !dbg !36254
  %.sroa.0.0.i.i1452 = zext nneg i8 %i.ahh to i64, !dbg !36254
  br label %bb.nh, !dbg !36255

bb.mi:                                            ; preds = %bb.mg
  %i.ahi = load ptr, ptr %i.ahc, align 8, !dbg !36256, !alias.scope !34972, !noundef !1032
  %i.ahj = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36257
  %i.ahk = load i64, ptr %i.ahj, align 8, !dbg !36257, !alias.scope !34972, !noundef !1032
  br label %bb.nh, !dbg !36258

bb.mj:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ig), !dbg !36259
  store ptr %8, ptr %i.ig, align 8, !dbg !36259
  %i.ahl = load i64, ptr %8, align 8, !dbg !36260, !noundef !1032 ; 4 uses
  %i.ahm = icmp ugt i64 %i.ahl, 16, !dbg !36260
  br i1 %i.ahm, label %bb.ny, label %bb.nv, !dbg !36260

bb.mk:                                            ; preds = %bb.ff, %bb.fe
  %.sroa.01.0.i1388 = phi i64 [ %i.xh, %bb.ff ], [ %.sroa.0.0.i.i1387, %bb.fe ], !dbg !36261
  %.sroa.0.0.i1389 = phi ptr [ %i.xf, %bb.ff ], [ %i.wz, %bb.fe ], !dbg !36262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.iu), !dbg !36263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.iu, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.it), !dbg !36264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.it, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !36264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.is), !dbg !36265
  invoke void @_RNvMs2_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderlnINtB7_19IntoDecoderFunctionlnEE9cast_intoBf_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.is)
          to label %bb.ml unwind label %bb.mt, !dbg !36265

bb.ml:                                            ; preds = %bb.mk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ir), !dbg !36266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ir, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36266
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderlnINtB1z_19IntoDecoderFunctionlnEEE3newBd_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.iv, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1389, i64 noundef %.sroa.01.0.i1388, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.iu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.it, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.is, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ir)
          to label %bb.mm unwind label %.thread1676, !dbg !34973

bb.mm:                                            ; preds = %bb.ml
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ir), !dbg !36267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.is), !dbg !36267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.it), !dbg !36267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iu), !dbg !36267
  %i.ahn = load i64, ptr %i.iv, align 8, !dbg !36268, !range !1573, !noundef !1032 ; 2 uses
  %i.aho = icmp eq i64 %i.ahn, 8, !dbg !36268
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.iv, i64 8, !dbg !36269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6239, ptr noundef nonnull align 8 dereferenceable(32) %i.ahp, i64 32, i1 false), !dbg !36269
  br i1 %i.aho, label %bb.mn, label %bb.mo, !dbg !36270

bb.mn:                                            ; preds = %bb.mm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iv), !dbg !36271
  %i.ahq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ahq, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6239, i64 32, i1 false), !dbg !36271
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iw), !dbg !36273
  br label %bb.ms, !dbg !35400

bb.mo:                                            ; preds = %bb.mm
  %.sroa.6849.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 40, !dbg !36274
  %.sroa.8241.0..sroa_idx242 = getelementptr inbounds nuw i8, ptr %i.iq, i64 40, !dbg !34973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.8241.0..sroa_idx242, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6849.0..sroa_idx, i64 368, i1 false), !dbg !36274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iv), !dbg !36271
  store i64 %i.ahn, ptr %i.iq, align 8, !dbg !34973
  %.sroa.6239.0..sroa_idx240 = getelementptr inbounds nuw i8, ptr %i.iq, i64 8, !dbg !34973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6239.0..sroa_idx240, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6239, i64 32, i1 false), !dbg !34973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ip), !dbg !36275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ip, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36275
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderlnINtB1z_19IntoDecoderFunctionlnEEE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.iw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.iq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ip)
          to label %bb.mp unwind label %bb.f, !dbg !36276

bb.mp:                                            ; preds = %bb.mo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ip), !dbg !36277
  %i.ahr = load i64, ptr %i.iw, align 8, !dbg !36278, !range !1034, !noundef !1032 ; 2 uses
  %i.ahs = icmp eq i64 %i.ahr, -9223372036854775808, !dbg !36278
  %i.aht = getelementptr inbounds nuw i8, ptr %i.iw, i64 8, !dbg !36279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6233, ptr noundef nonnull align 8 dereferenceable(32) %i.aht, i64 32, i1 false), !dbg !36279
  br i1 %i.ahs, label %bb.mq, label %bb.mr, !dbg !36280

bb.mq:                                            ; preds = %bb.mp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iw), !dbg !36273
  %i.ahu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ahu, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6233, i64 32, i1 false), !dbg !36273
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36281
  br label %bb.ms, !dbg !36273

bb.mr:                                            ; preds = %bb.mp
  %.sroa.6852.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 40, !dbg !36282
  %.sroa.40.40..sroa_idx565 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !34973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx565, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6852.0..sroa_idx, i64 40, i1 false), !dbg !36282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.iw), !dbg !36273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6233, i64 32, i1 false), !dbg !34973
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6239), !dbg !36273
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6233), !dbg !36273
  br label %bb.y, !dbg !36273

bb.ms:                                            ; preds = %bb.mq, %bb.mn
  %.sroa.0650.24 = phi i8 [ 1, %bb.mn ], [ 0, %bb.mq ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6239), !dbg !36273
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6233), !dbg !36273
  br label %bb.yi, !dbg !35400

bb.mt:                                            ; preds = %bb.mk
  %i.ahv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.it) #39
          to label %bb.mu unwind label %bb.ay, !dbg !36267

bb.mu:                                            ; preds = %bb.mt
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read11compression17BasicDecompressorEBO_(ptr noalias noundef align 8 dereferenceable(232) %i.iu) #39
          to label %.thread1605.thread1721 unwind label %bb.ay, !dbg !36267

bb.mv:                                            ; preds = %bb.mf, %bb.me
  %.sroa.01.0.i1449 = phi i64 [ %i.ahb, %bb.mf ], [ %.sroa.0.0.i.i1448, %bb.me ], !dbg !36283
  %.sroa.0.0.i1450 = phi ptr [ %i.agz, %bb.mf ], [ %i.agt, %bb.me ], !dbg !36284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.im), !dbg !36285
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.im, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.il), !dbg !36286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.il, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !36286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ik), !dbg !36287
  invoke void @_RNvMs2_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive7integerINtB5_10IntDecoderxnINtB7_19IntoDecoderFunctionxnEE9cast_intoBf_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ik)
          to label %bb.mw unwind label %bb.ne, !dbg !36287

bb.mw:                                            ; preds = %bb.mv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ij), !dbg !36288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ij, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36288
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderxnINtB1z_19IntoDecoderFunctionxnEEE3newBd_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.in, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1450, i64 noundef %.sroa.01.0.i1449, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.im, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.il, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ik, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ij)
          to label %bb.mx unwind label %.thread1676, !dbg !34979

bb.mx:                                            ; preds = %bb.mw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ij), !dbg !36289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ik), !dbg !36289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.il), !dbg !36289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.im), !dbg !36289
  %i.ahw = load i64, ptr %i.in, align 8, !dbg !36290, !range !1573, !noundef !1032 ; 2 uses
  %i.ahx = icmp eq i64 %i.ahw, 8, !dbg !36290
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.in, i64 8, !dbg !36291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6251, ptr noundef nonnull align 8 dereferenceable(32) %i.ahy, i64 32, i1 false), !dbg !36291
  br i1 %i.ahx, label %bb.my, label %bb.mz, !dbg !36292

bb.my:                                            ; preds = %bb.mx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.in), !dbg !36293
  %i.ahz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ahz, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6251, i64 32, i1 false), !dbg !36293
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io), !dbg !36295
  br label %bb.nd, !dbg !35400

bb.mz:                                            ; preds = %bb.mx
  %.sroa.6855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.in, i64 40, !dbg !36296
  %.sroa.8253.0..sroa_idx254 = getelementptr inbounds nuw i8, ptr %i.ii, i64 40, !dbg !34979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.8253.0..sroa_idx254, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6855.0..sroa_idx, i64 368, i1 false), !dbg !36296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.in), !dbg !36293
  store i64 %i.ahw, ptr %i.ii, align 8, !dbg !34979
  %.sroa.6251.0..sroa_idx252 = getelementptr inbounds nuw i8, ptr %i.ii, i64 8, !dbg !34979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6251.0..sroa_idx252, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6251, i64 32, i1 false), !dbg !34979
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ih), !dbg !36297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ih, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36297
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderxnINtB1z_19IntoDecoderFunctionxnEEE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.io, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.ii, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ih)
          to label %bb.na unwind label %bb.f, !dbg !36298

bb.na:                                            ; preds = %bb.mz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ih), !dbg !36299
  %i.aia = load i64, ptr %i.io, align 8, !dbg !36300, !range !1034, !noundef !1032 ; 2 uses
  %i.aib = icmp eq i64 %i.aia, -9223372036854775808, !dbg !36300
  %i.aic = getelementptr inbounds nuw i8, ptr %i.io, i64 8, !dbg !36301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6245, ptr noundef nonnull align 8 dereferenceable(32) %i.aic, i64 32, i1 false), !dbg !36301
  br i1 %i.aib, label %bb.nb, label %bb.nc, !dbg !36302

bb.nb:                                            ; preds = %bb.na
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io), !dbg !36295
  %i.aid = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aid, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6245, i64 32, i1 false), !dbg !36295
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36303
  br label %bb.nd, !dbg !36295

bb.nc:                                            ; preds = %bb.na
  %.sroa.6858.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.io, i64 40, !dbg !36304
  %.sroa.40.40..sroa_idx566 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !34979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx566, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6858.0..sroa_idx, i64 40, i1 false), !dbg !36304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.io), !dbg !36295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6245, i64 32, i1 false), !dbg !34979
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6251), !dbg !36295
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6245), !dbg !36295
  br label %bb.y, !dbg !36295

bb.nd:                                            ; preds = %bb.nb, %bb.my
  %.sroa.0650.25 = phi i8 [ 1, %bb.my ], [ 0, %bb.nb ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6251), !dbg !36295
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6245), !dbg !36295
  br label %bb.yi, !dbg !35400

bb.ne:                                            ; preds = %bb.mv
  %i.aie = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.il) #39
          to label %bb.nf unwind label %bb.ay, !dbg !36289

bb.nf:                                            ; preds = %bb.ne
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read11compression17BasicDecompressorEBO_(ptr noalias noundef align 8 dereferenceable(232) %i.im) #39
          to label %.thread1605.thread1721 unwind label %bb.ay, !dbg !36289

bb.ng:                                            ; preds = %bb.nh
  %i.aif = landingpad { ptr, i32 }
          cleanup
  br label %.thread1611, !dbg !36305

bb.nh:                                            ; preds = %bb.mh, %bb.mi
  %.sroa.01.0.i1453 = phi i64 [ %i.ahk, %bb.mi ], [ %.sroa.0.0.i.i1452, %bb.mh ], !dbg !36306
  %.sroa.0.0.i1454 = phi ptr [ %i.ahi, %bb.mi ], [ %i.ahc, %bb.mh ], !dbg !36307
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hm), !dbg !36308
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.hm, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hl), !dbg !36309
  store i8 38, ptr %i.hl, align 8, !dbg !36309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hk), !dbg !36310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36310
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_7binview14BinViewDecoderE3newBd_(ptr noalias noundef nonnull sret([440 x i8]) align 8 captures(none) dereferenceable(440) %i.hn, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1454, i64 noundef %.sroa.01.0.i1453, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.hm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.hl, ptr noalias noundef align 8 null, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.hk)
          to label %bb.ni unwind label %bb.ng, !dbg !34985

end_hunk_3
begin_hunk_4_@_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_array:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ia), !dbg !36387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ia, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6870.0..sroa_idx, i64 32, i1 false), !dbg !36386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hz), !dbg !36374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ib), !dbg !36388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ib, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6257.sroa.8, i64 24, i1 false), !dbg !35017
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6262), !dbg !36385
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6257.sroa.8), !dbg !36385
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6268.sroa.7), !dbg !35037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hs), !dbg !35037
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01185.0.copyload) ], !dbg !36389
  %i.ajo = icmp ult i64 %.sroa.51186.0.copyload, 96076792050570582, !dbg !36390
  call void @llvm.assume(i1 %i.ajo), !dbg !36391
  %i.ajp = getelementptr inbounds nuw [96 x i8], ptr %.sroa.01185.0.copyload, i64 %.sroa.51186.0.copyload, !dbg !36392
  store ptr %.sroa.01185.0.copyload, ptr %i.hr, align 8, !dbg !36393
  %.sroa.4271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 8, !dbg !36393
  store ptr %.sroa.01185.0.copyload, ptr %.sroa.4271.0..sroa_idx, align 8, !dbg !36393
  %.sroa.5272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 16, !dbg !36393
  store i64 %i.ajk, ptr %.sroa.5272.0..sroa_idx, align 8, !dbg !36393
  %.sroa.6273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 24, !dbg !36393
  store ptr %i.ajp, ptr %.sroa.6273.0..sroa_idx, align 8, !dbg !36393
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.hr, i64 32, !dbg !36393
  store ptr %i.ic, ptr %i.ajq, align 8, !dbg !36393
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.hr, i64 40, !dbg !36393
  store ptr %i.oo, ptr %i.ajr, align 8, !dbg !36393
  invoke void @_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayENCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_arrays4_0EINtNtB1d_5boxed3BoxDNtB1Y_5ArrayEL_EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB3q_7parquet5error12ParquetErrorENCINvXso_B5r_IB5p_INtB1b_3VecB4O_EB6b_EINtNtNtB4_6traits7collect12FromIteratorIB5p_B4O_B6b_EE9from_iterBQ_E0B76_EB3q_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.hs, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.hr)
          to label %bb.oh unwind label %bb.og, !dbg !36394

bb.og:                                            ; preds = %bb.of
  %i.ajs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ia)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1466 unwind label %bb.ay, !dbg !36395

bb.oh:                                            ; preds = %bb.of
  %i.ajt = load i64, ptr %i.hs, align 8, !dbg !36396, !range !1553, !noundef !1032 ; 2 uses
  %.not1281 = icmp eq i64 %i.ajt, -9223372036854775803, !dbg !36396
  %i.aju = getelementptr inbounds nuw i8, ptr %i.hs, i64 8, !dbg !36397
  %.sroa.0871.0.copyload = load i64, ptr %i.aju, align 8, !dbg !36397 ; 2 uses
  %.sroa.5872.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 16, !dbg !36397
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6268.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5872.0..sroa_idx, i64 16, i1 false), !dbg !36397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hs), !dbg !36398
  br i1 %.not1281, label %bb.oj, label %bb.oi, !dbg !36399

bb.oi:                                            ; preds = %bb.oh
  %.sroa.3881.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !36400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3881.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6268.sroa.7, i64 16, i1 false), !dbg !36398
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36400
  store i64 %i.ajt, ptr %i.ajv, align 8, !dbg !36400
  %.sroa.2880.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !36400
  store i64 %.sroa.0871.0.copyload, ptr %.sroa.2880.0..sroa_idx, align 8, !dbg !36400
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36400
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6268.sroa.7), !dbg !36401
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ia)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1468 unwind label %bb.ok, !dbg !36402

bb.oj:                                            ; preds = %bb.oh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6268.sroa.7, i64 16, i1 false), !dbg !35037
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6268.sroa.7), !dbg !36401
  %.sroa.40.24..sroa_idx552 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 16, !dbg !36403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.40.24..sroa_idx552, ptr noundef nonnull align 8 dereferenceable(24) %i.ib, i64 24, i1 false), !dbg !36404
  %.sroa.40.48..sroa_idx588 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 40, !dbg !36403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40.48..sroa_idx588, ptr noundef nonnull align 8 dereferenceable(32) %i.ia, i64 32, i1 false), !dbg !36405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ia), !dbg !36406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ib), !dbg !36406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ic), !dbg !36407
  br label %bb.ef, !dbg !36408

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1466: ; preds = %bb.og, %bb.ok
  %.pn1282 = phi { ptr, i32 } [ %i.ajw, %bb.ok ], [ %i.ajs, %bb.og ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils11NestedStateEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.ib) #39
          to label %.thread1611 unwind label %bb.ay, !dbg !36406

bb.ok:                                            ; preds = %bb.oi
  %i.ajw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1466

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1468: ; preds = %bb.oi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ia), !dbg !36406
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils11NestedStateEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.ib)
          to label %bb.ol unwind label %.thread1620, !dbg !36406

bb.ol:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ib), !dbg !36406
  br label %bb.om, !dbg !36375

bb.om:                                            ; preds = %bb.on, %bb.ol
  %.sroa.0650.27 = phi i8 [ %.sroa.0650.28, %bb.on ], [ 0, %bb.ol ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ic), !dbg !36407
  br label %bb.eh, !dbg !35400

bb.on:                                            ; preds = %bb.oe, %bb.ob
  %.sroa.0650.28 = phi i8 [ 1, %bb.ob ], [ 0, %bb.oe ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6262), !dbg !36385
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6257.sroa.8), !dbg !36385
  br label %bb.om, !dbg !36375

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.ny
  call void @llvm.lifetime.end.p0(ptr nonnull %i.id), !dbg !36409
  invoke void @_RINvMNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5errorNtB3_12ParquetError13not_supportedNtNtCsgZ49sUHp3tW_5alloc6string6StringEB7_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.if, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ie)
          to label %bb.oo unwind label %.thread1620, !dbg !36360

bb.oo:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit
  %i.ajx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36410
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ajx, ptr noundef nonnull align 8 dereferenceable(32) %i.if, i64 32, i1 false), !dbg !36410
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.if), !dbg !36411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ig), !dbg !36348
  br label %bb.op, !dbg !35400

bb.op:                                            ; preds = %bb.yj, %bb.qa, %bb.oo
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.oo)
          to label %bb.yk unwind label %.split.thread, !dbg !35376

bb.oq:                                            ; preds = %bb.ey
  switch i8 %i.ow, label %.thread1650 [
    i8 5, label %bb.rj
    i8 10, label %bb.rm
    i8 19, label %bb.rj
    i8 20, label %bb.rj
    i8 22, label %bb.ox
    i8 25, label %bb.ox
    i8 32, label %bb.ve
  ], !dbg !35378, !prof !35040

bb.or:                                            ; preds = %bb.rf
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6449), !dbg !35200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !dbg !35200
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6455), !dbg !35200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !dbg !35200
  %i.ajy = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36412 ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36413
  %i.aka = load i8, ptr %i.ajz, align 1, !dbg !36413, !range !1108, !alias.scope !35045, !noundef !1032 ; 2 uses
  %i.akb = icmp ugt i8 %i.aka, -41, !dbg !36414
  br i1 %i.akb, label %bb.ot, label %bb.os, !dbg !36414

bb.os:                                            ; preds = %bb.or
  %i.akc = add i8 %i.aka, 64, !dbg !36415
  %i.akd = call i8 @llvm.umin.i8(i8 %i.akc, i8 24), !dbg !36416
  %.sroa.0.0.i.i1469 = zext nneg i8 %i.akd to i64, !dbg !36416
  br label %bb.tn, !dbg !36417

bb.ot:                                            ; preds = %bb.or
  %i.ake = load ptr, ptr %i.ajy, align 8, !dbg !36418, !alias.scope !35045, !noundef !1032
  %i.akf = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36419
  %i.akg = load i64, ptr %i.akf, align 8, !dbg !36419, !alias.scope !35045, !noundef !1032
  br label %bb.tn, !dbg !36420

bb.ou:                                            ; preds = %bb.rf
  %i.akh = load i8, ptr %i.oo, align 8, !dbg !36421, !range !1100, !noundef !1032
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6461), !dbg !35206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !dbg !35206
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6467), !dbg !35206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !dbg !35206
  %i.aki = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36422 ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36423
  %i.akk = load i8, ptr %i.akj, align 1, !dbg !36423, !range !1108, !alias.scope !35054, !noundef !1032 ; 2 uses
  %i.akl = icmp ugt i8 %i.akk, -41, !dbg !36424
  br i1 %i.akl, label %bb.ow, label %bb.ov, !dbg !36424

bb.ov:                                            ; preds = %bb.ou
  %i.akm = add i8 %i.akk, 64, !dbg !36425
  %i.akn = call i8 @llvm.umin.i8(i8 %i.akm, i8 24), !dbg !36426
  %.sroa.0.0.i.i1473 = zext nneg i8 %i.akn to i64, !dbg !36426
  br label %bb.tv, !dbg !36427

bb.ow:                                            ; preds = %bb.ou
  %i.ako = load ptr, ptr %i.aki, align 8, !dbg !36428, !alias.scope !35054, !noundef !1032
  %i.akp = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36429
  %i.akq = load i64, ptr %i.akp, align 8, !dbg !36429, !alias.scope !35054, !noundef !1032
  br label %bb.tv, !dbg !36430

bb.ox:                                            ; preds = %bb.ei, %bb.ei, %bb.rf, %bb.rf, %bb.ri, %bb.ri, %bb.rh, %bb.rh, %bb.rg, %bb.rg, %bb.oq, %bb.oq, %.thread1647, %.thread1647
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @140, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #44
          to label %bb.vd unwind label %.thread1620, !dbg !36431

bb.oy:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6311), !dbg !35071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gx), !dbg !35071
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6317), !dbg !35071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gw), !dbg !35071
  %i.akr = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36432 ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36433
  %i.akt = load i8, ptr %i.aks, align 1, !dbg !36433, !range !1108, !alias.scope !35062, !noundef !1032 ; 2 uses
  %i.aku = icmp ugt i8 %i.akt, -41, !dbg !36434
  br i1 %i.aku, label %bb.pa, label %bb.oz, !dbg !36434

bb.oz:                                            ; preds = %bb.oy
  %i.akv = add i8 %i.akt, 64, !dbg !36435
  %i.akw = call i8 @llvm.umin.i8(i8 %i.akv, i8 24), !dbg !36436
  %.sroa.0.0.i.i1477 = zext nneg i8 %i.akw to i64, !dbg !36436
  br label %bb.pk, !dbg !36437

bb.pa:                                            ; preds = %bb.oy
  %i.akx = load ptr, ptr %i.akr, align 8, !dbg !36438, !alias.scope !35062, !noundef !1032
  %i.aky = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36439
  %i.akz = load i64, ptr %i.aky, align 8, !dbg !36439, !alias.scope !35062, !noundef !1032
  br label %bb.pk, !dbg !36440

bb.pb:                                            ; preds = %bb.fp
  %i.ala = load i64, ptr %8, align 8, !dbg !36441, !noundef !1032 ; 8 uses
  %i.alb = icmp ult i64 %i.ala, 17, !dbg !36441
  br i1 %i.alb, label %bb.pt, label %bb.ps, !dbg !36441

bb.pc:                                            ; preds = %bb.fh, %bb.fi
  %.sroa.01.0.i1392 = phi i64 [ %i.xq, %bb.fi ], [ %.sroa.0.0.i.i1391, %bb.fh ], !dbg !36442
  %.sroa.0.0.i1393 = phi ptr [ %i.xo, %bb.fi ], [ %i.xi, %bb.fh ], !dbg !36443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hd), !dbg !36444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.hd, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hc), !dbg !36445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hc, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !36445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hb), !dbg !36446
  store i64 0, ptr %i.hb, align 8, !dbg !36447, !alias.scope !35063
  %.sroa.42.0..sroa_idx.i1481 = getelementptr inbounds nuw i8, ptr %i.hb, i64 8, !dbg !36447
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i1481, align 8, !dbg !36447, !alias.scope !35063
  %.sroa.53.0..sroa_idx.i1482 = getelementptr inbounds nuw i8, ptr %i.hb, i64 16, !dbg !36447
  store i64 0, ptr %.sroa.53.0..sroa_idx.i1482, align 8, !dbg !36447, !alias.scope !35063
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha), !dbg !36448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ha, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36448
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderlNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256INtB1z_22ClosureDecoderFunctionlB29_NCNvNtB7_6simple18page_iter_to_arrays6_0EEE3newBd_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.he, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1393, i64 noundef %.sroa.01.0.i1392, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.hd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.hc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.hb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ha)
          to label %bb.pd unwind label %.thread1676, !dbg !35064

bb.pd:                                            ; preds = %bb.pc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha), !dbg !36449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb), !dbg !36449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc), !dbg !36449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd), !dbg !36449
  %i.alc = load i64, ptr %i.he, align 8, !dbg !36450, !range !1573, !noundef !1032 ; 2 uses
  %i.ald = icmp eq i64 %i.alc, 8, !dbg !36450
  %i.ale = getelementptr inbounds nuw i8, ptr %i.he, i64 8, !dbg !36451
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6305, ptr noundef nonnull align 8 dereferenceable(32) %i.ale, i64 32, i1 false), !dbg !36451
  br i1 %i.ald, label %bb.pe, label %bb.pf, !dbg !36452

bb.pe:                                            ; preds = %bb.pd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he), !dbg !36453
  %i.alf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.alf, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6305, i64 32, i1 false), !dbg !36453
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf), !dbg !36455
  br label %bb.pj, !dbg !35400

bb.pf:                                            ; preds = %bb.pd
  %.sroa.6901.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.he, i64 40, !dbg !36456
  %.sroa.8307.0..sroa_idx308 = getelementptr inbounds nuw i8, ptr %i.gz, i64 40, !dbg !35064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.8307.0..sroa_idx308, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6901.0..sroa_idx, i64 368, i1 false), !dbg !36456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he), !dbg !36453
  store i64 %i.alc, ptr %i.gz, align 8, !dbg !35064
  %.sroa.6305.0..sroa_idx306 = getelementptr inbounds nuw i8, ptr %i.gz, i64 8, !dbg !35064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6305.0..sroa_idx306, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6305, i64 32, i1 false), !dbg !35064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gy), !dbg !36457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gy, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36457
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderlNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256INtB1z_22ClosureDecoderFunctionlB29_NCNvNtB7_6simple18page_iter_to_arrays6_0EEE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.hf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.gz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.gy)
          to label %bb.pg unwind label %bb.f, !dbg !36458

bb.pg:                                            ; preds = %bb.pf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gy), !dbg !36459
  %i.alg = load i64, ptr %i.hf, align 8, !dbg !36460, !range !1034, !noundef !1032 ; 2 uses
  %i.alh = icmp eq i64 %i.alg, -9223372036854775808, !dbg !36460
  %i.ali = getelementptr inbounds nuw i8, ptr %i.hf, i64 8, !dbg !36461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6299, ptr noundef nonnull align 8 dereferenceable(32) %i.ali, i64 32, i1 false), !dbg !36461
  br i1 %i.alh, label %bb.ph, label %bb.pi, !dbg !36462

bb.ph:                                            ; preds = %bb.pg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf), !dbg !36455
  %i.alj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36463
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.alj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6299, i64 32, i1 false), !dbg !36455
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36463
  br label %bb.pj, !dbg !36455

bb.pi:                                            ; preds = %bb.pg
  %.sroa.6904.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hf, i64 40, !dbg !36464
  %.sroa.40.40..sroa_idx567 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !35064
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx567, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6904.0..sroa_idx, i64 40, i1 false), !dbg !36464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf), !dbg !36455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6299, i64 32, i1 false), !dbg !35064
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6305), !dbg !36455
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6299), !dbg !36455
  br label %bb.y, !dbg !36455

bb.pj:                                            ; preds = %bb.ph, %bb.pe
  %.sroa.0650.29 = phi i8 [ 1, %bb.pe ], [ 0, %bb.ph ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6305), !dbg !36455
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6299), !dbg !36455
  br label %bb.yi, !dbg !35400

bb.pk:                                            ; preds = %bb.oz, %bb.pa
  %.sroa.01.0.i1478 = phi i64 [ %i.akz, %bb.pa ], [ %.sroa.0.0.i.i1477, %bb.oz ], !dbg !36465
  %.sroa.0.0.i1479 = phi ptr [ %i.akx, %bb.pa ], [ %i.akr, %bb.oz ], !dbg !36466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gv), !dbg !36467
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.gv, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gu), !dbg !36468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gu, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !36468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gt), !dbg !36469
  store i64 0, ptr %i.gt, align 8, !dbg !36470, !alias.scope !35070
  %.sroa.42.0..sroa_idx.i1483 = getelementptr inbounds nuw i8, ptr %i.gt, i64 8, !dbg !36470
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i1483, align 8, !dbg !36470, !alias.scope !35070
  %.sroa.53.0..sroa_idx.i1484 = getelementptr inbounds nuw i8, ptr %i.gt, i64 16, !dbg !36470
  store i64 0, ptr %.sroa.53.0..sroa_idx.i1484, align 8, !dbg !36470, !alias.scope !35070
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gs), !dbg !36471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36471
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderxNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256INtB1z_22ClosureDecoderFunctionxB29_NCNvNtB7_6simple18page_iter_to_arrays7_0EEE3newBd_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.gw, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1479, i64 noundef %.sroa.01.0.i1478, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.gv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.gu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.gt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.gs)
          to label %bb.pl unwind label %.thread1676, !dbg !35071

bb.pl:                                            ; preds = %bb.pk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gs), !dbg !36472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gt), !dbg !36472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gu), !dbg !36472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv), !dbg !36472
  %i.alk = load i64, ptr %i.gw, align 8, !dbg !36473, !range !1573, !noundef !1032 ; 2 uses
  %i.all = icmp eq i64 %i.alk, 8, !dbg !36473
  %i.alm = getelementptr inbounds nuw i8, ptr %i.gw, i64 8, !dbg !36474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6317, ptr noundef nonnull align 8 dereferenceable(32) %i.alm, i64 32, i1 false), !dbg !36474
  br i1 %i.all, label %bb.pm, label %bb.pn, !dbg !36475

bb.pm:                                            ; preds = %bb.pl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gw), !dbg !36476
  %i.aln = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aln, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6317, i64 32, i1 false), !dbg !36476
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx), !dbg !36478
  br label %bb.pr, !dbg !35400

bb.pn:                                            ; preds = %bb.pl
  %.sroa.6907.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gw, i64 40, !dbg !36479
  %.sroa.8319.0..sroa_idx320 = getelementptr inbounds nuw i8, ptr %i.gr, i64 40, !dbg !35071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.8319.0..sroa_idx320, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6907.0..sroa_idx, i64 368, i1 false), !dbg !36479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gw), !dbg !36476
  store i64 %i.alk, ptr %i.gr, align 8, !dbg !35071
  %.sroa.6317.0..sroa_idx318 = getelementptr inbounds nuw i8, ptr %i.gr, i64 8, !dbg !35071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6317.0..sroa_idx318, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6317, i64 32, i1 false), !dbg !35071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gq), !dbg !36480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gq, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36480
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive7integer10IntDecoderxNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256INtB1z_22ClosureDecoderFunctionxB29_NCNvNtB7_6simple18page_iter_to_arrays7_0EEE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.gx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.gr, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.gq)
          to label %bb.po unwind label %bb.f, !dbg !36481

bb.po:                                            ; preds = %bb.pn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gq), !dbg !36482
  %i.alo = load i64, ptr %i.gx, align 8, !dbg !36483, !range !1034, !noundef !1032 ; 2 uses
  %i.alp = icmp eq i64 %i.alo, -9223372036854775808, !dbg !36483
  %i.alq = getelementptr inbounds nuw i8, ptr %i.gx, i64 8, !dbg !36484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6311, ptr noundef nonnull align 8 dereferenceable(32) %i.alq, i64 32, i1 false), !dbg !36484
  br i1 %i.alp, label %bb.pp, label %bb.pq, !dbg !36485

bb.pp:                                            ; preds = %bb.po
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx), !dbg !36478
  %i.alr = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.alr, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6311, i64 32, i1 false), !dbg !36478
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36486
  br label %bb.pr, !dbg !36478

bb.pq:                                            ; preds = %bb.po
  %.sroa.6910.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 40, !dbg !36487
  %.sroa.40.40..sroa_idx568 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !35071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx568, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6910.0..sroa_idx, i64 40, i1 false), !dbg !36487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gx), !dbg !36478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6311, i64 32, i1 false), !dbg !35071
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6317), !dbg !36478
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6311), !dbg !36478
  br label %bb.y, !dbg !36478

bb.pr:                                            ; preds = %bb.pp, %bb.pm
  %.sroa.0650.30 = phi i8 [ 1, %bb.pm ], [ 0, %bb.pp ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6317), !dbg !36478
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6311), !dbg !36478
  br label %bb.yi, !dbg !35400

bb.ps:                                            ; preds = %bb.pb
  %i.als = icmp ult i64 %i.ala, 33, !dbg !36488
  br i1 %i.als, label %bb.px, label %bb.pw, !dbg !36488

bb.pt:                                            ; preds = %bb.pb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gp), !dbg !36489
  store i64 %i.ala, ptr %i.gp, align 8, !dbg !36490
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6323.sroa.8), !dbg !35119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gm), !dbg !35119
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6328), !dbg !35119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gl), !dbg !35119
  %i.alt = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36491 ; 2 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36492
  %i.alv = load i8, ptr %i.alu, align 1, !dbg !36492, !range !1108, !alias.scope !35084, !noundef !1032 ; 2 uses
  %i.alw = icmp ugt i8 %i.alv, -41, !dbg !36493
  br i1 %i.alw, label %bb.pv, label %bb.pu, !dbg !36493

bb.pu:                                            ; preds = %bb.pt
  %i.alx = add i8 %i.alv, 64, !dbg !36494
  %i.aly = call i8 @llvm.umin.i8(i8 %i.alx, i8 24), !dbg !36495
  %.sroa.0.0.i.i1485 = zext nneg i8 %i.aly to i64, !dbg !36495
  br label %bb.qq, !dbg !36496

bb.pv:                                            ; preds = %bb.pt
  %i.alz = load ptr, ptr %i.alt, align 8, !dbg !36497, !alias.scope !35084, !noundef !1032
  %i.ama = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36498
  %i.amb = load i64, ptr %i.ama, align 8, !dbg !36498, !alias.scope !35084, !noundef !1032
  br label %bb.qq, !dbg !36499

bb.pw:                                            ; preds = %bb.ps
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr), !dbg !36500
  store ptr %8, ptr %i.fr, align 8, !dbg !36500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq), !dbg !36501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo), !dbg !36502
  store ptr %i.fr, ptr %i.fo, align 8, !dbg !36502
  %.sroa.4948.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fo, i64 8, !dbg !36502
  store ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRjNtB6_5Debug3fmtCsfISxE4fmY1Y_14polars_parquet, ptr %.sroa.4948.0..sroa_idx, align 8, !dbg !36502
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fp, ptr noundef nonnull @139, ptr noundef nonnull %i.fo)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1490 unwind label %.thread1620, !dbg !36503

bb.px:                                            ; preds = %bb.ps
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd), !dbg !36504
  store i64 %i.ala, ptr %i.gd, align 8, !dbg !36505
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6344.sroa.8), !dbg !35096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga), !dbg !35096
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6349), !dbg !35096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz), !dbg !35096
  %i.amc = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36506 ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36507
  %i.ame = load i8, ptr %i.amd, align 1, !dbg !36507, !range !1108, !alias.scope !35095, !noundef !1032 ; 2 uses
  %i.amf = icmp ugt i8 %i.ame, -41, !dbg !36508
  br i1 %i.amf, label %bb.pz, label %bb.py, !dbg !36508

bb.py:                                            ; preds = %bb.px
  %i.amg = add i8 %i.ame, 64, !dbg !36509
  %i.amh = call i8 @llvm.umin.i8(i8 %i.amg, i8 24), !dbg !36510
  %.sroa.0.0.i.i1491 = zext nneg i8 %i.amh to i64, !dbg !36510
  br label %bb.qb, !dbg !36511

bb.pz:                                            ; preds = %bb.px
  %i.ami = load ptr, ptr %i.amc, align 8, !dbg !36512, !alias.scope !35095, !noundef !1032
  %i.amj = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36513
  %i.amk = load i64, ptr %i.amj, align 8, !dbg !36513, !alias.scope !35095, !noundef !1032
  br label %bb.qb, !dbg !36514

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1490: ; preds = %bb.pw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo), !dbg !36515
  invoke void @_RINvMNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5errorNtB3_12ParquetError13not_supportedNtNtCsgZ49sUHp3tW_5alloc6string6StringEB7_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.fq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.fp)
          to label %bb.qa unwind label %.thread1620, !dbg !36501

bb.qa:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1490
  %i.aml = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aml, ptr noundef nonnull align 8 dereferenceable(32) %i.fq, i64 32, i1 false), !dbg !36516
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq), !dbg !36517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr), !dbg !36518
  br label %bb.op, !dbg !35400

bb.qb:                                            ; preds = %bb.pz, %bb.py
  %.sroa.01.0.i1492 = phi i64 [ %i.amk, %bb.pz ], [ %.sroa.0.0.i.i1491, %bb.py ], !dbg !36519
  %.sroa.0.0.i1493 = phi ptr [ %i.ami, %bb.pz ], [ %i.amc, %bb.py ], !dbg !36520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy), !dbg !36521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.fy, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx), !dbg !36522
  %i.amm = getelementptr inbounds nuw i8, ptr %i.fx, i64 8, !dbg !36522
  store i64 %i.ala, ptr %i.amm, align 8, !dbg !36522
  store i8 23, ptr %i.fx, align 8, !dbg !36522
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw), !dbg !36523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36523
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_17fixed_size_binary13BinaryDecoderE3newBd_(ptr noalias noundef nonnull sret([400 x i8]) align 8 captures(none) dereferenceable(400) %i.fz, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1493, i64 noundef %.sroa.01.0.i1492, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.fy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.fx, i64 noundef %i.ala, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.fw)
          to label %bb.qc unwind label %.thread1620, !dbg !35096

bb.qc:                                            ; preds = %bb.qb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw), !dbg !36524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx), !dbg !36524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !dbg !36524
  %i.amn = load i64, ptr %i.fz, align 8, !dbg !36525, !range !1573, !noundef !1032 ; 2 uses
  %i.amo = icmp eq i64 %i.amn, 8, !dbg !36525
  %i.amp = getelementptr inbounds nuw i8, ptr %i.fz, i64 8, !dbg !36526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6349, ptr noundef nonnull align 8 dereferenceable(32) %i.amp, i64 32, i1 false), !dbg !36526
  br i1 %i.amo, label %bb.qd, label %bb.qe, !dbg !36527

bb.qd:                                            ; preds = %bb.qc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz), !dbg !36528
  %i.amq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amq, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6349, i64 32, i1 false), !dbg !36528
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga), !dbg !36530
  br label %bb.qp, !dbg !36531

bb.qe:                                            ; preds = %bb.qc
  %.sroa.6930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 40, !dbg !36532
  %.sroa.8351.0..sroa_idx352 = getelementptr inbounds nuw i8, ptr %i.fv, i64 40, !dbg !35096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.8351.0..sroa_idx352, ptr noundef nonnull align 8 dereferenceable(360) %.sroa.6930.0..sroa_idx, i64 360, i1 false), !dbg !36532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz), !dbg !36528
  store i64 %i.amn, ptr %i.fv, align 8, !dbg !35096
  %.sroa.6349.0..sroa_idx350 = getelementptr inbounds nuw i8, ptr %i.fv, i64 8, !dbg !35096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6349.0..sroa_idx350, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6349, i64 32, i1 false), !dbg !35096
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu), !dbg !36533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fu, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36533
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_17fixed_size_binary13BinaryDecoderE7collectBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.ga, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(400) %i.fv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.fu)
          to label %bb.qf unwind label %.thread1620, !dbg !36534

bb.qf:                                            ; preds = %bb.qe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu), !dbg !36535
  %i.amr = load i64, ptr %i.ga, align 8, !dbg !36536, !range !1034, !noundef !1032 ; 2 uses
  %i.ams = icmp eq i64 %i.amr, -9223372036854775808, !dbg !36536
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ga, i64 8, !dbg !36537
  %.sroa.01248.0.copyload = load ptr, ptr %i.amt, align 8, !dbg !36537 ; 5 uses
  %.sroa.51249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ga, i64 16, !dbg !36537
  %.sroa.51249.0.copyload = load i64, ptr %.sroa.51249.0..sroa_idx, align 8, !dbg !36537 ; 3 uses
  %.sroa.61250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ga, i64 24, !dbg !36537 ; 2 uses
  br i1 %i.ams, label %bb.qg, label %bb.qh, !dbg !36538

bb.qg:                                            ; preds = %bb.qf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6344.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61250.0..sroa_idx, i64 16, i1 false), !dbg !36539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga), !dbg !36530
  %.sroa.31244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !36540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.31244.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6344.sroa.8, i64 16, i1 false), !dbg !36530
  %i.amu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36540
  store ptr %.sroa.01248.0.copyload, ptr %i.amu, align 8, !dbg !36540
  %.sroa.21243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !36540
  store i64 %.sroa.51249.0.copyload, ptr %.sroa.21243.0..sroa_idx, align 8, !dbg !36540
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36540
  br label %bb.qp, !dbg !36541

bb.qh:                                            ; preds = %bb.qf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6344.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61250.0..sroa_idx, i64 24, i1 false), !dbg !36542
  %.sroa.6933.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ga, i64 48, !dbg !36542
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb), !dbg !36543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gb, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6933.0..sroa_idx, i64 32, i1 false), !dbg !36542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga), !dbg !36530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc), !dbg !36544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gc, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6344.sroa.8, i64 24, i1 false), !dbg !35096
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6349), !dbg !36541
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6344.sroa.8), !dbg !36541
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6355.sroa.7), !dbg !35116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft), !dbg !35116
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01248.0.copyload) ], !dbg !36545
  %i.amv = icmp ult i64 %.sroa.51249.0.copyload, 96076792050570582, !dbg !36546
  call void @llvm.assume(i1 %i.amv), !dbg !36547
  %i.amw = getelementptr inbounds nuw [96 x i8], ptr %.sroa.01248.0.copyload, i64 %.sroa.51249.0.copyload, !dbg !36548
  store ptr %.sroa.01248.0.copyload, ptr %i.fs, align 8, !dbg !36549
  %.sroa.4358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8, !dbg !36549
  store ptr %.sroa.01248.0.copyload, ptr %.sroa.4358.0..sroa_idx, align 8, !dbg !36549
  %.sroa.5359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 16, !dbg !36549
  store i64 %i.amr, ptr %.sroa.5359.0..sroa_idx, align 8, !dbg !36549
  %.sroa.6360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 24, !dbg !36549
  store ptr %i.amw, ptr %.sroa.6360.0..sroa_idx, align 8, !dbg !36549
  %i.amx = getelementptr inbounds nuw i8, ptr %i.fs, i64 32, !dbg !36549
  store ptr %i.gd, ptr %i.amx, align 8, !dbg !36549
  %i.amy = getelementptr inbounds nuw i8, ptr %i.fs, i64 40, !dbg !36549
  store ptr %i.oo, ptr %i.amy, align 8, !dbg !36549
  invoke void @_RINvNtNtCscgRAwXFJnXP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow5array17fixed_size_binary20FixedSizeBinaryArrayENCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_arrays9_0EINtNtB1d_5boxed3BoxDNtB1Y_5ArrayEL_EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtNtB3q_7parquet5error12ParquetErrorENCINvXso_B5r_IB5p_INtB1b_3VecB4O_EB6b_EINtNtNtB4_6traits7collect12FromIteratorIB5p_B4O_B6b_EE9from_iterBQ_E0B76_EB3q_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ft, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.fs)
          to label %bb.qj unwind label %bb.qi, !dbg !36550

bb.qi:                                            ; preds = %bb.qh
  %i.amz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gb)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1496 unwind label %bb.ay, !dbg !36551

bb.qj:                                            ; preds = %bb.qh
  %i.ana = load i64, ptr %i.ft, align 8, !dbg !36552, !range !1553, !noundef !1032 ; 2 uses
  %.not = icmp eq i64 %i.ana, -9223372036854775803, !dbg !36552
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ft, i64 8, !dbg !36553
  %.sroa.0934.0.copyload = load i64, ptr %i.anb, align 8, !dbg !36553 ; 2 uses
  %.sroa.5935.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 16, !dbg !36553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6355.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5935.0..sroa_idx, i64 16, i1 false), !dbg !36553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft), !dbg !36554
  br i1 %.not, label %bb.ql, label %bb.qk, !dbg !36555

bb.qk:                                            ; preds = %bb.qj
  %.sroa.3944.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !36556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3944.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6355.sroa.7, i64 16, i1 false), !dbg !36554
  %i.anc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36556
  store i64 %i.ana, ptr %i.anc, align 8, !dbg !36556
  %.sroa.2943.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !36556
  store i64 %.sroa.0934.0.copyload, ptr %.sroa.2943.0..sroa_idx, align 8, !dbg !36556
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36556
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6355.sroa.7), !dbg !36557
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.gb)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1498 unwind label %bb.qm, !dbg !36558

bb.ql:                                            ; preds = %bb.qj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6355.sroa.7, i64 16, i1 false), !dbg !35116
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6355.sroa.7), !dbg !36557
  %.sroa.40.24..sroa_idx553 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 16, !dbg !36559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.40.24..sroa_idx553, ptr noundef nonnull align 8 dereferenceable(24) %i.gc, i64 24, i1 false), !dbg !36560
  %.sroa.40.48..sroa_idx589 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 40, !dbg !36559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40.48..sroa_idx589, ptr noundef nonnull align 8 dereferenceable(32) %i.gb, i64 32, i1 false), !dbg !36561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb), !dbg !36562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc), !dbg !36562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd), !dbg !36563
  br label %bb.ef, !dbg !36564

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1496: ; preds = %bb.qi, %bb.qm
  %.pn = phi { ptr, i32 } [ %i.and, %bb.qm ], [ %i.amz, %bb.qi ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils11NestedStateEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.gc) #39
          to label %.thread1611 unwind label %bb.ay, !dbg !36562

bb.qm:                                            ; preds = %bb.qk
  %i.and = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1496

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1498: ; preds = %bb.qk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb), !dbg !36562
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize12nested_utils11NestedStateEEB1c_(ptr noalias noundef align 8 dereferenceable(24) %i.gc)
          to label %bb.qn unwind label %.thread1620, !dbg !36562

bb.qn:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapECsfISxE4fmY1Y_14polars_parquet.exit1498
end_hunk_4
begin_hunk_5_@_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize6simple18page_iter_to_array:bb.a
  br i1 %i.aqv, label %bb.ts, label %bb.tt, !dbg !36753

bb.ts:                                            ; preds = %bb.tr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !dbg !36746
  %i.aqx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aqx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6449, i64 32, i1 false), !dbg !36746
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36754
  br label %bb.tu, !dbg !36746

bb.tt:                                            ; preds = %bb.tr
  %.sroa.6998.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 40, !dbg !36755
  %.sroa.40.40..sroa_idx576 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !35200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx576, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6998.0..sroa_idx, i64 40, i1 false), !dbg !36755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !dbg !36746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6449, i64 32, i1 false), !dbg !35200
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6455), !dbg !36746
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6449), !dbg !36746
  br label %bb.y, !dbg !36746

bb.tu:                                            ; preds = %bb.ts, %bb.tp
  %.sroa.0650.39 = phi i8 [ 1, %bb.tp ], [ 0, %bb.ts ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6455), !dbg !36746
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6449), !dbg !36746
  br label %bb.yi, !dbg !35400

bb.tv:                                            ; preds = %bb.ov, %bb.ow
  %.sroa.01.0.i1474 = phi i64 [ %i.akq, %bb.ow ], [ %.sroa.0.0.i.i1473, %bb.ov ], !dbg !36756
  %.sroa.0.0.i1475 = phi ptr [ %i.ako, %bb.ow ], [ %i.aki, %bb.ov ], !dbg !36757
  %i.aqy = icmp eq i8 %i.akh, 26, !dbg !36758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !dbg !36759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.da, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !dbg !36760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !36760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !dbg !36761
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36761
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_7binview14BinViewDecoderE3newBd_(ptr noalias noundef nonnull sret([440 x i8]) align 8 captures(none) dereferenceable(440) %i.db, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1475, i64 noundef %.sroa.01.0.i1474, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.da, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.cz, ptr noalias noundef align 8 null, i1 noundef zeroext %i.aqy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.cy)
          to label %bb.tw unwind label %.thread1676, !dbg !35206

bb.tw:                                            ; preds = %bb.tv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !dbg !36762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !dbg !36762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da), !dbg !36762
  %i.aqz = load i64, ptr %i.db, align 8, !dbg !36763, !range !1573, !noundef !1032 ; 2 uses
  %i.ara = icmp eq i64 %i.aqz, 8, !dbg !36763
  %i.arb = getelementptr inbounds nuw i8, ptr %i.db, i64 8, !dbg !36764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6467, ptr noundef nonnull align 8 dereferenceable(32) %i.arb, i64 32, i1 false), !dbg !36764
  br i1 %i.ara, label %bb.tx, label %bb.ty, !dbg !36765

bb.tx:                                            ; preds = %bb.tw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !dbg !36766
  %i.arc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36767
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.arc, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6467, i64 32, i1 false), !dbg !36766
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !dbg !36768
  br label %bb.uc, !dbg !36769

bb.ty:                                            ; preds = %bb.tw
  %.sroa.61001.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 40, !dbg !36770
  %.sroa.8469.0..sroa_idx470 = getelementptr inbounds nuw i8, ptr %i.cx, i64 40, !dbg !35206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.8469.0..sroa_idx470, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.61001.0..sroa_idx, i64 400, i1 false), !dbg !36770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !dbg !36766
  store i64 %i.aqz, ptr %i.cx, align 8, !dbg !35206
  %.sroa.6467.0..sroa_idx468 = getelementptr inbounds nuw i8, ptr %i.cx, i64 8, !dbg !35206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6467.0..sroa_idx468, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6467, i64 32, i1 false), !dbg !35206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !dbg !36771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cw, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36771
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_7binview14BinViewDecoderE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.dc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(440) %i.cx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.cw)
          to label %bb.tz unwind label %bb.f, !dbg !36772

bb.tz:                                            ; preds = %bb.ty
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !dbg !36773
  %i.ard = load i64, ptr %i.dc, align 8, !dbg !36774, !range !1034, !noundef !1032 ; 2 uses
  %i.are = icmp eq i64 %i.ard, -9223372036854775808, !dbg !36774
  %i.arf = getelementptr inbounds nuw i8, ptr %i.dc, i64 8, !dbg !36775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6461, ptr noundef nonnull align 8 dereferenceable(32) %i.arf, i64 32, i1 false), !dbg !36775
  br i1 %i.are, label %bb.ua, label %bb.ub, !dbg !36776

bb.ua:                                            ; preds = %bb.tz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !dbg !36768
  %i.arg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36777
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.arg, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6461, i64 32, i1 false), !dbg !36768
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36777
  br label %bb.uc, !dbg !36768

bb.ub:                                            ; preds = %bb.tz
  %.sroa.61004.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dc, i64 40, !dbg !36778
  %.sroa.40.40..sroa_idx577 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !35206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx577, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61004.0..sroa_idx, i64 40, i1 false), !dbg !36778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !dbg !36768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6461, i64 32, i1 false), !dbg !35206
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6467), !dbg !36768
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6461), !dbg !36768
  br label %bb.y, !dbg !36779

bb.uc:                                            ; preds = %bb.ua, %bb.tx
  %.sroa.0650.40 = phi i8 [ 1, %bb.tx ], [ 0, %bb.ua ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6467), !dbg !36768
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6461), !dbg !36768
  br label %bb.yi, !dbg !35400

bb.ud:                                            ; preds = %bb.rf, %bb.rf
  %i.arh = load i8, ptr %i.oo, align 8, !dbg !36780, !range !1100, !noundef !1032
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6473), !dbg !35223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !dbg !35223
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6479), !dbg !35223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !dbg !35223
  %i.ari = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36781 ; 2 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36782
  %i.ark = load i8, ptr %i.arj, align 1, !dbg !36782, !range !1108, !alias.scope !35222, !noundef !1032 ; 2 uses
  %i.arl = icmp ugt i8 %i.ark, -41, !dbg !36783
  br i1 %i.arl, label %bb.uf, label %bb.ue, !dbg !36783

bb.ue:                                            ; preds = %bb.ud
  %i.arm = add i8 %i.ark, 64, !dbg !36784
  %i.arn = call i8 @llvm.umin.i8(i8 %i.arm, i8 24), !dbg !36785
  %.sroa.0.0.i.i1519 = zext nneg i8 %i.arn to i64, !dbg !36785
  br label %bb.ug, !dbg !36786

bb.uf:                                            ; preds = %bb.ud
  %i.aro = load ptr, ptr %i.ari, align 8, !dbg !36787, !alias.scope !35222, !noundef !1032
  %i.arp = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36788
  %i.arq = load i64, ptr %i.arp, align 8, !dbg !36788, !alias.scope !35222, !noundef !1032
  br label %bb.ug, !dbg !36789

bb.ug:                                            ; preds = %bb.ue, %bb.uf
  %.sroa.01.0.i1520 = phi i64 [ %i.arq, %bb.uf ], [ %.sroa.0.0.i.i1519, %bb.ue ], !dbg !36790
  %.sroa.0.0.i1521 = phi ptr [ %i.aro, %bb.uf ], [ %i.ari, %bb.ue ], !dbg !36791
  %i.arr = icmp eq i8 %i.arh, 39, !dbg !36792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !dbg !36793
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ct, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !dbg !36794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !36794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !dbg !36795
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36795
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_7binview14BinViewDecoderE3newBd_(ptr noalias noundef nonnull sret([440 x i8]) align 8 captures(none) dereferenceable(440) %i.cu, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1521, i64 noundef %.sroa.01.0.i1520, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.ct, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.cs, ptr noalias noundef align 8 null, i1 noundef zeroext %i.arr, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.cr)
          to label %bb.uh unwind label %.thread1676, !dbg !35223

bb.uh:                                            ; preds = %bb.ug
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !dbg !36796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !dbg !36796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !dbg !36796
  %i.ars = load i64, ptr %i.cu, align 8, !dbg !36797, !range !1573, !noundef !1032 ; 2 uses
  %i.art = icmp eq i64 %i.ars, 8, !dbg !36797
  %i.aru = getelementptr inbounds nuw i8, ptr %i.cu, i64 8, !dbg !36798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6479, ptr noundef nonnull align 8 dereferenceable(32) %i.aru, i64 32, i1 false), !dbg !36798
  br i1 %i.art, label %bb.ui, label %bb.uj, !dbg !36799

bb.ui:                                            ; preds = %bb.uh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !dbg !36800
  %i.arv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36801
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.arv, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6479, i64 32, i1 false), !dbg !36800
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !36802
  br label %bb.un, !dbg !36803

bb.uj:                                            ; preds = %bb.uh
  %.sroa.61007.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 40, !dbg !36804
  %.sroa.8481.0..sroa_idx482 = getelementptr inbounds nuw i8, ptr %i.cq, i64 40, !dbg !35223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %.sroa.8481.0..sroa_idx482, ptr noundef nonnull align 8 dereferenceable(400) %.sroa.61007.0..sroa_idx, i64 400, i1 false), !dbg !36804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !dbg !36800
  store i64 %i.ars, ptr %i.cq, align 8, !dbg !35223
  %.sroa.6479.0..sroa_idx480 = getelementptr inbounds nuw i8, ptr %i.cq, i64 8, !dbg !35223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6479.0..sroa_idx480, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6479, i64 32, i1 false), !dbg !35223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !dbg !36805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36805
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderNtNtB7_7binview14BinViewDecoderE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.cv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(440) %i.cq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.cp)
          to label %bb.uk unwind label %bb.f, !dbg !36806

bb.uk:                                            ; preds = %bb.uj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !dbg !36807
  %i.arw = load i64, ptr %i.cv, align 8, !dbg !36808, !range !1034, !noundef !1032 ; 2 uses
  %i.arx = icmp eq i64 %i.arw, -9223372036854775808, !dbg !36808
  %i.ary = getelementptr inbounds nuw i8, ptr %i.cv, i64 8, !dbg !36809
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6473, ptr noundef nonnull align 8 dereferenceable(32) %i.ary, i64 32, i1 false), !dbg !36809
  br i1 %i.arx, label %bb.ul, label %bb.um, !dbg !36810

bb.ul:                                            ; preds = %bb.uk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !36802
  %i.arz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.arz, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6473, i64 32, i1 false), !dbg !36802
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36811
  br label %bb.un, !dbg !36802

bb.um:                                            ; preds = %bb.uk
  %.sroa.61010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cv, i64 40, !dbg !36812
  %.sroa.40.40..sroa_idx578 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !35223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx578, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.61010.0..sroa_idx, i64 40, i1 false), !dbg !36812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !36802
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6473, i64 32, i1 false), !dbg !35223
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6479), !dbg !36802
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6473), !dbg !36802
  br label %bb.y, !dbg !36813

bb.un:                                            ; preds = %bb.ul, %bb.ui
  %.sroa.0650.41 = phi i8 [ 1, %bb.ui ], [ 0, %bb.ul ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6479), !dbg !36802
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6473), !dbg !36802
  br label %bb.yi, !dbg !35400

bb.uo:                                            ; preds = %bb.ri
  %i.asa = load i64, ptr %9, align 8, !dbg !35378, !noundef !1032
  %i.asb = icmp eq i64 %i.asa, 2, !dbg !35378
  br i1 %i.asb, label %bb.up, label %.thread1650, !dbg !35378

bb.up:                                            ; preds = %bb.uo
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6413), !dbg !35239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh), !dbg !35239
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6419), !dbg !35239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg), !dbg !35239
  %i.asc = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36814 ; 2 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36815
  %i.ase = load i8, ptr %i.asd, align 1, !dbg !36815, !range !1108, !alias.scope !35238, !noundef !1032 ; 2 uses
  %i.asf = icmp ugt i8 %i.ase, -41, !dbg !36816
  br i1 %i.asf, label %bb.ur, label %bb.uq, !dbg !36816

bb.uq:                                            ; preds = %bb.up
  %i.asg = add i8 %i.ase, 64, !dbg !36817
  %i.ash = call i8 @llvm.umin.i8(i8 %i.asg, i8 24), !dbg !36818
  %.sroa.0.0.i.i1523 = zext nneg i8 %i.ash to i64, !dbg !36818
  br label %bb.us, !dbg !36819

bb.ur:                                            ; preds = %bb.up
  %i.asi = load ptr, ptr %i.asc, align 8, !dbg !36820, !alias.scope !35238, !noundef !1032
  %i.asj = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36821
  %i.ask = load i64, ptr %i.asj, align 8, !dbg !36821, !alias.scope !35238, !noundef !1032
  br label %bb.us, !dbg !36822

bb.us:                                            ; preds = %bb.ur, %bb.uq
  %.sroa.01.0.i1524 = phi i64 [ %i.ask, %bb.ur ], [ %.sroa.0.0.i.i1523, %bb.uq ], !dbg !36823
  %.sroa.0.0.i1525 = phi ptr [ %i.asi, %bb.ur ], [ %i.asc, %bb.uq ], !dbg !36824
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !dbg !36825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ef, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false), !dbg !36825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !dbg !36826
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %i.oo, i64 32, i1 false), !dbg !36826
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !dbg !36827
  invoke void @_RNvMs0_NtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5floatINtB5_12FloatDecoderNtNtCs2mZqlW55729_12polars_utils7float164pf16B1H_INtB7_19UnitDecoderFunctionB1H_EE4unitBf_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ed)
          to label %bb.ut unwind label %bb.vb, !dbg !36827

bb.ut:                                            ; preds = %bb.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !dbg !36828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !dbg !36828
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive5float12FloatDecoderNtNtCs2mZqlW55729_12polars_utils7float164pf16B28_INtB1z_19UnitDecoderFunctionB28_EEE3newBd_(ptr noalias noundef nonnull sret([408 x i8]) align 8 captures(none) dereferenceable(408) %i.eg, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i1525, i64 noundef %.sroa.01.0.i1524, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.ef, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ee, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ed, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ec)
          to label %bb.uu unwind label %.thread1676, !dbg !35239

.thread1676:                                      ; preds = %bb.ug, %bb.tv, %bb.td, %bb.sp, %bb.sb, %bb.rq, %bb.pk, %bb.pc, %bb.mw, %bb.ml, %bb.ji, %bb.iz, %bb.eo, %bb.di, %bb.cx, %bb.cg, %bb.bs, %bb.be, %bb.ap, %bb.ut
  %i.asl = landingpad { ptr, i32 }
          cleanup
  br label %.thread1695, !dbg !36829

bb.uu:                                            ; preds = %bb.ut
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !dbg !36829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !dbg !36829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !dbg !36829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !dbg !36829
  %i.asm = load i64, ptr %i.eg, align 8, !dbg !36830, !range !1573, !noundef !1032 ; 2 uses
  %i.asn = icmp eq i64 %i.asm, 8, !dbg !36830
  %i.aso = getelementptr inbounds nuw i8, ptr %i.eg, i64 8, !dbg !36831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6419, ptr noundef nonnull align 8 dereferenceable(32) %i.aso, i64 32, i1 false), !dbg !36831
  br i1 %i.asn, label %bb.uv, label %bb.uw, !dbg !36832

bb.uv:                                            ; preds = %bb.uu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !dbg !36833
  %i.asp = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.asp, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6419, i64 32, i1 false), !dbg !36833
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !dbg !36835
  br label %bb.va, !dbg !35400

bb.uw:                                            ; preds = %bb.uu
  %.sroa.6977.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 40, !dbg !36836
  %.sroa.8421.0..sroa_idx422 = getelementptr inbounds nuw i8, ptr %i.eb, i64 40, !dbg !35239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.8421.0..sroa_idx422, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.6977.0..sroa_idx, i64 368, i1 false), !dbg !36836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !dbg !36833
  store i64 %i.asm, ptr %i.eb, align 8, !dbg !35239
  %.sroa.6419.0..sroa_idx420 = getelementptr inbounds nuw i8, ptr %i.eb, i64 8, !dbg !35239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6419.0..sroa_idx420, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6419, i64 32, i1 false), !dbg !35239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !dbg !36837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ea, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !dbg !36837
  invoke void @_RNvMs1_NtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize5utilsINtB5_11PageDecoderINtNtNtB7_9primitive5float12FloatDecoderNtNtCs2mZqlW55729_12polars_utils7float164pf16B28_INtB1z_19UnitDecoderFunctionB28_EEE13collect_boxedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.eh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(408) %i.eb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ea)
          to label %bb.ux unwind label %bb.f, !dbg !36838

bb.ux:                                            ; preds = %bb.uw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !dbg !36839
  %i.asq = load i64, ptr %i.eh, align 8, !dbg !36840, !range !1034, !noundef !1032 ; 2 uses
  %i.asr = icmp eq i64 %i.asq, -9223372036854775808, !dbg !36840
  %i.ass = getelementptr inbounds nuw i8, ptr %i.eh, i64 8, !dbg !36841
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6413, ptr noundef nonnull align 8 dereferenceable(32) %i.ass, i64 32, i1 false), !dbg !36841
  br i1 %i.asr, label %bb.uy, label %bb.uz, !dbg !36842

bb.uy:                                            ; preds = %bb.ux
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !dbg !36835
  %i.ast = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ast, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6413, i64 32, i1 false), !dbg !36835
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !36843
  br label %bb.va, !dbg !36835

bb.uz:                                            ; preds = %bb.ux
  %.sroa.6980.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eh, i64 40, !dbg !36844
  %.sroa.40.40..sroa_idx573 = getelementptr inbounds nuw i8, ptr %.sroa.40, i64 32, !dbg !35239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.40.40..sroa_idx573, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6980.0..sroa_idx, i64 40, i1 false), !dbg !36844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !dbg !36835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6413, i64 32, i1 false), !dbg !35239
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6419), !dbg !36835
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6413), !dbg !36835
  br label %bb.y, !dbg !36835

bb.va:                                            ; preds = %bb.uy, %bb.uv
  %.sroa.0650.42 = phi i8 [ 1, %bb.uv ], [ 0, %bb.uy ], !dbg !35374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6419), !dbg !36835
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6413), !dbg !36835
  br label %bb.yi, !dbg !35400

bb.vb:                                            ; preds = %bb.us
  %i.asu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(32) %i.ee) #39
          to label %bb.vc unwind label %bb.ay, !dbg !36829

bb.vc:                                            ; preds = %bb.vb
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet4read11compression17BasicDecompressorEBO_(ptr noalias noundef align 8 dereferenceable(232) %i.ef) #39
          to label %.thread1605.thread1721 unwind label %bb.ay, !dbg !36829

.thread1650:                                      ; preds = %bb.fl, %bb.ei, %bb.ez, %bb.fj, %bb.fk, %bb.fm, %bb.fn, %bb.js, %bb.jt, %bb.ju, %bb.jv, %bb.fp, %bb.fo, %bb.uo, %bb.rf, %bb.ri, %bb.rh, %bb.rg, %bb.oq, %.thread1647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !dbg !36845
  store ptr %2, ptr %i.be, align 8, !dbg !36845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !36846
  store ptr %i.ov, ptr %i.bd, align 8, !dbg !36846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !36847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !36848
  store ptr %i.be, ptr %i.ba, align 8, !dbg !36848
  %.sroa.4707.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8, !dbg !36848
  store ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet6schema5types13physical_type12PhysicalTypeNtB6_5Debug3fmtBG_, ptr %.sroa.4707.0..sroa_idx, align 8, !dbg !36848
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ba, i64 16, !dbg !36848
  store ptr %i.bd, ptr %i.asv, align 8, !dbg !36848
  %.sroa.41038.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 24, !dbg !36848
  store ptr @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeNtB6_5Debug3fmtCsfISxE4fmY1Y_14polars_parquet, ptr %.sroa.41038.0..sroa_idx, align 8, !dbg !36848
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noundef nonnull @145, ptr noundef nonnull %i.ba)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfISxE4fmY1Y_14polars_parquet.exit1528 unwind label %.thread1620, !dbg !36849

bb.vd:                                            ; preds = %bb.vg, %bb.ox
  unreachable

bb.ve:                                            ; preds = %bb.ei, %bb.rf, %bb.ri, %bb.rh, %bb.rg, %bb.oq, %.thread1647
  %i.asw = getelementptr inbounds nuw i8, ptr %i.ov, i64 8, !dbg !36850
  %i.asx = load ptr, ptr %i.asw, align 8, !dbg !36850, !nonnull !1032, !noundef !1032 ; 2 uses
  store ptr %i.asx, ptr %i.co, align 8, !dbg !36850
  %i.asy = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.asx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @142)
          to label %bb.vf unwind label %.thread1620, !dbg !36851

bb.vf:                                            ; preds = %bb.ve
  br i1 %i.asy, label %bb.vh, label %bb.vg, !dbg !35250, !prof !1184

bb.vg:                                            ; preds = %bb.vf
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedRNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeBM_EBR_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @143, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #44
          to label %bb.vd unwind label %.thread1620, !dbg !36852

bb.vh:                                            ; preds = %bb.vf
  %i.asz = getelementptr inbounds nuw i8, ptr %3, i64 56, !dbg !36853
  %i.ata = load ptr, ptr %i.asz, align 8, !dbg !36853, !noundef !1032 ; 4 uses
  %.not1299 = icmp eq ptr %i.ata, null, !dbg !36854
  br i1 %.not1299, label %bb.vx, label %bb.vi, !dbg !36855

bb.vi:                                            ; preds = %bb.vh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ata, ptr %i.a, align 8
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 16, !dbg !36856 ; 2 uses
  %i.atc = load ptr, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field24DTYPE_ENUM_VALUES_LEGACY, align 8, !dbg !36857, !nonnull !1032, !noundef !1032
  %i.atd = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field24DTYPE_ENUM_VALUES_LEGACY, i64 8), align 8, !dbg !36857, !noundef !1032
  %i.ate = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB18_E3geteECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.atb, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.atc, i64 noundef %i.atd)
          to label %bb.vl unwind label %bb.vj, !dbg !36858

bb.vj:                                            ; preds = %bb.vq, %bb.vo, %bb.vm, %bb.vi
  %i.atf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35253), !dbg !36859
  call void @llvm.experimental.noalias.scope.decl(metadata !35254), !dbg !36860
  %i.atg = load ptr, ptr %i.a, align 8, !dbg !36861, !alias.scope !35255, !nonnull !1032, !noundef !1032
  %i.ath = atomicrmw add ptr %i.atg, i64 -1 release, align 8, !dbg !36862, !noalias !35255
  %i.ati = icmp eq i64 %i.ath, 1, !dbg !36863
  br i1 %i.ati, label %bb.vk, label %.thread1611, !dbg !36863

bb.vk:                                            ; preds = %bb.vj
  fence acquire, !dbg !36864
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #40
          to label %.thread1611 unwind label %bb.vu, !dbg !36865

bb.vl:                                            ; preds = %bb.vi
  %.not.i = icmp eq ptr %i.ate, null, !dbg !36866
  br i1 %.not.i, label %bb.vm, label %bb.vr, !dbg !36867

bb.vm:                                            ; preds = %bb.vl
  %i.atj = load ptr, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field21DTYPE_ENUM_VALUES_NEW, align 8, !dbg !36868, !nonnull !1032, !noundef !1032
  %i.atk = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field21DTYPE_ENUM_VALUES_NEW, i64 8), align 8, !dbg !36868, !noundef !1032
  %i.atl = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB18_E3geteECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.atb, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.atj, i64 noundef %i.atk)
          to label %bb.vn unwind label %bb.vj, !dbg !36869

bb.vn:                                            ; preds = %bb.vm
  %.not2.i = icmp eq ptr %i.atl, null, !dbg !36870
  %.pre5.i = load ptr, ptr %i.a, align 8, !dbg !36871 ; 2 uses
  br i1 %.not2.i, label %bb.vo, label %bb.vr, !dbg !36872

bb.vo:                                            ; preds = %bb.vn
  %i.atm = getelementptr inbounds nuw i8, ptr %.pre5.i, i64 16, !dbg !36873
  %i.atn = load ptr, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field21DTYPE_CATEGORICAL_NEW, align 8, !dbg !36874, !nonnull !1032, !noundef !1032
  %i.ato = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field21DTYPE_CATEGORICAL_NEW, i64 8), align 8, !dbg !36874, !noundef !1032
  %i.atp = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB18_E3geteECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.atm, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.atn, i64 noundef %i.ato)
          to label %bb.vp unwind label %bb.vj, !dbg !36875

bb.vp:                                            ; preds = %bb.vo
  %.not3.i = icmp eq ptr %i.atp, null, !dbg !36876
  %.pre6.i = load ptr, ptr %i.a, align 8, !dbg !36871 ; 2 uses
  br i1 %.not3.i, label %bb.vq, label %bb.vr, !dbg !36877

bb.vq:                                            ; preds = %bb.vp
  %i.atq = getelementptr inbounds nuw i8, ptr %.pre6.i, i64 16, !dbg !36878
  %i.atr = load ptr, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field24DTYPE_CATEGORICAL_LEGACY, align 8, !dbg !36879, !nonnull !1032, !noundef !1032
  %i.ats = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field24DTYPE_CATEGORICAL_LEGACY, i64 8), align 8, !dbg !36879, !noundef !1032
  %i.att = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB18_E3geteECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.atq, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.atr, i64 noundef %i.ats)
          to label %bb.vt unwind label %bb.vj, !dbg !36880

bb.vr:                                            ; preds = %bb.vt, %bb.vp, %bb.vn, %bb.vl
  %i.atu = phi ptr [ %.pre.i, %bb.vt ], [ %.pre6.i, %bb.vp ], [ %.pre5.i, %bb.vn ], [ %i.ata, %bb.vl ], !dbg !36871
  %.sroa.0.0.i1529 = phi i1 [ %i.atx, %bb.vt ], [ true, %bb.vp ], [ true, %bb.vn ], [ true, %bb.vl ], !dbg !36881
  call void @llvm.experimental.noalias.scope.decl(metadata !35261), !dbg !36859
  call void @llvm.experimental.noalias.scope.decl(metadata !35262), !dbg !36882
  %i.atv = atomicrmw add ptr %i.atu, i64 -1 release, align 8, !dbg !36883, !noalias !35263
  %i.atw = icmp eq i64 %i.atv, 1, !dbg !36884
  br i1 %i.atw, label %bb.vs, label %bb.vv, !dbg !36884

bb.vs:                                            ; preds = %bb.vr
  fence acquire, !dbg !36885
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EE9drop_slowCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #40
          to label %bb.vv unwind label %.thread1620, !dbg !36886

bb.vt:                                            ; preds = %bb.vq
  %i.atx = icmp ne ptr %i.att, null, !dbg !36887
  %.pre.i = load ptr, ptr %i.a, align 8, !dbg !36871, !alias.scope !35263
  br label %bb.vr, !dbg !36867

bb.vu:                                            ; preds = %bb.vk
  %i.aty = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #38, !dbg !36888
  unreachable, !dbg !36888

bb.vv:                                            ; preds = %bb.vr, %bb.vs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !36889
  br i1 %.sroa.0.0.i1529, label %bb.vw, label %bb.vx, !dbg !36853

bb.vw:                                            ; preds = %bb.vv
  %i.atz = getelementptr inbounds nuw i8, ptr %i.ov, i64 1, !dbg !36890
  %i.aua = load i8, ptr %i.atz, align 1, !dbg !36890, !range !1569, !noundef !1032
  switch i8 %i.aua, label %bb.vx [
    i8 5, label %bb.wa
    i8 6, label %bb.wd
    i8 7, label %bb.wg
  ], !dbg !36891, !prof !35267

bb.vx:                                            ; preds = %bb.vv, %bb.vh, %bb.vw
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6625.sroa.8), !dbg !35324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !dbg !35324
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6630), !dbg !35324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !dbg !35324
  %i.aub = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36892 ; 2 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36893
  %i.aud = load i8, ptr %i.auc, align 1, !dbg !36893, !range !1108, !alias.scope !35275, !noundef !1032 ; 2 uses
  %i.aue = icmp ugt i8 %i.aud, -41, !dbg !36894
  br i1 %i.aue, label %bb.vz, label %bb.vy, !dbg !36894

bb.vy:                                            ; preds = %bb.vx
  %i.auf = add i8 %i.aud, 64, !dbg !36895
  %i.aug = call i8 @llvm.umin.i8(i8 %i.auf, i8 24), !dbg !36896
  %.sroa.0.0.i.i1537 = zext nneg i8 %i.aug to i64, !dbg !36896
  br label %bb.xl, !dbg !36897

bb.vz:                                            ; preds = %bb.vx
  %i.auh = load ptr, ptr %i.aub, align 8, !dbg !36898, !alias.scope !35275, !noundef !1032
  %i.aui = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36899
  %i.auj = load i64, ptr %i.aui, align 8, !dbg !36899, !alias.scope !35275, !noundef !1032
  br label %bb.xl, !dbg !36900

bb.wa:                                            ; preds = %bb.vw
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6487), !dbg !35301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !dbg !35301
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6493), !dbg !35301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !dbg !35301
  %i.auk = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36901 ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36902
  %i.aum = load i8, ptr %i.aul, align 1, !dbg !36902, !range !1108, !alias.scope !35283, !noundef !1032 ; 2 uses
  %i.aun = icmp ugt i8 %i.aum, -41, !dbg !36903
  br i1 %i.aun, label %bb.wc, label %bb.wb, !dbg !36903

bb.wb:                                            ; preds = %bb.wa
  %i.auo = add i8 %i.aum, 64, !dbg !36904
  %i.aup = call i8 @llvm.umin.i8(i8 %i.auo, i8 24), !dbg !36905
  %.sroa.0.0.i.i1541 = zext nneg i8 %i.aup to i64, !dbg !36905
  br label %bb.wj, !dbg !36906

bb.wc:                                            ; preds = %bb.wa
  %i.auq = load ptr, ptr %i.auk, align 8, !dbg !36907, !alias.scope !35283, !noundef !1032
  %i.aur = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !36908
  %i.aus = load i64, ptr %i.aur, align 8, !dbg !36908, !alias.scope !35283, !noundef !1032
  br label %bb.wj, !dbg !36909

bb.wd:                                            ; preds = %bb.vw
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6499), !dbg !35310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !dbg !35310
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6505), !dbg !35310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !dbg !35310
  %i.aut = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !36910 ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %3, i64 55, !dbg !36911
  %i.auv = load i8, ptr %i.auu, align 1, !dbg !36911, !range !1108, !alias.scope !35291, !noundef !1032 ; 2 uses
  %i.auw = icmp ugt i8 %i.auv, -41, !dbg !36912
  br i1 %i.auw, label %bb.wf, label %bb.we, !dbg !36912

bb.we:                                            ; preds = %bb.wd
  %i.aux = add i8 %i.auv, 64, !dbg !36913
  %i.auy = call i8 @llvm.umin.i8(i8 %i.aux, i8 24), !dbg !36914
  %.sroa.0.0.i.i1545 = zext nneg i8 %i.auy to i64, !dbg !36914
  br label %bb.wr, !dbg !36915

bb.wf:                                            ; preds = %bb.wd
  %i.auz = load ptr, ptr %i.aut, align 8, !dbg !36916, !alias.scope !35291, !noundef !1032
end_hunk_5
begin_hunk_6_@llvm.vector.reduce.or.v2i64
!34482 = distinct !DILocation(line: 810, column: 1, scope: !19, inlinedAt: !34479)
!34483 = distinct !DILocation(line: 810, column: 1, scope: !20, inlinedAt: !34482)
!34484 = distinct !DILocation(line: 2814, column: 17, scope: !23, inlinedAt: !34483)
!34485 = distinct !DILocation(line: 2110, column: 27, scope: !22, inlinedAt: !34484)
!34486 = distinct !DILocation(line: 2814, column: 32, scope: !23, inlinedAt: !34483)
!34487 = distinct !DILocation(line: 3193, column: 26, scope: !25, inlinedAt: !34486)
!34488 = distinct !DILocation(line: 64, column: 9, scope: !23, inlinedAt: !34483)
!34489 = distinct !DILocation(line: 810, column: 1, scope: !18, inlinedAt: !34474)
!34490 = distinct !DILocation(line: 810, column: 1, scope: !28, inlinedAt: !34489)
!34491 = distinct !DILocation(line: 643, column: 1, scope: !33434)
!34492 = distinct !DILocation(line: 810, column: 1, scope: !91, inlinedAt: !34491)
!34493 = distinct !DILocation(line: 810, column: 1, scope: !90, inlinedAt: !34492)
!34494 = distinct !DILocation(line: 810, column: 1, scope: !89, inlinedAt: !34493)
!34495 = distinct !DILocation(line: 779, column: 17, scope: !88, inlinedAt: !34494)
!34496 = distinct !DILocation(line: 447, column: 30, scope: !93, inlinedAt: !34495)
!34497 = distinct !{!34497, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfISxE4fmY1Y_14polars_parquet"}
!34498 = distinct !{!34498, !34497, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34499 = distinct !{!34499, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECsfISxE4fmY1Y_14polars_parquet"}
!34500 = distinct !{!34500, !34499, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34501 = distinct !{!34501, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECsfISxE4fmY1Y_14polars_parquet"}
!34502 = distinct !{!34502, !34501, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34503 = distinct !{!34503, i1 true, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop"}
!34504 = distinct !{!34504, !34503, !"_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop: argument 0"}
!34505 = distinct !{!34505, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECsfISxE4fmY1Y_14polars_parquet"}
!34506 = distinct !{!34506, !34505, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34507 = distinct !DILocation(line: 643, column: 1, scope: !33434)
!34508 = distinct !{!34508, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECsfISxE4fmY1Y_14polars_parquet"}
!34509 = distinct !{!34509, !34508, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34510 = distinct !{!34510, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet"}
!34511 = distinct !{!34511, !34510, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34512 = distinct !DILocation(line: 810, column: 1, scope: !98, inlinedAt: !34507)
!34513 = distinct !DILocation(line: 810, column: 1, scope: !102, inlinedAt: !34512)
!34514 = distinct !DILocation(line: 2814, column: 32, scope: !101, inlinedAt: !34513)
!34515 = distinct !DILocation(line: 3193, column: 26, scope: !100, inlinedAt: !34514)
!34516 = distinct !DILocation(line: 64, column: 9, scope: !101, inlinedAt: !34513)
!34517 = distinct !{!34517, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECsfISxE4fmY1Y_14polars_parquet"}
!34518 = distinct !{!34518, !34517, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34519 = distinct !DILocation(line: 643, column: 1, scope: !33434)
!34520 = distinct !{!34520, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECsfISxE4fmY1Y_14polars_parquet"}
!34521 = distinct !{!34521, !34520, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34522 = distinct !{!34522, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet"}
!34523 = distinct !{!34523, !34522, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34524 = distinct !DILocation(line: 810, column: 1, scope: !98, inlinedAt: !34519)
!34525 = distinct !DILocation(line: 810, column: 1, scope: !102, inlinedAt: !34524)
!34526 = distinct !DILocation(line: 2814, column: 32, scope: !101, inlinedAt: !34525)
!34527 = distinct !DILocation(line: 3193, column: 26, scope: !100, inlinedAt: !34526)
!34528 = distinct !DILocation(line: 64, column: 9, scope: !101, inlinedAt: !34525)
!34529 = distinct !{!34529, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECsfISxE4fmY1Y_14polars_parquet"}
!34530 = distinct !{!34530, !34529, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtB17_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEEECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34531 = distinct !DILocation(line: 643, column: 1, scope: !33434)
!34532 = distinct !{!34532, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECsfISxE4fmY1Y_14polars_parquet"}
!34533 = distinct !{!34533, !34532, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtNtBL_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1W_EEECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34534 = distinct !{!34534, i1 true, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet"}
!34535 = distinct !{!34535, !34534, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtB7_11collections5btree3map8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1o_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet: argument 0"}
!34536 = distinct !DILocation(line: 810, column: 1, scope: !98, inlinedAt: !34531)
!34537 = distinct !DILocation(line: 810, column: 1, scope: !102, inlinedAt: !34536)
!34538 = distinct !DILocation(line: 2814, column: 32, scope: !101, inlinedAt: !34537)
!34539 = distinct !DILocation(line: 3193, column: 26, scope: !100, inlinedAt: !34538)
!34540 = distinct !DILocation(line: 64, column: 9, scope: !101, inlinedAt: !34537)
!34541 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 54)
!34542 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 54)
!34543 = !DILocation(line: 49, column: 39, scope: !33439)
!34544 = !DILocation(line: 108, column: 14, scope: !34542, inlinedAt: !34543)
!34545 = !DILocation(line: 67, column: 16, scope: !34541, inlinedAt: !34544)
!34546 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 54)
!34547 = !DILocation(line: 558, column: 16, scope: !34546, inlinedAt: !34545)
!34548 = !{!33447}
!34549 = !DILocation(line: 49, column: 22, scope: !33439)
!34550 = !DILexicalBlockFile(scope: !33455, file: !1434, discriminator: 2)
!34551 = !DILocation(line: 49, column: 22, scope: !34550)
!34552 = !DILexicalBlockFile(scope: !33439, file: !1260, discriminator: 0)
!34553 = !DILexicalBlockFile(scope: !33439, file: !1434, discriminator: 4)
!34554 = !DILocation(line: 49, column: 22, scope: !34553)
!34555 = !DILexicalBlockFile(scope: !33459, file: !1434, discriminator: 6)
!34556 = !DILocation(line: 49, column: 22, scope: !34555)
!34557 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 52)
!34558 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 52)
!34559 = !DILocation(line: 79, column: 13, scope: !33439)
!34560 = !DILocation(line: 108, column: 14, scope: !34558, inlinedAt: !34559)
!34561 = !DILocation(line: 67, column: 16, scope: !34557, inlinedAt: !34560)
!34562 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 52)
!34563 = !DILocation(line: 558, column: 16, scope: !34562, inlinedAt: !34561)
!34564 = !{!33463}
!34565 = !DILocation(line: 78, column: 45, scope: !33439)
!34566 = !DILexicalBlockFile(scope: !33470, file: !1434, discriminator: 2)
!34567 = !DILocation(line: 78, column: 45, scope: !34566)
!34568 = !DILocation(line: 78, column: 45, scope: !34553)
!34569 = !DILexicalBlockFile(scope: !33473, file: !1434, discriminator: 6)
!34570 = !DILocation(line: 78, column: 45, scope: !34569)
!34571 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 42)
!34572 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 42)
!34573 = !DILocation(line: 119, column: 13, scope: !33439)
!34574 = !DILocation(line: 108, column: 14, scope: !34572, inlinedAt: !34573)
!34575 = !DILocation(line: 67, column: 16, scope: !34571, inlinedAt: !34574)
!34576 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 42)
!34577 = !DILocation(line: 558, column: 16, scope: !34576, inlinedAt: !34575)
!34578 = !{!33477}
!34579 = !DILocation(line: 118, column: 40, scope: !33439)
!34580 = !DILexicalBlockFile(scope: !33484, file: !1434, discriminator: 2)
!34581 = !DILocation(line: 118, column: 40, scope: !34580)
!34582 = !DILocation(line: 118, column: 40, scope: !34553)
!34583 = !DILexicalBlockFile(scope: !33487, file: !1434, discriminator: 6)
!34584 = !DILocation(line: 118, column: 40, scope: !34583)
!34585 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 40)
!34586 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 40)
!34587 = !DILocation(line: 127, column: 13, scope: !33439)
!34588 = !DILocation(line: 108, column: 14, scope: !34586, inlinedAt: !34587)
!34589 = !DILocation(line: 67, column: 16, scope: !34585, inlinedAt: !34588)
!34590 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 40)
!34591 = !DILocation(line: 558, column: 16, scope: !34590, inlinedAt: !34589)
!34592 = !{!33491}
!34593 = !DILocation(line: 126, column: 41, scope: !33439)
!34594 = !DILexicalBlockFile(scope: !33498, file: !1434, discriminator: 2)
!34595 = !DILocation(line: 126, column: 41, scope: !34594)
!34596 = !DILocation(line: 126, column: 41, scope: !34553)
!34597 = !DILexicalBlockFile(scope: !33501, file: !1434, discriminator: 6)
!34598 = !DILocation(line: 126, column: 41, scope: !34597)
!34599 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 50)
!34600 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 50)
!34601 = !DILocation(line: 87, column: 13, scope: !33439)
!34602 = !DILocation(line: 108, column: 14, scope: !34600, inlinedAt: !34601)
!34603 = !DILocation(line: 67, column: 16, scope: !34599, inlinedAt: !34602)
!34604 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 50)
!34605 = !DILocation(line: 558, column: 16, scope: !34604, inlinedAt: !34603)
!34606 = !{!33505}
!34607 = !DILocation(line: 86, column: 41, scope: !33439)
!34608 = !DILexicalBlockFile(scope: !33512, file: !1434, discriminator: 2)
!34609 = !DILocation(line: 86, column: 41, scope: !34608)
!34610 = !DILocation(line: 86, column: 41, scope: !34553)
!34611 = !DILexicalBlockFile(scope: !33515, file: !1434, discriminator: 6)
!34612 = !DILocation(line: 86, column: 41, scope: !34611)
!34613 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 48)
!34614 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 48)
!34615 = !DILocation(line: 95, column: 13, scope: !33439)
!34616 = !DILocation(line: 108, column: 14, scope: !34614, inlinedAt: !34615)
!34617 = !DILocation(line: 67, column: 16, scope: !34613, inlinedAt: !34616)
!34618 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 48)
!34619 = !DILocation(line: 558, column: 16, scope: !34618, inlinedAt: !34617)
!34620 = !{!33519}
!34621 = !DILocation(line: 94, column: 42, scope: !33439)
!34622 = !DILexicalBlockFile(scope: !33526, file: !1434, discriminator: 2)
!34623 = !DILocation(line: 94, column: 42, scope: !34622)
!34624 = !DILocation(line: 94, column: 42, scope: !34553)
!34625 = !DILexicalBlockFile(scope: !33529, file: !1434, discriminator: 6)
!34626 = !DILocation(line: 94, column: 42, scope: !34625)
!34627 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 46)
!34628 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 46)
!34629 = !DILocation(line: 103, column: 13, scope: !33439)
!34630 = !DILocation(line: 108, column: 14, scope: !34628, inlinedAt: !34629)
!34631 = !DILocation(line: 67, column: 16, scope: !34627, inlinedAt: !34630)
!34632 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 46)
!34633 = !DILocation(line: 558, column: 16, scope: !34632, inlinedAt: !34631)
!34634 = !{!33533}
!34635 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 44)
!34636 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 44)
!34637 = !DILocation(line: 111, column: 13, scope: !33439)
!34638 = !DILocation(line: 108, column: 14, scope: !34636, inlinedAt: !34637)
!34639 = !DILocation(line: 67, column: 16, scope: !34635, inlinedAt: !34638)
!34640 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 44)
!34641 = !DILocation(line: 558, column: 16, scope: !34640, inlinedAt: !34639)
!34642 = !{!33540}
!34643 = !DILocation(line: 102, column: 42, scope: !33439)
!34644 = !DILexicalBlockFile(scope: !33547, file: !1434, discriminator: 2)
!34645 = !DILocation(line: 102, column: 42, scope: !34644)
!34646 = !DILocation(line: 102, column: 42, scope: !34553)
!34647 = !DILexicalBlockFile(scope: !33550, file: !1434, discriminator: 6)
!34648 = !DILocation(line: 102, column: 42, scope: !34647)
!34649 = !DILocation(line: 110, column: 42, scope: !33439)
!34650 = !DILexicalBlockFile(scope: !33554, file: !1434, discriminator: 2)
!34651 = !DILocation(line: 110, column: 42, scope: !34650)
!34652 = !DILocation(line: 110, column: 42, scope: !34553)
!34653 = !DILexicalBlockFile(scope: !33557, file: !1434, discriminator: 6)
!34654 = !DILocation(line: 110, column: 42, scope: !34653)
!34655 = !DILocation(line: 53, column: 51, scope: !33439)
!34656 = !DILocation(line: 3049, column: 14, scope: !33559, inlinedAt: !34655)
!34657 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 56)
!34658 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 56)
!34659 = !DILocation(line: 55, column: 17, scope: !33561)
!34660 = !DILocation(line: 108, column: 14, scope: !34658, inlinedAt: !34659)
!34661 = !DILocation(line: 67, column: 16, scope: !34657, inlinedAt: !34660)
!34662 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 56)
!34663 = !DILocation(line: 558, column: 16, scope: !34662, inlinedAt: !34661)
!34664 = !{!33565}
!34665 = !DILocation(line: 54, column: 40, scope: !33561)
!34666 = !DILexicalBlockFile(scope: !33571, file: !1434, discriminator: 2)
!34667 = !DILocation(line: 54, column: 40, scope: !34666)
!34668 = !DILexicalBlockFile(scope: !33561, file: !1260, discriminator: 0)
!34669 = !DILexicalBlockFile(scope: !33561, file: !1434, discriminator: 4)
!34670 = !DILocation(line: 54, column: 40, scope: !34669)
!34671 = !DILexicalBlockFile(scope: !33575, file: !1434, discriminator: 6)
!34672 = !DILocation(line: 54, column: 40, scope: !34671)
!34673 = !DILocation(line: 64, column: 18, scope: !33577)
!34674 = !DILocation(line: 3923, column: 29, scope: !33581, inlinedAt: !34673)
!34675 = !DILocation(line: 3927, column: 30, scope: !33584, inlinedAt: !34673)
!34676 = !DILocation(line: 3927, column: 23, scope: !33584, inlinedAt: !34673)
!34677 = !DILocation(line: 65, column: 18, scope: !33577)
!34678 = !DILocation(line: 836, column: 9, scope: !33587, inlinedAt: !34677)
!34679 = !DILocation(line: 74, column: 18, scope: !33577)
!34680 = !DILocation(line: 2104, column: 9, scope: !33590, inlinedAt: !34679)
!34681 = !DILocation(line: 3892, column: 9, scope: !33591, inlinedAt: !34680)
!34682 = !{!"branch_weights", i32 -1610612736, i32 536870912, i32 536870912, i32 536870912, i32 536870912, i32 536870912, i32 535799314, i32 536870912, i32 535799, i32 535799}
!34683 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 38)
!34684 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 38)
!34685 = !DILocation(line: 135, column: 13, scope: !33439)
!34686 = !DILocation(line: 108, column: 14, scope: !34684, inlinedAt: !34685)
!34687 = !DILocation(line: 67, column: 16, scope: !34683, inlinedAt: !34686)
!34688 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 38)
!34689 = !DILocation(line: 558, column: 16, scope: !34688, inlinedAt: !34687)
!34690 = !{!33598}
!34691 = !DILocation(line: 134, column: 62, scope: !33439)
!34692 = !DILexicalBlockFile(scope: !33605, file: !1434, discriminator: 2)
!34693 = !DILocation(line: 134, column: 62, scope: !34692)
!34694 = !DILocation(line: 134, column: 62, scope: !34553)
!34695 = !DILexicalBlockFile(scope: !33608, file: !1434, discriminator: 6)
!34696 = !DILocation(line: 134, column: 62, scope: !34695)
!34697 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 14)
!34698 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 14)
!34699 = !DILocation(line: 480, column: 13, scope: !33439)
!34700 = !DILocation(line: 108, column: 14, scope: !34698, inlinedAt: !34699)
!34701 = !DILocation(line: 67, column: 16, scope: !34697, inlinedAt: !34700)
!34702 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 14)
!34703 = !DILocation(line: 558, column: 16, scope: !34702, inlinedAt: !34701)
!34704 = !{!33612}
!34705 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 24)
!34706 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 24)
!34707 = !DILocation(line: 304, column: 13, scope: !33439)
!34708 = !DILocation(line: 108, column: 14, scope: !34706, inlinedAt: !34707)
!34709 = !DILocation(line: 67, column: 16, scope: !34705, inlinedAt: !34708)
!34710 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 24)
!34711 = !DILocation(line: 558, column: 16, scope: !34710, inlinedAt: !34709)
!34712 = !{!33619}
!34713 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 18)
!34714 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 18)
!34715 = !DILocation(line: 395, column: 13, scope: !33439)
!34716 = !DILocation(line: 108, column: 14, scope: !34714, inlinedAt: !34715)
!34717 = !DILocation(line: 67, column: 16, scope: !34713, inlinedAt: !34716)
!34718 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 18)
!34719 = !DILocation(line: 558, column: 16, scope: !34718, inlinedAt: !34717)
!34720 = !{!33626}
!34721 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 26)
!34722 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 26)
!34723 = !DILocation(line: 279, column: 17, scope: !33630)
!34724 = !DILocation(line: 108, column: 14, scope: !34722, inlinedAt: !34723)
!34725 = !DILocation(line: 67, column: 16, scope: !34721, inlinedAt: !34724)
!34726 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 26)
!34727 = !DILocation(line: 558, column: 16, scope: !34726, inlinedAt: !34725)
!34728 = !{!33634}
!34729 = !{!"branch_weights", i32 0, i32 2143196, i32 2143196, i32 2143197257}
!34730 = !DILocation(line: 278, column: 40, scope: !33630)
!34731 = !DILexicalBlockFile(scope: !33641, file: !1434, discriminator: 2)
!34732 = !DILocation(line: 278, column: 40, scope: !34731)
!34733 = !DILexicalBlockFile(scope: !33630, file: !1260, discriminator: 0)
!34734 = !DILexicalBlockFile(scope: !33630, file: !1434, discriminator: 4)
!34735 = !DILocation(line: 278, column: 40, scope: !34734)
!34736 = !DILexicalBlockFile(scope: !33645, file: !1434, discriminator: 6)
!34737 = !DILocation(line: 278, column: 40, scope: !34736)
!34738 = !DILexicalBlockFile(scope: !33651, file: !1272, discriminator: 10)
!34739 = !DILocation(line: 288, column: 18, scope: !33646)
!34740 = !DILocation(line: 3923, column: 29, scope: !34738, inlinedAt: !34739)
!34741 = !DILexicalBlockFile(scope: !33654, file: !1272, discriminator: 10)
!34742 = !DILocation(line: 3927, column: 30, scope: !34741, inlinedAt: !34739)
!34743 = !DILocation(line: 3927, column: 23, scope: !34741, inlinedAt: !34739)
!34744 = !DILexicalBlockFile(scope: !33657, file: !1146, discriminator: 10)
!34745 = !DILocation(line: 289, column: 18, scope: !33646)
!34746 = !DILocation(line: 836, column: 9, scope: !34744, inlinedAt: !34745)
!34747 = !DILexicalBlockFile(scope: !33659, file: !1146, discriminator: 10)
!34748 = !DILocation(line: 299, column: 18, scope: !33646)
!34749 = !DILocation(line: 2104, column: 9, scope: !34747, inlinedAt: !34748)
!34750 = !DILocation(line: 287, column: 25, scope: !33646)
!34751 = !DILexicalBlockFile(scope: !33665, file: !1434, discriminator: 2)
!34752 = !DILocation(line: 287, column: 25, scope: !34751)
!34753 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 28)
!34754 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 28)
!34755 = !DILocation(line: 252, column: 17, scope: !33669)
!34756 = !DILocation(line: 108, column: 14, scope: !34754, inlinedAt: !34755)
!34757 = !DILocation(line: 67, column: 16, scope: !34753, inlinedAt: !34756)
!34758 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 28)
!34759 = !DILocation(line: 558, column: 16, scope: !34758, inlinedAt: !34757)
!34760 = !{!33673}
!34761 = !DILocation(line: 251, column: 40, scope: !33669)
!34762 = !DILexicalBlockFile(scope: !33679, file: !1434, discriminator: 2)
!34763 = !DILocation(line: 251, column: 40, scope: !34762)
!34764 = !DILexicalBlockFile(scope: !33669, file: !1260, discriminator: 0)
!34765 = !DILexicalBlockFile(scope: !33669, file: !1434, discriminator: 4)
!34766 = !DILocation(line: 251, column: 40, scope: !34765)
!34767 = !DILexicalBlockFile(scope: !33682, file: !1434, discriminator: 6)
!34768 = !DILocation(line: 251, column: 40, scope: !34767)
!34769 = !DILexicalBlockFile(scope: !33686, file: !1272, discriminator: 8)
!34770 = !DILocation(line: 261, column: 18, scope: !33683)
!34771 = !DILocation(line: 3923, column: 29, scope: !34769, inlinedAt: !34770)
!34772 = !DILexicalBlockFile(scope: !33688, file: !1272, discriminator: 8)
!34773 = !DILocation(line: 3927, column: 30, scope: !34772, inlinedAt: !34770)
!34774 = !DILocation(line: 3927, column: 23, scope: !34772, inlinedAt: !34770)
!34775 = !DILexicalBlockFile(scope: !33690, file: !1146, discriminator: 8)
!34776 = !DILocation(line: 262, column: 18, scope: !33683)
!34777 = !DILocation(line: 836, column: 9, scope: !34775, inlinedAt: !34776)
!34778 = !DILexicalBlockFile(scope: !33692, file: !1146, discriminator: 8)
!34779 = !DILocation(line: 272, column: 18, scope: !33683)
!34780 = !DILocation(line: 2104, column: 9, scope: !34778, inlinedAt: !34779)
!34781 = !DILocation(line: 260, column: 25, scope: !33683)
!34782 = !DILexicalBlockFile(scope: !33697, file: !1434, discriminator: 2)
!34783 = !DILocation(line: 260, column: 25, scope: !34782)
!34784 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 36)
!34785 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 36)
!34786 = !DILocation(line: 145, column: 17, scope: !33702)
!34787 = !DILocation(line: 108, column: 14, scope: !34785, inlinedAt: !34786)
!34788 = !DILocation(line: 67, column: 16, scope: !34784, inlinedAt: !34787)
!34789 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 36)
!34790 = !DILocation(line: 558, column: 16, scope: !34789, inlinedAt: !34788)
!34791 = !{!33706}
!34792 = !{!33711}
!34793 = !{!33712}
!34794 = !DINamespace(name: "{impl#7}", scope: !1370)
!34795 = !{!33711, !33728, !33727, !33726, !33712, !33725}
!34796 = !{!33711, !33728, !33727, !33726, !33712}
!34797 = !{!33711, !33727, !33726, !33712, !33725}
!34798 = !DILexicalBlockFile(scope: !33734, file: !1434, discriminator: 2)
!34799 = !{!33728, !33727, !33726, !33712, !33725}
!34800 = !DILexicalBlockFile(scope: !33724, file: !1260, discriminator: 0)
!34801 = !{!33711, !33728, !33727, !33726, !33725}
!34802 = !{!33737}
!34803 = !{!33737, !33712}
!34804 = !{!33740}
!34805 = !{!33743}
!34806 = !{!33745}
!34807 = !{!33748}
!34808 = !{!33748, !33745, !33743, !33740, !33737, !33712}
!34809 = !{!33748, !33745, !33743, !33740, !33737, !33711, !33727, !33726, !33712}
!34810 = !{!33711, !33727, !33726}
!34811 = !{!33760}
!34812 = !DIFile(filename: "crates/polars-parquet/src/arrow/read/deserialize/primitive/integer.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "cb3dcc14365f60ff1cbf5fab34dba4f1")
!34813 = !DINamespace(name: "integer", scope: !1439)
!34814 = !DINamespace(name: "IntDecoder", scope: !34813)
!34815 = !DILexicalBlockFile(scope: !33769, file: !1434, discriminator: 2)
!34816 = !{!33773}
!34817 = !DILexicalBlockFile(scope: !33782, file: !1434, discriminator: 2)
!34818 = !{!33785}
!34819 = !DIFile(filename: "crates/polars-parquet/src/arrow/read/deserialize/primitive/float.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "f94bbcf27c9ca256d710e51445f965c6")
!34820 = !DINamespace(name: "float", scope: !1439)
!34821 = !DINamespace(name: "FloatDecoder", scope: !34820)
!34822 = !DILexicalBlockFile(scope: !33794, file: !1434, discriminator: 2)
!34823 = !DILexicalBlockFile(scope: !33717, file: !1260, discriminator: 0)
!34824 = !{!33797}
!34825 = !DILexicalBlockFile(scope: !33806, file: !1434, discriminator: 2)
!34826 = !{!33809}
!34827 = !DILexicalBlockFile(scope: !33818, file: !1434, discriminator: 2)
!34828 = !{!33821}
!34829 = !DILexicalBlockFile(scope: !33830, file: !1434, discriminator: 2)
!34830 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 12)
!34831 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 12)
!34832 = !DILocation(line: 488, column: 13, scope: !33439)
!34833 = !DILocation(line: 108, column: 14, scope: !34831, inlinedAt: !34832)
!34834 = !DILocation(line: 67, column: 16, scope: !34830, inlinedAt: !34833)
!34835 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 12)
!34836 = !DILocation(line: 558, column: 16, scope: !34835, inlinedAt: !34834)
!34837 = !{!33835}
!34838 = !{!33840}
!34839 = !DILocation(line: 479, column: 42, scope: !33439)
!34840 = !DILexicalBlockFile(scope: !33848, file: !1434, discriminator: 2)
!34841 = !DILocation(line: 479, column: 42, scope: !34840)
!34842 = !DILocation(line: 479, column: 42, scope: !34553)
!34843 = !DILexicalBlockFile(scope: !33851, file: !1434, discriminator: 6)
!34844 = !DILocation(line: 479, column: 42, scope: !34843)
!34845 = !DILocation(line: 487, column: 42, scope: !33439)
!34846 = !DILexicalBlockFile(scope: !33855, file: !1434, discriminator: 2)
!34847 = !DILocation(line: 487, column: 42, scope: !34846)
!34848 = !DILocation(line: 487, column: 42, scope: !34553)
!34849 = !DILexicalBlockFile(scope: !33858, file: !1434, discriminator: 6)
!34850 = !DILocation(line: 487, column: 42, scope: !34849)
!34851 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 34)
!34852 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 34)
!34853 = !DILocation(line: 172, column: 17, scope: !33859)
!34854 = !DILocation(line: 108, column: 14, scope: !34852, inlinedAt: !34853)
!34855 = !DILocation(line: 67, column: 16, scope: !34851, inlinedAt: !34854)
!34856 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 34)
!34857 = !DILocation(line: 558, column: 16, scope: !34856, inlinedAt: !34855)
!34858 = !{!33863}
!34859 = !DILocation(line: 171, column: 40, scope: !33859)
!34860 = !DILexicalBlockFile(scope: !33869, file: !1434, discriminator: 2)
!34861 = !DILocation(line: 171, column: 40, scope: !34860)
!34862 = !DILexicalBlockFile(scope: !33859, file: !1260, discriminator: 0)
!34863 = !DILexicalBlockFile(scope: !33859, file: !1434, discriminator: 4)
!34864 = !DILocation(line: 171, column: 40, scope: !34863)
!34865 = !DILexicalBlockFile(scope: !33872, file: !1434, discriminator: 6)
!34866 = !DILocation(line: 171, column: 40, scope: !34865)
!34867 = !DILexicalBlockFile(scope: !33876, file: !1272, discriminator: 2)
!34868 = !DILocation(line: 181, column: 18, scope: !33873)
!34869 = !DILocation(line: 3923, column: 29, scope: !34867, inlinedAt: !34868)
!34870 = !DILexicalBlockFile(scope: !33878, file: !1272, discriminator: 2)
!34871 = !DILocation(line: 3927, column: 30, scope: !34870, inlinedAt: !34868)
!34872 = !DILocation(line: 3927, column: 23, scope: !34870, inlinedAt: !34868)
!34873 = !DILexicalBlockFile(scope: !33880, file: !1146, discriminator: 2)
!34874 = !DILocation(line: 182, column: 18, scope: !33873)
!34875 = !DILocation(line: 836, column: 9, scope: !34873, inlinedAt: !34874)
!34876 = !DILexicalBlockFile(scope: !33882, file: !1146, discriminator: 2)
!34877 = !DILocation(line: 194, column: 18, scope: !33873)
!34878 = !DILocation(line: 2104, column: 9, scope: !34876, inlinedAt: !34877)
!34879 = !DILocation(line: 180, column: 25, scope: !33873)
!34880 = !DILexicalBlockFile(scope: !33887, file: !1434, discriminator: 2)
!34881 = !DILocation(line: 180, column: 25, scope: !34880)
!34882 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 32)
!34883 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 32)
!34884 = !DILocation(line: 203, column: 17, scope: !33891)
!34885 = !DILocation(line: 108, column: 14, scope: !34883, inlinedAt: !34884)
!34886 = !DILocation(line: 67, column: 16, scope: !34882, inlinedAt: !34885)
!34887 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 32)
!34888 = !DILocation(line: 558, column: 16, scope: !34887, inlinedAt: !34886)
!34889 = !{!33895}
!34890 = !DILocation(line: 202, column: 40, scope: !33891)
!34891 = !DILexicalBlockFile(scope: !33901, file: !1434, discriminator: 2)
!34892 = !DILocation(line: 202, column: 40, scope: !34891)
!34893 = !DILexicalBlockFile(scope: !33891, file: !1260, discriminator: 0)
!34894 = !DILexicalBlockFile(scope: !33891, file: !1434, discriminator: 4)
!34895 = !DILocation(line: 202, column: 40, scope: !34894)
!34896 = !DILexicalBlockFile(scope: !33904, file: !1434, discriminator: 6)
!34897 = !DILocation(line: 202, column: 40, scope: !34896)
!34898 = !DILexicalBlockFile(scope: !33908, file: !1272, discriminator: 4)
!34899 = !DILocation(line: 212, column: 18, scope: !33905)
!34900 = !DILocation(line: 3923, column: 29, scope: !34898, inlinedAt: !34899)
!34901 = !DILexicalBlockFile(scope: !33910, file: !1272, discriminator: 4)
!34902 = !DILocation(line: 3927, column: 30, scope: !34901, inlinedAt: !34899)
!34903 = !DILocation(line: 3927, column: 23, scope: !34901, inlinedAt: !34899)
!34904 = !DILexicalBlockFile(scope: !33912, file: !1146, discriminator: 4)
!34905 = !DILocation(line: 213, column: 18, scope: !33905)
!34906 = !DILocation(line: 836, column: 9, scope: !34904, inlinedAt: !34905)
!34907 = !DILexicalBlockFile(scope: !33914, file: !1146, discriminator: 4)
!34908 = !DILocation(line: 225, column: 18, scope: !33905)
!34909 = !DILocation(line: 2104, column: 9, scope: !34907, inlinedAt: !34908)
!34910 = !DILocation(line: 211, column: 25, scope: !33905)
!34911 = !DILexicalBlockFile(scope: !33919, file: !1434, discriminator: 2)
!34912 = !DILocation(line: 211, column: 25, scope: !34911)
!34913 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 30)
!34914 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 30)
!34915 = !DILocation(line: 234, column: 17, scope: !33439)
!34916 = !DILocation(line: 108, column: 14, scope: !34914, inlinedAt: !34915)
!34917 = !DILocation(line: 67, column: 16, scope: !34913, inlinedAt: !34916)
!34918 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 30)
!34919 = !DILocation(line: 558, column: 16, scope: !34918, inlinedAt: !34917)
!34920 = !{!33926}
!34921 = !DILocation(line: 233, column: 40, scope: !33439)
!34922 = !DILexicalBlockFile(scope: !33932, file: !1434, discriminator: 2)
!34923 = !DILocation(line: 233, column: 40, scope: !34922)
!34924 = !DILocation(line: 233, column: 40, scope: !34553)
!34925 = !DILexicalBlockFile(scope: !33935, file: !1434, discriminator: 6)
!34926 = !DILocation(line: 233, column: 40, scope: !34925)
!34927 = !DILexicalBlockFile(scope: !33939, file: !1272, discriminator: 6)
!34928 = !DILocation(line: 243, column: 18, scope: !33936)
!34929 = !DILocation(line: 3923, column: 29, scope: !34927, inlinedAt: !34928)
end_hunk_6
begin_hunk_7_@llvm.vector.reduce.or.v2i64
!34942 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 58)
!34943 = !DILocation(line: 159, column: 17, scope: !33951)
!34944 = !DILocation(line: 108, column: 14, scope: !34942, inlinedAt: !34943)
!34945 = !DILocation(line: 67, column: 16, scope: !34941, inlinedAt: !34944)
!34946 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 58)
!34947 = !DILocation(line: 558, column: 16, scope: !34946, inlinedAt: !34945)
!34948 = !{!33955}
!34949 = !DILocation(line: 158, column: 13, scope: !33951)
!34950 = !DILexicalBlockFile(scope: !33961, file: !1434, discriminator: 2)
!34951 = !DILocation(line: 158, column: 13, scope: !34950)
!34952 = !DILexicalBlockFile(scope: !33951, file: !1260, discriminator: 0)
!34953 = !DILexicalBlockFile(scope: !33951, file: !1434, discriminator: 4)
!34954 = !DILocation(line: 158, column: 13, scope: !34953)
!34955 = !DILexicalBlockFile(scope: !33964, file: !1434, discriminator: 6)
!34956 = !DILocation(line: 158, column: 13, scope: !34955)
!34957 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 22)
!34958 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 22)
!34959 = !DILocation(line: 312, column: 13, scope: !33439)
!34960 = !DILocation(line: 108, column: 14, scope: !34958, inlinedAt: !34959)
!34961 = !DILocation(line: 67, column: 16, scope: !34957, inlinedAt: !34960)
!34962 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 22)
!34963 = !DILocation(line: 558, column: 16, scope: !34962, inlinedAt: !34961)
!34964 = !{!33968}
!34965 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 20)
!34966 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 20)
!34967 = !DILocation(line: 360, column: 17, scope: !33439)
!34968 = !DILocation(line: 108, column: 14, scope: !34966, inlinedAt: !34967)
!34969 = !DILocation(line: 67, column: 16, scope: !34965, inlinedAt: !34968)
!34970 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 20)
!34971 = !DILocation(line: 558, column: 16, scope: !34970, inlinedAt: !34969)
!34972 = !{!33975}
!34973 = !DILocation(line: 303, column: 49, scope: !33439)
!34974 = !DILexicalBlockFile(scope: !33982, file: !1434, discriminator: 2)
!34975 = !DILocation(line: 303, column: 49, scope: !34974)
!34976 = !DILocation(line: 303, column: 49, scope: !34553)
!34977 = !DILexicalBlockFile(scope: !33985, file: !1434, discriminator: 6)
!34978 = !DILocation(line: 303, column: 49, scope: !34977)
!34979 = !DILocation(line: 311, column: 49, scope: !33439)
!34980 = !DILexicalBlockFile(scope: !33989, file: !1434, discriminator: 2)
!34981 = !DILocation(line: 311, column: 49, scope: !34980)
!34982 = !DILocation(line: 311, column: 49, scope: !34553)
!34983 = !DILexicalBlockFile(scope: !33992, file: !1434, discriminator: 6)
!34984 = !DILocation(line: 311, column: 49, scope: !34983)
!34985 = !DILocation(line: 359, column: 40, scope: !33439)
!34986 = !DILexicalBlockFile(scope: !33996, file: !1434, discriminator: 2)
!34987 = !DILocation(line: 359, column: 40, scope: !34986)
!34988 = !DILocation(line: 359, column: 40, scope: !34553)
!34989 = !DILexicalBlockFile(scope: !33999, file: !1434, discriminator: 6)
!34990 = !DILocation(line: 359, column: 40, scope: !34989)
!34991 = !DILexicalBlockFile(scope: !34005, file: !1272, discriminator: 14)
!34992 = !DILocation(line: 369, column: 18, scope: !34000)
!34993 = !DILocation(line: 3923, column: 29, scope: !34991, inlinedAt: !34992)
!34994 = !DILexicalBlockFile(scope: !34008, file: !1272, discriminator: 14)
!34995 = !DILocation(line: 3927, column: 30, scope: !34994, inlinedAt: !34992)
!34996 = !DILocation(line: 3927, column: 23, scope: !34994, inlinedAt: !34992)
!34997 = !DILexicalBlockFile(scope: !34011, file: !1146, discriminator: 14)
!34998 = !DILocation(line: 370, column: 18, scope: !34000)
!34999 = !DILocation(line: 836, column: 9, scope: !34997, inlinedAt: !34998)
!35000 = !DILexicalBlockFile(scope: !34013, file: !1146, discriminator: 14)
!35001 = !DILocation(line: 390, column: 18, scope: !34000)
!35002 = !DILocation(line: 2104, column: 9, scope: !35000, inlinedAt: !35001)
!35003 = !DILocation(line: 368, column: 25, scope: !34000)
!35004 = !DILexicalBlockFile(scope: !34018, file: !1434, discriminator: 2)
!35005 = !DILocation(line: 368, column: 25, scope: !35004)
!35006 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 60)
!35007 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 60)
!35008 = !DILocation(line: 330, column: 17, scope: !34023)
!35009 = !DILocation(line: 108, column: 14, scope: !35007, inlinedAt: !35008)
!35010 = !DILocation(line: 67, column: 16, scope: !35006, inlinedAt: !35009)
!35011 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 60)
!35012 = !DILocation(line: 558, column: 16, scope: !35011, inlinedAt: !35010)
!35013 = !{!34027}
!35014 = !DILexicalBlockFile(scope: !34032, file: !1434, discriminator: 0)
!35015 = !DILexicalBlockFile(scope: !34031, file: !1434, discriminator: 4)
!35016 = !DILocation(line: 320, column: 52, scope: !35015)
!35017 = !DILocation(line: 329, column: 40, scope: !34023)
!35018 = !DILexicalBlockFile(scope: !34038, file: !1434, discriminator: 2)
!35019 = !DILocation(line: 329, column: 40, scope: !35018)
!35020 = !DILexicalBlockFile(scope: !34023, file: !1260, discriminator: 0)
!35021 = !DILexicalBlockFile(scope: !34023, file: !1434, discriminator: 4)
!35022 = !DILocation(line: 329, column: 40, scope: !35021)
!35023 = !DILexicalBlockFile(scope: !34041, file: !1434, discriminator: 6)
!35024 = !DILocation(line: 329, column: 40, scope: !35023)
!35025 = !DILexicalBlockFile(scope: !34045, file: !1272, discriminator: 12)
!35026 = !DILocation(line: 339, column: 18, scope: !34042)
!35027 = !DILocation(line: 3923, column: 29, scope: !35025, inlinedAt: !35026)
!35028 = !DILexicalBlockFile(scope: !34047, file: !1272, discriminator: 12)
!35029 = !DILocation(line: 3927, column: 30, scope: !35028, inlinedAt: !35026)
!35030 = !DILocation(line: 3927, column: 23, scope: !35028, inlinedAt: !35026)
!35031 = !DILexicalBlockFile(scope: !34049, file: !1146, discriminator: 12)
!35032 = !DILocation(line: 340, column: 18, scope: !34042)
!35033 = !DILocation(line: 836, column: 9, scope: !35031, inlinedAt: !35032)
!35034 = !DILexicalBlockFile(scope: !34051, file: !1146, discriminator: 12)
!35035 = !DILocation(line: 352, column: 18, scope: !34042)
!35036 = !DILocation(line: 2104, column: 9, scope: !35034, inlinedAt: !35035)
!35037 = !DILocation(line: 338, column: 25, scope: !34042)
!35038 = !DILexicalBlockFile(scope: !34056, file: !1434, discriminator: 2)
!35039 = !DILocation(line: 338, column: 25, scope: !35038)
!35040 = !{!"branch_weights", i32 0, i32 477165623, i32 477165623, i32 477165623, i32 477165623, i32 238344, i32 238344, i32 238344467}
!35041 = !DILocation(line: 539, column: 13, scope: !33439)
!35042 = !DILocation(line: 108, column: 14, scope: !33441, inlinedAt: !35041)
!35043 = !DILocation(line: 67, column: 16, scope: !33442, inlinedAt: !35042)
!35044 = !DILocation(line: 558, column: 16, scope: !33440, inlinedAt: !35043)
!35045 = !{!34063}
!35046 = !DILexicalBlockFile(scope: !34067, file: !1434, discriminator: 0)
!35047 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 194)
!35048 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 194)
!35049 = !DILocation(line: 550, column: 17, scope: !34068)
!35050 = !DILocation(line: 108, column: 14, scope: !35048, inlinedAt: !35049)
!35051 = !DILocation(line: 67, column: 16, scope: !35047, inlinedAt: !35050)
!35052 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 194)
!35053 = !DILocation(line: 558, column: 16, scope: !35052, inlinedAt: !35051)
!35054 = !{!34072}
!35055 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 16)
!35056 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 16)
!35057 = !DILocation(line: 403, column: 13, scope: !33439)
!35058 = !DILocation(line: 108, column: 14, scope: !35056, inlinedAt: !35057)
!35059 = !DILocation(line: 67, column: 16, scope: !35055, inlinedAt: !35058)
!35060 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 16)
!35061 = !DILocation(line: 558, column: 16, scope: !35060, inlinedAt: !35059)
!35062 = !{!34079}
!35063 = !{!34084}
!35064 = !DILocation(line: 394, column: 52, scope: !33439)
!35065 = !DILexicalBlockFile(scope: !34092, file: !1434, discriminator: 2)
!35066 = !DILocation(line: 394, column: 52, scope: !35065)
!35067 = !DILocation(line: 394, column: 52, scope: !34553)
!35068 = !DILexicalBlockFile(scope: !34095, file: !1434, discriminator: 6)
!35069 = !DILocation(line: 394, column: 52, scope: !35068)
!35070 = !{!34097}
!35071 = !DILocation(line: 402, column: 52, scope: !33439)
!35072 = !DILexicalBlockFile(scope: !34105, file: !1434, discriminator: 2)
!35073 = !DILocation(line: 402, column: 52, scope: !35072)
!35074 = !DILocation(line: 402, column: 52, scope: !34553)
!35075 = !DILexicalBlockFile(scope: !34108, file: !1434, discriminator: 6)
!35076 = !DILocation(line: 402, column: 52, scope: !35075)
!35077 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 62)
!35078 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 62)
!35079 = !DILocation(line: 416, column: 17, scope: !34110)
!35080 = !DILocation(line: 108, column: 14, scope: !35078, inlinedAt: !35079)
!35081 = !DILocation(line: 67, column: 16, scope: !35077, inlinedAt: !35080)
!35082 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 62)
!35083 = !DILocation(line: 558, column: 16, scope: !35082, inlinedAt: !35081)
!35084 = !{!34114}
!35085 = !DILexicalBlockFile(scope: !34119, file: !1434, discriminator: 0)
!35086 = !DILexicalBlockFile(scope: !34118, file: !1434, discriminator: 4)
!35087 = !DILocation(line: 475, column: 52, scope: !35086)
!35088 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 192)
!35089 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 192)
!35090 = !DILocation(line: 448, column: 17, scope: !34123)
!35091 = !DILocation(line: 108, column: 14, scope: !35089, inlinedAt: !35090)
!35092 = !DILocation(line: 67, column: 16, scope: !35088, inlinedAt: !35091)
!35093 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 192)
!35094 = !DILocation(line: 558, column: 16, scope: !35093, inlinedAt: !35092)
!35095 = !{!34127}
!35096 = !DILocation(line: 447, column: 40, scope: !34123)
!35097 = !DILexicalBlockFile(scope: !34133, file: !1434, discriminator: 2)
!35098 = !DILocation(line: 447, column: 40, scope: !35097)
!35099 = !DILexicalBlockFile(scope: !34123, file: !1260, discriminator: 0)
!35100 = !DILexicalBlockFile(scope: !34123, file: !1434, discriminator: 4)
!35101 = !DILocation(line: 447, column: 40, scope: !35100)
!35102 = !DILexicalBlockFile(scope: !34136, file: !1434, discriminator: 6)
!35103 = !DILocation(line: 447, column: 40, scope: !35102)
!35104 = !DILexicalBlockFile(scope: !34140, file: !1272, discriminator: 18)
!35105 = !DILocation(line: 457, column: 18, scope: !34137)
!35106 = !DILocation(line: 3923, column: 29, scope: !35104, inlinedAt: !35105)
!35107 = !DILexicalBlockFile(scope: !34142, file: !1272, discriminator: 18)
!35108 = !DILocation(line: 3927, column: 30, scope: !35107, inlinedAt: !35105)
!35109 = !DILocation(line: 3927, column: 23, scope: !35107, inlinedAt: !35105)
!35110 = !DILexicalBlockFile(scope: !34144, file: !1146, discriminator: 18)
!35111 = !DILocation(line: 458, column: 18, scope: !34137)
!35112 = !DILocation(line: 836, column: 9, scope: !35110, inlinedAt: !35111)
!35113 = !DILexicalBlockFile(scope: !34146, file: !1146, discriminator: 18)
!35114 = !DILocation(line: 470, column: 18, scope: !34137)
!35115 = !DILocation(line: 2104, column: 9, scope: !35113, inlinedAt: !35114)
!35116 = !DILocation(line: 456, column: 25, scope: !34137)
!35117 = !DILexicalBlockFile(scope: !34151, file: !1434, discriminator: 2)
!35118 = !DILocation(line: 456, column: 25, scope: !35117)
!35119 = !DILocation(line: 415, column: 40, scope: !34110)
!35120 = !DILexicalBlockFile(scope: !34157, file: !1434, discriminator: 2)
!35121 = !DILocation(line: 415, column: 40, scope: !35120)
!35122 = !DILexicalBlockFile(scope: !34110, file: !1260, discriminator: 0)
!35123 = !DILexicalBlockFile(scope: !34110, file: !1434, discriminator: 4)
!35124 = !DILocation(line: 415, column: 40, scope: !35123)
!35125 = !DILexicalBlockFile(scope: !34160, file: !1434, discriminator: 6)
!35126 = !DILocation(line: 415, column: 40, scope: !35125)
!35127 = !DILexicalBlockFile(scope: !34164, file: !1272, discriminator: 16)
!35128 = !DILocation(line: 425, column: 18, scope: !34161)
!35129 = !DILocation(line: 3923, column: 29, scope: !35127, inlinedAt: !35128)
!35130 = !DILexicalBlockFile(scope: !34166, file: !1272, discriminator: 16)
!35131 = !DILocation(line: 3927, column: 30, scope: !35130, inlinedAt: !35128)
!35132 = !DILocation(line: 3927, column: 23, scope: !35130, inlinedAt: !35128)
!35133 = !DILexicalBlockFile(scope: !34168, file: !1146, discriminator: 16)
!35134 = !DILocation(line: 426, column: 18, scope: !34161)
!35135 = !DILocation(line: 836, column: 9, scope: !35133, inlinedAt: !35134)
!35136 = !DILexicalBlockFile(scope: !34170, file: !1146, discriminator: 16)
!35137 = !DILocation(line: 438, column: 18, scope: !34161)
!35138 = !DILocation(line: 2104, column: 9, scope: !35136, inlinedAt: !35137)
!35139 = !DILocation(line: 424, column: 25, scope: !34161)
!35140 = !DILexicalBlockFile(scope: !34175, file: !1434, discriminator: 2)
!35141 = !DILocation(line: 424, column: 25, scope: !35140)
!35142 = !{!"branch_weights", i32 0, i32 757890868, i32 757890868, i32 378566, i32 378566, i32 252377911, i32 252377911, i32 126188956}
!35143 = !{!"branch_weights", i32 2000, i32 4004, i32 2, i32 2, i32 2000}
!35144 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 10)
!35145 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 10)
!35146 = !DILocation(line: 496, column: 13, scope: !33439)
!35147 = !DILocation(line: 108, column: 14, scope: !35145, inlinedAt: !35146)
!35148 = !DILocation(line: 67, column: 16, scope: !35144, inlinedAt: !35147)
!35149 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 10)
!35150 = !DILocation(line: 558, column: 16, scope: !35149, inlinedAt: !35148)
!35151 = !{!34182}
!35152 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 8)
!35153 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 8)
!35154 = !DILocation(line: 505, column: 13, scope: !33439)
!35155 = !DILocation(line: 108, column: 14, scope: !35153, inlinedAt: !35154)
!35156 = !DILocation(line: 67, column: 16, scope: !35152, inlinedAt: !35155)
!35157 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 8)
!35158 = !DILocation(line: 558, column: 16, scope: !35157, inlinedAt: !35156)
!35159 = !{!34189}
!35160 = !DILocation(line: 504, column: 42, scope: !33439)
!35161 = !DILexicalBlockFile(scope: !34196, file: !1434, discriminator: 2)
!35162 = !DILocation(line: 504, column: 42, scope: !35161)
!35163 = !DILocation(line: 504, column: 42, scope: !34553)
!35164 = !DILexicalBlockFile(scope: !34199, file: !1434, discriminator: 6)
!35165 = !DILocation(line: 504, column: 42, scope: !35164)
!35166 = !DILocation(line: 495, column: 67, scope: !33439)
!35167 = !DILexicalBlockFile(scope: !34202, file: !1434, discriminator: 2)
!35168 = !DILocation(line: 495, column: 67, scope: !35167)
!35169 = !DILocation(line: 495, column: 67, scope: !34553)
!35170 = !DILexicalBlockFile(scope: !34205, file: !1434, discriminator: 6)
!35171 = !DILocation(line: 495, column: 67, scope: !35170)
!35172 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 4)
!35173 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 4)
!35174 = !DILocation(line: 522, column: 13, scope: !33439)
!35175 = !DILocation(line: 108, column: 14, scope: !35173, inlinedAt: !35174)
!35176 = !DILocation(line: 67, column: 16, scope: !35172, inlinedAt: !35175)
!35177 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 4)
!35178 = !DILocation(line: 558, column: 16, scope: !35177, inlinedAt: !35176)
!35179 = !{!34209}
!35180 = !DILocation(line: 521, column: 43, scope: !33439)
!35181 = !DILexicalBlockFile(scope: !34216, file: !1434, discriminator: 2)
!35182 = !DILocation(line: 521, column: 43, scope: !35181)
!35183 = !DILocation(line: 521, column: 43, scope: !34553)
!35184 = !DILexicalBlockFile(scope: !34219, file: !1434, discriminator: 6)
!35185 = !DILocation(line: 521, column: 43, scope: !35184)
!35186 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 2)
!35187 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 2)
!35188 = !DILocation(line: 530, column: 13, scope: !33439)
!35189 = !DILocation(line: 108, column: 14, scope: !35187, inlinedAt: !35188)
!35190 = !DILocation(line: 67, column: 16, scope: !35186, inlinedAt: !35189)
!35191 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 2)
!35192 = !DILocation(line: 558, column: 16, scope: !35191, inlinedAt: !35190)
!35193 = !{!34223}
!35194 = !DILocation(line: 529, column: 44, scope: !33439)
!35195 = !DILexicalBlockFile(scope: !34230, file: !1434, discriminator: 2)
!35196 = !DILocation(line: 529, column: 44, scope: !35195)
!35197 = !DILocation(line: 529, column: 44, scope: !34553)
!35198 = !DILexicalBlockFile(scope: !34233, file: !1434, discriminator: 6)
!35199 = !DILocation(line: 529, column: 44, scope: !35198)
!35200 = !DILocation(line: 538, column: 51, scope: !33439)
!35201 = !DILexicalBlockFile(scope: !34237, file: !1434, discriminator: 2)
!35202 = !DILocation(line: 538, column: 51, scope: !35201)
!35203 = !DILocation(line: 538, column: 51, scope: !34553)
!35204 = !DILexicalBlockFile(scope: !34240, file: !1434, discriminator: 6)
!35205 = !DILocation(line: 538, column: 51, scope: !35204)
!35206 = !DILocation(line: 549, column: 13, scope: !34068)
!35207 = !DILexicalBlockFile(scope: !34243, file: !1434, discriminator: 2)
!35208 = !DILocation(line: 549, column: 13, scope: !35207)
!35209 = !DILexicalBlockFile(scope: !34068, file: !1260, discriminator: 0)
!35210 = !DILexicalBlockFile(scope: !34068, file: !1434, discriminator: 4)
!35211 = !DILocation(line: 549, column: 13, scope: !35210)
!35212 = !DILexicalBlockFile(scope: !34246, file: !1434, discriminator: 6)
!35213 = !DILocation(line: 549, column: 13, scope: !35212)
!35214 = !DILexicalBlockFile(scope: !34247, file: !1434, discriminator: 0)
!35215 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 196)
!35216 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 196)
!35217 = !DILocation(line: 562, column: 17, scope: !34248)
!35218 = !DILocation(line: 108, column: 14, scope: !35216, inlinedAt: !35217)
!35219 = !DILocation(line: 67, column: 16, scope: !35215, inlinedAt: !35218)
!35220 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 196)
!35221 = !DILocation(line: 558, column: 16, scope: !35220, inlinedAt: !35219)
!35222 = !{!34252}
!35223 = !DILocation(line: 561, column: 13, scope: !34248)
!35224 = !DILexicalBlockFile(scope: !34258, file: !1434, discriminator: 2)
!35225 = !DILocation(line: 561, column: 13, scope: !35224)
!35226 = !DILexicalBlockFile(scope: !34248, file: !1260, discriminator: 0)
!35227 = !DILexicalBlockFile(scope: !34248, file: !1434, discriminator: 4)
!35228 = !DILocation(line: 561, column: 13, scope: !35227)
!35229 = !DILexicalBlockFile(scope: !34261, file: !1434, discriminator: 6)
!35230 = !DILocation(line: 561, column: 13, scope: !35229)
!35231 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 6)
!35232 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 6)
!35233 = !DILocation(line: 514, column: 13, scope: !33439)
!35234 = !DILocation(line: 108, column: 14, scope: !35232, inlinedAt: !35233)
!35235 = !DILocation(line: 67, column: 16, scope: !35231, inlinedAt: !35234)
!35236 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 6)
!35237 = !DILocation(line: 558, column: 16, scope: !35236, inlinedAt: !35235)
!35238 = !{!34265}
!35239 = !DILocation(line: 513, column: 58, scope: !33439)
!35240 = !DILexicalBlockFile(scope: !34272, file: !1434, discriminator: 2)
!35241 = !DILocation(line: 513, column: 58, scope: !35240)
!35242 = !DILocation(line: 513, column: 58, scope: !34553)
!35243 = !DILexicalBlockFile(scope: !34275, file: !1434, discriminator: 6)
!35244 = !DILocation(line: 513, column: 58, scope: !35243)
!35245 = !DILexicalBlockFile(scope: !34277, file: !1434, discriminator: 0)
!35246 = !DILexicalBlockFile(scope: !34276, file: !1434, discriminator: 6)
!35247 = !DILocation(line: 638, column: 52, scope: !35246)
!35248 = !DILocation(line: 574, column: 35, scope: !34281)
!35249 = !DILexicalBlockFile(scope: !34283, file: !1434, discriminator: 0)
!35250 = !DILocation(line: 574, column: 13, scope: !35249)
!35251 = !DILexicalBlockFile(scope: !34284, file: !1434, discriminator: 0)
!35252 = !DILocation(line: 576, column: 31, scope: !34281)
!35253 = !{!34294}
!35254 = !{!34296}
!35255 = !{!34296, !34294}
!35256 = !DILexicalBlockFile(scope: !34307, file: !1123, discriminator: 0)
!35257 = !DILexicalBlockFile(scope: !34310, file: !1123, discriminator: 0)
!35258 = !DILexicalBlockFile(scope: !34291, file: !1210, discriminator: 2)
!35259 = !DILexicalBlockFile(scope: !34318, file: !1123, discriminator: 0)
!35260 = !DILexicalBlockFile(scope: !34291, file: !1210, discriminator: 4)
!35261 = !{!34323}
!35262 = !{!34325}
!35263 = !{!34325, !34323}
!35264 = !DILexicalBlockFile(scope: !34329, file: !1123, discriminator: 0)
!35265 = !DILexicalBlockFile(scope: !34291, file: !1210, discriminator: 6)
!35266 = !DILexicalBlockFile(scope: !34331, file: !1434, discriminator: 0)
!35267 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1}
!35268 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 204)
!35269 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 204)
!35270 = !DILocation(line: 614, column: 21, scope: !34281)
!35271 = !DILocation(line: 108, column: 14, scope: !35269, inlinedAt: !35270)
!35272 = !DILocation(line: 67, column: 16, scope: !35268, inlinedAt: !35271)
!35273 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 204)
!35274 = !DILocation(line: 558, column: 16, scope: !35273, inlinedAt: !35272)
!35275 = !{!34335}
!35276 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 202)
!35277 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 202)
!35278 = !DILocation(line: 587, column: 25, scope: !34281)
!35279 = !DILocation(line: 108, column: 14, scope: !35277, inlinedAt: !35278)
!35280 = !DILocation(line: 67, column: 16, scope: !35276, inlinedAt: !35279)
!35281 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 202)
!35282 = !DILocation(line: 558, column: 16, scope: !35281, inlinedAt: !35280)
!35283 = !{!34342}
!35284 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 200)
!35285 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 200)
!35286 = !DILocation(line: 595, column: 25, scope: !34281)
!35287 = !DILocation(line: 108, column: 14, scope: !35285, inlinedAt: !35286)
!35288 = !DILocation(line: 67, column: 16, scope: !35284, inlinedAt: !35287)
!35289 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 200)
!35290 = !DILocation(line: 558, column: 16, scope: !35289, inlinedAt: !35288)
!35291 = !{!34349}
!35292 = !DILexicalBlockFile(scope: !33442, file: !1207, discriminator: 198)
!35293 = !DILexicalBlockFile(scope: !33441, file: !1207, discriminator: 198)
!35294 = !DILocation(line: 603, column: 25, scope: !34281)
!35295 = !DILocation(line: 108, column: 14, scope: !35293, inlinedAt: !35294)
!35296 = !DILocation(line: 67, column: 16, scope: !35292, inlinedAt: !35295)
!35297 = !DILexicalBlockFile(scope: !33440, file: !1351, discriminator: 198)
!35298 = !DILocation(line: 558, column: 16, scope: !35297, inlinedAt: !35296)
!35299 = !{!34356}
!35300 = !{!34361}
!35301 = !DILocation(line: 586, column: 43, scope: !34281)
!35302 = !DILexicalBlockFile(scope: !34366, file: !1434, discriminator: 2)
!35303 = !DILocation(line: 586, column: 43, scope: !35302)
!35304 = !DILexicalBlockFile(scope: !34281, file: !1260, discriminator: 0)
!35305 = !DILexicalBlockFile(scope: !34281, file: !1434, discriminator: 4)
!35306 = !DILocation(line: 586, column: 43, scope: !35305)
!35307 = !DILexicalBlockFile(scope: !34369, file: !1434, discriminator: 6)
!35308 = !DILocation(line: 586, column: 43, scope: !35307)
!35309 = !{!34371}
!35310 = !DILocation(line: 594, column: 44, scope: !34281)
!35311 = !DILexicalBlockFile(scope: !34376, file: !1434, discriminator: 2)
!35312 = !DILocation(line: 594, column: 44, scope: !35311)
!35313 = !DILocation(line: 594, column: 44, scope: !35305)
!35314 = !DILexicalBlockFile(scope: !34379, file: !1434, discriminator: 6)
!35315 = !DILocation(line: 594, column: 44, scope: !35314)
!35316 = !{!34381}
!35317 = !DILocation(line: 602, column: 44, scope: !34281)
!35318 = !DILexicalBlockFile(scope: !34386, file: !1434, discriminator: 2)
!35319 = !DILocation(line: 602, column: 44, scope: !35318)
!35320 = !DILocation(line: 602, column: 44, scope: !35305)
!35321 = !DILexicalBlockFile(scope: !34389, file: !1434, discriminator: 6)
!35322 = !DILocation(line: 602, column: 44, scope: !35321)
!35323 = !{!34403, !34401, !34399, !34397}
!35324 = !DILocation(line: 613, column: 44, scope: !34281)
!35325 = !DILexicalBlockFile(scope: !34406, file: !1434, discriminator: 2)
!35326 = !DILocation(line: 613, column: 44, scope: !35325)
!35327 = !DILocation(line: 613, column: 44, scope: !35305)
!35328 = !DILexicalBlockFile(scope: !34409, file: !1434, discriminator: 6)
!35329 = !DILocation(line: 613, column: 44, scope: !35328)
!35330 = !DILexicalBlockFile(scope: !34413, file: !1272, discriminator: 20)
!35331 = !DILocation(line: 623, column: 22, scope: !34410)
!35332 = !DILocation(line: 3923, column: 29, scope: !35330, inlinedAt: !35331)
!35333 = !DILexicalBlockFile(scope: !34415, file: !1272, discriminator: 20)
!35334 = !DILocation(line: 3927, column: 30, scope: !35333, inlinedAt: !35331)
!35335 = !DILocation(line: 3927, column: 23, scope: !35333, inlinedAt: !35331)
!35336 = !DILexicalBlockFile(scope: !34417, file: !1146, discriminator: 20)
!35337 = !DILocation(line: 624, column: 22, scope: !34410)
!35338 = !DILocation(line: 836, column: 9, scope: !35336, inlinedAt: !35337)
!35339 = !DILexicalBlockFile(scope: !34421, file: !1272, discriminator: 4)
!35340 = !DILexicalBlockFile(scope: !34420, file: !1146, discriminator: 20)
!35341 = !DILocation(line: 632, column: 22, scope: !34410)
!35342 = !DILocation(line: 2104, column: 9, scope: !35340, inlinedAt: !35341)
end_hunk_7
